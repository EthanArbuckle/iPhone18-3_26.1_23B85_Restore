int32x4_t *sub_277AF1CC8(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v8 = &dword_277C42240[64 * a3 - 578];
  v9 = vld1q_dup_f32(v8);
  v10 = vshlq_s32(vmlaq_s32(v7, v9, *result), v6);
  v11 = &dword_277C42240[64 * a3 - 638];
  v12 = vld1q_dup_f32(v11);
  v13 = vshlq_s32(vmlsq_s32(v7, v12, *result), v6);
  v14 = &dword_277C42240[64 * a3 - 632];
  v15 = vld1q_dup_f32(v14);
  v16 = &dword_277C42240[64 * a3 - 584];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v10), v17, v13), v6);
  v19 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v15), v17, v10), v6);
  v20 = &dword_277C42240[64 * a3 - 624];
  v21 = vld1q_dup_f32(v20);
  v22 = &dword_277C42240[64 * a3 - 592];
  v23 = vld1q_dup_f32(v22);
  v24 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v21, v10), v23, v13), v6);
  v25 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v21), v23, v10), v6);
  v26 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v21, v18), v23, v19), v6);
  v27 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v19, v21), v23, v18), v6);
  v28 = &dword_277C42240[64 * a3 - 608];
  v29 = vld1q_dup_f32(v28);
  v30 = vmlaq_s32(v7, v29, v10);
  v31 = vmulq_s32(v29, v13);
  v32 = vshlq_s32(vaddq_s32(v30, v31), v6);
  v33 = vshlq_s32(vsubq_s32(v30, v31), v6);
  v34 = vmlaq_s32(v7, v29, v24);
  v35 = vmulq_s32(v29, v25);
  v36 = vshlq_s32(vaddq_s32(v34, v35), v6);
  v37 = vshlq_s32(vsubq_s32(v34, v35), v6);
  v38 = vmlaq_s32(v7, v29, v18);
  v39 = vmulq_s32(v29, v19);
  v40 = vshlq_s32(vaddq_s32(v38, v39), v6);
  v41 = vshlq_s32(vsubq_s32(v38, v39), v6);
  v42 = vmlaq_s32(v7, v29, v26);
  v43 = vmulq_s32(v29, v27);
  v44 = vshlq_s32(vaddq_s32(v42, v43), v6);
  v45 = vshlq_s32(vsubq_s32(v42, v43), v6);
  if (a4)
  {
    v46 = vnegq_s32(v18);
    v47 = vnegq_s32(v24);
    *a2 = v10;
    a2[1] = v46;
    v48 = vnegq_s32(v44);
    v49 = vnegq_s32(v32);
    v50 = vnegq_s32(v41);
    v51 = vnegq_s32(v37);
    v52 = vnegq_s32(v27);
    v53 = vnegq_s32(v13);
  }

  else
  {
    if (a5 <= 10)
    {
      v54 = 10;
    }

    else
    {
      v54 = a5;
    }

    v55 = 32 << v54;
    v56 = vdupq_n_s32(-v55);
    v57 = vdupq_n_s32(v55 - 1);
    v58 = vdupq_n_s32(-a6);
    v59 = vdupq_n_s32(1 << a6 >> 1);
    *a2 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v10, v59), v58), v56), v57);
    a2[1] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v18), v58), v56), v57);
    v26 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v26, v59), v58), v56), v57);
    v47 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v24), v58), v56), v57);
    v36 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v36, v59), v58), v56), v57);
    v48 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v44), v58), v56), v57);
    v40 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v40, v59), v58), v56), v57);
    v49 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v32), v58), v56), v57);
    v33 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v33, v59), v58), v56), v57);
    v50 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v41), v58), v56), v57);
    v45 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v45, v59), v58), v56), v57);
    v51 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v37), v58), v56), v57);
    v25 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v25, v59), v58), v56), v57);
    v52 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v27), v58), v56), v57);
    v19 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v19, v59), v58), v56), v57);
    v53 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v13), v58), v56), v57);
  }

  a2[2] = v26;
  a2[3] = v47;
  a2[4] = v36;
  a2[5] = v48;
  a2[6] = v40;
  a2[7] = v49;
  a2[8] = v33;
  a2[9] = v50;
  a2[10] = v45;
  a2[11] = v51;
  a2[12] = v25;
  a2[13] = v52;
  a2[14] = v19;
  a2[15] = v53;
  return result;
}

int32x4_t sub_277AF1F9C(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = &dword_277C42240[64 * a3 - 580];
  v14 = vld1q_dup_f32(v13);
  v15 = &dword_277C42240[64 * a3 - 636];
  v16 = vld1q_dup_f32(v15);
  v17 = &dword_277C42240[64 * a3 - 612];
  v18 = vld1q_dup_f32(v17);
  v19 = &dword_277C42240[64 * a3 - 604];
  v20 = vld1q_dup_f32(v19);
  v21 = a1[1];
  v22 = a1[2];
  v23 = &dword_277C42240[64 * a3 - 596];
  v24 = vld1q_dup_f32(v23);
  v25 = a1[9];
  v26 = &dword_277C42240[64 * a3 - 628];
  v27 = vld1q_dup_f32(v26);
  v28 = a1[12];
  v29 = a1[13];
  v30 = vmlaq_s32(v12, v27, v29);
  v31 = &dword_277C42240[64 * a3 - 588];
  v32 = vld1q_dup_f32(v31);
  v33 = a1[3];
  v34 = vmlaq_s32(v12, v27, v33);
  v35 = a1[4];
  v36 = a1[5];
  v37 = vmlaq_s32(v12, v24, v36);
  v38 = vmlsq_s32(v30, v33, v32);
  v39 = vmlaq_s32(v34, v32, v29);
  v40 = a1[10];
  v41 = a1[11];
  v42 = vmlaq_s32(v12, v24, v41);
  v43 = &dword_277C42240[64 * a3 - 620];
  v44 = vld1q_dup_f32(v43);
  v45 = vmlsq_s32(v37, v41, v44);
  v46 = vmlaq_s32(v42, v44, v36);
  v47 = a1[6];
  v48 = a1[7];
  v49 = vmlsq_s32(vmlaq_s32(v12, v18, v25), v48, v20);
  v50 = vmlaq_s32(v12, v18, v48);
  v51 = a1[14];
  v52 = a1[15];
  v53 = vshlq_s32(vmlsq_s32(vmlaq_s32(v12, v14, v21), v52, v16), v11);
  v54 = vshlq_s32(v49, v11);
  v55 = vshlq_s32(v45, v11);
  v56 = vshlq_s32(v38, v11);
  v57 = vshlq_s32(v39, v11);
  v58 = vshlq_s32(v46, v11);
  v59 = vshlq_s32(vmlaq_s32(v50, v20, v25), v11);
  v60 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v14, v52), v16, v21), v11);
  v61 = &dword_277C42240[64 * a3 - 584];
  v62 = vld1q_dup_f32(v61);
  v63 = &dword_277C42240[64 * a3 - 616];
  v64 = vld1q_dup_f32(v63);
  v65 = vmlaq_s32(v12, v64, v40);
  v66 = vmlaq_s32(v12, v64, v47);
  v67 = &dword_277C42240[64 * a3 - 600];
  v68 = vld1q_dup_f32(v67);
  v69 = vmlsq_s32(v65, v47, v68);
  v70 = &dword_277C42240[64 * a3 - 632];
  v71 = vld1q_dup_f32(v70);
  v72 = vmlsq_s32(vmlaq_s32(v12, v62, v22), v51, v71);
  v73 = vmlaq_s32(v66, v68, v40);
  v74 = vmlaq_s32(vmlaq_s32(v12, v62, v51), v71, v22);
  v75 = vaddq_s32(v54, v53);
  v76 = vminq_s32(vmaxq_s32(vsubq_s32(v53, v54), v9), v10);
  v77 = vaddq_s32(v56, v55);
  v78 = vminq_s32(vmaxq_s32(vsubq_s32(v56, v55), v9), v10);
  v79 = vaddq_s32(v58, v57);
  v80 = vminq_s32(vmaxq_s32(vsubq_s32(v57, v58), v9), v10);
  v81 = vaddq_s32(v60, v59);
  v82 = vminq_s32(vmaxq_s32(vsubq_s32(v60, v59), v9), v10);
  LODWORD(v70) = dword_277C42240[64 * a3 - 592];
  v83 = vdupq_n_s32(v70);
  v84 = dword_277C42240[64 * a3 - 624];
  v85 = vdupq_n_s32(v84);
  v86 = vmlsq_s32(vmlaq_s32(v12, v83, v35), v28, v85);
  v87 = vmlaq_s32(vmlaq_s32(v12, v83, v28), v85, v35);
  v88 = vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v70), v78), vdupq_n_s32(-v84), v80);
  v89 = vmlaq_s32(v12, v83, v80);
  v90 = vmlaq_s32(v12, v83, v76);
  v91 = vmlsq_s32(vmlaq_s32(v12, v83, v82), v76, v85);
  v92 = vmlsq_s32(v89, v78, v85);
  v93 = vshlq_s32(v72, v11);
  v94 = vshlq_s32(v69, v11);
  v95 = vshlq_s32(v73, v11);
  v96 = vshlq_s32(v74, v11);
  v97 = vminq_s32(vmaxq_s32(v75, v9), v10);
  v98 = vminq_s32(vmaxq_s32(v77, v9), v10);
  v99 = vminq_s32(vmaxq_s32(v79, v9), v10);
  v100 = vminq_s32(vmaxq_s32(v81, v9), v10);
  v101 = vmlaq_s32(v90, v85, v82);
  v102 = &dword_277C42240[64 * a3 - 608];
  v103 = vld1q_dup_f32(v102);
  v104 = vmlaq_s32(v12, v103, *a1);
  v105 = vmulq_s32(v103, a1[8]);
  v106 = vshlq_s32(vaddq_s32(v104, v105), v11);
  v107 = vshlq_s32(vsubq_s32(v104, v105), v11);
  v108 = vshlq_s32(v86, v11);
  v109 = vshlq_s32(v87, v11);
  v110 = vminq_s32(vmaxq_s32(vaddq_s32(v94, v93), v9), v10);
  v111 = vminq_s32(vmaxq_s32(vsubq_s32(v93, v94), v9), v10);
  v112 = vminq_s32(vmaxq_s32(vaddq_s32(v96, v95), v9), v10);
  v113 = vminq_s32(vmaxq_s32(vsubq_s32(v96, v95), v9), v10);
  v114 = vshlq_s32(v91, v11);
  v115 = vshlq_s32(v88, v11);
  v116 = vshlq_s32(v92, v11);
  v117 = vshlq_s32(v101, v11);
  v118 = vsubq_s32(v106, v109);
  v119 = vminq_s32(vmaxq_s32(vaddq_s32(v109, v106), v9), v10);
  v120 = vminq_s32(vmaxq_s32(v118, v9), v10);
  v121 = vsubq_s32(v107, v108);
  v122 = vminq_s32(vmaxq_s32(vaddq_s32(v108, v107), v9), v10);
  v123 = vminq_s32(vmaxq_s32(v121, v9), v10);
  v124 = vmulq_s32(v111, v103);
  v125 = vmlaq_s32(v12, v113, v103);
  v126 = vshlq_s32(vsubq_s32(v125, v124), v11);
  v127 = vshlq_s32(vaddq_s32(v125, v124), v11);
  v128 = vaddq_s32(v98, v97);
  v129 = vsubq_s32(v97, v98);
  v130 = vaddq_s32(v115, v114);
  v131 = vminq_s32(vmaxq_s32(vsubq_s32(v114, v115), v9), v10);
  v132 = vaddq_s32(v100, v99);
  v133 = vsubq_s32(v100, v99);
  v134 = vaddq_s32(v117, v116);
  v135 = vminq_s32(vmaxq_s32(vsubq_s32(v117, v116), v9), v10);
  v136 = vaddq_s32(v119, v112);
  v137 = vsubq_s32(v119, v112);
  v138 = vaddq_s32(v127, v122);
  v139 = vsubq_s32(v122, v127);
  v140 = vaddq_s32(v126, v123);
  v141 = vsubq_s32(v123, v126);
  v142 = vaddq_s32(v120, v110);
  v143 = vsubq_s32(v120, v110);
  v144 = vmulq_s32(v131, v103);
  v145 = vmlaq_s32(v12, v135, v103);
  v146 = vsubq_s32(v145, v144);
  v147 = vaddq_s32(v145, v144);
  v148 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v133, v9), v10), v103);
  v149 = vmulq_s32(vminq_s32(vmaxq_s32(v129, v9), v10), v103);
  v150 = vsubq_s32(v148, v149);
  v151 = vaddq_s32(v148, v149);
  v152 = vminq_s32(vmaxq_s32(v132, v9), v10);
  v153 = vminq_s32(vmaxq_s32(v134, v9), v10);
  v154 = vminq_s32(vmaxq_s32(v136, v9), v10);
  v155 = vminq_s32(vmaxq_s32(v138, v9), v10);
  v156 = vshlq_s32(v146, v11);
  v157 = vshlq_s32(v147, v11);
  v158 = vshlq_s32(v150, v11);
  v159 = vshlq_s32(v151, v11);
  *a2 = vminq_s32(vmaxq_s32(vaddq_s32(v154, v152), v9), v10);
  a2[1] = vminq_s32(vmaxq_s32(vaddq_s32(v155, v153), v9), v10);
  a2[14] = vminq_s32(vmaxq_s32(vsubq_s32(v155, v153), v9), v10);
  a2[15] = vminq_s32(vmaxq_s32(vsubq_s32(v154, v152), v9), v10);
  v160 = vminq_s32(vmaxq_s32(v140, v9), v10);
  v161 = vminq_s32(vmaxq_s32(v142, v9), v10);
  a2[2] = vminq_s32(vmaxq_s32(vaddq_s32(v157, v160), v9), v10);
  a2[3] = vminq_s32(vmaxq_s32(vaddq_s32(v159, v161), v9), v10);
  a2[12] = vminq_s32(vmaxq_s32(vsubq_s32(v161, v159), v9), v10);
  a2[13] = vminq_s32(vmaxq_s32(vsubq_s32(v160, v157), v9), v10);
  v162 = vminq_s32(vmaxq_s32(v141, v9), v10);
  v163 = vminq_s32(vmaxq_s32(v143, v9), v10);
  a2[4] = vminq_s32(vmaxq_s32(vaddq_s32(v158, v163), v9), v10);
  a2[5] = vminq_s32(vmaxq_s32(vaddq_s32(v156, v162), v9), v10);
  a2[10] = vminq_s32(vmaxq_s32(vsubq_s32(v162, v156), v9), v10);
  a2[11] = vminq_s32(vmaxq_s32(vsubq_s32(v163, v158), v9), v10);
  v164 = vminq_s32(vmaxq_s32(v128, v9), v10);
  v165 = vminq_s32(vmaxq_s32(v130, v9), v10);
  v166 = vminq_s32(vmaxq_s32(v137, v9), v10);
  v167 = vminq_s32(vmaxq_s32(v139, v9), v10);
  a2[6] = vminq_s32(vmaxq_s32(vaddq_s32(v167, v165), v9), v10);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v166, v164), v9), v10);
  v168 = vmaxq_s32(vsubq_s32(v167, v165), v9);
  result = vminq_s32(vmaxq_s32(vsubq_s32(v166, v164), v9), v10);
  a2[8] = result;
  a2[9] = vminq_s32(v168, v10);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v171 = 10;
    }

    else
    {
      v171 = a5;
    }

    v172 = 32 << v171;
    v177 = vdupq_n_s32(v172 - 1);
    v178 = vdupq_n_s32(-v172);
    sub_277AEAB84(a2, a6);
    v173 = a2 + 2;
    v174 = -4;
    do
    {
      v175 = vminq_s32(vmaxq_s32(v173[-1], v178), v177);
      v173[-2] = vminq_s32(vmaxq_s32(v173[-2], v178), v177);
      v173[-1] = v175;
      result = vminq_s32(vmaxq_s32(*v173, v178), v177);
      v176 = vminq_s32(vmaxq_s32(v173[1], v178), v177);
      *v173 = result;
      v173[1] = v176;
      v173 += 4;
      v174 += 4;
    }

    while (v174 < 0xC);
  }

  return result;
}

void sub_277AF254C(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = &dword_277C42240[64 * a3 - 636];
  v14 = vld1q_dup_f32(v13);
  v15 = a1[1];
  v16 = vshlq_s32(vmlaq_s32(v12, v14, v15), v11);
  v17 = &dword_277C42240[64 * a3 - 580];
  v18 = vld1q_dup_f32(v17);
  v19 = vshlq_s32(vmlaq_s32(v12, v18, v15), v11);
  v21 = a1[6];
  v20 = a1[7];
  v22 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 604]), v20), v11);
  v23 = &dword_277C42240[64 * a3 - 612];
  v24 = vld1q_dup_f32(v23);
  v25 = vshlq_s32(vmlaq_s32(v12, v24, v20), v11);
  v26 = &dword_277C42240[64 * a3 - 620];
  v27 = vld1q_dup_f32(v26);
  v28 = a1[4];
  v29 = a1[5];
  v30 = vmlaq_s32(v12, v27, v29);
  v31 = &dword_277C42240[64 * a3 - 596];
  v32 = vld1q_dup_f32(v31);
  v33 = vshlq_s32(v30, v11);
  v34 = vshlq_s32(vmlaq_s32(v12, v32, v29), v11);
  v35 = a1[2];
  v36 = a1[3];
  v37 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 588]), v36), v11);
  v38 = &dword_277C42240[64 * a3 - 628];
  v39 = vld1q_dup_f32(v38);
  v40 = vshlq_s32(vmlaq_s32(v12, v39, v36), v11);
  v41 = &dword_277C42240[64 * a3 - 632];
  v42 = vld1q_dup_f32(v41);
  v43 = vshlq_s32(vmlaq_s32(v12, v42, v35), v11);
  v44 = &dword_277C42240[64 * a3 - 584];
  v45 = vld1q_dup_f32(v44);
  v46 = vshlq_s32(vmlaq_s32(v12, v45, v35), v11);
  v47 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 600]), v21), v11);
  v48 = &dword_277C42240[64 * a3 - 616];
  v49 = vld1q_dup_f32(v48);
  v50 = vshlq_s32(vmlaq_s32(v12, v49, v21), v11);
  v51 = vaddq_s32(v22, v19);
  v52 = vsubq_s32(v19, v22);
  v53 = vminq_s32(vmaxq_s32(v51, v9), v10);
  v54 = vminq_s32(vmaxq_s32(v52, v9), v10);
  v55 = vminq_s32(vmaxq_s32(vaddq_s32(v37, v34), v9), v10);
  v56 = vminq_s32(vmaxq_s32(vsubq_s32(v37, v34), v9), v10);
  v57 = vminq_s32(vmaxq_s32(vaddq_s32(v40, v33), v9), v10);
  v58 = vminq_s32(vmaxq_s32(vsubq_s32(v40, v33), v9), v10);
  v59 = vaddq_s32(v25, v16);
  v60 = vsubq_s32(v16, v25);
  v61 = vminq_s32(vmaxq_s32(v59, v9), v10);
  v62 = vminq_s32(vmaxq_s32(v60, v9), v10);
  v63 = &dword_277C42240[64 * a3 - 608];
  v64 = vld1q_dup_f32(v63);
  v65 = vshlq_s32(vmlaq_s32(v12, v64, *a1), v11);
  LODWORD(v63) = dword_277C42240[64 * a3 - 624];
  v66 = vdupq_n_s32(v63);
  v67 = vshlq_s32(vmlaq_s32(v12, v66, v28), v11);
  v68 = dword_277C42240[64 * a3 - 592];
  v69 = vdupq_n_s32(v68);
  v70 = vshlq_s32(vmlaq_s32(v12, v69, v28), v11);
  v71 = vminq_s32(vmaxq_s32(vaddq_s32(v47, v46), v9), v10);
  v72 = vminq_s32(vmaxq_s32(vsubq_s32(v46, v47), v9), v10);
  v73 = vminq_s32(vmaxq_s32(vaddq_s32(v50, v43), v9), v10);
  v74 = vminq_s32(vmaxq_s32(vsubq_s32(v43, v50), v9), v10);
  v75 = vshlq_s32(vmlaq_s32(vmlsq_s32(v12, v54, v66), v69, v62), v11);
  v76 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v66, v62), v69, v54), v11);
  v77 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v63), v58), vdupq_n_s32(-v68), v56), v11);
  v78 = vshlq_s32(vmlaq_s32(vmlsq_s32(v12, v56, v66), v69, v58), v11);
  v79 = vminq_s32(vmaxq_s32(vaddq_s32(v67, v65), v9), v10);
  v80 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v67), v9), v10);
  v81 = vminq_s32(vmaxq_s32(vaddq_s32(v70, v65), v9), v10);
  v82 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v70), v9), v10);
  v83 = vmulq_s32(v72, v64);
  v84 = vmlaq_s32(v12, v74, v64);
  v85 = vshlq_s32(vsubq_s32(v84, v83), v11);
  v86 = vshlq_s32(vaddq_s32(v84, v83), v11);
  v87 = vminq_s32(vmaxq_s32(vaddq_s32(v55, v53), v9), v10);
  v88 = vminq_s32(vmaxq_s32(vsubq_s32(v53, v55), v9), v10);
  v89 = vminq_s32(vmaxq_s32(vaddq_s32(v77, v75), v9), v10);
  v90 = vminq_s32(vmaxq_s32(vsubq_s32(v75, v77), v9), v10);
  v91 = vminq_s32(vmaxq_s32(vaddq_s32(v61, v57), v9), v10);
  v92 = vminq_s32(vmaxq_s32(vsubq_s32(v61, v57), v9), v10);
  v93 = vsubq_s32(v76, v78);
  v94 = vminq_s32(vmaxq_s32(vaddq_s32(v78, v76), v9), v10);
  v95 = vminq_s32(vmaxq_s32(v93, v9), v10);
  v96 = vsubq_s32(v79, v73);
  v97 = vminq_s32(vmaxq_s32(vaddq_s32(v79, v73), v9), v10);
  v98 = vminq_s32(vmaxq_s32(v96, v9), v10);
  v99 = vminq_s32(vmaxq_s32(vaddq_s32(v86, v81), v9), v10);
  v100 = vminq_s32(vmaxq_s32(vsubq_s32(v81, v86), v9), v10);
  v101 = vsubq_s32(v82, v85);
  v102 = vminq_s32(vmaxq_s32(vaddq_s32(v85, v82), v9), v10);
  v103 = vminq_s32(vmaxq_s32(v101, v9), v10);
  v104 = vminq_s32(vmaxq_s32(vaddq_s32(v80, v71), v9), v10);
  v105 = vminq_s32(vmaxq_s32(vsubq_s32(v80, v71), v9), v10);
  v106 = vmulq_s32(v90, v64);
  v107 = vmlaq_s32(v12, v95, v64);
  v108 = vshlq_s32(vsubq_s32(v107, v106), v11);
  v109 = vshlq_s32(vaddq_s32(v107, v106), v11);
  v110 = vmulq_s32(v88, v64);
  v111 = vmlaq_s32(v12, v92, v64);
  v112 = vshlq_s32(vsubq_s32(v111, v110), v11);
  v113 = vshlq_s32(vaddq_s32(v111, v110), v11);
  *a2 = vminq_s32(vmaxq_s32(vaddq_s32(v97, v91), v9), v10);
  a2[1] = vminq_s32(vmaxq_s32(vaddq_s32(v99, v94), v9), v10);
  a2[14] = vminq_s32(vmaxq_s32(vsubq_s32(v99, v94), v9), v10);
  a2[15] = vminq_s32(vmaxq_s32(vsubq_s32(v97, v91), v9), v10);
  a2[2] = vminq_s32(vmaxq_s32(vaddq_s32(v109, v102), v9), v10);
  a2[3] = vminq_s32(vmaxq_s32(vaddq_s32(v113, v104), v9), v10);
  a2[12] = vminq_s32(vmaxq_s32(vsubq_s32(v104, v113), v9), v10);
  a2[13] = vminq_s32(vmaxq_s32(vsubq_s32(v102, v109), v9), v10);
  a2[4] = vminq_s32(vmaxq_s32(vaddq_s32(v112, v105), v9), v10);
  a2[5] = vminq_s32(vmaxq_s32(vaddq_s32(v108, v103), v9), v10);
  a2[10] = vminq_s32(vmaxq_s32(vsubq_s32(v103, v108), v9), v10);
  a2[11] = vminq_s32(vmaxq_s32(vsubq_s32(v105, v112), v9), v10);
  a2[6] = vminq_s32(vmaxq_s32(vaddq_s32(v100, v89), v9), v10);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v98, v87), v9), v10);
  a2[8] = vminq_s32(vmaxq_s32(vsubq_s32(v98, v87), v9), v10);
  a2[9] = vminq_s32(vmaxq_s32(vsubq_s32(v100, v89), v9), v10);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v115 = 10;
    }

    else
    {
      v115 = a5;
    }

    v116 = 32 << v115;
    v121 = vdupq_n_s32(v116 - 1);
    v122 = vdupq_n_s32(-v116);
    sub_277AEAB84(a2, a6);
    v117 = a2 + 2;
    v118 = -4;
    do
    {
      v119 = vminq_s32(vmaxq_s32(v117[-1], v122), v121);
      v117[-2] = vminq_s32(vmaxq_s32(v117[-2], v122), v121);
      v117[-1] = v119;
      v120 = vminq_s32(vmaxq_s32(v117[1], v122), v121);
      *v117 = vminq_s32(vmaxq_s32(*v117, v122), v121);
      v117[1] = v120;
      v117 += 4;
      v118 += 4;
    }

    while (v118 < 0xC);
  }
}

__n128 sub_277AF2AA8(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = &dword_277C42240[64 * a3 - 608];
  v10 = vld1q_dup_f32(v9);
  v11 = vshlq_s32(vmlaq_s32(vdupq_n_s32(1 << (a3 - 1)), v10, *a1), vdupq_n_s32(-a3));
  if (a4)
  {
    v12 = vdupq_n_s32(-v8);
    v13 = vdupq_n_s32(v8 - 1);
  }

  else
  {
    if (a5 <= 10)
    {
      v14 = 10;
    }

    else
    {
      v14 = a5;
    }

    v15 = 32 << v14;
    v12 = vdupq_n_s32(-v15);
    v13 = vdupq_n_s32(v15 - 1);
    if (a6)
    {
      v11 = vshlq_s32(vaddq_s32(v11, vdupq_n_s32(1 << a6 >> 1)), vdupq_n_s32(-a6));
    }
  }

  v16 = vminq_s32(vmaxq_s32(v11, v12), v13);
  *a1 = v16;
  *a2 = v16;
  v17 = *a1;
  a2[1] = *a1;
  a2[2] = v17;
  v18 = *a1;
  a2[3] = *a1;
  a2[4] = v18;
  v19 = *a1;
  a2[5] = *a1;
  a2[6] = v19;
  v20 = *a1;
  a2[7] = *a1;
  a2[8] = v20;
  v21 = *a1;
  a2[9] = *a1;
  a2[10] = v21;
  v22 = *a1;
  a2[11] = *a1;
  a2[12] = v22;
  v23 = *a1;
  a2[13] = *a1;
  a2[14] = v23;
  result = *a1;
  a2[15] = *a1;
  return result;
}

int32x4_t *sub_277AF2BC0(int32x4_t *result, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = vaddq_s32(*result, *result);
  *a2 = v6;
  v7 = vaddq_s32(result[1], result[1]);
  a2[1] = v7;
  v8 = vaddq_s32(result[2], result[2]);
  a2[2] = v8;
  v9 = vaddq_s32(result[3], result[3]);
  a2[3] = v9;
  v10 = vaddq_s32(result[4], result[4]);
  a2[4] = v10;
  v11 = vaddq_s32(result[5], result[5]);
  a2[5] = v11;
  v12 = vaddq_s32(result[6], result[6]);
  a2[6] = v12;
  v13 = vaddq_s32(result[7], result[7]);
  a2[7] = v13;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v14 = 10;
    }

    else
    {
      v14 = a5;
    }

    v15 = 32 << v14;
    v16 = -(32 << v14);
    v17 = v15 - 1;
    if (a6)
    {
      v18 = vdupq_n_s32(-a6);
      *a2 = vrshlq_s32(v6, v18);
      a2[1] = vrshlq_s32(v7, v18);
      a2[2] = vrshlq_s32(v8, v18);
      a2[3] = vrshlq_s32(v9, v18);
      a2[4] = vrshlq_s32(v10, v18);
      a2[5] = vrshlq_s32(v11, v18);
      a2[6] = vrshlq_s32(v12, v18);
      a2[7] = vrshlq_s32(v13, v18);
    }

    v19 = 0;
    v20 = vdupq_n_s32(v16);
    v21 = vdupq_n_s32(v17);
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = &a2[v19];
      v25 = vminq_s32(vmaxq_s32(v24[1], v20), v21);
      *v24 = vminq_s32(vmaxq_s32(*v24, v20), v21);
      v24[1] = v25;
      v26 = vminq_s32(vmaxq_s32(v24[3], v20), v21);
      v24[2] = vminq_s32(vmaxq_s32(v24[2], v20), v21);
      v24[3] = v26;
      v19 = 4;
      v22 = 0;
    }

    while ((v23 & 1) != 0);
  }

  return result;
}

int32x4_t *sub_277AF2CD4(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (v6 + a5 <= 15)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = 1 << (v6 + a5 - 1);
  }

  v8 = vdupq_n_s32(-v7);
  v9 = vdupq_n_s32(v7 - 1);
  v10 = vdupq_n_s32(-a3);
  v11 = vdupq_n_s32(1 << (a3 - 1));
  v12 = &dword_277C42240[64 * a3 - 636];
  v13 = vld1q_dup_f32(v12);
  v15 = result[6];
  v14 = result[7];
  v16 = &dword_277C42240[64 * a3 - 580];
  v17 = vld1q_dup_f32(v16);
  v18 = result[1];
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v13, v14), v17, *result), v10);
  v20 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, *result, v13), v17, v14), v10);
  v21 = &dword_277C42240[64 * a3 - 620];
  v22 = vld1q_dup_f32(v21);
  v24 = result[4];
  v23 = result[5];
  v25 = &dword_277C42240[64 * a3 - 596];
  v26 = vld1q_dup_f32(v25);
  v27 = result[2];
  v28 = result[3];
  v29 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v22, v23), v26, v27), v10);
  v30 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v27, v22), v26, v23), v10);
  v31 = &dword_277C42240[64 * a3 - 604];
  v32 = vld1q_dup_f32(v31);
  v33 = &dword_277C42240[64 * a3 - 612];
  v34 = vld1q_dup_f32(v33);
  v35 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v32, v28), v34, v24), v10);
  v36 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v24, v32), v34, v28), v10);
  v37 = &dword_277C42240[64 * a3 - 588];
  v38 = vld1q_dup_f32(v37);
  v39 = &dword_277C42240[64 * a3 - 628];
  v40 = vld1q_dup_f32(v39);
  v41 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v38, v18), v40, v15), v10);
  v42 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v15, v38), v40, v18), v10);
  v43 = vminq_s32(vmaxq_s32(vaddq_s32(v35, v19), v8), v9);
  v44 = vminq_s32(vmaxq_s32(vsubq_s32(v19, v35), v8), v9);
  v45 = vaddq_s32(v36, v20);
  v46 = vsubq_s32(v20, v36);
  v47 = vminq_s32(vmaxq_s32(v45, v8), v9);
  v48 = vminq_s32(vmaxq_s32(v46, v8), v9);
  v49 = vminq_s32(vmaxq_s32(vaddq_s32(v41, v29), v8), v9);
  v50 = vminq_s32(vmaxq_s32(vsubq_s32(v29, v41), v8), v9);
  v51 = vaddq_s32(v42, v30);
  v52 = vsubq_s32(v30, v42);
  v53 = vminq_s32(vmaxq_s32(v51, v8), v9);
  v54 = &dword_277C42240[64 * a3 - 624];
  v55 = vld1q_dup_f32(v54);
  v56 = vminq_s32(vmaxq_s32(v52, v8), v9);
  v57 = &dword_277C42240[64 * a3 - 592];
  v58 = vld1q_dup_f32(v57);
  v59 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v55, v44), v58, v48), v10);
  v60 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v48, v55), v58, v44), v10);
  v61 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v55, v56), v50, v58), v10);
  v62 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v55, v50), v58, v56), v10);
  v63 = vminq_s32(vmaxq_s32(vaddq_s32(v49, v43), v8), v9);
  v64 = vminq_s32(vmaxq_s32(vsubq_s32(v43, v49), v8), v9);
  v65 = vminq_s32(vmaxq_s32(vaddq_s32(v53, v47), v8), v9);
  v66 = vminq_s32(vmaxq_s32(vsubq_s32(v47, v53), v8), v9);
  v67 = vminq_s32(vmaxq_s32(vaddq_s32(v61, v59), v8), v9);
  v68 = vminq_s32(vmaxq_s32(vsubq_s32(v59, v61), v8), v9);
  v69 = vaddq_s32(v62, v60);
  v70 = vsubq_s32(v60, v62);
  v71 = vminq_s32(vmaxq_s32(v69, v8), v9);
  v72 = vminq_s32(vmaxq_s32(v70, v8), v9);
  v73 = &dword_277C42240[64 * a3 - 608];
  v74 = vld1q_dup_f32(v73);
  v75 = vmlaq_s32(v11, v74, v64);
  v76 = vmulq_s32(v74, v66);
  v77 = vshlq_s32(vaddq_s32(v75, v76), v10);
  v78 = vshlq_s32(vsubq_s32(v75, v76), v10);
  v79 = vmlaq_s32(v11, v74, v68);
  v80 = vmulq_s32(v74, v72);
  v81 = vshlq_s32(vaddq_s32(v79, v80), v10);
  v82 = vshlq_s32(vsubq_s32(v79, v80), v10);
  if (a4)
  {
    v83 = vnegq_s32(v67);
    v84 = vnegq_s32(v77);
    v85 = vnegq_s32(v82);
    v86 = vnegq_s32(v65);
  }

  else
  {
    if (a5 <= 10)
    {
      v87 = 10;
    }

    else
    {
      v87 = a5;
    }

    v88 = 32 << v87;
    v89 = vdupq_n_s32(-v88);
    v90 = vdupq_n_s32(v88 - 1);
    v91 = vdupq_n_s32(-a6);
    v92 = vdupq_n_s32(1 << a6 >> 1);
    v63 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v63, v92), v91), v89), v90);
    v83 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v67), v91), v89), v90);
    v81 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v81, v92), v91), v89), v90);
    v84 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v77), v91), v89), v90);
    v78 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v78, v92), v91), v89), v90);
    v85 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v82), v91), v89), v90);
    v71 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v71, v92), v91), v89), v90);
    v86 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v65), v91), v89), v90);
  }

  *a2 = v63;
  a2[1] = v83;
  a2[2] = v81;
  a2[3] = v84;
  a2[4] = v78;
  a2[5] = v85;
  a2[6] = v71;
  a2[7] = v86;
  return result;
}

int32x4_t *sub_277AF3038(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v8 = &dword_277C42240[64 * a3 - 580];
  v9 = vld1q_dup_f32(v8);
  v10 = vshlq_s32(vmlaq_s32(v7, v9, *result), v6);
  v11 = &dword_277C42240[64 * a3 - 636];
  v12 = vld1q_dup_f32(v11);
  v13 = vshlq_s32(vnegq_s32(vmlaq_s32(v7, v12, *result)), v6);
  v14 = &dword_277C42240[64 * a3 - 624];
  v15 = vld1q_dup_f32(v14);
  v16 = &dword_277C42240[64 * a3 - 592];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v10), v17, v13), v6);
  v19 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v15), v17, v10), v6);
  v20 = &dword_277C42240[64 * a3 - 608];
  v21 = vld1q_dup_f32(v20);
  v22 = vmlaq_s32(v7, v21, v10);
  v23 = vmulq_s32(v21, v13);
  v24 = vshlq_s32(vaddq_s32(v22, v23), v6);
  v25 = vshlq_s32(vsubq_s32(v22, v23), v6);
  v26 = vmlaq_s32(v7, v21, v18);
  v27 = vmulq_s32(v21, v19);
  v28 = vshlq_s32(vaddq_s32(v26, v27), v6);
  v29 = vshlq_s32(vsubq_s32(v26, v27), v6);
  if (a4)
  {
    v30 = vnegq_s32(v18);
    v31 = vnegq_s32(v24);
    v32 = vnegq_s32(v29);
    v33 = vnegq_s32(v13);
  }

  else
  {
    if (a5 <= 10)
    {
      v34 = 10;
    }

    else
    {
      v34 = a5;
    }

    v35 = 32 << v34;
    v36 = vdupq_n_s32(-v35);
    v37 = vdupq_n_s32(v35 - 1);
    v38 = vdupq_n_s32(-a6);
    v39 = vdupq_n_s32(1 << a6 >> 1);
    v10 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v10, v39), v38), v36), v37);
    v30 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v18), v38), v36), v37);
    v28 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v28, v39), v38), v36), v37);
    v31 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v24), v38), v36), v37);
    v25 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v25, v39), v38), v36), v37);
    v32 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v29), v38), v36), v37);
    v19 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v19, v39), v38), v36), v37);
    v33 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v13), v38), v36), v37);
  }

  *a2 = v10;
  a2[1] = v30;
  a2[2] = v28;
  a2[3] = v31;
  a2[4] = v25;
  a2[5] = v32;
  a2[6] = v19;
  a2[7] = v33;
  return result;
}

int32x4_t *sub_277AF31E4(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = result[1];
  v14 = &dword_277C42240[64 * a3 - 584];
  v15 = vld1q_dup_f32(v14);
  v16 = result[6];
  v17 = result[7];
  LODWORD(v14) = dword_277C42240[64 * a3 - 632];
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v15, v13), vdupq_n_s32(-v14), v17), v11);
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v15, v17), vdupq_n_s32(v14), v13), v11);
  v20 = result[5];
  v21 = &dword_277C42240[64 * a3 - 616];
  v22 = vld1q_dup_f32(v21);
  v23 = result[2];
  v24 = result[3];
  LODWORD(v21) = dword_277C42240[64 * a3 - 600];
  v25 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v22, v20), vdupq_n_s32(-v21), v24), v11);
  v26 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v22, v24), vdupq_n_s32(v21), v20), v11);
  v27 = &dword_277C42240[64 * a3 - 608];
  v28 = vld1q_dup_f32(v27);
  v29 = vmlaq_s32(v12, v28, *result);
  v30 = vmulq_s32(v28, result[4]);
  v31 = vshlq_s32(vaddq_s32(v29, v30), v11);
  v32 = vshlq_s32(vsubq_s32(v29, v30), v11);
  v33 = &dword_277C42240[64 * a3 - 592];
  v34 = vld1q_dup_f32(v33);
  v35 = dword_277C42240[64 * a3 - 624];
  v36 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v34, v23), vdupq_n_s32(-v35), v16), v11);
  v37 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v34, v16), vdupq_n_s32(v35), v23), v11);
  v38 = vaddq_s32(v25, v18);
  v39 = vsubq_s32(v18, v25);
  v40 = vminq_s32(vmaxq_s32(v38, v9), v10);
  v41 = vaddq_s32(v26, v19);
  v42 = vsubq_s32(v19, v26);
  v43 = vminq_s32(vmaxq_s32(v41, v9), v10);
  v44 = vaddq_s32(v37, v31);
  v45 = vsubq_s32(v31, v37);
  v46 = vminq_s32(vmaxq_s32(v44, v9), v10);
  v47 = vminq_s32(vmaxq_s32(v45, v9), v10);
  v48 = vminq_s32(vmaxq_s32(vaddq_s32(v36, v32), v9), v10);
  v49 = vminq_s32(vmaxq_s32(vsubq_s32(v32, v36), v9), v10);
  v50 = vmulq_s32(vminq_s32(vmaxq_s32(v39, v9), v10), v28);
  v51 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v42, v9), v10), v28);
  v52 = vshlq_s32(vaddq_s32(v51, v50), v11);
  v53 = vshlq_s32(vsubq_s32(v51, v50), v11);
  v54 = vminq_s32(vmaxq_s32(vaddq_s32(v46, v43), v9), v10);
  v55 = vminq_s32(vmaxq_s32(vsubq_s32(v46, v43), v9), v10);
  v56 = vaddq_s32(v52, v48);
  v57 = vsubq_s32(v48, v52);
  v58 = vminq_s32(vmaxq_s32(v56, v9), v10);
  v59 = vminq_s32(vmaxq_s32(v57, v9), v10);
  *a2 = v54;
  a2[1] = v58;
  a2[6] = v59;
  a2[7] = v55;
  v60 = vsubq_s32(v49, v53);
  v61 = vminq_s32(vmaxq_s32(vaddq_s32(v53, v49), v9), v10);
  v62 = vminq_s32(vmaxq_s32(v60, v9), v10);
  v63 = vminq_s32(vmaxq_s32(vaddq_s32(v47, v40), v9), v10);
  a2[2] = v61;
  a2[3] = v63;
  v64 = vminq_s32(vmaxq_s32(vsubq_s32(v47, v40), v9), v10);
  a2[4] = v64;
  a2[5] = v62;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v65 = 10;
    }

    else
    {
      v65 = a5;
    }

    v66 = 32 << v65;
    v67 = -(32 << v65);
    v68 = v66 - 1;
    if (a6)
    {
      v69 = vdupq_n_s32(-a6);
      *a2 = vrshlq_s32(v54, v69);
      a2[1] = vrshlq_s32(v58, v69);
      a2[2] = vrshlq_s32(v61, v69);
      a2[3] = vrshlq_s32(v63, v69);
      a2[4] = vrshlq_s32(v64, v69);
      a2[5] = vrshlq_s32(v62, v69);
      a2[6] = vrshlq_s32(v59, v69);
      a2[7] = vrshlq_s32(v55, v69);
    }

    v70 = 0;
    v71 = vdupq_n_s32(v67);
    v72 = vdupq_n_s32(v68);
    v73 = 1;
    do
    {
      v74 = v73;
      v75 = &a2[v70];
      v76 = vminq_s32(vmaxq_s32(v75[1], v71), v72);
      *v75 = vminq_s32(vmaxq_s32(*v75, v71), v72);
      v75[1] = v76;
      v77 = vminq_s32(vmaxq_s32(v75[3], v71), v72);
      v75[2] = vminq_s32(vmaxq_s32(v75[2], v71), v72);
      v75[3] = v77;
      v70 = 4;
      v73 = 0;
    }

    while ((v74 & 1) != 0);
  }

  return result;
}

int32x4_t sub_277AF34C0(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (v6 + a5 <= 15)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = 1 << (v6 + a5 - 1);
  }

  v8 = &dword_277C42240[64 * a3 - 608];
  v9 = vld1q_dup_f32(v8);
  v10 = vaddq_s32(vshlq_s32(vmulq_s32(v9, *a1), vdupq_n_s32(-a3)), vdupq_n_s32(1 << (a3 - 1)));
  if (a4)
  {
    v11 = vdupq_n_s32(-v7);
    v12 = vdupq_n_s32(v7 - 1);
  }

  else
  {
    if (a5 <= 10)
    {
      v13 = 10;
    }

    else
    {
      v13 = a5;
    }

    v14 = 32 << v13;
    v11 = vdupq_n_s32(-v14);
    v12 = vdupq_n_s32(v14 - 1);
    v10 = vshlq_s32(vaddq_s32(v10, vdupq_n_s32(1 << a6 >> 1)), vdupq_n_s32(-a6));
  }

  result = vminq_s32(vmaxq_s32(v10, v11), v12);
  *a2 = result;
  a2[1] = result;
  a2[2] = result;
  a2[3] = result;
  a2[4] = result;
  a2[5] = result;
  a2[6] = result;
  a2[7] = result;
  return result;
}

uint64_t sub_277AF359C()
{
  result = MEMORY[0x28223BE20]();
  v6 = result;
  v87 = *MEMORY[0x277D85DE8];
  if (v3 < 9)
  {
    v7 = (v4 - 2);
    v8 = dword_277C31650[v7];
    v81 = *(&off_27A7239B8 + v4);
    v9 = dword_277C3BEE4[v4];
    v10 = dword_277C3BF30[v4];
    v11 = v10;
    if (v10 >= 32)
    {
      v12 = 32;
    }

    else
    {
      v12 = dword_277C3BF30[v4];
    }

    v67 = v1;
    v68 = v2;
    v79 = v5;
    v73 = dword_277C3BF30[v4];
    if (v9 == v10)
    {
      goto LABEL_6;
    }

    if (v9 <= v10)
    {
      if (v10 == 2 * v9)
      {
        v14 = -1;
        goto LABEL_29;
      }

      if (v10 == 4 * v9)
      {
        v14 = -2;
        goto LABEL_29;
      }
    }

    else
    {
      if (v9 == 2 * v10)
      {
        v14 = 1;
LABEL_29:
        v80 = v14;
        goto LABEL_30;
      }

      if (v9 == 4 * v10)
      {
        v14 = 2;
        goto LABEL_29;
      }
    }

LABEL_6:
    v80 = 0;
LABEL_30:
    v70 = dword_277C3BEE4[v4];
    v82 = (v9 >> 2);
    v69 = *(&off_28866ED60 + 12 * dword_277C3BE98[v4] + 4 * byte_277C31574[v3] + dword_277C315D0[v8] - 24);
    v71 = v3 > 8;
    v72 = v3;
    v78 = ((v8 + 8) >> 2) & 0xE;
    if (v78)
    {
      v16 = 0;
      v17 = dword_277C31694[v7];
      v74 = (v17 & 0x18) + 8;
      v77 = *(&off_28866ED60 + 12 * dword_277C31584[v4] + 4 * byte_277C31564[v3] + dword_277C315D0[v17] - 24);
      v76 = v71 | (0x11Fu >> v3);
      v18 = (((v17 >> 3) & 3) << 7) + 128;
      v19 = 4 * v12;
      v20 = v86;
      v21 = &v86[(v82 - 1) * v73];
      v22 = vdupq_n_s32(0xB50u);
      v75 = v22;
      do
      {
        v23 = 0;
        v24 = v6;
        do
        {
          *&v83[v23] = *v24;
          v23 += 16;
          v24 = (v24 + v19);
        }

        while (v18 != v23);
        if (v80 == 1 || v80 == -1)
        {
          v25 = v83;
          v26 = v74;
          do
          {
            *v25 = vrshrq_n_s32(vmulq_s32(*v25, v22), 0xCuLL);
            ++v25;
            --v26;
          }

          while (v26);
        }

        result = v77(v83, v83, 12, 0, v79, -*v81);
        if (v76)
        {
          v27 = v20;
          v28 = v84;
          v29 = v82;
          if (v82 >= 1)
          {
            do
            {
              v30 = v28[-2];
              v31 = v28[-1];
              v32 = vtrn1q_s32(v30, v31);
              v33 = vtrn2q_s32(v30, v31);
              v34 = *v28;
              v35 = v28[1];
              v28 += 4;
              v36 = vtrn1q_s32(v34, v35);
              v37 = vzip2q_s64(v32, v36);
              v32.i64[1] = v36.i64[0];
              v38 = vtrn2q_s32(v34, v35);
              v39 = vzip2q_s64(v33, v38);
              v33.i64[1] = v38.i64[0];
              v27[-2] = v32;
              v27[-1] = v33;
              *v27 = v37;
              v27[1] = v39;
              v27 += v73;
              --v29;
            }

            while (v29);
          }
        }

        else
        {
          v40 = v21;
          v41 = v84;
          v42 = v82;
          if (v82 >= 1)
          {
            do
            {
              v43 = v41[1];
              v44 = vtrn1q_s32(v43, *v41);
              v45 = vtrn2q_s32(v43, *v41);
              v47 = v41[-2];
              v46 = v41[-1];
              v48 = vtrn1q_s32(v46, v47);
              v49 = vzip2q_s64(v44, v48);
              v44.i64[1] = v48.i64[0];
              v50 = vtrn2q_s32(v46, v47);
              v51 = vzip2q_s64(v45, v50);
              v45.i64[1] = v50.i64[0];
              v40[-2] = v44;
              v40[-1] = v45;
              *v40 = v49;
              v40[1] = v51;
              v41 += 4;
              v40 -= v73;
              --v42;
            }

            while (v42);
          }
        }

        ++v16;
        ++v6;
        v21 += 4;
        v20 += 4;
        v22 = v75;
      }

      while (v16 != v78);
    }

    if (v82 >= 1)
    {
      v52 = 0;
      v53 = v85;
      do
      {
        result = v69(&v85[v52 * v73], &v85[v52 * v73], 12, 1, v79, 0);
        v54 = vdupq_n_s32(v81[1]);
        v55 = v53;
        v56 = v11;
        do
        {
          *v55 = vrshlq_s32(*v55, v54);
          ++v55;
          --v56;
        }

        while (v56);
        ++v52;
        v53 += v73;
      }

      while (v52 != v82);
    }

    v57 = (v70 >> 3);
    if (v57 >= 1)
    {
      v58 = 0;
      v59 = 0;
      v60 = 2 * v67;
      v61 = vdupq_n_s32(~(-1 << v79));
      if ((v71 | (0xAFu >> v72)))
      {
        v62 = 0;
      }

      else
      {
        v62 = (v73 - 1);
      }

      v63 = &v85[v62];
      v64 = 16;
      if (((v71 | (0xAFu >> v72)) & 1) == 0)
      {
        v64 = -16;
      }

      do
      {
        v65 = &v63[v58];
        v66 = v60;
        result = v11;
        do
        {
          *v66->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v65, *v66), 0), v61)), vminq_s32(vmaxq_s32(vaddw_high_s16(v65[v11], *v66->i8), 0), v61));
          v66 = (v66 + 2 * v68);
          v65 = (v65 + v64);
          --result;
        }

        while (result);
        ++v59;
        v60 += 16;
        v58 += 2 * v11;
      }

      while (v59 != v57);
    }

    return result;
  }

  if (v3 <= 0xF)
  {
    if (((1 << v3) & 0x5400) != 0)
    {
      v15 = (2 * v1);

      return sub_277AF3BE0(result, v15, v2, v3, v4, v5);
    }

    else if (((1 << v3) & 0xA800) != 0)
    {
      v13 = (2 * v1);

      return sub_277AF4018(result, v13, v2, v3, v4, v5);
    }

    else if (v3 == 9)
    {

      return sub_277AF44DC();
    }
  }

  return result;
}

uint64_t sub_277AF3BE0(uint64_t result, int16x4_t *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v7 = result;
  v66[124] = *MEMORY[0x277D85DE8];
  v8 = dword_277C3BF30[a5];
  v9 = v8;
  if (v8 >= 32)
  {
    v10 = 32;
  }

  else
  {
    v10 = dword_277C3BF30[a5];
  }

  v61 = *(&off_27A7239B8 + a5);
  v11 = dword_277C3BEE4[a5];
  if (v11 >= 32)
  {
    v12 = 32;
  }

  else
  {
    v12 = v11;
  }

  v56 = dword_277C3BF30[a5];
  v55 = dword_277C3BEE4[a5];
  if (v11 == v8)
  {
    goto LABEL_8;
  }

  if (v11 <= v8)
  {
    if (v8 == 2 * v11)
    {
      v13 = -1;
      goto LABEL_18;
    }

    if (v8 == 4 * v11)
    {
      v13 = -2;
      goto LABEL_18;
    }

LABEL_8:
    v60 = 0;
    goto LABEL_19;
  }

  if (v11 != 2 * v8)
  {
    if (v11 == 4 * v8)
    {
      v13 = 2;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v13 = 1;
LABEL_18:
  v60 = v13;
LABEL_19:
  v14 = (v12 >> 2);
  v54 = *(&off_28866ED60 + 12 * dword_277C3BE98[a5] + 4 * byte_277C31574[a4] + dword_277C315D0[v10 - 1] - 24);
  v52 = (a4 - 4) >> 1;
  v51 = (v52 | ((a4 - 4) << 7)) > 5u;
  v59 = ((v10 + 7) >> 2) & 0xFFFFFFFE;
  if (v59 >= 1)
  {
    v15 = 0;
    v16 = 4 * v10;
    v58 = *(&off_28866ED60 + 12 * dword_277C31584[a5] + 4 * byte_277C31564[a4] - 24);
    v17 = v66;
    v18 = vdupq_n_s32(0xB50u);
    v19 = 16 * v8;
    v57 = v18;
    do
    {
      v20 = 0;
      v21 = v7;
      do
      {
        v63[v20++] = *v21;
        v21 = (v21 + v16);
      }

      while (v12 != v20);
      if (v60 == 1 || v60 == -1)
      {
        v22 = v63;
        v23 = v12;
        do
        {
          *v22 = vrshrq_n_s32(vmulq_s32(*v22, v18), 0xCuLL);
          ++v22;
          --v23;
        }

        while (v23);
      }

      result = v58(v63, v63, 12, 0, a6, -*v61);
      v24 = v17;
      v25 = &v64;
      v26 = (v12 >> 2);
      if (v14 >= 1)
      {
        do
        {
          v27 = v25[-2];
          v28 = v25[-1];
          v29 = vtrn1q_s32(v27, v28);
          v30 = vtrn2q_s32(v27, v28);
          v31 = v25[1];
          v32 = vtrn1q_s32(*v25, v31);
          v33 = vtrn2q_s32(*v25, v31);
          v34 = vzip2q_s64(v29, v32);
          v29.i64[1] = v32.i64[0];
          v32.i64[0] = v30.i64[0];
          v32.i64[1] = v33.i64[0];
          v35 = vzip2q_s64(v30, v33);
          v25[-2] = v29;
          v25[-1] = v32;
          *v25 = v34;
          v25[1] = v35;
          v25 += 4;
          v24[-2] = v29;
          v24[-1] = v32;
          *v24 = v34;
          v24[1] = v35;
          v24 = (v24 + v19);
          --v26;
        }

        while (v26);
      }

      ++v15;
      ++v7;
      v17 += 4;
      v18 = v57;
    }

    while (v15 != v59);
  }

  if (v14 >= 1)
  {
    v36 = 0;
    v37 = v65;
    do
    {
      result = v54(&v65[v36 * v56], &v65[v36 * v56], 12, 1, a6, 0);
      v38 = vdupq_n_s32(v61[1]);
      v39 = v37;
      v40 = v9;
      do
      {
        *v39 = vrshlq_s32(*v39, v38);
        ++v39;
        --v40;
      }

      while (v40);
      ++v36;
      v37 += v56;
    }

    while (v36 != v14);
  }

  v41 = (v55 >> 3);
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = 0;
    v44 = vdupq_n_s32(~(-1 << a6));
    if ((v51 | (0x18u >> v52)))
    {
      v45 = 0;
    }

    else
    {
      v45 = (v56 - 1);
    }

    v46 = &v65[v45];
    v47 = 16;
    if (((v51 | (0x18u >> v52)) & 1) == 0)
    {
      v47 = -16;
    }

    do
    {
      v48 = &v46[v42];
      v49 = a2;
      v50 = v9;
      do
      {
        *v49->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v48, *v49), 0), v44)), vminq_s32(vmaxq_s32(vaddw_high_s16(v48[v9], *v49->i8), 0), v44));
        v49 = (v49 + 2 * a3);
        v48 = (v48 + v47);
        --v50;
      }

      while (v50);
      ++v43;
      a2 += 2;
      v42 += 2 * v9;
    }

    while (v43 != v41);
  }

  return result;
}

uint64_t sub_277AF4018(uint64_t result, int16x4_t *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6 = result;
  v85 = *MEMORY[0x277D85DE8];
  v7 = dword_277C3BEE4[a5];
  v78 = *(&off_27A7239B8 + a5);
  if (v7 >= 32)
  {
    v8 = 32;
  }

  else
  {
    v8 = dword_277C3BEE4[a5];
  }

  v9 = dword_277C3BF30[a5];
  v10 = v9;
  if (v9 >= 32)
  {
    v11 = 32;
  }

  else
  {
    v11 = dword_277C3BF30[a5];
  }

  v69 = dword_277C3BF30[a5];
  v68 = dword_277C3BEE4[a5];
  if (v7 == v9)
  {
    goto LABEL_8;
  }

  if (v7 <= v9)
  {
    if (v9 == 2 * v7)
    {
      v12 = -1;
      goto LABEL_18;
    }

    if (v9 == 4 * v7)
    {
      v12 = -2;
      goto LABEL_18;
    }

LABEL_8:
    v77 = 0;
    goto LABEL_19;
  }

  if (v7 != 2 * v9)
  {
    if (v7 == 4 * v9)
    {
      v12 = 2;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_18:
  v77 = v12;
LABEL_19:
  v80 = (v8 >> 2);
  v67 = *(&off_28866ED60 + 12 * dword_277C3BE98[a5] + 4 * byte_277C31574[a4] - 24);
  v71 = a4 > 0xF;
  v72 = a4;
  v76 = (v11 >> 2);
  if (v76 >= 1)
  {
    v13 = 0;
    v14 = v8 - 1;
    v15 = (v14 & 0xFFFFFFF8) + 8;
    v75 = *(&off_28866ED60 + 12 * dword_277C31584[a5] + 4 * byte_277C31564[a4] + dword_277C315D0[v14] - 24);
    v74 = v71 | (0x7F1Fu >> a4);
    v16 = 4 * v11;
    v17 = v84;
    v18 = &v84[(v80 - 1) * v10];
    v19 = vdupq_n_s32(0xB50u);
    v73 = v19;
    do
    {
      v20 = 0;
      v21 = v6;
      do
      {
        v81[v20++] = *v21;
        v21 = (v21 + v16);
      }

      while (v15 != v20);
      if (v77 == 1 || v77 == -1)
      {
        v22 = v81;
        v23 = -v15;
        do
        {
          *v22 = vrshrq_n_s32(vmulq_s32(*v22, v19), 0xCuLL);
          ++v22;
        }

        while (!__CFADD__(v23++, 1));
      }

      result = v75(v81, v81, 12, 0, a6, -*v78);
      if (v74)
      {
        v25 = v17;
        v26 = v82;
        v27 = v80;
        if (v80 >= 1)
        {
          do
          {
            v28 = v26[-2];
            v29 = v26[-1];
            v30 = vtrn1q_s32(v28, v29);
            v31 = vtrn2q_s32(v28, v29);
            v32 = *v26;
            v33 = v26[1];
            v26 += 4;
            v34 = vtrn1q_s32(v32, v33);
            v35 = vzip2q_s64(v30, v34);
            v30.i64[1] = v34.i64[0];
            v36 = vtrn2q_s32(v32, v33);
            v37 = vzip2q_s64(v31, v36);
            v31.i64[1] = v36.i64[0];
            v25[-2] = v30;
            v25[-1] = v31;
            *v25 = v35;
            v25[1] = v37;
            v25 += v10;
            --v27;
          }

          while (v27);
        }
      }

      else
      {
        v38 = v18;
        v39 = v82;
        v40 = v80;
        if (v80 >= 1)
        {
          do
          {
            v41 = v39[1];
            v42 = vtrn1q_s32(v41, *v39);
            v43 = vtrn2q_s32(v41, *v39);
            v45 = v39[-2];
            v44 = v39[-1];
            v46 = vtrn1q_s32(v44, v45);
            v47 = vzip2q_s64(v42, v46);
            v42.i64[1] = v46.i64[0];
            v48 = vtrn2q_s32(v44, v45);
            v49 = vzip2q_s64(v43, v48);
            v43.i64[1] = v48.i64[0];
            v38[-2] = v42;
            v38[-1] = v43;
            *v38 = v47;
            v38[1] = v49;
            v39 += 4;
            v38 -= v10;
            --v40;
          }

          while (v40);
        }
      }

      ++v13;
      ++v6;
      v18 += 4;
      v17 += 4;
      v19 = v73;
    }

    while (v13 != v76);
  }

  v50 = a2;
  if (v80 >= 1)
  {
    v51 = 0;
    v52 = v83;
    do
    {
      result = v67(&v83[v51 * v10], &v83[v51 * v10], 12, 1, a6, 0);
      v53 = vdupq_n_s32(v78[1]);
      v54 = v52;
      v55 = v69;
      do
      {
        *v54 = vrshlq_s32(*v54, v53);
        ++v54;
        --v55;
      }

      while (v55);
      ++v51;
      v52 += v10;
    }

    while (v51 != v80);
  }

  v56 = (v68 >> 3);
  if (v56 >= 1)
  {
    v57 = 0;
    v58 = 0;
    v59 = vdupq_n_s32(~(-1 << a6));
    if ((v71 | (0xBEAFu >> v72)))
    {
      v60 = 0;
    }

    else
    {
      v60 = (v10 - 1);
    }

    v61 = &v83[v60];
    v62 = 16;
    if (((v71 | (0xBEAFu >> v72)) & 1) == 0)
    {
      v62 = -16;
    }

    do
    {
      v63 = &v61[v57];
      v64 = v50;
      v65 = v10;
      do
      {
        *v64->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v63, *v64), 0), v59)), vminq_s32(vmaxq_s32(vaddw_high_s16(v63[v10], *v64->i8), 0), v59));
        v64 = (v64 + 2 * a3);
        v63 = (v63 + v62);
        --v65;
      }

      while (v65);
      ++v58;
      v50 += 2;
      v57 += 2 * v69;
    }

    while (v58 != v56);
  }

  return result;
}

uint64_t sub_277AF44DC()
{
  result = MEMORY[0x28223BE20]();
  v56 = v3;
  v5 = v4;
  v6 = result;
  v60[508] = *MEMORY[0x277D85DE8];
  v55 = *(&off_27A7239B8 + v2);
  v7 = dword_277C3BEE4[v2];
  v8 = dword_277C3BF30[v2];
  v9 = v8;
  if (v8 >= 32)
  {
    v10 = 32;
  }

  else
  {
    v10 = dword_277C3BF30[v2];
  }

  if (v7 >= 32)
  {
    v11 = 32;
  }

  else
  {
    v11 = v7;
  }

  v47 = v1;
  v50 = dword_277C3BF30[v2];
  v49 = dword_277C3BEE4[v2];
  if (v7 == v8)
  {
    goto LABEL_8;
  }

  if (v7 <= v8)
  {
    if (v8 == 2 * v7)
    {
      v12 = -1;
      goto LABEL_18;
    }

    if (v8 == 4 * v7)
    {
      v12 = -2;
      goto LABEL_18;
    }

LABEL_8:
    v54 = 0;
    goto LABEL_19;
  }

  if (v7 != 2 * v8)
  {
    if (v7 == 4 * v8)
    {
      v12 = 2;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_18:
  v54 = v12;
LABEL_19:
  v13 = (v11 >> 2);
  v48 = *(&off_28866ED60 + 12 * dword_277C3BE98[v2] - 16);
  v53 = (v10 >> 2);
  if (v53 >= 1)
  {
    v14 = 0;
    v15 = 4 * v10;
    v52 = *(&off_28866ED60 + 12 * dword_277C31584[v2] - 16);
    v16 = v60;
    v17 = 16 * v8;
    v18 = vdupq_n_s32(0xB50u);
    v51 = v18;
    do
    {
      v19 = 0;
      v20 = v6;
      do
      {
        v57[v19++] = *v20;
        v20 = (v20 + v15);
      }

      while (v11 != v19);
      if (v54 == 1 || v54 == -1)
      {
        v21 = v57;
        v22 = v11;
        do
        {
          *v21 = vrshrq_n_s32(vmulq_s32(*v21, v18), 0xCuLL);
          ++v21;
          --v22;
        }

        while (v22);
      }

      result = v52(v57, v57, 12, 0, v56, -*v55);
      v23 = v16;
      v24 = &v58;
      v25 = (v11 >> 2);
      if (v13 >= 1)
      {
        do
        {
          v26 = v24[-2];
          v27 = v24[-1];
          v28 = vtrn1q_s32(v26, v27);
          v29 = vtrn2q_s32(v26, v27);
          v30 = v24[1];
          v31 = vtrn1q_s32(*v24, v30);
          v32 = vtrn2q_s32(*v24, v30);
          v33 = vzip2q_s64(v28, v31);
          v28.i64[1] = v31.i64[0];
          v31.i64[0] = v29.i64[0];
          v31.i64[1] = v32.i64[0];
          v34 = vzip2q_s64(v29, v32);
          v24[-2] = v28;
          v24[-1] = v31;
          *v24 = v33;
          v24[1] = v34;
          v24 += 4;
          v23[-2] = v28;
          v23[-1] = v31;
          *v23 = v33;
          v23[1] = v34;
          v23 = (v23 + v17);
          --v25;
        }

        while (v25);
      }

      ++v14;
      ++v6;
      v16 += 4;
      v18 = v51;
    }

    while (v14 != v53);
  }

  if (v13 >= 1)
  {
    v35 = 0;
    v36 = v59;
    do
    {
      result = v48(&v59[v35 * v50], &v59[v35 * v50], 12, 1, v56, 0);
      v37 = vdupq_n_s32(v55[1]);
      v38 = v36;
      v39 = v9;
      do
      {
        *v38 = vrshlq_s32(*v38, v37);
        ++v38;
        --v39;
      }

      while (v39);
      ++v35;
      v36 += v50;
    }

    while (v35 != v13);
  }

  v40 = (v49 >> 3);
  if (v40 >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = vdupq_n_s32(~(-1 << v56));
    do
    {
      v44 = &v59[v41];
      v45 = v5;
      v46 = v9;
      do
      {
        *v45->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v44, *v45), 0), v43)), vminq_s32(vmaxq_s32(vaddw_high_s16(v44[v9], *v45->i8), 0), v43));
        ++v44;
        v45 = (v45 + 2 * v47);
        --v46;
      }

      while (v46);
      ++v42;
      v41 += 2 * v50;
      v5 += 2;
    }

    while (v42 != v40);
  }

  return result;
}

double sub_277AF48AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int32x4_t a5)
{
  v523 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = a1;
  v8 = *a4;
  v9 = a4[2];
  switch(*(a4 + 1))
  {
    case 0:
      if (a4[1])
      {
        if (a4[5] < 2)
        {
          v212 = 0;
          v213 = (2 * a2);
          v214 = (*a1 >> 2) - (*a1 >> 3);
          v475.i32[2] = *a1 >> 3;
          v475.i32[3] = v475.i32[2];
          v215 = 2 * a3;
          v216 = 3 * a3;
          v475.i64[0] = __PAIR64__(v475.u32[2], v214);
          do
          {
            v217 = v475.i32[v212];
            v218 = v217 >> 1;
            v219 = v217 - (v217 >> 1) + *v213;
            if (v9 == 12)
            {
              if (v219 >= 0xFFF)
              {
                v230 = 4095;
              }

              else
              {
                v230 = v219;
              }

              if (v219 >= 0)
              {
                v231 = v230;
              }

              else
              {
                v231 = 0;
              }

              *v213 = v231;
              v232 = v218 + v213[a3];
              if (v232 >= 0xFFF)
              {
                v233 = 4095;
              }

              else
              {
                v233 = v218 + v213[a3];
              }

              if (v232 >= 0)
              {
                v234 = v233;
              }

              else
              {
                v234 = 0;
              }

              v213[a3] = v234;
              v235 = v218 + v213[v215];
              if (v235 >= 0xFFF)
              {
                v236 = 4095;
              }

              else
              {
                v236 = v218 + v213[v215];
              }

              if (v235 >= 0)
              {
                v237 = v236;
              }

              else
              {
                v237 = 0;
              }

              v213[v215] = v237;
              v228 = v218 + v213[v216];
              if (v228 >= 0xFFF)
              {
                v229 = 4095;
              }

              else
              {
                v229 = v228;
              }
            }

            else if (v9 == 10)
            {
              if (v219 >= 0x3FF)
              {
                v220 = 1023;
              }

              else
              {
                v220 = v219;
              }

              if (v219 >= 0)
              {
                v221 = v220;
              }

              else
              {
                v221 = 0;
              }

              *v213 = v221;
              v222 = v218 + v213[a3];
              if (v222 >= 0x3FF)
              {
                v223 = 1023;
              }

              else
              {
                v223 = v218 + v213[a3];
              }

              if (v222 >= 0)
              {
                v224 = v223;
              }

              else
              {
                v224 = 0;
              }

              v213[a3] = v224;
              v225 = v218 + v213[v215];
              if (v225 >= 0x3FF)
              {
                v226 = 1023;
              }

              else
              {
                v226 = v218 + v213[v215];
              }

              if (v225 >= 0)
              {
                v227 = v226;
              }

              else
              {
                v227 = 0;
              }

              v213[v215] = v227;
              v228 = v218 + v213[v216];
              if (v228 >= 0x3FF)
              {
                v229 = 1023;
              }

              else
              {
                v229 = v228;
              }
            }

            else
            {
              if (v219 >= 0xFF)
              {
                v238 = 255;
              }

              else
              {
                v238 = v219;
              }

              if (v219 >= 0)
              {
                v239 = v238;
              }

              else
              {
                v239 = 0;
              }

              *v213 = v239;
              v240 = v218 + v213[a3];
              if (v240 >= 0xFF)
              {
                v241 = 255;
              }

              else
              {
                v241 = v218 + v213[a3];
              }

              if (v240 >= 0)
              {
                v242 = v241;
              }

              else
              {
                v242 = 0;
              }

              v213[a3] = v242;
              v243 = v218 + v213[v215];
              if (v243 >= 0xFF)
              {
                v244 = 255;
              }

              else
              {
                v244 = v218 + v213[v215];
              }

              if (v243 >= 0)
              {
                v245 = v244;
              }

              else
              {
                v245 = 0;
              }

              v213[v215] = v245;
              v228 = v218 + v213[v216];
              if (v228 >= 0xFF)
              {
                v229 = 255;
              }

              else
              {
                v229 = v228;
              }
            }

            if ((v228 & 0x80000000) == 0)
            {
              v246 = v229;
            }

            else
            {
              v246 = 0;
            }

            v213[v216] = v246;
            ++v213;
            ++v212;
          }

          while ((v212 * 4) != 16);
        }

        else
        {
          v10 = 0;
          do
          {
            v11 = &v475.i32[v10 / 4];
            v12 = *(a1 + v10 + 16);
            v13 = *(a1 + v10 + 48);
            v14 = (v12 >> 2) + (*(a1 + v10) >> 2);
            v15 = (*(a1 + v10 + 32) >> 2) - (v13 >> 2);
            v16 = (v14 - v15) >> 1;
            v17 = v16 - (v13 >> 2);
            v18 = v16 - (v12 >> 2);
            *v11 = v14 - v17;
            v11[4] = v17;
            v11[8] = v18;
            v11[12] = v18 + v15;
            v10 += 4;
          }

          while (v10 != 16);
          v19 = 0;
          v20 = (2 * a2);
          v21 = 2 * a3;
          v22 = 3 * a3;
          do
          {
            v23 = v475.i32[v19 + 1];
            v24 = v475.i32[v19 + 3];
            v25 = v23 + v475.i32[v19];
            v26 = v475.i32[v19 + 2] - v24;
            v27 = (v25 - v26) >> 1;
            v28 = v27 - v24;
            v29 = v27 - v23;
            v30 = v29 + v26;
            v31 = v25 - v28 + *v20;
            if (v9 == 12)
            {
              if (v31 >= 0xFFF)
              {
                v42 = 4095;
              }

              else
              {
                v42 = v25 - v28 + *v20;
              }

              if (v31 >= 0)
              {
                v43 = v42;
              }

              else
              {
                v43 = 0;
              }

              *v20 = v43;
              v44 = v28 + v20[v5];
              if (v44 >= 0xFFF)
              {
                v45 = 4095;
              }

              else
              {
                v45 = v44;
              }

              if (v44 >= 0)
              {
                v46 = v45;
              }

              else
              {
                v46 = 0;
              }

              v20[v5] = v46;
              v47 = v29 + v20[v21];
              if (v47 >= 0xFFF)
              {
                v48 = 4095;
              }

              else
              {
                v48 = v47;
              }

              if (v47 >= 0)
              {
                v49 = v48;
              }

              else
              {
                v49 = 0;
              }

              v20[v21] = v49;
              v40 = v30 + v20[v22];
              if (v40 >= 0xFFF)
              {
                v41 = 4095;
              }

              else
              {
                v41 = v40;
              }
            }

            else if (v9 == 10)
            {
              if (v31 >= 0x3FF)
              {
                v32 = 1023;
              }

              else
              {
                v32 = v25 - v28 + *v20;
              }

              if (v31 >= 0)
              {
                v33 = v32;
              }

              else
              {
                v33 = 0;
              }

              *v20 = v33;
              v34 = v28 + v20[v5];
              if (v34 >= 0x3FF)
              {
                v35 = 1023;
              }

              else
              {
                v35 = v34;
              }

              if (v34 >= 0)
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              v20[v5] = v36;
              v37 = v29 + v20[v21];
              if (v37 >= 0x3FF)
              {
                v38 = 1023;
              }

              else
              {
                v38 = v37;
              }

              if (v37 >= 0)
              {
                v39 = v38;
              }

              else
              {
                v39 = 0;
              }

              v20[v21] = v39;
              v40 = v30 + v20[v22];
              if (v40 >= 0x3FF)
              {
                v41 = 1023;
              }

              else
              {
                v41 = v40;
              }
            }

            else
            {
              if (v31 >= 0xFF)
              {
                v50 = 255;
              }

              else
              {
                v50 = v25 - v28 + *v20;
              }

              if (v31 >= 0)
              {
                v51 = v50;
              }

              else
              {
                v51 = 0;
              }

              *v20 = v51;
              v52 = v28 + v20[v5];
              if (v52 >= 0xFF)
              {
                v53 = 255;
              }

              else
              {
                v53 = v52;
              }

              if (v52 >= 0)
              {
                v54 = v53;
              }

              else
              {
                v54 = 0;
              }

              v20[v5] = v54;
              v55 = v29 + v20[v21];
              if (v55 >= 0xFF)
              {
                v56 = 255;
              }

              else
              {
                v56 = v55;
              }

              if (v55 >= 0)
              {
                v57 = v56;
              }

              else
              {
                v57 = 0;
              }

              v20[v21] = v57;
              v40 = v30 + v20[v22];
              if (v40 >= 0xFF)
              {
                v41 = 255;
              }

              else
              {
                v41 = v40;
              }
            }

            if ((v40 & 0x80000000) == 0)
            {
              v58 = v41;
            }

            else
            {
              v58 = 0;
            }

            v20[v22] = v58;
            ++v20;
            v19 += 4;
          }

          while ((v19 * 4) != 64);
        }
      }

      else
      {
        v210 = (2 * a2);
        v211 = *a4;

        *a5.i64 = sub_277AE8EB8(a1, v210, a3, v211, v9, *a5.i64);
      }

      return *a5.i64;
    case 1:
      if ((v8 - 9) > 6u)
      {
        v174 = 2 * a2;
        if (*a4 > 3u)
        {
          if (*a4 <= 5u)
          {
            if (v8 == 4)
            {
              v404 = *(a1 + 16);
              v475 = *a1;
              v476 = v404;
              v405 = *(a1 + 48);
              v477 = *(a1 + 32);
              v478 = v405;
              v406 = *(a1 + 80);
              v479 = *(a1 + 64);
              v480 = v406;
              v407 = *(a1 + 112);
              v481 = *(a1 + 96);
              v482 = v407;
              v408 = *(a1 + 144);
              v483 = *(a1 + 128);
              v484 = v408;
              v409 = *(a1 + 176);
              v485 = *(a1 + 160);
              v486 = v409;
              v410 = *(a1 + 208);
              v487 = *(a1 + 192);
              v488 = v410;
              v411 = *(a1 + 240);
              v489 = *(a1 + 224);
              v490 = v411;
              sub_277AE9D58(&v475, &v507, 0, v9, 1);
LABEL_261:
              v412 = vtrn1q_s32(v507, v509);
              v413 = vtrn2q_s32(v507, v509);
              v414 = vtrn1q_s32(v511, v513);
              v415 = vtrn2q_s32(v511, v513);
              v416 = vzip2q_s64(v412, v414);
              v412.i64[1] = v414.i64[0];
              v417 = vzip2q_s64(v413, v415);
              v413.i64[1] = v415.i64[0];
              v418 = vtrn1q_s32(v508, v510);
              v419 = vtrn2q_s32(v508, v510);
              v420 = vtrn1q_s32(v512, v514);
              v421 = vtrn2q_s32(v512, v514);
              v422 = vzip2q_s64(v418, v420);
              *&v423 = v418.i64[0];
              *(&v423 + 1) = v420.i64[0];
              v424 = vzip2q_s64(v419, v421);
              *&v425 = v419.i64[0];
              *(&v425 + 1) = v421.i64[0];
              v426 = vtrn1q_s32(v515, v517);
              v427 = vtrn2q_s32(v515, v517);
              v428 = vtrn1q_s32(v519, v521);
              v429 = vtrn2q_s32(v519, v521);
              v430 = vzip2q_s64(v426, v428);
              v426.i64[1] = v428.i64[0];
              v475 = v412;
              v476 = v426;
              v431 = vzip2q_s64(v427, v429);
              v427.i64[1] = v429.i64[0];
              v477 = v413;
              v478 = v427;
              v479 = v416;
              v480 = v430;
              v481 = v417;
              v482 = v431;
              v432 = vtrn1q_s32(v516, v518);
              v433 = vtrn2q_s32(v516, v518);
              v434 = vtrn1q_s32(v520, v522);
              v435 = vtrn2q_s32(v520, v522);
              v436 = vzip2q_s64(v432, v434);
              v432.i64[1] = v434.i64[0];
              v483 = v423;
              v484 = v432;
              v437 = vzip2q_s64(v433, v435);
              v433.i64[1] = v435.i64[0];
              v485 = v425;
              v486 = v433;
              v487 = v422;
              v488 = v436;
              v489 = v424;
              v490 = v437;
              sub_277AEA4A0(&v475, &v507, 1, v9, 0);
              v367 = v174;
              v368 = v5;
              v369 = 0;
              goto LABEL_262;
            }

            v291 = *(a1 + 16);
            v475 = *a1;
            v476 = v291;
            v292 = *(a1 + 48);
            v477 = *(a1 + 32);
            v478 = v292;
            v293 = *(a1 + 80);
            v479 = *(a1 + 64);
            v480 = v293;
            v294 = *(a1 + 112);
            v481 = *(a1 + 96);
            v482 = v294;
            v295 = *(a1 + 144);
            v483 = *(a1 + 128);
            v484 = v295;
            v296 = *(a1 + 176);
            v485 = *(a1 + 160);
            v486 = v296;
            v297 = *(a1 + 208);
            v487 = *(a1 + 192);
            v488 = v297;
            v298 = *(a1 + 240);
            v489 = *(a1 + 224);
            v490 = v298;
            sub_277AEA4A0(&v475, &v507, 0, v9, 1);
            v299 = vtrn1q_s32(v507, v509);
            v300 = vtrn2q_s32(v507, v509);
            v301 = vtrn1q_s32(v511, v513);
            v302 = vtrn2q_s32(v511, v513);
            v303 = vzip2q_s64(v299, v301);
            v299.i64[1] = v301.i64[0];
            v304 = vzip2q_s64(v300, v302);
            v300.i64[1] = v302.i64[0];
            v305 = vtrn1q_s32(v508, v510);
            v306 = vtrn2q_s32(v508, v510);
            v307 = vtrn1q_s32(v512, v514);
            v308 = vtrn2q_s32(v512, v514);
            v309 = vzip2q_s64(v305, v307);
            *&v310 = v305.i64[0];
            *(&v310 + 1) = v307.i64[0];
            v311 = vzip2q_s64(v306, v308);
            *&v312 = v306.i64[0];
            *(&v312 + 1) = v308.i64[0];
            v313 = vtrn1q_s32(v515, v517);
            v314 = vtrn2q_s32(v515, v517);
            v315 = vtrn1q_s32(v519, v521);
            v316 = vtrn2q_s32(v519, v521);
            v317 = vzip2q_s64(v313, v315);
            v313.i64[1] = v315.i64[0];
            v475 = v299;
            v476 = v313;
            v318 = vzip2q_s64(v314, v316);
            v314.i64[1] = v316.i64[0];
            v477 = v300;
            v478 = v314;
            v479 = v303;
            v480 = v317;
            v481 = v304;
            v482 = v318;
            v319 = vtrn1q_s32(v516, v518);
            v320 = vtrn2q_s32(v516, v518);
            v321 = vtrn1q_s32(v520, v522);
            v322 = vtrn2q_s32(v520, v522);
            v323 = vzip2q_s64(v319, v321);
            v319.i64[1] = v321.i64[0];
            v483 = v310;
            v484 = v319;
            v324 = vzip2q_s64(v320, v322);
            v320.i64[1] = v322.i64[0];
            v485 = v312;
            v486 = v320;
            v487 = v309;
            v488 = v323;
            v489 = v311;
            v490 = v324;
            sub_277AE9D58(&v475, &v507, 1, v9, 0);
          }

          else
          {
            if (v8 == 6)
            {
              v370 = *(a1 + 16);
              v475 = *a1;
              v476 = v370;
              v371 = *(a1 + 48);
              v477 = *(a1 + 32);
              v478 = v371;
              v372 = *(a1 + 80);
              v479 = *(a1 + 64);
              v480 = v372;
              v373 = *(a1 + 112);
              v481 = *(a1 + 96);
              v482 = v373;
              v374 = *(a1 + 144);
              v483 = *(a1 + 128);
              v484 = v374;
              v375 = *(a1 + 176);
              v485 = *(a1 + 160);
              v486 = v375;
              v376 = *(a1 + 208);
              v487 = *(a1 + 192);
              v488 = v376;
              v377 = *(a1 + 240);
              v489 = *(a1 + 224);
              v490 = v377;
              sub_277AEA4A0(&v475, &v507, 0, v9, 1);
              v378 = vtrn1q_s32(v507, v509);
              v379 = vtrn2q_s32(v507, v509);
              v380 = vtrn1q_s32(v511, v513);
              v381 = vtrn2q_s32(v511, v513);
              v382 = vzip2q_s64(v378, v380);
              v378.i64[1] = v380.i64[0];
              v383 = vzip2q_s64(v379, v381);
              v379.i64[1] = v381.i64[0];
              v384 = vtrn1q_s32(v508, v510);
              v385 = vtrn2q_s32(v508, v510);
              v386 = vtrn1q_s32(v512, v514);
              v387 = vtrn2q_s32(v512, v514);
              v388 = vzip2q_s64(v384, v386);
              *&v389 = v384.i64[0];
              *(&v389 + 1) = v386.i64[0];
              v390 = vzip2q_s64(v385, v387);
              *&v391 = v385.i64[0];
              *(&v391 + 1) = v387.i64[0];
              v392 = vtrn1q_s32(v515, v517);
              v393 = vtrn2q_s32(v515, v517);
              v394 = vtrn1q_s32(v519, v521);
              v395 = vtrn2q_s32(v519, v521);
              v396 = vzip2q_s64(v392, v394);
              v392.i64[1] = v394.i64[0];
              v475 = v378;
              v476 = v392;
              v397 = vzip2q_s64(v393, v395);
              v393.i64[1] = v395.i64[0];
              v477 = v379;
              v478 = v393;
              v479 = v382;
              v480 = v396;
              v481 = v383;
              v482 = v397;
              v398 = vtrn1q_s32(v516, v518);
              v399 = vtrn2q_s32(v516, v518);
              v400 = vtrn1q_s32(v520, v522);
              v401 = vtrn2q_s32(v520, v522);
              v402 = vzip2q_s64(v398, v400);
              v398.i64[1] = v400.i64[0];
              v483 = v389;
              v484 = v398;
              v403 = vzip2q_s64(v399, v401);
              v399.i64[1] = v401.i64[0];
              v485 = v391;
              v486 = v399;
              v487 = v388;
              v488 = v402;
              v489 = v390;
              v490 = v403;
              sub_277AEA4A0(&v475, &v507, 1, v9, 0);
              v367 = v174;
              v368 = v5;
              v369 = 1;
LABEL_262:
              v438 = 1;
LABEL_266:
              a5.i64[0] = sub_277AEA06C(&v507, v367, v368, v369, v438, 4, v9).u64[0];
              return *a5.i64;
            }

            if (v8 != 7)
            {
              if (v8 != 8)
              {
                return *a5.i64;
              }

              v175 = *(a1 + 16);
              v475 = *a1;
              v476 = v175;
              v176 = *(a1 + 48);
              v477 = *(a1 + 32);
              v478 = v176;
              v177 = *(a1 + 80);
              v479 = *(a1 + 64);
              v480 = v177;
              v178 = *(a1 + 112);
              v481 = *(a1 + 96);
              v482 = v178;
              v179 = *(a1 + 144);
              v483 = *(a1 + 128);
              v484 = v179;
              v180 = *(a1 + 176);
              v485 = *(a1 + 160);
              v486 = v180;
              v181 = *(a1 + 208);
              v487 = *(a1 + 192);
              v488 = v181;
              v182 = *(a1 + 240);
              v489 = *(a1 + 224);
              v490 = v182;
              sub_277AEA4A0(&v475, &v507, 0, v9, 1);
              goto LABEL_261;
            }

            v439 = *(a1 + 16);
            v475 = *a1;
            v476 = v439;
            v440 = *(a1 + 48);
            v477 = *(a1 + 32);
            v478 = v440;
            v441 = *(a1 + 80);
            v479 = *(a1 + 64);
            v480 = v441;
            v442 = *(a1 + 112);
            v481 = *(a1 + 96);
            v482 = v442;
            v443 = *(a1 + 144);
            v483 = *(a1 + 128);
            v484 = v443;
            v444 = *(a1 + 176);
            v485 = *(a1 + 160);
            v486 = v444;
            v445 = *(a1 + 208);
            v487 = *(a1 + 192);
            v488 = v445;
            v446 = *(a1 + 240);
            v489 = *(a1 + 224);
            v490 = v446;
            sub_277AEA4A0(&v475, &v507, 0, v9, 1);
            v447 = vtrn1q_s32(v507, v509);
            v448 = vtrn2q_s32(v507, v509);
            v449 = vtrn1q_s32(v511, v513);
            v450 = vtrn2q_s32(v511, v513);
            v451 = vzip2q_s64(v447, v449);
            v447.i64[1] = v449.i64[0];
            v452 = vzip2q_s64(v448, v450);
            v448.i64[1] = v450.i64[0];
            v453 = vtrn1q_s32(v508, v510);
            v454 = vtrn2q_s32(v508, v510);
            v455 = vtrn1q_s32(v512, v514);
            v456 = vtrn2q_s32(v512, v514);
            v457 = vzip2q_s64(v453, v455);
            *&v458 = v453.i64[0];
            *(&v458 + 1) = v455.i64[0];
            v459 = vzip2q_s64(v454, v456);
            *&v460 = v454.i64[0];
            *(&v460 + 1) = v456.i64[0];
            v461 = vtrn1q_s32(v515, v517);
            v462 = vtrn2q_s32(v515, v517);
            v463 = vtrn1q_s32(v519, v521);
            v464 = vtrn2q_s32(v519, v521);
            v465 = vzip2q_s64(v461, v463);
            v461.i64[1] = v463.i64[0];
            v475 = v447;
            v476 = v461;
            v466 = vzip2q_s64(v462, v464);
            v462.i64[1] = v464.i64[0];
            v477 = v448;
            v478 = v462;
            v479 = v451;
            v480 = v465;
            v481 = v452;
            v482 = v466;
            v467 = vtrn1q_s32(v516, v518);
            v468 = vtrn2q_s32(v516, v518);
            v469 = vtrn1q_s32(v520, v522);
            v470 = vtrn2q_s32(v520, v522);
            v471 = vzip2q_s64(v467, v469);
            v467.i64[1] = v469.i64[0];
            v483 = v458;
            v484 = v467;
            v472 = vzip2q_s64(v468, v470);
            v468.i64[1] = v470.i64[0];
            v485 = v460;
            v486 = v468;
            v487 = v457;
            v488 = v471;
            v489 = v459;
            v490 = v472;
            sub_277AEA4A0(&v475, &v507, 1, v9, 0);
          }

          v367 = v174;
          v368 = v5;
          v369 = 1;
LABEL_265:
          v438 = 0;
          goto LABEL_266;
        }

        if (*a4 > 1u)
        {
          if (v8 != 2)
          {
            v257 = *(a1 + 16);
            v475 = *a1;
            v476 = v257;
            v258 = *(a1 + 48);
            v477 = *(a1 + 32);
            v478 = v258;
            v259 = *(a1 + 80);
            v479 = *(a1 + 64);
            v480 = v259;
            v260 = *(a1 + 112);
            v481 = *(a1 + 96);
            v482 = v260;
            v261 = *(a1 + 144);
            v483 = *(a1 + 128);
            v484 = v261;
            v262 = *(a1 + 176);
            v485 = *(a1 + 160);
            v486 = v262;
            v263 = *(a1 + 208);
            v487 = *(a1 + 192);
            v488 = v263;
            v264 = *(a1 + 240);
            v489 = *(a1 + 224);
            v490 = v264;
            sub_277AEA4A0(&v475, &v507, 0, v9, 1);
            goto LABEL_249;
          }

          v333 = *(a1 + 16);
          v475 = *a1;
          v476 = v333;
          v334 = *(a1 + 48);
          v477 = *(a1 + 32);
          v478 = v334;
          v335 = *(a1 + 80);
          v479 = *(a1 + 64);
          v480 = v335;
          v336 = *(a1 + 112);
          v481 = *(a1 + 96);
          v482 = v336;
          v337 = *(a1 + 144);
          v483 = *(a1 + 128);
          v484 = v337;
          v338 = *(a1 + 176);
          v485 = *(a1 + 160);
          v486 = v338;
          v339 = *(a1 + 208);
          v487 = *(a1 + 192);
          v488 = v339;
          v340 = *(a1 + 240);
          v489 = *(a1 + 224);
          v490 = v340;
          sub_277AEA4A0(&v475, &v507, 0, v9, 1);
        }

        else
        {
          if (*a4)
          {
            v247 = *(a1 + 16);
            v475 = *a1;
            v476 = v247;
            v248 = *(a1 + 48);
            v477 = *(a1 + 32);
            v478 = v248;
            v249 = *(a1 + 80);
            v479 = *(a1 + 64);
            v480 = v249;
            v250 = *(a1 + 112);
            v481 = *(a1 + 96);
            v482 = v250;
            v251 = *(a1 + 144);
            v483 = *(a1 + 128);
            v484 = v251;
            v252 = *(a1 + 176);
            v485 = *(a1 + 160);
            v486 = v252;
            v253 = *(a1 + 208);
            v487 = *(a1 + 192);
            v488 = v253;
            v254 = *(a1 + 240);
            v489 = *(a1 + 224);
            v490 = v254;
            sub_277AE9D58(&v475, &v507, 0, v9, 1);
LABEL_249:
            v265 = vtrn1q_s32(v507, v509);
            v266 = vtrn2q_s32(v507, v509);
            v267 = vtrn1q_s32(v511, v513);
            v268 = vtrn2q_s32(v511, v513);
            v269 = vzip2q_s64(v265, v267);
            v265.i64[1] = v267.i64[0];
            v270 = vzip2q_s64(v266, v268);
            v266.i64[1] = v268.i64[0];
            v271 = vtrn1q_s32(v508, v510);
            v272 = vtrn2q_s32(v508, v510);
            v273 = vtrn1q_s32(v512, v514);
            v274 = vtrn2q_s32(v512, v514);
            v275 = vzip2q_s64(v271, v273);
            *&v276 = v271.i64[0];
            *(&v276 + 1) = v273.i64[0];
            v277 = vzip2q_s64(v272, v274);
            *&v278 = v272.i64[0];
            *(&v278 + 1) = v274.i64[0];
            v279 = vtrn1q_s32(v515, v517);
            v280 = vtrn2q_s32(v515, v517);
            v281 = vtrn1q_s32(v519, v521);
            v282 = vtrn2q_s32(v519, v521);
            v283 = vzip2q_s64(v279, v281);
            v279.i64[1] = v281.i64[0];
            v475 = v265;
            v476 = v279;
            v284 = vzip2q_s64(v280, v282);
            v280.i64[1] = v282.i64[0];
            v477 = v266;
            v478 = v280;
            v479 = v269;
            v480 = v283;
            v481 = v270;
            v482 = v284;
            v285 = vtrn1q_s32(v516, v518);
            v286 = vtrn2q_s32(v516, v518);
            v287 = vtrn1q_s32(v520, v522);
            v288 = vtrn2q_s32(v520, v522);
            v289 = vzip2q_s64(v285, v287);
            v285.i64[1] = v287.i64[0];
            v483 = v276;
            v484 = v285;
            v290 = vzip2q_s64(v286, v288);
            v286.i64[1] = v288.i64[0];
            v485 = v278;
            v486 = v286;
            v487 = v275;
            v488 = v289;
            v489 = v277;
            v490 = v290;
            sub_277AEA4A0(&v475, &v507, 1, v9, 0);
LABEL_258:
            v367 = v174;
            v368 = v5;
            v369 = 0;
            goto LABEL_265;
          }

          v325 = *(a1 + 16);
          v475 = *a1;
          v476 = v325;
          v326 = *(a1 + 48);
          v477 = *(a1 + 32);
          v478 = v326;
          v327 = *(a1 + 80);
          v479 = *(a1 + 64);
          v480 = v327;
          v328 = *(a1 + 112);
          v481 = *(a1 + 96);
          v482 = v328;
          v329 = *(a1 + 144);
          v483 = *(a1 + 128);
          v484 = v329;
          v330 = *(a1 + 176);
          v485 = *(a1 + 160);
          v486 = v330;
          v331 = *(a1 + 208);
          v487 = *(a1 + 192);
          v488 = v331;
          v332 = *(a1 + 240);
          v489 = *(a1 + 224);
          v490 = v332;
          sub_277AE9D58(&v475, &v507, 0, v9, 1);
        }

        v341 = vtrn1q_s32(v507, v509);
        v342 = vtrn2q_s32(v507, v509);
        v343 = vtrn1q_s32(v511, v513);
        v344 = vtrn2q_s32(v511, v513);
        v345 = vzip2q_s64(v341, v343);
        v341.i64[1] = v343.i64[0];
        v346 = vzip2q_s64(v342, v344);
        v342.i64[1] = v344.i64[0];
        v347 = vtrn1q_s32(v508, v510);
        v348 = vtrn2q_s32(v508, v510);
        v349 = vtrn1q_s32(v512, v514);
        v350 = vtrn2q_s32(v512, v514);
        v351 = vzip2q_s64(v347, v349);
        *&v352 = v347.i64[0];
        *(&v352 + 1) = v349.i64[0];
        v353 = vzip2q_s64(v348, v350);
        *&v354 = v348.i64[0];
        *(&v354 + 1) = v350.i64[0];
        v355 = vtrn1q_s32(v515, v517);
        v356 = vtrn2q_s32(v515, v517);
        v357 = vtrn1q_s32(v519, v521);
        v358 = vtrn2q_s32(v519, v521);
        v359 = vzip2q_s64(v355, v357);
        v355.i64[1] = v357.i64[0];
        v475 = v341;
        v476 = v355;
        v360 = vzip2q_s64(v356, v358);
        v356.i64[1] = v358.i64[0];
        v477 = v342;
        v478 = v356;
        v479 = v345;
        v480 = v359;
        v481 = v346;
        v482 = v360;
        v361 = vtrn1q_s32(v516, v518);
        v362 = vtrn2q_s32(v516, v518);
        v363 = vtrn1q_s32(v520, v522);
        v364 = vtrn2q_s32(v520, v522);
        v365 = vzip2q_s64(v361, v363);
        v361.i64[1] = v363.i64[0];
        v483 = v352;
        v484 = v361;
        v366 = vzip2q_s64(v362, v364);
        v362.i64[1] = v364.i64[0];
        v485 = v354;
        v486 = v362;
        v487 = v351;
        v488 = v365;
        v489 = v353;
        v490 = v366;
        sub_277AE9D58(&v475, &v507, 1, v9, 0);
        goto LABEL_258;
      }

      if (((1 << v8) & 0x5400) != 0)
      {
        v255 = (2 * a2);
        v256 = *a4;

        sub_277AF3BE0(a1, v255, a3, v256, 1u, v9);
      }

      else if (((1 << v8) & 0xA800) != 0)
      {
        v96 = (2 * a2);
        v97 = *a4;

        sub_277AF4018(a1, v96, a3, v97, 1u, v9);
      }

      else
      {

        sub_277AF44DC();
      }

      return *a5.i64;
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:

      sub_277AF359C();
      return *a5.i64;
    case 5:
      v98 = 0;
      v99 = (2 * a2);
      v505 = 0u;
      v506 = 0u;
      v503 = 0u;
      v504 = 0u;
      v501 = 0u;
      v502 = 0u;
      v499 = 0u;
      v500 = 0u;
      v497 = 0u;
      v498 = 0u;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
      v491 = 0u;
      v492 = 0u;
      v489 = 0u;
      v490 = 0u;
      v487 = 0u;
      v488 = 0u;
      v485 = 0u;
      v486 = 0u;
      v483 = 0u;
      v484 = 0u;
      v481 = 0u;
      v482 = 0u;
      v479 = 0u;
      v480 = 0u;
      v100 = 32 * byte_277C31564[v8];
      v101 = &off_28866ED60 + 4 * byte_277C31574[v8];
      v477 = 0u;
      v478 = 0u;
      v475 = 0u;
      v476 = 0u;
      v102 = *(&off_28866ED60 + v100);
      v103 = a1;
      v104 = v101[13];
      do
      {
        v105 = *v103;
        v103 += 2;
        *(&v507 + v98) = v105;
        v98 += 16;
      }

      while (v98 != 64);
      v106 = (a1 + 16);
      v107 = &v511;
      for (i = 64; i != 128; i += 16)
      {
        v109 = *v106;
        v106 += 2;
        *(&v507 + i) = v109;
      }

      v110 = 0;
      v111 = vdupq_n_s32(0xB50u);
      do
      {
        *(&v507 + v110) = vrshrq_n_s32(vmulq_s32(*(&v507 + v110), v111), 0xCuLL);
        v110 += 16;
      }

      while (v110 != 128);
      v102(&v507, &v507, 12, 0, v9, 0);
      v102(&v511, &v511, 12, 0, v9, 0);
      if (v8 > 0xF || ((0x7F1Fu >> v8) & 1) != 0)
      {
        v116 = vtrn1q_s32(v507, v508);
        v117 = vtrn2q_s32(v507, v508);
        v183 = vtrn1q_s32(v509, v510);
        v184 = vtrn2q_s32(v509, v510);
        v115 = vzip2q_s64(v116, v183);
        v116.i64[1] = v183.i64[0];
        v118 = vzip2q_s64(v117, v184);
        v117.i64[1] = v184.i64[0];
        v120 = vtrn1q_s32(v511, v512);
        v121 = vtrn2q_s32(v511, v512);
        v119 = v513;
        v107 = &v514;
      }

      else
      {
        v116 = vtrn1q_s32(v510, v509);
        v112 = vtrn2q_s32(v510, v509);
        v113 = vtrn1q_s32(v508, v507);
        v114 = vtrn2q_s32(v508, v507);
        v115 = vzip2q_s64(v116, v113);
        v116.i64[1] = v113.i64[0];
        v117.i64[0] = v112.i64[0];
        v117.i64[1] = v114.i64[0];
        v118 = vzip2q_s64(v112, v114);
        v119 = v512;
        v120 = vtrn1q_s32(v514, v513);
        v121 = vtrn2q_s32(v514, v513);
      }

      v475 = v116;
      v476 = v117;
      v477 = v115;
      v478 = v118;
      v185 = vtrn1q_s32(v119, *v107);
      v186 = vtrn2q_s32(v119, *v107);
      v187.i64[0] = v120.i64[0];
      v187.i64[1] = v185.i64[0];
      v188.i64[0] = v121.i64[0];
      v188.i64[1] = v186.i64[0];
      v479 = v187;
      v480 = v188;
      v481 = vzip2q_s64(v120, v185);
      v482 = vzip2q_s64(v121, v186);
      (v104)(&v475, &v475, 12, 1, v9, 0);
      for (j = 0; j != 128; j += 16)
      {
        *(&v475 + j) = vrshrq_n_s32(*(&v475 + j), 4uLL);
      }

      v190 = 16;
      if (!((v8 > 0xF) | (0xBEAFu >> v8) & 1))
      {
        v190 = -16;
      }

      a5.i64[0] = vdupq_n_s16(~(-1 << v9)).u64[0];
      v191 = 112;
      if ((v8 > 0xF) | (0xBEAFu >> v8) & 1)
      {
        v191 = 0;
      }

      v192 = 8;
      do
      {
        *v99 = vmax_s16(vmin_s16(vadd_s16(*v99, vmovn_s32(*(&v475 + v191))), *a5.i8), 0);
        v99 = (v99 + 2 * v5);
        v191 += v190;
        --v192;
      }

      while (v192);
      return *a5.i64;
    case 6:
      v141 = 0;
      v142 = *(&off_28866ED60 + 4 * byte_277C31574[v8]);
      v143 = *(a1 + 80);
      v144 = (2 * a2);
      v145 = &off_28866ED60 + 4 * byte_277C31564[v8];
      v146 = (v8 > 0xF) | (0xBEAFu >> v8);
      v511 = *(a1 + 64);
      v512 = v143;
      v147 = *(a1 + 112);
      v513 = *(a1 + 96);
      v514 = v147;
      v148 = *(a1 + 16);
      v507 = *a1;
      v508 = v148;
      v149 = *(a1 + 48);
      v509 = *(a1 + 32);
      v510 = v149;
      v150 = vdupq_n_s32(0xB50u);
      v151 = v145[13];
      do
      {
        *(&v507 + v141) = vrshrq_n_s32(vmulq_s32(*(&v507 + v141), v150), 0xCuLL);
        v141 += 16;
      }

      while (v141 != 128);
      v152 = &v507;
      (v151)(&v507, &v507, 12, 0, v9, 0);
      if (v8 <= 0xF && ((0x7F1Fu >> v8) & 1) == 0)
      {
        v153 = &v507;
        for (k = 112; k != -16; k -= 16)
        {
          v155 = *v153++;
          v152 = &v475;
          *(&v475 + k) = v155;
        }
      }

      v156 = 0;
      v157 = 1;
      do
      {
        v158 = &v152[v156];
        v159 = v152[v156];
        v160 = v152[v156 + 1];
        v161 = vtrn1q_s32(v159, v160);
        v162 = vtrn2q_s32(v159, v160);
        v163 = v152[v156 + 2];
        v164 = v152[v156 + 3];
        v165 = vtrn1q_s32(v163, v164);
        v166 = vtrn2q_s32(v163, v164);
        v167 = vzip2q_s64(v161, v165);
        v161.i64[1] = v165.i64[0];
        v165.i64[0] = v162.i64[0];
        v165.i64[1] = v166.i64[0];
        v168 = v157;
        *v158 = v161;
        v158[1] = v165;
        v158[2] = v167;
        v158[3] = vzip2q_s64(v162, v166);
        v142(&v152[v156], &v152[v156], 12, 1, v9, 0);
        v157 = 0;
        v156 = 4;
      }

      while ((v168 & 1) != 0);
      for (m = 0; m != 8; ++m)
      {
        v152[m] = vrshrq_n_s32(v152[m], 4uLL);
      }

      v170 = 16;
      if ((v146 & 1) == 0)
      {
        v170 = -16;
      }

      a5 = vdupq_n_s32(~(-1 << v9));
      if (v146)
      {
        v171 = 0;
      }

      else
      {
        v171 = 3;
      }

      v172 = &v152[v171 + 4];
      v173 = 4;
      do
      {
        *v144->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v172[-4], *v144), 0), a5)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v172, *v144->i8), 0), a5));
        v144 = (v144 + 2 * v5);
        v172 = (v172 + v170);
        --v173;
      }

      while (v173);
      return *a5.i64;
    case 0xD:
      v122 = 0;
      v123 = *(&off_28866ED60 + 4 * byte_277C31564[v8]);
      v124 = (2 * a2);
      v474 = *(&off_28866ED60 + 4 * byte_277C31574[v8] + 26);
      v125 = &v507;
      do
      {
        v126 = 0;
        v127 = v7;
        do
        {
          v128 = *v127;
          v127 += 4;
          v125[v126++] = v128;
        }

        while (v126 != 4);
        v123(&v507 + 4 * v122, &v507 + 4 * v122, 12, 0, v9, 1);
        ++v122;
        v125 += 4;
        ++v7;
      }

      while (v122 != 4);
      if (v8 > 0xF || ((0x7F1Fu >> v8) & 1) != 0)
      {
        v193 = &v509;
        v194 = &v477;
        v195 = 4;
        do
        {
          v196 = v193[-2];
          v197 = v193[-1];
          v198 = vtrn1q_s32(v196, v197);
          v199 = vtrn2q_s32(v196, v197);
          v200 = *v193;
          v201 = v193[1];
          v193 += 4;
          v202 = vtrn1q_s32(v200, v201);
          v203 = vzip2q_s64(v198, v202);
          v198.i64[1] = v202.i64[0];
          v204 = vtrn2q_s32(v200, v201);
          v205 = vzip2q_s64(v199, v204);
          v199.i64[1] = v204.i64[0];
          v194[-2] = v198;
          v194[-1] = v199;
          *v194 = v203;
          v194[1] = v205;
          v194 += 4;
          --v195;
        }

        while (v195);
      }

      else
      {
        v129 = &v477;
        v130 = &v509;
        v131 = 4;
        do
        {
          v132 = v130[1];
          v133 = vtrn1q_s32(v132, *v130);
          v134 = vtrn2q_s32(v132, *v130);
          v136 = v130[-2];
          v135 = v130[-1];
          v137 = vtrn1q_s32(v135, v136);
          v138 = vzip2q_s64(v133, v137);
          v133.i64[1] = v137.i64[0];
          v139 = vtrn2q_s32(v135, v136);
          v140 = vzip2q_s64(v134, v139);
          v134.i64[1] = v139.i64[0];
          v129[-2] = v133;
          v129[-1] = v134;
          *v129 = v138;
          v129[1] = v140;
          v129 += 4;
          v130 += 4;
          --v131;
        }

        while (v131);
      }

      v474(&v475, &v475, 12, 1, v9, 0);
      for (n = 0; n != 256; n += 16)
      {
        *(&v475 + n) = vrshrq_n_s32(*(&v475 + n), 4uLL);
      }

      v207 = 16;
      if ((v8 > 0xF) | (0xBEAFu >> v8) & 1)
      {
        v208 = 16;
      }

      else
      {
        v208 = -16;
      }

      a5.i64[0] = vdupq_n_s16(~(-1 << v9)).u64[0];
      v209 = 240;
      if ((v8 > 0xF) | (0xBEAFu >> v8) & 1)
      {
        v209 = 0;
      }

      do
      {
        *v124 = vmax_s16(vmin_s16(vadd_s16(*v124, vmovn_s32(*(&v475 + v209))), *a5.i8), 0);
        v124 = (v124 + 2 * v5);
        v209 += v208;
        --v207;
      }

      while (v207);
      return *a5.i64;
    case 0xE:
      v59 = *(&off_28866ED60 + 4 * byte_277C31564[v8] + 26);
      v60 = *(&off_28866ED60 + 4 * byte_277C31574[v8]);
      v61 = *(a1 + 208);
      v519 = *(a1 + 192);
      v520 = v61;
      v62 = *(a1 + 240);
      v521 = *(a1 + 224);
      v522 = v62;
      v63 = *(a1 + 144);
      v515 = *(a1 + 128);
      v516 = v63;
      v64 = *(a1 + 176);
      v517 = *(a1 + 160);
      v518 = v64;
      v65 = *(a1 + 80);
      v511 = *(a1 + 64);
      v512 = v65;
      v66 = *(a1 + 112);
      v513 = *(a1 + 96);
      v514 = v66;
      v67 = *(a1 + 16);
      v507 = *a1;
      v508 = v67;
      v68 = *(a1 + 48);
      v509 = *(a1 + 32);
      v510 = v68;
      v69 = &v507;
      v59(&v507, &v507, 12, 0, v9, 1);
      if (v8 <= 0xF && ((0x7F1Fu >> v8) & 1) == 0)
      {
        v70 = &v507;
        for (ii = 240; ii != -16; ii -= 16)
        {
          v72 = *v70++;
          v69 = &v475;
          *(&v475 + ii) = v72;
        }
      }

      v73 = 2 * a2;
      v74 = (v8 > 0xF) | (0xBEAFu >> v8);
      v75 = 4;
      v76 = v69;
      do
      {
        v77 = v76[1];
        v78 = vtrn1q_s32(*v76, v77);
        v79 = vtrn2q_s32(*v76, v77);
        v80 = v76[2];
        v81 = v76[3];
        v82 = vtrn1q_s32(v80, v81);
        v83 = vtrn2q_s32(v80, v81);
        v84 = vzip2q_s64(v78, v82);
        v78.i64[1] = v82.i64[0];
        v85 = vzip2q_s64(v79, v83);
        v79.i64[1] = v83.i64[0];
        *v76 = v78;
        v76[1] = v79;
        v76[2] = v84;
        v76[3] = v85;
        v60(v76, v76, 12, 1, v9, 0);
        v76 += 4;
        --v75;
      }

      while (v75);
      for (jj = 0; jj != 16; ++jj)
      {
        v69[jj] = vrshrq_n_s32(v69[jj], 4uLL);
      }

      v87 = 0;
      v88 = 16;
      if ((v74 & 1) == 0)
      {
        v88 = -16;
      }

      a5 = vdupq_n_s32(~(-1 << v9));
      if (v74)
      {
        v89 = 0;
      }

      else
      {
        v89 = 3;
      }

      i64 = v69[v89 + 4].i64;
      v91 = 1;
      do
      {
        v92 = v91;
        v93 = (v73 + 2 * v87);
        v94 = 4;
        v95 = (i64 + 16 * v87);
        do
        {
          *v93->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v95[-4], *v93), 0), a5)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v95, *v93->i8), 0), a5));
          v93 = (v93 + 2 * v5);
          v95 = (v95 + v88);
          --v94;
        }

        while (v94);
        v91 = 0;
        v87 = 8;
      }

      while ((v92 & 1) != 0);
      return *a5.i64;
    default:
      return *a5.i64;
  }
}

int *sub_277AF62F8(int *result, int a2, int a3, int a4, int a5)
{
  v5 = -1;
  if (a2 > 2 * a4 || 2 * a5 < a3 || 16 * a2 < a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = -1;
    if (16 * a3 >= a5)
    {
      v5 = (a4 / 2 + (a2 << 14)) / a4;
      v6 = (a5 / 2 + (a3 << 14)) / a5;
      result[2] = (v5 + 8) >> 4;
      result[3] = (v6 + 8) >> 4;
    }
  }

  *result = v5;
  result[1] = v6;
  return result;
}

uint64_t sub_277AF6378(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v4 = result;
    v5 = *(result + 24);
    v6 = a2 - 1;
    v7 = a2 - 1;
    v8 = (*result + (v7 << 6));
    pthread_mutex_lock(v8);
    if (*(*(v4 + 16) + 4 * v6) - (v5 + *(v4 + 28)) < a3)
    {
      do
      {
        pthread_cond_wait((*(v4 + 8) + 48 * v7), v8);
      }

      while (*(*(v4 + 16) + 4 * v7) - (v5 + *(v4 + 28)) < a3);
    }

    return pthread_mutex_unlock(v8);
  }

  return result;
}

uint64_t sub_277AF6430(uint64_t result, int a2, int a3, int a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (a4 - 1 <= a3)
  {
    v7 = v6 + a4 + *(result + 28);
  }

  else
  {
    v7 = a3;
    if (a3 % v6)
    {
      return result;
    }
  }

  pthread_mutex_lock((*result + (a2 << 6)));
  v9 = v5[1];
  v8 = v5[2];
  v10 = *(v8 + 4 * a2);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  *(v8 + 4 * a2) = v10;
  pthread_cond_signal((v9 + 48 * a2));
  v11 = (*v5 + (a2 << 6));

  return pthread_mutex_unlock(v11);
}

double sub_277AF64E0(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (a1[8] < 1)
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

      while (v4 < a1[8]);
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
      if (a1[8] < 1)
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

      while (v7 < a1[8]);
      v5 = *(a1 + 1);
      if (v5)
      {
LABEL_13:
        free(*(v5 - 8));
      }
    }

    v8 = *(a1 + 2);
    if (v8)
    {
      free(*(v8 - 8));
    }

    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

void sub_277AF65C4(uint64_t a1)
{
  v10 = a1 + 634424;
  v11 = *(a1 + 634424);
  if (v11 >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 634428);
    v4 = 21280;
    do
    {
      if (v3 >= 1)
      {
        v5 = v4;
        v6 = v3;
        do
        {
          v7 = *(a1 + 463544);
          sub_277AF64E0((v7 + v5 + 2488));
          if (*(a1 + 271168))
          {
            v8 = *(v7 + v5);
            if (v8)
            {
              free(*(v8 - 8));
            }

            *(v7 + v5) = 0;
          }

          v5 += 23824;
          --v6;
        }

        while (v6);
      }

      ++v2;
      v4 += 23824 * v3;
    }

    while (v2 != v11);
  }

  v9 = *(v10 + 272);
  if (v9)
  {
    free(*(v9 - 8));
  }

  *(v10 + 272) = 0;
  *(v10 + 8) = 0;
  *(v10 + 280) = 0;
}

uint64_t sub_277AF66D0(uint64_t a1, int a2)
{
  v4 = a1 + 634712;
  v5 = a1 + 270312;
  v6 = a1 + 245664;
  result = setjmp((*(a1 + 245664) + 212));
  if (result)
  {
    v8 = *v6;
    *(v8 + 208) = 0;
    result = sub_2779F5C78(*a1 + 51032, v8);
  }

  *(*v6 + 208) = 1;
  if (!a2 && *(v5 + 1897) != 1)
  {
    goto LABEL_20;
  }

  if (!*v4)
  {
    v9 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
    if (v9)
    {
      v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v10 - 8) = v9;
      *v4 = v10;
      result = v10;
      if (v10)
      {
LABEL_11:
        result = pthread_mutex_init(result, 0);
        goto LABEL_12;
      }
    }

    else
    {
      *v4 = 0;
    }

    sub_2779F5C10(*v6, 2, "Failed to allocate enc_row_mt->mutex_");
    result = *v4;
    if (!*v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (*(v4 + 8))
  {
    goto LABEL_19;
  }

  v11 = malloc_type_malloc(0x47uLL, 0x5F484EBFuLL);
  if (!v11)
  {
    *(v4 + 8) = 0;
    goto LABEL_17;
  }

  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 - 8) = v11;
  *(v4 + 8) = v12;
  result = v12;
  if (!v12)
  {
LABEL_17:
    sub_2779F5C10(*v6, 2, "Failed to allocate enc_row_mt->cond_");
    result = *(v4 + 8);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  result = pthread_cond_init(result, 0);
LABEL_19:
  if (a2)
  {
    goto LABEL_74;
  }

LABEL_20:
  v13 = (a1 + 643344);
  if (*(a1 + 643344))
  {
    goto LABEL_27;
  }

  v14 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v14)
  {
    *v13 = 0;
    goto LABEL_25;
  }

  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v15 - 8) = v14;
  *v13 = v15;
  result = v15;
  if (!v15)
  {
LABEL_25:
    sub_2779F5C10(*v6, 2, "Failed to allocate gm_sync->mutex_");
    result = *v13;
    if (!*v13)
    {
      goto LABEL_27;
    }
  }

  result = pthread_mutex_init(result, 0);
LABEL_27:
  if (*(a1 + 643360))
  {
    goto LABEL_34;
  }

  v16 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v16)
  {
    *(a1 + 643360) = 0;
    goto LABEL_32;
  }

  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v17 - 8) = v16;
  *(a1 + 643360) = v17;
  result = v17;
  if (!v17)
  {
LABEL_32:
    sub_2779F5C10(*v6, 2, "Failed to allocate tf_sync->mutex_");
    result = *(a1 + 643360);
    if (!result)
    {
      goto LABEL_34;
    }
  }

  result = pthread_mutex_init(result, 0);
LABEL_34:
  if (*(a1 + 643376))
  {
    goto LABEL_41;
  }

  v18 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v18)
  {
    *(a1 + 643376) = 0;
    goto LABEL_39;
  }

  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = v18;
  *(a1 + 643376) = v19;
  result = v19;
  if (!v19)
  {
LABEL_39:
    sub_2779F5C10(*v6, 2, "Failed to allocate cdef_sync->mutex_");
    result = *(a1 + 643376);
    if (!result)
    {
      goto LABEL_41;
    }
  }

  result = pthread_mutex_init(result, 0);
LABEL_41:
  v20 = ((*(v6 + 12) >> 2) + 31) >> 5;
  v21 = *a1 + 73728;
  v22 = 1336;
  if (*(*a1 + 75084) > 1)
  {
    v22 = 1312;
  }

  v23 = *(v21 + v22);
  if (!*(v4 + 168) || v20 != *(v4 + 172) || v23 > *(v4 + 184))
  {
    sub_2779CE694(a1 + 634808);
    result = sub_2779CE28C(a1 + 634808, a1 + 245616, v20, *(v6 + 8), v23);
  }

  if (!*(v4 + 72))
  {
    v24 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
    if (v24)
    {
      v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v25 - 8) = v24;
      *(v4 + 72) = v25;
      result = v25;
      if (v25)
      {
LABEL_53:
        result = pthread_mutex_init(result, 0);
        goto LABEL_54;
      }
    }

    else
    {
      *(v4 + 72) = 0;
    }

    sub_2779F5C10(*v6, 2, "Failed to allocate tpl_row_mt->mutex_");
    result = *(v4 + 72);
    if (result)
    {
      goto LABEL_53;
    }
  }

LABEL_54:
  if (*(*v5 + 68) && (*(v6 + 452) & 1) == 0 && !*(v5 + 604))
  {
    if ((*(v6 + 12) + (*(a1 + 396328) >> 1)) / *(a1 + 396328) <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = (*(v6 + 12) + (*(a1 + 396328) >> 1)) / *(a1 + 396328);
    }

    v27 = 1348;
    if (*(v21 + 1356) > 1)
    {
      v27 = 1312;
    }

    v28 = *(v21 + v27);
    if (!*(v4 + 296) || v26 > *(v4 + 300) || v28 > *(v4 + 308) || *(v4 + 304) <= 2)
    {
      sub_2779D1E04(a1 + 634936);
      result = sub_2779D19B4(a1 + 634936, a1 + 245616, v28, v26, 3u);
    }
  }

  if (!*(v4 + 352))
  {
    v29 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
    if (v29)
    {
      v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v30 - 8) = v29;
      *(v4 + 352) = v30;
      result = v30;
      if (v30)
      {
LABEL_73:
        result = pthread_mutex_init(result, 0);
        goto LABEL_74;
      }
    }

    else
    {
      *(v4 + 352) = 0;
    }

    sub_2779F5C10(*v6, 2, "Failed to allocate pack_bs_sync->mutex_");
    result = *(v4 + 352);
    if (result)
    {
      goto LABEL_73;
    }
  }

LABEL_74:
  *(*v6 + 208) = 0;
  return result;
}

uint64_t sub_277AF6B80(uint64_t result, int a2)
{
  v2 = result + 75040;
  v3 = *(result + 75040);
  v4 = (result + 75060);
  if (*(result + 75084) > 1)
  {
    v4 = (result + 75040);
  }

  v62 = *v4;
  if (v3 < 1)
  {
    goto LABEL_145;
  }

  v5 = a2;
  v6 = result;
  v63 = (result + 49100);
  v64 = result + 75040;
  do
  {
    v7 = v3--;
    v8 = *(v2 + 64) + 456 * v3;
    if (!v3)
    {
      goto LABEL_6;
    }

    v11 = malloc_type_malloc(0x26E77uLL, 0x5F484EBFuLL);
    if (!v11 || (v12 = ((v11 + 39) & 0xFFFFFFFFFFFFFFE0), *(v12 - 1) = v11, !v12))
    {
      sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td");
      v12 = 0;
    }

    bzero(v12, 0x26E50uLL);
    *(v8 + 8) = v12;
    *(v8 + 16) = v12;
    sub_2779C9490(v6 + 49072, (v12 + 19338), (v6 + 51032));
    result = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
    v69 = v12 + 19337;
    if (result)
    {
      v13 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v13 - 8) = result;
      v12[19363] = v13;
      if (v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12[19363] = 0;
    }

    result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->tmp_conv_dst");
LABEL_24:
    if (v7 <= *(v2 + 4))
    {
      result = sub_2779C96A8(*(v6 + 352), 6, (v12 + 19338));
      v12[19375] = result;
      if (!result)
      {
        result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate PICK_MODE_CONTEXT");
      }
    }

    if (v5 || v7 > v62)
    {
      goto LABEL_6;
    }

    v67 = v8;
    v68 = v3;
    if (sub_2779C9F18(*(v6 + 352), v12))
    {
      sub_2779F5C10(v6 + 51032, 2, "Failed to allocate SMS tree");
    }

    v14 = 0;
    v66 = v12 + 19910;
    v15 = 1;
    do
    {
      v16 = 0;
      v17 = v15;
      v18 = 1;
      do
      {
        v19 = v18;
        v20 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
        v21 = &v12[2 * v14 + 19349];
        if (v20)
        {
          v22 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v22 - 8) = v20;
          *(v21 + 8 * v16) = v22;
          if (v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          *(v21 + 8 * v16) = 0;
        }

        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->hash_value_buffer[x][y]");
LABEL_38:
        v18 = 0;
        v16 = 1;
      }

      while ((v19 & 1) != 0);
      v15 = 0;
      v14 = 1;
    }

    while ((v17 & 1) != 0);
    v23 = malloc_type_malloc(0xD7uLL, 0x5F484EBFuLL);
    if (v23 && (v24 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF0), *(v24 - 1) = v23, v24))
    {
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *v24 = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      v25 = v12 + 19337;
      *v69 = v24;
    }

    else
    {
      v25 = v12 + 19337;
      *v69 = 0;
      sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->counts");
    }

    v2 = v64;
    v3 = v68;
    result = malloc_type_malloc(0x5017uLL, 0x5F484EBFuLL);
    if (!result)
    {
      v25[20] = 0;
      v5 = a2;
      v8 = v67;
      goto LABEL_48;
    }

    v26 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v26 - 8) = result;
    v25[20] = v26;
    v5 = a2;
    v8 = v67;
    if (!v26)
    {
LABEL_48:
      result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->palette_buffer");
    }

    v27 = *(v6 + 352);
    if (*(v27 + 271184))
    {
      v28 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
      if (!v28)
      {
        v30 = v12 + 19337;
        v12[19353] = 0;
        goto LABEL_63;
      }

      v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v29 - 8) = v28;
      v30 = v12 + 19337;
      v12[19353] = v29;
      if (!v29)
      {
LABEL_63:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->wsrc");
      }

      v33 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
      if (!v33)
      {
        v30[17] = 0;
        goto LABEL_68;
      }

      v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v34 - 8) = v33;
      v30[17] = v34;
      if (!v34)
      {
LABEL_68:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->mask");
      }

      v35 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
      if (!v35)
      {
        v30[18] = 0;
        goto LABEL_73;
      }

      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v36 - 8) = v35;
      v30[18] = v36;
      if (!v36)
      {
LABEL_73:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->above_pred");
      }

      v37 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
      if (!v37)
      {
        v30[19] = 0;
        goto LABEL_78;
      }

      v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v38 - 8) = v37;
      v30[19] = v38;
      if (!v38)
      {
LABEL_78:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->left_pred");
      }

      v39 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (!v39)
      {
        v30[21] = 0;
        goto LABEL_83;
      }

      v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v40 - 8) = v39;
      v30[21] = v40;
      if (!v40)
      {
LABEL_83:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->pred0");
      }

      v41 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (!v41)
      {
        v30[22] = 0;
        goto LABEL_88;
      }

      v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v42 - 8) = v41;
      v30[22] = v42;
      if (!v42)
      {
LABEL_88:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->pred1");
      }

      v43 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
      if (!v43)
      {
        v30[23] = 0;
        goto LABEL_93;
      }

      v44 = (v43 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v44 - 8) = v43;
      v30[23] = v44;
      if (!v44)
      {
LABEL_93:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->residual1");
      }

      v45 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
      if (!v45)
      {
        v30[24] = 0;
        goto LABEL_98;
      }

      v46 = (v45 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v46 - 8) = v45;
      v30[24] = v46;
      if (!v46)
      {
LABEL_98:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->diff10");
      }

      v47 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (!v47)
      {
        v30[25] = 0;
        goto LABEL_103;
      }

      v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v48 - 8) = v47;
      v30[25] = v48;
      if (!v48)
      {
LABEL_103:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->tmp_best_mask_buf");
      }

      v49 = 0;
      v50 = v12 + 19365;
      v51 = 1;
      while (2)
      {
        v52 = v51;
        result = malloc_type_malloc(0x18027uLL, 0x5F484EBFuLL);
        if (result)
        {
          v53 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
          *(v53 - 8) = result;
          v50[v49] = v53;
          if (!v53)
          {
LABEL_109:
            result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->tmp_pred_bufs[j]");
          }

          v51 = 0;
          v49 = 1;
          if ((v52 & 1) == 0)
          {
            v27 = *(v6 + 352);
            v8 = v67;
            v3 = v68;
            goto LABEL_112;
          }

          continue;
        }

        break;
      }

      v50[v49] = 0;
      goto LABEL_109;
    }

LABEL_112:
    if ((*(v27 + 245616) & 0xFD) == 0)
    {
      v54 = v27 + 395528;
      if (!*(v54 + 856) && !*v54 && (*(v54 + 568) || *(v54 + 572)))
      {
        result = malloc_type_malloc((2uLL >> v63[49] << 16) | 0x17, 0x5F484EBFuLL);
        if (!result)
        {
          *v66 = 0;
          goto LABEL_125;
        }

        v55 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v55 - 8) = result;
        *v66 = v55;
        if (!v55)
        {
LABEL_125:
          result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->pixel_gradient_info");
        }
      }
    }

    v56 = *(v6 + 352);
    v57 = (v56 + 270312);
    if (*(v56 + 272208) == 2)
    {
      v58 = v56 + 395528;
      if (!*v58 || v57[457] * -0.25 + 1.0 > 0.0 && (!*(v58 + 856) || *(v58 + 904)))
      {
        result = malloc_type_malloc(16 * byte_277C3F990[*(*v57 + 28)] * byte_277C36D60[*(*v57 + 28)] + 23, 0x5F484EBFuLL);
        if (!result)
        {
          v12[19911] = 0;
          goto LABEL_135;
        }

        v59 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v59 - 8) = result;
        v12[19911] = v59;
        if (!v59)
        {
LABEL_135:
          result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->src_var_info_of_4x4_sub_blocks");
        }
      }
    }

    if (*(*(v6 + 352) + 395528) == 2)
    {
      if (*v63 == 12)
      {
        v60 = 43687;
      }

      else
      {
        v60 = 174679;
      }

      result = malloc_type_malloc(v60, 0x5F484EBFuLL);
      if (!result)
      {
        v12[19373] = 0;
        goto LABEL_144;
      }

      v61 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v61 - 8) = result;
      v12[19373] = v61;
      if (!v61)
      {
LABEL_144:
        result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->vt64x64");
      }
    }

LABEL_6:
    if (v5)
    {
      continue;
    }

    if (*(*(v6 + 352) + 272209) != 1 || v7 > v62)
    {
      continue;
    }

    if (!v3)
    {
      if (*(v6 + 328) >= 1)
      {
        v31 = 0;
        do
        {
          result = malloc_type_malloc(0x5313uLL, 0x5F484EBFuLL);
          if (result)
          {
            v32 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v32 - 8) = result;
          }

          else
          {
            v32 = 0;
          }

          *(*(v6 + 8 * v31) + 241040) = v32;
          if (!*(*(v6 + 8 * v31) + 241040))
          {
            result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate ppi->parallel_cpi[j]->td.tctx");
          }

          ++v31;
        }

        while (v31 < *(v6 + 328));
        continue;
      }

      break;
    }

    result = malloc_type_malloc(0x5313uLL, 0x5F484EBFuLL);
    if (result)
    {
      v10 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v10 - 8) = result;
      *(*(v8 + 8) + 154976) = v10;
      if (v10)
      {
        continue;
      }
    }

    else
    {
      *(*(v8 + 8) + 154976) = 0;
    }

    result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate thread_data->td->tctx");
  }

  while (v7 > 1);
LABEL_145:
  *(v2 + 116) = v62;
  return result;
}

pthread_mutex_t *sub_277AF74F0(uint64_t a1, unsigned int a2)
{
  v3 = a1 + 73728;
  v4 = a2;
  if (a2 <= 0x9249248 && (v5 = malloc_type_malloc(56 * a2 + 23, 0x5F484EBFuLL)) != 0)
  {
    v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v6 - 8) = v5;
    *(v3 + 1368) = v6;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v3 + 1368) = 0;
  }

  sub_2779F5C10(a1 + 51032, 2, "Failed to allocate p_mt_info->workers");
LABEL_7:
  v7 = sub_2779724A8(v4, 0x1C8uLL);
  *(v3 + 1376) = v7;
  if (!v7)
  {
    sub_2779F5C10(a1 + 51032, 2, "Failed to allocate p_mt_info->tile_thr_data");
  }

  v8 = 0;
  v9 = 0;
  v10 = 448;
  do
  {
    v11 = *(v3 + 1368) + v8;
    v12 = *(v3 + 1376);
    *(v11 + 48) = 0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *v11 = 0u;
    *(v11 + 16) = "aom enc worker";
    v13 = (v12 + v10);
    *v13 = v9;
    v13[1] = v9;
    if (v9)
    {
      if (!sub_277985F5C(v11))
      {
        sub_2779F5C10(a1 + 51032, 1, "Tile encoder thread creation failed");
      }
    }

    result = sub_277985E48(v11, 1);
    ++*(v3 + 1312);
    ++v9;
    v10 += 456;
    v8 += 56;
  }

  while (v4 != v9);
  return result;
}

void sub_277AF7658(uint64_t a1)
{
  v1 = a1 + 73728;
  if (*(a1 + 75040) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_277985DDC((*(v1 + 1368) + v2));
      ++v3;
      v2 += 56;
    }

    while (v3 < *(v1 + 1312));
  }
}

uint64_t sub_277AF76B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 188) - 1) >= 2 && !*(a1 + 51016) && (*(a2 + 864) & 1) == 0 && (*(a2 + 946) & 1) == 0 && !*(a2 + 1104) && (*(a2 + 290) & 1) == 0 && !*(a2 + 232) && *(a2 + 1076) == 2 && *(a2 + 1032) >= 2 && (*(a2 + 1106))
  {
    return 1;
  }

  v4 = *(a1 + 328);
  if (v4 < 2)
  {
    return 0;
  }

  v5 = v4 - 1;
  v6 = (a1 + 8);
  do
  {
    v7 = *v6;
    v8 = *(*v6 + 245848);
    if (v8)
    {
      --*v8;
      *(v7 + 245848) = 0;
    }

    ++v6;
    --v5;
  }

  while (v5);
  v9 = *(*(a1 + 352) + 463456);
  v10 = (*(a1 + 6664) - v9) & ~((*(a1 + 6664) - v9) >> 31);
  v11 = a1 + 4 * v9;
  bzero((v11 + 12668), 4 * v10);
  bzero((a1 + 13668 + v9), v10);
  bzero((v11 + 6668), 4 * v10);
  memset((a1 + 32 * v9 + 14168), 255, 32 * v10);
  memset((v11 + 22168), 255, 4 * v10);
  result = 0;
  *(a1 + 328) = 1;
  return result;
}

uint64_t sub_277AF782C(uint64_t a1, _DWORD *a2)
{
  *(a1 + 75084) = 0;
  if (!sub_277AF76B4(a1, a2))
  {
    return 1;
  }

  v4 = *(a1 + 352);
  v5 = (v4 + 246148);
  v6 = *(v4 + 270312);
  LOBYTE(v4) = *(v6 + 36);
  v7 = ~(-1 << v4);
  v8 = (*v5 + v7) >> v4;
  v9 = (((v5[1] + v7) >> v4) + 1) >> 1;
  if (v9 >= v8)
  {
    v9 = v8;
  }

  v10 = a2[6];
  if (v10 >= a2[7])
  {
    v10 = a2[7];
  }

  v12 = v10 > 480 && *(v6 + 28) == 12;
  v13 = (v9 + dword_277BB6FD8[v12]) / dword_277BB6FE0[v12];
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = a2[258];
  v16 = v15 / v14;
  if ((a2[84] > 0 || a2[85] >= 1) && v16 < 4)
  {
    v16 = 1;
  }

  if (v16 >= 4)
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    v16 = 1;
  }

  v17 = *(a1 + 328);
  if (v16 >= v17)
  {
    v18 = *(a1 + 328);
  }

  else
  {
    v18 = v16;
  }

  if (v17 == 1)
  {
    result = v16;
  }

  else
  {
    result = v18;
  }

  if (result > 1)
  {
    v20 = result * v9;
    if (v20 >= v15)
    {
      v20 = a2[258];
    }

    *(a1 + 75084) = v20;
  }

  return result;
}

void sub_277AF7970(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a1 + 73728;
  v36 = 0;
  v35 = 0;
  v31 = *(a1 + 75040);
  if (v31 > 0)
  {
    v4 = (a1 + 75112);
    v30 = a1 + 75120;
    v5 = a1 + 75044;
    v29 = a1 + 32;
    do
    {
      v6 = (*(v32 + 1368) + 56 * v35);
      *(v30 + 8 * v36) = v6;
      v7 = *(a1 + 8 * v36);
      v8 = *(v7 + 245664);
      if (setjmp((v8 + 212)))
      {
        *(v8 + 208) = 0;
        if (v35 >= 1)
        {
          v9 = 0;
          for (i = 0; i < v35; i += *(v11 + 634344))
          {
            v11 = *(a1 + 8 * v9);
            v12 = *(v11 + 270312);
            if (*v4)
            {
              v13 = *(v12 + 77);
              *(*(v11 + 643408) + 40) = *(v11 + 643416);
              v14 = 0;
              do
              {
                v15 = v14;
                *(*(v11 + 643408) + 8 * v14 + 16) = *(v11 + 643424 + 8 * v14);
                if (v13)
                {
                  break;
                }

                ++v14;
              }

              while (v15 < 2);
              v12 = *(v11 + 270312);
            }

            if (*(v12 + 68) && (*(v11 + 246116) & 1) == 0 && !*(v11 + 270916))
            {
              *(*(v11 + 635032) + 432 * (i + *(v11 + 634344) - 1)) = *(v11 + 643448);
            }

            ++v9;
          }
        }

        sub_2779F5C78(a1 + 51032, v8);
      }

      *(v8 + 208) = 1;
      *(v7 + 634400) = *(v32 + 1368) + 56 * v35;
      *(v7 + 634408) = *(v32 + 1376) + 456 * v35;
      v16 = (v31 - v35) / (a3 - v36);
      *(v7 + 634344) = v16;
      for (j = 0; j != 48; j += 4)
      {
        v18 = *(v5 + j);
        if (v16 < v18)
        {
          v18 = (v31 - v35) / (a3 - v36);
        }

        *(v7 + 634348 + j) = v18;
      }

      if (*v4)
      {
        v19 = *v4 + 488 * v35;
        v20 = *(v19 + 40);
        *(v7 + 643408) = v19;
        *(v7 + 643416) = v20;
        v21 = *(v7 + 270312);
        v22 = *(v21 + 77);
        v23 = v19 + 16;
        v24 = 0;
        do
        {
          v25 = v24;
          *(v7 + 643424 + 8 * v24) = *(v23 + 8 * v24);
          if (v22)
          {
            break;
          }

          ++v24;
        }

        while (v25 < 2);
      }

      else
      {
        v21 = *(v7 + 270312);
      }

      if (*(v21 + 68) && (*(v7 + 246116) & 1) == 0 && !*(v7 + 270916))
      {
        v26 = *(v7 + 635032);
        v27 = 432 * (v35 + v16 - 1);
        *(v7 + 643448) = *(v26 + v27);
        *(v26 + v27) = *(v7 + 268864);
      }

      v35 += v16;
      sub_277A82424(v7 + 245616, v4, v7 + 643376, *(v32 + 1312), 0);
      v6[3] = sub_277AF7DAC;
      v6[4] = v7;
      v28 = a2;
      if (v36)
      {
        v28 = v29 + 72 * v36 - 72;
      }

      v6[5] = v28;
      ++v36;
      *(v8 + 208) = 0;
    }

    while (v35 < v31);
  }

  *(v32 + 1424) = a3;
}

uint64_t sub_277AF7DCC(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    v4 = (result + 395960);
    v5 = (result + 270312);
    v6 = result + 245616;
    v7 = (result + 86064);
    v8 = result + 212616;
    v66 = (result + 245376);
    v67 = (result + 634400);
    v9 = a3;
    v64 = (result + 270312);
    v65 = (result + 395960);
    v63 = result + 245616;
    v61 = (result + 133624);
    v62 = (result + 86064);
    while (1)
    {
      v10 = v7;
      v70 = v9;
      v12 = v9 - 1;
      v11 = v9 == 1;
      v13 = (*v67 + 56 * (v9 - 1));
      v14 = v67[1] + 456 * v12;
      v13[3] = a2;
      v13[4] = v14;
      v13[5] = 0;
      *(v14 + 452) = v12;
      v69 = v12;
      *(v14 + 448) = v12;
      *v14 = v3;
      if (!v11)
      {
        v10 = *(v14 + 16);
      }

      *(v14 + 8) = v10;
      *(v10 + 19368) = 0;
      *(v10 + 19364) = 0;
      *(v10 + 154680) = 0u;
      if (v10 == v7)
      {
        goto LABEL_28;
      }

      memcpy(v10, v7, 0x256A0uLL);
      v15 = v3;
      memcpy((*(v14 + 8) + 153264), (v3 + 239328), 0x598uLL);
      v16 = 0;
      v17 = *(v14 + 8);
      v18 = *(v17 + 154824);
      v17[1051] = *(v17 + 154840);
      v17[1050] = v18;
      v19 = 1;
      do
      {
        v20 = 0;
        v21 = v19;
        v22 = 1;
        do
        {
          v23 = v22;
          memcpy(*(*(v14 + 8) + 16 * v16 + 8 * v20 + 154792), *(v8 + 16 * v16 + 8 * v20), 0x4000uLL);
          v22 = 0;
          v24 = *(v14 + 8) + 16 * v16 + 8 * v20;
          *(v24 + 126552) = *(v24 + 154792);
          v20 = 1;
        }

        while ((v23 & 1) != 0);
        v19 = 0;
        v16 = 1;
      }

      while ((v21 & 1) != 0);
      v5 = v64;
      v4 = v65;
      v3 = v15;
      v6 = v63;
      if (*v65)
      {
        break;
      }

LABEL_17:
      v10 = *(v14 + 8);
      if (!v65[42])
      {
        v7 = v62;
        goto LABEL_28;
      }

      *(v10 + 5946) = 0;
      v7 = v62;
      if (v65[106])
      {
        goto LABEL_29;
      }

      if ((*v63 & 0xFD) == 0 && *(v63 + 495) == 1 && *(v63 + 496) && v64[467] != 1 && *(v3 + 644192) != 1)
      {
        v29 = malloc_type_malloc(0x4002FuLL, 0x5F484EBFuLL);
        if (v29)
        {
          v30 = v29;
          v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(v31 - 1) = v30;
          v32 = *(v14 + 8);
          *(v32 + 153256) = v31;
          if (!v31)
          {
LABEL_68:
            sub_2779F5C10(*(v63 + 48), 2, "Failed to allocate thread_data->td->dv_costs_alloc", v61);
            v32 = *(v14 + 8);
            v31 = *(v32 + 153256);
          }

          *(v32 + 47568) = v31;
          memcpy(v31, v61[1], 0x40018uLL);
          v10 = *(v14 + 8);
          goto LABEL_28;
        }

        *(*(v14 + 8) + 153256) = 0;
        goto LABEL_68;
      }

LABEL_28:
      if (v4[106])
      {
        goto LABEL_29;
      }

      if (v4[74])
      {
        v38 = malloc_type_malloc(0x625FuLL, 0x5F484EBFuLL);
        if (v38)
        {
          v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v39 - 8) = v38;
          *(v10 + 19138) = v39;
          if (v39)
          {
            goto LABEL_61;
          }
        }

        else
        {
          *(v10 + 19138) = 0;
        }

        sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->txfm_search_info.mb_rd_record", v61);
      }

LABEL_61:
      if ((*v6 & 0xFD) == 0)
      {
        goto LABEL_29;
      }

      v59 = malloc_type_malloc(0x5301FuLL, 0x5F484EBFuLL);
      if (v59)
      {
        v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v60 - 8) = v59;
        *(v10 + 14536) = v60;
        if (v60)
        {
          goto LABEL_29;
        }
      }

      else
      {
        *(v10 + 14536) = 0;
      }

      sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->inter_modes_info", v61);
LABEL_29:
      sub_277A55DE8(v6, v10);
      v33 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (v33)
      {
        v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v34 - 8) = v33;
        *(v10 + 1398) = v34;
        if (v34)
        {
          goto LABEL_34;
        }
      }

      else
      {
        *(v10 + 1398) = 0;
      }

      sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->e_mbd.seg_mask", v61);
LABEL_34:
      if (v5[467] != 1 && *(v3 + 644192) != 1 && (!v4[106] || v4[118]) && *(v4 + 320))
      {
        v35 = 16624 * dword_277C31748[*(v4 + 320)];
        if (v35 > 0x1FFFFFFE9 || (v36 = malloc_type_malloc(v35 + 23, 0x5F484EBFuLL)) == 0)
        {
          *(v10 + 14534) = 0;
LABEL_48:
          sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->winner_mode_stats", v61);
          goto LABEL_49;
        }

        v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v37 - 8) = v36;
        *(v10 + 14534) = v37;
        if (!v37)
        {
          goto LABEL_48;
        }
      }

LABEL_49:
      v40 = 4 * (1 << byte_277C3BCB6[*(*v5 + 28)]);
      if (v40 <= 0x1FFFFFFD9 && (result = malloc_type_malloc(v40 + 39, 0x5F484EBFuLL)) != 0)
      {
        v41 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v41 - 8) = result;
        *(v10 + 19143) = v41;
        if (v41)
        {
          goto LABEL_55;
        }
      }

      else
      {
        *(v10 + 19143) = 0;
      }

      result = sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->dqcoeff_buf", v61);
LABEL_55:
      v42 = *(v14 + 8);
      v43 = v42 + 153224;
      v42 += 86580;
      *v42 = 0;
      *(v42 + 8) = 0;
      *v43 = 0;
      v44 = *(v43 + 1472);
      if (v44 != v66)
      {
        v45 = *v66;
        v46 = v66[1];
        v47 = v66[3];
        v44[2] = v66[2];
        v44[3] = v47;
        *v44 = v45;
        v44[1] = v46;
        v48 = v66[4];
        v49 = v66[5];
        v50 = v66[7];
        v44[6] = v66[6];
        v44[7] = v50;
        v44[4] = v48;
        v44[5] = v49;
        v51 = v66[8];
        v52 = v66[9];
        v53 = v66[11];
        v44[10] = v66[10];
        v44[11] = v53;
        v44[8] = v51;
        v44[9] = v52;
      }

      if (v70 == 1)
      {
        return result;
      }

      v54 = *(v14 + 8);
      *(v54 + 16832) = *(v54 + 154856);
      v55 = *(v54 + 154880);
      *(v54 + 16840) = *(v54 + 154864);
      *(v54 + 16856) = v55;
      *(v54 + 16872) = *(v54 + 154896);
      v56 = *(v14 + 8);
      v56[2110] = v56[19363];
      v56[2111] = v56[19365];
      *(*(v14 + 8) + 16896) = *(*(v14 + 8) + 154928);
      v57 = *(v14 + 8);
      v58 = *(v57 + 159288);
      *(v57 + 128696) = *(v57 + 159280);
      *(v57 + 153216) = v58;
      *(v57 + 15448) = *(v57 + 16880);
      *(*(v14 + 8) + 15464) = *(*(v14 + 8) + 16896);
      v9 = v69;
    }

    v25 = malloc_type_malloc(0x8003FuLL, 0x5F484EBFuLL);
    if (v25)
    {
      v26 = v25;
      v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v27 - 1) = v26;
      v28 = *(v14 + 8);
      *(v28 + 153248) = v27;
      if (v27)
      {
LABEL_16:
        *(v28 + 47560) = v27;
        memcpy(v27, *v61, 0x80028uLL);
        goto LABEL_17;
      }
    }

    else
    {
      *(*(v14 + 8) + 153248) = 0;
    }

    sub_2779F5C10(*(v63 + 48), 2, "Failed to allocate thread_data->td->mv_costs_alloc", v61);
    v28 = *(v14 + 8);
    v27 = *(v28 + 153248);
    goto LABEL_16;
  }

  return result;
}

void sub_277AF84BC(int8x8_t *a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = &a1[80434] + 1;
    v35 = a1 + 33789;
    v36 = a1 + 49409;
    v3 = a1 + 29897;
    v4 = a1 + 30672;
    v32 = a1 + 29917;
    v33 = a1 + 10758;
    v31 = &a1[30069] + 1;
    for (i = a2; ; --i)
    {
      v6 = *(*&a1[79300] + 56 * i - 24);
      v7 = *(v6 + 8);
      *v2 |= *(v7 + 154944);
      v2[68] |= *(v7 + 154948);
      if ((a1[30702].i8[0] & 0xFD) != 0)
      {
        if (v35[127].i8[0] == 3)
        {
          *(*&a1[57929] + 28) = vadd_s32(*(*&a1[57929] + 28), *(v7 + 86580));
        }

        v36->i32[0] += *(v7 + 86588);
      }

      v2[327] += *(v7 + 153224);
      if (v7 != v33)
      {
        if (v36[86].i32[0])
        {
          v8 = *(v7 + 153248);
          if (v8)
          {
            free(*(v8 - 8));
            v7 = *(v6 + 8);
          }

          *(v7 + 153248) = 0;
        }

        if (v36[107].i32[0])
        {
          v9 = *(v7 + 153256);
          if (v9)
          {
            free(*(v9 - 8));
            v7 = *(v6 + 8);
          }

          *(v7 + 153256) = 0;
        }
      }

      v10 = *(*v35 + 77);
      v11 = *(v7 + 153104);
      if (v11)
      {
        free(*(v11 - 8));
      }

      v12 = (v7 + 116272);
      *(v7 + 153104) = 0;
      v13 = *(v7 + 116288);
      if (v13)
      {
        free(*(v13 - 8));
      }

      *(v7 + 116288) = 0;
      v14 = v10 ? 1 : 3;
      v15 = v7;
      do
      {
        if (*v15)
        {
          free(*(*v15 - 8));
        }

        *v15 = 0;
        v15 += 17;
        --v14;
      }

      while (v14);
      v16 = *(v7 + 11184);
      if (v16)
      {
        free(*(v16 - 8));
      }

      *(v7 + 11184) = 0;
      if (*v12)
      {
        free(*(*v12 - 8));
      }

      *v12 = 0;
      v17 = *(v7 + 153144);
      if (v17)
      {
        free(*(v17 - 8));
      }

      *(v7 + 153144) = 0;
      if (i == 1)
      {
        break;
      }

      v18 = 0;
      v19 = *(v6 + 8);
      v20 = v19 + 18944;
      v21 = v19[19337];
      do
      {
        v4->i32[v18] += *(*&v21 + v18 * 4);
        ++v18;
      }

      while (v18 != 48);
      v22 = 0;
      v3[19] = vorr_s8(v3[19], v19[19158]);
      v23 = v19 + 19159;
      v24 = v32;
      do
      {
        for (j = 0; j != 16; ++j)
        {
          v24->i32[j] += v23->i32[j];
        }

        ++v22;
        v24 += 8;
        v23 += 8;
      }

      while (v22 != 19);
      v26 = &v20[367] + 1;
      v27 = v31;
      v28 = 22;
      do
      {
        v29 = *v27;
        *(v27 - 1) += *(v26 - 1);
        v30 = *v26;
        v26 += 2;
        *v27 = v29 + v30;
        v27 += 2;
        --v28;
      }

      while (v28);
      v3[194].i32[0] += v20[389].i32[0];
      v3[194].i32[1] += v20[389].i32[1];
      *&v3[196] += *&v20[391];
      *&v3[197] += *&v20[392];
      v3[195].i32[0] += v20[390].i32[0];
      v3->i32[0] += v20[195].i32[0];
    }
  }
}

uint64_t sub_277AF8868(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (*a1 + 270312);
  v6 = *(*a1 + 270336);
  v5 = *(*a1 + 270340);
  *(v3 + 11152) = a1 + 24;
  if (setjmp((a1 + 236)))
  {
    result = 0;
  }

  else
  {
    *(a1 + 232) = 1;
    if (v2[49548].i32[0])
    {
      v8 = sub_2779C9BC8(*(*v4 + 28));
      *(*(a1 + 8) + 159296) = v9;
      if (!v9)
      {
        sub_2779F5C10(*(v3 + 11152), 2, "Failed to allocate PC_TREE", v8);
      }
    }

    else
    {
      *(*(a1 + 8) + 159296) = 0;
    }

    for (i = *(a1 + 448); i < v5 * v6; i = v2[79293].i32[0] + v11)
    {
      v11 = i;
      v12 = i / v6;
      v13 = i % v6;
      v14 = *(a1 + 8);
      v15 = *&v2[57943] + 23824 * (i % v6 + v4[6] * (i / v6)) + 32;
      *(v14 + 11064) = v15;
      *(v14 + 16776) = v15;
      sub_277A60FBC(v2, v14, v12, v13);
    }

    if (*(*v4 + 77))
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    sub_2779C9C3C(*(*(a1 + 8) + 159296), v16, 0, 0, v2[49441].u8[0]);
    *(*(a1 + 8) + 159296) = 0;
    result = 1;
  }

  *(a1 + 232) = 0;
  return result;
}

uint64_t sub_277AF8A04(uint64_t a1)
{
  v1 = *(a1 + 272136);
  if (v1 < 2)
  {
    return 1;
  }

  v3 = *(a1 + 270340);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = (a1 + 246148);
    v7 = a1 + 270656;
    do
    {
      if (*(a1 + 270336) <= 0)
      {
        ++v5;
      }

      else
      {
        v8 = *(*(a1 + 270312) + 36);
        v9 = *(v7 + 4 * v5++) << v8;
        v10 = *(v7 + 4 * v5) << v8;
        v11 = *(a1 + 644276);
        if (v10 >= *v6)
        {
          v10 = *v6;
        }

        v12 = (v10 + ~v9 + (1 << byte_277C3CFCC[v11])) >> byte_277C3CFCC[v11];
        v13 = byte_277C42228[v11];
        v14 = *(a1 + 270396);
        v15 = (a1 + 270400);
        v16 = *(a1 + 270336);
        do
        {
          v17 = v14 << v8;
          v18 = *v15++;
          v14 = v18;
          v19 = v18 << v8;
          if (v18 << v8 >= *(a1 + 246152))
          {
            v19 = *(a1 + 246152);
          }

          v20 = (((v19 + ~v17 + (1 << v13)) >> v13) + 1) >> 1;
          if (v20 >= v12)
          {
            v20 = v12;
          }

          v4 += v20;
          --v16;
        }

        while (v16);
      }
    }

    while (v5 != v3);
  }

  if (v1 >= v4)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_277AF8B44(uint64_t a1, int a2, int a3, int a4)
{
  v29 = a1 + 245664;
  v7 = *(a1 + 270340);
  v25 = *(a1 + 270336);
  v21 = a1 + 270312;
  v22 = a1 + 634432;
  sub_277AF65C4(a1);
  v24 = v7;
  if (v7 >= 1)
  {
    v8 = 0;
    if (a3 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a3;
    }

    v10 = v9 - 1;
    v27 = 21280;
    v28 = 21244 * (v9 - 1);
    while (1)
    {
      v26 = v8;
      if (v25 >= 1)
      {
        break;
      }

LABEL_16:
      v8 = v26 + 1;
      v27 += 23824 * v25;
      if (v26 + 1 == v24)
      {
        goto LABEL_17;
      }
    }

    v11 = v27;
    v12 = v25;
    while (1)
    {
      v13 = *(a1 + 463544);
      sub_277AF96C0(v13 + v11 + 2488, a1 + 245616, a2);
      if (a4)
      {
        if (v10 > 0x62B7A || (v14 = malloc_type_malloc(v28 + 23, 0x5F484EBFuLL)) == 0)
        {
          *(v13 + v11) = 0;
LABEL_14:
          sub_2779F5C10(*v29, 2, "Failed to allocate this_tile->row_ctx", v21);
          goto LABEL_15;
        }

        v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v15 - 8) = v14;
        *(v13 + v11) = v15;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      v11 += 23824;
      if (!--v12)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v16 = (*(v29 + 484) + (1 << *(*v21 + 36)) - 1) >> *(*v21 + 36);
  v17 = 4 * v16;
  if (v17 > 0x1FFFFFFE9 || (result = malloc_type_malloc(v17 + 23, 0x5F484EBFuLL)) == 0)
  {
    v20 = v22;
    *(v22 + 264) = 0;
LABEL_22:
    result = sub_2779F5C10(*v29, 2, "Failed to allocate enc_row_mt->num_tile_cols_done", v21);
    goto LABEL_23;
  }

  v19 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = result;
  v20 = v22;
  *(v22 + 264) = v19;
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_23:
  *v20 = a2;
  v20[1] = a3 - 1;
  v20[68] = v16;
  return result;
}

uint64_t sub_277AF8D6C(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1 + 634696;
  v5 = *(a1 + 452);
  v6 = *(*a1 + 634712);
  v7 = *(a1 + 432);
  *(v3 + 11152) = a1 + 24;
  v117 = v2 + 30702;
  v114 = v2;
  if (v2[80433].i32[0])
  {
    if (v2[33580].i32[0])
    {
      v8 = 1;
    }

    else
    {
      v8 = v2[33580].i32[1] != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v116 = v8;
  if (setjmp((a1 + 236)))
  {
    v111 = v7;
    *(v1 + 232) = 0;
    pthread_mutex_lock(v6);
    *(v4 + 12) = 1;
    pthread_cond_broadcast(*(v4 + 24));
    pthread_mutex_unlock(v6);
    v109 = v114 + 33789;
    v106 = v114[33792].u32[1];
    if (v106 >= 1)
    {
      v9 = *(*v109 + 32);
      v105 = v114[33792].u32[0];
      v104 = v114[33792].i32[0];
      v10 = 0;
      do
      {
        v103 = v10;
        if (v104 >= 1)
        {
          v11 = 0;
          v101 = v10 * v105;
          do
          {
            v12 = (*&v114[57943] + 23824 * v11 + 23824 * v101);
            v13 = *v12;
            if (*v12 < v12[1])
            {
              v14 = 0;
              v15 = ((v12[3] + (1 << *(*v109 + 36)) + ~v12[2]) >> *(*v109 + 36));
              do
              {
                v16 = v13;
                (*(v4 + 40))(v12 + 5942, v14, (v15 - 1), v15);
                v13 = v16 + v9;
                v14 = (v14 + 1);
              }

              while (v16 + v9 < v12[1]);
            }

            ++v11;
          }

          while (v11 != v105);
        }

        v10 = v103 + 1;
      }

      while (v103 + 1 != v106);
    }

    if (v116)
    {
      pthread_mutex_lock(*(v111 + 96));
      *(v111 + 120) = 1;
      pthread_mutex_unlock(*(v111 + 96));
      sub_2779D126C(v114[30768].u32[1], v114[30769].i32[0], v111, *(*v109 + 36));
    }

    return 0;
  }

  *(v1 + 232) = 1;
  v113 = *(*&v117[3087] + 36);
  v18 = v114[79305].i32[v5];
  if (v114[49548].i32[0])
  {
    v19 = sub_2779C9BC8(*(*&v117[3087] + 28));
    v20 = *(v1 + 8);
    v20[19912] = v21;
    if (!*&v21)
    {
      sub_2779F5C10(*(v3 + 11152), 2, "Failed to allocate PC_TREE", v19);
      v20 = *(v1 + 8);
    }
  }

  else
  {
    v22 = *(v1 + 8);
    v22[19912] = 0;
    v20 = v22;
  }

  v20[1383] = v117[3088];
  v23 = v18;
  v115 = v1;
  v112 = v6;
  while (1)
  {
    pthread_mutex_lock(v6);
    if (*(v4 + 12))
    {
      pthread_mutex_unlock(v6);
      goto LABEL_87;
    }

    v24 = v114[57943];
    v25 = *&v24 + 23824 * v23;
    v26 = v117;
    v27 = *(v25 + 4);
    v28 = (v25 + 23804);
    if (*v28 < v27)
    {
      v29 = v28;
      v30 = *v28;
      v31 = v29;
      v32 = v23;
      goto LABEL_54;
    }

    v26 = v117;
    v33 = v117[3090].u32[1];
    if (v33 < 1)
    {
      break;
    }

    v34 = v114[57943];
    v35 = v117[3090].i32[0];
    v36 = (*&v24 + 23808);
    v37 = 23824 * v35;
    v38 = 0x7FFFFFFFLL;
    v39 = 0xFFFFFFFFLL;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    do
    {
      if (v35 < 1)
      {
        v63 = v38;
        v62 = v39;
      }

      else
      {
        v43 = *(*&v117[3087] + 36);
        v44 = 1 << v43;
        v45 = v34;
        v46 = v36;
        v47 = v41;
        v48 = v117[3090].u32[0];
        v49 = v40;
        v50 = v38;
        do
        {
          v51 = v39;
          v52 = v48;
          v53 = v47;
          v54 = v46;
          v55 = v45[1];
          v56 = (((v45[3] + v44 + ~v45[2]) >> v43) + 1) >> 1;
          if (v56 >= (v55 + v44 + ~*v45) >> v43)
          {
            v56 = (v55 + v44 + ~*v45) >> v43;
          }

          v57 = *v54;
          if (*v54 < v56)
          {
            v58 = v55 - *(v54 - 1);
            if (v58 >= 1)
            {
              v59 = v57 < v50;
              if (v57 >= v50)
              {
                v50 = v50;
              }

              else
              {
                v50 = v57;
              }

              if (v59)
              {
                LODWORD(v49) = 0;
                v60 = 1;
              }

              else
              {
                v60 = 0;
              }

              v61 = v58 > v49;
              if ((v60 & v61) != 0)
              {
                v49 = v58;
              }

              else
              {
                v49 = v49;
              }

              if ((v60 & v61) != 0)
              {
                v51 = v53;
              }

              else
              {
                v51 = v51;
              }
            }
          }

          v62 = v51;
          v63 = v50;
          v47 = v53 + 1;
          v46 = v54 + 5956;
          v45 += 5956;
          v40 = v49;
          v39 = v62;
          --v48;
        }

        while (v52 != 1);
      }

      v38 = v63;
      ++v42;
      v41 += v35;
      v36 = (v36 + v37);
      v34 = (v34 + v37);
      v39 = v62;
    }

    while (v42 != v33);
    v64 = v62;
    if (v62 == -1)
    {
      break;
    }

    v32 = v62;
    v65 = *&v24 + 23824 * v62;
    v66 = *(v65 + 4);
    v67 = (v65 + 23804);
    if (*v67 >= v66)
    {
      v70 = -1;
      goto LABEL_56;
    }

    v68 = v67;
    v30 = *v67;
    v31 = v68;
    v23 = v62;
LABEL_54:
    v69 = *(*&v26[3087] + 32);
    ++*(*&v24 + 23824 * v32 + 23808);
    *v31 = v69 + v30;
    v64 = v23;
    v70 = v30;
LABEL_56:
    v110 = v64;
    v71 = v32;
    pthread_mutex_unlock(v6);
    v72 = *&v114[57943] + 23824 * v71;
    v73 = *(v72 + 20);
    v74 = *(v72 + 16);
    v75 = *(v72 + 21296);
    v76 = *(v1 + 8);
    v77 = (v76 + 153104);
    v78 = *(v76 + 154976);
    *(v76 + 11064) = v78;
    *(v76 + 16776) = v72 + 32;
    *(v76 + 154912) = 0;
    if (!v75 || (*(v76 + 16768) = *(v72 + 21280), v70 == *v72))
    {
      memcpy(v78, (v72 + 32), 0x52FCuLL);
    }

    v102 = v73;
    v108 = v70;
    v79 = v70 >> v113;
    v80 = v117 + 3166;
    v81 = 3;
    if (*(*&v117[3087] + 77))
    {
      v81 = 1;
    }

    v82 = v81;
    v83 = 8384;
    do
    {
      v84 = *v80++;
      *(v76 + v83) = *(v84 + 8 * v74);
      v83 += 8;
      --v82;
    }

    while (v82);
    *(v76 + 8504) = *(*&v117[3165] + 8 * v74);
    *(v76 + 8544) = *(*&v117[3169] + 8 * v74);
    v85 = v117[3087];
    bzero((v76 + 11192), 0x1000uLL);
    *(v76 + 15432) = *(*&v85 + 96);
    *(v76 + 15428) = 0;
    *(v76 + 15440) = 0;
    *(v76 + 15290) = 0;
    *(v76 + 15288) = 0;
    if (*v77)
    {
      sub_2779FB5E8(*v77 + 16968);
    }

    sub_277A5D75C(v114, v76, v74, v102, v108);
    v6 = v112;
    pthread_mutex_lock(v112);
    *(v72 + 21288) += *(v76 + 154912);
    --*(v72 + 23808);
    ++*(*v4 + 4 * v79);
    pthread_cond_broadcast(*(v4 + 24));
    pthread_mutex_unlock(v112);
    v23 = v110;
    v1 = v115;
  }

  pthread_mutex_unlock(v6);
  if (v116)
  {
    v86 = *(v1 + 432);
    v87 = *(v4 + 16);
    v107 = ((v117[66].i32[1] + (1 << *(*&v117[3087] + 36)) - 1) >> *(*&v117[3087] + 36)) - 1;
    while (1)
    {
      pthread_mutex_lock(*(v86 + 96));
      if ((*(v86 + 120) & 1) != 0 || (v88 = *(v86 + 116), v88 >= *(v86 + 112)))
      {
        v98 = *(v86 + 96);
        goto LABEL_82;
      }

      *(v86 + 116) = v88 + 1;
      v89 = *(v86 + 104);
      pthread_mutex_unlock(*(v86 + 96));
      if (!v89)
      {
        goto LABEL_83;
      }

      v90 = (v89 + 16 * v88);
      v91 = *(v1 + 440);
      v92 = v90[3];
      v93 = *v90;
      pthread_mutex_lock(v87);
      if (*(v4 + 12))
      {
        break;
      }

      v100 = v92;
      if (v107 >= (v93 >> v113) + 1)
      {
        v94 = (v93 >> v113) + 1;
      }

      else
      {
        v94 = v107;
      }

      v95 = v93 >> v113;
      v96 = v94;
      while (1)
      {
        v97 = v117[3090].i32[0];
        if (*(*v4 + 4 * v95) >= v97 && *(*v4 + 4 * v96) >= v97)
        {
          break;
        }

        pthread_cond_wait(*(v4 + 24), v87);
        if (*(v4 + 12))
        {
          v98 = v87;
          v1 = v115;
          goto LABEL_82;
        }
      }

      pthread_mutex_unlock(v87);
      sub_2779CE7E8(*v91, *(v91 + 8), v91 + 16, *(v91 + 7840), *v90, v90[1], v90[2], v100, v86, (v91 + 7848), (v91 + 8360), v113);
      v1 = v115;
    }

    v98 = v87;
LABEL_82:
    pthread_mutex_unlock(v98);
  }

LABEL_83:
  if (*(*&v117[3087] + 77))
  {
    v99 = 1;
  }

  else
  {
    v99 = 3;
  }

  sub_2779C9C3C(*(*(v1 + 8) + 159296), v99, 0, 0, v114[49441].u8[0]);
  *(*(v1 + 8) + 159296) = 0;
LABEL_87:
  *(v1 + 232) = 0;
  return 1;
}

uint64_t sub_277AF96C0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  v7 = a3 << 6;
  if (v7 <= 0x1FFFFFFE9 && (v8 = malloc_type_malloc(v7 | 0x17, 0x5F484EBFuLL)) != 0)
  {
    v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v9 - 8) = v8;
    *a1 = v9;
    if (v9)
    {
      if (a3 < 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *a1 = 0;
  }

  sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate row_mt_sync->mutex_");
  if (*a1 && a3 > 0)
  {
LABEL_9:
    v10 = 0;
    v11 = a3;
    do
    {
      pthread_mutex_init((*a1 + v10), 0);
      v10 += 64;
      --v11;
    }

    while (v11);
  }

LABEL_11:
  if ((48 * v6) <= 0x1FFFFFFE9 && (v12 = malloc_type_malloc(48 * v6 + 23, 0x5F484EBFuLL)) != 0)
  {
    v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v13 - 8) = v12;
    *(a1 + 8) = v13;
    v14 = (a1 + 8);
    if (v13)
    {
      if (a3 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    v14 = (a1 + 8);
  }

  sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate row_mt_sync->cond_");
  if (*v14 && a3 > 0)
  {
LABEL_19:
    v15 = 0;
    v16 = a3;
    do
    {
      pthread_cond_init((*v14 + v15), 0);
      v15 += 48;
      --v16;
    }

    while (v16);
  }

LABEL_21:
  if ((4 * v6) > 0x1FFFFFFE9 || (result = malloc_type_malloc(4 * v6 + 23, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 16) = 0;
LABEL_26:
    result = sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate row_mt_sync->num_finished_cols");
    goto LABEL_27;
  }

  v18 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v18 - 8) = result;
  *(a1 + 16) = v18;
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_27:
  *(a1 + 32) = a3;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_277AF9890(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 + 634709;
  v4 = *(*a1 + 634712);
  v5 = (*a1 + 270336);
  v6 = *(a1 + 113);
  *(a1[1] + 11152) = a1 + 3;
  v72 = v2;
  if (!setjmp(a1 + 59))
  {
    v70 = (v2 + 270336);
    v68 = v2;
    v71 = a1;
    *(a1 + 58) = 1;
    v16 = *(v2 + 4 * v6 + 634440);
    v17 = *(v2 + 644276);
    v67 = byte_277C36D60[v17];
    v69 = v4;
    while (1)
    {
      pthread_mutex_lock(v4);
      if (*v3)
      {
LABEL_46:
        pthread_mutex_unlock(v4);
        *(v71 + 58) = 0;
        return 1;
      }

      v18 = *(v2 + 463544);
      v19 = v18 + 23824 * v16;
      v20 = *(v19 + 4);
      v21 = (v19 + 23804);
      if (*v21 < v20)
      {
        break;
      }

      v25 = v70[1];
      if (v25 < 1)
      {
        goto LABEL_46;
      }

      v26 = *(v2 + 463544);
      v27 = *v70;
      v28 = (v18 + 23808);
      v29 = 23824 * *v70;
      v30 = 0x7FFFFFFFLL;
      v31 = 0xFFFFFFFFLL;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        if (v27 < 1)
        {
          v51 = v30;
        }

        else
        {
          v35 = byte_277C3CFCC[v17];
          v36 = v26;
          v37 = v28;
          v38 = v33;
          v39 = *v70;
          v40 = v31;
          v41 = v32;
          do
          {
            v42 = v37;
            v43 = v36;
            v44 = v36[1];
            v45 = (((v43[3] + (1 << byte_277C42228[v17]) + ~v43[2]) >> byte_277C42228[v17]) + 1) >> 1;
            if (v45 >= (v44 + (1 << v35) + ~*v43) >> v35)
            {
              v45 = (v44 + (1 << v35) + ~*v43) >> v35;
            }

            v46 = *v37;
            if (*v42 < v45)
            {
              v47 = v44 - *(v42 - 1);
              if (v47 >= 1)
              {
                v48 = v46 < v30;
                if (v46 >= v30)
                {
                  v30 = v30;
                }

                else
                {
                  v30 = v46;
                }

                if (v48)
                {
                  LODWORD(v41) = 0;
                  v49 = 1;
                }

                else
                {
                  v49 = 0;
                }

                v50 = v47 > v41;
                if ((v49 & v50) != 0)
                {
                  v41 = v47;
                }

                else
                {
                  v41 = v41;
                }

                if ((v49 & v50) != 0)
                {
                  v40 = v38;
                }

                else
                {
                  v40 = v40;
                }
              }
            }

            ++v38;
            v37 = v42 + 5956;
            v36 = v43 + 5956;
            v51 = v30;
            v32 = v41;
            v31 = v40;
            --v39;
          }

          while (v39);
        }

        v30 = v51;
        ++v34;
        v33 += v27;
        v28 = (v28 + v29);
        v26 = (v26 + v29);
      }

      while (v34 != v25);
      v52 = v31;
      v2 = v72;
      v4 = v69;
      if (v31 == -1)
      {
        goto LABEL_46;
      }

      v22 = v31;
      v53 = v18 + 23824 * v31;
      v54 = *(v53 + 4);
      v55 = (v53 + 23804);
      v23 = *v55;
      if (*v55 < v54)
      {
        v24 = v55;
        v16 = v31;
        goto LABEL_43;
      }

      v23 = -1;
LABEL_45:
      v56 = v52;
      v57 = v22;
      v4 = v69;
      pthread_mutex_unlock(v69);
      v58 = (*(v2 + 463544) + 23824 * v57);
      sub_2779B1630(v68, v71[1], v58, v23 >> byte_277C3CFCC[v17], v17);
      pthread_mutex_lock(v69);
      --v58[5952];
      pthread_mutex_unlock(v69);
      v16 = v56;
    }

    v22 = v16;
    v23 = *v21;
    v24 = v21;
LABEL_43:
    ++*(v18 + 23824 * v22 + 23808);
    *v24 = v23 + v67;
    v52 = v16;
    goto LABEL_45;
  }

  *(a1 + 58) = 0;
  pthread_mutex_lock(v4);
  *v3 = 1;
  pthread_mutex_unlock(v4);
  v66 = *(v2 + 270340);
  if (v66 < 1)
  {
    return 0;
  }

  v7 = byte_277C36D60[*(v2 + 644276)];
  v64 = *v5;
  v65 = *(v2 + 644276);
  v63 = *v5;
  v8 = 0;
  do
  {
    v62 = v8;
    if (v63 >= 1)
    {
      v9 = 0;
      v61 = v8 * v64;
      v59 = 1 << byte_277C42228[v65];
      v60 = byte_277C42228[v65];
      do
      {
        v10 = (*(v72 + 463544) + 23824 * v9 + 23824 * v61);
        v11 = *v10;
        if (*v10 < v10[1])
        {
          v12 = 0;
          v13 = ((v10[3] + v59 + ~v10[2]) >> v60);
          do
          {
            v14 = v11;
            (*(v3 + 27))(v10 + 5942, v12, (v13 - 1), v13);
            v11 = v14 + v7;
            v12 = (v12 + 1);
          }

          while (v14 + v7 < v10[1]);
        }

        ++v9;
      }

      while (v9 != v64);
    }

    v8 = v62 + 1;
  }

  while (v62 + 1 != v66);
  return 0;
}

uint64_t sub_277AF9DA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v4 = result;
    v5 = *(result + 24);
    v6 = a2 - 1;
    v7 = a2 - 1;
    v8 = (*result + (v7 << 6));
    pthread_mutex_lock(v8);
    if (*(*(v4 + 16) + 4 * v6) - v5 < a3)
    {
      do
      {
        pthread_cond_wait((*(v4 + 8) + 48 * v7), v8);
      }

      while (*(*(v4 + 16) + 4 * v7) - v5 < a3);
    }

    return pthread_mutex_unlock(v8);
  }

  return result;
}

uint64_t sub_277AF9E48(uint64_t result, int a2, int a3, int a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (a4 - 1 <= a3)
  {
    v7 = v6 + a4;
  }

  else
  {
    v7 = a3;
    if (a3 % v6)
    {
      return result;
    }
  }

  pthread_mutex_lock((*result + (a2 << 6)));
  v9 = v5[1];
  v8 = v5[2];
  v10 = *(v8 + 4 * a2);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  *(v8 + 4 * a2) = v10;
  pthread_cond_signal((v9 + 48 * a2));
  v11 = (*v5 + (a2 << 6));

  return pthread_mutex_unlock(v11);
}

double sub_277AF9EF0(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (a1[7] < 1)
    {
      goto LABEL_6;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      pthread_mutex_destroy((*a1 + v3));
      ++v4;
      v3 += 64;
    }

    while (v4 < a1[7]);
    v2 = *a1;
    if (*a1)
    {
LABEL_6:
      free(*(v2 - 8));
    }
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    if (a1[7] < 1)
    {
      goto LABEL_12;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      pthread_cond_destroy((*(a1 + 1) + v6));
      ++v7;
      v6 += 48;
    }

    while (v7 < a1[7]);
    v5 = *(a1 + 1);
    if (v5)
    {
LABEL_12:
      free(*(v5 - 8));
    }
  }

  v8 = *(a1 + 2);
  if (v8)
  {
    free(*(v8 - 8));
  }

  *(a1 + 4) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t sub_277AF9FCC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = *a1 + 634776;
  v6 = (*a1 + 246148);
  v7 = *(**a1 + 74904);
  *(v3 + 11152) = a1 + 24;
  v8 = *(v5 + 8);
  if (setjmp((a1 + 236)))
  {
    *(a1 + 232) = 0;
    pthread_mutex_lock(v8);
    *v5 = 1;
    pthread_mutex_unlock(v8);
    v9 = *v4;
    v10 = *(*v4 + 54269);
    if (v10 <= 0xF)
    {
      if (v10 == 4)
      {
        v11 = 0;
        goto LABEL_21;
      }

      if (v10 == 8)
      {
        v11 = 3u;
        goto LABEL_21;
      }
    }

    else if (v10 != 16)
    {
      if (v10 == 64)
      {
        v11 = 0xCu;
        goto LABEL_21;
      }

      if (v10 == 32)
      {
        v11 = 9u;
LABEL_21:
        if (*v6 >= 1)
        {
          v14 = 0;
          v15 = byte_277C36D60[v11];
          v16 = ((v6[1] + (1 << byte_277C42228[v11] >> 1)) >> byte_277C42228[v11]);
          v17 = 0;
          do
          {
            v18 = v17;
            (*(v5 + 24))(v9 + 74872, v14, (v16 - 1), v16);
            v17 = v18 + v15;
            v14 = (v14 + 1);
          }

          while (v18 + v15 < *v6);
        }

        return 0;
      }
    }

    v11 = 6u;
    goto LABEL_21;
  }

  *(a1 + 232) = 1;
  v12 = *(*v4 + 54269);
  if (v12 <= 0xF)
  {
    if (v12 == 4)
    {
      v13 = 0;
      goto LABEL_28;
    }

    if (v12 == 8)
    {
      v13 = 3u;
      goto LABEL_28;
    }

LABEL_19:
    v13 = 6u;
    goto LABEL_28;
  }

  if (v12 == 16)
  {
    goto LABEL_19;
  }

  if (v12 == 64)
  {
    v13 = 0xCu;
    goto LABEL_28;
  }

  if (v12 != 32)
  {
    goto LABEL_19;
  }

  v13 = 9u;
LABEL_28:
  v20 = byte_277C39398[v13];
  v49 = v13;
  v21 = byte_277C36D60[v13];
  *(v3 + 155096) = 0;
  *(v3 + 159200) = 0x10000000000;
  bzero((v3 + 155104), 0x1000uLL);
  v50 = a1;
  v22 = *(a1 + 448);
  v23 = v22 * v21;
  v48 = v3;
  if (v22 * v21 < *v6)
  {
    v24 = v2;
    v25 = v6;
    v47 = (v3 + 128748);
    v26 = v22 * v21;
    v27 = *v6;
    v28 = -32 * v23;
    v43 = -(v22 * v21);
    v44 = 32 * v7 * v21;
    v41 = -(v21 + v23);
    v42 = ~v22 * v21;
    v29 = -8 - 4 * (v21 + v23);
    v45 = v7 * v21;
    v46 = v20;
    v30 = 4 * v7 * v21;
    v31 = 8 - 4 * v23;
    v32 = 0;
    v33 = v26;
    do
    {
      v34 = v29;
      v35 = v31;
      v36 = *(v24 + 272132);
      v37 = v35 - v36;
      if (v35 - v36 <= v34)
      {
        v37 = v34;
      }

      v38 = v36 + 4 * (v42 + v27 + v32) - 8;
      if (v38 >= 4 * (v43 + v27 + v32) + 8)
      {
        v38 = 4 * (v43 + v27 + v32) + 8;
      }

      *v47 = v37;
      *(v48 + 128752) = v38;
      *(v48 + 8348) = v28;
      *(v48 + 8352) = 32 * (v41 + v27 + v32);
      v39 = v24;
      v40 = v25;
      sub_277A22B74(v4, (v48 + 155056), v48, v33, v49, v46);
      v25 = v40;
      v33 += v45;
      v27 = *v40;
      v28 -= v44;
      v32 -= v45;
      v29 = v34 - v30;
      v31 = v35 - v30;
      v24 = v39;
    }

    while (v33 < *v40);
  }

  *(v50 + 232) = 0;
  return 1;
}

uint64_t sub_277AFA390(uint64_t *a1)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 + 643360;
  v5 = *v4;
  v3[1394] = a1 + 3;
  if (setjmp(a1 + 59))
  {
    *(a1 + 58) = 0;
    pthread_mutex_lock(v5);
    *(v4 + 12) = 1;
    pthread_mutex_unlock(v5);
    return 0;
  }

  else
  {
    v7 = v2 + 270312;
    *(a1 + 58) = 1;
    v8 = *(*(v2 + 270312) + 77);
    memset(v20, 0, 24);
    v9 = v8 == 0;
    v10 = 3;
    if (!v9)
    {
      v10 = 1;
    }

    v11 = 8 * v10;
    v12 = 0;
    v13 = 60;
    do
    {
      v20[v12 / 8] = v3[v13];
      v12 += 8;
      v13 += 326;
    }

    while (v11 != v12);
    v14 = v3[1035];
    v3[1045] = v2 + 273352;
    v3[1046] = v2 + 273352;
    v3[1035] = v3 + 19378;
    *(v3[19378] + 24) = 0;
    while (1)
    {
      v15 = *(v7 + 3084);
      v16 = *v4;
      pthread_mutex_lock(*v4);
      if (*(v4 + 12))
      {
        break;
      }

      v17 = *(v4 + 8);
      if (v17 >= v15)
      {
        break;
      }

      *(v4 + 8) = v17 + 1;
      pthread_mutex_unlock(v16);
      sub_277B0EBDC();
    }

    pthread_mutex_unlock(v16);
    v18 = v3 + 60;
    v19 = 0;
    do
    {
      *v18 = v20[v19 / 8];
      v19 += 8;
      v18 += 326;
    }

    while (v11 != v19);
    v3[1035] = v14;
    *(a1 + 58) = 0;
    return 1;
  }
}

uint64_t sub_277AFA564(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(*a1 + 643344);
  v5 = *a1 + 643344;
  v6 = *(a1 + 452);
  v7 = a1 + 24;
  *(v3 + 11152) = a1 + 24;
  if (setjmp((a1 + 236)))
  {
    *(a1 + 232) = 0;
    pthread_mutex_lock(v4);
    *(v5 + 8) = 1;
    pthread_mutex_unlock(v4);
    return 0;
  }

  else
  {
    v16 = v7;
    *(a1 + 232) = 1;
    v9 = *(v2 + v6 + 643272);
    v10 = v2 + 98708;
    v11 = v2 + 160834;
    for (i = v5; ; v5 = i)
    {
      pthread_mutex_lock(v4);
      if (*(v5 + 8))
      {
        break;
      }

      v12 = v2 + v9 + 643338;
      v13 = *v12;
      if (v10[v9] <= v13 || (LODWORD(v14) = v9, *(v11 + v9)))
      {
        if (v2[98876])
        {
          break;
        }

        v14 = v9 == 0;
        v12 = v9 ? v2 + 643338 : v2 + 643339;
        v13 = *v12;
        if (v10[v9 == 0] <= v13)
        {
          break;
        }

        v9 = v9 == 0;
        if (*(v11 + v14))
        {
          break;
        }
      }

      v15 = SLOBYTE(v2[14 * v14 + 98711 + 2 * v13]);
      *v12 = v13 + 1;
      pthread_mutex_unlock(v4);
      if (v15 == -1)
      {
        goto LABEL_19;
      }

      sub_277B1E00C(v2, v16, (v2 + 98692), v15, v3 + 159208, *(v3 + 159272), v2[98738], v2[98739]);
      pthread_mutex_lock(v4);
      if (v2[98876])
      {
        if (LOBYTE(v2[9 * v15 + 67513]) <= 1u)
        {
          *(v11 + v9) = 1;
        }
      }

      pthread_mutex_unlock(v4);
    }

    pthread_mutex_unlock(v4);
LABEL_19:
    *(a1 + 232) = 0;
    return 1;
  }
}

uint64_t sub_277AFA790()
{
  v0 = MEMORY[0x28223BE20]();
  STACK[0x3858] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v30 = *v0;
  v3 = *v0 + 634710;
  v4 = (*v0)[79339];
  v5 = *v0 + 61537;
  v6 = byte_277C3F990[*(*v0 + 644504)];
  v7 = **v0;
  *(v2 + 11152) = v0 + 3;
  if (setjmp(v0 + 59))
  {
    *(v0 + 58) = 0;
    pthread_mutex_lock(v4);
    *v3 = 1;
    pthread_mutex_unlock(v4);
    v8 = *(v1 + 61538);
    v10 = v8 + 8;
    v9 = v8 < -8;
    v11 = v8 + 23;
    if (!v9)
    {
      v11 = v10;
    }

    if (*v5 < 1)
    {
      return 0;
    }

    else
    {
      v12 = 0;
      v13 = byte_277C3F990[*(v1 + 644504)];
      v14 = (v11 >> 4);
      v15 = *v30;
      v16 = 0;
      do
      {
        v17 = v16;
        (*(v3 + 58))(v15 + 85848, v12, (v14 - 1), v14);
        v16 = v17 + v13;
        v12 = (v12 + 1);
      }

      while (v17 + v13 < *v5);
      return 0;
    }
  }

  else
  {
    v19 = v7 + 81920;
    *(v0 + 58) = 1;
    v31 = 0;
    v32 = 0;
    while (1)
    {
      pthread_mutex_lock(v4);
      if (*v3)
      {
        break;
      }

      v20 = *(v19 + 3964);
      if (v20 >= *v5)
      {
        break;
      }

      v21 = *(v19 + 3964);
      ++*(v19 + 3968);
      *(v19 + 3964) = v20 + v6;
      pthread_mutex_unlock(v4);
      sub_277B0DACC(v30, v2, v2 + 416, v21, &STACK[0x3040], &STACK[0x2040], &STACK[0x1040], &v33, v22, v23, v24, v25, v26, v27, v28, v29, &v32, &v31, v0[1][19367]);
      pthread_mutex_lock(v4);
      --*(v19 + 3968);
      pthread_mutex_unlock(v4);
    }

    pthread_mutex_unlock(v4);
    *(v0 + 58) = 0;
    return 1;
  }
}

void sub_277AFA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, void *a10, unsigned int a11)
{
  v11 = MEMORY[0x28223BE20]();
  v95 = v12;
  v102 = v13;
  v99 = v14;
  v16 = v15;
  v18 = v17;
  v104 = v19;
  v105 = v20;
  v21 = v11;
  v112 = *MEMORY[0x277D85DE8];
  v103 = v11 + 643264;
  v22 = (v11 + 634400);
  v23 = v11 + 270336;
  v96 = v11 + 245664;
  v24 = v107;
  bzero(v107, 0x800uLL);
  for (i = 24; i != 45080; i += 88)
  {
    *&v108[i] = v24;
    v24 += 4;
  }

  v101 = v22;
  v94 = v23;
  v26 = (*(v23 + 4) * *v23);
  LODWORD(v23) = *(v103 + 932);
  bzero(v111, 0x800uLL);
  v27 = (v26 - 1 + v23) / v23;
  if (v26 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v21[57943] + 8;
    v32 = 1;
    do
    {
      v33 = &v108[v28];
      v34 = (*(v31 - 4) - *(v31 - 8)) * (*(v31 + 4) - *v31);
      v35 = 88 * (v26 - 1) == v28 || v30 + 1 == v27;
      *(v33 + 21) = v32;
      v32 = v35;
      v33[56] = v16;
      *v33 = v18;
      *(v33 + 15) = 0;
      *(v33 + 16) = 0;
      *(v33 + 20) = v32;
      v36 = v111[v29];
      *(v33 + 9) = *(v31 + 8);
      *(v33 + 17) = v34;
      v111[v29] = v36 + v34;
      if (v35)
      {
        ++v29;
        v30 = 0;
      }

      else
      {
        ++v30;
      }

      v28 += 88;
      v31 += 23824;
    }

    while (88 * v26 != v28);
  }

  v100 = v21;
  bzero(v110, 0x1000uLL);
  v37 = *(v103 + 1024);
  v98 = v37;
  v38 = v104;
  if (v23 >= 1)
  {
    v39 = 0;
    v40 = 0;
    v97 = *(v96 + 484) * *(v96 + 488);
    v41 = v108;
    v38 = v104;
    v42 = *(v103 + 1024);
    do
    {
      if (v40 == v23 - 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v42 - v98 * v111[v40] / v97;
        v42 = v98 * v111[v40] / v97;
      }

      *(v41 + 4) = v38;
      *(v41 + 5) = v38;
      sub_2779FC42C(v100, (v100 + 10810), v41, v39);
      v38 += v42;
      v110[v40++] = v42 - *(v41 + 16);
      v23 = *(v103 + 932);
      v39 += v27;
      v41 += 88 * v27;
      v42 = v37;
    }

    while (v40 < v23);
  }

  v43 = v98;
  if (v26 >= 1)
  {
    v44 = 0;
    v45 = v109;
    v46 = v104;
    do
    {
      v47 = *(v45 + 9);
      v48 = v37;
      if (v47)
      {
        v48 = v110[v44];
        v43 = v48;
      }

      v49 = *(v45 + 8);
      if (v49)
      {
        v37 = 0;
      }

      else
      {
        v37 = v48 - v43 * *(v45 + 5) / v111[v44];
        v48 = v43 * *(v45 + 5) / v111[v44];
      }

      *v45 = v48;
      if (v47)
      {
        v38 = *(v45 - 2);
        v46 = *(v45 - 1);
        v48 += *(v45 + 4);
        *v45 = v48;
      }

      else
      {
        *(v45 - 2) = v38;
        *(v45 - 1) = v46;
      }

      v45 += 88;
      if (v49)
      {
        ++v44;
      }

      v38 += v48;
      --v26;
    }

    while (v26);
  }

  if (a11 >= 1)
  {
    v50 = v100 + 10758;
    v51 = a11;
    v52 = 456 * a11 - 456;
    v53 = 56 * a11 - 24;
    v54 = 0uLL;
    do
    {
      v55 = *v101;
      v56 = v101[1];
      v57 = v56 + v52;
      if (v52)
      {
        v58 = *(v57 + 16);
        *(v57 + 8) = v58;
        if (v58 != v50)
        {
          memcpy(v58, v100 + 10758, 0x256A0uLL);
          v54 = 0uLL;
          v58 = *(v57 + 8);
        }
      }

      else
      {
        *(v57 + 8) = v50;
        v58 = v100 + 10758;
      }

      --v51;
      v59 = v56 + v52;
      *v59 = v100;
      *(v59 + 448) = v51;
      *(v59 + 452) = v51;
      v60 = (v55 + v53);
      v58[19371] = 0;
      *(v58 + 19369) = v54;
      *(v60 - 1) = sub_277AFB204;
      *v60 = v57;
      v60[1] = v108;
      v52 -= 456;
      v53 -= 56;
    }

    while ((v51 + 1) > 1);
  }

  v61 = *v94 * v94[1];
  *v103 = 0;
  *(v103 + 4) = 0;
  v62 = v61;
  bzero(v100 + 79384, 16 * v62);
  if (v62)
  {
    v63 = 0;
    v64 = v101 + 85;
    v65 = (v100[57943] + 21288);
    do
    {
      *(v64 - 1) = *v65;
      *v64 = v63;
      v64 += 8;
      ++v63;
      v65 += 2978;
    }

    while (v62 != v63);
  }

  qsort(v100 + 79384, v62, 0x10uLL, sub_277AFB1CC);
  if (a11 >= 1)
  {
    v66 = a11 - 1;
    v67 = 56 * a11;
    v68 = v67 + *v101;
    v69 = (v68 - 56);
    *(v68 - 8) = 0;
    v70 = v67 - 64;
    do
    {
      sub_277985E48(v69, 2);
      v71 = *v101;
      *(v71 + v70) = 0;
      v70 -= 56;
      --v66;
      v69 = (v71 + 56 * v66);
    }

    while (v66);
    v72 = v71 + v70;
    v73 = *(v71 + v70 + 32);
    if (v73)
    {
      *(v72 + 56) |= v73(*(v72 + 40), *(v72 + 48)) == 0;
    }
  }

  v74 = *v101;
  v75 = *(*v101 + 48);
  memset(v110, 0, 404);
  if (v75)
  {
    memcpy(v110, (*(v74 + 32) + 24), 0x194uLL);
  }

  if (a11 >= 2)
  {
    v76 = a11 + 1;
    v77 = 56 * a11;
    do
    {
      v78 = *v101 + v77;
      sub_277985E48((v78 - 56), 1);
      if (*(v78 - 8))
      {
        memcpy(v110, (*(v78 - 24) + 24), 0x194uLL);
        v75 = 1;
      }

      --v76;
      v77 -= 56;
    }

    while (v76 > 2);
  }

  if (v75)
  {
    sub_2779F5C78(*v96, v110);
  }

  *(*(*(v74 + 32) + 8) + 11152) = *v96;
  v79 = (v94[1] * *v94);
  v110[0] = 0;
  v111[0] = 1;
  if (v79 >= 1)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = v109;
    v84 = v104;
    do
    {
      if (*(v83 + 9))
      {
        v84 = &v104[*v105];
        v85 = *(v83 + 3);
        v86 = *(v83 + 4);
        *a10 += v86;
        *a9 = v85;
      }

      else
      {
        v86 = v110[0];
      }

      v87 = *(v83 - 4);
      v88 = *(v83 + 8);
      v110[0] = v87 + v86 + 4 * (v88 == 0);
      if (v87 > *v95)
      {
        *v102 = v80;
        *v95 = v87;
      }

      v89 = **(v83 - 3);
      v90 = (v89 + v87);
      v106 = v89 + v87;
      if (v80)
      {
        memmove(&v104[v82], &v104[v81], v90);
      }

      if (v88)
      {
        sub_277A06124(v100, v99, *(v83 - 6), v110, v84, &v106, a10, v102, v111, *a9, v83[8]);
        LODWORD(v90) = v106;
      }

      v91 = *v83;
      v83 += 88;
      v81 += v91;
      v82 += v90;
      *v105 += v90;
      ++v80;
    }

    while (v79 != v80);
  }

  if (a11 >= 1)
  {
    v92 = a11 + 1;
    v93 = 456 * a11 - 448;
    do
    {
      sub_277A062CC(v100, *(v101[1] + v93));
      --v92;
      v93 -= 456;
    }

    while (v92 > 1);
  }
}

uint64_t sub_277AFB1CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 1;
  if (v2)
  {
    if (*(a1 + 8) > *(a2 + 8))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_277AFB204(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*a1 + 643264);
  v6 = *(*a1 + 270336);
  v7 = *(*a1 + 270340);
  v8 = *(*a1 + 635064);
  *(*(a1 + 8) + 11152) = a1 + 24;
  if (setjmp((a1 + 236)))
  {
    *(a1 + 232) = 0;
    pthread_mutex_lock(v8);
    *(v5 + 4) = 1;
    pthread_mutex_unlock(v8);
    return 0;
  }

  else
  {
    v14 = a2;
    v10 = v7 * v6;
    *(a1 + 232) = 1;
    while (1)
    {
      pthread_mutex_lock(v8);
      if (v5[1])
      {
        break;
      }

      v11 = *v5;
      if (v11 == v10)
      {
        break;
      }

      *v5 = v11 + 1;
      v12 = *(v4 + 635072 + 16 * v11 + 8);
      pthread_mutex_unlock(v8);
      v13 = *(a1 + 8);
      *(v13 + 11064) = *(v4 + 463544) + 23824 * v12 + 32;
      sub_2779FF228(v4, v13, v14 + 88 * v12);
    }

    pthread_mutex_unlock(v8);
    *(a1 + 232) = 0;
    return 1;
  }
}

uint64_t sub_277AFB610(uint64_t a1, int a2)
{
  if (a2 < 2)
  {
    return 1;
  }

  if (*(a1 + 272209) == 1)
  {
    v3 = *(a1 + 270340);
    if (v3 < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = (a1 + 246148);
      v7 = a1 + 270656;
      do
      {
        if (*(a1 + 270336) <= 0)
        {
          ++v5;
        }

        else
        {
          v8 = *(*(a1 + 270312) + 36);
          v9 = *(v7 + 4 * v5++) << v8;
          v10 = *v6;
          if (*(v7 + 4 * v5) << v8 < *v6)
          {
            v10 = *(v7 + 4 * v5) << v8;
          }

          v11 = (v10 + ~v9 + (1 << v8)) >> v8;
          v12 = *(a1 + 270396);
          v13 = (a1 + 270400);
          v14 = *(a1 + 270336);
          do
          {
            v15 = v12 << v8;
            v16 = *v13++;
            v12 = v16;
            v17 = v16 << v8;
            if (v16 << v8 >= *(a1 + 246152))
            {
              v17 = *(a1 + 246152);
            }

            v18 = (((v17 + ~v15 + (1 << v8)) >> v8) + 1) >> 1;
            if (v18 >= v11)
            {
              v18 = v11;
            }

            v4 += v18;
            --v14;
          }

          while (v14);
        }
      }

      while (v5 != v3);
    }

    if (v4 >= a2)
    {
      return a2;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v19 = *(a1 + 270340) * *(a1 + 270336);
    if (v19 >= a2)
    {
      return a2;
    }

    else
    {
      return v19;
    }
  }
}

char *sub_277AFB734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  result = MEMORY[0x28223BE20]();
  v22 = v14;
  v23 = v13;
  v25 = v24;
  v26 = a11;
  v130 = *MEMORY[0x277D85DE8];
  v27 = ((v17 + (a11 - 1) * a9) >> 4) + 8;
  v28 = &result[-3 * v12 - 3];
  if (a10 == 4)
  {
    v29 = v121;
    v30.i64[0] = 0x8080808080808080;
    v30.i64[1] = 0x8080808080808080;
    do
    {
      v31 = 0;
      v32 = v15;
      do
      {
        v33 = *(v14 + 16 * (v32 & 0xF));
        v34 = (v28 + (v32 >> 4));
        v35.i64[0] = *v34;
        v36 = (v34 + v12);
        v37 = *v36;
        v38 = (v36 + v12);
        _Q4.i64[0] = *v38;
        _Q6 = vshrn_high_n_s16(vshrn_n_s16(v33, 1uLL), v33, 1uLL);
        v35.i64[1] = v37;
        _Q4.i64[1] = *(v38 + v12);
        _Q1 = veorq_s8(v35, v30);
        _Q2 = veorq_s8(_Q4, v30);
        __asm
        {
          SDOT            V3.4S, V1.16B, V6.16B
          SDOT            V1.4S, V2.16B, V6.16B
        }

        v49 = vpaddq_s32(_Q3, _Q1);
        *v49.i8 = vmovn_s32(v49);
        v122.i32[v31] = vqrshrun_n_s16(v49, 6uLL).u32[0];
        v32 += v16;
        ++v31;
      }

      while (v31 != 4);
      v50 = vtrn1_s16(v122, v123);
      v51 = vtrn2_s16(v122, v123);
      v52 = vzip1_s32(v50, v51);
      v53 = vzip2_s32(v50, v51);
      v54 = vtrn1_s8(v52, v53);
      v55 = vtrn2_s8(v52, v53);
      *v29 = v54.i32[0];
      v29[32] = v54.i32[1];
      v29[16] = v55.i32[0];
      v29[48] = v55.i32[1];
      v28 += 4 * v12;
      v29 += 64;
      _VF = __OFSUB__(v27, 4);
      v27 -= 4;
    }

    while (!((v27 < 0) ^ _VF | (v27 == 0)));
  }

  else
  {
    v56 = v121;
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    do
    {
      v58 = a10;
      v59 = v56;
      v60 = v15;
      do
      {
        for (i = 0; i != 64; i += 8)
        {
          v62 = *(v14 + 16 * (v60 & 0xF));
          v63 = (v28 + (v60 >> 4));
          v64.i64[0] = *v63;
          v65 = (v63 + v12);
          v66 = *v65;
          v67.i64[0] = *(v65 + v12);
          v68 = (v65 + v12 + v12);
          v69 = *v68;
          v70 = (v68 + v12);
          result = v70 + v12;
          v71.i64[0] = *v70;
          v72 = *(v70 + v12);
          v73 = (v70 + v12 + v12);
          v20.i64[0] = *v73;
          v64.i64[1] = v66;
          v67.i64[1] = v69;
          v71.i64[1] = v72;
          _Q18 = vshrn_high_n_s16(vshrn_n_s16(v62, 1uLL), v62, 1uLL);
          v20.i64[1] = *(v73 + v12);
          _Q1 = veorq_s8(v64, v57);
          _Q2 = veorq_s8(v67, v57);
          _Q3 = veorq_s8(v71, v57);
          __asm
          {
            SDOT            V4.4S, V1.16B, V18.16B
            SDOT            V1.4S, V2.16B, V18.16B
          }

          _Q5 = veorq_s8(v20, v57);
          __asm
          {
            SDOT            V2.4S, V3.16B, V18.16B
            SDOT            V3.4S, V5.16B, V18.16B
          }

          *(&v122 + i) = vqrshrun_n_s16(vuzp1q_s16(vpaddq_s32(_Q4, _Q1), vpaddq_s32(_Q2, _Q3)), 6uLL);
          v60 += v16;
        }

        *v83.i8 = v122;
        *v84.i8 = v123;
        v85.i64[0] = v124;
        v86.i64[0] = v125;
        v83.i64[1] = v126;
        v84.i64[1] = v127;
        v87 = vtrn1q_s8(v83, v84);
        v88 = vtrn2q_s8(v83, v84);
        v85.i64[1] = v128;
        v86.i64[1] = v129;
        v89 = vtrn1q_s8(v85, v86);
        v90 = vtrn2q_s8(v85, v86);
        v91 = vtrn1q_s16(v87, v89);
        v92 = vtrn2q_s16(v87, v89);
        v93 = vtrn1q_s16(v88, v90);
        v94 = vtrn2q_s16(v88, v90);
        v95 = vuzp1q_s32(v91, v93);
        _Q4 = vuzp2q_s32(v91, v93);
        _Q5 = vuzp1q_s32(v92, v94);
        v96 = vuzp2q_s32(v92, v94);
        _Q2 = vextq_s8(v95, v95, 8uLL);
        _Q6 = vextq_s8(_Q5, _Q5, 8uLL);
        v19 = vextq_s8(_Q4, _Q4, 8uLL);
        *v59 = v95.i64[0];
        _Q3 = vextq_s8(v96, v96, 8uLL);
        v59[8] = _Q2.i64[0];
        v59[16] = _Q5.i64[0];
        v59[24] = _Q6.i64[0];
        v59[32] = _Q4.i64[0];
        v59[40] = v19.i64[0];
        v59[48] = v96.i64[0];
        v59[56] = _Q3.i64[0];
        ++v59;
        v58 -= 8;
      }

      while (v58);
      v28 += 8 * v12;
      v56 += 512;
      _VF = __OFSUB__(v27, 8);
      v27 -= 8;
    }

    while (!((v27 < 0) ^ _VF | (v27 == 0)));
  }

  if (a10 == 4)
  {
    v97.i64[0] = 0x8080808080808080;
    v97.i64[1] = 0x8080808080808080;
    do
    {
      v98 = &v121[64 * (v17 >> 4)];
      if ((v17 & 0xF) != 0)
      {
        _Q1 = *(v14 + 16 * (v17 & 0xF));
        _Q1.i16[0] = vshrn_n_s16(_Q1, 1uLL).u16[0];
        *_Q2.i8 = vzip1_s8(*v98, v98[8]);
        *_Q3.i8 = vzip1_s8(v98[16], v98[24]);
        *_Q4.i8 = vzip1_s8(v98[32], v98[40]);
        *_Q5.i8 = vzip1_s8(v98[48], v98[56]);
        _Q2 = veorq_s8(vzip1q_s16(_Q2, _Q3), v97);
        _Q3 = veorq_s8(vzip1q_s16(_Q4, _Q5), v97);
        __asm
        {
          SDOT            V4.4S, V2.16B, V1.4B[0]
          SDOT            V4.4S, V3.16B, V1.4B[1]
        }

        *_Q1.i8 = vmovn_s32(_Q4);
        v101 = vqrshrun_n_s16(_Q1, 6uLL).u32[0];
      }

      else
      {
        v101 = v98[24].u32[0];
      }

      *v25 = v101;
      v17 += a9;
      v25 = (v25 + v13);
      --v26;
    }

    while (v26);
  }

  else
  {
    v102.i64[0] = 0x8080808080808080;
    v102.i64[1] = 0x8080808080808080;
    v103 = v17;
    do
    {
      v104 = &v121[64 * (v103 >> 4)];
      if ((v103 & 0xF) != 0)
      {
        v105 = 0;
        v106 = vshrn_n_s16(*(v22 + 16 * (v103 & 0xF)), 1uLL);
        _Q0 = vdupq_lane_s32(v106, 0);
        _Q1 = vdupq_lane_s32(v106, 1);
        do
        {
          _Q2.i64[0] = *&v104[v105];
          _Q3.i64[0] = *&v104[v105 + 64];
          _Q4.i64[0] = *&v104[v105 + 128];
          _Q5.i64[0] = *&v104[v105 + 192];
          _Q6.i64[0] = *&v104[v105 + 256];
          v19.i64[0] = *&v104[v105 + 320];
          v20.i64[0] = *&v104[v105 + 384];
          v21.i64[0] = *&v104[v105 + 448];
          v109 = vzip1q_s8(_Q2, _Q3);
          v110 = vzip1q_s8(_Q4, _Q5);
          v111 = vzip1q_s8(_Q6, v19);
          v112 = vzip1q_s8(v20, v21);
          v113 = vzip1q_s16(v109, v110);
          v114 = vzip2q_s16(v109, v110);
          v115 = vzip1q_s16(v111, v112);
          v116 = vzip2q_s16(v111, v112);
          _Q5 = veorq_s8(v113, v102);
          _Q2 = veorq_s8(v114, v102);
          _Q3 = veorq_s8(v115, v102);
          _Q4 = veorq_s8(v116, v102);
          __asm
          {
            SDOT            V6.4S, V5.16B, V0.16B
            SDOT            V6.4S, V3.16B, V1.16B
            SDOT            V3.4S, V2.16B, V0.16B
            SDOT            V3.4S, V4.16B, V1.16B
          }

          _Q2 = vuzp1q_s16(_Q6, _Q3);
          *&v25[v105 / 4] = vqrshrun_n_s16(_Q2, 6uLL);
          v105 += 8;
        }

        while (a10 != v105);
      }

      else
      {
        result = memcpy(v25, v104 + 192, (a10 & 0xFFFFFFF8) - 8 + 8);
        v102.i64[0] = 0x8080808080808080;
        v102.i64[1] = 0x8080808080808080;
      }

      v103 += a9;
      v25 = (v25 + v23);
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_277AFBBBC(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  *(result + 168) = 0;
  *(result + 164) = 0;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      if ((*(result + 132 + 4 * v2) >> i))
      {
        v1 |= i > 4;
        *(result + 168) = v1;
        *(result + 164) = v2;
      }
    }

    ++v2;
  }

  while (v2 != 8);
  return result;
}

void sub_277AFBC10(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, uint64_t a5, int64_t a6)
{
  v479 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 270312);
  v9 = **(a2 + 8280);
  v10 = *(*(a1 + 270312) + 77);
  v433 = 0;
  v434 = 0;
  v432 = 0;
  v431 = 0;
  *(a5 + 456) = 0;
  *(v9 + 16) = -256;
  v11 = *(v9 + 167);
  *(v9 + 8) = 0;
  *(v9 + 167) = v11 & 0xFF3F;
  v420 = a6;
  *&v444 = a6;
  v12 = **(a2 + 8280);
  *&v437[0] = 0x7FFFFFFFFFFFFFFFLL;
  *(&v462 + 5) = 0;
  *&v462 = 0;
  LODWORD(v435[0]) = 0;
  v390 = v9;
  v398 = v10;
  if (*(a1 + 271404) == 1 && *(a1 + 246111) && ((v13 = *v12, v13 > 0xF) || ((1 << v13) & 0xE007) == 0))
  {
    v400 = *(a2 + 16832);
    v405 = 1;
  }

  else
  {
    v405 = 0;
    v400 = 0;
  }

  v14 = a1 + 394960;
  v15 = *(a2 + 8304);
  v16 = *(a2 + 8296);
  if (v15)
  {
    v15 = *(v15 + 2);
  }

  v17 = a2 + 150988;
  v426 = (a1 + 245616);
  if (v16)
  {
    v16 = *(v16 + 2);
  }

  v18 = dword_277C393C4[v15];
  v19 = dword_277C393C4[v16];
  v12[88] = 0;
  v20 = *(a1 + 396096);
  if (v20)
  {
    sub_277AA1B30(a2, a4, *(*v8 + 28), &v462, 0, flt_277BB7D30[v20 - 1]);
  }

  v12[91] = 0;
  v12[142] = 0;
  v21 = *(v8 + 423);
  *(v17 + 44) = v21 == 1;
  if (*(v14 + 1220))
  {
    v22 = 1;
  }

  else
  {
    v22 = v8[1774];
  }

  *v17 = v22;
  *(v17 + 4) = *(v14 + 1224);
  *(v17 + 32) = *(v14 + 56);
  *(v17 + 40) = *(v14 + 68);
  if (v21 == 1)
  {
    *(v17 + 28) = 1;
    *(v17 + 20) = 0;
  }

  else
  {
    if (*(v14 + 1316))
    {
      *(v17 + 28) = *(v14 + 32);
      v23 = *(v14 + 44);
    }

    else
    {
      *(v17 + 28) = *(v14 + 28);
      v23 = *(v14 + 40);
    }

    *(v17 + 20) = v23;
  }

  v24 = *(v14 + 1304);
  v25 = v24 == 0;
  if (v24)
  {
    v26 = (v14 + 8);
  }

  else
  {
    v26 = v14;
  }

  v27 = 394972;
  if (v25)
  {
    v27 = 394964;
  }

  *(v17 + 12) = *v26;
  *(v17 + 16) = *(a1 + v27);
  v28 = *(v14 + 1308);
  v29 = *(v14 + 24);
  *(v17 + 24) = v29;
  if (v28)
  {
    v29 = *(v14 + 25);
    *(v17 + 24) = v29;
  }

  v418 = v8;
  v424 = a5;
  v428 = (a2 + 116272);
  if (v29 == 2)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  if (v426[499])
  {
    v30 = 0;
  }

  *(v17 + 36) = v30;
  v31 = *(v14 + 1252);
  *(v17 + 8) = *(v14 + 1216);
  if (v31)
  {
    *(v17 + 8) = dword_277C31DF8[2 * v31 - 2];
  }

  if (*(v17 + 48) != 1)
  {
    v32 = *(v17 + 2116);
    if (v32)
    {
      *(v32 + 16960) = 0;
    }
  }

  v33 = (a2 + 126552);
  v391 = (a2 + 47568);
  v421 = (a2 + 16904);
  v404 = (a2 + 8288);
  v422 = (a2 + 676 * v18 + 52 * v19 + 17952);
  *(v17 + 48) = 1;
  v454 = *(v12 + 7);
  v455 = *(v12 + 8);
  v456 = *(v12 + 9);
  v457 = *(v12 + 10);
  v450 = *(v12 + 3);
  v451 = *(v12 + 4);
  v452 = *(v12 + 5);
  v453 = *(v12 + 6);
  v447 = *v12;
  v448 = *(v12 + 1);
  v449 = *(v12 + 2);
  v34 = *v428;
  if (*v428)
  {
    v35 = dword_277C31748[*(v14 + 1320)];
    v36 = byte_277C3CAE8[a4] * byte_277C3CAFE[a4];
    do
    {
      *(v34 + 224) = 0;
      *(v34 + 192) = 0u;
      *(v34 + 208) = 0u;
      *(v34 + 160) = 0u;
      *(v34 + 176) = 0u;
      *(v34 + 128) = 0u;
      *(v34 + 144) = 0u;
      *(v34 + 96) = 0u;
      *(v34 + 112) = 0u;
      *(v34 + 64) = 0u;
      *(v34 + 80) = 0u;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 0u;
      *v34 = 0u;
      *(v34 + 16) = 0u;
      bzero((v34 + 232), v36);
      *(v34 + 16616) = 0;
      v34 += 16624;
      --v35;
    }

    while (v35);
  }

  *(a2 + 116280) = 0;
  memset_pattern16(__b, &unk_277BB7D90, 0x20uLL);
  for (i = 0; i != 936; i += 72)
  {
    memset_pattern16(&v461[i], &unk_277BB7D90, 0x48uLL);
  }

  v38 = 0;
  v419 = a4;
  v396 = a2 + 11108;
  v413 = a4 & 0xFC;
  v415 = v420;
  v39 = v418;
  do
  {
    sub_277A9FE58(v38, v12, *(v14 + 1184));
    v478 = 0;
    memset(__src, 0, sizeof(__src));
    v47 = v12[88];
    v48 = v12[2];
    v49 = (v48 - 9);
    if (v49 >= 0xFA)
    {
      if ((v418[1765] & 1) == 0)
      {
        goto LABEL_150;
      }
    }

    else if (v49 < 0xF8)
    {
      v50 = 1;
      goto LABEL_50;
    }

    if (v418[1764] != 1)
    {
      goto LABEL_150;
    }

    v50 = 0;
LABEL_50:
    if (v418[1761] != 1)
    {
      if ((v48 - 9) < 3u)
      {
        goto LABEL_150;
      }

      if (!*(v14 + 1144))
      {
        goto LABEL_62;
      }

LABEL_60:
      if (v48 == 9 && !*(v14 + 1152))
      {
        goto LABEL_150;
      }

      goto LABEL_62;
    }

    v51 = *(v14 + 1144);
    if ((v48 & 0xFE) == 0xA && v51 != 0)
    {
      goto LABEL_150;
    }

    if (v51)
    {
      goto LABEL_60;
    }

LABEL_62:
    if (v48 != 12 || (v418[1762]) && (!*(a2 + 128680) || v48 == *(*(a2 + 128688) + 2)) && ((v50 & 1) != 0 || !*(&v462 + v48) && (a4 >= 3 && (v418[1766] & 1) != 0 || !v12[88])) && ((*(a1 + 396052 + 4 * byte_277C39398[a4]) >> v48))
    {
      if (!*(v14 + 1184))
      {
        v50 = 1;
      }

      if ((v50 & 1) != 0 || (v47 & 1) == 0 || v415 == 0x7FFFFFFFFFFFFFFFLL || (v58 = v415 + (v415 >> 3), v59 = &v461[72 * v12[2] + 8 * v47], *(v59 + 3) <= v58) || *(v59 + 5) <= v58)
      {
        if (v413 == 12)
        {
          v53 = 3;
        }

        else
        {
          v53 = byte_277C39398[a4];
        }

        v54 = sub_277AA2650(v426, a2, 0, a4, v53, 1, 0, v40, v41, v42, v43, v44, v45, v46);
        v55 = *(v14 + 1176);
        if (*(v14 + 1180))
        {
          v56 = *(**(a2 + 8280) + 2);
          v57 = *(a2 + 8289) == 1 && *(*(a2 + 8296) + 2) != v56;
          v61 = a1;
          v62 = *v404 == 1 && *(*(a2 + 8304) + 2) != v56;
          v60 = v55 - 1;
          if (*v421 > 127)
          {
            if (v57 && v62)
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (!v57 && !v62)
            {
              goto LABEL_100;
            }

LABEL_96:
            if (v55 <= 2)
            {
              v63 = 2;
            }

            else
            {
              v63 = *(v14 + 1176);
            }

            v60 = v63 - 2;
          }
        }

        else
        {
          v60 = v55 - 1;
          v61 = a1;
        }

LABEL_100:
        if (sub_277AA31FC(v54, v437, __b, v55, v60))
        {
          goto LABEL_150;
        }

        sub_277A45044(v61, a2, __src, a4, v415);
        v64 = __src[0];
        if (LODWORD(__src[0]) == 0x7FFFFFFF)
        {
          goto LABEL_150;
        }

        if (*(v396 + 4 * (*(v12 + 167) & 7)))
        {
          v65 = __src[0];
        }

        else
        {
          v65 = __src[0];
          if (*v12)
          {
            v66 = 0;
            if (a4 && *(v17 + 36) == 2)
            {
              v67 = v12[145];
              v68 = byte_277C3BD80[a4];
              for (j = 0; v68 != v67; v68 = byte_277C3295E[v68])
              {
                ++j;
              }

              v70 = *v404;
              v71 = **(a2 + 8544);
              if (v70 == 1)
              {
                v72 = *(a2 + 8304);
                if ((*(v72 + 167) & 0x80) != 0 || v72[16] >= 1)
                {
                  v71 = byte_277C3CAFE[*v72];
                }
              }

              v73 = *(a2 + 8289);
              v74 = **(a2 + 8552);
              if (*(a2 + 8289))
              {
                v75 = *(a2 + 8296);
                if ((*(v75 + 167) & 0x80) != 0 || v75[16] >= 1)
                {
                  v74 = byte_277C3CAE8[*v75];
                }
              }

              v76 = byte_277C3BD80[***(a2 + 8280)];
              if (dword_277C3BF30[v76] > v74)
              {
                v73 = 0;
              }

              if (dword_277C3BEE4[v76] > v71)
              {
                v70 = 0;
              }

              v66 = *(a2 + 35992 + 60 * (byte_277C32948[a4] - 1) + 20 * (v73 + v70) + 4 * j);
            }

            v65 = LODWORD(__src[0]) - v66;
          }
        }

        v386 = v65;
        v77 = __src[1];
        v381 = v478;
        v78 = sub_277AA32C4(a1, a2, v12, a4, v422[v12[2]]) + v64;
        v383 = v77;
        v79 = ((*(a2 + 16920) * v78 + 256) >> 9) + (v77 << 7);
        if (v418[1896] == 2 && v79 != 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_277AA37BC(a1, a2, a4);
          v79 = (v80 * v79);
        }

        *&v461[72 * v12[2] + 32 + 8 * v47] = v79;
        if (v79 != 0x7FFFFFFFFFFFFFFFLL && *(v14 + 1320) != 0)
        {
          v82 = *v428;
          if ((*v426 & 0xFD) == 0 || !v12[142])
          {
            v83 = dword_277C31748[*(v14 + 1320)];
            v84 = a2 + 116272;
            v85 = *(a2 + 116280);
            if (!v85)
            {
              goto LABEL_144;
            }

            if (v85 < 1)
            {
              LODWORD(v85) = 0;
            }

            else
            {
              v86 = 0;
              v87 = (v82 + 216);
              while (*v87 <= v79)
              {
                v87 += 2078;
                if (v85 == ++v86)
                {
                  goto LABEL_140;
                }
              }

              LODWORD(v85) = v86;
            }

LABEL_140:
            if (v85 != v83)
            {
              if (v85 < v83 - 1)
              {
                v378 = dword_277C31748[*(v14 + 1320)];
                v375 = *v428;
                memmove((v82 + 16624 * v85 + 16624), (v82 + 16624 * v85), 16624 * (v83 + ~v85));
                v82 = v375;
                v83 = v378;
              }

              v84 = a2 + 116272;
LABEL_144:
              v88 = v82 + 16624 * v85;
              v89 = *v12;
              v90 = *(v12 + 2);
              *(v88 + 16) = *(v12 + 1);
              *(v88 + 32) = v90;
              *v88 = v89;
              v91 = *(v12 + 3);
              v92 = *(v12 + 4);
              v93 = *(v12 + 6);
              *(v88 + 80) = *(v12 + 5);
              *(v88 + 96) = v93;
              *(v88 + 48) = v91;
              *(v88 + 64) = v92;
              v94 = *(v12 + 7);
              v40 = *(v12 + 8);
              v41 = *(v12 + 9);
              v42 = *(v12 + 10);
              *(v88 + 144) = v41;
              *(v88 + 160) = v42;
              *(v88 + 112) = v94;
              *(v88 + 128) = v40;
              *(v88 + 16616) = 0;
              *(v88 + 216) = v79;
              v95 = *(v84 + 8);
              if (v95 + 1 < v83)
              {
                v96 = v95 + 1;
              }

              else
              {
                v96 = v83;
              }

              *(v84 + 8) = v96;
            }
          }
        }

        if (v79 < v415)
        {
          v454 = *(v12 + 7);
          v455 = *(v12 + 8);
          v456 = *(v12 + 9);
          v457 = *(v12 + 10);
          v450 = *(v12 + 3);
          v451 = *(v12 + 4);
          v452 = *(v12 + 5);
          v453 = *(v12 + 6);
          v447 = *v12;
          v448 = *(v12 + 1);
          v449 = *(v12 + 2);
          LODWORD(v435[0]) = 1;
          HIDWORD(v434) = v78;
          HIDWORD(v433) = v386;
          v431 = v383;
          HIBYTE(v432) = v381;
          memcpy(*(v424 + 280), (a2 + 151049), *(v424 + 416));
          memcpy(*(v424 + 408), *(a2 + 8328), *(v424 + 416));
          v415 = v79;
        }
      }
    }

LABEL_150:
    v38 = (v38 + 1);
  }

  while (v38 != 61);
  *&v444 = v415;
  v97 = a2;
  v98 = a1;
  if (v405)
  {
    sub_277A32CB4(a1, a2, a4, *v422, &v447, v400, &v444, &v434 + 4, &v433 + 1, &v431, &v432 + 1, v435, v424, *(v424 + 280), *(v424 + 408));
  }

  v99 = v426;
  if (!LODWORD(v435[0]))
  {
    goto LABEL_268;
  }

  if (a4 == 255)
  {
    goto LABEL_209;
  }

  if (!*(*v418 + 60))
  {
    goto LABEL_209;
  }

  if (((0x1F07FFuLL >> a4) & 1) == 0)
  {
    goto LABEL_209;
  }

  if (((0x2F0BFFuLL >> a4) & 1) == 0)
  {
    goto LABEL_209;
  }

  if (*(v14 + 1152) == 2)
  {
    goto LABEL_209;
  }

  v401 = *v422;
  v406 = BYTE2(v447);
  v100 = **(a2 + 8280);
  v100[5].i8[11] = 1;
  v100->i8[2] = 0;
  v416 = v100;
  v100[8].i8[14] = 0;
  if (*(a2 + 128680))
  {
    if (!*(*(a2 + 128688) + 91))
    {
      goto LABEL_209;
    }
  }

  v101 = 0;
  v102 = *&v437[0];
  v379 = 0;
  v382 = 1;
  __n = v444;
  v376 = 1;
  while (2)
  {
    v98 = a1;
LABEL_163:
    *&v467 = 0;
    v465 = 0u;
    v466 = 0u;
    v416[5].i8[10] = v101;
    if (*(v14 + 1152) != 1 || ((byte_277BFDBEC[v406] >> v101)) && (!*(a2 + 128680) || v101 == *(*(a2 + 128688) + 90)))
    {
      if (v413 == 12)
      {
        v103 = 3;
      }

      else
      {
        v103 = byte_277C39398[a4];
      }

      v104 = sub_277AA2650(v426, v97, 0, a4, v103, 1, 0, v40, v41, v42, v43, v44, v45, v46);
      if (v102 != 0x7FFFFFFFFFFFFFFFLL && v104 > v102 + (v102 >> 2))
      {
        goto LABEL_175;
      }

      if (v104 < v102)
      {
        v102 = v104;
      }

      sub_277A45044(v98, v97, &v465, a4, __n);
      if (v465 == 0x7FFFFFFF)
      {
LABEL_175:
        v39 = v418;
        break;
      }

      v393 = v465;
      v387 = sub_277AA32C4(v98, v97, v416, a4, v401) + v393;
      v384 = *(&v465 + 1);
      v105 = ((*(a2 + 16920) * v387 + 256) >> 9) + (*(&v465 + 1) << 7);
      v39 = v418;
      if (v418[1896] == 2 && v105 != 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_277AA37BC(a1, v97, a4);
        v105 = (v106 * v105);
      }

      if (v105 != 0x7FFFFFFFFFFFFFFFLL && *(v14 + 1320) != 0)
      {
        v108 = *v428;
        if ((*v426 & 0xFD) == 0 || !v416[8].i8[14])
        {
          v109 = dword_277C31748[*(v14 + 1320)];
          v110 = a2 + 116272;
          v111 = *(a2 + 116280);
          if (!v111)
          {
            goto LABEL_197;
          }

          if (v111 < 1)
          {
            LODWORD(v111) = 0;
          }

          else
          {
            v112 = 0;
            v113 = (v108 + 216);
            while (*v113 <= v105)
            {
              v113 += 2078;
              if (v111 == ++v112)
              {
                goto LABEL_193;
              }
            }

            LODWORD(v111) = v112;
          }

LABEL_193:
          if (v111 != v109)
          {
            if (v111 < v109 - 1)
            {
              v373 = dword_277C31748[*(v14 + 1320)];
              v371 = *v428;
              memmove((v108 + 16624 * v111 + 16624), (v108 + 16624 * v111), 16624 * (v109 + ~v111));
              v108 = v371;
              v109 = v373;
            }

            v110 = a2 + 116272;
LABEL_197:
            v114 = (v108 + 16624 * v111);
            v115 = *v416;
            v116 = v416[2];
            v114[1] = v416[1];
            v114[2] = v116;
            *v114 = v115;
            v117 = v416[3];
            v118 = v416[4];
            v119 = v416[6];
            v114[5] = v416[5];
            v114[6] = v119;
            v114[3] = v117;
            v114[4] = v118;
            v120 = v416[7];
            v40 = v416[8];
            v41 = v416[9];
            v42 = v416[10];
            v114[9] = v41;
            v114[10] = v42;
            v114[7] = v120;
            v114[8] = v40;
            v114[1038].i8[8] = 0;
            v114[13].i64[1] = v105;
            v121 = *(v110 + 8);
            if (v121 + 1 < v109)
            {
              v122 = v121 + 1;
            }

            else
            {
              v122 = v109;
            }

            *(v110 + 8) = v122;
          }
        }
      }

      if (v105 < __n)
      {
        v376 = v416[9].i8[1];
        v379 = v416[5].i16[5];
        v97 = a2;
        __nc = *(v424 + 416);
        __memcpy_chk();
        memcpy(*(v424 + 280), (a2 + 151049), __nc);
        v382 = 0;
        HIDWORD(v434) = v387;
        HIDWORD(v433) = v393;
        v431 = v384;
        HIBYTE(v432) = v467;
        ++v101;
        __n = v105;
        if (v101 != 5)
        {
          continue;
        }

        *&v444 = v105;
        *&v437[0] = v102;
        v98 = a1;
        v99 = v426;
        goto LABEL_208;
      }

      v97 = a2;
      v98 = a1;
    }

    break;
  }

  if (++v101 != 5)
  {
    goto LABEL_163;
  }

  *&v444 = __n;
  *&v437[0] = v102;
  v99 = v426;
  if (v382)
  {
    goto LABEL_209;
  }

LABEL_208:
  v416->i8[2] = 0;
  v416[9].i8[1] = v376;
  v416[5].i16[5] = v379;
  memcpy(*(v424 + 408), __src, *(v424 + 416));
  v454 = *(v12 + 7);
  v455 = *(v12 + 8);
  v456 = *(v12 + 9);
  v457 = *(v12 + 10);
  v450 = *(v12 + 3);
  v451 = *(v12 + 4);
  v452 = *(v12 + 5);
  v453 = *(v12 + 6);
  v447 = *v12;
  v448 = *(v12 + 1);
  v449 = *(v12 + 2);
LABEL_209:
  if (!LODWORD(v435[0]))
  {
LABEL_268:
    v149 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_326;
  }

  if (!*(v14 + 1320))
  {
    v150 = v12[2];
    v151 = *(v14 + 1336);
    if (v151 == 3)
    {
      if ((v150 > 0x18 || ((1 << v150) & 0x1390000) == 0) && v150 != 22 && v12[144] && *v421 < 128)
      {
        goto LABEL_325;
      }
    }

    else if (v151 != 2)
    {
      if (v151 == 1)
      {
        if (*(v17 + 2164) < (64 - 48 * *v421 / 256))
        {
          goto LABEL_325;
        }
      }

      else if (v151 >= 4 && (*(v14 + 1300) < 5 || *v421 >= 71) && v12[144])
      {
        goto LABEL_325;
      }
    }

    v152 = *(v12 + 167);
    if ((v152 & 0x80) != 0 || v12[16] >= 1)
    {
      if (v150 - 25 >= 0xFFFFFFF4 && *(v14 + 1224) != 0x7FFFFFFF && (v39[1773] & 1) == 0)
      {
LABEL_300:
        v25 = *(v39 + 423) == 1;
        *(v17 + 44) = v25;
        *v17 = -NAN;
        *(v17 + 32) = *(v14 + 60);
        *(v17 + 40) = *(v14 + 72);
        if (v25)
        {
          *(v17 + 28) = 1;
          *(v17 + 20) = 0;
        }

        else
        {
          if (*(v14 + 1316))
          {
            *(v17 + 28) = *(v14 + 36);
            v153 = *(v14 + 48);
          }

          else
          {
            *(v17 + 28) = *(v14 + 28);
            v153 = *(v14 + 40);
          }

          *(v17 + 20) = v153;
        }

        v154 = *(v14 + 1304);
        v155 = v154 == 0;
        if (v154)
        {
          v156 = (v14 + 16);
        }

        else
        {
          v156 = v14;
        }

        v157 = 394980;
        if (v155)
        {
          v157 = 394964;
        }

        *(v17 + 12) = *v156;
        *(v17 + 16) = *(v98 + v157);
        v158 = *(v14 + 1308);
        v159 = *(v14 + 24);
        *(v17 + 24) = v159;
        if (v158)
        {
          v159 = *(v14 + 26);
          *(v17 + 24) = v159;
        }

        if (v159 == 2)
        {
          v160 = 1;
        }

        else
        {
          v160 = 2;
        }

        if (v99[499])
        {
          v160 = 0;
        }

        *(v17 + 36) = v160;
        v161 = *(v14 + 1252);
        *(v17 + 8) = *(v14 + 1216);
        if (v161)
        {
          *(v17 + 8) = dword_277C31DF8[2 * v161 - 1];
        }

        if (*(v17 + 48) != 2)
        {
          v162 = *(v17 + 2116);
          if (v162)
          {
            *(v162 + 16960) = 0;
          }
        }

        *(v17 + 48) = 2;
        *(v12 + 7) = v454;
        *(v12 + 8) = v455;
        *(v12 + 9) = v456;
        *(v12 + 10) = v457;
        *(v12 + 3) = v450;
        *(v12 + 4) = v451;
        *(v12 + 5) = v452;
        *(v12 + 6) = v453;
        *v12 = v447;
        *(v12 + 1) = v448;
        *(v12 + 2) = v449;
        sub_277AA3A7C(v98, v97, a4, v422, &v444, &v434 + 1, &v433 + 1, &v431, &v432 + 1, &v447, v424);
        goto LABEL_325;
      }
    }

    else if (*(v14 + 1220) && (v39[1774] & 1) == 0 && v39[1772] != 1)
    {
      goto LABEL_300;
    }

    if ((!*(v14 + 1304) || (*(v98 + (v152 & 7) + 272256) | 2) == 2) && !*(v14 + 1308))
    {
      goto LABEL_325;
    }

    goto LABEL_300;
  }

  __na = *(v97 + 592);
  v123 = byte_277C3CAE8[a4] >> *(v97 + 440);
  v124 = byte_277C3CAFE[a4] >> *(v97 + 436);
  v125 = (a2 + 116272);
  if (*(a2 + 116280) < 1)
  {
    v148 = 0;
    goto LABEL_275;
  }

  v126 = 0;
  v127 = 0;
  v128 = 0;
  v394 = v123;
  v388 = v124;
  v407 = (v124 * v123);
  v402 = v17 + 2116;
  while (2)
  {
    v129 = (*v125 + v126);
    v130 = *v129;
    v131 = v129[2];
    *(v12 + 1) = v129[1];
    *(v12 + 2) = v131;
    *v12 = v130;
    v132 = v129[3];
    v133 = v129[4];
    v134 = v129[6];
    *(v12 + 5) = v129[5];
    *(v12 + 6) = v134;
    *(v12 + 3) = v132;
    *(v12 + 4) = v133;
    v135 = v129[7];
    v136 = v129[8];
    v137 = v129[10];
    *(v12 + 9) = v129[9];
    *(v12 + 10) = v137;
    *(v12 + 7) = v135;
    *(v12 + 8) = v136;
    v138 = v12[2];
    v139 = *(v14 + 1336);
    switch(v139)
    {
      case 3:
        if (v138 <= 0x18 && ((1 << v138) & 0x1390000) != 0 || v138 == 22 || !v12[144] || *v421 >= 128)
        {
          goto LABEL_228;
        }

        break;
      case 2:
        goto LABEL_228;
      case 1:
        if (*(v17 + 2164) < (64 - 48 * *v421 / 256))
        {
          break;
        }

LABEL_228:
        v140 = *(v12 + 167);
        if ((v140 & 0x80) == 0 && v12[16] < 1)
        {
          if (!*(v14 + 1220) || (v39[1774] & 1) != 0 || v39[1772] == 1)
          {
            goto LABEL_237;
          }

          goto LABEL_240;
        }

        if (v138 - 25 >= 0xFFFFFFF4 && *(v14 + 1224) != 0x7FFFFFFF && (v39[1773] & 1) == 0)
        {
          goto LABEL_240;
        }

LABEL_237:
        if (*(v14 + 1304) && (*(v98 + 272256 + (v140 & 7)) | 2) != 2 || *(v14 + 1308))
        {
LABEL_240:
          if (v12[142])
          {
            memcpy(__na, (*v428 + v126 + 232), v407);
          }

          v25 = *(v39 + 423) == 1;
          *(v17 + 44) = v25;
          *v17 = -NAN;
          *(v17 + 32) = *(v14 + 60);
          *(v17 + 40) = *(v14 + 72);
          if (v25)
          {
            v141 = 0;
            *(v17 + 28) = 1;
          }

          else if (*(v14 + 1316))
          {
            *(v17 + 28) = *(v14 + 36);
            v141 = *(v14 + 48);
          }

          else
          {
            *(v17 + 28) = *(v14 + 28);
            v141 = *(v14 + 40);
          }

          *(v17 + 20) = v141;
          v142 = (v14 + 16);
          if (!*(v14 + 1304))
          {
            v142 = v14;
          }

          v143 = 394980;
          if (!*(v14 + 1304))
          {
            v143 = 394964;
          }

          *(v17 + 12) = *v142;
          *(v17 + 16) = *(v98 + v143);
          v144 = *(v14 + 1308);
          v145 = *(v14 + 24);
          *(v17 + 24) = v145;
          if (v144)
          {
            v145 = *(v14 + 26);
            *(v17 + 24) = v145;
          }

          if (v145 == 2)
          {
            v146 = 1;
          }

          else
          {
            v146 = 2;
          }

          if (v426[499])
          {
            v146 = 0;
          }

          *(v17 + 36) = v146;
          v147 = *(v14 + 1252);
          *(v17 + 8) = *(v14 + 1216);
          if (v147)
          {
            *(v17 + 8) = dword_277C31DF8[2 * v147 - 1];
          }

          if (*(v17 + 48) != 2 && *v402)
          {
            *(*v402 + 16960) = 0;
          }

          *(v17 + 48) = 2;
          if (sub_277AA3A7C(v98, a2, a4, v422, &v444, &v434 + 1, &v433 + 1, &v431, &v432 + 1, &v447, v424))
          {
            v128 = v127;
          }
        }

        break;
      default:
        if (v139 < 4 || *(v14 + 1300) >= 5 && *v421 < 71 || !v12[144])
        {
          goto LABEL_228;
        }

        break;
    }

    ++v127;
    v125 = (a2 + 116272);
    v126 += 16624;
    if (v127 < *(a2 + 116280))
    {
      continue;
    }

    break;
  }

  v148 = v128;
  v99 = v426;
  v97 = a2;
  v123 = v394;
  v124 = v388;
LABEL_275:
  if (BYTE14(v455))
  {
    memcpy(__na, (*v428 + 16624 * v148 + 232), (v124 * v123));
  }

LABEL_325:
  *(v12 + 7) = v454;
  *(v12 + 8) = v455;
  *(v12 + 9) = v456;
  *(v12 + 10) = v457;
  *(v12 + 3) = v450;
  *(v12 + 4) = v451;
  *(v12 + 5) = v452;
  *(v12 + 6) = v453;
  *v12 = v447;
  *(v12 + 1) = v448;
  *(v12 + 2) = v449;
  memcpy(*(v97 + 8328), *(v424 + 408), *(v424 + 416));
  v149 = v444;
LABEL_326:
  v25 = *(v39 + 423) == 1;
  *(v17 + 44) = v25;
  *v17 = -NAN;
  *(v17 + 32) = *(v14 + 52);
  *(v17 + 40) = *(v14 + 64);
  if (v25)
  {
    v163 = 0;
    *(v17 + 28) = 1;
  }

  else
  {
    *(v17 + 28) = *(v14 + 28);
    v163 = *(v14 + 40);
  }

  *(v17 + 20) = v163;
  *(v17 + 12) = *v14;
  *(v17 + 16) = *(v14 + 4);
  v164 = *(v14 + 24);
  *(v17 + 24) = v164;
  if (v164 == 2)
  {
    v165 = 1;
  }

  else
  {
    v165 = 2;
  }

  if (v99[499])
  {
    v165 = 0;
  }

  *(v17 + 36) = v165;
  *(v17 + 8) = *(v14 + 1216);
  if (*(v17 + 48))
  {
    v166 = *(v17 + 2116);
    if (v166)
    {
      *(v166 + 16960) = 0;
    }
  }

  *(v17 + 48) = 0;
  if (v149 >= v420)
  {
    v167 = a3;
    *a3 = 0x7FFFFFFF;
  }

  else
  {
    v167 = a3;
    if (v398)
    {
      v168 = 0;
      goto LABEL_350;
    }

    if (*(v97 + 428) == 1 && !*(*v39 + 77))
    {
      v169 = **(v97 + 8280);
      v170 = *v169;
      if (*(v396 + 4 * (*(v169 + 167) & 7)))
      {
        if (!byte_277C3BCDE[4 * v170 + 2 * *(v97 + 3044) + *(v97 + 3048)])
        {
          goto LABEL_348;
        }
      }

      else if ((0x1F07FFuLL >> v170) & 1) != 0 && ((0x2F0BFFuLL >> v170))
      {
LABEL_348:
        memcpy((v97 + 151049), *(v424 + 280), *(v424 + 416));
        memcpy(*(v97 + 8328), *(v424 + 408), *(v424 + 416));
      }
    }

    sub_277A9FEC8();
    v168 = v434;
LABEL_350:
    v171 = *(v97 + 8304);
    v172 = *(v97 + 8296);
    if (v171)
    {
      v171 = *(v171 + 144);
    }

    v173 = SHIDWORD(v434) + v168;
    if (v172)
    {
      v174 = *(v172 + 144);
    }

    else
    {
      v174 = 0;
    }

    v175 = v173 + *(v97 + 35968 + 8 * (v174 + v171));
    *a3 = v175;
    v176 = v431;
    *(a3 + 1) = v431;
    v177 = ((*(a2 + 16920) * v175 + 256) >> 9) + (v176 << 7);
    *(a3 + 2) = v177;
    *(a3 + 32) = 0;
    v178 = v420;
    if (v177 >= v420)
    {
      v177 = v420;
    }

    if (v175 != 0x7FFFFFFF)
    {
      v178 = v177;
    }

    v420 = v178;
  }

  if ((*v99 & 0xFD) != 0 || v99[495] != 1 || !v99[496] || v39[898] != 1 || !*(v14 + 832) || *(v14 + 1424))
  {
    goto LABEL_529;
  }

  if (*(*v39 + 77))
  {
    v179 = 1;
  }

  else
  {
    v179 = 3;
  }

  v429 = v179;
  v180 = *(v97 + 416);
  v403 = byte_277C3CAFE[a4];
  v181 = *(v97 + 420);
  v423 = byte_277C3CAE8[a4];
  v182 = v99;
  v183 = *(*v39 + 36);
  v389 = **(v97 + 8280);
  sub_277978170(v182, v97 + 416, v389, 0, v97 + 16632, v97 + 8728, v97 + 10584, (v97 + 16664), v97 + 16696);
  *(v97 + 16400) = *(v97 + 10584);
  v184 = *(v97 + 8744);
  *(v97 + 15472) = *(v97 + 8728);
  *(v97 + 15488) = v184;
  v443 = 0;
  sub_277B1C5E0(0, v97 + 15472, 0, &v443 + 4, &v443);
  v185 = HIDWORD(v443);
  if (HIDWORD(v443) == -2147450880)
  {
    v185 = 0;
  }

  HIDWORD(v443) = v185;
  if (v443 == -2147450880)
  {
    v186 = 0;
  }

  else
  {
    v186 = v443;
  }

  LODWORD(v443) = v186;
  if (v185)
  {
    v187 = v185;
  }

  else
  {
    v187 = v186;
  }

  v442 = v187;
  if (!v187)
  {
    v188 = *(*v39 + 32);
    v189 = v180 - v188;
    v190 = (-32 * v188) & 0xFFE0;
    v191 = -134217728 - (v188 << 21);
    if (v189 >= *(v97 + 8256))
    {
      v187 = v190;
    }

    else
    {
      v187 = v191;
    }

    v442 = v187;
  }

  v414 = v180 >> v183;
  v417 = v181;
  __nb = v181 >> v183;
  *(v97 + 15472) = v187;
  sub_277A8B4EC((v97 + 416), __b, *(v97 + 8376), 0, 0, v429);
  v192 = 0;
  v193 = 480;
  do
  {
    v194 = (v97 + v193);
    v195 = *&__b[v192 + 2];
    *v194 = *&__b[v192];
    v194[1] = v195;
    v192 += 4;
    v193 += 2608;
  }

  while (4 * v429 != v192);
  v196 = v389[9];
  v473 = v389[8];
  v474 = v196;
  v475 = v389[10];
  v197 = v389[5];
  v469 = v389[4];
  v470 = v197;
  v198 = v389[7];
  v471 = v389[6];
  v472 = v198;
  v199 = v389[1];
  v465 = *v389;
  v466 = v199;
  v200 = v389[3];
  v467 = v389[2];
  v468 = v200;
  v201 = a3[1];
  v462 = *a3;
  v463 = v201;
  v464 = *(a3 + 4);
  bzero(__src, 0x400uLL);
  __memcpy_chk();
  v459 = 0u;
  v460 = 0u;
  v457 = 0u;
  v458 = 0u;
  v455 = 0u;
  v456 = 0u;
  v453 = 0u;
  v454 = 0u;
  v451 = 0u;
  v452 = 0u;
  v449 = 0u;
  v450 = 0u;
  v447 = 0u;
  v448 = 0u;
  v202 = *(v14 + 720);
  v203 = *(v14 + 724);
  v204 = v403;
  if (v403 >= v423)
  {
    v205 = v423;
  }

  else
  {
    v205 = v403;
  }

  if (v205 >= 0x20 && v203 == 1 || v205 >= 0x10 && v203 >= 2 && *(v97 + 89440) <= 3u && *v421 <= 191)
  {
    v206 = HIWORD(v187);
    if (v202 > 0xA)
    {
      LODWORD(v202) = 0;
    }

    else
    {
      LODWORD(v202) = byte_277C39598[v202];
    }
  }

  else
  {
    v206 = HIWORD(v187);
  }

  v397 = ((((v187 >= 0) + v206) << 13) + 24576) & 0xFFFF0000 | ((((v187 & 0x8000) == 0) + v187 + 3) >> 3);
  sub_277B99138(&v447, a1, v97, a4, &v442, ((((v187 >= 0) + v206) << 13) + 24576) & 0xFFFF0000 | ((((v187 & 0x8000) == 0) + v187 + 3) >> 3), a1 + 418944, v202, 0);
  v207 = 0;
  v208 = *v391;
  v209 = *v391 + 0x40000;
  HIDWORD(v455) = 1;
  v385 = 32 * v180;
  v370 = v209;
  v372 = v208;
  *(&v457 + 1) = v208;
  v210 = v417;
  v380 = 8 * v423;
  v377 = 8 * v403;
  v374 = (v417 >> 4) - 4;
  v458 = *(v209 + 8);
  v211 = v97 + 126604;
  v212 = v97 + 127644;
  v392 = v420;
  v395 = a2 + 126568;
  v213 = 1;
  v214 = v426;
  v399 = v180;
  while (2)
  {
    v430 = v213;
    DWORD2(v452) = 4 * (*(a2 + 8264) - v210);
    if (v207)
    {
      v215 = *(*v39 + 32);
      v216 = v215 * __nb;
      v217 = v215 * (v414 + 1);
      if (v217 >= *(a2 + 8260))
      {
        v217 = *(a2 + 8260);
      }
    }

    else
    {
      v216 = *(a2 + 8268);
      v217 = *(*v39 + 32) * v414;
    }

    v218 = 4 * (*(a2 + 8256) - v180);
    HIDWORD(v452) = 4 * (v216 - v210) - v204;
    LODWORD(v453) = v218;
    DWORD1(v453) = 4 * (v217 - v180) - v423;
    sub_277B993C4(&v452 + 2, v442, SHIWORD(v442));
    if (SHIDWORD(v452) < SDWORD2(v452) || SDWORD1(v453) < v453)
    {
      v210 = v417;
      v219 = v430;
      goto LABEL_506;
    }

    v220 = *(v14 + 1740);
    v441 = 0;
    v440 = 0;
    v439 = 0;
    v419 = v419 & 0xFFFFFFFF00000000 | v397;
    v221 = sub_277B99630(v397, &v447, v220, 0, &v441, &v439, 0);
    if (v214[495] != 1)
    {
      goto LABEL_493;
    }

    if (v426[496] != 1)
    {
      goto LABEL_493;
    }

    if ((*v426 & 0xFD) != 0)
    {
      goto LABEL_493;
    }

    v222 = byte_277C3CAFE[v447];
    if (v222 != byte_277C3CAE8[v447])
    {
      goto LABEL_493;
    }

    v367 = v447;
    v369 = v221;
    v223 = **(&v448 + 1);
    v224 = *(*(&v448 + 1) + 24);
    v225 = *(a2 + 416);
    v226 = *(a2 + 420);
    v227 = v222 >> 1;
    if ((*(*(a2 + 8376) + 192) & 8) != 0)
    {
      v238 = 0;
      v239 = 2 * v223;
      v240 = *v33;
      v241 = *(a2 + 126568);
      do
      {
        v242 = 0;
        do
        {
          v243 = 0;
          v244 = 0;
          v245 = (v239 + 2 * v238 * v224 + 2 * v242);
          LODWORD(v444) = *v245;
          DWORD1(v444) = *(v245 + 2 * v224);
          do
          {
            v244 = *(v211 + 4 * (*(&v444 + v243++) ^ (v244 >> (*(a2 + 126600) - 8)))) ^ (v244 << 8);
          }

          while (v243 != 8);
          v246 = 0;
          v247 = 0;
          v248 = (v242 >> 1) + (v238 >> 1) * v227;
          *(a2 + 126592) = v244;
          *(v240 + 4 * v248) = *(a2 + 127628) & v244;
          do
          {
            v247 = *(v212 + 4 * (*(&v444 + v246++) ^ (v247 >> (*(a2 + 127640) - 8)))) ^ (v247 << 8);
          }

          while (v246 != 8);
          *(a2 + 127632) = v247;
          *(v241 + 4 * v248) = *(a2 + 128668) & v247;
          v242 += 2;
        }

        while (v242 < v222);
        v238 += 2;
      }

      while (v238 < v222);
    }

    else
    {
      v228 = 0;
      v229 = *v33;
      v230 = *(a2 + 126568);
      do
      {
        v231 = 0;
        v232 = v223 + v228 * v224;
        do
        {
          v233 = 0;
          v234 = 0;
          LOWORD(v444) = *(v232 + v231);
          WORD1(v444) = *(v232 + v231 + v224);
          do
          {
            v234 = *(v211 + 4 * (*(&v444 + v233++) ^ (v234 >> (*(a2 + 126600) - 8)))) ^ (v234 << 8);
          }

          while (v233 != 4);
          v235 = 0;
          v236 = 0;
          v237 = (v231 >> 1) + (v228 >> 1) * v227;
          *(a2 + 126592) = v234;
          *(v229 + 4 * v237) = *(a2 + 127628) & v234;
          do
          {
            v236 = *(v212 + 4 * (*(&v444 + v235++) ^ (v236 >> (*(a2 + 127640) - 8)))) ^ (v236 << 8);
          }

          while (v235 != 4);
          *(a2 + 127632) = v236;
          *(v230 + 4 * v237) = *(a2 + 128668) & v236;
          v231 += 2;
        }

        while (v231 < v222);
        v228 += 2;
      }

      while (v228 < v222);
    }

    v249 = 0;
    v365 = 4 * v226;
    v366 = v225;
    v362 = v226;
    v364 = 4 * v225;
    v250 = 1;
    v251 = v222 >> 2;
    v252 = 4;
    do
    {
      v250 = 1 - v250;
      v249 = 1 - v249;
      if (v251)
      {
        v253 = 0;
        LODWORD(v254) = 0;
        v255 = v33[v250];
        v256 = v33[v249];
        v257 = *(v395 + 8 * v250);
        v258 = *(v395 + 8 * v249);
        do
        {
          v259 = 0;
          v254 = v254;
          do
          {
            v260 = 0;
            v261 = 0;
            v262 = 2 * v227 * v253 + 2 * v259;
            v263 = v262;
            *&v264 = *(v255 + 4 * v262);
            v265 = v262 + v227;
            *(&v264 + 1) = *(v255 + 4 * v265);
            v444 = v264;
            do
            {
              v261 = *(v211 + 4 * (*(&v444 + v260++) ^ (v261 >> (*(a2 + 126600) - 8)))) ^ (v261 << 8);
            }

            while (v260 != 16);
            v266 = 0;
            v267 = 0;
            *(a2 + 126592) = v261;
            *(v256 + 4 * v254) = *(a2 + 127628) & v261;
            *&v268 = *(v257 + 4 * v263);
            *(&v268 + 1) = *(v257 + 4 * v265);
            v444 = v268;
            do
            {
              v267 = *(v212 + 4 * (*(&v444 + v266++) ^ (v267 >> (*(a2 + 127640) - 8)))) ^ (v267 << 8);
            }

            while (v266 != 16);
            *(a2 + 127632) = v267;
            *(v258 + 4 * v254++) = *(a2 + 128668) & v267;
            ++v259;
          }

          while (v259 != v251);
          ++v253;
        }

        while (v253 != v251);
      }

      LODWORD(v227) = v251;
      v251 >>= 1;
      v252 *= 2;
    }

    while (v252 <= v222);
    v269 = *(*(a2 + 126584) + 8 * (**(a2 + 126552 + 8 * v249) | (sub_277AE4640(v222) << 16)));
    v39 = v418;
    v221 = v369;
    if (!v269 || (v270 = *v269, *v269 < 2))
    {
LABEL_493:
      v210 = v417;
      if (v221 != 0x7FFFFFFF)
      {
        LOWORD(v276) = v441;
        v310 = HIWORD(v441);
        v180 = v399;
        goto LABEL_496;
      }

      v180 = v399;
LABEL_504:
      v204 = v403;
      goto LABEL_505;
    }

    v271 = *(v269 + 16);
    if (v271)
    {
      v272 = *(v269 + 24);
    }

    else
    {
      v272 = 0;
    }

    v274 = v365;
    v273 = v366;
    v275 = v364;
    v276 = 0;
    v277 = **(v395 + 8 * v249);
    v278 = 32 * v366;
    v279 = 32 * v362;
    v280 = 8 * v222;
    v359 = 0x10003uLL >> v367;
    v358 = 0x20005uLL >> v367;
    v281 = (v362 >> 4) - 4;
    v282 = (v272 + 4);
    v363 = 0x7FFFFFFF;
    while (2)
    {
      if (v277 == *v282)
      {
        v283 = *(v282 - 1) - v275;
        v284 = v278 + (8 * v283);
        v285 = *(a2 + 8256);
        if (v284 >= 32 * v285)
        {
          v286 = v279 + (8 * (*(v282 - 2) - v274));
          v287 = *(a2 + 8264);
          if (v286 >= 32 * v287)
          {
            v288 = v284 + v280;
            if (v284 + v280 <= 32 * *(a2 + 8260))
            {
              v368 = *(v282 - 2) - v274;
              v289 = v286 + v280;
              v290 = *(a2 + 8268);
              if (v286 + v280 <= 32 * v290)
              {
                v360 = v281;
                v361 = v280;
                v291 = *(*v39 + 36);
                if (*(a2 + 428) == 1 && !*(*v39 + 77) && ((v359 & 1) != 0 && *(a2 + 3044) && v286 < 32 * v287 + 32 || (v358 & 1) != 0 && *(a2 + 3048) && v284 < 32 * v285 + 32))
                {
                  goto LABEL_486;
                }

                v292 = ((v288 >> 3) - 1) / (4 << v291);
                v293 = (v289 >> 3) - 1;
                v294 = ((v290 + ~v287) >> 4) + 1;
                v295 = v292 * v294 + (v293 >> 6);
                v296 = v281 + v294 * (v273 >> v291);
                v297 = (v273 >> v291) - v292;
                if (v273 >> v291 < v292 || v295 >= v296)
                {
                  v280 = v361;
                  goto LABEL_487;
                }

                v299 = v293 >> 6;
                v300 = 4 << v291 <= 64 ? 5 : 6;
                v280 = v361;
                if (v299 < v281 + v297 * v300 && v368 >= SDWORD2(v452) && v368 <= SHIDWORD(v452) && v283 >= v453)
                {
                  v354 = v278;
                  v355 = v277;
                  v356 = v271;
                  v357 = v276;
                  if (v283 > SDWORD1(v453))
                  {
                    v221 = v369;
                    v274 = v365;
                    v273 = v366;
                    v275 = v364;
                  }

                  else
                  {
                    DWORD2(v444) = 0;
                    *&v444 = 0;
                    v301 = (*(*(&v447 + 1) + 24))(**(&v448 + 1), *(*(&v448 + 1) + 24), *v448 + v368 + *(v448 + 24) * v283);
                    DWORD1(v444) = v301;
                    if (BYTE4(v457) == 4)
                    {
                      goto LABEL_480;
                    }

                    v302 = **(&v456 + 1);
                    v303 = (8 * v283 - v302);
                    v304 = *(*(&v456 + 1) + 2);
                    v305 = (8 * v368 - v304);
                    if (v303 < 0)
                    {
                      v303 = -v303;
                    }

                    if (v305 < 0)
                    {
                      v305 = -v305;
                    }

                    if (BYTE4(v457) == 3)
                    {
                      LODWORD(v306) = (v305 + v303) >> 3;
                    }

                    else if (BYTE4(v457) == 1)
                    {
                      LODWORD(v306) = (v305 + v303) >> 2;
                    }

                    else
                    {
                      if (!BYTE4(v457))
                      {
                        v306 = ((*(v458 + 4 * (8 * v283 - v302)) + *(*(&v458 + 1) + 4 * (8 * v368 - v304)) + *(*(&v457 + 1) + ((4 * (v304 != (8 * v368))) | (8 * (v302 != (8 * v283)))))) * v459 + 0x2000) >> 14;
                        goto LABEL_481;
                      }

LABEL_480:
                      LODWORD(v306) = 0;
                    }

LABEL_481:
                    v273 = v366;
                    v307 = v283 | (v368 << 16);
                    v308 = v306 + v301;
                    v309 = v363;
                    v275 = v364;
                    v276 = v357;
                    if (v308 < v363)
                    {
                      v276 = v307;
                      v309 = v308;
                    }

                    v363 = v309;
                    v39 = v418;
                    v221 = v369;
                    v274 = v365;
                  }

                  v271 = v356;
                  v278 = v354;
                  v277 = v355;
LABEL_486:
                  v281 = v360;
                  v280 = v361;
                }
              }
            }
          }
        }
      }

LABEL_487:
      v282 = (v282 + v271);
      if (--v270)
      {
        continue;
      }

      break;
    }

    if (v363 >= v221)
    {
      goto LABEL_493;
    }

    v441 = v276;
    v310 = HIWORD(v276);
    v180 = v399;
    v210 = v417;
LABEL_496:
    v311 = 8 * v310;
    v312 = (8 * v310) >> 3;
    if (v312 < SDWORD2(v452))
    {
      goto LABEL_504;
    }

    if (v312 > SHIDWORD(v452))
    {
      goto LABEL_504;
    }

    v313 = 8 * v276;
    v314 = ((8 * v276) >> 3);
    if (v314 < v453)
    {
      goto LABEL_504;
    }

    if (v314 > SDWORD1(v453))
    {
      goto LABEL_504;
    }

    v315 = v385 + v313;
    v316 = *(a2 + 8256);
    if (v315 < 32 * v316)
    {
      goto LABEL_504;
    }

    v317 = 32 * v417 + v311;
    v318 = *(a2 + 8264);
    if (v317 < 32 * v318)
    {
      goto LABEL_504;
    }

    if (v315 + v380 > 32 * *(a2 + 8260))
    {
      goto LABEL_504;
    }

    v319 = *(a2 + 8268);
    if (v317 + v377 > 32 * v319)
    {
      goto LABEL_504;
    }

    v320 = *(*v39 + 36);
    if (*(a2 + 428) == 1 && !*(*v39 + 77) && (((0x10003uLL >> a4) & 1) != 0 && *(a2 + 3044) && v317 < 32 * v318 + 32 || ((0x20005uLL >> a4) & 1) != 0 && *(a2 + 3048) && v315 < 32 * v316 + 32))
    {
      goto LABEL_504;
    }

    v321 = (((v315 + v380) >> 3) - 1) / (4 << v320);
    if (v180 >> v320 < v321)
    {
      goto LABEL_504;
    }

    v322 = ((v317 + v377) >> 3) - 1;
    if (v321 * (((v319 + ~v318) >> 4) + 1) + (v322 >> 6) >= v374 + (((v319 + ~v318) >> 4) + 1) * (v180 >> v320))
    {
      goto LABEL_504;
    }

    v323 = 4 << v320 <= 64 ? 5 : 6;
    if (v322 >> 6 >= v374 + ((v180 >> v320) - v321) * v323)
    {
      goto LABEL_504;
    }

    *(v389 + 71) = 0;
    *(v389 + 126) = 0u;
    *(v389 + 110) = 0u;
    *(v389 + 94) = 0u;
    *(v389 + 91) = 0;
    *(v389 + 167) |= 0x80u;
    *(v389 + 1) = 0;
    *(v389 + 24) = 0;
    *(v389 + 2) = (v310 << 19) | (8 * v276);
    *(v389 + 5) = 196611;
    *(v389 + 144) = 0;
    sub_2779CCAB4();
    v324 = *(*(v370 + 8) + 4 * (v313 - v442)) + *(*(v370 + 16) + 4 * (v311 - HIWORD(v442))) + *(v372 + ((4 * (HIWORD(v442) != v311)) | (8 * (v313 != v442))));
    v325 = *(a2 + 29644);
    v446 = 0;
    v444 = 0u;
    v445 = 0u;
    v438 = 0;
    memset(v437, 0, sizeof(v437));
    v436 = 0;
    memset(v435, 0, sizeof(v435));
    if (sub_277A45FBC(a1, a2, a4, &v444, v437, v435, v325 + ((120 * v324 + 64) >> 7), 0x7FFFFFFFFFFFFFFFLL))
    {
      v326 = ((*(a2 + 16920) * v444 + 256) >> 9) + (*(&v444 + 1) << 7);
      *&v445 = v326;
      if (v326 < v392)
      {
        v327 = v389[9];
        v473 = v389[8];
        v474 = v327;
        v475 = v389[10];
        v328 = v389[5];
        v469 = v389[4];
        v470 = v328;
        v329 = v389[7];
        v471 = v389[6];
        v472 = v329;
        v330 = v389[1];
        v465 = *v389;
        v466 = v330;
        v331 = v389[3];
        v467 = v389[2];
        v468 = v331;
        v462 = v444;
        v463 = v445;
        v464 = v446;
        __memcpy_chk();
        __memcpy_chk();
        v392 = v326;
      }
    }

    v39 = v418;
    v180 = v399;
    v204 = v403;
    v210 = v417;
LABEL_505:
    v219 = v430;
    v214 = v426;
LABEL_506:
    v213 = 0;
    v207 = 1;
    if (v219)
    {
      continue;
    }

    break;
  }

  v332 = v470;
  v389[4] = v469;
  v389[5] = v332;
  v333 = v475;
  v389[9] = v474;
  v389[10] = v333;
  v334 = v473;
  v389[7] = v472;
  v389[8] = v334;
  v389[6] = v471;
  v335 = v466;
  *v389 = v465;
  v389[1] = v335;
  v336 = v468;
  v389[2] = v467;
  v389[3] = v336;
  v337 = v463;
  v167 = a3;
  *a3 = v462;
  a3[1] = v337;
  *(a3 + 4) = v464;
  v97 = a2;
  memcpy((a2 + 151049), __src, *(a2 + 8724) * *(a2 + 8725));
  memcpy(*(a2 + 8328), v461, *(v424 + 416));
  if (v392 < v420)
  {
    *(v424 + 456) = *(v390 + 144);
    memcpy(*(v424 + 280), (a2 + 151049), *(v424 + 416));
  }

LABEL_529:
  if (*v167 != 0x7FFFFFFF)
  {
    v338 = **(v97 + 8280);
    v339 = v338[6];
    v341 = v338[3];
    v340 = v338[4];
    *(v424 + 80) = v338[5];
    *(v424 + 96) = v339;
    *(v424 + 48) = v341;
    *(v424 + 64) = v340;
    v342 = v338[10];
    v344 = v338[7];
    v343 = v338[8];
    *(v424 + 144) = v338[9];
    *(v424 + 160) = v342;
    *(v424 + 112) = v344;
    *(v424 + 128) = v343;
    v345 = *v338;
    v346 = v338[2];
    *(v424 + 16) = v338[1];
    *(v424 + 32) = v346;
    *v424 = v345;
    v347 = **(v97 + 8280);
    v348 = *(v347 + 17);
    v349 = *(v347 + 16);
    if (v348 >= 1)
    {
      if (v348 >= 5u && v349 < 5)
      {
LABEL_537:
        LOBYTE(v349) = v349 + 4 * v348 - 13;
      }

      else
      {
        v350 = 0;
        while (byte_277C3BCCC[v350] != v349 || v348 != byte_277C3BCD5[v350])
        {
          if (++v350 == 9)
          {
            goto LABEL_537;
          }
        }

        LOBYTE(v349) = v350 + 20;
      }
    }

    v351 = (v97 + 15472 + 32 * v349);
    v352 = v351[1];
    *(v424 + 176) = *v351;
    *(v424 + 192) = v352;
    *(v424 + 208) = *(v97 + 8 * v349 + 16400);
    *(v424 + 252) = *(v97 + 2 * v349 + 16696);
    *(v424 + 216) = *(v97 + v349 + 16632);
    v353 = *(v97 + 16664);
    *(v424 + 236) = *(v97 + 16680);
    *(v424 + 220) = v353;
    memcpy(*(v424 + 408), *(v97 + 8328), *(v424 + 416));
  }
}