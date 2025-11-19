_OWORD *sub_2779E9598(_OWORD *result, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *result;
    v3 += 16;
    result = (result + 2 * a3);
  }

  while (v3 != 256);
  for (i = 0; i != 256; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  v5 = 0;
  v6 = vdupq_n_s16(0x2D42u);
  do
  {
    *(a2 + v5) = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*&v7[v5], *v6.i8), 0xCuLL), vmull_high_s16(*&v7[v5], v6), 0xCuLL);
    v5 += 16;
  }

  while (v5 != 256);
  return result;
}

int16x8_t *sub_2779E9660(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v106 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v90 + v4) = *result;
    v4 += 16;
    result = (result + 2 * a3);
  }

  while (v4 != 256);
  for (i = 0; i != 256; i += 16)
  {
    *(&v90 + i) = vshlq_n_s16(*(&v90 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6, 3), *v98.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6, 3), v98, *v6, 0), 0xDuLL);
  v9 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6, 2), *v98.i8, *v6, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6, 2), v98, *v6, 3), 0xDuLL);
  v10 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v6, 1), *v94.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v6, 1), v94, *v6, 0), 0xDuLL);
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v6, 2), *v94.i8, *v6, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v6, 2), v94, *v6, 1), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6, 1), *v96.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6, 1), v96, *v6, 0), 0xDuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6, 2), *v96.i8, *v6, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6, 2), v96, *v6, 1), 0xDuLL);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v6, 3), *v100.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v6, 3), v100, *v6, 0), 0xDuLL);
  v15 = xmmword_277BEB8A0[16 * a4 - 156];
  v16 = xmmword_277BEB8A0[16 * a4 - 155];
  v17 = xmmword_277BEB8A0[16 * a4 - 154];
  v18 = xmmword_277BEB8A0[16 * a4 - 153];
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v6, 2), *v100.i8, *v6, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v6, 2), v100, *v6, 3), 0xDuLL);
  v20 = vqaddq_s16(v90, v8);
  v21 = vqsubq_s16(v9, v105);
  v22 = vqsubq_s16(v90, v8);
  v23 = vqaddq_s16(v105, v9);
  v24 = vqsubq_s16(v11, v93);
  v25 = vqaddq_s16(v102, v10);
  v26 = vqaddq_s16(v93, v11);
  v27 = vqsubq_s16(v102, v10);
  v28 = vqsubq_s16(v13, v91);
  v29 = vqaddq_s16(v104, v12);
  v30 = vqaddq_s16(v91, v13);
  v31 = vqsubq_s16(v104, v12);
  v32 = vqaddq_s16(v92, v14);
  v33 = vqsubq_s16(v19, v103);
  v34 = vqsubq_s16(v92, v14);
  v35 = vqaddq_s16(v103, v19);
  v36 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v6->i8, 5), *v24.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v6->i8, 5), v24, *v6->i8, 4), 0xDuLL);
  v37 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v6->i8, 6), *v24.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v6->i8, 6), v24, *v6->i8, 5), 0xDuLL);
  v38 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, *v6->i8, 5), *v27.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, *v6->i8, 5), v27, *v6->i8, 4), 0xDuLL);
  v39 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, *v6->i8, 6), *v27.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, *v6->i8, 6), v27, *v6->i8, 5), 0xDuLL);
  v40 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, *v6->i8, 5), *v32.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, *v6->i8, 5), v32, *v6->i8, 4), 0xDuLL);
  v41 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, *v6->i8, 6), *v32.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, *v6->i8, 6), v32, *v6->i8, 5), 0xDuLL);
  v42 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v35.i8, *v6->i8, 7), *v34.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v35, *v6->i8, 7), v34, *v6->i8, 4), 0xDuLL);
  v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v35.i8, *v6->i8, 6), *v34.i8, *v6->i8, 7), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v35, *v6->i8, 6), v34, *v6->i8, 7), 0xDuLL);
  v44 = vqaddq_s16(v20, v36);
  v45 = vqaddq_s16(v21, v37);
  v46 = vqaddq_s16(v22, v38);
  v47 = vqsubq_s16(v39, v23);
  v48 = vqsubq_s16(v20, v36);
  v49 = vqsubq_s16(v21, v37);
  v50 = vqsubq_s16(v22, v38);
  v51 = vqaddq_s16(v23, v39);
  v52 = vqaddq_s16(v28, v40);
  v53 = vqaddq_s16(v29, v41);
  v54 = vqsubq_s16(v43, v30);
  v55 = vqaddq_s16(v31, v42);
  v56 = vqsubq_s16(v28, v40);
  v57 = vqsubq_s16(v29, v41);
  v58 = vqaddq_s16(v30, v43);
  v59 = vqsubq_s16(v31, v42);
  v60 = vmlal_lane_s16(vmull_lane_s16(*v53.i8, *v7.i8, 2), *v52.i8, *v7.i8, 1);
  v61 = vmlal_high_lane_s16(vmull_high_lane_s16(v53, *v7.i8, 2), v52, *v7.i8, 1);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v53.i8, *v7.i8, 1), *v52.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v53, *v7.i8, 1), v52, *v7.i8, 0), 0xDuLL);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(v60, 0xDuLL), v61, 0xDuLL);
  v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v55.i8, v7, 4), *v54.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v55, v7, 4), v54, v7, 5), 0xDuLL);
  v65 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v55.i8, v7, 7), *v54.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v55, v7, 7), v54, v7, 4), 0xDuLL);
  v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v7.i8, 0), *v57.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v7.i8, 0), v57, *v7.i8, 1), 0xDuLL);
  v67 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v7.i8, 3), *v57.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v7.i8, 3), v57, *v7.i8, 0), 0xDuLL);
  v68 = vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v7, 4), *v59.i8, v7, 5);
  v69 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v58, v7, 4), v59, v7, 5);
  v70 = vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v7, 7), *v59.i8, v7, 4);
  v71 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v58, v7, 7), v59, v7, 4);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v68, 0xDuLL), v69, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xDuLL), v71, 0xDuLL);
  v74 = vqaddq_s16(v44, v62);
  v75 = vqaddq_s16(v45, v63);
  v76 = vqaddq_s16(v46, v64);
  v77 = vqaddq_s16(v47, v65);
  v78 = vqaddq_s16(v48, v67);
  v79 = vqaddq_s16(v49, v66);
  v80 = vqaddq_s16(v50, v72);
  v81 = vqsubq_s16(v73, v51);
  v82 = vqsubq_s16(v44, v62);
  v83 = vqsubq_s16(v45, v63);
  v84 = vqsubq_s16(v46, v64);
  v85 = vqsubq_s16(v47, v65);
  v86 = vqsubq_s16(v48, v67);
  v87 = vqsubq_s16(v49, v66);
  v88 = vqsubq_s16(v50, v72);
  v89 = vqaddq_s16(v51, v73);
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v81.i8, *v18.i8, 2), *v80.i8, *v18.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v81, *v18.i8, 2), v80, *v18.i8, 1), 0xDuLL);
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v83.i8, v18, 4), *v82.i8, v18, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v83, v18, 4), v82, v18, 5), 0xDuLL);
  a2[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v83.i8, v18, 7), *v82.i8, v18, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v83, v18, 7), v82, v18, 4), 0xDuLL);
  a2[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v81.i8, *v18.i8, 1), *v80.i8, *v18.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v81, *v18.i8, 1), v80, *v18.i8, 0), 0xDuLL);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v79.i8, *v17.i8, 2), *v78.i8, *v17.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v79, *v17.i8, 2), v78, *v17.i8, 1), 0xDuLL);
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v85.i8, v17, 4), *v84.i8, v17, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v85, v17, 4), v84, v17, 5), 0xDuLL);
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v85.i8, v17, 7), *v84.i8, v17, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v85, v17, 7), v84, v17, 4), 0xDuLL);
  a2[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v79.i8, *v17.i8, 1), *v78.i8, *v17.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v79, *v17.i8, 1), v78, *v17.i8, 0), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v77.i8, *v16.i8, 2), *v76.i8, *v16.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v77, *v16.i8, 2), v76, *v16.i8, 1), 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v87.i8, v16, 4), *v86.i8, v16, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v87, v16, 4), v86, v16, 5), 0xDuLL);
  a2[12] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v87.i8, v16, 7), *v86.i8, v16, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v87, v16, 7), v86, v16, 4), 0xDuLL);
  a2[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v77.i8, *v16.i8, 1), *v76.i8, *v16.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v77, *v16.i8, 1), v76, *v16.i8, 0), 0xDuLL);
  a2[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v89.i8, v15, 5), *v88.i8, v15, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v89, v15, 5), v88, v15, 4), 0xDuLL);
  a2[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v75.i8, *v15.i8, 1), *v74.i8, *v15.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v75, *v15.i8, 1), v74, *v15.i8, 0), 0xDuLL);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v75.i8, *v15.i8, 2), *v74.i8, *v15.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v75, *v15.i8, 2), v74, *v15.i8, 1), 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v89.i8, v15, 6), *v88.i8, v15, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v89, v15, 6), v88, v15, 5), 0xDuLL);
  return result;
}

_OWORD *sub_2779E9BEC(_OWORD *result, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v102 = *MEMORY[0x277D85DE8];
  do
  {
    *&v84[v4] = *result;
    v4 += 16;
    result = (result + 2 * a3);
  }

  while (v4 != 256);
  for (i = 0; i != 256; i += 16)
  {
    *&v84[i] = vshlq_n_s16(*&v84[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v9 = xmmword_277BEB8A0[16 * a4 - 158];
  v10 = xmmword_277BEB8A0[16 * a4 - 157];
  for (j = 240; j != 112; j -= 16)
  {
    *&v93[v6] = vqaddq_s16(*&v84[v6], *&v84[j]);
    v6 += 16;
  }

  v12 = 112;
  v13 = 128;
  do
  {
    *&v93[v13] = vqsubq_s16(*&v84[v12], *&v84[v13]);
    v12 -= 16;
    v13 += 16;
  }

  while (v12 != -16);
  v14 = 0;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v85 + v14) = vqaddq_s16(*&v93[v14], *&v93[k]);
    v14 += 16;
  }

  v16 = 48;
  v17 = 64;
  do
  {
    *(&v85 + v17) = vqsubq_s16(*&v93[v16], *&v93[v17]);
    v16 -= 16;
    v17 += 16;
  }

  while (v16 != -16);
  v18 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v96.i8, *v8.i8, 1), *v99.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v96, *v8.i8, 1), v99, *v8.i8, 0), 0xDuLL);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v96.i8, *v8.i8, 2), *v99.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v96, *v8.i8, 2), v99, *v8.i8, 1), 0xDuLL);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v8.i8, 1), *v98.i8, *v8.i8, 0);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v8.i8, 1), v98, *v8.i8, 0);
  v22 = vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v8.i8, 2), *v98.i8, *v8.i8, 1);
  v23 = vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v8.i8, 2), v98, *v8.i8, 1);
  v24 = vqaddq_s16(v85, v88);
  v25 = vqaddq_s16(v86, v87);
  v26 = vqsubq_s16(v86, v87);
  v27 = vqsubq_s16(v85, v88);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v90.i8, *v8.i8, 1), *v91.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v90, *v8.i8, 1), v91, *v8.i8, 0), 0xDuLL);
  v29 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v90.i8, *v8.i8, 2), *v91.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v90, *v8.i8, 2), v91, *v8.i8, 1), 0xDuLL);
  v30 = vqaddq_s16(v95, v19);
  v31 = vqsubq_s16(v95, v19);
  v32 = vqsubq_s16(v100, v18);
  v33 = vqaddq_s16(v100, v18);
  v34 = vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v8.i8, 1), *v24.i8, *v8.i8, 0);
  v35 = vmlal_high_lane_s16(vmull_high_lane_s16(v25, *v8.i8, 1), v24, *v8.i8, 0);
  v36 = vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v8.i8, 2), *v24.i8, *v8.i8, 1);
  v37 = vmlal_high_lane_s16(vmull_high_lane_s16(v25, *v8.i8, 2), v24, *v8.i8, 1);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v8, 5), *v27.i8, v8, 4);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, v8, 5), v27, v8, 4);
  v40 = vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v8, 6), *v27.i8, v8, 5);
  v41 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, v8, 6), v27, v8, 5);
  v42 = vqaddq_s16(v89, v29);
  v43 = vqsubq_s16(v89, v29);
  v44 = vqsubq_s16(v92, v28);
  v45 = vqaddq_s16(v92, v28);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v8, 5), *v33.i8, v8, 4);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v8, 5), v33, v8, 4);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v8, 6), *v33.i8, v8, 5);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v8, 6), v33, v8, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v8, 6), *v32.i8, v8, 5);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v8, 6), v32, v8, 5);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v8, 7), *v32.i8, v8, 6);
  v53 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v8, 7), v32, v8, 6);
  v54 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v7.i8, 1), *v45.i8, *v7.i8, 0);
  v55 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v7.i8, 1), v45, *v7.i8, 0);
  v56 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v7.i8, 2), *v45.i8, *v7.i8, 1);
  v57 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v7.i8, 2), v45, *v7.i8, 1);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(*v43.i8, v7, 4), *v44.i8, v7, 5);
  v59 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v43, v7, 4), v44, v7, 5);
  v60 = vmlal_laneq_s16(vmull_laneq_s16(*v43.i8, v7, 7), *v44.i8, v7, 4);
  v61 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v43, v7, 7), v44, v7, 4);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(v22, 0xDuLL), v23, 0xDuLL);
  v64 = vqaddq_s16(v94, v63);
  v65 = vqsubq_s16(v94, v63);
  v66 = vqsubq_s16(v101, v62);
  v67 = vqaddq_s16(v101, v62);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v70 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xDuLL), v41, 0xDuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v74 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v75 = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v76 = vqaddq_s16(v64, v73);
  v77 = vqsubq_s16(v64, v73);
  v78 = vqsubq_s16(v65, v75);
  v79 = vqaddq_s16(v65, v75);
  v80 = vqaddq_s16(v66, v74);
  v81 = vqsubq_s16(v66, v74);
  v82 = vqsubq_s16(v67, v72);
  v83 = vqaddq_s16(v67, v72);
  *a2 = v68;
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v9.i8, 1), *v83.i8, *v9.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v9.i8, 1), v83, *v9.i8, 0), 0xDuLL);
  a2[14] = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
  a2[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v9.i8, 2), *v83.i8, *v9.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v9.i8, 2), v83, *v9.i8, 1), 0xDuLL);
  a2[8] = v69;
  a2[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v10, 4), *v82.i8, v10, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v10, 4), v82, v10, 5), 0xDuLL);
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(v60, 0xDuLL), v61, 0xDuLL);
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v10, 7), *v82.i8, v10, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v10, 7), v82, v10, 4), 0xDuLL);
  a2[4] = v70;
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v10.i8, 1), *v81.i8, *v10.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v78, *v10.i8, 1), v81, *v10.i8, 0), 0xDuLL);
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xDuLL), v59, 0xDuLL);
  a2[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v10.i8, 2), *v81.i8, *v10.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v78, *v10.i8, 2), v81, *v10.i8, 1), 0xDuLL);
  a2[12] = v71;
  a2[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v79.i8, v9, 4), *v80.i8, v9, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v79, v9, 4), v80, v9, 5), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v79.i8, v9, 7), *v80.i8, v9, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v79, v9, 7), v80, v9, 4), 0xDuLL);
  return result;
}

uint64_t sub_2779EA094(__int16 *a1, int32x4_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = a3;
  v70 = a1;
  STACK[0x1938] = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> a4))
  {
    *&STACK[0x1110] = 0u;
    *&STACK[0x1100] = 0u;
    *&STACK[0x10F0] = 0u;
    *&STACK[0x10E0] = 0u;
    sub_277A78D0C(a4, 9u, &STACK[0x10E0]);
    return sub_277A78E90(v70, a2, v68, &STACK[0x10E0], &STACK[0x1120], a5);
  }

  v171 = off_28866D7A0[a4];
  v71 = 1;
  v169 = off_28866DBA0[a4];
  if (a4 > 0xF)
  {
    goto LABEL_21;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
LABEL_9:
    v168 = v71;
    v70 = &a1[31 * a3];
    v68 = -a3;
    goto LABEL_10;
  }

  if (((1 << a4) & 0x80A0) == 0)
  {
    if (a4 == 6)
    {
      v71 = 0;
      goto LABEL_9;
    }

LABEL_21:
    v168 = 1;
    goto LABEL_10;
  }

  v168 = 0;
LABEL_10:
  v74 = 0;
  v75 = &v172;
  v76 = 1;
  do
  {
    v77 = v76;
    (v171)(&v70[v74], &STACK[0x1120], v68, 12);
    for (i = 0; i != 512; i += 16)
    {
      *(&STACK[0x1120] + i) = vrshrq_n_s16(*(&STACK[0x1120] + i), 4uLL);
    }

    v76 = 0;
    v79 = vtrn1q_s16(*&STACK[0x1120], *&STACK[0x1130]);
    v80 = vtrn2q_s16(*&STACK[0x1120], *&STACK[0x1130]);
    v81 = vtrn1q_s16(*&STACK[0x1140], *&STACK[0x1150]);
    v82 = vtrn2q_s16(*&STACK[0x1140], *&STACK[0x1150]);
    v83 = vtrn1q_s16(*&STACK[0x1160], *&STACK[0x1170]);
    v84 = vtrn2q_s16(*&STACK[0x1160], *&STACK[0x1170]);
    v85 = vtrn1q_s16(*&STACK[0x1180], *&STACK[0x1190]);
    v86 = vtrn2q_s16(*&STACK[0x1180], *&STACK[0x1190]);
    v87 = vtrn1q_s32(v79, v81);
    v88 = vtrn1q_s32(v80, v82);
    v89 = vtrn1q_s32(v83, v85);
    v90 = vzip2q_s64(v87, v89);
    v87.i64[1] = v89.i64[0];
    v91 = vtrn1q_s32(v84, v86);
    v92 = vzip2q_s64(v88, v91);
    v88.i64[1] = v91.i64[0];
    v93 = vtrn2q_s32(v79, v81);
    v94 = vtrn2q_s32(v83, v85);
    v95 = vzip2q_s64(v93, v94);
    v93.i64[1] = v94.i64[0];
    v96 = vtrn2q_s32(v80, v82);
    v97 = vtrn2q_s32(v84, v86);
    v98 = vzip2q_s64(v96, v97);
    v96.i64[1] = v97.i64[0];
    *v75 = v87;
    v75[1] = v88;
    v75[2] = v93;
    v75[3] = v96;
    v75[4] = v90;
    v75[5] = v92;
    v75[6] = v95;
    v75[7] = v98;
    v99 = (&a37 + 2 * v74);
    v100 = vtrn1q_s16(*&STACK[0x11A0], *&STACK[0x11B0]);
    v101 = vtrn2q_s16(*&STACK[0x11A0], *&STACK[0x11B0]);
    v102 = vtrn1q_s16(*&STACK[0x11C0], *&STACK[0x11D0]);
    v103 = vtrn2q_s16(*&STACK[0x11C0], *&STACK[0x11D0]);
    v104 = vtrn1q_s16(*&STACK[0x11E0], *&STACK[0x11F0]);
    v105 = vtrn2q_s16(*&STACK[0x11E0], *&STACK[0x11F0]);
    v106 = vtrn1q_s16(*&STACK[0x1200], *&STACK[0x1210]);
    v107 = vtrn2q_s16(*&STACK[0x1200], *&STACK[0x1210]);
    v108 = vtrn1q_s32(v100, v102);
    v109 = vtrn2q_s32(v100, v102);
    v110 = vtrn1q_s32(v101, v103);
    v111 = vtrn2q_s32(v101, v103);
    v112 = vtrn1q_s32(v104, v106);
    v113 = vtrn2q_s32(v104, v106);
    v114 = vtrn1q_s32(v105, v107);
    v115 = vtrn2q_s32(v105, v107);
    v116 = vzip2q_s64(v108, v112);
    v108.i64[1] = v112.i64[0];
    v117 = vzip2q_s64(v110, v114);
    v110.i64[1] = v114.i64[0];
    v118 = vzip2q_s64(v109, v113);
    v109.i64[1] = v113.i64[0];
    v119 = vzip2q_s64(v111, v115);
    v111.i64[1] = v115.i64[0];
    *v99 = v108;
    v99[1] = v110;
    v99[2] = v109;
    v99[3] = v111;
    v99[4] = v116;
    v99[5] = v117;
    v99[6] = v118;
    v99[7] = v119;
    v120 = vtrn1q_s16(*&STACK[0x1220], *&STACK[0x1230]);
    v121 = vtrn2q_s16(*&STACK[0x1220], *&STACK[0x1230]);
    v122 = vtrn1q_s16(*&STACK[0x1240], *&STACK[0x1250]);
    v123 = vtrn2q_s16(*&STACK[0x1240], *&STACK[0x1250]);
    v124 = vtrn1q_s16(*&STACK[0x1260], *&STACK[0x1270]);
    v125 = vtrn2q_s16(*&STACK[0x1260], *&STACK[0x1270]);
    v126 = vtrn1q_s16(*&STACK[0x1280], *&STACK[0x1290]);
    v127 = vtrn2q_s16(*&STACK[0x1280], *&STACK[0x1290]);
    v128 = vtrn1q_s32(v120, v122);
    v129 = vtrn2q_s32(v120, v122);
    v130 = vtrn1q_s32(v121, v123);
    v131 = vtrn2q_s32(v121, v123);
    v132 = vtrn1q_s32(v124, v126);
    v133 = vtrn2q_s32(v124, v126);
    v134 = vtrn1q_s32(v125, v127);
    v135 = vtrn2q_s32(v125, v127);
    v136 = vzip2q_s64(v128, v132);
    v128.i64[1] = v132.i64[0];
    v137 = vzip2q_s64(v130, v134);
    v130.i64[1] = v134.i64[0];
    v138 = vzip2q_s64(v129, v133);
    v129.i64[1] = v133.i64[0];
    v139 = vzip2q_s64(v131, v135);
    v131.i64[1] = v135.i64[0];
    v140 = (&a68 + 2 * v74);
    *v140 = v128;
    v140[1] = v130;
    v140[2] = v129;
    v140[3] = v131;
    v140[4] = v136;
    v140[5] = v137;
    v140[6] = v138;
    v140[7] = v139;
    v141 = &STACK[0xFE0] + 2 * v74;
    v142 = vtrn1q_s16(*&STACK[0x12A0], *&STACK[0x12B0]);
    v143 = vtrn2q_s16(*&STACK[0x12A0], *&STACK[0x12B0]);
    v144 = vtrn1q_s16(*&STACK[0x12C0], *&STACK[0x12D0]);
    v145 = vtrn2q_s16(*&STACK[0x12C0], *&STACK[0x12D0]);
    v146 = vtrn1q_s16(*&STACK[0x12E0], *&STACK[0x12F0]);
    v147 = vtrn2q_s16(*&STACK[0x12E0], *&STACK[0x12F0]);
    v148 = vtrn1q_s16(*&STACK[0x1300], *&STACK[0x1310]);
    v149 = vtrn2q_s16(*&STACK[0x1300], *&STACK[0x1310]);
    v150 = vtrn1q_s32(v142, v144);
    v151 = vtrn2q_s32(v142, v144);
    v152 = vtrn1q_s32(v143, v145);
    v153 = vtrn2q_s32(v143, v145);
    v154 = vtrn1q_s32(v146, v148);
    v155 = vtrn2q_s32(v146, v148);
    v156 = vtrn1q_s32(v147, v149);
    v157 = vtrn2q_s32(v147, v149);
    v158 = vzip2q_s64(v150, v154);
    v150.i64[1] = v154.i64[0];
    v159 = vzip2q_s64(v152, v156);
    v152.i64[1] = v156.i64[0];
    v160 = vzip2q_s64(v151, v155);
    v151.i64[1] = v155.i64[0];
    v161 = vzip2q_s64(v153, v157);
    v153.i64[1] = v157.i64[0];
    *v141 = v150;
    *(v141 + 1) = v152;
    *(v141 + 2) = v151;
    *(v141 + 3) = v153;
    *(v141 + 4) = v158;
    *(v141 + 5) = v159;
    v75 = &a21;
    *(v141 + 6) = v160;
    *(v141 + 7) = v161;
    v74 = 8;
  }

  while ((v77 & 1) != 0);
  v162 = 0;
  v163 = &v172;
  do
  {
    if (v168)
    {
      v164 = (&v172 + 32 * v162);
    }

    else
    {
      v165 = v163;
      for (j = 240; j != -16; j -= 16)
      {
        v167 = *v165++;
        v164 = &STACK[0x1120];
        *(&STACK[0x1120] + j) = v167;
      }
    }

    result = (v169)(v164, &a2[2 * v162++], 32, 13);
    v163 += 32;
  }

  while (v162 != 4);
  return result;
}

uint64_t sub_2779EA504(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x2D42u);
  do
  {
    *&v9[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(result + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(result + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 256);
  v5 = 0;
  v6 = a2 + 1;
  v7 = vdupq_n_s16(0x16A1u);
  do
  {
    v8 = *&v9[v5];
    v6[-1] = vrshrq_n_s32(vmull_s16(*v8.i8, *v7.i8), 0xCuLL);
    *v6 = vrshrq_n_s32(vmull_high_s16(v8, v7), 0xCuLL);
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 256);
  return result;
}

int16x8_t *sub_2779EA5C8(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v110 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = result[6];
  v7 = result[7];
  v9 = result[8];
  v10 = result[9];
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 3), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 3), v9, *v5, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 2), *v9.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 2), v9, *v5, 3), 0xDuLL);
  v14 = result[10];
  v13 = result[11];
  v15 = result[4];
  v16 = result[5];
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 1), *v15.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 1), v15, *v5, 0), 0xDuLL);
  v18 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 2), *v15.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 2), v15, *v5, 1), 0xDuLL);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 1), *v8.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 1), v8, *v5, 0), 0xDuLL);
  v20 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 2), *v8.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 2), v8, *v5, 1), 0xDuLL);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 2), v14, *v5, 3);
  v22 = vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 2), *v14.i8, *v5, 3), 0xDuLL);
  v23 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 3), *v14.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 3), v14, *v5, 0), 0xDuLL);
  v24 = xmmword_277BEB8A0[16 * a4 - 156];
  v25 = xmmword_277BEB8A0[16 * a4 - 155];
  v26 = xmmword_277BEB8A0[16 * a4 - 154];
  v27 = xmmword_277BEB8A0[16 * a4 - 153];
  v28 = vrshrn_high_n_s32(v22, v21, 0xDuLL);
  v29 = result[1];
  v30 = vqaddq_s16(*result, v11);
  v32 = result[14];
  v31 = result[15];
  v33 = vqsubq_s16(v12, v31);
  v34 = vqsubq_s16(*result, v11);
  v35 = vqaddq_s16(v31, v12);
  v37 = result[2];
  v36 = result[3];
  v38 = vqsubq_s16(v18, v36);
  v39 = result[12];
  v40 = result[13];
  v41 = vqaddq_s16(v39, v17);
  v42 = vqaddq_s16(v36, v18);
  v43 = vqsubq_s16(v39, v17);
  v44 = vqsubq_s16(v20, v29);
  v45 = vqaddq_s16(v32, v19);
  v46 = vqaddq_s16(v29, v20);
  v47 = vqsubq_s16(v32, v19);
  v48 = vqaddq_s16(v37, v23);
  v49 = vqsubq_s16(v28, v40);
  v50 = vqsubq_s16(v37, v23);
  v51 = vqaddq_s16(v40, v28);
  v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 5), *v38.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 5), v38, *v5->i8, 4), 0xDuLL);
  v53 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 6), *v38.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 6), v38, *v5->i8, 5), 0xDuLL);
  v54 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 5), *v43.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 5), v43, *v5->i8, 4), 0xDuLL);
  v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 6), *v43.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 6), v43, *v5->i8, 5), 0xDuLL);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 5), *v48.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 5), v48, *v5->i8, 4), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 6), *v48.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 6), v48, *v5->i8, 5), 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 7), *v50.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 7), v50, *v5->i8, 4), 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 6), *v50.i8, *v5->i8, 7), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 6), v50, *v5->i8, 7), 0xDuLL);
  v60 = vqaddq_s16(v30, v52);
  v61 = vqaddq_s16(v33, v53);
  v62 = vqaddq_s16(v34, v54);
  v63 = vqsubq_s16(v55, v35);
  v64 = vqsubq_s16(v30, v52);
  v65 = vqsubq_s16(v33, v53);
  v66 = vqsubq_s16(v34, v54);
  v67 = vqaddq_s16(v35, v55);
  v68 = vqaddq_s16(v44, v56);
  v69 = vqaddq_s16(v45, v57);
  v70 = vqsubq_s16(v59, v46);
  v71 = vqaddq_s16(v47, v58);
  v72 = vqsubq_s16(v44, v56);
  v73 = vqsubq_s16(v45, v57);
  v74 = vqaddq_s16(v46, v59);
  v75 = vqsubq_s16(v47, v58);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 2), *v68.i8, *v6.i8, 1);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 2), v68, *v6.i8, 1);
  v78 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 1), *v68.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 1), v68, *v6.i8, 0), 0xDuLL);
  v79 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v80 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 4), *v70.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 4), v70, v6, 5), 0xDuLL);
  v81 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 7), *v70.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 7), v70, v6, 4), 0xDuLL);
  v82 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 0), *v73.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 0), v73, *v6.i8, 1), 0xDuLL);
  v83 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 3), *v73.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 3), v73, *v6.i8, 0), 0xDuLL);
  v84 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 4), *v75.i8, v6, 5);
  v85 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 4), v75, v6, 5);
  v86 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 7), *v75.i8, v6, 4);
  v87 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 7), v75, v6, 4);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xDuLL), v85, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v86, 0xDuLL), v87, 0xDuLL);
  v90 = vqaddq_s16(v60, v78);
  v91 = vqaddq_s16(v61, v79);
  v92 = vqaddq_s16(v62, v80);
  v93 = vqaddq_s16(v63, v81);
  v94 = vqaddq_s16(v64, v83);
  v95 = vqaddq_s16(v65, v82);
  v96 = vqaddq_s16(v66, v88);
  v97 = vqsubq_s16(v89, v67);
  v98 = vqsubq_s16(v60, v78);
  v99 = vqsubq_s16(v61, v79);
  v100 = vqsubq_s16(v62, v80);
  v101 = vqsubq_s16(v63, v81);
  v102 = vqsubq_s16(v64, v83);
  v103 = vqsubq_s16(v65, v82);
  v104 = vqsubq_s16(v66, v88);
  v105 = vqaddq_s16(v67, v89);
  v109[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 2), *v96.i8, *v27.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 2), v96, *v27.i8, 1), 0xDuLL);
  v109[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 4), *v98.i8, v27, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 4), v98, v27, 5), 0xDuLL);
  v109[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 7), *v98.i8, v27, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 7), v98, v27, 4), 0xDuLL);
  v109[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 1), *v96.i8, *v27.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 1), v96, *v27.i8, 0), 0xDuLL);
  v109[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 2), *v94.i8, *v26.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 2), v94, *v26.i8, 1), 0xDuLL);
  v109[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 4), *v100.i8, v26, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 4), v100, v26, 5), 0xDuLL);
  v109[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 7), *v100.i8, v26, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 7), v100, v26, 4), 0xDuLL);
  v109[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 1), *v94.i8, *v26.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 1), v94, *v26.i8, 0), 0xDuLL);
  v109[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 2), *v92.i8, *v25.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 2), v92, *v25.i8, 1), 0xDuLL);
  v109[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 4), *v102.i8, v25, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 4), v102, v25, 5), 0xDuLL);
  v109[12] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 7), *v102.i8, v25, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 7), v102, v25, 4), 0xDuLL);
  v109[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 1), *v92.i8, *v25.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 1), v92, *v25.i8, 0), 0xDuLL);
  v109[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 5), *v104.i8, v24, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 5), v104, v24, 4), 0xDuLL);
  v109[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 1), *v90.i8, *v24.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 1), v90, *v24.i8, 0), 0xDuLL);
  v109[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 2), *v90.i8, *v24.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 2), v90, *v24.i8, 1), 0xDuLL);
  v109[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 6), *v104.i8, v24, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 6), v104, v24, 5), 0xDuLL);
  v106 = a2 + 1;
  do
  {
    v107 = v109[v4];
    v108 = vdupq_n_s16(0x16A1u);
    v106[-1] = vrshrq_n_s32(vmull_s16(*v107.i8, *v108.i8), 0xCuLL);
    *v106 = vrshrq_n_s32(vmull_high_s16(v107, v108), 0xCuLL);
    ++v4;
    v106 = (v106 + 4 * a3);
  }

  while (v4 != 16);
  return result;
}

uint64_t sub_2779EAB50(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v104 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v85 = xmmword_277BEB8A0[16 * a4 - 158];
  for (i = 240; i != 112; i -= 16)
  {
    *&v95[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v9 = 112;
  v10 = 128;
  do
  {
    *&v95[v10] = vqsubq_s16(*(result + v9), *(result + v10));
    v9 -= 16;
    v10 += 16;
  }

  while (v9 != -16);
  v11 = 0;
  for (j = 112; j != 48; j -= 16)
  {
    *(&v87 + v11) = vqaddq_s16(*&v95[v11], *&v95[j]);
    v11 += 16;
  }

  v13 = 48;
  v14 = 64;
  do
  {
    *(&v87 + v14) = vqsubq_s16(*&v95[v13], *&v95[v14]);
    v13 -= 16;
    v14 += 16;
  }

  while (v13 != -16);
  v15 = 0;
  v16 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 1), *v101.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 1), v101, *v6.i8, 0), 0xDuLL);
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 2), *v101.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 2), v101, *v6.i8, 1), 0xDuLL);
  v18 = vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6.i8, 1), *v100.i8, *v6.i8, 0);
  v19 = vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6.i8, 1), v100, *v6.i8, 0);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6.i8, 2), *v100.i8, *v6.i8, 1);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6.i8, 2), v100, *v6.i8, 1);
  v22 = vqaddq_s16(v87, v90);
  v23 = vqaddq_s16(v88, v89);
  v24 = vqsubq_s16(v88, v89);
  v25 = vqsubq_s16(v87, v90);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v6.i8, 1), *v93.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v6.i8, 1), v93, *v6.i8, 0), 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v6.i8, 2), *v93.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v6.i8, 2), v93, *v6.i8, 1), 0xDuLL);
  v28 = vqaddq_s16(v97, v17);
  v29 = vqsubq_s16(v97, v17);
  v30 = vqsubq_s16(v102, v16);
  v31 = vqaddq_s16(v102, v16);
  v32 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 1), *v22.i8, *v6.i8, 0);
  v33 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 1), v22, *v6.i8, 0);
  v34 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 2), *v22.i8, *v6.i8, 1);
  v35 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 2), v22, *v6.i8, 1);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 5), *v25.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 5), v25, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 6), *v25.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 6), v25, v6, 5);
  v40 = vqaddq_s16(v91, v27);
  v41 = vqsubq_s16(v91, v27);
  v42 = vqsubq_s16(v94, v26);
  v43 = vqaddq_s16(v94, v26);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v31.i8, v6, 4);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v31, v6, 4);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v31.i8, v6, 5);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v31, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 6), *v30.i8, v6, 5);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 6), v30, v6, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 7), *v30.i8, v6, 6);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 7), v30, v6, 6);
  v52 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 1), *v43.i8, *v5.i8, 0);
  v53 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 1), v43, *v5.i8, 0);
  v54 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 2), *v43.i8, *v5.i8, 1);
  v55 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 2), v43, *v5.i8, 1);
  v56 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 4), *v42.i8, v5, 5);
  v57 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 4), v42, v5, 5);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 7), *v42.i8, v5, 4);
  v59 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 7), v42, v5, 4);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v18, 0xDuLL), v19, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v62 = vqaddq_s16(v96, v61);
  v63 = vqsubq_s16(v96, v61);
  v64 = vqsubq_s16(v103, v60);
  v65 = vqaddq_s16(v103, v60);
  v66 = vrshrn_high_n_s32(vrshrn_n_s32(v32, 0xDuLL), v33, 0xDuLL);
  v67 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v70 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v74 = vqaddq_s16(v62, v71);
  v75 = vqsubq_s16(v62, v71);
  v76 = vqsubq_s16(v63, v73);
  v77 = vqaddq_s16(v63, v73);
  v78 = vqaddq_s16(v64, v72);
  v79 = vqsubq_s16(v64, v72);
  v80 = vqsubq_s16(v65, v70);
  v81 = vqaddq_s16(v65, v70);
  v86[0] = v66;
  v86[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v85.i8, 1), *v81.i8, *v85.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v85.i8, 1), v81, *v85.i8, 0), 0xDuLL);
  v86[14] = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v86[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v85.i8, 2), *v81.i8, *v85.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v85.i8, 2), v81, *v85.i8, 1), 0xDuLL);
  v86[8] = v67;
  v86[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 4), *v80.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 4), v80, v7, 5), 0xDuLL);
  v86[6] = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xDuLL), v59, 0xDuLL);
  v86[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 7), *v80.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 7), v80, v7, 4), 0xDuLL);
  v86[4] = v68;
  v86[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 1), *v79.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 1), v79, *v7.i8, 0), 0xDuLL);
  v86[10] = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
  v86[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 2), *v79.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 2), v79, *v7.i8, 1), 0xDuLL);
  v86[12] = v69;
  v86[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v85, 4), *v78.i8, v85, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v85, 4), v78, v85, 5), 0xDuLL);
  v86[2] = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v86[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v85, 7), *v78.i8, v85, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v85, 7), v78, v85, 4), 0xDuLL);
  v82 = a2 + 1;
  do
  {
    v83 = v86[v15];
    v84 = vdupq_n_s16(0x16A1u);
    v82[-1] = vrshrq_n_s32(vmull_s16(*v83.i8, *v84.i8), 0xCuLL);
    *v82 = vrshrq_n_s32(vmull_high_s16(v83, v84), 0xCuLL);
    ++v15;
    v82 = (v82 + 4 * a3);
  }

  while (v15 != 16);
  return result;
}

uint64_t sub_2779EAFF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v6 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v7 = off_28866DB20[a4];
  v8 = off_28866DBA0[a4];
  v9 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) == 0)
  {
    if (a4 != 6)
    {
      goto LABEL_8;
    }

    v9 = 0;
LABEL_7:
    v6 = a1 + 14 * a3;
    v4 = -a3;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v10 = 0;
  v11 = v40;
  v12 = 1;
  do
  {
    v13 = v12;
    (v7)(v6 + 2 * v10, &v42, v4, 13);
    for (i = 0; i != 128; i += 16)
    {
      *(&v42 + i) = vrshrq_n_s16(*(&v42 + i), 2uLL);
    }

    v12 = 0;
    v15 = vtrn1q_s16(v42, v43);
    v16 = vtrn2q_s16(v42, v43);
    v17 = vtrn1q_s16(v44, v45);
    v18 = vtrn2q_s16(v44, v45);
    v19 = vtrn1q_s16(v46, v47);
    v20 = vtrn2q_s16(v46, v47);
    v21 = vtrn1q_s16(v48, v49);
    v22 = vtrn2q_s16(v48, v49);
    v23 = vtrn1q_s32(v15, v17);
    v24 = vtrn2q_s32(v15, v17);
    v25 = vtrn1q_s32(v16, v18);
    v26 = vtrn2q_s32(v16, v18);
    v27 = vtrn1q_s32(v19, v21);
    v28 = vtrn2q_s32(v19, v21);
    v29 = vtrn1q_s32(v20, v22);
    v30 = vtrn2q_s32(v20, v22);
    v31 = vzip2q_s64(v23, v27);
    v23.i64[1] = v27.i64[0];
    v32 = vzip2q_s64(v25, v29);
    v25.i64[1] = v29.i64[0];
    v33 = vzip2q_s64(v24, v28);
    v24.i64[1] = v28.i64[0];
    v34 = vzip2q_s64(v26, v30);
    v26.i64[1] = v30.i64[0];
    *v11 = v23;
    v11[1] = v25;
    v11[2] = v24;
    v11[3] = v26;
    v11[4] = v31;
    v11[5] = v32;
    v11[6] = v33;
    v11[7] = v34;
    v11 = &v41;
    v10 = 8;
  }

  while ((v13 & 1) != 0);
  if (v9)
  {
    v35 = v40;
  }

  else
  {
    v36 = v40;
    for (j = 240; j != -16; j -= 16)
    {
      v38 = *v36++;
      v35 = &v42;
      *(&v42 + j) = v38;
    }
  }

  return (v8)(v35, a2, 8, 13);
}

void sub_2779EB1F4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = off_28866DAA0[a4];
  v6 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) != 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (a4 == 6)
  {
    v6 = 0;
LABEL_7:
    a1 += 30 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D6A0[a4])(a1, &v56, a3, 13);
  for (i = 0; i != 256; i += 16)
  {
    *(&v56 + i) = vrshrq_n_s16(*(&v56 + i), 2uLL);
  }

  v8 = 0;
  v9 = vtrn1q_s16(v56, v57);
  v10 = vtrn2q_s16(v56, v57);
  v11 = vtrn1q_s16(v58, v59);
  v12 = vtrn2q_s16(v58, v59);
  v13 = vtrn1q_s16(v60, v61);
  v14 = vtrn2q_s16(v60, v61);
  v15 = vtrn1q_s16(v62, v63);
  v16 = vtrn2q_s16(v62, v63);
  v17 = vtrn1q_s32(v9, v11);
  v18 = vtrn2q_s32(v9, v11);
  v19 = vtrn1q_s32(v10, v12);
  v20 = vtrn2q_s32(v10, v12);
  v21 = vtrn1q_s32(v13, v15);
  v22 = vtrn2q_s32(v13, v15);
  v23 = vtrn1q_s32(v14, v16);
  v24 = vtrn2q_s32(v14, v16);
  v25 = vzip2q_s64(v17, v21);
  v17.i64[1] = v21.i64[0];
  v26 = vzip2q_s64(v19, v23);
  v19.i64[1] = v23.i64[0];
  v27 = vzip2q_s64(v18, v22);
  v18.i64[1] = v22.i64[0];
  v28 = vzip2q_s64(v20, v24);
  v20.i64[1] = v24.i64[0];
  v54[0] = v17;
  v54[1] = v19;
  v54[2] = v18;
  v54[3] = v20;
  v54[4] = v25;
  v54[5] = v26;
  v54[6] = v27;
  v54[7] = v28;
  v29 = vtrn1q_s16(v64, v65);
  v30 = vtrn2q_s16(v64, v65);
  v31 = vtrn1q_s16(v66, v67);
  v32 = vtrn2q_s16(v66, v67);
  v33 = vtrn1q_s16(v68, v69);
  v34 = vtrn2q_s16(v68, v69);
  v35 = vtrn1q_s16(v70, v71);
  v36 = vtrn2q_s16(v70, v71);
  v37 = vtrn1q_s32(v29, v31);
  v38 = vtrn2q_s32(v29, v31);
  v39 = vtrn1q_s32(v30, v32);
  v40 = vtrn2q_s32(v30, v32);
  v41 = vtrn1q_s32(v33, v35);
  v42 = vtrn2q_s32(v33, v35);
  v43 = vtrn1q_s32(v34, v36);
  v44 = vtrn2q_s32(v34, v36);
  v45 = vzip2q_s64(v37, v41);
  v37.i64[1] = v41.i64[0];
  v46 = vzip2q_s64(v39, v43);
  v39.i64[1] = v43.i64[0];
  v47 = vzip2q_s64(v38, v42);
  v38.i64[1] = v42.i64[0];
  v48 = vzip2q_s64(v40, v44);
  v40.i64[1] = v44.i64[0];
  v55[0] = v37;
  v55[1] = v39;
  v55[2] = v38;
  v55[3] = v40;
  v55[4] = v45;
  v55[5] = v46;
  v49 = v54;
  v50 = 1;
  v55[6] = v47;
  v55[7] = v48;
  do
  {
    v51 = v50;
    if ((v6 & 1) == 0)
    {
      for (j = 112; j != -16; j -= 16)
      {
        v53 = *v49++;
        *(&v56 + j) = v53;
      }

      v49 = &v56;
    }

    (v5)(v49, a2 + 4 * v8, 16, 13);
    v50 = 0;
    v49 = v55;
    v8 = 8;
  }

  while ((v51 & 1) != 0);
}

uint64_t sub_2779EB44C(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v9 = *MEMORY[0x277D85DE8];
  do
  {
    *&v8[v3] = vaddq_s16(*(result + v3), *(result + v3));
    v3 += 16;
  }

  while (v3 != 128);
  v4 = 0;
  v5 = a2 + 1;
  v6 = vdupq_n_s16(0x16A1u);
  do
  {
    v7 = *&v8[v4];
    v5[-1] = vrshrq_n_s32(vmull_s16(*v7.i8, *v6.i8), 0xCuLL);
    *v5 = vrshrq_n_s32(vmull_high_s16(v7, v6), 0xCuLL);
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 128);
  return result;
}

int32x4_t sub_2779EB4F4(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v49 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 158];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 3), *v10.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 3), v10, *v5, 0), 0xDuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 2), *v10.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 2), v10, *v5, 3), 0xDuLL);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 1), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 1), v9, *v5, 0), 0xDuLL);
  v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 2), *v9.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 2), v9, *v5, 1), 0xDuLL);
  v16 = a1[1];
  v17 = vqaddq_s16(*a1, v12);
  v19 = a1[6];
  v18 = a1[7];
  v20 = vqsubq_s16(v13, v18);
  v21 = vqsubq_s16(*a1, v12);
  v22 = vqaddq_s16(v18, v13);
  v23 = vqsubq_s16(v15, v16);
  v24 = vqaddq_s16(v19, v14);
  v25 = vqaddq_s16(v16, v15);
  v26 = vqsubq_s16(v19, v14);
  v27 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 5), *v23.i8, *v5->i8, 4);
  v28 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 5), v23, *v5->i8, 4);
  v29 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 6), *v23.i8, *v5->i8, 5);
  v30 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 6), v23, *v5->i8, 5);
  v31 = vrshrn_high_n_s32(vrshrn_n_s32(v27, 0xDuLL), v28, 0xDuLL);
  v32 = vrshrn_high_n_s32(vrshrn_n_s32(v29, 0xDuLL), v30, 0xDuLL);
  v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 5), *v26.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 5), v26, *v5->i8, 4), 0xDuLL);
  v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 6), *v26.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 6), v26, *v5->i8, 5), 0xDuLL);
  v35 = vqaddq_s16(v17, v31);
  v36 = vqaddq_s16(v20, v32);
  v37 = vqaddq_s16(v21, v33);
  v38 = vqsubq_s16(v34, v22);
  v39 = vqsubq_s16(v17, v31);
  v40 = vqsubq_s16(v20, v32);
  v41 = vqsubq_s16(v21, v33);
  v42 = vqaddq_s16(v22, v34);
  v48[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 2), *v37.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 2), v37, *v7.i8, 1), 0xDuLL);
  v48[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 4), *v39.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 4), v39, v7, 5), 0xDuLL);
  v48[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 7), *v39.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 7), v39, v7, 4), 0xDuLL);
  v48[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 1), *v37.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 1), v37, *v7.i8, 0), 0xDuLL);
  v48[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 5), *v41.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 5), v41, v6, 4), 0xDuLL);
  v48[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 1), *v35.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 1), v35, *v6.i8, 0), 0xDuLL);
  v48[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 2), *v35.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 2), v35, *v6.i8, 1), 0xDuLL);
  v48[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 6), *v41.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 6), v41, v6, 5), 0xDuLL);
  v43 = a2 + 1;
  do
  {
    v44 = v48[v4];
    v45 = vdupq_n_s16(0x16A1u);
    v46 = vrshrq_n_s32(vmull_s16(*v44.i8, *v45.i8), 0xCuLL);
    result = vrshrq_n_s32(vmull_high_s16(v44, v45), 0xCuLL);
    v43[-1] = v46;
    *v43 = result;
    ++v4;
    v43 = (v43 + 4 * a3);
  }

  while (v4 != 8);
  return result;
}

uint64_t sub_2779EB778(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  for (i = 112; i != 48; i -= 16)
  {
    *(&v37 + v4) = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v8 = 48;
  v9 = 64;
  do
  {
    *(&v37 + v9) = vqsubq_s16(*(result + v8), *(result + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  v11 = vqaddq_s16(v37, v40);
  v12 = vqaddq_s16(v38, v39);
  v13 = vqsubq_s16(v38, v39);
  v14 = vqsubq_s16(v37, v40);
  v15 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v6.i8, 2), *v43.i8, *v6.i8, 1);
  v16 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v6.i8, 2), v43, *v6.i8, 1);
  v17 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 1), *v11.i8, *v6.i8, 0);
  v18 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 1), v11, *v6.i8, 0);
  v19 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 2), *v11.i8, *v6.i8, 1);
  v20 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 2), v11, *v6.i8, 1);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 5), *v14.i8, v6, 4);
  v22 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 5), v14, v6, 4);
  v23 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 6), *v14.i8, v6, 5);
  v24 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 6), v14, v6, 5);
  v25 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v6.i8, 1), *v43.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v6.i8, 1), v43, *v6.i8, 0), 0xDuLL);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(v19, 0xDuLL), v20, 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v23, 0xDuLL), v24, 0xDuLL);
  v29 = vqaddq_s16(v41, v26);
  v30 = vqsubq_s16(v41, v26);
  v31 = vqsubq_s16(v44, v25);
  v32 = vqaddq_s16(v44, v25);
  v36[0] = vrshrn_high_n_s32(vrshrn_n_s32(v17, 0xDuLL), v18, 0xDuLL);
  v36[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 1), *v32.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 1), v32, *v5.i8, 0), 0xDuLL);
  v36[6] = v28;
  v36[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 2), *v32.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 2), v32, *v5.i8, 1), 0xDuLL);
  v36[4] = v27;
  v36[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 4), *v31.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 4), v31, v5, 5), 0xDuLL);
  v36[2] = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xDuLL), v22, 0xDuLL);
  v36[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 7), *v31.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 7), v31, v5, 4), 0xDuLL);
  v33 = a2 + 1;
  v34 = vdupq_n_s16(0x16A1u);
  do
  {
    v35 = v36[v10];
    v33[-1] = vrshrq_n_s32(vmull_s16(*v35.i8, *v34.i8), 0xCuLL);
    *v33 = vrshrq_n_s32(vmull_high_s16(v35, v34), 0xCuLL);
    ++v10;
    v33 = (v33 + 4 * a3);
  }

  while (v10 != 8);
  return result;
}

uint64_t sub_2779EB9A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = off_28866DA20[a4];
  v6 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) == 0)
    {
      if (((1 << a4) & 0x80A0) != 0)
      {
        v6 = 0;
        goto LABEL_8;
      }

      if (a4 != 6)
      {
        goto LABEL_8;
      }

      v6 = 0;
    }

    a1 += 6 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D9A0[a4])(a1, &v24, a3, 13);
  for (i = 0; i != 64; i += 16)
  {
    *(&v24 + i) = vrhaddq_s16(*(&v24 + i), 0);
  }

  v8 = vtrn1q_s16(v24, v25);
  v9 = vtrn2q_s16(v24, v25);
  v10 = vtrn1q_s16(v26, v27);
  v11 = vtrn2q_s16(v26, v27);
  v12 = vtrn1q_s32(v8, v10);
  v13 = vtrn2q_s32(v8, v10);
  v14 = vtrn1q_s32(v9, v11);
  *&v15 = vextq_s8(v12, v12, 8uLL).u64[0];
  v12.i64[1] = v14.i64[0];
  *(&v15 + 1) = vextq_s8(v14, v14, 8uLL).u64[0];
  v16 = vtrn2q_s32(v9, v11);
  v11.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
  v13.i64[1] = v16.i64[0];
  v23[0] = v12;
  v23[1] = v13;
  v11.i64[1] = vextq_s8(v16, v16, 8uLL).u64[0];
  v23[2] = v15;
  v23[3] = v11;
  if (v6)
  {
    v17 = v23;
  }

  else
  {
    v18 = v23;
    for (j = 56; j != -8; j -= 8)
    {
      v20 = *v18++;
      *&v22[j] = v20;
    }

    v17 = v22;
  }

  return (v5)(v17, a2, 4, 13);
}

uint64_t sub_2779EBB34(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v7 = *MEMORY[0x277D85DE8];
  do
  {
    *&v6[v3] = vadd_s16(*(result + v3), *(result + v3));
    v3 += 8;
  }

  while (v3 != 64);
  v4 = 0;
  v5 = vdup_n_s16(0x16A1u);
  do
  {
    *a2 = vrshrq_n_s32(vmull_s16(*&v6[v4], v5), 0xCuLL);
    v4 += 8;
    a2 = (a2 + 4 * a3);
  }

  while (v4 != 64);
  return result;
}

int32x4_t sub_2779EBBD0(int16x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v35[8] = *MEMORY[0x277D85DE8];
  v5 = xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 158];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v8, *v5.i8, 3), v10, *v5.i8, 0), 0xDuLL);
  v13 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v8, *v5.i8, 2), v10, *v5.i8, 3), 0xDuLL);
  v14 = vmlal_lane_s16(vmull_lane_s16(v11, *v5.i8, 1), v9, *v5.i8, 0);
  v15 = vmlal_lane_s16(vmull_lane_s16(v11, *v5.i8, 2), v9, *v5.i8, 1);
  v16 = vqrshrn_n_s32(v14, 0xDuLL);
  *v14.i8 = vqrshrn_n_s32(v15, 0xDuLL);
  v17 = a1[1];
  v18 = vqadd_s16(*a1, v12);
  v20 = a1[6];
  v19 = a1[7];
  v21 = vqsub_s16(v13, v19);
  v22 = vqsub_s16(*a1, v12);
  v23 = vqadd_s16(v19, v13);
  *v15.i8 = vqsub_s16(*v14.i8, v17);
  v24 = vqadd_s16(v20, v16);
  *v14.i8 = vqadd_s16(v17, *v14.i8);
  v25 = vqsub_s16(v20, v16);
  v26 = vmlal_laneq_s16(vmull_laneq_s16(v24, v5, 5), *v15.i8, v5, 4);
  v27 = vmlal_laneq_s16(vmull_laneq_s16(v24, v5, 6), *v15.i8, v5, 5);
  *v15.i8 = vqrshrn_n_s32(v26, 0xDuLL);
  *v26.i8 = vqrshrn_n_s32(v27, 0xDuLL);
  v28 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v5, 5), v25, v5, 4);
  v29 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v5, 6), v25, v5, 5);
  *v5.i8 = vqrshrn_n_s32(v28, 0xDuLL);
  v30 = vqrshrn_n_s32(v29, 0xDuLL);
  *v29.i8 = vqadd_s16(v18, *v15.i8);
  *v28.i8 = vqadd_s16(v21, *v26.i8);
  v31 = vqadd_s16(v22, *v5.i8);
  v32 = vqsub_s16(v30, v23);
  *v15.i8 = vqsub_s16(v18, *v15.i8);
  *v26.i8 = vqsub_s16(v21, *v26.i8);
  *v5.i8 = vqsub_s16(v22, *v5.i8);
  v33 = vqadd_s16(v23, v30);
  v35[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v32, *v7.i8, 2), v31, *v7.i8, 1), 0xDuLL);
  v35[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v7, 4), *v15.i8, v7, 5), 0xDuLL);
  v35[4] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v7, 7), *v15.i8, v7, 4), 0xDuLL);
  v35[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v32, *v7.i8, 1), v31, *v7.i8, 0), 0xDuLL);
  v35[6] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v33, v6, 5), *v5.i8, v6, 4), 0xDuLL);
  v35[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v6.i8, 1), *v29.i8, *v6.i8, 0), 0xDuLL);
  v35[0] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v6.i8, 2), *v29.i8, *v6.i8, 1), 0xDuLL);
  v35[1] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v33, v6, 6), *v5.i8, v6, 5), 0xDuLL);
  do
  {
    result = vrshrq_n_s32(vmull_s16(v35[v4], vdup_n_s16(0x16A1u)), 0xCuLL);
    *a2 = result;
    ++v4;
    a2 = (a2 + 4 * a3);
  }

  while (v4 != 8);
  return result;
}

uint64_t sub_2779EBD88(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v35 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  for (i = 56; i != 24; i -= 8)
  {
    *(&v27 + v4) = vqadd_s16(*(result + v4), *(result + i));
    v4 += 8;
  }

  v8 = 24;
  v9 = 32;
  do
  {
    *(&v27 + v9) = vqsub_s16(*(result + v8), *(result + v9));
    v8 -= 8;
    v9 += 8;
  }

  while (v8 != -8);
  v10 = 0;
  v11 = vqadd_s16(v27, v30);
  v12 = vqadd_s16(v28, v29);
  v13 = vqsub_s16(v28, v29);
  v14 = vqsub_s16(v27, v30);
  v15 = vmlal_lane_s16(vmull_lane_s16(v32, *v6.i8, 2), v33, *v6.i8, 1);
  v16 = vmlal_lane_s16(vmull_lane_s16(v12, *v6.i8, 1), v11, *v6.i8, 0);
  v17 = vmlal_lane_s16(vmull_lane_s16(v12, *v6.i8, 2), v11, *v6.i8, 1);
  v18 = vmlal_laneq_s16(vmull_laneq_s16(v13, v6, 5), v14, v6, 4);
  v19 = vmlal_laneq_s16(vmull_laneq_s16(v13, v6, 6), v14, v6, 5);
  v20 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v32, *v6.i8, 1), v33, *v6.i8, 0), 0xDuLL);
  v21 = vqrshrn_n_s32(v15, 0xDuLL);
  *v15.i8 = vqadd_s16(v31, v21);
  v22 = vqsub_s16(v31, v21);
  v23 = vqsub_s16(v34, v20);
  v24 = vqadd_s16(v34, v20);
  v26[0] = vqrshrn_n_s32(v16, 0xDuLL);
  v26[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v15.i8, *v5.i8, 1), v24, *v5.i8, 0), 0xDuLL);
  v26[6] = vqrshrn_n_s32(v19, 0xDuLL);
  v26[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v15.i8, *v5.i8, 2), v24, *v5.i8, 1), 0xDuLL);
  v26[4] = vqrshrn_n_s32(v17, 0xDuLL);
  v26[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v22, v5, 4), v23, v5, 5), 0xDuLL);
  v26[2] = vqrshrn_n_s32(v18, 0xDuLL);
  v26[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v22, v5, 7), v23, v5, 4), 0xDuLL);
  v25 = vdup_n_s16(0x16A1u);
  do
  {
    *a2 = vrshrq_n_s32(vmull_s16(v26[v10++], v25), 0xCuLL);
    a2 = (a2 + 4 * a3);
  }

  while (v10 != 8);
  return result;
}

uint64_t sub_2779EBF2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v5 = off_28866D920[a4];
  v6 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) == 0)
    {
      if (((1 << a4) & 0x80A0) != 0)
      {
        v6 = 0;
        goto LABEL_8;
      }

      if (a4 != 6)
      {
        goto LABEL_8;
      }

      v6 = 0;
    }

    a1 += 14 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D8A0[a4])(a1, v30, a3, 13);
  v11 = 0;
  v12.i64[1] = 0;
  do
  {
    v30[v11] = vrhadd_s16(v30[v11], 0);
    ++v11;
  }

  while (v11 != 8);
  v12.i64[0] = v30[0];
  v7.i64[0] = v30[1];
  v13 = vzip1q_s16(v12, v7);
  v7.i64[0] = v30[2];
  v8.i64[0] = v30[3];
  v14 = vzip1q_s16(v7, v8);
  v8.i64[0] = v30[4];
  v9.i64[0] = v30[5];
  v15 = vzip1q_s16(v8, v9);
  v9.i64[0] = v30[6];
  v10.i64[0] = v30[7];
  v16 = vzip1q_s16(v9, v10);
  v17 = vzip1q_s32(v13, v14);
  v18 = vzip2q_s32(v13, v14);
  v19 = vzip1q_s32(v15, v16);
  v20 = vzip2q_s32(v15, v16);
  v21 = vzip2q_s64(v17, v19);
  v17.i64[1] = v19.i64[0];
  v29[0] = v17;
  v29[1] = v21;
  v22 = vzip2q_s64(v18, v20);
  v18.i64[1] = v20.i64[0];
  v29[2] = v18;
  v29[3] = v22;
  if (v6)
  {
    v23 = v29;
  }

  else
  {
    v24 = v29;
    for (i = 48; i != -16; i -= 16)
    {
      v26 = *v24++;
      *&v28[i] = v26;
    }

    v23 = v28;
  }

  return (v5)(v23, a2, 8, 13);
}

uint64_t sub_2779EC0B4(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x16A1u);
  do
  {
    *&v9[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(result + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(result + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 64);
  v5 = 0;
  v6 = a2 + 1;
  v7 = vdupq_n_s16(0x16A1u);
  do
  {
    v8 = *&v9[v5];
    v6[-1] = vrshrq_n_s32(vmull_s16(*v8.i8, *v7.i8), 0xCuLL);
    *v6 = vrshrq_n_s32(vmull_high_s16(v8, v7), 0xCuLL);
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 64);
  return result;
}

int16x8_t *sub_2779EC170(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v5 = qword_277BEBCA0[a4 - 10];
  v6 = result[1];
  v7 = vqaddq_s16(*result, v6);
  v9 = result[2];
  v8 = result[3];
  v10 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*result->i8, v5, 0), *v6.i8, v5, 1), *v8.i8, v5, 3), *v9.i8, v5, 2);
  v11 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*result, v5, 0), v6, v5, 1), v8, v5, 3), v9, v5, 2);
  v12 = vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*result->i8, v5, 3), *v9.i8, v5, 2), *v6.i8, v5, 0), *v8.i8, v5, 1);
  v13 = vmlal_high_lane_s16(vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmull_high_lane_s16(*result, v5, 3), v9, v5, 2), v6, v5, 0), v8, v5, 1);
  v14 = vmlsl_lane_s16(vmull_lane_s16(*v7.i8, v5, 2), *v8.i8, v5, 2);
  v15 = vmlsl_high_lane_s16(vmull_high_lane_s16(v7, v5, 2), v8, v5, 2);
  v16 = vmul_s16(v5, 0x3000300030003);
  v20[0] = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xDuLL), v11, 0xDuLL);
  v20[1] = vrshrn_high_n_s32(vrshrn_n_s32(v14, 0xDuLL), v15, 0xDuLL);
  v20[2] = vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xDuLL), v13, 0xDuLL);
  v20[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vsubq_s32(v12, v10), *v9.i8, v16, 2), 0xDuLL), vmlal_high_lane_s16(vsubq_s32(v13, v11), v9, v16, 2), 0xDuLL);
  v17 = a2 + 1;
  v18 = vdupq_n_s16(0x16A1u);
  do
  {
    v19 = v20[v4];
    v17[-1] = vrshrq_n_s32(vmull_s16(*v19.i8, *v18.i8), 0xCuLL);
    *v17 = vrshrq_n_s32(vmull_high_s16(v19, v18), 0xCuLL);
    ++v4;
    v17 = (v17 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

int16x8_t *sub_2779EC2A4(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v5 = xmmword_277BEB8A0[16 * a4 - 160];
  v6 = result[1];
  v8 = result[2];
  v7 = result[3];
  v9 = vqaddq_s16(*result, v7);
  v10 = vqaddq_s16(v6, v8);
  v11 = vqsubq_s16(v6, v8);
  v12 = vqsubq_s16(*result, v7);
  v16[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 1), *v9.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 1), v9, *v5.i8, 0), 0xDuLL);
  v16[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 5), *v12.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 5), v12, v5, 4), 0xDuLL);
  v16[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 2), *v9.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 2), v9, *v5.i8, 1), 0xDuLL);
  v16[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 6), *v12.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 6), v12, v5, 5), 0xDuLL);
  v13 = a2 + 1;
  v14 = vdupq_n_s16(0x16A1u);
  do
  {
    v15 = v16[v4];
    v13[-1] = vrshrq_n_s32(vmull_s16(*v15.i8, *v14.i8), 0xCuLL);
    *v13 = vrshrq_n_s32(vmull_high_s16(v15, v14), 0xCuLL);
    ++v4;
    v13 = (v13 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

int16x4_t sub_2779EC3C4(void *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *a1;
    v3 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 64);
  for (i = 0; i != 64; i += 8)
  {
    *&v7[i] = vshl_n_s16(*&v7[i], 2uLL);
  }

  for (j = 0; j != 64; j += 8)
  {
    result = vadd_s16(*&v7[j], *&v7[j]);
    *(a2 + j) = result;
  }

  return result;
}

int16x4_t sub_2779EC470(int16x4_t *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v42 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v34 + v4) = *a1;
    v4 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 8)
  {
    *(&v34 + i) = vshl_n_s16(*(&v34 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 158];
  v8 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v37, *v6, 3), v38, *v6, 0), 0xDuLL);
  v10 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v37, *v6, 2), v38, *v6, 3), 0xDuLL);
  v11 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v39, *v6, 1), v36, *v6, 0), 0xDuLL);
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v39, *v6, 2), v36, *v6, 1), 0xDuLL);
  v13 = vqadd_s16(v34, v9);
  v14 = vqsub_s16(v10, v41);
  v15 = vqsub_s16(v34, v9);
  v16 = vqadd_s16(v41, v10);
  v17 = vqsub_s16(v12, v35);
  v18 = vqadd_s16(v40, v11);
  v19 = vqadd_s16(v35, v12);
  v20 = vqsub_s16(v40, v11);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(v18, *v6->i8, 5), v17, *v6->i8, 4);
  v22 = vmlal_laneq_s16(vmull_laneq_s16(v18, *v6->i8, 6), v17, *v6->i8, 5);
  v23 = vqrshrn_n_s32(v21, 0xDuLL);
  *v21.i8 = vqrshrn_n_s32(v22, 0xDuLL);
  v24 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v19, *v6->i8, 5), v20, *v6->i8, 4), 0xDuLL);
  v25 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v19, *v6->i8, 6), v20, *v6->i8, 5), 0xDuLL);
  v26 = vqadd_s16(v13, v23);
  *v22.i8 = vqadd_s16(v14, *v21.i8);
  v27 = vqadd_s16(v15, v24);
  v28 = vqsub_s16(v25, v16);
  v29 = vqsub_s16(v13, v23);
  *v21.i8 = vqsub_s16(v14, *v21.i8);
  v30 = vqsub_s16(v15, v24);
  v31 = vqadd_s16(v16, v25);
  v32 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v22.i8, *v7.i8, 2), v26, *v7.i8, 1), 0xDuLL);
  a2[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v28, *v8.i8, 2), v27, *v8.i8, 1), 0xDuLL);
  a2[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v21.i8, v8, 4), v29, v8, 5), 0xDuLL);
  a2[4] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v21.i8, v8, 7), v29, v8, 4), 0xDuLL);
  a2[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v28, *v8.i8, 1), v27, *v8.i8, 0), 0xDuLL);
  a2[6] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v31, v7, 5), v30, v7, 4), 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v22.i8, *v7.i8, 1), v26, *v7.i8, 0), 0xDuLL);
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v31, v7, 6), v30, v7, 5), 0xDuLL);
  *a2 = v32;
  a2[1] = result;
  return result;
}

int16x4_t sub_2779EC638(void *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v36 = *MEMORY[0x277D85DE8];
  do
  {
    *&v27[v4] = *a1;
    v4 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 8)
  {
    *&v27[i] = vshl_n_s16(*&v27[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  for (j = 56; j != 24; j -= 8)
  {
    *(&v28 + v6) = vqadd_s16(*&v27[v6], *&v27[j]);
    v6 += 8;
  }

  v10 = 24;
  v11 = 32;
  do
  {
    *(&v28 + v11) = vqsub_s16(*&v27[v10], *&v27[v11]);
    v10 -= 8;
    v11 += 8;
  }

  while (v10 != -8);
  v12 = vqadd_s16(v28, v31);
  v13 = vqadd_s16(v29, v30);
  v14 = vqsub_s16(v29, v30);
  v15 = vqsub_s16(v28, v31);
  v16 = vmlal_lane_s16(vmull_lane_s16(v33, *v8.i8, 2), v34, *v8.i8, 1);
  v17 = vmlal_lane_s16(vmull_lane_s16(v13, *v8.i8, 1), v12, *v8.i8, 0);
  v18 = vmlal_lane_s16(vmull_lane_s16(v13, *v8.i8, 2), v12, *v8.i8, 1);
  v19 = vmlal_laneq_s16(vmull_laneq_s16(v14, v8, 5), v15, v8, 4);
  v20 = vmlal_laneq_s16(vmull_laneq_s16(v14, v8, 6), v15, v8, 5);
  v21 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v33, *v8.i8, 1), v34, *v8.i8, 0), 0xDuLL);
  v22 = vqrshrn_n_s32(v16, 0xDuLL);
  *v16.i8 = vqadd_s16(v32, v22);
  v23 = vqsub_s16(v32, v22);
  v24 = vqsub_s16(v35, v21);
  v25 = vqadd_s16(v35, v21);
  *a2 = vqrshrn_n_s32(v17, 0xDuLL);
  a2[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v7.i8, 1), v25, *v7.i8, 0), 0xDuLL);
  a2[6] = vqrshrn_n_s32(v20, 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v7.i8, 2), v25, *v7.i8, 1), 0xDuLL);
  a2[4] = vqrshrn_n_s32(v18, 0xDuLL);
  a2[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v23, v7, 4), v24, v7, 5), 0xDuLL);
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v23, v7, 7), v24, v7, 4), 0xDuLL);
  a2[2] = vqrshrn_n_s32(v19, 0xDuLL);
  a2[3] = result;
  return result;
}

uint64_t sub_2779EC7F4()
{
  v0 = MEMORY[0x28223BE20]();
  v376 = v2;
  v3 = 0;
  v740 = *MEMORY[0x277D85DE8];
  v4 = v549;
  v5 = vdupq_n_s16(0x16A1u);
  v6 = vdupq_n_s16(0xE95Fu);
  v378 = vneg_f16(0x6161616161616161);
  v379 = vneg_f16(0x6565656565656565);
  v377 = vneg_f16(0x7777777777777777);
  v547 = v5;
  v546 = v6;
  do
  {
    v7 = 0;
    v8 = v0;
    do
    {
      v550[v7++] = *v8;
      v8 = (v8 + 2 * v1);
    }

    while (v7 != 64);
    v9 = 0;
    for (i = 63; i != 31; --i)
    {
      *&v723[v9 * 16] = vqaddq_s16(v550[v9], v550[i]);
      ++v9;
    }

    v11 = 32;
    do
    {
      *&v723[v11 * 16] = vqsubq_s16(v550[i--], v550[v11]);
      ++v11;
    }

    while (i != -1);
    v12 = 0;
    for (j = 496; j != 240; j -= 16)
    {
      *&v690[v12] = vqaddq_s16(*&v723[v12], *&v723[j]);
      v12 += 16;
    }

    v14 = 256;
    do
    {
      *&v690[v14] = vqsubq_s16(*&v723[j], *&v723[v14]);
      j -= 16;
      v14 += 16;
    }

    while (j != -16);
    v15 = 0;
    v722 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v724.i8, *v5.i8), *v739.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v724, v5), v739, v5), 0xDuLL);
    v721 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v725.i8, *v5.i8), *v738.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v725, v5), v738, v5), 0xDuLL);
    v707 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v724.i8, *v6.i8), *v739.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v724, v6), v739, v5), 0xDuLL);
    v708 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v725.i8, *v6.i8), *v738.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v725, v6), v738, v5), 0xDuLL);
    v720 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v726.i8, *v5.i8), *v737.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v726, v5), v737, v5), 0xDuLL);
    v719 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v727.i8, *v5.i8), *v736.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v727, v5), v736, v5), 0xDuLL);
    v709 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v726.i8, *v6.i8), *v737.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v726, v6), v737, v5), 0xDuLL);
    v710 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v727.i8, *v6.i8), *v736.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v727, v6), v736, v5), 0xDuLL);
    v718 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v728.i8, *v5.i8), *v735.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v728, v5), v735, v5), 0xDuLL);
    v717 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v729.i8, *v5.i8), *v734.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v729, v5), v734, v5), 0xDuLL);
    v711 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v728.i8, *v6.i8), *v735.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v728, v6), v735, v5), 0xDuLL);
    v712 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v729.i8, *v6.i8), *v734.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v729, v6), v734, v5), 0xDuLL);
    v716 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v730.i8, *v5.i8), *v733.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v730, v5), v733, v5), 0xDuLL);
    v715 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v731.i8, *v5.i8), *v732.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v731, v5), v732, v5), 0xDuLL);
    v713 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v730.i8, *v6.i8), *v733.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v730, v6), v733, v5), 0xDuLL);
    v714 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v731.i8, *v6.i8), *v732.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v731, v6), v732, v5), 0xDuLL);
    for (k = 240; k != 112; k -= 16)
    {
      *&v649[v15] = vqaddq_s16(*&v690[v15], *&v690[k]);
      v15 += 16;
    }

    v17 = 128;
    do
    {
      *&v649[v17] = vqsubq_s16(*&v690[k], *&v690[v17]);
      k -= 16;
      v17 += 16;
    }

    while (k != -16);
    v658 = v691;
    v659 = v692;
    v660 = v693;
    v661 = v694;
    v669 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v5.i8), *v702.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v5), v702, v5), 0xDuLL);
    v668 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v5.i8), *v701.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v5), v701, v5), 0xDuLL);
    v662 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v6.i8), *v702.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v6), v702, v5), 0xDuLL);
    v663 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v6.i8), *v701.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v6), v701, v5), 0xDuLL);
    v667 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v5.i8), *v700.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v5), v700, v5), 0xDuLL);
    v666 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v5.i8), *v699.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v5), v699, v5), 0xDuLL);
    v664 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v6.i8), *v700.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v6), v700, v5), 0xDuLL);
    v665 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v6.i8), *v699.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v6), v699, v5), 0xDuLL);
    v670 = v703;
    v671 = v704;
    v672 = v705;
    v673 = v706;
    v18 = 512;
    for (m = 752; m != 624; m -= 16)
    {
      *&v649[v18] = vqaddq_s16(*&v723[v18], *&v690[m]);
      v18 += 16;
    }

    v20 = 640;
    do
    {
      *&v649[v20] = vqsubq_s16(*&v723[m], *&v690[v20]);
      m -= 16;
      v20 += 16;
    }

    while (m != 496);
    v21 = 768;
    for (n = 1008; n != 880; n -= 16)
    {
      *&v649[v21] = vqsubq_s16(*&v723[n], *&v690[v21]);
      v21 += 16;
    }

    v23 = 880;
    for (ii = 896; ii != 1024; ii += 16)
    {
      *&v649[ii] = vqaddq_s16(*&v723[ii], *&v690[v23]);
      v23 -= 16;
    }

    v25 = 0;
    for (jj = 112; jj != 48; jj -= 16)
    {
      *(&v605 + v25) = vqaddq_s16(*&v649[v25], *&v649[jj]);
      v25 += 16;
    }

    v27 = 64;
    do
    {
      *(&v605 + v27) = vqsubq_s16(*&v649[jj], *&v649[v27]);
      jj -= 16;
      v27 += 16;
    }

    while (jj != -16);
    v616 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v652.i8, *v5.i8), *v655.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v652, v5), v655, v5), 0xDuLL);
    v615 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v653.i8, *v5.i8), *v654.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v653, v5), v654, v5), 0xDuLL);
    v613 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v652.i8, *v6.i8), *v655.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v652, v6), v655, v5), 0xDuLL);
    v614 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v653.i8, *v6.i8), *v654.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v653, v6), v654, v5), 0xDuLL);
    v28 = 256;
    for (kk = 368; kk != 304; kk -= 16)
    {
      *(&v605 + v28) = vqaddq_s16(*&v649[v28], *&v649[kk]);
      v28 += 16;
    }

    v30 = 320;
    do
    {
      *(&v605 + v30) = vqsubq_s16(*&v649[kk], *&v649[v30]);
      kk -= 16;
      v30 += 16;
    }

    while (kk != 240);
    v31 = 384;
    for (mm = 496; mm != 432; mm -= 16)
    {
      *(&v605 + v31) = vqsubq_s16(*&v649[mm], *&v649[v31]);
      v31 += 16;
    }

    v33 = 432;
    for (nn = 448; nn != 512; nn += 16)
    {
      *(&v605 + nn) = vqaddq_s16(*&v649[nn], *&v649[v33]);
      v33 -= 16;
    }

    v35 = vdupq_n_s16(0x1D90u);
    v36 = vdupq_n_s16(0xC3Fu);
    v37 = vdupq_n_s16(0xE270u);
    v648 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v674.i8, *v36.i8), *v689.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v674, v36), v689, v35), 0xDuLL);
    v647 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v675.i8, *v36.i8), *v688.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v675, v36), v688, v35), 0xDuLL);
    v633 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v674.i8, *v37.i8), *v689.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v674, v37), v689, v36), 0xDuLL);
    v634 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v675.i8, *v37.i8), *v688.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v675, v37), v688, v36), 0xDuLL);
    v646 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v676.i8, *v36.i8), *v687.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v676, v36), v687, v35), 0xDuLL);
    v645 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v677.i8, *v36.i8), *v686.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v677, v36), v686, v35), 0xDuLL);
    v635 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v676.i8, *v37.i8), *v687.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v676, v37), v687, v36), 0xDuLL);
    v636 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v677.i8, *v37.i8), *v686.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v677, v37), v686, v36), 0xDuLL);
    v38 = vdupq_n_s16(0xF3C1u);
    v644 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v678.i8, *v37.i8), *v685.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v678, v37), v685, v36), 0xDuLL);
    v643 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v679.i8, *v37.i8), *v684.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v679, v37), v684, v36), 0xDuLL);
    v637 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v678.i8, *v38.i8), *v685.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v678, v38), v685, v37), 0xDuLL);
    v638 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v679.i8, *v38.i8), *v684.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v679, v38), v684, v37), 0xDuLL);
    v642 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v680.i8, *v37.i8), *v683.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v680, v37), v683, v36), 0xDuLL);
    v641 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v681.i8, *v37.i8), *v682.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v681, v37), v682, v36), 0xDuLL);
    v639 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v680.i8, *v38.i8), *v683.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v680, v38), v683, v37), 0xDuLL);
    v640 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v681.i8, *v38.i8), *v682.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v681, v38), v682, v37), 0xDuLL);
    v551 = vqaddq_s16(v605, v608);
    v552 = vqaddq_s16(v606, v607);
    v553 = vqsubq_s16(v606, v607);
    v554 = vqsubq_s16(v605, v608);
    v556 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v610.i8, *v5.i8), *v611.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v610, v5), v611, v5), 0xDuLL);
    v555 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v610.i8, *v6.i8), *v611.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v610, v6), v611, v5), 0xDuLL);
    v557 = vqaddq_s16(v650, v614);
    v558 = vqaddq_s16(v651, v613);
    v559 = vqsubq_s16(v651, v613);
    v560 = vqsubq_s16(v650, v614);
    v561 = vqsubq_s16(v657, v615);
    v562 = vqsubq_s16(v656, v616);
    v563 = vqaddq_s16(v656, v616);
    v564 = vqaddq_s16(v657, v615);
    v572 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v619.i8, *v36.i8), *v630.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v619, v36), v630, v35), 0xDuLL);
    v571 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v620.i8, *v36.i8), *v629.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v620, v36), v629, v35), 0xDuLL);
    v565 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v619.i8, *v37.i8), *v630.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v619, v37), v630, v36), 0xDuLL);
    v566 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v620.i8, *v37.i8), *v629.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v620, v37), v629, v36), 0xDuLL);
    v570 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v621.i8, *v37.i8), *v628.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v621, v37), v628, v36), 0xDuLL);
    v569 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v622.i8, *v37.i8), *v627.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v622, v37), v627, v36), 0xDuLL);
    v567 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v621.i8, *v38.i8), *v628.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v621, v38), v628, v37), 0xDuLL);
    v568 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v622.i8, *v38.i8), *v627.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v622, v38), v627, v37), 0xDuLL);
    v39 = 512;
    for (i1 = 624; i1 != 560; i1 -= 16)
    {
      *(&v551 + v39) = vqaddq_s16(*&v649[v39], *(&v605 + i1));
      v39 += 16;
    }

    v41 = 576;
    do
    {
      *(&v551 + v41) = vqsubq_s16(*&v649[i1], *(&v605 + v41));
      i1 -= 16;
      v41 += 16;
    }

    while (i1 != 496);
    v42 = 640;
    for (i2 = 752; i2 != 688; i2 -= 16)
    {
      *(&v551 + v42) = vqsubq_s16(*&v649[i2], *(&v605 + v42));
      v42 += 16;
    }

    v44 = 688;
    for (i3 = 704; i3 != 768; i3 += 16)
    {
      *(&v551 + i3) = vqaddq_s16(*&v649[i3], *(&v605 + v44));
      v44 -= 16;
    }

    v46 = 768;
    for (i4 = 880; i4 != 816; i4 -= 16)
    {
      *(&v551 + v46) = vqaddq_s16(*&v649[v46], *(&v605 + i4));
      v46 += 16;
    }

    v48 = 832;
    do
    {
      *(&v551 + v48) = vqsubq_s16(*&v649[i4], *(&v605 + v48));
      i4 -= 16;
      v48 += 16;
    }

    while (i4 != 752);
    v49 = 896;
    for (i5 = 1008; i5 != 944; i5 -= 16)
    {
      *(&v551 + v49) = vqsubq_s16(*&v649[i5], *(&v605 + v49));
      v49 += 16;
    }

    v51 = 944;
    for (i6 = 960; i6 != 1024; i6 += 16)
    {
      *(&v551 + i6) = vqaddq_s16(*&v649[i6], *(&v605 + v51));
      v51 -= 16;
    }

    v53 = 0;
    v545 = vmlal_s16(vmull_s16(*v553.i8, *v36.i8), *v554.i8, *v35.i8);
    v544 = vmlal_high_s16(vmull_high_s16(v553, v36), v554, v35);
    v543 = vmlal_s16(vmull_s16(*v553.i8, *v37.i8), *v554.i8, *v36.i8);
    v542 = vmlal_high_s16(vmull_high_s16(v553, v37), v554, v36);
    v54 = vmlal_s16(vmull_s16(*v558.i8, *v36.i8), *v563.i8, *v35.i8);
    v55 = vmlal_high_s16(vmull_high_s16(v558, v36), v563, v35);
    v56 = vmlal_s16(vmull_s16(*v558.i8, *v37.i8), *v563.i8, *v36.i8);
    v57 = vmlal_high_s16(vmull_high_s16(v558, v37), v563, v36);
    v58 = vqaddq_s16(v618, v565);
    v59 = vqsubq_s16(v618, v565);
    v60 = vqsubq_s16(v631, v572);
    v61 = vqaddq_s16(v631, v572);
    v62 = vdupq_n_s16(0x1F63u);
    v498 = vmlal_s16(vmull_s16(*v559.i8, *v37.i8), *v562.i8, *v36.i8);
    v63 = vdupq_n_s16(0x63Eu);
    v64 = vdupq_n_s16(0xE09Du);
    v496 = vmlal_high_s16(vmull_high_s16(v559, v37), v562, v36);
    v494 = vmlal_s16(vmull_s16(*v559.i8, *v38.i8), *v562.i8, *v37.i8);
    v490 = vmlal_high_s16(vmull_high_s16(v559, v38), v562, v37);
    v65 = vmlal_s16(vmull_s16(*v575.i8, *v63.i8), *v602.i8, *v62.i8);
    v66 = vmlal_high_s16(vmull_high_s16(v575, v63), v602, v62);
    v67 = vmlal_s16(vmull_s16(*v575.i8, *v64.i8), *v602.i8, *v63.i8);
    v68 = vmlal_high_s16(vmull_high_s16(v575, v64), v602, v63);
    v480 = vmlal_s16(vmull_s16(*v576.i8, *v63.i8), *v601.i8, *v62.i8);
    v478 = vmlal_high_s16(vmull_high_s16(v576, v63), v601, v62);
    v476 = vmlal_s16(vmull_s16(*v576.i8, *v64.i8), *v601.i8, *v63.i8);
    v474 = vmlal_high_s16(vmull_high_s16(v576, v64), v601, v63);
    v506 = vmlal_s16(vmull_s16(*v577.i8, *v64.i8), *v600.i8, *v63.i8);
    v504 = vmlal_high_s16(vmull_high_s16(v577, v64), v600, v63);
    v69 = vdupq_n_s16(0xF9C2u);
    v502 = vmlal_s16(vmull_s16(*v577.i8, *v69.i8), *v600.i8, *v64.i8);
    v500 = vmlal_high_s16(vmull_high_s16(v577, v69), v600, v64);
    v70 = vmlal_s16(vmull_s16(*v578.i8, *v64.i8), *v599.i8, *v63.i8);
    v71 = vmlal_high_s16(vmull_high_s16(v578, v64), v599, v63);
    v72 = vmlal_s16(vmull_s16(*v578.i8, *v69.i8), *v599.i8, *v64.i8);
    v73 = vmlal_high_s16(vmull_high_s16(v578, v69), v599, v64);
    v74 = vqaddq_s16(v609, v555);
    v75 = vqaddq_s16(v612, v556);
    v541 = vmlal_s16(vmull_s16(*v74.i8, *v63.i8), *v75.i8, *v62.i8);
    v540 = vmlal_high_s16(vmull_high_s16(v74, v63), v75, v62);
    v539 = vmlal_s16(vmull_s16(*v74.i8, *v64.i8), *v75.i8, *v63.i8);
    v538 = vmlal_high_s16(vmull_high_s16(v74, v64), v75, v63);
    v510 = vmlal_s16(vmull_s16(*v58.i8, *v63.i8), *v61.i8, *v62.i8);
    v508 = vmlal_high_s16(vmull_high_s16(v58, v63), v61, v62);
    v472 = vmlal_s16(vmull_s16(*v58.i8, *v64.i8), *v61.i8, *v63.i8);
    v470 = vmlal_high_s16(vmull_high_s16(v58, v64), v61, v63);
    v488 = vmlal_s16(vmull_s16(*v59.i8, *v64.i8), *v60.i8, *v63.i8);
    v486 = vmlal_high_s16(vmull_high_s16(v59, v64), v60, v63);
    v484 = vmlal_s16(vmull_s16(*v59.i8, *v69.i8), *v60.i8, *v64.i8);
    v482 = vmlal_high_s16(vmull_high_s16(v59, v69), v60, v64);
    v76 = vqsubq_s16(v609, v555);
    v77 = vqsubq_s16(v612, v556);
    v78 = vqsubq_s16(v623, v568);
    v79 = vqaddq_s16(v623, v568);
    v80 = vqaddq_s16(v626, v569);
    v81 = vqsubq_s16(v626, v569);
    v82 = vdupq_n_s16(0x11C7u);
    v83 = vdupq_n_s16(0x1A9Bu);
    v84 = vmlal_s16(vmull_s16(*v583.i8, *v83.i8), *v594.i8, *v82.i8);
    v85 = vmlal_high_s16(vmull_high_s16(v583, v83), v594, v82);
    v86 = vdupq_n_s16(0xEE39u);
    v87 = vmlal_s16(vmull_s16(*v583.i8, *v86.i8), *v594.i8, *v83.i8);
    v88 = vmlal_high_s16(vmull_high_s16(v583, v86), v594, v83);
    v520 = vmlal_s16(vmull_s16(*v584.i8, *v83.i8), *v593.i8, *v82.i8);
    v518 = vmlal_high_s16(vmull_high_s16(v584, v83), v593, v82);
    v516 = vmlal_s16(vmull_s16(*v584.i8, *v86.i8), *v593.i8, *v83.i8);
    v514 = vmlal_high_s16(vmull_high_s16(v584, v86), v593, v83);
    v528 = vmlal_s16(vmull_s16(*v585.i8, *v86.i8), *v592.i8, *v83.i8);
    v526 = vmlal_high_s16(vmull_high_s16(v585, v86), v592, v83);
    v524 = vmlal_s16(vmull_s16(*v585.i8, v379), *v592.i8, *v86.i8);
    v522 = vmlal_high_s16(vmull_s16(*&vextq_s8(v585, v585, 8uLL), v379), v592, v86);
    v89 = vmlal_s16(vmull_s16(*v586.i8, *v86.i8), *v591.i8, *v83.i8);
    v90 = vmlal_high_s16(vmull_high_s16(v586, v86), v591, v83);
    v91 = vmlal_s16(vmull_s16(*v586.i8, v379), *v591.i8, *v86.i8);
    v92 = vmlal_high_s16(vmull_s16(*&vextq_s8(v586, v586, 8uLL), v379), v591, v86);
    v535 = vmlal_s16(vmull_s16(*v76.i8, *v83.i8), *v77.i8, *v82.i8);
    v534 = vmlal_high_s16(vmull_high_s16(v76, v83), v77, v82);
    v533 = vmlal_s16(vmull_s16(*v76.i8, *v86.i8), *v77.i8, *v83.i8);
    v532 = vmlal_high_s16(vmull_high_s16(v76, v86), v77, v83);
    v468 = vmlal_s16(vmull_s16(*v78.i8, *v83.i8), *v81.i8, *v82.i8);
    v466 = vmlal_high_s16(vmull_high_s16(v78, v83), v81, v82);
    v464 = vmlal_s16(vmull_s16(*v78.i8, *v86.i8), *v81.i8, *v83.i8);
    v462 = vmlal_high_s16(vmull_high_s16(v78, v86), v81, v83);
    v456 = vmlal_s16(vmull_s16(*v79.i8, *v86.i8), *v80.i8, *v83.i8);
    v454 = vmlal_high_s16(vmull_high_s16(v79, v86), v80, v83);
    v450 = vmlal_high_s16(vmull_s16(*&vextq_s8(v79, v79, 8uLL), v379), v80, v86);
    v452 = vmlal_s16(vmull_s16(*v79.i8, v379), *v80.i8, *v86.i8);
    v93 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
    v94 = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
    v95 = vrshrn_high_n_s32(vrshrn_n_s32(v65, 0xDuLL), v66, 0xDuLL);
    v96 = vrshrn_high_n_s32(vrshrn_n_s32(v67, 0xDuLL), v68, 0xDuLL);
    v97 = vqaddq_s16(v574, v96);
    v98 = vqsubq_s16(v574, v96);
    v99 = vqsubq_s16(v603, v95);
    v100 = vqaddq_s16(v603, v95);
    v101 = vqaddq_s16(v557, v94);
    v102 = vqaddq_s16(v564, v93);
    v103 = vdupq_n_s16(0x1FD9u);
    v104 = vdupq_n_s16(0x323u);
    v531 = vmlal_s16(vmull_s16(*v101.i8, *v104.i8), *v102.i8, *v103.i8);
    v530 = vmlal_high_s16(vmull_high_s16(v101, v104), v102, v103);
    v105 = vdupq_n_s16(0xE027u);
    v537 = vmlal_s16(vmull_s16(*v101.i8, *v105.i8), *v102.i8, *v104.i8);
    v536 = vmlal_high_s16(vmull_high_s16(v101, v105), v102, v104);
    v106 = vmlal_s16(vmull_s16(*v97.i8, *v104.i8), *v100.i8, *v103.i8);
    v107 = vmlal_high_s16(vmull_high_s16(v97, v104), v100, v103);
    v108 = vmlal_s16(vmull_s16(*v97.i8, *v105.i8), *v100.i8, *v104.i8);
    v109 = vmlal_high_s16(vmull_high_s16(v97, v105), v100, v104);
    v110 = vmlal_s16(vmull_s16(*v98.i8, *v105.i8), *v99.i8, *v104.i8);
    v111 = vmlal_high_s16(vmull_high_s16(v98, v105), v99, v104);
    v112 = vdupq_n_s16(0xFCDDu);
    v113 = vmlal_s16(vmull_s16(*v98.i8, *v112.i8), *v99.i8, *v105.i8);
    v114 = vmlal_high_s16(vmull_high_s16(v98, v112), v99, v105);
    v115 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xDuLL), v71, 0xDuLL);
    v116 = vrshrn_high_n_s32(vrshrn_n_s32(v72, 0xDuLL), v73, 0xDuLL);
    v117 = vqsubq_s16(v557, v94);
    v118 = vqsubq_s16(v564, v93);
    v119 = vqsubq_s16(v579, v116);
    v120 = vqaddq_s16(v579, v116);
    v121 = vqaddq_s16(v598, v115);
    v122 = vdupq_n_s16(0x144Du);
    v123 = vdupq_n_s16(0x18BDu);
    v124 = vqsubq_s16(v598, v115);
    v125 = vmlal_s16(vmull_s16(*v117.i8, *v123.i8), *v118.i8, *v122.i8);
    v126 = vdupq_n_s16(0xEBB3u);
    v127 = vmlal_high_s16(vmull_high_s16(v117, v123), v118, v122);
    v513 = vmlal_s16(vmull_s16(*v117.i8, *v126.i8), *v118.i8, *v123.i8);
    v512 = vmlal_high_s16(vmull_high_s16(v117, v126), v118, v123);
    v400 = vmlal_s16(vmull_s16(*v119.i8, *v123.i8), *v124.i8, *v122.i8);
    v128 = vmlal_high_s16(vmull_high_s16(v119, v123), v124, v122);
    v129 = vmlal_s16(vmull_s16(*v119.i8, *v126.i8), *v124.i8, *v123.i8);
    v130 = vmlal_high_s16(vmull_high_s16(v119, v126), v124, v123);
    v414 = vmlal_s16(vmull_s16(*v120.i8, *v126.i8), *v121.i8, *v123.i8);
    v131 = vdupq_n_s16(0xE743u);
    v412 = vmlal_high_s16(vmull_high_s16(v120, v126), v121, v123);
    v410 = vmlal_s16(vmull_s16(*v120.i8, *v131.i8), *v121.i8, *v126.i8);
    v407 = vmlal_high_s16(vmull_high_s16(v120, v131), v121, v126);
    v132 = vrshrn_high_n_s32(vrshrn_n_s32(v498, 0xDuLL), v496, 0xDuLL);
    v133 = vrshrn_high_n_s32(vrshrn_n_s32(v494, 0xDuLL), v490, 0xDuLL);
    v134 = vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xDuLL), v85, 0xDuLL);
    v135 = vrshrn_high_n_s32(vrshrn_n_s32(v87, 0xDuLL), v88, 0xDuLL);
    v136 = vqaddq_s16(v582, v135);
    v137 = vqsubq_s16(v582, v135);
    v138 = vqsubq_s16(v595, v134);
    v139 = vqaddq_s16(v595, v134);
    v140 = vqsubq_s16(v560, v133);
    v141 = vdupq_n_s16(0x1C39u);
    v142 = vdupq_n_s16(0xF16u);
    v143 = vqsubq_s16(v561, v132);
    v144 = vmlal_s16(vmull_s16(*v140.i8, *v142.i8), *v143.i8, *v141.i8);
    v145 = vdupq_n_s16(0xE3C7u);
    v499 = vmlal_high_s16(vmull_high_s16(v140, v142), v143, v141);
    v497 = vmlal_s16(vmull_s16(*v140.i8, *v145.i8), *v143.i8, *v142.i8);
    v495 = vmlal_high_s16(vmull_high_s16(v140, v145), v143, v142);
    v424 = vmlal_s16(vmull_s16(*v136.i8, *v142.i8), *v139.i8, *v141.i8);
    v422 = vmlal_high_s16(vmull_high_s16(v136, v142), v139, v141);
    v420 = vmlal_s16(vmull_s16(*v136.i8, *v145.i8), *v139.i8, *v142.i8);
    v418 = vmlal_high_s16(vmull_high_s16(v136, v145), v139, v142);
    v432 = vmlal_s16(vmull_s16(*v137.i8, *v145.i8), *v138.i8, *v142.i8);
    v146 = vdupq_n_s16(0xF0EAu);
    v430 = vmlal_high_s16(vmull_high_s16(v137, v145), v138, v142);
    v426 = vmlal_high_s16(vmull_high_s16(v137, v146), v138, v145);
    v428 = vmlal_s16(vmull_s16(*v137.i8, *v146.i8), *v138.i8, *v145.i8);
    v147 = vrshrn_high_n_s32(vrshrn_n_s32(v89, 0xDuLL), v90, 0xDuLL);
    v148 = vrshrn_high_n_s32(vrshrn_n_s32(v91, 0xDuLL), v92, 0xDuLL);
    v149 = vqaddq_s16(v560, v133);
    v150 = vqaddq_s16(v561, v132);
    v151 = vqsubq_s16(v587, v148);
    v152 = vqaddq_s16(v587, v148);
    v153 = vqaddq_s16(v590, v147);
    v154 = vdupq_n_s16(0x94Au);
    v155 = vqsubq_s16(v590, v147);
    v156 = vdupq_n_s16(0x1E9Fu);
    v157 = vmlal_s16(vmull_s16(*v149.i8, *v156.i8), *v150.i8, *v154.i8);
    v493 = vmlal_high_s16(vmull_high_s16(v149, v156), v150, v154);
    v158 = vdupq_n_s16(0xF6B6u);
    v492 = vmlal_s16(vmull_s16(*v149.i8, *v158.i8), *v150.i8, *v156.i8);
    v491 = vmlal_high_s16(vmull_high_s16(v149, v158), v150, v156);
    v440 = vmlal_s16(vmull_s16(*v151.i8, *v156.i8), *v155.i8, *v154.i8);
    v438 = vmlal_high_s16(vmull_high_s16(v151, v156), v155, v154);
    v436 = vmlal_s16(vmull_s16(*v151.i8, *v158.i8), *v155.i8, *v156.i8);
    v434 = vmlal_high_s16(vmull_high_s16(v151, v158), v155, v156);
    v159 = vmlal_s16(vmull_s16(*v152.i8, *v158.i8), *v153.i8, *v156.i8);
    v160 = vmlal_high_s16(vmull_high_s16(v152, v158), v153, v156);
    v161 = vmlal_s16(vmull_s16(*v152.i8, v378), *v153.i8, *v158.i8);
    v162 = vmlal_high_s16(vmull_s16(*&vextq_s8(v152, v152, 8uLL), v378), v153, v158);
    v163 = vrshrn_high_n_s32(vrshrn_n_s32(v510, 0xDuLL), v508, 0xDuLL);
    v164 = vrshrn_high_n_s32(vrshrn_n_s32(v472, 0xDuLL), v470, 0xDuLL);
    v165 = vqaddq_s16(v617, v566);
    v166 = vqaddq_s16(v632, v571);
    v167 = vqaddq_s16(v165, v164);
    v168 = vqaddq_s16(v166, v163);
    v169 = vdupq_n_s16(0x1FF6u);
    v170 = vdupq_n_s16(0x192u);
    v473 = vmlal_s16(vmull_s16(*v167.i8, *v170.i8), *v168.i8, *v169.i8);
    v471 = vmlal_high_s16(vmull_high_s16(v167, v170), v168, v169);
    v171 = vdupq_n_s16(0xE00Au);
    v511 = vmlal_s16(vmull_s16(*v167.i8, *v171.i8), *v168.i8, *v170.i8);
    v509 = vmlal_high_s16(vmull_high_s16(v167, v171), v168, v170);
    v172 = vqsubq_s16(v165, v164);
    v173 = vqsubq_s16(v166, v163);
    v174 = vdupq_n_s16(0x157Du);
    v175 = vdupq_n_s16(0x17B6u);
    v461 = vmlal_s16(vmull_s16(*v172.i8, *v175.i8), *v173.i8, *v174.i8);
    v460 = vmlal_high_s16(vmull_high_s16(v172, v175), v173, v174);
    v176 = vdupq_n_s16(0xEA83u);
    v458 = vmlal_high_s16(vmull_high_s16(v172, v176), v173, v175);
    v459 = vmlal_s16(vmull_s16(*v172.i8, *v176.i8), *v173.i8, *v175.i8);
    v177 = vqsubq_s16(v617, v566);
    v178 = vqsubq_s16(v632, v571);
    v179 = vrshrn_high_n_s32(vrshrn_n_s32(v488, 0xDuLL), v486, 0xDuLL);
    v180 = vrshrn_high_n_s32(vrshrn_n_s32(v484, 0xDuLL), v482, 0xDuLL);
    v181 = vqsubq_s16(v177, v180);
    v182 = vqsubq_s16(v178, v179);
    v183 = vdupq_n_s16(0x1CEDu);
    v184 = vdupq_n_s16(0xDAFu);
    v485 = vmlal_s16(vmull_s16(*v181.i8, *v184.i8), *v182.i8, *v183.i8);
    v483 = vmlal_high_s16(vmull_high_s16(v181, v184), v182, v183);
    v185 = vdupq_n_s16(0xE313u);
    v489 = vmlal_s16(vmull_s16(*v181.i8, *v185.i8), *v182.i8, *v184.i8);
    v487 = vmlal_high_s16(vmull_high_s16(v181, v185), v182, v184);
    v186 = vqaddq_s16(v177, v180);
    v187 = vqaddq_s16(v178, v179);
    v188 = vdupq_n_s16(0xF538u);
    v189 = vmull_s16(*v186.i8, *v188.i8);
    v190 = vmull_high_s16(v186, v188);
    v191 = vdupq_n_s16(0x1E21u);
    v446 = vmlal_high_s16(v190, v187, v191);
    v447 = vmlal_s16(v189, *v187.i8, *v191.i8);
    v192 = vrshrn_high_n_s32(vrshrn_n_s32(v468, 0xDuLL), v466, 0xDuLL);
    v193 = vrshrn_high_n_s32(vrshrn_n_s32(v464, 0xDuLL), v462, 0xDuLL);
    v194 = vqsubq_s16(v624, v567);
    v195 = vqsubq_s16(v625, v570);
    v196 = vqaddq_s16(v194, v193);
    v197 = vqaddq_s16(v195, v192);
    v198 = vdupq_n_s16(0x1F0Au);
    v199 = vdupq_n_s16(0x7C6u);
    v443 = vmlal_s16(vmull_s16(*v196.i8, *v199.i8), *v197.i8, *v198.i8);
    v442 = vmlal_high_s16(vmull_high_s16(v196, v199), v197, v198);
    v200 = vdupq_n_s16(0xE0F6u);
    v469 = vmlal_s16(vmull_s16(*v196.i8, *v200.i8), *v197.i8, *v199.i8);
    v467 = vmlal_high_s16(vmull_high_s16(v196, v200), v197, v199);
    v201 = vqsubq_s16(v194, v193);
    v202 = vqsubq_s16(v195, v192);
    v203 = vdupq_n_s16(0x1074u);
    v204 = vdupq_n_s16(0x1B73u);
    v465 = vmlal_s16(vmull_s16(*v201.i8, *v204.i8), *v202.i8, *v203.i8);
    v463 = vmlal_high_s16(vmull_high_s16(v201, v204), v202, v203);
    v205 = vdupq_n_s16(0xEF8Cu);
    v448 = vmlal_high_s16(vmull_high_s16(v201, v205), v202, v204);
    v449 = vmlal_s16(vmull_s16(*v201.i8, *v205.i8), *v202.i8, *v204.i8);
    v206 = vqaddq_s16(v624, v567);
    v207 = vqaddq_s16(v625, v570);
    v208 = vrshrn_high_n_s32(vrshrn_n_s32(v456, 0xDuLL), v454, 0xDuLL);
    v209 = vrshrn_high_n_s32(vrshrn_n_s32(v452, 0xDuLL), v450, 0xDuLL);
    v210 = vqsubq_s16(v206, v209);
    v211 = vqsubq_s16(v207, v208);
    v212 = vdupq_n_s16(0x19B4u);
    v213 = vdupq_n_s16(0x1310u);
    v445 = vmlal_s16(vmull_s16(*v210.i8, *v213.i8), *v211.i8, *v212.i8);
    v444 = vmlal_high_s16(vmull_high_s16(v210, v213), v211, v212);
    v214 = vdupq_n_s16(0xE64Cu);
    v451 = vmlal_high_s16(vmull_high_s16(v210, v214), v211, v213);
    v453 = vmlal_s16(vmull_s16(*v210.i8, *v214.i8), *v211.i8, *v213.i8);
    v215 = vqaddq_s16(v206, v209);
    v216 = vqaddq_s16(v207, v208);
    v217 = vdupq_n_s16(0x4B2u);
    v218 = vdupq_n_s16(0x1FA7u);
    v457 = vmlal_s16(vmull_s16(*v215.i8, *v218.i8), *v216.i8, *v217.i8);
    v455 = vmlal_high_s16(vmull_high_s16(v215, v218), v216, v217);
    v219 = vdupq_n_s16(0xFB4Eu);
    v416 = vmlal_high_s16(vmull_high_s16(v215, v219), v216, v218);
    v417 = vmlal_s16(vmull_s16(*v215.i8, *v219.i8), *v216.i8, *v218.i8);
    v220 = vrshrn_high_n_s32(vrshrn_n_s32(v480, 0xDuLL), v478, 0xDuLL);
    v221 = vrshrn_high_n_s32(vrshrn_n_s32(v476, 0xDuLL), v474, 0xDuLL);
    v399 = vrshrn_high_n_s32(vrshrn_n_s32(v106, 0xDuLL), v107, 0xDuLL);
    v402 = vrshrn_high_n_s32(vrshrn_n_s32(v108, 0xDuLL), v109, 0xDuLL);
    v403 = vqaddq_s16(v573, v221);
    v398 = vqaddq_s16(v604, v220);
    v222 = vqsubq_s16(v403, v402);
    v223 = vqsubq_s16(v398, v399);
    v224 = vdupq_n_s16(0x1611u);
    v225 = vdupq_n_s16(0x172Du);
    v481 = vmlal_s16(vmull_s16(*v222.i8, *v225.i8), *v223.i8, *v224.i8);
    v479 = vmlal_high_s16(vmull_high_s16(v222, v225), v223, v224);
    v226 = vdupq_n_s16(0xE9EFu);
    v477 = vmlal_s16(vmull_s16(*v222.i8, *v226.i8), *v223.i8, *v225.i8);
    v475 = vmlal_high_s16(vmull_high_s16(v222, v226), v223, v225);
    v227 = vqsubq_s16(v573, v221);
    v228 = vqsubq_s16(v604, v220);
    v229 = vrshrn_high_n_s32(vrshrn_n_s32(v110, 0xDuLL), v111, 0xDuLL);
    v230 = vrshrn_high_n_s32(vrshrn_n_s32(v113, 0xDuLL), v114, 0xDuLL);
    v231 = vqsubq_s16(v227, v230);
    v232 = vqsubq_s16(v228, v229);
    v233 = vdupq_n_s16(0x1D41u);
    v234 = vdupq_n_s16(0xCF8u);
    v397 = vmlal_s16(vmull_s16(*v231.i8, *v234.i8), *v232.i8, *v233.i8);
    v396 = vmlal_high_s16(vmull_high_s16(v231, v234), v232, v233);
    v235 = vdupq_n_s16(0xE2BFu);
    v409 = vmlal_s16(vmull_s16(*v231.i8, *v235.i8), *v232.i8, *v234.i8);
    v406 = vmlal_high_s16(vmull_high_s16(v231, v235), v232, v234);
    v236 = vqaddq_s16(v227, v230);
    v237 = vqaddq_s16(v228, v229);
    v238 = vdupq_n_s16(0xB84u);
    v239 = vdupq_n_s16(0x1DDBu);
    v405 = vmlal_s16(vmull_s16(*v236.i8, *v239.i8), *v237.i8, *v238.i8);
    v404 = vmlal_high_s16(vmull_high_s16(v236, v239), v237, v238);
    v240 = vdupq_n_s16(0xF47Cu);
    v394 = vmlal_high_s16(vmull_high_s16(v236, v240), v237, v239);
    v395 = vmlal_s16(vmull_s16(*v236.i8, *v240.i8), *v237.i8, *v239.i8);
    v241 = vrshrn_high_n_s32(vrshrn_n_s32(v506, 0xDuLL), v504, 0xDuLL);
    v242 = vrshrn_high_n_s32(vrshrn_n_s32(v502, 0xDuLL), v500, 0xDuLL);
    v243 = vrshrn_high_n_s32(vrshrn_n_s32(v400, 0xDuLL), v128, 0xDuLL);
    v244 = vrshrn_high_n_s32(vrshrn_n_s32(v129, 0xDuLL), v130, 0xDuLL);
    v245 = vqsubq_s16(v580, v242);
    v246 = vqsubq_s16(v597, v241);
    v247 = vqaddq_s16(v245, v244);
    v248 = vqaddq_s16(v246, v243);
    v249 = vdupq_n_s16(0x1F39u);
    v250 = vdupq_n_s16(0x703u);
    v401 = vmlal_s16(vmull_s16(*v247.i8, *v250.i8), *v248.i8, *v249.i8);
    v393 = vmlal_high_s16(vmull_high_s16(v247, v250), v248, v249);
    v251 = vdupq_n_s16(0xE0C7u);
    v507 = vmlal_s16(vmull_s16(*v247.i8, *v251.i8), *v248.i8, *v250.i8);
    v505 = vmlal_high_s16(vmull_high_s16(v247, v251), v248, v250);
    v252 = vqsubq_s16(v245, v244);
    v253 = vqsubq_s16(v246, v243);
    v254 = vdupq_n_s16(0x111Fu);
    v255 = vdupq_n_s16(0x1B09u);
    v503 = vmlal_s16(vmull_s16(*v252.i8, *v255.i8), *v253.i8, *v254.i8);
    v501 = vmlal_high_s16(vmull_high_s16(v252, v255), v253, v254);
    v256 = vdupq_n_s16(0xEEE1u);
    v391 = vmlal_high_s16(vmull_high_s16(v252, v256), v253, v255);
    v392 = vmlal_s16(vmull_s16(*v252.i8, *v256.i8), *v253.i8, *v255.i8);
    v257 = vqaddq_s16(v580, v242);
    v258 = vqaddq_s16(v597, v241);
    v259 = vrshrn_high_n_s32(vrshrn_n_s32(v414, 0xDuLL), v412, 0xDuLL);
    v260 = vrshrn_high_n_s32(vrshrn_n_s32(v410, 0xDuLL), v407, 0xDuLL);
    v261 = vqsubq_s16(v257, v260);
    v262 = vqsubq_s16(v258, v259);
    v263 = vdupq_n_s16(0x1A2Au);
    v264 = vdupq_n_s16(0x126Du);
    v390 = vmlal_s16(vmull_s16(*v261.i8, *v264.i8), *v262.i8, *v263.i8);
    v389 = vmlal_high_s16(vmull_high_s16(v261, v264), v262, v263);
    v265 = vdupq_n_s16(0xE5D6u);
    v408 = vmlal_high_s16(vmull_high_s16(v261, v265), v262, v264);
    v266 = vqaddq_s16(v257, v260);
    v267 = vqaddq_s16(v258, v259);
    v268 = vdupq_n_s16(0x579u);
    v269 = vdupq_n_s16(0x1F87u);
    v415 = vmlal_s16(vmull_s16(*v266.i8, *v269.i8), *v267.i8, *v268.i8);
    v411 = vmlal_s16(vmull_s16(*v261.i8, *v265.i8), *v262.i8, *v264.i8);
    v413 = vmlal_high_s16(vmull_high_s16(v266, v269), v267, v268);
    v270 = vdupq_n_s16(0xFA87u);
    v387 = vmlal_high_s16(vmull_high_s16(v266, v270), v267, v269);
    v388 = vmlal_s16(vmull_s16(*v266.i8, *v270.i8), *v267.i8, *v269.i8);
    v271 = vrshrn_high_n_s32(vrshrn_n_s32(v520, 0xDuLL), v518, 0xDuLL);
    v272 = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xDuLL), v514, 0xDuLL);
    v273 = vrshrn_high_n_s32(vrshrn_n_s32(v424, 0xDuLL), v422, 0xDuLL);
    v274 = vrshrn_high_n_s32(vrshrn_n_s32(v420, 0xDuLL), v418, 0xDuLL);
    v275 = vqaddq_s16(v581, v272);
    v276 = vqaddq_s16(v596, v271);
    v277 = vqaddq_s16(v275, v274);
    v278 = vqaddq_s16(v276, v273);
    v279 = vdupq_n_s16(0x1FC2u);
    v280 = vdupq_n_s16(0x3EBu);
    v421 = vmlal_s16(vmull_s16(*v277.i8, *v280.i8), *v278.i8, *v279.i8);
    v419 = vmlal_high_s16(vmull_high_s16(v277, v280), v278, v279);
    v281 = vdupq_n_s16(0xE03Eu);
    v521 = vmlal_s16(vmull_s16(*v277.i8, *v281.i8), *v278.i8, *v280.i8);
    v519 = vmlal_high_s16(vmull_high_s16(v277, v281), v278, v280);
    v282 = vqsubq_s16(v275, v274);
    v283 = vqsubq_s16(v276, v273);
    v284 = vdupq_n_s16(0x13B0u);
    v285 = vdupq_n_s16(0x193Au);
    v517 = vmlal_s16(vmull_s16(*v282.i8, *v285.i8), *v283.i8, *v284.i8);
    v515 = vmlal_high_s16(vmull_high_s16(v282, v285), v283, v284);
    v286 = vdupq_n_s16(0xEC50u);
    v423 = vmlal_high_s16(vmull_high_s16(v282, v286), v283, v285);
    v425 = vmlal_s16(vmull_s16(*v282.i8, *v286.i8), *v283.i8, *v285.i8);
    v287 = vqsubq_s16(v581, v272);
    v288 = vqsubq_s16(v596, v271);
    v289 = vrshrn_high_n_s32(vrshrn_n_s32(v432, 0xDuLL), v430, 0xDuLL);
    v290 = vrshrn_high_n_s32(vrshrn_n_s32(v428, 0xDuLL), v426, 0xDuLL);
    v291 = vqsubq_s16(v287, v290);
    v292 = vqsubq_s16(v288, v289);
    v293 = vdupq_n_s16(0x1BD8u);
    v294 = vdupq_n_s16(0xFC6u);
    v386 = vmlal_s16(vmull_s16(*v291.i8, *v294.i8), *v292.i8, *v293.i8);
    v385 = vmlal_high_s16(vmull_high_s16(v291, v294), v292, v293);
    v295 = vdupq_n_s16(0xE428u);
    v429 = vmlal_high_s16(vmull_high_s16(v291, v295), v292, v294);
    v431 = vmlal_s16(vmull_s16(*v291.i8, *v295.i8), *v292.i8, *v294.i8);
    v296 = vqaddq_s16(v287, v290);
    v297 = vqaddq_s16(v288, v289);
    v298 = vdupq_n_s16(0x889u);
    v299 = vdupq_n_s16(0x1ED7u);
    v433 = vmlal_s16(vmull_s16(*v296.i8, *v299.i8), *v297.i8, *v298.i8);
    v427 = vmlal_high_s16(vmull_high_s16(v296, v299), v297, v298);
    v384 = vmlal_s16(vmull_s16(*v296.i8, v377), *v297.i8, *v299.i8);
    v383 = vmlal_high_s16(vmull_s16(*&vextq_s8(v296, v296, 8uLL), v377), v297, v299);
    v300 = vrshrn_high_n_s32(vrshrn_n_s32(v528, 0xDuLL), v526, 0xDuLL);
    v301 = vrshrn_high_n_s32(vrshrn_n_s32(v524, 0xDuLL), v522, 0xDuLL);
    v302 = vrshrn_high_n_s32(vrshrn_n_s32(v440, 0xDuLL), v438, 0xDuLL);
    v303 = vrshrn_high_n_s32(vrshrn_n_s32(v436, 0xDuLL), v434, 0xDuLL);
    v439 = vqsubq_s16(v588, v301);
    v441 = vqsubq_s16(v589, v300);
    v304 = vqsubq_s16(v439, v303);
    v305 = vqsubq_s16(v441, v302);
    v306 = vdupq_n_s16(0xE63u);
    v307 = vdupq_n_s16(0x1C95u);
    v529 = vmlal_s16(vmull_s16(*v304.i8, *v307.i8), *v305.i8, *v306.i8);
    v527 = vmlal_high_s16(vmull_high_s16(v304, v307), v305, v306);
    v308 = vdupq_n_s16(0xF19Du);
    v435 = vmlal_s16(vmull_s16(*v304.i8, *v308.i8), *v305.i8, *v307.i8);
    v381 = vmlal_high_s16(vmull_high_s16(v304, v308), v305, v307);
    v309 = vqaddq_s16(v588, v301);
    v310 = vqaddq_s16(v589, v300);
    v311 = vrshrn_high_n_s32(vrshrn_n_s32(v159, 0xDuLL), v160, 0xDuLL);
    v312 = vrshrn_high_n_s32(vrshrn_n_s32(v161, 0xDuLL), v162, 0xDuLL);
    v313 = vqsubq_s16(v309, v312);
    v314 = vdupq_n_s16(0x183Bu);
    v315 = vqsubq_s16(v310, v311);
    v316 = vdupq_n_s16(0x14E7u);
    v380 = vmlal_s16(vmull_s16(*v313.i8, *v316.i8), *v315.i8, *v314.i8);
    v317 = vmlal_high_s16(vmull_high_s16(v313, v316), v315, v314);
    v318 = vdupq_n_s16(0xE7C5u);
    v437 = vmlal_s16(vmull_s16(*v313.i8, *v318.i8), *v315.i8, *v316.i8);
    v382 = vmlal_high_s16(vmull_high_s16(v313, v318), v315, v316);
    v319 = vqaddq_s16(v309, v312);
    v320 = vdupq_n_s16(0x25Bu);
    v321 = vdupq_n_s16(0x1FEAu);
    v322 = vqaddq_s16(v310, v311);
    v525 = vmlal_s16(vmull_s16(*v319.i8, *v321.i8), *v322.i8, *v320.i8);
    v323 = vdupq_n_s16(0xFDA5u);
    v523 = vmlal_high_s16(vmull_high_s16(v319, v321), v322, v320);
    v324 = vmlal_s16(vmull_s16(*v319.i8, *v323.i8), *v322.i8, *v321.i8);
    v325 = vmlal_high_s16(vmull_high_s16(v319, v323), v322, v321);
    v326 = vqaddq_s16(v403, v402);
    v327 = vqaddq_s16(v398, v399);
    v328 = vdupq_n_s16(0x1FFEu);
    v329 = vmlal_s16(vmull_s16(*v326.i8, 0xC900C900C900C9), *v327.i8, *v328.i8);
    v308.i64[0] = 0xC900C900C900C9;
    v308.i64[1] = 0xC900C900C900C9;
    v330 = vmlal_high_s16(vmull_high_s16(v326, v308), v327, v328);
    v331 = vdupq_n_s16(0xE002u);
    v550[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v326.i8, *v331.i8), *v327.i8, 0xC900C900C900C9), 0xDuLL), vmlal_high_s16(vmull_high_s16(v326, v331), v327, v308), 0xDuLL);
    v550[1] = vrshrn_high_n_s32(vrshrn_n_s32(v329, 0xDuLL), v330, 0xDuLL);
    v550[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v551.i8, *v547.i8), *v552.i8, *v547.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v551, v547), v552, v547), 0xDuLL);
    v332 = vqaddq_s16(v439, v303);
    v550[3] = vrshrn_high_n_s32(vrshrn_n_s32(v324, 0xDuLL), v325, 0xDuLL);
    v550[2] = vrshrn_high_n_s32(vrshrn_n_s32(v473, 0xDuLL), v471, 0xDuLL);
    v333 = vqaddq_s16(v441, v302);
    v550[5] = vrshrn_high_n_s32(vrshrn_n_s32(v421, 0xDuLL), v419, 0xDuLL);
    v550[4] = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xDuLL), v530, 0xDuLL);
    v550[7] = vrshrn_high_n_s32(vrshrn_n_s32(v388, 0xDuLL), v387, 0xDuLL);
    v550[6] = vrshrn_high_n_s32(vrshrn_n_s32(v417, 0xDuLL), v416, 0xDuLL);
    v550[9] = vrshrn_high_n_s32(vrshrn_n_s32(v401, 0xDuLL), v393, 0xDuLL);
    v550[8] = vrshrn_high_n_s32(vrshrn_n_s32(v541, 0xDuLL), v540, 0xDuLL);
    v550[11] = vrshrn_high_n_s32(vrshrn_n_s32(v384, 0xDuLL), v383, 0xDuLL);
    v550[10] = vrshrn_high_n_s32(vrshrn_n_s32(v443, 0xDuLL), v442, 0xDuLL);
    v334 = vdupq_n_s16(0x1E63u);
    v550[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v332.i8, 0xA0A0A0A0A0A0A0ALL), *v333.i8, *v334.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v332, v332, 8uLL), 0xA0A0A0A0A0A0A0ALL), v333, v334), 0xDuLL);
    v550[12] = vrshrn_high_n_s32(vrshrn_n_s32(v492, 0xDuLL), v491, 0xDuLL);
    v550[15] = vrshrn_high_n_s32(vrshrn_n_s32(v395, 0xDuLL), v394, 0xDuLL);
    v550[14] = vrshrn_high_n_s32(vrshrn_n_s32(v447, 0xDuLL), v446, 0xDuLL);
    v550[17] = vrshrn_high_n_s32(vrshrn_n_s32(v397, 0xDuLL), v396, 0xDuLL);
    v550[16] = vrshrn_high_n_s32(vrshrn_n_s32(v545, 0xDuLL), v544, 0xDuLL);
    v550[19] = vrshrn_high_n_s32(vrshrn_n_s32(v435, 0xDuLL), v381, 0xDuLL);
    v550[18] = vrshrn_high_n_s32(vrshrn_n_s32(v485, 0xDuLL), v483, 0xDuLL);
    v550[21] = vrshrn_high_n_s32(vrshrn_n_s32(v386, 0xDuLL), v385, 0xDuLL);
    v550[20] = vrshrn_high_n_s32(vrshrn_n_s32(v144, 0xDuLL), v499, 0xDuLL);
    v550[23] = vrshrn_high_n_s32(vrshrn_n_s32(v392, 0xDuLL), v391, 0xDuLL);
    v550[22] = vrshrn_high_n_s32(vrshrn_n_s32(v449, 0xDuLL), v448, 0xDuLL);
    v550[25] = vrshrn_high_n_s32(vrshrn_n_s32(v390, 0xDuLL), v389, 0xDuLL);
    v550[24] = vrshrn_high_n_s32(vrshrn_n_s32(v533, 0xDuLL), v532, 0xDuLL);
    v550[27] = vrshrn_high_n_s32(vrshrn_n_s32(v425, 0xDuLL), v423, 0xDuLL);
    v550[26] = vrshrn_high_n_s32(vrshrn_n_s32(v445, 0xDuLL), v444, 0xDuLL);
    v550[29] = vrshrn_high_n_s32(vrshrn_n_s32(v380, 0xDuLL), v317, 0xDuLL);
    v550[28] = vrshrn_high_n_s32(vrshrn_n_s32(v513, 0xDuLL), v512, 0xDuLL);
    v550[31] = vrshrn_high_n_s32(vrshrn_n_s32(v477, 0xDuLL), v475, 0xDuLL);
    v550[30] = vrshrn_high_n_s32(vrshrn_n_s32(v459, 0xDuLL), v458, 0xDuLL);
    v550[33] = vrshrn_high_n_s32(vrshrn_n_s32(v481, 0xDuLL), v479, 0xDuLL);
    v550[32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v551.i8, *v546.i8), *v552.i8, *v547.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v551, v546), v552, v547), 0xDuLL);
    v550[35] = vrshrn_high_n_s32(vrshrn_n_s32(v437, 0xDuLL), v382, 0xDuLL);
    v550[34] = vrshrn_high_n_s32(vrshrn_n_s32(v461, 0xDuLL), v460, 0xDuLL);
    v550[37] = vrshrn_high_n_s32(vrshrn_n_s32(v517, 0xDuLL), v515, 0xDuLL);
    v550[36] = vrshrn_high_n_s32(vrshrn_n_s32(v125, 0xDuLL), v127, 0xDuLL);
    v550[39] = vrshrn_high_n_s32(vrshrn_n_s32(v411, 0xDuLL), v408, 0xDuLL);
    v550[38] = vrshrn_high_n_s32(vrshrn_n_s32(v453, 0xDuLL), v451, 0xDuLL);
    v550[41] = vrshrn_high_n_s32(vrshrn_n_s32(v503, 0xDuLL), v501, 0xDuLL);
    v550[40] = vrshrn_high_n_s32(vrshrn_n_s32(v535, 0xDuLL), v534, 0xDuLL);
    v550[43] = vrshrn_high_n_s32(vrshrn_n_s32(v431, 0xDuLL), v429, 0xDuLL);
    v550[42] = vrshrn_high_n_s32(vrshrn_n_s32(v465, 0xDuLL), v463, 0xDuLL);
    v550[45] = vrshrn_high_n_s32(vrshrn_n_s32(v529, 0xDuLL), v527, 0xDuLL);
    v550[44] = vrshrn_high_n_s32(vrshrn_n_s32(v497, 0xDuLL), v495, 0xDuLL);
    v550[47] = vrshrn_high_n_s32(vrshrn_n_s32(v409, 0xDuLL), v406, 0xDuLL);
    v550[46] = vrshrn_high_n_s32(vrshrn_n_s32(v489, 0xDuLL), v487, 0xDuLL);
    v335 = vdupq_n_s16(0xE19Du);
    v550[49] = vrshrn_high_n_s32(vrshrn_n_s32(v405, 0xDuLL), v404, 0xDuLL);
    v550[48] = vrshrn_high_n_s32(vrshrn_n_s32(v543, 0xDuLL), v542, 0xDuLL);
    v550[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v332.i8, *v335.i8), *v333.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v333, v333, 8uLL), 0xA0A0A0A0A0A0A0ALL), v332, v335), 0xDuLL);
    v550[52] = vrshrn_high_n_s32(vrshrn_n_s32(v157, 0xDuLL), v493, 0xDuLL);
    v550[53] = vrshrn_high_n_s32(vrshrn_n_s32(v433, 0xDuLL), v427, 0xDuLL);
    v550[54] = vrshrn_high_n_s32(vrshrn_n_s32(v469, 0xDuLL), v467, 0xDuLL);
    v550[55] = vrshrn_high_n_s32(vrshrn_n_s32(v507, 0xDuLL), v505, 0xDuLL);
    v550[56] = vrshrn_high_n_s32(vrshrn_n_s32(v539, 0xDuLL), v538, 0xDuLL);
    v550[57] = vrshrn_high_n_s32(vrshrn_n_s32(v415, 0xDuLL), v413, 0xDuLL);
    v550[58] = vrshrn_high_n_s32(vrshrn_n_s32(v457, 0xDuLL), v455, 0xDuLL);
    v550[59] = vrshrn_high_n_s32(vrshrn_n_s32(v521, 0xDuLL), v519, 0xDuLL);
    v550[60] = vrshrn_high_n_s32(vrshrn_n_s32(v537, 0xDuLL), v536, 0xDuLL);
    v550[61] = vrshrn_high_n_s32(vrshrn_n_s32(v525, 0xDuLL), v523, 0xDuLL);
    v550[62] = vrshrn_high_n_s32(vrshrn_n_s32(v511, 0xDuLL), v509, 0xDuLL);
    do
    {
      v550[v53] = vrshrq_n_s16(v550[v53], 2uLL);
      ++v53;
    }

    while (v53 != 64);
    v336 = v4;
    for (i7 = 112; i7 != 624; i7 += 128)
    {
      v338 = *&v549[i7 + 8016];
      v339 = *&v549[i7 + 8032];
      v340 = vtrn1q_s16(v338, v339);
      v341 = vtrn2q_s16(v338, v339);
      v342 = *&v549[i7 + 8048];
      v343 = *&v549[i7 + 8064];
      v344 = vtrn1q_s16(v342, v343);
      v345 = vtrn2q_s16(v342, v343);
      v346 = *&v549[i7 + 8080];
      v347 = *&v549[i7 + 8096];
      v348 = vtrn1q_s16(v346, v347);
      v349 = vtrn2q_s16(v346, v347);
      v350 = *&v549[i7 + 8112];
      v351 = v550[i7 / 0x10];
      v352 = vtrn1q_s16(v350, v351);
      v353 = vtrn2q_s16(v350, v351);
      v354 = vtrn1q_s32(v340, v344);
      v355 = vtrn2q_s32(v340, v344);
      v356 = vtrn1q_s32(v341, v345);
      v357 = vtrn2q_s32(v341, v345);
      v358 = vtrn1q_s32(v348, v352);
      v359 = vtrn2q_s32(v348, v352);
      v360 = vzip2q_s64(v354, v358);
      v354.i64[1] = v358.i64[0];
      v361 = vtrn1q_s32(v349, v353);
      v362 = vtrn2q_s32(v349, v353);
      v363 = vzip2q_s64(v356, v361);
      v356.i64[1] = v361.i64[0];
      v364 = vzip2q_s64(v355, v359);
      v355.i64[1] = v359.i64[0];
      v359.i64[0] = v357.i64[0];
      v359.i64[1] = v362.i64[0];
      v336[-4] = v354;
      v336[-3] = v356;
      v336[-2] = v355;
      v336[-1] = v359;
      *v336 = v360;
      v336[1] = v363;
      v336[2] = v364;
      v336[3] = vzip2q_s64(v357, v362);
      v336 += 64;
    }

    ++v3;
    v0 += 16;
    v4 += 8;
    v5 = v547;
    v6 = v546;
  }

  while (v3 != 8);
  v365 = 0;
  v366 = (v376 + 16);
  v367 = &v548;
  do
  {
    for (i8 = 0; i8 != 1024; i8 += 16)
    {
      v369 = *&v367[i8];
      *&v723[i8] = vmovl_s16(*v369.i8);
      *&v690[i8] = vmovl_high_s16(v369);
    }

    sub_2779E436C();
    result = sub_2779E436C();
    for (i9 = 0; i9 != 512; i9 += 16)
    {
      *&v723[i9] = vrshrq_n_s32(*&v723[i9], 2uLL);
    }

    for (i10 = 0; i10 != 512; i10 += 16)
    {
      *&v690[i10] = vrshrq_n_s32(*&v690[i10], 2uLL);
    }

    v373 = 0;
    v374 = v366;
    do
    {
      v375 = *&v690[v373];
      *(v374 - 1) = *&v723[v373];
      *v374 = v375;
      v373 += 16;
      v374 += 8;
    }

    while (v373 != 512);
    ++v365;
    v367 += 1024;
    v366 += 2;
  }

  while (v365 != 4);
  return result;
}

uint64_t sub_2779EEBA8()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = v2;
  v6 = v1;
  v7 = v0;
  v139 = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> v3))
  {
    v10 = v4;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    sub_277A78D0C(v3, 3u, &v106);
    return sub_277A78E90(v7, v6, v5, &v106, v138, v10);
  }

  v8 = off_28866D7A0[v3];
  v9 = 1;
  v104 = off_28866D820[v3];
  v105 = v1;
  if (v3 <= 0xF)
  {
    if (((1 << v3) & 0x4110) == 0)
    {
      if (((1 << v3) & 0x80A0) != 0)
      {
        v9 = 0;
        goto LABEL_10;
      }

      if (v3 != 6)
      {
        goto LABEL_10;
      }

      v9 = 0;
    }

    v7 = (v0 + 62 * v2);
    v5 = -v2;
  }

LABEL_10:
  for (i = 0; i != 4; ++i)
  {
    (v8)(&v7[8 * i], &v106, v5, 12);
    for (j = 0; j != 512; j += 16)
    {
      *(&v106 + j) = vrshrq_n_s16(*(&v106 + j), 4uLL);
    }

    v14 = vtrn1q_s16(v106, v107);
    v15 = vtrn2q_s16(v106, v107);
    v16 = vtrn1q_s16(v108, v109);
    v17 = vtrn2q_s16(v108, v109);
    v18 = vtrn1q_s16(v110, v111);
    v19 = vtrn2q_s16(v110, v111);
    v20 = vtrn1q_s16(v112, v113);
    v21 = vtrn2q_s16(v112, v113);
    v22 = vtrn1q_s32(v14, v16);
    v23 = vtrn1q_s32(v15, v17);
    v24 = vtrn1q_s32(v18, v20);
    v25 = vzip2q_s64(v22, v24);
    v22.i64[1] = v24.i64[0];
    v26 = vtrn1q_s32(v19, v21);
    v27 = vzip2q_s64(v23, v26);
    v23.i64[1] = v26.i64[0];
    v28 = vtrn2q_s32(v14, v16);
    v29 = vtrn2q_s32(v18, v20);
    v30 = vzip2q_s64(v28, v29);
    v28.i64[1] = v29.i64[0];
    v31 = vtrn2q_s32(v15, v17);
    v32 = vtrn2q_s32(v19, v21);
    v33 = vzip2q_s64(v31, v32);
    v31.i64[1] = v32.i64[0];
    v34 = &v138[32 * i];
    *v34 = v22;
    *(v34 + 1) = v23;
    *(v34 + 2) = v28;
    *(v34 + 3) = v31;
    *(v34 + 4) = v25;
    *(v34 + 5) = v27;
    *(v34 + 6) = v30;
    *(v34 + 7) = v33;
    v35 = &v138[32 * i + 128];
    v36 = vtrn1q_s16(v114, v115);
    v37 = vtrn2q_s16(v114, v115);
    v38 = vtrn1q_s16(v116, v117);
    v39 = vtrn2q_s16(v116, v117);
    v40 = vtrn1q_s16(v118, v119);
    v41 = vtrn2q_s16(v118, v119);
    v42 = vtrn1q_s16(v120, v121);
    v43 = vtrn2q_s16(v120, v121);
    v44 = vtrn1q_s32(v36, v38);
    v45 = vtrn2q_s32(v36, v38);
    v46 = vtrn1q_s32(v37, v39);
    v47 = vtrn2q_s32(v37, v39);
    v48 = vtrn1q_s32(v40, v42);
    v49 = vtrn2q_s32(v40, v42);
    v50 = vtrn1q_s32(v41, v43);
    v51 = vtrn2q_s32(v41, v43);
    v52 = vzip2q_s64(v44, v48);
    v44.i64[1] = v48.i64[0];
    v53 = vzip2q_s64(v46, v50);
    v46.i64[1] = v50.i64[0];
    v54 = vzip2q_s64(v45, v49);
    v45.i64[1] = v49.i64[0];
    v55 = vzip2q_s64(v47, v51);
    v47.i64[1] = v51.i64[0];
    *v35 = v44;
    *(v35 + 1) = v46;
    *(v35 + 2) = v45;
    *(v35 + 3) = v47;
    *(v35 + 4) = v52;
    *(v35 + 5) = v53;
    *(v35 + 6) = v54;
    *(v35 + 7) = v55;
    v56 = vtrn1q_s16(v122, v123);
    v57 = vtrn2q_s16(v122, v123);
    v58 = vtrn1q_s16(v124, v125);
    v59 = vtrn2q_s16(v124, v125);
    v60 = vtrn1q_s16(v126, v127);
    v61 = vtrn2q_s16(v126, v127);
    v62 = vtrn1q_s16(v128, v129);
    v63 = vtrn2q_s16(v128, v129);
    v64 = vtrn1q_s32(v56, v58);
    v65 = vtrn2q_s32(v56, v58);
    v66 = vtrn1q_s32(v57, v59);
    v67 = vtrn2q_s32(v57, v59);
    v68 = vtrn1q_s32(v60, v62);
    v69 = vtrn2q_s32(v60, v62);
    v70 = vtrn1q_s32(v61, v63);
    v71 = vtrn2q_s32(v61, v63);
    v72 = vzip2q_s64(v64, v68);
    v64.i64[1] = v68.i64[0];
    v73 = vzip2q_s64(v66, v70);
    v66.i64[1] = v70.i64[0];
    v74 = vzip2q_s64(v65, v69);
    v65.i64[1] = v69.i64[0];
    v75 = vzip2q_s64(v67, v71);
    v67.i64[1] = v71.i64[0];
    v76 = &v138[32 * i + 256];
    *v76 = v64;
    *(v76 + 1) = v66;
    *(v76 + 2) = v65;
    *(v76 + 3) = v67;
    *(v76 + 4) = v72;
    *(v76 + 5) = v73;
    *(v76 + 6) = v74;
    *(v76 + 7) = v75;
    v77 = &v138[32 * i + 384];
    v78 = vtrn1q_s16(v130, v131);
    v79 = vtrn2q_s16(v130, v131);
    v80 = vtrn1q_s16(v132, v133);
    v81 = vtrn2q_s16(v132, v133);
    v82 = vtrn1q_s16(v134, v135);
    v83 = vtrn2q_s16(v134, v135);
    v84 = vtrn1q_s16(v136, v137);
    v85 = vtrn2q_s16(v136, v137);
    v86 = vtrn1q_s32(v78, v80);
    v87 = vtrn2q_s32(v78, v80);
    v88 = vtrn1q_s32(v79, v81);
    v89 = vtrn2q_s32(v79, v81);
    v90 = vtrn1q_s32(v82, v84);
    v91 = vtrn2q_s32(v82, v84);
    v92 = vtrn1q_s32(v83, v85);
    v93 = vtrn2q_s32(v83, v85);
    v94 = vzip2q_s64(v86, v90);
    v86.i64[1] = v90.i64[0];
    v95 = vzip2q_s64(v88, v92);
    v88.i64[1] = v92.i64[0];
    v96 = vzip2q_s64(v87, v91);
    v87.i64[1] = v91.i64[0];
    v97 = vzip2q_s64(v89, v93);
    v89.i64[1] = v93.i64[0];
    *v77 = v86;
    *(v77 + 1) = v88;
    *(v77 + 2) = v87;
    *(v77 + 3) = v89;
    *(v77 + 4) = v94;
    *(v77 + 5) = v95;
    *(v77 + 6) = v96;
    *(v77 + 7) = v97;
  }

  v98 = 0;
  v99 = v138;
  do
  {
    if (v9)
    {
      v100 = &v138[128 * v98];
    }

    else
    {
      v101 = v99;
      for (k = 496; k != -16; k -= 16)
      {
        v103 = *v101++;
        v100 = &v106;
        *(&v106 + k) = v103;
      }
    }

    result = (v104)(v100, &v105[2 * v98++], 32, 12);
    v99 += 128;
  }

  while (v98 != 4);
  return result;
}

uint64_t sub_2779EEFC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v5 = a1;
  v80 = *MEMORY[0x277D85DE8];
  v6 = off_28866D6A0[a4];
  v7 = v62;
  v8 = 1;
  v60 = off_28866D720[a4];
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) != 0)
    {
LABEL_7:
      v5 = a1 + 30 * a3;
      v4 = -a3;
      goto LABEL_8;
    }

    if (((1 << a4) & 0x80A0) != 0)
    {
      v8 = 0;
      goto LABEL_8;
    }

    if (a4 == 6)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    (v6)(v5 + 2 * v9, &v64, v4, 13);
    for (i = 0; i != 256; i += 16)
    {
      *(&v64 + i) = vrshrq_n_s16(*(&v64 + i), 2uLL);
    }

    v10 = 0;
    v13 = vtrn1q_s16(v64, v65);
    v14 = vtrn2q_s16(v64, v65);
    v15 = vtrn1q_s16(v66, v67);
    v16 = vtrn2q_s16(v66, v67);
    v17 = vtrn1q_s16(v68, v69);
    v18 = vtrn2q_s16(v68, v69);
    v19 = vtrn1q_s16(v70, v71);
    v20 = vtrn2q_s16(v70, v71);
    v21 = vtrn1q_s32(v13, v15);
    v22 = vtrn2q_s32(v13, v15);
    v23 = vtrn1q_s32(v14, v16);
    v24 = vtrn2q_s32(v14, v16);
    v25 = vtrn1q_s32(v17, v19);
    v26 = vtrn2q_s32(v17, v19);
    v27 = vzip2q_s64(v21, v25);
    v21.i64[1] = v25.i64[0];
    v28 = vtrn1q_s32(v18, v20);
    v29 = vtrn2q_s32(v18, v20);
    v30 = vzip2q_s64(v23, v28);
    v23.i64[1] = v28.i64[0];
    v31 = vzip2q_s64(v22, v26);
    v22.i64[1] = v26.i64[0];
    v26.i64[0] = v24.i64[0];
    v26.i64[1] = v29.i64[0];
    *v7 = v21;
    v7[1] = v23;
    v7[2] = v22;
    v7[3] = v26;
    v7[4] = v27;
    v7[5] = v30;
    v7[6] = v31;
    v7[7] = vzip2q_s64(v24, v29);
    v32 = &v63[16 * v9 + 128];
    v33 = vtrn1q_s16(v72, v73);
    v34 = vtrn2q_s16(v72, v73);
    v35 = vtrn1q_s16(v74, v75);
    v36 = vtrn2q_s16(v74, v75);
    v37 = vtrn1q_s16(v76, v77);
    v38 = vtrn2q_s16(v76, v77);
    v39 = vtrn1q_s16(v78, v79);
    v40 = vtrn2q_s16(v78, v79);
    v41 = vtrn1q_s32(v33, v35);
    v42 = vtrn2q_s32(v33, v35);
    v43 = vtrn1q_s32(v34, v36);
    v44 = vtrn2q_s32(v34, v36);
    v45 = vtrn1q_s32(v37, v39);
    v46 = vtrn2q_s32(v37, v39);
    v47 = vtrn1q_s32(v38, v40);
    v48 = vtrn2q_s32(v38, v40);
    v49 = vzip2q_s64(v41, v45);
    v41.i64[1] = v45.i64[0];
    v50 = vzip2q_s64(v43, v47);
    v43.i64[1] = v47.i64[0];
    v51 = vzip2q_s64(v42, v46);
    v42.i64[1] = v46.i64[0];
    v52 = vzip2q_s64(v44, v48);
    v44.i64[1] = v48.i64[0];
    *v32 = v41;
    v32[1] = v43;
    v32[2] = v42;
    v32[3] = v44;
    v32[4] = v49;
    v32[5] = v50;
    v7 = v63;
    v32[6] = v51;
    v32[7] = v52;
    v9 = 8;
  }

  while ((v11 & 1) != 0);
  v53 = 0;
  v54 = 1;
  do
  {
    v55 = v54;
    v56 = &v62[256 * v53];
    if ((v8 & 1) == 0)
    {
      for (j = 240; j != -16; j -= 16)
      {
        v58 = *v56++;
        *(&v64 + j) = v58;
      }

      v56 = &v64;
    }

    result = (v60)(v56, a2 + 32 * v53, 16, 12);
    v54 = 0;
    v53 = 1;
  }

  while ((v55 & 1) != 0);
  return result;
}

int32x4_t sub_2779EF268(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v11 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x2D42u);
  do
  {
    *&v10[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(a1 + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(a1 + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 256);
  v5 = 0;
  v6 = a2 + 1;
  do
  {
    v7 = *&v10[v5];
    v8 = vmovl_s16(*v7.i8);
    result = vmovl_high_s16(v7);
    v6[-1] = v8;
    *v6 = result;
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 256);
  return result;
}

int16x8_t *sub_2779EF31C(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v109 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = result[6];
  v7 = result[7];
  v9 = result[8];
  v10 = result[9];
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 3), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 3), v9, *v5, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 2), *v9.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 2), v9, *v5, 3), 0xDuLL);
  v14 = result[10];
  v13 = result[11];
  v15 = result[4];
  v16 = result[5];
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 1), *v15.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 1), v15, *v5, 0), 0xDuLL);
  v18 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 2), *v15.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 2), v15, *v5, 1), 0xDuLL);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 1), *v8.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 1), v8, *v5, 0), 0xDuLL);
  v20 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 2), *v8.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 2), v8, *v5, 1), 0xDuLL);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 2), v14, *v5, 3);
  v22 = vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 2), *v14.i8, *v5, 3), 0xDuLL);
  v23 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 3), *v14.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 3), v14, *v5, 0), 0xDuLL);
  v24 = xmmword_277BEB8A0[16 * a4 - 156];
  v25 = xmmword_277BEB8A0[16 * a4 - 155];
  v26 = xmmword_277BEB8A0[16 * a4 - 154];
  v27 = xmmword_277BEB8A0[16 * a4 - 153];
  v28 = vrshrn_high_n_s32(v22, v21, 0xDuLL);
  v29 = result[1];
  v30 = vqaddq_s16(*result, v11);
  v32 = result[14];
  v31 = result[15];
  v33 = vqsubq_s16(v12, v31);
  v34 = vqsubq_s16(*result, v11);
  v35 = vqaddq_s16(v31, v12);
  v37 = result[2];
  v36 = result[3];
  v38 = vqsubq_s16(v18, v36);
  v39 = result[12];
  v40 = result[13];
  v41 = vqaddq_s16(v39, v17);
  v42 = vqaddq_s16(v36, v18);
  v43 = vqsubq_s16(v39, v17);
  v44 = vqsubq_s16(v20, v29);
  v45 = vqaddq_s16(v32, v19);
  v46 = vqaddq_s16(v29, v20);
  v47 = vqsubq_s16(v32, v19);
  v48 = vqaddq_s16(v37, v23);
  v49 = vqsubq_s16(v28, v40);
  v50 = vqsubq_s16(v37, v23);
  v51 = vqaddq_s16(v40, v28);
  v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 5), *v38.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 5), v38, *v5->i8, 4), 0xDuLL);
  v53 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 6), *v38.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 6), v38, *v5->i8, 5), 0xDuLL);
  v54 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 5), *v43.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 5), v43, *v5->i8, 4), 0xDuLL);
  v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 6), *v43.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 6), v43, *v5->i8, 5), 0xDuLL);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 5), *v48.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 5), v48, *v5->i8, 4), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 6), *v48.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 6), v48, *v5->i8, 5), 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 7), *v50.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 7), v50, *v5->i8, 4), 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 6), *v50.i8, *v5->i8, 7), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 6), v50, *v5->i8, 7), 0xDuLL);
  v60 = vqaddq_s16(v30, v52);
  v61 = vqaddq_s16(v33, v53);
  v62 = vqaddq_s16(v34, v54);
  v63 = vqsubq_s16(v55, v35);
  v64 = vqsubq_s16(v30, v52);
  v65 = vqsubq_s16(v33, v53);
  v66 = vqsubq_s16(v34, v54);
  v67 = vqaddq_s16(v35, v55);
  v68 = vqaddq_s16(v44, v56);
  v69 = vqaddq_s16(v45, v57);
  v70 = vqsubq_s16(v59, v46);
  v71 = vqaddq_s16(v47, v58);
  v72 = vqsubq_s16(v44, v56);
  v73 = vqsubq_s16(v45, v57);
  v74 = vqaddq_s16(v46, v59);
  v75 = vqsubq_s16(v47, v58);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 2), *v68.i8, *v6.i8, 1);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 2), v68, *v6.i8, 1);
  v78 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 1), *v68.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 1), v68, *v6.i8, 0), 0xDuLL);
  v79 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v80 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 4), *v70.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 4), v70, v6, 5), 0xDuLL);
  v81 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 7), *v70.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 7), v70, v6, 4), 0xDuLL);
  v82 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 0), *v73.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 0), v73, *v6.i8, 1), 0xDuLL);
  v83 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 3), *v73.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 3), v73, *v6.i8, 0), 0xDuLL);
  v84 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 4), *v75.i8, v6, 5);
  v85 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 4), v75, v6, 5);
  v86 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 7), *v75.i8, v6, 4);
  v87 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 7), v75, v6, 4);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xDuLL), v85, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v86, 0xDuLL), v87, 0xDuLL);
  v90 = vqaddq_s16(v60, v78);
  v91 = vqaddq_s16(v61, v79);
  v92 = vqaddq_s16(v62, v80);
  v93 = vqaddq_s16(v63, v81);
  v94 = vqaddq_s16(v64, v83);
  v95 = vqaddq_s16(v65, v82);
  v96 = vqaddq_s16(v66, v88);
  v97 = vqsubq_s16(v89, v67);
  v98 = vqsubq_s16(v60, v78);
  v99 = vqsubq_s16(v61, v79);
  v100 = vqsubq_s16(v62, v80);
  v101 = vqsubq_s16(v63, v81);
  v102 = vqsubq_s16(v64, v83);
  v103 = vqsubq_s16(v65, v82);
  v104 = vqsubq_s16(v66, v88);
  v105 = vqaddq_s16(v67, v89);
  v108[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 2), *v96.i8, *v27.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 2), v96, *v27.i8, 1), 0xDuLL);
  v108[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 4), *v98.i8, v27, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 4), v98, v27, 5), 0xDuLL);
  v108[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 7), *v98.i8, v27, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 7), v98, v27, 4), 0xDuLL);
  v108[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 1), *v96.i8, *v27.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 1), v96, *v27.i8, 0), 0xDuLL);
  v108[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 2), *v94.i8, *v26.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 2), v94, *v26.i8, 1), 0xDuLL);
  v108[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 4), *v100.i8, v26, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 4), v100, v26, 5), 0xDuLL);
  v108[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 7), *v100.i8, v26, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 7), v100, v26, 4), 0xDuLL);
  v108[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 1), *v94.i8, *v26.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 1), v94, *v26.i8, 0), 0xDuLL);
  v108[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 2), *v92.i8, *v25.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 2), v92, *v25.i8, 1), 0xDuLL);
  v108[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 4), *v102.i8, v25, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 4), v102, v25, 5), 0xDuLL);
  v108[12] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 7), *v102.i8, v25, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 7), v102, v25, 4), 0xDuLL);
  v108[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 1), *v92.i8, *v25.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 1), v92, *v25.i8, 0), 0xDuLL);
  v108[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 5), *v104.i8, v24, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 5), v104, v24, 4), 0xDuLL);
  v108[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 1), *v90.i8, *v24.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 1), v90, *v24.i8, 0), 0xDuLL);
  v108[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 2), *v90.i8, *v24.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 2), v90, *v24.i8, 1), 0xDuLL);
  v108[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 6), *v104.i8, v24, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 6), v104, v24, 5), 0xDuLL);
  v106 = a2 + 1;
  do
  {
    v107 = v108[v4];
    v106[-1] = vmovl_s16(*v107.i8);
    *v106 = vmovl_high_s16(v107);
    ++v4;
    v106 = (v106 + 4 * a3);
  }

  while (v4 != 16);
  return result;
}

uint64_t sub_2779EF894(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v103 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v84 = xmmword_277BEB8A0[16 * a4 - 158];
  for (i = 240; i != 112; i -= 16)
  {
    *&v94[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v9 = 112;
  v10 = 128;
  do
  {
    *&v94[v10] = vqsubq_s16(*(result + v9), *(result + v10));
    v9 -= 16;
    v10 += 16;
  }

  while (v9 != -16);
  v11 = 0;
  for (j = 112; j != 48; j -= 16)
  {
    *(&v86 + v11) = vqaddq_s16(*&v94[v11], *&v94[j]);
    v11 += 16;
  }

  v13 = 48;
  v14 = 64;
  do
  {
    *(&v86 + v14) = vqsubq_s16(*&v94[v13], *&v94[v14]);
    v13 -= 16;
    v14 += 16;
  }

  while (v13 != -16);
  v15 = 0;
  v16 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6.i8, 1), *v100.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6.i8, 1), v100, *v6.i8, 0), 0xDuLL);
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6.i8, 2), *v100.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6.i8, 2), v100, *v6.i8, 1), 0xDuLL);
  v18 = vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 1), *v99.i8, *v6.i8, 0);
  v19 = vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 1), v99, *v6.i8, 0);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 2), *v99.i8, *v6.i8, 1);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 2), v99, *v6.i8, 1);
  v22 = vqaddq_s16(v86, v89);
  v23 = vqaddq_s16(v87, v88);
  v24 = vqsubq_s16(v87, v88);
  v25 = vqsubq_s16(v86, v89);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v6.i8, 1), *v92.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v6.i8, 1), v92, *v6.i8, 0), 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v6.i8, 2), *v92.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v6.i8, 2), v92, *v6.i8, 1), 0xDuLL);
  v28 = vqaddq_s16(v96, v17);
  v29 = vqsubq_s16(v96, v17);
  v30 = vqsubq_s16(v101, v16);
  v31 = vqaddq_s16(v101, v16);
  v32 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 1), *v22.i8, *v6.i8, 0);
  v33 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 1), v22, *v6.i8, 0);
  v34 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 2), *v22.i8, *v6.i8, 1);
  v35 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 2), v22, *v6.i8, 1);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 5), *v25.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 5), v25, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 6), *v25.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 6), v25, v6, 5);
  v40 = vqaddq_s16(v90, v27);
  v41 = vqsubq_s16(v90, v27);
  v42 = vqsubq_s16(v93, v26);
  v43 = vqaddq_s16(v93, v26);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v31.i8, v6, 4);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v31, v6, 4);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v31.i8, v6, 5);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v31, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 6), *v30.i8, v6, 5);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 6), v30, v6, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 7), *v30.i8, v6, 6);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 7), v30, v6, 6);
  v52 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 1), *v43.i8, *v5.i8, 0);
  v53 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 1), v43, *v5.i8, 0);
  v54 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 2), *v43.i8, *v5.i8, 1);
  v55 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 2), v43, *v5.i8, 1);
  v56 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 4), *v42.i8, v5, 5);
  v57 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 4), v42, v5, 5);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 7), *v42.i8, v5, 4);
  v59 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 7), v42, v5, 4);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v18, 0xDuLL), v19, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v62 = vqaddq_s16(v95, v61);
  v63 = vqsubq_s16(v95, v61);
  v64 = vqsubq_s16(v102, v60);
  v65 = vqaddq_s16(v102, v60);
  v66 = vrshrn_high_n_s32(vrshrn_n_s32(v32, 0xDuLL), v33, 0xDuLL);
  v67 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v70 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v74 = vqaddq_s16(v62, v71);
  v75 = vqsubq_s16(v62, v71);
  v76 = vqsubq_s16(v63, v73);
  v77 = vqaddq_s16(v63, v73);
  v78 = vqaddq_s16(v64, v72);
  v79 = vqsubq_s16(v64, v72);
  v80 = vqsubq_s16(v65, v70);
  v81 = vqaddq_s16(v65, v70);
  v85[0] = v66;
  v85[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v84.i8, 1), *v81.i8, *v84.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v84.i8, 1), v81, *v84.i8, 0), 0xDuLL);
  v85[14] = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v85[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v84.i8, 2), *v81.i8, *v84.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v84.i8, 2), v81, *v84.i8, 1), 0xDuLL);
  v85[8] = v67;
  v85[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 4), *v80.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 4), v80, v7, 5), 0xDuLL);
  v85[6] = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xDuLL), v59, 0xDuLL);
  v85[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 7), *v80.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 7), v80, v7, 4), 0xDuLL);
  v85[4] = v68;
  v85[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 1), *v79.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 1), v79, *v7.i8, 0), 0xDuLL);
  v85[10] = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
  v85[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 2), *v79.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 2), v79, *v7.i8, 1), 0xDuLL);
  v85[12] = v69;
  v85[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v84, 4), *v78.i8, v84, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v84, 4), v78, v84, 5), 0xDuLL);
  v85[2] = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v85[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v84, 7), *v78.i8, v84, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v84, 7), v78, v84, 4), 0xDuLL);
  v82 = a2 + 1;
  do
  {
    v83 = v85[v15];
    v82[-1] = vmovl_s16(*v83.i8);
    *v82 = vmovl_high_s16(v83);
    ++v15;
    v82 = (v82 + 4 * a3);
  }

  while (v15 != 16);
  return result;
}

double sub_2779EFD28(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v285 = *MEMORY[0x277D85DE8];
  v4 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v5 = v4 > 5;
  v6 = (1 << v4) & 0x27;
  if (!v5 && v6 != 0)
  {
    a1 = (a1 + 14 * a3);
    a3 = -a3;
  }

  switch(a4)
  {
    case 0:
      sub_2779E1060(a1, &v276, a3, 13);
      for (i = 0; i != 128; i += 16)
      {
        *(&v276 + i) = vrhaddq_s16(*(&v276 + i), 0);
      }

      goto LABEL_73;
    case 1:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (j = 0; j != 128; j += 16)
      {
        *(&v276 + j) = vrhaddq_s16(*(&v276 + j), 0);
      }

      goto LABEL_73;
    case 2:
      sub_2779E1060(a1, &v276, a3, 13);
      for (k = 0; k != 128; k += 16)
      {
        *(&v276 + k) = vrhaddq_s16(*(&v276 + k), 0);
      }

      goto LABEL_102;
    case 3:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (m = 0; m != 128; m += 16)
      {
        *(&v276 + m) = vrhaddq_s16(*(&v276 + m), 0);
      }

      goto LABEL_102;
    case 4:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (n = 0; n != 128; n += 16)
      {
        *(&v276 + n) = vrhaddq_s16(*(&v276 + n), 0);
      }

      goto LABEL_73;
    case 5:
      sub_2779E1060(a1, &v276, a3, 13);
      for (ii = 0; ii != 128; ii += 16)
      {
        *(&v276 + ii) = vrhaddq_s16(*(&v276 + ii), 0);
      }

      v170 = vtrn1q_s16(v276, v277);
      v171 = vtrn2q_s16(v276, v277);
      v172 = vtrn1q_s16(v278, v279);
      v173 = vtrn2q_s16(v278, v279);
      v174 = vtrn1q_s16(v280, v281);
      v175 = vtrn2q_s16(v280, v281);
      v176 = vtrn1q_s16(v282, v283);
      v177 = vtrn2q_s16(v282, v283);
      v178 = vtrn1q_s32(v170, v172);
      v179 = vtrn2q_s32(v170, v172);
      v180 = vtrn1q_s32(v171, v173);
      v181 = vtrn2q_s32(v171, v173);
      v182 = vtrn1q_s32(v174, v176);
      v183 = vtrn2q_s32(v174, v176);
      v184 = vzip2q_s64(v178, v182);
      v178.i64[1] = v182.i64[0];
      v185 = vtrn1q_s32(v175, v177);
      v186 = vtrn2q_s32(v175, v177);
      v187 = vzip2q_s64(v180, v185);
      v180.i64[1] = v185.i64[0];
      v188 = vzip2q_s64(v179, v183);
      v179.i64[1] = v183.i64[0];
      v183.i64[0] = v181.i64[0];
      v183.i64[1] = v186.i64[0];
      v268 = v178;
      v269 = v180;
      v270 = v179;
      v271 = v183;
      v272 = v184;
      v273 = v187;
      v274 = v188;
      v275 = vzip2q_s64(v181, v186);
      v189 = &v268;
      for (jj = 112; jj != -16; jj -= 16)
      {
        v191 = *v189++;
        *(&v276 + jj) = v191;
      }

      goto LABEL_92;
    case 6:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (kk = 0; kk != 128; kk += 16)
      {
        *(&v276 + kk) = vrhaddq_s16(*(&v276 + kk), 0);
      }

      v197 = vtrn1q_s16(v276, v277);
      v198 = vtrn2q_s16(v276, v277);
      v199 = vtrn1q_s16(v278, v279);
      v200 = vtrn2q_s16(v278, v279);
      v201 = vtrn1q_s16(v280, v281);
      v202 = vtrn2q_s16(v280, v281);
      v203 = vtrn1q_s16(v282, v283);
      v204 = vtrn2q_s16(v282, v283);
      v205 = vtrn1q_s32(v197, v199);
      v206 = vtrn2q_s32(v197, v199);
      v207 = vtrn1q_s32(v198, v200);
      v208 = vtrn2q_s32(v198, v200);
      v209 = vtrn1q_s32(v201, v203);
      v210 = vtrn2q_s32(v201, v203);
      v211 = vzip2q_s64(v205, v209);
      v205.i64[1] = v209.i64[0];
      v212 = vtrn1q_s32(v202, v204);
      v213 = vtrn2q_s32(v202, v204);
      v214 = vzip2q_s64(v207, v212);
      v207.i64[1] = v212.i64[0];
      v215 = vzip2q_s64(v206, v210);
      v206.i64[1] = v210.i64[0];
      v210.i64[0] = v208.i64[0];
      v210.i64[1] = v213.i64[0];
      v268 = v205;
      v269 = v207;
      v270 = v206;
      v271 = v210;
      v272 = v211;
      v273 = v214;
      v274 = v215;
      v275 = vzip2q_s64(v208, v213);
      v216 = &v268;
      for (mm = 112; mm != -16; mm -= 16)
      {
        v218 = *v216++;
        *(&v276 + mm) = v218;
      }

      goto LABEL_92;
    case 7:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (nn = 0; nn != 128; nn += 16)
      {
        *(&v276 + nn) = vrhaddq_s16(*(&v276 + nn), 0);
      }

      v126 = vtrn1q_s16(v276, v277);
      v127 = vtrn2q_s16(v276, v277);
      v128 = vtrn1q_s16(v278, v279);
      v129 = vtrn2q_s16(v278, v279);
      v130 = vtrn1q_s16(v280, v281);
      v131 = vtrn2q_s16(v280, v281);
      v132 = vtrn1q_s16(v282, v283);
      v133 = vtrn2q_s16(v282, v283);
      v134 = vtrn1q_s32(v126, v128);
      v135 = vtrn2q_s32(v126, v128);
      v136 = vtrn1q_s32(v127, v129);
      v137 = vtrn2q_s32(v127, v129);
      v138 = vtrn1q_s32(v130, v132);
      v139 = vtrn2q_s32(v130, v132);
      v140 = vzip2q_s64(v134, v138);
      v134.i64[1] = v138.i64[0];
      v141 = vtrn1q_s32(v131, v133);
      v142 = vtrn2q_s32(v131, v133);
      v143 = vzip2q_s64(v136, v141);
      v136.i64[1] = v141.i64[0];
      v144 = vzip2q_s64(v135, v139);
      v135.i64[1] = v139.i64[0];
      v139.i64[0] = v137.i64[0];
      v139.i64[1] = v142.i64[0];
      v268 = v134;
      v269 = v136;
      v270 = v135;
      v271 = v139;
      v272 = v140;
      v273 = v143;
      v274 = v144;
      v275 = vzip2q_s64(v137, v142);
      v145 = &v268;
      for (i1 = 112; i1 != -16; i1 -= 16)
      {
        v147 = *v145++;
        *(&v276 + i1) = v147;
      }

      goto LABEL_92;
    case 8:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (i2 = 0; i2 != 128; i2 += 16)
      {
        *(&v276 + i2) = vrhaddq_s16(*(&v276 + i2), 0);
      }

      goto LABEL_102;
    case 9:
      for (i3 = 0; i3 != 128; i3 += 16)
      {
        *&v284[i3] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i4 = 0; i4 != 128; i4 += 16)
      {
        *&v284[i4] = vshlq_n_s16(*&v284[i4], 2uLL);
      }

      for (i5 = 0; i5 != 128; i5 += 16)
      {
        *(&v276 + i5) = vaddq_s16(*&v284[i5], *&v284[i5]);
      }

      for (i6 = 0; i6 != 128; i6 += 16)
      {
        *(&v276 + i6) = vrhaddq_s16(*(&v276 + i6), 0);
      }

      v72 = 0;
      v73 = vtrn1q_s16(v276, v277);
      v74 = vtrn2q_s16(v276, v277);
      v75 = vtrn1q_s16(v278, v279);
      v76 = vtrn2q_s16(v278, v279);
      v77 = vtrn1q_s16(v280, v281);
      v78 = vtrn2q_s16(v280, v281);
      v79 = vtrn1q_s16(v282, v283);
      v80 = vtrn2q_s16(v282, v283);
      v81 = vtrn1q_s32(v73, v75);
      v82 = vtrn2q_s32(v73, v75);
      v83 = vtrn1q_s32(v74, v76);
      v84 = vtrn2q_s32(v74, v76);
      v85 = vtrn1q_s32(v77, v79);
      v86 = vtrn2q_s32(v77, v79);
      v87 = vtrn1q_s32(v78, v80);
      v88 = vtrn2q_s32(v78, v80);
      v89 = vzip2q_s64(v81, v85);
      v81.i64[1] = v85.i64[0];
      v90 = vzip2q_s64(v83, v87);
      v83.i64[1] = v87.i64[0];
      v91 = vzip2q_s64(v82, v86);
      v82.i64[1] = v86.i64[0];
      v92 = vzip2q_s64(v84, v88);
      v84.i64[1] = v88.i64[0];
      v268 = v81;
      v269 = v83;
      v270 = v82;
      v271 = v84;
      v272 = v89;
      v273 = v90;
      v274 = v91;
      v275 = v92;
      do
      {
        *&v284[v72] = vaddq_s16(*(&v268 + v72), *(&v268 + v72));
        v72 += 16;
      }

      while (v72 != 128);
      v93 = 0;
      v94 = a2 + 1;
      do
      {
        v95 = *&v284[v93];
        v96 = vmovl_s16(*v95.i8);
        v36 = vmovl_high_s16(v95);
        v94[-1] = v96;
        *v94 = v36;
        v93 += 16;
        v94 += 2;
      }

      while (v93 != 128);
      return *v36.i64;
    case 10:
      sub_2779E1060(a1, &v276, a3, 13);
      for (i7 = 0; i7 != 128; i7 += 16)
      {
        *(&v276 + i7) = vrhaddq_s16(*(&v276 + i7), 0);
      }

      v221 = 0;
      v222 = vtrn1q_s16(v276, v277);
      v223 = vtrn2q_s16(v276, v277);
      v224 = vtrn1q_s16(v278, v279);
      v225 = vtrn2q_s16(v278, v279);
      v226 = vtrn1q_s16(v280, v281);
      v227 = vtrn2q_s16(v280, v281);
      v228 = vtrn1q_s16(v282, v283);
      v229 = vtrn2q_s16(v282, v283);
      v230 = vtrn1q_s32(v222, v224);
      v231 = vtrn2q_s32(v222, v224);
      v232 = vtrn1q_s32(v223, v225);
      v233 = vtrn2q_s32(v223, v225);
      v234 = vtrn1q_s32(v226, v228);
      v235 = vtrn2q_s32(v226, v228);
      v236 = vtrn1q_s32(v227, v229);
      v237 = vtrn2q_s32(v227, v229);
      v238 = vzip2q_s64(v230, v234);
      v230.i64[1] = v234.i64[0];
      v239 = vzip2q_s64(v232, v236);
      v232.i64[1] = v236.i64[0];
      v240 = vzip2q_s64(v231, v235);
      v231.i64[1] = v235.i64[0];
      v241 = vzip2q_s64(v233, v237);
      v233.i64[1] = v237.i64[0];
      v268 = v230;
      v269 = v232;
      v270 = v231;
      v271 = v233;
      v272 = v238;
      v273 = v239;
      v274 = v240;
      v275 = v241;
      do
      {
        *&v284[v221] = vaddq_s16(*(&v268 + v221), *(&v268 + v221));
        v221 += 16;
      }

      while (v221 != 128);
      v242 = 0;
      v243 = a2 + 1;
      do
      {
        v244 = *&v284[v242];
        v245 = vmovl_s16(*v244.i8);
        v36 = vmovl_high_s16(v244);
        v243[-1] = v245;
        *v243 = v36;
        v242 += 16;
        v243 += 2;
      }

      while (v242 != 128);
      return *v36.i64;
    case 11:
      for (i8 = 0; i8 != 128; i8 += 16)
      {
        *&v284[i8] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i9 = 0; i9 != 128; i9 += 16)
      {
        *&v284[i9] = vshlq_n_s16(*&v284[i9], 2uLL);
      }

      for (i10 = 0; i10 != 128; i10 += 16)
      {
        *(&v276 + i10) = vaddq_s16(*&v284[i10], *&v284[i10]);
      }

      for (i11 = 0; i11 != 128; i11 += 16)
      {
        *(&v276 + i11) = vrhaddq_s16(*(&v276 + i11), 0);
      }

LABEL_73:
      v149 = vtrn1q_s16(v276, v277);
      v150 = vtrn2q_s16(v276, v277);
      v151 = vtrn1q_s16(v278, v279);
      v152 = vtrn2q_s16(v278, v279);
      v153 = vtrn1q_s16(v280, v281);
      v154 = vtrn2q_s16(v280, v281);
      v155 = vtrn1q_s16(v282, v283);
      v156 = vtrn2q_s16(v282, v283);
      v157 = vtrn1q_s32(v149, v151);
      v158 = vtrn2q_s32(v149, v151);
      v159 = vtrn1q_s32(v150, v152);
      v160 = vtrn2q_s32(v150, v152);
      v161 = vtrn1q_s32(v153, v155);
      v162 = vtrn2q_s32(v153, v155);
      v163 = vtrn1q_s32(v154, v156);
      v164 = vtrn2q_s32(v154, v156);
      v165 = vzip2q_s64(v157, v161);
      v157.i64[1] = v161.i64[0];
      v166 = vzip2q_s64(v159, v163);
      v159.i64[1] = v163.i64[0];
      v167 = vzip2q_s64(v158, v162);
      v158.i64[1] = v162.i64[0];
      v168 = vzip2q_s64(v160, v164);
      v160.i64[1] = v164.i64[0];
      v268 = v157;
      v269 = v159;
      v270 = v158;
      v271 = v160;
      v272 = v165;
      v273 = v166;
      v274 = v167;
      v275 = v168;
      v36.i64[0] = sub_2779E1908(&v268, a2, 8, 13).u64[0];
      return *v36.i64;
    case 12:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (i12 = 0; i12 != 128; i12 += 16)
      {
        *(&v276 + i12) = vrhaddq_s16(*(&v276 + i12), 0);
      }

      v43 = 0;
      v44 = vtrn1q_s16(v276, v277);
      v45 = vtrn2q_s16(v276, v277);
      v46 = vtrn1q_s16(v278, v279);
      v47 = vtrn2q_s16(v278, v279);
      v48 = vtrn1q_s16(v280, v281);
      v49 = vtrn2q_s16(v280, v281);
      v50 = vtrn1q_s16(v282, v283);
      v51 = vtrn2q_s16(v282, v283);
      v52 = vtrn1q_s32(v44, v46);
      v53 = vtrn2q_s32(v44, v46);
      v54 = vtrn1q_s32(v45, v47);
      v55 = vtrn2q_s32(v45, v47);
      v56 = vtrn1q_s32(v48, v50);
      v57 = vtrn2q_s32(v48, v50);
      v58 = vtrn1q_s32(v49, v51);
      v59 = vtrn2q_s32(v49, v51);
      v60 = vzip2q_s64(v52, v56);
      v52.i64[1] = v56.i64[0];
      v61 = vzip2q_s64(v54, v58);
      v54.i64[1] = v58.i64[0];
      v62 = vzip2q_s64(v53, v57);
      v53.i64[1] = v57.i64[0];
      v63 = vzip2q_s64(v55, v59);
      v55.i64[1] = v59.i64[0];
      v268 = v52;
      v269 = v54;
      v270 = v53;
      v271 = v55;
      v272 = v60;
      v273 = v61;
      v274 = v62;
      v275 = v63;
      do
      {
        *&v284[v43] = vaddq_s16(*(&v268 + v43), *(&v268 + v43));
        v43 += 16;
      }

      while (v43 != 128);
      v64 = 0;
      v65 = a2 + 1;
      do
      {
        v66 = *&v284[v64];
        v67 = vmovl_s16(*v66.i8);
        v36 = vmovl_high_s16(v66);
        v65[-1] = v67;
        *v65 = v36;
        v64 += 16;
        v65 += 2;
      }

      while (v64 != 128);
      return *v36.i64;
    case 13:
      for (i13 = 0; i13 != 128; i13 += 16)
      {
        *&v284[i13] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i14 = 0; i14 != 128; i14 += 16)
      {
        *&v284[i14] = vshlq_n_s16(*&v284[i14], 2uLL);
      }

      for (i15 = 0; i15 != 128; i15 += 16)
      {
        *(&v276 + i15) = vaddq_s16(*&v284[i15], *&v284[i15]);
      }

      for (i16 = 0; i16 != 128; i16 += 16)
      {
        *(&v276 + i16) = vrhaddq_s16(*(&v276 + i16), 0);
      }

LABEL_102:
      v247 = vtrn1q_s16(v276, v277);
      v248 = vtrn2q_s16(v276, v277);
      v249 = vtrn1q_s16(v278, v279);
      v250 = vtrn2q_s16(v278, v279);
      v251 = vtrn1q_s16(v280, v281);
      v252 = vtrn2q_s16(v280, v281);
      v253 = vtrn1q_s16(v282, v283);
      v254 = vtrn2q_s16(v282, v283);
      v255 = vtrn1q_s32(v247, v249);
      v256 = vtrn2q_s32(v247, v249);
      v257 = vtrn1q_s32(v248, v250);
      v258 = vtrn2q_s32(v248, v250);
      v259 = vtrn1q_s32(v251, v253);
      v260 = vtrn2q_s32(v251, v253);
      v261 = vtrn1q_s32(v252, v254);
      v262 = vtrn2q_s32(v252, v254);
      v263 = vzip2q_s64(v255, v259);
      v255.i64[1] = v259.i64[0];
      v264 = vzip2q_s64(v257, v261);
      v257.i64[1] = v261.i64[0];
      v265 = vzip2q_s64(v256, v260);
      v256.i64[1] = v260.i64[0];
      v266 = vzip2q_s64(v258, v262);
      v258.i64[1] = v262.i64[0];
      v268 = v255;
      v269 = v257;
      v270 = v256;
      v271 = v258;
      v272 = v263;
      v273 = v264;
      v274 = v265;
      v275 = v266;
      v219 = &v268;
      goto LABEL_103;
    case 14:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (i17 = 0; i17 != 128; i17 += 16)
      {
        *(&v276 + i17) = vrhaddq_s16(*(&v276 + i17), 0);
      }

      v11 = 0;
      v12 = vtrn1q_s16(v276, v277);
      v13 = vtrn2q_s16(v276, v277);
      v14 = vtrn1q_s16(v278, v279);
      v15 = vtrn2q_s16(v278, v279);
      v16 = vtrn1q_s16(v280, v281);
      v17 = vtrn2q_s16(v280, v281);
      v18 = vtrn1q_s16(v282, v283);
      v19 = vtrn2q_s16(v282, v283);
      v20 = vtrn1q_s32(v12, v14);
      v21 = vtrn2q_s32(v12, v14);
      v22 = vtrn1q_s32(v13, v15);
      v23 = vtrn2q_s32(v13, v15);
      v24 = vtrn1q_s32(v16, v18);
      v25 = vtrn2q_s32(v16, v18);
      v26 = vtrn1q_s32(v17, v19);
      v27 = vtrn2q_s32(v17, v19);
      v28 = vzip2q_s64(v20, v24);
      v20.i64[1] = v24.i64[0];
      v29 = vzip2q_s64(v22, v26);
      v22.i64[1] = v26.i64[0];
      v30 = vzip2q_s64(v21, v25);
      v21.i64[1] = v25.i64[0];
      v31 = vzip2q_s64(v23, v27);
      v23.i64[1] = v27.i64[0];
      v268 = v20;
      v269 = v22;
      v270 = v21;
      v271 = v23;
      v272 = v28;
      v273 = v29;
      v274 = v30;
      v275 = v31;
      do
      {
        *&v284[v11] = vaddq_s16(*(&v268 + v11), *(&v268 + v11));
        v11 += 16;
      }

      while (v11 != 128);
      v32 = 0;
      v33 = a2 + 1;
      do
      {
        v34 = *&v284[v32];
        v35 = vmovl_s16(*v34.i8);
        v36 = vmovl_high_s16(v34);
        v33[-1] = v35;
        *v33 = v36;
        v32 += 16;
        v33 += 2;
      }

      while (v32 != 128);
      return *v36.i64;
    case 15:
      for (i18 = 0; i18 != 128; i18 += 16)
      {
        *&v284[i18] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i19 = 0; i19 != 128; i19 += 16)
      {
        *&v284[i19] = vshlq_n_s16(*&v284[i19], 2uLL);
      }

      for (i20 = 0; i20 != 128; i20 += 16)
      {
        *(&v276 + i20) = vaddq_s16(*&v284[i20], *&v284[i20]);
      }

      for (i21 = 0; i21 != 128; i21 += 16)
      {
        *(&v276 + i21) = vrhaddq_s16(*(&v276 + i21), 0);
      }

      v102 = vtrn1q_s16(v276, v277);
      v103 = vtrn2q_s16(v276, v277);
      v104 = vtrn1q_s16(v278, v279);
      v105 = vtrn2q_s16(v278, v279);
      v106 = vtrn1q_s16(v280, v281);
      v107 = vtrn2q_s16(v280, v281);
      v108 = vtrn1q_s16(v282, v283);
      v109 = vtrn2q_s16(v282, v283);
      v110 = vtrn1q_s32(v102, v104);
      v111 = vtrn2q_s32(v102, v104);
      v112 = vtrn1q_s32(v103, v105);
      v113 = vtrn2q_s32(v103, v105);
      v114 = vtrn1q_s32(v106, v108);
      v115 = vtrn2q_s32(v106, v108);
      v116 = vzip2q_s64(v110, v114);
      v110.i64[1] = v114.i64[0];
      v117 = vtrn1q_s32(v107, v109);
      v118 = vtrn2q_s32(v107, v109);
      v119 = vzip2q_s64(v112, v117);
      v112.i64[1] = v117.i64[0];
      v120 = vzip2q_s64(v111, v115);
      v111.i64[1] = v115.i64[0];
      v115.i64[0] = v113.i64[0];
      v115.i64[1] = v118.i64[0];
      v268 = v110;
      v269 = v112;
      v270 = v111;
      v271 = v115;
      v272 = v116;
      v273 = v119;
      v274 = v120;
      v275 = vzip2q_s64(v113, v118);
      v121 = &v268;
      for (i22 = 112; i22 != -16; i22 -= 16)
      {
        v123 = *v121++;
        *(&v276 + i22) = v123;
      }

LABEL_92:
      v219 = &v276;
LABEL_103:
      v36.i64[0] = sub_2779E1694(v219, a2, 8, 13).u64[0];
      break;
    default:
      return *v36.i64;
  }

  return *v36.i64;
}

double sub_2779F0994(int16x4_t *a1, uint64_t a2, int a3, int a4, __n128 a5)
{
  v176 = *MEMORY[0x277D85DE8];
  v5 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v6 = v5 > 5;
  v7 = (1 << v5) & 0x27;
  if (!v6 && v7 != 0)
  {
    a1 = (a1 + 6 * a3);
    a3 = -a3;
  }

  switch(a4)
  {
    case 0:
      sub_2779F12CC(a1, &v168, a3);
      v69 = 0;
      v70 = vtrn1_s16(v168, v169);
      v71 = vtrn2_s16(v168, v169);
      v72 = vtrn1_s16(v170, v171);
      v73 = vtrn2_s16(v170, v171);
      v74 = vzip1_s32(v70, v72);
      v75 = vzip2_s32(v70, v72);
      v76 = vzip1_s32(v71, v73);
      v77 = vzip2_s32(v71, v73);
      v78 = vadd_s16(v75, v76);
      v79 = vsub_s16(v76, v75);
      v80 = vadd_s16(v77, v74);
      v81 = vdup_n_s16(0x16A1u);
      v82 = vsub_s16(v74, v77);
      v83 = vmull_s16(v80, v81);
      v84 = vmlal_s16(v83, v78, v81);
      v85 = vmlsl_s16(v83, v78, v81);
      v86 = vdup_n_s16(0xC3Fu);
      v87 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v84, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v82, v87), v79, v86), 0xDuLL);
      v174 = vrshrn_n_s32(v85, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v82, v86), v79, v87), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v69));
        *(a2 + 16 * v69++) = a5;
      }

      while (v69 != 4);
      return a5.n128_f64[0];
    case 1:
      sub_2779F13C0(a1, &v168, a3);
      v88 = 0;
      v89 = vtrn1_s16(v168, v169);
      v90 = vtrn2_s16(v168, v169);
      v91 = vtrn1_s16(v170, v171);
      v92 = vtrn2_s16(v170, v171);
      v93 = vzip1_s32(v89, v91);
      v94 = vzip2_s32(v89, v91);
      v95 = vzip1_s32(v90, v92);
      v96 = vzip2_s32(v90, v92);
      v97 = vadd_s16(v94, v95);
      v98 = vsub_s16(v95, v94);
      v99 = vadd_s16(v96, v93);
      v100 = vdup_n_s16(0x16A1u);
      v101 = vsub_s16(v93, v96);
      v102 = vmull_s16(v99, v100);
      v103 = vmlal_s16(v102, v97, v100);
      v104 = vmlsl_s16(v102, v97, v100);
      v105 = vdup_n_s16(0xC3Fu);
      v106 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v103, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v101, v106), v98, v105), 0xDuLL);
      v174 = vrshrn_n_s32(v104, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v101, v105), v98, v106), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v88));
        *(a2 + 16 * v88++) = a5;
      }

      while (v88 != 4);
      return a5.n128_f64[0];
    case 2:
      sub_2779F12CC(a1, &v168, a3);
      goto LABEL_66;
    case 3:
    case 8:
      sub_2779F13C0(a1, &v168, a3);
      goto LABEL_66;
    case 4:
      sub_2779F13C0(a1, &v168, a3);
      v114 = 0;
      v115 = vtrn1_s16(v168, v169);
      v116 = vtrn2_s16(v168, v169);
      v117 = vtrn1_s16(v170, v171);
      v118 = vtrn2_s16(v170, v171);
      v119 = vzip1_s32(v115, v117);
      v120 = vzip2_s32(v115, v117);
      v121 = vzip1_s32(v116, v118);
      v122 = vzip2_s32(v116, v118);
      v123 = vadd_s16(v120, v121);
      v124 = vsub_s16(v121, v120);
      v125 = vadd_s16(v122, v119);
      v126 = vdup_n_s16(0x16A1u);
      v127 = vsub_s16(v119, v122);
      v128 = vmull_s16(v125, v126);
      v129 = vmlal_s16(v128, v123, v126);
      v130 = vmlsl_s16(v128, v123, v126);
      v131 = vdup_n_s16(0xC3Fu);
      v132 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v129, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v127, v132), v124, v131), 0xDuLL);
      v174 = vrshrn_n_s32(v130, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v127, v131), v124, v132), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v114));
        *(a2 + 16 * v114++) = a5;
      }

      while (v114 != 4);
      return a5.n128_f64[0];
    case 5:
      sub_2779F12CC(a1, &v168, a3);
      v142 = vtrn1_s16(v168, v169);
      v143 = vtrn2_s16(v168, v169);
      v144 = vtrn1_s16(v170, v171);
      v145 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v142, v144);
      v165 = vzip1_s32(v143, v145);
      v166 = vzip2_s32(v142, v144);
      v167 = vzip2_s32(v143, v145);
      v146 = &v164;
      for (i = 24; i != -8; i -= 8)
      {
        v148 = *v146++;
        *(&v168 + i) = v148;
      }

      goto LABEL_77;
    case 6:
      sub_2779F13C0(a1, &v168, a3);
      v107 = vtrn1_s16(v168, v169);
      v108 = vtrn2_s16(v168, v169);
      v109 = vtrn1_s16(v170, v171);
      v110 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v107, v109);
      v165 = vzip1_s32(v108, v110);
      v166 = vzip2_s32(v107, v109);
      v167 = vzip2_s32(v108, v110);
      v111 = &v164;
      for (j = 24; j != -8; j -= 8)
      {
        v113 = *v111++;
        *(&v168 + j) = v113;
      }

      goto LABEL_77;
    case 7:
      sub_2779F13C0(a1, &v168, a3);
      v156 = vtrn1_s16(v168, v169);
      v157 = vtrn2_s16(v168, v169);
      v158 = vtrn1_s16(v170, v171);
      v159 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v156, v158);
      v165 = vzip1_s32(v157, v159);
      v166 = vzip2_s32(v156, v158);
      v167 = vzip2_s32(v157, v159);
      v160 = &v164;
      for (k = 24; k != -8; k -= 8)
      {
        v162 = *v160++;
        *(&v168 + k) = v162;
      }

      goto LABEL_77;
    case 9:
      for (m = 0; m != 32; m += 8)
      {
        *(&v172 + m) = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (n = 0; n != 32; n += 8)
      {
        *(&v172 + n) = vshl_n_s16(*(&v172 + n), 2uLL);
      }

      v49 = 0;
      v50 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v49) = vqrshrn_n_s32(vmull_s16(*(&v172 + v49), v50), 0xCuLL);
        v49 += 8;
      }

      while (v49 != 32);
      v51 = 0;
      v52 = vtrn1_s16(v168, v169);
      v53 = vtrn2_s16(v168, v169);
      v54 = vtrn1_s16(v170, v171);
      v55 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v52, v54);
      v165 = vzip1_s32(v53, v55);
      v166 = vzip2_s32(v52, v54);
      v167 = vzip2_s32(v53, v55);
      v56 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v51) = vqrshrn_n_s32(vmull_s16(*(&v164 + v51), v56), 0xCuLL);
        v51 += 8;
      }

      while (v51 != 32);
      for (ii = 0; ii != 4; ++ii)
      {
        a5 = vmovl_s16(*(&v172 + ii));
        *(a2 + 16 * ii) = a5;
      }

      return a5.n128_f64[0];
    case 10:
      sub_2779F12CC(a1, &v168, a3);
      v149 = 0;
      v150 = vtrn1_s16(v168, v169);
      v151 = vtrn2_s16(v168, v169);
      v152 = vtrn1_s16(v170, v171);
      v153 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v150, v152);
      v165 = vzip1_s32(v151, v153);
      v166 = vzip2_s32(v150, v152);
      v167 = vzip2_s32(v151, v153);
      v154 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v149) = vqrshrn_n_s32(vmull_s16(*(&v164 + v149), v154), 0xCuLL);
        v149 += 8;
      }

      while (v149 != 32);
      for (jj = 0; jj != 4; ++jj)
      {
        a5 = vmovl_s16(*(&v172 + jj));
        *(a2 + 16 * jj) = a5;
      }

      return a5.n128_f64[0];
    case 11:
      for (kk = 0; kk != 32; kk += 8)
      {
        *(&v172 + kk) = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (mm = 0; mm != 32; mm += 8)
      {
        *(&v172 + mm) = vshl_n_s16(*(&v172 + mm), 2uLL);
      }

      v19 = 0;
      v20 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v19) = vqrshrn_n_s32(vmull_s16(*(&v172 + v19), v20), 0xCuLL);
        v19 += 8;
      }

      while (v19 != 32);
      v21 = 0;
      v22 = vtrn1_s16(v168, v169);
      v23 = vtrn2_s16(v168, v169);
      v24 = vtrn1_s16(v170, v171);
      v25 = vtrn2_s16(v170, v171);
      v26 = vzip1_s32(v22, v24);
      v27 = vzip2_s32(v22, v24);
      v28 = vzip1_s32(v23, v25);
      v29 = vzip2_s32(v23, v25);
      v30 = vadd_s16(v27, v28);
      v31 = vsub_s16(v28, v27);
      v32 = vadd_s16(v29, v26);
      v33 = vdup_n_s16(0x16A1u);
      v34 = vsub_s16(v26, v29);
      v35 = vmull_s16(v32, v33);
      v36 = vmlal_s16(v35, v30, v33);
      v37 = vmlsl_s16(v35, v30, v33);
      v38 = vdup_n_s16(0xC3Fu);
      v39 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v36, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v34, v39), v31, v38), 0xDuLL);
      v174 = vrshrn_n_s32(v37, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v34, v38), v31, v39), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v21));
        *(a2 + 16 * v21++) = a5;
      }

      while (v21 != 4);
      return a5.n128_f64[0];
    case 12:
      sub_2779F13C0(a1, &v168, a3);
      v40 = 0;
      v41 = vtrn1_s16(v168, v169);
      v42 = vtrn2_s16(v168, v169);
      v43 = vtrn1_s16(v170, v171);
      v44 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v41, v43);
      v165 = vzip1_s32(v42, v44);
      v166 = vzip2_s32(v41, v43);
      v167 = vzip2_s32(v42, v44);
      v45 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v40) = vqrshrn_n_s32(vmull_s16(*(&v164 + v40), v45), 0xCuLL);
        v40 += 8;
      }

      while (v40 != 32);
      for (nn = 0; nn != 4; ++nn)
      {
        a5 = vmovl_s16(*(&v172 + nn));
        *(a2 + 16 * nn) = a5;
      }

      return a5.n128_f64[0];
    case 13:
      for (i1 = 0; i1 != 32; i1 += 8)
      {
        *(&v172 + i1) = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i2 = 0; i2 != 32; i2 += 8)
      {
        *(&v172 + i2) = vshl_n_s16(*(&v172 + i2), 2uLL);
      }

      v135 = 0;
      v136 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v135) = vqrshrn_n_s32(vmull_s16(*(&v172 + v135), v136), 0xCuLL);
        v135 += 8;
      }

      while (v135 != 32);
LABEL_66:
      v137 = vtrn1_s16(v168, v169);
      v138 = vtrn2_s16(v168, v169);
      v139 = vtrn1_s16(v170, v171);
      v140 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v137, v139);
      v165 = vzip1_s32(v138, v140);
      v166 = vzip2_s32(v137, v139);
      v167 = vzip2_s32(v138, v140);
      v141 = &v164;
      goto LABEL_78;
    case 14:
      sub_2779F13C0(a1, &v168, a3);
      v10 = 0;
      v11 = vtrn1_s16(v168, v169);
      v12 = vtrn2_s16(v168, v169);
      v13 = vtrn1_s16(v170, v171);
      v14 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v11, v13);
      v165 = vzip1_s32(v12, v14);
      v166 = vzip2_s32(v11, v13);
      v167 = vzip2_s32(v12, v14);
      v15 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v10) = vqrshrn_n_s32(vmull_s16(*(&v164 + v10), v15), 0xCuLL);
        v10 += 8;
      }

      while (v10 != 32);
      for (i3 = 0; i3 != 4; ++i3)
      {
        a5 = vmovl_s16(*(&v172 + i3));
        *(a2 + 16 * i3) = a5;
      }

      return a5.n128_f64[0];
    case 15:
      for (i4 = 0; i4 != 32; i4 += 8)
      {
        *(&v172 + i4) = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i5 = 0; i5 != 32; i5 += 8)
      {
        *(&v172 + i5) = vshl_n_s16(*(&v172 + i5), 2uLL);
      }

      v60 = 0;
      v61 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v60) = vqrshrn_n_s32(vmull_s16(*(&v172 + v60), v61), 0xCuLL);
        v60 += 8;
      }

      while (v60 != 32);
      v62 = vtrn1_s16(v168, v169);
      v63 = vtrn2_s16(v168, v169);
      v64 = vtrn1_s16(v170, v171);
      v65 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v62, v64);
      v165 = vzip1_s32(v63, v65);
      v166 = vzip2_s32(v62, v64);
      v167 = vzip2_s32(v63, v65);
      v66 = &v164;
      for (i6 = 24; i6 != -8; i6 -= 8)
      {
        v68 = *v66++;
        *(&v168 + i6) = v68;
      }

LABEL_77:
      v141 = &v168;
LABEL_78:
      a5.n128_u64[0] = sub_2779F14D0(v141, a2).u64[0];
      break;
    default:
      return a5.n128_f64[0];
  }

  return a5.n128_f64[0];
}

int16x4_t sub_2779F12CC(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v3 = 0;
  v21 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v17 + v3) = *a1;
    v3 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 32);
  for (i = 0; i != 32; i += 8)
  {
    *(&v17 + i) = vshl_n_s16(*(&v17 + i), 2uLL);
  }

  v5 = vadd_s16(v19, v18);
  v6 = vsub_s16(v18, v19);
  v7 = vsub_s16(v17, v20);
  v8 = vdup_n_s16(0x16A1u);
  v9 = vmull_s16(vadd_s16(v20, v17), v8);
  v10 = vmlal_s16(v9, v5, v8);
  v11 = vmlsl_s16(v9, v5, v8);
  v12 = vdup_n_s16(0xC3Fu);
  v13 = vdup_n_s16(0x1D90u);
  v14 = vmlal_s16(vmull_s16(v7, v13), v6, v12);
  v15 = vmlsl_s16(vmull_s16(v7, v12), v6, v13);
  *a2 = vrshrn_n_s32(v10, 0xDuLL);
  a2[1] = vrshrn_n_s32(v14, 0xDuLL);
  result = vrshrn_n_s32(v11, 0xDuLL);
  a2[2] = result;
  a2[3] = vrshrn_n_s32(v15, 0xDuLL);
  return result;
}

int16x4_t sub_2779F13C0(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v3 = 0;
  v19 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v15 + v3) = *a1;
    v3 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 32);
  for (i = 0; i != 32; i += 8)
  {
    *(&v15 + i) = vshl_n_s16(*(&v15 + i), 2uLL);
  }

  v5 = vdup_n_s16(0x1A21u);
  v6 = vdup_n_s16(0x1364u);
  v7 = vdup_n_s16(0xA52u);
  v8 = vdup_n_s16(0x1DB6u);
  v9 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v16, v6), v17, v5), v15, v7), v18, v8);
  v10 = vmlsl_s16(vmull_s16(vqadd_s16(v15, v16), v5), v18, v5);
  v11 = vaddq_s32(vmlsl_s16(vmull_s16(v18, v6), v17, v5), vmlsl_s16(vmull_s16(v15, v8), v16, v7));
  v12.i64[0] = 0x300000003;
  v12.i64[1] = 0x300000003;
  v13 = vaddq_s32(vsubq_s32(vmulq_s32(vmull_s16(v17, v5), v12), v9), v11);
  *a2 = vrshrn_n_s32(v9, 0xDuLL);
  a2[1] = vrshrn_n_s32(v10, 0xDuLL);
  result = vrshrn_n_s32(v11, 0xDuLL);
  a2[2] = result;
  a2[3] = vrshrn_n_s32(v13, 0xDuLL);
  return result;
}

int32x4_t sub_2779F14D0(int16x4_t *a1, uint64_t a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = vdup_n_s16(0x1A21u);
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = vmull_s16(v5, v3);
  v8 = vdup_n_s16(0x1364u);
  v9 = vdup_n_s16(0xA52u);
  v10 = vdup_n_s16(0x1DB6u);
  v11 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v4, v8), v5, v3), *a1, v9), v6, v10);
  v12 = vmlsl_s16(vmull_s16(vqadd_s16(*a1, v4), v3), v6, v3);
  v13 = vaddq_s32(vmlsl_s16(vmull_s16(v6, v8), v5, v3), vmlsl_s16(vmull_s16(*a1, v10), v4, v9));
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v16[0] = vrshrn_n_s32(v11, 0xDuLL);
  v16[1] = vrshrn_n_s32(v12, 0xDuLL);
  v16[2] = vrshrn_n_s32(v13, 0xDuLL);
  v16[3] = vrshrn_n_s32(vaddq_s32(vsubq_s32(vmulq_s32(v7, v14), v11), v13), 0xDuLL);
  do
  {
    result = vmovl_s16(v16[v2]);
    *(a2 + 16 * v2++) = result;
  }

  while (v2 != 4);
  return result;
}

uint64_t sub_2779F15BC(uint64_t a1, int a2, int a3, int a4, char a5)
{
  if ((0x20005uLL >> a5) & 1) != 0 || (v6 = 0x10003uLL >> a5, v7 = a2, v8 = a3, (v6))
  {
    v7 = a2;
    if (*a1)
    {
      if (*(a1 + 15020))
      {
        v7 = a2 + 1;
      }

      else
      {
        v7 = a2;
      }
    }

    if (*(a1 + 4))
    {
      if (*(a1 + 15016))
      {
        v8 = a3 + 1;
      }

      else
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a3;
    }
  }

  return sub_2779F1650((a1 + 10776), *(a1 + 32) + 4 * (a3 + *(a1 + 56) * a2), *(a1 + 56), v7, v8, a4, (*(*(a1 + 7960) + 192) >> 3) & 1);
}

uint64_t sub_2779F1650(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v8 = a1[1060];
  v9 = a1[1061];
  v10 = a4 << (2 - v9);
  v11 = a5 << (2 - v8);
  v12 = dword_277C3BF30[a6] >> v9;
  v13 = dword_277C3BEE4[a6] >> v8;
  a1[1059] = 0;
  if (a5 | a4)
  {
    v14 = v11 + v13;
    if (v14 <= a1[1058])
    {
      v14 = a1[1058];
    }

    a1[1058] = v14;
    v12 += v10;
    if (v12 <= a1[1057])
    {
      v12 = a1[1057];
    }
  }

  else
  {
    a1[1058] = v13;
  }

  a1[1057] = v12;
  v15 = &a1[16 * v10] + 2 * v11;
  if (a7)
  {
    if (v9 == 1)
    {
      v16 = off_28866F478;
    }

    else
    {
      v16 = off_28866F510;
    }

    if (v8 == 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = off_28866F5A8;
    }

    return (v17[a6])(2 * a2, a3, v15);
  }

  else
  {
    if (v9 == 1)
    {
      v19 = off_28866F2B0;
    }

    else
    {
      v19 = off_28866F348;
    }

    if (v8 == 1)
    {
      v20 = v19;
    }

    else
    {
      v20 = off_28866F3E0;
    }

    return (v20[a6])(a2, a3, v15);
  }
}

uint64_t sub_2779F1744(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v88 = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  result = 0;
  v70 = a5;
  v71 = 8 * a2;
  v8 = a2;
  v9 = 2 * a2;
  v69 = a4;
  v75 = a5;
  v76 = v9;
  v77 = a2;
  do
  {
    v73 = v5;
    v72 = v6;
    if (a5 >= 1)
    {
      v10 = 0;
      v11 = a1 + v5;
      v74 = a1 + v71 * v6;
      do
      {
        v80 = v10;
        v81 = result;
        v79 = v11;
        if (a3)
        {
          v12 = 0;
          v13 = (2 * (v74 + 8 * v10));
          do
          {
            v14 = &v86[v12];
            v15 = vshll_high_n_u16(*v13, 2uLL);
            *v14 = vshll_n_u16(*v13->i8, 2uLL);
            v14[1] = v15;
            v12 += 32;
            v13 = (v13 + v9);
          }

          while (v12 != 256);
        }

        else
        {
          v16 = 0;
          v17 = v86;
          v18 = v11;
          do
          {
            for (i = 0; i != 8; ++i)
            {
              *&v17[4 * i] = 4 * *(v18 + i);
            }

            ++v16;
            v17 += 32;
            v18 += v8;
          }

          while (v16 != 8);
        }

        v20 = 8;
        v21 = 4;
        v22 = 4;
        v23 = 8;
        do
        {
          v24 = 0;
          v84 = v22;
          v82 = v23;
          v83 = v20;
          v25 = v20 >> 1;
          v26 = (v20 >> 1) - 1;
          if (v23 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v23;
          }

          v28 = v21;
          v85 = v21;
          v29 = v21;
          do
          {
            v30 = &v86[32 * v24];
            v31 = v87;
            __memcpy_chk();
            v32 = &v30[v29];
            v33 = v87[0];
            if (v26)
            {
              v31 = v87;
              v34 = v25 - 1;
              v35 = &v86[32 * v24];
              do
              {
                v36 = v33;
                *v35 = 2 * v33;
                v37 = v31[2];
                v31 += 2;
                v33 = v37;
                v35[v28] = *(v31 - 1) - ((v36 + v37 + 1) >> 1);
                ++v35;
                --v34;
              }

              while (v34);
              v38 = &v35[v28];
            }

            else
            {
              v35 = &v86[32 * v24];
              v38 = &v30[v29];
            }

            *v35 = 2 * v33;
            *v38 = v31[1] - v33;
            v39 = &v30[v29];
            v40 = v25;
            do
            {
              v41 = v32;
              v42 = *v32++;
              *v30++ += (*v39 + v42 + 1) >> 1;
              v39 = v41;
              --v40;
            }

            while (v40);
            ++v24;
          }

          while (v24 != v27);
          v43 = 0;
          v44 = v86;
          do
          {
            v45 = v44;
            v46 = v82;
            v47 = v82;
            do
            {
              v48 = *v45;
              v45 += 8;
              v87[v46++] = v48;
              --v47;
            }

            while (v47);
            v49 = v87;
            if (v82 >> 1 == 1)
            {
              v52 = &v87[v82];
              v51 = &v87[v84];
            }

            else
            {
              v50 = (v82 >> 1) - 1;
              v51 = &v87[v84];
              v52 = &v87[v82];
              do
              {
                v53 = *v52;
                *v49++ = *v52;
                v54 = v52[2];
                v52 += 2;
                *v51++ = (2 * *(v52 - 1) - (v53 + v54) + 2) >> 2;
                --v50;
              }

              while (v50);
            }

            v55 = 0;
            v56 = *v52;
            *v49 = *v52;
            *v51 = (v52[1] - v56 + 1) >> 1;
            v57 = &v87[v84];
            v58 = v57;
            do
            {
              v59 = v57;
              v60 = *v57++;
              v87[v55++] += (*v58 + v60 + 1) >> 1;
              v58 = v59;
            }

            while (v82 >> 1 != v55);
            v61 = 0;
            v62 = v44;
            do
            {
              *v62 = v87[v61];
              v62 += 8;
              ++v61;
            }

            while (v82 != v61);
            ++v43;
            ++v44;
          }

          while (v43 != v83);
          v20 = v85;
          if (v84 < 2)
          {
            break;
          }

          v22 = (v84 + 1) >> 1;
          v21 = (v29 + 1) >> 1;
          v23 = v84;
        }

        while (v29 > 1);
        v63 = 0;
        v64 = 0;
        v65 = v86;
        v9 = v76;
        v8 = v77;
        do
        {
          for (j = 0; j != 8; ++j)
          {
            if (((j | v63) & 0xFFFFFFFC) != 0)
            {
              v67 = *&v65[4 * j];
              if (v67 < 0)
              {
                v67 = -v67;
              }

              v64 += v67;
            }
          }

          ++v63;
          v65 += 32;
        }

        while (v63 != 8);
        result = v81 + v64;
        v10 = v80 + 1;
        v11 = v79 + 8;
      }

      while (v80 + 1 != v75);
    }

    v6 = v72 + 1;
    a5 = v70;
    v5 = v73 + v71;
  }

  while (v72 + 1 != v69);
  return result;
}

uint64_t sub_2779F1B94(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(a2 + 2 * v3);
    v6 = (0x8000 - v5 - v4);
    if (v6 <= 4)
    {
      v6 = 4;
    }

    if (v6 >= 0x7FFF)
    {
      v7 = 0x7FFF;
    }

    else
    {
      v7 = v6;
    }

    v8 = 14 - (__clz(v7) ^ 0x1F);
    v9 = v7 << v8;
    v10 = v7 << v8 < 0x40;
    v11 = v3;
    if (a3)
    {
      v11 = *(a3 + 4 * v3);
    }

    *(result + 4 * v11) = word_277C31464[(v10 | ((255 - (((v9 << 8) + 0x4000) >> 15)) >> 23) | (((v9 << 8) + 0x4000) >> 15)) - 128] + (v8 << 9);
    ++v3;
    v4 = 0x8000 - v5;
  }

  while (v5);
  return result;
}

uint64_t sub_2779F1C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = MEMORY[0x28223BE20]();
  v17 = v13;
  v19 = v18;
  v21 = v20;
  v22 = a11;
  v132 = *MEMORY[0x277D85DE8];
  v23 = ((v16 + (a11 - 1) * a9) >> 4) + 8;
  v24 = v11 - 3 * v12;
  v25 = v24 - 3;
  if (a10 == 4)
  {
    v26 = 4 * v12;
    v27 = v123;
    do
    {
      v28 = 0;
      v29 = &v124;
      v30 = v14;
      do
      {
        if ((v30 & 0xF) != 0)
        {
          result = (v30 >> 4);
          v32 = (v25 + result);
          v33 = vshrq_n_s16(*(v13 + 16 * (v30 & 0xF)), 1uLL);
          v34 = *v32;
          v35 = (v32 + v12);
          v36 = *v35;
          v37 = (v35 + v12);
          v38 = *(v37 + v12);
          v39 = vtrn1_s8(v34, v36);
          v40 = vtrn2_s8(v34, v36);
          v41 = vtrn1_s8(*v37, v38);
          v42 = vtrn2_s8(*v37, v38);
          v43 = vtrn1_s16(v39, v41);
          v44 = vtrn2_s16(v39, v41);
          v45 = vtrn1_s16(v40, v42);
          v46 = vtrn2_s16(v40, v42);
          v47 = vmovl_u8(v43);
          v48 = vmovl_u8(v45);
          v49 = vmovl_u8(v44);
          v50 = vmovl_u8(v46);
          *v48.i8 = vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmla_lane_s16(vmul_lane_s16(*v48.i8, *v33.i8, 1), *v47.i8, *v33.i8, 0), *v49.i8, *v33.i8, 2), *v50.i8, *v33.i8, 3), *&vextq_s8(v47, v47, 8uLL), v33, 4), *&vextq_s8(v48, v48, 8uLL), v33, 5), *&vextq_s8(v49, v49, 8uLL), v33, 6), *&vextq_s8(v50, v50, 8uLL), v33, 7);
          v124.i32[v28] = vqrshrun_n_s16(v48, 6uLL).u32[0];
        }

        else
        {
          v51 = 0;
          result = v24 + (v30 >> 4);
          do
          {
            v29->i8[v51++] = *result;
            result += v12;
          }

          while (v51 != 4);
        }

        v30 += v15;
        ++v28;
        v29 = (v29 + 4);
      }

      while (v28 != 4);
      v52 = vtrn1_s16(v124, v125);
      v53 = vtrn2_s16(v124, v125);
      v54 = vzip1_s32(v52, v53);
      v55 = vzip2_s32(v52, v53);
      v56 = vtrn1_s8(v54, v55);
      v57 = vtrn2_s8(v54, v55);
      *v27 = v56.i32[0];
      v27[32] = v56.i32[1];
      v27[16] = v57.i32[0];
      v27[48] = v57.i32[1];
      v25 += v26;
      v27 += 64;
      v24 += v26;
      v58 = __OFSUB__(v23, 4);
      v23 -= 4;
    }

    while (!((v23 < 0) ^ v58 | (v23 == 0)));
  }

  else
  {
    v59 = 8 * v12;
    v60 = v123;
    do
    {
      v61 = a10;
      v62 = v60;
      v63 = v14;
      do
      {
        v64 = 0;
        result = &v124;
        do
        {
          if ((v63 & 0xF) != 0)
          {
            v65 = (v25 + (v63 >> 4));
            v66 = vshrq_n_s16(*(v13 + 16 * (v63 & 0xF)), 1uLL);
            v67.i64[0] = *v65;
            v68.i64[0] = *(v65 + v12);
            v69 = (v65 + v12 + v12);
            v70.i64[0] = *v69;
            v71 = (v69 + v12);
            v72.i64[0] = *v71;
            v73 = (v71 + v12);
            v74 = *v73;
            v75 = (v73 + v12);
            v76 = *v75;
            v77 = (v75 + v12);
            v67.i64[1] = v74;
            v68.i64[1] = v76;
            v78 = vtrn1q_s8(v67, v68);
            v70.i64[1] = *v77;
            v72.i64[1] = *(v77 + v12);
            v79 = vtrn2q_s8(v67, v68);
            v80 = vtrn1q_s8(v70, v72);
            v81 = vtrn2q_s8(v70, v72);
            v82 = vtrn1q_s16(v78, v80);
            v83 = vtrn2q_s16(v78, v80);
            v84 = vtrn1q_s16(v79, v81);
            v85 = vtrn2q_s16(v79, v81);
            v86 = vuzp1q_s32(v82, v84);
            v87 = vuzp2q_s32(v82, v84);
            v88 = vuzp1q_s32(v83, v85);
            v89 = vuzp2q_s32(v83, v85);
            *(&v124 + v64) = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_lane_s16(vmovl_high_u8(v86), *v66.i8, 1), vmovl_u8(*v86.i8), *v66.i8, 0), vmovl_u8(*v88.i8), *v66.i8, 2), vmovl_high_u8(v88), *v66.i8, 3), vmovl_u8(*v87.i8), v66, 4), vmovl_high_u8(v87), v66, 5), vmovl_u8(*v89.i8), v66, 6), vmovl_high_u8(v89), v66, 7), 6uLL);
          }

          else
          {
            v90 = 0;
            v91 = (v24 + (v63 >> 4));
            do
            {
              *(result + v90++) = *v91;
              v91 += v12;
            }

            while (v90 != 8);
          }

          v63 += v15;
          ++v64;
          result += 8;
        }

        while (v64 != 8);
        *v92.i8 = v124;
        *v93.i8 = v125;
        v94.i64[0] = v126;
        v95.i64[0] = v127;
        v92.i64[1] = v128;
        v93.i64[1] = v129;
        v96 = vtrn1q_s8(v92, v93);
        v97 = vtrn2q_s8(v92, v93);
        v94.i64[1] = v130;
        v95.i64[1] = v131;
        v98 = vtrn1q_s8(v94, v95);
        v99 = vtrn2q_s8(v94, v95);
        v100 = vtrn1q_s16(v96, v98);
        v101 = vtrn2q_s16(v96, v98);
        v102 = vtrn1q_s16(v97, v99);
        v103 = vtrn2q_s16(v97, v99);
        v104 = vuzp1q_s32(v100, v102);
        v105 = vuzp2q_s32(v100, v102);
        v106 = vuzp1q_s32(v101, v103);
        v107 = vuzp2q_s32(v101, v103);
        *v62 = v104.i64[0];
        v62[8] = vextq_s8(v104, v104, 8uLL).u64[0];
        v62[16] = v106.i64[0];
        v62[24] = vextq_s8(v106, v106, 8uLL).u64[0];
        v62[32] = v105.i64[0];
        v62[40] = vextq_s8(v105, v105, 8uLL).u64[0];
        v62[48] = v107.i64[0];
        v62[56] = vextq_s8(v107, v107, 8uLL).u64[0];
        ++v62;
        v61 -= 8;
      }

      while (v61);
      v25 += v59;
      v60 += 512;
      v24 += v59;
      v58 = __OFSUB__(v23, 8);
      v23 -= 8;
    }

    while (!((v23 < 0) ^ v58 | (v23 == 0)));
  }

  if (a10 == 4)
  {
    do
    {
      v111 = &v123[64 * (v16 >> 4)];
      if ((v16 & 0xF) != 0)
      {
        v112 = vshrq_n_s16(*(v13 + 16 * (v16 & 0xF)), 1uLL);
        v113 = vmovl_u8(*v111);
        *v113.i8 = vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmla_lane_s16(vmul_n_s16(*v113.i8, v112.i16[0]), *&vmovl_u8(v111[8]), *v112.i8, 1), *&vmovl_u8(v111[16]), *v112.i8, 2), *&vmovl_u8(v111[24]), *v112.i8, 3), *&vmovl_u8(v111[32]), v112, 4), *&vmovl_u8(v111[40]), v112, 5), *&vmovl_u8(v111[48]), v112, 6), *&vmovl_u8(v111[56]), v112, 7);
        v114 = vqrshrun_n_s16(v113, 6uLL).u32[0];
      }

      else
      {
        v114 = v111[24].u32[0];
      }

      v21->i32[0] = v114;
      v16 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  else if (a10 == 8)
  {
    do
    {
      v108 = &v123[64 * (v16 >> 4)];
      if ((v16 & 0xF) != 0)
      {
        v109 = vshrq_n_s16(*(v13 + 16 * (v16 & 0xF)), 1uLL);
        v110 = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v108), v109.i16[0]), vmovl_u8(v108[8]), *v109.i8, 1), vmovl_u8(v108[16]), *v109.i8, 2), vmovl_u8(v108[24]), *v109.i8, 3), vmovl_u8(v108[32]), v109, 4), vmovl_u8(v108[40]), v109, 5), vmovl_u8(v108[48]), v109, 6), vmovl_u8(v108[56]), v109, 7), 6uLL);
      }

      else
      {
        v110 = v108[24];
      }

      *v21 = v110;
      v16 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  else
  {
    v115 = v16;
    do
    {
      v116 = &v123[64 * (v115 >> 4)];
      if ((v115 & 0xF) != 0)
      {
        v117 = 0;
        do
        {
          v118 = vshrq_n_s16(*(v17 + 16 * (v115 & 0xF)), 1uLL);
          v119 = *&v116[v117];
          v120 = *&v116[v117 + 64];
          v121 = *&v116[v117 + 128];
          v122 = *&v116[v117 + 192];
          *v21[v117 / 8].i8 = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v119.i8), v118.i16[0]), vmovl_u8(*v120.i8), *v118.i8, 1), vmovl_u8(*v121.i8), *v118.i8, 2), vmovl_u8(*v122.i8), *v118.i8, 3), vmovl_u8(*&v116[v117 + 256]), v118, 4), vmovl_u8(*&v116[v117 + 320]), v118, 5), vmovl_u8(*&v116[v117 + 384]), v118, 6), vmovl_u8(*&v116[v117 + 448]), v118, 7), 6uLL), vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v119), v118.i16[0]), vmovl_high_u8(v120), *v118.i8, 1), vmovl_high_u8(v121), *v118.i8, 2), vmovl_high_u8(v122), *v118.i8, 3), vmovl_high_u8(*&v116[v117 + 256]), v118, 4), vmovl_high_u8(*&v116[v117 + 320]), v118, 5), vmovl_high_u8(*&v116[v117 + 384]), v118, 6), vmovl_high_u8(*&v116[v117 + 448]), v118, 7), 6uLL);
          v117 += 16;
        }

        while (a10 != v117);
      }

      else
      {
        result = memcpy(v21, v116 + 192, (a10 & 0xFFFFFFF0) - 16 + 16);
      }

      v115 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  return result;
}

void *sub_2779F226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  result = MEMORY[0x28223BE20]();
  v24 = v14;
  v25 = v13;
  v27 = v26;
  v28 = a11;
  v119 = *MEMORY[0x277D85DE8];
  v29 = ((v17 + (a11 - 1) * a9) >> 4) + 8;
  v30 = result - 3 * v12 - 3;
  if (a10 == 4)
  {
    v31 = v110;
    do
    {
      v32 = 0;
      v33 = v15;
      do
      {
        v34 = *(v14 + 16 * (v33 & 0xF));
        v35 = (v30 + (v33 >> 4));
        *&_Q1 = *v35;
        v37 = (v35 + v12);
        v38 = *v37;
        v39 = (v37 + v12);
        _Q3.i64[0] = *v39;
        _Q5 = vshrn_high_n_s16(vshrn_n_s16(v34, 1uLL), v34, 1uLL);
        *(&_Q1 + 1) = v38;
        _Q3.i64[1] = *(v39 + v12);
        __asm
        {
          USDOT           V0.4S, V1.16B, V5.16B
          USDOT           V1.4S, V3.16B, V5.16B
        }

        v48 = vpaddq_s32(_Q0, _Q1);
        *v48.i8 = vmovn_s32(v48);
        v111.i32[v32] = vqrshrun_n_s16(v48, 6uLL).u32[0];
        v33 += v16;
        ++v32;
      }

      while (v32 != 4);
      v49 = vtrn1_s16(v111, v112);
      v50 = vtrn2_s16(v111, v112);
      v51 = vzip1_s32(v49, v50);
      v52 = vzip2_s32(v49, v50);
      v53 = vtrn1_s8(v51, v52);
      v54 = vtrn2_s8(v51, v52);
      *v31 = v53.i32[0];
      v31[32] = v53.i32[1];
      v31[16] = v54.i32[0];
      v31[48] = v54.i32[1];
      v30 += 4 * v12;
      v31 += 64;
      _VF = __OFSUB__(v29, 4);
      v29 -= 4;
    }

    while (!((v29 < 0) ^ _VF | (v29 == 0)));
  }

  else
  {
    v55 = v110;
    do
    {
      v56 = a10;
      v57 = v55;
      v58 = v15;
      do
      {
        for (i = 0; i != 64; i += 8)
        {
          v60 = *(v14 + 16 * (v58 & 0xF));
          v61 = (v30 + (v58 >> 4));
          *&_Q1 = *v61;
          v63 = (v61 + v12);
          v64 = *v63;
          v65 = (v63 + v12);
          *&_Q3 = *v65;
          v67 = (v65 + v12);
          v68 = *v67;
          v69 = (v67 + v12);
          *&_Q5 = *v69;
          v71 = (v69 + v12);
          v72 = *v71;
          v73 = (v71 + v12);
          _Q7.i64[0] = *v73;
          *(&_Q1 + 1) = v64;
          *(&_Q3 + 1) = v68;
          *(&_Q5 + 1) = v72;
          _Q7.i64[1] = *(v73 + v12);
          _Q17 = vshrn_high_n_s16(vshrn_n_s16(v60, 1uLL), v60, 1uLL);
          __asm
          {
            USDOT           V0.4S, V1.16B, V17.16B
            USDOT           V1.4S, V3.16B, V17.16B
            USDOT           V2.4S, V5.16B, V17.16B
            USDOT           V3.4S, V7.16B, V17.16B
          }

          *(&v111 + i) = vqrshrun_n_s16(vuzp1q_s16(vpaddq_s32(_Q0, _Q1), vpaddq_s32(_Q2, _Q3)), 6uLL);
          v58 += v16;
        }

        *v78.i8 = v111;
        *v79.i8 = v112;
        v80.i64[0] = v113;
        v81.i64[0] = v114;
        v78.i64[1] = v115;
        v79.i64[1] = v116;
        v82 = vtrn1q_s8(v78, v79);
        v83 = vtrn2q_s8(v78, v79);
        v80.i64[1] = v117;
        v81.i64[1] = v118;
        v84 = vtrn1q_s8(v80, v81);
        v85 = vtrn2q_s8(v80, v81);
        v86 = vtrn1q_s16(v82, v84);
        v87 = vtrn2q_s16(v82, v84);
        v88 = vtrn1q_s16(v83, v85);
        v89 = vtrn2q_s16(v83, v85);
        v90 = vuzp1q_s32(v86, v88);
        _Q3 = vuzp2q_s32(v86, v88);
        _Q4 = vuzp1q_s32(v87, v89);
        v91 = vuzp2q_s32(v87, v89);
        _Q1 = vextq_s8(v90, v90, 8uLL);
        _Q5 = vextq_s8(_Q4, _Q4, 8uLL);
        _Q6 = vextq_s8(_Q3, _Q3, 8uLL);
        *v57 = v90.i64[0];
        _Q2 = vextq_s8(v91, v91, 8uLL);
        v57[8] = _Q1.i64[0];
        v57[16] = _Q4.i64[0];
        v57[24] = _Q5.i64[0];
        v57[32] = _Q3.i64[0];
        v57[40] = _Q6.i64[0];
        v57[48] = v91.i64[0];
        v57[56] = _Q2.i64[0];
        ++v57;
        v56 -= 8;
      }

      while (v56);
      v30 += 8 * v12;
      v55 += 512;
      _VF = __OFSUB__(v29, 8);
      v29 -= 8;
    }

    while (!((v29 < 0) ^ _VF | (v29 == 0)));
  }

  if (a10 == 4)
  {
    do
    {
      v92 = &v110[64 * (v17 >> 4)];
      if ((v17 & 0xF) != 0)
      {
        _Q0 = *(v14 + 16 * (v17 & 0xF));
        _Q0.i16[0] = vshrn_n_s16(_Q0, 1uLL).u16[0];
        *_Q1.i8 = vzip1_s8(*v92, v92[8]);
        *_Q2.i8 = vzip1_s8(v92[16], v92[24]);
        *_Q3.i8 = vzip1_s8(v92[32], v92[40]);
        *_Q4.i8 = vzip1_s8(v92[48], v92[56]);
        _Q1 = vzip1q_s16(_Q1, _Q2);
        _Q2 = vzip1q_s16(_Q3, _Q4);
        __asm
        {
          USDOT           V3.4S, V1.16B, V0.4B[0]
          USDOT           V3.4S, V2.16B, V0.4B[1]
        }

        *_Q0.i8 = vmovn_s32(_Q3);
        v95 = vqrshrun_n_s16(_Q0, 6uLL).u32[0];
      }

      else
      {
        v95 = v92[24].u32[0];
      }

      *v27 = v95;
      v17 += a9;
      v27 = (v27 + v13);
      --v28;
    }

    while (v28);
  }

  else
  {
    v96 = v17;
    do
    {
      v97 = &v110[64 * (v96 >> 4)];
      if ((v96 & 0xF) != 0)
      {
        v98 = 0;
        v99 = vshrn_n_s16(*(v24 + 16 * (v96 & 0xF)), 1uLL);
        _Q0 = vdupq_lane_s32(v99, 0);
        _Q1 = vdupq_lane_s32(v99, 1);
        do
        {
          _Q2.i64[0] = *&v97[v98];
          _Q3.i64[0] = *&v97[v98 + 64];
          _Q4.i64[0] = *&v97[v98 + 128];
          _Q5.i64[0] = *&v97[v98 + 192];
          _Q6.i64[0] = *&v97[v98 + 256];
          _Q7.i64[0] = *&v97[v98 + 320];
          v22.i64[0] = *&v97[v98 + 384];
          _Q17.i64[0] = *&v97[v98 + 448];
          v102 = vzip1q_s8(_Q2, _Q3);
          v103 = vzip1q_s8(_Q4, _Q5);
          v104 = vzip1q_s8(_Q6, _Q7);
          v105 = vzip1q_s8(v22, _Q17);
          _Q6 = vzip1q_s16(v102, v103);
          _Q2 = vzip2q_s16(v102, v103);
          _Q3 = vzip1q_s16(v104, v105);
          _Q4 = vzip2q_s16(v104, v105);
          __asm
          {
            USDOT           V5.4S, V6.16B, V0.16B
            USDOT           V5.4S, V3.16B, V1.16B
            USDOT           V3.4S, V2.16B, V0.16B
            USDOT           V3.4S, V4.16B, V1.16B
          }

          _Q2 = vuzp1q_s16(_Q5, _Q3);
          *&v27[v98 / 4] = vqrshrun_n_s16(_Q2, 6uLL);
          v98 += 8;
        }

        while (a10 != v98);
      }

      else
      {
        result = memcpy(v27, v97 + 192, (a10 & 0xFFFFFFF8) - 8 + 8);
      }

      v96 += a9;
      v27 = (v27 + v25);
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_2779F26B0(uint64_t result, int a2, _BYTE *a3, double a4, double a5, double a6, int32x4_t a7, int32x4_t a8)
{
  v8 = a2 + (a2 & 1u) - 4;
  if (v8 >= 4)
  {
    v18 = 0;
    v19 = (result + 1);
    do
    {
      v20 = 0;
      v21 = v18;
      v22 = 64;
      v23 = v19;
      v24 = &word_277BEC0C0;
      do
      {
        v25 = *v23++;
        v26 = v25 + *(result + ((v21 + v20) & ~((v21 + v20) >> 31)));
        v27 = *v24++;
        v22 += v26 * v27;
        --v20;
      }

      while (v20 != -4);
      v28 = (v22 >> 7) & ~(v22 >> 31);
      if (v28 >= 255)
      {
        LOBYTE(v28) = -1;
      }

      *a3++ = v28;
      v18 = v21 + 2;
      v19 += 2;
    }

    while (!v21);
    if (a2 + (a2 & 1) == 8)
    {
      LODWORD(v29) = 4;
    }

    else
    {
      v30 = 0;
      v31.i64[0] = 0xFF000000FFLL;
      v31.i64[1] = 0xFF000000FFLL;
      do
      {
        a7.i32[0] = *(result + v30 + 5);
        a8.i32[0] = *(result + v30 + 1);
        a7 = vaddw_u16(vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*a8.i8))), v31), *&vmovl_u8(*a7.i8));
        a8 = vmlaq_s32(xmmword_277BB73E0, a7, xmmword_277BB73D0);
        a7.i32[0] = vaddvq_s32(a8);
        v32 = (a7.i32[0] >> 7) & ~(a7.i32[0] >> 31);
        if (v32 >= 255)
        {
          LOBYTE(v32) = -1;
        }

        *a3++ = v32;
        v29 = v30 + 6;
        v30 += 2;
      }

      while (v29 < v8);
    }

    if (v29 < a2)
    {
      v33 = a2 - 1;
      v34 = v29;
      v35 = a2;
      v36 = v29 + 1;
      v37 = result + v29;
      do
      {
        v38 = 0;
        v39 = 64;
        v40 = v36;
        v41 = &word_277BEC0C0;
        do
        {
          if (v40 >= v33)
          {
            v42 = v33;
          }

          else
          {
            v42 = v40;
          }

          v43 = *v41++;
          v39 += (*(result + v42) + *(v37 + v38--)) * v43;
          ++v40;
        }

        while (v38 != -4);
        v44 = (v39 >> 7) & ~(v39 >> 31);
        if (v44 >= 255)
        {
          LOBYTE(v44) = -1;
        }

        *a3++ = v44;
        v34 += 2;
        v36 += 2;
        v37 += 2;
      }

      while (v34 < v35);
    }
  }

  else if (a2 >= 1)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = 0;
      v12 = 64;
      v13 = v10;
      v14 = &word_277BEC0C0;
      do
      {
        if (v13 >= a2 - 1)
        {
          v15 = a2 - 1;
        }

        else
        {
          v15 = v13;
        }

        v16 = *v14++;
        v12 += (*(result + v15) + *(result + ((v9 + v11) & ~((v9 + v11) >> 31)))) * v16;
        --v11;
        ++v13;
      }

      while (v11 != -4);
      v17 = (v12 >> 7) & ~(v12 >> 31);
      if (v17 >= 255)
      {
        LOBYTE(v17) = -1;
      }

      *a3++ = v17;
      v9 += 2;
      v10 += 2;
    }

    while (v9 < a2);
  }

  return result;
}

uint64_t sub_2779F28D8(char *a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13)
{
  v19 = a7 * a2;
  if (v19 <= 0x1FFFFFFE9 && (v20 = malloc_type_malloc(v19 + 23, 0x5F484EBFuLL)) != 0)
  {
    v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v21 - 8) = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a3 <= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a3;
  }

  if (v22 < 0 || (v23 = malloc_type_malloc((v22 + 23), 0x5F484EBFuLL)) == 0)
  {
    v24 = 0;
    if (a2 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v24 - 8) = v23;
    if (a2 < 0)
    {
LABEL_16:
      v26 = 0;
      if (a6 < 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  v25 = malloc_type_malloc(a2 + 23, 0x5F484EBFuLL);
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v26 - 1) = v25;
  if (a6 < 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v27 = malloc_type_malloc((a6 + 23), 0x5F484EBFuLL);
  if (v27)
  {
    v28 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v28 - 1) = v27;
    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
LABEL_20:
  if (v21)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  v31 = v29 || v26 == 0 || v28 == 0;
  v32 = !v31;
  v48 = v32;
  if (!v31)
  {
    v45 = a6;
    v46 = a8;
    if (a2 >= 1)
    {
      v33 = a3;
      v34 = v21;
      v35 = a2;
      do
      {
        sub_2779F2B50(a1, v33, v34, a7, v24, a9, a10, a11, a12, a13);
        v34 += a7;
        a1 += a4;
        --v35;
      }

      while (v35);
    }

    if (a7 >= 1)
    {
      v36 = 0;
      do
      {
        if (a2 >= 1)
        {
          v37 = (v21 + v36);
          v38 = a2;
          v39 = v26;
          do
          {
            *v39++ = *v37;
            v37 += a7;
            --v38;
          }

          while (v38);
        }

        sub_2779F2B50(v26, a2, v28, v45, v24, a9, a10, a11, a12, a13);
        if (v45 >= 1)
        {
          v40 = (a5 + v36);
          v41 = v45;
          v42 = v28;
          do
          {
            v43 = *v42++;
            *v40 = v43;
            v40 += v46;
            --v41;
          }

          while (v41);
        }

        ++v36;
      }

      while (v36 != a7);
    }
  }

  if (v21)
  {
    free(*(v21 - 8));
  }

  if (v24)
  {
    free(*(v24 - 8));
  }

  if (v26)
  {
    free(*(v26 - 1));
  }

  if (v28)
  {
    free(*(v28 - 1));
  }

  return v48;
}

char *sub_2779F2B50(char *__src, int a2, _BYTE *__dst, int a4, uint64_t a5, double a6, double a7, double a8, int32x4_t a9, int32x4_t a10)
{
  v11 = a2;
  v12 = __src;
  if (a2 == a4)
  {

    return memcpy(__dst, __src, a2);
  }

  v16 = 0;
  v17 = a2;
  while (1)
  {
    v17 = (v17 + 1) >> 1;
    if (v17 < a4)
    {
      break;
    }

    ++v16;
    if (v17 == 1)
    {
      goto LABEL_10;
    }
  }

  if (!v16)
  {
LABEL_59:

    return sub_2779F2EE8(__src, v11, __dst, a4, a6, *&a7);
  }

LABEL_10:
  v18 = 0;
  v19 = 0;
  v20 = (a2 + 1) >> 1;
  v21 = (v16 - 1);
  v57 = v20;
  do
  {
    v22 = v11;
    v11 = (v11 + 1) >> 1;
    if (v19)
    {
      result = v18;
    }

    else
    {
      result = v12;
    }

    if (v11 == a4 && v19 == v21)
    {
      v18 = __dst;
    }

    else
    {
      v18 = (a5 + ((v19 << 31 >> 31) & v20));
    }

    if (v22)
    {
      if (v22 >= 7)
      {
        v34 = 0;
        v35 = 1;
        v36 = v18;
        do
        {
          v37 = v35;
          v38 = &result[v34];
          v39 = (result[v34] << 6) + 64;
          v40 = v34 - 1;
          for (i = 1; i != 4; ++i)
          {
            v39 += (v38[i] + result[v40 & ~(v40 >> 31)]) * asc_277BEC0C8[i];
            --v40;
          }

          v35 = 0;
          v42 = (v39 >> 7) & ~(v39 >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          *v36++ = v42;
          v34 = 2;
        }

        while ((v37 & 1) != 0);
        if (v22 == 7)
        {
          v43 = 4;
        }

        else
        {
          v44 = result + 5;
          v45 = (result + 3);
          v46 = 4;
          do
          {
            v47 = 0;
            v48 = (result[v46] << 6) + 64;
            v49 = v45;
            do
            {
              v50 = *v49--;
              v48 += (v44[v47] + v50) * asc_277BEC0C8[v47 + 1];
              ++v47;
            }

            while (v47 != 3);
            v51 = (v48 >> 7) & ~(v48 >> 31);
            if (v51 >= 255)
            {
              LOBYTE(v51) = -1;
            }

            *v36++ = v51;
            v46 += 2;
            v44 += 2;
            v45 += 2;
          }

          while (v46 < (v22 - 3));
          v43 = v46;
        }

        for (; v22 > v43; v43 += 2)
        {
          v52 = (result[v43] << 6) + 64;
          v53 = result - 1;
          for (j = 1; j != 4; ++j)
          {
            v55 = v43 + j;
            if (v43 + j >= v22)
            {
              v55 = v22 - 1;
            }

            v52 += (result[v55] + v53[v43]) * asc_277BEC0C8[j];
            --v53;
          }

          v56 = (v52 >> 7) & ~(v52 >> 31);
          if (v56 >= 255)
          {
            LOBYTE(v56) = -1;
          }

          *v36++ = v56;
        }
      }

      else if (v22 >= 1)
      {
        v27 = 0;
        v28 = v18;
        do
        {
          v29 = (result[v27] << 6) + 64;
          v30 = -1;
          for (k = 1; k != 4; ++k)
          {
            v32 = v27 + k;
            if (v27 + k >= v22)
            {
              v32 = v22 - 1;
            }

            v29 += (result[v32] + result[(v27 + v30) & ~((v27 + v30) >> 31)]) * asc_277BEC0C8[k];
            --v30;
          }

          v33 = (v29 >> 7) & ~(v29 >> 31);
          if (v33 >= 255)
          {
            LOBYTE(v33) = -1;
          }

          *v28++ = v33;
          v27 += 2;
        }

        while (v27 < v22);
      }
    }

    else
    {
      v24 = v18;
      v25 = v21;
      v26 = v19;
      result = sub_2779F26B0(result, v22, v18, a6, a7, a8, a9, a10);
      v19 = v26;
      v21 = v25;
      v18 = v24;
      v20 = v57;
    }

    ++v19;
  }

  while (v19 != v16);
  if (v11 != a4)
  {
    __src = v18;
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_2779F2EE8(uint64_t result, int a2, _BYTE *a3, int a4, double a5, int32x2_t a6)
{
  if (a2 <= a4)
  {
    v7 = &unk_277BEBCC0;
  }

  else
  {
    v6 = 16 * a4;
    if (16 * a4 >= 13 * a2)
    {
      v7 = &unk_277BEC0D0;
    }

    else if (v6 >= 11 * a2)
    {
      v7 = &unk_277BEC4D0;
    }

    else if (v6 >= 9 * a2)
    {
      v7 = &unk_277BEC8D0;
    }

    else
    {
      v7 = &unk_277BECCD0;
    }
  }

  v8 = a4 / 2;
  v9 = (a4 / 2 + (a2 << 14)) / a4;
  if (a2 <= a4)
  {
    v8 = a4 / -2;
  }

  v10 = (v8 + ((a2 - a4) << 13)) / a4;
  if (v10 > 49023)
  {
    v22 = 0;
  }

  else
  {
    v11 = v10 + v9 + 128;
    if (v11 <= 49152)
    {
      v11 = 49152;
    }

    v12 = v11 - v10 - 128;
    if (v12 == v9)
    {
      v13 = (a4 / 2 + (a2 << 14)) / a4;
    }

    else
    {
      v13 = v9 + 1;
    }

    v14 = v12 == v9;
    v15 = (v12 - v13) / v9;
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = v16 & 0xFFFFFFFC;
    a6.i32[0] = v16;
    v18 = (v16 & 0xFFFFFFFC) + 4;
    v19 = 0uLL;
    v20.i64[0] = 0x100000001;
    v20.i64[1] = 0x100000001;
    do
    {
      v21 = v19;
      v19 = vaddq_s32(v19, v20);
      v18 -= 4;
    }

    while (v18);
    v22 = vaddvq_s32(vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v17), xmmword_277BB7060), vdupq_lane_s32(a6, 0)), v21, v19));
  }

  v23 = v10 + 128;
  v24 = a4 - 1;
  for (i = v10 + v9 * (a4 - 1) + 128; (i >> 14) + 4 >= a2; i -= v9)
  {
    --v24;
  }

  if (v22 <= v24)
  {
    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        v35 = 0;
        v36 = 0;
        v37 = (v23 >> 14) - 3;
        v38 = 8;
        do
        {
          v36 += *(result + (v37 & ~(v37 >> 31))) * v7[((v23 >> 5) & 0x1F8) + v35++];
          ++v37;
          --v38;
        }

        while (v38);
        v39 = ((v36 + 64) >> 7) & ~((v36 + 64) >> 31);
        if (v39 >= 255)
        {
          LOBYTE(v39) = -1;
        }

        *a3++ = v39;
        v23 += v9;
      }
    }

    do
    {
      v40 = 0;
      v41 = 0;
      for (k = -3; k != 5; ++k)
      {
        v41 += *(result + (v23 >> 14) + k) * v7[((v23 >> 5) & 0x1F8) + v40++];
      }

      v43 = ((v41 + 64) >> 7) & ~((v41 + 64) >> 31);
      if (v43 >= 255)
      {
        LOBYTE(v43) = -1;
      }

      *a3++ = v43;
      v23 += v9;
      v14 = v22++ == v24;
    }

    while (!v14);
    v44 = v24 + 1;
    if (v24 + 1 < a4)
    {
      v45 = a2 - 1;
      do
      {
        v46 = 0;
        v47 = 0;
        v48 = (v23 >> 14) - 3;
        v49 = 8;
        do
        {
          if (v48 >= v45)
          {
            v50 = v45;
          }

          else
          {
            v50 = v48;
          }

          v47 += *(result + v50) * v7[((v23 >> 5) & 0x1F8) + v46++];
          ++v48;
          --v49;
        }

        while (v49);
        v51 = ((v47 + 64) >> 7) & ~((v47 + 64) >> 31);
        if (v51 >= 255)
        {
          LOBYTE(v51) = -1;
        }

        *a3++ = v51;
        ++v44;
        v23 += v9;
      }

      while (v44 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v26 = 0;
    v27 = a2 - 1;
    do
    {
      v28 = 0;
      v29 = 0;
      v30 = (v23 >> 14) - 3;
      v31 = 8;
      do
      {
        if (v30 >= v27)
        {
          v32 = v27;
        }

        else
        {
          v32 = v30;
        }

        v29 += *(result + (v32 & ~(v32 >> 31))) * v7[((v23 >> 5) & 0x1F8) + v28++];
        ++v30;
        --v31;
      }

      while (v31);
      v33 = ((v29 + 64) >> 7) & ~((v29 + 64) >> 31);
      if (v33 >= 255)
      {
        LOBYTE(v33) = -1;
      }

      *a3++ = v33;
      ++v26;
      v23 += v9;
    }

    while (v26 != a4);
  }

  return result;
}

char *sub_2779F3224(char *__src, int a2, char *__dst, int a4, uint64_t a5, int a6, double a7, int32x2_t a8)
{
  v9 = __src;
  if (a2 == a4)
  {

    return memcpy(__dst, __src, 2 * a2);
  }

  v10 = 0;
  v11 = a2;
  while (1)
  {
    v11 = (v11 + 1) >> 1;
    if (v11 < a4)
    {
      break;
    }

    ++v10;
    if (v11 == 1)
    {
      goto LABEL_10;
    }
  }

  if (!v10)
  {
LABEL_205:

    return sub_2779F3840(__src, a2, __dst, a4, a6, a7, a8);
  }

LABEL_10:
  v114 = v8;
  __src = 0;
  v12 = 0;
  v13 = (a2 + 1) >> 1;
  *&a7 = 0xC00000038;
  a8 = 64;
  do
  {
    v14 = a2;
    a2 = (a2 + 1) >> 1;
    if (v12)
    {
      v15 = __src;
    }

    else
    {
      v15 = v9;
    }

    v16 = a2 == a4 && v12 == v10 - 1;
    __src = (a5 + 2 * ((v12 << 31 >> 31) & v13));
    if (v16)
    {
      __src = __dst;
    }

    if (v14)
    {
      if (v14 >= 7)
      {
        v55 = 0;
        v56 = 1;
        v57 = __src;
        do
        {
          v58 = v56;
          v59 = &v15[2 * v55];
          v60 = (*v59 << 6) + 64;
          v61 = v55 - 1;
          v62 = 1u;
          do
          {
            v60 += (*&v59[v62 * 2] + *&v15[2 * (v61 & ~(v61 >> 31))]) * asc_277BEC0C8[v62];
            ++v62;
            --v61;
          }

          while (v62 != 4);
          v56 = 0;
          v63 = v60 >> 7;
          if (v63 >= 0x3FF)
          {
            v64 = 1023;
          }

          else
          {
            v64 = v63;
          }

          if (v63 >= 0xFFF)
          {
            v65 = 4095;
          }

          else
          {
            v65 = v63;
          }

          if (v63 >= 0xFF)
          {
            v66 = 255;
          }

          else
          {
            v66 = v63;
          }

          if (a6 != 12)
          {
            v65 = v66;
          }

          if (a6 != 10)
          {
            v64 = v65;
          }

          if ((v63 & 0x80000000) == 0)
          {
            v67 = v64;
          }

          else
          {
            v67 = 0;
          }

          *v57++ = v67;
          v55 = 2;
        }

        while ((v58 & 1) != 0);
        if (v14 == 7)
        {
          v68 = 4;
        }

        else
        {
          v90 = v15;
          v91 = 4;
          do
          {
            v92 = (*&v15[2 * v91] << 6) + 64;
            v93 = 10;
            v94 = L"#";
            v95 = 6;
            do
            {
              v96 = *v94++;
              v92 += (*&v90[v93] + *&v90[v95]) * v96;
              v93 += 2;
              v95 -= 2;
            }

            while (v95);
            v97 = v92 >> 7;
            if (v97 >= 0x3FF)
            {
              v98 = 1023;
            }

            else
            {
              v98 = v97;
            }

            if (v97 >= 0xFFF)
            {
              v99 = 4095;
            }

            else
            {
              v99 = v97;
            }

            if (v97 >= 0xFF)
            {
              v100 = 255;
            }

            else
            {
              v100 = v97;
            }

            if (a6 != 12)
            {
              v99 = v100;
            }

            if (a6 != 10)
            {
              v98 = v99;
            }

            if ((v97 & 0x80000000) == 0)
            {
              v101 = v98;
            }

            else
            {
              v101 = 0;
            }

            *v57++ = v101;
            v91 += 2;
            v90 += 4;
          }

          while (v91 < (v14 - 3));
          v68 = v91;
        }

        if (v68 < v14)
        {
          v102 = &v15[2 * v68 - 2];
          do
          {
            v103 = (*&v15[2 * v68] << 6) + 64;
            v104 = v102;
            for (i = 1; i != 4; ++i)
            {
              v107 = *v104--;
              v106 = v107;
              v108 = v68 + i;
              if (v68 + i >= v14 - 1)
              {
                v108 = v14 - 1;
              }

              v103 += (*&v15[2 * v108] + v106) * asc_277BEC0C8[i];
            }

            v109 = v103 >> 7;
            if (v109 >= 0x3FF)
            {
              v110 = 1023;
            }

            else
            {
              v110 = v109;
            }

            if (v109 >= 0xFFF)
            {
              v111 = 4095;
            }

            else
            {
              v111 = v109;
            }

            if (v109 >= 0xFF)
            {
              v112 = 255;
            }

            else
            {
              v112 = v109;
            }

            if (a6 != 12)
            {
              v111 = v112;
            }

            if (a6 != 10)
            {
              v110 = v111;
            }

            if ((v109 & 0x80000000) == 0)
            {
              v113 = v110;
            }

            else
            {
              v113 = 0;
            }

            *v57++ = v113;
            v68 += 2;
            v102 += 4;
          }

          while (v14 > v68);
        }
      }

      else if (v14 >= 1)
      {
        v31 = 0;
        v32 = __src;
        do
        {
          v33 = (*&v15[2 * v31] << 6) + 64;
          v34 = -1;
          for (j = 1; j != 4; ++j)
          {
            v36 = v31 + j;
            if (v31 + j >= v14 - 1)
            {
              v36 = v14 - 1;
            }

            v33 += (*&v15[2 * v36] + *&v15[2 * ((v31 + v34) & ~((v31 + v34) >> 31))]) * asc_277BEC0C8[j];
            --v34;
          }

          v37 = v33 >> 7;
          if (v37 >= 0x3FF)
          {
            v38 = 1023;
          }

          else
          {
            v38 = v37;
          }

          if (v37 >= 0xFFF)
          {
            v39 = 4095;
          }

          else
          {
            v39 = v37;
          }

          if (v37 >= 0xFF)
          {
            v40 = 255;
          }

          else
          {
            v40 = v37;
          }

          if (a6 != 12)
          {
            v39 = v40;
          }

          if (a6 != 10)
          {
            v38 = v39;
          }

          if ((v37 & 0x80000000) == 0)
          {
            v41 = v38;
          }

          else
          {
            v41 = 0;
          }

          *v32++ = v41;
          v31 += 2;
        }

        while (v31 < v14);
      }
    }

    else if (v14 >= 8)
    {
      v42 = 0;
      v43 = 1;
      v44 = __src;
      do
      {
        v45 = 0;
        v46 = v43;
        v47 = &v15[2 * v42 + 2];
        v48 = 64;
        do
        {
          v48 += (*(v47 + v45 * 2) + *&v15[2 * (v42 & ~(v42 >> 31))]) * word_277BEC0C0[v45];
          ++v45;
          LODWORD(v42) = v42 - 1;
        }

        while (v45 != 4);
        v43 = 0;
        v49 = v48 >> 7;
        if ((v48 >> 7) >= 0x3FF)
        {
          v50 = 1023;
        }

        else
        {
          v50 = v48 >> 7;
        }

        if (v49 >= 0xFFF)
        {
          LOWORD(v51) = 4095;
        }

        else
        {
          v51 = v48 >> 7;
        }

        if (v49 >= 0xFF)
        {
          v52 = 255;
        }

        else
        {
          v52 = v49;
        }

        if (a6 != 12)
        {
          LOWORD(v51) = v52;
        }

        if (a6 != 10)
        {
          v50 = v51;
        }

        if (v49 >= 0)
        {
          v53 = v50;
        }

        else
        {
          v53 = 0;
        }

        *v44++ = v53;
        v42 = 2;
      }

      while ((v46 & 1) != 0);
      if (v14 == 8)
      {
        v54 = 4;
      }

      else
      {
        v69 = 0;
        v70 = (v15 + 10);
        do
        {
          v71 = vaddvq_s32(vmlaq_s32(xmmword_277BB73E0, vaddl_u16(*v70, vrev64_s16(v70[-1])), xmmword_277BB73D0)) >> 7;
          if (v71 >= 0x3FF)
          {
            v72 = 1023;
          }

          else
          {
            v72 = v71;
          }

          if (v71 >= 0xFFF)
          {
            v73 = 4095;
          }

          else
          {
            v73 = v71;
          }

          if (v71 >= 0xFF)
          {
            v74 = 255;
          }

          else
          {
            v74 = v71;
          }

          if (a6 != 12)
          {
            v73 = v74;
          }

          if (a6 != 10)
          {
            v72 = v73;
          }

          if ((v71 & 0x80000000) == 0)
          {
            v75 = v72;
          }

          else
          {
            v75 = 0;
          }

          v44[v69] = v75;
          v76 = v69 * 2 + 2;
          v77 = v69 * 2 + 6;
          v70 = (v70 + 4);
          ++v69;
        }

        while (v77 < (v14 - 4));
        v44 = (v44 + v76);
        v54 = v77;
      }

      if (v54 < v14)
      {
        v78 = &v15[2 * v54];
        do
        {
          v79 = 0;
          v80 = 64;
          v81 = v78;
          do
          {
            v83 = *v81--;
            v82 = v83;
            if (v54 + v79 + 1 < v14 - 1)
            {
              v84 = v54 + v79 + 1;
            }

            else
            {
              v84 = v14 - 1;
            }

            v80 += (*&v15[2 * v84] + v82) * word_277BEC0C0[v79++];
          }

          while (v79 != 4);
          v85 = v80 >> 7;
          if ((v80 >> 7) >= 0x3FF)
          {
            v86 = 1023;
          }

          else
          {
            v86 = v80 >> 7;
          }

          if (v85 >= 0xFFF)
          {
            v87 = 4095;
          }

          else
          {
            v87 = v85;
          }

          if (v85 >= 0xFF)
          {
            v88 = 255;
          }

          else
          {
            v88 = v85;
          }

          if (a6 != 12)
          {
            v87 = v88;
          }

          if (a6 != 10)
          {
            v86 = v87;
          }

          if (v85 >= 0)
          {
            v89 = v86;
          }

          else
          {
            v89 = 0;
          }

          *v44++ = v89;
          LODWORD(v54) = v54 + 2;
          v78 += 2;
        }

        while (v14 > v54);
      }
    }

    else if (v14 >= 1)
    {
      v17 = 0;
      v18 = 1;
      v19 = __src;
      do
      {
        v20 = 0;
        v21 = 64;
        v22 = v18;
        v23 = word_277BEC0C0;
        do
        {
          if (v22 >= v14 - 1)
          {
            v24 = v14 - 1;
          }

          else
          {
            v24 = v22;
          }

          v25 = *v23++;
          v21 += (*&v15[2 * v24] + *&v15[2 * ((v17 + v20) & ~((v17 + v20) >> 31))]) * v25;
          --v20;
          ++v22;
        }

        while (v20 != -4);
        v26 = v21 >> 7;
        if ((v21 >> 7) >= 0x3FF)
        {
          v27 = 1023;
        }

        else
        {
          v27 = v21 >> 7;
        }

        if (v26 >= 0xFFF)
        {
          v28 = 4095;
        }

        else
        {
          v28 = v26;
        }

        if (v26 >= 0xFF)
        {
          v29 = 255;
        }

        else
        {
          v29 = v26;
        }

        if (a6 != 12)
        {
          v28 = v29;
        }

        if (a6 != 10)
        {
          v27 = v28;
        }

        if (v26 >= 0)
        {
          v30 = v27;
        }

        else
        {
          v30 = 0;
        }

        *v19++ = v30;
        v17 += 2;
        v18 += 2;
      }

      while (v17 < v14);
    }

    ++v12;
  }

  while (v12 != v10);
  v8 = v114;
  if (a2 != a4)
  {
    goto LABEL_205;
  }

  return __src;
}

uint64_t sub_2779F3840(uint64_t result, int a2, __int16 *a3, int a4, int a5, double a6, int32x2_t a7)
{
  if (a2 <= a4)
  {
    v8 = &unk_277BEBCC0;
  }

  else
  {
    v7 = 16 * a4;
    if (16 * a4 >= 13 * a2)
    {
      v8 = &unk_277BEC0D0;
    }

    else if (v7 >= 11 * a2)
    {
      v8 = &unk_277BEC4D0;
    }

    else if (v7 >= 9 * a2)
    {
      v8 = &unk_277BEC8D0;
    }

    else
    {
      v8 = &unk_277BECCD0;
    }
  }

  v9 = a4 / 2;
  v10 = (a4 / 2 + (a2 << 14)) / a4;
  if (a2 <= a4)
  {
    v9 = a4 / -2;
  }

  v11 = (v9 + ((a2 - a4) << 13)) / a4;
  if (v11 > 49023)
  {
    v23 = 0;
  }

  else
  {
    v12 = v11 + v10 + 128;
    if (v12 <= 49152)
    {
      v12 = 49152;
    }

    v13 = v12 - v11 - 128;
    if (v13 == v10)
    {
      v14 = (a4 / 2 + (a2 << 14)) / a4;
    }

    else
    {
      v14 = v10 + 1;
    }

    v15 = v13 == v10;
    v16 = (v13 - v14) / v10;
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    v18 = v17 & 0xFFFFFFFC;
    a7.i32[0] = v17;
    v19 = (v17 & 0xFFFFFFFC) + 4;
    v20 = 0uLL;
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    do
    {
      v22 = v20;
      v20 = vaddq_s32(v20, v21);
      v19 -= 4;
    }

    while (v19);
    v23 = vaddvq_s32(vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v18), xmmword_277BB7060), vdupq_lane_s32(a7, 0)), v22, v20));
  }

  v24 = v11 + 128;
  v25 = a4 - 1;
  for (i = v11 + v10 * (a4 - 1) + 128; (i >> 14) + 4 >= a2; i -= v10)
  {
    --v25;
  }

  if (v23 <= v25)
  {
    if (v23)
    {
      for (j = 0; j != v23; ++j)
      {
        v40 = 0;
        v41 = 0;
        v42 = (v24 >> 14) - 3;
        v43 = 8;
        do
        {
          v41 += *(result + 2 * (v42 & ~(v42 >> 31))) * v8[((v24 >> 5) & 0x1F8) + v40++];
          ++v42;
          --v43;
        }

        while (v43);
        v44 = (v41 + 64) >> 7;
        if (v44 >= 0x3FF)
        {
          v45 = 1023;
        }

        else
        {
          v45 = v44;
        }

        if (v44 >= 0xFFF)
        {
          v46 = 4095;
        }

        else
        {
          v46 = v44;
        }

        if (v44 >= 0xFF)
        {
          v47 = 255;
        }

        else
        {
          v47 = v44;
        }

        if (a5 != 12)
        {
          v46 = v47;
        }

        if (a5 != 10)
        {
          v45 = v46;
        }

        if ((v44 & 0x80000000) == 0)
        {
          v48 = v45;
        }

        else
        {
          v48 = 0;
        }

        *a3++ = v48;
        v24 += v10;
      }
    }

    v49 = v25 - v23 + 1;
    do
    {
      v50 = *(result - 6 + 2 * (v24 >> 14));
      v51 = *&v8[(v24 >> 5) & 0x1F8];
      v52 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_u16(v50), vmovl_high_s16(v51)), vmovl_u16(*v50.i8), vmovl_s16(*v51.i8))) + 64) >> 7;
      if (v52 >= 0x3FF)
      {
        v53 = 1023;
      }

      else
      {
        v53 = v52;
      }

      if (v52 >= 0xFFF)
      {
        v54 = 4095;
      }

      else
      {
        v54 = v52;
      }

      if (v52 >= 0xFF)
      {
        v55 = 255;
      }

      else
      {
        v55 = v52;
      }

      if (a5 != 12)
      {
        v54 = v55;
      }

      if (a5 != 10)
      {
        v53 = v54;
      }

      if ((v52 & 0x80000000) == 0)
      {
        v56 = v53;
      }

      else
      {
        v56 = 0;
      }

      *a3++ = v56;
      v24 += v10;
      --v49;
    }

    while (v49);
    v57 = v25 + 1;
    if (v57 < a4)
    {
      v58 = a2 - 1;
      do
      {
        v59 = 0;
        v60 = 0;
        v61 = (v24 >> 14) - 3;
        v62 = 8;
        do
        {
          if (v61 >= v58)
          {
            v63 = v58;
          }

          else
          {
            v63 = v61;
          }

          v60 += *(result + 2 * v63) * v8[((v24 >> 5) & 0x1F8) + v59++];
          ++v61;
          --v62;
        }

        while (v62);
        v64 = (v60 + 64) >> 7;
        if (v64 >= 0x3FF)
        {
          v65 = 1023;
        }

        else
        {
          v65 = v64;
        }

        if (v64 >= 0xFFF)
        {
          v66 = 4095;
        }

        else
        {
          v66 = v64;
        }

        if (v64 >= 0xFF)
        {
          v67 = 255;
        }

        else
        {
          v67 = v64;
        }

        if (a5 != 12)
        {
          v66 = v67;
        }

        if (a5 != 10)
        {
          v65 = v66;
        }

        if ((v64 & 0x80000000) == 0)
        {
          v68 = v65;
        }

        else
        {
          v68 = 0;
        }

        *a3++ = v68;
        ++v57;
        v24 += v10;
      }

      while (v57 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v27 = 0;
    v28 = a2 - 1;
    do
    {
      v29 = 0;
      v30 = 0;
      v31 = (v24 >> 14) - 3;
      v32 = 8;
      do
      {
        if (v31 >= v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = v31;
        }

        v30 += *(result + 2 * (v33 & ~(v33 >> 31))) * v8[((v24 >> 5) & 0x1F8) + v29++];
        ++v31;
        --v32;
      }

      while (v32);
      v34 = (v30 + 64) >> 7;
      if (v34 >= 0x3FF)
      {
        v35 = 1023;
      }

      else
      {
        v35 = v34;
      }

      if (v34 >= 0xFFF)
      {
        v36 = 4095;
      }

      else
      {
        v36 = v34;
      }

      if (v34 >= 0xFF)
      {
        v37 = 255;
      }

      else
      {
        v37 = v34;
      }

      if (a5 != 12)
      {
        v36 = v37;
      }

      if (a5 != 10)
      {
        v35 = v36;
      }

      if ((v34 & 0x80000000) == 0)
      {
        v38 = v35;
      }

      else
      {
        v38 = 0;
      }

      *a3++ = v38;
      ++v27;
      v24 += v10;
    }

    while (v27 != a4);
  }

  return result;
}

uint64_t sub_2779F3C40()
{
  v0 = MEMORY[0x28223BE20]();
  v60 = v3;
  v4 = 0;
  v65 = *MEMORY[0x277D85DE8];
  v6 = *(&off_27A71D9A0 + 2 * v5);
  v44 = v2;
  if (v2 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v2;
  }

  v53 = v7;
  v50 = v0 + 24;
  v51 = v0 + 16;
  v48 = v0 + 32;
  v49 = v0 + 40;
  v52 = v1 + 24;
  v46 = v1 + 40;
  v47 = v1 + 16;
  v43 = v1;
  v45 = v1 + 32;
  do
  {
    v54 = v4;
    v8 = *(v52 + 4 * (v4 != 0));
    if (v8 >= 1)
    {
      *&v57[8] = 0;
      v9 = *(v48 + 4 * (v4 != 0));
      v10 = *(v47 + 4 * (v4 != 0));
      v55 = *(v46 + 8 * v4);
      v56 = *(v49 + 8 * v4);
      v11 = *(v45 + 4 * (v4 != 0));
      v12 = *(v51 + 4 * (v4 != 0));
      *v57 = *(v50 + 4 * (v4 != 0));
      v61 = 16 * *v57;
      v13 = 16 * v12;
      v58 = -3 * v9;
      v59 = v9;
      do
      {
        if (*v57 == v8)
        {
          v14 = 0;
        }

        else
        {
          v14 = (v61 * *&v57[4] / v8 + v60) & 0xF;
        }

        if (v10 >= 1)
        {
          v15 = 0;
          v62 = v56 + *v57 * *&v57[4] / v8 * v9;
          v16 = v8 - *&v57[4];
          if (v8 - *&v57[4] >= 16)
          {
            v17 = 16;
          }

          else
          {
            v17 = v16;
          }

          v63 = v14;
          do
          {
            if (v12 == v10)
            {
              v18 = 0;
            }

            else
            {
              v18 = (v13 * v15 / v10 + v60) & 0xF;
            }

            v19 = v62 + v12 * v15 / v10;
            v20 = v55 + *&v57[4] * v11 + v15;
            v21 = v10 - v15;
            if (v10 - v15 < 16 || v16 <= 15)
            {
              if (v21 >= 16)
              {
                v22 = 16;
              }

              else
              {
                v22 = v21;
              }

              v23 = (v14 + (v17 - 1) * (v61 / v8)) >> 4;
              if (v23 >= -7)
              {
                v24 = 0;
                v25 = v19 + v58 - 3;
                v26 = v23 + 7;
                v27 = v64;
                do
                {
                  if (v21 >= 1)
                  {
                    v28 = 0;
                    v29 = v18;
                    do
                    {
                      v30 = 0;
                      v31 = 0;
                      do
                      {
                        v31 += *(v6 + 16 * (v29 & 0xF) + 2 * v30) * *(v25 + (v29 >> 4) + v30);
                        ++v30;
                      }

                      while (v30 != 8);
                      v32 = ((v31 + 64) >> 7) & ~((v31 + 64) >> 31);
                      if (v32 >= 255)
                      {
                        LOBYTE(v32) = -1;
                      }

                      v27[v28] = v32;
                      v29 += v13 / v10;
                      ++v28;
                    }

                    while (v28 != v22);
                  }

                  v25 += v9;
                  v27 += 64;
                }

                while (v24++ != v26);
              }

              v14 = v63;
              if (v21 >= 1)
              {
                v34 = 0;
                v35 = v64;
                do
                {
                  if (v16 >= 1)
                  {
                    v36 = 0;
                    v37 = v63;
                    do
                    {
                      v38 = 0;
                      v39 = 0;
                      v40 = (v37 >> 4) << 6;
                      do
                      {
                        v39 += *(v6 + 16 * (v37 & 0xF) + v38) * v35[v40];
                        v38 += 2;
                        v40 += 64;
                      }

                      while (v38 != 16);
                      v41 = ((v39 + 64) >> 7) & ~((v39 + 64) >> 31);
                      if (v41 >= 255)
                      {
                        LOBYTE(v41) = -1;
                      }

                      *(v20 + v36 * v11) = v41;
                      v37 += v61 / v8;
                      ++v36;
                    }

                    while (v36 != v17);
                  }

                  ++v35;
                  ++v20;
                  ++v34;
                }

                while (v34 != v22);
              }
            }

            else
            {
              off_280ABCBD8(v19);
              v14 = v63;
              v9 = v59;
            }

            v15 += 16;
          }

          while (v10 > v15);
        }

        *&v57[4] += 16;
      }

      while (*&v57[4] < v8);
    }

    v4 = v54 + 1;
  }

  while (v54 + 1 != v53);

  return sub_277A48A28(v43, v44);
}

BOOL sub_2779F4074(uint64_t a1, uint64_t a2, int a3, unsigned int a4, double a5, double a6, double a7, int32x4_t a8, int32x4_t a9)
{
  v9 = a1;
  v10 = 0;
  v11 = 0;
  if (a4 >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = a4;
  }

  v67 = a1 + 24;
  v68 = a1 + 40;
  v65 = a1 + 32;
  v66 = a1 + 16;
  v63 = a2 + 24;
  v64 = a2 + 40;
  v61 = a2 + 32;
  v62 = a2 + 16;
  v55 = v12;
  do
  {
    v13 = *(v68 + 8 * v10);
    v14 = *(v67 + 4 * (v10 != 0));
    v15 = *(v66 + 4 * (v10 != 0));
    v16 = *(v65 + 4 * (v10 != 0));
    v17 = *(v63 + 4 * (v10 != 0));
    v18 = *(v62 + 4 * (v10 != 0));
    v19 = *(v61 + 4 * (v10 != 0));
    if ((*(v9 + 192) & 8) != 0)
    {
      v59 = *(v64 + 8 * v10);
      v20 = 2 * v14;
      v72 = *(v63 + 4 * (v10 != 0));
      v73 = *(v67 + 4 * (v10 != 0));
      if (v20 * v18 <= 0x1FFFFFFE9)
      {
        v22 = malloc_type_malloc(v20 * v18 + 23, 0x5F484EBFuLL);
        if (v22)
        {
          v21 = (v22 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v21 - 8) = v22;
        }

        else
        {
          v21 = 0;
        }

        v17 = v72;
        v14 = v73;
      }

      else
      {
        v21 = 0;
      }

      if (v15 <= v14)
      {
        v23 = v14;
      }

      else
      {
        v23 = v15;
      }

      v24 = 2 * v23;
      v58 = v15;
      if (v24 <= 0x1FFFFFFE9)
      {
        v26 = malloc_type_malloc(v24 + 23, 0x5F484EBFuLL);
        if (v26)
        {
          v25 = (v26 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v25 - 8) = v26;
        }

        else
        {
          v25 = 0;
        }

        v17 = v72;
        v14 = v73;
      }

      else
      {
        v25 = 0;
      }

      v27 = v25;
      if (v20 <= 0x1FFFFFFE9)
      {
        v28 = malloc_type_malloc(v20 + 23, 0x5F484EBFuLL);
        if (v28)
        {
          __src = ((v28 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(__src - 1) = v28;
        }

        else
        {
          __src = 0;
        }

        v25 = v27;
        v17 = v72;
        v14 = v73;
      }

      else
      {
        __src = 0;
      }

      v29 = 2 * v17;
      v60 = v10;
      v57 = v19;
      if (v29 <= 0x1FFFFFFE9)
      {
        v31 = v18;
        v34 = malloc_type_malloc(v29 + 23, 0x5F484EBFuLL);
        v30 = v16;
        if (v34)
        {
          v32 = (v34 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v32 - 8) = v34;
        }

        else
        {
          v32 = 0;
        }

        v25 = v27;
        v33 = __src;
        v14 = v73;
      }

      else
      {
        v30 = v16;
        v31 = v18;
        v32 = 0;
        v33 = __src;
      }

      v70 = v21;
      v35 = v32;
      if (v21 && v25 && v33 && v32)
      {
        v36 = 2 * v31;
        if (v14 >= 1)
        {
          v37 = (2 * v13);
          v38 = 2 * v30;
          v39 = v70;
          v40 = v73;
          do
          {
            sub_2779F3224(v37, v58, v39, v31, v27, a3, a5, *&a6);
            v25 = v27;
            v39 += v36;
            v37 += v38;
            --v40;
          }

          while (v40);
        }

        v42 = v72;
        v41 = v73;
        v33 = __src;
        v32 = v35;
        if (v31 >= 1)
        {
          v43 = 0;
          v44 = v70;
          do
          {
            if (v41 >= 1)
            {
              v45 = v41;
              v46 = v44;
              v47 = __src;
              do
              {
                *v47 = *v46;
                v47 += 2;
                v46 = (v46 + v36);
                --v45;
              }

              while (v45);
            }

            sub_2779F3224(__src, v41, v35, v42, v25, a3, a5, *&a6);
            v32 = v35;
            v42 = v72;
            if (v72 >= 1)
            {
              v48 = (2 * (v59 + v43));
              v49 = v72;
              v50 = v35;
              do
              {
                v51 = *v50;
                v50 += 2;
                *v48 = v51;
                v48 += v57;
                --v49;
              }

              while (v49);
            }

            ++v43;
            v44 += 2;
            v25 = v27;
            v41 = v73;
          }

          while (v43 != v31);
        }
      }

      if (v70)
      {
        free(*(v70 - 1));
        v32 = v35;
        v25 = v27;
      }

      v9 = a1;
      v10 = v60;
      if (v25)
      {
        free(*(v25 - 8));
        v32 = v35;
      }

      if (v33)
      {
        free(*(v33 - 1));
        v32 = v35;
      }

      v12 = v55;
      if (v32)
      {
        free(*(v32 - 8));
      }
    }

    else if (!sub_2779F28D8(*(v68 + 8 * v10), v14, v15, v16, *(v64 + 8 * v10), v17, v18, v19, a5, a6, a7, a8, a9))
    {
      return v11;
    }

    v11 = ++v10 >= v12;
  }

  while (v10 != v12);
  sub_277A48A28(a2, a4);
  return 1;
}

void sub_2779F445C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = a1;
  v8 = a6 >= 1 && *(*(a1 + 24696) + 96) != 0;
  LODWORD(v9) = *(a1 + 24720);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = (*(a1 + 56) + ((1 << v8) >> 1)) >> v8;
    v12 = *(a1 + 72) + ((1 << v8) >> 1);
    v13 = v12 >> v8;
    v14 = ((v12 >> v8) + (v12 >> 31)) >> 1;
    v99 = (v14 + (v11 << 14)) / v13;
    v86 = 5 * a7;
    v89 = 10 * a7;
    v94 = *(a1 + 80);
    v95 = v13;
    v15 = (((v14 + ((v11 - v13) << 13)) / v13) - ((v99 * v13 - (v11 << 14)) / 2) + 128) & 0x3FFF;
    v93 = 2 - v8;
    v83 = a3;
    v92 = a1 + 24780;
    v81 = 5 * a7;
    v16 = 10 * a7;
    v17 = 2 * a3;
    do
    {
      v18 = *(v7 + 24696);
      v19 = *(v18 + 36);
      v20 = *(v92 + 4 * v10) << v19;
      v21 = v10 + 1;
      v22 = *(v92 + 4 * (v10 + 1)) << v19;
      if (v22 >= *(v7 + 536))
      {
        v22 = *(v7 + 536);
      }

      v23 = v20 << v93;
      v24 = v22 << v93;
      v25 = v24 - v23;
      v26 = v23 * v94 / 8;
      v27 = (v9 - 1);
      v28 = v24 * v94;
      v29 = v24 * v94 + 7;
      if (v28 < 0)
      {
        v28 = v29;
      }

      v30 = v28 >> 3;
      if (v10 == v27)
      {
        v30 = v95;
      }

      v31 = a2 + v23;
      v32 = (a4 + v26);
      v33 = v30 - v26;
      v100 = v25;
      v101 = v30 - v26;
      if (*(v18 + 76))
      {
        v34 = *(v18 + 72);
        v35 = 2 * v31;
        v36 = v35 - 10;
        v37 = v35 + 2 * v25;
        if (v10)
        {
          v38 = 0;
          goto LABEL_15;
        }

        if (v89 > 0x1FFFFFFE9)
        {
          goto LABEL_52;
        }

        v54 = (a4 + v26);
        v55 = *(v18 + 72);
        v56 = malloc_type_malloc(v89 + 23, 0x5F484EBFuLL);
        LOBYTE(v34) = v55;
        v21 = 1;
        if (!v56)
        {
          goto LABEL_52;
        }

        v32 = v54;
        v38 = (v56 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v38 - 8) = v56;
        if (!v38)
        {
          goto LABEL_52;
        }

        if (a7 < 1)
        {
          if (v27)
          {
            v91 = v27;
            sub_277988544((v35 - 2), a3, (2 * v32), a5, v101, a7, v15, v99, v34);
            v40 = 0;
LABEL_69:
            v7 = a1;
            goto LABEL_70;
          }

LABEL_17:
          v82 = v34;
          v84 = v32;
          v39 = malloc_type_malloc(v89 + 23, 0x5F484EBFuLL);
          if (!v39)
          {
            goto LABEL_33;
          }

          v91 = v27;
          v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v40 - 8) = v39;
          v41 = a7;
          if (!v40)
          {
            goto LABEL_33;
          }

          if (a7 < 1)
          {
            sub_277988544((v35 - 2), a3, (2 * v84), a5, v101, a7, v15, v99, v82);
            if (v10)
            {
              goto LABEL_95;
            }

            v7 = a1;
            if (!v38)
            {
              goto LABEL_89;
            }

LABEL_70:
            free(*(v38 - 8));
LABEL_71:
            if (v10 != v91)
            {
              goto LABEL_90;
            }

            if (a7 >= 1)
            {
              v77 = 0;
              do
              {
                v78 = *(v40 + v77);
                *(v37 + 8) = *(v40 + v77 + 8);
                *v37 = v78;
                v77 += 10;
                v37 += v17;
              }

              while (v16 != v77);
              goto LABEL_89;
            }

            goto LABEL_88;
          }

          v42 = 0;
          v43 = v37;
          v32 = v84;
          LOBYTE(v34) = v82;
          do
          {
            v44 = (v40 + v42);
            v45 = *v43;
            v44[1].i16[0] = v43[1].i16[0];
            *v44 = v45;
            LODWORD(v44) = v43[-1].u16[3];
            *v43 = vdup_n_s16(v44);
            v43[1].i16[0] = v44;
            v42 += 10;
            v43 = (v43 + v17);
          }

          while (v16 != v42);
          v33 = v101;
        }

        else
        {
          v57 = 0;
          v58 = (v35 - 10);
          do
          {
            v59 = (v38 + v57);
            v60 = *v58;
            v59[1].i16[0] = v58[1].i16[0];
            *v59 = v60;
            LODWORD(v59) = v58[1].u16[1];
            *v58 = vdup_n_s16(v59);
            v58[1].i16[0] = v59;
            v57 += 10;
            v58 = (v58 + v17);
          }

          while (v16 != v57);
          v33 = v101;
LABEL_15:
          if (v10 == v27)
          {
            if (v89 > 0x1FFFFFFE9)
            {
              goto LABEL_33;
            }

            goto LABEL_17;
          }

          v91 = v27;
          v40 = 0;
          v41 = a7;
        }

        v61 = (v35 - 2);
        v62 = v41;
        sub_277988544(v61, a3, (2 * v32), a5, v33, v41, v15, v99, v34);
        if (v10)
        {
          v7 = a1;
          goto LABEL_71;
        }

        v71 = v38;
        v72 = a7;
        if (v62 >= 1)
        {
          do
          {
            v73 = *v71;
            *(v36 + 8) = *(v71 + 8);
            *v36 = v73;
            v71 += 10;
            v36 += v17;
            --v72;
          }

          while (v72);
          goto LABEL_69;
        }

        if (v38)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }

      v46 = v31 - 5;
      v47 = (v31 + v25);
      if (v10)
      {
        v38 = 0;
      }

      else
      {
        if (v86 > 0x1FFFFFFE9)
        {
          goto LABEL_52;
        }

        v63 = (a4 + v26);
        v64 = malloc_type_malloc(v86 + 23, 0x5F484EBFuLL);
        if (!v64)
        {
          goto LABEL_52;
        }

        v32 = v63;
        v38 = (v64 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v38 - 8) = v64;
        if (!v38)
        {
          goto LABEL_52;
        }

        if (a7 < 1)
        {
          if (v27)
          {
            v91 = v27;
            sub_277AE4D80(v31 - 1, a3, v32, a5, v101, a7, v15, v99);
            v40 = 0;
LABEL_81:
            v7 = a1;
            goto LABEL_82;
          }

          goto LABEL_27;
        }

        v65 = 0;
        v66 = (v31 - 5);
        do
        {
          v67 = v38 + v65;
          v68 = *v66;
          *(v67 + 4) = *(v66 + 4);
          *v67 = v68;
          LODWORD(v67) = 16843009 * *(v66 + 5);
          *v66 = v67;
          *(v66 + 4) = v67;
          v65 += 5;
          v66 = (v66 + v83);
        }

        while (v81 != v65);
        v33 = v101;
      }

      if (v10 == v27)
      {
        if (v86 > 0x1FFFFFFE9)
        {
          goto LABEL_33;
        }

LABEL_27:
        v85 = v32;
        v48 = malloc_type_malloc(v86 + 23, 0x5F484EBFuLL);
        if (!v48 || (v91 = v27, v40 = (v48 + 23) & 0xFFFFFFFFFFFFFFF0, *(v40 - 8) = v48, v49 = a7, !v40))
        {
LABEL_33:
          if (v38)
          {
            free(*(v38 - 8));
          }

LABEL_52:
          v7 = a1;
          sub_2779F5C10(*(a1 + 48), 2, "Error upscaling frame");
          goto LABEL_90;
        }

        if (a7 < 1)
        {
          sub_277AE4D80(v31 - 1, a3, v85, a5, v101, a7, v15, v99);
          if (v10)
          {
LABEL_95:
            v7 = a1;
LABEL_89:
            free(*(v40 - 8));
            goto LABEL_90;
          }

          v7 = a1;
          if (!v38)
          {
            goto LABEL_89;
          }

LABEL_82:
          free(*(v38 - 8));
LABEL_83:
          if (v10 != v91)
          {
            goto LABEL_90;
          }

          if (a7 >= 1)
          {
            v79 = 0;
            do
            {
              v80 = *(v40 + v79);
              *(v47 + 4) = *(v40 + v79 + 4);
              *v47 = v80;
              v79 += 5;
              v47 = (v47 + v83);
            }

            while (v81 != v79);
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v50 = 0;
        v51 = v47;
        v32 = v85;
        do
        {
          v52 = v40 + v50;
          v53 = *v51;
          *(v52 + 4) = *(v51 + 4);
          *v52 = v53;
          LODWORD(v52) = 16843009 * *(v51 - 1);
          *v51 = v52;
          *(v51 + 4) = v52;
          v50 += 5;
          v51 = (v51 + v83);
        }

        while (v81 != v50);
        v33 = v101;
        goto LABEL_54;
      }

      v91 = v27;
      v40 = 0;
      v49 = a7;
LABEL_54:
      v69 = v31 - 1;
      v70 = v49;
      sub_277AE4D80(v69, a3, v32, a5, v33, v49, v15, v99);
      if (v10)
      {
        v7 = a1;
        goto LABEL_83;
      }

      v74 = v38;
      v75 = a7;
      if (v70 >= 1)
      {
        do
        {
          v76 = *v74;
          *(v46 + 4) = *(v74 + 4);
          *v46 = v76;
          v74 += 5;
          v46 += v83;
          --v75;
        }

        while (v75);
        goto LABEL_81;
      }

      if (v38)
      {
        goto LABEL_81;
      }

LABEL_65:
      v7 = a1;
      if (v91)
      {
        goto LABEL_90;
      }

LABEL_88:
      if (v40)
      {
        goto LABEL_89;
      }

LABEL_90:
      v15 = (v15 - (v100 << 14) + v101 * v99);
      v9 = *(v7 + 24720);
      v10 = v21;
    }

    while (v21 < v9);
  }
}

int *sub_2779F4BE8(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7, int a8, double a9, double a10, double a11, int32x2_t a12, unsigned __int8 a13)
{
  v16 = a3;
  v19 = 56;
  if (a7)
  {
    v19 = 72;
  }

  v20 = *(a1 + v19);
  v21 = 60;
  if (a7)
  {
    v21 = 76;
  }

  v22 = *(a1 + v21);
  if (v20 == a2[4] && v22 == a2[6])
  {
    return a2;
  }

  v23 = *(a1 + 24696);
  v24 = *(v23 + 77);
  if (*(v23 + 77))
  {
    v25 = 1;
  }

  else
  {
    v25 = 3;
  }

  if (sub_27797AC44(a3, v20, v22, *(v23 + 96), *(v23 + 100), *(v23 + 76), a8, *(a1 + 512), a9, a10, a11, a12, a13, 0))
  {
    sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate scaled buffer");
  }

  v31 = a2[4];
  v32 = a2[6];
  v33 = 4 * v22;
  v34 = 4 * v20 < v31 || v33 < v32;
  v35 = 16 * v31;
  v36 = v34 || v35 < v20;
  v37 = 16 * v32;
  v38 = v36 || v37 < v22;
  if (v38 || 16 * v20 % v31 || v35 % v20 || 16 * v22 % v32 || v37 % v22)
  {
    if (4 * v20 != 3 * v31)
    {
      goto LABEL_48;
    }

    v39 = v33 == 3 * v32;
  }

  else
  {
    v39 = 1;
  }

  v40 = v24 != 0 && v39;
  if (!v24 && v39)
  {
    v41 = a2[5];
    v42 = a2[7];
    v43 = v16[5];
    v44 = v16[7];
    v45 = 4 * v44;
    if (4 * v43 >= v41 && v45 >= v42 && 16 * v41 >= v43 && 16 * v42 >= v44 && !(16 * v43 % v41) && !(16 * v41 % v43) && !(16 * v44 % v42) && !(16 * v42 % v44))
    {
      v40 = 1;
      if (a6)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    if (4 * v43 != 3 * v41)
    {
      goto LABEL_48;
    }

    v40 = v45 == 3 * v42;
  }

  if (a6)
  {
LABEL_39:
    if (v40 && *(*(a1 + 24696) + 72) == 8)
    {
      sub_277988938(a2, v16, a4, a5, v25, v26, v27);
      return v16;
    }
  }

LABEL_48:
  if (!sub_2779F4074(a2, v16, *(*(a1 + 24696) + 72), v25, *v26.i64, *v27.i64, v28, v29, v30))
  {
    sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate buffers during resize");
  }

  return v16;
}

uint64_t sub_2779F4E7C(unsigned __int16 *a1, char *__filename)
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

int16x8_t *sub_2779F4F00(int16x8_t *result, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t *a6)
{
  if (a3 == 8)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    do
    {
      v7 = vpadalq_s16(v7, *result);
      v6 = vmlal_high_s16(vmlal_s16(v6, *result->i8, *result->i8), *result, *result);
      result = (result + 2 * a2);
      --a4;
    }

    while (a4);
    goto LABEL_8;
  }

  if (a3 == 4)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    do
    {
      v8.i64[0] = result->i64[0];
      v8.i64[1] = *(result->i64 + 2 * a2);
      v7 = vpadalq_s16(v7, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v8.i8, *v8.i8), v8.u64[1], v8.u64[1]);
      result = (result + 4 * a2);
      a4 -= 2;
    }

    while (a4);
LABEL_8:
    *a5 = vaddvq_s32(v7);
    v9 = vaddlvq_s32(v6);
    goto LABEL_20;
  }

  v10 = 0;
  if (508 / a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 508 / a3;
  }

  v12 = 0uLL;
  v13 = 0uLL;
  do
  {
    v14 = 0uLL;
    do
    {
      v15 = a3;
      v16 = result;
      do
      {
        v17 = *v16++;
        v12 = vpadalq_s16(v12, v17);
        v14 = vmlal_high_s16(vmlal_s16(v14, *v17.i8, *v17.i8), v17, v17);
        v15 -= 8;
      }

      while (v15);
      result = (result + 2 * a2);
      ++v10;
    }

    while (v10 < v11 && v10 < a4);
    v13 = vpadalq_s32(v13, v14);
    v11 += 508 / a3;
  }

  while (v10 < a4);
  *a5 = vaddvq_s32(v12);
  v9 = vaddvq_s64(v13);
LABEL_20:
  *a6 = v9;
  return result;
}

int *sub_2779F5008(uint64_t a1, double a2, double a3, double a4, int32x2_t a5)
{
  v5 = a1;
  v6 = a1 + 270312;
  v7 = a1 + 245616;
  LOBYTE(v8) = 8;
  *(a1 + 245696) = 8;
  v9 = *(a1 + 271128);
  v10 = *(a1 + 271132);
  v11 = v9 | (v10 << 32);
  v12 = *(a1 + 272180);
  if (v12 == 1)
  {
    goto LABEL_52;
  }

  if (!v12 && !*(*a1 + 23172))
  {
    if (*(*a1 + 51016))
    {
      v17 = *(a1 + 245672);
      v18 = *(a1 + 245676);
      if (__PAIR64__(v18, v17) != __PAIR64__(v10, v9))
      {
        v11 = v17 | (v18 << 32);
        goto LABEL_5;
      }
    }
  }

  if (*(a1 + 644192) == 1)
  {
LABEL_5:
    LOBYTE(v8) = 8;
    goto LABEL_52;
  }

  v13 = *(a1 + 463532);
  if (v13 && (v14 = *(a1 + 463536), v14))
  {
    v11 = v13 | (v14 << 32);
    *(a1 + 463532) = 0;
    *(a1 + 463536) = 0;
    if (!*(a1 + 271352))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(*v6 + 58))
    {
      goto LABEL_11;
    }

    v19 = *(a1 + 271336);
    if (v19 == 2)
    {
      dword_280A72370 = 1103515245 * dword_280A72370 + 12345;
      v20 = ((HIWORD(dword_280A72370) & 0x7FFF) - 9 * ((7282 * (HIWORD(dword_280A72370) & 0x7FFF)) >> 16)) + 8;
    }

    else
    {
      if (v19 != 1)
      {
        goto LABEL_11;
      }

      if (*v7)
      {
        v20 = *(a1 + 271337);
      }

      else
      {
        v20 = *(a1 + 271338);
      }
    }

    if (v20 != 8)
    {
      if (v9 >= 16)
      {
        LODWORD(v48) = 16;
      }

      else
      {
        LODWORD(v48) = v9;
      }

      v49 = (8 * v9 + (v20 >> 1)) / v20;
      if (v49 <= v48)
      {
        v48 = v48;
      }

      else
      {
        v48 = v49;
      }

      if (v10 >= 16)
      {
        v50 = 16;
      }

      else
      {
        v50 = v10;
      }

      LODWORD(v51) = (8 * v10 + (v20 >> 1)) / v20;
      if (v51 <= v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = v51;
      }

      v11 = v48 | (v51 << 32);
    }
  }

LABEL_11:
  v15 = *(a1 + 644200);
  LOBYTE(a1) = 8;
  if (v15 <= 2)
  {
    if (v15 != 1)
    {
      if (v15 == 2)
      {
        dword_280A72374 = 1103515245 * dword_280A72374 + 12345;
        LODWORD(a1) = HIWORD(dword_280A72374) - 9 * ((7282 * (HIWORD(dword_280A72374) & 0x7FFF)) >> 16) + 8;
      }

      goto LABEL_42;
    }

    goto LABEL_22;
  }

  if (v15 == 3)
  {
    if (*(v7 + 495))
    {
      goto LABEL_42;
    }

    if ((*(v6 + 980) | 2) == 2)
    {
      sub_277A5BDA4(v5, v9, v10, a2, a3);
    }

    v16 = sub_277A5A188();
    if ((*v7 & 0xFD) != 0)
    {
      v21 = 271340;
    }

    else
    {
      v21 = 271344;
    }

    if (v16 > *(v5 + v21))
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v15 == 4 && (*(v7 + 495) & 1) == 0)
  {
    if ((*(v6 + 980) | 2) == 2)
    {
      sub_277A5BDA4(v5, v9, v10, a2, a3);
    }

    v16 = sub_277A5A188();
    if (v16 > (*(v5 + 395412) == 2) << 7)
    {
      if (!*(v5 + 395412))
      {
LABEL_22:
        if (*v7)
        {
          LOBYTE(a1) = *(v6 + 1036);
        }

        else
        {
          LOBYTE(a1) = *(v6 + 1037);
        }

        goto LABEL_42;
      }

LABEL_38:
      LOBYTE(a1) = sub_2779F5578(v5, v16);
      goto LABEL_42;
    }

LABEL_39:
    LOBYTE(a1) = 8;
  }

LABEL_42:
  v8 = a1;
  v22 = *(v6 + 816);
  v23 = v22 * a1;
  v24 = v23 + (v23 >> 31);
  if (8 * v11 < v23 / 2)
  {
    v25 = *(v6 + 1024);
    v26 = *(v5 + 644200);
    v27 = *(v6 + 820);
    v28 = ((v11 >> 33) + 8 * v27) / SHIDWORD(v11);
    if (((v11 >> 1) + 8 * v22) / v11 > v28)
    {
      v28 = ((v11 >> 1) + 8 * v22) / v11;
    }

    if (v25 == 2 || v26 != 2)
    {
      v35 = 8 * v22;
      v36 = 8 * v27;
      if (v25 != 2 || v26 == 2)
      {
        if (v25 == 2 && v26 == 2)
        {
          v44 = v22 | (v27 << 32);
          if (v22 >= 16)
          {
            v45 = 16;
          }

          else
          {
            v45 = *(v6 + 816);
          }

          if (v27 >= 16)
          {
            LODWORD(v27) = 16;
          }

          while (1)
          {
            if (v28 > a1)
            {
              --v28;
            }

            else
            {
              v8 = (a1 - 1);
            }

            v11 = v44;
            if (v28 != 8)
            {
              LODWORD(v46) = (v35 + v28 / 2) / v28;
              if (v46 <= v45)
              {
                v46 = v45;
              }

              else
              {
                v46 = v46;
              }

              LODWORD(v47) = (v36 + v28 / 2) / v28;
              if (v47 <= v27)
              {
                v47 = v27;
              }

              else
              {
                v47 = v47;
              }

              v11 = v46 | (v47 << 32);
            }

            if (8 * v11 >= (v22 * v8) / 2)
            {
              break;
            }

            LOBYTE(a1) = v8;
            if (v28 <= 8)
            {
              LOBYTE(a1) = v8;
              if (v8 <= 8)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        v37 = a1;
        v38 = 0x80u / a1;
        v11 = v22 | (v27 << 32);
        if (v38 != 8)
        {
          if (v22 >= 16)
          {
            LODWORD(v39) = 16;
          }

          else
          {
            LODWORD(v39) = *(v6 + 816);
          }

          v40 = (v35 + (v38 >> 1)) / v38;
          if (v40 <= v39)
          {
            v39 = v39;
          }

          else
          {
            v39 = v40;
          }

          if (v27 >= 16)
          {
            LODWORD(v41) = 16;
          }

          else
          {
            LODWORD(v41) = *(v6 + 820);
          }

          v42 = (v36 + (v38 >> 1)) / v38;
          if (v42 <= v41)
          {
            v41 = v41;
          }

          else
          {
            v41 = v42;
          }

          v11 = v39 | (v41 << 32);
        }

        if (v37 <= 0xE && 8 * v11 < v24 >> 1)
        {
          v43 = v38 - 1;
          if (v38 == 9)
          {
            v11 = v22 | (v27 << 32);
          }

          else
          {
            if (v22 >= 16)
            {
              LODWORD(v22) = 16;
            }

            v52 = (v35 + v43 / 2) / v43;
            if (v52 <= v22)
            {
              v22 = v22;
            }

            else
            {
              v22 = v52;
            }

            if (v27 >= 16)
            {
              v53 = 16;
            }

            else
            {
              v53 = *(v6 + 820);
            }

            LODWORD(v54) = (v36 + v43 / 2) / v43;
            if (v54 <= v53)
            {
              v54 = v53;
            }

            else
            {
              v54 = v54;
            }

            v11 = v22 | (v54 << 32);
          }
        }
      }
    }

    else
    {
      v8 = 128 / v28;
      v29 = (128 / v28);
      if (8 * v11 < (v29 * v22) / 2 && v29 > 8)
      {
        LOBYTE(v8) = v8 - 1;
      }
    }
  }

LABEL_52:
  v31 = HIDWORD(v11);
  *(v7 + 72) = v11;
  *(v7 + 80) = v8;
  if (v8 != 8)
  {
    if (v11 >= 16)
    {
      v32 = 16;
    }

    else
    {
      v32 = v11;
    }

    v33 = (8 * v11 + (v8 >> 1)) / v8;
    if (v33 <= v32)
    {
      LODWORD(v11) = v32;
    }

    else
    {
      LODWORD(v11) = v33;
    }
  }

  return sub_277ACBCC0(v5, v11, v31, a2, a3, a4, a5);
}

uint64_t sub_2779F5578(uint64_t a1, int a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *a1 + 400;
  v3 = *(v2 + *(a1 + 463456));
  if (v3 != 3 && v3 != 0)
  {
    return 8;
  }

  v5 = a2;
  v6 = a1;
  v7 = (a1 + 271352);
  v8 = *(a1 + 272264);
  v9 = *(a1 + 97136);
  v10 = *(v8 + 16);
  v11 = a1 + 395108;
  v12 = *(v8 + 24);
  memset(v56, 0, sizeof(v56));
  if ((*(v8 + 192) & 8) != 0)
  {
    if (v12 < 5)
    {
      goto LABEL_37;
    }

    v45 = v2;
    v46 = a1;
    v47 = a2;
    v48 = a1 + 395108;
    v49 = (a1 + 271352);
    v14 = 0;
    v26 = 0;
    v27 = 2 * *(v8 + 40);
    v50 = v12 - 4;
    v28 = 2 * v9 - 14;
    do
    {
      if (v10 >= 17)
      {
        v29 = 0;
        do
        {
          sub_2779AD650(v27 + 2 * *(v8 + 32) * v26 + 2 * v29, v54, *(v8 + 32), 0xBu);
          v30 = v55;
          for (i = 8; i != 128; i += 8)
          {
            *(v56 + i) += (((1 << v28) >> 1) + *(v30 - 32) * *(v30 - 32) + *(v30 - 16) * *(v30 - 16) + *v30 * *v30 + v30[16] * v30[16]) >> v28;
            ++v30;
          }

          ++v14;
          v29 += 16;
        }

        while (v10 - 16 > v29);
      }

      v26 += 4;
    }

    while (v26 < v50);
  }

  else
  {
    v45 = v2;
    v46 = a1;
    v47 = a2;
    v49 = (a1 + 271352);
    if (v12 < 5)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = v12 - 4;
      do
      {
        if (v10 >= 17)
        {
          v16 = 0;
          do
          {
            v17 = 0;
            v18 = *(v8 + 40);
            v19 = *(v8 + 32);
            v20 = v16 + v13 * v19;
            v21 = v51;
            do
            {
              v22 = 0;
              v23 = v20;
              do
              {
                *&v21[v22] = *(v18 + v23);
                v22 += 2;
                ++v23;
              }

              while (v22 != 32);
              ++v17;
              v21 += 32;
              v20 += v19;
            }

            while (v17 != 4);
            sub_2779AD650(v51, v54, 16, 0xBu);
            v24 = v55;
            for (j = 8; j != 128; j += 8)
            {
              *(v56 + j) += (*(v24 - 16) * *(v24 - 16) + *(v24 - 32) * *(v24 - 32) + *v24 * *v24 + v24[16] * v24[16] + 2) >> 2;
              ++v24;
            }

            ++v14;
            v16 += 16;
          }

          while (v10 - 16 > v16);
        }

        v13 += 4;
      }

      while (v15 > v13);
    }

    v48 = v11;
  }

  v11 = v48;
  v7 = v49;
  v5 = v47;
  v2 = v45;
  v6 = v46;
  if (v14)
  {
    for (k = 8; k != 128; k += 8)
    {
      *&v51[k] = *(v56 + k) / v14;
    }

    v34 = *&v53[1];
    v35 = v53;
    for (m = 15; m > 1; --m)
    {
      v34 = v34 + *v35;
      *v35-- = v34;
    }

    goto LABEL_38;
  }

LABEL_37:
  memset_pattern16(v52, &unk_277BB7C30, 0x78uLL);
LABEL_38:
  if (*(v2 + *(v6 + 463456)) == 3)
  {
    v37 = 0.008;
  }

  else if (*(v2 + *(v6 + 463456)))
  {
    v37 = 0.0;
  }

  else
  {
    v37 = dbl_277BB73F0[*v11 < 2];
  }

  if (v5 >= 0xFF)
  {
    v38 = 255;
  }

  else
  {
    v38 = v5;
  }

  if (v5 < 0)
  {
    v38 = 0;
  }

  v39 = vcvtd_n_f64_s32(word_277BFE1FA[v38], 2uLL);
  v40 = v39 * (v37 * v39);
  if (v40 >= v52[0] * 0.2)
  {
    v40 = v52[0] * 0.2;
  }

  v41 = 15;
  while (1)
  {
    v42 = v41 + 1;
    if (*&v51[8 * v41] > v40)
    {
      break;
    }

    --v41;
    if (v42 <= 9)
    {
      v32 = 16;
      goto LABEL_55;
    }
  }

  v32 = 23 - v41;
LABEL_55:
  if (*v7 == 4 && *(v11 + 304) != 2)
  {
    v43 = v32;
    if (v32 <= 9u)
    {
      v43 = 9;
    }

    if (*v11 > 1)
    {
      return v43;
    }
  }

  return v32;
}

uint64_t sub_2779F59CC(uint64_t a1)
{
  if (*(a1 + 44))
  {
    goto LABEL_2;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 42);
  v5 = *(a1 + 16);
  v6 = *(a1 + 28);
  v7 = (((v4 + 17) >> 3) & ~((v4 + 17) >> 31)) + v6;
  if (v7 > *(a1 + 24))
  {
    v8 = malloc_type_realloc(*(a1 + 16), (((v4 + 17) >> 3) & ~((v4 + 17) >> 31)) + v6, 0x100004077774924uLL);
    if (!v8)
    {
      v2 = 0xFFFFFFFFLL;
      *(a1 + 44) = -1;
      goto LABEL_17;
    }

    v5 = v8;
    *(a1 + 16) = v8;
    *(a1 + 24) = v7;
  }

  if (v4 >= -9)
  {
    v9 = (v3 + 0x3FFF) & 0xFFFFFFFFFFFF8000 | 0x4000;
    v10 = v4 + 10;
    v11 = ~(-1 << (v4 + 16));
    v12 = v6 - 1;
    do
    {
      v13 = v9 >> (v4 + 16);
      v5[v6] = v13;
      if ((v13 & 0x100) != 0)
      {
        v14 = v12;
        do
        {
          v15 = v5[v14--]++ + 1;
        }

        while ((v15 & 0x100) != 0);
      }

      ++v6;
      v9 &= v11;
      LOBYTE(v4) = v4 - 8;
      v11 >>= 8;
      ++v12;
      v16 = __OFSUB__(v10, 8);
      v10 -= 8;
    }

    while (!((v10 < 0) ^ v16 | (v10 == 0)));
    goto LABEL_15;
  }

  if (v5)
  {
LABEL_15:
    v2 = (*(a1 + 42) + 8 * *(a1 + 28) + 10);
    memcpy(*(a1 + 8), v5, v6);
    *a1 = v6;
    goto LABEL_17;
  }

LABEL_2:
  v2 = 0xFFFFFFFFLL;
LABEL_17:
  free(*(a1 + 16));
  return v2;
}

uint64_t sub_2779F5B14(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {
    v9 = result;
    v10 = *(result + 8);
    if (v10 && (v11 = *(result + 48)) != 0 && (v12 = *(v10 + 40)) != 0)
    {
      while (*v12 || *(v12 + 8))
      {
        if (*v12 == a2)
        {
          result = (*(v12 + 8))(*(result + 48), &a9);
          *(v9 + 16) = result;
          return result;
        }

        v12 += 16;
      }

      *(result + 16) = 1;
      *v11 = "Invalid control ID";
    }

    else
    {
      *(result + 16) = 1;
    }
  }

  return result;
}

uint64_t sub_2779F5BBC(uint64_t result, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *result = a2;
  *(result + 4) = 0;
  if (a3)
  {
    v9 = result;
    *(result + 4) = 1;
    result = vsnprintf((result + 8), 0xC7uLL, a3, &a9);
    *(v9 + 207) = 0;
  }

  return result;
}

uint64_t sub_2779F5C10(uint64_t result, int a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = result;
  *result = a2;
  *(result + 4) = 0;
  if (a3)
  {
    *(result + 4) = 1;
    result = vsnprintf((result + 8), 0xC7uLL, a3, va);
    *(v3 + 207) = 0;
  }

  if (*(v3 + 208))
  {
    longjmp((v3 + 212), *v3);
  }

  return result;
}

uint64_t sub_2779F5C78(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*(a2 + 4))
  {
    return sub_2779F5C10(a1, v4, "%s", (a2 + 8));
  }

  return sub_2779F5C10(a1, v4, 0);
}

uint64_t sub_2779F5CC8(__int32 *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + a2);
    v7 = vmovl_u8(v6);
    v8 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4), vmull_s16(*v7.i8, *v8.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(v7, v8)), 0xCuLL);
    a1 = (a1 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 64);
  return vaddvq_s32(v5);
}

uint64_t sub_2779F5D30(__int32 *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + a2);
    v7 = vmovl_u8(v6);
    v8 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4), vmull_s16(*v7.i8, *v8.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(v7, v8)), 0xCuLL);
    a1 = (a1 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 128);
  return vaddvq_s32(v5);
}

uint64_t sub_2779F5D98(__int32 *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + a2);
    v7 = vmovl_u8(v6);
    v8 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4), vmull_s16(*v7.i8, *v8.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(v7, v8)), 0xCuLL);
    a1 = (a1 + 2 * a2);
    v4 += 32;
  }

  while (v4 != 256);
  return vaddvq_s32(v5);
}

uint64_t sub_2779F5E00(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = vmovl_u8(*a1);
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4), vmull_s16(*v6.i8, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(v6, v7)), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 32;
  }

  while (v4 != 128);
  return vaddvq_s32(v5);
}

uint64_t sub_2779F5E5C(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = vmovl_u8(*a1);
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4), vmull_s16(*v6.i8, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(v6, v7)), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 32;
  }

  while (v4 != 256);
  return vaddvq_s32(v5);
}

uint64_t sub_2779F5EB8(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = vmovl_u8(*a1);
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4), vmull_s16(*v6.i8, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(v6, v7)), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 32;
  }

  while (v4 != 512);
  return vaddvq_s32(v5);
}

uint64_t sub_2779F5F14(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = vmovl_u8(*a1);
    v7 = vuzp1q_s16(*(a4 + v4), *(a4 + v4 + 16));
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4), vmull_s16(*v6.i8, *v7.i8)), 0xCuLL), vabdq_s32(*(a3 + v4 + 16), vmull_high_s16(v6, v7)), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 32;
  }

  while (v4 != 1024);
  return vaddvq_s32(v5);
}

uint64_t sub_2779F5F70(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmulq_s32(*(a4 + v4), vqtbl1q_s8(*a1, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v4 + 32), vmulq_s32(*(a4 + v4 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420))), 0xCuLL);
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4 + 16), vmulq_s32(*(a4 + v4 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v4 + 48), vmulq_s32(*(a4 + v4 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430))), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 64;
  }

  while (v4 != 256);
  return vaddvq_s32(vaddq_s32(v5, v6));
}

uint64_t sub_2779F601C(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmulq_s32(*(a4 + v4), vqtbl1q_s8(*a1, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v4 + 32), vmulq_s32(*(a4 + v4 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420))), 0xCuLL);
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4 + 16), vmulq_s32(*(a4 + v4 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v4 + 48), vmulq_s32(*(a4 + v4 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430))), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 64;
  }

  while (v4 != 512);
  return vaddvq_s32(vaddq_s32(v5, v6));
}

uint64_t sub_2779F60C8(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmulq_s32(*(a4 + v4), vqtbl1q_s8(*a1, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v4 + 32), vmulq_s32(*(a4 + v4 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420))), 0xCuLL);
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4 + 16), vmulq_s32(*(a4 + v4 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v4 + 48), vmulq_s32(*(a4 + v4 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430))), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 64;
  }

  while (v4 != 1024);
  return vaddvq_s32(vaddq_s32(v5, v6));
}

uint64_t sub_2779F6174(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmulq_s32(*(a4 + v4), vqtbl1q_s8(*a1, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v4 + 32), vmulq_s32(*(a4 + v4 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420))), 0xCuLL);
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4 + 16), vmulq_s32(*(a4 + v4 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v4 + 48), vmulq_s32(*(a4 + v4 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430))), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 64;
  }

  while (v4 != 2048);
  return vaddvq_s32(vaddq_s32(v5, v6));
}

uint64_t sub_2779F6220(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = 0uLL;
  do
  {
    v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v4), vmulq_s32(*(a4 + v4), vqtbl1q_s8(*a1, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v4 + 32), vmulq_s32(*(a4 + v4 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420))), 0xCuLL);
    v5 = vrsraq_n_u32(vrsraq_n_u32(v5, vabdq_s32(*(a3 + v4 + 16), vmulq_s32(*(a4 + v4 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v4 + 48), vmulq_s32(*(a4 + v4 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430))), 0xCuLL);
    a1 = (a1 + a2);
    v4 += 64;
  }

  while (v4 != 4096);
  return vaddvq_s32(vaddq_s32(v5, v6));
}

uint64_t sub_2779F62CC(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 8;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 128);
    a3 += 128;
    a4 += 128;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F6390(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 16;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 128);
    a3 += 128;
    a4 += 128;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F6454(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 32;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 128);
    a3 += 128;
    a4 += 128;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F6518(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 64;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 128);
    a3 += 128;
    a4 += 128;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F65DC(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 16;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 256);
    a3 += 256;
    a4 += 256;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F66A0(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 32;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 256);
    a3 += 256;
    a4 += 256;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F6764(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 64;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 256);
    a3 += 256;
    a4 += 256;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F6828(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 128;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 256);
    a3 += 256;
    a4 += 256;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F68EC(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 64;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 512);
    a3 += 512;
    a4 += 512;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

uint64_t sub_2779F69B0(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0uLL;
  v5 = 128;
  v6 = 0uLL;
  do
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v6 = vrsraq_n_u32(vrsraq_n_u32(v6, vabdq_s32(*(a3 + v7), vmulq_s32(*(a4 + v7), vqtbl1q_s8(v9, xmmword_277BB7400))), 0xCuLL), vabdq_s32(*(a3 + v7 + 32), vmulq_s32(*(a4 + v7 + 32), vqtbl1q_s8(v9, xmmword_277BB7420))), 0xCuLL);
      v4 = vrsraq_n_u32(vrsraq_n_u32(v4, vabdq_s32(*(a3 + v7 + 16), vmulq_s32(*(a4 + v7 + 16), vqtbl1q_s8(v9, xmmword_277BB7410))), 0xCuLL), vabdq_s32(*(a3 + v7 + 48), vmulq_s32(*(a4 + v7 + 48), vqtbl1q_s8(v9, xmmword_277BB7430))), 0xCuLL);
      v7 += 64;
    }

    while (v7 != 512);
    a3 += 512;
    a4 += 512;
    a1 = (a1 + a2);
    --v5;
  }

  while (v5);
  return vaddvq_s32(vaddq_s32(v4, v6));
}

void *sub_2779F6A74(unsigned __int8 *a1, int a2, int a3, int a4, int a5)
{
  if (a5)
  {
    v7 = 2 * a1;
    v9 = 2 * a4;
    v10 = a3 - 1;
    if (a3 >= 1)
    {
      v11 = 0;
      v12 = a2 + 3;
      if (a2 + 1 > v12)
      {
        v12 = a2 + 1;
      }

      v13 = v12 - a2;
      v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      v15 = vdupq_n_s64(v13 - 1);
      v16 = v7 + 2 * a2 + 8;
      do
      {
        v17 = 0;
        v18 = (v7 + 2 * v11 * a4);
        v19 = *v18;
        *(v18 - 1) = *v18;
        *(--v18 - 2) = v19;
        *(v18 - 1) = v19;
        v20 = v18[a2];
        v21 = v16;
        do
        {
          v22 = vdupq_n_s64(v17);
          v23 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v22, xmmword_277BB70A0)));
          if (vuzp1_s8(vuzp1_s16(v23, *v15.i8), *v15.i8).u8[0])
          {
            *(v21 - 4) = v20;
          }

          if (vuzp1_s8(vuzp1_s16(v23, *&v15), *&v15).i8[1])
          {
            *(v21 - 3) = v20;
          }

          if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v22, xmmword_277BB7090)))), *&v15).i8[2])
          {
            *(v21 - 2) = v20;
            *(v21 - 1) = v20;
          }

          v24 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v22, xmmword_277BB7080)));
          if (vuzp1_s8(*&v15, vuzp1_s16(v24, *&v15)).i32[1])
          {
            *v21 = v20;
          }

          if (vuzp1_s8(*&v15, vuzp1_s16(v24, *&v15)).i8[5])
          {
            v21[1] = v20;
          }

          if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v22, xmmword_277BB7070))))).i8[6])
          {
            v21[2] = v20;
            v21[3] = v20;
          }

          v17 += 8;
          v21 += 8;
        }

        while (v14 != v17);
        ++v11;
        v16 += v9;
      }

      while (v11 != a3);
    }

    v25 = 2 * a2;
    v26 = (v7 - 6 * a4 - 6);
    v27 = 3;
    do
    {
      memcpy(v26, (v7 - 6), v25 + 12);
      v26 += v9;
      --v27;
    }

    while (v27);
    v28 = (v7 - 6 + 2 * a4 * v10);
    v29 = a3;
    v30 = a3 + 3;
    v31 = (v7 + 2 * a4 * a3 - 6);
    do
    {
      result = memcpy(v31, v28, v25 + 12);
      ++v29;
      v31 += v9;
    }

    while (v29 < v30);
  }

  else
  {
    v33 = a4;
    v34 = a3 - 1;
    if (a3 >= 1)
    {
      v35 = a3;
      v36 = a1;
      do
      {
        v37 = *v36;
        *(v36 - 1) = v37;
        *(v36 - 3) = v37 | (v37 << 8);
        v38 = &v36[a2];
        v39 = *(v38 - 1);
        v38[2] = v39;
        *v38 = v39 | (v39 << 8);
        v36 += a4;
        --v35;
      }

      while (v35);
    }

    v40 = a1 - 3;
    v41 = a2 + 6;
    v42 = &a1[-3 * a4 - 3];
    v43 = 3;
    do
    {
      memcpy(v42, a1 - 3, v41);
      v42 += v33;
      --v43;
    }

    while (v43);
    v44 = &v40[v33 * v34];
    v45 = a3;
    v46 = a3 + 3;
    v47 = &a1[v33 * a3 - 3];
    do
    {
      result = memcpy(v47, v44, v41);
      ++v45;
      v47 += v33;
    }

    while (v45 < v46);
  }

  return result;
}