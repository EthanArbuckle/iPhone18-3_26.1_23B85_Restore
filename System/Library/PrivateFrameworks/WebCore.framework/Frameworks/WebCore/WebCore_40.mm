int32x4_t pffft_real_finalize(int a1, __int128 *a2, float32x4_t *a3, float32x4_t *a4)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = vzip1q_s32(0, v6);
  v11 = vzip2q_s32(0, v6);
  v12 = vzip1q_s32(v4, v9);
  v13 = vzip2q_s32(v4, v9);
  v14 = vzip1q_s32(v10, v12);
  v16 = a2[6];
  result = a2[7];
  v17 = vzip2q_s32(v10, v12);
  v18 = vzip1q_s32(v11, v13);
  v19 = vzip2q_s32(v11, v13);
  v20 = vzip1q_s32(0, v8);
  v21 = vzip2q_s32(0, v8);
  v22 = vzip1q_s32(v7, v16);
  v23 = a2[2 * a1 - 1];
  v24 = vzip2q_s32(v7, v16);
  v25 = vzip1q_s32(v20, v22);
  v26 = vzip2q_s32(v20, v22);
  v27 = vzip1q_s32(v21, v24);
  v28 = vzip2q_s32(v21, v24);
  v29 = a4[1];
  v30 = vmulq_f32(v17, v29);
  v31 = vsubq_f32(vmulq_f32(v17, *a4), vmulq_f32(v29, v26));
  v32 = vaddq_f32(v30, vmulq_f32(v26, *a4));
  v34 = a4[2];
  v33 = a4[3];
  v35 = vmulq_f32(v18, v33);
  v36 = vsubq_f32(vmulq_f32(v18, v34), vmulq_f32(v27, v33));
  v37 = vaddq_f32(v35, vmulq_f32(v27, v34));
  v39 = a4[4];
  v38 = a4[5];
  v40 = vmulq_f32(v19, v38);
  v41 = vsubq_f32(vmulq_f32(v19, v39), vmulq_f32(v28, v38));
  v42 = vaddq_f32(v40, vmulq_f32(v28, v39));
  v43 = vaddq_f32(v14, v36);
  v44 = vsubq_f32(v14, v36);
  v45 = vaddq_f32(v31, v41);
  v46 = vsubq_f32(v41, v31);
  v47 = vaddq_f32(v25, v37);
  v48 = vsubq_f32(v25, v37);
  v49 = vaddq_f32(v32, v42);
  v50 = vsubq_f32(v42, v32);
  *a3 = vaddq_f32(v43, v45);
  a3[1] = vaddq_f32(v47, v49);
  a3[2] = vaddq_f32(v44, v50);
  a3[3] = vsubq_f32(v46, v48);
  a3[4] = vsubq_f32(v44, v50);
  a3[5] = vaddq_f32(v48, v46);
  a3[6] = vsubq_f32(v43, v45);
  a3[7] = vsubq_f32(v49, v47);
  a3->f32[0] = (*&v5 + *(&v5 + 2)) + (*(&v5 + 1) + *(&v5 + 3));
  a3[1].f32[0] = (*&v5 + *(&v5 + 2)) - (*(&v5 + 1) + *(&v5 + 3));
  a3[4].f32[0] = *&v5 - *(&v5 + 2);
  a3[5].f32[0] = *(&v5 + 3) - *(&v5 + 1);
  a3[2].f32[0] = *&v23 + ((*(&v23 + 1) - *(&v23 + 3)) * 0.70711);
  a3[3].f32[0] = -(*(&v23 + 2) - ((*(&v23 + 1) + *(&v23 + 3)) * -0.70711));
  a3[6].f32[0] = *&v23 + ((*(&v23 + 1) - *(&v23 + 3)) * -0.70711);
  a3[7].f32[0] = *(&v23 + 2) + ((*(&v23 + 1) + *(&v23 + 3)) * -0.70711);
  if (a1 >= 8)
  {
    v51 = (a1 >> 2) - 1;
    v52 = (a2 + 15);
    v53 = a3 + 15;
    v54 = a4 + 11;
    do
    {
      v55 = v52[-7];
      v56 = v52[-6];
      v57 = v52[-5];
      v58 = v52[-4];
      v59 = v52[-3];
      v60 = v52[-2];
      v61 = vzip1q_s32(result, v58);
      v62 = vzip2q_s32(result, v58);
      v63 = v52[-1];
      result = *v52;
      v64 = vzip1q_s32(v56, v60);
      v65 = vzip2q_s32(v56, v60);
      v66 = vzip1q_s32(v61, v64);
      v67 = vzip2q_s32(v61, v64);
      v68 = vzip1q_s32(v62, v65);
      v69 = vzip2q_s32(v62, v65);
      v70 = vzip1q_s32(v55, v59);
      v71 = vzip2q_s32(v55, v59);
      v72 = vzip1q_s32(v57, v63);
      v73 = vzip2q_s32(v57, v63);
      v74 = vzip1q_s32(v70, v72);
      v75 = vzip2q_s32(v70, v72);
      v76 = vzip1q_s32(v71, v73);
      v77 = vzip2q_s32(v71, v73);
      v79 = v54[-5];
      v78 = v54[-4];
      v80 = vmulq_f32(v67, v78);
      v81 = vsubq_f32(vmulq_f32(v67, v79), vmulq_f32(v78, v75));
      v82 = vaddq_f32(v80, vmulq_f32(v75, v79));
      v84 = v54[-3];
      v83 = v54[-2];
      v85 = vmulq_f32(v68, v83);
      v86 = vsubq_f32(vmulq_f32(v68, v84), vmulq_f32(v76, v83));
      v87 = vaddq_f32(v85, vmulq_f32(v76, v84));
      v88 = v54[-1];
      v89 = vmulq_f32(v69, *v54);
      v90 = vsubq_f32(vmulq_f32(v69, v88), vmulq_f32(v77, *v54));
      v91 = vaddq_f32(v89, vmulq_f32(v77, v88));
      v92 = vaddq_f32(v66, v86);
      v93 = vsubq_f32(v66, v86);
      v94 = vaddq_f32(v81, v90);
      v95 = vsubq_f32(v90, v81);
      v96 = vaddq_f32(v74, v87);
      v97 = vsubq_f32(v74, v87);
      v98 = vaddq_f32(v82, v91);
      v99 = vsubq_f32(v91, v82);
      v53[-7] = vaddq_f32(v92, v94);
      v53[-6] = vaddq_f32(v96, v98);
      v53[-5] = vaddq_f32(v93, v99);
      v53[-4] = vsubq_f32(v95, v97);
      v53[-3] = vsubq_f32(v93, v99);
      v53[-2] = vaddq_f32(v97, v95);
      v52 += 8;
      v53[-1] = vsubq_f32(v92, v94);
      *v53 = vsubq_f32(v98, v96);
      v53 += 8;
      v54 += 6;
      --v51;
    }

    while (v51);
  }

  return result;
}

float pffft_real_preprocess(int a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  v4 = a2->f32[0];
  v5 = a2[1].f32[0];
  v6 = a2[2].f32[0];
  v7 = a2[3].f32[0];
  LODWORD(v8) = a2[4].i32[0];
  v9 = a2[5].i32[0];
  v10 = a2[6].f32[0];
  v11 = a2[7].f32[0];
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = a2[7];
  v19 = vaddq_f32(*a2, v17);
  v20 = vsubq_f32(*a2, v17);
  v21 = vaddq_f32(v13, v15);
  v22 = vsubq_f32(v13, v15);
  v23 = vaddq_f32(v12, v18);
  v24 = vsubq_f32(v12, v18);
  v25 = vaddq_f32(v14, v16);
  v26 = vsubq_f32(v14, v16);
  v27 = vaddq_f32(v21, v19);
  v28 = vsubq_f32(v19, v21);
  v29 = vsubq_f32(v20, v25);
  v30 = vaddq_f32(v25, v20);
  v31 = vsubq_f32(v24, v26);
  v32 = vaddq_f32(v26, v24);
  v33 = vsubq_f32(v23, v22);
  v34 = vaddq_f32(v22, v23);
  v35 = a4[1];
  v36 = vmulq_f32(v29, v35);
  v37 = vaddq_f32(vmulq_f32(v29, *a4), vmulq_f32(v35, v33));
  v38 = vsubq_f32(vmulq_f32(v33, *a4), v36);
  v40 = a4[2];
  v39 = a4[3];
  v41 = vmulq_f32(v28, v39);
  v42 = vaddq_f32(vmulq_f32(v32, v39), vmulq_f32(v28, v40));
  v43 = vsubq_f32(vmulq_f32(v32, v40), v41);
  v45 = a4[4];
  v44 = a4[5];
  v46 = vmulq_f32(v30, v44);
  v47 = vaddq_f32(vmulq_f32(v34, v44), vmulq_f32(v30, v45));
  v48 = vsubq_f32(vmulq_f32(v34, v45), v46);
  v49 = vzip1q_s32(v27, v42);
  v50 = vzip2q_s32(v27, v42);
  v51 = vzip1q_s32(v37, v47);
  v52 = vzip2q_s32(v37, v47);
  v53 = vzip2q_s32(v49, v51);
  v54 = vzip1q_s32(v50, v52);
  v55 = vzip2q_s32(v50, v52);
  v56 = vzip1q_s32(v31, v43);
  v57 = vzip2q_s32(v31, v43);
  v58 = vzip1q_s32(v38, v48);
  v59 = vzip2q_s32(v38, v48);
  *(a3 + 16) = v53;
  *(a3 + 32) = vzip2q_s32(v56, v58);
  *(a3 + 48) = v54;
  *(a3 + 64) = vzip1q_s32(v57, v59);
  *(a3 + 80) = v55;
  *(a3 + 96) = vzip2q_s32(v57, v59);
  if (a1 >= 8)
  {
    v60 = (a1 >> 2) - 1;
    v61 = a2 + 15;
    v62 = (a3 + 224);
    v63 = a4 + 11;
    do
    {
      i32 = v62[-7].i32;
      v65 = v61[-7];
      v66 = v61[-6];
      v67 = v61[-5];
      v68 = v61[-4];
      v69 = v61[-3];
      v70 = v61[-2];
      v71 = v61[-1];
      v72 = vaddq_f32(v65, v71);
      v73 = vsubq_f32(v65, v71);
      v74 = vaddq_f32(v67, v69);
      v75 = vsubq_f32(v67, v69);
      v76 = vaddq_f32(v66, *v61);
      v77 = vsubq_f32(v66, *v61);
      v78 = vaddq_f32(v68, v70);
      v79 = vsubq_f32(v68, v70);
      v80 = vaddq_f32(v74, v72);
      v81 = vsubq_f32(v72, v74);
      v82 = vsubq_f32(v73, v78);
      v83 = vaddq_f32(v78, v73);
      v84 = vsubq_f32(v77, v79);
      v85 = vaddq_f32(v79, v77);
      v86 = vsubq_f32(v76, v75);
      v87 = vaddq_f32(v75, v76);
      v89 = v63[-5];
      v88 = v63[-4];
      v90 = vmulq_f32(v82, v88);
      v91 = vaddq_f32(vmulq_f32(v82, v89), vmulq_f32(v88, v86));
      v92 = vsubq_f32(vmulq_f32(v86, v89), v90);
      v94 = v63[-3];
      v93 = v63[-2];
      v95 = vmulq_f32(v81, v93);
      v96 = vaddq_f32(vmulq_f32(v85, v93), vmulq_f32(v81, v94));
      v97 = vsubq_f32(vmulq_f32(v85, v94), v95);
      v98 = v63[-1];
      v99 = vmulq_f32(v83, *v63);
      v100 = vaddq_f32(vmulq_f32(v87, *v63), vmulq_f32(v83, v98));
      v101 = vsubq_f32(vmulq_f32(v87, v98), v99);
      v102 = vzip1q_s32(v80, v96);
      v103 = vzip2q_s32(v80, v96);
      v104 = vzip1q_s32(v91, v100);
      v105 = vzip2q_s32(v91, v100);
      v106 = vzip2q_s32(v102, v104);
      v107 = vzip1q_s32(v84, v97);
      v108 = vzip1q_s32(v92, v101);
      v109 = v62[-6].i32;
      vst2_f32(i32, v102);
      vst2_f32(v109, v107);
      v110 = vzip2q_s32(v84, v97);
      v111 = vzip2q_s32(v92, v101);
      v62[-5] = v106;
      v62[-4] = vzip2q_s32(v107, v108);
      v112 = v62[-3].i32;
      v113 = v62[-2].i32;
      vst2_f32(v112, v103);
      vst2_f32(v113, v110);
      v62[-1] = vzip2q_s32(v103, v105);
      *v62 = vzip2q_s32(v110, v111);
      v61 += 8;
      v62 += 8;
      v63 += 6;
      --v60;
    }

    while (v60);
  }

  *&v114 = v4 + v5;
  HIDWORD(v8) = v9;
  *(&v114 + 1) = v4 - v5;
  *a3 = vmlaq_f32(vdupq_lane_s64(v114, 0), xmmword_273BA03F0, vdupq_lane_s64(v8, 0));
  v115 = (v6 + v10) + (v6 + v10);
  v116 = a3 + 32 * a1;
  v117 = v6 - v10;
  v118 = (v7 + v11) * -1.4142;
  *(v116 - 16) = v115;
  *(v116 - 12) = v118 + (v117 * 1.4142);
  result = (v11 - v7) + (v11 - v7);
  *(v116 - 8) = result;
  *(v116 - 4) = v118 + (v117 * -1.4142);
  return result;
}

float32x4_t *rfftb1_ps(int a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v8 = *(a6 + 4);
  if (v8 >= 1)
  {
    v9 = a5;
    v10 = 0;
    if (a2 == a4)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    v190 = v8 + 1;
    v183 = a5 + 4;
    v12 = 1;
    v13 = vdupq_n_s32(0x3FDDB3D7u);
    v14.i64[0] = 0xBF000000BF000000;
    v14.i64[1] = 0xBF000000BF000000;
    v15 = vdupq_n_s32(0x3F5DB3D7u);
    v16 = vdupq_n_s32(0x3E9E377Au);
    v17 = vdupq_n_s32(0x3F4F1BBDu);
    v18 = vdupq_n_s32(0x3F737871u);
    v19 = vdupq_n_s32(0x3F167918u);
    v20 = 1;
    v191 = a3;
    v21 = v11;
    v188 = v15;
    v189 = v13;
    v186 = v17;
    v187 = v16;
    v184 = v19;
    v185 = v18;
    do
    {
      v22 = v12 + 1;
      v23 = *(a6 + 4 * v22);
      v24 = (a1 / (v23 * v20));
      v200 = v10;
      v201 = v21;
      v197 = v22;
      v195 = v23;
      v196 = v23 * v20;
      if (v23 > 3)
      {
        if (v23 != 4)
        {
          if (v23 == 5 && v20 >= 1)
          {
            v75 = v24 + v10;
            v76 = v24 + v10 + v24;
            v77 = v76;
            v78 = v76 + v24;
            v79 = v24 * ~v20 - 1;
            v80 = &v7[~(6 * v24) + 1];
            v81 = (2 * v20);
            v82 = v20;
            v199 = (v20 + 1);
            v83 = v199 - 1;
            v84 = (5 * v20) + 1;
            v85 = &v21[v84 * v24 + 1];
            v86 = 16 * v24;
            v87 = (4 * v20) | 1;
            v88 = &v201[v87 * v24 + 1];
            v89 = (3 * v20) + 1;
            v90 = &v201[v89 * v24 + 1];
            v91 = v81 | 1;
            v92 = &v201[(v81 | 1) * v24 + 1];
            v93 = v82 + 1;
            v94 = &v201[(v82 + 1) * v24 + 1];
            do
            {
              v95 = vaddq_f32(*(v80 + (v24 << 7)), *(v80 + (v24 << 7)));
              v96 = vaddq_f32(*(v80 + 160 * v24), *(v80 + 160 * v24));
              v97 = vaddq_f32(*(v80 + (v24 << 7) - 16), *(v80 + (v24 << 7) - 16));
              v98 = vaddq_f32(*(v80 + 160 * v24 - 16), *(v80 + 160 * v24 - 16));
              v99 = *(v80 + 96 * v24);
              v100 = v79;
              *(v94 + v100 * 16) = vaddq_f32(v99, vaddq_f32(v97, v98));
              v101 = vaddq_f32(v99, vsubq_f32(vmulq_f32(v97, v16), vmulq_f32(v98, v17)));
              v102 = vaddq_f32(v99, vsubq_f32(vmulq_f32(v98, v16), vmulq_f32(v97, v17)));
              v103 = vaddq_f32(vmulq_f32(v95, v18), vmulq_f32(v96, v19));
              v104 = vsubq_f32(vmulq_f32(v95, v19), vmulq_f32(v96, v18));
              *(v92 + v100 * 16) = vsubq_f32(v101, v103);
              *(v90 + v100 * 16) = vsubq_f32(v102, v104);
              *(v88 + v100 * 16) = vaddq_f32(v104, v102);
              *(v85 + v100 * 16) = vaddq_f32(v103, v101);
              v85 += v86;
              v88 += v86;
              v90 += v86;
              v92 += v86;
              v94 += v86;
              v80 += 80 * v24;
              --v83;
            }

            while (v83);
            if (v24 >= 3)
            {
              v105 = -2 - 6 * v24;
              v106 = &v7[(v24 + 2) - 3];
              v107 = (v106 + v105 * 16 + 112 * v24);
              v108 = 16 * (v24 + 4 * v24);
              v109 = &v201[v84 * v24 + 2 + v100];
              v110 = 16 * v24;
              v111 = (v106 + v105 * 16 + 144 * v24);
              v112 = &v201[v87 * v24 + 2 + v100];
              v113 = &v7[8 * v24 + 3 + v105];
              v114 = &v201[v89 * v24 + 2 + v100];
              v115 = &v7[10 * v24 + 3 + v105];
              v116 = &v201[v91 * v24 + 2 + v100];
              v117 = &v7[6 * v24 + 4 + v105];
              v118 = &v201[v93 * v24 + 3 + v100];
              v119 = 1;
              do
              {
                v120 = 0;
                v121 = v9;
                v122 = v111;
                v123 = v107;
                v124 = 3;
                do
                {
                  v126 = *(v113 + v120);
                  v125 = *(v113 + v120 + 16);
                  v128 = *v123;
                  v127 = v123[1];
                  v123 -= 2;
                  v129 = vaddq_f32(v125, v127);
                  v130 = vsubq_f32(v125, v127);
                  v131 = *(v115 + v120);
                  v132 = *(v115 + v120 + 16);
                  v134 = *v122;
                  v133 = v122[1];
                  v122 -= 2;
                  v135 = vaddq_f32(v132, v133);
                  v136 = vsubq_f32(v132, v133);
                  v137 = vsubq_f32(v126, v128);
                  v138 = vaddq_f32(v126, v128);
                  v139 = vsubq_f32(v131, v134);
                  v140 = vaddq_f32(v131, v134);
                  v141 = (v118 + v120);
                  v142 = vaddq_f32(v138, v140);
                  v143 = vsubq_f32(vmulq_f32(v138, v16), vmulq_f32(v140, v17));
                  v144 = *(v117 + v120 - 16);
                  v145 = *(v117 + v120);
                  v146 = vsubq_f32(vmulq_f32(v140, v16), vmulq_f32(v138, v17));
                  v147 = vaddq_f32(v144, v142);
                  v148 = vaddq_f32(vaddq_f32(v130, v136), v145);
                  v149 = vaddq_f32(v144, v143);
                  v150 = vaddq_f32(vsubq_f32(vmulq_f32(v130, v16), vmulq_f32(v136, v17)), v145);
                  v151 = vaddq_f32(v144, v146);
                  v152 = vsubq_f32(vmulq_f32(v136, v16), vmulq_f32(v130, v17));
                  v153 = vaddq_f32(vmulq_f32(v137, v18), vmulq_f32(v139, v19));
                  v154 = vaddq_f32(v152, v145);
                  v155 = vaddq_f32(vmulq_f32(v129, v18), vmulq_f32(v135, v19));
                  v141[-1] = v147;
                  *v141 = v148;
                  v156 = vsubq_f32(vmulq_f32(v137, v19), vmulq_f32(v139, v18));
                  v157 = vsubq_f32(vmulq_f32(v129, v19), vmulq_f32(v135, v18));
                  v158 = vsubq_f32(v151, v157);
                  v159 = vaddq_f32(v157, v151);
                  v160 = vaddq_f32(v156, v154);
                  v161 = vsubq_f32(v154, v156);
                  v162 = vaddq_f32(v155, v149);
                  v163 = (v121 + 4 * v200);
                  v164 = vsubq_f32(v149, v155);
                  v165 = vld1q_dup_f32(v163++);
                  v135.i32[0] = *(v121 + 4 * v75 + 4);
                  v166 = vsubq_f32(v150, v153);
                  v167 = vaddq_f32(v153, v150);
                  v168 = vmulq_n_f32(v158, v135.f32[0]);
                  v155.i32[0] = *(v121 + 4 * v75);
                  v169 = vsubq_f32(vmulq_n_f32(v158, v155.f32[0]), vmulq_n_f32(v160, v135.f32[0]));
                  v135.i32[0] = *(v121 + 4 * v77 + 4);
                  v170 = vaddq_f32(v168, vmulq_n_f32(v160, v155.f32[0]));
                  v171 = vmulq_n_f32(v159, v135.f32[0]);
                  v155.i32[0] = *(v121 + 4 * v77);
                  v172 = vsubq_f32(vmulq_n_f32(v159, v155.f32[0]), vmulq_n_f32(v161, v135.f32[0]));
                  v173 = vmulq_n_f32(v164, *v163);
                  v174 = vmulq_f32(v164, v165);
                  v175 = vmulq_f32(v167, v165);
                  v176 = vaddq_f32(v171, vmulq_n_f32(v161, v155.f32[0]));
                  v171.i32[0] = *(v121 + 4 * v78 + 4);
                  v145.i32[0] = *(v121 + 4 * v78);
                  v177 = vsubq_f32(v174, vmulq_n_f32(v167, *v163));
                  v178 = (v116 + v120);
                  *v178 = v177;
                  v178[1] = vaddq_f32(v173, v175);
                  v179 = (v114 + v120);
                  *v179 = v169;
                  v179[1] = v170;
                  v180 = (v112 + v120);
                  v181 = (v109 + v120);
                  v124 += 2;
                  *v180 = v172;
                  v180[1] = v176;
                  *v181 = vsubq_f32(vmulq_n_f32(v162, v145.f32[0]), vmulq_n_f32(v166, v171.f32[0]));
                  v181[1] = vaddq_f32(vmulq_n_f32(v162, v171.f32[0]), vmulq_n_f32(v166, v145.f32[0]));
                  v120 += 32;
                  v121 += 8;
                }

                while (v124 <= v24);
                ++v119;
                v107 = (v107 + v108);
                v109 += v110;
                v111 = (v111 + v108);
                v112 += v110;
                v113 += v108;
                v114 += v110;
                v115 += v108;
                v116 += v110;
                v117 += v108;
                v118 += v110;
                v9 = a5;
              }

              while (v119 != v199);
            }
          }

          goto LABEL_8;
        }

        radb4_ps(v24, v20, v7, v21, v9 + 4 * v10, v9 + 4 * (v24 + v10), v9 + 4 * (v24 + v10 + v24));
      }

      else
      {
        if (v23 != 2)
        {
          if (v23 == 3 && v20 >= 1)
          {
            v25 = v24 + v10;
            v26 = (2 * v20);
            v27 = 16 * v24;
            v28 = v20;
            v29 = v7;
            v30 = v201;
            v31 = v20;
            do
            {
              v32 = v29[2 * v24];
              v33 = vaddq_f32(v29[2 * v24 - 1], v29[2 * v24 - 1]);
              v34 = vmlaq_f32(*v29, v14, v33);
              *v30 = vaddq_f32(*v29, v33);
              v35 = vmulq_f32(v32, v13);
              *(v30 + v27 * v20) = vsubq_f32(v34, v35);
              *(v30 + v27 * v26) = vaddq_f32(v34, v35);
              v30 = (v30 + v27);
              v29 += 3 * v24;
              --v31;
            }

            while (v31);
            if (v24 >= 3)
            {
              v36 = 0;
              v37 = (v24 << 33) - 0x300000000;
              v38 = &v7[2 * v24];
              v39 = 48 * (a1 / (v23 * v20));
              v40 = 16 * (a1 / (v23 * v20));
              v41 = v201;
              v42 = &v201[1] + v40 * v26;
              v43 = &v201[v28 * v24 + 1];
              v44 = v7;
              v45 = (v183 + 4 * v25);
              do
              {
                v46 = 0;
                v47 = 0xFFFFFFFFFFFFFFELL;
                v48 = v45;
                v49 = (v183 + 4 * v200);
                v50 = v37;
                v51 = 2;
                do
                {
                  v52 = *(v7 + (v50 >> 28));
                  v53 = v38[v46 + 1];
                  v54 = v38[v46 + 2];
                  v55 = vaddq_f32(v53, v52);
                  v56 = v44[v46 + 1];
                  v57 = v44[v46 + 2];
                  v58 = vaddq_f32(v56, v55);
                  v59 = vmlaq_f32(v56, v14, v55);
                  v60 = v38[v47];
                  v61 = vsubq_f32(v54, v60);
                  v62 = vaddq_f32(v57, v61);
                  v63 = vmlaq_f32(v57, v14, v61);
                  v64 = &v41[v46];
                  v64[1] = v58;
                  v64[2] = v62;
                  v65 = vmulq_f32(vsubq_f32(v53, v52), v15);
                  v66 = vmulq_f32(vaddq_f32(v54, v60), v15);
                  v67 = vsubq_f32(v59, v66);
                  v68 = vaddq_f32(v59, v66);
                  v69 = vaddq_f32(v65, v63);
                  v70 = vsubq_f32(v63, v65);
                  v63.f32[0] = *(v49 - 1);
                  v71 = vmulq_n_f32(v67, *v49);
                  v72 = (v43 + v46 * 16);
                  *v72 = vsubq_f32(vmulq_n_f32(v67, v63.f32[0]), vmulq_n_f32(v69, *v49));
                  v72[1] = vaddq_f32(v71, vmulq_n_f32(v69, v63.f32[0]));
                  v69.f32[0] = *(v48 - 1);
                  v73 = vmulq_n_f32(v68, *v48);
                  v74 = (v42 + v46 * 16);
                  v51 += 2;
                  v50 -= 0x200000000;
                  v47 -= 2;
                  *v74 = vsubq_f32(vmulq_n_f32(v68, v69.f32[0]), vmulq_n_f32(v70, *v48));
                  v74[1] = vaddq_f32(v73, vmulq_n_f32(v70, v69.f32[0]));
                  v46 += 2;
                  v49 += 2;
                  v48 += 2;
                }

                while (v51 < v24);
                ++v36;
                v37 += (3 * v24) << 32;
                v38 = (v38 + v39);
                v41 = (v41 + v40);
                v44 = (v44 + v39);
                v42 += v40;
                v43 += v40;
              }

              while (v36 != v28);
            }
          }

          goto LABEL_8;
        }

        radb2_ps(v24, v20, v7, v21, v9 + 4 * v10);
      }

      v19 = v184;
      v18 = v185;
      v17 = v186;
      v16 = v187;
      v15 = v188;
      v13 = v189;
      v14.i64[0] = 0xBF000000BF000000;
      v14.i64[1] = 0xBF000000BF000000;
LABEL_8:
      v20 = v196;
      v10 = v200 + (v195 - 1) * v24;
      if (v201 == a4)
      {
        v21 = v191;
      }

      else
      {
        v21 = a4;
      }

      if (v201 == a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = v191;
      }

      v12 = v197;
    }

    while (v197 != v190);
  }

  return v7;
}

float pffft_zconvolve_accumulate(uint64_t a1, float *a2, float *a3, float *a4, double a5)
{
  v5 = *(a1 + 4);
  v6 = *a2;
  v7 = a2[4];
  v8 = *a3;
  v9 = a3[4];
  v10 = *a4;
  v11 = a4[4];
  if (v5 >= 1)
  {
    v12 = 0;
    v13 = vdupq_lane_s32(*&a5, 0);
    v14 = (a4 + 8);
    v15 = (a3 + 8);
    v16 = (a2 + 8);
    do
    {
      v17 = v16[-2];
      v18 = v16[-1];
      v19 = v15[-2];
      v20 = v15[-1];
      v21 = vmulq_f32(v17, v20);
      v22 = vsubq_f32(vmulq_f32(v17, v19), vmulq_f32(v18, v20));
      v23 = vmlaq_f32(v14[-1], v13, vaddq_f32(vmulq_f32(v18, v19), v21));
      v14[-2] = vmlaq_f32(v14[-2], v13, v22);
      v14[-1] = v23;
      v24 = *v16;
      v25 = v16[1];
      v16 += 4;
      v26 = *v15;
      v27 = v15[1];
      v15 += 4;
      v28 = vmulq_f32(v24, v27);
      v29 = vsubq_f32(vmulq_f32(v24, v26), vmulq_f32(v25, v27));
      v30 = vmlaq_f32(v14[1], v13, vaddq_f32(vmulq_f32(v25, v26), v28));
      v12 += 2;
      *v14 = vmlaq_f32(*v14, v13, v29);
      v14[1] = v30;
      v14 += 4;
    }

    while (v12 < v5);
  }

  if (!*(a1 + 68))
  {
    *a4 = v10 + ((v6 * v8) * *&a5);
    *&a5 = v11 + ((v7 * v9) * *&a5);
    a4[4] = *&a5;
  }

  return *&a5;
}

uint64_t radf4_ps(uint64_t result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2 * result;
  v8 = a2 * result;
  if (a2 * result >= 1)
  {
    v9 = 2 * result;
    v10 = a4;
    v11 = a3;
    v12 = &a3[v7];
    do
    {
      v13 = *v11;
      v14 = v11[v8];
      v15 = v11[(2 * v8)];
      v16 = v11[(3 * v8)];
      v17 = vaddq_f32(v14, v16);
      *(v10 + ((32 * ((v9 - 2) >> 1)) | 0x10)) = vsubq_f32(*v11, v15);
      v18 = vaddq_f32(v13, v15);
      v10[v9] = vsubq_f32(v16, v14);
      *v10 = vaddq_f32(v18, v17);
      *(v10 + (((4 * result - 4) >> 2 << 6) | 0x30)) = vsubq_f32(v18, v17);
      v11 += result;
      v10 += 4 * result;
    }

    while (v11 < v12);
  }

  v19 = result - 1;
  if (result > 1)
  {
    if (result == 2)
    {
      if (v8 < 1)
      {
        return result;
      }

      v20 = (2 * v8);
      v21 = (3 * v8);
      v22 = 4;
      v23 = 6;
      v24 = 2;
      goto LABEL_14;
    }

    if (v8 >= 1)
    {
      v25 = 0;
      v24 = result;
      v23 = 3 * result;
      v26 = 16 * result;
      v27 = &a3[v8 + 1];
      v28 = &a3[(v8 + 1) + 1];
      v29 = &a4[(2 * result) + 1];
      v30 = &a3[(3 * v8) + 1];
      v94 = (a7 + 4);
      v93 = (a6 + 4);
      v92 = (a5 + 4);
      v31 = &a4[2 * result - 2];
      v32 = &a4[(3 * result) - 2 + v26 / 0x10];
      v33 = result << 6;
      v34 = (2 * result - 4) | 1;
      v90 = a3;
      v91 = 4 * result;
      v35 = (4 * result - 4) | 1;
      v36 = &a3[(3 * v8 + 1) + 1];
      v37 = a3;
      v38 = a4;
      v39 = &a3[(2 * v8)];
      do
      {
        v40 = 0;
        v41 = 0;
        v42 = v92;
        v43 = v93;
        v44 = v94;
        v45 = 2;
        do
        {
          v46 = *(v27 + v41 * 16);
          v47 = *(v28 + v41 * 16);
          v48 = *(v42 - 1);
          v49 = vmulq_n_f32(v46, *v42);
          v50 = vaddq_f32(vmulq_n_f32(v46, v48), vmulq_n_f32(v47, *v42));
          v51 = vsubq_f32(vmulq_n_f32(v47, v48), v49);
          v52 = v39[v41 + 1];
          v53 = v39[v41 + 2];
          v49.f32[0] = *(v43 - 1);
          v54 = vmulq_n_f32(v52, *v43);
          v55 = vaddq_f32(vmulq_n_f32(v52, v49.f32[0]), vmulq_n_f32(v53, *v43));
          v56 = vsubq_f32(vmulq_n_f32(v53, v49.f32[0]), v54);
          v57 = *(v30 + v41 * 16);
          v58 = *(v36 + v41 * 16);
          v54.f32[0] = *(v44 - 1);
          v59 = vmulq_n_f32(v57, *v44);
          v60 = vaddq_f32(vmulq_n_f32(v57, v54.f32[0]), vmulq_n_f32(v58, *v44));
          v61 = vsubq_f32(vmulq_n_f32(v58, v54.f32[0]), v59);
          v62 = vaddq_f32(v50, v60);
          v63 = vsubq_f32(v60, v50);
          v64 = v37[v41 + 1];
          v65 = v37[v41 + 2];
          v66 = vaddq_f32(v55, v64);
          v67 = &v38[v41];
          v67[1] = vaddq_f32(v66, v62);
          a4[v35 + v40] = vsubq_f32(v66, v62);
          v68 = vsubq_f32(v64, v55);
          v69 = vaddq_f32(v51, v61);
          v70 = vsubq_f32(v51, v61);
          v71 = (v29 + v41 * 16);
          *v71 = vaddq_f32(v68, v70);
          a4[v34 + v40] = vsubq_f32(v68, v70);
          v72 = vaddq_f32(v56, v65);
          v73 = vsubq_f32(v65, v56);
          v67[2] = vaddq_f32(v69, v72);
          v74 = 16 * v40;
          *(v32 + v74) = vsubq_f32(v69, v72);
          v71[1] = vaddq_f32(v63, v73);
          *(v31 + v74) = vsubq_f32(v63, v73);
          v45 += 2;
          v41 += 2;
          v44 += 2;
          v43 += 2;
          v42 += 2;
          v40 -= 2;
        }

        while (v45 < result);
        v25 += result;
        v27 += v26;
        v28 += v26;
        v29 += v33;
        v38 = (v38 + v33);
        v39 = (v39 + v26);
        v30 += v26;
        v31 += v33;
        v32 += v33;
        v34 += v91;
        v35 += v91;
        v36 += v26;
        v37 = (v37 + v26);
      }

      while (v25 < v8);
      v19 = result - 1;
      a3 = v90;
      v20 = (2 * v8);
      v21 = (3 * v8);
      v22 = 2 * result;
      if ((result & 1) == 0)
      {
LABEL_14:
        v75 = 0;
        v76 = 4 * v24;
        v77 = v22 - 1;
        v78 = v19;
        v79 = &a3[v20 + v78];
        v80 = &a3[v78];
        v81 = &a3[v21 + v78];
        v82 = &a3[v8 + v78];
        v83 = vdupq_n_s32(0xBF3504F3);
        do
        {
          v84 = v82[v75];
          v85 = v81[v75];
          v86 = v80[v75];
          v87 = v79[v75];
          v88 = vmulq_f32(vaddq_f32(v84, v85), v83);
          v89 = vmulq_f32(vsubq_f32(v85, v84), v83);
          a4[(result - 1)] = vaddq_f32(v86, v89);
          a4[(v77 + result)] = vsubq_f32(v86, v89);
          a4[result] = vsubq_f32(v88, v87);
          a4[v23] = vaddq_f32(v88, v87);
          v75 += v24;
          v23 += v76;
          result = (result + v76);
        }

        while (v8 > v75);
      }
    }
  }

  return result;
}

float32x4_t radf2_ps(unsigned int a1, int a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  v5 = a2 * a1;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 2 * a1;
    v8 = a4;
    do
    {
      v9 = *(a3 + 16 * v6);
      v10 = *(a3 + 16 * v5 + 16 * v6);
      *v8 = vaddq_f32(v9, v10);
      result = vsubq_f32(v9, v10);
      v6 += a1;
      v8[v7 - 1] = result;
      v8 = (v8 + v7 * 16);
    }

    while (v6 < v5);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_12;
    }

    if (v5 >= 1)
    {
      v12 = 0;
      v13 = a3 + 16 * v5;
      v14 = 32 * a1;
      v15 = &a4[v14 / 0x10 - 3];
      v16 = 16 * a1;
      v17 = (a5 + 4);
      v18 = a3;
      v19 = a4;
      do
      {
        v20 = 0;
        v12 += a1;
        v21 = v17;
        v22 = v15;
        v23 = 2;
        do
        {
          v24 = *(v13 + v20 + 16);
          v25 = *(v13 + v20 + 32);
          v26 = *(v18 + v20 + 16);
          v27 = *(v18 + v20 + 32);
          v28 = *(v21 - 1);
          v29 = vmulq_n_f32(v24, *v21);
          v30 = vaddq_f32(vmulq_n_f32(v25, *v21), vmulq_n_f32(v24, v28));
          v31 = vsubq_f32(vmulq_n_f32(v25, v28), v29);
          v32 = &v19[v20 / 0x10];
          v32[2] = vaddq_f32(v27, v31);
          v22[1] = vsubq_f32(v31, v27);
          v32[1] = vaddq_f32(v26, v30);
          v23 += 2;
          result = vsubq_f32(v26, v30);
          *v22 = result;
          v22 -= 2;
          v20 += 32;
          v21 += 2;
        }

        while (v23 < a1);
        v15 += v14;
        v13 += v16;
        v19 = (v19 + v14);
        v18 += v16;
      }

      while (v12 < v5);
    }

    if ((a1 & 1) == 0)
    {
LABEL_12:
      if (v5 >= 1)
      {
        v33 = 0;
        v34 = 16 * a1;
        v35 = &a4[v34 / 0x10];
        v36 = (v34 + a3 - 16);
        do
        {
          result = vnegq_f32(*(a3 + 16 * (a1 + a1 * a2 - 1 + v33)));
          v35[-1] = *v36;
          *v35 = result;
          v33 += a1;
          v36 = (v36 + v34);
          v35 += 2 * a1;
        }

        while (v5 > v33);
      }
    }
  }

  return result;
}

uint64_t radb4_ps(uint64_t result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a2 * result;
  v8 = a2 * result;
  if (a2 * result >= 1)
  {
    v9 = 2 * result;
    v11 = a4;
    v12 = a3;
    v13 = &a4[v7];
    do
    {
      v14 = *(v12 + (((4 * result - 4) >> 2 << 6) | 0x30));
      v10 = (32 * ((v9 - 2) >> 1)) | 0x10;
      v15 = vaddq_f32(*(v12 + v10), *(v12 + v10));
      v16 = vaddq_f32(*v12, v14);
      v17 = vsubq_f32(*v12, v14);
      v18 = vaddq_f32(v12[v9], v12[v9]);
      *v11 = vaddq_f32(v16, v15);
      v11[(2 * v8)] = vsubq_f32(v16, v15);
      v11[v8] = vsubq_f32(v17, v18);
      v11[(3 * v8)] = vaddq_f32(v17, v18);
      v12 += 4 * result;
      v11 += result;
    }

    while (v11 < v13);
  }

  v19 = result - 1;
  if (result > 1)
  {
    if (result == 2)
    {
      if (v8 < 1)
      {
        return result;
      }

      v20 = (3 * v8);
      v21 = 4;
      v22 = 2;
      goto LABEL_14;
    }

    if (v8 >= 1)
    {
      v84 = a4;
      v23 = 0;
      v24 = 0;
      v21 = 2 * result;
      v25 = a4 + 2;
      v86 = (a7 + 4);
      v85 = (a6 + 4);
      v26 = (a5 + 4);
      v22 = result;
      do
      {
        v27 = (v23 >> 2) << 6;
        v28 = &a3[(4 * result) - 3];
        v29 = &a3[v21];
        v30 = v29 - 3;
        v31 = a3 + 1;
        v32 = v26;
        v33 = v85;
        v34 = v86;
        v35 = v25;
        v36 = 2;
        do
        {
          v37 = v31[4 * (v23 >> 2)];
          v38 = *(v31 + v27 + 16);
          v39 = *(v28 + ((v23 >> 2) << 6));
          v40 = *(v28 + v27 + 16);
          v41 = vsubq_f32(v37, v39);
          v42 = vaddq_f32(v37, v39);
          v43 = *(v29 + v27 + 16);
          v44 = *(v29 + v27 + 32);
          v45 = v30[4 * (v23 >> 2)];
          v46 = *(v30 + v27 + 16);
          v47 = vsubq_f32(v43, v45);
          v48 = vaddq_f32(v43, v45);
          v49 = vaddq_f32(v42, v48);
          v50 = vsubq_f32(v42, v48);
          v51 = vsubq_f32(v44, v46);
          v52 = vaddq_f32(v44, v46);
          v53 = vsubq_f32(v41, v52);
          v54 = vaddq_f32(v41, v52);
          v55 = vaddq_f32(v38, v40);
          v56 = vsubq_f32(v38, v40);
          v35[-1] = v49;
          *v35 = vaddq_f32(v51, v56);
          v57 = &v35[v8];
          v58 = vsubq_f32(v56, v51);
          v59 = vaddq_f32(v47, v55);
          v60 = vsubq_f32(v55, v47);
          v49.f32[0] = *(v32 - 1);
          v61 = vsubq_f32(vmulq_n_f32(v53, v49.f32[0]), vmulq_n_f32(v59, *v32));
          v62 = vaddq_f32(vmulq_n_f32(v53, *v32), vmulq_n_f32(v59, v49.f32[0]));
          v57[-1] = v61;
          *v57 = v62;
          v63 = &v35[2 * v8];
          v61.f32[0] = *(v33 - 1);
          v64 = vmulq_n_f32(v50, *v33);
          v63[-1] = vsubq_f32(vmulq_n_f32(v50, v61.f32[0]), vmulq_n_f32(v58, *v33));
          *v63 = vaddq_f32(v64, vmulq_n_f32(v58, v61.f32[0]));
          v65 = &v35[3 * v8];
          v58.f32[0] = *(v34 - 1);
          v66 = vsubq_f32(vmulq_n_f32(v54, v58.f32[0]), vmulq_n_f32(v60, *v34));
          v36 += 2;
          v35 = (v35 + 48 * v8 - 16 * (3 * v8) + 32);
          v67 = vaddq_f32(vmulq_n_f32(v54, *v34), vmulq_n_f32(v60, v58.f32[0]));
          v34 += 2;
          v33 += 2;
          v32 += 2;
          v31 += 2;
          v65[-1] = v66;
          *v65 = v67;
          v30 -= 2;
          v29 += 2;
          v28 -= 32;
        }

        while (v36 < result);
        v24 += result;
        v25 += result;
        v23 += 4 * result;
      }

      while (v8 > v24);
      v19 = result - 1;
      a4 = v84;
      v20 = (3 * v8);
      if ((result & 1) == 0)
      {
LABEL_14:
        v68 = 0;
        v69 = v19;
        v70 = &a4[v20 + v69];
        v71 = &a4[(2 * v8) + v69];
        v72 = &a4[v8 + v69];
        v73 = &a4[v69];
        v74 = vdupq_n_s32(0xBFB504F3);
        do
        {
          v75 = &a3[result];
          v76 = &a3[v21 + result];
          v77 = v75[-1];
          v78 = v76[-1];
          v79 = vsubq_f32(v77, v78);
          v80 = vaddq_f32(v77, v78);
          v81 = vaddq_f32(*v75, *v76);
          v82 = vsubq_f32(*v76, *v75);
          v83 = v68;
          v73[v83] = vaddq_f32(v80, v80);
          v72[v83] = vmulq_f32(vsubq_f32(v81, v79), v74);
          v71[v83] = vaddq_f32(v82, v82);
          v70[v83] = vmulq_f32(vaddq_f32(v79, v81), v74);
          v68 += v22;
          result = (result + 4 * v22);
        }

        while (v8 > v68);
      }
    }
  }

  return result;
}

uint64_t radb2_ps(uint64_t result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  v5 = (a2 * result);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 2 * result;
    v8 = a3;
    do
    {
      v9 = *v8;
      v10 = v6;
      v11 = v8[v7 - 1];
      a4[v10] = vaddq_f32(*v8, v11);
      a4[v5 + v10] = vsubq_f32(v9, v11);
      v8 = (v8 + v7 * 16);
      v6 += result;
    }

    while (v6 < v5);
  }

  if (result > 1)
  {
    if (result == 2)
    {
      if (v5 < 1)
      {
        return result;
      }

      v12 = 2;
      goto LABEL_14;
    }

    if (v5 >= 1)
    {
      v13 = 0;
      v12 = result;
      v14 = (a5 + 4);
      v15 = a4 + 2;
      v16 = &a4[v5 + 2];
      v17 = 16 * result;
      v18 = a3 + 2;
      v19 = 32 * result;
      v20 = &a3[v19 / 0x10 - 3];
      do
      {
        v13 += result;
        v21 = v20;
        v22 = v18;
        v23 = v15;
        v24 = v16;
        v25 = v14;
        v26 = 2;
        do
        {
          v27 = v22[-1];
          v28 = *v22;
          v29 = *v21;
          v30 = v21[1];
          v21 -= 2;
          v31 = vaddq_f32(v27, v29);
          v32 = vsubq_f32(v27, v29);
          v33 = vsubq_f32(*v22, v30);
          v23[-1] = v31;
          *v23 = v33;
          v34 = vaddq_f32(v28, v30);
          v30.f32[0] = *(v25 - 1);
          v35 = vmulq_n_f32(v32, *v25);
          v36 = vsubq_f32(vmulq_n_f32(v32, v30.f32[0]), vmulq_n_f32(v34, *v25));
          v26 += 2;
          v25 += 2;
          v24[-1] = v36;
          *v24 = vaddq_f32(v35, vmulq_n_f32(v34, v30.f32[0]));
          v24 += 2;
          v23 += 2;
          v22 += 2;
        }

        while (v26 < result);
        v16 += v17;
        v15 = (v15 + v17);
        v18 = (v18 + v19);
        v20 += v19;
      }

      while (v13 < v5);
      if ((result & 1) == 0)
      {
LABEL_14:
        v37 = 0;
        v38 = &a3[v12];
        v39.i64[0] = 0xC0000000C0000000;
        v39.i64[1] = 0xC0000000C0000000;
        do
        {
          v40 = *v38;
          a4[(v12 - 1 + v37)] = vaddq_f32(v38[-1], v38[-1]);
          a4[(v12 - 1 + v5 + v37)] = vmulq_f32(v40, v39);
          v37 += v12;
          v38 += 2 * v12;
        }

        while (v5 > v37);
      }
    }
  }

  return result;
}

webrtc::PhysicalSocket *webrtc::PhysicalSocket::PhysicalSocket(webrtc::PhysicalSocket *this, webrtc::PhysicalSocketServer *a2, int a3)
{
  v6 = a3 != -1;
  v10 = *MEMORY[0x277D85DE8];
  *this = &unk_28829FC60;
  *(this + 1) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_disconnect;
  *(this + 2) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_duplicate;
  pthread_mutex_init((this + 24), 0);
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 14) = this + 88;
  *(this + 120) = 0;
  *(this + 16) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_disconnect;
  *(this + 17) = sigslot::_signal_base<sigslot::multi_threaded_local>::do_slot_duplicate;
  pthread_mutex_init((this + 144), 0);
  *(this + 26) = this + 208;
  *(this + 27) = this + 208;
  *(this + 28) = 0;
  *(this + 29) = this + 208;
  *(this + 240) = 0;
  *(this + 31) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 32) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 33) = this + 264;
  *(this + 34) = this + 264;
  *(this + 35) = 0;
  *(this + 36) = this + 264;
  *(this + 296) = 0;
  *(this + 38) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(this + 39) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(this + 40) = this + 320;
  *(this + 41) = this + 320;
  *(this + 42) = 0;
  *(this + 43) = this + 320;
  *(this + 352) = 0;
  *(this + 46) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(this + 47) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 48) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(this + 49) = this + 400;
  *this = &unk_288299620;
  *(this + 45) = &unk_288299700;
  *(this + 52) = a2;
  *(this + 106) = a3;
  *(this + 108) = 0;
  pthread_mutexattr_init(&v9);
  pthread_mutexattr_setpolicy_np(&v9, 3);
  pthread_mutex_init((this + 440), &v9);
  pthread_mutexattr_destroy(&v9);
  *(this + 126) = 0;
  *(this + 127) = 2 * v6;
  *(this + 64) = 0;
  *(this + 519) = 0;
  if (*(this + 106) != -1)
  {
    (*(*this + 184))(this, 3);
    v8 = 4;
    LODWORD(v9.__sig) = 1;
    getsockopt(*(this + 106), 0xFFFF, 4104, &v9, &v8);
    *(this + 428) = LODWORD(v9.__sig) == 2;
  }

  return this;
}

void webrtc::PhysicalSocket::~PhysicalSocket(webrtc::PhysicalSocket *this)
{
  *this = &unk_288299620;
  v2 = this + 360;
  *(this + 45) = &unk_288299700;
  v3 = *(this + 106);
  if (v3 != -1)
  {
    close(v3);
    v4 = __error();
    (*(*this + 120))(this, *v4);
    *(this + 106) = -1;
    *(this + 127) = 0;
    (*(*this + 184))(this, 0);
    v5 = *(this + 64);
    if (v5)
    {
      *(this + 64) = 0;
      (*(*v5 + 8))(v5);
    }
  }

  v6 = *(this + 64);
  *(this + 64) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  pthread_mutex_destroy((this + 440));
  *(this + 45) = &unk_28828CEE0;
  (*(this + 48))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 392, *(this + 50));

  webrtc::Socket::~Socket(this);
}

{
  webrtc::PhysicalSocket::~PhysicalSocket(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::PhysicalSocket::~PhysicalSocket(webrtc::PhysicalSocket *this)
{
  webrtc::PhysicalSocket::~PhysicalSocket((this - 360));
}

{
  webrtc::PhysicalSocket::~PhysicalSocket((this - 360));

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::PhysicalSocket::Create(webrtc::PhysicalSocket *this, int a2, int a3)
{
  (*(*this + 104))(this);
  *(this + 106) = socket(a2, a3, 0);
  *(this + 428) = a3 == 2;
  *(this + 108) = a2;
  v6 = __error();
  (*(*this + 120))(this, *v6);
  if (*(this + 428) == 1)
  {
    (*(*this + 184))(this, 3);
  }

  return *(this + 106) != -1;
}

void webrtc::PhysicalSocket::GetLocalAddress(webrtc::PhysicalSocket *this@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0;
  v14 = 0u;
  v12[0] = 128;
  v3 = getsockname(*(this + 106), &v13, v12);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = &unk_28828CE50;
  *(a2 + 64) = 0;
  memset(&v12[3], 0, 20);
  *(a2 + 32) = 0;
  *(a2 + 36) = *&v12[4];
  *(a2 + 56) = 0;
  *(a2 + 60) = 0;
  if (v3 < 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    }
  }

  else
  {
    webrtc::SocketAddressFromSockAddrStorage(&v13, a2, v4);
  }
}

void webrtc::PhysicalSocket::GetRemoteAddress(webrtc::PhysicalSocket *this@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0;
  v14 = 0u;
  v12[0] = 128;
  v3 = getpeername(*(this + 106), &v13, v12);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = &unk_28828CE50;
  *(a2 + 64) = 0;
  memset(&v12[3], 0, 20);
  *(a2 + 32) = 0;
  *(a2 + 36) = *&v12[4];
  *(a2 + 56) = 0;
  *(a2 + 60) = 0;
  if (v3 < 0)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    }
  }

  else
  {
    webrtc::SocketAddressFromSockAddrStorage(&v13, a2, v4);
  }
}

uint64_t webrtc::PhysicalSocket::Bind(webrtc::PhysicalSocket *this, void **a2)
{
  v44 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  memset(v38, 0, sizeof(v38));
  v36 = 0;
  v37 = &unk_28828CE50;
  if (__p != a2)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__assign_no_alias<true>(__p, *a2, a2[1]);
    }

    else
    {
      *__p = *a2;
      v36 = a2[2];
    }
  }

  v4 = *(a2 + 8);
  *v38 = v4;
  *&v38[4] = *(a2 + 36);
  v39 = *(a2 + 28);
  v41 = *(a2 + 64);
  v40 = *(a2 + 15);
  v5 = *(*(this + 52) + 8);
  if (!v5)
  {
LABEL_38:
    memset(v43, 0, sizeof(v43));
    v43[0].sa_family = v38[0];
    if (v38[0] == 2)
    {
      *&v43[0].sa_data[2] = *&v38[4];
      *v43[0].sa_data = __rev16(v39);
      v32 = 16;
    }

    else if (v38[0] == 30)
    {
      *&v43[0].sa_data[6] = *&v38[4];
      *v43[0].sa_data = __rev16(v39);
      *&v43[1].sa_data[6] = v40;
      v32 = 28;
    }

    else
    {
      v32 = 0;
    }

    v31 = bind(*(this + 106), v43, v32);
    v33 = __error();
    (*(*this + 120))(this, *v33);
    if (SHIBYTE(v36) < 0)
    {
      goto LABEL_44;
    }

    return v31;
  }

  if (v4 == 2)
  {
    if (!*(a2 + 9))
    {
      goto LABEL_38;
    }
  }

  else if (v4 == 30)
  {
    *&v43[0].sa_data[10] = *MEMORY[0x277D85EE8];
    if (*(a2 + 36) == *&v43[0].sa_data[10] && *(a2 + 44) == *&v43[1].sa_data[2])
    {
      goto LABEL_38;
    }

    v42 = webrtc::kV4MappedPrefix;
    if (*(a2 + 36) == webrtc::kV4MappedPrefix && *(a2 + 44) == *(&webrtc::kV4MappedPrefix + 1))
    {
      goto LABEL_38;
    }
  }

  v8 = (**v5)(v5, *(this + 106), a2 + 3);
  if (v8 == -2)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    }

    goto LABEL_38;
  }

  if (!v8)
  {
    v9 = *v38;
    *&v43[0].sa_len = &unk_28828CE50;
    if (*v38 == 30)
    {
      *&v43[0].sa_data[6] = 30;
      *&v43[0].sa_data[10] = *MEMORY[0x277D85EE8];
      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (*v38 == 2)
      {
        *&v43[0].sa_data[6] = 2;
        *&v43[0].sa_data[10] = 0uLL;
        if (SHIBYTE(v36) < 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        LOBYTE(__p[0]) = 0;
        HIBYTE(v36) = 0;
LABEL_37:
        v41 = 0;
        *&v38[4] = *&v43[0].sa_data[10];
        *v38 = v9;
        v40 = 0;
        goto LABEL_38;
      }

      v9 = 0;
      memset(&v43[0].sa_data[6], 0, 20);
      if ((SHIBYTE(v36) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    *__p[0] = 0;
    __p[1] = 0;
    v9 = *&v43[0].sa_data[6];
    goto LABEL_37;
  }

  if (webrtc::SocketAddress::IsLoopbackIP(a2))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v17, v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    }

    goto LABEL_38;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    v31 = 0xFFFFFFFFLL;
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      return v31;
    }

    goto LABEL_44;
  }

  v31 = 0xFFFFFFFFLL;
  if (SHIBYTE(v36) < 0)
  {
LABEL_44:
    operator delete(__p[0]);
  }

  return v31;
}

uint64_t webrtc::PhysicalSocket::Connect(webrtc::PhysicalSocket *this, const webrtc::SocketAddress *a2)
{
  if (*(this + 127))
  {
    (*(*this + 120))(this, 37);
    return 0xFFFFFFFFLL;
  }

  else
  {
    if (!*(a2 + 8) && (*(a2 + 64) & 1) == 0)
    {
      v3 = *(a2 + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = *(a2 + 1);
      }

      if (v3)
      {
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
        }

        operator new();
      }
    }

    return webrtc::PhysicalSocket::DoConnect(this, a2);
  }
}

uint64_t webrtc::PhysicalSocket::DoConnect(webrtc::PhysicalSocket *this, const webrtc::SocketAddress *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 106) == -1 && !(*(*this + 152))(this, *(a2 + 8), 1))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 28);
  v5 = *(a2 + 15);
  memset(v12, 0, sizeof(v12));
  v12[0].sa_family = *(a2 + 32);
  if (v12[0].sa_family == 2)
  {
    *&v12[0].sa_data[2] = *(a2 + 9);
    *v12[0].sa_data = __rev16(v4);
    v6 = 16;
  }

  else if (v12[0].sa_family == 30)
  {
    *&v12[0].sa_data[6] = *(a2 + 36);
    *v12[0].sa_data = __rev16(v4);
    *&v12[1].sa_data[6] = v5;
    v6 = 28;
  }

  else
  {
    v6 = 0;
  }

  v7 = connect(*(this + 106), v12, v6);
  v8 = __error();
  (*(*this + 120))(this, *v8);
  if (!v7)
  {
    v9 = 3;
    v10 = 2;
    goto LABEL_13;
  }

  if ((*(*this + 112))(this) - 35 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 7;
  v10 = 1;
LABEL_13:
  *(this + 127) = v10;
  (*(*this + 192))(this, v9);
  return 0;
}

uint64_t webrtc::PhysicalSocket::GetError(webrtc::PhysicalSocket *this)
{
  pthread_mutex_lock((this + 440));
  v2 = *(this + 126);
  pthread_mutex_unlock((this + 440));
  return v2;
}

uint64_t webrtc::PhysicalSocket::SetError(webrtc::PhysicalSocket *this, int a2)
{
  pthread_mutex_lock((this + 440));
  *(this + 126) = a2;

  return pthread_mutex_unlock((this + 440));
}

uint64_t webrtc::PhysicalSocket::GetOption(uint64_t a1, int a2, int *a3)
{
  v9 = 0;
  result = webrtc::PhysicalSocket::TranslateOption(a1, a2, &v9 + 1, &v9);
  if (result != -1)
  {
    v8 = 4;
    result = getsockopt(*(a1 + 424), SHIDWORD(v9), v9, a3, &v8);
    if (result != -1)
    {
      if (a2 == 8 || a2 == 7)
      {
        v7 = *a3 & 3;
      }

      else
      {
        if (a2 != 5)
        {
          return result;
        }

        v7 = *a3 >> 2;
      }

      *a3 = v7;
    }
  }

  return result;
}

uint64_t webrtc::PhysicalSocket::TranslateOption(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 7)
  {
    if (a2 > 10)
    {
      switch(a2)
      {
        case 11:
          result = 0;
          *a3 = 6;
          *a4 = 16;
          return result;
        case 12:
          result = 0;
          *a3 = 6;
          *a4 = 257;
          return result;
        case 13:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
LABEL_23:
            webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
          }

          return 0xFFFFFFFFLL;
      }
    }

    else if (a2 == 8)
    {
      result = 0;
      if (*(a1 + 432) == 30)
      {
        *a3 = 41;
        *a4 = 35;
      }

      else
      {
        *a3 = 0;
        *a4 = 27;
      }
    }

    else
    {
      result = 0;
      if (a2 == 9)
      {
        *a3 = 0xFFFF;
        *a4 = 8;
      }

      else
      {
        *a3 = 6;
        *a4 = 258;
      }
    }
  }

  else
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          result = 0;
          *a3 = 0xFFFF;
          *a4 = 4098;
        }

        else if (a2 == 2)
        {
          result = 0;
          *a3 = 0xFFFF;
          *a4 = 4097;
        }

        return result;
      }

      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
      {
        goto LABEL_23;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 == 3)
    {
      result = 0;
      *a3 = 6;
      *a4 = 1;
    }

    else if (a2 == 5 || a2 == 7)
    {
      result = 0;
      if (*(a1 + 432) == 30)
      {
        *a3 = 41;
        *a4 = 36;
      }

      else
      {
        *a3 = 0;
        *a4 = 3;
      }
    }
  }

  return result;
}

uint64_t webrtc::PhysicalSocket::SetOption(uint64_t a1, int a2, int a3)
{
  v12 = 0;
  v13 = a3;
  v11 = 0;
  result = webrtc::PhysicalSocket::TranslateOption(a1, a2, &v12, &v11);
  if (result == -1)
  {
    return result;
  }

  if (a2 == 7)
  {
    *(a1 + 521) = a3;
    v7 = (a3 & 3) + *(a1 + 520);
    goto LABEL_6;
  }

  if (a2 == 5)
  {
    *(a1 + 520) = 4 * a3;
    v7 = (4 * a3) & 0xFC | *(a1 + 521) & 3;
LABEL_6:
    v13 = v7;
  }

  v8 = v11;
  if (v11 == 36)
  {
    setsockopt(*(a1 + 424), 0, 3, &v13, 4u);
  }

  result = setsockopt(*(a1 + 424), v12, v8, &v13, 4u);
  if (result)
  {
    v9 = result;
    v10 = __error();
    (*(*a1 + 120))(a1, *v10);
    return v9;
  }

  return result;
}

uint64_t webrtc::PhysicalSocket::Send(webrtc::PhysicalSocket *this, const void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = (*(*this + 168))(this, *(this + 106), a2, a3, 0);
  v6 = __error();
  (*(*this + 120))(this, *v6);
  if ((*(*this + 112))(this) == 55)
  {
    (*(*this + 120))(this, 35);
  }

  v7 = v5 >= 1 && v5 < v3;
  if (!v7 && ((v5 & 0x80000000) == 0 || (*(*this + 112))(this) - 35 > 1))
  {
    return v5;
  }

  (*(*this + 192))(this, 2);
  return v5;
}

uint64_t webrtc::PhysicalSocket::SendTo(webrtc::PhysicalSocket *this, const void *a2, uint64_t a3, const webrtc::SocketAddress *a4)
{
  v4 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 28);
  v7 = *(a4 + 15);
  memset(v13, 0, sizeof(v13));
  BYTE1(v13[0]) = *(a4 + 32);
  if (BYTE1(v13[0]) == 2)
  {
    DWORD1(v13[0]) = *(a4 + 9);
    WORD1(v13[0]) = __rev16(v6);
    v8 = 16;
  }

  else if (BYTE1(v13[0]) == 30)
  {
    *(v13 + 8) = *(a4 + 36);
    WORD1(v13[0]) = __rev16(v6);
    DWORD2(v13[1]) = v7;
    v8 = 28;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*this + 176))(this, *(this + 106), a2, a3, 0, v13, v8);
  v10 = __error();
  (*(*this + 120))(this, *v10);
  if ((*(*this + 112))(this) == 55)
  {
    (*(*this + 120))(this, 35);
  }

  v11 = v9 >= 1 && v9 < v4;
  if (v11 || (v9 & 0x80000000) != 0 && (*(*this + 112))(this) - 35 <= 1)
  {
    (*(*this + 192))(this, 2);
  }

  return v9;
}

ssize_t webrtc::PhysicalSocket::Recv(webrtc::PhysicalSocket *this, void *a2, uint64_t a3, uint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v29[0] = a2;
  v29[1] = a3;
  memset(&v28.msg_iovlen + 1, 0, 20);
  *&v28.msg_name = 0u;
  v28.msg_iov = v29;
  v28.msg_iovlen = 1;
  memset(v30, 0, sizeof(v30));
  if (a4)
  {
    *a4 = -1;
    v28.msg_control = v30;
    v28.msg_controllen = 48;
    v7 = recvmsg(*(this + 106), &v28, 0);
    if (v7 >= 1)
    {
      if (v28.msg_controllen < 0xC)
      {
        goto LABEL_16;
      }

      msg_control = v28.msg_control;
      if (!v28.msg_control)
      {
        goto LABEL_16;
      }

      v9 = (v28.msg_control + v28.msg_controllen);
      do
      {
        if (msg_control[1] == 0xFFFF && msg_control[2] == 2)
        {
          *a4 = msg_control[5] + 1000000 * *(msg_control + 3);
        }

        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
      }

      while (msg_control + 3 <= v9);
    }
  }

  else
  {
    v7 = recvmsg(*(this + 106), &v28, 0);
  }

  if (a3 && !v7)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    }

    (*(*this + 192))(this, 1);
    (*(*this + 120))(this, 35);
    return 0xFFFFFFFFLL;
  }

LABEL_16:
  v17 = __error();
  (*(*this + 120))(this, *v17);
  v18 = (*(*this + 112))(this);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = v18 - 35;
    if ((*(this + 428) & 1) == 0 && v20 > 1 || ((*(*this + 192))(this, 1), v20 >= 2))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
      }
    }
  }

  else
  {
    (*(*this + 192))(this, 1);
  }

  return v7;
}

ssize_t webrtc::PhysicalSocket::DoReadFromSocket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  *&v17.msg_control = 0u;
  *&v17.msg_name = 0u;
  v17.msg_iov = v18;
  *&v17.msg_iovlen = 1;
  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }

    *(a4 + 64) = 0;
    memset(&v20[8], 0, 20);
    *(a4 + 32) = 0;
    *(a4 + 36) = *&v20[12];
    *(a4 + 56) = 0;
    *(a4 + 60) = 0;
    v17.msg_name = v20;
    v17.msg_namelen = 128;
  }

  memset(v19, 0, sizeof(v19));
  if (a5 | a6)
  {
    *a5 = -1;
    v17.msg_control = v19;
    v17.msg_controllen = 48;
    v10 = recvmsg(*(a1 + 424), &v17, 0);
    if (v10 < 1)
    {
      return v10;
    }

    if (v17.msg_controllen >= 0xC)
    {
      msg_control = v17.msg_control;
      if (v17.msg_control)
      {
        v12 = (v17.msg_control + v17.msg_controllen);
        if (a6)
        {
          while (1)
          {
            v13 = msg_control[1];
            v14 = msg_control[2];
            if (v14 == 36)
            {
              break;
            }

            if (v14 != 3)
            {
              if (v14 == 2 && v13 == 0xFFFF)
              {
                *a5 = msg_control[5] + 1000000 * *(msg_control + 3);
              }

              goto LABEL_13;
            }

            if (!v13)
            {
              goto LABEL_12;
            }

LABEL_13:
            msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
            if (msg_control + 3 > v12)
            {
              goto LABEL_27;
            }
          }

          if (v13 != 41)
          {
            goto LABEL_13;
          }

LABEL_12:
          *a6 = msg_control[3] & 3;
          goto LABEL_13;
        }

        do
        {
          if (msg_control[1] == 0xFFFF && msg_control[2] == 2)
          {
            *a5 = msg_control[5] + 1000000 * *(msg_control + 3);
          }

          msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
        }

        while (msg_control + 3 <= v12);
      }
    }
  }

  else
  {
    v10 = recvmsg(*(a1 + 424), &v17, 0);
    if (v10 < 1)
    {
      return v10;
    }
  }

LABEL_27:
  if (a4)
  {
    webrtc::SocketAddressFromSockAddrStorage(v20, a4, v9);
  }

  return v10;
}

ssize_t webrtc::PhysicalSocket::RecvFrom(webrtc::PhysicalSocket *this, uint64_t a2, uint64_t a3, webrtc::SocketAddress *a4, uint64_t *a5)
{
  v6 = webrtc::PhysicalSocket::DoReadFromSocket(this, a2, a3, a4, a5, 0);
  v7 = __error();
  (*(*this + 120))(this, *v7);
  v8 = (*(*this + 112))(this);
  if ((v6 & 0x80000000) == 0)
  {
    (*(*this + 192))(this, 1);
    return v6;
  }

  v10 = v8 - 35;
  if ((*(this + 428) & 1) != 0 || v10 <= 1)
  {
    (*(*this + 192))(this, 1);
    if (v10 < 2)
    {
      return v6;
    }
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>())
  {
    return v6;
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
  return v6;
}

ssize_t webrtc::PhysicalSocket::RecvFrom(_BYTE *a1, uint64_t a2)
{
  v23 = -1;
  v4 = *(a2 + 96);
  v5 = *(v4 + 8);
  if (!(v5 >> 16))
  {
    operator new[]();
  }

  if (a1[521])
  {
    v6 = (a2 + 88);
  }

  else
  {
    v6 = 0;
  }

  v7 = webrtc::PhysicalSocket::DoReadFromSocket(a1, *(v4 + 16), v5, a2 + 16, &v23, v6);
  v8 = *(a2 + 96);
  v9 = v7 & ~(v7 >> 31);
  if (v8[1] < v9)
  {
    operator new[]();
  }

  *v8 = v9;
  v10 = v23;
  if (v7 >= 1 && v23 != -1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      *(a2 + 8) = 1;
    }

    *a2 = v10;
  }

  v12 = __error();
  (*(*a1 + 120))(a1, *v12);
  v13 = (*(*a1 + 112))(a1);
  if ((v7 & 0x80000000) != 0)
  {
    v15 = v13 - 35;
    if ((a1[428] & 1) == 0 && v15 > 1 || ((*(*a1 + 192))(a1, 1), v15 >= 2))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
      }
    }
  }

  else
  {
    (*(*a1 + 192))(a1, 1);
  }

  return v7;
}

uint64_t webrtc::PhysicalSocket::Listen(webrtc::PhysicalSocket *this, int a2)
{
  v3 = listen(*(this + 106), a2);
  v4 = __error();
  (*(*this + 120))(this, *v4);
  if (!v3)
  {
    *(this + 127) = 1;
    (*(*this + 192))(this, 16);
  }

  return v3;
}

uint64_t webrtc::PhysicalSocket::Accept(webrtc::PhysicalSocket *this, std::string *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  (*(*this + 192))(this, 16);
  v8 = 128;
  v4 = (*(*this + 160))(this, *(this + 106), v9, &v8);
  v5 = __error();
  (*(*this + 120))(this, *v5);
  if (v4 == -1)
  {
    return 0;
  }

  if (a2)
  {
    webrtc::SocketAddressFromSockAddrStorage(v9, a2, v6);
  }

  return (*(**(this + 52) + 48))(*(this + 52), v4);
}

uint64_t webrtc::PhysicalSocket::Close(webrtc::PhysicalSocket *this)
{
  v2 = *(this + 106);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = close(v2);
  v4 = __error();
  (*(*this + 120))(this, *v4);
  *(this + 106) = -1;
  *(this + 127) = 0;
  (*(*this + 184))(this, 0);
  v5 = *(this + 64);
  if (v5)
  {
    *(this + 64) = 0;
    (*(*v5 + 8))(v5);
  }

  return v3;
}

void webrtc::SocketDispatcher::~SocketDispatcher(webrtc::SocketDispatcher *this)
{
  *this = &unk_288299720;
  v1 = (this + 8);
  *(this + 1) = &unk_288299778;
  *(this + 46) = &unk_288299858;
  webrtc::SocketDispatcher::Close(this);
  webrtc::PhysicalSocket::~PhysicalSocket(v1);
}

{
  *this = &unk_288299720;
  v1 = (this + 8);
  *(this + 1) = &unk_288299778;
  *(this + 46) = &unk_288299858;
  webrtc::SocketDispatcher::Close(this);
  webrtc::PhysicalSocket::~PhysicalSocket(v1);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::SocketDispatcher::~SocketDispatcher(webrtc::SocketDispatcher *this)
{
  *(this - 1) = &unk_288299720;
  *this = &unk_288299778;
  *(this + 45) = &unk_288299858;
  webrtc::SocketDispatcher::Close((this - 8));

  webrtc::PhysicalSocket::~PhysicalSocket(this);
}

{
  *(this - 46) = &unk_288299720;
  v1 = (this - 360);
  *(this - 45) = &unk_288299778;
  *this = &unk_288299858;
  webrtc::SocketDispatcher::Close((this - 368));

  webrtc::PhysicalSocket::~PhysicalSocket(v1);
}

{
  *(this - 1) = &unk_288299720;
  *this = &unk_288299778;
  *(this + 45) = &unk_288299858;
  webrtc::SocketDispatcher::Close((this - 8));
  webrtc::PhysicalSocket::~PhysicalSocket(this);

  JUMPOUT(0x2743DA540);
}

{
  *(this - 46) = &unk_288299720;
  v1 = (this - 360);
  *(this - 45) = &unk_288299778;
  *this = &unk_288299858;
  webrtc::SocketDispatcher::Close((this - 368));
  webrtc::PhysicalSocket::~PhysicalSocket(v1);

  JUMPOUT(0x2743DA540);
}

BOOL webrtc::SocketDispatcher::Initialize(webrtc::SocketDispatcher *this)
{
  v1 = *(this + 108);
  if (v1 >= 0x400)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      v4 = *__error();
      v13 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc";
      v14 = 6723;
      v15 = 1;
      v16 = v4;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v5, v6, v7, v8, v9, v10, v11, &v13);
    }
  }

  else
  {
    v3 = fcntl(v1, 3, 0);
    fcntl(v1, 4, v3 | 4u);
    LODWORD(v13) = 1;
    setsockopt(*(this + 108), 0xFFFF, 1024, &v13, 4u);
    LODWORD(v13) = 1;
    setsockopt(*(this + 108), 0xFFFF, 4130, &v13, 4u);
    webrtc::PhysicalSocketServer::Add(*(this + 53), this);
  }

  return v1 < 0x400;
}

uint64_t webrtc::PhysicalSocketServer::Add(webrtc::PhysicalSocketServer *this, webrtc::Dispatcher *a2)
{
  v13 = a2;
  pthread_mutex_lock((this + 136));
  if (std::__hash_table<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::__unordered_map_hasher<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::hash<webrtc::Dispatcher *>,std::equal_to<webrtc::Dispatcher *>,true>,std::__unordered_map_equal<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::equal_to<webrtc::Dispatcher *>,std::hash<webrtc::Dispatcher *>,true>,std::allocator<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>>>::find<webrtc::Dispatcher *>(this + 8, &v13))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    }

    return pthread_mutex_unlock((this + 136));
  }

  else
  {
    v11 = *(this + 2);
    *(this + 2) = v11 + 1;
    v12 = v11;
    std::__hash_table<std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,webrtc::Dispatcher *&>(this + 3, &v12);
    std::__hash_table<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::__unordered_map_hasher<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::hash<webrtc::Dispatcher *>,std::equal_to<webrtc::Dispatcher *>,true>,std::__unordered_map_equal<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::equal_to<webrtc::Dispatcher *>,std::hash<webrtc::Dispatcher *>,true>,std::allocator<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>>>::__emplace_unique_key_args<webrtc::Dispatcher *,webrtc::Dispatcher *&,unsigned long long &>(this + 8, &v13);
    return pthread_mutex_unlock((this + 136));
  }
}

BOOL webrtc::SocketDispatcher::Create(webrtc::SocketDispatcher *this, int a2, int a3)
{
  v6 = this + 8;
  (*(*(this + 1) + 104))(this + 8);
  *(v6 + 106) = socket(a2, a3, 0);
  v6[428] = a3 == 2;
  *(v6 + 108) = a2;
  v7 = __error();
  (*(*v6 + 120))(v6, *v7);
  if (v6[428] == 1)
  {
    (*(*v6 + 184))(v6, 3);
  }

  if (*(this + 108) == -1)
  {
    return 0;
  }

  return webrtc::SocketDispatcher::Initialize(this);
}

BOOL non-virtual thunk towebrtc::SocketDispatcher::Create(webrtc::SocketDispatcher *this, int a2, int a3)
{
  (*(*this + 104))(this);
  *(this + 106) = socket(a2, a3, 0);
  *(this + 428) = a3 == 2;
  *(this + 108) = a2;
  v6 = __error();
  (*(*this + 120))(this, *v6);
  if (*(this + 428) == 1)
  {
    (*(*this + 184))(this, 3);
  }

  if (*(this + 106) == -1)
  {
    return 0;
  }

  return webrtc::SocketDispatcher::Initialize((this - 8));
}

unint64_t webrtc::SocketDispatcher::IsDescriptorClosed(webrtc::SocketDispatcher *this)
{
  if (*(this + 436) == 1)
  {
    return *(this + 108) == -1;
  }

  v13 = 0;
  do
  {
    v3 = recv(*(this + 108), &v13, 1uLL, 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      return v3 == 0;
    }
  }

  while (*__error() == 4);
  v4 = *__error() - 9;
  if (v4 < 0x2E && ((0x300004800001uLL >> v4) & 1) != 0)
  {
    return (0x3FFFFBFFFFFFuLL >> v4) & 1;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    v5 = *__error();
    v14 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc";
    v15 = 7818;
    v16 = 1;
    v17 = v5;
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v6, v7, v8, v9, v10, v11, v12, &v14);
  }

  return 0;
}

uint64_t webrtc::SocketDispatcher::OnEvent(uint64_t this, char a2, uint64_t a3)
{
  v5 = this;
  if ((a2 & 4) == 0)
  {
    if ((a2 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(this + 516) = 0;
    if ((a2 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  *(this + 516) = 2;
  if ((a2 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((a2 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  (*(*(this + 8) + 200))(this + 8, 4);
  this = *(v5 + 280);
  for (*(v5 + 296) = this; this != v5 + 272; this = *(v5 + 296))
  {
    v7 = *(this + 16);
    v6 = this + 16;
    *(v5 + 296) = *(v6 - 8);
    v7(v6, v5 + 8);
  }

LABEL_7:
  if ((a2 & 0x10) != 0)
  {
    (*(*(v5 + 8) + 200))(v5 + 8, 16);
    pthread_mutex_lock((v5 + 32));
    v8 = *(v5 + 104);
    for (*(v5 + 120) = v8; v8 != v5 + 96; v8 = *(v5 + 120))
    {
      v10 = *(v8 + 16);
      v9 = v8 + 16;
      *(v5 + 120) = *(v9 - 8);
      v10(v9, v5 + 8);
    }

    this = pthread_mutex_unlock((v5 + 32));
    if ((a2 & 1) == 0)
    {
LABEL_9:
      if ((a2 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_9;
  }

  (*(*(v5 + 8) + 200))(v5 + 8, 1);
  pthread_mutex_lock((v5 + 32));
  v11 = *(v5 + 104);
  for (*(v5 + 120) = v11; v11 != v5 + 96; v11 = *(v5 + 120))
  {
    v13 = *(v11 + 16);
    v12 = v11 + 16;
    *(v5 + 120) = *(v12 - 8);
    v13(v12, v5 + 8);
  }

  this = pthread_mutex_unlock((v5 + 32));
  if ((a2 & 2) == 0)
  {
LABEL_10:
    if ((a2 & 8) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_21:
  (*(*(v5 + 8) + 200))(v5 + 8, 2);
  pthread_mutex_lock((v5 + 152));
  v14 = *(v5 + 224);
  for (*(v5 + 240) = v14; v14 != v5 + 216; v14 = *(v5 + 240))
  {
    v16 = *(v14 + 16);
    v15 = v14 + 16;
    *(v5 + 240) = *(v15 - 8);
    v16(v15, v5 + 8);
  }

  this = pthread_mutex_unlock((v5 + 152));
  if ((a2 & 8) != 0)
  {
LABEL_25:
    (*(*(v5 + 8) + 184))(v5 + 8, 0);
    this = *(v5 + 336);
    for (*(v5 + 352) = this; this != v5 + 328; this = *(v5 + 352))
    {
      v18 = *(this + 16);
      v17 = this + 16;
      *(v5 + 352) = *(v17 - 8);
      v18(v17, v5 + 8, a3);
    }
  }

  return this;
}

uint64_t webrtc::SocketDispatcher::Close(webrtc::SocketDispatcher *this)
{
  if (*(this + 108) == -1)
  {
    return 0;
  }

  webrtc::PhysicalSocketServer::Remove(*(this + 53), this);
  v2 = *(this + 108);
  if (v2 == -1)
  {
    return 0;
  }

  v3 = close(v2);
  v4 = __error();
  (*(*(this + 1) + 120))(this + 8, *v4);
  *(this + 108) = -1;
  *(this + 129) = 0;
  (*(*(this + 1) + 184))(this + 8, 0);
  v5 = *(this + 65);
  if (v5)
  {
    *(this + 65) = 0;
    (*(*v5 + 8))(v5);
  }

  return v3;
}

uint64_t webrtc::PhysicalSocketServer::Remove(webrtc::PhysicalSocketServer *this, webrtc::Dispatcher *a2)
{
  v38 = a2;
  pthread_mutex_lock((this + 136));
  if (!std::__hash_table<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::__unordered_map_hasher<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::hash<webrtc::Dispatcher *>,std::equal_to<webrtc::Dispatcher *>,true>,std::__unordered_map_equal<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::equal_to<webrtc::Dispatcher *>,std::hash<webrtc::Dispatcher *>,true>,std::allocator<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>>>::find<webrtc::Dispatcher *>(this + 8, &v38))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
    }

    return pthread_mutex_unlock((this + 136));
  }

  v3 = std::__hash_table<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::__unordered_map_hasher<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::hash<webrtc::Dispatcher *>,std::equal_to<webrtc::Dispatcher *>,true>,std::__unordered_map_equal<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::equal_to<webrtc::Dispatcher *>,std::hash<webrtc::Dispatcher *>,true>,std::allocator<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>>>::find<webrtc::Dispatcher *>(this + 8, v38);
  if (!v3)
  {
    abort();
  }

  v4 = v3[3];
  v5 = *(this + 72);
  v6 = v3[1];
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    if (v6 >= *&v5)
    {
      v6 %= *&v5;
    }
  }

  else
  {
    v6 &= *&v5 - 1;
  }

  v16 = *(this + 8);
  v17 = *(v16 + 8 * v6);
  do
  {
    v18 = v17;
    v17 = *v17;
  }

  while (v17 != v3);
  if (v18 == (this + 80))
  {
    goto LABEL_23;
  }

  v19 = v18[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v19 >= *&v5)
    {
      v19 %= *&v5;
    }
  }

  else
  {
    v19 &= *&v5 - 1;
  }

  if (v19 != v6)
  {
LABEL_23:
    if (!*v3)
    {
      goto LABEL_24;
    }

    v20 = *(*v3 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v20 >= *&v5)
      {
        v20 %= *&v5;
      }
    }

    else
    {
      v20 &= *&v5 - 1;
    }

    if (v20 != v6)
    {
LABEL_24:
      *(v16 + 8 * v6) = 0;
    }
  }

  v21 = *v3;
  if (*v3)
  {
    v22 = *(v21 + 8);
    if (v7.u32[0] > 1uLL)
    {
      if (v22 >= *&v5)
      {
        v22 %= *&v5;
      }
    }

    else
    {
      v22 &= *&v5 - 1;
    }

    if (v22 != v6)
    {
      *(v16 + 8 * v22) = v18;
      v21 = *v3;
    }
  }

  *v18 = v21;
  *v3 = 0;
  --*(this + 11);
  operator delete(v3);
  v23 = *(this + 32);
  if (!*&v23)
  {
    return pthread_mutex_unlock((this + 136));
  }

  v24 = vcnt_s8(v23);
  v24.i16[0] = vaddlv_u8(v24);
  if (v24.u32[0] > 1uLL)
  {
    v25 = v4;
    if (v4 >= *&v23)
    {
      v25 = v4 % *&v23;
    }
  }

  else
  {
    v25 = (*&v23 - 1) & v4;
  }

  v26 = *(this + 3);
  v27 = *(v26 + 8 * v25);
  if (!v27)
  {
    return pthread_mutex_unlock((this + 136));
  }

  v28 = *v27;
  if (!*v27)
  {
    return pthread_mutex_unlock((this + 136));
  }

  v29 = *&v23 - 1;
  if (v24.u32[0] < 2uLL)
  {
    while (1)
    {
      v30 = v28[1];
      if (v30 == v4)
      {
        if (v28[2] == v4)
        {
          goto LABEL_53;
        }
      }

      else if ((v30 & v29) != v25)
      {
        return pthread_mutex_unlock((this + 136));
      }

      v28 = *v28;
      if (!v28)
      {
        return pthread_mutex_unlock((this + 136));
      }
    }
  }

  while (1)
  {
    v31 = v28[1];
    if (v31 == v4)
    {
      break;
    }

    if (v31 >= *&v23)
    {
      v31 %= *&v23;
    }

    if (v31 != v25)
    {
      return pthread_mutex_unlock((this + 136));
    }

LABEL_47:
    v28 = *v28;
    if (!v28)
    {
      return pthread_mutex_unlock((this + 136));
    }
  }

  if (v28[2] != v4)
  {
    goto LABEL_47;
  }

LABEL_53:
  if (v24.u32[0] > 1uLL)
  {
    if (v4 >= *&v23)
    {
      v4 %= *&v23;
    }
  }

  else
  {
    v4 &= v29;
  }

  v32 = *(v26 + 8 * v4);
  do
  {
    v33 = v32;
    v32 = *v32;
  }

  while (v32 != v28);
  if (v33 == (this + 40))
  {
    goto LABEL_70;
  }

  v34 = v33[1];
  if (v24.u32[0] > 1uLL)
  {
    if (v34 >= *&v23)
    {
      v34 %= *&v23;
    }
  }

  else
  {
    v34 &= v29;
  }

  if (v34 != v4)
  {
LABEL_70:
    if (!*v28)
    {
      goto LABEL_71;
    }

    v35 = *(*v28 + 8);
    if (v24.u32[0] > 1uLL)
    {
      if (v35 >= *&v23)
      {
        v35 %= *&v23;
      }
    }

    else
    {
      v35 &= v29;
    }

    if (v35 != v4)
    {
LABEL_71:
      *(v26 + 8 * v4) = 0;
    }
  }

  v36 = *v28;
  if (*v28)
  {
    v37 = *(v36 + 8);
    if (v24.u32[0] > 1uLL)
    {
      if (v37 >= *&v23)
      {
        v37 %= *&v23;
      }
    }

    else
    {
      v37 &= v29;
    }

    if (v37 != v4)
    {
      *(v26 + 8 * v37) = v33;
      v36 = *v28;
    }
  }

  *v33 = v36;
  *v28 = 0;
  --*(this + 6);
  operator delete(v28);
  return pthread_mutex_unlock((this + 136));
}

void webrtc::PhysicalSocketServer::~PhysicalSocketServer(webrtc::PhysicalSocketServer *this)
{
  *this = &unk_288299878;
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  pthread_mutex_destroy((this + 136));
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

{
  webrtc::PhysicalSocketServer::~PhysicalSocketServer(this);

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::PhysicalSocketServer::Wait(webrtc::PhysicalSocketServer *this, TimeDelta a2, char a3)
{
  *(this + 217) = 1;
  if (a2.var0 == 0x7FFFFFFFFFFFFFFFLL || ((v5 = 1000 * ((a2.var0 + 999) / 1000), v6 = ((((125 * ((a2.var0 + 999) / 1000)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4, v5 - 1000 * v6 <= 0x1F3) ? (v7 = ((((125 * ((a2.var0 + 999) / 1000)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4) : (LODWORD(v7) = v6 + 1), (v8 = ((((0x1FFFFFFFFFFFFF83 * ((a2.var0 + 999) / 1000)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4, -1000 * ((a2.var0 + 999) / 1000) - 1000 * v8 <= 0x1F4) ? (v9 = 0) : (v9 = -1), (v10 = v9 - v8, v5 < 0) ? (v11 = v10) : (v11 = v7), v11 == -1))
  {
    v88 = 0;
    v13 = 0;
    v90 = 8;
  }

  else
  {
    v90 = &v94;
    v93 = v11 / 1000;
    v94 = 1000 * (v11 % 1000);
    if (webrtc::g_clock)
    {
      v12 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
    }

    else
    {
      if (!dword_28100D8E4)
      {
        mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
      }

      v12 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
    }

    v88 = v12 / 1000 + 1000 * v11;
    v13 = &v93;
  }

  *(this + 216) = 1;
  v89 = v13;
  while (1)
  {
    memset(&v92, 0, sizeof(v92));
    memset(&v91, 0, sizeof(v91));
    pthread_mutex_lock((this + 136));
    *(this + 14) = *(this + 13);
    v14 = *(this + 5);
    if (v14)
    {
      v15 = -1;
      do
      {
        v16 = v14[3];
        if ((a3 & 1) != 0 || v16 == *(this + 16))
        {
          v18 = *(this + 14);
          v17 = *(this + 15);
          if (v18 >= v17)
          {
            v19 = *(this + 13);
            v20 = v18 - v19;
            v21 = (v20 >> 3) + 1;
            if (v21 >> 61)
            {
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v22 = v17 - v19;
            v23 = v22 >> 2;
            if (v22 >> 2 <= v21)
            {
              v23 = (v20 >> 3) + 1;
            }

            v24 = v22 >= 0x7FFFFFFFFFFFFFF8;
            v25 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v24)
            {
              v25 = v23;
            }

            if (v25)
            {
              if (!(v25 >> 61))
              {
                operator new();
              }

              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (!v18)
          {
            goto LABEL_148;
          }

          *v18 = v14[2];
          *(this + 14) = v18 + 1;
          v26 = (*(*v16 + 32))(v16);
          if (v26 < 0x400)
          {
            v35 = v26;
            if (v26 > v15)
            {
              v15 = v26;
            }

            v36 = (*(*v16 + 16))(v16);
            if ((v36 & 0x11) != 0 && __darwin_check_fd_set_overflow(v35, &v92, 0))
            {
              v92.fds_bits[v35 >> 5] |= 1 << v35;
            }

            if ((v36 & 6) != 0 && __darwin_check_fd_set_overflow(v35, &v91, 0))
            {
              v91.fds_bits[v35 >> 5] |= 1 << v35;
            }
          }

          else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            v27 = *__error();
            v95 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc";
            v96 = 12539;
            v97 = 1;
            v98 = v27;
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v28, v29, v30, v31, v32, v33, v34, &v95);
          }
        }

        v14 = *v14;
      }

      while (v14);
      v37 = v15 + 1;
      v13 = v89;
    }

    else
    {
      v37 = 0;
    }

    pthread_mutex_unlock((this + 136));
    v38 = select(v37, &v92, &v91, 0, v13);
    if (v38 < 0)
    {
      break;
    }

    if (!v38)
    {
      goto LABEL_143;
    }

    pthread_mutex_lock((this + 136));
    v39 = *(this + 13);
    v40 = *(this + 14);
    if (v39 != v40)
    {
      v41 = *(this + 32);
      if (v41)
      {
LABEL_54:
        v42 = *v39;
        v43 = vcnt_s8(v41);
        v43.i16[0] = vaddlv_u8(v43);
        if (v43.u32[0] > 1uLL)
        {
          v44 = *v39;
          if (v42 >= *&v41)
          {
            v44 = v42 % *&v41;
          }
        }

        else
        {
          v44 = v42 & (*&v41 - 1);
        }

        v45 = *(this + 3);
        v46 = *(v45 + 8 * v44);
        if (v46)
        {
          v47 = *v46;
          if (*v46)
          {
            v48 = *&v41 - 1;
            if (v43.u32[0] < 2uLL)
            {
              while (1)
              {
                v49 = v47[1];
                if (v42 == v49)
                {
                  if (v47[2] == v42)
                  {
                    goto LABEL_74;
                  }
                }

                else if ((v49 & v48) != v44)
                {
                  goto LABEL_119;
                }

                v47 = *v47;
                if (!v47)
                {
                  goto LABEL_119;
                }
              }
            }

            do
            {
              v50 = v47[1];
              if (v42 == v50)
              {
                if (v47[2] == v42)
                {
LABEL_74:
                  if (v43.u32[0] > 1uLL)
                  {
                    v51 = *v39;
                    if (v42 >= *&v41)
                    {
                      v51 = v42 % *&v41;
                    }
                  }

                  else
                  {
                    v51 = v42 & v48;
                  }

                  v52 = *(v45 + 8 * v51);
                  if (v52)
                  {
                    v53 = *v52;
                    if (v53)
                    {
                      if (v43.u32[0] < 2uLL)
                      {
                        while (1)
                        {
                          v54 = v53[1];
                          if (v54 == v42)
                          {
                            if (v53[2] == v42)
                            {
                              goto LABEL_86;
                            }
                          }

                          else if ((v54 & v48) != v51)
                          {
                            goto LABEL_149;
                          }

                          v53 = *v53;
                          if (!v53)
                          {
                            goto LABEL_149;
                          }
                        }
                      }

                      do
                      {
                        v65 = v53[1];
                        if (v65 == v42)
                        {
                          if (v53[2] == v42)
                          {
LABEL_86:
                            v55 = v53[3];
                            v56 = (*(*v55 + 32))(v55);
                            if (v56 >= 0x400)
                            {
                              if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
                              {
                                v57 = *__error();
                                v95 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc";
                                v96 = 12939;
                                v97 = 1;
                                v98 = v57;
                                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v58, v59, v60, v61, v62, v63, v64, &v95);
                              }

                              goto LABEL_119;
                            }

                            v66 = v56;
                            v67 = v56 >> 5;
                            v68 = 1 << v56;
                            if (__darwin_check_fd_set_overflow(v56, &v92, 0) && (v92.fds_bits[v67] & v68) != 0)
                            {
                              if (__darwin_check_fd_set_overflow(v66, &v92, 0))
                              {
                                v92.fds_bits[v67] &= ~v68;
                              }

                              v87 = 1;
                              v69 = 1;
                              if (!__darwin_check_fd_set_overflow(v66, &v91, 0))
                              {
LABEL_108:
                                v70 = 0;
                                LODWORD(v95) = 0;
                                v13 = v89;
                                if (v69)
                                {
                                  goto LABEL_109;
                                }

                                goto LABEL_112;
                              }
                            }

                            else
                            {
                              v87 = 0;
                              v69 = 0;
                              if (!__darwin_check_fd_set_overflow(v66, &v91, 0))
                              {
                                goto LABEL_108;
                              }
                            }

                            if ((v91.fds_bits[v67] & v68) == 0)
                            {
                              goto LABEL_108;
                            }

                            if (__darwin_check_fd_set_overflow(v66, &v91, 0))
                            {
                              v91.fds_bits[v67] &= ~v68;
                            }

                            v70 = 1;
                            LODWORD(v95) = 0;
                            v13 = v89;
                            if (v69 | 1)
                            {
LABEL_109:
                              v99[0] = 4;
                              v71 = (*(*v55 + 32))(v55);
                              if (getsockopt(v71, 0xFFFF, 4103, &v95, v99) < 0 && *__error() != 38)
                              {
                                LODWORD(v95) = 9;
                              }
                            }

LABEL_112:
                            v72 = (*(*v55 + 16))(v55);
                            v73 = v87;
                            if (v87)
                            {
                              if (v95)
                              {
                                v73 = 8;
                                if (!v70)
                                {
                                  goto LABEL_114;
                                }
                              }

                              else
                              {
                                v75 = v72;
                                if ((*(*v55 + 40))(v55))
                                {
                                  v73 = 8;
                                  if (!v70)
                                  {
                                    goto LABEL_114;
                                  }
                                }

                                else
                                {
                                  if ((v75 & 0x10) != 0)
                                  {
                                    v73 = 16;
                                  }

                                  else
                                  {
                                    v73 = 1;
                                  }

                                  if (!v70)
                                  {
                                    goto LABEL_114;
                                  }
                                }
                              }
                            }

                            else if (!v70)
                            {
LABEL_114:
                              if (v95)
                              {
                                v74 = v73 | 8;
                              }

                              else
                              {
                                v74 = v73;
                              }

                              if (!v74)
                              {
                                goto LABEL_119;
                              }
                            }

                            (*(*v55 + 24))(v55);
                            goto LABEL_119;
                          }
                        }

                        else
                        {
                          if (v65 >= *&v41)
                          {
                            v65 %= *&v41;
                          }

                          if (v65 != v51)
                          {
                            break;
                          }
                        }

                        v53 = *v53;
                      }

                      while (v53);
                    }
                  }

LABEL_149:
                  abort();
                }
              }

              else
              {
                if (v50 >= *&v41)
                {
                  v50 %= *&v41;
                }

                if (v50 != v44)
                {
                  break;
                }
              }

              v47 = *v47;
            }

            while (v47);
          }
        }

LABEL_119:
        while (++v39 != v40)
        {
          v41 = *(this + 32);
          if (v41)
          {
            goto LABEL_54;
          }
        }
      }
    }

    pthread_mutex_unlock((this + 136));
LABEL_135:
    if (v13)
    {
      v13->tv_sec = 0;
      *v90 = 0;
      if (webrtc::g_clock)
      {
        v76 = (*(*webrtc::g_clock + 16))(webrtc::g_clock);
      }

      else
      {
        if (!dword_28100D8E4)
        {
          mach_timebase_info(&webrtc::SystemTimeNanos(void)::timebase);
        }

        v76 = (mach_absolute_time() * webrtc::SystemTimeNanos(void)::timebase) / dword_28100D8E4;
      }

      v77 = v76 / -1000 + v88;
      if (v77 >= 1)
      {
        v13->tv_sec = v77 / 0xF4240uLL;
        *v90 = v77 % 0xF4240uLL;
      }
    }

    if ((*(this + 216) & 1) == 0)
    {
LABEL_143:
      result = 1;
      goto LABEL_144;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_135;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    v79 = *__error();
    v95 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc";
    v96 = 12739;
    v97 = 1;
    v98 = v79;
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)14,webrtc::webrtc_logging_impl::LogMetadataErr>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v80, v81, v82, v83, v84, v85, v86, &v95);
  }

  result = 0;
LABEL_144:
  *(this + 217) = 0;
  return result;
}

webrtc::Signaler *webrtc::Signaler::Signaler(webrtc::Signaler *this, webrtc::PhysicalSocketServer *a2, BOOL *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = &unk_288299900;
  *(this + 1) = a2;
  v13.__sig = -1;
  if (pipe(&v13) < 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/physical_socket_server.cc");
  }

  *(this + 2) = v13.__sig;
  *(this + 24) = 0;
  pthread_mutexattr_init(&v13);
  pthread_mutexattr_setpolicy_np(&v13, 3);
  pthread_mutex_init((this + 32), &v13);
  pthread_mutexattr_destroy(&v13);
  *(this + 12) = a3;
  webrtc::PhysicalSocketServer::Add(*(this + 1), this);
  return this;
}

void webrtc::Signaler::~Signaler(webrtc::Signaler *this)
{
  *this = &unk_288299900;
  webrtc::PhysicalSocketServer::Remove(*(this + 1), this);
  close(*(this + 4));
  close(*(this + 5));
  pthread_mutex_destroy((this + 32));
}

{
  *this = &unk_288299900;
  webrtc::PhysicalSocketServer::Remove(*(this + 1), this);
  close(*(this + 4));
  close(*(this + 5));
  pthread_mutex_destroy((this + 32));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::Signaler::OnEvent(webrtc::Signaler *this)
{
  pthread_mutex_lock((this + 32));
  if (*(this + 24) == 1)
  {
    read(*(this + 4), v3, 4uLL);
    *(this + 24) = 0;
  }

  **(this + 12) = 0;
  return pthread_mutex_unlock((this + 32));
}

uint64_t webrtc::Signaler::Signal(webrtc::Signaler *this)
{
  pthread_mutex_lock((this + 32));
  if ((*(this + 24) & 1) == 0)
  {
    __buf = 0;
    write(*(this + 5), &__buf, 1uLL);
    *(this + 24) = 1;
  }

  return pthread_mutex_unlock((this + 32));
}

void absl::internal_any_invocable::LocalInvoker<false,void,webrtc::PhysicalSocket::Connect(webrtc::SocketAddress const&)::$_0 &>(webrtc::PhysicalSocket **a1)
{
  v1 = *a1;
  v2 = (*(**(*a1 + 64) + 32))(*(*a1 + 64));
  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = v3;
    (*(*v1 + 104))(v1);
    goto LABEL_11;
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v11 = &unk_28828CE50;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v12 = 0;
  v13 = *&v17[4];
  v14 = 0;
  v15 = 0;
  if ((*(*v2 + 16))(v2, 2, __p))
  {
    v5 = webrtc::PhysicalSocket::DoConnect(v1, __p) == 0;
    if (SHIBYTE(v10) < 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    (*(*v1 + 104))(v1);
    v5 = 1;
    if (SHIBYTE(v10) < 0)
    {
LABEL_7:
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    return;
  }

  v4 = 0xFFFFFFFFLL;
LABEL_11:
  (*(*v1 + 120))(v1, v4);
  v6 = *(v1 + 41);
  for (*(v1 + 43) = v6; v6 != (v1 + 320); v6 = *(v1 + 43))
  {
    v8 = v6[2];
    v7 = v6 + 2;
    *(v1 + 43) = *(v7 - 1);
    v8(v7, v1, v4);
  }
}

void *std::__hash_table<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::__unordered_map_hasher<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::hash<webrtc::Dispatcher *>,std::equal_to<webrtc::Dispatcher *>,true>,std::__unordered_map_equal<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::equal_to<webrtc::Dispatcher *>,std::hash<webrtc::Dispatcher *>,true>,std::allocator<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>>>::find<webrtc::Dispatcher *>(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v6 == v12)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v6 == v13)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,webrtc::Dispatcher *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,webrtc::Dispatcher *&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::__unordered_map_hasher<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::hash<webrtc::Dispatcher *>,std::equal_to<webrtc::Dispatcher *>,true>,std::__unordered_map_equal<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::equal_to<webrtc::Dispatcher *>,std::hash<webrtc::Dispatcher *>,true>,std::allocator<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>>>::__emplace_unique_key_args<webrtc::Dispatcher *,webrtc::Dispatcher *&,unsigned long long &>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == v2)
        {
          return result;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = result[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::__unordered_map_hasher<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::hash<webrtc::Dispatcher *>,std::equal_to<webrtc::Dispatcher *>,true>,std::__unordered_map_equal<webrtc::Dispatcher *,std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>,std::equal_to<webrtc::Dispatcher *>,std::hash<webrtc::Dispatcher *>,true>,std::allocator<std::__hash_value_type<webrtc::Dispatcher *,unsigned long long>>>::find<webrtc::Dispatcher *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v11 == v5)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t webrtc::PitchBasedVad::VoicingProbability(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63[13] = *MEMORY[0x277D85DE8];
  if (*(a2 + 128))
  {
    v3 = a2;
    v4 = a1;
    v5 = 0;
    v57 = a2 + 32;
    v58 = a2 + 64;
    while (1)
    {
      v7 = *(v3 + 8 * v5);
      v8 = *(v58 + 8 * v5);
      v9 = *(v57 + 8 * v5);
      *v63 = v7;
      *&v63[1] = v8;
      v63[2] = v9;
      v10 = *(v4 + 56);
      v11 = -1.0;
      v12 = -1.0;
      v62 = v5;
      if (v10 <= 10)
      {
        v16 = *(v4 + 60);
        if (v16 < 1)
        {
          v12 = 0.0;
        }

        else
        {
          v17 = *(v4 + 32);
          if (v10 <= 0)
          {
            v12 = 0.0;
            do
            {
              v28 = *v17++;
              v12 = v12 + exp(v28);
              --v16;
            }

            while (v16);
          }

          else
          {
            v18 = 0;
            v19 = *(v4 + 40);
            v20 = *(v4 + 48);
            v21 = 8 * v10;
            v12 = 0.0;
            do
            {
              v22 = 0;
              do
              {
                *&v63[v22 / 8 + 3] = *&v63[v22 / 8] - *(v19 + v22);
                v22 += 8;
              }

              while (v21 != v22);
              v23 = 0;
              v24 = 0.0;
              v25 = v20;
              do
              {
                v26 = 0;
                v27 = 0.0;
                do
                {
                  v27 = v27 + *(v25 + v26) * *&v63[v26 / 8 + 3];
                  v26 += 8;
                }

                while (v21 != v26);
                v25 += 8 * (v10 - 1) + 8;
                v24 = v24 + v27 * *&v63[v23++ + 3];
              }

              while (v23 != v10);
              v12 = v12 + exp(v17[v18] + v24 * -0.5);
              v20 += 8 * (v10 * v10);
              ++v18;
              v19 += 8 * v10;
            }

            while (v18 != v16);
          }
        }

        v4 = a1;
        v3 = a2;
        v5 = v62;
        v13 = *(a1 + 24);
        if (v13 > 10)
        {
LABEL_7:
          if (v8 < 200.0 || v8 > 2000.0 || v7 < -2.0)
          {
            goto LABEL_15;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v13 = *(v4 + 24);
        if (v13 > 10)
        {
          goto LABEL_7;
        }
      }

      v29 = *(v4 + 28);
      if (v29 < 1)
      {
        v11 = 0.0;
      }

      else
      {
        v30 = *v4;
        if (v13 <= 0)
        {
          v11 = 0.0;
          do
          {
            v41 = *v30++;
            v11 = v11 + exp(v41);
            --v29;
          }

          while (v29);
        }

        else
        {
          v31 = 0;
          v32 = *(v4 + 8);
          v33 = *(v4 + 16);
          v34 = 8 * v13;
          v11 = 0.0;
          do
          {
            v35 = 0;
            do
            {
              *&v63[v35 / 8 + 3] = *&v63[v35 / 8] - *(v32 + v35);
              v35 += 8;
            }

            while (v34 != v35);
            v36 = 0;
            v37 = 0.0;
            v38 = v33;
            do
            {
              v39 = 0;
              v40 = 0.0;
              do
              {
                v40 = v40 + *(v38 + v39) * *&v63[v39 / 8 + 3];
                v39 += 8;
              }

              while (v34 != v39);
              v38 += 8 * (v13 - 1) + 8;
              v37 = v37 + v40 * *&v63[v36++ + 3];
            }

            while (v36 != v13);
            v11 = v11 + exp(v30[v31] + v37 * -0.5);
            v33 += 8 * (v13 * v13);
            ++v31;
            v32 += 8 * v13;
          }

          while (v31 != v29);
        }
      }

      v4 = a1;
      v3 = a2;
      v5 = v62;
      if (v8 < 200.0 || v8 > 2000.0 || v7 < -2.0)
      {
LABEL_15:
        v12 = v11 * 1.0e-12;
        goto LABEL_54;
      }

LABEL_52:
      if (v7 > -0.9)
      {
        v11 = v12 * 1.0e-12;
      }

LABEL_54:
      v44 = v12 * *(v4 + 64) / (v11 * (1.0 - *(v4 + 64)) + v12 * *(v4 + 64));
      v45 = 0.99;
      if (v44 <= 0.99)
      {
        v45 = v12 * *(v4 + 64) / (v11 * (1.0 - *(v4 + 64)) + v12 * *(v4 + 64));
        if (v44 < 0.01)
        {
          v45 = 0.01;
        }
      }

      v46 = v45 * *(a3 + 8 * v5) / (v45 * *(a3 + 8 * v5) + (1.0 - v45) * (1.0 - *(a3 + 8 * v5)));
      *(a3 + 8 * v5) = v46;
      v47 = *(v4 + 72);
      if (v47[1])
      {
        v48 = *(v47 + 3);
        v49 = v48;
        v50 = *v47;
        v51 = *(v47 + 3) - *(*v47 + 8 * v48);
      }

      else
      {
        v51 = *(v47 + 3);
        v48 = *(v47 + 3);
        v50 = *v47;
        v49 = v48;
      }

      *(v47 + 3) = v46 + v51;
      *(v50 + 8 * v49) = v46;
      *(v47 + 3) = v48 + 1;
      if (v48 + 1 >= *(v47 + 4))
      {
        *(v47 + 8) = 1;
        *(v47 + 3) = 0;
      }

      v52 = webrtc::VadCircularBuffer::RemoveTransient(v47, 7, 0.2);
      if (v52 < 0)
      {
        return (v52 >> 31);
      }

      v53 = *(v4 + 72);
      if (*(v53 + 8) == 1)
      {
        v54 = *(v53 + 24) / *(v53 + 16);
        v6 = 0x3FEFAE147AE147AELL;
        if (v54 > 0.99)
        {
          goto LABEL_4;
        }

        goto LABEL_68;
      }

      v55 = *(v53 + 12);
      if (v55 >= 1)
      {
        v54 = *(v53 + 24) / v55;
        v6 = 0x3FEFAE147AE147AELL;
        if (v54 > 0.99)
        {
          goto LABEL_4;
        }

LABEL_68:
        v6 = *&v54;
        if (v54 >= 0.01)
        {
          goto LABEL_4;
        }
      }

      v6 = 0x3F847AE147AE147BLL;
LABEL_4:
      *(v4 + 64) = v6;
      if (++v5 >= *(v3 + 128))
      {
        return (v52 >> 31);
      }
    }
  }

  return 0;
}

void *WebRtcIsac_PitchAnalysis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v11 = v10;
  v12 = v3;
  v13 = 0;
  v396 = *MEMORY[0x277D85DE8];
  v14 = *(v4 + 624);
  v15 = *(v4 + 616);
  do
  {
    v16 = *(v3 + v13);
    v17 = v14 + v16;
    *&v358[v13] = v14 + v16;
    v14 = v15 + v16 * -1.99524592 + (v14 + v16) * 1.8686466;
    *(v4 + 624) = v14;
    v15 = v17 * -0.8836 + *(v3 + v13) * 0.996004;
    *(v4 + 616) = v15;
    v13 += 8;
  }

  while (v13 != 1920);
  v18 = (v4 + 632);
  v19 = *(v4 + 776);
  v354[8] = *(v4 + 760);
  v354[9] = v19;
  v20 = *(v4 + 808);
  v354[10] = *(v4 + 792);
  v354[11] = v20;
  v21 = *(v4 + 712);
  v354[4] = *(v4 + 696);
  v354[5] = v21;
  v22 = *(v4 + 744);
  v354[6] = *(v4 + 728);
  v354[7] = v22;
  v23 = *(v4 + 648);
  v354[0] = *(v4 + 632);
  v354[1] = v23;
  v24 = *(v4 + 680);
  v354[2] = *(v4 + 664);
  v354[3] = v24;
  WebRtcIsac_WeightingFilter(v358, v356, v355);
  v25 = v355[117];
  *(v9 + 760) = v355[116];
  *(v9 + 776) = v25;
  v26 = v355[119];
  *(v9 + 792) = v355[118];
  *(v9 + 808) = v26;
  v27 = v355[113];
  *(v9 + 696) = v355[112];
  *(v9 + 712) = v27;
  v28 = v355[115];
  *(v9 + 728) = v355[114];
  *(v9 + 744) = v28;
  v29 = v355[109];
  *v18 = v355[108];
  *(v9 + 648) = v29;
  v30 = v355[111];
  *(v9 + 664) = v355[110];
  *(v9 + 680) = v30;
  v31 = *(v9 + 2576);
  v32 = *(v9 + 2584);
  v363[0] = v366;
  v363[1] = v367;
  v363[2] = &v368;
  v363[3] = v369;
  v363[4] = &v370;
  v363[5] = &v371;
  v363[6] = &v372;
  v363[7] = v373;
  v363[8] = &v374;
  v363[9] = &v375;
  v363[10] = &v376;
  v363[11] = v377;
  v363[12] = &v378;
  v363[13] = &v379;
  v363[14] = &v380;
  v363[15] = v381;
  v363[16] = &v382;
  v363[17] = &v383;
  v363[18] = &v384;
  v363[19] = &v385;
  v363[20] = &v386;
  v363[21] = v387;
  v363[22] = v388;
  v364[0] = &v389;
  v364[1] = v390;
  bzero(v365, 0x3638uLL);
  memcpy(__dst, v9, 0x240uLL);
  memcpy(&v353[0].f64[1], v356, 0x778uLL);
  v353[0].f64[0] = *(v9 + 608);
  *(v9 + 608) = v357;
  v33 = *(v9 + 576);
  v34 = 1;
  do
  {
    v35 = v353[0].f64[v34];
    v36 = v33 + v35 * 0.0347;
    v353[0].f64[v34] = v36;
    v33 = v35 + v36 * -0.0347;
    v37 = v34 - 1;
    v34 += 2;
  }

  while (v37 < 0xEE);
  *(v9 + 576) = v33;
  v38 = *(v9 + 584);
  v39 = 1;
  do
  {
    v40 = v353[0].f64[v39];
    v41 = v38 + v40 * 0.3826;
    v353[0].f64[v39] = v41;
    v38 = v40 + v41 * -0.3826;
    v42 = v39 - 1;
    v39 += 2;
  }

  while (v42 < 0xEE);
  v43 = 0;
  *(v9 + 584) = v38;
  v44 = *(v9 + 592);
  do
  {
    v45 = v353[v43].f64[0];
    v46 = v44 + v45 * 0.1544;
    v353[v43].f64[0] = v46;
    v44 = v45 + v46 * -0.1544;
    _CF = v43++ >= 119;
  }

  while (!_CF);
  v48 = 0;
  *(v9 + 592) = v44;
  v49 = *(v9 + 600);
  do
  {
    v50 = v353[v48].f64[0];
    v51 = v49 + v50 * 0.744;
    v353[v48].f64[0] = v51;
    v49 = v50 + v51 * -0.744;
    _CF = v48++ >= 119;
  }

  while (!_CF);
  v52 = 0;
  *(v9 + 600) = v49;
  v53 = &v351;
  do
  {
    v54 = &v353[v52];
    v397 = vld2q_f64(v54->f64);
    v54 += 2;
    v398 = vld2q_f64(v54->f64);
    v53[-1] = vaddq_f64(v397.val[0], v397.val[1]);
    *v53 = vaddq_f64(v398.val[0], v398.val[1]);
    v52 += 4;
    v53 += 2;
  }

  while (v52 != 120);
  v55 = 0;
  v56 = __dst[35].f64[1];
  do
  {
    v56 = __dst[36].f64[v55] + __dst[35].f64[v55] * -0.25 + v56 * 0.75;
    __dst[36].f64[v55++] = v56;
  }

  while (v55 != 120);
  memcpy(v9, v352, 0x240uLL);
  PCorr(__dst, v353);
  PCorr(&__dst[30], &v391);
  v57 = log(v31 * 0.5);
  v58 = 0;
  v59 = 0x100000000;
  v60 = v32 * (v32 * 4.0);
  if (v60 > 0.8)
  {
    v60 = 0.8;
  }

  v339 = v60;
  v340 = v57;
  v343 = vdupq_lane_s64(*&v60, 0);
  v344 = vdupq_lane_s64(*&v57, 0);
  __asm
  {
    FMOV            V1.2D, #-5.0
    FMOV            V0.2D, #1.0
  }

  v341 = _Q0;
  v342 = _Q1;
  do
  {
    v66 = vadd_s32(v59, 0x800000008);
    v67.i64[0] = v66.u32[0];
    v67.i64[1] = v66.u32[1];
    __xa = vcvtq_f64_u64(v67);
    v348 = log(__xa.f64[1]);
    v68.f64[0] = log(__xa.f64[0]);
    v68.f64[1] = v348;
    v69 = vsubq_f64(v68, v344);
    __xb = vmulq_f64(v69, vmulq_f64(v69, v342));
    v349 = exp(__xb.f64[1]);
    v70.f64[0] = exp(__xb.f64[0]);
    v70.f64[1] = v349;
    v353[v58] = vmulq_f64(v353[v58], vmlaq_f64(v341, v70, v343));
    v59 = vadd_s32(v59, 0x200000002);
    ++v58;
  }

  while (v58 != 32);
  v71 = exp((4.27666612 - v340) * ((4.27666612 - v340) * -5.0));
  v72 = 0;
  v73 = 0;
  v353[32].f64[0] = v353[32].f64[0] * (v339 * v71 + 1.0) * 0.2;
  v395 = v395 * 0.2;
  v353[0] = vmulq_f64(v353[0], xmmword_273BA0F40);
  v391 = vmulq_f64(v391, xmmword_273BA0F40);
  v353[1].f64[0] = v353[1].f64[0] * 0.98;
  v392 = v392 * 0.98;
  v353[31] = vmulq_f64(v353[31], xmmword_273BA0F50);
  v394 = vmulq_f64(v394, xmmword_273BA0F50);
  v74 = 0.0;
  do
  {
    v75 = v353[0].f64[v72] + v391.f64[v72];
    *&v377[8 * v72 + 16] = v75;
    v76 = v72 + 1;
    if (v75 > v74)
    {
      v73 = v72 + 761;
      v74 = v75;
    }

    ++v72;
  }

  while (v76 != 65);
  v77 = 0;
  v78 = 11;
  do
  {
    v79 = (v77 + 12) / (v77 + 23);
    v80 = v79 * 0.2 * (2.0 - v79);
    v81 = (*&v352[v78 * 8 + 1064] + v391.f64[v78]) * v80;
    *&v366[v77 + 2] = v81;
    if (v81 > v74)
    {
      v73 = v77 + 2;
      v74 = v81;
    }

    v82 = v77 + 1;
    v83 = v80 * (v353[0].f64[v78] + *&v390[v78 * 8 + 464]);
    *&v388[8 * v77 + 104] = v83;
    if (v83 > v74)
    {
      v73 = v77 + 1531;
      v74 = v83;
    }

    ++v78;
    ++v77;
  }

  while (v82 != 54);
  v84 = 0;
  v85 = 10;
  do
  {
    v86 = (v84 + 12) / (v84 + 22);
    v87 = v86 * 0.9 * (2.0 - v86);
    v88 = (*&v352[v85 * 8 + 1072] + v391.f64[v85]) * v87;
    *&v367[8 * v84 + 16] = v88;
    if (v88 > v74)
    {
      v73 = v84 + 71;
      v74 = v88;
    }

    v89 = v84 + 1;
    v90 = v87 * (v353[0].f64[v85] + *&v390[v85 * 8 + 472]);
    *&v387[8 * v84 + 96] = v90;
    if (v90 > v74)
    {
      v73 = v84 + 1461;
      v74 = v90;
    }

    ++v85;
    ++v84;
  }

  while (v89 != 55);
  v91 = 0;
  v92 = 8 - v365;
  v93 = &v353[4].f64[1];
  v94 = &v393;
  v95 = 2;
  v96 = 88;
  v97 = 448;
  do
  {
    v98 = 0;
    v99 = v363[v95];
    v100 = v99 + 16;
    v101 = v363[22 - v95];
    v102 = v101 + v92;
    v103 = v101 + v96;
    v104 = -64 - v365 + v99;
    v105 = 12;
    do
    {
      v106 = v105 / (v91 + v105 + 9);
      v107 = v106 * (2.0 - v106);
      v108 = (v353[0].f64[v98 / 8] + *&v94[v98 / 8]) * v107;
      *(v100 + v98) = v108;
      if (v108 > v74)
      {
        v73 = (v104 + v98) >> 3;
        v74 = v108;
      }

      v109 = v107 * (v93[v98 / 8] + v391.f64[v98 / 8]);
      *(v103 + v98) = v109;
      if (v109 > v74)
      {
        v73 = (v102 + v98) >> 3;
        v74 = v109;
      }

      v98 += 8;
      ++v105;
    }

    while (v97 != v98);
    ++v95;
    v92 -= 8;
    v96 -= 8;
    v97 += 8;
    --v93;
    --v94;
    --v91;
  }

  while (v95 != 11);
  LODWORD(v110) = 0;
  v111 = v74 * 0.6;
  v112 = 1;
  v113 = 51;
LABEL_46:
  v114 = v363[v112];
  v115 = -48 - v365 + v114;
  v116 = (v114 - 528);
  v117 = v113;
  while (1)
  {
    v118 = v116[70];
    if (v118 > v111 && v118 > *v116 && v118 > v116[1] && v118 > v116[139] && v118 > v116[140])
    {
      v362[v110] = v115 >> 3;
      LODWORD(v110) = v110 + 1;
      if (v110 == 10)
      {
        break;
      }
    }

    v115 += 8;
    ++v116;
    if (!--v117)
    {
      if (v112 <= 0xA)
      {
        ++v112;
        ++v113;
        goto LABEL_46;
      }

      v119 = -40 - v365;
      v120 = -520;
      v121 = 12;
      v122 = 60;
LABEL_58:
      v123 = v363[v121];
      v124 = v123 + v119;
      v125 = (v123 + v120);
      v126 = v122;
      while (1)
      {
        v127 = v125[70];
        if (v127 > v111 && v127 > *v125 && v127 > v125[1] && v127 > v125[139] && v127 > v125[140])
        {
          v362[v110] = v124 >> 3;
          LODWORD(v110) = v110 + 1;
          if (v110 == 10)
          {
            goto LABEL_70;
          }
        }

        v124 += 8;
        ++v125;
        if (!--v126)
        {
          if (v121 <= 0x14)
          {
            ++v121;
            --v122;
            v119 += 8;
            v120 += 8;
            goto LABEL_58;
          }

          if (v110 < 1)
          {
            v337 = v73 / 69;
            v338 = v73 % 69;
            v203 = (v338 + 6);
            v204 = v203 + 11.0 - v337;
            v205 = 20.0;
            if (v338 < 14)
            {
              v203 = 20.0;
            }

            goto LABEL_100;
          }

          goto LABEL_70;
        }
      }
    }
  }

LABEL_70:
  __x = v32;
  v128 = v361;
  v129 = v359;
  v130 = v360;
  v131 = v362;
  v132 = v110;
  v110 = v110;
  do
  {
    while (1)
    {
      v134 = *v131++;
      v133 = v134;
      v135 = &v366[v134];
      v136 = *(v135 - 73);
      v137 = *(v135 - 72);
      v138 = *(v135 - 71);
      v139 = *(v135 - 70);
      v140 = *(v135 - 69);
      v141 = *(v135 - 68);
      v142 = *(v135 - 67);
      v143 = *(v135 - 66);
      v144 = v136 * -0.000675560286 + v137 * 0.0218424764 + v138 * -0.122031757 + v139 * 0.600864841 + v140 * 0.600864841 + v141 * -0.122031757 + v142 * 0.0218424764 + v143 * -0.000675560286;
      v145 = *(v135 - 3);
      v146 = *(v135 - 2);
      v147 = *(v135 - 1);
      v148 = *v135;
      v149 = v135[1];
      v150 = v135[2];
      v151 = v135[3];
      v152 = *(v135 - 4) * -0.000675560286 + v145 * 0.0218424764 + v146 * -0.122031757 + v147 * 0.600864841 + *v135 * 0.600864841 + v149 * -0.122031757 + v150 * 0.0218424764 + v151 * -0.000675560286;
      v153 = v145 * -0.000675560286 + v146 * 0.0218424764 + v147 * -0.122031757 + *v135 * 0.600864841 + v149 * 0.600864841 + v150 * -0.122031757 + v151 * 0.0218424764 + v135[4] * -0.000675560286;
      v154 = v135[66];
      v155 = v135[67];
      v156 = v135[68];
      v157 = v135[69];
      v158 = v135[70];
      v159 = v135[71];
      v160 = v135[72];
      v161 = v135[73];
      v162 = v154 * -0.000675560286 + v155 * 0.0218424764 + v156 * -0.122031757 + v157 * 0.600864841 + v158 * 0.600864841 + v159 * -0.122031757 + v160 * 0.0218424764 + v161 * -0.000675560286;
      if (v152 <= v144)
      {
        v163 = v136 * -0.000675560286 + v137 * 0.0218424764 + v138 * -0.122031757 + v139 * 0.600864841 + v140 * 0.600864841 + v141 * -0.122031757 + v142 * 0.0218424764 + v143 * -0.000675560286;
      }

      else
      {
        v163 = v152;
      }

      if (v153 > v163)
      {
        v163 = v153;
      }

      if (v162 > v163)
      {
        v163 = v154 * -0.000675560286 + v155 * 0.0218424764 + v156 * -0.122031757 + v157 * 0.600864841 + v158 * 0.600864841 + v159 * -0.122031757 + v160 * 0.0218424764 + v161 * -0.000675560286;
      }

      v164 = (v133 % 69 + 6);
      *v130 = v164;
      v165 = v164 + 11.0 - (v133 / 69);
      *v129 = v165;
      if (v148 <= v163)
      {
        if (v144 == v163)
        {
          v168 = -0.5;
          v164 = v164 + -0.5;
          *v130 = v164;
          v165 = v165 + 0.5;
          *v129 = v165;
          v169 = *(v135 - 142);
          v170 = *(v135 - 141);
          v171 = *(v135 - 140);
          v149 = v140;
          v140 = *(v135 - 139);
          v172 = *(v135 - 138);
          v173 = *(v135 - 137);
          v174 = *(v135 - 136);
          v166 = v153;
          v153 = v144;
          v144 = *(v135 - 143) * -0.000675560286 + v169 * 0.0218424764 + v170 * -0.122031757 + v171 * 0.600864841 + v140 * 0.600864841 + v172 * -0.122031757 + v173 * 0.0218424764 + v174 * -0.000675560286;
          v175 = v169 * -0.000675560286 + v170 * 0.0218424764 + v171 * -0.122031757 + v140 * 0.600864841 + v172 * 0.600864841 + v173 * -0.122031757 + v174 * 0.0218424764;
          v158 = v148;
          v167 = v175 + *(v135 - 135) * -0.000675560286;
          v162 = v152;
          v147 = v139;
        }

        else if (v152 == v163)
        {
          v164 = v164 + -0.5;
          *v130 = v164;
          v165 = v165 + -0.5;
          *v129 = v165;
          v167 = v136 * -0.000675560286 + v137 * 0.0218424764 + v138 * -0.122031757 + v139 * 0.600864841 + v140 * 0.600864841 + v141 * -0.122031757 + v142 * 0.0218424764 + v143 * -0.000675560286;
          v144 = *(v135 - 74) * -0.000675560286 + v136 * 0.0218424764 + v137 * -0.122031757 + v138 * 0.600864841 + v139 * 0.600864841 + v140 * -0.122031757 + v141 * 0.0218424764 + v142 * -0.000675560286;
          v168 = -0.5;
          v176 = v135[65] * -0.000675560286 + v154 * 0.0218424764 + v155 * -0.122031757 + v156 * 0.600864841 + v157 * 0.600864841 + v158 * -0.122031757 + v159 * 0.0218424764;
          v166 = v154 * -0.000675560286 + v155 * 0.0218424764 + v156 * -0.122031757 + v157 * 0.600864841 + v158 * 0.600864841 + v159 * -0.122031757 + v160 * 0.0218424764 + v161 * -0.000675560286;
          v149 = v148;
          v158 = v157;
          v162 = v176 + v160 * -0.000675560286;
          v153 = v152;
          v140 = v139;
        }

        else
        {
          v164 = v164 + 0.5;
          *v130 = v164;
          if (v153 == v163)
          {
            v165 = v165 + 0.5;
            *v129 = v165;
            v167 = v137 * -0.000675560286 + v138 * 0.0218424764 + v139 * -0.122031757 + v140 * 0.600864841 + v141 * 0.600864841 + v142 * -0.122031757 + v143 * 0.0218424764 + *(v135 - 65) * -0.000675560286;
            v166 = v155 * -0.000675560286 + v156 * 0.0218424764 + v157 * -0.122031757 + v158 * 0.600864841 + v159 * 0.600864841 + v160 * -0.122031757 + v161 * 0.0218424764 + v135[74] * -0.000675560286;
            v147 = v148;
            v168 = -0.5;
          }

          else
          {
            v168 = -0.5;
            v165 = v165 + -0.5;
            *v129 = v165;
            v177 = v135[136];
            v178 = v135[137];
            v179 = v135[138];
            v149 = v158;
            v158 = v135[139];
            v180 = v135[140];
            v181 = v135[141];
            v182 = v135[142];
            v167 = v153;
            v153 = v162;
            v162 = v135[135] * -0.000675560286 + v177 * 0.0218424764 + v178 * -0.122031757 + v179 * 0.600864841 + v158 * 0.600864841 + v180 * -0.122031757 + v181 * 0.0218424764 + v182 * -0.000675560286;
            v166 = v177 * -0.000675560286 + v178 * 0.0218424764 + v179 * -0.122031757 + v158 * 0.600864841 + v180 * 0.600864841 + v181 * -0.122031757 + v182 * 0.0218424764 + v135[143] * -0.000675560286;
            v140 = v148;
            v147 = v157;
            v144 = v152;
          }
        }
      }

      else
      {
        v166 = v158;
        v149 = v153;
        v167 = v140;
        v158 = v162;
        v153 = v148;
        v140 = v144;
        v162 = v157;
        v147 = v152;
        v144 = v139;
        v168 = -0.5;
      }

      v183 = -(v153 - (v166 + v144) * 0.5);
      v184 = -(v153 - (v167 + v162) * 0.5);
      v185 = v149 + v140 + v158 + v147 + v153 * -4.0 - v183 - v184;
      v186 = -(v183 - v185 * v168);
      if (v186 >= 0.0000001)
      {
        v187 = (v149 + v147 - v140 - v158) * v168;
        v188 = -(v184 - v185 * v168);
        if (v186 * v188 - v187 * v187 >= 0.0000001)
        {
          break;
        }
      }

      *v128++ = v153;
      ++v129;
      ++v130;
      if (!--v110)
      {
        goto LABEL_93;
      }
    }

    v189 = (v149 + v158 - v147 - v140) * 0.5;
    v190 = (v149 + v140 - v147 - v158) * 0.5;
    v191 = sqrt(v186);
    v192 = v187 / v191;
    v193 = sqrt(v188 - v192 * v192);
    v194 = (v190 - v189 / v191 * v192) / v193 / v193;
    v195 = (v189 / v191 - v194 * v192) * 0.5 / v191;
    v196 = v194 * 0.5;
    v197 = v196 * v196 + v195 * v195;
    if (v197 > 1.0)
    {
      v195 = v195 / v197;
      v196 = v196 / v197;
    }

    *v128++ = v153 + (v190 * v196 + v189 * v195) * 0.5;
    *v130++ = v164 + v195;
    *v129++ = v165 + v196;
    --v110;
  }

  while (v110);
LABEL_93:
  v198 = 0;
  v199 = 0.0;
  do
  {
    v200 = *&v361[v198];
    v201 = log(*&v360[v198] + *&v359[v198]);
    v202 = v200 * pow(0.85, v201);
    if (v202 > v199)
    {
      v133 = v198;
      v199 = v202;
    }

    ++v198;
  }

  while (v132 != v198);
  v203 = *&v360[v133] + *&v360[v133];
  v204 = *&v359[v133] + *&v359[v133];
  v205 = 20.0;
  if (v203 < 20.0)
  {
    v203 = 20.0;
  }

  v32 = __x;
LABEL_100:
  v206 = 0;
  if (v204 < v205)
  {
    v204 = v205;
  }

  if (v203 > 140.0)
  {
    v203 = 140.0;
  }

  if (v204 > 140.0)
  {
    v204 = 140.0;
  }

  *v8 = v203;
  v8[1] = v203;
  v8[2] = v204;
  v8[3] = v204;
  v207 = 0.0;
  do
  {
    v207 = v207 + *&v354[v206] * *&v354[v206] + *(&v354[v206] + 1) * *(&v354[v206] + 1);
    ++v206;
  }

  while (v206 != 132);
  memset_pattern16(v6, &unk_273BA0F60, 0x20uLL);
  v208 = 1;
  v209 = 1.0 / v207;
  do
  {
    v210 = v208;
    FilterFrame(v354, v9 + 1016, v8, v6, 3, __dst, v365);
    v211 = 0;
    v212 = 0.0;
    do
    {
      v213 = vmulq_f64(__dst[v211], *&v365[v211 * 16]);
      v214 = vmulq_f64(__dst[v211 + 1], *&v365[v211 * 16 + 16]);
      v212 = v212 + v213.f64[0] + v213.f64[1] + v214.f64[0] + v214.f64[1];
      v211 += 2;
    }

    while (v211 != 132);
    v215 = 0;
    v216 = 0.0;
    do
    {
      v217 = vmulq_f64(__dst[v215], *&v369[v215 * 16 + 376]);
      v218 = vmulq_f64(__dst[v215 + 1], *&v369[v215 * 16 + 392]);
      v216 = v216 + v217.f64[0] + v217.f64[1] + v218.f64[0] + v218.f64[1];
      v215 += 2;
    }

    while (v215 != 132);
    v219 = 0;
    v220 = v209 * v212;
    v221 = 0.0;
    do
    {
      v222 = vmulq_f64(__dst[v219], *&v373[v219 * 16 + 280]);
      v223 = vmulq_f64(__dst[v219 + 1], *&v373[v219 * 16 + 296]);
      v221 = v221 + v222.f64[0] + v222.f64[1] + v223.f64[0] + v223.f64[1];
      v219 += 2;
    }

    while (v219 != 132);
    v224 = 0;
    v225 = v209 * v216;
    v226 = 0.0;
    do
    {
      v227 = vmulq_f64(__dst[v224], *&v377[v224 * 16 + 184]);
      v228 = vmulq_f64(__dst[v224 + 1], *&v377[v224 * 16 + 200]);
      v226 = v226 + v227.f64[0] + v227.f64[1] + v228.f64[0] + v228.f64[1];
      v224 += 2;
    }

    while (v224 != 132);
    v229 = 0;
    v230 = v209 * v221;
    v231 = 0.0;
    do
    {
      v231 = v231 + *&v365[v229] * *&v365[v229];
      v229 += 8;
    }

    while (v229 != 2112);
    v232 = 0;
    v233 = v209 * v226;
    v234 = 0.0;
    do
    {
      v235 = vmulq_f64(*&v365[v232], *&v369[v232 + 376]);
      v236 = vmulq_f64(*&v365[v232 + 16], *&v369[v232 + 392]);
      v234 = v234 + v235.f64[0] + v235.f64[1] + v236.f64[0] + v236.f64[1];
      v232 += 32;
    }

    while (v232 != 2112);
    v237 = v209 * v231;
    v238 = 0.0;
    for (i = 264; i != 528; ++i)
    {
      v238 = v238 + *&v365[8 * i] * *&v365[8 * i];
    }

    v240 = 0;
    v241 = v209 * v234;
    v242 = 0.0;
    do
    {
      v243 = vmulq_f64(*&v365[v240], *&v373[v240 + 280]);
      v244 = vmulq_f64(*&v365[v240 + 16], *&v373[v240 + 296]);
      v242 = v242 + v243.f64[0] + v243.f64[1] + v244.f64[0] + v244.f64[1];
      v240 += 32;
    }

    while (v240 != 2112);
    v245 = 0;
    v246 = v209 * v238;
    v247 = 0.0;
    do
    {
      v248 = vmulq_f64(*&v369[v245 + 376], *&v373[v245 + 280]);
      v249 = vmulq_f64(*&v369[v245 + 392], *&v373[v245 + 296]);
      v247 = v247 + v248.f64[0] + v248.f64[1] + v249.f64[0] + v249.f64[1];
      v245 += 32;
    }

    while (v245 != 2112);
    v250 = v209 * v242;
    v251 = 0.0;
    for (j = 528; j != 792; ++j)
    {
      v251 = v251 + *&v365[8 * j] * *&v365[8 * j];
    }

    v253 = 0;
    v254 = v209 * v247;
    v255 = 0.0;
    do
    {
      v256 = vmulq_f64(*&v365[v253], *&v377[v253 + 184]);
      v257 = vmulq_f64(*&v365[v253 + 16], *&v377[v253 + 200]);
      v255 = v255 + v256.f64[0] + v256.f64[1] + v257.f64[0] + v257.f64[1];
      v253 += 32;
    }

    while (v253 != 2112);
    v258 = v209 * v251;
    v259 = 0.0;
    for (k = 266; k != 530; k += 4)
    {
      v261 = vmulq_f64(*&v364[k], *&v373[k * 8 + 264]);
      v262 = vmulq_f64(*&v365[k * 8], *&v373[k * 8 + 280]);
      v259 = v259 + v261.f64[0] + v261.f64[1] + v262.f64[0] + v262.f64[1];
    }

    v263 = v209 * v255;
    v264 = 0.0;
    v265 = -2112;
    do
    {
      v266 = vmulq_f64(*&v377[v265 + 184], *&v381[v265 + 88]);
      v267 = vmulq_f64(*&v377[v265 + 200], *&v381[v265 + 104]);
      v264 = v264 + v266.f64[0] + v266.f64[1] + v267.f64[0] + v267.f64[1];
      v265 += 32;
    }

    while (v265);
    v268 = v209 * v259;
    v269 = 0.0;
    for (m = 792; m != 1056; ++m)
    {
      v269 = v269 + *&v365[8 * m] * *&v365[8 * m];
    }

    v271 = v209 * v264;
    v272 = v209 * v269;
    v273 = v6->f64[1];
    v275 = v6[1].f64[0];
    v274 = v6[1].f64[1];
    v276 = v225 + (v32 * -0.0571428571 + v6->f64[0] * -0.271428571 + v273 * 0.657142857 + v275 * -0.271428571 + v274 * -0.0571428571) * 3.0;
    v277 = v230 + (v32 * 0.0514285714 + v6->f64[0] * -0.145714286 + v273 * -0.271428571 + v275 * 0.674285714 + v274 * -0.308571429) * 3.0;
    v278 = v233 + (v32 * 0.0171428571 + v6->f64[0] * 0.0514285714 + v273 * -0.0571428571 + v275 * -0.308571429 + v274 * 0.297142857) * 3.0;
    v279 = v237 + 2.02285714;
    v280 = v241 + -0.814285714;
    v281 = v246 + 1.97142857;
    v282 = v250 + -0.437142857;
    v283 = v254 + -0.814285714;
    v284 = v258 + 2.02285714;
    v285 = v263 + 0.154285714;
    v286 = v268 + -0.171428571;
    v287 = v271 + -0.925714286;
    v288 = v272 + 0.891428571;
    v289 = 1.0 / (1.0 - v6->f64[0]);
    v290 = v289 * v289;
    v291 = v279 + (v289 + v289) * (v289 * v289 * 0.005);
    v292 = 1.0 / (1.0 - v273);
    v293 = v276 + v292 * v292 * 0.005;
    v294 = v281 + (v292 + v292) * (v292 * v292 * 0.005);
    v295 = 1.0 / (1.0 - v275);
    v296 = v295 * v295;
    v297 = v284 + (v295 + v295) * (v295 * v295 * 0.005);
    v298 = 1.0 / (1.0 - v274);
    v299 = v298 * v298 * 0.005;
    v300 = v288 + v298 * 2.66 * v299;
    v301 = v280 / v291;
    v302 = v282 / v291;
    v303 = v294 + -(v291 * v301) * v301;
    v304 = (v283 - v301 * v282) / v303;
    v305 = v285 / v291;
    v306 = (v286 - v301 * v285) / v303;
    v307 = v297 - (v304 * (v303 * v304) + v291 * v302 * v302);
    v308 = (v287 - v302 * v285 + -(v304 * v303) * v306) / v307;
    v309 = v300 - (v306 * (v303 * v306) + v291 * (v285 / v291) * (v285 / v291) + v307 * v308 * v308);
    v310 = v220 + (v32 * -0.308571429 + v6->f64[0] * 0.674285714 + v273 * -0.271428571 + v275 * -0.145714286 + v274 * 0.0514285714) * 3.0 + v290 * 0.005;
    v311 = -(v293 - v310 * v301);
    v312 = -(v277 + v296 * 0.005) - (v311 * v304 - v310 * v302);
    v313 = (-(v278 + v299 * 1.33) - (v311 * v306 - v310 * v305 + v312 * v308)) / v309;
    v314 = v312 / v307 - v313 * v308;
    v315 = v311 / v303 - (v304 * v314 + v313 * v306);
    v316 = v6->f64[0] + -v310 / v291 - (v302 * v314 + v313 * v305 + v315 * v301);
    v6->f64[0] = v316;
    v317 = 0x3FDCCCCCCCCCCCCDLL;
    if (v316 > 0.45 || (v317 = 0, v316 < 0.0))
    {
      *&v6->f64[0] = v317;
    }

    v318 = v273 + v315;
    v6->f64[1] = v273 + v315;
    v319 = 0x3FDCCCCCCCCCCCCDLL;
    if (v318 > 0.45 || (v319 = 0, v318 < 0.0))
    {
      *&v6->f64[1] = v319;
    }

    v320 = v275 + v314;
    v6[1].f64[0] = v275 + v314;
    v321 = 0x3FDCCCCCCCCCCCCDLL;
    if (v320 > 0.45 || (v321 = 0, v320 < 0.0))
    {
      *&v6[1].f64[0] = v321;
    }

    v322 = v274 + v313;
    v6[1].f64[1] = v274 + v313;
    v323 = 0x3FDCCCCCCCCCCCCDLL;
    if (v322 > 0.45 || (v323 = 0, v322 < 0.0))
    {
      *&v6[1].f64[1] = v323;
    }

    v208 = 0;
  }

  while ((v210 & 1) != 0);
  FilterFrame(v354, v9 + 1016, v8, v6, 0, v11, 0);
  v324 = *(v9 + 968);
  v353[8] = *(v9 + 952);
  v353[9] = v324;
  v325 = *(v9 + 1000);
  v353[10] = *(v9 + 984);
  v353[11] = v325;
  v326 = *(v9 + 904);
  v353[4] = *(v9 + 888);
  v353[5] = v326;
  v327 = *(v9 + 936);
  v353[6] = *(v9 + 920);
  v353[7] = v327;
  v328 = *(v9 + 840);
  v353[0] = *(v9 + 824);
  v353[1] = v328;
  v329 = *(v9 + 872);
  v353[2] = *(v9 + 856);
  v353[3] = v329;
  memcpy(&v353[12], v12, 0x780uLL);
  result = FilterFrame(v353, v9 + 2592, v8, v6, 2, v11, 0);
  v331 = v353[129];
  *(v9 + 952) = v353[128];
  *(v9 + 968) = v331;
  v332 = v353[131];
  *(v9 + 984) = v353[130];
  *(v9 + 1000) = v332;
  v333 = v353[125];
  *(v9 + 888) = v353[124];
  *(v9 + 904) = v333;
  v334 = v353[127];
  *(v9 + 920) = v353[126];
  *(v9 + 936) = v334;
  v335 = v353[121];
  *(v9 + 824) = v353[120];
  *(v9 + 840) = v335;
  v336 = v353[123];
  *(v9 + 856) = v353[122];
  *(v9 + 872) = v336;
  return result;
}

double PCorr(float64x2_t *a1, uint64_t a2)
{
  v2 = 0.0;
  result = 1.0e-13;
  v4 = 60;
  v5 = a1;
  do
  {
    v6 = v5[1];
    result = result + *v5 * *v5 + v6 * v6;
    v2 = v2 + v5[72] * *v5 + v5[73] * v6;
    v5 += 2;
    v4 -= 2;
  }

  while (v4);
  *(a2 + 512) = v2 / sqrt(result);
  v7 = (a2 + 504);
  do
  {
    v8 = a1[45].f64[0] * *(&a1[9].f64[1] + v4);
    v9 = a1[36].f64[0] * *(&a1->f64[1] + v4) + 0.0 + a1[36].f64[1] * *(a1[1].f64 + v4) + a1[37].f64[0] * *(&a1[1].f64[1] + v4) + a1[37].f64[1] * *(a1[2].f64 + v4) + a1[38].f64[0] * *(&a1[2].f64[1] + v4) + a1[38].f64[1] * *(a1[3].f64 + v4) + a1[39].f64[0] * *(&a1[3].f64[1] + v4) + a1[39].f64[1] * *(a1[4].f64 + v4) + a1[40].f64[0] * *(&a1[4].f64[1] + v4) + a1[40].f64[1] * *(a1[5].f64 + v4) + a1[41].f64[0] * *(&a1[5].f64[1] + v4) + a1[41].f64[1] * *(a1[6].f64 + v4) + a1[42].f64[0] * *(&a1[6].f64[1] + v4) + a1[42].f64[1] * *(a1[7].f64 + v4) + a1[43].f64[0] * *(&a1[7].f64[1] + v4) + a1[43].f64[1] * *(a1[8].f64 + v4) + a1[44].f64[0] * *(&a1[8].f64[1] + v4) + a1[44].f64[1] * *(a1[9].f64 + v4) + v8;
    v10 = v9 + a1[45].f64[1] * *(a1[10].f64 + v4) + a1[46].f64[0] * *(&a1[10].f64[1] + v4) + a1[46].f64[1] * *(a1[11].f64 + v4) + a1[47].f64[0] * *(&a1[11].f64[1] + v4) + a1[47].f64[1] * *(a1[12].f64 + v4) + a1[48].f64[0] * *(&a1[12].f64[1] + v4) + a1[48].f64[1] * *(a1[13].f64 + v4) + a1[49].f64[0] * *(&a1[13].f64[1] + v4) + a1[49].f64[1] * *(a1[14].f64 + v4) + a1[50].f64[0] * *(&a1[14].f64[1] + v4) + a1[50].f64[1] * *(a1[15].f64 + v4) + a1[51].f64[0] * *(&a1[15].f64[1] + v4) + a1[51].f64[1] * *(a1[16].f64 + v4) + a1[52].f64[0] * *(&a1[16].f64[1] + v4) + a1[52].f64[1] * *(a1[17].f64 + v4) + a1[53].f64[0] * *(&a1[17].f64[1] + v4) + a1[53].f64[1] * *(a1[18].f64 + v4) + a1[54].f64[0] * *(&a1[18].f64[1] + v4);
    v11 = vmulq_f64(a1[60], *(a1 + v4 + 392));
    v12 = vmulq_f64(a1[61], *(a1 + v4 + 408));
    v13 = v10 + a1[54].f64[1] * *(a1[19].f64 + v4) + a1[55].f64[0] * *(&a1[19].f64[1] + v4) + a1[55].f64[1] * *(a1[20].f64 + v4) + a1[56].f64[0] * *(&a1[20].f64[1] + v4) + a1[56].f64[1] * *(a1[21].f64 + v4) + a1[57].f64[0] * *(&a1[21].f64[1] + v4) + a1[57].f64[1] * *(a1[22].f64 + v4) + a1[58].f64[0] * *(&a1[22].f64[1] + v4) + a1[58].f64[1] * *(a1[23].f64 + v4) + a1[59].f64[0] * *(&a1[23].f64[1] + v4) + a1[59].f64[1] * *(a1[24].f64 + v4) + v11.f64[0] + v11.f64[1] + v12.f64[0] + v12.f64[1];
    v14 = vmulq_f64(a1[62], *(a1 + v4 + 424));
    v15 = v13 + v14.f64[0] + v14.f64[1];
    v16 = vmulq_f64(a1[63], *(a1 + v4 + 440));
    v11.f64[0] = v16.f64[1];
    v17 = v15 + v16.f64[0];
    v18 = vmulq_f64(a1[64], *(a1 + v4 + 456));
    v19 = v17 + v11.f64[0];
    v11.f64[0] = *(a1[30].f64 + v4);
    result = result - *(a1->f64 + v4) * *(a1->f64 + v4) + v11.f64[0] * v11.f64[0];
    *v7-- = (v19 + v18.f64[0] + v18.f64[1] + a1[65].f64[0] * *(&a1[29].f64[1] + v4) + v11.f64[0] * a1[65].f64[1]) / sqrt(result);
    v4 += 8;
  }

  while (v4 != 512);
  return result;
}

void *FilterFrame(uint64_t a1, uint64_t a2, double *a3, float64x2_t *a4, int a5, uint64_t a6, uint64_t a7)
{
  v55 = 0;
  v53 = a5;
  memcpy(__dst, a2, sizeof(__dst));
  bzero(&v43, 0x840uLL);
  v45 = *(a2 + 1520);
  v46 = *(a2 + 1536);
  v47 = *(a2 + 1552);
  if (a5 == 3)
  {
    memset(v66, 0, 32);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    bzero(a7, 0x840uLL);
    bzero((a7 + 2112), 0x840uLL);
    bzero((a7 + 4224), 0x840uLL);
    bzero((a7 + 6336), 0x840uLL);
  }

  else if (a5 == 1)
  {
    v14 = vdupq_n_s64(0xBFF4CCCCCCCCCCCDLL);
    v15 = vmulq_f64(*a4, v14);
    v16 = vmulq_f64(a4[1], v14);
    *a4 = v15;
    a4[1] = v16;
  }

  v17 = *(a2 + 1560);
  v18 = *a3;
  if (*a3 <= v17 * 1.5 && v18 >= v17 * 0.67)
  {
    v19 = *(a2 + 1568);
  }

  else
  {
    v19 = a4->f64[0];
    if (a5 == 3)
    {
      v66[0] = 1.0;
    }

    v17 = v18;
  }

  v20 = 0;
  v54 = 12;
  do
  {
    v21 = v17;
    v22 = v19;
    v52 = v20;
    v17 = a3[v20];
    v19 = a4->f64[v20];
    v23 = (v17 - v21) / 5.0;
    v24 = (v19 - v22) / 5.0;
    v49 = v22 + v24;
    v50 = v21 + v23;
    v25 = v21 + v23 + 1.5;
    v51 = rint(v25 + 0.5);
    v48 = &kIntrpCoef + 72 * rint((v51 - v25) * 8.0 + -0.5);
    if (v53 == 3)
    {
      v26 = v66[v20] + 0.2;
      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      v66[v20] = v26;
      if (v20)
      {
        v66[(v20 - 1)] = v66[(v20 - 1)] + -0.2;
      }
    }

    FilterSegment(a1, __dst, a6, a7);
    v49 = v24 + v49;
    v50 = v23 + v50;
    v51 = rint(v50 + 1.5 + 0.5);
    v48 = &kIntrpCoef + 72 * rint((v51 - (v50 + 1.5)) * 8.0 + -0.5);
    if (v53 == 3)
    {
      v27 = v52;
      v28 = v66[v52] + 0.2;
      if (v28 > 1.0)
      {
        v28 = 1.0;
      }

      v66[v52] = v28;
      v29 = __OFSUB__(v27, 1);
      v30 = v27 - 1;
      if (v30 < 0 == v29)
      {
        v66[v30] = v66[v30] + -0.2;
      }
    }

    FilterSegment(a1, __dst, a6, a7);
    v49 = v24 + v49;
    v50 = v23 + v50;
    v51 = rint(v50 + 1.5 + 0.5);
    v48 = &kIntrpCoef + 72 * rint((v51 - (v50 + 1.5)) * 8.0 + -0.5);
    if (v53 == 3)
    {
      v31 = v52;
      v32 = v66[v52] + 0.2;
      if (v32 > 1.0)
      {
        v32 = 1.0;
      }

      v66[v52] = v32;
      v29 = __OFSUB__(v31, 1);
      v33 = v31 - 1;
      if (v33 < 0 == v29)
      {
        v66[v33] = v66[v33] + -0.2;
      }
    }

    FilterSegment(a1, __dst, a6, a7);
    v49 = v24 + v49;
    v50 = v23 + v50;
    v51 = rint(v50 + 1.5 + 0.5);
    v48 = &kIntrpCoef + 72 * rint((v51 - (v50 + 1.5)) * 8.0 + -0.5);
    if (v53 == 3)
    {
      v34 = v52;
      v35 = v66[v52] + 0.2;
      if (v35 > 1.0)
      {
        v35 = 1.0;
      }

      v66[v52] = v35;
      v29 = __OFSUB__(v34, 1);
      v36 = v34 - 1;
      if (v36 < 0 == v29)
      {
        v66[v36] = v66[v36] + -0.2;
      }
    }

    FilterSegment(a1, __dst, a6, a7);
    v49 = v24 + v49;
    v50 = v23 + v50;
    v51 = rint(v50 + 1.5 + 0.5);
    v48 = &kIntrpCoef + 72 * rint((v51 - (v50 + 1.5)) * 8.0 + -0.5);
    if (v53 == 3)
    {
      v37 = v52;
      v38 = v66[v52] + 0.2;
      if (v38 > 1.0)
      {
        v38 = 1.0;
      }

      v66[v52] = v38;
      v29 = __OFSUB__(v37, 1);
      v39 = v37 - 1;
      if (v39 < 0 == v29)
      {
        v66[v39] = v66[v39] + -0.2;
      }
    }

    FilterSegment(a1, __dst, a6, a7);
    ++v20;
  }

  while (v20 != 4);
  if (a5 == 3 || (result = memcpy(a2, v44, 0x5F0uLL), v41 = v46, *(a2 + 1520) = v45, *(a2 + 1536) = v41, *(a2 + 1552) = v47, *(a2 + 1560) = v17, *(a2 + 1568) = v19, (a5 & 0xFFFFFFFE) == 2))
  {
    v52 = 3;
    v54 = 24;
    return FilterSegment(a1, __dst, a6, a7);
  }

  return result;
}

uint64_t FilterSegment(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3708);
  if (v4 >= 1)
  {
    v5 = *(a2 + 3712);
    v6 = v5 + 190;
    v7 = *(a2 + 3696);
    v8 = v5 + 190 - v7;
    v9 = (a2 + 3632);
    v10 = *(a2 + 3672);
    if (*(a2 + 3704) == 3)
    {
      v11 = 0;
      v12 = (a2 + 3720);
      v64 = *(a2 + 3700);
      v13 = v8;
      v14 = v6;
      v15 = a4 + 8 * v5 - 8 * v7;
      v16 = (v15 + 56);
      v17 = (a4 + 8 * v5);
      v63 = *(a2 + 3696);
      while (1)
      {
        v19 = *(a2 + 3648);
        *(a2 + 3640) = *v9;
        *(a2 + 3656) = v19;
        v20 = (a2 + 8 * v13++);
        v21 = *v20 * *v10 + 0.0 + *(a2 + 8 * v13) * v10[1] + v20[2] * v10[2] + v20[3] * v10[3] + v20[4] * v10[4] + v20[5] * v10[5] + v20[6] * v10[6] + v20[7] * v10[7] + v20[8] * v10[8];
        v22 = *(a2 + 3680);
        v23 = v21 * v22;
        *(a2 + 3632) = v21 * v22;
        v24 = *(a2 + 3736);
        *(a2 + 3728) = *v12;
        *(a2 + 3744) = v24;
        v25 = *(a2 + 3776);
        v26 = *(a2 + 3800);
        *(a2 + 3824) = *(a2 + 3816);
        *(a2 + 3768) = *(a2 + 3760);
        *(a2 + 3784) = v25;
        v27 = *(a2 + 3856);
        *(a2 + 3808) = v26;
        *(a2 + 3848) = *(a2 + 3840);
        *(a2 + 3864) = v27;
        if ((v64 & 0x80000000) == 0)
        {
          break;
        }

LABEL_4:
        v18 = *(result + 8 * v5) - (v23 * -0.07 + 0.0 + *(a2 + 3640) * 0.25 + *(a2 + 3648) * 0.64 + *(a2 + 3656) * 0.25 + *(a2 + 3664) * -0.07);
        *(a3 + 8 * v5) = v18;
        *(a2 + 8 * v14++) = v18 + *(result + 8 * v5++);
        ++v11;
        v16 = (v16 + 8);
        v15 += 8;
        ++v17;
        if (v11 == v4)
        {
          goto LABEL_24;
        }
      }

      v28 = a3;
      v29 = ((v5 - v7) >> 63) & (v7 - v5);
      if (v29 > 8)
      {
        v30 = v22 * 0.0;
        v31 = (a2 + 3880);
        v32 = (a2 + 3720);
        v33 = (v64 + 1);
        do
        {
          v34 = *v31++;
          *v32 = v30 + v34 * v21;
          v32 += 5;
          --v33;
        }

        while (v33);
LABEL_9:
        v35 = (a2 + 3752);
        v36 = v17;
        v37 = (v64 + 1);
        do
        {
          v38 = 0.0 - *(v35 - 4) * -0.07 - *(v35 - 3) * 0.25 + *(v35 - 2) * -0.64 - *(v35 - 1) * 0.25;
          v39 = *v35;
          v35 += 5;
          *v36 = v38 - v39 * -0.07;
          v36 += 264;
          --v37;
        }

        while (v37);
        v23 = *v9;
        a3 = v28;
        v7 = v63;
        goto LABEL_4;
      }

      v40 = 0;
      v41 = v29;
      v42 = 9 - v29;
      v43 = v15;
      v44 = v16;
      while (1)
      {
        v45 = 0.0;
        if (v42 >= 4)
        {
          v47 = v44;
          v48 = (v10 + 7);
          v49 = v42 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v50 = vmulq_f64(*v47, *v48);
            v51 = vextq_s8(v50, v50, 8uLL);
            v52 = vmulq_f64(v47[-1], v48[-1]);
            v53 = vextq_s8(v52, v52, 8uLL);
            v45 = v45 + *v51.i64 + *&v51.i64[1] + *v53.i64 + *&v53.i64[1];
            v48 -= 2;
            v47 -= 2;
            v49 -= 4;
          }

          while (v49);
          v46 = 8 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
          if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v46 = 8;
        }

        do
        {
          v45 = v45 + *(v43 + 8 * v46) * v10[v46];
        }

        while (v46-- > v41);
LABEL_13:
        v12[5 * v40] = v22 * v45 + *(a2 + 3880 + 8 * v40) * v21;
        ++v40;
        v44 += 132;
        v43 += 2112;
        if (v40 == v64 + 1)
        {
          goto LABEL_9;
        }
      }
    }

    v55 = (a2 + 8 * v6);
    v56 = (a2 + 8 * v8 + 32);
    v57 = v56;
    do
    {
      v58 = *(a2 + 3648);
      *(a2 + 3640) = *v9;
      *(a2 + 3656) = v58;
      v59 = v57[1];
      ++v57;
      v60 = (*(v56 - 4) * *v10 + 0.0 + *(v56 - 3) * v10[1] + *(v56 - 2) * v10[2] + *(v56 - 1) * v10[3] + *v56 * v10[4] + v59 * v10[5] + v56[2] * v10[6] + v56[3] * v10[7] + v56[4] * v10[8]) * *(a2 + 3680);
      *&v58 = v60 * -0.07 + 0.0 + *(a2 + 3640) * 0.25;
      v61 = *(a2 + 3648);
      *(a2 + 3632) = v60;
      v62 = *(result + 8 * v5) - (*&v58 + v61 * 0.64 + *(a2 + 3656) * 0.25 + *(a2 + 3664) * -0.07);
      *(a3 + 8 * v5) = v62;
      *v55++ = v62 + *(result + 8 * v5++);
      v56 = v57;
      --v4;
    }

    while (v4);
LABEL_24:
    *(a2 + 3712) = v5;
  }

  return result;
}

unint64_t webrtc::rnn_vad::PitchEstimator::Estimate(void *a1, float32x4_t *a2)
{
  v4 = a1[12];
  v5 = a1[15];
  v6 = v4 < &a2[215].u64[1] + 4 && v4 + 1728 > a2;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    f32 = a2[2].f32;
    v8 = (v4 + 16);
    v9 = 424;
    v10 = 424;
    do
    {
      v11 = f32 - 8;
      v12 = vld2q_f32(v11);
      v13 = vld2q_f32(f32);
      *(v8 - 1) = v12;
      *v8 = v13;
      f32 += 16;
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
  }

  v14 = 4 * v9;
  v15 = &a2[v9 / 2];
  do
  {
    v16 = v15->i32[0];
    v15 = (v15 + 8);
    *(v4 + v14) = v16;
    v14 += 4;
  }

  while (v14 != 1728);
  webrtc::rnn_vad::AutoCorrelationCalculator::ComputeOnPitchBuffer((a1 + 2), v4, v5);
  v17 = (v4 + 16);
  v18 = 0.0;
  v19 = 240;
  do
  {
    v20 = vmulq_f32(v17[-1], v17[-1]);
    v21 = vmulq_f32(*v17, *v17);
    v18 = (((((((v18 + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3]) + v21.f32[0]) + v21.f32[1]) + v21.f32[2]) + v21.f32[3];
    v17 += 2;
    v19 -= 8;
  }

  while (v19);
  v22 = 0;
  v23 = 0;
  v24 = (v18 + (*(v4 + 960) * *(v4 + 960))) + 1.0;
  v25 = 1;
  v26 = -1.0;
  v27 = 0.0;
  v28 = -1.0;
  v29 = 0.0;
  do
  {
    v30 = *(v5 + v22);
    v6 = v30 <= 0.0;
    v31 = v30 * v30;
    if (!v6 && (v29 * v31) > (v24 * v28))
    {
      if ((v27 * v31) > (v24 * v26))
      {
        v29 = v27;
      }

      else
      {
        v29 = v24;
      }

      if ((v27 * v31) > (v24 * v26))
      {
        v28 = v26;
      }

      else
      {
        v28 = v31;
      }

      if ((v27 * v31) > (v24 * v26))
      {
        v25 = v23;
      }

      else
      {
        v25 = v22;
      }

      if ((v27 * v31) > (v24 * v26))
      {
        v23 = v22;
        v26 = v31;
        v27 = v24;
      }
    }

    v24 = fmaxf((v24 - (*(v4 + 4 * v22) * *(v4 + 4 * v22))) + (*(v4 + 4 * v22 + 960) * *(v4 + 4 * v22 + 960)), 0.0);
    ++v22;
  }

  while (v22 != 147);
  v33 = a1[9];
  v34 = a2 + 1;
  v35 = 0.0;
  v36 = 480;
  do
  {
    v37 = vmulq_f32(v34[-1], v34[-1]);
    v38 = vmulq_f32(*v34, *v34);
    v35 = (((((((v35 + v37.f32[0]) + v37.f32[1]) + v37.f32[2]) + v37.f32[3]) + v38.f32[0]) + v38.f32[1]) + v38.f32[2]) + v38.f32[3];
    v34 += 2;
    v36 -= 8;
  }

  while (v36);
  *v33 = v35;
  v39 = v33 + 1;
  v40 = 384;
  v41 = a2;
  do
  {
    v35 = fmaxf((v35 - (*v41 * *v41)) + (v41[480] * v41[480]), 1.0);
    *v39++ = v35;
    ++v41;
    --v40;
  }

  while (v40);
  v42 = webrtc::rnn_vad::ComputePitchPeriod48kHz(a2, v33, (2 * v23) | (v25 << 33));
  result = webrtc::rnn_vad::ComputeExtendedPitchPeriod48kHz(a2, v33, 768 - v42, *(a1 + 4));
  *(a1 + 4) = result;
  return result;
}

float32x4_t *webrtc::rnn_vad::ComputePitchPeriod48kHz(float32x4_t *result, uint64_t a2, uint64_t a3)
{
  v53 = 0;
  if (a3 >= SHIDWORD(a3))
  {
    v3 = HIDWORD(a3);
  }

  else
  {
    v3 = a3;
  }

  if (a3 <= SHIDWORD(a3))
  {
    v4 = HIDWORD(a3);
  }

  else
  {
    v4 = a3;
  }

  if (v3 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3;
  }

  v6 = (v5 - 2);
  if (v3 >= 291)
  {
    v7 = 291;
  }

  else
  {
    v7 = v3;
  }

  if (v4 <= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v4;
  }

  v9 = (v8 - 2);
  if (v4 >= 291)
  {
    v10 = 291;
  }

  else
  {
    v10 = v4;
  }

  v11 = (v10 + 2);
  v12 = v11 << 32;
  v13 = v7 + 3;
  if (v7 + 3 >= v9)
  {
    if (v3 >= 3)
    {
      v54[(v6 - 1)] = 0.0;
      if (v4 > 290)
      {
LABEL_43:
        if (v6 <= v11)
        {
          goto LABEL_47;
        }

        goto LABEL_53;
      }
    }

    else if (v4 > 290)
    {
      goto LABEL_43;
    }

    *(v54 + ((v12 + 0x100000000) >> 30)) = 0.0;
    if (v6 <= v11)
    {
      while (1)
      {
LABEL_47:
        v31 = (result + 4 * v6);
        if (v6 >= 0x360)
        {
          v31 = 0;
        }

        v32 = v31 + 1;
        v33 = 0.0;
        v34 = 480;
        v35 = result + 97;
        do
        {
          v36 = vmulq_f32(v35[-1], v32[-1]);
          v37 = vmulq_f32(*v35, *v32);
          v33 = (((((((v33 + v36.f32[0]) + v36.f32[1]) + v36.f32[2]) + v36.f32[3]) + v37.f32[0]) + v37.f32[1]) + v37.f32[2]) + v37.f32[3];
          v35 += 2;
          v32 += 2;
          v34 -= 8;
        }

        while (v34);
        v54[v6] = v33;
        v38 = v53++;
        if (v38 >= 0xA)
        {
          goto LABEL_72;
        }

        v52[v38] = v6++;
        if (v10 + 3 == v6)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

  v14 = (v7 + 2);
  if (v3 < 3 || (v54[(v6 - 1)] = 0.0, v3 <= 0x122))
  {
    *(v54 + (((v14 << 32) + 0x100000000) >> 30)) = 0.0;
  }

  if (v6 <= v14)
  {
    do
    {
      v15 = (result + 4 * v6);
      if (v6 >= 0x360)
      {
        v15 = 0;
      }

      v16 = v15 + 1;
      v17 = 0.0;
      v18 = 480;
      v19 = result + 97;
      do
      {
        v20 = vmulq_f32(v19[-1], v16[-1]);
        v21 = vmulq_f32(*v19, *v16);
        v17 = (((((((v17 + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3]) + v21.f32[0]) + v21.f32[1]) + v21.f32[2]) + v21.f32[3];
        v19 += 2;
        v16 += 2;
        v18 -= 8;
      }

      while (v18);
      v54[v6] = v17;
      v22 = v53++;
      if (v22 >= 0xA)
      {
        goto LABEL_72;
      }

      v52[v22] = v6++;
    }

    while (v13 != v6);
  }

  if (v4 < 3 || (v54[(v9 - 1)] = 0.0, v4 <= 0x122))
  {
    *(v54 + ((v12 + 0x100000000) >> 30)) = 0.0;
  }

  if (v9 <= v11)
  {
    while (1)
    {
      v23 = (result + 4 * v9);
      if (v9 >= 0x360)
      {
        v23 = 0;
      }

      v24 = v23 + 1;
      v25 = 0.0;
      v26 = 480;
      v27 = result + 97;
      do
      {
        v28 = vmulq_f32(v27[-1], v24[-1]);
        v29 = vmulq_f32(*v27, *v24);
        v25 = (((((((v25 + v28.f32[0]) + v28.f32[1]) + v28.f32[2]) + v28.f32[3]) + v29.f32[0]) + v29.f32[1]) + v29.f32[2]) + v29.f32[3];
        v27 += 2;
        v24 += 2;
        v26 -= 8;
      }

      while (v26);
      v54[v9] = v25;
      v30 = v53++;
      if (v30 >= 0xA)
      {
        break;
      }

      v52[v30] = v9++;
      if (v10 + 3 == v9)
      {
        goto LABEL_53;
      }
    }

LABEL_72:
    __break(1u);
    return result;
  }

LABEL_53:
  if (v53)
  {
    v39 = v52;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0;
  if (!v53)
  {
    return (2 * v40);
  }

  v41 = v52;
  v42 = 0.0;
  v43 = -1.0;
  v44 = &v39[v53];
  do
  {
    v45 = *v41;
    v46 = v54[v45];
    if (v46 > 0.0)
    {
      v47 = v46 * v46;
      if ((v42 * v47) > (v43 * *(a2 + 4 * v45)))
      {
        v42 = *(a2 + 4 * v45);
        v43 = v47;
        v40 = *v41;
      }
    }

    ++v41;
  }

  while (v41 != v44);
  if (!v40 || v40 > 292)
  {
    return (2 * v40);
  }

  v48 = &v54[v40];
  v49 = v48[1];
  v50 = *(v48 - 1);
  if ((v50 - v49) > ((*v48 - v49) * 0.7))
  {
    return (2 * v40 + 1);
  }

  if ((v49 - v50) <= ((*v48 - v50) * 0.7))
  {
    v51 = 0;
  }

  else
  {
    v51 = -1;
  }

  return (v51 + 2 * v40);
}

unint64_t webrtc::rnn_vad::ComputeExtendedPitchPeriod48kHz(unint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a2 + 1536);
  if (a3 / 2 >= 383)
  {
    v5 = 383;
  }

  else
  {
    v5 = a3 / 2;
  }

  v6 = v5;
  v7 = (384 - v5);
  if (v7 >= 0x360)
  {
    v8 = 0;
  }

  else
  {
    v8 = (result + 4 * v7);
  }

  v9 = (result + 1552);
  v10 = v8 + 1;
  v11 = 0.0;
  v12 = 480;
  do
  {
    v13 = vmulq_f32(v9[-1], v10[-1]);
    v14 = vmulq_f32(*v9, *v10);
    v11 = (((((((v11 + v13.f32[0]) + v13.f32[1]) + v13.f32[2]) + v13.f32[3]) + v14.f32[0]) + v14.f32[1]) + v14.f32[2]) + v14.f32[3];
    v9 += 2;
    v10 += 2;
    v12 -= 8;
  }

  while (v12);
  v15 = *(a2 + 4 * v7);
  v16 = 1.0;
  v17 = sqrtf((v4 * v15) + 1.0);
  v18 = v11 / v17;
  if (a3 >= 118)
  {
    v39 = 2 * v5;
    LODWORD(v40) = 2 * v5 / 0x3Bu;
    if (v40 <= 2)
    {
      v40 = 2;
    }

    else
    {
      v40 = v40;
    }

    if ((v40 - 16) < 0xFFFFFFF2)
    {
      __break(1u);
      return result;
    }

    v41 = a4 / -2;
    v42 = 2;
    v19 = v11 / v17;
    do
    {
      v43 = (v39 + v42) / (2 * v42);
      v44 = 384 - v43;
      v45 = (result + 4 * (384 - v43));
      if ((384 - v43) >= 0x360)
      {
        v45 = 0;
      }

      v46 = v45 + 1;
      v47 = 480;
      v48 = (result + 1552);
      v49 = 0.0;
      do
      {
        v50 = vmulq_f32(v48[-1], v46[-1]);
        v51 = vmulq_f32(*v48, *v46);
        v49 = (((((((v49 + v50.f32[0]) + v50.f32[1]) + v50.f32[2]) + v50.f32[3]) + v51.f32[0]) + v51.f32[1]) + v51.f32[2]) + v51.f32[3];
        v48 += 2;
        v46 += 2;
        v47 -= 8;
      }

      while (v47);
      if (v52)
      {
        v53 = v5;
      }

      else
      {
      }

      v54 = 384 - v53;
      v55 = (result + 4 * v54);
      if (v54 >= 0x360)
      {
        v55 = 0;
      }

      v56 = v55 + 1;
      v57 = 0.0;
      v58 = 480;
      v59 = (result + 1552);
      do
      {
        v60 = vmulq_f32(v59[-1], v56[-1]);
        v61 = vmulq_f32(*v59, *v56);
        v57 = (((((((v57 + v60.f32[0]) + v60.f32[1]) + v60.f32[2]) + v60.f32[3]) + v61.f32[0]) + v61.f32[1]) + v61.f32[2]) + v61.f32[3];
        v59 += 2;
        v56 += 2;
        v58 -= 8;
      }

      while (v58);
      v62 = v43 + v41;
      if (v43 + v41 < 0)
      {
        v62 = -v62;
      }

      v63 = *(&a4 + 1);
      if (v62 >= 2)
      {
        v63 = 0.0;
        if (v62 == 2)
        {
          if (dword_273BA1218[v42 - 2] >= v5)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = *(&a4 + 1) * 0.5;
          }
        }
      }

      v64 = (v49 + v57) * 0.5;
      v65 = v64 / sqrtf((v4 * ((*(a2 + 4 * v44) + *(a2 + 4 * v54)) * 0.5)) + 1.0);
      v66 = fmaxf(-(v63 - (v18 * 0.7)), 0.3);
      v67 = fmaxf(-(v63 - (v18 * 0.85)), 0.4);
      if (v43 >= 90)
      {
        v67 = v66;
      }

      if (v67 < v65)
      {
        v6 = (v39 + v42) / (2 * v42);
        v19 = v65;
        v11 = v64;
        v15 = (*(a2 + 4 * v44) + *(a2 + 4 * v54)) * 0.5;
      }

      v52 = v42++ == v40;
    }

    while (!v52);
  }

  else
  {
    v19 = v11 / v17;
  }

  v20 = fmaxf(v11, 0.0);
  if (v15 > v20)
  {
    v16 = v20 / (v15 + 1.0);
  }

  if (v6 - 1 > 0x17E)
  {
    v38 = 0;
  }

  else
  {
    v21 = 0.0;
    v22 = 480;
    v23 = result;
    do
    {
      v24 = vmulq_f32(v23[96], *(v23 + 4 * (385 - v6)));
      v25 = vmulq_f32(v23[97], *(v23 + 4 * (385 - v6) + 16));
      v21 = (((((((v21 + v24.f32[0]) + v24.f32[1]) + v24.f32[2]) + v24.f32[3]) + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
      v23 += 2;
      v22 -= 8;
    }

    while (v22);
    v26 = 0.0;
    v27 = 480;
    v28 = result;
    do
    {
      v29 = vmulq_f32(v28[96], *(v28 + 4 * (384 - v6)));
      v30 = vmulq_f32(v28[97], *(v28 + 4 * (384 - v6) + 16));
      v26 = (((((((v26 + v29.f32[0]) + v29.f32[1]) + v29.f32[2]) + v29.f32[3]) + v30.f32[0]) + v30.f32[1]) + v30.f32[2]) + v30.f32[3];
      v28 += 2;
      v27 -= 8;
    }

    while (v27);
    v31 = (result + 4 * (383 - v6));
    if (383 - v6 >= 0x360)
    {
      v31 = 0;
    }

    v32 = (result + 1552);
    v33 = v31 + 1;
    v34 = 0.0;
    v35 = 480;
    do
    {
      v36 = vmulq_f32(v32[-1], v33[-1]);
      v37 = vmulq_f32(*v32, *v33);
      v34 = (((((((v34 + v36.f32[0]) + v36.f32[1]) + v36.f32[2]) + v36.f32[3]) + v37.f32[0]) + v37.f32[1]) + v37.f32[2]) + v37.f32[3];
      v32 += 2;
      v33 += 2;
      v35 -= 8;
    }

    while (v35);
    if ((v34 - v21) <= ((v26 - v21) * 0.7))
    {
      if ((v21 - v34) <= ((v26 - v34) * 0.7))
      {
        v38 = 0;
      }

      else
      {
        v38 = -1;
      }
    }

    else
    {
      v38 = 1;
    }
  }

  if (v16 >= v19)
  {
    v16 = v19;
  }

  LODWORD(v68) = v38 + 2 * v6;
  if (v68 <= 60)
  {
    v68 = 60;
  }

  else
  {
    v68 = v68;
  }

  return v68 | (LODWORD(v16) << 32);
}

uint64_t webrtc::PixelLimitResource::SetResourceListener(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  result = *(a1 + 40);
  if (result)
  {
    *(result + 4) = 0;
    if (atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      v4 = a2;
      result = MEMORY[0x2743DA540]();
      a2 = v4;
    }

    *(a1 + 40) = 0;
  }

  if (a2)
  {
    {
      {
        operator new();
      }
    }

    webrtc::RepeatingTaskHandle::Start();
  }

  return result;
}

void webrtc::PixelLimitResource::Name(char *a1@<X8>)
{
  a1[23] = 18;
  if (a1 <= "PixelLimitResource" && a1 + 18 > "PixelLimitResource")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "PixelLimitResource");
  }
}

BOOL webrtc::RefCountedObject<webrtc::PixelLimitResource>::Release(atomic_uint *a1)
{
  add = atomic_fetch_add(a1 + 12, 0xFFFFFFFF);
  if (a1 && add == 1)
  {
    (*(*a1 + 24))(a1);
  }

  return add != 1;
}

void *webrtc::RefCountedObject<webrtc::PixelLimitResource>::~RefCountedObject(void *result)
{
  *result = &unk_288299948;
  v1 = result[5];
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      MEMORY[0x2743DA540](v1, 0x1000C4090D0E795);
      return v2;
    }
  }

  return result;
}

void webrtc::RefCountedObject<webrtc::PixelLimitResource>::~RefCountedObject(void *a1)
{
  *a1 = &unk_288299948;
  v2 = a1[5];
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540](v2, 0x1000C4090D0E795);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,webrtc::TimeDelta,webrtc::PixelLimitResource::SetResourceListener(webrtc::ResourceListener *)::$_0 &>(uint64_t *a1)
{
  v1 = *a1;
  if (!*(*a1 + 32))
  {
    return 5000000;
  }

  if (*(v1 + 28) != 1)
  {
    return 5000000;
  }

  (*(**(v1 + 16) + 16))(v8);
  if ((*&v8[4] & 0x100000000) == 0)
  {
    return 5000000;
  }

  if (*(v1 + 28))
  {
    v2 = *(v1 + 24);
    if (v2 >= *&v8[4])
    {
      if (3 * v2 / 5 <= *&v8[4])
      {
        return 5000000;
      }

      v6 = *(v1 + 32);
      *v8 = v1;
      (**v1)(v1);
      (*(*v6 + 16))(v6, v8, 1);
      v4 = *v8;
      if (!*v8)
      {
        return 5000000;
      }
    }

    else
    {
      v3 = *(v1 + 32);
      *v8 = v1;
      (**v1)(v1);
      (*(*v3 + 16))(v3, v8, 0);
      v4 = *v8;
      if (!*v8)
      {
        return 5000000;
      }
    }

    (*(*v4 + 8))(v4);
    return 5000000;
  }

  else
  {
    v7 = std::__throw_bad_optional_access[abi:sn200100]();
    return webrtc::PlatformThread::SpawnThread(v7);
  }
}

uint64_t webrtc::anonymous namespace::RunPlatformThread(webrtc::_anonymous_namespace_ *this, void *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 48))(v3, a2);
    v4 = *(this + 3);
    if (v4 == this)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    MEMORY[0x2743DA540](this, 0x1020C40A5B76CDFLL);
    return 0;
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:sn200100]();
    return std::__function::__func<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0,std::allocator<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0>,void ()(void)>::~__func(v6);
  }
}

uint64_t std::__function::__func<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0,std::allocator<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2882999D0;
  v2 = a1 + 8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v3 = *(a1 + 32);
    if (v3 != v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    (*(*v3 + 32))(v3);
    return a1;
  }

  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void std::__function::__func<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0,std::allocator<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_2882999D0;
  v2 = a1 + 8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v3 = *(a1 + 32);
    if (v3 != v2)
    {
LABEL_3:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

LABEL_7:

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3 != v2)
    {
      goto LABEL_3;
    }
  }

  (*(*v3 + 32))(v3);
  goto LABEL_7;
}

void std::__function::__func<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0,std::allocator<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882999D0;
  v4 = a2 + 8;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 != a1 + 8)
    {
      *(a2 + 32) = (*(*v5 + 16))(v5, v4);
      if (*(a1 + 63) < 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      v6 = *(a1 + 40);
      *(a2 + 56) = *(a1 + 56);
      *(a2 + 40) = v6;
      *(a2 + 64) = *(a1 + 64);
      return;
    }

    *(a2 + 32) = v4;
    (*(**(a1 + 32) + 24))(*(a1 + 32));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a2 + 32) = 0;
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  std::string::__init_copy_ctor_external((a2 + 40), *(a1 + 40), *(a1 + 48));
  *(a2 + 64) = *(a1 + 64);
}

uint64_t std::__function::__func<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0,std::allocator<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = a1 + 8;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    result = *(a1 + 32);
    if (result != v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = *(*result + 32);

    return v4();
  }

  result = *(a1 + 32);
  if (result == v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!result)
  {
    return result;
  }

  v4 = *(*result + 40);

  return v4();
}

void std::__function::__func<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0,std::allocator<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0>,void ()(void)>::destroy_deallocate(void **__p)
{
  v2 = (__p + 1);
  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
    v3 = __p[4];
    if (v3 != v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = __p[4];
    if (v3 != v2)
    {
LABEL_3:
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = __p;

      goto LABEL_7;
    }
  }

  (*(*v3 + 32))(v3);
  v4 = __p;

LABEL_7:
  operator delete(v4);
}

uint64_t std::__function::__func<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0,std::allocator<webrtc::PlatformThread::SpawnThread(std::function<void ()(void)>,std::string_view,webrtc::ThreadAttributes,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = a1 + 40;
  if (*(a1 + 63) >= 0)
  {
    v3 = (a1 + 40);
  }

  else
  {
    v3 = *(a1 + 40);
  }

  pthread_setname_np(v3);
  v4 = *(v2 + 24);
  priority_min = sched_get_priority_min(4);
  priority_max = sched_get_priority_max(4);
  if (priority_min != -1 && priority_max != -1 && priority_max - priority_min >= 3)
  {
    v7 = priority_min + 1;
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        if (priority_max - 3 > v7)
        {
          v7 = priority_max - 3;
        }

        goto LABEL_16;
      }

      if (v4 == 4)
      {
        v7 = priority_max - 1;
        goto LABEL_16;
      }
    }

    else
    {
      if (v4 == 1)
      {
LABEL_16:
        v11.sched_priority = v7;
        goto LABEL_17;
      }

      if (v4 == 2)
      {
        v7 = (priority_max + priority_min - 1) / 2;
        goto LABEL_16;
      }
    }

LABEL_17:
    v8 = pthread_self();
    pthread_setschedparam(v8, 4, &v11);
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:sn200100]();
    JUMPOUT(0x27333FECCLL);
  }

  return (*(*v9 + 48))(v9);
}

uint64_t webrtc::rtcp::Pli::Create(unsigned int *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = -127;
    *(a2 + *a3 + 1) = -50;
    *(a2 + *a3 + 2) = (v13 - 4) >> 10;
    *(a2 + *a3 + 3) = (v13 - 4) >> 2;
    v14 = *a3 + 4;
    *a3 = v14;
    v15 = (a2 + v14);
    *v15 = bswap32(a1[2]);
    v15[1] = bswap32(a1[3]);
    *a3 += 8;
    return 1;
  }

  else
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }
}

uint64_t webrtc::PoleZeroFilter::Filter(webrtc::PoleZeroFilter *this, const __int16 *a2, unint64_t a3, float *a4, double a5)
{
  v5 = 0xFFFFFFFFLL;
  if (!a2 || !a4)
  {
    return v5;
  }

  v6 = *(this + 63);
  v7 = a3;
  if (v6 < a3)
  {
    v7 = *(this + 63);
  }

  if (!v7)
  {
    v8 = *(this + 61);
    if (v6 >= a3)
    {
      goto LABEL_116;
    }

    goto LABEL_70;
  }

  v8 = *(this + 61);
  v9 = *(this + 62);
  v10 = v8 + 1;
  if ((v8 + 1) > 2)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = this + 96;
  v13 = v9 + 1;
  if ((v9 + 1) > 2)
  {
    v14 = v9 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v8)
  {
    v76 = 0;
    if (!v9)
    {
      a5 = 0.0;
      do
      {
        v226 = a2[v76];
        v227 = (*(this + 72) * v226) + 0.0;
        a4[v76] = v227;
        *(this + v76) = v226;
        *(this + v76++ + 24) = v227;
      }

      while (v7 != v76);
      v8 = 0;
      if (v6 < a3)
      {
        goto LABEL_70;
      }

LABEL_116:
      memmove(this, this + 2 * a3, 2 * v8);
      memmove(this + 96, this + 4 * a3 + 96, 4 * *(this + 62));
      return 0;
    }

    v77 = (v14 - 1) & 0xFFFFFFFFFFFFFFF8;
    v78 = (this + 4 * v9 + 80);
    v79 = this + 92;
    while (1)
    {
      v80 = a2[v76];
      v81 = 0.0;
      v82 = (*(this + 72) * v80) + 0.0;
      a4[v76] = v82;
      if (v13 >= 9)
      {
        v85 = (this + 408);
        v86 = v78;
        v87 = (v14 - 1) & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v88 = vrev64q_s32(*v86);
          v89 = vrev64q_s32(v86[-1]);
          v90 = vmulq_f32(v85[-1], vextq_s8(v88, v88, 8uLL));
          v91 = vmulq_f32(*v85, vextq_s8(v89, v89, 8uLL));
          v81 = (((((((v81 + v90.f32[0]) + v90.f32[1]) + v90.f32[2]) + v90.f32[3]) + v91.f32[0]) + v91.f32[1]) + v91.f32[2]) + v91.f32[3];
          v86 -= 2;
          v85 += 2;
          v87 -= 8;
        }

        while (v87);
        v83 = v77 | 1;
        v84 = v9 - v77;
        if (v14 - 1 == v77)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v83 = 1;
        v84 = v9;
      }

      v92 = v14 - v83;
      v93 = (this + 4 * v83 + 388);
      v94 = &v79[4 * v84];
      do
      {
        v95 = *v93++;
        v96 = v95;
        v97 = *v94--;
        v81 = v81 + (v96 * v97);
        --v92;
      }

      while (v92);
LABEL_43:
      *&a5 = v82 - v81;
      a4[v76] = *&a5;
      *(this + v76) = v80;
      *&v12[4 * v76++ + 4 * v9] = LODWORD(a5);
      v78 = (v78 + 4);
      v79 += 4;
      if (v76 == v7)
      {
        v8 = 0;
LABEL_69:
        if (v6 >= a3)
        {
          goto LABEL_116;
        }

        goto LABEL_70;
      }
    }
  }

  if (!v9)
  {
    v98 = 0;
    v99 = v11 - 1;
    v100 = (v11 - 1) & 0xFFFFFFFFFFFFFFF0;
    v101 = (v11 - 1) & 0xFFFFFFFFFFFFFFFCLL;
    v102 = this + 2 * v8;
    v103 = (v102 - 16);
    v104 = v102 - 8;
    v105 = this - 2;
    while (1)
    {
      v106 = a2[v98];
      v107 = *(this + 72) * v106;
      a4[v98] = v107;
      if (v10 >= 5)
      {
        if (v10 < 0x11)
        {
          v111 = 0;
          v108 = 0.0;
LABEL_62:
          v127 = &v104[-2 * v111];
          v128 = v111 - v101;
          v129 = (this + 4 * v111 + 292);
          do
          {
            v130 = *v129++;
            v131 = v130;
            v130.i64[0] = *v127--;
            v132 = vmulq_f32(v131, vcvtq_f32_s32(vmovl_s16(vrev64_s16(*v130.f32))));
            v108 = (((v108 + v132.f32[0]) + v132.f32[1]) + v132.f32[2]) + v132.f32[3];
            v128 += 4;
          }

          while (v128);
          v109 = v101 | 1;
          v110 = v8 - v101;
          if (v99 == v101)
          {
            goto LABEL_53;
          }

          goto LABEL_65;
        }

        v108 = 0.0;
        v112 = (this + 324);
        v113 = v103;
        v114 = (v11 - 1) & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v115 = v112[-2];
          v116 = v112[-1];
          v117 = *v112;
          v118 = v112[1];
          v112 += 4;
          v119 = vrev64q_s16(*v113);
          v120 = vextq_s8(v119, v119, 8uLL);
          v121 = vrev64q_s16(v113[-1]);
          v122 = vextq_s8(v121, v121, 8uLL);
          v123 = vmulq_f32(v116, vcvtq_f32_s32(vmovl_high_s16(v120)));
          v124 = vmulq_f32(v115, vcvtq_f32_s32(vmovl_s16(*v120.i8)));
          v125 = vmulq_f32(v118, vcvtq_f32_s32(vmovl_high_s16(v122)));
          v126 = vmulq_f32(v117, vcvtq_f32_s32(vmovl_s16(*v122.i8)));
          v108 = (((((((((((((((v108 + v124.f32[0]) + v124.f32[1]) + v124.f32[2]) + v124.f32[3]) + v123.f32[0]) + v123.f32[1]) + v123.f32[2]) + v123.f32[3]) + v126.f32[0]) + v126.f32[1]) + v126.f32[2]) + v126.f32[3]) + v125.f32[0]) + v125.f32[1]) + v125.f32[2]) + v125.f32[3];
          v113 -= 2;
          v114 -= 16;
        }

        while (v114);
        if (v99 == v100)
        {
          goto LABEL_53;
        }

        v111 = (v11 - 1) & 0xFFFFFFFFFFFFFFF0;
        v109 = v100 | 1;
        v110 = v8 - v100;
        if (((v11 - 1) & 0xC) != 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v108 = 0.0;
        v109 = 1;
        v110 = v8;
      }

LABEL_65:
      v133 = v11 - v109;
      v134 = (this + 4 * v109 + 288);
      v135 = &v105[2 * v110];
      do
      {
        v136 = *v134++;
        v137 = v136;
        v138 = *v135;
        v135 -= 2;
        v108 = v108 + (v137 * v138);
        --v133;
      }

      while (v133);
LABEL_53:
      *&a5 = v107 + v108;
      a4[v98] = *&a5;
      *(this + v98 + v8) = v106;
      *&v12[4 * v98++] = LODWORD(a5);
      v103 = (v103 + 2);
      v104 += 2;
      v105 += 2;
      if (v98 == v7)
      {
        goto LABEL_69;
      }
    }
  }

  v15 = 0;
  v16 = v11 - 1;
  v17 = (v11 - 1) & 0xFFFFFFFFFFFFFFF0;
  v251 = *(this + 63);
  v18 = (v11 - 1) & 0xFFFFFFFFFFFFFFFCLL;
  v253 = v8 - v18;
  v254 = v18 | 1;
  v19 = (v14 - 1) & 0xFFFFFFFFFFFFFFF8;
  v20 = this + 2 * v8;
  v21 = (v20 - 16);
  v22 = v20 - 8;
  v252 = -v18;
  v23 = this - 2;
  v24 = (this + 4 * v9 + 80);
  v25 = this + 92;
  do
  {
    v26 = a2[v15];
    v27 = *(this + 72) * v26;
    a4[v15] = v27;
    if (v10 < 5)
    {
      v28 = 0.0;
      v29 = 1;
      v30 = v8;
LABEL_27:
      v53 = v11 - v29;
      v54 = (this + 4 * v29 + 288);
      v55 = &v23[2 * v30];
      do
      {
        v56 = *v54++;
        v57 = v56;
        v58 = *v55;
        v55 -= 2;
        v28 = v28 + (v57 * v58);
        --v53;
      }

      while (v53);
      goto LABEL_29;
    }

    if (v10 >= 0x11)
    {
      v28 = 0.0;
      v32 = (this + 324);
      v33 = v21;
      v34 = (v11 - 1) & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v35 = v32[-2];
        v36 = v32[-1];
        v37 = *v32;
        v38 = v32[1];
        v32 += 4;
        v39 = vrev64q_s16(*v33);
        v40 = vextq_s8(v39, v39, 8uLL);
        v41 = vrev64q_s16(v33[-1]);
        v42 = vextq_s8(v41, v41, 8uLL);
        v43 = vmulq_f32(v36, vcvtq_f32_s32(vmovl_high_s16(v40)));
        v44 = vmulq_f32(v35, vcvtq_f32_s32(vmovl_s16(*v40.i8)));
        v45 = vmulq_f32(v38, vcvtq_f32_s32(vmovl_high_s16(v42)));
        v46 = vmulq_f32(v37, vcvtq_f32_s32(vmovl_s16(*v42.i8)));
        v28 = (((((((((((((((v28 + v44.f32[0]) + v44.f32[1]) + v44.f32[2]) + v44.f32[3]) + v43.f32[0]) + v43.f32[1]) + v43.f32[2]) + v43.f32[3]) + v46.f32[0]) + v46.f32[1]) + v46.f32[2]) + v46.f32[3]) + v45.f32[0]) + v45.f32[1]) + v45.f32[2]) + v45.f32[3];
        v33 -= 2;
        v34 -= 16;
      }

      while (v34);
      if (v16 == v17)
      {
        goto LABEL_29;
      }

      v31 = (v11 - 1) & 0xFFFFFFFFFFFFFFF0;
      v29 = v17 | 1;
      v30 = v8 - v17;
      if (((v11 - 1) & 0xC) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v31 = 0;
      v28 = 0.0;
    }

    v47 = &v22[-2 * v31];
    v48 = v252 + v31;
    v49 = (this + 4 * v31 + 292);
    do
    {
      v50 = *v49++;
      v51 = v50;
      v50.i64[0] = *v47--;
      v52 = vmulq_f32(v51, vcvtq_f32_s32(vmovl_s16(vrev64_s16(*v50.f32))));
      v28 = (((v28 + v52.f32[0]) + v52.f32[1]) + v52.f32[2]) + v52.f32[3];
      v48 += 4;
    }

    while (v48);
    v30 = v253;
    v29 = v254;
    if (v16 != ((v11 - 1) & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_27;
    }

LABEL_29:
    v59 = v27 + v28;
    a4[v15] = v59;
    v60 = 0.0;
    if (v13 < 9)
    {
      v61 = 1;
      v62 = v9;
LABEL_34:
      v70 = v14 - v61;
      v71 = (this + 4 * v61 + 388);
      v72 = &v25[4 * v62];
      do
      {
        v73 = *v71++;
        v74 = v73;
        v75 = *v72--;
        v60 = v60 + (v74 * v75);
        --v70;
      }

      while (v70);
      goto LABEL_15;
    }

    v63 = (this + 408);
    v64 = v24;
    v65 = (v14 - 1) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v66 = vrev64q_s32(*v64);
      v67 = vrev64q_s32(v64[-1]);
      v68 = vmulq_f32(v63[-1], vextq_s8(v66, v66, 8uLL));
      v69 = vmulq_f32(*v63, vextq_s8(v67, v67, 8uLL));
      v60 = (((((((v60 + v68.f32[0]) + v68.f32[1]) + v68.f32[2]) + v68.f32[3]) + v69.f32[0]) + v69.f32[1]) + v69.f32[2]) + v69.f32[3];
      v64 -= 2;
      v63 += 2;
      v65 -= 8;
    }

    while (v65);
    v62 = v9 - v19;
    v61 = v19 | 1;
    if (v14 - 1 != v19)
    {
      goto LABEL_34;
    }

LABEL_15:
    *&a5 = v59 - v60;
    a4[v15] = *&a5;
    *(this + v15 + v8) = v26;
    *&v12[4 * v15++ + 4 * v9] = LODWORD(a5);
    v21 = (v21 + 2);
    v22 += 2;
    v23 += 2;
    v24 = (v24 + 4);
    v25 += 4;
  }

  while (v15 != v7);
  if (v251 >= a3)
  {
    goto LABEL_116;
  }

LABEL_70:
  v139 = (this + 288);
  v140 = v8 + 1;
  if ((v8 + 1) > 2)
  {
    v141 = v8 + 1;
  }

  else
  {
    v141 = 2;
  }

  v142 = *(this + 62);
  v143 = v142 + 1;
  if ((v142 + 1) > 2)
  {
    v144 = v142 + 1;
  }

  else
  {
    v144 = 2;
  }

  v145 = a3 - v7;
  if (v8)
  {
    v146 = 0;
    v147 = v141 - 1;
    v148 = (v141 - 1) & 0xFFFFFFFFFFFFFFF0;
    v149 = (v141 - 1) & 0xFFFFFFFFFFFFFFFCLL;
    v150 = (v144 - 1) & 0xFFFFFFFFFFFFFFF8;
    v151 = &a2[v8];
    v152 = (v151 - 8);
    v153 = v151 - 4;
    v154 = a2 - 1;
    v155 = &a4[v142 - 4];
    v156 = a4 - 1;
    while (1)
    {
      LOWORD(a5) = a2[v7];
      *&a5 = vmovl_s16(*&a5).u64[0];
      *&a5 = *v139 * SLODWORD(a5);
      a4[v7] = *&a5;
      if (v140 < 5)
      {
        v157 = 0.0;
        v158 = 1;
        v159 = v8;
LABEL_90:
        v182 = v141 - v158;
        v183 = &v139[v158];
        v184 = &v154[v159];
        do
        {
          v185 = *v183++;
          v186 = v185;
          v187 = *v184--;
          v157 = v157 + (v186 * v187);
          --v182;
        }

        while (v182);
        goto LABEL_92;
      }

      if (v140 >= 0x11)
      {
        v157 = 0.0;
        v161 = (v141 - 1) & 0xFFFFFFFFFFFFFFF0;
        v162 = (this + 324);
        v163 = v152;
        do
        {
          v164 = v162[-2];
          v165 = v162[-1];
          v166 = *v162;
          v167 = v162[1];
          v162 += 4;
          v168 = vrev64q_s16(*v163);
          v169 = vextq_s8(v168, v168, 8uLL);
          v170 = vrev64q_s16(v163[-1]);
          v171 = vextq_s8(v170, v170, 8uLL);
          v172 = vmulq_f32(v165, vcvtq_f32_s32(vmovl_high_s16(v169)));
          v173 = vmulq_f32(v164, vcvtq_f32_s32(vmovl_s16(*v169.i8)));
          v174 = vmulq_f32(v167, vcvtq_f32_s32(vmovl_high_s16(v171)));
          v175 = vmulq_f32(v166, vcvtq_f32_s32(vmovl_s16(*v171.i8)));
          v157 = (((((((((((((((v157 + v173.f32[0]) + v173.f32[1]) + v173.f32[2]) + v173.f32[3]) + v172.f32[0]) + v172.f32[1]) + v172.f32[2]) + v172.f32[3]) + v175.f32[0]) + v175.f32[1]) + v175.f32[2]) + v175.f32[3]) + v174.f32[0]) + v174.f32[1]) + v174.f32[2]) + v174.f32[3];
          v163 -= 2;
          v161 -= 16;
        }

        while (v161);
        if (v147 == v148)
        {
          goto LABEL_92;
        }

        v160 = (v141 - 1) & 0xFFFFFFFFFFFFFFF0;
        v158 = v148 | 1;
        v159 = v8 - v148;
        if (((v141 - 1) & 0xC) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v160 = 0;
        v157 = 0.0;
      }

      v176 = &v153[-v160];
      v177 = v160 - v149;
      v178 = (this + 4 * v160 + 292);
      do
      {
        v179 = *v178++;
        v180 = v179;
        v179.i64[0] = *v176--;
        v181 = vmulq_f32(v180, vcvtq_f32_s32(vmovl_s16(vrev64_s16(*v179.f32))));
        v157 = (((v157 + v181.f32[0]) + v181.f32[1]) + v181.f32[2]) + v181.f32[3];
        v177 += 4;
      }

      while (v177);
      v159 = v8 - v149;
      v158 = v149 | 1;
      if (v147 != v149)
      {
        goto LABEL_90;
      }

LABEL_92:
      v188 = *&a5 + v157;
      a4[v7] = v188;
      v189 = 0.0;
      if (v142)
      {
        if (v143 >= 9)
        {
          v192 = (v144 - 1) & 0xFFFFFFFFFFFFFFF8;
          v193 = (this + 408);
          v194 = v155;
          do
          {
            v195 = vrev64q_s32(*v194);
            v196 = vrev64q_s32(v194[-1]);
            v197 = vmulq_f32(v193[-1], vextq_s8(v195, v195, 8uLL));
            v198 = vmulq_f32(*v193, vextq_s8(v196, v196, 8uLL));
            v189 = (((((((v189 + v197.f32[0]) + v197.f32[1]) + v197.f32[2]) + v197.f32[3]) + v198.f32[0]) + v198.f32[1]) + v198.f32[2]) + v198.f32[3];
            v194 -= 2;
            v193 += 2;
            v192 -= 8;
          }

          while (v192);
          v191 = v142 - v150;
          v190 = v150 | 1;
          if (v144 - 1 == v150)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v190 = 1;
          v191 = v142;
        }

        v199 = v144 - v190;
        v200 = (this + 4 * v190 + 388);
        v201 = &v156[v191];
        do
        {
          v202 = *v200++;
          v203 = v202;
          v204 = *v201--;
          v189 = v189 + (v203 * v204);
          --v199;
        }

        while (v199);
      }

LABEL_78:
      *&a5 = v188 - v189;
      a4[v7++] = *&a5;
      ++v146;
      v152 = (v152 + 2);
      ++v153;
      ++v154;
      ++v155;
      ++v156;
      if (v146 == v145)
      {
        v205 = a4;
        goto LABEL_134;
      }
    }
  }

  if (v142)
  {
    v206 = 0;
    v207 = (v144 - 1) & 0xFFFFFFFFFFFFFFF8;
    v208 = &a4[v142 - 4];
    v209 = a4 - 1;
    while (1)
    {
      LOWORD(a5) = a2[v7];
      *&a5 = vmovl_s16(*&a5).u64[0];
      v210 = 0.0;
      *&a5 = (*v139 * SLODWORD(a5)) + 0.0;
      a4[v7] = *&a5;
      if (v143 >= 9)
      {
        v213 = (v144 - 1) & 0xFFFFFFFFFFFFFFF8;
        v214 = (this + 408);
        v215 = v208;
        do
        {
          v216 = vrev64q_s32(*v215);
          v217 = vrev64q_s32(v215[-1]);
          v218 = vmulq_f32(v214[-1], vextq_s8(v216, v216, 8uLL));
          v219 = vmulq_f32(*v214, vextq_s8(v217, v217, 8uLL));
          v210 = (((((((v210 + v218.f32[0]) + v218.f32[1]) + v218.f32[2]) + v218.f32[3]) + v219.f32[0]) + v219.f32[1]) + v219.f32[2]) + v219.f32[3];
          v215 -= 2;
          v214 += 2;
          v213 -= 8;
        }

        while (v213);
        v211 = v207 | 1;
        v212 = v142 - v207;
        if (v144 - 1 == v207)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v211 = 1;
        v212 = v142;
      }

      v220 = v144 - v211;
      v221 = (this + 4 * v211 + 388);
      v222 = &v209[v212];
      do
      {
        v223 = *v221++;
        v224 = v223;
        v225 = *v222--;
        v210 = v210 + (v224 * v225);
        --v220;
      }

      while (v220);
LABEL_104:
      *&a5 = *&a5 - v210;
      a4[v7++] = *&a5;
      ++v206;
      ++v208;
      ++v209;
      if (v206 == v145)
      {
        goto LABEL_129;
      }
    }
  }

  if (v145 < 4)
  {
    goto LABEL_131;
  }

  v229 = &a4[v7];
  if (v229 < this + 73 && v139 < &a4[a3])
  {
    goto LABEL_131;
  }

  if (v145 >= 0x10)
  {
    v231 = vld1q_dup_f32(v139);
    v230 = v145 & 0xFFFFFFFFFFFFFFF0;
    v232 = &a2[v7 + 8];
    v233 = (v229 + 8);
    v234 = v145 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v235 = v232[-1];
      v236 = vmulq_f32(v231, vcvtq_f32_s32(vmovl_high_s16(*v232)));
      v237 = vaddq_f32(vmulq_f32(v231, vcvtq_f32_s32(vmovl_s16(*v232->i8))), 0);
      v233[-2] = vaddq_f32(vmulq_f32(v231, vcvtq_f32_s32(vmovl_s16(*v235.i8))), 0);
      v233[-1] = vaddq_f32(vmulq_f32(v231, vcvtq_f32_s32(vmovl_high_s16(v235))), 0);
      *v233 = v237;
      v233[1] = vaddq_f32(v236, 0);
      v233 += 4;
      v232 += 2;
      v234 -= 16;
    }

    while (v234);
    if (v145 == v230)
    {
      goto LABEL_129;
    }

    if ((v145 & 0xC) != 0)
    {
      goto LABEL_126;
    }

    v7 += v230;
    goto LABEL_131;
  }

  v230 = 0;
LABEL_126:
  v238 = vld1q_dup_f32(v139);
  v239 = v7 + (v145 & 0xFFFFFFFFFFFFFFFCLL);
  v240 = v230 - (v145 & 0xFFFFFFFFFFFFFFFCLL);
  v241 = v230 + v7;
  v242 = &a2[v241];
  v243 = &a4[v241];
  do
  {
    v244 = *v242;
    v242 += 4;
    *v243++ = vaddq_f32(vmulq_f32(v238, vcvtq_f32_s32(vmovl_s16(v244))), 0);
    v240 += 4;
  }

  while (v240);
  v7 = v239;
  if (v145 != (v145 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_131:
    v245 = a3 - v7;
    v205 = a4;
    v246 = &a4[v7];
    v247 = &a2[v7];
    do
    {
      v248 = *v247++;
      *v246++ = (*v139 * v248) + 0.0;
      --v245;
    }

    while (v245);
    goto LABEL_133;
  }

LABEL_129:
  v205 = a4;
LABEL_133:
  v8 = 0;
LABEL_134:
  memcpy(this, &a2[a3 - v8], 2 * v8);
  memcpy(this + 96, &v205[a3 - *(this + 62)], 4 * *(this + 62));
  return 0;
}

uint64_t webrtc::StringToProto(char *a1, uint64_t a2)
{
  if (a2 == 6)
  {
    v7 = *a1;
    if (v7 == 115)
    {
      goto LABEL_40;
    }

    if ((v7 - 65) < 0x1A)
    {
      LOBYTE(v7) = v7 + 32;
    }

    if (v7 == 115)
    {
LABEL_40:
      v8 = a1[1];
      if (v8 == 115)
      {
        goto LABEL_71;
      }

      if ((v8 - 65) < 0x1A)
      {
        LOBYTE(v8) = v8 + 32;
      }

      if (v8 == 115)
      {
LABEL_71:
        v9 = a1[2];
        if (v9 == 108)
        {
          goto LABEL_72;
        }

        if ((v9 - 65) < 0x1A)
        {
          LOBYTE(v9) = v9 + 32;
        }

        if (v9 == 108)
        {
LABEL_72:
          v10 = a1[3];
          if (v10 == 116)
          {
            goto LABEL_73;
          }

          if ((v10 - 65) < 0x1A)
          {
            LOBYTE(v10) = v10 + 32;
          }

          if (v10 == 116)
          {
LABEL_73:
            v11 = a1[4];
            if (v11 == 99)
            {
              goto LABEL_74;
            }

            if ((v11 - 65) < 0x1A)
            {
              LOBYTE(v11) = v11 + 32;
            }

            if (v11 == 99)
            {
LABEL_74:
              v12 = a1[5];
              if (v12 == 112)
              {
                return 0x100000002;
              }

              if ((v12 - 65) < 0x1A)
              {
                LOBYTE(v12) = v12 + 32;
              }

              if (v12 == 112)
              {
                return 0x100000002;
              }
            }
          }
        }
      }
    }
  }

  else if (a2 == 3)
  {
    v2 = *a1;
    if (v2 == 117 || ((v2 - 65) >= 0x1A ? (v3 = *a1) : (v3 = v2 + 32), v3 == 117))
    {
      v4 = a1[1];
      if (v4 == 100)
      {
        goto LABEL_12;
      }

      if ((v4 - 65) < 0x1A)
      {
        LOBYTE(v4) = v4 + 32;
      }

      if (v4 == 100)
      {
LABEL_12:
        v5 = a1[2];
        if (v5 == 112)
        {
          return 0x100000000;
        }

        if ((v5 - 65) < 0x1A)
        {
          LOBYTE(v5) = v5 + 32;
        }

        if (v5 == 112)
        {
          return 0x100000000;
        }
      }
    }

    if (v2 == 116)
    {
      goto LABEL_53;
    }

    if ((v2 - 65) < 0x1A)
    {
      LOBYTE(v2) = v2 + 32;
    }

    if (v2 == 116)
    {
LABEL_53:
      v13 = a1[1];
      if (v13 == 99)
      {
        goto LABEL_75;
      }

      if ((v13 - 65) < 0x1A)
      {
        LOBYTE(v13) = v13 + 32;
      }

      if (v13 == 99)
      {
LABEL_75:
        v14 = a1[2];
        if (v14 == 112)
        {
          return 0x100000001;
        }

        if ((v14 - 65) < 0x1A)
        {
          LOBYTE(v14) = v14 + 32;
        }

        if (v14 == 112)
        {
          return 0x100000001;
        }
      }
    }

    v15 = *a1;
    if (v15 == 116)
    {
      goto LABEL_66;
    }

    if ((v15 - 65) < 0x1A)
    {
      LOBYTE(v15) = v15 + 32;
    }

    if (v15 == 116)
    {
LABEL_66:
      v16 = a1[1];
      if (v16 == 108)
      {
        goto LABEL_76;
      }

      if ((v16 - 65) < 0x1A)
      {
        LOBYTE(v16) = v16 + 32;
      }

      if (v16 == 108)
      {
LABEL_76:
        v17 = a1[2];
        if (v17 == 115)
        {
          return 0x100000003;
        }

        if ((v17 - 65) < 0x1A)
        {
          LOBYTE(v17) = v17 + 32;
        }

        if (v17 == 115)
        {
          return 0x100000003;
        }
      }
    }
  }

  return 0;
}

uint64_t webrtc::Port::Port(uint64_t a1, uint64_t *a2, int a3, __int16 a4, __int16 a5, char a6)
{
  v12 = webrtc::PortInterface::PortInterface(a1);
  *(v12 + 240) = sigslot::has_slots<sigslot::single_threaded>::do_signal_connect;
  *(v12 + 248) = sigslot::has_slots<sigslot::single_threaded>::do_signal_disconnect;
  *(v12 + 272) = 0;
  *(v12 + 280) = 0;
  *(v12 + 256) = sigslot::has_slots<sigslot::single_threaded>::do_disconnect_all;
  *(v12 + 264) = v12 + 272;
  *v12 = &unk_288299A48;
  *(v12 + 232) = &unk_288299BC0;
  *(v12 + 288) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v12 + 296) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v12 + 304) = v12 + 304;
  *(v12 + 312) = v12 + 304;
  *(v12 + 320) = 0;
  *(v12 + 328) = v12 + 304;
  *(v12 + 336) = 0;
  *(v12 + 344) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v12 + 352) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v12 + 360) = v12 + 360;
  *(v12 + 368) = v12 + 360;
  *(v12 + 376) = 0;
  *(v12 + 384) = v12 + 360;
  *(v12 + 392) = 0;
  *(v12 + 400) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v12 + 408) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v12 + 416) = v12 + 416;
  *(v12 + 424) = v12 + 416;
  *(v12 + 432) = 0;
  *(v12 + 440) = v12 + 416;
  *(v12 + 448) = 0;
  *(v12 + 456) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_disconnect;
  *(v12 + 464) = sigslot::_signal_base<sigslot::single_threaded>::do_slot_duplicate;
  *(v12 + 472) = v12 + 472;
  *(v12 + 480) = v12 + 472;
  *(v12 + 488) = 0;
  *(v12 + 496) = v12 + 472;
  *(v12 + 504) = 0;
  v13 = *a2;
  *(v12 + 512) = *a2;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
  }

  v14 = *(a2 + 3);
  *(a1 + 520) = *(a2 + 1);
  *(a1 + 536) = v14;
  *(a1 + 552) = *(a2 + 5);
  *(a1 + 568) = a3;
  *(a1 + 572) = 0;
  *(a1 + 576) = a2[7];
  *(a1 + 584) = a4;
  *(a1 + 586) = a5;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 600) = 0;
  *(a1 + 616) = 1;
  v15 = a2[9];
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_32;
  }

  v16 = (a1 + 624);
  v17 = a2[8];
  if (v15 > 0x16)
  {
    operator new();
  }

  *(a1 + 647) = v15;
  v18 = (v16 + v15);
  if (v16 <= v17 && v18 > v17)
  {
    goto LABEL_31;
  }

  if (v15)
  {
    memmove((a1 + 624), v17, v15);
  }

  *v18 = 0;
  v19 = a2[11];
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v20 = (a1 + 648);
  v21 = a2[10];
  if (v19 > 0x16)
  {
    operator new();
  }

  *(a1 + 671) = v19;
  v22 = (v20 + v19);
  if (v20 <= v21 && v22 > v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v19)
  {
    memmove((a1 + 648), v21, v19);
  }

  *v22 = 0;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 696) = a1 + 704;
  *(a1 + 720) = 44750;
  *(a1 + 724) = 0;
  *(a1 + 728) = 2;
  *(a1 + 736) = 0;
  *(a1 + 744) = a6;
  *(a1 + 746) = webrtc::Network::GetCost(a2[7], *(a1 + 520));
  *(a1 + 748) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0;
  *(a1 + 776) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = a1;
  if ((*(a1 + 647) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 632))
    {
      goto LABEL_30;
    }
  }

  else if (*(a1 + 647))
  {
    goto LABEL_30;
  }

  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  {
    if (*(a1 + 647) < 0)
    {
      operator delete(*v16);
    }

    *v16 = *__p;
    *(a1 + 640) = v32;
    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
    {
      if (*(a1 + 671) < 0)
      {
        operator delete(*v20);
      }

      *v20 = *__p;
      *(a1 + 664) = v32;
LABEL_30:
      operator new();
    }
  }

  webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/crypto_random.cc", 131, "CreateRandomString(len, &str)", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v23, v24, v25, v26, v30);
  return webrtc::Port::OnNetworkTypeChanged(v27, v28);
}

void webrtc::Port::PostDestroyIfDead(webrtc::Port *this)
{
  v1 = *(this + 100);
  if (!v1 || atomic_load_explicit((v1 + 4), memory_order_acquire) == 1)
  {
    operator new();
  }

  v2 = *(this + 100);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 4), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((v2 + 4), 1u, memory_order_relaxed);
    if (atomic_fetch_add((v2 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540](v2, 0x1000C404A09149ALL);
    }
  }

  operator new();
}

void webrtc::Port::~Port(webrtc::Port *this)
{
  *this = &unk_288299A48;
  v2 = this + 232;
  *(this + 29) = &unk_288299BC0;
  v3 = *(this + 87);
  v4 = this + 704;
  if (v3 != this + 704)
  {
    do
    {
      webrtc::Connection::Shutdown(*(v3 + 13));
      v13 = *(v3 + 13);
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v14 = *(v3 + 1);
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = *(v3 + 2);
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v4);
  }

  std::__tree<webrtc::SocketAddress>::destroy(this + 696, *(this + 88));
  *(this + 87) = v4;
  *(this + 44) = 0u;
  v9 = *(this + 100);
  if (v9)
  {
    *v9 = 0;
    if (atomic_fetch_add((v9 + 4), 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }

    *(this + 100) = 0;
  }

  *(this + 101) = 0;
  if (*(this + 792) == 1)
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/callback_list.cc", 21, "!send_in_progress_", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v5, v6, v7, v8, v43);
    webrtc::Port::~Port(v42);
  }

  v10 = *(this + 96);
  if (v10)
  {
    v11 = *(this + 97);
    v12 = *(this + 96);
    if (v11 != v10)
    {
      do
      {
        v17 = *(v11 - 8);
        if (v17)
        {
          v17(v11 - 48);
        }

        v11 -= 56;
      }

      while (v11 != v10);
      v12 = *(this + 96);
    }

    *(this + 97) = v10;
    operator delete(v12);
  }

  std::__tree<webrtc::SocketAddress>::destroy(this + 696, *(this + 88));
  v18 = *(this + 84);
  if (v18)
  {
    v19 = *(this + 85);
    v20 = *(this + 84);
    if (v19 != v18)
    {
      do
      {
        webrtc::Candidate::~Candidate((v19 - 432));
      }

      while (v19 != v18);
      v20 = *(this + 84);
    }

    *(this + 85) = v18;
    operator delete(v20);
  }

  if (*(this + 671) < 0)
  {
    operator delete(*(this + 81));
    if ((*(this + 647) & 0x80000000) == 0)
    {
LABEL_31:
      if ((*(this + 615) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }
  }

  else if ((*(this + 647) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(*(this + 78));
  if ((*(this + 615) & 0x80000000) == 0)
  {
LABEL_32:
    v21 = *(this + 64);
    if (!v21)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(*(this + 74));
  v21 = *(this + 64);
  if (!v21)
  {
    goto LABEL_40;
  }

LABEL_37:
  if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v21 + 8))(v21);
  }

LABEL_40:
  while (1)
  {
    v26 = *(this + 61);
    if (!v26)
    {
      break;
    }

    v22 = *(this + 60);
    v23 = v22[3];
    v25 = *v22;
    v24 = v22[1];
    *(v25 + 8) = v24;
    *v24 = v25;
    *(this + 61) = v26 - 1;
    operator delete(v22);
    (*(v23 + 16))(v23, this + 456);
  }

  *(this + 62) = this + 472;
  for (i = *(this + 54); i; i = *(this + 54))
  {
    v28 = *(this + 53);
    v29 = v28[3];
    v31 = *v28;
    v30 = v28[1];
    *(v31 + 8) = v30;
    *v30 = v31;
    *(this + 54) = i - 1;
    operator delete(v28);
    (*(v29 + 16))(v29, this + 400);
  }

  *(this + 55) = this + 416;
  for (j = *(this + 47); j; j = *(this + 47))
  {
    v33 = *(this + 46);
    v34 = v33[3];
    v36 = *v33;
    v35 = v33[1];
    *(v36 + 8) = v35;
    *v35 = v36;
    *(this + 47) = j - 1;
    operator delete(v33);
    (*(v34 + 16))(v34, this + 344);
  }

  *(this + 48) = this + 360;
  for (k = *(this + 40); k; k = *(this + 40))
  {
    v38 = *(this + 39);
    v39 = v38[3];
    v41 = *v38;
    v40 = v38[1];
    *(v41 + 8) = v40;
    *v40 = v41;
    *(this + 40) = k - 1;
    operator delete(v38);
    (*(v39 + 16))(v39, this + 288);
  }

  *(this + 41) = this + 304;
  *(this + 29) = &unk_28828CEE0;
  (*(this + 32))(v2);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 264, *(this + 34));

  webrtc::PortInterface::~PortInterface(this);
}

void webrtc::Port::SetIceParameters(uint64_t a1, int a2, __int128 *__src, size_t __len, __int128 *a5, size_t a6)
{
  *(a1 + 616) = a2;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_61;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  HIBYTE(v32) = __len;
  v12 = (&v31 + __len);
  if (&v31 <= __src && v12 > __src)
  {
    goto LABEL_60;
  }

  if (__len)
  {
    memmove(&v31, __src, __len);
  }

  *v12 = 0;
  v13 = (a1 + 624);
  if (*(a1 + 647) < 0)
  {
    operator delete(*v13);
  }

  *v13 = v31;
  *(a1 + 640) = v32;
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_61:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a6 > 0x16)
  {
    operator new();
  }

  HIBYTE(v32) = a6;
  v14 = (&v31 + a6);
  if (&v31 <= a5 && v14 > a5)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (a6)
  {
    memmove(&v31, a5, a6);
  }

  *v14 = 0;
  v15 = (a1 + 648);
  if (*(a1 + 671) < 0)
  {
    operator delete(*v15);
  }

  *v15 = v31;
  *(a1 + 664) = v32;
  v16 = *(a1 + 672);
  v17 = *(a1 + 680);
  if (v16 != v17)
  {
    if (__src)
    {
      v18 = 1;
    }

    else
    {
      v18 = __len == 0;
    }

    v19 = v18;
    if (a5)
    {
      v20 = 1;
    }

    else
    {
      v20 = a6 == 0;
    }

    v21 = v20;
    do
    {
      *(v16 + 24) = a2;
      if ((v19 & 1) == 0)
      {
        goto LABEL_60;
      }

      std::string::__assign_external((v16 + 160), __src, __len);
      if ((v21 & 1) == 0)
      {
        goto LABEL_60;
      }

      std::string::__assign_external((v16 + 184), a5, a6);
      v16 += 432;
    }

    while (v16 != v17);
  }

  v22 = *(a1 + 696);
  v23 = (a1 + 704);
  if (v22 != v23)
  {
    if (__src)
    {
      v24 = 1;
    }

    else
    {
      v24 = __len == 0;
    }

    v25 = v24;
    if (a5)
    {
      v26 = 1;
    }

    else
    {
      v26 = a6 == 0;
    }

    v27 = v26;
    while (1)
    {
      v28 = v22[13];
      *(v28 + 288) = a2;
      if ((v25 & 1) == 0)
      {
        break;
      }

      std::string::__assign_external((v28 + 424), __src, __len);
      if ((v27 & 1) == 0)
      {
        break;
      }

      std::string::__assign_external((v28 + 448), a5, a6);
      v29 = v22[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v22[2];
          v18 = *v30 == v22;
          v22 = v30;
        }

        while (!v18);
      }

      v22 = v30;
      if (v30 == v23)
      {
        return;
      }
    }

    goto LABEL_60;
  }
}

const void *webrtc::Port::GetConnection(webrtc::Port *this, const void **a2)
{
  v2 = *(this + 88);
  if (!v2)
  {
    return 0;
  }

  v4 = (this + 704);
  v5 = (this + 704);
  do
  {
    v6 = webrtc::SocketAddress::operator<(v2 + 4, a2);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v5 == v4 || (webrtc::SocketAddress::operator<(a2, v5 + 4) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return v5[13];
  }
}

void webrtc::Port::AddAddress(uint64_t a1, __int128 *a2, const webrtc::SocketAddress *a3, std::string *a4, _BYTE *a5, size_t a6, const std::string::value_type *a7, std::string::size_type a8, const std::string::value_type *a9, std::string::size_type a10, int a11, int a12, int a13, const std::string::value_type *a14, std::string::size_type a15, unsigned __int8 a16)
{
  v77 = *MEMORY[0x277D85DE8];
  v21 = *(a1 + 647);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v22 = *(a1 + 624);
    v21 = *(a1 + 632);
    v23 = a11;
    v24 = *(a1 + 671);
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    __src = *(a1 + 648);
    v24 = *(a1 + 656);
    goto LABEL_6;
  }

  v22 = (a1 + 624);
  v23 = a11;
  v24 = *(a1 + 671);
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __src = (a1 + 648);
LABEL_6:
  webrtc::Candidate::Candidate(&v54, *(a1 + 616), a5, a6, a2, 0, v22, v21, __src, v24, v23, *(a1 + 620), "", 0, *(*(a1 + 576) + 286), *(a1 + 746));
  if (!a7 && a8)
  {
    goto LABEL_72;
  }

  std::string::__assign_external(&v56, a7, a8);
  webrtc::Candidate::ComputeFoundation(&v54, a3, *(a1 + 736));
  v26 = *(*(a1 + 576) + 280);
  (*(**(a1 + 520) + 16))(&__p);
  v28 = v74[0].__r_.__value_.__s.__data_[7];
  if (v74[0].__r_.__value_.__s.__data_[7] < 0)
  {
    v28 = v73;
  }

  if (v28 >= 7)
  {
    p_p = __p;
    if (v74[0].__r_.__value_.__s.__data_[7] >= 0)
    {
      p_p = &__p;
    }

    v33 = *p_p;
    v34 = *(p_p + 3);
    v29 = v33 == 1650552389 && v34 == 1684368482;
    v30 = a10;
    v31 = a13;
    if ((v74[0].__r_.__value_.__s.__data_[7] & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v29 = 0;
  v30 = a10;
  v31 = a13;
  if (v74[0].__r_.__value_.__s.__data_[7] < 0)
  {
LABEL_22:
    operator delete(__p);
  }

LABEL_23:
  v36 = v31 + (v26 << 8) + webrtc::IPAddressPrecedence(v57, v27);
  if (v29)
  {
    size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v36 += 32;
    }
  }

  v57[12] = (v36 << 8) | (a12 << 24) | (256 - v55);
  if (!a9 && v30)
  {
    goto LABEL_72;
  }

  std::string::__assign_external(v66, a9, v30);
  v38 = *(a1 + 576);
  v39 = *(v38 + 151);
  if ((v39 & 0x8000000000000000) != 0)
  {
    v40 = *(v38 + 128);
    v39 = *(v38 + 136);
    if (!v40 && v39)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v40 = (v38 + 128);
  }

  std::string::__assign_external(&v58, v40, v39);
  v59 = *(*(a1 + 576) + 272);
  if (!a14)
  {
    if (a15)
    {
      goto LABEL_72;
    }
  }

  std::string::__assign_external(&v67, a14, a15);
  if (&v60 != a4)
  {
    v41 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v41 >= 0)
      {
        v42 = a4;
      }

      else
      {
        v42 = a4->__r_.__value_.__r.__words[0];
      }

      if (v41 >= 0)
      {
        v43 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = a4->__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&v60, v42, v43);
    }

    else if ((*(&a4->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(&v60, a4->__r_.__value_.__l.__data_, a4->__r_.__value_.__l.__size_);
    }

    else
    {
      v60 = *a4;
    }
  }

  v61 = a4[1].__r_.__value_.__r.__words[1];
  v62 = *(&a4[1].__r_.__value_.__r.__words[1] + 4);
  v63 = a4[2].__r_.__value_.__r.__words[1];
  v65 = a4[2].__r_.__value_.__s.__data_[16];
  v64 = HIDWORD(a4[2].__r_.__value_.__r.__words[1]);
  v44 = *(*(a1 + 576) + 120);
  if (v44 && (*(*v44 + 16))(v44) && !v57[26])
  {
    webrtc::Candidate::Candidate(&v76, &v54);
    v45 = *(a1 + 800);
    if (!v45 || atomic_load_explicit((v45 + 4), memory_order_acquire) == 1)
    {
      operator new();
    }

    v50 = *(a1 + 800);
    if (v50)
    {
      atomic_fetch_add_explicit(v50 + 1, 1u, memory_order_relaxed);
      v51 = *(a1 + 808);
      atomic_fetch_add_explicit(v50 + 1, 1u, memory_order_relaxed);
      if (atomic_fetch_add(v50 + 1, 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540](v50, 0x1000C404A09149ALL);
      }

      __p = v50;
      atomic_fetch_add_explicit(v50 + 1, 1u, memory_order_relaxed);
    }

    else
    {
      v51 = *(a1 + 808);
      __p = 0;
    }

    v73 = v51;
    webrtc::Candidate::Candidate(v74, &v76);
    v75 = a16;
    *(a1 + 760) = 1;
    v52 = *(*(a1 + 576) + 120);
    if (v52)
    {
      (*(*v52 + 16))(v52);
      v53 = __p;
      v68 = __p;
      if (!__p)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v53 = __p;
      v68 = __p;
      if (!__p)
      {
LABEL_68:
        v69 = v73;
        webrtc::Candidate::Candidate(v70, v74);
        v71 = v75;
        operator new();
      }
    }

    atomic_fetch_add_explicit(v53 + 1, 1u, memory_order_relaxed);
    goto LABEL_68;
  }

  v46 = *(a1 + 680);
  if (v46 >= *(a1 + 688))
  {
    std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>((a1 + 672));
  }

  if (!v46)
  {
LABEL_72:
    __break(1u);
  }

  *(a1 + 680) = webrtc::Candidate::Candidate(v46, &v54) + 18;
  v47 = *(a1 + 312);
  for (*(a1 + 328) = v47; v47 != a1 + 304; v47 = *(a1 + 328))
  {
    v49 = *(v47 + 16);
    v48 = v47 + 16;
    *(a1 + 328) = *(v48 - 8);
    v49(v48, a1, &v54);
  }

  (*(*a1 + 344))(a1, a16);
  webrtc::Candidate::~Candidate(&v54.__r_.__value_.__l.__data_);
}

uint64_t webrtc::Port::PostAddAddress(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = this;
    v3 = this + 416;
    this = *(this + 424);
    for (*(v2 + 440) = this; this != v3; this = *(v2 + 440))
    {
      v5 = *(this + 16);
      v4 = this + 16;
      *(v2 + 440) = *(v4 - 8);
      v5(v4, v2);
    }
  }

  return this;
}

void webrtc::Port::AddOrReplaceConnection(webrtc::Port *this, webrtc::Connection *a2)
{
  v4 = (*(*a2 + 24))(a2);
  __p[1] = 0;
  v21 = 0;
  __p[0] = 0;
  memset(v23, 0, sizeof(v23));
  v22 = &unk_28828CE50;
  if (__p != (v4 + 80))
  {
    if (*(v4 + 103) < 0)
    {
      v5 = v4;
      std::string::__assign_no_alias<true>(__p, *(v4 + 80), *(v4 + 88));
      v4 = v5;
    }

    else
    {
      *__p = *(v4 + 80);
      v21 = *(v4 + 96);
    }
  }

  *v23 = *(v4 + 112);
  *&v23[4] = *(v4 + 116);
  v24 = *(v4 + 136);
  v26 = *(v4 + 144);
  v25 = *(v4 + 140);
  v27 = a2;
  v6 = (this + 704);
  v7 = *(this + 88);
  if (!v7)
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v8 = v7;
      if (!webrtc::SocketAddress::operator<(__p, v7 + 4))
      {
        break;
      }

      v7 = *v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_15;
      }
    }

    if (!webrtc::SocketAddress::operator<(v8 + 4, __p))
    {
      break;
    }

    v6 = (v8 + 1);
    v7 = v8[1];
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v9 = *v6;
  if (!*v6)
  {
LABEL_15:
    operator new();
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(v9 + 104) != a2)
  {
    if (!webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
    {
      (*(*this + 176))(__p, this);
      v10 = (*(*a2 + 24))(a2);
      webrtc::Candidate::ToStringInternal(v10, 1, &v19);
      webrtc::webrtc_logging_impl::Log("\r\n\t\n", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc");
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v18 = *(v9 + 104);
    *(v9 + 104) = a2;
    (*(*this + 352))(this, v18);
    webrtc::Connection::Shutdown(v18);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }
}

void *webrtc::Port::OnReadPacket(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[4];
  if (*(a1 + 724) == 1)
  {
    v7 = (a1 + 136);
    result = *(a1 + 144);
    *(a1 + 160) = result;
    if (result != (a1 + 136))
    {
      do
      {
        v10 = result[2];
        v9 = result + 2;
        *(a1 + 160) = *(v9 - 1);
        v10(v9, a1, v4, v5, v6);
        result = *(a1 + 160);
      }

      while (result != v7);
    }

    return result;
  }

  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  if ((*(*a1 + 280))(a1, v4, v5, v6, &v64, &v61))
  {
    if (!v64)
    {
      goto LABEL_42;
    }

    v12 = *(v64 + 32);
    if (v12 > 0x1FF)
    {
      if (v12 == 512)
      {
        (*(*a1 + 152))(a1);
        goto LABEL_42;
      }

      if (v12 == 768 || v12 == 784)
      {
        goto LABEL_42;
      }

LABEL_19:
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        (*(*a1 + 176))(v59, a1);
        webrtc::SocketAddress::ToSensitiveString(v6, v57);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc");
        if ((v58 & 0x80000000) == 0)
        {
LABEL_15:
          if (SHIBYTE(v60) < 0)
          {
            operator delete(v59[0]);
          }

          goto LABEL_42;
        }

LABEL_14:
        operator delete(v57[0]);
        goto LABEL_15;
      }

      goto LABEL_42;
    }

    if (v12 != 1)
    {
      if (v12 == 257)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      v59[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc";
      v59[1] = 2793;
      v60 = &v54;
      v55 = "Received ";
      v56 = v59;
      webrtc::StunMethodToString(*(v64 + 32), v57);
      v27 = *(v64 + 63);
      if (v27 < 0)
      {
        v28 = *(v64 + 40);
        v27 = *(v64 + 48);
      }

      else
      {
        v28 = (v64 + 40);
      }

      webrtc::hex_encode(v28, v27, &v52);
      webrtc::SocketAddress::ToSensitiveString(v6, &__p);
      webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t\n", v29, v30, v31, v32, v33, v34, v35, *v56);
      if (v51 < 0)
      {
        operator delete(__p);
        if ((v53 & 0x80000000) == 0)
        {
LABEL_29:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

LABEL_48:
          operator delete(v57[0]);
          v36 = v64;
          v37 = a1 + 24;
          v38 = *(a1 + 32);
          *(a1 + 48) = v38;
          if (v38 == a1 + 24)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }
      }

      else if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      operator delete(v52);
      if (v58 < 0)
      {
        goto LABEL_48;
      }
    }

LABEL_30:
    v36 = v64;
    v37 = a1 + 24;
    v38 = *(a1 + 32);
    *(a1 + 48) = v38;
    if (v38 == a1 + 24)
    {
      goto LABEL_33;
    }

    do
    {
LABEL_31:
      v40 = *(v38 + 16);
      v39 = v38 + 16;
      *(a1 + 48) = *(v39 - 8);
      v40(v39, a1, v6, a3, v36, &v61, 0);
      v38 = *(a1 + 48);
    }

    while (v38 != v37);
    v36 = v64;
LABEL_33:
    if (v63 >= 0)
    {
      v41 = &v61;
    }

    else
    {
      v41 = v61;
    }

    if (v63 >= 0)
    {
      v42 = HIBYTE(v63);
    }

    else
    {
      v42 = v62;
    }

    if (((*(*a1 + 304))(a1, v6, v36, v41, v42) & 1) == 0 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc");
    }

    goto LABEL_42;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    (*(*a1 + 176))(v59, a1);
    webrtc::SocketAddress::ToSensitiveString(v6, v57);
    webrtc::webrtc_logging_impl::Log("\r\n\t\n", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/port.cc");
    if ((v58 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_42:
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v61);
  }

  result = v64;
  v64 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

std::string *webrtc::Port::AddPrflxCandidate(webrtc::Port *this, std::string *a2)
{
  result = *(this + 85);
  if (result >= *(this + 86))
  {
    std::vector<webrtc::Candidate>::__emplace_back_slow_path<webrtc::Candidate>(this + 84);
  }

  if (result)
  {
    result = webrtc::Candidate::Candidate(result, a2) + 18;
    *(this + 85) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t webrtc::Port::GetStunMessage(uint64_t a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 23) < 0)
  {
    **a6 = 0;
    *(a6 + 8) = 0;
    v6 = a3 & 3;
    if (a3 < 0x14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *a6 = 0;
    *(a6 + 23) = 0;
    v6 = a3 & 3;
    if (a3 < 0x14)
    {
      goto LABEL_13;
    }
  }

  if (!v6 && *(a2 + 1) == 1118048801)
  {
    v7 = *a2;
    if ((v7 - 2) < 2 || v7 == 4099)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  result = 0;
  if (a3 >= 0x1C && !v6)
  {
    if (*(a2 + 1) != 1118048801)
    {
      return 0;
    }

    v10 = a2 + a3;
    if (*(a2 + a3 - 8) != 10368 || *(v10 - 3) != 1024)
    {
      return 0;
    }

    v11 = *(v10 - 1);
    {
      v17 = a3;
      v18 = a2;
      a2 = v18;
      a3 = v17;
      if (v19)
      {
        webrtc::LoadCrc32Table(v19);
        webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table = webrtc::LoadCrc32Table(void)::kCrc32Table;
        a2 = v18;
        a3 = v17;
      }
    }

    v12 = bswap32(v11);
    v13 = a3 - 8;
    v14 = -1;
    v15 = a2;
    do
    {
      v16 = *v15++;
      v14 = *(webrtc::UpdateCrc32(unsigned int,void const*,unsigned long)::kCrc32Table + 4 * (v16 ^ v14)) ^ (v14 >> 8);
      --v13;
    }

    while (v13);
    if ((v14 ^ v12) != 0xACABAAB1)
    {
      return 0;
    }

LABEL_12:
    operator new();
  }

  return result;
}

void webrtc::Port::SendUnknownAttributesErrorResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 63);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = *(a2 + 40);
    v2 = *(a2 + 48);
  }

  else
  {
    v3 = (a2 + 40);
  }

  webrtc::StunMessage::StunMessage(v4, 273, v3, v2);
  operator new();
}

uint64_t webrtc::Port::ParseStunUsername(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      *a4 = 0;
      *(a4 + 23) = 0;
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      return 0;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  **a4 = 0;
  *(a4 + 8) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v5)
  {
    return 0;
  }

LABEL_7:
  while (1)
  {
    v6 = *v4;
    if (*(*v4 + 8) == 6)
    {
      break;
    }

    if (++v4 == v5)
    {
      return 0;
    }
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 10);
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    goto LABEL_53;
  }

  if (!*(v6 + 10))
  {
    return 0;
  }

  v12 = memchr(*(v6 + 16), 58, *(v6 + 10));
  v13 = v12 - v7;
  if (!v12 || v13 == -1)
  {
    return 0;
  }

  if (v8 >= v13)
  {
    v16 = v12 - v7;
  }

  else
  {
    v16 = v8;
  }

  if (v16 > 0x16)
  {
    operator new();
  }

  HIBYTE(v27) = v16;
  v17 = a3;
  v18 = (&__dst + v16);
  if (&__dst <= v7 && v18 > v7)
  {
    goto LABEL_53;
  }

  if (v12 != v7)
  {
    memmove(&__dst, v7, v16);
    v17 = a3;
  }

  *v18 = 0;
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    v17 = a3;
  }

  *v17 = __dst;
  *(v17 + 16) = v27;
  if (v13 >= v8)
  {
LABEL_54:
    abort();
  }

  v20 = v13 + 1;
  v21 = v7 + v20;
  if (v8 - v20 >= v8)
  {
    v22 = v8;
  }

  else
  {
    v22 = v8 - v20;
  }

  if (v22 > 0x16)
  {
    operator new();
  }

  HIBYTE(v27) = v22;
  v23 = a4;
  v24 = &__dst + v22;
  if (&__dst <= v21 && v24 > v21)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v8 != v20)
  {
    memmove(&__dst, v21, v22);
    v23 = a4;
  }

  *v24 = 0;
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
    v23 = a4;
  }

  *v23 = __dst;
  *(v23 + 16) = v27;
  return 1;
}

uint64_t webrtc::Port::MaybeIceRoleConflict(void *a1, uint64_t a2, uint64_t a3, void *__s1, uint64_t a5)
{
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  if (v6 == v7)
  {
LABEL_5:
    v9 = 0;
    v10 = 2;
    goto LABEL_6;
  }

  v8 = *(a3 + 8);
  while (*(*v8 + 8) != 32810)
  {
    v8 += 8;
    if (v8 == v7)
    {
      goto LABEL_5;
    }
  }

  v9 = *(*v8 + 16);
  v15 = *(a1 + 647);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = a1 + 78;
    if (a5 == v15)
    {
      goto LABEL_18;
    }

LABEL_28:
    v10 = 0;
    goto LABEL_6;
  }

  v16 = a1[78];
  v15 = a1[79];
  if (a5 != v15)
  {
    goto LABEL_28;
  }

LABEL_18:
  v17 = a3;
  v18 = a2;
  if (!memcmp(__s1, v16, v15))
  {
    if (v9 == (*(*a1 + 56))(a1))
    {
      return 1;
    }

    v10 = 0;
    a3 = v17;
    v6 = *(v17 + 8);
    v7 = *(v17 + 16);
    a2 = v18;
  }

  else
  {
    v10 = 0;
    a2 = v18;
    a3 = v17;
  }

LABEL_6:
  if (v6 == v7)
  {
LABEL_9:
    v11 = *(a1 + 182);
    if (v11 == 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    while (*(*v6 + 8) != 32809)
    {
      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    v9 = *(*v6 + 16);
    v10 = 1;
    v11 = *(a1 + 182);
    if (v11 == 1)
    {
LABEL_21:
      if (v10 == 1)
      {
        if (v9 < a1[92])
        {
          v19 = a1[11];
          for (a1[13] = v19; v19 != a1 + 10; v19 = a1[13])
          {
            v21 = v19[2];
            v20 = v19 + 2;
            a1[13] = *(v20 - 1);
            v21(v20, a1, a3, __s1);
          }

          return 1;
        }

LABEL_26:
        (*(*a1 + 152))(a1, a3, a2, 487, "Role Conflict", 13);
        return 0;
      }

      return 1;
    }
  }

  if (!v11 && !v10)
  {
    if (v9 < a1[92])
    {
      goto LABEL_26;
    }

    v12 = a1[11];
    for (a1[13] = v12; v12 != a1 + 10; v12 = a1[13])
    {
      v14 = v12[2];
      v13 = v12 + 2;
      a1[13] = *(v13 - 1);
      v14(v13, a1);
    }
  }

  return 1;
}