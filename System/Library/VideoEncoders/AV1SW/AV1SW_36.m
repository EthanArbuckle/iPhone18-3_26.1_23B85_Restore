int8x16_t *sub_277B2474C(_OWORD *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, uint16x8_t a9, uint64_t a10, int a11)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_277B22AA0(16, v14, 64, a3, a11, a4, a5, a6, a7, a8, a9);
  return sub_277B23388(v14, 64, a1, a2, 0x10u, 0x40u);
}

_OWORD *sub_277B247DC(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  v178 = *MEMORY[0x277D85DE8];
  v6 = v145;
  v7 = (a3 + 47);
  v8 = vld1q_dup_s8(v7);
  v9 = 16;
  v10.i64[0] = 0x2020202020202020;
  v10.i64[1] = 0x2020202020202020;
  v11 = a5;
  do
  {
    v12 = v11 >> 6;
    if (v11 >> 6 < 47)
    {
      v15 = 0;
      v16 = 0;
      LODWORD(v17) = 47 - (v11 >> 6);
      v18 = vdupq_n_s16((v11 >> 1) & 0x1F);
      do
      {
        v19 = v8;
        if (v16 < v17)
        {
          v20 = a3 + v12 + v16;
          v19 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*(v20 + 1), *v20), v18), *v20, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(*(v20 + 1), *v20), v18), *v20, v10), 5uLL);
        }

        *(&v146 + v15) = v19;
        v15 += 16;
        v16 = 16;
      }

      while (v15 != 32);
      if (v17 >= 0x20)
      {
        v17 = 32;
      }

      else
      {
        v17 = v17;
      }

      v21 = &qword_277C3A240[4 * v17];
      v22 = *v21[2].i8;
      v23 = vbslq_s8(*v21->i8, v146, v8);
      v24 = &v144[2 * v5 + 32];
      v25 = vbslq_s8(v22, v147, v8);
      *v24 = v23;
      v24[1] = v25;
      v11 += a5;
    }

    else
    {
      v13 = v6;
      v14 = v9;
      do
      {
        v13[-1] = v8;
        *v13 = v8;
        v13 += 2;
        --v14;
      }

      while (v14);
    }

    if (v12 > 46)
    {
      break;
    }

    ++v5;
    --v9;
    v6 += 2;
  }

  while (v5 != 16);
  v26 = 0;
  v27 = v145;
  do
  {
    v28 = &v146.i8[v26];
    v29 = *v27;
    *v28 = *(v27 - 1);
    *(v28 + 16) = v29;
    v26 += 16;
    v27 += 2;
  }

  while (v26 != 256);
  v30 = 0;
  v31 = vzip1q_s8(v146, v147);
  v32 = vzip2q_s8(v146, v147);
  v33 = vzip1q_s8(v148, v149);
  v34 = vzip2q_s8(v148, v149);
  v35 = vzip1q_s8(v150, v151);
  v36 = vzip2q_s8(v150, v151);
  v37 = vzip1q_s8(v152, v153);
  v38 = vzip2q_s8(v152, v153);
  v39 = vzip1q_s8(v154, v155);
  v40 = vzip2q_s8(v154, v155);
  v41 = vzip1q_s8(v156, v157);
  v42 = vzip2q_s8(v156, v157);
  v43 = vzip1q_s8(v158, v159);
  v44 = vzip2q_s8(v158, v159);
  v45 = vzip1q_s8(v160, v161);
  v46 = vzip2q_s8(v160, v161);
  v47 = vzip1q_s16(v31, v33);
  v48 = vzip2q_s16(v31, v33);
  v49 = vzip1q_s16(v35, v37);
  v50 = vzip2q_s16(v35, v37);
  v51 = vzip1q_s16(v39, v41);
  v52 = vzip2q_s16(v39, v41);
  v53 = vzip1q_s16(v43, v45);
  v54 = vzip2q_s16(v43, v45);
  v55 = vzip1q_s32(v47, v49);
  v56 = vzip2q_s32(v47, v49);
  v57 = vzip1q_s32(v51, v53);
  v58 = vzip2q_s32(v51, v53);
  v59 = vzip1q_s32(v48, v50);
  v60 = vzip2q_s32(v48, v50);
  v61 = vzip1q_s32(v52, v54);
  v62 = vzip2q_s64(v55, v57);
  v55.i64[1] = v57.i64[0];
  v63 = vzip2q_s32(v52, v54);
  v144[0] = v55;
  v144[1] = v62;
  v64 = vzip2q_s64(v56, v58);
  v56.i64[1] = v58.i64[0];
  v144[2] = v56;
  v144[3] = v64;
  v65 = vzip2q_s64(v59, v61);
  v59.i64[1] = v61.i64[0];
  v144[4] = v59;
  v144[5] = v65;
  v66 = vzip2q_s64(v60, v63);
  v60.i64[1] = v63.i64[0];
  v67 = vzip1q_s16(v32, v34);
  v68 = vzip2q_s16(v32, v34);
  v144[6] = v60;
  v144[7] = v66;
  v69 = vzip1q_s16(v36, v38);
  v70 = vzip2q_s16(v36, v38);
  v71 = vzip1q_s16(v40, v42);
  v72 = vzip2q_s16(v40, v42);
  v73 = vzip1q_s16(v44, v46);
  v74 = vzip1q_s32(v67, v69);
  v75 = vzip1q_s32(v71, v73);
  v76 = vzip2q_s64(v74, v75);
  v74.i64[1] = v75.i64[0];
  v77 = vzip2q_s32(v67, v69);
  v78 = vzip2q_s32(v71, v73);
  v144[8] = v74;
  v144[9] = v76;
  v79 = vzip2q_s64(v77, v78);
  v77.i64[1] = v78.i64[0];
  v80 = vzip2q_s16(v44, v46);
  v81 = vzip1q_s32(v68, v70);
  v82 = vzip1q_s32(v72, v80);
  v144[10] = v77;
  v144[11] = v79;
  v83 = vzip2q_s64(v81, v82);
  v75.i64[0] = v81.i64[0];
  v75.i64[1] = v82.i64[0];
  v84 = vzip2q_s32(v68, v70);
  v85 = vzip2q_s32(v72, v80);
  v86 = vzip2q_s64(v84, v85);
  v76.i64[0] = v84.i64[0];
  v76.i64[1] = v85.i64[0];
  v87 = vzip1q_s8(v162, v163);
  v88 = vzip2q_s8(v162, v163);
  v89 = vzip1q_s8(v164, v165);
  v90 = vzip2q_s8(v164, v165);
  v91 = vzip1q_s8(v166, v167);
  v92 = vzip2q_s8(v166, v167);
  v93 = vzip1q_s8(v168, v169);
  v94 = vzip2q_s8(v168, v169);
  v95 = vzip1q_s8(v170, v171);
  v96 = vzip2q_s8(v170, v171);
  v97 = vzip1q_s8(v172, v173);
  v98 = vzip2q_s8(v172, v173);
  v99 = vzip1q_s8(v174, v175);
  v100 = vzip2q_s8(v174, v175);
  v101 = vzip1q_s8(v176, v177);
  v102 = vzip2q_s8(v176, v177);
  v144[12] = v75;
  v144[13] = v83;
  v103 = vzip1q_s16(v87, v89);
  v104 = vzip2q_s16(v87, v89);
  v105 = vzip1q_s16(v91, v93);
  v106 = vzip2q_s16(v91, v93);
  v144[14] = v76;
  v144[15] = v86;
  v107 = vzip1q_s16(v95, v97);
  v108 = vzip2q_s16(v95, v97);
  v109 = vzip1q_s16(v99, v101);
  v110 = vzip2q_s16(v99, v101);
  v111 = vzip1q_s32(v103, v105);
  v112 = vzip2q_s32(v103, v105);
  v113 = vzip1q_s32(v107, v109);
  v114 = vzip2q_s32(v107, v109);
  v115 = vzip2q_s64(v111, v113);
  v111.i64[1] = v113.i64[0];
  v116 = vzip1q_s32(v104, v106);
  v144[16] = v111;
  v144[17] = v115;
  v117 = vzip2q_s64(v112, v114);
  v118 = vzip2q_s32(v104, v106);
  v119 = vzip1q_s32(v108, v110);
  v112.i64[1] = v114.i64[0];
  v144[18] = v112;
  v144[19] = v117;
  v120 = vzip2q_s64(v116, v119);
  v121 = vzip2q_s32(v108, v110);
  v116.i64[1] = v119.i64[0];
  v144[20] = v116;
  v144[21] = v120;
  v122 = vzip2q_s64(v118, v121);
  v118.i64[1] = v121.i64[0];
  v144[22] = v118;
  v144[23] = v122;
  v123 = vzip1q_s16(v88, v90);
  v124 = vzip1q_s16(v92, v94);
  v125 = vzip1q_s16(v96, v98);
  v126 = vzip1q_s16(v100, v102);
  v127 = vzip1q_s32(v123, v124);
  v128 = vzip1q_s32(v125, v126);
  v129 = vzip2q_s64(v127, v128);
  v130 = vzip2q_s32(v123, v124);
  v131 = vzip2q_s32(v125, v126);
  v127.i64[1] = v128.i64[0];
  v144[24] = v127;
  v144[25] = v129;
  v132 = vzip2q_s64(v130, v131);
  v133 = vzip2q_s16(v88, v90);
  v134 = vzip2q_s16(v92, v94);
  v130.i64[1] = v131.i64[0];
  v144[26] = v130;
  v144[27] = v132;
  v135 = vzip2q_s16(v96, v98);
  v136 = vzip2q_s16(v100, v102);
  v137 = vzip1q_s32(v133, v134);
  v138 = vzip1q_s32(v135, v136);
  v139 = vzip2q_s64(v137, v138);
  v137.i64[1] = v138.i64[0];
  v144[28] = v137;
  v144[29] = v139;
  v140 = vzip2q_s32(v133, v134);
  v141 = vzip2q_s32(v135, v136);
  v142 = vzip2q_s64(v140, v141);
  v140.i64[1] = v141.i64[0];
  v144[30] = v140;
  v144[31] = v142;
  do
  {
    v143 = v144[v30 + 1];
    *result = v144[v30];
    *(result + a2) = v143;
    v30 += 2;
    result = (result + 2 * a2);
  }

  while (v30 != 32);
  return result;
}

_OWORD *sub_277B24C68(_OWORD *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v93 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (31 << a4));
  v9 = vld1q_dup_s8(v8);
  v10.i64[0] = 0x2020202020202020;
  v10.i64[1] = 0x2020202020202020;
  v11 = a5;
  while (1)
  {
    v12 = ((31 << a4) - (v11 >> v7)) >> a4;
    if (v12 <= 0)
    {
      break;
    }

    if (v12 >= 0x10)
    {
      v12 = 16;
    }

    v13 = a3 + (v11 >> v7);
    if (a4)
    {
      v15 = vld2_s8(v13);
      v15.i64[1] = v14;
      v16 = vextq_s8(v15, 0, 8uLL);
      LOBYTE(v13) = v11;
    }

    else
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      LOWORD(v13) = v11 >> 1;
    }

    v17 = vdupq_n_s16(v13 & 0x1F);
    *(&v77 + v6) = vbslq_s8(*qword_277C3A240[4 * v12].i8, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v16.i8, *v15.i8), v17), *v15.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v16, v15), v17), v15, v10), 5uLL), v9);
    v11 += a5;
    ++v6;
    v5 -= 16;
    if (v6 == 16)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 0xF)
  {
    v18 = -v5;
    do
    {
      *(&v77 + v18) = v9;
      v18 += 16;
    }

    while (v18 != 256);
  }

LABEL_13:
  v19 = 0;
  v20 = vzip1q_s8(v77, v78);
  v21 = vzip2q_s8(v77, v78);
  v22 = vzip1q_s8(v79, v80);
  v23 = vzip2q_s8(v79, v80);
  v24 = vzip1q_s8(v81, v82);
  v25 = vzip2q_s8(v81, v82);
  v26 = vzip1q_s8(v83, v84);
  v27 = vzip2q_s8(v83, v84);
  v28 = vzip1q_s8(v85, v86);
  v29 = vzip2q_s8(v85, v86);
  v30 = vzip1q_s8(v87, v88);
  v31 = vzip2q_s8(v87, v88);
  v32 = vzip1q_s8(v89, v90);
  v33 = vzip2q_s8(v89, v90);
  v34 = vzip1q_s8(v91, v92);
  v35 = vzip2q_s8(v91, v92);
  v36 = vzip1q_s16(v20, v22);
  v37 = vzip2q_s16(v20, v22);
  v38 = vzip1q_s16(v24, v26);
  v39 = vzip2q_s16(v24, v26);
  v40 = vzip1q_s16(v28, v30);
  v41 = vzip2q_s16(v28, v30);
  v42 = vzip1q_s16(v32, v34);
  v43 = vzip2q_s16(v32, v34);
  v44 = vzip1q_s32(v36, v38);
  v45 = vzip2q_s32(v36, v38);
  v46 = vzip1q_s32(v40, v42);
  v47 = vzip2q_s32(v40, v42);
  v48 = vzip1q_s32(v37, v39);
  v49 = vzip2q_s32(v37, v39);
  v50 = vzip1q_s32(v41, v43);
  v51 = vzip2q_s32(v41, v43);
  v52 = vzip2q_s64(v44, v46);
  v44.i64[1] = v46.i64[0];
  v76[0] = v44;
  v76[1] = v52;
  v53 = vzip2q_s64(v45, v47);
  v45.i64[1] = v47.i64[0];
  v76[2] = v45;
  v76[3] = v53;
  v54 = vzip2q_s64(v48, v50);
  v48.i64[1] = v50.i64[0];
  v76[4] = v48;
  v76[5] = v54;
  v55 = vzip2q_s64(v49, v51);
  v49.i64[1] = v51.i64[0];
  v76[6] = v49;
  v76[7] = v55;
  v56 = vzip1q_s16(v21, v23);
  v57 = vzip2q_s16(v21, v23);
  v58 = vzip1q_s16(v25, v27);
  v59 = vzip2q_s16(v25, v27);
  v60 = vzip1q_s16(v29, v31);
  v61 = vzip2q_s16(v29, v31);
  v62 = vzip1q_s16(v33, v35);
  v63 = vzip2q_s16(v33, v35);
  v64 = vzip1q_s32(v56, v58);
  v65 = vzip2q_s32(v56, v58);
  v66 = vzip1q_s32(v60, v62);
  v67 = vzip2q_s32(v60, v62);
  v68 = vzip1q_s32(v57, v59);
  v69 = vzip2q_s64(v64, v66);
  v64.i64[1] = v66.i64[0];
  v70 = vzip1q_s32(v61, v63);
  v76[8] = v64;
  v76[9] = v69;
  v71 = vzip2q_s64(v65, v67);
  v72 = vzip2q_s64(v68, v70);
  v65.i64[1] = v67.i64[0];
  v68.i64[1] = v70.i64[0];
  v76[10] = v65;
  v76[11] = v71;
  v76[12] = v68;
  v76[13] = v72;
  v73 = vzip2q_s32(v57, v59);
  v74 = vzip2q_s32(v61, v63);
  v75 = vzip2q_s64(v73, v74);
  v73.i64[1] = v74.i64[0];
  v76[14] = v73;
  v76[15] = v75;
  do
  {
    *result = v76[v19++];
    result = (result + a2);
  }

  while (v19 != 16);
  return result;
}

_OWORD *sub_277B24F0C(_OWORD *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (23 << a4));
  v9 = vld1_dup_s8(v8);
  v10 = a5;
  while (1)
  {
    v11 = ((23 << a4) - (v10 >> v7)) >> a4;
    if (v11 <= 0)
    {
      break;
    }

    if (v11 >= 8)
    {
      v11 = 8;
    }

    v12 = a3 + (v10 >> v7);
    if (a4)
    {
      v71 = vld2_s8(v12);
      v13 = v10 << a4;
    }

    else
    {
      v71.val[0] = *v12;
      v71.val[1] = *(v12 + 1);
      v13 = v10;
    }

    *(&v54 + v6) = vbsl_s8(qword_277C3A240[4 * v11], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v71.val[1], v71.val[0]), vdupq_n_s16((v13 >> 1) & 0x1F)), v71.val[0], 0x2020202020202020), 5uLL), v9);
    v10 += a5;
    ++v6;
    v5 -= 8;
    if (v6 == 16)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 0xF)
  {
    v14 = -v5;
    do
    {
      *(&v54 + v14) = v9;
      v14 += 8;
    }

    while (v14 != 128);
  }

LABEL_13:
  v15 = 0;
  v16 = vzip1_s8(v54, v55);
  v17 = vzip2_s8(v54, v55);
  v18 = vzip1_s8(v56, v57);
  v19 = vzip2_s8(v56, v57);
  v20 = vzip1_s8(v58, v59);
  v21 = vzip2_s8(v58, v59);
  v22 = vzip1_s8(v60, v61);
  v23 = vzip2_s8(v60, v61);
  v24 = vzip1_s8(v62, v63);
  v25 = vzip2_s8(v62, v63);
  v26 = vzip1_s8(v64, v65);
  v27 = vzip2_s8(v64, v65);
  v28 = vzip1_s8(v66, v67);
  v29 = vzip2_s8(v66, v67);
  v30 = vzip1_s8(v68, v69);
  v31 = vzip2_s8(v68, v69);
  v32 = vzip1_s16(v16, v18);
  v33 = vzip2_s16(v16, v18);
  v34 = vzip1_s16(v20, v22);
  v35 = vzip2_s16(v20, v22);
  v36 = vzip1_s16(v24, v26);
  v37 = vzip2_s16(v24, v26);
  v38 = vzip1_s16(v28, v30);
  v39 = vzip2_s16(v28, v30);
  *&v40 = vzip1_s32(v32, v34);
  *&v41 = vzip2_s32(v32, v34);
  *&v42 = vzip1_s32(v33, v35);
  *&v43 = vzip2_s32(v33, v35);
  *(&v40 + 1) = vzip1_s32(v36, v38);
  *(&v41 + 1) = vzip2_s32(v36, v38);
  v53[0] = v40;
  v53[1] = v41;
  *(&v42 + 1) = vzip1_s32(v37, v39);
  *(&v43 + 1) = vzip2_s32(v37, v39);
  v53[2] = v42;
  v53[3] = v43;
  *&v43 = vzip1_s16(v17, v19);
  v44 = vzip2_s16(v17, v19);
  v45 = vzip1_s16(v21, v23);
  v46 = vzip2_s16(v21, v23);
  *&v41 = vzip1_s16(v25, v27);
  v47 = vzip2_s16(v25, v27);
  v48 = vzip1_s16(v29, v31);
  v49 = vzip2_s16(v29, v31);
  *&v50 = vzip1_s32(*&v43, v45);
  *&v51 = vzip2_s32(*&v43, v45);
  *&v43 = vzip1_s32(v44, v46);
  *&v52 = vzip2_s32(v44, v46);
  *(&v50 + 1) = vzip1_s32(*&v41, v48);
  *(&v51 + 1) = vzip2_s32(*&v41, v48);
  v53[4] = v50;
  v53[5] = v51;
  *(&v43 + 1) = vzip1_s32(v47, v49);
  *(&v52 + 1) = vzip2_s32(v47, v49);
  v53[6] = v43;
  v53[7] = v52;
  do
  {
    *result = v53[v15++];
    result = (result + a2);
  }

  while (v15 != 8);
  return result;
}

_OWORD *sub_277B25160(_OWORD *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (19 << a4));
  v9 = vld1_dup_s8(v8);
  v10 = a5;
  while (1)
  {
    v11 = ((19 << a4) - (v10 >> v7)) >> a4;
    if (v11 <= 0)
    {
      break;
    }

    if (v11 >= 4)
    {
      v11 = 4;
    }

    v12 = a3 + (v10 >> v7);
    if (a4)
    {
      v71 = vld2_s8(v12);
      v13 = v10 << a4;
    }

    else
    {
      v71.val[0] = *v12;
      v71.val[1] = *(v12 + 1);
      v13 = v10;
    }

    *(&v54 + v6) = vbsl_s8(qword_277C3A240[4 * v11], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v71.val[1], v71.val[0]), vdupq_n_s16((v13 >> 1) & 0x1F)), v71.val[0], 0x2020202020202020), 5uLL), v9);
    v10 += a5;
    ++v6;
    v5 -= 8;
    if (v6 == 16)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 0xF)
  {
    v14 = -v5;
    do
    {
      *(&v54 + v14) = v9;
      v14 += 8;
    }

    while (v14 != 128);
  }

LABEL_13:
  v15 = 0;
  v16 = vzip1_s8(v54, v55);
  v17 = vzip2_s8(v54, v55);
  v18 = vzip1_s8(v56, v57);
  v19 = vzip2_s8(v56, v57);
  v20 = vzip1_s8(v58, v59);
  v21 = vzip2_s8(v58, v59);
  v22 = vzip1_s8(v60, v61);
  v23 = vzip2_s8(v60, v61);
  v24 = vzip1_s8(v62, v63);
  v25 = vzip2_s8(v62, v63);
  v26 = vzip1_s8(v64, v65);
  v27 = vzip2_s8(v64, v65);
  v28 = vzip1_s8(v66, v67);
  v29 = vzip2_s8(v66, v67);
  v30 = vzip1_s8(v68, v69);
  v31 = vzip2_s8(v68, v69);
  v32 = vzip1_s16(v16, v18);
  v33 = vzip2_s16(v16, v18);
  v34 = vzip1_s16(v20, v22);
  v35 = vzip2_s16(v20, v22);
  v36 = vzip1_s16(v24, v26);
  v37 = vzip2_s16(v24, v26);
  v38 = vzip1_s16(v28, v30);
  v39 = vzip2_s16(v28, v30);
  *&v40 = vzip1_s32(v32, v34);
  *&v41 = vzip2_s32(v32, v34);
  *&v42 = vzip1_s32(v33, v35);
  *&v43 = vzip2_s32(v33, v35);
  *(&v40 + 1) = vzip1_s32(v36, v38);
  *(&v41 + 1) = vzip2_s32(v36, v38);
  v53[0] = v40;
  v53[1] = v41;
  *(&v42 + 1) = vzip1_s32(v37, v39);
  *(&v43 + 1) = vzip2_s32(v37, v39);
  v53[2] = v42;
  v53[3] = v43;
  *&v43 = vzip1_s16(v17, v19);
  v44 = vzip2_s16(v17, v19);
  v45 = vzip1_s16(v21, v23);
  v46 = vzip2_s16(v21, v23);
  *&v41 = vzip1_s16(v25, v27);
  v47 = vzip2_s16(v25, v27);
  v48 = vzip1_s16(v29, v31);
  v49 = vzip2_s16(v29, v31);
  *&v50 = vzip1_s32(*&v43, v45);
  *&v51 = vzip2_s32(*&v43, v45);
  *&v43 = vzip1_s32(v44, v46);
  *&v52 = vzip2_s32(v44, v46);
  *(&v50 + 1) = vzip1_s32(*&v41, v48);
  *(&v51 + 1) = vzip2_s32(*&v41, v48);
  v53[4] = v50;
  v53[5] = v51;
  *(&v43 + 1) = vzip1_s32(v47, v49);
  *(&v52 + 1) = vzip2_s32(v47, v49);
  v53[6] = v43;
  v53[7] = v52;
  do
  {
    *result = v53[v15++];
    result = (result + a2);
  }

  while (v15 != 4);
  return result;
}

void *sub_277B253B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 0;
  v177 = *MEMORY[0x277D85DE8];
  v6 = v144;
  v7 = (a3 + 39);
  v8 = vld1q_dup_s8(v7);
  v9 = 8;
  v10.i64[0] = 0x2020202020202020;
  v10.i64[1] = 0x2020202020202020;
  v11 = a5;
  do
  {
    v12 = v11 >> 6;
    if (v11 >> 6 < 39)
    {
      v15 = 0;
      v16 = 0;
      LODWORD(v17) = 39 - (v11 >> 6);
      v18 = vdupq_n_s16((v11 >> 1) & 0x1F);
      do
      {
        v19 = v8;
        if (v16 < v17)
        {
          v20 = a3 + v12 + v16;
          v19 = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*(v20 + 1), *v20), v18), *v20, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(*(v20 + 1), *v20), v18), *v20, v10), 5uLL);
        }

        *(&v145 + v15) = v19;
        v15 += 16;
        v16 = 16;
      }

      while (v15 != 32);
      if (v17 >= 0x20)
      {
        v17 = 32;
      }

      else
      {
        v17 = v17;
      }

      v21 = &qword_277C3A240[4 * v17];
      v22 = *v21[2].i8;
      v23 = vbslq_s8(*v21->i8, v145, v8);
      v24 = &v143[2 * v5 + 32];
      v25 = vbslq_s8(v22, v146, v8);
      *v24 = v23;
      v24[1] = v25;
      v11 += a5;
    }

    else
    {
      v13 = v6;
      v14 = v9;
      do
      {
        v13[-1] = v8;
        *v13 = v8;
        v13 += 2;
        --v14;
      }

      while (v14);
    }

    if (v12 > 38)
    {
      break;
    }

    ++v5;
    --v9;
    v6 += 2;
  }

  while (v5 != 8);
  v26 = 0;
  v27 = v144;
  memset(&v144[240], 0, 256);
  do
  {
    v28 = &v145.i8[v26];
    v29 = *v27;
    *v28 = *(v27 - 1);
    *(v28 + 16) = v29;
    v26 += 16;
    v27 += 2;
  }

  while (v26 != 256);
  v30 = 0;
  v31 = vzip1q_s8(v145, v146);
  v32 = vzip2q_s8(v145, v146);
  v33 = vzip1q_s8(v147, v148);
  v34 = vzip2q_s8(v147, v148);
  v35 = vzip1q_s8(v149, v150);
  v36 = vzip2q_s8(v149, v150);
  v37 = vzip1q_s8(v151, v152);
  v38 = vzip2q_s8(v151, v152);
  v39 = vzip1q_s8(v153, v154);
  v40 = vzip2q_s8(v153, v154);
  v41 = vzip1q_s8(v155, v156);
  v42 = vzip2q_s8(v155, v156);
  v43 = vzip1q_s8(v157, v158);
  v44 = vzip2q_s8(v157, v158);
  v45 = vzip1q_s8(v159, v160);
  v46 = vzip2q_s8(v159, v160);
  v47 = vzip1q_s16(v31, v33);
  v48 = vzip2q_s16(v31, v33);
  v49 = vzip1q_s16(v35, v37);
  v50 = vzip2q_s16(v35, v37);
  v51 = vzip1q_s16(v39, v41);
  v52 = vzip2q_s16(v39, v41);
  v53 = vzip1q_s16(v43, v45);
  v54 = vzip2q_s16(v43, v45);
  v55 = vzip1q_s32(v47, v49);
  v56 = vzip2q_s32(v47, v49);
  v57 = vzip1q_s32(v51, v53);
  v58 = vzip2q_s32(v51, v53);
  v59 = vzip1q_s32(v48, v50);
  v60 = vzip2q_s32(v48, v50);
  v61 = vzip2q_s64(v55, v57);
  v55.i64[1] = v57.i64[0];
  v62 = vzip2q_s64(v56, v58);
  v56.i64[1] = v58.i64[0];
  v63 = vzip1q_s32(v52, v54);
  v64 = vzip2q_s32(v52, v54);
  v143[0] = v55;
  v143[1] = v61;
  v65 = vzip2q_s64(v59, v63);
  v59.i64[1] = v63.i64[0];
  v143[2] = v56;
  v143[3] = v62;
  v66 = vzip2q_s64(v60, v64);
  v60.i64[1] = v64.i64[0];
  v143[4] = v59;
  v143[5] = v65;
  v67 = vzip1q_s16(v32, v34);
  v68 = vzip2q_s16(v32, v34);
  v143[6] = v60;
  v143[7] = v66;
  v69 = vzip1q_s16(v36, v38);
  v70 = vzip2q_s16(v36, v38);
  v71 = vzip1q_s16(v40, v42);
  v72 = vzip2q_s16(v40, v42);
  v73 = vzip1q_s16(v44, v46);
  v74 = vzip1q_s32(v67, v69);
  v75 = vzip1q_s32(v71, v73);
  v76 = vzip2q_s64(v74, v75);
  v74.i64[1] = v75.i64[0];
  v77 = vzip2q_s32(v67, v69);
  v78 = vzip2q_s32(v71, v73);
  v143[8] = v74;
  v143[9] = v76;
  v79 = vzip2q_s64(v77, v78);
  v77.i64[1] = v78.i64[0];
  v80 = vzip2q_s16(v44, v46);
  v81 = vzip1q_s32(v68, v70);
  v82 = vzip1q_s32(v72, v80);
  v143[10] = v77;
  v143[11] = v79;
  v83 = vzip2q_s64(v81, v82);
  v75.i64[0] = v81.i64[0];
  v75.i64[1] = v82.i64[0];
  v84 = vzip2q_s32(v68, v70);
  v85 = vzip2q_s32(v72, v80);
  v86 = vzip2q_s64(v84, v85);
  v76.i64[0] = v84.i64[0];
  v76.i64[1] = v85.i64[0];
  v87 = vzip1q_s8(v161, v162);
  v88 = vzip2q_s8(v161, v162);
  v89 = vzip1q_s8(v163, v164);
  v90 = vzip2q_s8(v163, v164);
  v91 = vzip1q_s8(v165, v166);
  v92 = vzip2q_s8(v165, v166);
  v93 = vzip1q_s8(v167, v168);
  v94 = vzip2q_s8(v167, v168);
  v95 = vzip1q_s8(v169, v170);
  v96 = vzip2q_s8(v169, v170);
  v97 = vzip1q_s8(v171, v172);
  v98 = vzip2q_s8(v171, v172);
  v99 = vzip1q_s8(v173, v174);
  v100 = vzip2q_s8(v173, v174);
  v101 = vzip1q_s8(v175, v176);
  v102 = vzip2q_s8(v175, v176);
  v143[12] = v75;
  v143[13] = v83;
  v103 = vzip1q_s16(v87, v89);
  v104 = vzip2q_s16(v87, v89);
  v105 = vzip1q_s16(v91, v93);
  v106 = vzip2q_s16(v91, v93);
  v143[14] = v76;
  v143[15] = v86;
  v107 = vzip1q_s16(v95, v97);
  v108 = vzip2q_s16(v95, v97);
  v109 = vzip1q_s16(v99, v101);
  v110 = vzip2q_s16(v99, v101);
  v111 = vzip1q_s32(v103, v105);
  v112 = vzip2q_s32(v103, v105);
  v113 = vzip1q_s32(v107, v109);
  v114 = vzip2q_s64(v111, v113);
  v111.i64[1] = v113.i64[0];
  v115 = vzip2q_s32(v107, v109);
  v116 = vzip1q_s32(v104, v106);
  v143[16] = v111;
  v143[17] = v114;
  v117 = vzip2q_s64(v112, v115);
  v118 = vzip2q_s32(v104, v106);
  v119 = vzip1q_s32(v108, v110);
  v112.i64[1] = v115.i64[0];
  v143[18] = v112;
  v143[19] = v117;
  v120 = vzip2q_s64(v116, v119);
  v121 = vzip2q_s32(v108, v110);
  v116.i64[1] = v119.i64[0];
  v143[20] = v116;
  v143[21] = v120;
  v122 = vzip2q_s64(v118, v121);
  v118.i64[1] = v121.i64[0];
  v143[22] = v118;
  v143[23] = v122;
  v123 = vzip1q_s16(v88, v90);
  v124 = vzip1q_s16(v92, v94);
  v125 = vzip1q_s16(v96, v98);
  v126 = vzip1q_s16(v100, v102);
  v127 = vzip1q_s32(v123, v124);
  v128 = vzip1q_s32(v125, v126);
  v129 = vzip2q_s64(v127, v128);
  v130 = vzip2q_s32(v123, v124);
  v127.i64[1] = v128.i64[0];
  v131 = vzip2q_s32(v125, v126);
  v143[24] = v127;
  v143[25] = v129;
  v132 = vzip2q_s64(v130, v131);
  v133 = vzip2q_s16(v88, v90);
  v134 = vzip2q_s16(v92, v94);
  v135 = vzip2q_s16(v96, v98);
  v136 = vzip2q_s16(v100, v102);
  v137 = vzip1q_s32(v133, v134);
  v138 = vzip1q_s32(v135, v136);
  v139 = vzip2q_s64(v137, v138);
  v130.i64[1] = v131.i64[0];
  v137.i64[1] = v138.i64[0];
  v143[26] = v130;
  v143[27] = v132;
  v143[28] = v137;
  v143[29] = v139;
  v140 = vzip2q_s32(v133, v134);
  v141 = vzip2q_s32(v135, v136);
  v142 = vzip2q_s64(v140, v141);
  v140.i64[1] = v141.i64[0];
  v143[30] = v140;
  v143[31] = v142;
  do
  {
    *result = *&v143[v30++];
    result = (result + a2);
  }

  while (v30 != 32);
  return result;
}

void *sub_277B25858(void *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (23 << a4));
  v9 = vld1q_dup_s8(v8);
  v10.i64[0] = 0x2020202020202020;
  v10.i64[1] = 0x2020202020202020;
  v11 = a5;
  while (1)
  {
    v12 = ((23 << a4) - (v11 >> v7)) >> a4;
    if (v12 <= 0)
    {
      break;
    }

    if (v12 >= 0x10)
    {
      v12 = 16;
    }

    v13 = a3 + (v11 >> v7);
    if (a4)
    {
      v15 = vld2_s8(v13);
      v15.i64[1] = v14;
      v16 = vextq_s8(v15, 0, 8uLL);
      LOBYTE(v13) = v11;
    }

    else
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      LOWORD(v13) = v11 >> 1;
    }

    v17 = vdupq_n_s16(v13 & 0x1F);
    *(&v39 + v6) = vbslq_s8(*qword_277C3A240[4 * v12].i8, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v16.i8, *v15.i8), v17), *v15.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v16, v15), v17), v15, v10), 5uLL), v9);
    v11 += a5;
    ++v6;
    v5 -= 16;
    if (v6 == 8)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 7)
  {
    v18 = -v5;
    do
    {
      *(&v39 + v18) = v9;
      v18 += 16;
    }

    while (v18 != 128);
  }

LABEL_13:
  v19 = 0;
  v20 = vzip1q_s8(v39, v40);
  v21 = vzip2q_s8(v39, v40);
  v22 = vzip1q_s8(v41, v42);
  v23 = vzip2q_s8(v41, v42);
  v24 = vzip1q_s8(v43, v44);
  v25 = vzip2q_s8(v43, v44);
  v26 = vzip1q_s8(v45, v46);
  v27 = vzip2q_s8(v45, v46);
  v28 = vzip1q_s16(v20, v22);
  v29 = vzip2q_s16(v20, v22);
  v30 = vzip1q_s16(v24, v26);
  v31 = vzip2q_s16(v24, v26);
  v32 = vzip1q_s16(v21, v23);
  v33 = vzip2q_s16(v21, v23);
  v34 = vzip1q_s32(v28, v30);
  v35 = vzip2q_s32(v28, v30);
  v36 = vzip1q_s16(v25, v27);
  v38[0] = v34;
  v38[1] = v35;
  v37 = vzip2q_s16(v25, v27);
  v38[2] = vzip1q_s32(v29, v31);
  v38[3] = vzip2q_s32(v29, v31);
  v38[4] = vzip1q_s32(v32, v36);
  v38[5] = vzip2q_s32(v32, v36);
  v38[6] = vzip1q_s32(v33, v37);
  v38[7] = vzip2q_s32(v33, v37);
  do
  {
    *result = *(v38 + v19);
    v19 += 8;
    result = (result + a2);
  }

  while (v19 != 128);
  return result;
}

int8x16_t sub_277B25A3C(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v36[8] = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (15 << a4));
  v9 = vld1_dup_s8(v8);
  v10 = a5;
  while (1)
  {
    v11 = ((15 << a4) - (v10 >> v7)) >> a4;
    if (v11 <= 0)
    {
      break;
    }

    if (v11 >= 8)
    {
      v11 = 8;
    }

    v12 = a3 + (v10 >> v7);
    if (a4)
    {
      v37 = vld2_s8(v12);
      v13 = v10 << a4;
    }

    else
    {
      v37.val[0] = *v12;
      v37.val[1] = *(v12 + 1);
      v13 = v10;
    }

    v36[v6] = vbsl_s8(qword_277C3A240[4 * v11], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v37.val[1], v37.val[0]), vdupq_n_s16((v13 >> 1) & 0x1F)), v37.val[0], 0x2020202020202020), 5uLL), v9);
    v10 += a5;
    ++v6;
    v5 -= 8;
    if (v6 == 8)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 7)
  {
    v14 = -v5;
    do
    {
      *(v36 + v14) = v9;
      v14 += 8;
    }

    while (v14 != 64);
  }

LABEL_13:
  v15.i64[0] = v36[0];
  v16.i64[0] = v36[1];
  v17.i64[0] = v36[2];
  v18.i64[0] = v36[3];
  v15.i64[1] = v36[4];
  v16.i64[1] = v36[5];
  v19 = vtrn1q_s8(v15, v16);
  v20 = vtrn2q_s8(v15, v16);
  v17.i64[1] = v36[6];
  v18.i64[1] = v36[7];
  v21 = vtrn1q_s8(v17, v18);
  v22 = vtrn2q_s8(v17, v18);
  v23 = vtrn1q_s16(v19, v21);
  v24 = vtrn2q_s16(v19, v21);
  v25 = vtrn1q_s16(v20, v22);
  v26 = vtrn2q_s16(v20, v22);
  v27 = vuzp1q_s32(v23, v25);
  v28 = vuzp2q_s32(v23, v25);
  v29 = vuzp1q_s32(v24, v26);
  result = vuzp2q_s32(v24, v26);
  *a1 = v27.i64[0];
  *(a1 + a2) = vextq_s8(v27, v27, 8uLL).u64[0];
  v31 = (a1 + a2 + a2);
  *v31 = v29.i64[0];
  v32 = (v31 + a2);
  *v32 = vextq_s8(v29, v29, 8uLL).u64[0];
  v33 = (v32 + a2);
  *v33 = v28.i64[0];
  v34 = (v33 + a2);
  *v34 = vextq_s8(v28, v28, 8uLL).u64[0];
  v35 = (v34 + a2);
  *v35 = result.i64[0];
  *(v35 + a2) = vextq_s8(result, result, 8uLL).u64[0];
  return result;
}

int8x16_t sub_277B25BF0(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v30[8] = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (11 << a4));
  v9 = vld1_dup_s8(v8);
  v10 = a5;
  while (1)
  {
    v11 = ((11 << a4) - (v10 >> v7)) >> a4;
    if (v11 <= 0)
    {
      break;
    }

    if (v11 >= 4)
    {
      v11 = 4;
    }

    v12 = a3 + (v10 >> v7);
    if (a4)
    {
      v31 = vld2_s8(v12);
      v13 = v10 << a4;
    }

    else
    {
      v31.val[0] = *v12;
      v31.val[1] = *(v12 + 1);
      v13 = v10;
    }

    v30[v6] = vbsl_s8(qword_277C3A240[4 * v11], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v31.val[1], v31.val[0]), vdupq_n_s16((v13 >> 1) & 0x1F)), v31.val[0], 0x2020202020202020), 5uLL), v9);
    v10 += a5;
    ++v6;
    v5 -= 8;
    if (v6 == 8)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 7)
  {
    v14 = -v5;
    do
    {
      *(v30 + v14) = v9;
      v14 += 8;
    }

    while (v14 != 64);
  }

LABEL_13:
  v15.i64[0] = v30[0];
  v16.i64[0] = v30[1];
  v17.i64[0] = v30[2];
  v18.i64[0] = v30[3];
  v15.i64[1] = v30[4];
  v16.i64[1] = v30[5];
  v19 = vtrn1q_s8(v15, v16);
  v20 = vtrn2q_s8(v15, v16);
  v17.i64[1] = v30[6];
  v18.i64[1] = v30[7];
  v21 = vtrn1q_s8(v17, v18);
  v22 = vtrn2q_s8(v17, v18);
  v23 = vtrn1q_s16(v19, v21);
  v24 = vtrn2q_s16(v19, v21);
  v25 = vtrn1q_s16(v20, v22);
  v26 = vtrn2q_s16(v20, v22);
  v27 = vuzp1q_s32(v23, v25);
  result = vuzp1q_s32(v24, v26);
  *a1 = v27.i64[0];
  *(a1 + a2) = vextq_s8(v27, v27, 8uLL).u64[0];
  v29 = (a1 + a2 + a2);
  *v29 = result.i64[0];
  *(v29 + a2) = vextq_s8(result, result, 8uLL).u64[0];
  return result;
}

int16x8_t sub_277B25D74(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v41 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (19 << a4));
  v9 = vld1q_dup_s8(v8);
  v10.i64[0] = 0x2020202020202020;
  v10.i64[1] = 0x2020202020202020;
  v11 = a5;
  while (1)
  {
    v12 = ((19 << a4) - (v11 >> v7)) >> a4;
    if (v12 <= 0)
    {
      break;
    }

    if (v12 >= 0x10)
    {
      v12 = 16;
    }

    v13 = a3 + (v11 >> v7);
    if (a4)
    {
      v15 = vld2_s8(v13);
      v15.i64[1] = v14;
      v16 = vextq_s8(v15, 0, 8uLL);
      LOBYTE(v13) = v11;
    }

    else
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      LOWORD(v13) = v11 >> 1;
    }

    v17 = vdupq_n_s16(v13 & 0x1F);
    *(&v37 + v6) = vbslq_s8(*qword_277C3A240[4 * v12].i8, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(*v16.i8, *v15.i8), v17), *v15.i8, 0x2020202020202020), 5uLL), vmlal_high_u8(vmulq_s16(vsubl_high_u8(v16, v15), v17), v15, v10), 5uLL), v9);
    v11 += a5;
    ++v6;
    v5 -= 16;
    if (v6 == 4)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 3)
  {
    v18 = -v5;
    do
    {
      *(&v37 + v18) = v9;
      v18 += 16;
    }

    while (v18 != 64);
  }

LABEL_13:
  v19 = vzip1q_s8(v37, v38);
  v20 = vzip1q_s8(v39, v40);
  v21 = vzip1q_s16(v19, v20);
  v22 = vzip2q_s16(v19, v20);
  v23 = vzip2q_s8(v37, v38);
  v24 = vzip2q_s8(v39, v40);
  *a1 = v21.i32[0];
  *(a1 + a2) = v21.i32[1];
  v25 = (a1 + a2 + a2);
  *v25 = v21.i32[2];
  v26 = vzip1q_s16(v23, v24);
  *(v25 + a2) = v21.i32[3];
  v27 = &a1[a2];
  *v27 = v22.i32[0];
  v28 = (v27 + a2);
  *v28 = v22.i32[1];
  v29 = (v28 + a2);
  *v29 = v22.i32[2];
  result = vzip2q_s16(v23, v24);
  *(v29 + a2) = v22.i32[3];
  v31 = &a1[2 * a2];
  *v31 = v26.i32[0];
  v32 = (v31 + a2);
  *v32 = v26.i32[1];
  v33 = (v32 + a2);
  *v33 = v26.i32[2];
  *(v33 + a2) = v26.i32[3];
  v34 = &a1[3 * a2];
  *v34 = result.i32[0];
  v35 = (v34 + a2);
  *v35 = result.i32[1];
  v36 = (v35 + a2);
  *v36 = result.i32[2];
  *(v36 + a2) = result.i32[3];
  return result;
}

int16x4_t sub_277B25F58(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v30 = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (11 << a4));
  v9 = vld1_dup_s8(v8);
  v10 = a5;
  while (1)
  {
    v11 = ((11 << a4) - (v10 >> v7)) >> a4;
    if (v11 <= 0)
    {
      break;
    }

    if (v11 >= 8)
    {
      v11 = 8;
    }

    v12 = a3 + (v10 >> v7);
    if (a4)
    {
      v31 = vld2_s8(v12);
      v13 = v10 << a4;
    }

    else
    {
      v31.val[0] = *v12;
      v31.val[1] = *(v12 + 1);
      v13 = v10;
    }

    *(&v26 + v6) = vbsl_s8(qword_277C3A240[4 * v11], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v31.val[1], v31.val[0]), vdupq_n_s16((v13 >> 1) & 0x1F)), v31.val[0], 0x2020202020202020), 5uLL), v9);
    v10 += a5;
    ++v6;
    v5 -= 8;
    if (v6 == 4)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 3)
  {
    v14 = -v5;
    do
    {
      *(&v26 + v14) = v9;
      v14 += 8;
    }

    while (v14 != 32);
  }

LABEL_13:
  v15 = vzip1_s8(v26, v27);
  v16 = vzip1_s8(v28, v29);
  v17 = vzip1_s16(v15, v16);
  v18 = vzip2_s16(v15, v16);
  v19 = vzip2_s8(v26, v27);
  v20 = vzip2_s8(v28, v29);
  v21 = vzip1_s16(v19, v20);
  result = vzip2_s16(v19, v20);
  *a1 = v17.i32[0];
  *(a1 + a2) = v17.i32[1];
  v23 = (a1 + 2 * a2);
  *v23 = v18.i32[0];
  *(v23 + a2) = v18.i32[1];
  v24 = &a1[a2];
  *v24 = v21.i32[0];
  *(v24 + a2) = v21.i32[1];
  v25 = (a1 + 6 * a2);
  *v25 = result.i32[0];
  *(v25 + a2) = result.i32[1];
  return result;
}

int16x4_t sub_277B260DC(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = 0;
  v6 = 0;
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = 6 - a4;
  v8 = (a3 + (7 << a4));
  v9 = vld1_dup_s8(v8);
  v10 = a5;
  while (1)
  {
    v11 = ((7 << a4) - (v10 >> v7)) >> a4;
    if (v11 <= 0)
    {
      break;
    }

    if (v11 >= 4)
    {
      v11 = 4;
    }

    v12 = a3 + (v10 >> v7);
    if (a4)
    {
      v21 = vld2_s8(v12);
      v13 = v10 << a4;
    }

    else
    {
      v21.val[0] = *v12;
      v21.val[1] = *(v12 + 1);
      v13 = v10;
    }

    v20[v6] = vbsl_s8(qword_277C3A240[4 * v11], vrshrn_n_s16(vmlal_u8(vmulq_s16(vsubl_u8(v21.val[1], v21.val[0]), vdupq_n_s16((v13 >> 1) & 0x1F)), v21.val[0], 0x2020202020202020), 5uLL), v9);
    v10 += a5;
    ++v6;
    v5 -= 8;
    if (v6 == 4)
    {
      goto LABEL_13;
    }
  }

  if (v6 <= 3)
  {
    v14 = -v5;
    do
    {
      *(v20 + v14) = v9;
      v14 += 8;
    }

    while (v14 != 32);
  }

LABEL_13:
  v15 = vzip1_s8(v20[0], v20[1]);
  v16 = vzip1_s8(v20[2], v20[3]);
  v17 = vzip1_s16(v15, v16);
  result = vzip2_s16(v15, v16);
  *a1 = v17.i32[0];
  *(a1 + a2) = v17.i32[1];
  v19 = (a1 + 2 * a2);
  *v19 = result.i32[0];
  *(v19 + a2) = result.i32[1];
  return result;
}

_DWORD *sub_277B2622C(_DWORD *result, uint64_t a2, _DWORD *a3, uint64_t a4, uint8x8_t a5, double a6, double a7, int8x8_t a8)
{
  v8 = 0;
  v9 = a3 + 3;
  v10 = vld1_dup_s8(v9);
  a5.i32[0] = *a3;
  a8.i8[0] = *(a4 + 3);
  v11 = vmull_u8(3232459521, v10);
  v12 = vdup_lane_s8(a8, 0);
  do
  {
    v13 = (a4 + v8);
    v14 = vld1_dup_s8(v13);
    v15 = &unk_277C3A760 + v8;
    v16 = vld1_dup_s8(v15);
    *result = vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v16, a5), vneg_s8(v16), v12), vmlal_u8(v11, 1079350783, v14)), 0).u32[0];
    result = (result + a2);
    ++v8;
  }

  while (v8 != 4);
  return result;
}

_DWORD *sub_277B262A8(_DWORD *result, uint64_t a2, _DWORD *a3, uint64_t a4, uint8x8_t a5, double a6, double a7, int8x8_t a8)
{
  v8 = 0;
  v9 = a3 + 3;
  v10 = vld1_dup_s8(v9);
  a5.i32[0] = *a3;
  a8.i8[0] = *(a4 + 7);
  v11 = vmull_u8(3232459521, v10);
  v12 = vdup_lane_s8(a8, 0);
  do
  {
    v13 = (a4 + v8);
    v14 = vld1_dup_s8(v13);
    v15 = &unk_277C3A760 + v8 + 4;
    v16 = vld1_dup_s8(v15);
    *result = vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v16, a5), vneg_s8(v16), v12), vmlal_u8(v11, 1079350783, v14)), 0).u32[0];
    result = (result + a2);
    ++v8;
  }

  while (v8 != 8);
  return result;
}

int8x8_t *sub_277B26328(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, double a6, double a7, int8x8_t a8)
{
  v8 = 0;
  v9 = a3 + 7;
  v10 = vld1_dup_s8(v9);
  v11 = *a3;
  a8.i8[0] = *(a4 + 3);
  v12 = vmull_u8(0xE0DBCEB7976E3B01, v10);
  v13 = vdup_lane_s8(a8, 0);
  do
  {
    v14 = (a4 + v8);
    v15 = vld1_dup_s8(v14);
    v16 = &unk_277C3A760 + v8;
    v17 = vld1_dup_s8(v16);
    *result = vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(vneg_s8(v17), v13), v17, v11), vmlal_u8(v12, 0x202532496992C5FFLL, v15)), 0);
    result = (result + a2);
    ++v8;
  }

  while (v8 != 4);
  return result;
}

int8x8_t *sub_277B263A4(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, double a6, double a7, int8x8_t a8)
{
  v8 = 0;
  v9 = a3 + 7;
  v10 = vld1_dup_s8(v9);
  v11 = *a3;
  a8.i8[0] = *(a4 + 7);
  v12 = vmull_u8(0xE0DBCEB7976E3B01, v10);
  v13 = vdup_lane_s8(a8, 0);
  do
  {
    v14 = (a4 + v8);
    v15 = vld1_dup_s8(v14);
    v16 = &unk_277C3A760 + v8 + 4;
    v17 = vld1_dup_s8(v16);
    *result = vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(vneg_s8(v17), v13), v17, v11), vmlal_u8(v12, 0x202532496992C5FFLL, v15)), 0);
    result = (result + a2);
    ++v8;
  }

  while (v8 != 8);
  return result;
}

_DWORD *sub_277B26424(_DWORD *result, uint64_t a2, _DWORD *a3, uint64_t a4, uint8x8_t a5, double a6, double a7, int8x8_t a8)
{
  v8 = 0;
  v9 = a3 + 3;
  v10 = vld1_dup_s8(v9);
  a5.i32[0] = *a3;
  a8.i8[0] = *(a4 + 15);
  v11 = vmull_u8(3232459521, v10);
  v12 = vdup_lane_s8(a8, 0);
  do
  {
    v13 = (a4 + v8);
    v14 = vld1_dup_s8(v13);
    v15 = &unk_277C3A760 + v8 + 12;
    v16 = vld1_dup_s8(v15);
    *result = vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v16, a5), vneg_s8(v16), v12), vmlal_u8(v11, 1079350783, v14)), 0).u32[0];
    result = (result + a2);
    ++v8;
  }

  while (v8 != 16);
  return result;
}

int8x8_t *sub_277B264A4(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, double a6, double a7, int8x8_t a8)
{
  v8 = 0;
  v9 = a3 + 7;
  v10 = vld1_dup_s8(v9);
  v11 = *a3;
  a8.i8[0] = *(a4 + 15);
  v12 = vmull_u8(0xE0DBCEB7976E3B01, v10);
  v13 = vdup_lane_s8(a8, 0);
  do
  {
    v14 = (a4 + v8);
    v15 = vld1_dup_s8(v14);
    v16 = &unk_277C3A760 + v8 + 12;
    v17 = vld1_dup_s8(v16);
    *result = vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(vneg_s8(v17), v13), v17, v11), vmlal_u8(v12, 0x202532496992C5FFLL, v15)), 0);
    result = (result + a2);
    ++v8;
  }

  while (v8 != 16);
  return result;
}

int8x8_t *sub_277B26524(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, double a6, double a7, int8x8_t a8)
{
  v8 = 0;
  v9 = a3 + 7;
  v10 = vld1_dup_s8(v9);
  v11 = *a3;
  a8.i8[0] = *(a4 + 31);
  v12 = vmull_u8(0xE0DBCEB7976E3B01, v10);
  v13 = vdup_lane_s8(a8, 0);
  do
  {
    v14 = (a4 + v8);
    v15 = vld1_dup_s8(v14);
    v16 = &unk_277C3A760 + v8 + 28;
    v17 = vld1_dup_s8(v16);
    *result = vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(vneg_s8(v17), v13), v17, v11), vmlal_u8(v12, 0x202532496992C5FFLL, v15)), 0);
    result = (result + a2);
    ++v8;
  }

  while (v8 != 32);
  return result;
}

int8x16_t *sub_277B265A4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = &a3->i8[15];
  v12 = vld1_dup_s8(v11);
  a10.i8[0] = *(a4 + 3);
  v13 = *a3;
  v14 = vmull_u8(0xAC9A856F563C1F01, v12);
  v15 = vmull_u8(0xF0EFECE6DFD5CABCLL, v12);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17 = (a4 + v10);
    v18 = vld1_dup_s8(v17);
    v19 = &unk_277C3A760 + v10;
    v20 = vld1q_dup_s8(v19);
    v21 = vneg_s8(*v20.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(*v20.i8, *v13.i8), v21, v16), vmlal_u8(v14, 0x54667B91AAC4E1FFLL, v18)), 0), vhaddq_u16(vmlal_high_u8(vmull_u8(v21, v16), v20, v13), vmlal_u8(v15, 0x1011141A212B3644, v18)), 0);
    result = (result + a2);
    ++v10;
  }

  while (v10 != 4);
  return result;
}

int8x16_t *sub_277B2664C(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = &a3->i8[15];
  v12 = vld1_dup_s8(v11);
  a10.i8[0] = *(a4 + 7);
  v13 = *a3;
  v14 = vmull_u8(0xAC9A856F563C1F01, v12);
  v15 = vmull_u8(0xF0EFECE6DFD5CABCLL, v12);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17 = (a4 + v10);
    v18 = vld1_dup_s8(v17);
    v19 = &unk_277C3A760 + v10 + 4;
    v20 = vld1q_dup_s8(v19);
    v21 = vneg_s8(*v20.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(*v20.i8, *v13.i8), v21, v16), vmlal_u8(v14, 0x54667B91AAC4E1FFLL, v18)), 0), vhaddq_u16(vmlal_high_u8(vmull_u8(v21, v16), v20, v13), vmlal_u8(v15, 0x1011141A212B3644, v18)), 0);
    result = (result + a2);
    ++v10;
  }

  while (v10 != 8);
  return result;
}

int8x16_t *sub_277B266F8(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = &a3->i8[15];
  v12 = vld1_dup_s8(v11);
  a10.i8[0] = *(a4 + 15);
  v13 = *a3;
  v14 = vmull_u8(0xAC9A856F563C1F01, v12);
  v15 = vmull_u8(0xF0EFECE6DFD5CABCLL, v12);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17 = (a4 + v10);
    v18 = vld1_dup_s8(v17);
    v19 = &unk_277C3A760 + v10 + 12;
    v20 = vld1q_dup_s8(v19);
    v21 = vneg_s8(*v20.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(*v20.i8, *v13.i8), v21, v16), vmlal_u8(v14, 0x54667B91AAC4E1FFLL, v18)), 0), vhaddq_u16(vmlal_high_u8(vmull_u8(v21, v16), v20, v13), vmlal_u8(v15, 0x1011141A212B3644, v18)), 0);
    result = (result + a2);
    ++v10;
  }

  while (v10 != 16);
  return result;
}

int8x16_t *sub_277B267A4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = &a3->i8[15];
  v12 = vld1_dup_s8(v11);
  a10.i8[0] = *(a4 + 31);
  v13 = *a3;
  v14 = vmull_u8(0xAC9A856F563C1F01, v12);
  v15 = vmull_u8(0xF0EFECE6DFD5CABCLL, v12);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17 = (a4 + v10);
    v18 = vld1_dup_s8(v17);
    v19 = &unk_277C3A760 + v10 + 28;
    v20 = vld1q_dup_s8(v19);
    v21 = vneg_s8(*v20.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(*v20.i8, *v13.i8), v21, v16), vmlal_u8(v14, 0x54667B91AAC4E1FFLL, v18)), 0), vhaddq_u16(vmlal_high_u8(vmull_u8(v21, v16), v20, v13), vmlal_u8(v15, 0x1011141A212B3644, v18)), 0);
    result = (result + a2);
    ++v10;
  }

  while (v10 != 32);
  return result;
}

int8x16_t *sub_277B26850(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  v10 = 0;
  v11 = &a3->i8[15];
  v12 = vld1_dup_s8(v11);
  a10.i8[0] = *(a4 + 63);
  v13 = *a3;
  v14 = vmull_u8(0xAC9A856F563C1F01, v12);
  v15 = vmull_u8(0xF0EFECE6DFD5CABCLL, v12);
  v16 = vdup_lane_s8(a10, 0);
  do
  {
    v17 = (a4 + v10);
    v18 = vld1_dup_s8(v17);
    v19 = &unk_277C3A760 + v10 + 60;
    v20 = vld1q_dup_s8(v19);
    v21 = vneg_s8(*v20.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(*v20.i8, *v13.i8), v21, v16), vmlal_u8(v14, 0x54667B91AAC4E1FFLL, v18)), 0), vhaddq_u16(vmlal_high_u8(vmull_u8(v21, v16), v20, v13), vmlal_u8(v15, 0x1011141A212B3644, v18)), 0);
    result = (result + a2);
    ++v10;
  }

  while (v10 != 64);
  return result;
}

int8x16_t *sub_277B26904(int8x16_t *result, uint64_t a2, int8x16_t *a3, const char *a4, unsigned int a5)
{
  v6 = a5;
  v7 = &unk_277C3A760 + a5 - 4;
  v5.i32[0] = a4[a5 - 1];
  v8 = &a3[1].i8[15];
  v9 = vld1_dup_s8(v8);
  v11 = *a3;
  v10 = a3[1];
  v12 = vmull_u8(0x63574A3C2E1F1001, v9);
  v13 = vmull_u8(0xB6ADA49B91867B6FLL, v9);
  v14 = vmull_u8(0xE7E3DED9D3CCC5BELL, v9);
  v15 = vmull_u8(0xF8F8F7F6F4F2EFEBLL, v9);
  v16 = result + 1;
  v17 = vextq_s8(v11, v11, 8uLL).u64[0];
  v18 = vextq_s8(v10, v10, 8uLL).u64[0];
  v19 = vdup_lane_s8(v5, 0);
  do
  {
    v20 = vld1_dup_s8(a4++);
    v21 = vld1_dup_s8(v7++);
    v22 = vneg_s8(v21);
    v16[-1] = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v21, *v11.i8), v22, v19), vmlal_u8(v12, 0x9DA9B6C4D2E1F0FFLL, v20)), 0), vhaddq_u16(vmlal_u8(vmull_u8(v21, v17), v22, v19), vmlal_u8(v13, 0x4A535C656F7A8591, v20)), 0);
    *v16 = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v21, *v10.i8), v22, v19), vmlal_u8(v14, 0x191D22272D343B42, v20)), 0), vhaddq_u16(vmlal_u8(vmull_u8(v21, v18), v22, v19), vmlal_u8(v15, 0x808090A0C0E1115, v20)), 0);
    v16 = (v16 + a2);
    --v6;
  }

  while (v6);
  return result;
}

int8x16_t *sub_277B26A34(int8x16_t *result, uint64_t a2, int8x16_t *a3, const char *a4, unsigned int a5)
{
  v6 = &a3[3].i8[15];
  v7 = vld1_dup_s8(v6);
  v8 = a5;
  v9 = &unk_277C3A760 + a5 - 4;
  v5.i32[0] = a4[a5 - 1];
  v10 = *a3;
  v30 = vmull_u8(0x352E261F17100801, v7);
  v11 = vmull_u8(0x6A645D57504A433CLL, v7);
  v12 = vmull_u8(0x96918C87817B7670, v7);
  v13 = vmull_u8(0xBBB7B3AEAAA5A09BLL, v7);
  v14 = vmull_u8(0xD7D4D1CECAC7C3BFLL, v7);
  v15 = vmull_u8(0xECEAE7E5E3E0DDDALL, v7);
  v16 = vmull_u8(0xF8F7F6F4F3F1F0EELL, v7);
  v17 = vmull_u8(0xFCFCFCFBFBFAFAF9, v7);
  v18 = result + 2;
  v19 = vextq_s8(v10, v10, 8uLL).u64[0];
  v20 = a3[1];
  v21 = vextq_s8(v20, v20, 8uLL).u64[0];
  v22 = a3[2];
  v23 = vextq_s8(v22, v22, 8uLL).u64[0];
  v24 = vdup_lane_s8(v5, 0);
  v25 = a3[3];
  v26 = vextq_s8(v25, v25, 8uLL).u64[0];
  do
  {
    v27 = vld1_dup_s8(a4++);
    v28 = vld1_dup_s8(v9++);
    v29 = vneg_s8(v28);
    v18[-2] = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v28, *v10.i8), v29, v24), vmlal_u8(v30, 0xCBD2DAE1E9F0F8FFLL, v27)), 0), vhaddq_u16(vmlal_u8(vmull_u8(v28, v19), v29, v24), vmlal_u8(v11, 0x969CA3A9B0B6BDC4, v27)), 0);
    v18[-1] = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v28, *v20.i8), v29, v24), vmlal_u8(v12, 0x6A6F74797F858A90, v27)), 0), vhaddq_u16(vmlal_u8(vmull_u8(v28, v21), v29, v24), vmlal_u8(v13, 0x45494D52565B6065, v27)), 0);
    *v18 = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v28, *v22.i8), v29, v24), vmlal_u8(v14, 0x292C2F3236393D41, v27)), 0), vhaddq_u16(vmlal_u8(vmull_u8(v28, v23), v29, v24), vmlal_u8(v15, 0x1416191B1D202326, v27)), 0);
    v18[1] = vraddhn_high_s16(vraddhn_s16(vhaddq_u16(vmlal_u8(vmull_u8(v28, *v25.i8), v29, v24), vmlal_u8(v16, 0x8090A0C0D0F1012, v27)), 0), vhaddq_u16(vmlal_u8(vmull_u8(v28, v26), v29, v24), vmlal_u8(v17, 0x404040505060607, v27)), 0);
    v18 = (v18 + a2);
    --v8;
  }

  while (v8);
  return result;
}

_DWORD *sub_277B26C4C(_DWORD *result, uint64_t a2, __int32 *a3, uint64_t a4, uint8x8_t a5, int8x8_t a6)
{
  v6 = 0;
  a5.i32[0] = *a3;
  a6.i8[0] = *(a4 + 3);
  v7 = vdup_lane_s8(a6, 0);
  do
  {
    v8 = &unk_277C3A760 + v6;
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(vmull_u8(vneg_s8(v9), v7), v9, a5), 0).u32[0];
    result = (result + a2);
    ++v6;
  }

  while (v6 != 4);
  return result;
}

_DWORD *sub_277B26C98(_DWORD *result, uint64_t a2, __int32 *a3, uint64_t a4, uint8x8_t a5, int8x8_t a6)
{
  v6 = 0;
  a5.i32[0] = *a3;
  a6.i8[0] = *(a4 + 7);
  v7 = vdup_lane_s8(a6, 0);
  do
  {
    v8 = &unk_277C3A760 + v6 + 4;
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(vmull_u8(vneg_s8(v9), v7), v9, a5), 0).u32[0];
    result = (result + a2);
    ++v6;
  }

  while (v6 != 8);
  return result;
}

_DWORD *sub_277B26CE8(_DWORD *result, uint64_t a2, __int32 *a3, uint64_t a4, uint8x8_t a5, int8x8_t a6)
{
  v6 = 0;
  a5.i32[0] = *a3;
  a6.i8[0] = *(a4 + 15);
  v7 = vdup_lane_s8(a6, 0);
  do
  {
    v8 = &unk_277C3A760 + v6 + 12;
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(vmull_u8(vneg_s8(v9), v7), v9, a5), 0).u32[0];
    result = (result + a2);
    ++v6;
  }

  while (v6 != 16);
  return result;
}

int8x8_t *sub_277B26D38(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 3);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6;
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_s16(vmlal_u8(vmull_u8(vneg_s8(v10), v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 4);
  return result;
}

int8x8_t *sub_277B26D84(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 7);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6 + 4;
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_s16(vmlal_u8(vmull_u8(vneg_s8(v10), v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 8);
  return result;
}

int8x8_t *sub_277B26DD4(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 15);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6 + 12;
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_s16(vmlal_u8(vmull_u8(vneg_s8(v10), v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 16);
  return result;
}

int8x8_t *sub_277B26E24(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 31);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6 + 28;
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_s16(vmlal_u8(vmull_u8(vneg_s8(v10), v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 32);
  return result;
}

int8x16_t *sub_277B26E74(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 3);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6;
    v10 = vld1q_dup_s8(v9);
    v11 = vneg_s8(*v10.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v10.i8, *v7.i8), v11, v8), 0), vmlal_high_u8(vmull_u8(v11, v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 4);
  return result;
}

int8x16_t *sub_277B26ECC(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 7);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6 + 4;
    v10 = vld1q_dup_s8(v9);
    v11 = vneg_s8(*v10.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v10.i8, *v7.i8), v11, v8), 0), vmlal_high_u8(vmull_u8(v11, v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 8);
  return result;
}

int8x16_t *sub_277B26F28(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 15);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6 + 12;
    v10 = vld1q_dup_s8(v9);
    v11 = vneg_s8(*v10.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v10.i8, *v7.i8), v11, v8), 0), vmlal_high_u8(vmull_u8(v11, v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 16);
  return result;
}

int8x16_t *sub_277B26F84(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 31);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6 + 28;
    v10 = vld1q_dup_s8(v9);
    v11 = vneg_s8(*v10.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v10.i8, *v7.i8), v11, v8), 0), vmlal_high_u8(vmull_u8(v11, v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 32);
  return result;
}

int8x16_t *sub_277B26FE0(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, int8x8_t a6)
{
  v6 = 0;
  v7 = *a3;
  a6.i8[0] = *(a4 + 63);
  v8 = vdup_lane_s8(a6, 0);
  do
  {
    v9 = &unk_277C3A760 + v6 + 60;
    v10 = vld1q_dup_s8(v9);
    v11 = vneg_s8(*v10.i8);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v10.i8, *v7.i8), v11, v8), 0), vmlal_high_u8(vmull_u8(v11, v8), v10, v7), 0);
    result = (result + a2);
    ++v6;
  }

  while (v6 != 64);
  return result;
}

int8x16_t *sub_277B2703C(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, int8x8_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i8[0] = *(a4 + 7);
  v10 = result + 1;
  v11 = vdup_lane_s8(a7, 0);
  do
  {
    v12 = &unk_277C3A760 + v7 + 4;
    v13 = vld1q_dup_s8(v12);
    v14 = vneg_s8(*v13.i8);
    v15 = vmull_u8(v14, v11);
    v10[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v8.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v8), 0);
    *v10 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v9.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v9), 0);
    ++v7;
    v10 = (v10 + a2);
  }

  while (v7 != 8);
  return result;
}

int8x16_t *sub_277B270B4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, int8x8_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i8[0] = *(a4 + 15);
  v10 = result + 1;
  v11 = vdup_lane_s8(a7, 0);
  do
  {
    v12 = &unk_277C3A760 + v7 + 12;
    v13 = vld1q_dup_s8(v12);
    v14 = vneg_s8(*v13.i8);
    v15 = vmull_u8(v14, v11);
    v10[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v8.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v8), 0);
    *v10 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v9.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v9), 0);
    ++v7;
    v10 = (v10 + a2);
  }

  while (v7 != 16);
  return result;
}

int8x16_t *sub_277B2712C(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, int8x8_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i8[0] = *(a4 + 31);
  v10 = result + 1;
  v11 = vdup_lane_s8(a7, 0);
  do
  {
    v12 = &unk_277C3A760 + v7 + 28;
    v13 = vld1q_dup_s8(v12);
    v14 = vneg_s8(*v13.i8);
    v15 = vmull_u8(v14, v11);
    v10[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v8.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v8), 0);
    *v10 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v9.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v9), 0);
    ++v7;
    v10 = (v10 + a2);
  }

  while (v7 != 32);
  return result;
}

int8x16_t *sub_277B271A4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4, double a5, double a6, int8x8_t a7)
{
  v7 = 0;
  v8 = *a3;
  v9 = a3[1];
  a7.i8[0] = *(a4 + 63);
  v10 = result + 1;
  v11 = vdup_lane_s8(a7, 0);
  do
  {
    v12 = &unk_277C3A760 + v7 + 60;
    v13 = vld1q_dup_s8(v12);
    v14 = vneg_s8(*v13.i8);
    v15 = vmull_u8(v14, v11);
    v10[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v8.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v8), 0);
    *v10 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(*v13.i8, *v9.i8), v14, v11), 0), vmlal_high_u8(v15, v13, v9), 0);
    ++v7;
    v10 = (v10 + a2);
  }

  while (v7 != 64);
  return result;
}

int8x16_t *sub_277B27224(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4, unsigned int a5)
{
  v6 = a5;
  v7 = &unk_277C3A760 + a5 - 4;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v5.i32[0] = *(a4 + a5 - 1);
  v12 = result + 2;
  v13 = vextq_s8(v8, v8, 8uLL).u64[0];
  v14 = vextq_s8(v9, v9, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = vextq_s8(v11, v11, 8uLL).u64[0];
  v17 = vdup_lane_s8(v5, 0);
  do
  {
    v18 = vld1_dup_s8(v7++);
    v19 = vneg_s8(v18);
    v12[-2] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(v18, *v8.i8), v19, v17), 0), vmlal_u8(vmull_u8(v18, v13), v19, v17), 0);
    v12[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(v18, *v9.i8), v19, v17), 0), vmlal_u8(vmull_u8(v18, v14), v19, v17), 0);
    *v12 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(v18, *v10.i8), v19, v17), 0), vmlal_u8(vmull_u8(v18, v15), v19, v17), 0);
    v12[1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(vmull_u8(v18, *v11.i8), v19, v17), 0), vmlal_u8(vmull_u8(v18, v16), v19, v17), 0);
    v12 = (v12 + a2);
    --v6;
  }

  while (v6);
  return result;
}

_DWORD *sub_277B272F8(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 3);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0x976E3B01C0AB6B01, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(v7, 0x6992C5FF405595FFLL, v9), 0).u32[0];
    result = (result + a2);
    ++v4;
  }

  while (v4 != 4);
  return result;
}

_DWORD *sub_277B27348(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 3);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0x976E3B01C0AB6B01, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(v7, 0x6992C5FF405595FFLL, v9), 0).u32[0];
    result = (result + a2);
    ++v4;
  }

  while (v4 != 8);
  return result;
}

_DWORD *sub_277B27398(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 3);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0x976E3B01C0AB6B01, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(v7, 0x6992C5FF405595FFLL, v9), 0).u32[0];
    result = (result + a2);
    ++v4;
  }

  while (v4 != 16);
  return result;
}

int8x8_t *sub_277B273E8(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 7);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xE0DBCEB7976E3B01, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(v7, 0x202532496992C5FFLL, v9), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 4);
  return result;
}

int8x8_t *sub_277B27438(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 7);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xE0DBCEB7976E3B01, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(v7, 0x202532496992C5FFLL, v9), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 8);
  return result;
}

int8x8_t *sub_277B27488(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 7);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xE0DBCEB7976E3B01, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(v7, 0x202532496992C5FFLL, v9), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 16);
  return result;
}

int8x8_t *sub_277B274D8(int8x8_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 7);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xE0DBCEB7976E3B01, v6);
  do
  {
    v8 = (a4 + v4);
    v9 = vld1_dup_s8(v8);
    *result = vraddhn_s16(vmlal_u8(v7, 0x202532496992C5FFLL, v9), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B27528(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 15);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xAC9A856F563C1F01, v6);
  v8 = vmull_u8(0xF0EFECE6DFD5CABCLL, v6);
  do
  {
    v9 = (a4 + v4);
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x54667B91AAC4E1FFLL, v10), 0), vmlal_u8(v8, 0x1011141A212B3644, v10), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 4);
  return result;
}

int8x16_t *sub_277B27598(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 15);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xAC9A856F563C1F01, v6);
  v8 = vmull_u8(0xF0EFECE6DFD5CABCLL, v6);
  do
  {
    v9 = (a4 + v4);
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x54667B91AAC4E1FFLL, v10), 0), vmlal_u8(v8, 0x1011141A212B3644, v10), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 8);
  return result;
}

int8x16_t *sub_277B27608(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 15);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xAC9A856F563C1F01, v6);
  v8 = vmull_u8(0xF0EFECE6DFD5CABCLL, v6);
  do
  {
    v9 = (a4 + v4);
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x54667B91AAC4E1FFLL, v10), 0), vmlal_u8(v8, 0x1011141A212B3644, v10), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 16);
  return result;
}

int8x16_t *sub_277B27678(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 15);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xAC9A856F563C1F01, v6);
  v8 = vmull_u8(0xF0EFECE6DFD5CABCLL, v6);
  do
  {
    v9 = (a4 + v4);
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x54667B91AAC4E1FFLL, v10), 0), vmlal_u8(v8, 0x1011141A212B3644, v10), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B276E8(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 15);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0xAC9A856F563C1F01, v6);
  v8 = vmull_u8(0xF0EFECE6DFD5CABCLL, v6);
  do
  {
    v9 = (a4 + v4);
    v10 = vld1_dup_s8(v9);
    *result = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x54667B91AAC4E1FFLL, v10), 0), vmlal_u8(v8, 0x1011141A212B3644, v10), 0);
    result = (result + a2);
    ++v4;
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B27758(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 31);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0x63574A3C2E1F1001, v6);
  v8 = vmull_u8(0xB6ADA49B91867B6FLL, v6);
  v9 = vmull_u8(0xE7E3DED9D3CCC5BELL, v6);
  v10 = vmull_u8(0xF8F8F7F6F4F2EFEBLL, v6);
  v11 = result + 1;
  do
  {
    v12 = (a4 + v4);
    v13 = vld1_dup_s8(v12);
    v11[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x9DA9B6C4D2E1F0FFLL, v13), 0), vmlal_u8(v8, 0x4A535C656F7A8591, v13), 0);
    *v11 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v9, 0x191D22272D343B42, v13), 0), vmlal_u8(v10, 0x808090A0C0E1115, v13), 0);
    ++v4;
    v11 = (v11 + a2);
  }

  while (v4 != 8);
  return result;
}

int8x16_t *sub_277B2780C(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 31);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0x63574A3C2E1F1001, v6);
  v8 = vmull_u8(0xB6ADA49B91867B6FLL, v6);
  v9 = vmull_u8(0xE7E3DED9D3CCC5BELL, v6);
  v10 = vmull_u8(0xF8F8F7F6F4F2EFEBLL, v6);
  v11 = result + 1;
  do
  {
    v12 = (a4 + v4);
    v13 = vld1_dup_s8(v12);
    v11[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x9DA9B6C4D2E1F0FFLL, v13), 0), vmlal_u8(v8, 0x4A535C656F7A8591, v13), 0);
    *v11 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v9, 0x191D22272D343B42, v13), 0), vmlal_u8(v10, 0x808090A0C0E1115, v13), 0);
    ++v4;
    v11 = (v11 + a2);
  }

  while (v4 != 16);
  return result;
}

int8x16_t *sub_277B278C0(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 31);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0x63574A3C2E1F1001, v6);
  v8 = vmull_u8(0xB6ADA49B91867B6FLL, v6);
  v9 = vmull_u8(0xE7E3DED9D3CCC5BELL, v6);
  v10 = vmull_u8(0xF8F8F7F6F4F2EFEBLL, v6);
  v11 = result + 1;
  do
  {
    v12 = (a4 + v4);
    v13 = vld1_dup_s8(v12);
    v11[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x9DA9B6C4D2E1F0FFLL, v13), 0), vmlal_u8(v8, 0x4A535C656F7A8591, v13), 0);
    *v11 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v9, 0x191D22272D343B42, v13), 0), vmlal_u8(v10, 0x808090A0C0E1115, v13), 0);
    ++v4;
    v11 = (v11 + a2);
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B27974(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a3 + 31);
  v6 = vld1_dup_s8(v5);
  v7 = vmull_u8(0x63574A3C2E1F1001, v6);
  v8 = vmull_u8(0xB6ADA49B91867B6FLL, v6);
  v9 = vmull_u8(0xE7E3DED9D3CCC5BELL, v6);
  v10 = vmull_u8(0xF8F8F7F6F4F2EFEBLL, v6);
  v11 = result + 1;
  do
  {
    v12 = (a4 + v4);
    v13 = vld1_dup_s8(v12);
    v11[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v7, 0x9DA9B6C4D2E1F0FFLL, v13), 0), vmlal_u8(v8, 0x4A535C656F7A8591, v13), 0);
    *v11 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v9, 0x191D22272D343B42, v13), 0), vmlal_u8(v10, 0x808090A0C0E1115, v13), 0);
    ++v4;
    v11 = (v11 + a2);
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B27A34(int8x16_t *result, uint64_t a2, unsigned int a3, const char *a4, unsigned int a5)
{
  v5 = vdup_n_s8(a3);
  v6 = vmull_u8(0x352E261F17100801, v5);
  v7 = vmull_u8(0x6A645D57504A433CLL, v5);
  v8 = vmull_u8(0x96918C87817B7670, v5);
  v9 = vmull_u8(0xBBB7B3AEAAA5A09BLL, v5);
  v10 = vmull_u8(0xD7D4D1CECAC7C3BFLL, v5);
  v11 = vmull_u8(0xECEAE7E5E3E0DDDALL, v5);
  v12 = vmull_u8(0xF8F7F6F4F3F1F0EELL, v5);
  v13 = vmull_u8(0xFCFCFCFBFBFAFAF9, v5);
  v14 = a5;
  v15 = result + 2;
  do
  {
    v16 = vld1_dup_s8(a4++);
    v15[-2] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v6, 0xCBD2DAE1E9F0F8FFLL, v16), 0), vmlal_u8(v7, 0x969CA3A9B0B6BDC4, v16), 0);
    v15[-1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v8, 0x6A6F74797F858A90, v16), 0), vmlal_u8(v9, 0x45494D52565B6065, v16), 0);
    *v15 = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v10, 0x292C2F3236393D41, v16), 0), vmlal_u8(v11, 0x1416191B1D202326, v16), 0);
    v15[1] = vraddhn_high_s16(vraddhn_s16(vmlal_u8(v12, 0x8090A0C0D0F1012, v16), 0), vmlal_u8(v13, 0x404040505060607, v16), 0);
    v15 = (v15 + a2);
    --v14;
  }

  while (v14);
  return result;
}

_DWORD *sub_277B27B78(_DWORD *result, uint64_t a2, __int32 *a3, uint64_t a4, double a5, double a6, uint8x8_t a7)
{
  v7 = 0;
  v8 = *(a3 - 1);
  v9 = vdup_n_s8(v8);
  v10 = vdupq_n_s16(2 * v8);
  a7.i32[0] = *a3;
  v11 = vabd_u8(a7, v9);
  v12 = vabdl_u8(a7, v9);
  do
  {
    v13 = (a4 + v7);
    v14 = vld1_dup_s8(v13);
    v15 = vabdq_u16(vaddl_u8(v14, a7), v10);
    v16 = vmovn_s16(vcgtq_u16(v12, v15));
    *v15.i8 = vmovn_s16(vcgtq_u16(vabdl_u8(v14, v9), v15));
    v17 = vorr_s8(v16, vcgt_u8(v11, vabd_u8(v14, v9)));
    *result = vorr_s8(vand_s8(vand_s8(v9, *v15.i8), v17), vbsl_s8(v17, vbic_s8(a7, *v15.i8), v14)).u32[0];
    result = (result + a2);
    ++v7;
  }

  while (v7 != 4);
  return result;
}

_DWORD *sub_277B27BF4(_DWORD *result, uint64_t a2, __int32 *a3, uint64_t a4, double a5, double a6, uint8x8_t a7)
{
  v7 = 0;
  v8 = *(a3 - 1);
  v9 = vdup_n_s8(v8);
  v10 = vdupq_n_s16(2 * v8);
  a7.i32[0] = *a3;
  v11 = vabd_u8(a7, v9);
  v12 = vabdl_u8(a7, v9);
  do
  {
    v13 = (a4 + v7);
    v14 = vld1_dup_s8(v13);
    v15 = vabdq_u16(vaddl_u8(v14, a7), v10);
    v16 = vmovn_s16(vcgtq_u16(v12, v15));
    *v15.i8 = vmovn_s16(vcgtq_u16(vabdl_u8(v14, v9), v15));
    v17 = vorr_s8(v16, vcgt_u8(v11, vabd_u8(v14, v9)));
    *result = vorr_s8(vand_s8(vand_s8(v9, *v15.i8), v17), vbsl_s8(v17, vbic_s8(a7, *v15.i8), v14)).u32[0];
    result = (result + a2);
    ++v7;
  }

  while (v7 != 8);
  return result;
}

int8x8_t *sub_277B27C70(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[7];
  v6 = vdup_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabd_u8(*a3, v6);
  v10 = vabdl_u8(*a3, v6);
  do
  {
    v11 = (a4 + v4);
    v12 = vld1_dup_s8(v11);
    v13 = vabdq_u16(vaddl_u8(v12, v8), v7);
    v14 = vmovn_s16(vcgtq_u16(v10, v13));
    *v13.i8 = vmovn_s16(vcgtq_u16(vabdl_u8(v12, v6), v13));
    v15 = vorr_s8(v14, vcgt_u8(v9, vabd_u8(v12, v6)));
    *result = vorr_s8(vand_s8(vand_s8(v6, *v13.i8), v15), vbsl_s8(v15, vbic_s8(v8, *v13.i8), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 4);
  return result;
}

int8x8_t *sub_277B27CEC(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[7];
  v6 = vdup_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabd_u8(*a3, v6);
  v10 = vabdl_u8(*a3, v6);
  do
  {
    v11 = (a4 + v4);
    v12 = vld1_dup_s8(v11);
    v13 = vabdq_u16(vaddl_u8(v12, v8), v7);
    v14 = vmovn_s16(vcgtq_u16(v10, v13));
    *v13.i8 = vmovn_s16(vcgtq_u16(vabdl_u8(v12, v6), v13));
    v15 = vorr_s8(v14, vcgt_u8(v9, vabd_u8(v12, v6)));
    *result = vorr_s8(vand_s8(vand_s8(v6, *v13.i8), v15), vbsl_s8(v15, vbic_s8(v8, *v13.i8), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 8);
  return result;
}

int8x8_t *sub_277B27D68(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[7];
  v6 = vdup_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabd_u8(*a3, v6);
  v10 = vabdl_u8(*a3, v6);
  do
  {
    v11 = (a4 + v4);
    v12 = vld1_dup_s8(v11);
    v13 = vabdq_u16(vaddl_u8(v12, v8), v7);
    v14 = vmovn_s16(vcgtq_u16(v10, v13));
    *v13.i8 = vmovn_s16(vcgtq_u16(vabdl_u8(v12, v6), v13));
    v15 = vorr_s8(v14, vcgt_u8(v9, vabd_u8(v12, v6)));
    *result = vorr_s8(vand_s8(vand_s8(v6, *v13.i8), v15), vbsl_s8(v15, vbic_s8(v8, *v13.i8), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 16);
  return result;
}

_DWORD *sub_277B27DE4(_DWORD *result, uint64_t a2, __int32 *a3, uint64_t a4, double a5, double a6, uint8x8_t a7)
{
  v7 = 0;
  v8 = *(a3 - 1);
  v9 = vdup_n_s8(v8);
  v10 = vdupq_n_s16(2 * v8);
  a7.i32[0] = *a3;
  v11 = vabd_u8(a7, v9);
  v12 = vabdl_u8(a7, v9);
  do
  {
    v13 = (a4 + v7);
    v14 = vld1_dup_s8(v13);
    v15 = vabdq_u16(vaddl_u8(v14, a7), v10);
    v16 = vmovn_s16(vcgtq_u16(v12, v15));
    *v15.i8 = vmovn_s16(vcgtq_u16(vabdl_u8(v14, v9), v15));
    v17 = vorr_s8(v16, vcgt_u8(v11, vabd_u8(v14, v9)));
    *result = vorr_s8(vand_s8(vand_s8(v9, *v15.i8), v17), vbsl_s8(v17, vbic_s8(a7, *v15.i8), v14)).u32[0];
    result = (result + a2);
    ++v7;
  }

  while (v7 != 16);
  return result;
}

int8x8_t *sub_277B27E60(int8x8_t *result, uint64_t a2, uint8x8_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[7];
  v6 = vdup_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabd_u8(*a3, v6);
  v10 = vabdl_u8(*a3, v6);
  do
  {
    v11 = (a4 + v4);
    v12 = vld1_dup_s8(v11);
    v13 = vabdq_u16(vaddl_u8(v12, v8), v7);
    v14 = vmovn_s16(vcgtq_u16(v10, v13));
    *v13.i8 = vmovn_s16(vcgtq_u16(vabdl_u8(v12, v6), v13));
    v15 = vorr_s8(v14, vcgt_u8(v9, vabd_u8(v12, v6)));
    *result = vorr_s8(vand_s8(vand_s8(v6, *v13.i8), v15), vbsl_s8(v15, vbic_s8(v8, *v13.i8), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B27EDC(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u8(*a3, v6);
  v10 = vextq_s8(v8, v8, 8uLL).u64[0];
  do
  {
    v11 = (a4 + v4);
    v12 = vld1q_dup_s8(v11);
    v13 = vabdq_u8(v12, v6);
    v14 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v12.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v12.i8, v10), v7));
    v15 = vcgtq_u8(v13, v14);
    v16 = vcgtq_u8(v9, vminq_u8(v14, v13));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v15), v16), vbslq_s8(v16, vbicq_s8(v8, v15), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 8);
  return result;
}

int8x16_t *sub_277B27F58(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u8(*a3, v6);
  v10 = vextq_s8(v8, v8, 8uLL).u64[0];
  do
  {
    v11 = (a4 + v4);
    v12 = vld1q_dup_s8(v11);
    v13 = vabdq_u8(v12, v6);
    v14 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v12.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v12.i8, v10), v7));
    v15 = vcgtq_u8(v13, v14);
    v16 = vcgtq_u8(v9, vminq_u8(v14, v13));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v15), v16), vbslq_s8(v16, vbicq_s8(v8, v15), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 16);
  return result;
}

int8x16_t *sub_277B27FD4(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u8(*a3, v6);
  v10 = vextq_s8(v8, v8, 8uLL).u64[0];
  do
  {
    v11 = (a4 + v4);
    v12 = vld1q_dup_s8(v11);
    v13 = vabdq_u8(v12, v6);
    v14 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v12.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v12.i8, v10), v7));
    v15 = vcgtq_u8(v13, v14);
    v16 = vcgtq_u8(v9, vminq_u8(v14, v13));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v15), v16), vbslq_s8(v16, vbicq_s8(v8, v15), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B28050(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u8(*a3, v6);
  v11 = vextq_s8(v8, v8, 8uLL).u64[0];
  v12 = vextq_s8(v9, v9, 8uLL).u64[0];
  v13 = vabdq_u8(v9, v6);
  v14 = result + 1;
  do
  {
    v15 = (a4 + v4);
    v16 = vld1q_dup_s8(v15);
    v17 = vabdq_u8(v16, v6);
    v18 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v11), v7));
    v19 = vcgtq_u8(v17, v18);
    v20 = vcgtq_u8(v10, vminq_u8(v18, v17));
    v21 = vorrq_s8(vandq_s8(vandq_s8(v6, v19), v20), vbslq_s8(v20, vbicq_s8(v8, v19), v16));
    v22 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v9.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v12), v7));
    v23 = vcgtq_u8(v17, v22);
    v24 = vcgtq_u8(v13, vminq_u8(v22, v17));
    v14[-1] = v21;
    *v14 = vorrq_s8(vandq_s8(vandq_s8(v6, v23), v24), vbslq_s8(v24, vbicq_s8(v9, v23), v16));
    ++v4;
    v14 = (v14 + a2);
  }

  while (v4 != 16);
  return result;
}

int8x16_t *sub_277B28110(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u8(*a3, v6);
  v11 = vextq_s8(v8, v8, 8uLL).u64[0];
  v12 = vextq_s8(v9, v9, 8uLL).u64[0];
  v13 = vabdq_u8(v9, v6);
  v14 = result + 1;
  do
  {
    v15 = (a4 + v4);
    v16 = vld1q_dup_s8(v15);
    v17 = vabdq_u8(v16, v6);
    v18 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v11), v7));
    v19 = vcgtq_u8(v17, v18);
    v20 = vcgtq_u8(v10, vminq_u8(v18, v17));
    v21 = vorrq_s8(vandq_s8(vandq_s8(v6, v19), v20), vbslq_s8(v20, vbicq_s8(v8, v19), v16));
    v22 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v9.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v12), v7));
    v23 = vcgtq_u8(v17, v22);
    v24 = vcgtq_u8(v13, vminq_u8(v22, v17));
    v14[-1] = v21;
    *v14 = vorrq_s8(vandq_s8(vandq_s8(v6, v23), v24), vbslq_s8(v24, vbicq_s8(v9, v23), v16));
    ++v4;
    v14 = (v14 + a2);
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B281D0(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u8(*a3, v6);
  v11 = vextq_s8(v8, v8, 8uLL).u64[0];
  v12 = vextq_s8(v9, v9, 8uLL).u64[0];
  v13 = vabdq_u8(v9, v6);
  v14 = result + 1;
  do
  {
    v15 = (a4 + v4);
    v16 = vld1q_dup_s8(v15);
    v17 = vabdq_u8(v16, v6);
    v18 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v11), v7));
    v19 = vcgtq_u8(v17, v18);
    v20 = vcgtq_u8(v10, vminq_u8(v18, v17));
    v21 = vorrq_s8(vandq_s8(vandq_s8(v6, v19), v20), vbslq_s8(v20, vbicq_s8(v8, v19), v16));
    v22 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v9.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v12), v7));
    v23 = vcgtq_u8(v17, v22);
    v24 = vcgtq_u8(v13, vminq_u8(v22, v17));
    v14[-1] = v21;
    *v14 = vorrq_s8(vandq_s8(vandq_s8(v6, v23), v24), vbslq_s8(v24, vbicq_s8(v9, v23), v16));
    ++v4;
    v14 = (v14 + a2);
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B28290(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = vabdq_u8(*a3, v6);
  v13 = vextq_s8(v8, v8, 8uLL).u64[0];
  v14 = vextq_s8(v9, v9, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = vextq_s8(v11, v11, 8uLL).u64[0];
  v17 = vabdq_u8(v9, v6);
  v18 = vabdq_u8(v10, v6);
  v19 = vabdq_u8(v11, v6);
  v20 = result + 2;
  do
  {
    v21 = (a4 + v4);
    v22 = vld1q_dup_s8(v21);
    v23 = vabdq_u8(v22, v6);
    v24 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v13), v7));
    v25 = vcgtq_u8(v23, v24);
    v26 = vcgtq_u8(v12, vminq_u8(v24, v23));
    v27 = vorrq_s8(vandq_s8(vandq_s8(v6, v25), v26), vbslq_s8(v26, vbicq_s8(v8, v25), v22));
    v28 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v9.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v14), v7));
    v29 = vcgtq_u8(v23, v28);
    v30 = vcgtq_u8(v17, vminq_u8(v28, v23));
    v20[-2] = v27;
    v20[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v29), v30), vbslq_s8(v30, vbicq_s8(v9, v29), v22));
    v31 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v10.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v15), v7));
    v32 = vcgtq_u8(v23, v31);
    v33 = vcgtq_u8(v18, vminq_u8(v31, v23));
    v34 = vorrq_s8(vandq_s8(vandq_s8(v6, v32), v33), vbslq_s8(v33, vbicq_s8(v10, v32), v22));
    v35 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v11.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v16), v7));
    v36 = vcgtq_u8(v23, v35);
    v37 = vcgtq_u8(v19, vminq_u8(v35, v23));
    *v20 = v34;
    v20[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v36), v37), vbslq_s8(v37, vbicq_s8(v11, v36), v22));
    ++v4;
    v20 = (v20 + a2);
  }

  while (v4 != 32);
  return result;
}

int8x16_t *sub_277B283D8(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = vabdq_u8(*a3, v6);
  v13 = vextq_s8(v8, v8, 8uLL).u64[0];
  v14 = vextq_s8(v9, v9, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = vextq_s8(v11, v11, 8uLL).u64[0];
  v17 = vabdq_u8(v9, v6);
  v18 = vabdq_u8(v10, v6);
  v19 = vabdq_u8(v11, v6);
  v20 = result + 2;
  do
  {
    v21 = (a4 + v4);
    v22 = vld1q_dup_s8(v21);
    v23 = vabdq_u8(v22, v6);
    v24 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v13), v7));
    v25 = vcgtq_u8(v23, v24);
    v26 = vcgtq_u8(v12, vminq_u8(v24, v23));
    v27 = vorrq_s8(vandq_s8(vandq_s8(v6, v25), v26), vbslq_s8(v26, vbicq_s8(v8, v25), v22));
    v28 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v9.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v14), v7));
    v29 = vcgtq_u8(v23, v28);
    v30 = vcgtq_u8(v17, vminq_u8(v28, v23));
    v20[-2] = v27;
    v20[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v29), v30), vbslq_s8(v30, vbicq_s8(v9, v29), v22));
    v31 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v10.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v15), v7));
    v32 = vcgtq_u8(v23, v31);
    v33 = vcgtq_u8(v18, vminq_u8(v31, v23));
    v34 = vorrq_s8(vandq_s8(vandq_s8(v6, v32), v33), vbslq_s8(v33, vbicq_s8(v10, v32), v22));
    v35 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v11.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v16), v7));
    v36 = vcgtq_u8(v23, v35);
    v37 = vcgtq_u8(v19, vminq_u8(v35, v23));
    *v20 = v34;
    v20[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v36), v37), vbslq_s8(v37, vbicq_s8(v11, v36), v22));
    ++v4;
    v20 = (v20 + a2);
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B28520(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u8(*a3, v6);
  v10 = vextq_s8(v8, v8, 8uLL).u64[0];
  do
  {
    v11 = (a4 + v4);
    v12 = vld1q_dup_s8(v11);
    v13 = vabdq_u8(v12, v6);
    v14 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v12.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v12.i8, v10), v7));
    v15 = vcgtq_u8(v13, v14);
    v16 = vcgtq_u8(v9, vminq_u8(v14, v13));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v15), v16), vbslq_s8(v16, vbicq_s8(v8, v15), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 4);
  return result;
}

int8x16_t *sub_277B2859C(int8x16_t *result, uint64_t a2, uint8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = vabdq_u8(*a3, v6);
  v10 = vextq_s8(v8, v8, 8uLL).u64[0];
  do
  {
    v11 = (a4 + v4);
    v12 = vld1q_dup_s8(v11);
    v13 = vabdq_u8(v12, v6);
    v14 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v12.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v12.i8, v10), v7));
    v15 = vcgtq_u8(v13, v14);
    v16 = vcgtq_u8(v9, vminq_u8(v14, v13));
    *result = vorrq_s8(vandq_s8(vandq_s8(v6, v15), v16), vbslq_s8(v16, vbicq_s8(v8, v15), v12));
    result = (result + a2);
    ++v4;
  }

  while (v4 != 64);
  return result;
}

int8x16_t *sub_277B28618(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = vabdq_u8(*a3, v6);
  v11 = vextq_s8(v8, v8, 8uLL).u64[0];
  v12 = vextq_s8(v9, v9, 8uLL).u64[0];
  v13 = vabdq_u8(v9, v6);
  v14 = result + 1;
  do
  {
    v15 = (a4 + v4);
    v16 = vld1q_dup_s8(v15);
    v17 = vabdq_u8(v16, v6);
    v18 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v11), v7));
    v19 = vcgtq_u8(v17, v18);
    v20 = vcgtq_u8(v10, vminq_u8(v18, v17));
    v21 = vorrq_s8(vandq_s8(vandq_s8(v6, v19), v20), vbslq_s8(v20, vbicq_s8(v8, v19), v16));
    v22 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v16.i8, *v9.i8), v7)), vabdq_u16(vaddl_u8(*v16.i8, v12), v7));
    v23 = vcgtq_u8(v17, v22);
    v24 = vcgtq_u8(v13, vminq_u8(v22, v17));
    v14[-1] = v21;
    *v14 = vorrq_s8(vandq_s8(vandq_s8(v6, v23), v24), vbslq_s8(v24, vbicq_s8(v9, v23), v16));
    ++v4;
    v14 = (v14 + a2);
  }

  while (v4 != 8);
  return result;
}

int8x16_t *sub_277B286D8(int8x16_t *result, uint64_t a2, int8x16_t *a3, uint64_t a4)
{
  v4 = 0;
  v5 = a3[-1].u8[15];
  v6 = vdupq_n_s8(v5);
  v7 = vdupq_n_s16(2 * v5);
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v12 = vabdq_u8(*a3, v6);
  v13 = vextq_s8(v8, v8, 8uLL).u64[0];
  v14 = vextq_s8(v9, v9, 8uLL).u64[0];
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = vextq_s8(v11, v11, 8uLL).u64[0];
  v17 = vabdq_u8(v9, v6);
  v18 = vabdq_u8(v10, v6);
  v19 = vabdq_u8(v11, v6);
  v20 = result + 2;
  do
  {
    v21 = (a4 + v4);
    v22 = vld1q_dup_s8(v21);
    v23 = vabdq_u8(v22, v6);
    v24 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v8.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v13), v7));
    v25 = vcgtq_u8(v23, v24);
    v26 = vcgtq_u8(v12, vminq_u8(v24, v23));
    v27 = vorrq_s8(vandq_s8(vandq_s8(v6, v25), v26), vbslq_s8(v26, vbicq_s8(v8, v25), v22));
    v28 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v9.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v14), v7));
    v29 = vcgtq_u8(v23, v28);
    v30 = vcgtq_u8(v17, vminq_u8(v28, v23));
    v20[-2] = v27;
    v20[-1] = vorrq_s8(vandq_s8(vandq_s8(v6, v29), v30), vbslq_s8(v30, vbicq_s8(v9, v29), v22));
    v31 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v10.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v15), v7));
    v32 = vcgtq_u8(v23, v31);
    v33 = vcgtq_u8(v18, vminq_u8(v31, v23));
    v34 = vorrq_s8(vandq_s8(vandq_s8(v6, v32), v33), vbslq_s8(v33, vbicq_s8(v10, v32), v22));
    v35 = vqmovn_high_u16(vqmovn_u16(vabdq_u16(vaddl_u8(*v22.i8, *v11.i8), v7)), vabdq_u16(vaddl_u8(*v22.i8, v16), v7));
    v36 = vcgtq_u8(v23, v35);
    v37 = vcgtq_u8(v19, vminq_u8(v35, v23));
    *v20 = v34;
    v20[1] = vorrq_s8(vandq_s8(vandq_s8(v6, v36), v37), vbslq_s8(v37, vbicq_s8(v11, v36), v22));
    ++v4;
    v20 = (v20 + a2);
  }

  while (v4 != 16);
  return result;
}

void sub_277B28820(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t *a5, BOOL *a6, void *a7, double a8, double a9, double a10, double a11, int32x4_t a12)
{
  v15 = *(**(a3 + 7864) + 16);
  v16 = *(a3 + 20);
  v17 = *(a3 + 24);
  v18 = byte_277C3BCDE[4 * a1 + 2 * v16 + v17];
  v19 = a2 + 153176;
  v20 = *(a3 + 7936);
  v21 = ((v20 >> (v17 + 3)) + byte_277C3CAE8[v18]) & ~(((v20 >> (v17 + 3)) + byte_277C3CAE8[v18]) >> 31);
  if (v20 < 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = byte_277C3CAE8[v18];
  }

  v23 = *(a3 + 7928);
  v24 = ((v23 >> (v16 + 3)) + byte_277C3CAFE[v18]) & ~(((v23 >> (v16 + 3)) + byte_277C3CAFE[v18]) >> 31);
  if (v23 < 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = byte_277C3CAFE[v18];
  }

  v26 = sub_277985AA0(*(*(a3 + 7960) + 192), *(a3 + 10656), a2, a3 + 16, v25, v22, a8, a9, a10, a11, a12);
  v27 = v26;
  if ((*(*(a2 + 8376) + 192) & 8) != 0)
  {
    v28 = *(a2 + 11072) - 5;
  }

  else
  {
    LOBYTE(v28) = 3;
  }

  if (v26)
  {
    v29 = *(*(a2 + 128) + 2) >> v28;
    if (v29 <= 1)
    {
      v29 = 1;
    }

    v30 = (v25 * v22);
    v31 = v26 / v30;
    v32 = log2(v31 / (v29 * v29));
    v45 = 0.0;
    v46 = 0.0;
    sub_277A8B128(v18, &v46, &v45, v31, v32);
    v33 = 0.0;
    if (v46 * v30 >= 0.0)
    {
      v34 = v46 * v30;
    }

    else
    {
      v34 = 0.0;
    }

    v35 = (v34 + 0.5);
    if (v35)
    {
      if (v31 * v45 * v30 >= 0.0)
      {
        v33 = v31 * v45 * v30;
      }

      v36 = v33 + 0.5;
      v37 = v35;
      v38 = (v36 << 7) + ((*(a2 + 16920) * v35 + 256) >> 9);
      v39 = v38 < v27 << 11;
      if (v38 >= v27 << 11)
      {
        v40 = 16 * v27;
      }

      else
      {
        v40 = v36;
      }

      if (v39)
      {
        v41 = v37;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
      v40 = 16 * v27;
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v42 = -1;
  if (v27 < 0xFFFFFFFFLL)
  {
    v42 = v27;
  }

  *(v19 + 4 * v15) = v42;
  if (a6)
  {
    *a6 = v41 == 0;
  }

  if (a7)
  {
    *a7 = 16 * v27;
  }

  *a4 = v41;
  *a5 = v40;
}

uint64_t sub_277B28A48(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_277A8E3DC(a3, a2, 0);
  result = sub_277A3D20C(a1, a3, a5, a4, a2, byte_277C3BD80[a2]);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = *(a3 + 8304);
  v12 = *(a3 + 8296);
  if (v11)
  {
    v11 = *(v11 + 144);
  }

  if (v12)
  {
    v12 = *(v12 + 144);
  }

  v13 = v12 + v11;
  v14 = a3 + 35968;
  if (*(a5 + 32))
  {
    v15 = *(v14 + 8 * v13 + 4);
  }

  else
  {
    v15 = *a5 + *(v14 + 8 * v13);
  }

  *a5 = v15;
  return result;
}

uint64_t sub_277B28B1C()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = v0;
  STACK[0x10028] = *MEMORY[0x277D85DE8];
  v8 = **(v0 + 8280);
  v9 = byte_277C3CAFE[v1];
  v10 = byte_277C3CAE8[v1];
  v11 = *(v0 + 48);
  v12 = *(v0 + 72);
  if ((*(*(v0 + 8376) + 192) & 8) != 0)
  {
    v13 = v2 >> 1;
    sub_277A4CF28(byte_277C3CAE8[v1], byte_277C3CAFE[v1], &STACK[0x8020], v9, v11, v12, v2 >> 1, v9);
    sub_277A4CF28(v10, v9, &v17, v9, v13, v9, v5 >> 1, v9);
  }

  else
  {
    sub_277A4CE08(byte_277C3CAE8[v1], byte_277C3CAFE[v1], &STACK[0x8020], v9, v11, v12, v2, v9);
    sub_277A4CE08(v10, v9, &v17, v9, v3, v9, v5, v9);
  }

  HIBYTE(v16) = -1;
  result = sub_277B28CBC(v7, v6, &STACK[0x8020], &v17, 0, &v16 + 7, &v15);
  *(v8 + 65) = HIBYTE(v16);
  return result;
}

uint64_t sub_277B28CBC(uint64_t a1, unsigned int a2, int16x4_t *a3, int16x4_t *a4, int a5, _BYTE *a6, uint64_t *a7)
{
  v8 = dword_27A722360[8 * a2];
  if ((*(*(a1 + 8376) + 192) & 8) != 0)
  {
    v9 = 2 * *(a1 + 11072) - 16;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v36 = v8;
  v31 = a2;
  if (v8 < 1)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
    v35 = v9;
    v11 = (1 << v9) >> 1;
    v12 = byte_277C3CAE8[a2] * byte_277C3CAFE[a2];
    v13 = v12;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = *&dword_27A722360[8 * a2 + 6] + (a5 << 7);
    v16 = a1 + 33560 + (a2 << 6);
    do
    {
      v17 = sub_2779723B0(a3, a4, *(v15 + 8 * v10), v12);
      if ((*(*(a1 + 8376) + 192) & 8) != 0)
      {
        v18 = *(a1 + 11072) - 5;
      }

      else
      {
        LOBYTE(v18) = 3;
      }

      v19 = (v17 + v11) >> v35;
      if (v19)
      {
        v20 = *(*(a1 + 128) + 2) >> v18;
        if (v20 <= 1)
        {
          v20 = 1;
        }

        v21 = v19 / v13;
        v22 = log2(v21 / (v20 * v20));
        v39 = 0.0;
        v40 = 0.0;
        sub_277A8B128(a2, &v40, &v39, v21, v22);
        v23 = v40 * v13;
        if (v40 * v13 < 0.0)
        {
          v23 = 0.0;
        }

        v24 = (v23 + 0.5);
        v25 = 16 * v19;
        if (v24)
        {
          v26 = v21 * v39 * v13;
          if (v26 < 0.0)
          {
            v26 = 0.0;
          }

          v27 = v26 + 0.5;
          if ((v27 << 7) + ((*(a1 + 16920) * v24 + 256) >> 9) < v19 << 11)
          {
            v25 = v27;
          }

          else
          {
            v24 = 0;
          }
        }

        v28 = v25 << 7;
      }

      else
      {
        v24 = 0;
        v28 = 0;
      }

      v29 = v28 + (((*(v16 + 4 * v10) + v24) * *(a1 + 16920) + 256) >> 9);
      if (v29 < v14)
      {
        *a6 = v10;
        *a7 = v19;
        v14 = v29;
      }

      ++v10;
    }

    while (v36 > v10);
  }

  return v14 - ((*(a1 + 16920) * *(a1 + (v31 << 6) + 4 * *a6 + 33560) + 256) >> 9);
}

uint64_t sub_277B28F44(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, uint64_t *a11, int *a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16)
{
  v18 = a11;
  v386[2] = *MEMORY[0x277D85DE8];
  v331 = a1 + 395884;
  v353 = (a1 + 270312);
  v19 = **(a2 + 8280);
  v20 = v19[2];
  v21 = v19 + 16;
  v22 = v19[16];
  v360 = v19;
  v23 = v19[17];
  if (v23 >= 1)
  {
    if (v23 >= 5u && v22 < 5)
    {
LABEL_10:
      LOBYTE(v22) = v22 + 4 * v23 - 13;
    }

    else
    {
      v25 = 0;
      while (byte_277C3BCCC[v25] != v22 || v23 != byte_277C3BCD5[v25])
      {
        if (++v25 == 9)
        {
          goto LABEL_10;
        }
      }

      LOBYTE(v22) = v25 + 20;
    }
  }

  v26 = byte_277C3CAFE[a4];
  v325 = *a10;
  *(v386 + 7) = 0;
  v27 = *(a9 + 8);
  v385 = *a9;
  v386[0] = 0;
  v384 = v27;
  v363 = v26;
  v28.i64[1] = 0x7FFFFFFFFFFFFFFFLL;
  v381 = xmmword_277C3BC68;
  v382 = unk_277C3BC78;
  v379 = xmmword_277BB7DB0;
  v380 = xmmword_277BB7DB0;
  v377 = unk_277C3BC78;
  v378 = xmmword_277BB7DB0;
  v376 = xmmword_277C3BC68;
  v29 = *(a2 + 126544);
  v342 = v20;
  v315 = v26;
  v30 = 0;
  if (v29 < 1)
  {
    v319 = 1;
  }

  else
  {
    v31 = v20 == 15 || v20 == 23;
    v32 = v31;
    v33 = (a2 + 116320);
    v34 = 1;
    v35 = (a2 + 116304);
    do
    {
      v36 = a2 + 116304 + 160 * v30;
      if (*(v36 + 124) == *(v360 + 5))
      {
        v37 = 0;
        v38 = 1;
        while (1)
        {
          v39 = v38;
          v40 = *(v36 + 120 + v37);
          if (v40 != v21[v37] || *(v36 + 112 + 4 * v37) != *&v360[4 * v37 + 8])
          {
            break;
          }

          v41 = *(*(a2 + 11160) + 36 * v40 + 32);
          v42 = *v360;
          v43 = byte_277C3CAFE[v42];
          v44 = byte_277C3CAE8[v42];
          if (v43 < v44)
          {
            LOBYTE(v44) = v43;
          }

          if (v41 > 1)
          {
            v45 = v32;
          }

          else
          {
            v45 = 0;
          }

          if (v44 <= 7u)
          {
            v45 = 0;
          }

          if (*(v36 + 132 + 4 * v37) != v45)
          {
            break;
          }

          v38 = 0;
          v37 = 1;
          if ((v39 & 1) == 0)
          {
            v28.i64[1] = unk_277BB7DD8;
            v369 = unk_277BB7DD0;
            v20 = v342;
            if ((v342 > 0x18 || ((1 << v342) & 0x1790000) == 0) && ((v311 = *(v36 + 122), v311 > 0x18) || ((1 << v311) & 0x1790000) == 0) || *(v331 + 68))
            {
              DWORD2(v369) = 1;
            }

            if (*(v331 + 108) || (v342 > 0x18 || ((1 << v342) & 0x1790000) == 0) && ((v312 = *(v36 + 122), v312 > 0x18) || ((1 << v312) & 0x1790000) == 0))
            {
              HIDWORD(v369) = 1;
            }

            for (i = 0; i != 4; ++i)
            {
              if (*(&v369 + i))
              {
                *(&v380 + i) = *v35;
                *(&v381 + i) = *v33;
                *(&v378 + i) = v35[12];
                *(&v376 + i) = v33[6];
                *(&v379 + i) = v35[24];
              }

              ++v35;
              ++v33;
            }

            v319 = !v34;
            goto LABEL_49;
          }
        }
      }

      ++v30;
      v35 += 40;
      v33 += 20;
      v34 = v30 < v29;
    }

    while (v30 != v29);
    LODWORD(v30) = 0;
    v319 = 1;
    v20 = v342;
  }

LABEL_49:
  v361 = (a2 + 16904);
  v47 = *a5;
  *a11 = 0x7FFFFFFFFFFFFFFFLL;
  v362 = 50462976;
  v48 = *v353;
  v49 = *(*v353 + 48) != 1 || *(v331 + 72) == 2;
  v50 = 0;
  v51 = 0;
  v52 = 1;
  do
  {
    v53 = v52;
    if ((v49 & ~v52 & 1) == 0)
    {
      v54 = byte_277C3CAE8[a4];
      if (v26 < v54)
      {
        v54 = v26;
      }

      if (v54 >= 8)
      {
        *(&v362 + v50++) = v51;
      }
    }

    v52 = 0;
    v51 = 1;
  }

  while ((v53 & 1) != 0);
  if (a6)
  {
    if (*(a2 + 153152) <= *(v331 + 56))
    {
      v56 = 0;
      v55 = v353;
    }

    else
    {
      v55 = v353;
      v56 = v353[1780];
    }

    v57 = 0;
    LOBYTE(v369) = v56 & 1;
    BYTE1(v369) = v55[1779];
    if (v26 >= byte_277C3CAE8[a4])
    {
      v58 = byte_277C3CAE8[a4];
    }

    else
    {
      v58 = v26;
    }

    v59 = 2;
    do
    {
      v60 = v57;
      if (v57 & 1 | (v58 < 8))
      {
        if ((v57 & (v58 > 7u)) == 1)
        {
          goto LABEL_71;
        }
      }

      else if (dword_27A722360[8 * a4] > 0)
      {
LABEL_71:
        if (*(&v369 + v59 - 2))
        {
          *(&v362 + v50++) = v59;
        }
      }

      v57 = 1;
      v59 = 3;
    }

    while ((v60 & 1) == 0);
  }

  v61 = *(a2 + 8304);
  v62 = *(a2 + 8296);
  if (v61)
  {
    if (*(v61 + 17) < 1)
    {
      if (*(v61 + 16) == 7)
      {
        v63 = 3;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = HIBYTE(*(v61 + 167)) & 1;
    }
  }

  else
  {
    v63 = 0;
  }

  v64 = a12;
  if (v62)
  {
    if (*(v62 + 17) < 1)
    {
      if (*(v62 + 16) == 7)
      {
        v65 = 3;
      }

      else
      {
        v65 = 0;
      }
    }

    else
    {
      v65 = HIBYTE(*(v62 + 167)) & 1;
    }
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  if (v66 >= 5)
  {
    v66 = 5;
  }

  v67 = *v21;
  if ((v67 - 1) > 7 || (v68 = *(a1 + 4 * (v67 - 1) + 245856), v68 == -1))
  {
    v69 = 0;
  }

  else
  {
    v69 = *(a1 + 8 * v68 + 246032);
  }

  v70 = v360[17];
  if ((v70 - 1) > 7 || (v71 = *(a1 + 4 * (v70 - 1) + 245856), v71 == -1))
  {
    v72 = 0;
    if (!v69)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v72 = *(a1 + 8 * v71 + 246032);
  if (v69)
  {
LABEL_99:
    LODWORD(v69) = *(v69 + 4);
  }

LABEL_100:
  if (v72)
  {
    LODWORD(v72) = *(v72 + 4);
  }

  if (*(v48 + 40))
  {
    v73 = *(*(a1 + 245848) + 4);
    v74 = *(v48 + 44);
    v75 = v72 - v73;
    v76 = 1 << v74;
    v77 = (1 << v74) - 1;
    v78 = (v77 & v75) - ((1 << v74) & v75);
    v79 = (v77 & (v73 - v69)) - (v76 & (v73 - v69));
    if (!v61)
    {
LABEL_108:
      if (v62)
      {
        goto LABEL_109;
      }

      goto LABEL_114;
    }
  }

  else
  {
    v78 = 0;
    v79 = 0;
    if (!v61)
    {
      goto LABEL_108;
    }
  }

  if (*(v61 + 17) >= 1)
  {
    v61 = (*(v61 + 167) >> 9) & 1;
    goto LABEL_108;
  }

  v61 = *(v61 + 16) == 7;
  if (v62)
  {
LABEL_109:
    if (*(v62 + 17) < 1)
    {
      v62 = *(v62 + 16) == 7;
    }

    else
    {
      v62 = (*(v62 + 167) >> 9) & 1;
    }
  }

LABEL_114:
  if (v78 < 0)
  {
    v78 = -v78;
  }

  if (v79 < 0)
  {
    v79 = -v79;
  }

  v31 = v78 == v79;
  v80 = 3;
  if (!v31)
  {
    v80 = 0;
  }

  v81 = v61 + v62 + v80;
  if (a6)
  {
    v28.i64[0] = *(a2 + 8 * v66 + 35288);
  }

  else
  {
    v28 = 0uLL;
  }

  v82.i64[0] = *(a2 + 8 * v81 + 35240);
  v82.i64[1] = *(a2 + 8 * a4 + 33384);
  v83.i64[0] = vrev64q_s32(v82).u64[0];
  v83.i64[1] = v82.i64[1];
  v383 = vaddq_s32(v83, vzip1q_s32(v28, v28));
  v84 = v360;
  if ((v319 & 1) == 0 && *(v331 + 100))
  {
    v85 = a2 + 160 * v30;
    v86 = *(v85 + 116459);
    v87 = *(&v380 + *(v85 + 116459));
    if (v87 == 0x7FFFFFFF)
    {
      return 0;
    }

    v360[83] = v86;
    *(v360 + 167) = ((v86 > 1) << 8) | ((v86 != 1) << 9) | *(v360 + 167) & 0xFCFF;
    *(v360 + 72) = *(v85 + 116448);
    result = *(&v379 + v86);
    *a11 = ((v361[4] * (result + v87 + *a10) + 256) >> 9) + (*(&v381 + v86) << 7);
    *(v360 + 2) = *a5;
    *(v360 + 3) = *(a5 + 1);
    return result;
  }

  if (v362)
  {
    v89 = *(a8 + 24);
    *(a2 + 448) = *a8;
    *(a2 + 472) = v89;
  }

  if (v50 < 1)
  {
    v286 = 0;
    v285 = 0;
    result = 0;
    v287 = 512;
    goto LABEL_385;
  }

  v324 = 0;
  v317 = 0;
  v318 = 0;
  v329 = a3 + 1326;
  v354 = a1 + 395824;
  v344 = a2 + 33560;
  v327 = v50;
  v328 = v22;
  v90 = 0;
  v345 = &byte_277C3BCDE[4 * a4];
  v313 = 1;
  v322 = v21;
  v323 = 0x7FFFFFFFFFFFFFFFLL;
  v321 = v22;
  do
  {
    v91 = *(&v362 + v90);
    if (v329[v328])
    {
      v92 = 0;
    }

    else
    {
      v92 = v91 == 2;
    }

    if (!v92)
    {
      v326 = v90;
      v93 = *a10;
      v94 = a13;
      if (a13 >= *v18)
      {
        v94 = *v18;
      }

      v84[83] = v91;
      *(v84 + 167) = ((v91 > 1) << 8) | ((v91 != 1) << 9) | *(v84 + 167) & 0xFCFF;
      v95 = v383.i32[v91];
      v96 = *v64;
      v97 = v361[4];
      v98 = (v97 * (*v64 + v95) + 256) >> 9;
      a13 = v94;
      if (v98 >= v94)
      {
        goto LABEL_376;
      }

      v99 = v95;
      v100 = *(v331 + 108);
      v355 = v383.i32[v91];
      if (v100 == 3)
      {
        v101 = a4;
        v102 = a1;
        if (v91 >= 2)
        {
          if (v91 != 2)
          {
            goto LABEL_249;
          }

          goto LABEL_166;
        }
      }

      else
      {
        if (v100)
        {
          v103 = 0;
        }

        else
        {
          v103 = v91 == 3;
        }

        v104 = v103;
        v101 = a4;
        v102 = a1;
        if (v91 >= 2)
        {
          if (v91 != 2)
          {
            if (v104)
            {
              v172 = v95 + 512;
              v173 = a3[1325];
              if (v173 == -1)
              {
                v241 = 0;
                v356 = 0;
                v242 = 1;
                v243 = 38;
                v244 = 0x7FFFFFFFFFFFFFFFLL;
                do
                {
                  v245 = v242;
                  v93 = *a10;
                  v84[82] = v241;
                  if (v20 <= 0x18 && ((1 << v20) & 0x1790000) != 0)
                  {
                    memset(*(a2 + 11184), v243, 0x8000uLL);
                    v93 = sub_277A517B8();
                  }

                  sub_2779CCAB4();
                  *&v371 = 0;
                  v369 = 0u;
                  v370 = 0u;
                  v250 = *(v354 + 8 * (*(*v353 + 63) != 0));
                  if (v250)
                  {
                    v251 = *(a2 + 436);
                    v252 = *(a2 + 440);
                    v253 = v345[2 * v251 + v252];
                    v254 = byte_277C3CAE8[v253];
                    v255 = *(a2 + 8352);
                    if (v255 < 0)
                    {
                      v254 = ((v255 >> (v252 + 3)) + v254) & ~(((v255 >> (v252 + 3)) + v254) >> 31);
                    }

                    v256 = byte_277C3CAFE[v253];
                    v257 = *(a2 + 8344);
                    if (v257 < 0)
                    {
                      v256 = ((v257 >> (v251 + 3)) + v256) & ~(((v257 >> (v251 + 3)) + v256) >> 31);
                    }

                    v258 = *a10;
                    v259 = sub_277985AA0(*(*(a2 + 8376) + 192), *(a2 + 11072), a2, a2 + 432, v256, v254, 0.0, v246, v247, v248, v249);
                    if ((*(a2 + 153152) << (byte_277C3BCB6[a4] + 7)) < a14 && *v361 >= dword_277C3BD50[v250])
                    {
                      v260 = 4 * dword_277C3BD38[v250];
                    }

                    else
                    {
                      v260 = 4;
                    }

                    if (a14 != 0x7FFFFFFFFFFFFFFFLL && (v260 * a14 * dword_277C3BD68[v250]) >> 6 < ((v361[4] * (v258 + v172) + 256) >> 9) + (v259 << 11))
                    {
                      goto LABEL_318;
                    }
                  }

                  if (sub_277B28A48(a1, a4, a2, a13, &v369) == 0x7FFFFFFFFFFFFFFFLL)
                  {
LABEL_318:
                    v20 = v342;
                    v84 = v360;
                  }

                  else
                  {
                    v20 = v342;
                    v84 = v360;
                    if ((((v369 + (v93 + v172)) * v361[4] + 256) >> 9) + (*(&v369 + 1) << 7) < v244)
                    {
                      v356 = v360[82];
                      v16 = *(v360 + 1);
                      v244 = (((v369 + (v93 + v172)) * v361[4] + 256) >> 9) + (*(&v369 + 1) << 7);
                    }
                  }

                  v242 = 0;
                  v241 = 1;
                  v243 = 26;
                }

                while ((v245 & 1) != 0);
                if (v20 == 24)
                {
                  a3[1325] = v356;
                }

                v64 = a12;
                v148 = v244;
                v175 = v356;
              }

              else
              {
                v84[82] = v173;
                if (v173)
                {
                  v174 = 26;
                }

                else
                {
                  v174 = 38;
                }

                memset(*(a2 + 11184), v174, 0x8000uLL);
                if (v20 <= 0x18 && ((1 << v20) & 0x1790000) != 0)
                {
                  v93 = sub_277A517B8();
                }

                v175 = v360[82];
                v16 = *(v360 + 1);
                sub_2779CCAB4();
                *&v371 = 0;
                v369 = 0u;
                v370 = 0u;
                v180 = *(v354 + 8 * (*(*v353 + 63) != 0));
                if (!v180)
                {
                  goto LABEL_366;
                }

                v181 = *(a2 + 436);
                v182 = *(a2 + 440);
                v183 = v345[2 * v181 + v182];
                v184 = byte_277C3CAE8[v183];
                v185 = *(a2 + 8352);
                if (v185 < 0)
                {
                  v184 = ((v185 >> (v182 + 3)) + v184) & ~(((v185 >> (v182 + 3)) + v184) >> 31);
                }

                v186 = byte_277C3CAFE[v183];
                v187 = *(a2 + 8344);
                if (v187 < 0)
                {
                  v186 = ((v187 >> (v181 + 3)) + v186) & ~(((v187 >> (v181 + 3)) + v186) >> 31);
                }

                v188 = *a10;
                v189 = sub_277985AA0(*(*(a2 + 8376) + 192), *(a2 + 11072), a2, a2 + 432, v186, v184, 0.0, v176, v177, v178, v179);
                if ((*(a2 + 153152) << (byte_277C3BCB6[a4] + 7)) < a14 && *v361 >= dword_277C3BD50[v180])
                {
                  v190 = 4 * dword_277C3BD38[v180];
                }

                else
                {
                  v190 = 4;
                }

                v282 = 0x7FFFFFFFFFFFFFFFLL;
                if (a14 == 0x7FFFFFFFFFFFFFFFLL || (v190 * a14 * dword_277C3BD68[v180]) >> 6 >= ((v361[4] * (v188 + v172) + 256) >> 9) + (v189 << 11))
                {
LABEL_366:
                  v283 = sub_277B28A48(a1, a4, a2, a13, &v369);
                  v282 = 0x7FFFFFFFFFFFFFFFLL;
                  if (v283 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v282 = (((v369 + (v93 + v172)) * v361[4] + 256) >> 9) + (*(&v369 + 1) << 7);
                  }
                }

                v64 = a12;
                v84 = v360;
                v148 = v282;
              }

              v84[82] = v175;
              *(v84 + 1) = v16;
              v149 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_370:
              if (v148 < *a11)
              {
                *a11 = v148;
                v386[0] = *(v84 + 9);
                *(v386 + 7) = *(v84 + 79);
                v317 = *(v84 + 21);
                v318 = v84[83];
                if (v20 <= 0x18 && ((1 << v20) & 0x1790000) != 0)
                {
                  v47 = *(v84 + 1);
                }

                else
                {
                  v93 = v325;
                }

                goto LABEL_375;
              }

LABEL_374:
              LODWORD(v172) = v324;
              v93 = v325;
              v149 = v323;
LABEL_375:
              *(v84 + 2) = *a5;
              *(v84 + 3) = *(a5 + 1);
              v324 = v172;
              v325 = v93;
              v323 = v149;
              LOBYTE(v22) = v321;
              v21 = v322;
              v18 = a11;
LABEL_376:
              v90 = v326;
              goto LABEL_377;
            }

LABEL_249:
            v191 = *v18;
            if (*v18 != 0x7FFFFFFFFFFFFFFFLL && v191 / dword_277C3BC94[*(v331 + 4)] * dword_277C3BC88[*(v331 + 4)] >= v94)
            {
              goto LABEL_374;
            }

            v192 = v93;
            if (v191 >= a16)
            {
              v191 = a16;
            }

            v346 = v191;
            v340 = *a10;
            v193 = *(a9 + 24);
            v349 = *(a9 + 16);
            v194 = **(a2 + 8280);
            v195 = v194[83];
            if (v313)
            {
              v196 = byte_277C3CAE8[a4];
              sub_2779CDD54(a2 + 416, a4, 0);
              sub_2779CDD54(a2 + 416, a4, 1u);
              v197 = *(a2 + 48);
              v198 = *(a2 + 72);
              v199 = v384;
              if ((*(*(a2 + 8376) + 192) & 8) != 0)
              {
                v200 = v384 >> 1;
                sub_277A4CF28(v196, v315, v349, v315, v197, v198, v384 >> 1, v315);
                v352 = v385;
                sub_277A4CF28(v196, v315, v193, v315, v200, v315, v385 >> 1, v315);
              }

              else
              {
                sub_277A4CE08(v196, v315, v349, v315, v197, v198, v384, v315);
                v352 = v385;
                sub_277A4CE08(v196, v315, v193, v315, v199, v315, v385, v315);
              }

              v20 = v342;
            }

            else
            {
              v352 = v385;
            }

            v367 = 0;
            v365 = 0;
            if (v195 == 2)
            {
              LODWORD(v369) = 0;
              v201 = v195;
              if ((*(*(a2 + 8376) + 192) & 8) != 0)
              {
                v204 = (v352 >> 1);
                v202 = v363;
                v203 = (v384 >> 1);
              }

              else
              {
                v202 = v363;
                v203 = v384;
                v204 = v352;
              }

              (*(*v102 + (a4 << 7) + 51464))(v204, v202, v203, v202, &v369);
              v205 = (v369 + (1 << byte_277C3BCB6[a4] >> 1)) >> byte_277C3BCB6[a4];
              v64 = a12;
              v93 = v192;
              v84 = v360;
              v206 = v355;
              if (v205 < 8 || (v20 > 0x18 || ((1 << v20) & 0x1390000) == 0) && v20 != 22 && v205 <= 0x3F)
              {
                v149 = 0x7FFFFFFFFFFFFFFFLL;
                v148 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_362:
                v313 = 0;
                LODWORD(v172) = v206;
                goto LABEL_370;
              }

              v195 = v201;
            }

            v364 = -1;
            v338 = v195;
            v207 = v384;
            v208 = (*(&off_28866F0E0 + v195 - 2))(v102, a2, a4, v352, v384, v349, v193, &v364);
            if (v194[83] == 2)
            {
              v209 = *v194;
              v210 = v353;
              v93 = v192;
              v211 = v355;
              if (dword_27A722360[8 * v209] < 1)
              {
                v212 = 0;
              }

              else
              {
                v212 = *(v344 + (v209 << 6) + 4 * v194[80]) + 512;
              }

              v64 = a12;
              v84 = v360;
            }

            else
            {
              v212 = 512;
              v210 = v353;
              v64 = a12;
              v93 = v192;
              v84 = v360;
              v211 = v355;
            }

            v206 = v212 + v211;
            v261 = v361[4];
            if (v346 >= (v261 * (v206 + v96) + 256) >> 9)
            {
              v263 = v206 + v340;
              v264 = v261 * (v206 + v340) + 256;
              v265 = *(v354 + 8 * (*(*v210 + 63) != 0));
              if (!v265 || ((*(a2 + 153152) << (byte_277C3BCB6[a4] + 7)) < a14 && *v361 >= dword_277C3BD50[v265] ? (v266 = 4 * dword_277C3BD38[v265]) : (v266 = 4), (v149 = 0x7FFFFFFFFFFFFFFFLL, a14 == 0x7FFFFFFFFFFFFFFFLL) || (v262 = 0x7FFFFFFFFFFFFFFFLL, (v266 * a14 * dword_277C3BD68[v265]) >> 6 >= (v264 >> 9) + (v364 << 11))))
              {
                v267 = *(&v380 + v338);
                if (v267 == 0x7FFFFFFF)
                {
                  v357 = v206;
                  if (v342 <= 0x18 && ((1 << v342) & 0x1790000) != 0 && v338 == 2 && !*(v331 + 68))
                  {
                    v268 = a4;
                    v284 = sub_277A517B8();
                    sub_2779CCAB4();
                    v274 = 0;
                    v93 = v284;
                    v263 = v284 + v357;
                  }

                  else
                  {
                    v268 = a4;
                    sub_2779CDF94(a2 + 416, a4, v352, v363, v207, v363);
                    v274 = 1;
                    v93 = v340;
                  }

                  v368 = 0;
                  v366 = 0;
                  sub_277B28820(v268, a2, a2 + 416, &v368, &v366, &v367, &v365, v269, v270, v271, v272, v273);
                  v275 = v368;
                  v276 = (v361[4] * (v263 + v368) + 256) >> 9;
                  v277 = v366;
                  v149 = v276 + (v366 << 7);
                  if ((v274 & 1) == 0)
                  {
                    v278 = v208 + (v264 >> 9);
                    if (v149 >= v278)
                    {
                      *(v194 + 2) = *a5;
                      *(v194 + 3) = *(a5 + 1);
                      sub_2779CDF94(a2 + 416, a4, v352, v363, v207, v363);
                      v93 = v340;
                      v149 = v278;
                    }
                  }

                  v279 = 0x7FFFFFFFFFFFFFFFLL;
                  if (*v331 && v149 > v323)
                  {
                    v262 = 0x7FFFFFFFFFFFFFFFLL;
                    v149 = 0x7FFFFFFFFFFFFFFFLL;
                    v64 = a12;
                    v84 = v360;
                    v206 = v357;
                  }

                  else
                  {
                    *&v371 = 0;
                    v369 = 0u;
                    v370 = 0u;
                    v280 = sub_277B28A48(a1, a4, a2, v346 - ((v361[4] * (v93 + v357) + 256) >> 9), &v369);
                    v206 = v357;
                    if (v280 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v281 = *(&v369 + 1);
                      v279 = ((v361[4] * (v369 + v93 + v357) + 256) >> 9) + (*(&v369 + 1) << 7);
                      *(&v380 + v338) = v369;
                      *(&v381 + v338) = v281;
                      *(&v378 + v338) = v275;
                      *(&v376 + v338) = v277;
                      *(&v379 + v338) = v357;
                    }

                    v262 = v279;
                    v64 = a12;
                    v84 = v360;
                  }
                }

                else
                {
                  v262 = (*(&v381 + v338) << 7) + ((v261 * (v267 + v263) + 256) >> 9);
                  v149 = (((*(&v378 + v338) + v263) * v261 + 256) >> 9) + (*(&v376 + v338) << 7);
                  v93 = v340;
                }
              }
            }

            else
            {
              v149 = 0x7FFFFFFFFFFFFFFFLL;
              v262 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v20 = v342;
            v148 = v262;
            goto LABEL_362;
          }

LABEL_166:
          v351 = 0;
          if (v20 <= 0x18 && ((1 << v20) & 0x1790000) != 0)
          {
            v351 = *(v331 + 68) == 0;
          }

          v122 = *(v84 + 1);
          v333 = *a10;
          v330 = dword_27A722360[8 * a4];
          v123 = a3[1323];
          if (v123 == -1 && !v351)
          {
            sub_2779CDD54(a2 + 416, v101, 0);
            sub_2779CDD54(a2 + 416, v101, 1u);
            v95 = v355;
            v84 = v360;
            v64 = a12;
          }

          v348 = 0x7FFFFFFFFFFFFFFFLL;
          v314 = v123;
          if (v330 >= 1 && v123 == -1)
          {
            v335 = 0;
            v332 = 0;
            v334 = 0;
            v124 = 0;
            v339 = v385;
            v337 = v363;
            v348 = 0x7FFFFFFFFFFFFFFFLL;
            v336 = v384;
            do
            {
              v125 = 0;
              v126 = 1;
              do
              {
                v127 = v126;
                v93 = *a10;
                v84[80] = v124;
                v84[81] = v125;
                if (v84[83] == 2)
                {
                  v128 = *v84;
                  if (dword_27A722360[8 * v128] < 1)
                  {
                    v129 = 0;
                  }

                  else
                  {
                    v129 = *(v344 + (v128 << 6) + 4 * v124) + 512;
                  }
                }

                else
                {
                  v129 = 512;
                }

                v130 = v129 + v95;
                if (a13 / 2 > ((*v64 + (v129 + v95)) * v361[4] + 256) >> 9)
                {
                  if (v351)
                  {
                    v93 = sub_277A517B8();
                    sub_2779CCAB4();
                  }

                  else
                  {
                    sub_2779CDF94(a2 + 416, v101, v339, v337, v336, v337);
                  }

                  *&v371 = 0;
                  v369 = 0u;
                  v370 = 0u;
                  v135 = *(v354 + 8 * (*(*v353 + 63) != 0));
                  if (!v135)
                  {
                    goto LABEL_197;
                  }

                  v136 = *(a2 + 436);
                  v137 = *(a2 + 440);
                  v138 = v345[2 * v136 + v137];
                  v139 = byte_277C3CAE8[v138];
                  v140 = *(a2 + 8352);
                  if (v140 < 0)
                  {
                    v139 = ((v140 >> (v137 + 3)) + v139) & ~(((v140 >> (v137 + 3)) + v139) >> 31);
                  }

                  v141 = byte_277C3CAFE[v138];
                  v142 = *(a2 + 8344);
                  if (v142 < 0)
                  {
                    v141 = ((v142 >> (v136 + 3)) + v141) & ~(((v142 >> (v136 + 3)) + v141) >> 31);
                  }

                  v143 = *a10;
                  v144 = sub_277985AA0(*(*(a2 + 8376) + 192), *(a2 + 11072), a2, a2 + 432, v141, v139, 0.0, v131, v132, v133, v134);
                  if ((*(a2 + 153152) << (byte_277C3BCB6[a4] + 7)) < a14 && *v361 >= dword_277C3BD50[v135])
                  {
                    v145 = 4 * dword_277C3BD38[v135];
                  }

                  else
                  {
                    v145 = 4;
                  }

                  if (a14 == 0x7FFFFFFFFFFFFFFFLL || (v145 * a14 * dword_277C3BD68[v135]) >> 6 >= ((v361[4] * (v143 + v130) + 256) >> 9) + (v144 << 11))
                  {
LABEL_197:
                    if (v348 >= a13)
                    {
                      v146 = a13;
                    }

                    else
                    {
                      v146 = v348;
                    }

                    v101 = a4;
                    if (sub_277B28A48(a1, a4, a2, v146, &v369) == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v64 = a12;
                      v84 = v360;
                      v95 = v355;
                      v102 = a1;
                    }

                    else
                    {
                      v64 = a12;
                      v84 = v360;
                      v95 = v355;
                      v102 = a1;
                      if ((((v369 + (v93 + v130)) * v361[4] + 256) >> 9) + (*(&v369 + 1) << 7) < v348)
                      {
                        v332 = v125;
                        v333 = v93;
                        v122 = *(v360 + 1);
                        v334 = v130;
                        v335 = v124;
                        v348 = (((v369 + (v93 + v130)) * v361[4] + 256) >> 9) + (*(&v369 + 1) << 7);
                      }
                    }
                  }

                  else
                  {
                    v101 = a4;
                    v95 = v355;
                    v102 = a1;
                    v64 = a12;
                    v84 = v360;
                  }
                }

                v126 = 0;
                v125 = 1;
              }

              while ((v127 & 1) != 0);
              if (v124 == 7 && *(v331 + 116))
              {
                if (v335 > 3)
                {
                  break;
                }

                v124 = dword_277BB7DC0[v335];
                v330 = v124 + 3;
              }

              ++v124;
            }

            while (v124 < v330);
          }

          else
          {
            v332 = 0;
            v334 = 0;
            v335 = 0;
          }

          if (v314 == -1)
          {
            v20 = v342;
            if (v342 != 24 && !*(v331 + 112))
            {
              LODWORD(v172) = v334;
              v148 = v348;
              LOBYTE(v168) = v332;
              v93 = v333;
              LOBYTE(v167) = v335;
LABEL_301:
              v84[80] = v167;
              v84[81] = v168;
              v149 = 0x7FFFFFFFFFFFFFFFLL;
              *(v84 + 1) = v122;
              goto LABEL_370;
            }

            LOBYTE(v167) = v335;
            a3[1323] = v335;
            LOBYTE(v168) = v332;
            v93 = v333;
            a3[1324] = v332;
            LODWORD(v172) = v334;
          }

          else
          {
            v167 = a3[1323];
            v84[80] = v167;
            v168 = a3[1324];
            v84[81] = v168;
            v20 = v342;
            if (v351)
            {
              v169 = sub_277A517B8();
              v84 = v360;
              v93 = v169;
              v95 = v355;
              v167 = a3[1323];
              v168 = a3[1324];
            }

            v122 = *(v84 + 1);
            if (v84[83] == 2)
            {
              v170 = *v84;
              if (dword_27A722360[8 * v170] < 1)
              {
                v171 = 0;
              }

              else
              {
                v171 = *(v344 + (v170 << 6) + 4 * v84[80]) + 512;
              }
            }

            else
            {
              v171 = 512;
            }

            LODWORD(v172) = v171 + v95;
            sub_2779CCAB4();
            v218 = *(v354 + 8 * (*(*v353 + 63) != 0));
            if (!v218)
            {
              goto LABEL_300;
            }

            v219 = *(a2 + 436);
            v220 = *(a2 + 440);
            v221 = v345[2 * v219 + v220];
            v222 = byte_277C3CAE8[v221];
            v223 = *(a2 + 8352);
            if (v223 < 0)
            {
              v222 = ((v223 >> (v220 + 3)) + v222) & ~(((v223 >> (v220 + 3)) + v222) >> 31);
            }

            v224 = byte_277C3CAFE[v221];
            v225 = *(a2 + 8344);
            if (v225 < 0)
            {
              v224 = ((v225 >> (v219 + 3)) + v224) & ~(((v225 >> (v219 + 3)) + v224) >> 31);
            }

            v226 = *a10;
            v227 = sub_277985AA0(*(*(a2 + 8376) + 192), *(a2 + 11072), a2, a2 + 432, v224, v222, v213, v214, v215, v216, v217);
            if ((*(a2 + 153152) << (byte_277C3BCB6[a4] + 7)) < a14 && *v361 >= dword_277C3BD50[v218])
            {
              v228 = 4 * dword_277C3BD38[v218];
            }

            else
            {
              v228 = 4;
            }

            if (a14 == 0x7FFFFFFFFFFFFFFFLL || (v228 * a14 * dword_277C3BD68[v218]) >> 6 >= ((v361[4] * (v226 + v172) + 256) >> 9) + (v227 << 11))
            {
LABEL_300:
              *&v371 = 0;
              v369 = 0u;
              v370 = 0u;
              sub_277B28A48(v102, v101, a2, 0x7FFFFFFFFFFFFFFFLL, &v369);
              v148 = (((v369 + (v172 + v93)) * v361[4] + 256) >> 9) + (*(&v369 + 1) << 7);
              v64 = a12;
              v84 = v360;
              goto LABEL_301;
            }

            v64 = a12;
            v84 = v360;
          }

          v148 = v348;
          goto LABEL_301;
        }

        if (v100 != 2 || v20 == 24)
        {
          if (v20 <= 0x18 && ((1 << v20) & 0x1390000) != 0 || v20 == 22)
          {
            v375 = 0;
            v373 = 0u;
            memset(v374, 0, sizeof(v374));
            v371 = 0u;
            v372 = 0u;
            v369 = 0u;
            v370 = 0u;
            sub_27798E17C(a1 + 245616, v84, v374 + 2, v374 + 3, v374 + 1, 1);
            memset(*(a2 + 11184), 4 * BYTE8(v374[0]), 0x8000uLL);
            v93 = sub_277A517B8();
            v150 = v353;
          }

          else
          {
            v93 = *a10;
            v150 = v353;
          }

          sub_2779CCAB4();
          if (!v91)
          {
            *a15 = 1;
          }

          v156 = *(v354 + 8 * (*(*v150 + 63) != 0));
          if (!v156)
          {
            goto LABEL_331;
          }

          v157 = *(a2 + 436);
          v158 = *(a2 + 440);
          v159 = v345[2 * v157 + v158];
          v160 = byte_277C3CAE8[v159];
          v161 = *(a2 + 8352);
          if (v161 < 0)
          {
            v160 = ((v161 >> (v158 + 3)) + v160) & ~(((v161 >> (v158 + 3)) + v160) >> 31);
          }

          v162 = byte_277C3CAFE[v159];
          v163 = *(a2 + 8344);
          if (v163 < 0)
          {
            v162 = ((v163 >> (v157 + 3)) + v162) & ~(((v163 >> (v157 + 3)) + v162) >> 31);
          }

          v164 = *a10;
          v165 = sub_277985AA0(*(*(a2 + 8376) + 192), *(a2 + 11072), a2, a2 + 432, v162, v160, v151, v152, v153, v154, v155);
          if ((*(a2 + 153152) << (byte_277C3BCB6[a4] + 7)) < a14 && *v361 >= dword_277C3BD50[v156])
          {
            v166 = 4 * dword_277C3BD38[v156];
          }

          else
          {
            v166 = 4;
          }

          v149 = 0x7FFFFFFFFFFFFFFFLL;
          if (a14 == 0x7FFFFFFFFFFFFFFFLL || (v166 * a14 * dword_277C3BD68[v156]) >> 6 >= ((v361[4] * (v164 + v99) + 256) >> 9) + (v165 << 11))
          {
LABEL_331:
            *&v371 = 0;
            v369 = 0u;
            v370 = 0u;
            v149 = 0x7FFFFFFFFFFFFFFFLL;
            sub_277B28A48(a1, a4, a2, 0x7FFFFFFFFFFFFFFFLL, &v369);
            v95 = v355;
            v148 = (((v369 + (v93 + v355)) * v361[4] + 256) >> 9) + (*(&v369 + 1) << 7);
            v20 = v342;
            v64 = a12;
            v84 = v360;
            if (v91)
            {
              goto LABEL_294;
            }

            goto LABEL_293;
          }

          v148 = 0x7FFFFFFFFFFFFFFFLL;
          v20 = v342;
          v64 = a12;
          goto LABEL_292;
        }
      }

      LODWORD(v364) = 0;
      LOBYTE(v368) = 0;
      v365 = 0;
      v366 = 0;
      v105 = *(&v380 + v91);
      if (v105 != 0x7FFFFFFF)
      {
        v147 = *a10 + v95;
        v148 = ((v97 * (v147 + v105) + 256) >> 9) + (*(&v381 + v91) << 7);
        v149 = (((*(&v378 + v91) + v147) * v97 + 256) >> 9) + (*(&v376 + v91) << 7);
        if (!v91)
        {
          goto LABEL_293;
        }

        goto LABEL_294;
      }

      v350 = v93;
      sub_2779CCAB4();
      if (!v91)
      {
        *a15 = 1;
      }

      *&v371 = 0;
      v369 = 0u;
      v370 = 0u;
      if (*v18 >= a16)
      {
        v110 = a16;
      }

      else
      {
        v110 = *v18;
      }

      v111 = *(v354 + 8 * (*(*v353 + 63) != 0));
      if (!v111)
      {
        goto LABEL_289;
      }

      v112 = *(a2 + 436);
      v113 = *(a2 + 440);
      v114 = v345[2 * v112 + v113];
      v115 = byte_277C3CAE8[v114];
      v116 = *(a2 + 8352);
      if (v116 < 0)
      {
        v115 = ((v116 >> (v113 + 3)) + v115) & ~(((v116 >> (v113 + 3)) + v115) >> 31);
      }

      v117 = byte_277C3CAFE[v114];
      v118 = *(a2 + 8344);
      if (v118 < 0)
      {
        v117 = ((v118 >> (v112 + 3)) + v117) & ~(((v118 >> (v112 + 3)) + v117) >> 31);
      }

      v119 = *a10;
      v120 = sub_277985AA0(*(*(a2 + 8376) + 192), *(a2 + 11072), a2, a2 + 432, v117, v115, 0.0, v106, v107, v108, v109);
      if ((*(a2 + 153152) << (byte_277C3BCB6[a4] + 7)) < a14 && *v361 >= dword_277C3BD50[v111])
      {
        v121 = 4 * dword_277C3BD38[v111];
      }

      else
      {
        v121 = 4;
      }

      v149 = 0x7FFFFFFFFFFFFFFFLL;
      if (a14 == 0x7FFFFFFFFFFFFFFFLL || (v148 = 0x7FFFFFFFFFFFFFFFLL, (v121 * a14 * dword_277C3BD68[v111]) >> 6 >= ((v361[4] * (v119 + v99) + 256) >> 9) + (v120 << 11)))
      {
LABEL_289:
        v229 = sub_277B28A48(a1, v101, a2, v110 - v98, &v369);
        v149 = 0x7FFFFFFFFFFFFFFFLL;
        v148 = 0x7FFFFFFFFFFFFFFFLL;
        if (v229 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v235 = v369;
          v236 = *(&v369 + 1);
          v237 = ((v361[4] * (*a10 + v369 + v355) + 256) >> 9) + (*(&v369 + 1) << 7);
          sub_277B28820(v101, a2, a2 + 416, &v364, &v366, &v368, &v365, v230, v231, v232, v233, v234);
          v238 = v364;
          v239 = v366;
          v149 = ((v361[4] * (*a10 + v364 + v355) + 256) >> 9) + (v366 << 7);
          *(&v380 + v91) = v235;
          *(&v381 + v91) = v236;
          *(&v378 + v91) = v238;
          *(&v376 + v91) = v239;
          *(&v379 + v91) = v355;
          v148 = v237;
        }
      }

      v20 = v342;
      v64 = a12;
      v93 = v350;
LABEL_292:
      v84 = v360;
      v95 = v355;
      if (!v91)
      {
LABEL_293:
        v240 = *(a8 + 24);
        *(a2 + 448) = *a8;
        *(a2 + 472) = v240;
      }

LABEL_294:
      LODWORD(v172) = v95;
      goto LABEL_370;
    }

LABEL_377:
    ++v90;
  }

  while (v90 != v327);
  v285 = v317;
  v286 = v318;
  v287 = ((v318 > 1u) << 8) | ((v318 != 1) << 9);
  result = v324;
LABEL_385:
  *(v84 + 9) = v386[0];
  v288 = v84 + 72;
  *(v84 + 167) = v287 | *(v84 + 167) & 0xFCFF;
  *(v84 + 79) = *(v386 + 7);
  v84[83] = v286;
  *(v84 + 21) = v285;
  if (v20 <= 0x18 && ((1 << v20) & 0x1790000) != 0)
  {
    *(v84 + 1) = v47;
    *v64 += v325 - *a10;
    *a10 = v325;
    if (v20 == 24)
    {
      a3[v22 + 1326] = v286;
    }
  }

  v289 = *(a7 + 24);
  *(a2 + 448) = *a7;
  *(a2 + 472) = v289;
  if (v319)
  {
    v290 = *(a2 + 126544);
    if (v290 <= 63)
    {
      v291 = 0;
      v292 = a2 + 160 * v290;
      v293 = v292 + 116304;
      v294 = v381;
      *(v292 + 116304) = v380;
      *(v292 + 116320) = v294;
      v295 = v378;
      v296 = v379;
      *(v292 + 116336) = v382;
      *(v292 + 116352) = v295;
      v297 = v377;
      *(v292 + 116368) = v376;
      *(v292 + 116384) = v297;
      *(v292 + 116400) = v296;
      *(v292 + 116416) = *a5;
      *(v292 + 116424) = *(v84 + 8);
      *(v292 + 116426) = v84[2];
      *(v292 + 116428) = *(v84 + 5);
      *(v292 + 116432) = (*(v84 + 167) >> 4) & 3;
      v298 = *v84;
      v299 = byte_277C3CAFE[v298];
      v300 = byte_277C3CAE8[v298];
      v301 = v84[2];
      if (v299 >= v300)
      {
        v302 = v300;
      }

      else
      {
        v302 = v299;
      }

      v304 = v301 == 15 || v301 == 23;
      v305 = v292 + 114688;
      v306 = *(a2 + 11160);
      v307 = v305 + 1748;
      v308 = 1;
      do
      {
        v309 = v308;
        v310 = *(v306 + 36 * v21[v291] + 32) > 1u && v304;
        if (v302 <= 7u)
        {
          v310 = 0;
        }

        *(v307 + 4 * v291) = v310;
        v291 = 1;
        v308 = 0;
      }

      while ((v309 & 1) != 0);
      *(v293 + 144) = *v288;
      ++*(a2 + 126544);
    }
  }

  return result;
}

uint64_t sub_277B2B568()
{
  MEMORY[0x28223BE20]();
  v37 = v3;
  v44 = v4;
  v45 = v5;
  v39 = v1;
  v40 = v2;
  v6 = v0;
  v49 = *MEMORY[0x277D85DE8];
  v8 = byte_277C3CAFE[v7];
  v41 = v7;
  v9 = 1;
  v33 = byte_277C3BCB6[v7];
  v34 = **(v0 + 8280);
  v10 = 1 << v33;
  v42 = *(*(v0 + 8376) + 192);
  v43 = byte_277C3CAE8[v7];
  if ((v42 & 8) != 0)
  {
    v11 = 2 * *(v0 + 11072) - 16;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v12 = 0;
  v38 = 0;
  v13 = *(v0 + 11184);
  v35 = v2 >> 1;
  v36 = v1 >> 1;
  v14 = (1 << v11) >> 1;
  v15 = v10;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = v11;
  do
  {
    v18 = v9;
    if ((v42 & 8) != 0)
    {
      sub_277A6BCA4(v13, v12, v36, v8, v35, v8, v43, v8, *(v6 + 11072));
    }

    else
    {
      sub_277A82EA0(v13, v12, v39, v8, v40, v8, v43, v8);
    }

    v19 = sub_2779723B0(v44, v45, v13, v10);
    if ((*(*(v6 + 8376) + 192) & 8) != 0)
    {
      v20 = *(v6 + 11072) - 5;
    }

    else
    {
      LOBYTE(v20) = 3;
    }

    v21 = (v19 + v14) >> v17;
    if (v21)
    {
      v22 = *(*(v6 + 128) + 2) >> v20;
      if (v22 <= 1)
      {
        v22 = 1;
      }

      v23 = v21 / v15;
      v24 = log2(v23 / (v22 * v22));
      v46 = 0.0;
      v47 = 0.0;
      sub_277A8B128(v41, &v47, &v46, v23, v24);
      v25 = v47 * v15;
      if (v47 * v15 < 0.0)
      {
        v25 = 0.0;
      }

      LODWORD(v26) = (v25 + 0.5);
      v27 = 16 * v21;
      if (v26)
      {
        v28 = v23 * v46 * v15;
        if (v28 < 0.0)
        {
          v28 = 0.0;
        }

        v29 = v28 + 0.5;
        if ((v29 << 7) + ((*(v6 + 16920) * v26 + 256) >> 9) >= v21 << 11)
        {
          v26 = 0;
        }

        else
        {
          v27 = v29;
          v26 = v26;
        }
      }

      else
      {
        v26 = 0;
      }

      v30 = v27 << 7;
    }

    else
    {
      v26 = 0;
      v30 = 0;
    }

    v31 = v30 + ((v26 * *(v6 + 16920) + 256) >> 9);
    if (v31 < v16)
    {
      *v37 = v21;
      v38 = v12;
      v16 = v31;
    }

    v9 = 0;
    v12 = 1;
    v13 = __src;
  }

  while ((v18 & 1) != 0);
  *(v34 + 82) = v38;
  if (v38 == 1)
  {
    memcpy(*(v6 + 11184), __src, 2 << v33);
  }

  return v16;
}

uint64_t sub_277B2B878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint16x8_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v15 = v14;
  v17 = v16;
  v18 = v10;
  STACK[0x8098] = *MEMORY[0x277D85DE8];
  v19 = **(v10 + 8280);
  v20 = byte_277C3CAFE[v11];
  v21 = v11;
  HIBYTE(v90) = -1;
  v89 = v22;
  v83 = v11;
  if (*(v9 + 395948))
  {
    v23 = v9;
    v78 = v19;
    v24 = *(v10 + 48);
    v25 = *(v10 + 72);
    v26 = byte_277C3BD96[v11];
    if ((*(*(v10 + 8376) + 192) & 8) != 0)
    {
      v27 = v13 >> 1;
    }

    else
    {
      v27 = v13;
    }

    v87 = v27;
    if ((*(*(v10 + 8376) + 192) & 8) != 0)
    {
      v28 = (v12 >> 1);
    }

    else
    {
      v28 = v12;
    }

    v81 = v14;
    v29 = byte_277C3CAE8[v11] >> 1;
    (*(*v9 + (v26 << 7) + 51464))(v24, v25, v28, v20, &a9);
    v30 = v24 + v25 * v29 + (v20 >> 1);
    v31 = (v29 * v20);
    (*(*v23 + (v26 << 7) + 51464))(v30, v25, v28 + v31 + (v20 >> 1), v20, &a9.i8[4]);
    v32 = v24;
    v19 = v78;
    (*(*v23 + (v26 << 7) + 51464))(v32, v25, v87, v20, &a9.u64[1]);
    (*(*v23 + (v26 << 7) + 51464))(v30, v25, v87 + v31 + (v20 >> 1), v20, &a9.i8[12]);
    v33 = a9.u32[3] + a9.u32[0] > a9.u32[1] + a9.u32[2];
    result = sub_277B28CBC(v18, v83, v17, v89, v33, &v90 + 7, v81);
    v35 = HIBYTE(v90);
  }

  else
  {
    v36 = byte_277C3CAE8[v11];
    v37 = v36 * v20;
    v38 = dword_27A722360[8 * v11];
    if ((*(*(v10 + 8376) + 192) & 8) != 0)
    {
      v39 = 2 * *(v10 + 11072) - 16;
      sub_277A4CF28(v36, v20, &a9, v20, *(v10 + 48), *(v10 + 72), v12 >> 1, v20);
    }

    else
    {
      sub_277A4CE08(v36, v20, &a9, v20, *(v10 + 48), *(v10 + 72), v12, v20);
      LOBYTE(v39) = 0;
    }

    v40 = sub_277A07B74(&a9, v37);
    v41 = sub_277A07B74(v17, v37);
    v42 = 0;
    v43 = v37;
    do
    {
      *(&a9 + v42 * 8) = vqmovn_high_s32(vqmovn_s32(vmlsl_s16(vmull_s16(*&a9.i8[v42 * 8], *&a9.i8[v42 * 8]), v17[v42], v17[v42])), vmlsl_high_s16(vmull_high_s16(*(&a9 + v42 * 8), *(&a9 + v42 * 8)), *v17[v42].i8, *v17[v42].i8));
      v42 += 2;
      v43 -= 8;
    }

    while (v43);
    v88 = v38;
    v44 = v21;
    if (v38 <= 0)
    {
      v33 = 0;
      LODWORD(v75) = *(v18 + 16920);
      v48 = 0x7FFFFFFFFFFFFFFFLL;
      v35 = -1;
    }

    else
    {
      v82 = v15;
      v80 = 0;
      v45 = 0;
      v46 = *&dword_27A722360[8 * v21 + 6];
      v85 = (1 << v39) >> 1;
      v86 = 32 * (v40 - v41);
      v47 = v37;
      v48 = 0x7FFFFFFFFFFFFFFFLL;
      v79 = -1;
      v84 = v39;
      v77 = v44;
      v49 = v18 + 33560 + (v44 << 6);
      do
      {
        v50 = *(v46 + 8 * v45);
        v51 = &a9;
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v56 = v37;
        do
        {
          v57 = *v51;
          v58 = v51[1];
          v51 += 2;
          v59 = *v50++;
          v60 = vmovl_s8(*v59.i8);
          v61 = vmovl_high_s8(v59);
          v52 = vmlal_s16(v52, *v57.i8, *v60.i8);
          v53 = vmlal_high_s16(v53, v57, v60);
          v54 = vmlal_s16(v54, *v58.i8, *v61.i8);
          v55 = vmlal_high_s16(v55, v58, v61);
          v56 -= 16;
        }

        while (v56);
        v62 = vaddvq_s64(vpadalq_s32(vpadalq_s32(vpadalq_s32(vpaddlq_s32(v53), v52), v54), v55)) > v86;
        v63 = sub_2779723B0(v17, v89, *(v46 + (v62 << 7) + 8 * v45), v37);
        if ((*(*(v18 + 8376) + 192) & 8) != 0)
        {
          v64 = *(v18 + 11072) - 5;
        }

        else
        {
          LOBYTE(v64) = 3;
        }

        v65 = (v63 + v85) >> v84;
        if (v65)
        {
          v66 = *(*(v18 + 128) + 2) >> v64;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = v65 / v47;
          v68 = log2(v67 / (v66 * v66));
          vars0 = 0.0;
          vars8 = 0.0;
          sub_277A8B128(v83, &vars8, &vars0, v67, v68);
          v69 = vars8 * v47;
          if (vars8 * v47 < 0.0)
          {
            v69 = 0.0;
          }

          v70 = (v69 + 0.5);
          v71 = 16 * v65;
          if (v70)
          {
            v72 = v67 * vars0 * v47;
            if (v72 < 0.0)
            {
              v72 = 0.0;
            }

            v73 = v72 + 0.5;
            if ((v73 << 7) + ((*(v18 + 16920) * v70 + 256) >> 9) < v65 << 11)
            {
              v71 = v73;
            }

            else
            {
              v70 = 0;
            }
          }

          v74 = v71 << 7;
        }

        else
        {
          v70 = 0;
          v74 = 0;
        }

        v75 = *(v18 + 16920);
        v76 = v74 + (((*(v49 + 4 * v45) + v70) * v75 + 256) >> 9);
        if (v76 < v48)
        {
          *v82 = v65;
          v79 = v45;
          v80 = v62;
          v48 = v76;
        }

        ++v45;
      }

      while (v88 > v45);
      v44 = v77;
      v33 = v80;
      v35 = v79;
    }

    result = v48 - ((v75 * *(v18 + (v44 << 6) + 4 * v35 + 33560) + 256) >> 9);
  }

  *(v19 + 81) = v33;
  *(v19 + 80) = v35;
  return result;
}

unint64_t sub_277B2BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  result = MEMORY[0x28223BE20]();
  v43 = v42;
  v44 = v40;
  v45 = v39;
  v46 = a11;
  STACK[0x10CB8] = *MEMORY[0x277D85DE8];
  if (v39 < 4 || v40 <= 3)
  {

    return sub_27797D4A0(result, v36, v37, v38, v39, v40, v43, v41, a9, a10, a11, a12, a13);
  }

  else
  {
    v47 = a11 + (v40 - 1) * a12;
    v48 = *(v41 + 8);
    v49 = v48 + (v47 >> 10);
    v50 = *(a13 + 8);
    v51 = *(a13 + 16);
    v52 = *(v43 + 8) >> 1;
    v53 = (((v48 >> 1) - 1) * v36);
    if (a10 == 2048)
    {
      v54.i64[0] = xmmword_277C3BDB0[0].i64[0];
      v55 = *xmmword_277C3BDB0[1].i8;
      v56 = vshrn_n_s16(*(*v43 + 2 * ((a9 >> 3) & 0x78)), 1uLL);
      _Q2 = vdupq_lane_s32(v56, 0);
      _Q3 = vdupq_lane_s32(v56, 1);
      v59 = 4 * v36;
      v60 = 3 * v36;
      v61 = 2 * v36;
      if (v45 == 4)
      {
        v62 = (v47 >> 10) + v48 + 4;
        v63 = v60 - (v52 + v53) + 1;
        v64 = v61 - v52 - v53;
        v65 = v36 - v52 - v53;
        v66 = 1 - (v52 + v53);
        v67.i64[0] = 0x8080808080808080;
        v67.i64[1] = 0x8080808080808080;
        v68 = &v249;
        do
        {
          v69 = veorq_s8(*(result + v66), v67);
          _Q18 = vqtbl1q_s8(v69, xmmword_277C3BDB0[0]);
          _Q6 = vqtbl1q_s8(v69, xmmword_277C3BDB0[1]);
          __asm
          {
            SDOT            V19.4S, V18.16B, V2.16B
            SDOT            V19.4S, V6.16B, V3.16B
          }

          *_Q6.i8 = vshrn_n_s32(_Q19, 2uLL);
          v78 = veorq_s8(*(result + v65 + 1), v67);
          _Q18 = vqtbl1q_s8(v78, xmmword_277C3BDB0[0]);
          _Q7 = vqtbl1q_s8(v78, xmmword_277C3BDB0[1]);
          __asm
          {
            SDOT            V19.4S, V18.16B, V2.16B
            SDOT            V19.4S, V7.16B, V3.16B
          }

          *_Q7.i8 = vshrn_n_s32(_Q19, 2uLL);
          v83 = veorq_s8(*(result + v64 + 1), v67);
          _Q18 = vqtbl1q_s8(v83, xmmword_277C3BDB0[0]);
          _Q16 = vqtbl1q_s8(v83, xmmword_277C3BDB0[1]);
          __asm
          {
            SDOT            V19.4S, V18.16B, V2.16B
            SDOT            V19.4S, V16.16B, V3.16B
          }

          *_Q16.i8 = vshrn_n_s32(_Q19, 2uLL);
          v88 = veorq_s8(*(result + v63), v67);
          _Q18 = vqtbl1q_s8(v88, xmmword_277C3BDB0[0]);
          _Q17 = vqtbl1q_s8(v88, xmmword_277C3BDB0[1]);
          __asm
          {
            SDOT            V19.4S, V18.16B, V2.16B
            SDOT            V19.4S, V17.16B, V3.16B
          }

          *v68 = *_Q6.i8;
          v68[32] = *_Q7.i8;
          v68[64] = *_Q16.i8;
          v68[96] = vshrn_n_s32(_Q19, 2uLL);
          v68 += 128;
          v62 -= 4;
          result += v59;
        }

        while (v62 > 4);
      }

      else
      {
        v113 = v60 - (v52 + v53) + result + 9;
        v114 = v61 - v52 - v53 + result + 9;
        v115 = v36 - v52 - v53 + result + 9;
        result = result - (v52 + v53) + 9;
        v116 = &v249;
        v117.i64[0] = 0x8080808080808080;
        v117.i64[1] = 0x8080808080808080;
        do
        {
          v118 = 0;
          v119 = v45;
          do
          {
            v120 = &v116[v118 / 8];
            v121 = veorq_s8(*(result + v118 - 8), v117);
            v122 = veorq_s8(*(result + v118), v117);
            _Q22 = vqtbl1q_s8(v121, xmmword_277C3BDB0[0]);
            _Q6 = vqtbl1q_s8(v121, xmmword_277C3BDB0[1]);
            _Q23 = vqtbl1q_s8(v122, xmmword_277C3BDB0[0]);
            _Q18 = vqtbl1q_s8(v122, xmmword_277C3BDB0[1]);
            __asm
            {
              SDOT            V24.4S, V22.16B, V2.16B
              SDOT            V24.4S, V6.16B, V3.16B
              SDOT            V6.4S, V23.16B, V2.16B
              SDOT            V6.4S, V18.16B, V3.16B
            }

            v131 = vshrn_high_n_s32(vshrn_n_s32(_Q24, 2uLL), _Q6, 2uLL);
            v132 = veorq_s8(*(v115 + v118 - 8), v117);
            v133 = veorq_s8(*(v115 + v118), v117);
            _Q19 = vqtbl1q_s8(v132, xmmword_277C3BDB0[0]);
            _Q6 = vqtbl1q_s8(v132, xmmword_277C3BDB0[1]);
            _Q22 = vqtbl1q_s8(v133, xmmword_277C3BDB0[0]);
            _Q7 = vqtbl1q_s8(v133, xmmword_277C3BDB0[1]);
            __asm
            {
              SDOT            V23.4S, V19.16B, V2.16B
              SDOT            V23.4S, V6.16B, V3.16B
              SDOT            V6.4S, V22.16B, V2.16B
              SDOT            V6.4S, V7.16B, V3.16B
            }

            v142 = vshrn_high_n_s32(vshrn_n_s32(_Q23, 2uLL), _Q6, 2uLL);
            v143 = veorq_s8(*(v114 + v118 - 8), v117);
            v144 = veorq_s8(*(v114 + v118), v117);
            _Q19 = vqtbl1q_s8(v143, xmmword_277C3BDB0[0]);
            _Q6 = vqtbl1q_s8(v143, xmmword_277C3BDB0[1]);
            _Q20 = vqtbl1q_s8(v144, xmmword_277C3BDB0[0]);
            _Q16 = vqtbl1q_s8(v144, xmmword_277C3BDB0[1]);
            __asm
            {
              SDOT            V22.4S, V19.16B, V2.16B
              SDOT            V22.4S, V6.16B, V3.16B
              SDOT            V6.4S, V20.16B, V2.16B
              SDOT            V6.4S, V16.16B, V3.16B
            }

            v153 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q6, 2uLL);
            v154 = veorq_s8(*(v113 + v118 - 8), v117);
            v155 = veorq_s8(*(v113 + v118), v117);
            _Q19 = vqtbl1q_s8(v154, xmmword_277C3BDB0[0]);
            _Q6 = vqtbl1q_s8(v154, xmmword_277C3BDB0[1]);
            _Q20 = vqtbl1q_s8(v155, xmmword_277C3BDB0[0]);
            _Q17 = vqtbl1q_s8(v155, xmmword_277C3BDB0[1]);
            __asm
            {
              SDOT            V21.4S, V19.16B, V2.16B
              SDOT            V21.4S, V6.16B, V3.16B
              SDOT            V6.4S, V20.16B, V2.16B
              SDOT            V6.4S, V17.16B, V3.16B
            }

            *v120 = v131;
            v120[16] = v142;
            v120[32] = v153;
            v120[48] = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q6, 2uLL);
            v118 += 16;
            v119 -= 8;
          }

          while (v119);
          v116 += 128;
          v113 += v59;
          v114 += v59;
          v115 += v59;
          result += v59;
          _VF = __OFSUB__(v49, 4);
          v49 -= 4;
        }

        while (!((v49 < 0) ^ _VF | (v49 == 0)));
      }
    }

    else
    {
      result = result - v52 - v53 + 1;
      v93 = *v43;
      if (v45 == 4)
      {
        v94 = &v249;
        v54.i64[0] = 0x8080808080808080;
        v54.i64[1] = 0x8080808080808080;
        v55 = vdupq_n_s32(0x2001u).u64[0];
        do
        {
          v95 = 0;
          v96 = a9;
          do
          {
            v97 = (result + (v96 >> 10));
            v98 = *(v93 + 2 * ((v96 >> 3) & 0x78));
            v99.i64[0] = *v97;
            v100 = (v97 + v36);
            v101 = *v100;
            v102 = (v100 + v36);
            v103.i64[0] = *v102;
            _Q7 = vshrn_high_n_s16(vshrn_n_s16(v98, 1uLL), v98, 1uLL);
            v99.i64[1] = v101;
            v103.i64[1] = *(v102 + v36);
            _Q2 = veorq_s8(v99, v54);
            _Q3 = veorq_s8(v103, v54);
            __asm
            {
              SDOT            V4.4S, V2.16B, V7.16B
              SDOT            V2.4S, V3.16B, V7.16B
            }

            *(&STACK[0x10C30] + v95) = vshrn_n_s32(vpaddq_s32(_Q4, _Q2), 2uLL);
            v96 += a10;
            v95 += 8;
          }

          while (v95 != 32);
          v109 = vtrn1_s16(STACK[0x10C30], STACK[0x10C38]);
          v110 = vtrn2_s16(STACK[0x10C30], STACK[0x10C38]);
          v111 = vtrn1_s16(STACK[0x10C40], STACK[0x10C48]);
          v112 = vtrn2_s16(STACK[0x10C40], STACK[0x10C48]);
          *v94 = vzip1_s32(v109, v111);
          v94[32] = vzip1_s32(v110, v112);
          v94[64] = vzip2_s32(v109, v111);
          v94[96] = vzip2_s32(v110, v112);
          v94 += 128;
          result += 4 * v36;
          _VF = __OFSUB__(v49, 4);
          v49 -= 4;
        }

        while (!((v49 < 0) ^ _VF | (v49 == 0)));
      }

      else
      {
        v164 = &v249;
        v54.i64[0] = 0x8080808080808080;
        v54.i64[1] = 0x8080808080808080;
        v55 = vdupq_n_s32(0x2001u).u64[0];
        do
        {
          v165 = v45;
          v166 = v164;
          v167 = a9;
          do
          {
            for (i = 0; i != 128; i += 16)
            {
              v169 = (result + (v167 >> 10));
              v170 = *(v93 + 2 * ((v167 >> 3) & 0x78));
              v171.i64[0] = *v169;
              v172 = (v169 + v36);
              v173 = *v172;
              v174 = (v172 + v36);
              v175.i64[0] = *v174;
              v176 = (v174 + v36);
              v177 = *v176;
              v178 = (v176 + v36);
              v179.i64[0] = *v178;
              v180 = (v178 + v36);
              v181 = *v180;
              v182 = (v180 + v36);
              v183.i64[0] = *v182;
              v171.i64[1] = v173;
              v175.i64[1] = v177;
              v179.i64[1] = v181;
              _Q19 = vshrn_high_n_s16(vshrn_n_s16(v170, 1uLL), v170, 1uLL);
              v183.i64[1] = *(v182 + v36);
              _Q2 = veorq_s8(v171, v54);
              _Q3 = veorq_s8(v175, v54);
              _Q4 = veorq_s8(v179, v54);
              _Q5 = veorq_s8(v183, v54);
              __asm
              {
                SDOT            V6.4S, V2.16B, V19.16B
                SDOT            V2.4S, V3.16B, V19.16B
                SDOT            V3.4S, V4.16B, V19.16B
                SDOT            V4.4S, V5.16B, V19.16B
              }

              *(&STACK[0x10C30] + i) = vshrn_high_n_s32(vshrn_n_s32(vpaddq_s32(_Q6, _Q2), 2uLL), vpaddq_s32(_Q3, _Q4), 2uLL);
              v167 += a10;
            }

            v193 = vtrn1q_s16(*&STACK[0x10C30], *&STACK[0x10C40]);
            v194 = vtrn2q_s16(*&STACK[0x10C30], *&STACK[0x10C40]);
            v195 = vtrn1q_s16(*&STACK[0x10C50], *&STACK[0x10C60]);
            v196 = vtrn2q_s16(*&STACK[0x10C50], *&STACK[0x10C60]);
            v197 = vtrn1q_s16(*&STACK[0x10C70], *&STACK[0x10C80]);
            v198 = vtrn2q_s16(*&STACK[0x10C70], *&STACK[0x10C80]);
            v199 = vtrn1q_s16(*&STACK[0x10C90], *&STACK[0x10CA0]);
            v200 = vtrn2q_s16(*&STACK[0x10C90], *&STACK[0x10CA0]);
            v201 = vtrn1q_s32(v193, v195);
            v202 = vtrn2q_s32(v193, v195);
            v203 = vtrn1q_s32(v194, v196);
            v204 = vtrn2q_s32(v194, v196);
            v205 = vtrn1q_s32(v197, v199);
            v206 = vtrn2q_s32(v197, v199);
            v207 = vtrn1q_s32(v198, v200);
            v208 = vtrn2q_s32(v198, v200);
            v209 = vzip2q_s64(v201, v205);
            v201.i64[1] = v205.i64[0];
            v210 = vzip2q_s64(v203, v207);
            v203.i64[1] = v207.i64[0];
            v211 = vzip2q_s64(v202, v206);
            v202.i64[1] = v206.i64[0];
            v212 = vzip2q_s64(v204, v208);
            v204.i64[1] = v208.i64[0];
            *v166 = v201;
            v166[16] = v203;
            v166[32] = v202;
            v166[48] = v204;
            v166[64] = v209;
            v166[80] = v210;
            v166[96] = v211;
            v166[112] = v212;
            ++v166;
            v165 -= 8;
          }

          while (v165);
          v164 += 128;
          result += 8 * v36;
          _VF = __OFSUB__(v49, 8);
          v49 -= 8;
        }

        while (!((v49 < 0) ^ _VF | (v49 == 0)));
      }
    }

    v213 = *(a13 + 32);
    if (*(v41 + 10) == 2)
    {
      if (v213)
      {
        if (*a13)
        {
          v247 = *v41;
          if (*(a13 + 36))
          {
            return sub_27799C6E0(&v249, v37, v38, v50, v51, v45, v44, v247, *v54.i8, v55, *(a13 + 40), HIWORD(*(a13 + 40)), *(a13 + 44), a11, a12);
          }

          else
          {
            return sub_27799C8B8(&v249, v37, v38, v50, v51, v45, v44, v247, a11, a12);
          }
        }

        else
        {
          return sub_27799CA48(&v249, v50, v51, v45, v44, *v41, a11, a12);
        }
      }

      else
      {
        v214 = *v41;
        if (v45 == 4)
        {
          v222 = vdupq_n_s32(0xFFFC0400);
          do
          {
            v223 = *(v214 + 2 * ((v46 >> 3) & 0x78));
            v224 = (&v249 + 2 * ((v46 >> 3) & 0xFFFFFF80));
            *v223.i8 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v222, *v224, *v223.i8, 0), v224[32], *v223.i8, 1), v224[64], *v223.i8, 2), v224[96], *v223.i8, 3), v224[128], v223, 4), v224[160], v223, 5), v224[192], v223, 6), v224[224], v223, 7), 0xBuLL);
            v37->i32[0] = vqmovun_s16(v223).u32[0];
            v37 = (v37 + v38);
            v46 += a12;
            --v44;
          }

          while (v44);
        }

        else if (v45 == 8)
        {
          v215 = vdupq_n_s32(0xFFFC0400);
          do
          {
            v216 = (&v249 + 2 * ((v46 >> 3) & 0xFFFFFF80));
            v217 = *(v214 + 2 * ((v46 >> 3) & 0x78));
            *v37 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v216, *v217.i8, 0), v216[32], *v217.i8, 1), v216[64], *v217.i8, 2), v216[96], *v217.i8, 3), v216[128], v217, 4), v216[160], v217, 5), v216[192], v217, 6), v216[224], v217, 7), v215), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v216->i8, *v217.i8, 0), *v216[32].i8, *v217.i8, 1), *v216[64].i8, *v217.i8, 2), *v216[96].i8, *v217.i8, 3), *v216[128].i8, v217, 4), *v216[160].i8, v217, 5), *v216[192].i8, v217, 6), *v216[224].i8, v217, 7), v215), 0xBuLL));
            v37 = (v37 + v38);
            v46 += a12;
            --v44;
          }

          while (v44);
        }

        else
        {
          v228 = vdupq_n_s32(0xFFFC0400);
          do
          {
            v229 = 0;
            v230 = (&v249 + 2 * ((v46 >> 3) & 0xFFFFFF80));
            v231 = *(v214 + 2 * ((v46 >> 3) & 0x78));
            do
            {
              v232 = v230[64];
              v233 = v230[80];
              v234 = v230[96];
              v235 = v230[112];
              v236 = v230[1];
              v238 = v230[16];
              v237 = v230[17];
              v240 = v230[32];
              v239 = v230[33];
              v242 = v230[48];
              v241 = v230[49];
              *v37[v229].i8 = vqmovun_high_s16(vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v230->i8, *v231.i8, 0), *v238.i8, *v231.i8, 1), *v240.i8, *v231.i8, 2), *v242.i8, *v231.i8, 3), *v232.i8, v231, 4), *v233.i8, v231, 5), *v234.i8, v231, 6), *v235.i8, v231, 7), v228), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v230, *v231.i8, 0), v238, *v231.i8, 1), v240, *v231.i8, 2), v242, *v231.i8, 3), v232, v231, 4), v233, v231, 5), v234, v231, 6), v235, v231, 7), v228), 0xBuLL)), vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v236.i8, *v231.i8, 0), *v237.i8, *v231.i8, 1), *v239.i8, *v231.i8, 2), *v241.i8, *v231.i8, 3), *v230[65].i8, v231, 4), *v230[81].i8, v231, 5), *v230[97].i8, v231, 6), *v230[113].i8, v231, 7), v228), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v236, *v231.i8, 0), v237, *v231.i8, 1), v239, *v231.i8, 2), v241, *v231.i8, 3), v230[65], v231, 4), v230[81], v231, 5), v230[97], v231, 6), v230[113], v231, 7), v228), 0xBuLL));
              v229 += 2;
              v230 += 2;
            }

            while (v45 != (v229 * 8));
            v37 = (v37 + v38);
            v46 += a12;
            --v44;
          }

          while (v44);
        }
      }
    }

    else if (v213)
    {
      if (*a13)
      {
        v248 = *v41;
        if (*(a13 + 36))
        {
          return sub_27799CB9C(&a35, v37, v38, v50, v51, v45, v44, v248, *v54.i8, v55, *(a13 + 40), HIWORD(*(a13 + 40)), *(a13 + 44), a11, a12);
        }

        else
        {
          return sub_27799CD4C(&a35, v37, v38, v50, v51, v45, v44, v248, a11, a12);
        }
      }

      else
      {
        return sub_27799CEB4(&a35, v50, v51, v45, v44, *v41, a11, a12);
      }
    }

    else
    {
      v218 = *v41;
      if (v45 == 4)
      {
        v225 = vdupq_n_s32(0xFFFC0400);
        do
        {
          v226 = (&a35 + 2 * ((v46 >> 3) & 0xFFFFFF80));
          v227 = *(v218 + 2 * ((v46 >> 3) & 0x78));
          *v227.i8 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v225, *v226, *v227.i8, 1), v226[32], *v227.i8, 2), v226[64], *v227.i8, 3), v226[96], v227, 4), v226[128], v227, 5), v226[160], v227, 6), 0xBuLL);
          v37->i32[0] = vqmovun_s16(v227).u32[0];
          v37 = (v37 + v38);
          v46 += a12;
          --v44;
        }

        while (v44);
      }

      else if (v45 == 8)
      {
        v219 = vdupq_n_s32(0xFFFC0400);
        do
        {
          v220 = (&a35 + 2 * ((v46 >> 3) & 0xFFFFFF80));
          v221 = *(v218 + 2 * ((v46 >> 3) & 0x78));
          *v37 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v220, *v221.i8, 1), v220[32], *v221.i8, 2), v220[64], *v221.i8, 3), v220[96], v221, 4), v220[128], v221, 5), v220[160], v221, 6), v219), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v220->i8, *v221.i8, 1), *v220[32].i8, *v221.i8, 2), *v220[64].i8, *v221.i8, 3), *v220[96].i8, v221, 4), *v220[128].i8, v221, 5), *v220[160].i8, v221, 6), v219), 0xBuLL));
          v37 = (v37 + v38);
          v46 += a12;
          --v44;
        }

        while (v44);
      }

      else
      {
        v243 = vdupq_n_s32(0xFFFC0400);
        do
        {
          v244 = 0;
          v245 = (&a35 + 2 * ((v46 >> 3) & 0xFFFFFF80));
          v246 = *(v218 + 2 * ((v46 >> 3) & 0x78));
          do
          {
            *v37[v244].i8 = vqmovun_high_s16(vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v245, *v246.i8, 1), v245[32], *v246.i8, 2), v245[64], *v246.i8, 3), v245[96], v246, 4), v245[128], v246, 5), v245[160], v246, 6), v243), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v245->i8, *v246.i8, 1), *v245[32].i8, *v246.i8, 2), *v245[64].i8, *v246.i8, 3), *v245[96].i8, v246, 4), *v245[128].i8, v246, 5), *v245[160].i8, v246, 6), v243), 0xBuLL)), vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v245[2], *v246.i8, 1), v245[34], *v246.i8, 2), v245[66], *v246.i8, 3), v245[98], v246, 4), v245[130], v246, 5), v245[162], v246, 6), v243), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v245[2].i8, *v246.i8, 1), *v245[34].i8, *v246.i8, 2), *v245[66].i8, *v246.i8, 3), *v245[98].i8, v246, 4), *v245[130].i8, v246, 5), *v245[162].i8, v246, 6), v243), 0xBuLL));
            v244 += 2;
            v245 += 4;
          }

          while (v45 != (v244 * 8));
          v37 = (v37 + v38);
          v46 += a12;
          --v44;
        }

        while (v44);
      }
    }
  }

  return result;
}

void *sub_277B2CAF8(uint64_t a1, int a2, int a3, int a4, void *a5, _DWORD *a6)
{
  v11 = malloc_type_malloc(0x1000uLL, 0x100004000313F17uLL);
  if (!v11)
  {
LABEL_830:
    v107 = 0;
    *a6 = -1;
    return v107;
  }

  v12 = v11;
  if (a3 < 7)
  {
    v13 = 0;
    goto LABEL_827;
  }

  v156 = a6;
  v157 = a5;
  v13 = 0;
  v14 = 2 * a4;
  v15 = 3 * a4;
  v16 = (a3 - 3);
  v17 = a4;
  v18 = v15 - 1;
  v19 = v14 - 2;
  v20 = a4 - 3;
  v21 = -3 - a4;
  v22 = -2 * a4 - 2;
  v23 = -3 * a4;
  v24 = v23 - 1;
  v25 = v23 + 1;
  v26 = 3;
  v27 = 3 - a4;
  v28 = a4 + 3;
  v29 = v14 + 2;
  v30 = v15 + 1;
  v31 = a2;
  v32 = (a2 - 3);
  v33 = 512;
  v155 = a4;
  v34 = 2 - v14;
  v168 = v22;
  v169 = -3 - a4;
  v166 = v24;
  v167 = v23;
  v164 = 3 - a4;
  v165 = v23 + 1;
  v162 = v29;
  v163 = v28;
  v161 = v30;
  v159 = v20;
  v160 = 2 - v14;
  do
  {
    if (v31 >= 7)
    {
      v172 = a1 + v26 * v17;
      for (i = 3; i != v32; ++i)
      {
        v36 = v172 + i;
        v37 = *(v172 + i);
        v38 = v37 + 18;
        v39 = v37 - 18;
        v40 = *(v172 + i + v15);
        if (v38 >= v40)
        {
          if (v39 <= v40)
          {
            v51 = *(v36 + v25);
            if (v38 >= v51)
            {
              if (v39 <= v51 || v39 <= *(v36 + v23) || v39 <= *(v36 + v24))
              {
                continue;
              }

              if (v39 <= *(v36 + v34))
              {
                if (v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                {
                  continue;
                }

                goto LABEL_295;
              }

              if (v39 <= *(v36 + v27))
              {
                if (v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                {
                  continue;
                }

                goto LABEL_694;
              }

              if (v39 <= *(v36 + 3))
              {
                if (v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                {
                  continue;
                }

                goto LABEL_691;
              }

              if (v39 <= *(v36 + v28))
              {
                if (v39 <= *(v36 + v22))
                {
                  continue;
                }

                goto LABEL_642;
              }

              if (v39 <= *(v36 + v29))
              {
                goto LABEL_115;
              }

              if (v39 <= *(v36 + v30))
              {
                goto LABEL_87;
              }
            }

            else
            {
              if (v38 >= *(v36 + v23) || v38 >= *(v36 + v24))
              {
                continue;
              }

              if (v38 >= *(v36 + v34))
              {
                if (v38 >= *(v36 + v22))
                {
                  continue;
                }

LABEL_215:
                if (v38 >= *(v36 + v21))
                {
                  continue;
                }

LABEL_216:
                if (v38 >= *(v36 - 3))
                {
                  continue;
                }

LABEL_217:
                v65 = *(v36 + v20);
LABEL_218:
                if (v38 >= v65)
                {
                  continue;
                }

LABEL_274:
                v69 = *(v36 + v19);
LABEL_275:
                if (v38 >= v69)
                {
                  continue;
                }

LABEL_276:
                v52 = *(v36 + v18);
                goto LABEL_679;
              }

              if (v38 >= *(v36 + v27))
              {
                if (v38 >= *(v36 + v22))
                {
                  continue;
                }

LABEL_283:
                if (v38 >= *(v36 + v21))
                {
                  continue;
                }

                goto LABEL_284;
              }

              if (v38 >= *(v36 + 3))
              {
                if (v38 >= *(v36 + v22))
                {
                  continue;
                }

                goto LABEL_365;
              }

              if (v38 >= *(v36 + v28))
              {
                goto LABEL_675;
              }

              if (v38 >= *(v36 + v29))
              {
LABEL_552:
                if (v38 >= *(v36 + v22))
                {
                  continue;
                }

LABEL_553:
                v52 = *(v36 + v21);
                goto LABEL_679;
              }

              if (v38 >= *(v36 + v30))
              {
                v52 = *(v36 + v22);
                goto LABEL_679;
              }
            }
          }

          else
          {
            v48 = *(v36 + v30);
            if (v38 >= v48)
            {
              if (v39 <= v48)
              {
                v58 = *(v36 + v23);
                if (v38 >= v58)
                {
                  if (v39 <= v58 || v39 <= *(v36 + v24) || v39 <= *(v36 + v22))
                  {
                    continue;
                  }

                  if (v39 <= *(v36 + v21))
                  {
                    if (v39 <= *(v36 + v29))
                    {
                      continue;
                    }

LABEL_495:
                    if (v39 <= *(v36 + v28))
                    {
                      continue;
                    }

LABEL_496:
                    if (v39 <= *(v36 + 3))
                    {
                      continue;
                    }

LABEL_497:
                    if (v39 <= *(v36 + v27))
                    {
                      continue;
                    }

LABEL_639:
                    if (v39 <= *(v36 + v34))
                    {
                      continue;
                    }

                    v56 = *(v36 + v25);
                    goto LABEL_777;
                  }

                  if (v39 <= *(v36 - 3))
                  {
                    goto LABEL_495;
                  }

                  if (v39 <= *(v36 + v20))
                  {
                    goto LABEL_496;
                  }

                  if (v39 <= *(v36 + v19))
                  {
                    goto LABEL_497;
                  }

                  if (v39 <= *(v36 + v18))
                  {
                    goto LABEL_639;
                  }
                }

                else
                {
                  if (v38 >= *(v36 + v25) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22))
                  {
                    continue;
                  }

                  if (v38 >= *(v36 + v34))
                  {
                    goto LABEL_215;
                  }

                  if (v38 >= *(v36 + v27))
                  {
                    goto LABEL_283;
                  }

                  if (v38 >= *(v36 + 3))
                  {
                    goto LABEL_365;
                  }

                  if (v38 >= *(v36 + v28))
                  {
                    goto LABEL_676;
                  }

                  if (v38 >= *(v36 + v29))
                  {
                    goto LABEL_553;
                  }
                }
              }

              else
              {
                v54 = *(v36 + v29);
                if (v38 >= v54)
                {
                  if (v39 <= v54)
                  {
                    v67 = *(v36 + v24);
                    if (v38 >= v67)
                    {
                      if (v39 <= v67 || v39 <= *(v36 + v22) || v39 <= *(v36 + v21))
                      {
                        continue;
                      }

                      if (v39 <= *(v36 - 3))
                      {
                        if (v39 <= *(v36 + v28))
                        {
                          continue;
                        }

LABEL_657:
                        if (v39 <= *(v36 + 3))
                        {
                          continue;
                        }

LABEL_658:
                        if (v39 <= *(v36 + v27))
                        {
                          continue;
                        }

                        goto LABEL_696;
                      }

                      if (v39 <= *(v36 + v20))
                      {
                        goto LABEL_657;
                      }

                      if (v39 <= *(v36 + v19))
                      {
                        goto LABEL_658;
                      }

                      if (v39 <= *(v36 + v18))
                      {
                        goto LABEL_696;
                      }
                    }

                    else
                    {
                      if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                      {
                        continue;
                      }

                      if (v38 >= *(v36 + v34))
                      {
                        goto LABEL_216;
                      }

                      if (v38 >= *(v36 + v27))
                      {
                        goto LABEL_284;
                      }

                      if (v38 >= *(v36 + 3))
                      {
                        goto LABEL_453;
                      }

                      if (v38 >= *(v36 + v28))
                      {
                        goto LABEL_678;
                      }
                    }
                  }

                  else
                  {
                    v61 = *(v36 + v28);
                    if (v38 >= v61)
                    {
                      if (v39 <= v61)
                      {
                        v79 = *(v36 + v22);
                        if (v38 >= v79)
                        {
                          if (v39 <= v79 || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                          {
                            continue;
                          }

                          if (v39 <= *(v36 + v20))
                          {
                            if (v39 <= *(v36 + 3) || v39 <= *(v36 + v27) || v39 <= *(v36 + v34))
                            {
                              continue;
                            }

LABEL_774:
                            if (v39 <= *(v36 + v25) || v39 <= *(v36 + v23))
                            {
                              continue;
                            }

                            v56 = *(v36 + v24);
                            goto LABEL_777;
                          }

                          if (v39 <= *(v36 + v19))
                          {
                            if (v39 <= *(v36 + v27) || v39 <= *(v36 + v34))
                            {
                              continue;
                            }

                            goto LABEL_774;
                          }

                          if (v39 <= *(v36 + v18))
                          {
                            if (v39 <= *(v36 + v34))
                            {
                              continue;
                            }

                            goto LABEL_774;
                          }
                        }

                        else
                        {
                          if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v21) || v38 >= *(v36 - 3))
                          {
                            continue;
                          }

                          if (v38 >= *(v36 + v34))
                          {
                            goto LABEL_217;
                          }

                          if (v38 >= *(v36 + v27))
                          {
                            goto LABEL_357;
                          }

                          if (v38 >= *(v36 + 3))
                          {
                            goto LABEL_455;
                          }
                        }
                      }

                      else
                      {
                        v70 = *(v36 + 3);
                        if (v38 >= v70)
                        {
                          if (v39 <= v70)
                          {
                            v87 = *(v36 + v21);
                            if (v38 >= v87)
                            {
                              if (v39 <= v87 || v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                              {
                                continue;
                              }

                              if (v39 <= *(v36 + v19))
                              {
                                if (v39 <= *(v36 + v27) || v39 <= *(v36 + v34) || v39 <= *(v36 + v25))
                                {
                                  continue;
                                }

                                goto LABEL_814;
                              }

                              if (v39 <= *(v36 + v18))
                              {
                                if (v39 <= *(v36 + v34) || v39 <= *(v36 + v25))
                                {
                                  continue;
                                }

                                goto LABEL_814;
                              }
                            }

                            else
                            {
                              if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 - 3) || v38 >= *(v36 + v20))
                              {
                                continue;
                              }

                              if (v38 >= *(v36 + v34))
                              {
                                goto LABEL_274;
                              }

                              if (v38 >= *(v36 + v27))
                              {
                                goto LABEL_359;
                              }
                            }
                          }

                          else
                          {
                            v82 = *(v36 + v27);
                            if (v38 >= v82)
                            {
                              if (v39 <= v82)
                              {
                                v91 = *(v36 - 3);
                                if (v38 >= v91)
                                {
                                  if (v39 <= v91 || v39 <= *(v36 + v20) || v39 <= *(v36 + v19))
                                  {
                                    continue;
                                  }

                                  if (v39 <= *(v36 + v18))
                                  {
                                    if (v39 <= *(v36 + v34) || v39 <= *(v36 + v25) || v39 <= *(v36 + v23))
                                    {
                                      continue;
                                    }

                                    goto LABEL_796;
                                  }
                                }

                                else
                                {
                                  if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21) || v38 >= *(v36 + v20) || v38 >= *(v36 + v19))
                                  {
                                    continue;
                                  }

                                  if (v38 >= *(v36 + v34))
                                  {
                                    goto LABEL_276;
                                  }
                                }
                              }

                              else
                              {
                                v88 = *(v36 + v34);
                                if (v38 < v88)
                                {
                                  if (v39 <= *(v36 + v18))
                                  {
                                    if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                                    {
                                      continue;
                                    }

LABEL_284:
                                    if (v38 >= *(v36 - 3))
                                    {
                                      continue;
                                    }

LABEL_357:
                                    v75 = *(v36 + v20);
LABEL_358:
                                    if (v38 >= v75)
                                    {
                                      continue;
                                    }

LABEL_359:
                                    v52 = *(v36 + v19);
                                    goto LABEL_679;
                                  }

                                  v89 = *(v36 + v20);
                                  if (v38 < v89)
                                  {
                                    if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                                    {
                                      continue;
                                    }

                                    v75 = *(v36 - 3);
                                    goto LABEL_358;
                                  }

                                  if (v39 <= v89)
                                  {
                                    continue;
                                  }

                                  goto LABEL_694;
                                }

                                if (v39 <= v88)
                                {
                                  v103 = *(v36 + v20);
                                  if (v38 < v103)
                                  {
                                    if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                                    {
                                      continue;
                                    }

                                    v65 = *(v36 - 3);
                                    goto LABEL_218;
                                  }

                                  if (v39 <= v103)
                                  {
                                    continue;
                                  }

LABEL_295:
                                  if (v39 <= *(v36 + v19))
                                  {
                                    continue;
                                  }

LABEL_652:
                                  v56 = *(v36 + v18);
                                  goto LABEL_777;
                                }

                                v92 = *(v36 + v25);
                                if (v38 < v92)
                                {
                                  v93 = *(v36 + v19);
                                  if (v38 < v93)
                                  {
                                    if (v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21) || v38 >= *(v36 - 3))
                                    {
                                      continue;
                                    }

                                    v69 = *(v36 + v20);
                                    goto LABEL_275;
                                  }

                                  if (v39 <= v93)
                                  {
                                    continue;
                                  }

                                  goto LABEL_652;
                                }

                                if (v39 <= v92)
                                {
                                  goto LABEL_295;
                                }

                                if (v39 <= *(v36 + v23))
                                {
                                  goto LABEL_652;
                                }
                              }
                            }

                            else
                            {
                              v83 = *(v36 + v19);
                              if (v38 >= v83)
                              {
                                if (v39 <= v83)
                                {
                                  if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22))
                                  {
                                    continue;
                                  }

LABEL_365:
                                  if (v38 >= *(v36 + v21))
                                  {
                                    continue;
                                  }

LABEL_453:
                                  v80 = *(v36 - 3);
LABEL_454:
                                  if (v38 >= v80)
                                  {
                                    continue;
                                  }

LABEL_455:
                                  v52 = *(v36 + v20);
LABEL_679:
                                  if (v38 >= v52)
                                  {
                                    continue;
                                  }

                                  goto LABEL_778;
                                }

                                v90 = *(v36 - 3);
                                if (v38 < v90)
                                {
                                  if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22))
                                  {
                                    continue;
                                  }

                                  v80 = *(v36 + v21);
                                  goto LABEL_454;
                                }

                                if (v39 <= v90 || v39 <= *(v36 + v20))
                                {
                                  continue;
                                }

                                if (v39 <= *(v36 + v18))
                                {
                                  if (v39 <= *(v36 + v34) || v39 <= *(v36 + v25) || v39 <= *(v36 + v23))
                                  {
                                    continue;
                                  }

LABEL_796:
                                  if (v39 <= *(v36 + v24))
                                  {
                                    continue;
                                  }

LABEL_115:
                                  if (v39 <= *(v36 + v22))
                                  {
                                    continue;
                                  }

LABEL_145:
                                  v56 = *(v36 + v21);
                                  goto LABEL_777;
                                }
                              }

                              else
                              {
                                if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21) || v38 >= *(v36 - 3) || v38 >= *(v36 + v20))
                                {
                                  continue;
                                }

                                if (v38 >= *(v36 + v34))
                                {
                                  goto LABEL_276;
                                }
                              }
                            }
                          }
                        }

                        else
                        {
                          v71 = *(v36 + v20);
                          if (v38 >= v71)
                          {
                            if (v39 <= v71)
                            {
                              if (v38 >= *(v36 + v27) || v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24))
                              {
                                continue;
                              }

LABEL_675:
                              if (v38 >= *(v36 + v22))
                              {
                                continue;
                              }

LABEL_676:
                              v86 = *(v36 + v21);
                              goto LABEL_677;
                            }

                            v85 = *(v36 + v21);
                            if (v38 < v85)
                            {
                              if (v38 >= *(v36 + v27) || v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24))
                              {
                                continue;
                              }

                              v86 = *(v36 + v22);
LABEL_677:
                              if (v38 >= v86)
                              {
                                continue;
                              }

                              goto LABEL_678;
                            }

                            if (v39 <= v85 || v39 <= *(v36 - 3))
                            {
                              continue;
                            }

                            if (v39 <= *(v36 + v19))
                            {
                              if (v39 <= *(v36 + v27) || v39 <= *(v36 + v34) || v39 <= *(v36 + v25))
                              {
                                continue;
                              }

                              goto LABEL_814;
                            }

                            if (v39 <= *(v36 + v18))
                            {
                              if (v39 <= *(v36 + v34) || v39 <= *(v36 + v25))
                              {
                                continue;
                              }

LABEL_814:
                              if (v39 <= *(v36 + v23) || v39 <= *(v36 + v24))
                              {
                                continue;
                              }

LABEL_87:
                              v56 = *(v36 + v22);
LABEL_777:
                              if (v39 <= v56)
                              {
                                continue;
                              }
                            }
                          }

                          else
                          {
                            if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v22) || v38 >= *(v36 + v21) || v38 >= *(v36 - 3))
                            {
                              continue;
                            }

                            if (v38 >= *(v36 + v34))
                            {
                              goto LABEL_274;
                            }

                            if (v38 >= *(v36 + v27))
                            {
                              goto LABEL_359;
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v62 = *(v36 + v22);
                      if (v38 >= v62)
                      {
                        if (v39 <= v62 || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                        {
                          continue;
                        }

                        if (v39 <= *(v36 + v20))
                        {
                          if (v39 <= *(v36 + 3) || v39 <= *(v36 + v27) || v39 <= *(v36 + v34))
                          {
                            continue;
                          }

                          goto LABEL_774;
                        }

                        if (v39 <= *(v36 + v19))
                        {
                          if (v39 <= *(v36 + v27) || v39 <= *(v36 + v34))
                          {
                            continue;
                          }

                          goto LABEL_774;
                        }

                        if (v39 <= *(v36 + v18))
                        {
                          if (v39 <= *(v36 + v34))
                          {
                            continue;
                          }

                          goto LABEL_774;
                        }
                      }

                      else
                      {
                        if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24) || v38 >= *(v36 + v21))
                        {
                          continue;
                        }

                        if (v38 >= *(v36 + v34))
                        {
                          if (v38 >= *(v36 - 3))
                          {
                            continue;
                          }

                          goto LABEL_217;
                        }

                        if (v38 >= *(v36 + v27))
                        {
                          goto LABEL_284;
                        }

                        if (v38 >= *(v36 + 3))
                        {
                          goto LABEL_453;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v55 = *(v36 + v24);
                  if (v38 >= v55)
                  {
                    if (v39 <= v55 || v39 <= *(v36 + v22) || v39 <= *(v36 + v21))
                    {
                      continue;
                    }

                    if (v39 <= *(v36 - 3))
                    {
                      if (v39 <= *(v36 + v28) || v39 <= *(v36 + 3) || v39 <= *(v36 + v27))
                      {
                        continue;
                      }

LABEL_696:
                      if (v39 <= *(v36 + v34) || v39 <= *(v36 + v25))
                      {
                        continue;
                      }

                      v56 = *(v36 + v23);
                      goto LABEL_777;
                    }

                    if (v39 <= *(v36 + v20))
                    {
                      if (v39 <= *(v36 + 3) || v39 <= *(v36 + v27))
                      {
                        continue;
                      }

                      goto LABEL_696;
                    }

                    if (v39 <= *(v36 + v19))
                    {
                      if (v39 <= *(v36 + v27))
                      {
                        continue;
                      }

                      goto LABEL_696;
                    }

                    if (v39 <= *(v36 + v18))
                    {
                      goto LABEL_696;
                    }
                  }

                  else
                  {
                    if (v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v22))
                    {
                      continue;
                    }

                    if (v38 >= *(v36 + v34))
                    {
                      if (v38 >= *(v36 + v21) || v38 >= *(v36 - 3))
                      {
                        continue;
                      }

                      goto LABEL_217;
                    }

                    if (v38 >= *(v36 + v27))
                    {
                      if (v38 >= *(v36 + v21))
                      {
                        continue;
                      }

                      goto LABEL_284;
                    }

                    if (v38 >= *(v36 + 3))
                    {
                      goto LABEL_365;
                    }

                    if (v38 >= *(v36 + v28))
                    {
                      goto LABEL_676;
                    }
                  }
                }
              }
            }

            else
            {
              v49 = *(v36 + v23);
              if (v38 >= v49)
              {
                if (v39 <= v49 || v39 <= *(v36 + v24) || v39 <= *(v36 + v22))
                {
                  continue;
                }

                if (v39 <= *(v36 + v21))
                {
                  if (v39 <= *(v36 + v29) || v39 <= *(v36 + v28) || v39 <= *(v36 + 3))
                  {
                    continue;
                  }

                  goto LABEL_497;
                }

                if (v39 <= *(v36 - 3))
                {
                  if (v39 <= *(v36 + v28) || v39 <= *(v36 + 3) || v39 <= *(v36 + v27))
                  {
                    continue;
                  }

                  goto LABEL_639;
                }

                if (v39 <= *(v36 + v20))
                {
                  if (v39 <= *(v36 + 3) || v39 <= *(v36 + v27))
                  {
                    continue;
                  }

                  goto LABEL_639;
                }

                if (v39 <= *(v36 + v19))
                {
                  if (v39 <= *(v36 + v27))
                  {
                    continue;
                  }

                  goto LABEL_639;
                }

                if (v39 <= *(v36 + v18))
                {
                  goto LABEL_639;
                }
              }

              else
              {
                if (v38 >= *(v36 + v25) || v38 >= *(v36 + v24))
                {
                  continue;
                }

                if (v38 >= *(v36 + v34))
                {
                  if (v38 >= *(v36 + v22) || v38 >= *(v36 + v21) || v38 >= *(v36 - 3) || v38 >= *(v36 + v20))
                  {
                    continue;
                  }

                  goto LABEL_274;
                }

                if (v38 >= *(v36 + v27))
                {
                  if (v38 >= *(v36 + v22) || v38 >= *(v36 + v21) || v38 >= *(v36 - 3))
                  {
                    continue;
                  }

                  goto LABEL_357;
                }

                if (v38 >= *(v36 + 3))
                {
                  if (v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                  {
                    continue;
                  }

                  goto LABEL_453;
                }

                if (v38 >= *(v36 + v28))
                {
                  if (v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                  {
                    continue;
                  }

LABEL_678:
                  v52 = *(v36 - 3);
                  goto LABEL_679;
                }

                if (v38 >= *(v36 + v29))
                {
                  goto LABEL_552;
                }
              }
            }
          }
        }

        else
        {
          v41 = *(v36 + v30);
          if (v38 >= v41)
          {
            v50 = *(v36 + v23);
            if (v39 <= v41)
            {
              if (v38 >= v50)
              {
                if (v39 <= v50 || v39 <= *(v36 + v25) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22))
                {
                  continue;
                }

                if (v39 <= *(v36 + v34))
                {
                  if (v39 <= *(v36 + v21) || v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                  {
                    continue;
                  }

                  goto LABEL_651;
                }

                if (v39 <= *(v36 + v27))
                {
                  if (v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                  {
                    continue;
                  }

                  goto LABEL_693;
                }

                if (v39 <= *(v36 + 3))
                {
                  if (v39 <= *(v36 + v21))
                  {
                    continue;
                  }

LABEL_690:
                  if (v39 <= *(v36 - 3))
                  {
                    continue;
                  }

LABEL_691:
                  v56 = *(v36 + v20);
                  goto LABEL_777;
                }

                if (v39 <= *(v36 + v28))
                {
                  goto LABEL_642;
                }

                if (v39 <= *(v36 + v29))
                {
                  goto LABEL_145;
                }
              }

              else
              {
                if (v38 >= *(v36 + v24) || v38 >= *(v36 + v22))
                {
                  continue;
                }

                if (v38 >= *(v36 + v21))
                {
                  if (v38 >= *(v36 + v29) || v38 >= *(v36 + v28) || v38 >= *(v36 + 3) || v38 >= *(v36 + v27))
                  {
                    continue;
                  }

LABEL_566:
                  if (v38 >= *(v36 + v34))
                  {
                    continue;
                  }

                  v52 = *(v36 + v25);
                  goto LABEL_679;
                }

                if (v38 >= *(v36 - 3))
                {
                  if (v38 >= *(v36 + v28) || v38 >= *(v36 + 3) || v38 >= *(v36 + v27))
                  {
                    continue;
                  }

                  goto LABEL_566;
                }

                if (v38 >= *(v36 + v20))
                {
                  if (v38 >= *(v36 + 3) || v38 >= *(v36 + v27))
                  {
                    continue;
                  }

                  goto LABEL_566;
                }

                if (v38 >= *(v36 + v19))
                {
                  if (v38 >= *(v36 + v27))
                  {
                    continue;
                  }

                  goto LABEL_566;
                }

                if (v38 >= *(v36 + v18))
                {
                  goto LABEL_566;
                }
              }
            }

            else if (v38 >= v50)
            {
              if (v39 <= v50 || v39 <= *(v36 + v25) || v39 <= *(v36 + v24))
              {
                continue;
              }

              if (v39 <= *(v36 + v34))
              {
                if (v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                {
                  continue;
                }

LABEL_651:
                if (v39 <= *(v36 + v19))
                {
                  continue;
                }

                goto LABEL_652;
              }

              if (v39 <= *(v36 + v27))
              {
                if (v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                {
                  continue;
                }

                goto LABEL_693;
              }

              if (v39 <= *(v36 + 3))
              {
                if (v39 <= *(v36 + v22) || v39 <= *(v36 + v21))
                {
                  continue;
                }

                goto LABEL_690;
              }

              if (v39 <= *(v36 + v28))
              {
                if (v39 <= *(v36 + v22))
                {
                  continue;
                }

LABEL_642:
                if (v39 <= *(v36 + v21))
                {
                  continue;
                }

LABEL_643:
                v56 = *(v36 - 3);
                goto LABEL_777;
              }

              if (v39 <= *(v36 + v29))
              {
                goto LABEL_115;
              }
            }

            else
            {
              if (v38 >= *(v36 + v24) || v38 >= *(v36 + v22))
              {
                continue;
              }

              if (v38 >= *(v36 + v21))
              {
                if (v38 >= *(v36 + v29) || v38 >= *(v36 + v28) || v38 >= *(v36 + 3) || v38 >= *(v36 + v27))
                {
                  continue;
                }

                goto LABEL_566;
              }

              if (v38 >= *(v36 - 3))
              {
                if (v38 >= *(v36 + v28) || v38 >= *(v36 + 3) || v38 >= *(v36 + v27))
                {
                  continue;
                }

                goto LABEL_566;
              }

              if (v38 >= *(v36 + v20))
              {
                if (v38 >= *(v36 + 3) || v38 >= *(v36 + v27))
                {
                  continue;
                }

                goto LABEL_566;
              }

              if (v38 >= *(v36 + v19))
              {
                if (v38 >= *(v36 + v27))
                {
                  continue;
                }

                goto LABEL_566;
              }

              if (v38 >= *(v36 + v18))
              {
                goto LABEL_566;
              }
            }
          }

          else
          {
            v42 = *(v36 + v29);
            if (v38 >= v42)
            {
              v53 = *(v36 + v24);
              if (v39 <= v42)
              {
                if (v38 >= v53)
                {
                  if (v39 <= v53 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21))
                  {
                    continue;
                  }

                  if (v39 <= *(v36 + v34))
                  {
                    if (v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                    {
                      continue;
                    }

                    goto LABEL_651;
                  }

                  if (v39 <= *(v36 + v27))
                  {
                    if (v39 <= *(v36 - 3))
                    {
                      continue;
                    }

LABEL_693:
                    if (v39 <= *(v36 + v20))
                    {
                      continue;
                    }

LABEL_694:
                    v56 = *(v36 + v19);
                    goto LABEL_777;
                  }

                  if (v39 <= *(v36 + 3))
                  {
                    goto LABEL_690;
                  }

                  if (v39 <= *(v36 + v28))
                  {
                    goto LABEL_643;
                  }
                }

                else
                {
                  if (v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                  {
                    continue;
                  }

                  if (v38 >= *(v36 - 3))
                  {
                    if (v38 >= *(v36 + v28) || v38 >= *(v36 + 3) || v38 >= *(v36 + v27) || v38 >= *(v36 + v34))
                    {
                      continue;
                    }

LABEL_582:
                    if (v38 >= *(v36 + v25))
                    {
                      continue;
                    }

                    v52 = *(v36 + v23);
                    goto LABEL_679;
                  }

                  if (v38 >= *(v36 + v20))
                  {
                    if (v38 >= *(v36 + 3) || v38 >= *(v36 + v27) || v38 >= *(v36 + v34))
                    {
                      continue;
                    }

                    goto LABEL_582;
                  }

                  if (v38 >= *(v36 + v19))
                  {
                    if (v38 >= *(v36 + v27) || v38 >= *(v36 + v34))
                    {
                      continue;
                    }

                    goto LABEL_582;
                  }

                  if (v38 >= *(v36 + v18))
                  {
                    if (v38 >= *(v36 + v34))
                    {
                      continue;
                    }

                    goto LABEL_582;
                  }
                }
              }

              else if (v38 >= v53)
              {
                if (v39 <= v53 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v22))
                {
                  continue;
                }

                if (v39 <= *(v36 + v34))
                {
                  if (v39 <= *(v36 + v21) || v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                  {
                    continue;
                  }

                  goto LABEL_651;
                }

                if (v39 <= *(v36 + v27))
                {
                  if (v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                  {
                    continue;
                  }

                  goto LABEL_693;
                }

                if (v39 <= *(v36 + 3))
                {
                  if (v39 <= *(v36 + v21))
                  {
                    continue;
                  }

                  goto LABEL_690;
                }

                if (v39 <= *(v36 + v28))
                {
                  goto LABEL_642;
                }
              }

              else
              {
                if (v38 >= *(v36 + v22) || v38 >= *(v36 + v21))
                {
                  continue;
                }

                if (v38 >= *(v36 - 3))
                {
                  if (v38 >= *(v36 + v28) || v38 >= *(v36 + 3) || v38 >= *(v36 + v27) || v38 >= *(v36 + v34))
                  {
                    continue;
                  }

                  goto LABEL_582;
                }

                if (v38 >= *(v36 + v20))
                {
                  if (v38 >= *(v36 + 3) || v38 >= *(v36 + v27) || v38 >= *(v36 + v34))
                  {
                    continue;
                  }

                  goto LABEL_582;
                }

                if (v38 >= *(v36 + v19))
                {
                  if (v38 >= *(v36 + v27) || v38 >= *(v36 + v34))
                  {
                    continue;
                  }

                  goto LABEL_582;
                }

                if (v38 >= *(v36 + v18))
                {
                  if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25))
                  {
                    continue;
                  }

                  v52 = *(v36 + v23);
                  goto LABEL_679;
                }
              }
            }

            else
            {
              v43 = *(v36 + v28);
              if (v38 >= v43)
              {
                v57 = *(v36 + v22);
                if (v39 <= v43)
                {
                  if (v38 >= v57)
                  {
                    if (v39 <= v57 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                    {
                      continue;
                    }

                    if (v39 <= *(v36 + v34))
                    {
                      if (v39 <= *(v36 + v20))
                      {
                        continue;
                      }

                      v74 = *(v36 + v19);
                      goto LABEL_737;
                    }

                    if (v39 <= *(v36 + v27))
                    {
                      v84 = *(v36 + v20);
                      goto LABEL_770;
                    }

                    if (v39 <= *(v36 + 3))
                    {
                      goto LABEL_535;
                    }
                  }

                  else
                  {
                    if (v38 >= *(v36 + v21) || v38 >= *(v36 - 3))
                    {
                      continue;
                    }

                    if (v38 >= *(v36 + v20))
                    {
                      if (v38 >= *(v36 + 3) || v38 >= *(v36 + v27))
                      {
                        continue;
                      }

                      goto LABEL_597;
                    }

                    if (v38 >= *(v36 + v19))
                    {
                      if (v38 >= *(v36 + v27))
                      {
                        continue;
                      }

LABEL_597:
                      if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25))
                      {
                        continue;
                      }

LABEL_599:
                      if (v38 >= *(v36 + v23))
                      {
                        continue;
                      }

                      v52 = *(v36 + v24);
                      goto LABEL_679;
                    }

                    if (v38 >= *(v36 + v18))
                    {
                      if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25))
                      {
                        continue;
                      }

                      goto LABEL_599;
                    }
                  }
                }

                else if (v38 >= v57)
                {
                  if (v39 <= v57 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v21))
                  {
                    continue;
                  }

                  if (v39 <= *(v36 + v34))
                  {
                    if (v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                    {
                      continue;
                    }

                    goto LABEL_701;
                  }

                  if (v39 <= *(v36 + v27))
                  {
                    if (v39 <= *(v36 - 3))
                    {
                      continue;
                    }

LABEL_734:
                    v84 = *(v36 + v20);
                    goto LABEL_770;
                  }

                  if (v39 <= *(v36 + 3))
                  {
                    goto LABEL_533;
                  }
                }

                else
                {
                  if (v38 >= *(v36 + v21) || v38 >= *(v36 - 3))
                  {
                    continue;
                  }

                  if (v38 >= *(v36 + v20))
                  {
                    if (v38 >= *(v36 + 3) || v38 >= *(v36 + v27) || v38 >= *(v36 + v34) || v38 >= *(v36 + v25))
                    {
                      continue;
                    }

                    goto LABEL_599;
                  }

                  if (v38 >= *(v36 + v19))
                  {
                    if (v38 >= *(v36 + v27) || v38 >= *(v36 + v34) || v38 >= *(v36 + v25))
                    {
                      continue;
                    }

                    goto LABEL_599;
                  }

                  if (v38 >= *(v36 + v18))
                  {
                    if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25))
                    {
                      continue;
                    }

                    goto LABEL_599;
                  }
                }
              }

              else
              {
                v44 = *(v36 + 3);
                if (v38 >= v44)
                {
                  if (v39 <= v44)
                  {
                    v66 = *(v36 + v21);
                    if (v38 < v66)
                    {
                      if (v38 >= *(v36 - 3) || v38 >= *(v36 + v20))
                      {
                        continue;
                      }

                      if (v38 >= *(v36 + v19))
                      {
                        if (v38 >= *(v36 + v27) || v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23))
                        {
                          continue;
                        }

LABEL_609:
                        if (v38 >= *(v36 + v24))
                        {
                          continue;
                        }

                        v52 = *(v36 + v22);
                        goto LABEL_679;
                      }

                      if (v38 >= *(v36 + v18))
                      {
                        if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23))
                        {
                          continue;
                        }

                        goto LABEL_609;
                      }

                      goto LABEL_778;
                    }

                    if (v39 <= v66 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 - 3) || v39 <= *(v36 + v20))
                    {
                      continue;
                    }

                    goto LABEL_334;
                  }

                  v59 = *(v36 + v20);
                  if (v38 >= v59)
                  {
                    if (v39 <= v59)
                    {
                      if (v39 <= *(v36 + v27) || v39 <= *(v36 + v34) || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22))
                      {
                        continue;
                      }

                      v76 = *(v36 + v21);
LABEL_428:
                      if (v39 <= v76)
                      {
                        continue;
                      }

                      v56 = *(v36 - 3);
                      goto LABEL_777;
                    }

                    if (v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                    {
                      continue;
                    }

LABEL_334:
                    if (v39 <= *(v36 + v34))
                    {
                      goto LABEL_701;
                    }

                    if (v39 <= *(v36 + v27))
                    {
                      goto LABEL_771;
                    }

                    goto LABEL_778;
                  }

                  v60 = *(v36 + v21);
                  if (v38 >= v60)
                  {
                    if (v39 <= v60 || v39 <= *(v36 + v27) || v39 <= *(v36 + v34) || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24))
                    {
                      continue;
                    }

                    v76 = *(v36 + v22);
                    goto LABEL_428;
                  }

                  if (v38 >= *(v36 - 3))
                  {
                    continue;
                  }

                  if (v38 >= *(v36 + v19))
                  {
                    if (v38 >= *(v36 + v27) || v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23))
                    {
                      continue;
                    }

                    goto LABEL_609;
                  }

                  if (v38 >= *(v36 + v18))
                  {
                    if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23))
                    {
                      continue;
                    }

                    goto LABEL_609;
                  }
                }

                else
                {
                  v45 = *(v36 + v27);
                  if (v38 >= v45)
                  {
                    if (v39 > v45)
                    {
                      v63 = *(v36 + v19);
                      if (v38 >= v63)
                      {
                        if (v39 > v63)
                        {
                          if (v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                          {
                            continue;
                          }

                          v77 = *(v36 + v20);
                          goto LABEL_448;
                        }

                        if (v39 <= *(v36 + v34) || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21))
                        {
                          continue;
                        }

LABEL_533:
                        v81 = *(v36 - 3);
                      }

                      else
                      {
                        v64 = *(v36 - 3);
                        if (v38 < v64)
                        {
                          if (v38 >= *(v36 + v20))
                          {
                            continue;
                          }

                          if (v38 < *(v36 + v18))
                          {
                            goto LABEL_778;
                          }

                          if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24))
                          {
                            continue;
                          }

                          goto LABEL_325;
                        }

                        if (v39 <= v64 || v39 <= *(v36 + v34) || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22))
                        {
                          continue;
                        }

                        v81 = *(v36 + v21);
                      }

                      if (v39 <= v81)
                      {
                        continue;
                      }

LABEL_535:
                      v56 = *(v36 + v20);
                      goto LABEL_777;
                    }

                    v72 = *(v36 - 3);
                    if (v38 >= v72)
                    {
                      if (v39 <= v72 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 + v20))
                      {
                        continue;
                      }

                      v77 = *(v36 + v19);
LABEL_448:
                      if (v39 <= v77)
                      {
                        continue;
                      }

                      if (v39 > *(v36 + v34))
                      {
                        goto LABEL_778;
                      }

LABEL_738:
                      v56 = *(v36 + v18);
                      goto LABEL_777;
                    }

                    if (v38 >= *(v36 + v20) || v38 >= *(v36 + v19))
                    {
                      continue;
                    }

                    if (v38 >= *(v36 + v18))
                    {
                      if (v38 >= *(v36 + v34) || v38 >= *(v36 + v25) || v38 >= *(v36 + v23) || v38 >= *(v36 + v24))
                      {
                        continue;
                      }

LABEL_325:
                      if (v38 >= *(v36 + v22))
                      {
                        continue;
                      }

                      v52 = *(v36 + v21);
                      goto LABEL_679;
                    }
                  }

                  else
                  {
                    v46 = *(v36 + v34);
                    if (v38 >= v46)
                    {
                      if (v39 > v46)
                      {
                        if (v38 >= *(v36 + v18))
                        {
                          if (v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                          {
                            continue;
                          }

                          goto LABEL_734;
                        }

                        v68 = *(v36 + v20);
                        if (v38 < v68)
                        {
                          v52 = *(v36 + v19);
                          goto LABEL_679;
                        }

                        if (v39 <= v68 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21))
                        {
                          continue;
                        }

                        v84 = *(v36 - 3);
LABEL_770:
                        if (v39 <= v84)
                        {
                          continue;
                        }

LABEL_771:
                        v56 = *(v36 + v19);
                        goto LABEL_777;
                      }

                      v78 = *(v36 + v20);
                      if (v38 < v78)
                      {
                        if (v38 >= *(v36 + v19))
                        {
                          continue;
                        }

LABEL_526:
                        v52 = *(v36 + v18);
                        goto LABEL_679;
                      }

                      if (v39 <= v78 || v39 <= *(v36 + v25) || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                      {
                        continue;
                      }

LABEL_701:
                      v74 = *(v36 + v19);
                      goto LABEL_737;
                    }

                    v47 = *(v36 + v25);
                    if (v38 >= v47)
                    {
                      v73 = *(v36 + v19);
                      if (v39 <= v47)
                      {
                        if (v38 >= v73)
                        {
                          continue;
                        }

                        goto LABEL_526;
                      }

                      if (v38 < v73)
                      {
                        goto LABEL_526;
                      }

                      if (v39 <= v73 || v39 <= *(v36 + v23) || v39 <= *(v36 + v24) || v39 <= *(v36 + v22) || v39 <= *(v36 + v21) || v39 <= *(v36 - 3))
                      {
                        continue;
                      }

                      v74 = *(v36 + v20);
LABEL_737:
                      if (v39 <= v74)
                      {
                        continue;
                      }

                      goto LABEL_738;
                    }

                    if (v38 >= *(v36 + v23))
                    {
                      goto LABEL_526;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_778:
        if (v13 == v33)
        {
          v171 = v26;
          v94 = v15;
          v95 = v19;
          v96 = v18;
          v97 = v17;
          v98 = v16;
          v99 = a1;
          v33 = 2 * v13;
          v100 = v12;
          v101 = malloc_type_realloc(v12, 16 * v13, 0x100004000313F17uLL);
          if (!v101)
          {
            free(v100);
            a6 = v156;
            goto LABEL_830;
          }

          v12 = v101;
          a1 = v99;
          v31 = a2;
          v16 = v98;
          v17 = v97;
          v18 = v96;
          v19 = v95;
          v15 = v94;
          v20 = v159;
          v34 = v160;
          v22 = v168;
          v21 = v169;
          v24 = v166;
          v23 = v167;
          v27 = v164;
          v25 = v165;
          v26 = v171;
          v29 = v162;
          v28 = v163;
          v32 = (a2 - 3);
          v30 = v161;
        }

        v102 = &v12[8 * v13];
        *v102 = i;
        *(v102 + 1) = v26;
        ++v13;
      }
    }

    ++v26;
  }

  while (v26 != v16);
  a6 = v156;
  a5 = v157;
  a4 = v155;
LABEL_827:
  v104 = v12;
  v105 = sub_2779A11D4(a1, a4, v12, v13);
  v106 = v105;
  if (!v105 && v13 >= 1)
  {
    free(v104);
    goto LABEL_830;
  }

  *a5 = 0;
  *a6 = -1;
  if (!v105 || (v108 = v13, v13 <= 0))
  {
    v107 = 0;
    *a6 = 0;
    goto LABEL_909;
  }

  v107 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
  if (!v107)
  {
    goto LABEL_909;
  }

  v109 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  if (!v109)
  {
    v153 = v107;
LABEL_908:
    free(v153);
    v107 = 0;
    goto LABEL_909;
  }

  v110 = v109;
  v158 = a5;
  v111 = (v108 - 1);
  v112 = v104[2 * v111 + 1];
  v113 = malloc_type_malloc(4 * (v112 + 1), 0x100004052888210uLL);
  if (!v113)
  {
    free(v107);
    v153 = v110;
    goto LABEL_908;
  }

  v114 = v113;
  if ((v112 & 0x80000000) == 0)
  {
    memset(v113, 255, 4 * (v112 + 1));
  }

  v115 = 0;
  v116 = v104 + 1;
  v117 = -1;
  do
  {
    v118 = *v116;
    if (v118 != v117)
    {
      v114[v118] = v115;
      v117 = *v116;
    }

    ++v115;
    v116 += 2;
  }

  while (v108 != v115);
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = (v104 + 1);
  do
  {
    v124 = v106[v119];
    v125 = &v104[2 * v119];
    v126 = *v125;
    v127 = v125[1];
    if (!v119 || (v128 = &v104[2 * v119 - 2], *v128 != v126 - 1) || v128[1] != v127 || v106[v119 - 1] < v124)
    {
      if (v119 >= v111 || (v129 = &v104[2 * v119 + 2], *v129 != v126 + 1) || v129[1] != v127 || v106[v119 + 1] < v124)
      {
        v130 = v127 - 1;
        if (v127 >= 1 && v114[v130] != -1)
        {
          if (v104[2 * v122 + 1] < v130)
          {
            v122 = v114[v130];
          }

          v131 = v122;
          v132 = &v104[2 * v122];
          v133 = v132[1];
          if (v133 < v127)
          {
            do
            {
              if (*v132 >= v126 - 1)
              {
                break;
              }

              LODWORD(v131) = v131 + 1;
              v134 = v132[3];
              v132 += 2;
            }

            while (v134 < v127);
            v122 = v131;
            v131 = v131;
            v133 = v104[2 * v131 + 1];
          }

          if (v133 < v127)
          {
            v135 = &v104[2 * v131];
            v136 = v126 + 1;
            v137 = &v106[v131];
            do
            {
              v138 = *v135;
              if (*v135 > v136)
              {
                break;
              }

              v140 = v138 == v136 || v138 == v126 - 1 || v138 == v126;
              if (v140 && *v137 >= v124)
              {
                goto LABEL_902;
              }

              v141 = v135[3];
              ++v137;
              v135 += 2;
            }

            while (v141 < v127);
          }
        }

        if (v127 < v112)
        {
          v142 = v127 + 1;
          if (v114[v127 + 1] != -1 && v121 < v108)
          {
            if (v104[2 * v121 + 1] <= v127)
            {
              v121 = v114[v127 + 1];
            }

            if (v121 < v108)
            {
              v144 = v121;
              v145 = &v123[8 * v121];
              while (*v145 == v142 && *(v145 - 1) < v126 - 1)
              {
                ++v144;
                v145 += 8;
                if (v108 == v144)
                {
                  v121 = v108;
                  goto LABEL_901;
                }
              }

              v121 = v144;
            }

            if (v121 < v108)
            {
              v146 = v126 + 1;
              v147 = v108 - v121;
              v148 = &v106[v121];
              v149 = &v123[8 * v121];
              do
              {
                if (*v149 != v142)
                {
                  break;
                }

                v150 = *(v149 - 1);
                if (v150 > v146)
                {
                  break;
                }

                v152 = v150 == v146 || v150 == v126 - 1 || v150 == v126;
                if (v152 && *v148 >= v124)
                {
                  goto LABEL_902;
                }

                ++v148;
                v149 += 8;
                --v147;
              }

              while (v147);
            }
          }
        }

LABEL_901:
        *(v107 + v120) = *v125;
        *(v110 + v120++) = v106[v119];
      }
    }

LABEL_902:
    ++v119;
  }

  while (v119 != v108);
  free(v114);
  *v158 = v110;
  *a6 = v120;
LABEL_909:
  free(v104);
  free(v106);
  return v107;
}

double sub_277B2F1E0(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = (2 * a1);
  v12 = (2 * a3);
  if (a5 > 31)
  {
    switch(a5)
    {
      case 32:
        v99 = vabdq_u16(*v11, *v12);
        v100 = vmull_u16(*v99.i8, *v99.i8);
        v101 = vmull_high_u16(v99, v99);
        v102 = vabdq_u16(*(2 * a1 + 0x10), *(2 * a3 + 0x10));
        v103 = vmull_u16(*v102.i8, *v102.i8);
        v104 = vmull_high_u16(v102, v102);
        v105 = vabdq_u16(*(2 * a1 + 0x20), *(2 * a3 + 0x20));
        v106 = vmull_u16(*v105.i8, *v105.i8);
        v107 = vmull_high_u16(v105, v105);
        v108 = vabdq_u16(*(2 * a1 + 0x30), *(2 * a3 + 0x30));
        v109 = vmull_u16(*v108.i8, *v108.i8);
        v110 = vmull_high_u16(v108, v108);
        v111 = a6 - 1;
        if (a6 != 1)
        {
          v112 = (v12 + 2 * a4 + 32);
          v113 = (v11 + 2 * a2 + 32);
          do
          {
            v114 = vabdq_u16(v113[-2], v112[-2]);
            v100 = vmlal_u16(v100, *v114.i8, *v114.i8);
            v101 = vmlal_high_u16(v101, v114, v114);
            v115 = vabdq_u16(v113[-1], v112[-1]);
            v103 = vmlal_u16(v103, *v115.i8, *v115.i8);
            v104 = vmlal_high_u16(v104, v115, v115);
            v116 = vabdq_u16(*v113, *v112);
            v106 = vmlal_u16(v106, *v116.i8, *v116.i8);
            v107 = vmlal_high_u16(v107, v116, v116);
            v117 = vabdq_u16(v113[1], v112[1]);
            v109 = vmlal_u16(v109, *v117.i8, *v117.i8);
            v110 = vmlal_high_u16(v110, v117, v117);
            v112 = (v112 + 2 * a4);
            v113 = (v113 + 2 * a2);
            --v111;
          }

          while (v111);
        }

        v24 = vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpaddlq_u32(v101), v100), v103), v104), v106), v107), v109), v110);
        goto LABEL_24;
      case 64:
        v130 = vabdq_u16(*v11, *v12);
        v131 = vabdq_u16(*(2 * a1 + 0x10), *(2 * a3 + 0x10));
        v132 = vabdq_u16(*(2 * a1 + 0x20), *(2 * a3 + 0x20));
        v133 = vabdq_u16(*(2 * a1 + 0x30), *(2 * a3 + 0x30));
        v134 = vabdq_u16(*(2 * a1 + 0x40), *(2 * a3 + 0x40));
        v135 = vmlal_u16(vmull_u16(*v134.i8, *v134.i8), *v130.i8, *v130.i8);
        v136 = vmlal_high_u16(vmull_high_u16(v134, v134), v130, v130);
        v137 = vabdq_u16(*(2 * a1 + 0x50), *(2 * a3 + 0x50));
        v138 = vmlal_u16(vmull_u16(*v137.i8, *v137.i8), *v131.i8, *v131.i8);
        v139 = vmlal_high_u16(vmull_high_u16(v137, v137), v131, v131);
        v140 = vabdq_u16(*(2 * a1 + 0x60), *(2 * a3 + 0x60));
        v141 = vmlal_u16(vmull_u16(*v140.i8, *v140.i8), *v132.i8, *v132.i8);
        v142 = vmlal_high_u16(vmull_high_u16(v140, v140), v132, v132);
        v143 = vabdq_u16(*(2 * a1 + 0x70), *(2 * a3 + 0x70));
        v144 = vmlal_u16(vmull_u16(*v143.i8, *v143.i8), *v133.i8, *v133.i8);
        v145 = vmlal_high_u16(vmull_high_u16(v143, v143), v133, v133);
        v146 = a6 - 1;
        if (a6 != 1)
        {
          v147 = (v12 + 2 * a4 + 64);
          v148 = (v11 + 2 * a2 + 64);
          do
          {
            v149 = vabdq_u16(v148[-4], v147[-4]);
            v150 = vmlal_u16(v135, *v149.i8, *v149.i8);
            v151 = vmlal_high_u16(v136, v149, v149);
            v152 = vabdq_u16(v148[-3], v147[-3]);
            v153 = vmlal_u16(v138, *v152.i8, *v152.i8);
            v154 = vmlal_high_u16(v139, v152, v152);
            v155 = vabdq_u16(v148[-2], v147[-2]);
            v156 = vmlal_u16(v141, *v155.i8, *v155.i8);
            v157 = vmlal_high_u16(v142, v155, v155);
            v158 = vabdq_u16(v148[-1], v147[-1]);
            v159 = vmlal_u16(v144, *v158.i8, *v158.i8);
            v160 = vmlal_high_u16(v145, v158, v158);
            v161 = vabdq_u16(*v148, *v147);
            v135 = vmlal_u16(v150, *v161.i8, *v161.i8);
            v136 = vmlal_high_u16(v151, v161, v161);
            v162 = vabdq_u16(v148[1], v147[1]);
            v138 = vmlal_u16(v153, *v162.i8, *v162.i8);
            v139 = vmlal_high_u16(v154, v162, v162);
            v163 = vabdq_u16(v148[2], v147[2]);
            v141 = vmlal_u16(v156, *v163.i8, *v163.i8);
            v142 = vmlal_high_u16(v157, v163, v163);
            v164 = vabdq_u16(v148[3], v147[3]);
            v144 = vmlal_u16(v159, *v164.i8, *v164.i8);
            v145 = vmlal_high_u16(v160, v164, v164);
            v147 = (v147 + 2 * a4);
            v148 = (v148 + 2 * a2);
            --v146;
          }

          while (v146);
        }

        v92 = vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpaddlq_u32(v136), v135), v138), v139), v141), v142), v144), v145);
        break;
      case 128:
        v25 = vabdq_u16(*(2 * a1 + 0x80), *(2 * a3 + 0x80));
        v26 = vabdq_u16(*v11, *v12);
        v27 = vmlal_u16(vmull_u16(*v25.i8, *v25.i8), *v26.i8, *v26.i8);
        v28 = vmlal_high_u16(vmull_high_u16(v25, v25), v26, v26);
        v29 = vabdq_u16(*(2 * a1 + 0x10), *(2 * a3 + 0x10));
        v30 = vabdq_u16(*(2 * a1 + 0x20), *(2 * a3 + 0x20));
        v31 = vabdq_u16(*(2 * a1 + 0x30), *(2 * a3 + 0x30));
        v32 = vabdq_u16(*(2 * a1 + 0x40), *(2 * a3 + 0x40));
        v33 = vabdq_u16(*(2 * a1 + 0x50), *(2 * a3 + 0x50));
        v34 = vabdq_u16(*(2 * a1 + 0x60), *(2 * a3 + 0x60));
        v35 = vabdq_u16(*(2 * a1 + 0x70), *(2 * a3 + 0x70));
        v36 = vabdq_u16(*(2 * a1 + 0x90), *(2 * a3 + 0x90));
        v37 = vmlal_u16(vmull_u16(*v36.i8, *v36.i8), *v29.i8, *v29.i8);
        v38 = vmlal_high_u16(vmull_high_u16(v36, v36), v29, v29);
        v39 = vabdq_u16(*(2 * a1 + 0xA0), *(2 * a3 + 0xA0));
        v40 = vmlal_u16(vmull_u16(*v39.i8, *v39.i8), *v30.i8, *v30.i8);
        v41 = vmlal_high_u16(vmull_high_u16(v39, v39), v30, v30);
        v42 = vabdq_u16(*(2 * a1 + 0xB0), *(2 * a3 + 0xB0));
        v43 = vmlal_u16(vmull_u16(*v42.i8, *v42.i8), *v31.i8, *v31.i8);
        v44 = vmlal_high_u16(vmull_high_u16(v42, v42), v31, v31);
        v45 = vabdq_u16(*(2 * a1 + 0xC0), *(2 * a3 + 0xC0));
        v46 = vmlal_u16(vmull_u16(*v45.i8, *v45.i8), *v32.i8, *v32.i8);
        v47 = vmlal_high_u16(vmull_high_u16(v45, v45), v32, v32);
        v48 = vabdq_u16(*(2 * a1 + 0xD0), *(2 * a3 + 0xD0));
        v49 = vmlal_u16(vmull_u16(*v48.i8, *v48.i8), *v33.i8, *v33.i8);
        v50 = vmlal_high_u16(vmull_high_u16(v48, v48), v33, v33);
        v51 = vabdq_u16(*(2 * a1 + 0xE0), *(2 * a3 + 0xE0));
        v52 = vmlal_u16(vmull_u16(*v51.i8, *v51.i8), *v34.i8, *v34.i8);
        v53 = vmlal_high_u16(vmull_high_u16(v51, v51), v34, v34);
        v54 = vabdq_u16(*(2 * a1 + 0xF0), *(2 * a3 + 0xF0));
        v55 = vmlal_u16(vmull_u16(*v54.i8, *v54.i8), *v35.i8, *v35.i8);
        v56 = vmlal_high_u16(vmull_high_u16(v54, v54), v35, v35);
        v57 = a6 - 1;
        if (a6 != 1)
        {
          v58 = (v12 + 2 * a4 + 128);
          v59 = (v11 + 2 * a2 + 128);
          do
          {
            v60 = vabdq_u16(v59[-8], v58[-8]);
            v61 = vmlal_u16(v27, *v60.i8, *v60.i8);
            v62 = vmlal_high_u16(v28, v60, v60);
            v63 = vabdq_u16(v59[-7], v58[-7]);
            v64 = vmlal_u16(v37, *v63.i8, *v63.i8);
            v65 = vmlal_high_u16(v38, v63, v63);
            v66 = vabdq_u16(v59[-6], v58[-6]);
            v67 = vmlal_u16(v40, *v66.i8, *v66.i8);
            v68 = vmlal_high_u16(v41, v66, v66);
            v69 = vabdq_u16(v59[-5], v58[-5]);
            v70 = vmlal_u16(v43, *v69.i8, *v69.i8);
            v71 = vmlal_high_u16(v44, v69, v69);
            v72 = vabdq_u16(v59[-4], v58[-4]);
            v73 = vmlal_u16(v46, *v72.i8, *v72.i8);
            v74 = vmlal_high_u16(v47, v72, v72);
            v75 = vabdq_u16(v59[-3], v58[-3]);
            v76 = vmlal_u16(v49, *v75.i8, *v75.i8);
            v77 = vmlal_high_u16(v50, v75, v75);
            v78 = vabdq_u16(v59[-2], v58[-2]);
            v79 = vmlal_u16(v52, *v78.i8, *v78.i8);
            v80 = vmlal_high_u16(v53, v78, v78);
            v81 = vabdq_u16(v59[-1], v58[-1]);
            v82 = vmlal_u16(v55, *v81.i8, *v81.i8);
            v83 = vmlal_high_u16(v56, v81, v81);
            v84 = vabdq_u16(*v59, *v58);
            v27 = vmlal_u16(v61, *v84.i8, *v84.i8);
            v28 = vmlal_high_u16(v62, v84, v84);
            v85 = vabdq_u16(v59[1], v58[1]);
            v37 = vmlal_u16(v64, *v85.i8, *v85.i8);
            v38 = vmlal_high_u16(v65, v85, v85);
            v86 = vabdq_u16(v59[2], v58[2]);
            v40 = vmlal_u16(v67, *v86.i8, *v86.i8);
            v41 = vmlal_high_u16(v68, v86, v86);
            v87 = vabdq_u16(v59[3], v58[3]);
            v43 = vmlal_u16(v70, *v87.i8, *v87.i8);
            v44 = vmlal_high_u16(v71, v87, v87);
            v88 = vabdq_u16(v59[4], v58[4]);
            v46 = vmlal_u16(v73, *v88.i8, *v88.i8);
            v47 = vmlal_high_u16(v74, v88, v88);
            v89 = vabdq_u16(v59[5], v58[5]);
            v49 = vmlal_u16(v76, *v89.i8, *v89.i8);
            v50 = vmlal_high_u16(v77, v89, v89);
            v90 = vabdq_u16(v59[6], v58[6]);
            v52 = vmlal_u16(v79, *v90.i8, *v90.i8);
            v53 = vmlal_high_u16(v80, v90, v90);
            v91 = vabdq_u16(v59[7], v58[7]);
            v55 = vmlal_u16(v82, *v91.i8, *v91.i8);
            v56 = vmlal_high_u16(v83, v91, v91);
            v58 = (v58 + 2 * a4);
            v59 = (v59 + 2 * a2);
            --v57;
          }

          while (v57);
        }

        v92 = vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpadalq_u32(vpaddlq_u32(v28), v27), v37), v38), v40), v41), v43), v44), v46), v47), v49), v50), v52), v53), v55), v56);
        break;
      default:
        goto LABEL_25;
    }

    v94.i64[0] = vaddvq_s64(v92);
    return *v94.i64;
  }

  switch(a5)
  {
    case 4:
      v93 = vabd_u16(*v11->i8, *v12->i8);
      v94 = vmull_u16(v93, v93);
      v95 = a6 - 1;
      if (a6 != 1)
      {
        v96 = (v11 + 2 * a2);
        v97 = (v12 + 2 * a4);
        do
        {
          v98 = vabd_u16(*v96, *v97);
          v94 = vmlal_u16(v94, v98, v98);
          v96 = (v96 + 2 * a2);
          v97 = (v97 + 2 * a4);
          --v95;
        }

        while (v95);
      }

      goto LABEL_34;
    case 8:
      v124 = vabdq_u16(*v11, *v12);
      v125 = vmull_u16(*v124.i8, *v124.i8);
      v94 = vmull_high_u16(v124, v124);
      v126 = a6 - 1;
      if (a6 != 1)
      {
        v127 = (v11 + 2 * a2);
        v128 = (v12 + 2 * a4);
        do
        {
          v129 = vabdq_u16(*v127, *v128);
          v125 = vmlal_u16(v125, *v129.i8, *v129.i8);
          v94 = vmlal_high_u16(v94, v129, v129);
          v127 = (v127 + 2 * a2);
          v128 = (v128 + 2 * a4);
          --v126;
        }

        while (v126);
      }

LABEL_34:
      v94.i64[0] = vaddlvq_u32(v94);
      return *v94.i64;
    case 16:
      v13 = vabdq_u16(*v11, *v12);
      v14 = vmull_u16(*v13.i8, *v13.i8);
      v15 = vmull_high_u16(v13, v13);
      v16 = vabdq_u16(*(2 * a1 + 0x10), *(2 * a3 + 0x10));
      v17 = vmull_u16(*v16.i8, *v16.i8);
      v18 = vmull_high_u16(v16, v16);
      v19 = a6 - 1;
      if (a6 != 1)
      {
        v20 = (v11 + 2 * a2 + 16);
        v21 = (v12 + 2 * a4 + 16);
        do
        {
          v22 = vabdq_u16(v20[-1], v21[-1]);
          v14 = vmlal_u16(v14, *v22.i8, *v22.i8);
          v15 = vmlal_high_u16(v15, v22, v22);
          v23 = vabdq_u16(*v20, *v21);
          v17 = vmlal_u16(v17, *v23.i8, *v23.i8);
          v18 = vmlal_high_u16(v18, v23, v23);
          v20 = (v20 + 2 * a2);
          v21 = (v21 + 2 * a4);
          --v19;
        }

        while (v19);
      }

      v24 = vpadalq_u32(vpadalq_u32(vpadalq_u32(vpaddlq_u32(v15), v14), v17), v18);
LABEL_24:
      v94.i64[0] = vaddvq_s64(v24);
      return *v94.i64;
  }

LABEL_25:
  v118 = 0;
  v119 = xmmword_277BB7050;
  v94 = vcgtq_u16(vdupq_n_s16(a5 & 7), xmmword_277BB7050);
  v119.i32[0] = 8;
  do
  {
    v120 = 0;
    v121 = a5;
    do
    {
      a11.i32[0] = v121;
      a11 = vdupq_lane_s32(*&vcgtq_s32(v119, a11), 0);
      v122 = vabdq_u16(vbslq_s8(a11, vandq_s8(v11[v120], v94), v11[v120]), vbslq_s8(a11, vandq_s8(v12[v120], v94), v12[v120]));
      v118 += vaddlvq_u32(vmlal_high_u16(vmull_u16(*v122.i8, *v122.i8), v122, v122));
      ++v120;
      v123 = __OFSUB__(v121, 8);
      v121 -= 8;
    }

    while (!((v121 < 0) ^ v123 | (v121 == 0)));
    v12 = (v12 + 2 * a4);
    v11 = (v11 + 2 * a2);
    --a6;
  }

  while (a6);
  return *v94.i64;
}

uint64_t sub_277B2F8C0(__int32 *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9 = vmovl_u8(v8);
    v10 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v11 = vmlsl_s16(*(a3 + v5), *v9.i8, *v10.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v9, v10);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(v6, v15, v15), v16, v16);
    a1 = (a1 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 64);
  v17 = vaddvq_s32(v6);
  *a5 = v17;
  v18 = vaddvq_s32(v7);
  return v17 - ((v18 * v18) >> 4);
}

uint64_t sub_277B2F954(__int32 *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9 = vmovl_u8(v8);
    v10 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v11 = vmlsl_s16(*(a3 + v5), *v9.i8, *v10.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v9, v10);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(v6, v15, v15), v16, v16);
    a1 = (a1 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 128);
  v17 = vaddvq_s32(v6);
  *a5 = v17;
  v18 = vaddvq_s32(v7);
  return v17 - ((v18 * v18) >> 5);
}

uint64_t sub_277B2F9E8(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmovl_u8(*a1);
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v8.i8, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), v8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(v7, v12, 0xCuLL), v13, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(v6, v14, v14), v15, v15);
    a1 = (a1 + a2);
    v5 += 32;
  }

  while (v5 != 128);
  v16 = vaddvq_s32(v6);
  *a5 = v16;
  v17 = vaddvq_s32(v7);
  return v16 - ((v17 * v17) >> 5);
}

uint64_t sub_277B2FA70(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmovl_u8(*a1);
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v8.i8, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), v8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(v7, v12, 0xCuLL), v13, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(v6, v14, v14), v15, v15);
    a1 = (a1 + a2);
    v5 += 32;
  }

  while (v5 != 256);
  v16 = vaddvq_s32(v6);
  *a5 = v16;
  v17 = vaddvq_s32(v7);
  return v16 - ((v17 * v17) >> 6);
}

uint64_t sub_277B2FAF8(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmovl_u8(*a1);
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v8.i8, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), v8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(v7, v12, 0xCuLL), v13, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(v6, v14, v14), v15, v15);
    a1 = (a1 + a2);
    v5 += 32;
  }

  while (v5 != 512);
  v16 = vaddvq_s32(v6);
  *a5 = v16;
  v17 = vaddvq_s32(v7);
  return v16 - ((v17 * v17) >> 7);
}

uint64_t sub_277B2FB80(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmlsq_s32(*(a3 + v5), *(a4 + v5), vqtbl1q_s8(*a1, xmmword_277BB7400));
    v9 = vmlsq_s32(*(a3 + v5 + 16), *(a4 + v5 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410));
    v10 = vsraq_n_s32(v8, v8, 0x1FuLL);
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vrshrq_n_s32(v10, 0xCuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vmlsq_s32(*(a3 + v5 + 32), *(a4 + v5 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420));
    v15 = vmlsq_s32(*(a3 + v5 + 48), *(a4 + v5 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430));
    v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
    v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
    v18 = vrshrq_n_s32(v16, 0xCuLL);
    v19 = vrshrq_n_s32(v17, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v10, 0xCuLL), v11, 0xCuLL), v16, 0xCuLL), v17, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v6, v12, v12), v13, v13), v18, v18), v19, v19);
    a1 = (a1 + a2);
    v5 += 64;
  }

  while (v5 != 512);
  v20 = vaddvq_s32(v6);
  *a5 = v20;
  v21 = v20;
  v22 = vaddvq_s32(v7);
  return v21 - ((v22 * v22) >> 7);
}

uint64_t sub_277B2FC60(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmlsq_s32(*(a3 + v5), *(a4 + v5), vqtbl1q_s8(*a1, xmmword_277BB7400));
    v9 = vmlsq_s32(*(a3 + v5 + 16), *(a4 + v5 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410));
    v10 = vsraq_n_s32(v8, v8, 0x1FuLL);
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vrshrq_n_s32(v10, 0xCuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vmlsq_s32(*(a3 + v5 + 32), *(a4 + v5 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420));
    v15 = vmlsq_s32(*(a3 + v5 + 48), *(a4 + v5 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430));
    v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
    v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
    v18 = vrshrq_n_s32(v16, 0xCuLL);
    v19 = vrshrq_n_s32(v17, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v10, 0xCuLL), v11, 0xCuLL), v16, 0xCuLL), v17, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v6, v12, v12), v13, v13), v18, v18), v19, v19);
    a1 = (a1 + a2);
    v5 += 64;
  }

  while (v5 != 1024);
  v20 = vaddvq_s32(v6);
  *a5 = v20;
  v21 = v20;
  v22 = vaddvq_s32(v7);
  return v21 - ((v22 * v22) >> 8);
}

uint64_t sub_277B2FD40(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmlsq_s32(*(a3 + v5), *(a4 + v5), vqtbl1q_s8(*a1, xmmword_277BB7400));
    v9 = vmlsq_s32(*(a3 + v5 + 16), *(a4 + v5 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410));
    v10 = vsraq_n_s32(v8, v8, 0x1FuLL);
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vrshrq_n_s32(v10, 0xCuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vmlsq_s32(*(a3 + v5 + 32), *(a4 + v5 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420));
    v15 = vmlsq_s32(*(a3 + v5 + 48), *(a4 + v5 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430));
    v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
    v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
    v18 = vrshrq_n_s32(v16, 0xCuLL);
    v19 = vrshrq_n_s32(v17, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v10, 0xCuLL), v11, 0xCuLL), v16, 0xCuLL), v17, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v6, v12, v12), v13, v13), v18, v18), v19, v19);
    a1 = (a1 + a2);
    v5 += 64;
  }

  while (v5 != 2048);
  v20 = vaddvq_s32(v6);
  *a5 = v20;
  v21 = v20;
  v22 = vaddvq_s32(v7);
  return v21 - ((v22 * v22) >> 9);
}

uint64_t sub_277B2FE20(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 16;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 128);
    a4 += 128;
    a3 += 128;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 9);
}

uint64_t sub_277B2FF18(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 32;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 128);
    a4 += 128;
    a3 += 128;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 10);
}

uint64_t sub_277B30010(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 64;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 128);
    a4 += 128;
    a3 += 128;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 11);
}

uint64_t sub_277B30108(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 32;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 256);
    a4 += 256;
    a3 += 256;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 11);
}

uint64_t sub_277B30200(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 64;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 256);
    a4 += 256;
    a3 += 256;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 12);
}

uint64_t sub_277B302F8(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 128;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 256);
    a4 += 256;
    a3 += 256;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 13);
}

uint64_t sub_277B303F0(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 64;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 512);
    a4 += 512;
    a3 += 512;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 13);
}

uint64_t sub_277B304E8(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 128;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 512);
    a4 += 512;
    a3 += 512;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 14);
}

uint64_t sub_277B305E0(__int32 *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9 = vmovl_u8(v8);
    v10 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v11 = vmlsl_s16(*(a3 + v5), *v9.i8, *v10.i8);
    v12 = vmlsl_high_s16(*(a3 + v5 + 16), v9, v10);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v16 = vrshrq_n_s32(v14, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(v6, v15, v15), v16, v16);
    a1 = (a1 + 2 * a2);
    v5 += 32;
  }

  while (v5 != 256);
  v17 = vaddvq_s32(v6);
  *a5 = v17;
  v18 = vaddvq_s32(v7);
  return v17 - ((v18 * v18) >> 6);
}

uint64_t sub_277B30674(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmlsq_s32(*(a3 + v5), *(a4 + v5), vqtbl1q_s8(*a1, xmmword_277BB7400));
    v9 = vmlsq_s32(*(a3 + v5 + 16), *(a4 + v5 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410));
    v10 = vsraq_n_s32(v8, v8, 0x1FuLL);
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vrshrq_n_s32(v10, 0xCuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vmlsq_s32(*(a3 + v5 + 32), *(a4 + v5 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420));
    v15 = vmlsq_s32(*(a3 + v5 + 48), *(a4 + v5 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430));
    v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
    v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
    v18 = vrshrq_n_s32(v16, 0xCuLL);
    v19 = vrshrq_n_s32(v17, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v10, 0xCuLL), v11, 0xCuLL), v16, 0xCuLL), v17, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v6, v12, v12), v13, v13), v18, v18), v19, v19);
    a1 = (a1 + a2);
    v5 += 64;
  }

  while (v5 != 256);
  v20 = vaddvq_s32(v6);
  *a5 = v20;
  v21 = v20;
  v22 = vaddvq_s32(v7);
  return v21 - ((v22 * v22) >> 6);
}

uint64_t sub_277B30754(uint8x8_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmovl_u8(*a1);
    v9 = vuzp1q_s16(*(a4 + v5), *(a4 + v5 + 16));
    v10 = vmlsl_s16(*(a3 + v5), *v8.i8, *v9.i8);
    v11 = vmlsl_high_s16(*(a3 + v5 + 16), v8, v9);
    v12 = vsraq_n_s32(v10, v10, 0x1FuLL);
    v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
    v14 = vrshrq_n_s32(v12, 0xCuLL);
    v15 = vrshrq_n_s32(v13, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(v7, v12, 0xCuLL), v13, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(v6, v14, v14), v15, v15);
    a1 = (a1 + a2);
    v5 += 32;
  }

  while (v5 != 1024);
  v16 = vaddvq_s32(v6);
  *a5 = v16;
  v17 = vaddvq_s32(v7);
  return v16 - ((v17 * v17) >> 8);
}

uint64_t sub_277B307DC(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 8;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 128);
    a4 += 128;
    a3 += 128;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 8);
}

uint64_t sub_277B308D4(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = vmlsq_s32(*(a3 + v5), *(a4 + v5), vqtbl1q_s8(*a1, xmmword_277BB7400));
    v9 = vmlsq_s32(*(a3 + v5 + 16), *(a4 + v5 + 16), vqtbl1q_s8(*a1, xmmword_277BB7410));
    v10 = vsraq_n_s32(v8, v8, 0x1FuLL);
    v11 = vsraq_n_s32(v9, v9, 0x1FuLL);
    v12 = vrshrq_n_s32(v10, 0xCuLL);
    v13 = vrshrq_n_s32(v11, 0xCuLL);
    v14 = vmlsq_s32(*(a3 + v5 + 32), *(a4 + v5 + 32), vqtbl1q_s8(*a1, xmmword_277BB7420));
    v15 = vmlsq_s32(*(a3 + v5 + 48), *(a4 + v5 + 48), vqtbl1q_s8(*a1, xmmword_277BB7430));
    v16 = vsraq_n_s32(v14, v14, 0x1FuLL);
    v17 = vsraq_n_s32(v15, v15, 0x1FuLL);
    v18 = vrshrq_n_s32(v16, 0xCuLL);
    v19 = vrshrq_n_s32(v17, 0xCuLL);
    v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v10, 0xCuLL), v11, 0xCuLL), v16, 0xCuLL), v17, 0xCuLL);
    v6 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v6, v12, v12), v13, v13), v18, v18), v19, v19);
    a1 = (a1 + a2);
    v5 += 64;
  }

  while (v5 != 4096);
  v20 = vaddvq_s32(v6);
  *a5 = v20;
  v21 = v20;
  v22 = vaddvq_s32(v7);
  return v21 - ((v22 * v22) >> 10);
}

uint64_t sub_277B309B4(int8x16_t *a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = 0uLL;
  v6 = 16;
  v7 = 0uLL;
  do
  {
    v8 = 0;
    v9 = a1;
    do
    {
      v10 = *v9++;
      v11 = vmlsq_s32(*(a3 + v8), *(a4 + v8), vqtbl1q_s8(v10, xmmword_277BB7400));
      v12 = vmlsq_s32(*(a3 + v8 + 16), *(a4 + v8 + 16), vqtbl1q_s8(v10, xmmword_277BB7410));
      v13 = vsraq_n_s32(v11, v11, 0x1FuLL);
      v14 = vsraq_n_s32(v12, v12, 0x1FuLL);
      v15 = vrshrq_n_s32(v13, 0xCuLL);
      v16 = vrshrq_n_s32(v14, 0xCuLL);
      v17 = vmlsq_s32(*(a3 + v8 + 32), *(a4 + v8 + 32), vqtbl1q_s8(v10, xmmword_277BB7420));
      v18 = vmlsq_s32(*(a3 + v8 + 48), *(a4 + v8 + 48), vqtbl1q_s8(v10, xmmword_277BB7430));
      v19 = vsraq_n_s32(v17, v17, 0x1FuLL);
      v20 = vsraq_n_s32(v18, v18, 0x1FuLL);
      v21 = vrshrq_n_s32(v19, 0xCuLL);
      v22 = vrshrq_n_s32(v20, 0xCuLL);
      v7 = vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(vrsraq_n_s32(v7, v13, 0xCuLL), v14, 0xCuLL), v19, 0xCuLL), v20, 0xCuLL);
      v5 = vmlaq_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v5, v15, v15), v16, v16), v21, v21), v22, v22);
      v8 += 64;
    }

    while (v8 != 256);
    a4 += 256;
    a3 += 256;
    a1 = (a1 + a2);
    --v6;
  }

  while (v6);
  v23 = vaddvq_s32(v5);
  *a5 = v23;
  v24 = v23;
  v25 = vaddvq_s32(v7);
  return v24 - ((v25 * v25) >> 10);
}

uint64_t sub_277B30AAC(uint64_t a1, uint64_t a2)
{
  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  return v3 > v4;
}

double *sub_277B30AE8(double *result, uint64_t a2, int a3, int *a4)
{
  *a4 = 0;
  *(a4 + 1) = 0;
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = *result;
    v6 = (a2 + 16);
    v7 = 0.0;
    do
    {
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = v5 + v9 * result[3] + result[2] * v8;
      v11 = result[1] + v9 * result[5] + result[4] * v8;
      v12 = (v11 - v6[1]) * (v11 - v6[1]) + (v10 - *v6) * (v10 - *v6);
      if (v12 < 1.5625)
      {
        v13 = *(a4 + 2);
        v14 = *a4;
        *a4 = v14 + 1;
        *(v13 + 4 * v14) = v4;
        v7 = v12 + v7;
        *(a4 + 1) = v7;
        v5 = *result;
      }

      ++v4;
      v6 += 4;
    }

    while (a3 != v4);
  }

  return result;
}

uint64_t sub_277B30B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = 0uLL;
  v59 = 0u;
  memset(v60, 0, sizeof(v60));
  memset(v61, 0, sizeof(v61));
  v57 = 0u;
  v58 = 0u;
  if (a3 > 0)
  {
    v5 = 0;
    v6 = 0uLL;
    do
    {
      v7 = 0;
      v8 = a1 + 32 * *(a2 + 4 * v5);
      v9 = *v8;
      v10 = *(v8 + 8);
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v55 = xmmword_277BB77A0;
      v56.f64[0] = v9;
      v56.f64[1] = v10;
      v13 = v56;
      v14 = v60;
      do
      {
        v15 = *(&v55 + v7);
        v16 = vmlaq_n_f64(*v14, v13, v15);
        v14[-1] = vmlaq_n_f64(v14[-1], xmmword_277BB77A0, v15);
        *v14 = v16;
        v7 += 8;
        v14 += 2;
      }

      while (v7 != 32);
      v17 = 0;
      v18 = vdupq_lane_s64(v12, 0);
      v19 = vmlaq_n_f64(v6, xmmword_277BB77A0, *&v12);
      v55 = xmmword_277BB7B50;
      v56.f64[0] = v10;
      v56.f64[1] = -v9;
      v20 = v56;
      v21 = v60;
      do
      {
        v22 = *(&v55 + v17);
        v23 = vmlaq_n_f64(*v21, v20, v22);
        v21[-1] = vmlaq_n_f64(v21[-1], xmmword_277BB7B50, v22);
        *v21 = v23;
        v17 += 8;
        v21 += 2;
      }

      while (v17 != 32);
      v6 = vmlaq_n_f64(v19, xmmword_277BB7B50, v11);
      v4 = vmlaq_n_f64(vmlaq_f64(v4, v18, v13), v20, v11);
      ++v5;
    }

    while (v5 != a3);
    v57 = v6;
    v58 = v4;
  }

  v24 = 0;
  v25 = 8;
  v26 = 32;
  v27 = 32;
LABEL_10:
  v28 = &v60[-1] + 8 * v24;
  v29 = v61;
  v30 = 3;
  do
  {
    v31 = v30 - 1;
    if (fabs(*&v28[32 * v30 - 32]) < fabs(*&v28[32 * v30]))
    {
      v32 = v29;
      v33 = 4;
      do
      {
        v34 = *v32;
        *v32 = *(v32 - 2);
        *(v32 - 2) = v34;
        ++v32;
        v33 -= 2;
      }

      while (v33);
      *(&v57 + 8 * v31) = vextq_s8(*(&v57 + 8 * v31), *(&v57 + 8 * v31), 8uLL);
    }

    v29 -= 2;
    v30 = v31;
  }

  while (v31 > v24);
  v35 = v26;
  v36 = v27;
  v37 = v25;
  v38 = &v60[2 * v24 - 1];
  while (1)
  {
    v39 = *&v28[32 * v24];
    if (fabs(v39) < 1.0e-16)
    {
      return 0;
    }

    v40 = -*(&v60[-1] + v35) / v39;
    v41 = (&v60[-1] + v36);
    v42 = *(v60 + v36);
    *v41 = vmlaq_n_f64(*(&v60[-1] + v36), *v38, v40);
    v41[1] = vmlaq_n_f64(v42, v38[1], v40);
    *(v57.f64 + v37) = *(v57.f64 + v37) + v40 * v57.f64[v24];
    v37 += 8;
    v36 += 32;
    v35 += 32;
    if (v37 == 32)
    {
      ++v24;
      v25 += 8;
      v27 += 32;
      v26 += 40;
      if (v24 != 3)
      {
        goto LABEL_10;
      }

      v43 = 0;
      v44 = v62;
      v45 = 4;
      while (1)
      {
        v46 = *(&v59 + 5 * v45 - 5);
        if (fabs(v46) < 1.0e-16)
        {
          break;
        }

        v47 = 0.0;
        if (v45 <= 3)
        {
          v48 = v44;
          v49 = v43;
          do
          {
            v50 = *v48++;
            v47 = v47 + v50 * *(a4 + 32 + 8 * v49);
          }

          while (!__CFADD__(v49++, 1));
        }

        *(a4 + 8 * (v45 - 1)) = (v57.f64[v45 - 1] - v47) / v46;
        --v43;
        v44 -= 5;
        if (v45-- <= 1)
        {
          v53 = *(a4 + 16);
          *(a4 + 32) = -*(a4 + 24);
          *(a4 + 40) = v53;
          return 1;
        }
      }

      return 0;
    }
  }
}

uint64_t sub_277B30E7C(int a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = (a1 - 1) >> 5;
  if (v4 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v4;
  }

  v5 = &unk_277BEE151 + v4;
  if (a1 <= 32)
  {
    v5 = &unk_277BEE130 + a1;
  }

  v6 = *v5;
  v7 = *(a2 + 44 * (a4 != 0) + 4 * v6 - 4);
  if ((v6 - 3) <= 8)
  {
    return v7 + ((word_277C3BF7C[v6] - 1) << 9) + *(a3 + 8 * v6 + 4 * (((a1 - word_277C3BC4C[v6]) >> (word_277C3BF7C[v6] - 1)) & 1) + 1472);
  }

  return v7;
}

uint64_t sub_277B30F1C(uint64_t result, unint64_t *a2, int a3, int a4, unsigned int a5, int a6, char a7, int a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v20 = *(a13 + 2 * a3);
  v21 = *(a12 + 2 * (*(a13 + 2 * a3) != 0));
  if (a19)
  {
    v21 = (*(a19 + v20) * v21 + 16) >> 5;
  }

  v22 = *(a16 + 4 * v20);
  if (a4 - 1 != a3)
  {
    v26 = (a18 + 4 * (v20 >> a7) + v20);
    v27 = &v26[1 << a7];
    v28 = byte_277C3BF94[v26[1]] + byte_277C3BF94[v27[4]];
    if (a6 == 2)
    {
      v29 = v28 + byte_277C3BF94[v26[2]] + byte_277C3BF94[v26[3]];
      v30 = v26 + 4;
    }

    else if (a6)
    {
      v29 = v28 + byte_277C3BF94[v26[(2 << a7) + 8]] + byte_277C3BF94[v26[(3 << a7) + 12]];
      v30 = &v26[(4 << a7) + 16];
    }

    else
    {
      v29 = v28 + byte_277C3BF94[v27[5]] + byte_277C3BF94[v26[(2 << a7) + 8]];
      v30 = v26 + 2;
    }

    if (v20 | a6)
    {
      v31 = (v29 + byte_277C3BF94[*v30] + 1) >> 1;
      if (v31 >= 4)
      {
        v31 = 4;
      }

      switch(a6)
      {
        case 2:
          v32 = dword_277C3C094[v20 & ~(-1 << a7)];
          break;
        case 1:
          v32 = dword_277C3C094[v20 >> a7];
          break;
        case 0:
          v25 = v31 + *(*(&off_27A723920 + a5) + v20);
          goto LABEL_29;
        default:
          goto LABEL_25;
      }

      v25 = v32 + v31;
      goto LABEL_29;
    }

LABEL_25:
    v25 = 0;
    goto LABEL_29;
  }

  if (a3 <= a8 << a7 >> 2)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  if (a3 > a8 << a7 >> 3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if (a3)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

LABEL_29:
  if (v22)
  {
    v61 = result;
    v33 = *(a15 + 4 * v20);
    if (v22 >= 0)
    {
      v34 = *(a16 + 4 * v20);
    }

    else
    {
      v34 = -v22;
    }

    v35 = (v33 - *(a17 + 4 * v20)) << a10;
    v55 = v21;
    v54 = *(a16 + 4 * v20);
    if (a20)
    {
      v36 = *(a20 + v20) * v35;
      v37 = (v36 * v36 + 512) >> 10;
      v38 = *(a20 + v20) * (v33 << a10);
      v39 = (v38 * v38 + 512) >> 10;
    }

    else
    {
      v37 = v35 * v35;
      v39 = (v33 << a10) * (v33 << a10);
    }

    v58 = v39;
    v56 = a4 - 1 == a3;
    v57 = a6;
    v40 = v22 >> 31;
    v41 = sub_277B31504(v56, v20, v34, v22 >> 31, v25, a11, a14, a7, a6, a18);
    v42 = ((v41 * a9 + 256) >> 9) + (v37 << 7);
    v43 = v34 - 1;
    v44 = v37;
    if (v43)
    {
      v50 = (v33 - ((((v43 * v55) >> a10) ^ (v54 >> 31)) + v40)) << a10;
      v45 = (v43 ^ (v54 >> 31)) + v40;
      if (a20)
      {
        v51 = *(a20 + v20) * v50;
        v48 = (v51 * v51 + 512) >> 10;
      }

      else
      {
        v48 = v50 * v50;
      }

      result = sub_277B31504(v56, v20, v43, v40, v25, a11, a14, a7, v57, a18);
      v49 = a2;
      v47 = v58;
      v44 = v37;
      v42 = ((v41 * a9 + 256) >> 9) + (v37 << 7);
      v46 = (((v43 * v55) >> a10) ^ (v54 >> 31)) + v40;
    }

    else
    {
      v45 = 0;
      v46 = 0;
      result = *(a14 + 32 * v25 + 152);
      v47 = v58;
      v48 = v58;
      v49 = a2;
    }

    if ((((result * a9 + 256) >> 9) + (v48 << 7)) < v42)
    {
      *(a16 + 4 * v20) = v45;
      *(a17 + 4 * v20) = v46;
      if (v43 >= 0x7F)
      {
        v52 = 127;
      }

      else
      {
        v52 = v43;
      }

      *(a18 + v20 + 4 * (v20 >> a7)) = v52;
      v41 = result;
      v44 = v48;
    }

    v53 = v44 - v47 + *v49;
    *v61 += v41;
    *v49 = v53;
  }

  else
  {
    *result += *(a14 + 32 * v25 + 152);
  }

  return result;
}