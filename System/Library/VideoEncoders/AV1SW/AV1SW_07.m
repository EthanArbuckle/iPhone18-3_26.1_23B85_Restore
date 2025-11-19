void sub_2779A3284(int16x8_t *a1, int a2, int a3, float *a4)
{
  v4 = a4;
  v8 = a3;
  v9 = a3 + 4;
  v10 = v9;
  bzero(a4 + v9 * a2, 4 * v9 + 16);
  if (a3 == 8)
  {
    if (a2 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2;
    }

    do
    {
      v15 = *a1;
      v16 = a1[1];
      a1 += 2;
      v17 = vqabsq_s16(vuzp1q_s16(v15, v16));
      *v17.i8 = vqmovn_s16(v17);
      *v4 = v17;
      v4 = (v4 + v10);
      --v14;
    }

    while (v14);
  }

  else if (a3 == 4)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = vqmovn_s16(vqabsq_s16(vqmovn_high_s32(vqmovn_s32(a1[v11]), a1[v11 + 1])));
      vst2_f32(v4, *(&v12 - 1));
      v4 += 4;
      v11 += 2;
    }

    while (v11 < a2);
  }

  else
  {
    v18 = 0;
    if (a2 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2;
    }

    do
    {
      v20 = 0;
      do
      {
        *&v4[v20 / 4] = vqmovn_high_s16(vqmovn_s16(vqabsq_s16(vuzp1q_s16(*a1, a1[1]))), vqabsq_s16(vuzp1q_s16(a1[2], a1[3])));
        v20 += 16;
        a1 += 4;
      }

      while (v20 < v8);
      *(v4 + v8) = 0.0;
      v4 = (v4 + v10);
      ++v18;
    }

    while (v18 != v19);
  }
}

uint64_t sub_2779A33AC(uint64_t result, uint64_t a2, int a3, int a4, int a5, int8x16_t *a6, int32x4_t a7, int32x4_t a8)
{
  v8 = a3 - 1;
  if (a3 == 1)
  {
    a6->i8[0] = 0;
    return result;
  }

  if (a4 > 16)
  {
    if (a4 == 17)
    {
      v10 = 16;
      v11 = 9;
      goto LABEL_16;
    }

    if (a4 == 18)
    {
      v10 = 32;
      v11 = 10;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v9 = 3;
  if ((a4 - 11) >= 2 && a4 != 4)
  {
LABEL_11:
    v9 = a4;
  }

  v10 = dword_277C3BEE4[v9];
  if (a4 > 16 || (v11 = 3, (a4 - 11) >= 2) && a4 != 4)
  {
    v11 = a4;
  }

LABEL_16:
  v12 = dword_277C3BF30[v11];
  v13 = v12 + 4;
  if (a5 == 1)
  {
    v27 = 2 * v13;
    v28 = 3 * v13;
    v29 = v13;
    if (v12 == 4)
    {
      v65 = xmmword_277BB7120;
      v66 = (result + 32);
      v67.i64[0] = 0x303030303030303;
      v67.i64[1] = 0x303030303030303;
      v68.i64[0] = 0x404040404040404;
      v68.i64[1] = 0x404040404040404;
      v69 = a6;
      v70 = v10;
      do
      {
        v71 = *(v66 - 31);
        v71.i32[1] = *(v66 - 23);
        v71.i32[2] = *(v66 - 15);
        v72 = *(v66 - 6);
        v72.i32[1] = *(v66 - 2);
        v71.i32[3] = *(v66 - 7);
        v72.i32[2] = *(v66 - 2);
        v72.i32[3] = *v66;
        v73 = *(v66 + v27 - 32);
        v73.i32[1] = *(v66 + v27 - 24);
        v74 = *(v66 + v28 - 32);
        v74.i32[1] = *(v66 + v28 - 24);
        v73.i32[2] = *(v66 + v27 - 16);
        v74.i32[2] = *(v66 + v28 - 16);
        v73.i32[3] = *(v66 + v27 - 8);
        v74.i32[3] = *(v66 + v28 - 8);
        v75 = *&v66[v29 - 8];
        v75.i32[1] = *&v66[v29 - 6];
        result = &v66[v29 - 4];
        v75.i32[2] = *result;
        v75.i32[3] = v66[v29 - 2];
        *v69++ = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(v72, v67), vminq_u8(v71, v67)), vaddq_s8(vminq_u8(v73, v67), vminq_u8(v74, v67))), vminq_u8(v75, v67)), 1uLL), v68), v65);
        v66 += 8;
        v65.i64[0] = 0x2424242424242424;
        v65.i64[1] = 0x2424242424242424;
        v70 -= 4;
      }

      while (v70);
    }

    else if (v12 == 8)
    {
      v30 = xmmword_277BB7110;
      v31 = (result + 24);
      v32.i64[0] = 0x303030303030303;
      v32.i64[1] = 0x303030303030303;
      v33.i64[0] = 0x404040404040404;
      v33.i64[1] = 0x404040404040404;
      v34 = a6;
      v35 = v10;
      do
      {
        v36 = *(v31 - 23);
        v36.i64[1] = *(v31 - 11);
        v37 = *(v31 - 12);
        v37.i64[1] = *v31;
        v38 = *(v31 + v27 - 24);
        v38.i64[1] = *(v31 + v27 - 12);
        v39 = *(v31 + v28 - 24);
        result = v31 + v28 - 12;
        v39.i64[1] = *result;
        v40 = *(v31 + v29 * 4 - 24);
        v40.i64[1] = *(v31 + v29 * 4 - 12);
        *v34++ = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(v37, v32), vminq_u8(v36, v32)), vaddq_s8(vminq_u8(v38, v32), vminq_u8(v39, v32))), vminq_u8(v40, v32)), 1uLL), v33), v30);
        v31 += 3;
        v30.i64[0] = 0x2424242424242424;
        v30.i64[1] = 0x2424242424242424;
        v35 -= 2;
      }

      while (v35);
    }

    else
    {
      v84.i64[0] = 0x1A1A1A1A1A1A1A1ALL;
      v84.i64[1] = 0x1A1A1A1A1A1A1A1ALL;
      v85.i64[0] = 0x1F1F1F1F1F1F1F1FLL;
      v85.i64[1] = 0x1F1F1F1F1F1F1F1FLL;
      v86.i64[0] = 0x303030303030303;
      v86.i64[1] = 0x303030303030303;
      v87 = a6;
      v88 = v10;
      v89.i64[0] = 0x404040404040404;
      v89.i64[1] = 0x404040404040404;
      do
      {
        v90 = 0;
        v91 = v85;
        do
        {
          v87[v90 / 0x10] = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(*(result + v13 + v90), v86), vminq_u8(*(result + v90 + 1), v86)), vaddq_s8(vminq_u8(*(result + v27 + v90), v86), vminq_u8(*(result + v28 + v90), v86))), vminq_u8(*(result + v29 * 4 + v90), v86)), 1uLL), v89), v84);
          v90 += 16;
        }

        while (v12 != v90);
        v87 = (v87 + v90);
        result += v90 + 4;
        v85.i64[0] = 0x2424242424242424;
        v85.i64[1] = 0x2424242424242424;
        v84 = v91;
        --v88;
      }

      while (v88);
    }
  }

  else if (a5)
  {
    if (v12 == 4)
    {
      v92 = (result + 17);
      v93.i64[0] = 0x303030303030303;
      v93.i64[1] = 0x303030303030303;
      v94.i64[0] = 0x404040404040404;
      v94.i64[1] = 0x404040404040404;
      v95 = a6;
      v96 = v10;
      do
      {
        v97 = *(v92 - 1);
        v97.i32[1] = *(v92 - 1);
        v98 = *(v92 - 9);
        v99 = *(v92 - 15);
        v97.i32[2] = *v92;
        v99.i32[1] = *(v92 - 7);
        v100 = v98.u64[1];
        v97.i32[3] = v92[2];
        v101 = *(v92 - 13);
        v101.i32[1] = *(v92 - 5);
        v101.i32[2] = v98.i32[3];
        v99.i32[2] = v98.i64[1] >> 16;
        v98.i32[1] = *(v92 - 1);
        v99.i32[3] = *(v92 + 9);
        v98.i32[2] = *(v92 + 7);
        v102 = *(v92 - 14);
        v102.i32[1] = *(v92 - 6);
        v98.i32[3] = *(v92 + 15);
        v102.i32[2] = v100 >> 24;
        v102.i32[3] = *(v92 + 10);
        v101.i32[3] = *(v92 + 11);
        *v95++ = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(v98, v93), vminq_u8(v97, v93)), vminq_u8(v99, v93)), vaddq_s8(vminq_u8(v102, v93), vminq_u8(v101, v93))), 1uLL), v94), xmmword_277BB7220);
        v92 += 8;
        v96 -= 4;
      }

      while (v96);
    }

    else if (v12 == 8)
    {
      v41 = result + 12;
      v42.i64[0] = 0x303030303030303;
      v42.i64[1] = 0x303030303030303;
      v43.i64[0] = 0x404040404040404;
      v43.i64[1] = 0x404040404040404;
      v44 = a6;
      v45 = v10;
      do
      {
        v46 = *(v41 - 11);
        v46.i64[1] = *(v41 + 1);
        v47 = *v41;
        v48 = *(v41 - 10);
        v47.i64[1] = *(v41 + 12);
        v48.i64[1] = *v41 >> 16;
        v49 = *(v41 - 9);
        v50 = *(v41 - 8);
        v49.i64[1] = *v41 >> 24;
        v50.i64[1] = *v41 >> 32;
        *v44++ = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(v47, v42), vminq_u8(v46, v42)), vminq_u8(v48, v42)), vaddq_s8(vminq_u8(v49, v42), vminq_u8(v50, v42))), 1uLL), v43), xmmword_277BB7210);
        v41 += 24;
        v45 -= 2;
      }

      while (v45);
    }

    else
    {
      v103.i64[0] = 0x303030303030303;
      v103.i64[1] = 0x303030303030303;
      v104.i64[0] = 0x404040404040404;
      v104.i64[1] = 0x404040404040404;
      v105 = v10;
      v106 = a6;
      do
      {
        v107 = xmmword_277BB7230;
        v108 = v12;
        do
        {
          v109 = result;
          *v106++ = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vminq_u8(*(result + v13), v103), vminq_u8(*(result + 3), v103)), vaddq_s8(vaddq_s8(vminq_u8(*(result + 1), v103), vminq_u8(*(result + 2), v103)), vminq_u8(*(result + 4), v103))), 1uLL), v104), v107);
          result += 16;
          v107.i64[0] = 0x2424242424242424;
          v107.i64[1] = 0x2424242424242424;
          v108 -= 16;
        }

        while (v108);
        result = v109 + 20;
        --v105;
      }

      while (v105);
    }
  }

  else
  {
    v14 = v12 + 5;
    v15 = 2 * v13;
    if (v12 == 8)
    {
      a7.i32[0] = 8;
      a8.i32[0] = v10;
      v51 = vdupq_lane_s32(*&vceqq_s32(a8, a7), 0);
      v52 = vdupq_lane_s32(*&vcgtq_s32(a7, a8), 0);
      v53 = vbslq_s8(v51, xmmword_277BB7150, vbslq_s8(v52, xmmword_277BB7140, xmmword_277BB7130));
      v54 = vbslq_s8(v52, xmmword_277BB7170, xmmword_277BB7160);
      v55 = (result + 24);
      v56.i64[0] = 0x303030303030303;
      v56.i64[1] = 0x303030303030303;
      v57.i64[0] = 0x404040404040404;
      v57.i64[1] = 0x404040404040404;
      v58 = a6;
      v59 = v10;
      do
      {
        v60 = *(v55 - 23);
        v60.i64[1] = *(v55 - 11);
        v61 = *(v55 - 12);
        result = v61.i64[1];
        v61.i64[1] = *v55;
        v62 = *(v55 + v14 - 24);
        v62.i64[1] = *(v55 + v14 - 12);
        v63 = *(v55 - 22);
        v64 = *(v55 + v15 - 24);
        v64.i64[1] = *(v55 + v15 - 12);
        v63.i64[1] = *(v55 - 12) >> 16;
        *v58++ = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(v61, v56), vminq_u8(v60, v56)), vminq_u8(v62, v56)), vminq_u8(v64, v56)), vminq_u8(v63, v56)), 1uLL), v57), v53);
        v55 += 3;
        v53 = v54;
        v54.i64[0] = 0x1515151515151515;
        v54.i64[1] = 0x1515151515151515;
        v59 -= 2;
      }

      while (v59);
    }

    else if (v12 == 4)
    {
      a7.i32[0] = 4;
      a8.i32[0] = v10;
      v16 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a8, a7), 0), xmmword_277BB7190, xmmword_277BB7180);
      v17 = (result + 32);
      v18.i64[0] = 0x303030303030303;
      v18.i64[1] = 0x303030303030303;
      v19.i64[0] = 0x404040404040404;
      v19.i64[1] = 0x404040404040404;
      v20 = a6;
      v21 = v10;
      do
      {
        v22 = *(v17 - 31);
        v22.i32[1] = *(v17 - 23);
        v22.i32[2] = *(v17 - 15);
        v23.i32[0] = *(v17 - 6);
        v23.i32[1] = *(v17 - 2);
        v22.i32[3] = *(v17 - 7);
        v23.i32[2] = *(v17 - 2);
        v23.i32[3] = *v17;
        v24 = *(v17 - 30);
        v24.i32[1] = *(v17 - 22);
        v25 = *(v17 + v14 - 32);
        v25.i32[1] = *(v17 + v14 - 24);
        v25.i32[2] = *(v17 + v14 - 16);
        result = v17 + v14 - 8;
        v25.i32[3] = *result;
        v24.i32[2] = *(v17 - 2) >> 16;
        v26 = *(v17 + v15 - 32);
        v26.i32[1] = *(v17 + v15 - 24);
        v24.i32[3] = *(v17 - 6);
        v26.i32[2] = *(v17 + v15 - 16);
        v26.i32[3] = *(v17 + v15 - 8);
        *v20++ = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(v23, v18), vminq_u8(v22, v18)), vminq_u8(v25, v18)), vminq_u8(v24, v18)), vminq_u8(v26, v18)), 1uLL), v19), v16);
        v17 += 8;
        v16.i64[0] = 0x1515151515151515;
        v16.i64[1] = 0x1515151515151515;
        v21 -= 4;
      }

      while (v21);
    }

    else
    {
      v76 = dword_277C3BEE4[a4];
      v77 = dword_277C3BF30[a4];
      v78 = xmmword_277BB71A0;
      v79 = xmmword_277BB71B0;
      *&v80 = 0x1515151515151515;
      *(&v80 + 1) = 0x1515151515151515;
      if (v76 == v77)
      {
        v81 = xmmword_277BB71C0;
        v82 = xmmword_277BB71D0;
        v83.i64[0] = 0x1515151515151515;
        v83.i64[1] = 0x1515151515151515;
      }

      else if (v76 >= v77)
      {
        v83.i64[0] = 0x1010101010101010;
        v83.i64[1] = 0x1010101010101010;
        v82.i64[0] = 0x1010101010101010;
        v82.i64[1] = 0x1010101010101010;
        *&v81 = 0x1010101010101010;
        *(&v81 + 1) = 0x1010101010101010;
      }

      else
      {
        v79 = xmmword_277BB71E0;
        v81 = xmmword_277BB71F0;
        v82 = xmmword_277BB7200;
        v83.i64[0] = 0x1515151515151515;
        v83.i64[1] = 0x1515151515151515;
        v78 = xmmword_277BB71E0;
        v80 = xmmword_277BB71E0;
      }

      v110 = v13;
      v111.i64[0] = 0x303030303030303;
      v111.i64[1] = 0x303030303030303;
      v112.i64[0] = 0x404040404040404;
      v112.i64[1] = 0x404040404040404;
      v113 = v83;
      v114 = v10;
      v115 = a6;
      do
      {
        v116 = 0;
        do
        {
          v115[v116 / 0x10] = vaddq_s8(vminq_u8(vrshrq_n_u8(vaddq_s8(vaddq_s8(vaddq_s8(vminq_u8(*(result + v110 + v116), v111), vminq_u8(*(result + v116 + 1), v111)), vaddq_s8(vminq_u8(*(result + v116 + 2), v111), vminq_u8(*(result + v14 + v116), v111))), vminq_u8(*(result + v15 + v116), v111)), 1uLL), v112), v82);
          v116 += 16;
          v82 = v83;
        }

        while (v12 != v116);
        v115 = (v115 + v116);
        result += v116 + 4;
        v83 = v113;
        v113.i64[0] = 0x1515151515151515;
        v113.i64[1] = 0x1515151515151515;
        v82 = v81;
        v81 = v79;
        v79 = v78;
        v78 = v80;
        --v114;
      }

      while (v114);
    }

    a6->i8[0] = 0;
  }

  if (a4 > 16)
  {
    if (a4 == 17)
    {
      v117 = 9;
    }

    else
    {
      if (a4 != 18)
      {
LABEL_70:
        v117 = a4;
        goto LABEL_71;
      }

      v117 = 10;
    }
  }

  else
  {
    v117 = 3;
    if ((a4 - 11) >= 2 && a4 != 4)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  v118 = *(a2 + 2 * v8);
  v119 = v10 << dword_277C3BE98[v117];
  if (v8 <= v119 / 8)
  {
    v120 = 1;
  }

  else if (v8 <= v119 / 4)
  {
    v120 = 2;
  }

  else
  {
    v120 = 3;
  }

  a6->i8[v118] = v120;
  return result;
}

void sub_2779A3CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, int a44, int a45, int a46, __int128 a47, uint64_t a48, uint64_t a49, char a50)
{
  v50 = MEMORY[0x28223BE20]();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  STACK[0x12638] = *MEMORY[0x277D85DE8];
  v57 = *v50;
  v58 = *(v50 + 8);
  v168 = v50;
  v166 = *(v50 + 7860);
  bzero(&STACK[0x5A0], 0x400uLL);
  bzero(&a50, 0x400uLL);
  v162 = 16 * v54;
  v60 = *(v58 + 16) - 16 * v54;
  if (v60 >= 16)
  {
    v61 = 16;
  }

  else
  {
    v61 = *(v58 + 16) - 16 * v54;
  }

  v159 = v61;
  v153 = v56;
  v59 = *(v58 + 12);
  v62 = v59 - 16 * v56;
  if (v62 >= 16)
  {
    v63 = 16;
  }

  else
  {
    v63 = v59 - 16 * v56;
  }

  v160 = v63;
  v161 = 16 * v56;
  v64 = *(v58 + 60) * 16 * v56 + 16 * v54;
  v65 = *(*(v58 + 48) + 8 * v64);
  a47 = *(v57 + 40);
  a48 = *(v57 + 56);
  v66 = *(v57 + 36);
  a44 = *(v57 + 32);
  a45 = v66;
  a46 = v66;
  v67 = *v65;
  if ((v67 - 13) > 2)
  {
    v69 = 1;
    v67 = 12;
    v68 = 1;
    goto LABEL_18;
  }

  if ((~v67 & 0xE) != 0)
  {
    v68 = 1;
LABEL_15:
    if (v62 >= 32)
    {
      v62 = 32;
    }

    v160 = v62;
    v69 = 2;
    goto LABEL_18;
  }

  if (v60 >= 32)
  {
    v60 = 32;
  }

  v159 = v60;
  v68 = 2;
  if ((~v67 & 0xD) == 0)
  {
    goto LABEL_15;
  }

  v69 = 1;
LABEL_18:
  vars0 = v58;
  v70 = sub_277AA3EF8(v58, v161, v162, &STACK[0x9A0], v67);
  v71 = v168;
  v72 = *(v168 + 7940);
  v73 = *(v168 + 7936);
  a43 = 0;
  if (*(v168 + 7872) <= 0)
  {
    v146 = v52;
    goto LABEL_144;
  }

  v74 = v70;
  v75 = 0;
  v76 = v68 + v54;
  v77 = v69 + v153;
  v78 = &STACK[0x11A0] | 0x10;
  v79 = v54 == 0;
  if (v68 + v54 == v72)
  {
    v79 = 1;
  }

  v80 = v153 == 0;
  if (v153)
  {
    v81 = -288;
  }

  else
  {
    v81 = 0;
  }

  if (!v153)
  {
    v79 = 1;
  }

  v151 = v68 + v54;
  v152 = v72;
  v82 = v76 == v72;
  v83 = v76 == v72;
  if (v82)
  {
    v80 = 1;
  }

  vars8_4 = v80;
  v150 = v69 + v153;
  v156 = &STACK[0x13F0] + 2 * (v81 - 8 * (v54 != 0));
  if (v77 == v73)
  {
    v79 = 1;
  }

  v155 = v79;
  v84 = v77 == v73 || v83;
  vars8 = v84;
  v165 = v168 + 7900;
  v164 = v168 + 7912;
  v167 = v52;
  v154 = &byte_277C3BCDE[4 * v67];
  v157 = v73;
  v158 = v54;
  do
  {
    v85 = *(v168 + 7876 + 4 * v75);
    v86 = *(v168 + 7888 + 4 * v75);
    v87 = v159 << v85;
    v88 = v160 << v86;
    v89 = v162 << v85;
    v169 = v75;
    v90 = v168 + 16 + 2608 * v75;
    v172 = *(v90 + 4);
    v173 = *(v90 + 8);
    v174 = v89;
    v175 = v161 << v86;
    v170 = *(v90 + 16);
    v171 = *(v90 + 40);
    (*(v71 + 7840))(v156, 144);
    if (!v155)
    {
      goto LABEL_69;
    }

    if (v150 == v73)
    {
      v91 = 0;
      v92 = 0;
      v93 = 144 * v88;
      do
      {
        v94 = v91;
        if (v87 >= 1)
        {
          memset_pattern16(&STACK[0x11A0] + 2 * v93 + v92 + 592, &unk_277BB7D40, 2 * v87);
        }

        v91 = 1;
        v92 = 288;
      }

      while ((v94 & 1) == 0);
    }

    else
    {
      if (v54)
      {
        goto LABEL_46;
      }

      v93 = 144 * v88;
    }

    v95 = &STACK[0x11A0] + 2 * v93 + 576;
    v96 = 2;
    do
    {
      memset_pattern16(v95, &unk_277BB7D40, 0x10uLL);
      v95 += 288;
      --v96;
    }

    while (v96);
LABEL_46:
    if (vars8)
    {
      v97 = (v78 + 2 * (v87 + 144 * v88 + 288));
      v98 = 2;
      do
      {
        memset_pattern16(v97, &unk_277BB7D40, 0x10uLL);
        v97 += 288;
        --v98;
      }

      while (v98);
    }

    if (!v153)
    {
      v99 = 0;
      v100 = 0;
      do
      {
        v101 = v99;
        if (v87 >= 1)
        {
          memset_pattern16((v78 + v100), &unk_277BB7D40, 2 * v87);
        }

        v99 = 1;
        v100 = 288;
      }

      while ((v101 & 1) == 0);
LABEL_56:
      v102 = &STACK[0x11A0];
      v103 = 2;
      do
      {
        memset_pattern16(v102, &unk_277BB7D40, 0x10uLL);
        v102 += 36;
        --v103;
      }

      while (v103);
      goto LABEL_58;
    }

    if (!v54)
    {
      goto LABEL_56;
    }

LABEL_58:
    if (vars8_4)
    {
      v104 = (v78 + 2 * v87);
      v105 = 2;
      do
      {
        memset_pattern16(v104, &unk_277BB7D40, 0x10uLL);
        v104 += 288;
        --v105;
      }

      while (v105);
    }

    if (!v54 && v88 >= 1)
    {
      v106 = 0;
      do
      {
        memset_pattern16(&STACK[0x13E0] + (v106 & 0x1FFFFFFE0), &unk_277BB7D40, 0x10uLL);
        v106 += 288;
      }

      while (288 * v88 != v106);
    }

    if (v151 == v152 && v88 >= 1)
    {
      v107 = 0;
      v108 = &STACK[0x13F0] + 2 * v87;
      do
      {
        memset_pattern16(&v108[v107 & 0x1FFFFFFE0], &unk_277BB7D40, 0x10uLL);
        v107 += 288;
      }

      while (288 * v88 != v107);
    }

LABEL_69:
    v71 = v168;
    v109 = v169;
    if (*(v168 + 7856) >= 1)
    {
      v110 = 0;
      v111 = *(&a47 + v169);
      v112 = *(&a44 + v169);
      v113 = 3 - v172;
      v114 = 3 - v173;
      v115 = (1 << (3 - v173));
      v163 = v112 * v175 + v174;
      do
      {
        v116 = *(v71 + 7868);
        if (v116 > 2)
        {
          v117 = 1;
        }

        else
        {
          v117 = 3;
        }

        if (v116 > 2)
        {
          v118 = 1;
        }

        else
        {
          v118 = 2;
        }

        if (v116 == 5)
        {
          v118 = 0;
          v119 = 0;
        }

        else
        {
          v119 = v117;
        }

        v120 = v110 >> v118;
        v121 = v119 & v110;
        if (v116 <= 2)
        {
          if (v116 == 1)
          {
            v122 = &unk_277BC0E0C;
          }

          else
          {
            if (v116 != 2)
            {
              goto LABEL_93;
            }

            v122 = &unk_277BC0E2C;
          }
        }

        else
        {
          if (v116 == 3)
          {
            v123 = &unk_277BC0E2C;
LABEL_90:
            v120 = v123[v120];
            v121 = dword_277BC0E40[v121];
            goto LABEL_93;
          }

          if (v116 == 4)
          {
            v123 = &unk_277BC0E48;
            goto LABEL_90;
          }

          if (v116 != 5)
          {
            goto LABEL_93;
          }

          v121 = 0;
          v122 = &unk_277BC0E50;
        }

        v120 = v122[v120];
LABEL_93:
        if ((*(v71 + 7972) & 1) == 0)
        {
          v127 = v154[2 * v172 + v173];
          v128 = byte_277C3CAFE[v127];
          v129 = byte_277C3CAE8[v127];
          v130 = v121 | v120;
          if ((v129 * v128) >> (3 - v173 + 3 - v172) == v74)
          {
            if (v130)
            {
              if (v121 == 3)
              {
                v121 = 4;
              }

              sub_277AE46B0(&STACK[0xA620], 0, 0x80uLL, &STACK[0x13F0], *(v165 + 4 * v169), *(v164 + 4 * v169), &STACK[0x5A0], &a43, &a50, v169, &STACK[0x9A0], v74, v120, v121, *(v71 + 7864), v166);
              v126 = off_280ABCBE0(v111 + v163, v112, &STACK[0xA620], 128, v128, v129);
            }

            else
            {
              v126 = off_280ABCBE0(v111 + v163, v112, v170 + (v171 * v175) + v174, v171, v128, v129);
            }

            goto LABEL_120;
          }

          if (v130)
          {
            if (v121 == 3)
            {
              v121 = 4;
            }

            sub_277AE46B0(&STACK[0xA620], 0, 0x80uLL, &STACK[0x13F0], *(v165 + 4 * v169), *(v164 + 4 * v169), &STACK[0x5A0], &a43, &a50, v169, &STACK[0x9A0], v74, v120, v121, *(v71 + 7864), v166);
            if (v74 >= 1)
            {
              v131 = 0;
              v132 = 0;
              while (1)
              {
                v133 = &STACK[0x9A0] + 2 * v132;
                v134 = *v133;
                v135 = v133[1];
                if (v172 != v173)
                {
                  break;
                }

                if (v132 + 3 < v74 && (v136 = &STACK[0x9A0] + 2 * (v132 + 3), v134 == *v136) && v135 + 3 == v136[1])
                {
                  v137 = 4;
                }

                else
                {
                  if (v132 + 1 >= v74)
                  {
                    break;
                  }

                  v138 = &STACK[0x9A0] + 2 * (v132 + 1);
                  if (v134 != *v138 || v135 + 1 != v138[1])
                  {
                    break;
                  }

                  v137 = 2;
                }

LABEL_117:
                v131 += off_280ABCBE0(v111 + ((v134 << v114) + v175) * v112 + ((v135 << v113) + v174), v112, &STACK[0xA620] + 128 * (v134 << v114) + (v135 << v113), 128, (v137 << v113), v115);
                v132 += v137;
                if (v132 >= v74)
                {
                  goto LABEL_121;
                }
              }

              v137 = 1;
              goto LABEL_117;
            }

LABEL_140:
            v131 = 0;
            goto LABEL_121;
          }

          if (v74 < 1)
          {
            goto LABEL_140;
          }

          v131 = 0;
          v139 = 0;
          while (2)
          {
            v140 = &STACK[0x9A0] + 2 * v139;
            v141 = *v140;
            v142 = v140[1];
            if (v172 != v173)
            {
              goto LABEL_137;
            }

            if (v139 + 3 < v74)
            {
              v143 = &STACK[0x9A0] + 2 * (v139 + 3);
              if (v141 == *v143 && v142 + 3 == v143[1])
              {
                v144 = 4;
                goto LABEL_138;
              }
            }

            if (v139 + 1 < v74 && (v145 = &STACK[0x9A0] + 2 * (v139 + 1), v141 == *v145) && v142 + 1 == v145[1])
            {
              v144 = 2;
            }

            else
            {
LABEL_137:
              v144 = 1;
            }

LABEL_138:
            v131 += off_280ABCBE0(v111 + ((v141 << v114) + v175) * v112 + ((v142 << v113) + v174), v112, v170 + ((v142 << v113) + v174) + (((v141 << v114) + v175) * v171), v171, (v144 << v113), v115);
            v139 += v144;
            if (v139 >= v74)
            {
              goto LABEL_121;
            }

            continue;
          }
        }

        v124 = 4 * v109;
        if (v121 == 3)
        {
          v121 = 4;
        }

        v125 = v71;
        sub_277AE46B0(0, &STACK[0xA620], 0x90uLL, &STACK[0x13F0], *(v165 + 4 * v109), *(v164 + 4 * v109), &STACK[0x5A0], &a43, &a50, v109, &STACK[0x9A0], v74, v120, v121, *(v71 + 7864), v166);
        v126 = (*(v125 + 7848))(v111, v112, &STACK[0xA620], &STACK[0x9A0], v74, *(v168 + 7924 + v124), v166, v175);
LABEL_120:
        v131 = v126;
LABEL_121:
        v109 = v169;
        v71 = v168;
        if (v169 > 1)
        {
          *(*(v168 + 7952) + (v167 << 9) + 8 * v110) += v131;
        }

        else
        {
          *(*(v168 + 7944 + 8 * v169) + (v167 << 9) + 8 * v110) = v131;
        }

        ++v110;
      }

      while (v110 < *(v168 + 7856));
    }

    v75 = v109 + 1;
    v73 = v157;
    v54 = v158;
    v78 = &STACK[0x11A0] | 0x10;
  }

  while (v75 < *(v71 + 7872));
  v64 = v162 + *(vars0 + 60) * v161;
  v146 = v167;
LABEL_144:
  *(*(v71 + 7960) + 4 * v146) = v64;
}

void sub_2779A4878(void *a1)
{
  if (a1)
  {
    v2 = a1[993];
    if (v2)
    {
      free(*(v2 - 8));
    }

    a1[993] = 0;
    v3 = a1[994];
    if (v3)
    {
      free(*(v3 - 8));
    }

    a1[994] = 0;
    v4 = a1[995];
    if (v4)
    {
      free(*(v4 - 8));
    }

    a1[995] = 0;
  }
}

uint64_t sub_2779A48DC(uint64_t result, int a2, int a3, double a4)
{
  v4 = *(*(result + 24696) + 72);
  v5 = *(result + 616);
  if (v5 >= 0xFF)
  {
    v6 = 255;
  }

  else
  {
    v6 = *(result + 616);
  }

  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 - 8;
  switch(v4)
  {
    case 8:
      v9 = &unk_277BFE1FA;
      goto LABEL_13;
    case 12:
      v9 = &unk_277BFE5FA;
      goto LABEL_13;
    case 10:
      v9 = &unk_277BFE3FA;
LABEL_13:
      v10 = v9[v7];
      goto LABEL_15;
  }

  v10 = -1;
LABEL_15:
  v11 = v10 >> v8;
  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  *(result + 23720) = a2 != 0;
  *(result + 23588) = v12;
  *(result + 23584) = (v5 >> 6) + 3;
  if (a3)
  {
    v13 = v11;
    v14 = (v11 * 0.00610391455 + v11 * 0.00000588217781 * v11 + 0.0995043102);
    v15 = (v11 * -0.0000179361339 + v11 * -0.0000000999613695 * v11 + 1.17022324);
    if (v14 >= 15)
    {
      v14 = 15;
    }

    v16 = v14 & ~(v14 >> 31);
    v17 = vmax_s32(vmin_s32(vmovn_s64(vcvtq_s64_f64(vaddq_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_277BB7250, v13), vmulq_n_f64(xmmword_277BB7240, v13), v13), xmmword_277BB7260))), 0x30000000FLL), 0);
  }

  else
  {
    *&a4 = (v11 * v11);
    v18 = v11;
    v19 = vdup_lane_s32(*&a4, 0);
    if ((*result & 0xFD) != 0)
    {
      v20 = llroundf(((v18 * 0.0068615) + (*&a4 * -0.0000023594)) + 0.027099);
      if (v20 >= 15)
      {
        v20 = 15;
      }

      v16 = v20 & ~(v20 >> 31);
      v17 = vmax_s32(vmin_s32(vcvt_s32_f32(vrnda_f32(vadd_f32(vmla_f32(vmul_n_f32(0x3AB769E03B62F190, v18), 0xB51AB2DAB53E74F1, v19), 0x3D1CEBA63C1157A1))), 0x30000000FLL), 0);
      v21 = (v18 * 0.00028224) + (*&a4 * 0.00000023874);
      v22 = 0.055763;
    }

    else
    {
      v23 = llroundf(((v18 * 0.0080706) + (*&a4 * 0.0000033732)) + 0.018763);
      if (v23 >= 15)
      {
        v23 = 15;
      }

      v16 = v23 & ~(v23 >> 31);
      v17 = vmax_s32(vmin_s32(vcvt_s32_f32(vrnda_f32(vadd_f32(vmla_f32(vmul_n_f32(0x3B362E5A3C533AAALL, v18), 0x3643BD1DB75B6E4ELL, v19), 0x3C0218DFBBF53B56))), 0x30000000FLL), 0);
      v21 = (v18 * 0.0003552) + (*&a4 * 0.0000032652);
      v22 = 0.0022809;
    }

    v15 = llroundf(v21 + v22);
  }

  if (v15 >= 3)
  {
    v15 = 3;
  }

  *(result + 23592) = v17.i32[1] + 4 * v16;
  *(result + 23656) = v15 & ~(v15 >> 31) | (4 * v17.i32[0]);
  if (a2)
  {
    *(result + 23596) = 0;
    *(result + 23660) = 0;
  }

  else
  {
    v24 = *(result + 568);
    if (v24)
    {
      v25 = *(result + 532);
      if (v25 >= 1)
      {
        v26 = 0;
        v27 = *(result + 536);
        v28 = v27 + 15;
        if (v27 < -15)
        {
          v28 = v27 + 30;
        }

        LODWORD(v29) = v28 >> 4;
        v30 = (v25 + 15) >> 4;
        if (v29 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v29;
        }

        do
        {
          v31 = v24;
          v32 = v29;
          if (v27 >= 1)
          {
            do
            {
              v33 = *v31;
              v31 += 16;
              *(v33 + 167) &= 0x87FFu;
              --v32;
            }

            while (v32);
          }

          v24 += 16 * *(result + 580);
          ++v26;
        }

        while (v26 != v30);
      }
    }
  }

  return result;
}

unint64_t sub_2779A4C30()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v41 = *MEMORY[0x277D85DE8];
  v13 = dword_277BC0DF0[v12];
  bzero(v40, 0x8000uLL);
  if (v2 <= 0)
  {
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }
  }

  else
  {
    v14 = 0;
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = v4;
    do
    {
      v17 = v6 + (v14 << 9);
      v18 = 0x8000000000000000;
      if (v8 >= 1)
      {
        v19 = v11;
        v20 = v10;
        v21 = v8;
        do
        {
          v22 = *v19++;
          v23 = *(v17 + 8 * v22);
          v24 = *v20++;
          v25 = v4[64 * v14 + v24] + v23;
          if (v25 < v18)
          {
            v18 = v25;
          }

          --v21;
        }

        while (v21);
      }

      v26 = 0;
      v27 = v40;
      do
      {
        v28 = *(v17 + 8 * v26);
        v29 = v16;
        v30 = v27;
        v31 = v15;
        do
        {
          v32 = *v29++;
          v33 = v32 + v28;
          if (v32 + v28 >= v18)
          {
            v33 = v18;
          }

          *v30++ += v33;
          --v31;
        }

        while (v31);
        ++v26;
        v27 += 512;
      }

      while (v26 != v15);
      ++v14;
      v16 += 64;
    }

    while (v14 != v2);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  result = 0x8000000000000000;
  v38 = v40;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*&v38[8 * i] < result)
      {
        result = *&v38[8 * i];
        v36 = v34;
        v35 = i;
      }
    }

    ++v34;
    v38 += 512;
  }

  while (v34 != v15);
  v11[v8] = v36;
  v10[v8] = v35;
  return result;
}

unint64_t sub_2779A4E00(int *a1, int a2, unint64_t *a3, int a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = dword_277BC0DF0[a5];
  memset(v22, 0, sizeof(v22));
  if (a4 <= 0)
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }
  }

  else
  {
    v6 = 0;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }

    v7 = a3;
    do
    {
      v8 = 0x8000000000000000;
      if (a2 >= 1)
      {
        v9 = a1;
        v10 = a2;
        do
        {
          v11 = *v9++;
          v12 = a3[64 * v6 + v11];
          if (v12 < v8)
          {
            v8 = v12;
          }

          --v10;
        }

        while (v10);
      }

      v13 = v22;
      v14 = v7;
      v15 = v5;
      do
      {
        v17 = *v14++;
        v16 = v17;
        if (v17 >= v8)
        {
          v16 = v8;
        }

        *v13++ += v16;
        --v15;
      }

      while (v15);
      ++v6;
      v7 += 64;
    }

    while (v6 != a4);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0x8000000000000000;
  do
  {
    if (*(v22 + v18) < v20)
    {
      v20 = *(v22 + v18);
      v19 = v18;
    }

    ++v18;
  }

  while (v5 != v18);
  a1[a2] = v19;
  return v20;
}

unint64_t sub_2779A4F6C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, int a8, int a9)
{
  if (a5 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = byte_277C3CAFE[a6];
    v12 = byte_277C42228[a6] + 2;
    v13 = a5;
    v14 = (2 * v11);
    v15 = 4 * v11;
    v16 = 2 * (2 * a2);
    do
    {
      v17 = (2 * a1 + 2 * (a9 + a8 * a2) + 2 * ((*(a4 + 2 * v9 + 1) << v12) + (*(a4 + 2 * v9) << v12) * a2));
      v18 = (a3 + 2 * (v9 << (2 * v12)));
      v19 = 0uLL;
      v20 = byte_277C3CAE8[a6];
      if ((0x4001CuLL >> a6))
      {
        do
        {
          v28 = vabdq_u16(*v18, *v17);
          v29 = vabdq_u16(*(v18 + v14), *(v17 + 2 * a2));
          v19 = vpadalq_u32(v19, vmlal_high_u16(vmlal_u16(vmlal_high_u16(vmull_u16(*v28.i8, *v28.i8), v28, v28), *v29.i8, *v29.i8), v29, v29));
          v18 = (v18 + v15);
          v17 = (v17 + v16);
          v20 -= 2;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21.i64[0] = v17->i64[0];
          v21.i64[1] = *(v17->i64 + 2 * a2);
          v22.i64[0] = *(v17->i64 + 2 * (2 * a2));
          v22.i64[1] = *(v17->i64 + 2 * a2 + v16);
          v23.i64[0] = v18->i64[0];
          v23.i64[1] = *(v18->i64 + v14);
          v24 = (v18->i64 + v14 + v14);
          v25.i64[0] = *v24;
          v25.i64[1] = *(v24 + v14);
          v18 = (v24 + v14 + v14);
          v26 = vabdq_u16(v23, v21);
          v27 = vabdq_u16(v25, v22);
          v19 = vpadalq_u32(v19, vmlal_high_u16(vmlal_u16(vmlal_high_u16(vmull_u16(*v26.i8, *v26.i8), v26, v26), *v27.i8, *v27.i8), v27, v27));
          v17 = (v17 + 2 * (4 * a2));
          v20 -= 4;
        }

        while (v20);
      }

      v10 += vaddvq_s64(v19);
      ++v9;
    }

    while (v9 != v13);
  }

  return v10 >> (2 * a7);
}

unint64_t sub_2779A50FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, int a8, int a9)
{
  if (a5 < 1)
  {
    v11 = 0;
  }

  else
  {
    v9 = a5;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v33 = a1 + a9 + a8 * a2;
    v14 = byte_277C3CAFE[a6];
    v15 = byte_277C3CAE8[a6];
    v31 = 2 * (byte_277C42228[a6] + 2);
    v32 = byte_277C42228[a6] + 2;
    if ((0x4001CuLL >> a6))
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    v30 = v16;
    do
    {
      v17 = (a4 + 2 * v12);
      v18 = *v17;
      v19 = v17[1];
      v20 = (a3 + 2 * (v12 << v31));
      v21 = (v33 + (v19 << v32) + (v18 << v32) * a2);
      if (v13 + v16 < v9 && (v22 = (a4 + 2 * (v12 + v16)), v18 == *v22) && v16 + v19 == v22[1])
      {
        v23 = 0uLL;
        v24 = 0x10 / v14;
        do
        {
          v36 = v23;
          sub_2779D885C(v21, a2, v20, v14, v14, v15);
          v23 = vaddq_s64(v25, v36);
          v21 = (v21 + v14);
          v20 = (v20 + 2 * (v15 * v14));
          --v24;
        }

        while (v24);
        v9 = a5;
        v26 = 0x10 / v14;
      }

      else
      {
        sub_2779D885C(v21, a2, (a3 + 2 * (v12 << v31)), v14, v14, v15);
        v26 = 1;
      }

      v11 += vaddvq_s64(v23);
      v13 += v26;
      v12 += v26;
      v16 = v30;
    }

    while (v12 < v9);
  }

  return v11 >> (2 * a7);
}

uint64_t sub_2779A52E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v10 = a4;
  if (a4 <= 1uLL)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = a3;
  v13 = v11;
  do
  {
    a5(a1, v12, a4);
    v12 += 4;
    a1 += 4;
    --v13;
  }

  while (v13);
  v14 = 4 * v10;
  if (a4 >= 1)
  {
    v15 = 0;
    v16 = a3;
    v17 = a2;
    do
    {
      v18 = 0;
      v19 = v16;
      do
      {
        *(v17 + v18) = *v19;
        v18 += 4;
        v19 = (v19 + v14);
      }

      while (v14 != v18);
      ++v15;
      v17 += v14;
      ++v16;
    }

    while (v15 != v10);
  }

  v20 = a2;
  v21 = a3;
  do
  {
    a5(v20, v21, a4);
    v21 += 4;
    v20 += 4;
    --v11;
  }

  while (v11);
  if (a4 >= 1)
  {
    v22 = 0;
    v23 = a3;
    v24 = a2;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        *(v24 + v25) = *v26;
        v25 += 4;
        v26 = (v26 + v14);
      }

      while (v14 != v25);
      ++v22;
      v24 += v14;
      ++v23;
    }

    while (v22 != v10);
  }

  v27 = 0;
  v28 = (a4 / 2);
  v29 = (v28 + 1);
  v30 = a2 + 4 * a4 * v28;
  v31 = 4 * a4;
  v32 = (a3 + 4);
  v33 = a3 + 4 + 8 * a4 * a4;
  v34 = a2 + 4 * v28;
  result = 8 * a4;
  v36 = a2 + (v31 + 4) * v28;
  do
  {
    v37 = 0;
    if (v27)
    {
      v38 = v27 + v28 < a4;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v40 = v32;
    v41 = v33;
    do
    {
      if (v37)
      {
        v42 = v28 + v37 < a4;
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      v44 = 0.0;
      v45 = 0.0;
      if ((v43 & v39) == 1)
      {
        v45 = *(v36 + 4 * v37);
      }

      *(v40 - 1) = *(a2 + 4 * v37) - v45;
      if (v39)
      {
        v44 = *(v30 + 4 * v37);
      }

      v46 = 0.0;
      if (v43)
      {
        v46 = *(v34 + 4 * v37);
      }

      *v40 = v44 + v46;
      if (v39)
      {
        v47 = 0.0;
        v48 = 0.0;
        if ((v43 & v39) != 0)
        {
          v48 = *(v36 + 4 * v37);
        }

        *(v41 - 1) = *(a2 + 4 * v37) + v48;
        if (v43)
        {
          v47 = *(v34 + 4 * v37);
        }

        *v41 = v47 - *(v30 + 4 * v37);
      }

      ++v37;
      v41 += 2;
      v40 += 2;
    }

    while (v29 != v37);
    ++v27;
    v30 += v31;
    v33 -= 8 * a4;
    v34 += v31;
    v32 = (v32 + result);
    a2 += v31;
    v36 += v31;
  }

  while (v27 != v29);
  return result;
}

float sub_2779A553C(float *a1, float *a2, int a3)
{
  v3 = a1[a3];
  v4 = *a1;
  *a2 = *a1 + v3;
  result = v4 - v3;
  a2[a3] = result;
  return result;
}

float sub_2779A5558(float *a1, float *a2, int a3)
{
  v3 = a1[a3];
  v4 = 2 * a3;
  v5 = a1[v4];
  v6 = a1[3 * a3];
  v7 = *a1 + v5;
  v8 = *a1 - v5;
  *a2 = v7 + (v3 + v6);
  a2[a3] = v8;
  a2[v4] = v7 - (v3 + v6);
  result = (v6 - v3) + 0.0;
  a2[3 * a3] = result;
  return result;
}

float sub_2779A55A8(float *a1, float *a2, int a3)
{
  v3 = a1[a3];
  v4 = 2 * a3;
  v5 = a1[v4];
  v6 = a1[3 * a3];
  v7 = 4 * a3;
  v8 = a1[v7];
  v9 = a1[5 * a3];
  v10 = 6 * a3;
  v11 = a1[v10];
  v12 = 7 * a3;
  v13 = a1[v12];
  v14 = *a1 + v8;
  v15 = *a1 - v8;
  v16 = v14 + (v5 + v11);
  v17 = v3 + v9;
  v18 = v3 - v9;
  v19 = v6 + v13;
  v20 = v6 - v13;
  *a2 = v16 + (v17 + v19);
  v21 = (v18 - v20) * 0.70711;
  a2[a3] = v15 + v21;
  a2[v4] = v14 - (v5 + v11);
  a2[3 * a3] = v15 - v21;
  a2[v7] = v16 - (v17 + v19);
  v22 = (v18 + v20) * 0.70711;
  a2[5 * a3] = (0.0 - (v5 - v11)) - v22;
  a2[v10] = (v19 - v17) + 0.0;
  result = (v5 - v11) - v22;
  a2[v12] = result;
  return result;
}

float sub_2779A567C(float *a1, float *a2, int a3)
{
  v3 = a1[a3];
  v4 = 2 * a3;
  v5 = a1[v4];
  v6 = a1[3 * a3];
  v7 = 4 * a3;
  v8 = a1[v7];
  v9 = a1[5 * a3];
  v10 = 6 * a3;
  v11 = a1[v10];
  v12 = 8 * a3;
  v13 = 7 * a3;
  v14 = a1[v13];
  v15 = a1[v12];
  v16 = a1[9 * a3];
  v17 = 10 * a3;
  v18 = a1[v17];
  v19 = 11 * a3;
  v20 = a1[v19];
  v21 = 12 * a3;
  v22 = a1[v21];
  v23 = 13 * a3;
  v24 = a1[v23];
  v25 = 14 * a3;
  v26 = a1[v25];
  v27 = 15 * a3;
  v28 = a1[v27];
  v29 = *a1 + v15;
  v30 = *a1 - v15;
  v31 = v8 + v22;
  v32 = v8 - v22;
  v33 = v29 + (v8 + v22);
  v34 = v29 - v31;
  v35 = v5 + v18;
  v36 = v5 - v18;
  v37 = v11 + v26;
  v38 = v11 - v26;
  v39 = v35 + v37;
  v40 = v35 - v37;
  v41 = (v36 - v38) * 0.70711;
  v42 = v30 + v41;
  v43 = (v36 + v38) * 0.70711;
  v44 = (0.0 - v32) - v43;
  v45 = v30 - v41;
  v46 = v32 - v43;
  v47 = v3 + v16;
  v48 = v3 - v16;
  v49 = v9 + v24;
  v50 = v9 - v24;
  v51 = v47 + v49;
  v52 = v47 - v49;
  v53 = v6 + v20;
  v54 = v6 - v20;
  v55 = v14 + v28;
  v56 = v14 - v28;
  v57 = v53 + v55;
  v58 = v53 - v55;
  v59 = (v54 - v56) * 0.70711;
  v60 = v48 + v59;
  v61 = (v54 + v56) * 0.70711;
  v62 = (0.0 - v50) - v61;
  v63 = v48 - v59;
  v64 = v50 - v61;
  *a2 = (v33 + v39) + (v51 + v57);
  a2[a3] = v42 + ((v60 * 0.92388) + (v62 * 0.38268));
  v65 = (v52 - v58) * 0.70711;
  a2[v4] = v34 + v65;
  a2[3 * a3] = v45 + ((v63 * 0.38268) + (v64 * 0.92388));
  a2[v7] = v33 - v39;
  a2[5 * a3] = v45 + ((0.0 - (v63 * 0.38268)) - (v64 * 0.92388));
  a2[v10] = v34 - v65;
  a2[v13] = v42 + ((0.0 - (v60 * 0.92388)) - (v62 * 0.38268));
  a2[v12] = (v33 + v39) - (v51 + v57);
  v66 = (v62 * 0.92388) - (v60 * 0.38268);
  a2[9 * a3] = v44 + v66;
  v67 = (v52 + v58) * 0.70711;
  a2[v17] = (0.0 - v40) - v67;
  v68 = (v64 * 0.38268) - (v63 * 0.92388);
  a2[v19] = v46 + v68;
  a2[v21] = (v57 - v51) + 0.0;
  a2[v23] = (0.0 - v46) + v68;
  a2[v25] = v40 - v67;
  result = (0.0 - v44) + v66;
  a2[v27] = result;
  return result;
}

float sub_2779A58C8(float *a1, float *a2, int a3)
{
  v3 = a3 << 6;
  v4 = *(a1 + v3);
  v5 = *a1 + v4;
  v6 = *a1 - v4;
  v7 = 8 * a3;
  v8 = a1[v7];
  v192 = 24 * a3;
  v9 = a1[v192];
  v10 = v8 + v9;
  v11 = v8 - v9;
  v12 = v5 + (v8 + v9);
  v13 = v5 - v10;
  v14 = 4 * a3;
  v15 = a1[v14];
  v190 = 20 * a3;
  v16 = a1[v190];
  v17 = v15 + v16;
  v18 = v15 - v16;
  v19 = 12 * a3;
  v20 = a1[v19];
  v191 = 28 * a3;
  v21 = a1[v191];
  v22 = v20 + v21;
  v23 = v20 - v21;
  v24 = v17 + v22;
  v187 = v17 - v22;
  v25 = v12 + (v17 + v22);
  v178 = v12 - v24;
  v26 = (v18 - v23) * 0.70711;
  v27 = v6 + v26;
  v28 = (v18 + v23) * 0.70711;
  v29 = v6 - v26;
  v185 = v11 - v28;
  v186 = (0.0 - v11) - v28;
  v30 = 2 * a3;
  v31 = a1[v30];
  v32 = 18 * a3;
  v33 = a1[v32];
  v34 = v31 + v33;
  v35 = v31 - v33;
  v36 = 10 * a3;
  v37 = a1[v36];
  v189 = 26 * a3;
  v38 = a1[v189];
  v39 = v37 + v38;
  v40 = v37 - v38;
  v41 = v34 + v39;
  v42 = 6 * a3;
  v43 = a1[v42];
  v44 = v34 - v39;
  v45 = 22 * a3;
  v46 = a1[v45];
  v47 = v43 + v46;
  v48 = 14 * a3;
  v49 = a1[v48];
  v188 = 30 * a3;
  v50 = a1[v188];
  v51 = v43 - v46;
  v52 = v49 + v50;
  v53 = v49 - v50;
  v54 = v47 + v52;
  v182 = v44;
  v183 = v47 - v52;
  v55 = v41 + (v47 + v52);
  v184 = v41 - v54;
  v56 = (v51 - v53) * 0.70711;
  v57 = v35 + v56;
  v58 = (v51 + v53) * 0.70711;
  v59 = (0.0 - v40) - v58;
  v163 = v59;
  v164 = v35 + v56;
  v180 = v40 - v58;
  v181 = v35 - v56;
  v171 = v25 + v55;
  v179 = v25 - v55;
  v60 = (v44 - v183) * 0.70711;
  v61 = v13 + v60;
  v156 = v13 + v60;
  v173 = v29 + ((v181 * 0.38268) + ((v40 - v58) * 0.92388));
  v176 = v29 + ((0.0 - (v181 * 0.38268)) - ((v40 - v58) * 0.92388));
  v177 = v13 - v60;
  v62 = a1[a3];
  v63 = a1[17 * a3];
  v64 = v62 + v63;
  v65 = v62 - v63;
  v66 = a1[9 * a3];
  v67 = 25 * a3;
  v68 = a1[v67];
  v69 = v66 + v68;
  v70 = v66 - v68;
  v160 = v64 + v69;
  v71 = v64 - v69;
  v72 = a1[5 * a3];
  v73 = 21 * a3;
  v74 = a1[v73];
  v75 = v72 + v74;
  v76 = v72 - v74;
  v77 = 13 * a3;
  v78 = a1[v77];
  v79 = 29 * a3;
  v80 = a1[v79];
  v81 = v78 + v80;
  v82 = v78 - v80;
  v83 = v75 + v81;
  v84 = v75 - v81;
  v85 = (v76 - v82) * 0.70711;
  v86 = v65 + v85;
  v155 = v65 + v85;
  v87 = (v76 + v82) * 0.70711;
  v88 = (0.0 - v70) - v87;
  v89 = v65 - v85;
  v90 = a1[3 * a3];
  v91 = 19 * a3;
  v92 = a1[v91];
  v168 = v89;
  v170 = v70 - v87;
  v93 = v90 + v92;
  v94 = v90 - v92;
  v95 = 11 * a3;
  v96 = 27 * a3;
  v97 = a1[v95];
  v98 = a1[v96];
  v99 = v97 + v98;
  v100 = v97 - v98;
  v101 = v93 + v99;
  v102 = v93 - v99;
  v103 = 23 * a3;
  v104 = 7 * a3;
  v105 = a1[v104];
  v106 = a1[v103];
  v107 = v105 + v106;
  v108 = v105 - v106;
  v109 = 31 * a3;
  v110 = 15 * a3;
  v111 = a1[v110];
  v112 = a1[v109];
  v113 = v111 + v112;
  v114 = v111 - v112;
  v115 = v107 + v113;
  v116 = v107 - v113;
  v117 = v108 - v114;
  v118 = v108 + v114;
  v119 = v117 * 0.70711;
  v120 = v94 + (v117 * 0.70711);
  v121 = v94 - v119;
  v122 = v118 * 0.70711;
  v123 = (0.0 - v100) - v122;
  v124 = (v123 * 0.92388) - (v120 * 0.38268);
  v125 = v102 - v116;
  v126 = v102 + v116;
  v127 = ((v100 - v122) * 0.38268) - (v121 * 0.92388);
  v174 = v160 + v83;
  v175 = v101 + v115;
  v172 = (v160 + v83) + (v101 + v115);
  *a2 = v171 + v172;
  v158 = v27 + ((v57 * 0.92388) + (v59 * 0.38268));
  v128 = v123 * 0.38268;
  v167 = v86 + ((v120 * 0.92388) + v128);
  v157 = (v88 + v124) * 0.19509;
  a2[a3] = v158 + ((v167 * 0.98079) + v157);
  v165 = (0.0 - v84) - ((v102 + v116) * 0.70711);
  v166 = v71 + ((v102 - v116) * 0.70711);
  a2[v30] = v61 + ((v166 * 0.92388) + (v165 * 0.38268));
  v129 = (v100 - v122) * 0.92388;
  v162 = v168 + ((v121 * 0.38268) + v129);
  v130 = (v170 + v127) * 0.55557;
  a2[3 * a3] = v173 + ((v162 * 0.83147) + v130);
  v159 = v160 - v83;
  v161 = v101 - v115;
  v131 = (v159 - (v101 - v115)) * 0.70711;
  a2[v14] = v178 + v131;
  v169 = v168 + ((0.0 - (v121 * 0.38268)) - v129);
  v132 = (0.0 - v170) + v127;
  a2[5 * a3] = v176 + ((v132 * 0.83147) + (v169 * 0.55557));
  v133 = v27 + ((0.0 - (v57 * 0.92388)) - (v59 * 0.38268));
  v134 = v71 - (v125 * 0.70711);
  v135 = v84 - (v126 * 0.70711);
  a2[v42] = v177 + ((v134 * 0.38268) + (v135 * 0.92388));
  v136 = v155 + ((0.0 - (v120 * 0.92388)) - v128);
  v137 = (0.0 - v88) + v124;
  a2[v104] = v133 + ((v137 * 0.98079) + (v136 * 0.19509));
  a2[v7] = v179;
  a2[9 * a3] = v133 + ((0.0 - (v136 * 0.19509)) - (v137 * 0.98079));
  a2[v36] = v177 + ((0.0 - (v134 * 0.38268)) - (v135 * 0.92388));
  a2[v95] = v176 + ((0.0 - (v169 * 0.55557)) - (v132 * 0.83147));
  a2[v19] = v178 - v131;
  a2[v77] = v173 + ((0.0 - (v162 * 0.83147)) - v130);
  v138 = (v163 * 0.92388) - (v164 * 0.38268);
  a2[v48] = v156 + ((0.0 - (v166 * 0.92388)) - (v165 * 0.38268));
  a2[v110] = v158 + ((0.0 - (v167 * 0.98079)) - v157);
  v139 = (v180 * 0.38268) - (v181 * 0.92388);
  v140 = v185 + v139;
  v141 = (0.0 - v185) + v139;
  v142 = (v182 + v183) * 0.70711;
  v143 = (0.0 - v187) - v142;
  v144 = v187 - v142;
  v145 = v186 + v138;
  v146 = (0.0 - v186) + v138;
  *(a2 + v3) = v171 - v172;
  v147 = ((v88 + v124) * 0.98079) - (v167 * 0.19509);
  a2[17 * a3] = v145 + v147;
  v148 = (v165 * 0.92388) - (v166 * 0.38268);
  a2[v32] = v143 + v148;
  v149 = ((v170 + v127) * 0.83147) - (v162 * 0.55557);
  a2[v91] = v140 + v149;
  v150 = (v159 + v161) * 0.70711;
  a2[v190] = (0.0 - v184) - v150;
  v151 = (v132 * 0.55557) - (v169 * 0.83147);
  a2[v73] = v141 + v151;
  v152 = (v135 * 0.38268) - (v134 * 0.92388);
  a2[v45] = v144 + v152;
  v153 = (v137 * 0.19509) - (v136 * 0.98079);
  a2[v103] = v146 + v153;
  a2[v192] = (v175 - v174) + 0.0;
  a2[v67] = (0.0 - v146) + v153;
  a2[v189] = (0.0 - v144) + v152;
  a2[v96] = (0.0 - v141) + v151;
  a2[v191] = v184 - v150;
  a2[v79] = (0.0 - v140) + v149;
  a2[v188] = (0.0 - v143) + v148;
  result = (0.0 - v145) + v147;
  a2[v109] = result;
  return result;
}

uint64_t sub_2779A608C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _DWORD *, uint64_t), void (*a6)(uint64_t, _DWORD *, uint64_t))
{
  v7 = a3;
  v8 = 0;
  v9 = a4 >> 1;
  v10 = 2 * a4;
  v11 = (v9 + 1);
  v12 = v9 + 1;
  v13 = (a3 + 4);
  v14 = v11;
  v15 = (a1 + 8 * v9);
  do
  {
    *(v13 - 1) = *(a1 + 4 * v8);
    *v13 = *v15;
    v15 += 2 * a4;
    v13 += a4;
    v8 += v10;
    --v14;
  }

  while (v14);
  v16 = 4 * a4;
  if (v11 < a4)
  {
    v17 = ~v9 + a4;
    v18 = (a3 + 4 * (a4 + a4 * v9) + 4);
    v19 = (a1 + 8 * (v9 + a4) + 4);
    v20 = v10 + 1;
    do
    {
      *(v18 - 1) = *(a1 + 4 * v20);
      *v18 = *v19;
      v18 = (v18 + v16);
      v19 += 2 * a4;
      v20 += v10;
      --v17;
    }

    while (v17);
  }

  v76 = 8 * a4;
  v80 = a4;
  v21 = 1;
  v22 = a3;
  v23 = a2;
  do
  {
    a6(v22, v23++, a4);
    v22 += 4;
    --v21;
  }

  while (!v21);
  v24 = 0;
  v25 = 0;
  if (v9 <= 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = v9;
  }

  v27 = (a1 + 12);
  v28 = v80;
  do
  {
    if (a4 >= 4)
    {
      v29 = (v7 + 8 + 4 * v24);
      v30 = v26 - 1;
      v31 = (a1 + 8 + 8 * v24);
      do
      {
        v32 = *v31;
        v31 += 2;
        *v29++ = v32;
        --v30;
      }

      while (v30);
      v33 = v27;
      v34 = v12;
      v35 = v26 - 1;
      do
      {
        v36 = *v33;
        v33 += 2;
        *(v7 + 4 * v34++) = v36;
        --v35;
      }

      while (v35);
    }

    ++v25;
    v24 += a4;
    v12 += a4;
    v27 = (v27 + v76);
  }

  while (v25 != v80);
  v77 = v26;
  if (a4 >= 3)
  {
    v37 = v80 - 2;
    v38 = a2 + 2;
    v39 = v7 + 8;
    do
    {
      a5(v39, v38++, a4);
      v39 += 4;
      --v37;
    }

    while (v37);
  }

  v40 = 0;
  v41 = a2;
  v42 = a2 + 1;
  do
  {
    *(v7 + v40) = *(v42 - 1);
    *(v7 + 4 * (v9 * a4) + v40) = *v42;
    v40 += 4;
    v42 = (v42 + v16);
  }

  while (v16 != v40);
  if (a4 >= 4)
  {
    v43 = (a2 + 1);
    v44 = v80 - 1 - v9;
    v45 = 4 * v9 + 4 * v80 + v7 + 4;
    v46 = (v80 - 1) * v80;
    v47 = &a2[v46 + 1 + v9];
    v48 = &a2[v44 * v80 + 2];
    v49 = 4 * v9 * v80 + 8;
    v50 = a4 + a4 * v9;
    v51 = 4 * v9 + 4;
    v52 = 4 * v11 * v80 + 4 * v9 + v7 + 4;
    v53 = &a2[v44 * v80 + 1 + v9];
    v54 = &a2[v46 + 2];
    v55 = 1;
    v56 = a4;
    do
    {
      v57 = 0;
      v58 = v43;
      do
      {
        v59 = 0.0;
        if (v57 && v57 < v9)
        {
          v59 = *(v58 + v9 * (v16 + 4));
        }

        *(v7 + 4 * v56 + 4 * v57++) = v58[1] + v59;
        v58 = (v58 + v16);
      }

      while (v11 != v57);
      if (v11 < a4)
      {
        v60 = 0;
        v61 = v45;
        v62 = v80 - 1 - v9;
        do
        {
          *v61++ = *(v48 + v60) - *(v47 + v60);
          v60 -= v16;
          --v62;
        }

        while (v62);
      }

      v63 = 0;
      v64 = a2;
      do
      {
        v65 = 0.0;
        if (v63 && v63 < v9)
        {
          v65 = *(v64 + v49);
        }

        *(v7 + 4 * v50 + 4 * v63++) = *(v64 + v51) - v65;
        v64 = (v64 + v16);
      }

      while (v11 != v63);
      if (v11 < a4)
      {
        v66 = 0;
        v67 = v52;
        v68 = v80 - 1 - v9;
        do
        {
          *v67++ = *(v54 + v66) + *(v53 + v66);
          v66 -= v16;
          --v68;
        }

        while (v68);
      }

      ++v55;
      ++v43;
      v56 += a4;
      v45 += v16;
      v47 += 4;
      v48 += 4;
      v49 += 4;
      v50 += a4;
      v51 += 4;
      v52 += v16;
      v53 += 4;
      v54 += 4;
    }

    while (v55 != v77);
  }

  if (v80 <= 1)
  {
    v28 = 1;
  }

  v69 = v7;
  v70 = a2;
  do
  {
    result = (a6)(v69, v70++, a4);
    v69 += 4;
    --v28;
  }

  while (v28);
  if (a4 >= 1)
  {
    v72 = 0;
    do
    {
      v73 = 0;
      v74 = v41;
      do
      {
        *(v7 + v73) = *v74;
        v73 += 4;
        v74 = (v74 + v16);
      }

      while (v16 != v73);
      ++v72;
      v7 += v16;
      ++v41;
    }

    while (v72 != v80);
  }

  return result;
}

float sub_2779A64D4(float *a1, float *a2, int a3)
{
  v3 = a1[a3];
  v4 = *a1;
  *a2 = *a1 + v3;
  result = v4 - v3;
  a2[a3] = result;
  return result;
}

float sub_2779A64F0(float *a1, float *a2, int a3)
{
  v3 = 2 * a3;
  v4 = a1[v3];
  v5 = *a1 + v4;
  v6 = *a1 - v4;
  v7 = a1[a3] + a1[a3];
  v8 = (0.0 - a1[3 * a3]) - a1[3 * a3];
  *a2 = v7 + v5;
  a2[a3] = v6 + v8;
  a2[v3] = v5 - v7;
  result = v6 - v8;
  a2[3 * a3] = v6 - v8;
  return result;
}

float sub_2779A6548(float *a1, float *a2, int a3)
{
  v3 = a1[a3];
  v4 = 2 * a3;
  v5 = a1[3 * a3];
  v6 = 4 * a3;
  v7 = a1[v6];
  v8 = a1[5 * a3];
  v9 = 6 * a3;
  v10 = 7 * a3;
  v11 = a1[v10];
  v12 = *a1 + v7;
  v13 = *a1 - v7;
  v14 = a1[v4] + a1[v4];
  v15 = (0.0 - a1[v9]) - a1[v9];
  v16 = v14 + v12;
  v17 = v12 - v14;
  v18 = v13 + v15;
  v19 = v13 - v15;
  v20 = v3 + v5;
  v21 = v11 - v8;
  v22 = v3 - v5;
  v23 = (0.0 - v8) - v11;
  v24 = v8 - v11;
  v25 = v5 - v3;
  v26 = (0.0 - v11) - v8;
  v27 = v20 + v20;
  v28 = v21 - v24;
  v29 = v23 - v25;
  *a2 = v27 + v16;
  a2[a3] = v18 + (((v23 - v25) + (v22 + v26)) * 0.70711);
  a2[v4] = v17 + v28;
  v30 = ((v22 - v26) - (v25 + v23)) * 0.70711;
  a2[3 * a3] = v19 - v30;
  a2[v6] = v16 - v27;
  a2[5 * a3] = v18 + ((0.0 - ((v22 + v26) * 0.70711)) - (v29 * 0.70711));
  a2[v9] = v17 - v28;
  result = v19 + v30;
  a2[v10] = result;
  return result;
}

float sub_2779A665C(float *a1, float *a2, int a3)
{
  v3 = a1[a3];
  v4 = 2 * a3;
  v5 = a1[v4];
  v6 = a1[3 * a3];
  v7 = 4 * a3;
  v8 = a1[5 * a3];
  v9 = 6 * a3;
  v10 = a1[v9];
  v11 = 8 * a3;
  v12 = 7 * a3;
  v13 = a1[v12];
  v14 = a1[v11];
  v15 = a1[9 * a3];
  v16 = 10 * a3;
  v17 = a1[v16];
  v18 = 11 * a3;
  v19 = a1[v18];
  v20 = 12 * a3;
  v21 = 13 * a3;
  v22 = a1[v21];
  v23 = 14 * a3;
  v24 = a1[v23];
  v25 = *a1 + v14;
  v26 = *a1 - v14;
  v27 = a1[v7] + a1[v7];
  v28 = 15 * a3;
  v29 = (0.0 - a1[v20]) - a1[v20];
  v30 = v27 + v25;
  v31 = v25 - v27;
  v32 = v26 + v29;
  v33 = v26 - v29;
  v34 = v5 + v10;
  v35 = v5 - v10;
  v36 = (0.0 - v17) - v24;
  v37 = v10 - v5;
  v38 = a1[v28];
  v39 = (0.0 - v24) - v17;
  v40 = v34 + v34;
  v41 = (v24 - v17) - (v17 - v24);
  v42 = v35 + v39;
  v43 = v36 - v37;
  v44 = v35 - v39;
  v45 = v37 + v36;
  v46 = v40 + v30;
  v47 = v30 - v40;
  v48 = v32 + ((v43 + v42) * 0.70711);
  v49 = v32 + ((0.0 - (v42 * 0.70711)) - (v43 * 0.70711));
  v50 = v31 + v41;
  v51 = v31 - v41;
  v52 = (v44 - v45) * 0.70711;
  v53 = v33 - v52;
  v54 = v33 + v52;
  v55 = v3 + v13;
  v56 = (0.0 - v15) - v38;
  v57 = v6 + v8;
  v58 = (0.0 - v22) - v19;
  v59 = (v6 + v8) + (v3 + v13);
  v60 = (v19 - v22) + (v38 - v15);
  v61 = (v3 + v13) - (v6 + v8);
  v62 = (v38 - v15) - (v19 - v22);
  v63 = (v3 - v13) + v58;
  v64 = v56 - (v8 - v6);
  v65 = (v3 - v13) - v58;
  v66 = (v8 - v6) + v56;
  v67 = v22 - v19;
  v68 = v6 - v8;
  v69 = (0.0 - v19) - v22;
  v70 = v15 - v38;
  v71 = v13 - v3;
  v72 = (0.0 - v38) - v15;
  v73 = v67 + (v15 - v38);
  v74 = v57 - v55;
  v75 = v67 - v70;
  v76 = v68 + v72;
  v77 = v69 - v71;
  v78 = v68 - v72;
  v79 = v71 + v69;
  v80 = v60 - v73;
  v81 = v63 + ((v77 + v76) * 0.70711);
  v82 = v64 + ((v77 - v76) * 0.70711);
  v83 = v63 + ((0.0 - (v76 * 0.70711)) - (v77 * 0.70711));
  v84 = v64 + ((v76 - v77) * 0.70711);
  v85 = v61 + v75;
  v86 = v62 - v74;
  v87 = v74 + v62;
  v88 = (v78 - v79) * 0.70711;
  v89 = (v79 + v78) * 0.70711;
  *a2 = (v59 + v59) + v46;
  v90 = v81 * 0.92388;
  v91 = v82 * 0.38268;
  a2[a3] = v48 + (v90 + v91);
  a2[v4] = v50 + (((v61 + v75) + v86) * 0.70711);
  v92 = (v66 - v89) * 0.92388;
  a2[3 * a3] = v53 + (((v65 - v88) * 0.38268) + v92);
  v93 = v66 + v89;
  a2[v7] = v47 + v80;
  v94 = (v83 * 0.38268) - (v84 * 0.92388);
  a2[5 * a3] = v49 - v94;
  v95 = ((v61 - v75) - v87) * 0.70711;
  a2[v9] = v51 - v95;
  v96 = ((v65 + v88) * 0.92388) - (v93 * 0.38268);
  a2[v12] = v54 - v96;
  a2[v11] = v46 - (v59 + v59);
  a2[9 * a3] = v48 + ((0.0 - v90) - v91);
  a2[v16] = v50 + ((0.0 - (v85 * 0.70711)) - (v86 * 0.70711));
  a2[v18] = v53 + ((0.0 - ((v65 - v88) * 0.38268)) - v92);
  a2[v20] = v47 - v80;
  a2[v21] = v49 + v94;
  a2[v23] = v51 + v95;
  result = v54 + v96;
  a2[v28] = v54 + v96;
  return result;
}

float sub_2779A699C(float *a1, float *a2, int a3)
{
  v3 = a3 << 6;
  v4 = *(a1 + v3);
  v5 = *a1 + v4;
  v6 = *a1 - v4;
  v7 = 8 * a3;
  v8 = a1[v7] + a1[v7];
  v248 = 24 * a3;
  v9 = (0.0 - a1[v248]) - a1[v248];
  v10 = v8 + v5;
  v11 = v5 - v8;
  v12 = v6 + v9;
  v13 = v6 - v9;
  v14 = 4 * a3;
  v15 = a1[v14];
  v16 = 12 * a3;
  v17 = a1[v16];
  v247 = 20 * a3;
  v18 = a1[v247];
  v19 = v15 + v17;
  v20 = a1[28 * a3];
  v21 = v15 - v17;
  v22 = (0.0 - v18) - v20;
  v23 = v17 - v15;
  v24 = (0.0 - v20) - v18;
  v25 = v19 + v19;
  v26 = (v20 - v18) - (v18 - v20);
  v27 = v22 - v23;
  v28 = v23 + v22;
  v29 = v25 + v10;
  v30 = v10 - v25;
  v31 = v12 + ((v27 + (v21 + v24)) * 0.70711);
  v32 = 2 * a3;
  v33 = v12 + ((0.0 - ((v21 + v24) * 0.70711)) - (v27 * 0.70711));
  v34 = v11 + v26;
  v35 = a1[v32];
  v242 = v11 - v26;
  v36 = ((v21 - v24) - v28) * 0.70711;
  v37 = 14 * a3;
  v38 = v13 - v36;
  v39 = a1[v37];
  v40 = v13 + v36;
  v41 = 18 * a3;
  v42 = a1[v41];
  v246 = 30 * a3;
  v43 = a1[v246];
  v44 = 6 * a3;
  v45 = a1[v44];
  v46 = 10 * a3;
  v47 = a1[v46];
  v48 = (0.0 - v42) - v43;
  v49 = v45 + v47;
  v50 = 22 * a3;
  v51 = a1[v50];
  v52 = 26 * a3;
  v53 = a1[v52];
  v54 = (0.0 - v53) - v51;
  v55 = (v45 + v47) + (v35 + v39);
  v56 = (v51 - v53) + (v43 - v42);
  v57 = (v35 + v39) - (v45 + v47);
  v58 = (v43 - v42) - (v51 - v53);
  v59 = (v35 - v39) + v54;
  v60 = v48 - (v47 - v45);
  v61 = (v35 - v39) - v54;
  v62 = (v47 - v45) + v48;
  v63 = v53 - v51;
  v64 = v45 - v47;
  v208 = a1[a3];
  v65 = (0.0 - v51) - v53;
  v66 = v42 - v43;
  v67 = 7 * a3;
  v211 = a1[v67];
  v68 = (0.0 - v43) - v42;
  v69 = v63 + v66;
  v70 = v49 - (v35 + v39);
  v71 = 15 * a3;
  v72 = v63 - v66;
  v206 = a1[v71];
  v73 = v64 + v68;
  v74 = v65 - (v39 - v35);
  v75 = v64 - v68;
  v76 = (v39 - v35) + v65;
  v249 = a1[17 * a3];
  v77 = v55 + v55;
  v78 = 19 * a3;
  v79 = 21 * a3;
  v80 = v56 - v69;
  v81 = 23 * a3;
  v82 = a1[v81];
  v83 = v59 + ((v74 + v73) * 0.70711);
  v84 = 25 * a3;
  v85 = v60 + ((v74 - v73) * 0.70711);
  v86 = v59 + ((0.0 - (v73 * 0.70711)) - (v74 * 0.70711));
  v87 = v60 + ((v73 - v74) * 0.70711);
  v88 = v58 - v70;
  v89 = v70 + v58;
  v90 = (v75 - v76) * 0.70711;
  v91 = (v76 + v75) * 0.70711;
  v255 = v77 + v29;
  v245 = v29 - v77;
  v92 = a1[v84];
  v93 = 27 * a3;
  v94 = 29 * a3;
  v95 = 31 * a3;
  v254 = v31 + ((v83 * 0.92388) + (v85 * 0.38268));
  v244 = v31 + ((0.0 - (v83 * 0.92388)) - (v85 * 0.38268));
  v96 = a1[v95];
  v97 = (v62 - v91) * 0.92388;
  v251 = v38 + (((v61 - v90) * 0.38268) + v97);
  v252 = v34 + (((v57 + v72) + v88) * 0.70711);
  v253 = v30 + v80;
  v239 = v30 - v80;
  v240 = v34 + ((0.0 - ((v57 + v72) * 0.70711)) - (v88 * 0.70711));
  v98 = (v86 * 0.38268) - (v87 * 0.92388);
  v99 = v33 - v98;
  v237 = v38 + ((0.0 - ((v61 - v90) * 0.38268)) - v97);
  v238 = v33 + v98;
  v100 = ((v57 - v72) - v89) * 0.70711;
  v234 = v99;
  v235 = v242 - v100;
  v101 = v242 + v100;
  v102 = ((v61 + v90) * 0.92388) - ((v62 + v91) * 0.38268);
  v236 = v40 - v102;
  v241 = v40 + v102;
  v243 = v101;
  v103 = (0.0 - v92) - v82;
  v104 = (v82 - v92) + (v96 - v249);
  v105 = (v96 - v249) - (v82 - v92);
  v106 = (v208 - v206) + v103;
  v107 = (v208 - v206) - v103;
  v108 = (0.0 - v249) - v96;
  v109 = a1[9 * a3];
  v110 = a1[v78];
  v111 = a1[v79];
  v112 = a1[v93];
  v113 = a1[v94];
  v114 = v108 - (v109 - v211);
  v115 = (v109 - v211) + v108;
  v116 = (v112 - v111) + (v110 - v113);
  v117 = (v112 - v111) - (v110 - v113);
  v118 = 11 * a3;
  v119 = a1[5 * a3];
  v120 = a1[v118];
  v121 = (0.0 - v113) - v110;
  v122 = (v119 - v120) + v121;
  v123 = (v119 - v120) - v121;
  v124 = 13 * a3;
  v125 = (0.0 - v111) - v112;
  v126 = a1[3 * a3];
  v127 = a1[v124];
  v128 = v125 - (v127 - v126);
  v129 = (v127 - v126) + v125;
  v224 = v116 + v104;
  v227 = v104 - v116;
  v216 = v106 + ((v128 + v122) * 0.70711);
  v231 = v106 + ((0.0 - (v122 * 0.70711)) - (v128 * 0.70711));
  v214 = v114 + ((v128 - v122) * 0.70711);
  v226 = v114 + ((v122 - v128) * 0.70711);
  v130 = (v208 + v206) - (v211 + v109);
  v232 = v130 - v117;
  v131 = v126 + v127;
  v132 = (v119 + v120) - (v126 + v127);
  v218 = v105 - v132;
  v229 = v132 + v105;
  v133 = (v123 - v129) * 0.70711;
  v221 = v130 + v117;
  v223 = v107 - v133;
  v230 = v107 + v133;
  v134 = (v129 + v123) * 0.70711;
  v220 = v115 - v134;
  v233 = v115 + v134;
  v135 = v126 - v127;
  v136 = v113 - v110;
  v137 = (0.0 - v110) - v113;
  v138 = v111 - v112;
  v139 = (0.0 - v112) - v111;
  v140 = (v119 + v120) + v131;
  v141 = v131 - (v119 + v120);
  v142 = v138 + v136;
  v143 = v136 - v138;
  v144 = v135 + v139;
  v145 = v135 - v139;
  v146 = v137 - (v120 - v119);
  v213 = (v120 - v119) + v137;
  v147 = v211 - v109;
  v148 = (0.0 - v82) - v92;
  v149 = (0.0 - v96) - v249;
  v150 = (v211 + v109) + (v208 + v206);
  v151 = (v211 + v109) - (v208 + v206);
  v152 = (v92 - v82) + (v249 - v96);
  v153 = (v92 - v82) - (v249 - v96);
  v250 = (v140 + v150) + (v140 + v150);
  *a2 = v250 + v255;
  v154 = (v211 - v109) + v149;
  v155 = v148 - (v206 - v208);
  v156 = v144 + ((v155 + v154) * 0.70711);
  v157 = v146 + ((v155 - v154) * 0.70711);
  v158 = v156 * 0.92388;
  v159 = v157 * 0.38268;
  v160 = v216 + ((v156 * 0.92388) + (v157 * 0.38268));
  v161 = v157 * 0.92388;
  v162 = v156 * 0.38268;
  v210 = v160 * 0.98079;
  v212 = (v214 + (v161 - (v156 * 0.38268))) * 0.19509;
  a2[a3] = v254 + ((v160 * 0.98079) + v212);
  v163 = v147 - v149;
  v164 = (v206 - v208) + v148;
  v165 = v150 - v140;
  v166 = v140 - v150;
  v167 = v142 + v152;
  v168 = v142 - v152;
  v169 = v144 + ((0.0 - (v154 * 0.70711)) - (v155 * 0.70711));
  v170 = v146 + ((v154 - v155) * 0.70711);
  v171 = v151 + v143;
  v172 = v163 - v164;
  v173 = v164 + v163;
  v174 = v145 - (v172 * 0.70711);
  v175 = v145 + (v172 * 0.70711);
  v176 = v173 * 0.70711;
  v177 = v213 + v176;
  v209 = v224 - v167;
  v205 = v214 + (v162 - v161);
  v207 = v216 + ((0.0 - v158) - v159);
  v204 = v221 + ((0.0 - ((v141 + v153) * 0.70711)) - ((v143 - v151) * 0.70711));
  v222 = (v221 + (((v143 - v151) + (v141 + v153)) * 0.70711)) * 0.92388;
  v225 = (v218 + (((v143 - v151) - (v141 + v153)) * 0.70711)) * 0.38268;
  a2[v32] = v252 + (v222 + v225);
  v215 = (v223 + ((v174 * 0.38268) + ((v213 - v176) * 0.92388))) * 0.83147;
  v217 = (v220 + (((v213 - v176) * 0.38268) - (v174 * 0.92388))) * 0.55557;
  a2[3 * a3] = v251 + (v215 + v217);
  v178 = v218 + (((v141 + v153) - (v143 - v151)) * 0.70711);
  v219 = v227 - v166;
  a2[v14] = v253 + (((v165 + v168) + (v227 - v166)) * 0.70711);
  v179 = v223 + ((0.0 - (v174 * 0.38268)) - ((v213 - v176) * 0.92388));
  v180 = v220 + ((v174 * 0.92388) - ((v213 - v176) * 0.38268));
  v181 = v166 + v227;
  v182 = (v169 * 0.38268) - (v170 * 0.92388);
  v183 = (v231 - v182) * 0.55557;
  v228 = (v226 + ((0.0 - (v170 * 0.38268)) - (v169 * 0.92388))) * 0.83147;
  a2[5 * a3] = v234 + (v183 + v228);
  v184 = v231 + v182;
  v185 = v226 + ((v170 * 0.38268) + (v169 * 0.92388));
  v186 = ((v141 - v153) - v171) * 0.70711;
  v187 = (v171 + (v141 - v153)) * 0.70711;
  v188 = (v232 - v186) * 0.38268;
  v189 = (v229 - v187) * 0.92388;
  a2[v44] = v235 + (v188 + v189);
  v190 = v232 + v186;
  v191 = (v175 * 0.92388) - (v177 * 0.38268);
  v192 = v230 + v191;
  v193 = (v230 - v191) * 0.19509;
  v194 = (v233 + ((0.0 - (v177 * 0.92388)) - (v175 * 0.38268))) * 0.98079;
  a2[v67] = v236 + (v193 + v194);
  v195 = v233 + ((v177 * 0.92388) + (v175 * 0.38268));
  a2[v7] = v245 + v209;
  v196 = (v207 * 0.19509) - (v205 * 0.98079);
  a2[9 * a3] = v244 - v196;
  v197 = (v204 * 0.38268) - (v178 * 0.92388);
  a2[v46] = v240 - v197;
  v198 = (v179 * 0.55557) - (v180 * 0.83147);
  a2[v118] = v237 - v198;
  v199 = ((v165 - v168) - v181) * 0.70711;
  a2[v16] = v239 - v199;
  v200 = (v184 * 0.83147) - (v185 * 0.55557);
  a2[v124] = v238 - v200;
  v201 = (v190 * 0.92388) - ((v229 + v187) * 0.38268);
  a2[v37] = v243 - v201;
  v202 = (v192 * 0.98079) - (v195 * 0.19509);
  a2[v71] = v241 - v202;
  *(a2 + v3) = v255 - v250;
  a2[17 * a3] = v254 + ((0.0 - v210) - v212);
  a2[v41] = v252 + ((0.0 - v222) - v225);
  a2[v78] = v251 + ((0.0 - v215) - v217);
  a2[v247] = v253 + ((0.0 - ((v165 + v168) * 0.70711)) - (v219 * 0.70711));
  a2[v79] = v234 + ((0.0 - v183) - v228);
  a2[v50] = v235 + ((0.0 - v188) - v189);
  a2[v81] = v236 + ((0.0 - v193) - v194);
  a2[v248] = v245 - v209;
  a2[v84] = v244 + v196;
  a2[v52] = v240 + v197;
  a2[v93] = v237 + v198;
  a2[28 * a3] = v239 + v199;
  a2[v94] = v238 + v200;
  a2[v246] = v243 + v201;
  result = v241 + v202;
  a2[v95] = v241 + v202;
  return result;
}

double sub_2779A7530(int16x4_t *a1, int32x4_t *a2, int a3, int a4, double result)
{
  v258 = *MEMORY[0x277D85DE8];
  v5 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v6 = v5 > 5;
  v7 = (1 << v5) & 0x27;
  v8 = v6 || v7 == 0;
  if (v8)
  {
    v9 = a1;
  }

  else
  {
    v9 = (a1 + 6 * a3);
  }

  if (v8)
  {
    v10 = a3;
  }

  else
  {
    v10 = -a3;
  }

  switch(a4)
  {
    case 0:
      v11 = 0;
      v12 = 2 * v10;
      do
      {
        *(&v254 + v11) = vshll_n_s16(*v9, 2uLL);
        v11 += 16;
        v9 = (v9 + v12);
      }

      while (v11 != 64);
      v13 = vsubq_s32(v254, v257);
      v14 = vdupq_n_s32(0x16A1u);
      v15 = vsubq_s32(v255, v256);
      v16 = vmulq_s32(vaddq_s32(v257, v254), v14);
      v17 = vdupq_n_s32(0xC3Fu);
      v18 = vmulq_s32(v13, v17);
      v19 = vmulq_s32(vaddq_s32(v256, v255), v14);
      v20 = vaddq_s32(v19, v16);
      v21 = vsubq_s32(v16, v19);
      v22 = vdupq_n_s32(0x1D90u);
      v23 = vmlaq_s32(vmulq_s32(v13, v22), v15, v17);
      v24 = vdupq_n_s32(0xFFFFE270);
      v25 = vmlaq_s32(v18, v15, v24);
      v26 = vrshrq_n_s32(v20, 0xDuLL);
      v27 = vrshrq_n_s32(v21, 0xDuLL);
      v28 = vrshrq_n_s32(v23, 0xDuLL);
      v29 = vrshrq_n_s32(v25, 0xDuLL);
      v30 = vtrn1q_s32(v26, v28);
      v31 = vtrn2q_s32(v26, v28);
      v32 = vtrn1q_s32(v27, v29);
      v33 = vtrn2q_s32(v27, v29);
      v34 = vzip2q_s64(v30, v32);
      v30.i64[1] = v32.i64[0];
      v35 = vzip2q_s64(v31, v33);
      v31.i64[1] = v33.i64[0];
      v36 = vaddq_s32(v35, v30);
      v37 = vsubq_s32(v30, v35);
      v38 = vaddq_s32(v34, v31);
      v39 = vsubq_s32(v31, v34);
      v40 = vmulq_s32(v36, v14);
      v41 = vmulq_s32(v37, v17);
      v42 = vmulq_s32(v38, v14);
      v43 = vaddq_s32(v42, v40);
      v44 = vsubq_s32(v40, v42);
      v45 = vmlaq_s32(vmulq_s32(v37, v22), v39, v17);
      v46 = vmlaq_s32(v41, v39, v24);
      v47 = vrshrq_n_s32(v43, 0xDuLL);
      goto LABEL_24;
    case 1:
      v136 = 0;
      v137 = 2 * v10;
      do
      {
        *(&v254 + v136) = vshll_n_s16(*v9, 2uLL);
        v136 += 16;
        v9 = (v9 + v137);
      }

      while (v136 != 64);
      goto LABEL_56;
    case 2:
      v126 = 0;
      v127 = 2 * v10;
      do
      {
        *(&v254 + v126) = vshll_n_s16(*v9, 2uLL);
        v126 += 16;
        v9 = (v9 + v127);
      }

      while (v126 != 64);
      goto LABEL_59;
    case 3:
      v132 = 0;
      v133 = 2 * v10;
      do
      {
        *(&v254 + v132) = vshll_n_s16(*v9, 2uLL);
        v132 += 16;
        v9 = (v9 + v133);
      }

      while (v132 != 64);
      goto LABEL_76;
    case 4:
      v90 = 0;
      v91 = 2 * v10;
      do
      {
        *(&v254 + v90) = vshll_n_s16(*v9, 2uLL);
        v90 += 16;
        v9 = (v9 + v91);
      }

      while (v90 != 64);
LABEL_56:
      v138 = vdupq_n_s32(0x1DB6u);
      v139 = vdupq_n_s32(0x1A21u);
      v140 = vmulq_s32(v256, v139);
      v141 = vdupq_n_s32(0x1364u);
      v142 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, vdupq_n_s32(0xA52u)), v255, v141), v257, v138);
      v143 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, v138), v255, vdupq_n_s32(0xFFFFF5AE)), v257, v141);
      v144 = vsubq_s32(v143, v140);
      v145 = vaddq_s32(vsubq_s32(v140, v142), v143);
      v146 = vrshrq_n_s32(vaddq_s32(v142, v140), 0xDuLL);
      v147 = vrshrq_n_s32(vmulq_s32(vsubq_s32(vaddq_s32(v255, v254), v257), v139), 0xDuLL);
      v148 = vrshrq_n_s32(v144, 0xDuLL);
      v149 = vrshrq_n_s32(v145, 0xDuLL);
      v150 = vtrn1q_s32(v146, v147);
      v151 = vtrn2q_s32(v146, v147);
      v152 = vtrn1q_s32(v148, v149);
      v153 = vtrn2q_s32(v148, v149);
      v154 = vzip2q_s64(v150, v152);
      v150.i64[1] = v152.i64[0];
      v155 = vzip2q_s64(v151, v153);
      v151.i64[1] = v153.i64[0];
      v156 = vaddq_s32(v155, v150);
      v157 = vsubq_s32(v150, v155);
      v158 = vaddq_s32(v154, v151);
      v159 = vsubq_s32(v151, v154);
      v160 = vdupq_n_s32(0x16A1u);
      v161 = vmulq_s32(v156, v160);
      v162 = vdupq_n_s32(0xC3Fu);
      v163 = vmulq_s32(v158, v160);
      v164 = vaddq_s32(v163, v161);
      v165 = vrshrq_n_s32(vsubq_s32(v161, v163), 0xDuLL);
      v254 = vrshrq_n_s32(v164, 0xDuLL);
      v255 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v157, vdupq_n_s32(0x1D90u)), v159, v162), 0xDuLL);
      v166 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v157, v162), v159, vdupq_n_s32(0xFFFFE270)), 0xDuLL);
      goto LABEL_78;
    case 5:
      v167 = 0;
      v168 = 2 * v10;
      do
      {
        *(&v254 + v167) = vshll_n_s16(vrev64_s16(*v9), 2uLL);
        v167 += 16;
        v9 = (v9 + v168);
      }

      while (v167 != 64);
LABEL_59:
      v169 = vsubq_s32(v254, v257);
      v170 = vsubq_s32(v255, v256);
      v171 = vdupq_n_s32(0x16A1u);
      v172 = vmulq_s32(vaddq_s32(v257, v254), v171);
      v173 = vdupq_n_s32(0xC3Fu);
      v174 = vmulq_s32(v169, v173);
      v175 = vmulq_s32(vaddq_s32(v256, v255), v171);
      v176 = vmlaq_s32(vmulq_s32(v169, vdupq_n_s32(0x1D90u)), v170, v173);
      v177 = vmlaq_s32(v174, v170, vdupq_n_s32(0xFFFFE270));
      v178 = vrshrq_n_s32(vaddq_s32(v175, v172), 0xDuLL);
      v179 = vrshrq_n_s32(vsubq_s32(v172, v175), 0xDuLL);
      v180 = vrshrq_n_s32(v176, 0xDuLL);
      v181 = vrshrq_n_s32(v177, 0xDuLL);
      v182 = vtrn1q_s32(v178, v180);
      v183 = vtrn2q_s32(v178, v180);
      goto LABEL_65;
    case 6:
      v203 = 0;
      v204 = 2 * v10;
      do
      {
        *(&v254 + v203) = vshll_n_s16(vrev64_s16(*v9), 2uLL);
        v203 += 16;
        v9 = (v9 + v204);
      }

      while (v203 != 64);
      goto LABEL_76;
    case 7:
      v134 = 0;
      v135 = 2 * v10;
      do
      {
        *(&v254 + v134) = vshll_n_s16(vrev64_s16(*v9), 2uLL);
        v134 += 16;
        v9 = (v9 + v135);
      }

      while (v134 != 64);
      goto LABEL_76;
    case 8:
      v226 = 0;
      v227 = 2 * v10;
      do
      {
        *(&v254 + v226) = vshll_n_s16(*v9, 2uLL);
        v226 += 16;
        v9 = (v9 + v227);
      }

      while (v226 != 64);
LABEL_76:
      v228 = vdupq_n_s32(0xA52u);
      v229 = vdupq_n_s32(0x1DB6u);
      v230 = vdupq_n_s32(0x1A21u);
      v231 = vmulq_s32(v256, v230);
      v232 = vdupq_n_s32(0x1364u);
      v233 = vdupq_n_s32(0xFFFFF5AE);
      v234 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, v228), v255, v232), v257, v229);
      v235 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, v229), v255, v233), v257, v232);
      v236 = vaddq_s32(v234, v231);
      v237 = vaddq_s32(vsubq_s32(v231, v234), v235);
      v238 = vrshrq_n_s32(v236, 0xDuLL);
      v239 = vrshrq_n_s32(vmulq_s32(vsubq_s32(vaddq_s32(v255, v254), v257), v230), 0xDuLL);
      v240 = vrshrq_n_s32(vsubq_s32(v235, v231), 0xDuLL);
      v241 = vrshrq_n_s32(v237, 0xDuLL);
      v242 = vtrn1q_s32(v238, v239);
      v243 = vtrn2q_s32(v238, v239);
      v244 = vtrn1q_s32(v240, v241);
      v245 = vtrn2q_s32(v240, v241);
      v246 = vzip2q_s64(v242, v244);
      v242.i64[1] = v244.i64[0];
      v247 = vzip2q_s64(v243, v245);
      v243.i64[1] = v245.i64[0];
      v248 = vaddq_s32(v243, v242);
      v249 = vmulq_s32(v246, v230);
      v250 = vmlaq_s32(vmlaq_s32(vmulq_s32(v242, v228), v243, v232), v247, v229);
      v251 = vmlaq_s32(vmlaq_s32(vmulq_s32(v242, v229), v243, v233), v247, v232);
      v199 = vmulq_s32(vsubq_s32(v248, v247), v230);
      v200 = vaddq_s32(v250, v249);
      v201 = vsubq_s32(v251, v249);
      v202 = vaddq_s32(vsubq_s32(v249, v250), v251);
      goto LABEL_77;
    case 9:
      v114 = 0;
      v115 = 2 * v10;
      do
      {
        *(&v254 + v114) = vshll_n_s16(*v9, 2uLL);
        v114 += 16;
        v9 = (v9 + v115);
      }

      while (v114 != 64);
      v116 = 0;
      v117 = vdupq_n_s32(0x16A1u);
      do
      {
        *(&v254 + v116) = vrshrq_n_s32(vmulq_s32(*(&v254 + v116), v117), 0xCuLL);
        v116 += 16;
      }

      while (v116 != 64);
      v118 = 0;
      v119 = vtrn1q_s32(v254, v255);
      v120 = vtrn2q_s32(v254, v255);
      v121 = vtrn1q_s32(v256, v257);
      v122 = vtrn2q_s32(v256, v257);
      v123 = vzip2q_s64(v119, v121);
      v119.i64[1] = v121.i64[0];
      v124 = vzip2q_s64(v120, v122);
      v120.i64[1] = v122.i64[0];
      v254 = v119;
      v255 = v120;
      v256 = v123;
      v257 = v124;
      v125 = vdupq_n_s32(0x16A1u);
      do
      {
        *(&v254 + v118) = vrshrq_n_s32(vmulq_s32(*(&v254 + v118), v125), 0xCuLL);
        v118 += 16;
      }

      while (v118 != 64);
      goto LABEL_79;
    case 10:
      v205 = 0;
      v206 = 2 * v10;
      do
      {
        *(&v254 + v205) = vshll_n_s16(*v9, 2uLL);
        v205 += 16;
        v9 = (v9 + v206);
      }

      while (v205 != 64);
      v207 = 0;
      v208 = vsubq_s32(v254, v257);
      v209 = vsubq_s32(v255, v256);
      v210 = vdupq_n_s32(0x16A1u);
      v211 = vmulq_s32(vaddq_s32(v257, v254), v210);
      v212 = vdupq_n_s32(0xC3Fu);
      v213 = vmulq_s32(v208, v212);
      v214 = vmulq_s32(vaddq_s32(v256, v255), v210);
      v215 = vmlaq_s32(vmulq_s32(v208, vdupq_n_s32(0x1D90u)), v209, v212);
      v216 = vmlaq_s32(v213, v209, vdupq_n_s32(0xFFFFE270));
      v217 = vrshrq_n_s32(vaddq_s32(v214, v211), 0xDuLL);
      v218 = vrshrq_n_s32(vsubq_s32(v211, v214), 0xDuLL);
      v219 = vrshrq_n_s32(v215, 0xDuLL);
      v220 = vrshrq_n_s32(v216, 0xDuLL);
      v221 = vtrn1q_s32(v217, v219);
      v222 = vtrn2q_s32(v217, v219);
      v223 = vtrn1q_s32(v218, v220);
      v224 = vtrn2q_s32(v218, v220);
      v225 = vzip2q_s64(v221, v223);
      v221.i64[1] = v223.i64[0];
      v223.i64[0] = v222.i64[0];
      v223.i64[1] = v224.i64[0];
      v254 = v221;
      v255 = v223;
      v256 = v225;
      v257 = vzip2q_s64(v222, v224);
      do
      {
        *(&v254 + v207) = vrshrq_n_s32(vmulq_s32(*(&v254 + v207), v210), 0xCuLL);
        v207 += 16;
      }

      while (v207 != 64);
      goto LABEL_79;
    case 11:
      v70 = 0;
      v71 = 2 * v10;
      do
      {
        *(&v254 + v70) = vshll_n_s16(*v9, 2uLL);
        v70 += 16;
        v9 = (v9 + v71);
      }

      while (v70 != 64);
      v72 = 0;
      v73 = vdupq_n_s32(0x16A1u);
      do
      {
        *(&v254 + v72) = vrshrq_n_s32(vmulq_s32(*(&v254 + v72), v73), 0xCuLL);
        v72 += 16;
      }

      while (v72 != 64);
      v74 = vtrn1q_s32(v254, v255);
      v75 = vtrn2q_s32(v254, v255);
      v76 = vtrn1q_s32(v256, v257);
      v77 = vtrn2q_s32(v256, v257);
      v78 = vzip2q_s64(v74, v76);
      v74.i64[1] = v76.i64[0];
      v79 = vzip2q_s64(v75, v77);
      v75.i64[1] = v77.i64[0];
      v80 = vaddq_s32(v79, v74);
      v81 = vsubq_s32(v74, v79);
      v82 = vaddq_s32(v78, v75);
      v83 = vsubq_s32(v75, v78);
      v84 = vdupq_n_s32(0x16A1u);
      v85 = vmulq_s32(v80, v84);
      v86 = vdupq_n_s32(0xC3Fu);
      v87 = vmulq_s32(v81, v86);
      v88 = vmulq_s32(v82, v84);
      v89 = vaddq_s32(v88, v85);
      v44 = vsubq_s32(v85, v88);
      v45 = vmlaq_s32(vmulq_s32(v81, vdupq_n_s32(0x1D90u)), v83, v86);
      v46 = vmlaq_s32(v87, v83, vdupq_n_s32(0xFFFFE270));
      v47 = vrshrq_n_s32(v89, 0xDuLL);
LABEL_24:
      v254 = v47;
      v255 = vrshrq_n_s32(v45, 0xDuLL);
      v256 = vrshrq_n_s32(v44, 0xDuLL);
      v257 = vrshrq_n_s32(v46, 0xDuLL);
      goto LABEL_79;
    case 12:
      v92 = 0;
      v93 = 2 * v10;
      do
      {
        *(&v254 + v92) = vshll_n_s16(*v9, 2uLL);
        v92 += 16;
        v9 = (v9 + v93);
      }

      while (v92 != 64);
      v94 = 0;
      v95 = vdupq_n_s32(0x1DB6u);
      v96 = vdupq_n_s32(0x1A21u);
      v97 = vmulq_s32(v256, v96);
      v98 = vdupq_n_s32(0x1364u);
      v99 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, vdupq_n_s32(0xA52u)), v255, v98), v257, v95);
      v100 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, v95), v255, vdupq_n_s32(0xFFFFF5AE)), v257, v98);
      v101 = vsubq_s32(v100, v97);
      v102 = vaddq_s32(vsubq_s32(v97, v99), v100);
      v103 = vrshrq_n_s32(vaddq_s32(v99, v97), 0xDuLL);
      v104 = vrshrq_n_s32(vmulq_s32(vsubq_s32(vaddq_s32(v255, v254), v257), v96), 0xDuLL);
      v105 = vrshrq_n_s32(v101, 0xDuLL);
      v106 = vrshrq_n_s32(v102, 0xDuLL);
      v107 = vtrn1q_s32(v103, v104);
      v108 = vtrn2q_s32(v103, v104);
      v109 = vtrn1q_s32(v105, v106);
      v110 = vtrn2q_s32(v105, v106);
      v111 = vzip2q_s64(v107, v109);
      v107.i64[1] = v109.i64[0];
      v112 = vzip2q_s64(v108, v110);
      v108.i64[1] = v110.i64[0];
      v254 = v107;
      v255 = v108;
      v256 = v111;
      v257 = v112;
      v113 = vdupq_n_s32(0x16A1u);
      do
      {
        *(&v254 + v94) = vrshrq_n_s32(vmulq_s32(*(&v254 + v94), v113), 0xCuLL);
        v94 += 16;
      }

      while (v94 != 64);
      goto LABEL_79;
    case 13:
      v184 = 0;
      v185 = 2 * v10;
      do
      {
        *(&v254 + v184) = vshll_n_s16(*v9, 2uLL);
        v184 += 16;
        v9 = (v9 + v185);
      }

      while (v184 != 64);
      v186 = 0;
      v187 = vdupq_n_s32(0x16A1u);
      do
      {
        *(&v254 + v186) = vrshrq_n_s32(vmulq_s32(*(&v254 + v186), v187), 0xCuLL);
        v186 += 16;
      }

      while (v186 != 64);
      goto LABEL_64;
    case 14:
      v48 = 0;
      v49 = 2 * v10;
      do
      {
        *(&v254 + v48) = vshll_n_s16(*v9, 2uLL);
        v48 += 16;
        v9 = (v9 + v49);
      }

      while (v48 != 64);
      v50 = 0;
      v51 = vdupq_n_s32(0x1DB6u);
      v52 = vdupq_n_s32(0x1A21u);
      v53 = vmulq_s32(v256, v52);
      v54 = vdupq_n_s32(0x1364u);
      v55 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, vdupq_n_s32(0xA52u)), v255, v54), v257, v51);
      v56 = vmlaq_s32(vmlaq_s32(vmulq_s32(v254, v51), v255, vdupq_n_s32(0xFFFFF5AE)), v257, v54);
      v57 = vsubq_s32(v56, v53);
      v58 = vaddq_s32(vsubq_s32(v53, v55), v56);
      v59 = vrshrq_n_s32(vaddq_s32(v55, v53), 0xDuLL);
      v60 = vrshrq_n_s32(vmulq_s32(vsubq_s32(vaddq_s32(v255, v254), v257), v52), 0xDuLL);
      v61 = vrshrq_n_s32(v57, 0xDuLL);
      v62 = vrshrq_n_s32(v58, 0xDuLL);
      v63 = vtrn1q_s32(v59, v60);
      v64 = vtrn2q_s32(v59, v60);
      v65 = vtrn1q_s32(v61, v62);
      v66 = vtrn2q_s32(v61, v62);
      v67 = vzip2q_s64(v63, v65);
      v63.i64[1] = v65.i64[0];
      v68 = vzip2q_s64(v64, v66);
      v64.i64[1] = v66.i64[0];
      v254 = v63;
      v255 = v64;
      v256 = v67;
      v257 = v68;
      v69 = vdupq_n_s32(0x16A1u);
      do
      {
        *(&v254 + v50) = vrshrq_n_s32(vmulq_s32(*(&v254 + v50), v69), 0xCuLL);
        v50 += 16;
      }

      while (v50 != 64);
      goto LABEL_79;
    case 15:
      v128 = 0;
      v129 = 2 * v10;
      do
      {
        *(&v254 + v128) = vshll_n_s16(vrev64_s16(*v9), 2uLL);
        v128 += 16;
        v9 = (v9 + v129);
      }

      while (v128 != 64);
      v130 = 0;
      v131 = vdupq_n_s32(0x16A1u);
      do
      {
        *(&v254 + v130) = vrshrq_n_s32(vmulq_s32(*(&v254 + v130), v131), 0xCuLL);
        v130 += 16;
      }

      while (v130 != 64);
LABEL_64:
      v179 = v256;
      v181 = v257;
      v182 = vtrn1q_s32(v254, v255);
      v183 = vtrn2q_s32(v254, v255);
LABEL_65:
      v188 = vtrn1q_s32(v179, v181);
      v189 = vzip2q_s64(v182, v188);
      v182.i64[1] = v188.i64[0];
      v190 = vtrn2q_s32(v179, v181);
      v191 = vzip2q_s64(v183, v190);
      v183.i64[1] = v190.i64[0];
      v192 = vaddq_s32(v183, v182);
      v193 = vdupq_n_s32(0x1DB6u);
      v194 = vdupq_n_s32(0x1A21u);
      v195 = vmulq_s32(v189, v194);
      v196 = vdupq_n_s32(0x1364u);
      v197 = vmlaq_s32(vmlaq_s32(vmulq_s32(v182, vdupq_n_s32(0xA52u)), v183, v196), v191, v193);
      v198 = vmlaq_s32(vmlaq_s32(vmulq_s32(v182, v193), v183, vdupq_n_s32(0xFFFFF5AE)), v191, v196);
      v199 = vmulq_s32(vsubq_s32(v192, v191), v194);
      v200 = vaddq_s32(v197, v195);
      v201 = vsubq_s32(v198, v195);
      v202 = vaddq_s32(vsubq_s32(v195, v197), v198);
LABEL_77:
      v254 = vrshrq_n_s32(v200, 0xDuLL);
      v255 = vrshrq_n_s32(v199, 0xDuLL);
      v165 = vrshrq_n_s32(v201, 0xDuLL);
      v166 = vrshrq_n_s32(v202, 0xDuLL);
LABEL_78:
      v256 = v165;
      v257 = v166;
LABEL_79:
      v252 = v255;
      *a2 = v254;
      a2[1] = v252;
      result = *v256.i64;
      v253 = v257;
      a2[2] = v256;
      a2[3] = v253;
      break;
    default:
      return result;
  }

  return result;
}

int16x4_t *sub_2779A803C(int16x4_t *result, uint64_t a2, int a3, int a4)
{
  v1583 = *MEMORY[0x277D85DE8];
  v4 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v5 = v4 > 5;
  v6 = (1 << v4) & 0x27;
  v7 = v5 || v6 == 0;
  if (v7)
  {
    v8 = result;
  }

  else
  {
    v8 = (result + 14 * a3);
  }

  if (v7)
  {
    v9 = a3;
  }

  else
  {
    v9 = -a3;
  }

  v10 = v1572;
  switch(a4)
  {
    case 0:
      v11 = 0;
      v12 = 2 * v9;
      do
      {
        v13 = *v8->i8;
        v14 = &v1573[v11];
        *v14 = vshll_n_s16(*v8, 2uLL);
        v14[8] = vshll_high_n_s16(v13, 2uLL);
        v11 += 16;
        v8 = (v8 + v12);
      }

      while (v11 != 128);
      v15 = v1573;
      v16 = 1;
      v17 = vdupq_n_s32(0x16A1u);
      v18 = vdupq_n_s32(0xFFFFE95F);
      v19 = vdupq_n_s32(0x1D90u);
      v20 = vdupq_n_s32(0xC3Fu);
      v21 = vdupq_n_s32(0xFFFFE270);
      v22 = vdupq_n_s32(0x1F63u);
      v23 = vdupq_n_s32(0x63Eu);
      v24 = vdupq_n_s32(0xFFFFE09D);
      v25 = vdupq_n_s32(0x1A9Bu);
      v26 = vdupq_n_s32(0x11C7u);
      v27 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v28 = 0;
        v29 = v16;
        for (i = 7; i != 3; --i)
        {
          *(&v1575 + v28 * 16) = vaddq_s32(v15[i], v15[v28]);
          ++v28;
        }

        v31 = 4;
        for (j = 3; j != -1; --j)
        {
          *(&v1575 + v31 * 16) = vsubq_s32(v15[j], v15[v31]);
          ++v31;
        }

        v16 = 0;
        v33 = vaddq_s32(v1578, v1575);
        v34 = vaddq_s32(v1577, v1576);
        v35 = vsubq_s32(v1576, v1577);
        v36 = vsubq_s32(v1575, v1578);
        v37 = vmulq_s32(vaddq_s32(v1580, v1581), v17);
        v38 = vmlaq_s32(vmulq_s32(v1581, v17), v1580, v18);
        v39 = vaddq_s32(v33, v34);
        v40 = vmlaq_s32(vmulq_s32(v34, v18), v33, v17);
        v41 = vmlaq_s32(vmulq_s32(v35, v20), v36, v19);
        v42 = vmlaq_s32(vmulq_s32(v35, v21), v36, v20);
        v43 = vsubq_s32(v1579, vrshrq_n_s32(v38, 0xDuLL));
        v44 = vrsraq_n_s32(v1579, v38, 0xDuLL);
        v45 = vsubq_s32(v1582, vrshrq_n_s32(v37, 0xDuLL));
        v46 = vrsraq_n_s32(v1582, v37, 0xDuLL);
        *v15 = vrshrq_n_s32(vmulq_s32(v39, v17), 0xDuLL);
        v15[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v44, v23), v46, v22), 0xDuLL);
        v15[2] = vrshrq_n_s32(v41, 0xDuLL);
        v15[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v45, v25), v43, v27), 0xDuLL);
        v15[4] = vrshrq_n_s32(v40, 0xDuLL);
        v15[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v45, v26), v43, v25), 0xDuLL);
        v15[6] = vrshrq_n_s32(v42, 0xDuLL);
        v15[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v44, v24), v46, v23), 0xDuLL);
        v15 = v1574;
      }

      while ((v29 & 1) != 0);
      for (k = 0; k != 256; k += 16)
      {
        *&v1573[k] = vrhaddq_s32(*&v1573[k], 0);
      }

      v48 = 0;
      v49 = 1;
      do
      {
        v50 = 0;
        v51 = v49;
        v52 = 1;
        v53 = &v1573[128 * v48];
        v54 = &v1571[64 * v48];
        do
        {
          v55 = &v53[64 * v50];
          v56 = v55[1];
          v57 = v55[2];
          v58 = v55[3];
          v59 = vtrn1q_s32(*v55, v56);
          v60 = vtrn2q_s32(*v55, v56);
          v61 = vtrn1q_s32(v57, v58);
          v62 = vzip2q_s64(v59, v61);
          v59.i64[1] = v61.i64[0];
          LOBYTE(v55) = v52;
          v63 = vtrn2q_s32(v57, v58);
          v64 = vzip2q_s64(v60, v63);
          v60.i64[1] = v63.i64[0];
          v65 = &v54[128 * v50];
          *v65 = v59;
          v65[1] = v60;
          v65[2] = v62;
          v65[3] = v64;
          v50 = 1;
          v52 = 0;
        }

        while ((v55 & 1) != 0);
        v49 = 0;
        v48 = 1;
      }

      while ((v51 & 1) != 0);
      v66 = v1571;
      v67 = 1;
      v68 = vdupq_n_s32(0x16A1u);
      v69 = vdupq_n_s32(0xFFFFE95F);
      v70 = vdupq_n_s32(0x1D90u);
      v71 = vdupq_n_s32(0xC3Fu);
      v72 = vdupq_n_s32(0xFFFFE270);
      v73 = vdupq_n_s32(0x1F63u);
      v74 = vdupq_n_s32(0x63Eu);
      v75 = vdupq_n_s32(0xFFFFE09D);
      v76 = vdupq_n_s32(0x1A9Bu);
      v77 = vdupq_n_s32(0x11C7u);
      v78 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v79 = 0;
        v80 = v67;
        for (m = 7; m != 3; --m)
        {
          *(&v1575 + v79 * 16) = vaddq_s32(v66[m], v66[v79]);
          ++v79;
        }

        v82 = 4;
        for (n = 3; n != -1; --n)
        {
          *(&v1575 + v82 * 16) = vsubq_s32(v66[n], v66[v82]);
          ++v82;
        }

        v67 = 0;
        v84 = vaddq_s32(v1578, v1575);
        v85 = vaddq_s32(v1577, v1576);
        v86 = vsubq_s32(v1576, v1577);
        v87 = vsubq_s32(v1575, v1578);
        v88 = vmulq_s32(vaddq_s32(v1580, v1581), v68);
        v89 = vmlaq_s32(vmulq_s32(v1581, v68), v1580, v69);
        v90 = vaddq_s32(v84, v85);
        v91 = vmlaq_s32(vmulq_s32(v85, v69), v84, v68);
        v92 = vmlaq_s32(vmulq_s32(v86, v71), v87, v70);
        v93 = vmlaq_s32(vmulq_s32(v86, v72), v87, v71);
        v94 = vsubq_s32(v1579, vrshrq_n_s32(v89, 0xDuLL));
        v95 = vrsraq_n_s32(v1579, v89, 0xDuLL);
        v96 = vsubq_s32(v1582, vrshrq_n_s32(v88, 0xDuLL));
        v97 = vrsraq_n_s32(v1582, v88, 0xDuLL);
        *v66 = vrshrq_n_s32(vmulq_s32(v90, v68), 0xDuLL);
        v66[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v95, v74), v97, v73), 0xDuLL);
        v66[2] = vrshrq_n_s32(v92, 0xDuLL);
        v66[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v96, v76), v94, v78), 0xDuLL);
        v66[4] = vrshrq_n_s32(v91, 0xDuLL);
        v66[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v96, v77), v94, v76), 0xDuLL);
        v66[6] = vrshrq_n_s32(v93, 0xDuLL);
        v66[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v95, v75), v97, v74), 0xDuLL);
        v66 = v1572;
      }

      while ((v80 & 1) != 0);
      v98 = (a2 + 16);
      v99 = 8;
      do
      {
        v100 = *(v10 - 8);
        v101 = *v10++;
        *(v98 - 1) = v100;
        *v98 = v101;
        v98 += 2;
        --v99;
      }

      while (v99);
      break;
    case 1:
      v942 = 0;
      v943 = 2 * v9;
      do
      {
        v944 = *v8->i8;
        v945 = &v1573[v942];
        *v945 = vshll_n_s16(*v8, 2uLL);
        v945[8] = vshll_high_n_s16(v944, 2uLL);
        v942 += 16;
        v8 = (v8 + v943);
      }

      while (v942 != 128);
      v946 = v1573;
      v947 = 1;
      v948 = vdupq_n_s32(0x16A1u);
      v949 = vdupq_n_s32(0xFFFFE95F);
      v950 = vdupq_n_s32(0x1D90u);
      v951 = vdupq_n_s32(0xC3Fu);
      v952 = vdupq_n_s32(0xFFFFE270);
      v953 = vdupq_n_s32(0x1FD9u);
      v954 = vdupq_n_s32(0x323u);
      v955 = vdupq_n_s32(0xFFFFE027);
      v956 = vdupq_n_s32(0x1C39u);
      v957 = vdupq_n_s32(0xF16u);
      v958 = vdupq_n_s32(0xFFFFE3C7);
      v959 = vdupq_n_s32(0x18BDu);
      v960 = vdupq_n_s32(0x144Du);
      v961 = vdupq_n_s32(0xFFFFEBB3);
      v962 = vdupq_n_s32(0x1E9Fu);
      v963 = vdupq_n_s32(0x94Au);
      v964 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v965 = v947;
        v966 = v946[1];
        v968 = v946[6];
        v967 = v946[7];
        v970 = v946[2];
        v969 = v946[3];
        v972 = v946[4];
        v971 = v946[5];
        v973 = vmlaq_s32(vmulq_s32(v969, v949), v972, v948);
        v974 = vmulq_s32(vaddq_s32(v972, v969), v949);
        v975 = vmulq_s32(vaddq_s32(v971, v970), v948);
        v976 = vmlaq_s32(vmulq_s32(v971, v949), v970, v948);
        v977 = vsubq_s32(vrshrq_n_s32(v974, 0xDuLL), v967);
        v978 = vsubq_s32(*v946, vrshrq_n_s32(v973, 0xDuLL));
        v979 = vrsraq_n_s32(*v946, v973, 0xDuLL);
        v980 = vrsraq_n_s32(v967, v974, 0xDuLL);
        v981 = vsubq_s32(vrshrq_n_s32(v976, 0xDuLL), v966);
        v982 = vrsraq_n_s32(v966, v976, 0xDuLL);
        v983 = vsubq_s32(v968, vrshrq_n_s32(v975, 0xDuLL));
        v984 = vrsraq_n_s32(v968, v975, 0xDuLL);
        v985 = vmlaq_s32(vmulq_s32(v984, v951), v981, v950);
        v986 = vmlaq_s32(vmulq_s32(v984, v952), v981, v951);
        v987 = vmlaq_s32(vmulq_s32(v982, v951), v983, v950);
        v988 = vmlaq_s32(vmulq_s32(v982, v952), v983, v951);
        v989 = vsubq_s32(vrshrq_n_s32(v988, 0xDuLL), v980);
        v990 = vsubq_s32(v979, vrshrq_n_s32(v985, 0xDuLL));
        v991 = vrsraq_n_s32(v979, v985, 0xDuLL);
        v992 = vsubq_s32(v977, vrshrq_n_s32(v986, 0xDuLL));
        v993 = vrsraq_n_s32(v977, v986, 0xDuLL);
        v994 = vsubq_s32(v978, vrshrq_n_s32(v987, 0xDuLL));
        v995 = vrsraq_n_s32(v978, v987, 0xDuLL);
        v996 = vrsraq_n_s32(v980, v988, 0xDuLL);
        *v946 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v993, v955), v991, v954), 0xDuLL);
        v946[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v996, v964), v994, v963), 0xDuLL);
        v946[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v989, v958), v995, v957), 0xDuLL);
        v946[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v990, v960), v992, v959), 0xDuLL);
        v946[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v990, v959), v992, v961), 0xDuLL);
        v946[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v989, v957), v995, v956), 0xDuLL);
        v946[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v996, v963), v994, v962), 0xDuLL);
        v946[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v993, v954), v991, v953), 0xDuLL);
        v946 = v1574;
        v947 = 0;
      }

      while ((v965 & 1) != 0);
      for (ii = 0; ii != 256; ii += 16)
      {
        *&v1573[ii] = vrhaddq_s32(*&v1573[ii], 0);
      }

      v998 = 0;
      v999 = 1;
      do
      {
        v1000 = 0;
        v1001 = v999;
        v1002 = 1;
        v1003 = &v1573[128 * v998];
        v1004 = &v1571[64 * v998];
        do
        {
          v1005 = &v1003[64 * v1000];
          v1006 = v1005[1];
          v1007 = v1005[2];
          v1008 = v1005[3];
          v1009 = vtrn1q_s32(*v1005, v1006);
          v1010 = vtrn2q_s32(*v1005, v1006);
          v1011 = vtrn1q_s32(v1007, v1008);
          v1012 = vzip2q_s64(v1009, v1011);
          v1009.i64[1] = v1011.i64[0];
          LOBYTE(v1005) = v1002;
          v1013 = vtrn2q_s32(v1007, v1008);
          v1014 = vzip2q_s64(v1010, v1013);
          v1010.i64[1] = v1013.i64[0];
          v1015 = &v1004[128 * v1000];
          *v1015 = v1009;
          v1015[1] = v1010;
          v1015[2] = v1012;
          v1015[3] = v1014;
          v1000 = 1;
          v1002 = 0;
        }

        while ((v1005 & 1) != 0);
        v999 = 0;
        v998 = 1;
      }

      while ((v1001 & 1) != 0);
      v1016 = v1571;
      v1017 = 1;
      v1018 = vdupq_n_s32(0x16A1u);
      v1019 = vdupq_n_s32(0xFFFFE95F);
      v1020 = vdupq_n_s32(0x1D90u);
      v1021 = vdupq_n_s32(0xC3Fu);
      v1022 = vdupq_n_s32(0xFFFFE270);
      v1023 = vdupq_n_s32(0x1F63u);
      v1024 = vdupq_n_s32(0x63Eu);
      v1025 = vdupq_n_s32(0xFFFFE09D);
      v1026 = vdupq_n_s32(0x1A9Bu);
      v1027 = vdupq_n_s32(0x11C7u);
      v1028 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v1029 = 0;
        v1030 = v1017;
        for (jj = 7; jj != 3; --jj)
        {
          *(&v1575 + v1029 * 16) = vaddq_s32(v1016[jj], v1016[v1029]);
          ++v1029;
        }

        v1032 = 4;
        for (kk = 3; kk != -1; --kk)
        {
          *(&v1575 + v1032 * 16) = vsubq_s32(v1016[kk], v1016[v1032]);
          ++v1032;
        }

        v1017 = 0;
        v1034 = vaddq_s32(v1578, v1575);
        v1035 = vaddq_s32(v1577, v1576);
        v1036 = vsubq_s32(v1576, v1577);
        v1037 = vsubq_s32(v1575, v1578);
        v1038 = vmulq_s32(vaddq_s32(v1580, v1581), v1018);
        v1039 = vmlaq_s32(vmulq_s32(v1581, v1018), v1580, v1019);
        v1040 = vaddq_s32(v1034, v1035);
        v1041 = vmlaq_s32(vmulq_s32(v1035, v1019), v1034, v1018);
        v1042 = vmlaq_s32(vmulq_s32(v1036, v1021), v1037, v1020);
        v1043 = vmlaq_s32(vmulq_s32(v1036, v1022), v1037, v1021);
        v1044 = vsubq_s32(v1579, vrshrq_n_s32(v1039, 0xDuLL));
        v1045 = vrsraq_n_s32(v1579, v1039, 0xDuLL);
        v1046 = vsubq_s32(v1582, vrshrq_n_s32(v1038, 0xDuLL));
        v1047 = vrsraq_n_s32(v1582, v1038, 0xDuLL);
        *v1016 = vrshrq_n_s32(vmulq_s32(v1040, v1018), 0xDuLL);
        v1016[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1045, v1024), v1047, v1023), 0xDuLL);
        v1016[2] = vrshrq_n_s32(v1042, 0xDuLL);
        v1016[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1046, v1026), v1044, v1028), 0xDuLL);
        v1016[4] = vrshrq_n_s32(v1041, 0xDuLL);
        v1016[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1046, v1027), v1044, v1026), 0xDuLL);
        v1016[6] = vrshrq_n_s32(v1043, 0xDuLL);
        v1016[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1045, v1025), v1047, v1024), 0xDuLL);
        v1016 = v1572;
      }

      while ((v1030 & 1) != 0);
      v1048 = (a2 + 16);
      v1049 = 8;
      do
      {
        v1050 = *(v10 - 8);
        v1051 = *v10++;
        *(v1048 - 1) = v1050;
        *v1048 = v1051;
        v1048 += 2;
        --v1049;
      }

      while (v1049);
      break;
    case 2:
      v489 = 0;
      v490 = 2 * v9;
      do
      {
        v491 = *v8->i8;
        v492 = &v1573[v489];
        *v492 = vshll_n_s16(*v8, 2uLL);
        v492[8] = vshll_high_n_s16(v491, 2uLL);
        v489 += 16;
        v8 = (v8 + v490);
      }

      while (v489 != 128);
      v493 = v1573;
      v494 = 1;
      v495 = vdupq_n_s32(0x16A1u);
      v496 = vdupq_n_s32(0xFFFFE95F);
      v497 = vdupq_n_s32(0x1D90u);
      v498 = vdupq_n_s32(0xC3Fu);
      v499 = vdupq_n_s32(0xFFFFE270);
      v500 = vdupq_n_s32(0x1F63u);
      v501 = vdupq_n_s32(0x63Eu);
      v502 = vdupq_n_s32(0xFFFFE09D);
      v503 = vdupq_n_s32(0x1A9Bu);
      v504 = vdupq_n_s32(0x11C7u);
      v505 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v506 = 0;
        v507 = v494;
        for (mm = 7; mm != 3; --mm)
        {
          *(&v1575 + v506 * 16) = vaddq_s32(v493[mm], v493[v506]);
          ++v506;
        }

        v509 = 4;
        for (nn = 3; nn != -1; --nn)
        {
          *(&v1575 + v509 * 16) = vsubq_s32(v493[nn], v493[v509]);
          ++v509;
        }

        v494 = 0;
        v511 = vaddq_s32(v1578, v1575);
        v512 = vaddq_s32(v1577, v1576);
        v513 = vsubq_s32(v1576, v1577);
        v514 = vsubq_s32(v1575, v1578);
        v515 = vmulq_s32(vaddq_s32(v1580, v1581), v495);
        v516 = vmlaq_s32(vmulq_s32(v1581, v495), v1580, v496);
        v517 = vaddq_s32(v511, v512);
        v518 = vmlaq_s32(vmulq_s32(v512, v496), v511, v495);
        v519 = vmlaq_s32(vmulq_s32(v513, v498), v514, v497);
        v520 = vmlaq_s32(vmulq_s32(v513, v499), v514, v498);
        v521 = vsubq_s32(v1579, vrshrq_n_s32(v516, 0xDuLL));
        v522 = vrsraq_n_s32(v1579, v516, 0xDuLL);
        v523 = vsubq_s32(v1582, vrshrq_n_s32(v515, 0xDuLL));
        v524 = vrsraq_n_s32(v1582, v515, 0xDuLL);
        *v493 = vrshrq_n_s32(vmulq_s32(v517, v495), 0xDuLL);
        v493[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v522, v501), v524, v500), 0xDuLL);
        v493[2] = vrshrq_n_s32(v519, 0xDuLL);
        v493[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v523, v503), v521, v505), 0xDuLL);
        v493[4] = vrshrq_n_s32(v518, 0xDuLL);
        v493[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v523, v504), v521, v503), 0xDuLL);
        v493[6] = vrshrq_n_s32(v520, 0xDuLL);
        v493[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v522, v502), v524, v501), 0xDuLL);
        v493 = v1574;
      }

      while ((v507 & 1) != 0);
      for (i1 = 0; i1 != 256; i1 += 16)
      {
        *&v1573[i1] = vrhaddq_s32(*&v1573[i1], 0);
      }

      v526 = 0;
      v527 = 1;
      do
      {
        v528 = 0;
        v529 = v527;
        v530 = 1;
        v531 = &v1573[128 * v526];
        v532 = &v1571[64 * v526];
        do
        {
          v533 = &v531[64 * v528];
          v534 = v533[1];
          v535 = v533[2];
          v536 = v533[3];
          v537 = vtrn1q_s32(*v533, v534);
          v538 = vtrn2q_s32(*v533, v534);
          v539 = vtrn1q_s32(v535, v536);
          v540 = vzip2q_s64(v537, v539);
          v537.i64[1] = v539.i64[0];
          LOBYTE(v533) = v530;
          v541 = vtrn2q_s32(v535, v536);
          v542 = vzip2q_s64(v538, v541);
          v538.i64[1] = v541.i64[0];
          v543 = &v532[128 * v528];
          *v543 = v537;
          v543[1] = v538;
          v543[2] = v540;
          v543[3] = v542;
          v528 = 1;
          v530 = 0;
        }

        while ((v533 & 1) != 0);
        v527 = 0;
        v526 = 1;
      }

      while ((v529 & 1) != 0);
      v544 = v1571;
      v545 = 1;
      v546 = vdupq_n_s32(0x16A1u);
      v547 = vdupq_n_s32(0xFFFFE95F);
      v548 = vdupq_n_s32(0x1D90u);
      v549 = vdupq_n_s32(0xC3Fu);
      v550 = vdupq_n_s32(0xFFFFE270);
      v551 = vdupq_n_s32(0x1FD9u);
      v552 = vdupq_n_s32(0x323u);
      v553 = vdupq_n_s32(0xFFFFE027);
      v554 = vdupq_n_s32(0x1C39u);
      v555 = vdupq_n_s32(0xF16u);
      v556 = vdupq_n_s32(0xFFFFE3C7);
      v557 = vdupq_n_s32(0x18BDu);
      v558 = vdupq_n_s32(0x144Du);
      v559 = vdupq_n_s32(0xFFFFEBB3);
      v560 = vdupq_n_s32(0x1E9Fu);
      v561 = vdupq_n_s32(0x94Au);
      v562 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v563 = v545;
        v564 = v544[1];
        v566 = v544[6];
        v565 = v544[7];
        v568 = v544[2];
        v567 = v544[3];
        v570 = v544[4];
        v569 = v544[5];
        v571 = vmlaq_s32(vmulq_s32(v567, v547), v570, v546);
        v572 = vmulq_s32(vaddq_s32(v570, v567), v547);
        v573 = vmulq_s32(vaddq_s32(v569, v568), v546);
        v574 = vmlaq_s32(vmulq_s32(v569, v547), v568, v546);
        v575 = vsubq_s32(vrshrq_n_s32(v572, 0xDuLL), v565);
        v576 = vsubq_s32(*v544, vrshrq_n_s32(v571, 0xDuLL));
        v577 = vrsraq_n_s32(*v544, v571, 0xDuLL);
        v578 = vrsraq_n_s32(v565, v572, 0xDuLL);
        v579 = vsubq_s32(vrshrq_n_s32(v574, 0xDuLL), v564);
        v580 = vrsraq_n_s32(v564, v574, 0xDuLL);
        v581 = vsubq_s32(v566, vrshrq_n_s32(v573, 0xDuLL));
        v582 = vrsraq_n_s32(v566, v573, 0xDuLL);
        v583 = vmlaq_s32(vmulq_s32(v582, v549), v579, v548);
        v584 = vmlaq_s32(vmulq_s32(v582, v550), v579, v549);
        v585 = vmlaq_s32(vmulq_s32(v580, v549), v581, v548);
        v586 = vmlaq_s32(vmulq_s32(v580, v550), v581, v549);
        v587 = vsubq_s32(vrshrq_n_s32(v586, 0xDuLL), v578);
        v588 = vsubq_s32(v577, vrshrq_n_s32(v583, 0xDuLL));
        v589 = vrsraq_n_s32(v577, v583, 0xDuLL);
        v590 = vsubq_s32(v575, vrshrq_n_s32(v584, 0xDuLL));
        v591 = vrsraq_n_s32(v575, v584, 0xDuLL);
        v592 = vsubq_s32(v576, vrshrq_n_s32(v585, 0xDuLL));
        v593 = vrsraq_n_s32(v576, v585, 0xDuLL);
        v594 = vrsraq_n_s32(v578, v586, 0xDuLL);
        *v544 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v591, v553), v589, v552), 0xDuLL);
        v544[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v594, v562), v592, v561), 0xDuLL);
        v544[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v587, v556), v593, v555), 0xDuLL);
        v544[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v588, v558), v590, v557), 0xDuLL);
        v544[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v588, v557), v590, v559), 0xDuLL);
        v544[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v587, v555), v593, v554), 0xDuLL);
        v544[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v594, v561), v592, v560), 0xDuLL);
        v544[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v591, v552), v589, v551), 0xDuLL);
        v544 = v1572;
        v545 = 0;
      }

      while ((v563 & 1) != 0);
      v595 = (a2 + 16);
      v596 = 8;
      do
      {
        v597 = *(v10 - 8);
        v598 = *v10++;
        *(v595 - 1) = v597;
        *v595 = v598;
        v595 += 2;
        --v596;
      }

      while (v596);
      break;
    case 3:
      v684 = 0;
      v685 = 2 * v9;
      do
      {
        v686 = *v8->i8;
        v687 = &v1573[v684];
        *v687 = vshll_n_s16(*v8, 2uLL);
        v687[8] = vshll_high_n_s16(v686, 2uLL);
        v684 += 16;
        v8 = (v8 + v685);
      }

      while (v684 != 128);
      v688 = v1573;
      v689 = 1;
      v690 = vdupq_n_s32(0x16A1u);
      v691 = vdupq_n_s32(0xFFFFE95F);
      v692 = vdupq_n_s32(0x1D90u);
      v693 = vdupq_n_s32(0xC3Fu);
      v694 = vdupq_n_s32(0xFFFFE270);
      v695 = vdupq_n_s32(0x1FD9u);
      v696 = vdupq_n_s32(0x323u);
      v697 = vdupq_n_s32(0xFFFFE027);
      v698 = vdupq_n_s32(0x1C39u);
      v699 = vdupq_n_s32(0xF16u);
      v700 = vdupq_n_s32(0xFFFFE3C7);
      v701 = vdupq_n_s32(0x18BDu);
      v702 = vdupq_n_s32(0x144Du);
      v703 = vdupq_n_s32(0xFFFFEBB3);
      v704 = vdupq_n_s32(0x1E9Fu);
      v705 = vdupq_n_s32(0x94Au);
      v706 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v707 = v689;
        v708 = v688[1];
        v710 = v688[6];
        v709 = v688[7];
        v712 = v688[2];
        v711 = v688[3];
        v714 = v688[4];
        v713 = v688[5];
        v715 = vmlaq_s32(vmulq_s32(v711, v691), v714, v690);
        v716 = vmulq_s32(vaddq_s32(v714, v711), v691);
        v717 = vmulq_s32(vaddq_s32(v713, v712), v690);
        v718 = vmlaq_s32(vmulq_s32(v713, v691), v712, v690);
        v719 = vsubq_s32(vrshrq_n_s32(v716, 0xDuLL), v709);
        v720 = vsubq_s32(*v688, vrshrq_n_s32(v715, 0xDuLL));
        v721 = vrsraq_n_s32(*v688, v715, 0xDuLL);
        v722 = vrsraq_n_s32(v709, v716, 0xDuLL);
        v723 = vsubq_s32(vrshrq_n_s32(v718, 0xDuLL), v708);
        v724 = vrsraq_n_s32(v708, v718, 0xDuLL);
        v725 = vsubq_s32(v710, vrshrq_n_s32(v717, 0xDuLL));
        v726 = vrsraq_n_s32(v710, v717, 0xDuLL);
        v727 = vmlaq_s32(vmulq_s32(v726, v693), v723, v692);
        v728 = vmlaq_s32(vmulq_s32(v726, v694), v723, v693);
        v729 = vmlaq_s32(vmulq_s32(v724, v693), v725, v692);
        v730 = vmlaq_s32(vmulq_s32(v724, v694), v725, v693);
        v731 = vsubq_s32(vrshrq_n_s32(v730, 0xDuLL), v722);
        v732 = vsubq_s32(v721, vrshrq_n_s32(v727, 0xDuLL));
        v733 = vrsraq_n_s32(v721, v727, 0xDuLL);
        v734 = vsubq_s32(v719, vrshrq_n_s32(v728, 0xDuLL));
        v735 = vrsraq_n_s32(v719, v728, 0xDuLL);
        v736 = vsubq_s32(v720, vrshrq_n_s32(v729, 0xDuLL));
        v737 = vrsraq_n_s32(v720, v729, 0xDuLL);
        v738 = vrsraq_n_s32(v722, v730, 0xDuLL);
        *v688 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v735, v697), v733, v696), 0xDuLL);
        v688[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v738, v706), v736, v705), 0xDuLL);
        v688[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v731, v700), v737, v699), 0xDuLL);
        v688[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v732, v702), v734, v701), 0xDuLL);
        v688[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v732, v701), v734, v703), 0xDuLL);
        v688[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v731, v699), v737, v698), 0xDuLL);
        v688[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v738, v705), v736, v704), 0xDuLL);
        v688[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v735, v696), v733, v695), 0xDuLL);
        v688 = v1574;
        v689 = 0;
      }

      while ((v707 & 1) != 0);
      for (i2 = 0; i2 != 256; i2 += 16)
      {
        *&v1573[i2] = vrhaddq_s32(*&v1573[i2], 0);
      }

      v740 = 0;
      v741 = 1;
      do
      {
        v742 = 0;
        v743 = v741;
        v744 = 1;
        v745 = &v1573[128 * v740];
        v746 = &v1571[64 * v740];
        do
        {
          v747 = &v745[64 * v742];
          v748 = v747[1];
          v749 = v747[2];
          v750 = v747[3];
          v751 = vtrn1q_s32(*v747, v748);
          v752 = vtrn2q_s32(*v747, v748);
          v753 = vtrn1q_s32(v749, v750);
          v754 = vzip2q_s64(v751, v753);
          v751.i64[1] = v753.i64[0];
          LOBYTE(v747) = v744;
          v755 = vtrn2q_s32(v749, v750);
          v756 = vzip2q_s64(v752, v755);
          v752.i64[1] = v755.i64[0];
          v757 = &v746[128 * v742];
          *v757 = v751;
          v757[1] = v752;
          v757[2] = v754;
          v757[3] = v756;
          v742 = 1;
          v744 = 0;
        }

        while ((v747 & 1) != 0);
        v741 = 0;
        v740 = 1;
      }

      while ((v743 & 1) != 0);
      v758 = v1571;
      v759 = 1;
      v760 = vdupq_n_s32(0x16A1u);
      v761 = vdupq_n_s32(0xFFFFE95F);
      v762 = vdupq_n_s32(0x1D90u);
      v763 = vdupq_n_s32(0xC3Fu);
      v764 = vdupq_n_s32(0xFFFFE270);
      v765 = vdupq_n_s32(0x1FD9u);
      v766 = vdupq_n_s32(0x323u);
      v767 = vdupq_n_s32(0xFFFFE027);
      v768 = vdupq_n_s32(0x1C39u);
      v769 = vdupq_n_s32(0xF16u);
      v770 = vdupq_n_s32(0xFFFFE3C7);
      v771 = vdupq_n_s32(0x18BDu);
      v772 = vdupq_n_s32(0x144Du);
      v773 = vdupq_n_s32(0xFFFFEBB3);
      v774 = vdupq_n_s32(0x1E9Fu);
      v775 = vdupq_n_s32(0x94Au);
      v776 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v777 = v759;
        v778 = v758[1];
        v780 = v758[6];
        v779 = v758[7];
        v782 = v758[2];
        v781 = v758[3];
        v784 = v758[4];
        v783 = v758[5];
        v785 = vmlaq_s32(vmulq_s32(v781, v761), v784, v760);
        v786 = vmulq_s32(vaddq_s32(v784, v781), v761);
        v787 = vmulq_s32(vaddq_s32(v783, v782), v760);
        v788 = vmlaq_s32(vmulq_s32(v783, v761), v782, v760);
        v789 = vsubq_s32(vrshrq_n_s32(v786, 0xDuLL), v779);
        v790 = vsubq_s32(*v758, vrshrq_n_s32(v785, 0xDuLL));
        v791 = vrsraq_n_s32(*v758, v785, 0xDuLL);
        v792 = vrsraq_n_s32(v779, v786, 0xDuLL);
        v793 = vsubq_s32(vrshrq_n_s32(v788, 0xDuLL), v778);
        v794 = vrsraq_n_s32(v778, v788, 0xDuLL);
        v795 = vsubq_s32(v780, vrshrq_n_s32(v787, 0xDuLL));
        v796 = vrsraq_n_s32(v780, v787, 0xDuLL);
        v797 = vmlaq_s32(vmulq_s32(v796, v763), v793, v762);
        v798 = vmlaq_s32(vmulq_s32(v796, v764), v793, v763);
        v799 = vmlaq_s32(vmulq_s32(v794, v763), v795, v762);
        v800 = vmlaq_s32(vmulq_s32(v794, v764), v795, v763);
        v801 = vsubq_s32(vrshrq_n_s32(v800, 0xDuLL), v792);
        v802 = vsubq_s32(v791, vrshrq_n_s32(v797, 0xDuLL));
        v803 = vrsraq_n_s32(v791, v797, 0xDuLL);
        v804 = vsubq_s32(v789, vrshrq_n_s32(v798, 0xDuLL));
        v805 = vrsraq_n_s32(v789, v798, 0xDuLL);
        v806 = vsubq_s32(v790, vrshrq_n_s32(v799, 0xDuLL));
        v807 = vrsraq_n_s32(v790, v799, 0xDuLL);
        v808 = vrsraq_n_s32(v792, v800, 0xDuLL);
        *v758 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v805, v767), v803, v766), 0xDuLL);
        v758[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v808, v776), v806, v775), 0xDuLL);
        v758[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v801, v770), v807, v769), 0xDuLL);
        v758[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v802, v772), v804, v771), 0xDuLL);
        v758[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v802, v771), v804, v773), 0xDuLL);
        v758[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v801, v769), v807, v768), 0xDuLL);
        v758[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v808, v775), v806, v774), 0xDuLL);
        v758[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v805, v766), v803, v765), 0xDuLL);
        v758 = v1572;
        v759 = 0;
      }

      while ((v777 & 1) != 0);
      v809 = (a2 + 16);
      v810 = 8;
      do
      {
        v811 = *(v10 - 8);
        v812 = *v10++;
        *(v809 - 1) = v811;
        *v809 = v812;
        v809 += 2;
        --v810;
      }

      while (v810);
      break;
    case 4:
      v253 = 0;
      v254 = 2 * v9;
      do
      {
        v255 = *v8->i8;
        v256 = &v1573[v253];
        *v256 = vshll_n_s16(*v8, 2uLL);
        v256[8] = vshll_high_n_s16(v255, 2uLL);
        v253 += 16;
        v8 = (v8 + v254);
      }

      while (v253 != 128);
      v257 = v1573;
      v258 = 1;
      v259 = vdupq_n_s32(0x16A1u);
      v260 = vdupq_n_s32(0xFFFFE95F);
      v261 = vdupq_n_s32(0x1D90u);
      v262 = vdupq_n_s32(0xC3Fu);
      v263 = vdupq_n_s32(0xFFFFE270);
      v264 = vdupq_n_s32(0x1FD9u);
      v265 = vdupq_n_s32(0x323u);
      v266 = vdupq_n_s32(0xFFFFE027);
      v267 = vdupq_n_s32(0x1C39u);
      v268 = vdupq_n_s32(0xF16u);
      v269 = vdupq_n_s32(0xFFFFE3C7);
      v270 = vdupq_n_s32(0x18BDu);
      v271 = vdupq_n_s32(0x144Du);
      v272 = vdupq_n_s32(0xFFFFEBB3);
      v273 = vdupq_n_s32(0x1E9Fu);
      v274 = vdupq_n_s32(0x94Au);
      v275 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v276 = v258;
        v277 = v257[1];
        v279 = v257[6];
        v278 = v257[7];
        v281 = v257[2];
        v280 = v257[3];
        v283 = v257[4];
        v282 = v257[5];
        v284 = vmlaq_s32(vmulq_s32(v280, v260), v283, v259);
        v285 = vmulq_s32(vaddq_s32(v283, v280), v260);
        v286 = vmulq_s32(vaddq_s32(v282, v281), v259);
        v287 = vmlaq_s32(vmulq_s32(v282, v260), v281, v259);
        v288 = vsubq_s32(vrshrq_n_s32(v285, 0xDuLL), v278);
        v289 = vsubq_s32(*v257, vrshrq_n_s32(v284, 0xDuLL));
        v290 = vrsraq_n_s32(*v257, v284, 0xDuLL);
        v291 = vrsraq_n_s32(v278, v285, 0xDuLL);
        v292 = vsubq_s32(vrshrq_n_s32(v287, 0xDuLL), v277);
        v293 = vrsraq_n_s32(v277, v287, 0xDuLL);
        v294 = vsubq_s32(v279, vrshrq_n_s32(v286, 0xDuLL));
        v295 = vrsraq_n_s32(v279, v286, 0xDuLL);
        v296 = vmlaq_s32(vmulq_s32(v295, v262), v292, v261);
        v297 = vmlaq_s32(vmulq_s32(v295, v263), v292, v262);
        v298 = vmlaq_s32(vmulq_s32(v293, v262), v294, v261);
        v299 = vmlaq_s32(vmulq_s32(v293, v263), v294, v262);
        v300 = vsubq_s32(vrshrq_n_s32(v299, 0xDuLL), v291);
        v301 = vsubq_s32(v290, vrshrq_n_s32(v296, 0xDuLL));
        v302 = vrsraq_n_s32(v290, v296, 0xDuLL);
        v303 = vsubq_s32(v288, vrshrq_n_s32(v297, 0xDuLL));
        v304 = vrsraq_n_s32(v288, v297, 0xDuLL);
        v305 = vsubq_s32(v289, vrshrq_n_s32(v298, 0xDuLL));
        v306 = vrsraq_n_s32(v289, v298, 0xDuLL);
        v307 = vrsraq_n_s32(v291, v299, 0xDuLL);
        *v257 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v304, v266), v302, v265), 0xDuLL);
        v257[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v307, v275), v305, v274), 0xDuLL);
        v257[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v300, v269), v306, v268), 0xDuLL);
        v257[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v301, v271), v303, v270), 0xDuLL);
        v257[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v301, v270), v303, v272), 0xDuLL);
        v257[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v300, v268), v306, v267), 0xDuLL);
        v257[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v307, v274), v305, v273), 0xDuLL);
        v257[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v304, v265), v302, v264), 0xDuLL);
        v257 = v1574;
        v258 = 0;
      }

      while ((v276 & 1) != 0);
      for (i3 = 0; i3 != 256; i3 += 16)
      {
        *&v1573[i3] = vrhaddq_s32(*&v1573[i3], 0);
      }

      v309 = 0;
      v310 = 1;
      do
      {
        v311 = 0;
        v312 = v310;
        v313 = 1;
        v314 = &v1573[128 * v309];
        v315 = &v1571[64 * v309];
        do
        {
          v316 = &v314[64 * v311];
          v317 = v316[1];
          v318 = v316[2];
          v319 = v316[3];
          v320 = vtrn1q_s32(*v316, v317);
          v321 = vtrn2q_s32(*v316, v317);
          v322 = vtrn1q_s32(v318, v319);
          v323 = vzip2q_s64(v320, v322);
          v320.i64[1] = v322.i64[0];
          LOBYTE(v316) = v313;
          v324 = vtrn2q_s32(v318, v319);
          v325 = vzip2q_s64(v321, v324);
          v321.i64[1] = v324.i64[0];
          v326 = &v315[128 * v311];
          *v326 = v320;
          v326[1] = v321;
          v326[2] = v323;
          v326[3] = v325;
          v311 = 1;
          v313 = 0;
        }

        while ((v316 & 1) != 0);
        v310 = 0;
        v309 = 1;
      }

      while ((v312 & 1) != 0);
      v327 = v1571;
      v328 = 1;
      v329 = vdupq_n_s32(0x16A1u);
      v330 = vdupq_n_s32(0xFFFFE95F);
      v331 = vdupq_n_s32(0x1D90u);
      v332 = vdupq_n_s32(0xC3Fu);
      v333 = vdupq_n_s32(0xFFFFE270);
      v334 = vdupq_n_s32(0x1F63u);
      v335 = vdupq_n_s32(0x63Eu);
      v336 = vdupq_n_s32(0xFFFFE09D);
      v337 = vdupq_n_s32(0x1A9Bu);
      v338 = vdupq_n_s32(0x11C7u);
      v339 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v340 = 0;
        v341 = v328;
        for (i4 = 7; i4 != 3; --i4)
        {
          *(&v1575 + v340 * 16) = vaddq_s32(v327[i4], v327[v340]);
          ++v340;
        }

        v343 = 4;
        for (i5 = 3; i5 != -1; --i5)
        {
          *(&v1575 + v343 * 16) = vsubq_s32(v327[i5], v327[v343]);
          ++v343;
        }

        v328 = 0;
        v345 = vaddq_s32(v1578, v1575);
        v346 = vaddq_s32(v1577, v1576);
        v347 = vsubq_s32(v1576, v1577);
        v348 = vsubq_s32(v1575, v1578);
        v349 = vmulq_s32(vaddq_s32(v1580, v1581), v329);
        v350 = vmlaq_s32(vmulq_s32(v1581, v329), v1580, v330);
        v351 = vaddq_s32(v345, v346);
        v352 = vmlaq_s32(vmulq_s32(v346, v330), v345, v329);
        v353 = vmlaq_s32(vmulq_s32(v347, v332), v348, v331);
        v354 = vmlaq_s32(vmulq_s32(v347, v333), v348, v332);
        v355 = vsubq_s32(v1579, vrshrq_n_s32(v350, 0xDuLL));
        v356 = vrsraq_n_s32(v1579, v350, 0xDuLL);
        v357 = vsubq_s32(v1582, vrshrq_n_s32(v349, 0xDuLL));
        v358 = vrsraq_n_s32(v1582, v349, 0xDuLL);
        *v327 = vrshrq_n_s32(vmulq_s32(v351, v329), 0xDuLL);
        v327[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v356, v335), v358, v334), 0xDuLL);
        v327[2] = vrshrq_n_s32(v353, 0xDuLL);
        v327[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v357, v337), v355, v339), 0xDuLL);
        v327[4] = vrshrq_n_s32(v352, 0xDuLL);
        v327[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v357, v338), v355, v337), 0xDuLL);
        v327[6] = vrshrq_n_s32(v354, 0xDuLL);
        v327[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v356, v336), v358, v335), 0xDuLL);
        v327 = v1572;
      }

      while ((v341 & 1) != 0);
      v359 = (a2 + 16);
      v360 = 8;
      do
      {
        v361 = *(v10 - 8);
        v362 = *v10++;
        *(v359 - 1) = v361;
        *v359 = v362;
        v359 += 2;
        --v360;
      }

      while (v360);
      break;
    case 5:
      v1052 = 0;
      v1053 = 2 * v9;
      do
      {
        v1054 = vrev64q_s16(*v8->i8);
        v1055 = &v1573[v1052];
        *v1055 = vshll_high_n_s16(v1054, 2uLL);
        v1055[8] = vshll_n_s16(*v1054.i8, 2uLL);
        v1052 += 16;
        v8 = (v8 + v1053);
      }

      while (v1052 != 128);
      v1056 = v1573;
      v1057 = 1;
      v1058 = vdupq_n_s32(0x16A1u);
      v1059 = vdupq_n_s32(0xFFFFE95F);
      v1060 = vdupq_n_s32(0x1D90u);
      v1061 = vdupq_n_s32(0xC3Fu);
      v1062 = vdupq_n_s32(0xFFFFE270);
      v1063 = vdupq_n_s32(0x1F63u);
      v1064 = vdupq_n_s32(0x63Eu);
      v1065 = vdupq_n_s32(0xFFFFE09D);
      v1066 = vdupq_n_s32(0x1A9Bu);
      v1067 = vdupq_n_s32(0x11C7u);
      v1068 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v1069 = 0;
        v1070 = v1057;
        for (i6 = 7; i6 != 3; --i6)
        {
          *(&v1575 + v1069 * 16) = vaddq_s32(v1056[i6], v1056[v1069]);
          ++v1069;
        }

        v1072 = 4;
        for (i7 = 3; i7 != -1; --i7)
        {
          *(&v1575 + v1072 * 16) = vsubq_s32(v1056[i7], v1056[v1072]);
          ++v1072;
        }

        v1057 = 0;
        v1074 = vaddq_s32(v1578, v1575);
        v1075 = vaddq_s32(v1577, v1576);
        v1076 = vsubq_s32(v1576, v1577);
        v1077 = vsubq_s32(v1575, v1578);
        v1078 = vmulq_s32(vaddq_s32(v1580, v1581), v1058);
        v1079 = vmlaq_s32(vmulq_s32(v1581, v1058), v1580, v1059);
        v1080 = vaddq_s32(v1074, v1075);
        v1081 = vmlaq_s32(vmulq_s32(v1075, v1059), v1074, v1058);
        v1082 = vmlaq_s32(vmulq_s32(v1076, v1061), v1077, v1060);
        v1083 = vmlaq_s32(vmulq_s32(v1076, v1062), v1077, v1061);
        v1084 = vsubq_s32(v1579, vrshrq_n_s32(v1079, 0xDuLL));
        v1085 = vrsraq_n_s32(v1579, v1079, 0xDuLL);
        v1086 = vsubq_s32(v1582, vrshrq_n_s32(v1078, 0xDuLL));
        v1087 = vrsraq_n_s32(v1582, v1078, 0xDuLL);
        *v1056 = vrshrq_n_s32(vmulq_s32(v1080, v1058), 0xDuLL);
        v1056[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1085, v1064), v1087, v1063), 0xDuLL);
        v1056[2] = vrshrq_n_s32(v1082, 0xDuLL);
        v1056[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1086, v1066), v1084, v1068), 0xDuLL);
        v1056[4] = vrshrq_n_s32(v1081, 0xDuLL);
        v1056[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1086, v1067), v1084, v1066), 0xDuLL);
        v1056[6] = vrshrq_n_s32(v1083, 0xDuLL);
        v1056[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1085, v1065), v1087, v1064), 0xDuLL);
        v1056 = v1574;
      }

      while ((v1070 & 1) != 0);
      for (i8 = 0; i8 != 256; i8 += 16)
      {
        *&v1573[i8] = vrhaddq_s32(*&v1573[i8], 0);
      }

      v1089 = 0;
      v1090 = 1;
      do
      {
        v1091 = 0;
        v1092 = v1090;
        v1093 = 1;
        v1094 = &v1573[128 * v1089];
        v1095 = &v1571[64 * v1089];
        do
        {
          v1096 = &v1094[64 * v1091];
          v1097 = v1096[1];
          v1098 = v1096[2];
          v1099 = v1096[3];
          v1100 = vtrn1q_s32(*v1096, v1097);
          v1101 = vtrn2q_s32(*v1096, v1097);
          v1102 = vtrn1q_s32(v1098, v1099);
          v1103 = vzip2q_s64(v1100, v1102);
          v1100.i64[1] = v1102.i64[0];
          LOBYTE(v1096) = v1093;
          v1104 = vtrn2q_s32(v1098, v1099);
          v1105 = vzip2q_s64(v1101, v1104);
          v1101.i64[1] = v1104.i64[0];
          v1106 = &v1095[128 * v1091];
          *v1106 = v1100;
          v1106[1] = v1101;
          v1106[2] = v1103;
          v1106[3] = v1105;
          v1091 = 1;
          v1093 = 0;
        }

        while ((v1096 & 1) != 0);
        v1090 = 0;
        v1089 = 1;
      }

      while ((v1092 & 1) != 0);
      v1107 = v1571;
      v1108 = 1;
      v1109 = vdupq_n_s32(0x16A1u);
      v1110 = vdupq_n_s32(0xFFFFE95F);
      v1111 = vdupq_n_s32(0x1D90u);
      v1112 = vdupq_n_s32(0xC3Fu);
      v1113 = vdupq_n_s32(0xFFFFE270);
      v1114 = vdupq_n_s32(0x1FD9u);
      v1115 = vdupq_n_s32(0x323u);
      v1116 = vdupq_n_s32(0xFFFFE027);
      v1117 = vdupq_n_s32(0x1C39u);
      v1118 = vdupq_n_s32(0xF16u);
      v1119 = vdupq_n_s32(0xFFFFE3C7);
      v1120 = vdupq_n_s32(0x18BDu);
      v1121 = vdupq_n_s32(0x144Du);
      v1122 = vdupq_n_s32(0xFFFFEBB3);
      v1123 = vdupq_n_s32(0x1E9Fu);
      v1124 = vdupq_n_s32(0x94Au);
      v1125 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v1126 = v1108;
        v1127 = v1107[1];
        v1129 = v1107[6];
        v1128 = v1107[7];
        v1131 = v1107[2];
        v1130 = v1107[3];
        v1133 = v1107[4];
        v1132 = v1107[5];
        v1134 = vmlaq_s32(vmulq_s32(v1130, v1110), v1133, v1109);
        v1135 = vmulq_s32(vaddq_s32(v1133, v1130), v1110);
        v1136 = vmulq_s32(vaddq_s32(v1132, v1131), v1109);
        v1137 = vmlaq_s32(vmulq_s32(v1132, v1110), v1131, v1109);
        v1138 = vsubq_s32(vrshrq_n_s32(v1135, 0xDuLL), v1128);
        v1139 = vsubq_s32(*v1107, vrshrq_n_s32(v1134, 0xDuLL));
        v1140 = vrsraq_n_s32(*v1107, v1134, 0xDuLL);
        v1141 = vrsraq_n_s32(v1128, v1135, 0xDuLL);
        v1142 = vsubq_s32(vrshrq_n_s32(v1137, 0xDuLL), v1127);
        v1143 = vrsraq_n_s32(v1127, v1137, 0xDuLL);
        v1144 = vsubq_s32(v1129, vrshrq_n_s32(v1136, 0xDuLL));
        v1145 = vrsraq_n_s32(v1129, v1136, 0xDuLL);
        v1146 = vmlaq_s32(vmulq_s32(v1145, v1112), v1142, v1111);
        v1147 = vmlaq_s32(vmulq_s32(v1145, v1113), v1142, v1112);
        v1148 = vmlaq_s32(vmulq_s32(v1143, v1112), v1144, v1111);
        v1149 = vmlaq_s32(vmulq_s32(v1143, v1113), v1144, v1112);
        v1150 = vsubq_s32(vrshrq_n_s32(v1149, 0xDuLL), v1141);
        v1151 = vsubq_s32(v1140, vrshrq_n_s32(v1146, 0xDuLL));
        v1152 = vrsraq_n_s32(v1140, v1146, 0xDuLL);
        v1153 = vsubq_s32(v1138, vrshrq_n_s32(v1147, 0xDuLL));
        v1154 = vrsraq_n_s32(v1138, v1147, 0xDuLL);
        v1155 = vsubq_s32(v1139, vrshrq_n_s32(v1148, 0xDuLL));
        v1156 = vrsraq_n_s32(v1139, v1148, 0xDuLL);
        v1157 = vrsraq_n_s32(v1141, v1149, 0xDuLL);
        *v1107 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1154, v1116), v1152, v1115), 0xDuLL);
        v1107[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1157, v1125), v1155, v1124), 0xDuLL);
        v1107[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1150, v1119), v1156, v1118), 0xDuLL);
        v1107[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1151, v1121), v1153, v1120), 0xDuLL);
        v1107[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1151, v1120), v1153, v1122), 0xDuLL);
        v1107[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1150, v1118), v1156, v1117), 0xDuLL);
        v1107[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1157, v1124), v1155, v1123), 0xDuLL);
        v1107[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1154, v1115), v1152, v1114), 0xDuLL);
        v1107 = v1572;
        v1108 = 0;
      }

      while ((v1126 & 1) != 0);
      v1158 = (a2 + 16);
      v1159 = 8;
      do
      {
        v1160 = *(v10 - 8);
        v1161 = *v10++;
        *(v1158 - 1) = v1160;
        *v1158 = v1161;
        v1158 += 2;
        --v1159;
      }

      while (v1159);
      break;
    case 6:
      v1247 = 0;
      v1248 = 2 * v9;
      do
      {
        v1249 = vrev64q_s16(*v8->i8);
        v1250 = &v1573[v1247];
        *v1250 = vshll_high_n_s16(v1249, 2uLL);
        v1250[8] = vshll_n_s16(*v1249.i8, 2uLL);
        v1247 += 16;
        v8 = (v8 + v1248);
      }

      while (v1247 != 128);
      v1251 = v1573;
      v1252 = 1;
      v1253 = vdupq_n_s32(0x16A1u);
      v1254 = vdupq_n_s32(0xFFFFE95F);
      v1255 = vdupq_n_s32(0x1D90u);
      v1256 = vdupq_n_s32(0xC3Fu);
      v1257 = vdupq_n_s32(0xFFFFE270);
      v1258 = vdupq_n_s32(0x1FD9u);
      v1259 = vdupq_n_s32(0x323u);
      v1260 = vdupq_n_s32(0xFFFFE027);
      v1261 = vdupq_n_s32(0x1C39u);
      v1262 = vdupq_n_s32(0xF16u);
      v1263 = vdupq_n_s32(0xFFFFE3C7);
      v1264 = vdupq_n_s32(0x18BDu);
      v1265 = vdupq_n_s32(0x144Du);
      v1266 = vdupq_n_s32(0xFFFFEBB3);
      v1267 = vdupq_n_s32(0x1E9Fu);
      v1268 = vdupq_n_s32(0x94Au);
      v1269 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v1270 = v1252;
        v1271 = v1251[1];
        v1273 = v1251[6];
        v1272 = v1251[7];
        v1275 = v1251[2];
        v1274 = v1251[3];
        v1277 = v1251[4];
        v1276 = v1251[5];
        v1278 = vmlaq_s32(vmulq_s32(v1274, v1254), v1277, v1253);
        v1279 = vmulq_s32(vaddq_s32(v1277, v1274), v1254);
        v1280 = vmulq_s32(vaddq_s32(v1276, v1275), v1253);
        v1281 = vmlaq_s32(vmulq_s32(v1276, v1254), v1275, v1253);
        v1282 = vsubq_s32(vrshrq_n_s32(v1279, 0xDuLL), v1272);
        v1283 = vsubq_s32(*v1251, vrshrq_n_s32(v1278, 0xDuLL));
        v1284 = vrsraq_n_s32(*v1251, v1278, 0xDuLL);
        v1285 = vrsraq_n_s32(v1272, v1279, 0xDuLL);
        v1286 = vsubq_s32(vrshrq_n_s32(v1281, 0xDuLL), v1271);
        v1287 = vrsraq_n_s32(v1271, v1281, 0xDuLL);
        v1288 = vsubq_s32(v1273, vrshrq_n_s32(v1280, 0xDuLL));
        v1289 = vrsraq_n_s32(v1273, v1280, 0xDuLL);
        v1290 = vmlaq_s32(vmulq_s32(v1289, v1256), v1286, v1255);
        v1291 = vmlaq_s32(vmulq_s32(v1289, v1257), v1286, v1256);
        v1292 = vmlaq_s32(vmulq_s32(v1287, v1256), v1288, v1255);
        v1293 = vmlaq_s32(vmulq_s32(v1287, v1257), v1288, v1256);
        v1294 = vsubq_s32(vrshrq_n_s32(v1293, 0xDuLL), v1285);
        v1295 = vsubq_s32(v1284, vrshrq_n_s32(v1290, 0xDuLL));
        v1296 = vrsraq_n_s32(v1284, v1290, 0xDuLL);
        v1297 = vsubq_s32(v1282, vrshrq_n_s32(v1291, 0xDuLL));
        v1298 = vrsraq_n_s32(v1282, v1291, 0xDuLL);
        v1299 = vsubq_s32(v1283, vrshrq_n_s32(v1292, 0xDuLL));
        v1300 = vrsraq_n_s32(v1283, v1292, 0xDuLL);
        v1301 = vrsraq_n_s32(v1285, v1293, 0xDuLL);
        *v1251 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1298, v1260), v1296, v1259), 0xDuLL);
        v1251[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1301, v1269), v1299, v1268), 0xDuLL);
        v1251[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1294, v1263), v1300, v1262), 0xDuLL);
        v1251[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1295, v1265), v1297, v1264), 0xDuLL);
        v1251[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1295, v1264), v1297, v1266), 0xDuLL);
        v1251[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1294, v1262), v1300, v1261), 0xDuLL);
        v1251[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1301, v1268), v1299, v1267), 0xDuLL);
        v1251[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1298, v1259), v1296, v1258), 0xDuLL);
        v1251 = v1574;
        v1252 = 0;
      }

      while ((v1270 & 1) != 0);
      for (i9 = 0; i9 != 256; i9 += 16)
      {
        *&v1573[i9] = vrhaddq_s32(*&v1573[i9], 0);
      }

      v1303 = 0;
      v1304 = 1;
      do
      {
        v1305 = 0;
        v1306 = v1304;
        v1307 = 1;
        v1308 = &v1573[128 * v1303];
        v1309 = &v1571[64 * v1303];
        do
        {
          v1310 = &v1308[64 * v1305];
          v1311 = v1310[1];
          v1312 = v1310[2];
          v1313 = v1310[3];
          v1314 = vtrn1q_s32(*v1310, v1311);
          v1315 = vtrn2q_s32(*v1310, v1311);
          v1316 = vtrn1q_s32(v1312, v1313);
          v1317 = vzip2q_s64(v1314, v1316);
          v1314.i64[1] = v1316.i64[0];
          LOBYTE(v1310) = v1307;
          v1318 = vtrn2q_s32(v1312, v1313);
          v1319 = vzip2q_s64(v1315, v1318);
          v1315.i64[1] = v1318.i64[0];
          v1320 = &v1309[128 * v1305];
          *v1320 = v1314;
          v1320[1] = v1315;
          v1320[2] = v1317;
          v1320[3] = v1319;
          v1305 = 1;
          v1307 = 0;
        }

        while ((v1310 & 1) != 0);
        v1304 = 0;
        v1303 = 1;
      }

      while ((v1306 & 1) != 0);
      v1321 = v1571;
      v1322 = 1;
      v1323 = vdupq_n_s32(0x16A1u);
      v1324 = vdupq_n_s32(0xFFFFE95F);
      v1325 = vdupq_n_s32(0x1D90u);
      v1326 = vdupq_n_s32(0xC3Fu);
      v1327 = vdupq_n_s32(0xFFFFE270);
      v1328 = vdupq_n_s32(0x1FD9u);
      v1329 = vdupq_n_s32(0x323u);
      v1330 = vdupq_n_s32(0xFFFFE027);
      v1331 = vdupq_n_s32(0x1C39u);
      v1332 = vdupq_n_s32(0xF16u);
      v1333 = vdupq_n_s32(0xFFFFE3C7);
      v1334 = vdupq_n_s32(0x18BDu);
      v1335 = vdupq_n_s32(0x144Du);
      v1336 = vdupq_n_s32(0xFFFFEBB3);
      v1337 = vdupq_n_s32(0x1E9Fu);
      v1338 = vdupq_n_s32(0x94Au);
      v1339 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v1340 = v1322;
        v1341 = v1321[1];
        v1343 = v1321[6];
        v1342 = v1321[7];
        v1345 = v1321[2];
        v1344 = v1321[3];
        v1347 = v1321[4];
        v1346 = v1321[5];
        v1348 = vmlaq_s32(vmulq_s32(v1344, v1324), v1347, v1323);
        v1349 = vmulq_s32(vaddq_s32(v1347, v1344), v1324);
        v1350 = vmulq_s32(vaddq_s32(v1346, v1345), v1323);
        v1351 = vmlaq_s32(vmulq_s32(v1346, v1324), v1345, v1323);
        v1352 = vsubq_s32(vrshrq_n_s32(v1349, 0xDuLL), v1342);
        v1353 = vsubq_s32(*v1321, vrshrq_n_s32(v1348, 0xDuLL));
        v1354 = vrsraq_n_s32(*v1321, v1348, 0xDuLL);
        v1355 = vrsraq_n_s32(v1342, v1349, 0xDuLL);
        v1356 = vsubq_s32(vrshrq_n_s32(v1351, 0xDuLL), v1341);
        v1357 = vrsraq_n_s32(v1341, v1351, 0xDuLL);
        v1358 = vsubq_s32(v1343, vrshrq_n_s32(v1350, 0xDuLL));
        v1359 = vrsraq_n_s32(v1343, v1350, 0xDuLL);
        v1360 = vmlaq_s32(vmulq_s32(v1359, v1326), v1356, v1325);
        v1361 = vmlaq_s32(vmulq_s32(v1359, v1327), v1356, v1326);
        v1362 = vmlaq_s32(vmulq_s32(v1357, v1326), v1358, v1325);
        v1363 = vmlaq_s32(vmulq_s32(v1357, v1327), v1358, v1326);
        v1364 = vsubq_s32(vrshrq_n_s32(v1363, 0xDuLL), v1355);
        v1365 = vsubq_s32(v1354, vrshrq_n_s32(v1360, 0xDuLL));
        v1366 = vrsraq_n_s32(v1354, v1360, 0xDuLL);
        v1367 = vsubq_s32(v1352, vrshrq_n_s32(v1361, 0xDuLL));
        v1368 = vrsraq_n_s32(v1352, v1361, 0xDuLL);
        v1369 = vsubq_s32(v1353, vrshrq_n_s32(v1362, 0xDuLL));
        v1370 = vrsraq_n_s32(v1353, v1362, 0xDuLL);
        v1371 = vrsraq_n_s32(v1355, v1363, 0xDuLL);
        *v1321 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1368, v1330), v1366, v1329), 0xDuLL);
        v1321[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1371, v1339), v1369, v1338), 0xDuLL);
        v1321[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1364, v1333), v1370, v1332), 0xDuLL);
        v1321[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1365, v1335), v1367, v1334), 0xDuLL);
        v1321[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1365, v1334), v1367, v1336), 0xDuLL);
        v1321[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1364, v1332), v1370, v1331), 0xDuLL);
        v1321[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1371, v1338), v1369, v1337), 0xDuLL);
        v1321[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1368, v1329), v1366, v1328), 0xDuLL);
        v1321 = v1572;
        v1322 = 0;
      }

      while ((v1340 & 1) != 0);
      v1372 = (a2 + 16);
      v1373 = 8;
      do
      {
        v1374 = *(v10 - 8);
        v1375 = *v10++;
        *(v1372 - 1) = v1374;
        *v1372 = v1375;
        v1372 += 2;
        --v1373;
      }

      while (v1373);
      break;
    case 7:
      v813 = 0;
      v814 = 2 * v9;
      do
      {
        v815 = vrev64q_s16(*v8->i8);
        v816 = &v1573[v813];
        *v816 = vshll_high_n_s16(v815, 2uLL);
        v816[8] = vshll_n_s16(*v815.i8, 2uLL);
        v813 += 16;
        v8 = (v8 + v814);
      }

      while (v813 != 128);
      v817 = v1573;
      v818 = 1;
      v819 = vdupq_n_s32(0x16A1u);
      v820 = vdupq_n_s32(0xFFFFE95F);
      v821 = vdupq_n_s32(0x1D90u);
      v822 = vdupq_n_s32(0xC3Fu);
      v823 = vdupq_n_s32(0xFFFFE270);
      v824 = vdupq_n_s32(0x1FD9u);
      v825 = vdupq_n_s32(0x323u);
      v826 = vdupq_n_s32(0xFFFFE027);
      v827 = vdupq_n_s32(0x1C39u);
      v828 = vdupq_n_s32(0xF16u);
      v829 = vdupq_n_s32(0xFFFFE3C7);
      v830 = vdupq_n_s32(0x18BDu);
      v831 = vdupq_n_s32(0x144Du);
      v832 = vdupq_n_s32(0xFFFFEBB3);
      v833 = vdupq_n_s32(0x1E9Fu);
      v834 = vdupq_n_s32(0x94Au);
      v835 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v836 = v818;
        v837 = v817[1];
        v839 = v817[6];
        v838 = v817[7];
        v841 = v817[2];
        v840 = v817[3];
        v843 = v817[4];
        v842 = v817[5];
        v844 = vmlaq_s32(vmulq_s32(v840, v820), v843, v819);
        v845 = vmulq_s32(vaddq_s32(v843, v840), v820);
        v846 = vmulq_s32(vaddq_s32(v842, v841), v819);
        v847 = vmlaq_s32(vmulq_s32(v842, v820), v841, v819);
        v848 = vsubq_s32(vrshrq_n_s32(v845, 0xDuLL), v838);
        v849 = vsubq_s32(*v817, vrshrq_n_s32(v844, 0xDuLL));
        v850 = vrsraq_n_s32(*v817, v844, 0xDuLL);
        v851 = vrsraq_n_s32(v838, v845, 0xDuLL);
        v852 = vsubq_s32(vrshrq_n_s32(v847, 0xDuLL), v837);
        v853 = vrsraq_n_s32(v837, v847, 0xDuLL);
        v854 = vsubq_s32(v839, vrshrq_n_s32(v846, 0xDuLL));
        v855 = vrsraq_n_s32(v839, v846, 0xDuLL);
        v856 = vmlaq_s32(vmulq_s32(v855, v822), v852, v821);
        v857 = vmlaq_s32(vmulq_s32(v855, v823), v852, v822);
        v858 = vmlaq_s32(vmulq_s32(v853, v822), v854, v821);
        v859 = vmlaq_s32(vmulq_s32(v853, v823), v854, v822);
        v860 = vsubq_s32(vrshrq_n_s32(v859, 0xDuLL), v851);
        v861 = vsubq_s32(v850, vrshrq_n_s32(v856, 0xDuLL));
        v862 = vrsraq_n_s32(v850, v856, 0xDuLL);
        v863 = vsubq_s32(v848, vrshrq_n_s32(v857, 0xDuLL));
        v864 = vrsraq_n_s32(v848, v857, 0xDuLL);
        v865 = vsubq_s32(v849, vrshrq_n_s32(v858, 0xDuLL));
        v866 = vrsraq_n_s32(v849, v858, 0xDuLL);
        v867 = vrsraq_n_s32(v851, v859, 0xDuLL);
        *v817 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v864, v826), v862, v825), 0xDuLL);
        v817[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v867, v835), v865, v834), 0xDuLL);
        v817[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v860, v829), v866, v828), 0xDuLL);
        v817[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v861, v831), v863, v830), 0xDuLL);
        v817[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v861, v830), v863, v832), 0xDuLL);
        v817[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v860, v828), v866, v827), 0xDuLL);
        v817[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v867, v834), v865, v833), 0xDuLL);
        v817[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v864, v825), v862, v824), 0xDuLL);
        v817 = v1574;
        v818 = 0;
      }

      while ((v836 & 1) != 0);
      for (i10 = 0; i10 != 256; i10 += 16)
      {
        *&v1573[i10] = vrhaddq_s32(*&v1573[i10], 0);
      }

      v869 = 0;
      v870 = 1;
      do
      {
        v871 = 0;
        v872 = v870;
        v873 = 1;
        v874 = &v1573[128 * v869];
        v875 = &v1571[64 * v869];
        do
        {
          v876 = &v874[64 * v871];
          v877 = v876[1];
          v878 = v876[2];
          v879 = v876[3];
          v880 = vtrn1q_s32(*v876, v877);
          v881 = vtrn2q_s32(*v876, v877);
          v882 = vtrn1q_s32(v878, v879);
          v883 = vzip2q_s64(v880, v882);
          v880.i64[1] = v882.i64[0];
          LOBYTE(v876) = v873;
          v884 = vtrn2q_s32(v878, v879);
          v885 = vzip2q_s64(v881, v884);
          v881.i64[1] = v884.i64[0];
          v886 = &v875[128 * v871];
          *v886 = v880;
          v886[1] = v881;
          v886[2] = v883;
          v886[3] = v885;
          v871 = 1;
          v873 = 0;
        }

        while ((v876 & 1) != 0);
        v870 = 0;
        v869 = 1;
      }

      while ((v872 & 1) != 0);
      v887 = v1571;
      v888 = 1;
      v889 = vdupq_n_s32(0x16A1u);
      v890 = vdupq_n_s32(0xFFFFE95F);
      v891 = vdupq_n_s32(0x1D90u);
      v892 = vdupq_n_s32(0xC3Fu);
      v893 = vdupq_n_s32(0xFFFFE270);
      v894 = vdupq_n_s32(0x1FD9u);
      v895 = vdupq_n_s32(0x323u);
      v896 = vdupq_n_s32(0xFFFFE027);
      v897 = vdupq_n_s32(0x1C39u);
      v898 = vdupq_n_s32(0xF16u);
      v899 = vdupq_n_s32(0xFFFFE3C7);
      v900 = vdupq_n_s32(0x18BDu);
      v901 = vdupq_n_s32(0x144Du);
      v902 = vdupq_n_s32(0xFFFFEBB3);
      v903 = vdupq_n_s32(0x1E9Fu);
      v904 = vdupq_n_s32(0x94Au);
      v905 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v906 = v888;
        v907 = v887[1];
        v909 = v887[6];
        v908 = v887[7];
        v911 = v887[2];
        v910 = v887[3];
        v913 = v887[4];
        v912 = v887[5];
        v914 = vmlaq_s32(vmulq_s32(v910, v890), v913, v889);
        v915 = vmulq_s32(vaddq_s32(v913, v910), v890);
        v916 = vmulq_s32(vaddq_s32(v912, v911), v889);
        v917 = vmlaq_s32(vmulq_s32(v912, v890), v911, v889);
        v918 = vsubq_s32(vrshrq_n_s32(v915, 0xDuLL), v908);
        v919 = vsubq_s32(*v887, vrshrq_n_s32(v914, 0xDuLL));
        v920 = vrsraq_n_s32(*v887, v914, 0xDuLL);
        v921 = vrsraq_n_s32(v908, v915, 0xDuLL);
        v922 = vsubq_s32(vrshrq_n_s32(v917, 0xDuLL), v907);
        v923 = vrsraq_n_s32(v907, v917, 0xDuLL);
        v924 = vsubq_s32(v909, vrshrq_n_s32(v916, 0xDuLL));
        v925 = vrsraq_n_s32(v909, v916, 0xDuLL);
        v926 = vmlaq_s32(vmulq_s32(v925, v892), v922, v891);
        v927 = vmlaq_s32(vmulq_s32(v925, v893), v922, v892);
        v928 = vmlaq_s32(vmulq_s32(v923, v892), v924, v891);
        v929 = vmlaq_s32(vmulq_s32(v923, v893), v924, v892);
        v930 = vsubq_s32(vrshrq_n_s32(v929, 0xDuLL), v921);
        v931 = vsubq_s32(v920, vrshrq_n_s32(v926, 0xDuLL));
        v932 = vrsraq_n_s32(v920, v926, 0xDuLL);
        v933 = vsubq_s32(v918, vrshrq_n_s32(v927, 0xDuLL));
        v934 = vrsraq_n_s32(v918, v927, 0xDuLL);
        v935 = vsubq_s32(v919, vrshrq_n_s32(v928, 0xDuLL));
        v936 = vrsraq_n_s32(v919, v928, 0xDuLL);
        v937 = vrsraq_n_s32(v921, v929, 0xDuLL);
        *v887 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v934, v896), v932, v895), 0xDuLL);
        v887[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v937, v905), v935, v904), 0xDuLL);
        v887[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v930, v899), v936, v898), 0xDuLL);
        v887[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v931, v901), v933, v900), 0xDuLL);
        v887[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v931, v900), v933, v902), 0xDuLL);
        v887[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v930, v898), v936, v897), 0xDuLL);
        v887[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v937, v904), v935, v903), 0xDuLL);
        v887[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v934, v895), v932, v894), 0xDuLL);
        v887 = v1572;
        v888 = 0;
      }

      while ((v906 & 1) != 0);
      v938 = (a2 + 16);
      v939 = 8;
      do
      {
        v940 = *(v10 - 8);
        v941 = *v10++;
        *(v938 - 1) = v940;
        *v938 = v941;
        v938 += 2;
        --v939;
      }

      while (v939);
      break;
    case 8:
      v1442 = 0;
      v1443 = 2 * v9;
      do
      {
        v1444 = *v8->i8;
        v1445 = &v1573[v1442];
        *v1445 = vshll_n_s16(*v8, 2uLL);
        v1445[8] = vshll_high_n_s16(v1444, 2uLL);
        v1442 += 16;
        v8 = (v8 + v1443);
      }

      while (v1442 != 128);
      v1446 = v1573;
      v1447 = 1;
      v1448 = vdupq_n_s32(0x16A1u);
      v1449 = vdupq_n_s32(0xFFFFE95F);
      v1450 = vdupq_n_s32(0x1D90u);
      v1451 = vdupq_n_s32(0xC3Fu);
      v1452 = vdupq_n_s32(0xFFFFE270);
      v1453 = vdupq_n_s32(0x1FD9u);
      v1454 = vdupq_n_s32(0x323u);
      v1455 = vdupq_n_s32(0xFFFFE027);
      v1456 = vdupq_n_s32(0x1C39u);
      v1457 = vdupq_n_s32(0xF16u);
      v1458 = vdupq_n_s32(0xFFFFE3C7);
      v1459 = vdupq_n_s32(0x18BDu);
      v1460 = vdupq_n_s32(0x144Du);
      v1461 = vdupq_n_s32(0xFFFFEBB3);
      v1462 = vdupq_n_s32(0x1E9Fu);
      v1463 = vdupq_n_s32(0x94Au);
      v1464 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v1465 = v1447;
        v1466 = v1446[1];
        v1468 = v1446[6];
        v1467 = v1446[7];
        v1470 = v1446[2];
        v1469 = v1446[3];
        v1472 = v1446[4];
        v1471 = v1446[5];
        v1473 = vmlaq_s32(vmulq_s32(v1469, v1449), v1472, v1448);
        v1474 = vmulq_s32(vaddq_s32(v1472, v1469), v1449);
        v1475 = vmulq_s32(vaddq_s32(v1471, v1470), v1448);
        v1476 = vmlaq_s32(vmulq_s32(v1471, v1449), v1470, v1448);
        v1477 = vsubq_s32(vrshrq_n_s32(v1474, 0xDuLL), v1467);
        v1478 = vsubq_s32(*v1446, vrshrq_n_s32(v1473, 0xDuLL));
        v1479 = vrsraq_n_s32(*v1446, v1473, 0xDuLL);
        v1480 = vrsraq_n_s32(v1467, v1474, 0xDuLL);
        v1481 = vsubq_s32(vrshrq_n_s32(v1476, 0xDuLL), v1466);
        v1482 = vrsraq_n_s32(v1466, v1476, 0xDuLL);
        v1483 = vsubq_s32(v1468, vrshrq_n_s32(v1475, 0xDuLL));
        v1484 = vrsraq_n_s32(v1468, v1475, 0xDuLL);
        v1485 = vmlaq_s32(vmulq_s32(v1484, v1451), v1481, v1450);
        v1486 = vmlaq_s32(vmulq_s32(v1484, v1452), v1481, v1451);
        v1487 = vmlaq_s32(vmulq_s32(v1482, v1451), v1483, v1450);
        v1488 = vmlaq_s32(vmulq_s32(v1482, v1452), v1483, v1451);
        v1489 = vsubq_s32(vrshrq_n_s32(v1488, 0xDuLL), v1480);
        v1490 = vsubq_s32(v1479, vrshrq_n_s32(v1485, 0xDuLL));
        v1491 = vrsraq_n_s32(v1479, v1485, 0xDuLL);
        v1492 = vsubq_s32(v1477, vrshrq_n_s32(v1486, 0xDuLL));
        v1493 = vrsraq_n_s32(v1477, v1486, 0xDuLL);
        v1494 = vsubq_s32(v1478, vrshrq_n_s32(v1487, 0xDuLL));
        v1495 = vrsraq_n_s32(v1478, v1487, 0xDuLL);
        v1496 = vrsraq_n_s32(v1480, v1488, 0xDuLL);
        *v1446 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1493, v1455), v1491, v1454), 0xDuLL);
        v1446[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1496, v1464), v1494, v1463), 0xDuLL);
        v1446[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1489, v1458), v1495, v1457), 0xDuLL);
        v1446[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1490, v1460), v1492, v1459), 0xDuLL);
        v1446[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1490, v1459), v1492, v1461), 0xDuLL);
        v1446[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1489, v1457), v1495, v1456), 0xDuLL);
        v1446[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1496, v1463), v1494, v1462), 0xDuLL);
        v1446[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1493, v1454), v1491, v1453), 0xDuLL);
        v1446 = v1574;
        v1447 = 0;
      }

      while ((v1465 & 1) != 0);
      for (i11 = 0; i11 != 256; i11 += 16)
      {
        *&v1573[i11] = vrhaddq_s32(*&v1573[i11], 0);
      }

      v1498 = 0;
      v1499 = 1;
      do
      {
        v1500 = 0;
        v1501 = v1499;
        v1502 = 1;
        v1503 = &v1573[128 * v1498];
        v1504 = &v1571[64 * v1498];
        do
        {
          v1505 = &v1503[64 * v1500];
          v1506 = v1505[1];
          v1507 = v1505[2];
          v1508 = v1505[3];
          v1509 = vtrn1q_s32(*v1505, v1506);
          v1510 = vtrn2q_s32(*v1505, v1506);
          v1511 = vtrn1q_s32(v1507, v1508);
          v1512 = vzip2q_s64(v1509, v1511);
          v1509.i64[1] = v1511.i64[0];
          LOBYTE(v1505) = v1502;
          v1513 = vtrn2q_s32(v1507, v1508);
          v1514 = vzip2q_s64(v1510, v1513);
          v1510.i64[1] = v1513.i64[0];
          v1515 = &v1504[128 * v1500];
          *v1515 = v1509;
          v1515[1] = v1510;
          v1515[2] = v1512;
          v1515[3] = v1514;
          v1500 = 1;
          v1502 = 0;
        }

        while ((v1505 & 1) != 0);
        v1499 = 0;
        v1498 = 1;
      }

      while ((v1501 & 1) != 0);
      v1516 = v1571;
      v1517 = 1;
      v1518 = vdupq_n_s32(0x16A1u);
      v1519 = vdupq_n_s32(0xFFFFE95F);
      v1520 = vdupq_n_s32(0x1D90u);
      v1521 = vdupq_n_s32(0xC3Fu);
      v1522 = vdupq_n_s32(0xFFFFE270);
      v1523 = vdupq_n_s32(0x1FD9u);
      v1524 = vdupq_n_s32(0x323u);
      v1525 = vdupq_n_s32(0xFFFFE027);
      v1526 = vdupq_n_s32(0x1C39u);
      v1527 = vdupq_n_s32(0xF16u);
      v1528 = vdupq_n_s32(0xFFFFE3C7);
      v1529 = vdupq_n_s32(0x18BDu);
      v1530 = vdupq_n_s32(0x144Du);
      v1531 = vdupq_n_s32(0xFFFFEBB3);
      v1532 = vdupq_n_s32(0x1E9Fu);
      v1533 = vdupq_n_s32(0x94Au);
      v1534 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v1535 = v1517;
        v1536 = v1516[1];
        v1538 = v1516[6];
        v1537 = v1516[7];
        v1540 = v1516[2];
        v1539 = v1516[3];
        v1542 = v1516[4];
        v1541 = v1516[5];
        v1543 = vmlaq_s32(vmulq_s32(v1539, v1519), v1542, v1518);
        v1544 = vmulq_s32(vaddq_s32(v1542, v1539), v1519);
        v1545 = vmulq_s32(vaddq_s32(v1541, v1540), v1518);
        v1546 = vmlaq_s32(vmulq_s32(v1541, v1519), v1540, v1518);
        v1547 = vsubq_s32(vrshrq_n_s32(v1544, 0xDuLL), v1537);
        v1548 = vsubq_s32(*v1516, vrshrq_n_s32(v1543, 0xDuLL));
        v1549 = vrsraq_n_s32(*v1516, v1543, 0xDuLL);
        v1550 = vrsraq_n_s32(v1537, v1544, 0xDuLL);
        v1551 = vsubq_s32(vrshrq_n_s32(v1546, 0xDuLL), v1536);
        v1552 = vrsraq_n_s32(v1536, v1546, 0xDuLL);
        v1553 = vsubq_s32(v1538, vrshrq_n_s32(v1545, 0xDuLL));
        v1554 = vrsraq_n_s32(v1538, v1545, 0xDuLL);
        v1555 = vmlaq_s32(vmulq_s32(v1554, v1521), v1551, v1520);
        v1556 = vmlaq_s32(vmulq_s32(v1554, v1522), v1551, v1521);
        v1557 = vmlaq_s32(vmulq_s32(v1552, v1521), v1553, v1520);
        v1558 = vmlaq_s32(vmulq_s32(v1552, v1522), v1553, v1521);
        v1559 = vsubq_s32(vrshrq_n_s32(v1558, 0xDuLL), v1550);
        v1560 = vsubq_s32(v1549, vrshrq_n_s32(v1555, 0xDuLL));
        v1561 = vrsraq_n_s32(v1549, v1555, 0xDuLL);
        v1562 = vsubq_s32(v1547, vrshrq_n_s32(v1556, 0xDuLL));
        v1563 = vrsraq_n_s32(v1547, v1556, 0xDuLL);
        v1564 = vsubq_s32(v1548, vrshrq_n_s32(v1557, 0xDuLL));
        v1565 = vrsraq_n_s32(v1548, v1557, 0xDuLL);
        v1566 = vrsraq_n_s32(v1550, v1558, 0xDuLL);
        *v1516 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1563, v1525), v1561, v1524), 0xDuLL);
        v1516[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1566, v1534), v1564, v1533), 0xDuLL);
        v1516[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1559, v1528), v1565, v1527), 0xDuLL);
        v1516[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1560, v1530), v1562, v1529), 0xDuLL);
        v1516[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1560, v1529), v1562, v1531), 0xDuLL);
        v1516[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1559, v1527), v1565, v1526), 0xDuLL);
        v1516[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1566, v1533), v1564, v1532), 0xDuLL);
        v1516[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1563, v1524), v1561, v1523), 0xDuLL);
        v1516 = v1572;
        v1517 = 0;
      }

      while ((v1535 & 1) != 0);
      v1567 = (a2 + 16);
      v1568 = 8;
      do
      {
        v1569 = *(v10 - 8);
        v1570 = *v10++;
        *(v1567 - 1) = v1569;
        *v1567 = v1570;
        v1567 += 2;
        --v1568;
      }

      while (v1568);
      break;
    case 9:
      v448 = 0;
      v449 = 2 * v9;
      do
      {
        v450 = *v8->i8;
        v451 = &v1573[v448];
        *v451 = vshll_n_s16(*v8, 2uLL);
        v451[8] = vshll_high_n_s16(v450, 2uLL);
        v448 += 16;
        v8 = (v8 + v449);
      }

      while (v448 != 128);
      v452 = v1573;
      v453 = 1;
      do
      {
        v454 = v453;
        v455 = vaddq_s32(v452[1], v452[1]);
        *v452 = vaddq_s32(*v452, *v452);
        v452[1] = v455;
        v456 = vaddq_s32(v452[3], v452[3]);
        v452[2] = vaddq_s32(v452[2], v452[2]);
        v452[3] = v456;
        v457 = vaddq_s32(v452[5], v452[5]);
        v452[4] = vaddq_s32(v452[4], v452[4]);
        v452[5] = v457;
        v458 = vaddq_s32(v452[7], v452[7]);
        v452[6] = vaddq_s32(v452[6], v452[6]);
        v452[7] = v458;
        v452 = v1574;
        v453 = 0;
      }

      while ((v454 & 1) != 0);
      for (i12 = 0; i12 != 256; i12 += 16)
      {
        *&v1573[i12] = vrhaddq_s32(*&v1573[i12], 0);
      }

      v460 = 0;
      v461 = 1;
      do
      {
        v462 = 0;
        v463 = v461;
        v464 = 1;
        v465 = &v1573[128 * v460];
        v466 = &v1571[64 * v460];
        do
        {
          v467 = &v465[64 * v462];
          v468 = v467[1];
          v469 = v467[2];
          v470 = v467[3];
          v471 = vtrn1q_s32(*v467, v468);
          v472 = vtrn2q_s32(*v467, v468);
          v473 = vtrn1q_s32(v469, v470);
          v474 = vzip2q_s64(v471, v473);
          v471.i64[1] = v473.i64[0];
          LOBYTE(v467) = v464;
          v475 = vtrn2q_s32(v469, v470);
          v476 = vzip2q_s64(v472, v475);
          v472.i64[1] = v475.i64[0];
          v477 = &v466[128 * v462];
          *v477 = v471;
          v477[1] = v472;
          v477[2] = v474;
          v477[3] = v476;
          v462 = 1;
          v464 = 0;
        }

        while ((v467 & 1) != 0);
        v461 = 0;
        v460 = 1;
      }

      while ((v463 & 1) != 0);
      v478 = v1571;
      v479 = 1;
      do
      {
        v480 = v479;
        v481 = vaddq_s32(v478[1], v478[1]);
        *v478 = vaddq_s32(*v478, *v478);
        v478[1] = v481;
        v482 = vaddq_s32(v478[3], v478[3]);
        v478[2] = vaddq_s32(v478[2], v478[2]);
        v478[3] = v482;
        v483 = vaddq_s32(v478[5], v478[5]);
        v478[4] = vaddq_s32(v478[4], v478[4]);
        v478[5] = v483;
        v484 = vaddq_s32(v478[7], v478[7]);
        v478[6] = vaddq_s32(v478[6], v478[6]);
        v478[7] = v484;
        v478 = v1572;
        v479 = 0;
      }

      while ((v480 & 1) != 0);
      v485 = (a2 + 16);
      v486 = 8;
      do
      {
        v487 = *(v10 - 8);
        v488 = *v10++;
        *(v485 - 1) = v487;
        *v485 = v488;
        v485 += 2;
        --v486;
      }

      while (v486);
      break;
    case 10:
      v1376 = 0;
      v1377 = 2 * v9;
      do
      {
        v1378 = *v8->i8;
        v1379 = &v1573[v1376];
        *v1379 = vshll_n_s16(*v8, 2uLL);
        v1379[8] = vshll_high_n_s16(v1378, 2uLL);
        v1376 += 16;
        v8 = (v8 + v1377);
      }

      while (v1376 != 128);
      v1380 = v1573;
      v1381 = 1;
      v1382 = vdupq_n_s32(0x16A1u);
      v1383 = vdupq_n_s32(0xFFFFE95F);
      v1384 = vdupq_n_s32(0x1D90u);
      v1385 = vdupq_n_s32(0xC3Fu);
      v1386 = vdupq_n_s32(0xFFFFE270);
      v1387 = vdupq_n_s32(0x1F63u);
      v1388 = vdupq_n_s32(0x63Eu);
      v1389 = vdupq_n_s32(0xFFFFE09D);
      v1390 = vdupq_n_s32(0x1A9Bu);
      v1391 = vdupq_n_s32(0x11C7u);
      v1392 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v1393 = 0;
        v1394 = v1381;
        for (i13 = 7; i13 != 3; --i13)
        {
          *(&v1575 + v1393 * 16) = vaddq_s32(v1380[i13], v1380[v1393]);
          ++v1393;
        }

        v1396 = 4;
        for (i14 = 3; i14 != -1; --i14)
        {
          *(&v1575 + v1396 * 16) = vsubq_s32(v1380[i14], v1380[v1396]);
          ++v1396;
        }

        v1381 = 0;
        v1398 = vaddq_s32(v1578, v1575);
        v1399 = vaddq_s32(v1577, v1576);
        v1400 = vsubq_s32(v1576, v1577);
        v1401 = vsubq_s32(v1575, v1578);
        v1402 = vmulq_s32(vaddq_s32(v1580, v1581), v1382);
        v1403 = vmlaq_s32(vmulq_s32(v1581, v1382), v1580, v1383);
        v1404 = vaddq_s32(v1398, v1399);
        v1405 = vmlaq_s32(vmulq_s32(v1399, v1383), v1398, v1382);
        v1406 = vmlaq_s32(vmulq_s32(v1400, v1385), v1401, v1384);
        v1407 = vmlaq_s32(vmulq_s32(v1400, v1386), v1401, v1385);
        v1408 = vsubq_s32(v1579, vrshrq_n_s32(v1403, 0xDuLL));
        v1409 = vrsraq_n_s32(v1579, v1403, 0xDuLL);
        v1410 = vsubq_s32(v1582, vrshrq_n_s32(v1402, 0xDuLL));
        v1411 = vrsraq_n_s32(v1582, v1402, 0xDuLL);
        *v1380 = vrshrq_n_s32(vmulq_s32(v1404, v1382), 0xDuLL);
        v1380[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1409, v1388), v1411, v1387), 0xDuLL);
        v1380[2] = vrshrq_n_s32(v1406, 0xDuLL);
        v1380[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1410, v1390), v1408, v1392), 0xDuLL);
        v1380[4] = vrshrq_n_s32(v1405, 0xDuLL);
        v1380[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1410, v1391), v1408, v1390), 0xDuLL);
        v1380[6] = vrshrq_n_s32(v1407, 0xDuLL);
        v1380[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1409, v1389), v1411, v1388), 0xDuLL);
        v1380 = v1574;
      }

      while ((v1394 & 1) != 0);
      for (i15 = 0; i15 != 256; i15 += 16)
      {
        *&v1573[i15] = vrhaddq_s32(*&v1573[i15], 0);
      }

      v1413 = 0;
      v1414 = 1;
      do
      {
        v1415 = 0;
        v1416 = v1414;
        v1417 = 1;
        v1418 = &v1573[128 * v1413];
        v1419 = &v1571[64 * v1413];
        do
        {
          v1420 = &v1418[64 * v1415];
          v1421 = v1420[1];
          v1422 = v1420[2];
          v1423 = v1420[3];
          v1424 = vtrn1q_s32(*v1420, v1421);
          v1425 = vtrn2q_s32(*v1420, v1421);
          v1426 = vtrn1q_s32(v1422, v1423);
          v1427 = vzip2q_s64(v1424, v1426);
          v1424.i64[1] = v1426.i64[0];
          LOBYTE(v1420) = v1417;
          v1428 = vtrn2q_s32(v1422, v1423);
          v1429 = vzip2q_s64(v1425, v1428);
          v1425.i64[1] = v1428.i64[0];
          v1430 = &v1419[128 * v1415];
          *v1430 = v1424;
          v1430[1] = v1425;
          v1430[2] = v1427;
          v1430[3] = v1429;
          v1415 = 1;
          v1417 = 0;
        }

        while ((v1420 & 1) != 0);
        v1414 = 0;
        v1413 = 1;
      }

      while ((v1416 & 1) != 0);
      v1431 = v1571;
      v1432 = 1;
      do
      {
        v1433 = v1432;
        v1434 = vaddq_s32(v1431[1], v1431[1]);
        *v1431 = vaddq_s32(*v1431, *v1431);
        v1431[1] = v1434;
        v1435 = vaddq_s32(v1431[3], v1431[3]);
        v1431[2] = vaddq_s32(v1431[2], v1431[2]);
        v1431[3] = v1435;
        v1436 = vaddq_s32(v1431[5], v1431[5]);
        v1431[4] = vaddq_s32(v1431[4], v1431[4]);
        v1431[5] = v1436;
        v1437 = vaddq_s32(v1431[7], v1431[7]);
        v1431[6] = vaddq_s32(v1431[6], v1431[6]);
        v1431[7] = v1437;
        v1431 = v1572;
        v1432 = 0;
      }

      while ((v1433 & 1) != 0);
      v1438 = (a2 + 16);
      v1439 = 8;
      do
      {
        v1440 = *(v10 - 8);
        v1441 = *v10++;
        *(v1438 - 1) = v1440;
        *v1438 = v1441;
        v1438 += 2;
        --v1439;
      }

      while (v1439);
      break;
    case 11:
      v187 = 0;
      v188 = 2 * v9;
      do
      {
        v189 = *v8->i8;
        v190 = &v1573[v187];
        *v190 = vshll_n_s16(*v8, 2uLL);
        v190[8] = vshll_high_n_s16(v189, 2uLL);
        v187 += 16;
        v8 = (v8 + v188);
      }

      while (v187 != 128);
      v191 = v1573;
      v192 = 1;
      do
      {
        v193 = v192;
        v194 = vaddq_s32(v191[1], v191[1]);
        *v191 = vaddq_s32(*v191, *v191);
        v191[1] = v194;
        v195 = vaddq_s32(v191[3], v191[3]);
        v191[2] = vaddq_s32(v191[2], v191[2]);
        v191[3] = v195;
        v196 = vaddq_s32(v191[5], v191[5]);
        v191[4] = vaddq_s32(v191[4], v191[4]);
        v191[5] = v196;
        v197 = vaddq_s32(v191[7], v191[7]);
        v191[6] = vaddq_s32(v191[6], v191[6]);
        v191[7] = v197;
        v191 = v1574;
        v192 = 0;
      }

      while ((v193 & 1) != 0);
      for (i16 = 0; i16 != 256; i16 += 16)
      {
        *&v1573[i16] = vrhaddq_s32(*&v1573[i16], 0);
      }

      v199 = 0;
      v200 = 1;
      do
      {
        v201 = 0;
        v202 = v200;
        v203 = 1;
        v204 = &v1573[128 * v199];
        v205 = &v1571[64 * v199];
        do
        {
          v206 = &v204[64 * v201];
          v207 = v206[1];
          v208 = v206[2];
          v209 = v206[3];
          v210 = vtrn1q_s32(*v206, v207);
          v211 = vtrn2q_s32(*v206, v207);
          v212 = vtrn1q_s32(v208, v209);
          v213 = vzip2q_s64(v210, v212);
          v210.i64[1] = v212.i64[0];
          LOBYTE(v206) = v203;
          v214 = vtrn2q_s32(v208, v209);
          v215 = vzip2q_s64(v211, v214);
          v211.i64[1] = v214.i64[0];
          v216 = &v205[128 * v201];
          *v216 = v210;
          v216[1] = v211;
          v216[2] = v213;
          v216[3] = v215;
          v201 = 1;
          v203 = 0;
        }

        while ((v206 & 1) != 0);
        v200 = 0;
        v199 = 1;
      }

      while ((v202 & 1) != 0);
      v217 = v1571;
      v218 = 1;
      v219 = vdupq_n_s32(0x16A1u);
      v220 = vdupq_n_s32(0xFFFFE95F);
      v221 = vdupq_n_s32(0x1D90u);
      v222 = vdupq_n_s32(0xC3Fu);
      v223 = vdupq_n_s32(0xFFFFE270);
      v224 = vdupq_n_s32(0x1F63u);
      v225 = vdupq_n_s32(0x63Eu);
      v226 = vdupq_n_s32(0xFFFFE09D);
      v227 = vdupq_n_s32(0x1A9Bu);
      v228 = vdupq_n_s32(0x11C7u);
      v229 = vdupq_n_s32(0xFFFFEE39);
      do
      {
        v230 = 0;
        v231 = v218;
        for (i17 = 7; i17 != 3; --i17)
        {
          *(&v1575 + v230 * 16) = vaddq_s32(v217[i17], v217[v230]);
          ++v230;
        }

        v233 = 4;
        for (i18 = 3; i18 != -1; --i18)
        {
          *(&v1575 + v233 * 16) = vsubq_s32(v217[i18], v217[v233]);
          ++v233;
        }

        v218 = 0;
        v235 = vaddq_s32(v1578, v1575);
        v236 = vaddq_s32(v1577, v1576);
        v237 = vsubq_s32(v1576, v1577);
        v238 = vsubq_s32(v1575, v1578);
        v239 = vmulq_s32(vaddq_s32(v1580, v1581), v219);
        v240 = vmlaq_s32(vmulq_s32(v1581, v219), v1580, v220);
        v241 = vaddq_s32(v235, v236);
        v242 = vmlaq_s32(vmulq_s32(v236, v220), v235, v219);
        v243 = vmlaq_s32(vmulq_s32(v237, v222), v238, v221);
        v244 = vmlaq_s32(vmulq_s32(v237, v223), v238, v222);
        v245 = vsubq_s32(v1579, vrshrq_n_s32(v240, 0xDuLL));
        v246 = vrsraq_n_s32(v1579, v240, 0xDuLL);
        v247 = vsubq_s32(v1582, vrshrq_n_s32(v239, 0xDuLL));
        v248 = vrsraq_n_s32(v1582, v239, 0xDuLL);
        *v217 = vrshrq_n_s32(vmulq_s32(v241, v219), 0xDuLL);
        v217[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v246, v225), v248, v224), 0xDuLL);
        v217[2] = vrshrq_n_s32(v243, 0xDuLL);
        v217[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v247, v227), v245, v229), 0xDuLL);
        v217[4] = vrshrq_n_s32(v242, 0xDuLL);
        v217[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v247, v228), v245, v227), 0xDuLL);
        v217[6] = vrshrq_n_s32(v244, 0xDuLL);
        v217[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v246, v226), v248, v225), 0xDuLL);
        v217 = v1572;
      }

      while ((v231 & 1) != 0);
      v249 = (a2 + 16);
      v250 = 8;
      do
      {
        v251 = *(v10 - 8);
        v252 = *v10++;
        *(v249 - 1) = v251;
        *v249 = v252;
        v249 += 2;
        --v250;
      }

      while (v250);
      break;
    case 12:
      v363 = 0;
      v364 = 2 * v9;
      do
      {
        v365 = *v8->i8;
        v366 = &v1573[v363];
        *v366 = vshll_n_s16(*v8, 2uLL);
        v366[8] = vshll_high_n_s16(v365, 2uLL);
        v363 += 16;
        v8 = (v8 + v364);
      }

      while (v363 != 128);
      v367 = v1573;
      v368 = 1;
      v369 = vdupq_n_s32(0x16A1u);
      v370 = vdupq_n_s32(0xFFFFE95F);
      v371 = vdupq_n_s32(0x1D90u);
      v372 = vdupq_n_s32(0xC3Fu);
      v373 = vdupq_n_s32(0xFFFFE270);
      v374 = vdupq_n_s32(0x1FD9u);
      v375 = vdupq_n_s32(0x323u);
      v376 = vdupq_n_s32(0xFFFFE027);
      v377 = vdupq_n_s32(0x1C39u);
      v378 = vdupq_n_s32(0xF16u);
      v379 = vdupq_n_s32(0xFFFFE3C7);
      v380 = vdupq_n_s32(0x18BDu);
      v381 = vdupq_n_s32(0x144Du);
      v382 = vdupq_n_s32(0xFFFFEBB3);
      v383 = vdupq_n_s32(0x1E9Fu);
      v384 = vdupq_n_s32(0x94Au);
      v385 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v386 = v368;
        v387 = v367[1];
        v389 = v367[6];
        v388 = v367[7];
        v391 = v367[2];
        v390 = v367[3];
        v393 = v367[4];
        v392 = v367[5];
        v394 = vmlaq_s32(vmulq_s32(v390, v370), v393, v369);
        v395 = vmulq_s32(vaddq_s32(v393, v390), v370);
        v396 = vmulq_s32(vaddq_s32(v392, v391), v369);
        v397 = vmlaq_s32(vmulq_s32(v392, v370), v391, v369);
        v398 = vsubq_s32(vrshrq_n_s32(v395, 0xDuLL), v388);
        v399 = vsubq_s32(*v367, vrshrq_n_s32(v394, 0xDuLL));
        v400 = vrsraq_n_s32(*v367, v394, 0xDuLL);
        v401 = vrsraq_n_s32(v388, v395, 0xDuLL);
        v402 = vsubq_s32(vrshrq_n_s32(v397, 0xDuLL), v387);
        v403 = vrsraq_n_s32(v387, v397, 0xDuLL);
        v404 = vsubq_s32(v389, vrshrq_n_s32(v396, 0xDuLL));
        v405 = vrsraq_n_s32(v389, v396, 0xDuLL);
        v406 = vmlaq_s32(vmulq_s32(v405, v372), v402, v371);
        v407 = vmlaq_s32(vmulq_s32(v405, v373), v402, v372);
        v408 = vmlaq_s32(vmulq_s32(v403, v372), v404, v371);
        v409 = vmlaq_s32(vmulq_s32(v403, v373), v404, v372);
        v410 = vsubq_s32(vrshrq_n_s32(v409, 0xDuLL), v401);
        v411 = vsubq_s32(v400, vrshrq_n_s32(v406, 0xDuLL));
        v412 = vrsraq_n_s32(v400, v406, 0xDuLL);
        v413 = vsubq_s32(v398, vrshrq_n_s32(v407, 0xDuLL));
        v414 = vrsraq_n_s32(v398, v407, 0xDuLL);
        v415 = vsubq_s32(v399, vrshrq_n_s32(v408, 0xDuLL));
        v416 = vrsraq_n_s32(v399, v408, 0xDuLL);
        v417 = vrsraq_n_s32(v401, v409, 0xDuLL);
        *v367 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v414, v376), v412, v375), 0xDuLL);
        v367[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v417, v385), v415, v384), 0xDuLL);
        v367[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v410, v379), v416, v378), 0xDuLL);
        v367[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v411, v381), v413, v380), 0xDuLL);
        v367[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v411, v380), v413, v382), 0xDuLL);
        v367[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v410, v378), v416, v377), 0xDuLL);
        v367[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v417, v384), v415, v383), 0xDuLL);
        v367[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v414, v375), v412, v374), 0xDuLL);
        v367 = v1574;
        v368 = 0;
      }

      while ((v386 & 1) != 0);
      for (i19 = 0; i19 != 256; i19 += 16)
      {
        *&v1573[i19] = vrhaddq_s32(*&v1573[i19], 0);
      }

      v419 = 0;
      v420 = 1;
      do
      {
        v421 = 0;
        v422 = v420;
        v423 = 1;
        v424 = &v1573[128 * v419];
        v425 = &v1571[64 * v419];
        do
        {
          v426 = &v424[64 * v421];
          v427 = v426[1];
          v428 = v426[2];
          v429 = v426[3];
          v430 = vtrn1q_s32(*v426, v427);
          v431 = vtrn2q_s32(*v426, v427);
          v432 = vtrn1q_s32(v428, v429);
          v433 = vzip2q_s64(v430, v432);
          v430.i64[1] = v432.i64[0];
          LOBYTE(v426) = v423;
          v434 = vtrn2q_s32(v428, v429);
          v435 = vzip2q_s64(v431, v434);
          v431.i64[1] = v434.i64[0];
          v436 = &v425[128 * v421];
          *v436 = v430;
          v436[1] = v431;
          v436[2] = v433;
          v436[3] = v435;
          v421 = 1;
          v423 = 0;
        }

        while ((v426 & 1) != 0);
        v420 = 0;
        v419 = 1;
      }

      while ((v422 & 1) != 0);
      v437 = v1571;
      v438 = 1;
      do
      {
        v439 = v438;
        v440 = vaddq_s32(v437[1], v437[1]);
        *v437 = vaddq_s32(*v437, *v437);
        v437[1] = v440;
        v441 = vaddq_s32(v437[3], v437[3]);
        v437[2] = vaddq_s32(v437[2], v437[2]);
        v437[3] = v441;
        v442 = vaddq_s32(v437[5], v437[5]);
        v437[4] = vaddq_s32(v437[4], v437[4]);
        v437[5] = v442;
        v443 = vaddq_s32(v437[7], v437[7]);
        v437[6] = vaddq_s32(v437[6], v437[6]);
        v437[7] = v443;
        v437 = v1572;
        v438 = 0;
      }

      while ((v439 & 1) != 0);
      v444 = (a2 + 16);
      v445 = 8;
      do
      {
        v446 = *(v10 - 8);
        v447 = *v10++;
        *(v444 - 1) = v446;
        *v444 = v447;
        v444 += 2;
        --v445;
      }

      while (v445);
      break;
    case 13:
      v1162 = 0;
      v1163 = 2 * v9;
      do
      {
        v1164 = *v8->i8;
        v1165 = &v1573[v1162];
        *v1165 = vshll_n_s16(*v8, 2uLL);
        v1165[8] = vshll_high_n_s16(v1164, 2uLL);
        v1162 += 16;
        v8 = (v8 + v1163);
      }

      while (v1162 != 128);
      v1166 = v1573;
      v1167 = 1;
      do
      {
        v1168 = v1167;
        v1169 = vaddq_s32(v1166[1], v1166[1]);
        *v1166 = vaddq_s32(*v1166, *v1166);
        v1166[1] = v1169;
        v1170 = vaddq_s32(v1166[3], v1166[3]);
        v1166[2] = vaddq_s32(v1166[2], v1166[2]);
        v1166[3] = v1170;
        v1171 = vaddq_s32(v1166[5], v1166[5]);
        v1166[4] = vaddq_s32(v1166[4], v1166[4]);
        v1166[5] = v1171;
        v1172 = vaddq_s32(v1166[7], v1166[7]);
        v1166[6] = vaddq_s32(v1166[6], v1166[6]);
        v1166[7] = v1172;
        v1166 = v1574;
        v1167 = 0;
      }

      while ((v1168 & 1) != 0);
      for (i20 = 0; i20 != 256; i20 += 16)
      {
        *&v1573[i20] = vrhaddq_s32(*&v1573[i20], 0);
      }

      v1174 = 0;
      v1175 = 1;
      do
      {
        v1176 = 0;
        v1177 = v1175;
        v1178 = 1;
        v1179 = &v1573[128 * v1174];
        v1180 = &v1571[64 * v1174];
        do
        {
          v1181 = &v1179[64 * v1176];
          v1182 = v1181[1];
          v1183 = v1181[2];
          v1184 = v1181[3];
          v1185 = vtrn1q_s32(*v1181, v1182);
          v1186 = vtrn2q_s32(*v1181, v1182);
          v1187 = vtrn1q_s32(v1183, v1184);
          v1188 = vzip2q_s64(v1185, v1187);
          v1185.i64[1] = v1187.i64[0];
          LOBYTE(v1181) = v1178;
          v1189 = vtrn2q_s32(v1183, v1184);
          v1190 = vzip2q_s64(v1186, v1189);
          v1186.i64[1] = v1189.i64[0];
          v1191 = &v1180[128 * v1176];
          *v1191 = v1185;
          v1191[1] = v1186;
          v1191[2] = v1188;
          v1191[3] = v1190;
          v1176 = 1;
          v1178 = 0;
        }

        while ((v1181 & 1) != 0);
        v1175 = 0;
        v1174 = 1;
      }

      while ((v1177 & 1) != 0);
      v1192 = v1571;
      v1193 = 1;
      v1194 = vdupq_n_s32(0x16A1u);
      v1195 = vdupq_n_s32(0xFFFFE95F);
      v1196 = vdupq_n_s32(0x1D90u);
      v1197 = vdupq_n_s32(0xC3Fu);
      v1198 = vdupq_n_s32(0xFFFFE270);
      v1199 = vdupq_n_s32(0x1FD9u);
      v1200 = vdupq_n_s32(0x323u);
      v1201 = vdupq_n_s32(0xFFFFE027);
      v1202 = vdupq_n_s32(0x1C39u);
      v1203 = vdupq_n_s32(0xF16u);
      v1204 = vdupq_n_s32(0xFFFFE3C7);
      v1205 = vdupq_n_s32(0x18BDu);
      v1206 = vdupq_n_s32(0x144Du);
      v1207 = vdupq_n_s32(0xFFFFEBB3);
      v1208 = vdupq_n_s32(0x1E9Fu);
      v1209 = vdupq_n_s32(0x94Au);
      v1210 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v1211 = v1193;
        v1212 = v1192[1];
        v1214 = v1192[6];
        v1213 = v1192[7];
        v1216 = v1192[2];
        v1215 = v1192[3];
        v1218 = v1192[4];
        v1217 = v1192[5];
        v1219 = vmlaq_s32(vmulq_s32(v1215, v1195), v1218, v1194);
        v1220 = vmulq_s32(vaddq_s32(v1218, v1215), v1195);
        v1221 = vmulq_s32(vaddq_s32(v1217, v1216), v1194);
        v1222 = vmlaq_s32(vmulq_s32(v1217, v1195), v1216, v1194);
        v1223 = vsubq_s32(vrshrq_n_s32(v1220, 0xDuLL), v1213);
        v1224 = vsubq_s32(*v1192, vrshrq_n_s32(v1219, 0xDuLL));
        v1225 = vrsraq_n_s32(*v1192, v1219, 0xDuLL);
        v1226 = vrsraq_n_s32(v1213, v1220, 0xDuLL);
        v1227 = vsubq_s32(vrshrq_n_s32(v1222, 0xDuLL), v1212);
        v1228 = vrsraq_n_s32(v1212, v1222, 0xDuLL);
        v1229 = vsubq_s32(v1214, vrshrq_n_s32(v1221, 0xDuLL));
        v1230 = vrsraq_n_s32(v1214, v1221, 0xDuLL);
        v1231 = vmlaq_s32(vmulq_s32(v1230, v1197), v1227, v1196);
        v1232 = vmlaq_s32(vmulq_s32(v1230, v1198), v1227, v1197);
        v1233 = vmlaq_s32(vmulq_s32(v1228, v1197), v1229, v1196);
        v1234 = vmlaq_s32(vmulq_s32(v1228, v1198), v1229, v1197);
        v1235 = vsubq_s32(vrshrq_n_s32(v1234, 0xDuLL), v1226);
        v1236 = vsubq_s32(v1225, vrshrq_n_s32(v1231, 0xDuLL));
        v1237 = vrsraq_n_s32(v1225, v1231, 0xDuLL);
        v1238 = vsubq_s32(v1223, vrshrq_n_s32(v1232, 0xDuLL));
        v1239 = vrsraq_n_s32(v1223, v1232, 0xDuLL);
        v1240 = vsubq_s32(v1224, vrshrq_n_s32(v1233, 0xDuLL));
        v1241 = vrsraq_n_s32(v1224, v1233, 0xDuLL);
        v1242 = vrsraq_n_s32(v1226, v1234, 0xDuLL);
        *v1192 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1239, v1201), v1237, v1200), 0xDuLL);
        v1192[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1242, v1210), v1240, v1209), 0xDuLL);
        v1192[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1235, v1204), v1241, v1203), 0xDuLL);
        v1192[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1236, v1206), v1238, v1205), 0xDuLL);
        v1192[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1236, v1205), v1238, v1207), 0xDuLL);
        v1192[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1235, v1203), v1241, v1202), 0xDuLL);
        v1192[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1242, v1209), v1240, v1208), 0xDuLL);
        v1192[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v1239, v1200), v1237, v1199), 0xDuLL);
        v1192 = v1572;
        v1193 = 0;
      }

      while ((v1211 & 1) != 0);
      v1243 = (a2 + 16);
      v1244 = 8;
      do
      {
        v1245 = *(v10 - 8);
        v1246 = *v10++;
        *(v1243 - 1) = v1245;
        *v1243 = v1246;
        v1243 += 2;
        --v1244;
      }

      while (v1244);
      break;
    case 14:
      v102 = 0;
      v103 = 2 * v9;
      do
      {
        v104 = *v8->i8;
        v105 = &v1573[v102];
        *v105 = vshll_n_s16(*v8, 2uLL);
        v105[8] = vshll_high_n_s16(v104, 2uLL);
        v102 += 16;
        v8 = (v8 + v103);
      }

      while (v102 != 128);
      v106 = v1573;
      v107 = 1;
      v108 = vdupq_n_s32(0x16A1u);
      v109 = vdupq_n_s32(0xFFFFE95F);
      v110 = vdupq_n_s32(0x1D90u);
      v111 = vdupq_n_s32(0xC3Fu);
      v112 = vdupq_n_s32(0xFFFFE270);
      v113 = vdupq_n_s32(0x1FD9u);
      v114 = vdupq_n_s32(0x323u);
      v115 = vdupq_n_s32(0xFFFFE027);
      v116 = vdupq_n_s32(0x1C39u);
      v117 = vdupq_n_s32(0xF16u);
      v118 = vdupq_n_s32(0xFFFFE3C7);
      v119 = vdupq_n_s32(0x18BDu);
      v120 = vdupq_n_s32(0x144Du);
      v121 = vdupq_n_s32(0xFFFFEBB3);
      v122 = vdupq_n_s32(0x1E9Fu);
      v123 = vdupq_n_s32(0x94Au);
      v124 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v125 = v107;
        v126 = v106[1];
        v128 = v106[6];
        v127 = v106[7];
        v130 = v106[2];
        v129 = v106[3];
        v132 = v106[4];
        v131 = v106[5];
        v133 = vmlaq_s32(vmulq_s32(v129, v109), v132, v108);
        v134 = vmulq_s32(vaddq_s32(v132, v129), v109);
        v135 = vmulq_s32(vaddq_s32(v131, v130), v108);
        v136 = vmlaq_s32(vmulq_s32(v131, v109), v130, v108);
        v137 = vsubq_s32(vrshrq_n_s32(v134, 0xDuLL), v127);
        v138 = vsubq_s32(*v106, vrshrq_n_s32(v133, 0xDuLL));
        v139 = vrsraq_n_s32(*v106, v133, 0xDuLL);
        v140 = vrsraq_n_s32(v127, v134, 0xDuLL);
        v141 = vsubq_s32(vrshrq_n_s32(v136, 0xDuLL), v126);
        v142 = vrsraq_n_s32(v126, v136, 0xDuLL);
        v143 = vsubq_s32(v128, vrshrq_n_s32(v135, 0xDuLL));
        v144 = vrsraq_n_s32(v128, v135, 0xDuLL);
        v145 = vmlaq_s32(vmulq_s32(v144, v111), v141, v110);
        v146 = vmlaq_s32(vmulq_s32(v144, v112), v141, v111);
        v147 = vmlaq_s32(vmulq_s32(v142, v111), v143, v110);
        v148 = vmlaq_s32(vmulq_s32(v142, v112), v143, v111);
        v149 = vsubq_s32(vrshrq_n_s32(v148, 0xDuLL), v140);
        v150 = vsubq_s32(v139, vrshrq_n_s32(v145, 0xDuLL));
        v151 = vrsraq_n_s32(v139, v145, 0xDuLL);
        v152 = vsubq_s32(v137, vrshrq_n_s32(v146, 0xDuLL));
        v153 = vrsraq_n_s32(v137, v146, 0xDuLL);
        v154 = vsubq_s32(v138, vrshrq_n_s32(v147, 0xDuLL));
        v155 = vrsraq_n_s32(v138, v147, 0xDuLL);
        v156 = vrsraq_n_s32(v140, v148, 0xDuLL);
        *v106 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v153, v115), v151, v114), 0xDuLL);
        v106[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v156, v124), v154, v123), 0xDuLL);
        v106[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v149, v118), v155, v117), 0xDuLL);
        v106[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v150, v120), v152, v119), 0xDuLL);
        v106[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v150, v119), v152, v121), 0xDuLL);
        v106[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v149, v117), v155, v116), 0xDuLL);
        v106[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v156, v123), v154, v122), 0xDuLL);
        v106[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v153, v114), v151, v113), 0xDuLL);
        v106 = v1574;
        v107 = 0;
      }

      while ((v125 & 1) != 0);
      for (i21 = 0; i21 != 256; i21 += 16)
      {
        *&v1573[i21] = vrhaddq_s32(*&v1573[i21], 0);
      }

      v158 = 0;
      v159 = 1;
      do
      {
        v160 = 0;
        v161 = v159;
        v162 = 1;
        v163 = &v1573[128 * v158];
        v164 = &v1571[64 * v158];
        do
        {
          v165 = &v163[64 * v160];
          v166 = v165[1];
          v167 = v165[2];
          v168 = v165[3];
          v169 = vtrn1q_s32(*v165, v166);
          v170 = vtrn2q_s32(*v165, v166);
          v171 = vtrn1q_s32(v167, v168);
          v172 = vzip2q_s64(v169, v171);
          v169.i64[1] = v171.i64[0];
          LOBYTE(v165) = v162;
          v173 = vtrn2q_s32(v167, v168);
          v174 = vzip2q_s64(v170, v173);
          v170.i64[1] = v173.i64[0];
          v175 = &v164[128 * v160];
          *v175 = v169;
          v175[1] = v170;
          v175[2] = v172;
          v175[3] = v174;
          v160 = 1;
          v162 = 0;
        }

        while ((v165 & 1) != 0);
        v159 = 0;
        v158 = 1;
      }

      while ((v161 & 1) != 0);
      v176 = v1571;
      v177 = 1;
      do
      {
        v178 = v177;
        v179 = vaddq_s32(v176[1], v176[1]);
        *v176 = vaddq_s32(*v176, *v176);
        v176[1] = v179;
        v180 = vaddq_s32(v176[3], v176[3]);
        v176[2] = vaddq_s32(v176[2], v176[2]);
        v176[3] = v180;
        v181 = vaddq_s32(v176[5], v176[5]);
        v176[4] = vaddq_s32(v176[4], v176[4]);
        v176[5] = v181;
        v182 = vaddq_s32(v176[7], v176[7]);
        v176[6] = vaddq_s32(v176[6], v176[6]);
        v176[7] = v182;
        v176 = v1572;
        v177 = 0;
      }

      while ((v178 & 1) != 0);
      v183 = (a2 + 16);
      v184 = 8;
      do
      {
        v185 = *(v10 - 8);
        v186 = *v10++;
        *(v183 - 1) = v185;
        *v183 = v186;
        v183 += 2;
        --v184;
      }

      while (v184);
      break;
    case 15:
      v599 = 0;
      v600 = 2 * v9;
      do
      {
        v601 = vrev64q_s16(*v8->i8);
        v602 = &v1573[v599];
        *v602 = vshll_high_n_s16(v601, 2uLL);
        v602[8] = vshll_n_s16(*v601.i8, 2uLL);
        v599 += 16;
        v8 = (v8 + v600);
      }

      while (v599 != 128);
      v603 = v1573;
      v604 = 1;
      do
      {
        v605 = v604;
        v606 = vaddq_s32(v603[1], v603[1]);
        *v603 = vaddq_s32(*v603, *v603);
        v603[1] = v606;
        v607 = vaddq_s32(v603[3], v603[3]);
        v603[2] = vaddq_s32(v603[2], v603[2]);
        v603[3] = v607;
        v608 = vaddq_s32(v603[5], v603[5]);
        v603[4] = vaddq_s32(v603[4], v603[4]);
        v603[5] = v608;
        v609 = vaddq_s32(v603[7], v603[7]);
        v603[6] = vaddq_s32(v603[6], v603[6]);
        v603[7] = v609;
        v603 = v1574;
        v604 = 0;
      }

      while ((v605 & 1) != 0);
      for (i22 = 0; i22 != 256; i22 += 16)
      {
        *&v1573[i22] = vrhaddq_s32(*&v1573[i22], 0);
      }

      v611 = 0;
      v612 = 1;
      do
      {
        v613 = 0;
        v614 = v612;
        v615 = 1;
        v616 = &v1573[128 * v611];
        v617 = &v1571[64 * v611];
        do
        {
          v618 = &v616[64 * v613];
          v619 = v618[1];
          v620 = v618[2];
          v621 = v618[3];
          v622 = vtrn1q_s32(*v618, v619);
          v623 = vtrn2q_s32(*v618, v619);
          v624 = vtrn1q_s32(v620, v621);
          v625 = vzip2q_s64(v622, v624);
          v622.i64[1] = v624.i64[0];
          LOBYTE(v618) = v615;
          v626 = vtrn2q_s32(v620, v621);
          v627 = vzip2q_s64(v623, v626);
          v623.i64[1] = v626.i64[0];
          v628 = &v617[128 * v613];
          *v628 = v622;
          v628[1] = v623;
          v628[2] = v625;
          v628[3] = v627;
          v613 = 1;
          v615 = 0;
        }

        while ((v618 & 1) != 0);
        v612 = 0;
        v611 = 1;
      }

      while ((v614 & 1) != 0);
      v629 = v1571;
      v630 = 1;
      v631 = vdupq_n_s32(0x16A1u);
      v632 = vdupq_n_s32(0xFFFFE95F);
      v633 = vdupq_n_s32(0x1D90u);
      v634 = vdupq_n_s32(0xC3Fu);
      v635 = vdupq_n_s32(0xFFFFE270);
      v636 = vdupq_n_s32(0x1FD9u);
      v637 = vdupq_n_s32(0x323u);
      v638 = vdupq_n_s32(0xFFFFE027);
      v639 = vdupq_n_s32(0x1C39u);
      v640 = vdupq_n_s32(0xF16u);
      v641 = vdupq_n_s32(0xFFFFE3C7);
      v642 = vdupq_n_s32(0x18BDu);
      v643 = vdupq_n_s32(0x144Du);
      v644 = vdupq_n_s32(0xFFFFEBB3);
      v645 = vdupq_n_s32(0x1E9Fu);
      v646 = vdupq_n_s32(0x94Au);
      v647 = vdupq_n_s32(0xFFFFE161);
      do
      {
        v648 = v630;
        v649 = v629[1];
        v651 = v629[6];
        v650 = v629[7];
        v653 = v629[2];
        v652 = v629[3];
        v655 = v629[4];
        v654 = v629[5];
        v656 = vmlaq_s32(vmulq_s32(v652, v632), v655, v631);
        v657 = vmulq_s32(vaddq_s32(v655, v652), v632);
        v658 = vmulq_s32(vaddq_s32(v654, v653), v631);
        v659 = vmlaq_s32(vmulq_s32(v654, v632), v653, v631);
        v660 = vsubq_s32(vrshrq_n_s32(v657, 0xDuLL), v650);
        v661 = vsubq_s32(*v629, vrshrq_n_s32(v656, 0xDuLL));
        v662 = vrsraq_n_s32(*v629, v656, 0xDuLL);
        v663 = vrsraq_n_s32(v650, v657, 0xDuLL);
        v664 = vsubq_s32(vrshrq_n_s32(v659, 0xDuLL), v649);
        v665 = vrsraq_n_s32(v649, v659, 0xDuLL);
        v666 = vsubq_s32(v651, vrshrq_n_s32(v658, 0xDuLL));
        v667 = vrsraq_n_s32(v651, v658, 0xDuLL);
        v668 = vmlaq_s32(vmulq_s32(v667, v634), v664, v633);
        v669 = vmlaq_s32(vmulq_s32(v667, v635), v664, v634);
        v670 = vmlaq_s32(vmulq_s32(v665, v634), v666, v633);
        v671 = vmlaq_s32(vmulq_s32(v665, v635), v666, v634);
        v672 = vsubq_s32(vrshrq_n_s32(v671, 0xDuLL), v663);
        v673 = vsubq_s32(v662, vrshrq_n_s32(v668, 0xDuLL));
        v674 = vrsraq_n_s32(v662, v668, 0xDuLL);
        v675 = vsubq_s32(v660, vrshrq_n_s32(v669, 0xDuLL));
        v676 = vrsraq_n_s32(v660, v669, 0xDuLL);
        v677 = vsubq_s32(v661, vrshrq_n_s32(v670, 0xDuLL));
        v678 = vrsraq_n_s32(v661, v670, 0xDuLL);
        v679 = vrsraq_n_s32(v663, v671, 0xDuLL);
        *v629 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v676, v638), v674, v637), 0xDuLL);
        v629[1] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v679, v647), v677, v646), 0xDuLL);
        v629[2] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v672, v641), v678, v640), 0xDuLL);
        v629[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v673, v643), v675, v642), 0xDuLL);
        v629[4] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v673, v642), v675, v644), 0xDuLL);
        v629[5] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v672, v640), v678, v639), 0xDuLL);
        v629[6] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v679, v646), v677, v645), 0xDuLL);
        v629[7] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v676, v637), v674, v636), 0xDuLL);
        v629 = v1572;
        v630 = 0;
      }

      while ((v648 & 1) != 0);
      v680 = (a2 + 16);
      v681 = 8;
      do
      {
        v682 = *(v10 - 8);
        v683 = *v10++;
        *(v680 - 1) = v682;
        *v680 = v683;
        v680 += 2;
        --v681;
      }

      while (v681);
      break;
    default:
      return result;
  }

  return result;
}

int32x4_t sub_2779ABB08(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v81 = *MEMORY[0x277D85DE8];
  for (i = 240; i != 112; i -= 16)
  {
    *&v72[v3] = vaddq_s32(*(a1 + i), *(a1 + v3));
    v3 += 16;
  }

  v5 = 112;
  v6 = 128;
  do
  {
    *&v72[v6] = vsubq_s32(*(a1 + v5), *(a1 + v6));
    v5 -= 16;
    v6 += 16;
  }

  while (v5 != -16);
  v7 = 0;
  for (j = 112; j != 48; j -= 16)
  {
    *(&v64 + v7) = vaddq_s32(*&v72[j], *&v72[v7]);
    v7 += 16;
  }

  v9 = 48;
  v10 = 64;
  do
  {
    *(&v64 + v10) = vsubq_s32(*&v72[v9], *&v72[v10]);
    v9 -= 16;
    v10 += 16;
  }

  while (v9 != -16);
  v11 = vdupq_n_s32(-a3);
  v12 = qword_277BC0E58[33 * a3 - 298];
  v13 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v75, v78), v12.i32[0]), v11);
  v14 = vneg_s32(v12);
  v15 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v75, v14.i32[0]), v78, v12, 0), v11);
  v16 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v76, v77), v12.i32[0]), v11);
  v17 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v77, v12.i32[0]), v76, v14, 0), v11);
  v18 = vaddq_s32(v67, v64);
  v19 = vaddq_s32(v66, v65);
  v20 = vsubq_s32(v65, v66);
  v21 = vsubq_s32(v64, v67);
  v22 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v69, v70), v12.i32[0]), v11);
  v23 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v70, v12.i32[0]), v69, v14, 0), v11);
  v24 = vaddq_s32(v17, v73);
  v25 = vaddq_s32(v15, v74);
  v26 = vsubq_s32(v74, v15);
  v27 = vsubq_s32(v73, v17);
  v28 = vsubq_s32(v80, v16);
  v29 = vsubq_s32(v79, v13);
  v30 = vaddq_s32(v13, v79);
  v31 = vaddq_s32(v16, v80);
  v32 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v19, v18), v12.i32[0]), v11);
  v33 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v18, v12.i32[0]), v19, v14, 0), v11);
  *v13.i8 = qword_277BC0E58[33 * a3 - 314];
  v34 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v20, *v13.i8, 1), v21, *v13.i8, 0), v11);
  v35 = vneg_s32(*v13.i8);
  v36 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v20, v35.i32[0]), v21, *v13.i8, 1), v11);
  v37 = vaddq_s32(v23, v68);
  v38 = vsubq_s32(v68, v23);
  v39 = vsubq_s32(v71, v22);
  v40 = vaddq_s32(v22, v71);
  v41 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v30, v13.i32[0]), v25, *v13.i8, 1), v11);
  v42 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v30, *v13.i8, 1), v25, v35, 0), v11);
  v43 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v29, v35.i32[0]), v26, v35, 1), v11);
  v44 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v29, *v13.i8, 1), v26, v35, 0), v11);
  *v30.i8 = qword_277BC0E58[33 * a3 - 322];
  v45 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v37, *v30.i8, 1), v40, *v30.i8, 0), v11);
  v46 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v37, vneg_s32(*v30.i8).i32[0]), v40, *v30.i8, 1), v11);
  *v37.i8 = qword_277BC0E58[33 * a3 - 306];
  v47 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v39, *v37.i8, 1), v38, *v37.i8, 0), v11);
  v48 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v39, v37.i32[0]), v38, vneg_s32(*v37.i8), 1), v11);
  v49 = vaddq_s32(v42, v24);
  v50 = vsubq_s32(v24, v42);
  v51 = vsubq_s32(v27, v43);
  v52 = vaddq_s32(v43, v27);
  v53 = vaddq_s32(v44, v28);
  v54 = vsubq_s32(v28, v44);
  v55 = vsubq_s32(v31, v41);
  v56 = vaddq_s32(v41, v31);
  *v41.i8 = qword_277BC0E58[33 * a3 - 326];
  v57 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v49, *v41.i8, 1), v56, *v41.i8, 0), v11);
  v58 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v49, vneg_s32(*v41.i8).i32[0]), v56, *v41.i8, 1), v11);
  *v49.i8 = qword_277BC0E58[33 * a3 - 302];
  v59 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v55, *v49.i8, 1), v50, *v49.i8, 0), v11);
  v60 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v55, v49.i32[0]), v50, vneg_s32(*v49.i8), 1), v11);
  *v49.i8 = qword_277BC0E58[33 * a3 - 310];
  v61 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v51, *v49.i8, 1), v54, *v49.i8, 0), v11);
  v62 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v51, vneg_s32(*v49.i8).i32[0]), v54, *v49.i8, 1), v11);
  *v49.i8 = qword_277BC0E58[33 * a3 - 318];
  *a2 = v32;
  a2[1] = v57;
  a2[2] = v45;
  a2[3] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v53, v49.i32[0]), v52, vneg_s32(*v49.i8), 1), v11);
  result = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v53, *v49.i8, 1), v52, *v49.i8, 0), v11);
  a2[4] = v34;
  a2[5] = v61;
  a2[6] = v48;
  a2[7] = v60;
  a2[8] = v33;
  a2[9] = v59;
  a2[10] = v47;
  a2[11] = v62;
  a2[12] = v36;
  a2[13] = result;
  a2[14] = v46;
  a2[15] = v58;
  return result;
}

int32x4_t sub_2779ABE44(int32x4_t *a1, int32x4_t *a2, int a3)
{
  v3 = vdupq_n_s32(-a3);
  v4 = qword_277BC0E58[33 * a3 - 298];
  v5 = vneg_s32(v4).u32[0];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v6, v5), v8, v4, 0), v3);
  v11 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v8, v6), v5), v3);
  v12 = a1[4];
  v13 = a1[5];
  v15 = a1[10];
  v14 = a1[11];
  v16 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v14, v12), v4.i32[0]), v3);
  v17 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v14, v5), v12, v4, 0), v3);
  v18 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v9, v7), v4.i32[0]), v3);
  v19 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v9, v5), v7, v4, 0), v3);
  v20 = a1[1];
  v21 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v13, v5), v15, v4, 0), v3);
  v23 = a1[14];
  v22 = a1[15];
  v24 = vmulq_n_s32(vaddq_s32(v15, v13), v5);
  v26 = a1[2];
  v25 = a1[3];
  v27 = vrshlq_s32(v24, v3);
  v28 = vaddq_s32(v10, *a1);
  v29 = a1[12];
  v30 = a1[13];
  v31 = vsubq_s32(v11, v22);
  v32 = vsubq_s32(*a1, v10);
  v33 = vaddq_s32(v11, v22);
  v34 = vsubq_s32(v17, v25);
  v35 = vaddq_s32(v16, v29);
  v36 = vaddq_s32(v17, v25);
  v37 = vsubq_s32(v29, v16);
  v38 = vsubq_s32(v19, v20);
  v39 = vaddq_s32(v18, v23);
  v40 = vaddq_s32(v19, v20);
  v41 = vsubq_s32(v23, v18);
  v42 = vaddq_s32(v21, v26);
  v43 = vsubq_s32(v27, v30);
  v44 = vsubq_s32(v26, v21);
  v45 = vaddq_s32(v27, v30);
  *v26.i8 = qword_277BC0E58[33 * a3 - 314];
  v46 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v35, *v26.i8, 1), v34, *v26.i8, 0), v3);
  v47 = vneg_s32(*v26.i8);
  v48 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v35, v47.i32[0]), v34, *v26.i8, 1), v3);
  v49 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v36, *v26.i8, 1), v37, *v26.i8, 0), v3);
  v50 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v36, v47.i32[0]), v37, *v26.i8, 1), v3);
  v51 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v43, *v26.i8, 1), v42, *v26.i8, 0), v3);
  v52 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v43, v47.i32[0]), v42, *v26.i8, 1), v3);
  v53 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v45, v47, 1), v44, *v26.i8, 0), v3);
  v54 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v45, v47.i32[0]), v44, v47, 1), v3);
  v55 = vaddq_s32(v46, v28);
  v56 = vaddq_s32(v48, v31);
  v57 = vaddq_s32(v49, v32);
  v58 = vsubq_s32(v50, v33);
  v59 = vsubq_s32(v28, v46);
  v60 = vsubq_s32(v31, v48);
  v61 = vsubq_s32(v32, v49);
  v62 = vaddq_s32(v50, v33);
  v63 = vaddq_s32(v51, v38);
  v64 = vaddq_s32(v52, v39);
  v65 = vsubq_s32(v54, v40);
  v66 = vaddq_s32(v53, v41);
  v67 = vsubq_s32(v38, v51);
  v68 = vsubq_s32(v39, v52);
  v69 = vaddq_s32(v54, v40);
  v70 = vsubq_s32(v41, v53);
  *v41.i8 = qword_277BC0E58[33 * a3 - 322];
  v71 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v64, *v41.i8, 1), v63, *v41.i8, 0), v3);
  *v52.i8 = vneg_s32(*v41.i8);
  v72 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v64, v52.i32[0]), v63, *v41.i8, 1), v3);
  v73 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v68, *v41.i8, 1), v67, *v41.i8, 0), v3);
  v74 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v68, v41.i32[0]), v67, *v52.i8, 1), v3);
  *v64.i8 = qword_277BC0E58[33 * a3 - 306];
  v75 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v65, *v64.i8, 1), v66, *v64.i8, 0), v3);
  *v68.i8 = vneg_s32(*v64.i8);
  v76 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v65, v64.i32[0]), v66, *v68.i8, 1), v3);
  v77 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v70, *v64.i8, 1), v69, *v64.i8, 0), v3);
  v78 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v70, v64.i32[0]), v69, *v68.i8, 1), v3);
  v79 = vaddq_s32(v71, v55);
  v80 = vaddq_s32(v72, v56);
  v81 = vaddq_s32(v75, v57);
  v82 = vaddq_s32(v76, v58);
  v83 = vaddq_s32(v74, v59);
  v84 = vaddq_s32(v73, v60);
  v85 = vaddq_s32(v77, v61);
  v86 = vsubq_s32(v78, v62);
  v87 = vsubq_s32(v55, v71);
  v88 = vsubq_s32(v56, v72);
  v89 = vsubq_s32(v57, v75);
  v90 = vsubq_s32(v58, v76);
  v91 = vsubq_s32(v59, v74);
  v92 = vsubq_s32(v60, v73);
  v93 = vsubq_s32(v61, v77);
  v94 = vaddq_s32(v78, v62);
  *v60.i8 = qword_277BC0E58[33 * a3 - 328];
  *v75.i8 = qword_277BC0E58[33 * a3 - 320];
  *v76.i8 = qword_277BC0E58[33 * a3 - 312];
  *v56.i8 = qword_277BC0E58[33 * a3 - 304];
  *v73.i8 = qword_277BC0E58[33 * a3 - 300];
  v95 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v87, *v73.i8, 1), v88, *v73.i8, 0), v3);
  v96 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v87, v73.i32[0]), v88, vneg_s32(*v73.i8), 1), v3);
  *v73.i8 = qword_277BC0E58[33 * a3 - 308];
  v97 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v89, *v73.i8, 1), v90, *v73.i8, 0), v3);
  *v57.i8 = vneg_s32(*v73.i8);
  v98 = vmulq_n_s32(v89, v73.i32[0]);
  *v73.i8 = qword_277BC0E58[33 * a3 - 316];
  *v78.i8 = qword_277BC0E58[33 * a3 - 324];
  *a2 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v80, vneg_s32(*v60.i8).i32[0]), v79, *v60.i8, 1), v3);
  a2[1] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v94, vneg_s32(*v78.i8).i32[0]), v93, *v78.i8, 1), v3);
  a2[2] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v82, vneg_s32(*v75.i8).i32[0]), v81, *v75.i8, 1), v3);
  a2[3] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v91, *v73.i8, 1), v92, *v73.i8, 0), v3);
  a2[4] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v84, vneg_s32(*v76.i8).i32[0]), v83, *v76.i8, 1), v3);
  a2[5] = v97;
  a2[6] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v86, vneg_s32(*v56.i8).i32[0]), v85, *v56.i8, 1), v3);
  a2[7] = v95;
  a2[8] = v96;
  a2[9] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v86, *v56.i8, 1), v85, *v56.i8, 0), v3);
  a2[10] = vrshlq_s32(vmlaq_lane_s32(v98, v90, *v57.i8, 1), v3);
  a2[11] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v84, *v76.i8, 1), v83, *v76.i8, 0), v3);
  a2[12] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v91, v73.i32[0]), v92, vneg_s32(*v73.i8), 1), v3);
  a2[13] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v82, *v75.i8, 1), v81, *v75.i8, 0), v3);
  v99 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v80, *v60.i8, 1), v79, *v60.i8, 0), v3);
  result = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v94, *v78.i8, 1), v93, *v78.i8, 0), v3);
  a2[14] = result;
  a2[15] = v99;
  return result;
}

uint64_t sub_2779AC1C4(uint64_t result, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v16 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  v8 = vdupq_n_s32(0x2D42u);
  v9 = vdupq_n_s32(0x16A1u);
  do
  {
    for (i = 0; i != 256; i += 16)
    {
      v11.i64[0] = 0x80000000800;
      v11.i64[1] = 0x80000000800;
      *&v15[i] = vshrq_n_s32(vmlaq_s32(v11, *(result + i), v8), 0xCuLL);
    }

    for (j = 0; j != 256; j += 16)
    {
      *&v15[j] = vrshrq_n_s32(vmulq_s32(*&v15[j], v9), 0xCuLL);
    }

    v13 = 0;
    v14 = a2;
    do
    {
      *v14 = *&v15[v13];
      v13 += 16;
      v14 = (v14 + 4 * a6);
    }

    while (v13 != 256);
    ++v6;
    result += 16 * a5;
    ++a2;
  }

  while (v6 != v7);
  return result;
}

void sub_2779AC2B4(uint64_t a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v9 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = 4 * a6;
  v16 = vdupq_n_s32(0x16A1u);
  do
  {
    sub_2779ABE44((a1 + 16 * v9 * v10), v17, a3);
    for (i = 0; i != 16; ++i)
    {
      v17[i] = vrshrq_n_s32(vmulq_s32(v17[i], v16), 0xCuLL);
    }

    v14 = 0;
    v15 = a2;
    do
    {
      *v15 = v17[v14++];
      v15 = (v15 + v12);
    }

    while (v14 != 16);
    ++v9;
    ++a2;
  }

  while (v9 != v11);
}

void sub_2779AC3BC(uint64_t a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v9 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = 4 * a6;
  v16 = vdupq_n_s32(0x16A1u);
  do
  {
    sub_2779ABB08(a1 + 16 * v9 * v10, v17, a3);
    for (i = 0; i != 16; ++i)
    {
      v17[i] = vrshrq_n_s32(vmulq_s32(v17[i], v16), 0xCuLL);
    }

    v14 = 0;
    v15 = a2;
    do
    {
      *v15 = v17[v14++];
      v15 = (v15 + v12);
    }

    while (v14 != 16);
    ++v9;
    ++a2;
  }

  while (v9 != v11);
}

int16x4_t *sub_2779AC4C4(int16x4_t *result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = 0;
  v25 = *MEMORY[0x277D85DE8];
  if (a6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a6;
  }

  v9 = 2 * a3;
  do
  {
    v10 = 0;
    v11 = result;
    if (a5)
    {
      do
      {
        *(&v17 + v10) = vshll_n_s16(vrev64_s16(*v11), 2uLL);
        v10 += 16;
        v11 = (v11 + v9);
      }

      while (v10 != 128);
    }

    else
    {
      do
      {
        *(&v17 + v10) = vshll_n_s16(*v11, 2uLL);
        v10 += 16;
        v11 = (v11 + v9);
      }

      while (v10 != 128);
    }

    v12 = (a2 + 16 * v7 * a7);
    v13 = vaddq_s32(v18, v18);
    *v12 = vaddq_s32(v17, v17);
    v12[1] = v13;
    v14 = vaddq_s32(v20, v20);
    v12[2] = vaddq_s32(v19, v19);
    v12[3] = v14;
    v15 = vaddq_s32(v22, v22);
    v12[4] = vaddq_s32(v21, v21);
    v12[5] = v15;
    v16 = vaddq_s32(v24, v24);
    v12[6] = vaddq_s32(v23, v23);
    v12[7] = v16;
    ++v7;
    ++result;
  }

  while (v7 != v8);
  return result;
}

int16x4_t *sub_2779AC5C8(int16x4_t *result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v69 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s32(-a4);
  v9 = qword_277BC0E58[33 * a4 - 298];
  v10 = vdupq_lane_s32(v9, 0);
  v11 = vdupq_lane_s32(vneg_s32(v9), 0);
  v12 = qword_277BC0E58[33 * a4 - 314];
  v13 = vdupq_lane_s32(v12, 0);
  v14 = vdupq_lane_s32(v12, 1);
  v15 = vdupq_lane_s32(vneg_s32(v12), 0);
  v16 = qword_277BC0E58[33 * a4 - 326];
  v17 = vdupq_lane_s32(v16, 0);
  v18 = vdupq_lane_s32(v16, 1);
  v19 = vdupq_lane_s32(vneg_s32(v16), 0);
  v20 = qword_277BC0E58[33 * a4 - 310];
  v21 = vdupq_lane_s32(v20, 0);
  v22 = vdupq_lane_s32(v20, 1);
  v23 = vdupq_lane_s32(vneg_s32(v20), 0);
  v24 = qword_277BC0E58[33 * a4 - 302];
  v25 = vdupq_lane_s32(v24, 0);
  v26 = vdupq_lane_s32(v24, 1);
  v27 = vdupq_lane_s32(vneg_s32(v24), 1);
  v28 = qword_277BC0E58[33 * a4 - 318];
  v29 = vdupq_lane_s32(v28, 0);
  v30 = vdupq_lane_s32(v28, 1);
  v31 = vdupq_lane_s32(vneg_s32(v28), 0);
  if (a6 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = a6;
  }

  v33 = 2 * a3;
  do
  {
    v34 = 0;
    v35 = result;
    if (a5)
    {
      do
      {
        *(&v61 + v34) = vshll_n_s16(vrev64_s16(*v35), 2uLL);
        v34 += 16;
        v35 = (v35 + v33);
      }

      while (v34 != 128);
    }

    else
    {
      do
      {
        *(&v61 + v34) = vshll_n_s16(*v35, 2uLL);
        v34 += 16;
        v35 = (v35 + v33);
      }

      while (v34 != 128);
    }

    v36 = (a2 + 16 * v7 * a7);
    v37 = vrshlq_s32(vmlaq_s32(vmulq_s32(v11, v64), v10, v65), v8);
    v38 = vrshlq_s32(vmulq_s32(v11, vaddq_s32(v65, v64)), v8);
    v39 = vrshlq_s32(vmulq_s32(v10, vaddq_s32(v66, v63)), v8);
    v40 = vrshlq_s32(vmlaq_s32(vmulq_s32(v11, v66), v10, v63), v8);
    v41 = vaddq_s32(v37, v61);
    v42 = vsubq_s32(v38, v68);
    v43 = vsubq_s32(v61, v37);
    v44 = vaddq_s32(v38, v68);
    v45 = vsubq_s32(v40, v62);
    v46 = vaddq_s32(v39, v67);
    v47 = vaddq_s32(v40, v62);
    v48 = vsubq_s32(v67, v39);
    v49 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v46), v13, v45), v8);
    v50 = vrshlq_s32(vmlaq_s32(vmulq_s32(v15, v46), v14, v45), v8);
    v51 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v47), v13, v48), v8);
    v52 = vrshlq_s32(vmlaq_s32(vmulq_s32(v15, v47), v14, v48), v8);
    v53 = vaddq_s32(v49, v41);
    v54 = vaddq_s32(v50, v42);
    v55 = vaddq_s32(v51, v43);
    v56 = vsubq_s32(v52, v44);
    v57 = vsubq_s32(v41, v49);
    v58 = vsubq_s32(v42, v50);
    v59 = vsubq_s32(v43, v51);
    v60 = vaddq_s32(v52, v44);
    *v36 = vrshlq_s32(vmlaq_s32(vmulq_s32(v19, v54), v18, v53), v8);
    v36[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v31, v60), v30, v59), v8);
    v36[2] = vrshlq_s32(vmlaq_s32(vmulq_s32(v23, v56), v22, v55), v8);
    v36[3] = vrshlq_s32(vmlaq_s32(vmulq_s32(v26, v57), v25, v58), v8);
    v36[4] = vrshlq_s32(vmlaq_s32(vmulq_s32(v25, v57), v27, v58), v8);
    v36[5] = vrshlq_s32(vmlaq_s32(vmulq_s32(v22, v56), v21, v55), v8);
    v36[6] = vrshlq_s32(vmlaq_s32(vmulq_s32(v30, v60), v29, v59), v8);
    v36[7] = vrshlq_s32(vmlaq_s32(vmulq_s32(v18, v54), v17, v53), v8);
    ++v7;
    ++result;
  }

  while (v7 != v32);
  return result;
}

int16x4_t *sub_2779AC854(int16x4_t *result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v56 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s32(-a4);
  v9 = qword_277BC0E58[33 * a4 - 298];
  v10 = vdupq_lane_s32(v9, 0);
  v11 = vdupq_lane_s32(v9, 1);
  v12 = vdupq_lane_s32(vneg_s32(v9), 1);
  v13 = qword_277BC0E58[33 * a4 - 314];
  v14 = vdupq_lane_s32(v13, 0);
  v15 = vdupq_lane_s32(v13, 1);
  v16 = vdupq_lane_s32(vneg_s32(v13), 0);
  v17 = qword_277BC0E58[33 * a4 - 322];
  v18 = vdupq_lane_s32(v17, 0);
  v19 = vdupq_lane_s32(v17, 1);
  v20 = vdupq_lane_s32(vneg_s32(v17), 0);
  v21 = qword_277BC0E58[33 * a4 - 306];
  v22 = vdupq_lane_s32(v21, 0);
  v23 = vdupq_lane_s32(v21, 1);
  v24 = vdupq_lane_s32(vneg_s32(v21), 1);
  if (a6 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a6;
  }

  v26 = 2 * a3;
  do
  {
    v27 = 0;
    v28 = result;
    if (a5)
    {
      do
      {
        *&v47[v27] = vshll_n_s16(vrev64_s16(*v28), 2uLL);
        v27 += 16;
        v28 = (v28 + v26);
      }

      while (v27 != 128);
    }

    else
    {
      do
      {
        *&v47[v27] = vshll_n_s16(*v28, 2uLL);
        v27 += 16;
        v28 = (v28 + v26);
      }

      while (v27 != 128);
    }

    v29 = 0;
    for (i = 112; i != 48; i -= 16)
    {
      *(&v48 + v29) = vaddq_s32(*&v47[i], *&v47[v29]);
      v29 += 16;
    }

    v31 = 64;
    do
    {
      *(&v48 + v31) = vsubq_s32(*&v47[i], *&v47[v31]);
      i -= 16;
      v31 += 16;
    }

    while (i != -16);
    v32 = vaddq_s32(v51, v48);
    v33 = vaddq_s32(v50, v49);
    v34 = vsubq_s32(v49, v50);
    v35 = vsubq_s32(v48, v51);
    v36 = (a2 + 16 * v7 * a7);
    v37 = vrshlq_s32(vmlaq_s32(vmulq_s32(v11, v54), v10, v53), v8);
    v38 = vrshlq_s32(vmlaq_s32(vmulq_s32(v10, v54), v12, v53), v8);
    v39 = vrshlq_s32(vmlaq_s32(vmulq_s32(v33, v10), v32, v11), v8);
    v40 = vrshlq_s32(vmlaq_s32(vmulq_s32(v33, v12), v32, v10), v8);
    v41 = vrshlq_s32(vmlaq_s32(vmulq_s32(v15, v34), v14, v35), v8);
    v42 = vrshlq_s32(vmlaq_s32(vmulq_s32(v16, v34), v15, v35), v8);
    v43 = vaddq_s32(v38, v52);
    v44 = vsubq_s32(v52, v38);
    v45 = vsubq_s32(v55, v37);
    v46 = vaddq_s32(v37, v55);
    *v36 = v39;
    v36[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v19, v43), v18, v46), v8);
    v36[2] = v41;
    v36[3] = vrshlq_s32(vmlaq_s32(vmulq_s32(v22, v45), v24, v44), v8);
    v36[4] = v40;
    v36[5] = vrshlq_s32(vmlaq_s32(vmulq_s32(v23, v45), v22, v44), v8);
    v36[6] = v42;
    v36[7] = vrshlq_s32(vmlaq_s32(vmulq_s32(v20, v43), v19, v46), v8);
    ++v7;
    ++result;
  }

  while (v7 != v25);
  return result;
}

uint64_t sub_2779ACA94(uint64_t result, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v18 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  v8 = vdupq_n_s32(0x16A1u);
  do
  {
    v9 = 0;
    v10 = (result + 16 * v6 * a5);
    v11 = vaddq_s32(v10[1], v10[1]);
    v17[0] = vaddq_s32(*v10, *v10);
    v17[1] = v11;
    v12 = vaddq_s32(v10[3], v10[3]);
    v17[2] = vaddq_s32(v10[2], v10[2]);
    v17[3] = v12;
    v13 = vaddq_s32(v10[5], v10[5]);
    v17[4] = vaddq_s32(v10[4], v10[4]);
    v17[5] = v13;
    v14 = vaddq_s32(v10[7], v10[7]);
    v17[6] = vaddq_s32(v10[6], v10[6]);
    v17[7] = v14;
    do
    {
      v17[v9] = vrshrq_n_s32(vmulq_s32(v17[v9], v8), 0xCuLL);
      ++v9;
    }

    while (v9 != 8);
    v15 = 0;
    v16 = a2;
    do
    {
      *v16 = v17[v15++];
      v16 = (v16 + 4 * a6);
    }

    while (v15 != 8);
    ++v6;
    ++a2;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_2779ACB94(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v68 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s32(-a3);
  v8 = qword_277BC0E58[33 * a3 - 298];
  v9 = vdupq_lane_s32(v8, 0);
  v10 = vdupq_lane_s32(vneg_s32(v8), 0);
  v11 = qword_277BC0E58[33 * a3 - 314];
  v12 = vdupq_lane_s32(v11, 0);
  v13 = vdupq_lane_s32(v11, 1);
  v14 = vdupq_lane_s32(vneg_s32(v11), 0);
  v15 = qword_277BC0E58[33 * a3 - 326];
  v16 = vdupq_lane_s32(v15, 0);
  v17 = vdupq_lane_s32(v15, 1);
  v18 = vdupq_lane_s32(vneg_s32(v15), 0);
  v19 = qword_277BC0E58[33 * a3 - 310];
  v20 = vdupq_lane_s32(v19, 0);
  v21 = vdupq_lane_s32(v19, 1);
  v22 = vdupq_lane_s32(vneg_s32(v19), 0);
  v23 = qword_277BC0E58[33 * a3 - 302];
  v24 = vdupq_lane_s32(v23, 0);
  v25 = vdupq_lane_s32(v23, 1);
  v26 = vdupq_lane_s32(vneg_s32(v23), 1);
  v27 = qword_277BC0E58[33 * a3 - 318];
  v28 = vdupq_lane_s32(v27, 0);
  v29 = vdupq_lane_s32(v27, 1);
  v30 = vdupq_lane_s32(vneg_s32(v27), 0);
  if (a4 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = a4;
  }

  do
  {
    v32 = 0;
    v33 = (result + 16 * v6 * a5);
    v34 = v33[1];
    v36 = v33[6];
    v35 = v33[7];
    v38 = v33[2];
    v37 = v33[3];
    v39 = v33[4];
    v40 = v33[5];
    v41 = vrshlq_s32(vmlaq_s32(vmulq_s32(v10, v37), v9, v39), v7);
    v42 = vrshlq_s32(vmulq_s32(v10, vaddq_s32(v39, v37)), v7);
    v43 = vrshlq_s32(vmulq_s32(v9, vaddq_s32(v40, v38)), v7);
    v44 = vrshlq_s32(vmlaq_s32(vmulq_s32(v10, v40), v9, v38), v7);
    v45 = vaddq_s32(v41, *v33);
    v46 = vsubq_s32(v42, v35);
    v47 = vsubq_s32(*v33, v41);
    v48 = vaddq_s32(v42, v35);
    v49 = vsubq_s32(v44, v34);
    v50 = vaddq_s32(v43, v36);
    v51 = vaddq_s32(v44, v34);
    v52 = vsubq_s32(v36, v43);
    v53 = vrshlq_s32(vmlaq_s32(vmulq_s32(v13, v50), v12, v49), v7);
    v54 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v50), v13, v49), v7);
    v55 = vrshlq_s32(vmlaq_s32(vmulq_s32(v13, v51), v12, v52), v7);
    v56 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v51), v13, v52), v7);
    v57 = vaddq_s32(v53, v45);
    v58 = vaddq_s32(v54, v46);
    v59 = vaddq_s32(v55, v47);
    v60 = vsubq_s32(v56, v48);
    v61 = vsubq_s32(v45, v53);
    v62 = vsubq_s32(v46, v54);
    v63 = vsubq_s32(v47, v55);
    v64 = vaddq_s32(v56, v48);
    v67[0] = vrshlq_s32(vmlaq_s32(vmulq_s32(v18, v58), v17, v57), v7);
    v67[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v30, v64), v29, v63), v7);
    v67[2] = vrshlq_s32(vmlaq_s32(vmulq_s32(v22, v60), v21, v59), v7);
    v67[3] = vrshlq_s32(vmlaq_s32(vmulq_s32(v25, v61), v24, v62), v7);
    v67[4] = vrshlq_s32(vmlaq_s32(vmulq_s32(v24, v61), v26, v62), v7);
    v67[5] = vrshlq_s32(vmlaq_s32(vmulq_s32(v21, v60), v20, v59), v7);
    v67[6] = vrshlq_s32(vmlaq_s32(vmulq_s32(v29, v64), v28, v63), v7);
    v67[7] = vrshlq_s32(vmlaq_s32(vmulq_s32(v17, v58), v16, v57), v7);
    do
    {
      v67[v32] = vrshrq_n_s32(vmulq_s32(v67[v32], vdupq_n_s32(0x16A1u)), 0xCuLL);
      ++v32;
    }

    while (v32 != 8);
    v65 = 0;
    v66 = a2;
    do
    {
      *v66 = v67[v65++];
      v66 = (v66 + 4 * a6);
    }

    while (v65 != 8);
    ++v6;
    ++a2;
  }

  while (v6 != v31);
  return result;
}

uint64_t sub_2779ACE1C(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v55 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s32(-a3);
  v8 = qword_277BC0E58[33 * a3 - 298];
  v9 = vdupq_lane_s32(v8, 0);
  v10 = vdupq_lane_s32(v8, 1);
  v11 = vdupq_lane_s32(vneg_s32(v8), 1);
  v12 = qword_277BC0E58[33 * a3 - 314];
  v13 = vdupq_lane_s32(v12, 0);
  v14 = vdupq_lane_s32(v12, 1);
  v15 = vdupq_lane_s32(vneg_s32(v12), 0);
  v16 = qword_277BC0E58[33 * a3 - 322];
  v17 = vdupq_lane_s32(v16, 0);
  v18 = vdupq_lane_s32(v16, 1);
  v19 = vdupq_lane_s32(vneg_s32(v16), 0);
  v20 = qword_277BC0E58[33 * a3 - 306];
  v21 = vdupq_lane_s32(v20, 0);
  v22 = vdupq_lane_s32(v20, 1);
  v23 = vneg_s32(v20);
  if (a4 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = a4;
  }

  v25 = vdupq_lane_s32(v23, 1);
  do
  {
    v26 = 0;
    for (i = 112; i != 48; i -= 16)
    {
      *(&v47 + v26) = vaddq_s32(*(result + i), *(result + v26));
      v26 += 16;
    }

    v28 = 64;
    do
    {
      *(&v47 + v28) = vsubq_s32(*(result + i), *(result + v28));
      i -= 16;
      v28 += 16;
    }

    while (i != -16);
    v29 = 0;
    v30 = vaddq_s32(v50, v47);
    v31 = vaddq_s32(v49, v48);
    v32 = vsubq_s32(v48, v49);
    v33 = vsubq_s32(v47, v50);
    v34 = vrshlq_s32(vmlaq_s32(vmulq_s32(v10, v53), v9, v52), v7);
    v35 = vrshlq_s32(vmlaq_s32(vmulq_s32(v9, v53), v11, v52), v7);
    v36 = vrshlq_s32(vmlaq_s32(vmulq_s32(v31, v9), v30, v10), v7);
    v37 = vrshlq_s32(vmlaq_s32(vmulq_s32(v31, v11), v30, v9), v7);
    v38 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v32), v13, v33), v7);
    v39 = vrshlq_s32(vmlaq_s32(vmulq_s32(v15, v32), v14, v33), v7);
    v40 = vaddq_s32(v35, v51);
    v41 = vsubq_s32(v51, v35);
    v42 = vsubq_s32(v54, v34);
    v43 = vaddq_s32(v34, v54);
    v46[0] = v36;
    v46[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v18, v40), v17, v43), v7);
    v46[2] = v38;
    v46[3] = vrshlq_s32(vmlaq_s32(vmulq_s32(v21, v42), v25, v41), v7);
    v46[4] = v37;
    v46[5] = vrshlq_s32(vmlaq_s32(vmulq_s32(v22, v42), v21, v41), v7);
    v46[6] = v39;
    v46[7] = vrshlq_s32(vmlaq_s32(vmulq_s32(v19, v40), v18, v43), v7);
    do
    {
      v46[v29] = vrshrq_n_s32(vmulq_s32(v46[v29], vdupq_n_s32(0x16A1u)), 0xCuLL);
      ++v29;
    }

    while (v29 != 8);
    v44 = 0;
    v45 = a2;
    do
    {
      *v45 = v46[v44++];
      v45 = (v45 + 4 * a6);
    }

    while (v44 != 8);
    ++v6;
    result += 16 * a5;
    ++a2;
  }

  while (v6 != v24);
  return result;
}

int16x4_t *sub_2779AD054(int16x4_t *result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = 0;
  v16 = *MEMORY[0x277D85DE8];
  if (a6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a6;
  }

  v9 = 2 * a3;
  v10 = vdupq_n_s32(0x2D42u);
  do
  {
    v11 = 0;
    v12 = result;
    if (a5)
    {
      do
      {
        *&v15[v11] = vshll_n_s16(vrev64_s16(*v12), 2uLL);
        v11 += 16;
        v12 = (v12 + v9);
      }

      while (v11 != 256);
    }

    else
    {
      do
      {
        *&v15[v11] = vshll_n_s16(*v12, 2uLL);
        v11 += 16;
        v12 = (v12 + v9);
      }

      while (v11 != 256);
    }

    for (i = 0; i != 256; i += 16)
    {
      v14.i64[0] = 0x80000000800;
      v14.i64[1] = 0x80000000800;
      *(a2 + i) = vshrq_n_s32(vmlaq_s32(v14, *&v15[i], v10), 0xCuLL);
    }

    ++v7;
    ++result;
    a2 += 16 * a7;
  }

  while (v7 != v8);
  return result;
}

void sub_2779AD148(int16x4_t *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v11 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v12 = a7;
  if (a6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a6;
  }

  v14 = 2 * a3;
  do
  {
    v15 = 0;
    v16 = a1;
    if (a5)
    {
      do
      {
        v17[v15++] = vshll_n_s16(vrev64_s16(*v16), 2uLL);
        v16 = (v16 + v14);
      }

      while (v15 != 16);
    }

    else
    {
      do
      {
        v17[v15++] = vshll_n_s16(*v16, 2uLL);
        v16 = (v16 + v14);
      }

      while (v15 != 16);
    }

    sub_2779ABE44(v17, (a2 + 16 * v11 * v12), a4);
    ++v11;
    ++a1;
  }

  while (v11 != v13);
}

void sub_2779AD250(int16x4_t *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v11 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v12 = a7;
  if (a6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a6;
  }

  v14 = 2 * a3;
  do
  {
    v15 = 0;
    v16 = a1;
    if (a5)
    {
      do
      {
        *&v17[v15] = vshll_n_s16(vrev64_s16(*v16), 2uLL);
        v15 += 16;
        v16 = (v16 + v14);
      }

      while (v15 != 256);
    }

    else
    {
      do
      {
        *&v17[v15] = vshll_n_s16(*v16, 2uLL);
        v15 += 16;
        v16 = (v16 + v14);
      }

      while (v15 != 256);
    }

    sub_2779ABB08(v17, (a2 + 16 * v11 * v12), a4);
    ++v11;
    ++a1;
  }

  while (v11 != v13);
}

uint64_t sub_2779AD358(uint64_t result, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v13 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  v8 = vdupq_n_s32(0x16A1u);
  do
  {
    for (i = 0; i != 64; i += 16)
    {
      *&v12[i] = vrshrq_n_s32(vmulq_s32(*(result + i), v8), 0xCuLL);
    }

    v10 = 0;
    v11 = a2;
    do
    {
      *v11 = *&v12[v10];
      v10 += 16;
      v11 = (v11 + 4 * a6);
    }

    while (v10 != 64);
    ++v6;
    result += 16 * a5;
    ++a2;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_2779AD414(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v7 = *(&unk_277C42640 + 20 * a3 - 196);
  v8 = vdupq_lane_s32(*v7.i8, 0);
  v9 = vdupq_laneq_s32(v7, 3);
  v10 = vdupq_laneq_s32(v7, 2);
  v11 = vdupq_lane_s32(*v7.i8, 1);
  v12 = vdupq_n_s32(-a3);
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  do
  {
    v14 = 0;
    v15 = (result + 16 * v6 * a5);
    v16 = v15[1];
    v17 = vaddq_s32(v16, *v15);
    v18 = v15[3];
    v19 = vmulq_s32(v15[2], v10);
    v20 = vmlaq_s32(vmlaq_s32(vmulq_s32(*v15, v8), v16, v11), v18, v9);
    v21 = vmlaq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v16, v8)), *v15, v9), v18, v11);
    v23[0] = vrshlq_s32(vaddq_s32(v20, v19), v12);
    v23[1] = vrshlq_s32(vmulq_s32(vsubq_s32(v17, v18), v10), v12);
    v23[2] = vrshlq_s32(vsubq_s32(v21, v19), v12);
    v23[3] = vrshlq_s32(vaddq_s32(vsubq_s32(v19, v20), v21), v12);
    v22 = a2;
    do
    {
      *v22 = v23[v14++];
      v22 = (v22 + 4 * a6);
    }

    while (v14 != 4);
    ++v6;
    ++a2;
  }

  while (v6 != v13);
  return result;
}

uint64_t sub_2779AD534(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v7 = &qword_277BC0E58[33 * a3 - 298];
  v8 = vld1q_dup_f32(v7);
  v9 = qword_277BC0E58[33 * a3 - 314];
  v10 = vdupq_lane_s32(v9, 1);
  v11 = vdupq_lane_s32(v9, 0);
  v12 = vdupq_n_s32(-a3);
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  do
  {
    v14 = 0;
    v15 = (result + 16 * v6 * a5);
    v16 = v15[1];
    v18 = v15[2];
    v17 = v15[3];
    v19 = vaddq_s32(v17, *v15);
    v20 = vsubq_s32(*v15, v17);
    v21 = vaddq_s32(v18, v16);
    v22 = vsubq_s32(v16, v18);
    v23 = vmulq_s32(v19, v8);
    v24 = vmulq_s32(v21, v8);
    v26[0] = vrshlq_s32(vaddq_s32(v24, v23), v12);
    v26[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v20, v11), v22, v10), v12);
    v26[2] = vrshlq_s32(vsubq_s32(v23, v24), v12);
    v26[3] = vrshlq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v22, v11)), v20, v10), v12);
    v25 = a2;
    do
    {
      *v25 = v26[v14++];
      v25 = (v25 + 4 * a6);
    }

    while (v14 != 4);
    ++v6;
    ++a2;
  }

  while (v6 != v13);
  return result;
}

uint64_t sub_2779AD650(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v24[9] = *MEMORY[0x277D85DE8];
  v5 = off_28866D188[a4];
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    a1 += 6 * a3;
    a3 = -a3;
    goto LABEL_8;
  }

  if (((1 << a4) & 0x80A0) == 0)
  {
    if (a4 == 6)
    {
      a1 += 6 * a3;
      a3 = -a3;
      goto LABEL_6;
    }

LABEL_8:
    v6 = v23;
    v7 = 0;
    v8 = 4;
    goto LABEL_9;
  }

LABEL_6:
  v6 = v24;
  v7 = 1;
  v8 = 4294967292;
LABEL_9:
  (off_28866D108[a4])(a1, v6, a3, 13, v7, 4, v8);
  for (i = 0; i != 256; i += 16)
  {
    *&v23[i] = vrhaddq_s32(*&v23[i], 0);
  }

  for (j = 0; j != 256; j += 64)
  {
    v11 = &v23[j];
    v12 = *&v23[j];
    v13 = *&v23[j + 16];
    v14 = *&v23[j + 32];
    v15 = *&v23[j + 48];
    v16 = vtrn1q_s32(v12, v13);
    v17 = vtrn2q_s32(v12, v13);
    v18 = vtrn1q_s32(v14, v15);
    v19 = vtrn2q_s32(v14, v15);
    v20 = vzip2q_s64(v16, v18);
    v16.i64[1] = v18.i64[0];
    v21 = vzip2q_s64(v17, v19);
    v17.i64[1] = v19.i64[0];
    *v11 = v16;
    v11[1] = v17;
    v11[2] = v20;
    v11[3] = v21;
  }

  return (v5)(v23, a2, 13, 4);
}

__n128 sub_2779AD7C0(uint64_t a1, __n128 *a2, uint64_t a3, int a4)
{
  v4 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v5 = vdupq_n_s32(0x2D42u);
  do
  {
    v6.i64[0] = 0x80000000800;
    v6.i64[1] = 0x80000000800;
    *&v9[v4] = vshrq_n_s32(vmlaq_s32(v6, *(a1 + v4), v5), 0xCuLL);
    v4 += 16;
  }

  while (v4 != 256);
  for (i = 0; i != 256; i += 16)
  {
    result = *&v9[i];
    *a2 = result;
    a2 = (a2 + 4 * a4);
  }

  return result;
}

__n128 sub_2779AD864(int32x4_t *a1, __n128 *a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_2779ABE44(a1, v8, a3);
  for (i = 0; i != 16; ++i)
  {
    result = v8[i];
    *a2 = result;
    a2 = (a2 + 4 * a4);
  }

  return result;
}

__n128 sub_2779AD8F0(uint64_t a1, __n128 *a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_2779ABB08(a1, v8, a3);
  for (i = 0; i != 16; ++i)
  {
    result = v8[i];
    *a2 = result;
    a2 = (a2 + 4 * a4);
  }

  return result;
}

int16x4_t *sub_2779AD97C(int16x4_t *result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = 0;
  v15 = *MEMORY[0x277D85DE8];
  if (a6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a6;
  }

  v9 = 2 * a3;
  v10 = vdupq_n_s32(0x16A1u);
  do
  {
    v11 = 0;
    v12 = result;
    if (a5)
    {
      do
      {
        *&v14[v11] = vshll_n_s16(vrev64_s16(*v12), 2uLL);
        v11 += 16;
        v12 = (v12 + v9);
      }

      while (v11 != 64);
    }

    else
    {
      do
      {
        *&v14[v11] = vshll_n_s16(*v12, 2uLL);
        v11 += 16;
        v12 = (v12 + v9);
      }

      while (v11 != 64);
    }

    for (i = 0; i != 64; i += 16)
    {
      *(a2 + i) = vrshrq_n_s32(vmulq_s32(*&v14[i], v10), 0xCuLL);
    }

    ++v7;
    ++result;
    a2 += 16 * a7;
  }

  while (v7 != v8);
  return result;
}

int16x4_t *sub_2779ADA64(int16x4_t *result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v8 = *(&unk_277C42640 + 20 * a4 - 196);
  v9 = vdupq_lane_s32(*v8.i8, 0);
  v10 = vdupq_laneq_s32(v8, 3);
  v11 = vdupq_laneq_s32(v8, 2);
  v12 = vdupq_lane_s32(*v8.i8, 1);
  v13 = vdupq_n_s32(-a4);
  if (a6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a6;
  }

  v15 = 2 * a3;
  do
  {
    v16 = 0;
    v17 = result;
    if (a5)
    {
      do
      {
        *(&v23 + v16) = vshll_n_s16(vrev64_s16(*v17), 2uLL);
        v16 += 16;
        v17 = (v17 + v15);
      }

      while (v16 != 64);
    }

    else
    {
      do
      {
        *(&v23 + v16) = vshll_n_s16(*v17, 2uLL);
        v16 += 16;
        v17 = (v17 + v15);
      }

      while (v16 != 64);
    }

    v18 = (a2 + 16 * v7 * a7);
    v19 = vmulq_s32(v25, v11);
    v20 = vmlaq_s32(vmlaq_s32(vmulq_s32(v23, v9), v24, v12), v26, v10);
    v21 = vmlaq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v24, v9)), v23, v10), v26, v12);
    v22 = vrshlq_s32(vmulq_s32(vsubq_s32(vaddq_s32(v24, v23), v26), v11), v13);
    *v18 = vrshlq_s32(vaddq_s32(v20, v19), v13);
    v18[1] = v22;
    v18[2] = vrshlq_s32(vsubq_s32(v21, v19), v13);
    v18[3] = vrshlq_s32(vaddq_s32(vsubq_s32(v19, v20), v21), v13);
    ++v7;
    ++result;
  }

  while (v7 != v14);
  return result;
}

int16x4_t *sub_2779ADBB0(int16x4_t *result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v8 = &qword_277BC0E58[33 * a4 - 298];
  v9 = vld1q_dup_f32(v8);
  v10 = qword_277BC0E58[33 * a4 - 314];
  v11 = vdupq_lane_s32(v10, 1);
  v12 = vdupq_lane_s32(v10, 0);
  v13 = vdupq_n_s32(-a4);
  if (a6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = a6;
  }

  v15 = 2 * a3;
  do
  {
    v16 = 0;
    v17 = result;
    if (a5)
    {
      do
      {
        *(&v23 + v16) = vshll_n_s16(vrev64_s16(*v17), 2uLL);
        v16 += 16;
        v17 = (v17 + v15);
      }

      while (v16 != 64);
    }

    else
    {
      do
      {
        *(&v23 + v16) = vshll_n_s16(*v17, 2uLL);
        v16 += 16;
        v17 = (v17 + v15);
      }

      while (v16 != 64);
    }

    v18 = (a2 + 16 * v7 * a7);
    v19 = vsubq_s32(v23, v26);
    v20 = vsubq_s32(v24, v25);
    v21 = vmulq_s32(vaddq_s32(v26, v23), v9);
    v22 = vmulq_s32(vaddq_s32(v25, v24), v9);
    *v18 = vrshlq_s32(vaddq_s32(v22, v21), v13);
    v18[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v19, v12), v20, v11), v13);
    v18[2] = vrshlq_s32(vsubq_s32(v21, v22), v13);
    v18[3] = vrshlq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v20, v12)), v19, v11), v13);
    ++v7;
    ++result;
  }

  while (v7 != v14);
  return result;
}

int16x4_t *sub_2779ADCF8(int16x4_t *result, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = 0;
  v14 = *MEMORY[0x277D85DE8];
  if (a6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a6;
  }

  v9 = 2 * a3;
  do
  {
    v10 = 0;
    v11 = result;
    if (a5)
    {
      do
      {
        *&v13[v10] = vshll_n_s16(vrev64_s16(*v11), 2uLL);
        v10 += 16;
        v11 = (v11 + v9);
      }

      while (v10 != 512);
    }

    else
    {
      do
      {
        *&v13[v10] = vshll_n_s16(*v11, 2uLL);
        v10 += 16;
        v11 = (v11 + v9);
      }

      while (v10 != 512);
    }

    for (i = 0; i != 512; i += 16)
    {
      *(a2 + i) = vshlq_n_s32(*&v13[i], 2uLL);
    }

    ++v7;
    ++result;
    a2 += 16 * a7;
  }

  while (v7 != v8);
  return result;
}

uint64_t sub_2779ADDDC(int16x4_t *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v11 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v12 = a7;
  if (a6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a6;
  }

  v14 = 2 * a3;
  do
  {
    v15 = 0;
    v16 = a1;
    if (a5)
    {
      do
      {
        *&v18[v15] = vshll_n_s16(vrev64_s16(*v16), 2uLL);
        v15 += 16;
        v16 = (v16 + v14);
      }

      while (v15 != 512);
    }

    else
    {
      do
      {
        *&v18[v15] = vshll_n_s16(*v16, 2uLL);
        v15 += 16;
        v16 = (v16 + v14);
      }

      while (v15 != 512);
    }

    result = sub_2779ADEE4(v18, (a2 + 16 * v11 * v12), a4);
    ++v11;
    ++a1;
  }

  while (v11 != v13);
  return result;
}

uint64_t sub_2779ADEE4(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v195 = *MEMORY[0x277D85DE8];
  for (i = 496; i != 240; i -= 16)
  {
    v5 = vaddq_s32(*(result + i), *(result + v3));
    *(&v131 + v3) = v5;
    v3 += 16;
  }

  v6 = 240;
  v7 = 256;
  do
  {
    *(&v131 + v7) = vsubq_s32(*(result + v6), *(result + v7));
    v6 -= 16;
    v7 += 16;
  }

  while (v6 != -16);
  v8 = 0;
  for (j = 240; j != 112; j -= 16)
  {
    *(&v163 + v8) = vaddq_s32(*(&v131 + j), *(&v131 + v8));
    v8 += 16;
  }

  v10 = 112;
  v11 = 128;
  do
  {
    *(&v163 + v11) = vsubq_s32(*(&v131 + v10), *(&v131 + v11));
    v10 -= 16;
    v11 += 16;
  }

  while (v10 != -16);
  v12 = 0;
  v5.i32[0] = -a3;
  v13 = vdupq_lane_s32(*v5.i8, 0);
  v14 = &qword_277BC0E58[33 * a3 - 330];
  v179 = v147;
  v180 = v148;
  v181 = v149;
  v182 = v150;
  v15 = v14[32];
  v16 = vdupq_lane_s32(v15, 0);
  v17 = vdupq_lane_s32(v15, 1);
  v18 = vneg_s32(v15);
  v19 = vdupq_lane_s32(v18, 0);
  v190 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v151, v15, 1), v158, v15, 0), v13);
  v189 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v157, v15.i32[0]), v152, v15, 1), v13);
  v183 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v151, v18.i32[0]), v158, v15, 1), v13);
  v184 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v157, v15, 1), v152, v18, 0), v13);
  v188 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v156, v15.i32[0]), v153, v15, 1), v13);
  v187 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v155, v15.i32[0]), v154, v15, 1), v13);
  v185 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v156, v15, 1), v153, v18, 0), v13);
  v186 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v155, v15, 1), v154, v18, 0), v13);
  v191 = v159;
  v192 = v160;
  v193 = v161;
  v194 = v162;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v131 + v12) = vaddq_s32(*(&v163 + k), *(&v163 + v12));
    v12 += 16;
  }

  v21 = 48;
  v22 = 64;
  do
  {
    *(&v131 + v22) = vsubq_s32(*(&v163 + v21), *(&v163 + v22));
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != -16);
  v139 = v171;
  v140 = v172;
  v143 = vrshlq_s32(vmlaq_s32(vmulq_s32(v175, v16), v174, v17), v13);
  v144 = vrshlq_s32(vmlaq_s32(vmulq_s32(v176, v16), v173, v17), v13);
  v141 = vrshlq_s32(vmlaq_s32(vmulq_s32(v176, v17), v173, v19), v13);
  v142 = vrshlq_s32(vmlaq_s32(vmulq_s32(v175, v17), v174, v19), v13);
  v145 = v177;
  v146 = v178;
  v23 = 368;
  v24 = 256;
  do
  {
    *(&v131 + v24) = vaddq_s32(*(&v163 + v23), *(&v163 + v24));
    v23 -= 16;
    v24 += 16;
  }

  while (v23 != 304);
  v25 = 320;
  do
  {
    *(&v131 + v25) = vsubq_s32(*(&v163 + v23), *(&v163 + v25));
    v23 -= 16;
    v25 += 16;
  }

  while (v23 != 240);
  v26 = 496;
  v27 = 384;
  do
  {
    *(&v131 + v27) = vsubq_s32(*(&v163 + v26), *(&v163 + v27));
    v26 -= 16;
    v27 += 16;
  }

  while (v26 != 432);
  v28 = 448;
  v29 = 432;
  do
  {
    *(&v131 + v28) = vaddq_s32(*(&v163 + v29), *(&v163 + v28));
    v28 += 16;
    v29 -= 16;
  }

  while (v28 != 512);
  v163 = vaddq_s32(v134, v131);
  v164 = vaddq_s32(v133, v132);
  v165 = vsubq_s32(v132, v133);
  v166 = vsubq_s32(v131, v134);
  v30 = vmlaq_s32(vmulq_s32(v137, v16), v136, v17);
  v171 = vaddq_s32(v142, v139);
  v174 = vsubq_s32(v139, v142);
  v31 = v14[16];
  v32 = vneg_s32(v31);
  v192 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v149, v31, 1), v160, v31, 0), v13);
  v191 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v159, v31.i32[0]), v150, v31, 1), v13);
  v183 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v158, v32.i32[0]), v151, v32, 1), v13);
  v33 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v157, v32.i32[0]), v152, v32, 1), v13);
  v34 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v157, v31, 1), v152, v32, 0), v13);
  v125 = v154;
  v117 = vsubq_s32(v153, v33);
  v35 = vsubq_s32(v156, v34);
  v36 = v14[24];
  v127 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v117, v36.i32[0]), v35, v36, 1), v13);
  v190 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v158, v31, 1), v151, v32, 0), v13);
  v128 = vmlaq_s32(vmulq_s32(v163, v16), v164, v17);
  v129 = vmlaq_s32(vmulq_s32(v163, v17), v164, v19);
  v37 = vaddq_s32(v33, v153);
  v154 = vaddq_s32(v183, v154);
  v38 = vaddq_s32(v34, v156);
  v39 = vneg_s32(v36);
  v40 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v38, v39, 1), v37, v39, 0), v13);
  v139 = v171;
  v172 = vaddq_s32(v141, v140);
  v173 = vsubq_s32(v140, v141);
  v41 = vsubq_s32(v145, v144);
  v177 = vaddq_s32(v144, v145);
  v179 = v147;
  v122 = vsubq_s32(v154, v40);
  v123 = vaddq_s32(v40, v154);
  v145 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v177, v31.i32[0]), v172, v31, 1), v13);
  v175 = vsubq_s32(v146, v143);
  v176 = v41;
  v42 = vmlaq_lane_s32(vmulq_lane_s32(v159, v31, 1), v150, v32, 0);
  v124 = vmlaq_lane_s32(vmulq_n_s32(v166, v31.i32[0]), v165, v31, 1);
  v126 = vmlaq_lane_s32(vmulq_lane_s32(v166, v31, 1), v165, v32, 0);
  v43 = vmlaq_lane_s32(vmulq_lane_s32(v177, v31, 1), v172, v32, 0);
  v44 = vmlaq_lane_s32(vmulq_n_s32(v41, v32.i32[0]), v173, v32, 1);
  v45 = vmlaq_lane_s32(vmulq_lane_s32(v41, v31, 1), v173, v32, 0);
  v167 = v135;
  v168 = vrshlq_s32(vmlaq_s32(vmulq_s32(v137, v17), v136, v19), v13);
  v169 = vrshlq_s32(v30, v13);
  v170 = v138;
  v180 = v148;
  v181 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v149, v32.i32[0]), v160, v31, 1), v13);
  v46 = vaddq_s32(v181, v148);
  v47 = vsubq_s32(v148, v181);
  v48 = vsubq_s32(v161, v192);
  v49 = vaddq_s32(v192, v161);
  v50 = vaddq_s32(v168, v135);
  v51 = vaddq_s32(v169, v138);
  *v34.i8 = v14[8];
  v120 = vmlaq_lane_s32(vmulq_lane_s32(v50, *v34.i8, 1), v51, *v34.i8, 0);
  v52 = vneg_s32(*v34.i8);
  v130 = vmlaq_lane_s32(vmulq_n_s32(v50, v52.i32[0]), v51, *v34.i8, 1);
  v53 = vmlaq_lane_s32(vmulq_n_s32(v49, v34.i32[0]), v46, *v34.i8, 1);
  v54 = vmlaq_lane_s32(vmulq_lane_s32(v49, *v34.i8, 1), v46, v52, 0);
  v136 = vsubq_s32(v135, v168);
  v137 = vsubq_s32(v138, v169);
  v121 = vmlaq_lane_s32(vmulq_lane_s32(v137, v36, 1), v136, v36, 0);
  v119 = vmlaq_lane_s32(vmulq_n_s32(v137, v36.i32[0]), v136, v39, 1);
  v55 = vmlaq_lane_s32(vmulq_lane_s32(v117, v39, 1), v35, v36, 0);
  v56 = vmlaq_lane_s32(vmulq_n_s32(v38, v36.i32[0]), v37, v39, 1);
  v182 = vrshlq_s32(v42, v13);
  v57 = vaddq_s32(v182, v147);
  v178 = vaddq_s32(v143, v146);
  v58 = vrshlq_s32(v43, v13);
  v59 = vaddq_s32(v58, v171);
  v60 = v14[4];
  v61 = vaddq_s32(v145, v178);
  v62 = vmlaq_lane_s32(vmulq_lane_s32(v59, v60, 1), v61, v60, 0);
  v118 = vmlaq_lane_s32(vmulq_n_s32(v59, vneg_s32(v60).i32[0]), v61, v60, 1);
  v63 = vsubq_s32(v171, v58);
  v64 = vsubq_s32(v178, v145);
  v65 = v14[28];
  v116 = vmlaq_lane_s32(vmulq_lane_s32(v64, v65, 1), v63, v65, 0);
  v66 = vmlaq_lane_s32(vmulq_n_s32(v64, v65.i32[0]), v63, vneg_s32(v65), 1);
  v67 = vrshlq_s32(v44, v13);
  v68 = vrshlq_s32(v45, v13);
  v69 = vsubq_s32(v174, v67);
  *v44.i8 = v14[20];
  v70 = vsubq_s32(v175, v68);
  v71 = vmlaq_lane_s32(vmulq_lane_s32(v69, *v44.i8, 1), v70, *v44.i8, 0);
  v72 = vaddq_s32(v67, v174);
  v73 = vaddq_s32(v68, v175);
  v74 = v14[12];
  v114 = vmlaq_lane_s32(vmulq_lane_s32(v73, v74, 1), v72, v74, 0);
  v115 = vmlaq_lane_s32(vmulq_n_s32(v69, vneg_s32(*v44.i8).i32[0]), v70, *v44.i8, 1);
  v75 = vmlaq_lane_s32(vmulq_n_s32(v73, v74.i32[0]), v72, vneg_s32(v74), 1);
  v76 = vaddq_s32(v191, v162);
  v193 = vrshlq_s32(v53, v13);
  v77 = vrshlq_s32(v54, v13);
  v78 = vaddq_s32(v77, v57);
  v79 = v14[2];
  v80 = vaddq_s32(v193, v76);
  v81 = vmlaq_lane_s32(vmulq_lane_s32(v78, v79, 1), v80, v79, 0);
  v82 = vmlaq_lane_s32(vmulq_n_s32(v78, vneg_s32(v79).i32[0]), v80, v79, 1);
  v83 = vsubq_s32(v76, v193);
  v84 = vsubq_s32(v57, v77);
  v85 = v14[30];
  v86 = vmlaq_lane_s32(vmulq_lane_s32(v83, v85, 1), v84, v85, 0);
  v87 = vmlaq_lane_s32(vmulq_n_s32(v83, v85.i32[0]), v84, vneg_s32(v85), 1);
  v88 = vsubq_s32(v147, v182);
  v192 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v48, *v34.i8, 1), v47, v52, 0), v13);
  v89 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v48, v52.i32[0]), v47, v52, 1), v13);
  v90 = vsubq_s32(v88, v89);
  *v83.i8 = v14[18];
  v91 = vsubq_s32(v162, v191);
  v92 = vsubq_s32(v91, v192);
  v93 = vmlaq_lane_s32(vmulq_lane_s32(v90, *v83.i8, 1), v92, *v83.i8, 0);
  v94 = vmlaq_lane_s32(vmulq_n_s32(v90, vneg_s32(*v83.i8).i32[0]), v92, *v83.i8, 1);
  v95 = vaddq_s32(v192, v91);
  v96 = vaddq_s32(v89, v88);
  *v44.i8 = v14[14];
  v97 = vmlaq_lane_s32(vmulq_lane_s32(v95, *v44.i8, 1), v96, *v44.i8, 0);
  v98 = vmlaq_lane_s32(vmulq_n_s32(v95, v44.i32[0]), v96, vneg_s32(*v44.i8), 1);
  v99 = vsubq_s32(v125, v183);
  v100 = vrshlq_s32(v55, v13);
  v101 = vaddq_s32(v100, v99);
  *v55.i8 = v14[10];
  v102 = vsubq_s32(v155, v190);
  v103 = vaddq_s32(v127, v102);
  v104 = vmlaq_lane_s32(vmulq_lane_s32(v101, *v55.i8, 1), v103, *v55.i8, 0);
  v105 = vmlaq_lane_s32(vmulq_n_s32(v101, vneg_s32(*v55.i8).i32[0]), v103, *v55.i8, 1);
  v106 = vsubq_s32(v99, v100);
  *v35.i8 = v14[22];
  v107 = vsubq_s32(v102, v127);
  v108 = vmlaq_lane_s32(vmulq_lane_s32(v107, *v35.i8, 1), v106, *v35.i8, 0);
  v109 = vmlaq_lane_s32(vmulq_n_s32(v107, v35.i32[0]), v106, vneg_s32(*v35.i8), 1);
  v110 = vaddq_s32(v190, v155);
  v111 = vrshlq_s32(v56, v13);
  *v35.i8 = v14[26];
  v112 = vsubq_s32(v110, v111);
  v158 = v102;
  v159 = v91;
  v180 = v77;
  v181 = v89;
  v179 = v57;
  v182 = v88;
  v183 = v99;
  v189 = v127;
  v155 = v110;
  v113 = vaddq_s32(v111, v110);
  *v89.i8 = v14[6];
  *a2 = vrshlq_s32(v128, v13);
  a2[1] = vrshlq_s32(v81, v13);
  a2[2] = vrshlq_s32(v62, v13);
  a2[3] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v113, v89.i32[0]), v123, vneg_s32(*v89.i8), 1), v13);
  a2[4] = vrshlq_s32(v120, v13);
  a2[5] = vrshlq_s32(v104, v13);
  a2[6] = vrshlq_s32(v75, v13);
  a2[7] = vrshlq_s32(v98, v13);
  a2[8] = vrshlq_s32(v124, v13);
  a2[9] = vrshlq_s32(v93, v13);
  a2[10] = vrshlq_s32(v71, v13);
  a2[11] = vrshlq_s32(v109, v13);
  a2[12] = vrshlq_s32(v119, v13);
  a2[13] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v122, *v35.i8, 1), v112, *v35.i8, 0), v13);
  a2[14] = vrshlq_s32(v66, v13);
  a2[15] = vrshlq_s32(v87, v13);
  a2[16] = vrshlq_s32(v129, v13);
  a2[17] = vrshlq_s32(v86, v13);
  a2[18] = vrshlq_s32(v116, v13);
  a2[19] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v122, vneg_s32(*v35.i8).i32[0]), v112, *v35.i8, 1), v13);
  a2[20] = vrshlq_s32(v121, v13);
  a2[21] = vrshlq_s32(v108, v13);
  a2[22] = vrshlq_s32(v115, v13);
  a2[23] = vrshlq_s32(v94, v13);
  a2[24] = vrshlq_s32(v126, v13);
  a2[25] = vrshlq_s32(v97, v13);
  a2[26] = vrshlq_s32(v114, v13);
  a2[27] = vrshlq_s32(v105, v13);
  a2[28] = vrshlq_s32(v130, v13);
  a2[29] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v113, *v89.i8, 1), v123, *v89.i8, 0), v13);
  a2[30] = vrshlq_s32(v118, v13);
  a2[31] = vrshlq_s32(v82, v13);
  return result;
}

uint64_t sub_2779AE858()
{
  result = MEMORY[0x28223BE20]();
  v3 = 0;
  v609 = *MEMORY[0x277D85DE8];
  for (i = 1008; i != 496; i -= 16)
  {
    v5 = vaddq_s32(*(result + i), *(result + v3));
    *&v576[v3] = v5;
    v3 += 16;
  }

  v6 = 496;
  v7 = 512;
  do
  {
    *&v576[v7] = vsubq_s32(*(result + v6), *(result + v7));
    v6 -= 16;
    v7 += 16;
  }

  while (v6 != -16);
  v8 = 0;
  for (j = 496; j != 240; j -= 16)
  {
    *&v527[v8] = vaddq_s32(*&v576[j], *&v576[v8]);
    v8 += 16;
  }

  v10 = 240;
  v11 = 256;
  do
  {
    *&v527[v11] = vsubq_s32(*&v576[v10], *&v576[v11]);
    v10 -= 16;
    v11 += 16;
  }

  while (v10 != -16);
  v12 = 0;
  v5.i32[0] = -v2;
  v13 = vdupq_lane_s32(*v5.i8, 0);
  v14 = &qword_277BC0E58[33 * (v2 - 10)];
  v544 = v577;
  v545 = v578;
  v546 = v579;
  v547 = v580;
  v548 = v581;
  v549 = v582;
  v550 = v583;
  v551 = v584;
  v15 = v14[32];
  v16 = vdupq_lane_s32(v15, 0);
  v17 = vdupq_lane_s32(v15, 1);
  v18 = vneg_s32(v15);
  v567 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v585, v15, 1), v600, v15, 0), v13);
  v566 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v599, v15.i32[0]), v586, v15, 1), v13);
  v552 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v585, v18.i32[0]), v600, v15, 1), v13);
  v553 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v599, v15, 1), v586, v18, 0), v13);
  v565 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v598, v15.i32[0]), v587, v15, 1), v13);
  v564 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v597, v15.i32[0]), v588, v15, 1), v13);
  v554 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v598, v15, 1), v587, v18, 0), v13);
  v555 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v597, v15, 1), v588, v18, 0), v13);
  v563 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v596, v15.i32[0]), v589, v15, 1), v13);
  v562 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v595, v15.i32[0]), v590, v15, 1), v13);
  v556 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v596, v15, 1), v589, v18, 0), v13);
  v557 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v595, v15, 1), v590, v18, 0), v13);
  v561 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v594, v15.i32[0]), v591, v15, 1), v13);
  v560 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v593, v15.i32[0]), v592, v15, 1), v13);
  v19 = vdupq_lane_s32(v18, 0);
  v558 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v594, v15, 1), v591, v18, 0), v13);
  v559 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v593, v15, 1), v592, v18, 0), v13);
  v568 = v601;
  v569 = v602;
  v570 = v603;
  v571 = v604;
  v572 = v605;
  v573 = v606;
  v20 = 240;
  v574 = v607;
  v575 = v608;
  do
  {
    *&v470[v12] = vaddq_s32(*&v527[v20], *&v527[v12]);
    v20 -= 16;
    v12 += 16;
  }

  while (v20 != 112);
  v21 = 112;
  v22 = 128;
  do
  {
    *&v470[v22] = vsubq_s32(*&v527[v21], *&v527[v22]);
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != -16);
  v479 = v528;
  v480 = v529;
  v481 = v530;
  v482 = v531;
  v490 = vrshlq_s32(vmlaq_s32(vmulq_s32(v539, v16), v532, v17), v13);
  v489 = vrshlq_s32(vmlaq_s32(vmulq_s32(v538, v16), v533, v17), v13);
  v483 = vrshlq_s32(vmlaq_s32(vmulq_s32(v539, v17), v532, v19), v13);
  v484 = vrshlq_s32(vmlaq_s32(vmulq_s32(v538, v17), v533, v19), v13);
  v488 = vrshlq_s32(vmlaq_s32(vmulq_s32(v537, v16), v534, v17), v13);
  v487 = vrshlq_s32(vmlaq_s32(vmulq_s32(v536, v16), v535, v17), v13);
  v485 = vrshlq_s32(vmlaq_s32(vmulq_s32(v537, v17), v534, v19), v13);
  v486 = vrshlq_s32(vmlaq_s32(vmulq_s32(v536, v17), v535, v19), v13);
  v491 = v540;
  v492 = v541;
  v23 = 752;
  v24 = 512;
  v493 = v542;
  v494 = v543;
  do
  {
    *&v470[v24] = vaddq_s32(*&v527[v23], *&v527[v24]);
    v23 -= 16;
    v24 += 16;
  }

  while (v23 != 624);
  v25 = 640;
  do
  {
    *&v470[v25] = vsubq_s32(*&v527[v23], *&v527[v25]);
    v23 -= 16;
    v25 += 16;
  }

  while (v23 != 496);
  v26 = 1008;
  v27 = 768;
  do
  {
    *&v470[v27] = vsubq_s32(*&v527[v26], *&v527[v27]);
    v26 -= 16;
    v27 += 16;
  }

  while (v26 != 880);
  v28 = 896;
  v29 = 880;
  do
  {
    *&v470[v28] = vaddq_s32(*&v527[v29], *&v527[v28]);
    v28 += 16;
    v29 -= 16;
  }

  while (v28 != 1024);
  v30 = 0;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v406 + v30) = vaddq_s32(*&v470[k], *&v470[v30]);
    v30 += 16;
  }

  v32 = 48;
  v33 = 64;
  do
  {
    *(&v406 + v33) = vsubq_s32(*&v470[v32], *&v470[v33]);
    v32 -= 16;
    v33 += 16;
  }

  while (v32 != -16);
  v414 = v471;
  v415 = v472;
  v419 = vrshlq_s32(vmlaq_s32(vmulq_s32(v476, v16), v473, v17), v13);
  v418 = vrshlq_s32(vmlaq_s32(vmulq_s32(v475, v16), v474, v17), v13);
  v416 = vrshlq_s32(vmlaq_s32(vmulq_s32(v476, v17), v473, v19), v13);
  v417 = vrshlq_s32(vmlaq_s32(vmulq_s32(v475, v17), v474, v19), v13);
  v420 = v477;
  v421 = v478;
  v34 = 368;
  v35 = 256;
  do
  {
    *(&v406 + v35) = vaddq_s32(*&v470[v34], *&v470[v35]);
    v34 -= 16;
    v35 += 16;
  }

  while (v34 != 304);
  v36 = 320;
  do
  {
    *(&v406 + v36) = vsubq_s32(*&v470[v34], *&v470[v36]);
    v34 -= 16;
    v36 += 16;
  }

  while (v34 != 240);
  v37 = 496;
  v38 = 384;
  do
  {
    *(&v406 + v38) = vsubq_s32(*&v470[v37], *&v470[v38]);
    v37 -= 16;
    v38 += 16;
  }

  while (v37 != 432);
  v39 = 448;
  v40 = 432;
  do
  {
    *(&v406 + v39) = vaddq_s32(*&v470[v40], *&v470[v39]);
    v39 += 16;
    v40 -= 16;
  }

  while (v39 != 512);
  v438 = v495;
  v439 = v496;
  v41 = v14[16];
  v42 = vdupq_lane_s32(v41, 0);
  v440 = v497;
  v441 = v498;
  v43 = vdupq_lane_s32(v41, 1);
  v44 = vneg_s32(v41);
  v45 = vdupq_lane_s32(v44, 0);
  v465 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v499, v41, 1), v522, v41, 0), v13);
  v464 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v521, v41.i32[0]), v500, v41, 1), v13);
  v442 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v499, v44.i32[0]), v522, v41, 1), v13);
  v443 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v521, v41, 1), v500, v44, 0), v13);
  v463 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v520, v41.i32[0]), v501, v41, 1), v13);
  v462 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v519, v41.i32[0]), v502, v41, 1), v13);
  v444 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v520, v41, 1), v501, v44, 0), v13);
  v445 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v519, v41, 1), v502, v44, 0), v13);
  v46 = vdupq_lane_s32(v44, 1);
  v446 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v518, v44.i32[0]), v503, v44, 1), v13);
  v447 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v517, v44.i32[0]), v504, v44, 1), v13);
  v461 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v518, v41, 1), v503, v44, 0), v13);
  v460 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v517, v41, 1), v504, v44, 0), v13);
  v448 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v516, v44.i32[0]), v505, v44, 1), v13);
  v449 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v515, v44.i32[0]), v506, v44, 1), v13);
  v459 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v516, v41, 1), v505, v44, 0), v13);
  v458 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v515, v41, 1), v506, v44, 0), v13);
  v450 = v507;
  v451 = v508;
  v452 = v509;
  v453 = v510;
  v454 = v511;
  v455 = v512;
  v456 = v513;
  v457 = v514;
  v466 = v523;
  v467 = v524;
  v468 = v525;
  v469 = v526;
  v342 = vaddq_s32(v409, v406);
  v343 = vaddq_s32(v408, v407);
  v344 = vsubq_s32(v407, v408);
  v345 = vsubq_s32(v406, v409);
  v346 = v410;
  v347 = vrshlq_s32(vmlaq_s32(vmulq_s32(v412, v17), v411, v19), v13);
  v348 = vrshlq_s32(vmlaq_s32(vmulq_s32(v412, v16), v411, v17), v13);
  v349 = v413;
  v350 = vaddq_s32(v417, v414);
  v351 = vaddq_s32(v416, v415);
  v352 = vsubq_s32(v415, v416);
  v353 = vsubq_s32(v414, v417);
  v354 = vsubq_s32(v421, v418);
  v355 = vsubq_s32(v420, v419);
  v356 = vaddq_s32(v419, v420);
  v357 = vaddq_s32(v418, v421);
  v358 = v422;
  v359 = v423;
  v371 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v435, v41.i32[0]), v424, v41, 1), v13);
  v370 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v434, v41.i32[0]), v425, v41, 1), v13);
  v360 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v435, v41, 1), v424, v44, 0), v13);
  v361 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v434, v41, 1), v425, v44, 0), v13);
  v362 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v433, v44.i32[0]), v426, v44, 1), v13);
  v363 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v432, v44.i32[0]), v427, v44, 1), v13);
  v369 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v433, v41, 1), v426, v44, 0), v13);
  v368 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v432, v41, 1), v427, v44, 0), v13);
  v364 = v428;
  v365 = v429;
  v366 = v430;
  v367 = v431;
  v47 = 624;
  v48 = 512;
  v372 = v436;
  v373 = v437;
  do
  {
    *(&v342 + v48) = vaddq_s32(*(&v406 + v47), *(&v406 + v48));
    v47 -= 16;
    v48 += 16;
  }

  while (v47 != 560);
  v49 = 576;
  do
  {
    *(&v342 + v49) = vsubq_s32(*(&v406 + v47), *(&v406 + v49));
    v47 -= 16;
    v49 += 16;
  }

  while (v47 != 496);
  v50 = 752;
  v51 = 640;
  do
  {
    *(&v342 + v51) = vsubq_s32(*(&v406 + v50), *(&v406 + v51));
    v50 -= 16;
    v51 += 16;
  }

  while (v50 != 688);
  v52 = 704;
  v53 = 688;
  do
  {
    *(&v342 + v52) = vaddq_s32(*(&v406 + v53), *(&v406 + v52));
    v52 += 16;
    v53 -= 16;
  }

  while (v52 != 768);
  v54 = 880;
  v55 = 768;
  do
  {
    *(&v342 + v55) = vaddq_s32(*(&v406 + v54), *(&v406 + v55));
    v54 -= 16;
    v55 += 16;
  }

  while (v54 != 816);
  v56 = 832;
  do
  {
    *(&v342 + v56) = vsubq_s32(*(&v406 + v54), *(&v406 + v56));
    v54 -= 16;
    v56 += 16;
  }

  while (v54 != 752);
  v57 = 1008;
  v58 = 896;
  do
  {
    *(&v342 + v58) = vsubq_s32(*(&v406 + v57), *(&v406 + v58));
    v57 -= 16;
    v58 += 16;
  }

  while (v57 != 944);
  v59 = 960;
  v60 = 944;
  do
  {
    *(&v342 + v59) = vaddq_s32(*(&v406 + v60), *(&v406 + v59));
    v59 += 16;
    v60 -= 16;
  }

  while (v59 != 1024);
  v338 = vmlaq_s32(vmulq_s32(v342, v16), v343, v17);
  v340 = vmlaq_s32(vmulq_s32(v342, v17), v343, v19);
  v339 = vmlaq_s32(vmulq_s32(v345, v42), v344, v43);
  v341 = vmlaq_s32(vmulq_s32(v345, v43), v344, v45);
  v61 = vaddq_s32(v347, v346);
  v62 = vsubq_s32(v346, v347);
  v63 = vsubq_s32(v349, v348);
  v64 = vaddq_s32(v348, v349);
  v65 = vmlaq_s32(vmulq_s32(v356, v42), v351, v43);
  v66 = vmlaq_s32(vmulq_s32(v356, v43), v351, v45);
  v67 = vmlaq_s32(vmulq_s32(v355, v45), v352, v46);
  v68 = vmlaq_s32(vmulq_s32(v355, v43), v352, v45);
  v69 = vaddq_s32(v360, v359);
  v70 = vsubq_s32(v359, v360);
  v71 = vsubq_s32(v372, v371);
  v72 = vaddq_s32(v371, v372);
  v73 = v14[8];
  v329 = v14[7];
  v74 = vmlaq_lane_s32(vmulq_lane_s32(v376, v73, 1), v403, v73, 0);
  v75 = vneg_s32(v73);
  v76 = vmlaq_lane_s32(vmulq_n_s32(v376, v75.i32[0]), v403, v73, 1);
  v318 = vmlaq_lane_s32(vmulq_n_s32(v402, v73.i32[0]), v377, v73, 1);
  v312 = vmlaq_lane_s32(vmulq_lane_s32(v402, v73, 1), v377, v75, 0);
  v327 = vmlaq_lane_s32(vmulq_n_s32(v401, v75.i32[0]), v378, v75, 1);
  v323 = vmlaq_lane_s32(vmulq_lane_s32(v401, v73, 1), v378, v75, 0);
  v77 = vmlaq_lane_s32(vmulq_n_s32(v400, v75.i32[0]), v379, v75, 1);
  v78 = vmlaq_lane_s32(vmulq_lane_s32(v400, v73, 1), v379, v75, 0);
  v335 = vmlaq_lane_s32(vmulq_n_s32(v64, v73.i32[0]), v61, v73, 1);
  v337 = vmlaq_lane_s32(vmulq_lane_s32(v64, v73, 1), v61, v75, 0);
  v79 = vmlaq_lane_s32(vmulq_n_s32(v72, v73.i32[0]), v69, v73, 1);
  v80 = vmlaq_lane_s32(vmulq_lane_s32(v72, v73, 1), v69, v75, 0);
  v310 = vmlaq_lane_s32(vmulq_n_s32(v71, v75.i32[0]), v70, v75, 1);
  v81 = vmlaq_lane_s32(vmulq_lane_s32(v71, v73, 1), v70, v75, 0);
  v82 = vsubq_s32(v364, v363);
  v83 = vaddq_s32(v363, v364);
  v84 = vaddq_s32(v368, v367);
  v85 = vsubq_s32(v367, v368);
  v86 = v14[24];
  v320 = v14[23];
  v87 = vmlaq_lane_s32(vmulq_lane_s32(v395, v86, 1), v384, v86, 0);
  v88 = vneg_s32(v86);
  v89 = vmlaq_lane_s32(vmulq_n_s32(v395, v86.i32[0]), v384, v88, 1);
  v326 = vmlaq_lane_s32(vmulq_n_s32(v385, v86.i32[0]), v394, v86, 1);
  v325 = vmlaq_lane_s32(vmulq_lane_s32(v385, v88, 1), v394, v86, 0);
  v330 = vmlaq_lane_s32(vmulq_lane_s32(v393, v88, 1), v386, v88, 0);
  v331 = vmlaq_lane_s32(vmulq_n_s32(v393, v86.i32[0]), v386, v88, 1);
  v90 = vmlaq_lane_s32(vmulq_n_s32(v392, v86.i32[0]), v387, v88, 1);
  v91 = vmlaq_lane_s32(vmulq_lane_s32(v392, v88, 1), v387, v88, 0);
  v336 = vmlaq_lane_s32(vmulq_n_s32(v62, v86.i32[0]), v63, v86, 1);
  v334 = vmlaq_lane_s32(vmulq_lane_s32(v62, v88, 1), v63, v86, 0);
  v92 = vmlaq_lane_s32(vmulq_n_s32(v82, v86.i32[0]), v85, v86, 1);
  v93 = vmlaq_lane_s32(vmulq_lane_s32(v82, v88, 1), v85, v86, 0);
  v303 = vmlaq_lane_s32(vmulq_n_s32(v84, v86.i32[0]), v83, v88, 1);
  v94 = vmlaq_lane_s32(vmulq_lane_s32(v84, v88, 1), v83, v88, 0);
  v95 = vrshlq_s32(v76, v13);
  v96 = vaddq_s32(v95, v375);
  v97 = vsubq_s32(v375, v95);
  v98 = vrshlq_s32(v74, v13);
  v99 = vsubq_s32(v404, v98);
  v100 = vaddq_s32(v98, v404);
  v101 = vrshlq_s32(v65, v13);
  v102 = vrshlq_s32(v66, v13);
  v103 = vaddq_s32(v102, v350);
  v104 = vaddq_s32(v101, v357);
  v105 = v14[4];
  v315 = v14[3];
  v316 = vmlaq_lane_s32(vmulq_lane_s32(v103, v105, 1), v104, v105, 0);
  v106 = vneg_s32(v105);
  v333 = vmlaq_lane_s32(vmulq_n_s32(v103, v106.i32[0]), v104, v105, 1);
  v107 = vmlaq_lane_s32(vmulq_n_s32(v100, v105.i32[0]), v96, v105, 1);
  v108 = vmlaq_lane_s32(vmulq_lane_s32(v100, v105, 1), v96, v106, 0);
  v109 = vmlaq_lane_s32(vmulq_n_s32(v99, v106.i32[0]), v97, v106, 1);
  v110 = vmlaq_lane_s32(vmulq_lane_s32(v99, v105, 1), v97, v106, 0);
  v111 = vsubq_s32(v350, v102);
  v112 = vsubq_s32(v357, v101);
  v113 = vrshlq_s32(v77, v13);
  v114 = vsubq_s32(v380, v113);
  v115 = vaddq_s32(v113, v380);
  v116 = vrshlq_s32(v78, v13);
  v117 = vaddq_s32(v116, v399);
  v118 = vsubq_s32(v399, v116);
  v119 = v14[27];
  v120 = v14[28];
  v324 = vmlaq_lane_s32(vmulq_lane_s32(v112, v120, 1), v111, v120, 0);
  v121 = vmulq_n_s32(v112, v120.i32[0]);
  *v112.i8 = vneg_s32(v120);
  v321 = vmlaq_lane_s32(v121, v111, *v112.i8, 1);
  v122 = vmlaq_lane_s32(vmulq_n_s32(v114, v120.i32[0]), v118, v120, 1);
  v123 = vmlaq_lane_s32(vmulq_lane_s32(v114, *v112.i8, 1), v118, v120, 0);
  v124 = vmlaq_lane_s32(vmulq_n_s32(v117, v120.i32[0]), v115, *v112.i8, 1);
  v125 = vmlaq_lane_s32(vmulq_lane_s32(v117, *v112.i8, 1), v115, *v112.i8, 0);
  v126 = vrshlq_s32(v89, v13);
  v127 = vaddq_s32(v126, v383);
  v128 = vsubq_s32(v383, v126);
  v129 = vrshlq_s32(v87, v13);
  v130 = vsubq_s32(v396, v129);
  v131 = vaddq_s32(v129, v396);
  v132 = vrshlq_s32(v67, v13);
  v133 = vrshlq_s32(v68, v13);
  v134 = vsubq_s32(v353, v132);
  v135 = vsubq_s32(v354, v133);
  *v103.i8 = v14[20];
  v300 = v14[19];
  v314 = vmlaq_lane_s32(vmulq_lane_s32(v134, *v103.i8, 1), v135, *v103.i8, 0);
  *v104.i8 = vneg_s32(*v103.i8);
  v322 = vmlaq_lane_s32(vmulq_n_s32(v134, v104.i32[0]), v135, *v103.i8, 1);
  v136 = vmlaq_lane_s32(vmulq_n_s32(v131, v103.i32[0]), v127, *v103.i8, 1);
  v137 = vmlaq_lane_s32(vmulq_lane_s32(v131, *v103.i8, 1), v127, *v104.i8, 0);
  v138 = vmlaq_lane_s32(vmulq_n_s32(v130, v104.i32[0]), v128, *v104.i8, 1);
  v291 = vmlaq_lane_s32(vmulq_lane_s32(v130, *v103.i8, 1), v128, *v104.i8, 0);
  v139 = vaddq_s32(v132, v353);
  v140 = vaddq_s32(v133, v354);
  v141 = vrshlq_s32(v91, v13);
  v142 = vsubq_s32(v388, v141);
  v143 = vaddq_s32(v141, v388);
  v144 = vrshlq_s32(v90, v13);
  v145 = vaddq_s32(v144, v391);
  v146 = vsubq_s32(v391, v144);
  *v144.i8 = v14[11];
  *v91.i8 = v14[12];
  v332 = vmlaq_lane_s32(vmulq_lane_s32(v140, *v91.i8, 1), v139, *v91.i8, 0);
  v147 = vmulq_n_s32(v140, v91.i32[0]);
  *v140.i8 = vneg_s32(*v91.i8);
  v305 = vmlaq_lane_s32(v147, v139, *v140.i8, 1);
  v290 = vmlaq_lane_s32(vmulq_n_s32(v142, v91.i32[0]), v146, *v91.i8, 1);
  v148 = vmlaq_lane_s32(vmulq_lane_s32(v142, *v140.i8, 1), v146, *v91.i8, 0);
  v295 = vmlaq_lane_s32(vmulq_n_s32(v145, v91.i32[0]), v143, *v140.i8, 1);
  v294 = vmlaq_lane_s32(vmulq_lane_s32(v145, *v140.i8, 1), v143, *v140.i8, 0);
  v149 = vrshlq_s32(v79, v13);
  v150 = vrshlq_s32(v80, v13);
  v151 = vaddq_s32(v361, v358);
  v152 = vaddq_s32(v150, v151);
  *v143.i8 = v14[1];
  *v145.i8 = v14[2];
  v153 = vmulq_n_s32(v152, vneg_s32(*v145.i8).i32[0]);
  v154 = vmulq_lane_s32(v152, *v145.i8, 1);
  v155 = vaddq_s32(v370, v373);
  v156 = vaddq_s32(v149, v155);
  v297 = vmlaq_lane_s32(v154, v156, *v145.i8, 0);
  v317 = vmlaq_lane_s32(v153, v156, *v145.i8, 1);
  v157 = vsubq_s32(v151, v150);
  v158 = vsubq_s32(v155, v149);
  *v151.i8 = v14[30];
  v289 = v14[29];
  v308 = vmlaq_lane_s32(vmulq_lane_s32(v158, *v151.i8, 1), v157, *v151.i8, 0);
  v306 = vmlaq_lane_s32(vmulq_n_s32(v158, v151.i32[0]), v157, vneg_s32(*v151.i8), 1);
  v159 = vsubq_s32(v358, v361);
  v160 = vsubq_s32(v373, v370);
  v161 = vrshlq_s32(v310, v13);
  v162 = vrshlq_s32(v81, v13);
  v163 = vsubq_s32(v159, v161);
  *v91.i8 = v14[17];
  *v145.i8 = v14[18];
  v164 = vmulq_n_s32(v163, vneg_s32(*v145.i8).i32[0]);
  v165 = vmulq_lane_s32(v163, *v145.i8, 1);
  v166 = vsubq_s32(v160, v162);
  v299 = vmlaq_lane_s32(v165, v166, *v145.i8, 0);
  v309 = vmlaq_lane_s32(v164, v166, *v145.i8, 1);
  v167 = vaddq_s32(v161, v159);
  v168 = vaddq_s32(v162, v160);
  *v155.i8 = v14[13];
  *v162.i8 = v14[14];
  v311 = vmlaq_lane_s32(vmulq_lane_s32(v168, *v162.i8, 1), v167, *v162.i8, 0);
  v296 = vmlaq_lane_s32(vmulq_n_s32(v168, v162.i32[0]), v167, vneg_s32(*v162.i8), 1);
  v169 = vrshlq_s32(v92, v13);
  v170 = vrshlq_s32(v93, v13);
  v171 = vsubq_s32(v365, v362);
  v172 = vaddq_s32(v170, v171);
  *v93.i8 = v14[9];
  *v103.i8 = v14[10];
  v173 = vsubq_s32(v366, v369);
  v174 = vaddq_s32(v169, v173);
  v288 = vmlaq_lane_s32(vmulq_lane_s32(v172, *v103.i8, 1), v174, *v103.i8, 0);
  v307 = vmlaq_lane_s32(vmulq_n_s32(v172, vneg_s32(*v103.i8).i32[0]), v174, *v103.i8, 1);
  v175 = vsubq_s32(v171, v170);
  v176 = vsubq_s32(v173, v169);
  *v161.i8 = v14[21];
  *v169.i8 = v14[22];
  v301 = vmlaq_lane_s32(vmulq_lane_s32(v176, *v169.i8, 1), v175, *v169.i8, 0);
  v293 = vmlaq_lane_s32(vmulq_n_s32(v176, v169.i32[0]), v175, vneg_s32(*v169.i8), 1);
  v177 = vaddq_s32(v362, v365);
  v178 = vaddq_s32(v369, v366);
  v179 = vrshlq_s32(v303, v13);
  v180 = vrshlq_s32(v94, v13);
  v181 = vsubq_s32(v177, v180);
  *v171.i8 = v14[25];
  *v103.i8 = v14[26];
  v182 = vmulq_n_s32(v181, vneg_s32(*v103.i8).i32[0]);
  v183 = vmulq_lane_s32(v181, *v103.i8, 1);
  v184 = vsubq_s32(v178, v179);
  v292 = vmlaq_lane_s32(v183, v184, *v103.i8, 0);
  v298 = vmlaq_lane_s32(v182, v184, *v103.i8, 1);
  v185 = vaddq_s32(v180, v177);
  v186 = vaddq_s32(v179, v178);
  *v183.i8 = v14[5];
  *v180.i8 = v14[6];
  v304 = vmlaq_lane_s32(vmulq_lane_s32(v186, *v180.i8, 1), v185, *v180.i8, 0);
  v286 = vmlaq_lane_s32(vmulq_n_s32(v186, v180.i32[0]), v185, vneg_s32(*v180.i8), 1);
  v187 = vrshlq_s32(v318, v13);
  v188 = vrshlq_s32(v312, v13);
  v189 = vrshlq_s32(v107, v13);
  v190 = vrshlq_s32(v108, v13);
  v191 = vaddq_s32(v188, v374);
  v192 = vaddq_s32(v190, v191);
  v193 = vaddq_s32(v187, v405);
  v194 = vaddq_s32(v189, v193);
  v195 = vmlaq_lane_s32(vmulq_lane_s32(v192, *v143.i8, 1), v194, *v143.i8, 0);
  v319 = vmlaq_lane_s32(vmulq_n_s32(v192, vneg_s32(*v143.i8).i32[0]), v194, *v143.i8, 1);
  v196 = vsubq_s32(v191, v190);
  v197 = vsubq_s32(v193, v189);
  *v143.i8 = v14[31];
  v287 = vmlaq_lane_s32(vmulq_lane_s32(v197, *v143.i8, 1), v196, *v143.i8, 0);
  v198 = vmlaq_lane_s32(vmulq_n_s32(v197, v143.i32[0]), v196, vneg_s32(*v143.i8), 1);
  v199 = vsubq_s32(v374, v188);
  v200 = vsubq_s32(v405, v187);
  v201 = vrshlq_s32(v109, v13);
  v202 = vrshlq_s32(v110, v13);
  v203 = vsubq_s32(v199, v201);
  v204 = vsubq_s32(v200, v202);
  v205 = vmlaq_lane_s32(vmulq_lane_s32(v203, *v91.i8, 1), v204, *v91.i8, 0);
  v313 = vmlaq_lane_s32(vmulq_n_s32(v203, vneg_s32(*v91.i8).i32[0]), v204, *v91.i8, 1);
  v206 = vaddq_s32(v201, v199);
  v207 = vaddq_s32(v202, v200);
  *v201.i8 = v14[15];
  v302 = vmlaq_lane_s32(vmulq_lane_s32(v207, *v201.i8, 1), v206, *v201.i8, 0);
  v208 = vmlaq_lane_s32(vmulq_n_s32(v207, v201.i32[0]), v206, vneg_s32(*v201.i8), 1);
  v209 = vrshlq_s32(v327, v13);
  v210 = vrshlq_s32(v323, v13);
  v211 = vrshlq_s32(v122, v13);
  v212 = vrshlq_s32(v123, v13);
  v213 = vsubq_s32(v381, v209);
  v214 = vaddq_s32(v212, v213);
  v215 = vsubq_s32(v398, v210);
  v216 = vaddq_s32(v211, v215);
  v217 = vmlaq_lane_s32(vmulq_lane_s32(v214, *v93.i8, 1), v216, *v93.i8, 0);
  v328 = vmlaq_lane_s32(vmulq_n_s32(v214, vneg_s32(*v93.i8).i32[0]), v216, *v93.i8, 1);
  v218 = vsubq_s32(v213, v212);
  v219 = vsubq_s32(v215, v211);
  v220 = vmlaq_lane_s32(vmulq_lane_s32(v219, v320, 1), v218, v320, 0);
  v221 = vmlaq_lane_s32(vmulq_n_s32(v219, v320.i32[0]), v218, vneg_s32(v320), 1);
  v222 = vaddq_s32(v209, v381);
  v223 = vaddq_s32(v210, v398);
  v224 = vrshlq_s32(v124, v13);
  v225 = vrshlq_s32(v125, v13);
  v226 = vsubq_s32(v222, v225);
  v227 = vsubq_s32(v223, v224);
  v228 = vmlaq_lane_s32(vmulq_lane_s32(v226, *v171.i8, 1), v227, *v171.i8, 0);
  v229 = vmlaq_lane_s32(vmulq_n_s32(v226, vneg_s32(*v171.i8).i32[0]), v227, *v171.i8, 1);
  v230 = vaddq_s32(v225, v222);
  v231 = vaddq_s32(v224, v223);
  v232 = vmlaq_lane_s32(vmulq_lane_s32(v231, v329, 1), v230, v329, 0);
  v233 = vmlaq_lane_s32(vmulq_n_s32(v231, v329.i32[0]), v230, vneg_s32(v329), 1);
  v234 = vrshlq_s32(v326, v13);
  v235 = vrshlq_s32(v325, v13);
  v236 = vrshlq_s32(v136, v13);
  v237 = vrshlq_s32(v137, v13);
  v238 = vaddq_s32(v235, v382);
  v239 = vaddq_s32(v237, v238);
  v240 = vaddq_s32(v234, v397);
  v241 = vaddq_s32(v236, v240);
  v242 = vmlaq_lane_s32(vmulq_lane_s32(v239, *v183.i8, 1), v241, *v183.i8, 0);
  v243 = vmlaq_lane_s32(vmulq_n_s32(v239, vneg_s32(*v183.i8).i32[0]), v241, *v183.i8, 1);
  v244 = vsubq_s32(v238, v237);
  v245 = vsubq_s32(v240, v236);
  v246 = vmlaq_lane_s32(vmulq_lane_s32(v245, v119, 1), v244, v119, 0);
  v247 = vmlaq_lane_s32(vmulq_n_s32(v245, v119.i32[0]), v244, vneg_s32(v119), 1);
  v248 = vsubq_s32(v382, v235);
  v249 = vsubq_s32(v397, v234);
  v250 = vrshlq_s32(v138, v13);
  v251 = vrshlq_s32(v291, v13);
  v252 = vsubq_s32(v248, v250);
  v253 = vmulq_n_s32(v252, vneg_s32(*v161.i8).i32[0]);
  v254 = vmulq_lane_s32(v252, *v161.i8, 1);
  v255 = vsubq_s32(v249, v251);
  v256 = vmlaq_lane_s32(v254, v255, *v161.i8, 0);
  v257 = vmlaq_lane_s32(v253, v255, *v161.i8, 1);
  v258 = vaddq_s32(v250, v248);
  v259 = vaddq_s32(v251, v249);
  v260 = vmlaq_lane_s32(vmulq_lane_s32(v259, *v144.i8, 1), v258, *v144.i8, 0);
  v261 = vmlaq_lane_s32(vmulq_n_s32(v259, v144.i32[0]), v258, vneg_s32(*v144.i8), 1);
  v262 = vrshlq_s32(v331, v13);
  v263 = vrshlq_s32(v330, v13);
  v264 = vrshlq_s32(v290, v13);
  v265 = vrshlq_s32(v148, v13);
  v266 = vsubq_s32(v389, v263);
  v267 = vaddq_s32(v265, v266);
  v268 = vmulq_n_s32(v267, vneg_s32(*v155.i8).i32[0]);
  v269 = vmulq_lane_s32(v267, *v155.i8, 1);
  v270 = vsubq_s32(v390, v262);
  v271 = vaddq_s32(v264, v270);
  v272 = vmlaq_lane_s32(v269, v271, *v155.i8, 0);
  v273 = vmlaq_lane_s32(v268, v271, *v155.i8, 1);
  v274 = vsubq_s32(v266, v265);
  v275 = vsubq_s32(v270, v264);
  v276 = vmlaq_lane_s32(vmulq_lane_s32(v275, v300, 1), v274, v300, 0);
  v277 = vmlaq_lane_s32(vmulq_n_s32(v275, v300.i32[0]), v274, vneg_s32(v300), 1);
  v278 = vaddq_s32(v263, v389);
  v279 = vaddq_s32(v262, v390);
  v280 = vrshlq_s32(v295, v13);
  v281 = vrshlq_s32(v294, v13);
  v282 = vsubq_s32(v278, v281);
  v283 = vsubq_s32(v279, v280);
  v284 = vaddq_s32(v281, v278);
  v285 = vaddq_s32(v280, v279);
  *v1 = vrshlq_s32(v338, v13);
  v1[1] = vrshlq_s32(v195, v13);
  v1[2] = vrshlq_s32(v297, v13);
  v1[3] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v285, v315.i32[0]), v284, vneg_s32(v315), 1), v13);
  v1[4] = vrshlq_s32(v316, v13);
  v1[5] = vrshlq_s32(v242, v13);
  v1[6] = vrshlq_s32(v286, v13);
  v1[7] = vrshlq_s32(v233, v13);
  v1[8] = vrshlq_s32(v335, v13);
  v1[9] = vrshlq_s32(v217, v13);
  v1[10] = vrshlq_s32(v288, v13);
  v1[11] = vrshlq_s32(v261, v13);
  v1[12] = vrshlq_s32(v305, v13);
  v1[13] = vrshlq_s32(v272, v13);
  v1[14] = vrshlq_s32(v296, v13);
  v1[15] = vrshlq_s32(v208, v13);
  v1[16] = vrshlq_s32(v339, v13);
  v1[17] = vrshlq_s32(v205, v13);
  v1[18] = vrshlq_s32(v299, v13);
  v1[19] = vrshlq_s32(v277, v13);
  v1[20] = vrshlq_s32(v314, v13);
  v1[21] = vrshlq_s32(v256, v13);
  v1[22] = vrshlq_s32(v293, v13);
  v1[23] = vrshlq_s32(v221, v13);
  v1[24] = vrshlq_s32(v334, v13);
  v1[25] = vrshlq_s32(v228, v13);
  v1[26] = vrshlq_s32(v292, v13);
  v1[27] = vrshlq_s32(v247, v13);
  v1[28] = vrshlq_s32(v321, v13);
  v1[29] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v282, v289, 1), v283, v289, 0), v13);
  v1[30] = vrshlq_s32(v306, v13);
  v1[31] = vrshlq_s32(v198, v13);
  v1[32] = vrshlq_s32(v340, v13);
  v1[33] = vrshlq_s32(v287, v13);
  v1[34] = vrshlq_s32(v308, v13);
  v1[35] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v282, vneg_s32(v289).i32[0]), v283, v289, 1), v13);
  v1[36] = vrshlq_s32(v324, v13);
  v1[37] = vrshlq_s32(v246, v13);
  v1[38] = vrshlq_s32(v298, v13);
  v1[39] = vrshlq_s32(v229, v13);
  v1[40] = vrshlq_s32(v336, v13);
  v1[41] = vrshlq_s32(v220, v13);
  v1[42] = vrshlq_s32(v301, v13);
  v1[43] = vrshlq_s32(v257, v13);
  v1[44] = vrshlq_s32(v322, v13);
  v1[45] = vrshlq_s32(v276, v13);
  v1[46] = vrshlq_s32(v309, v13);
  v1[47] = vrshlq_s32(v313, v13);
  v1[48] = vrshlq_s32(v341, v13);
  v1[49] = vrshlq_s32(v302, v13);
  v1[50] = vrshlq_s32(v311, v13);
  v1[51] = vrshlq_s32(v273, v13);
  v1[52] = vrshlq_s32(v332, v13);
  v1[53] = vrshlq_s32(v260, v13);
  v1[54] = vrshlq_s32(v307, v13);
  v1[55] = vrshlq_s32(v328, v13);
  v1[56] = vrshlq_s32(v337, v13);
  v1[57] = vrshlq_s32(v232, v13);
  v1[58] = vrshlq_s32(v304, v13);
  v1[59] = vrshlq_s32(v243, v13);
  v1[60] = vrshlq_s32(v333, v13);
  v1[61] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v285, v315, 1), v284, v315, 0), v13);
  v1[62] = vrshlq_s32(v317, v13);
  v1[63] = vrshlq_s32(v319, v13);
  return result;
}

uint64_t sub_2779AFEC8(uint64_t result, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v14 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  v8 = vdupq_n_s32(0x16A1u);
  do
  {
    for (i = 0; i != 512; i += 16)
    {
      *&v13[i] = vshlq_n_s32(*(result + i), 2uLL);
    }

    for (j = 0; j != 512; j += 16)
    {
      *&v13[j] = vrshrq_n_s32(vmulq_s32(*&v13[j], v8), 0xCuLL);
    }

    v11 = 0;
    v12 = a2;
    do
    {
      *v12 = *&v13[v11];
      v11 += 16;
      v12 = (v12 + 4 * a6);
    }

    while (v11 != 512);
    ++v6;
    result += 16 * a5;
    ++a2;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_2779AFFA8(uint64_t a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v9 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = 4 * a6;
  v17 = vdupq_n_s32(0x16A1u);
  do
  {
    result = sub_2779ADEE4(a1 + 16 * v9 * v10, v18, a3);
    for (i = 0; i != 32; ++i)
    {
      v18[i] = vrshrq_n_s32(vmulq_s32(v18[i], v17), 0xCuLL);
    }

    v15 = 0;
    v16 = a2;
    do
    {
      *v16 = v18[v15++];
      v16 = (v16 + v12);
    }

    while (v15 != 32);
    ++v9;
    ++a2;
  }

  while (v9 != v11);
  return result;
}

uint64_t sub_2779B00B0(uint64_t result, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v16 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  do
  {
    v8 = 0;
    v9 = (result + 16 * v6 * a5);
    v10 = vaddq_s32(v9[1], v9[1]);
    v15[0] = vaddq_s32(*v9, *v9);
    v15[1] = v10;
    v11 = vaddq_s32(v9[3], v9[3]);
    v15[2] = vaddq_s32(v9[2], v9[2]);
    v15[3] = v11;
    v12 = vaddq_s32(v9[5], v9[5]);
    v15[4] = vaddq_s32(v9[4], v9[4]);
    v15[5] = v12;
    v13 = vaddq_s32(v9[7], v9[7]);
    v15[6] = vaddq_s32(v9[6], v9[6]);
    v15[7] = v13;
    v14 = a2;
    do
    {
      *v14 = v15[v8++];
      v14 = (v14 + 4 * a6);
    }

    while (v8 != 8);
    ++v6;
    ++a2;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_2779B0188(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v67 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s32(-a3);
  v8 = qword_277BC0E58[33 * a3 - 298];
  v9 = vdupq_lane_s32(v8, 0);
  v10 = vdupq_lane_s32(vneg_s32(v8), 0);
  v11 = qword_277BC0E58[33 * a3 - 314];
  v12 = vdupq_lane_s32(v11, 0);
  v13 = vdupq_lane_s32(v11, 1);
  v14 = vdupq_lane_s32(vneg_s32(v11), 0);
  v15 = qword_277BC0E58[33 * a3 - 326];
  v16 = vdupq_lane_s32(v15, 0);
  v17 = vdupq_lane_s32(v15, 1);
  v18 = vdupq_lane_s32(vneg_s32(v15), 0);
  v19 = qword_277BC0E58[33 * a3 - 310];
  v20 = vdupq_lane_s32(v19, 0);
  v21 = vdupq_lane_s32(v19, 1);
  v22 = vdupq_lane_s32(vneg_s32(v19), 0);
  v23 = qword_277BC0E58[33 * a3 - 302];
  v24 = vdupq_lane_s32(v23, 0);
  v25 = vdupq_lane_s32(v23, 1);
  v26 = vdupq_lane_s32(vneg_s32(v23), 1);
  v27 = qword_277BC0E58[33 * a3 - 318];
  v28 = vdupq_lane_s32(v27, 0);
  v29 = vdupq_lane_s32(v27, 1);
  v30 = vdupq_lane_s32(vneg_s32(v27), 0);
  if (a4 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = a4;
  }

  do
  {
    v32 = 0;
    v33 = (result + 16 * v6 * a5);
    v34 = v33[1];
    v36 = v33[6];
    v35 = v33[7];
    v38 = v33[2];
    v37 = v33[3];
    v39 = v33[4];
    v40 = v33[5];
    v41 = vrshlq_s32(vmlaq_s32(vmulq_s32(v10, v37), v9, v39), v7);
    v42 = vrshlq_s32(vmulq_s32(v10, vaddq_s32(v39, v37)), v7);
    v43 = vrshlq_s32(vmulq_s32(v9, vaddq_s32(v40, v38)), v7);
    v44 = vrshlq_s32(vmlaq_s32(vmulq_s32(v10, v40), v9, v38), v7);
    v45 = vaddq_s32(v41, *v33);
    v46 = vsubq_s32(v42, v35);
    v47 = vsubq_s32(*v33, v41);
    v48 = vaddq_s32(v42, v35);
    v49 = vsubq_s32(v44, v34);
    v50 = vaddq_s32(v43, v36);
    v51 = vaddq_s32(v44, v34);
    v52 = vsubq_s32(v36, v43);
    v53 = vrshlq_s32(vmlaq_s32(vmulq_s32(v13, v50), v12, v49), v7);
    v54 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v50), v13, v49), v7);
    v55 = vrshlq_s32(vmlaq_s32(vmulq_s32(v13, v51), v12, v52), v7);
    v56 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v51), v13, v52), v7);
    v57 = vaddq_s32(v53, v45);
    v58 = vaddq_s32(v54, v46);
    v59 = vaddq_s32(v55, v47);
    v60 = vsubq_s32(v56, v48);
    v61 = vsubq_s32(v45, v53);
    v62 = vsubq_s32(v46, v54);
    v63 = vsubq_s32(v47, v55);
    v64 = vaddq_s32(v56, v48);
    v66[0] = vrshlq_s32(vmlaq_s32(vmulq_s32(v18, v58), v17, v57), v7);
    v66[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v30, v64), v29, v63), v7);
    v66[2] = vrshlq_s32(vmlaq_s32(vmulq_s32(v22, v60), v21, v59), v7);
    v66[3] = vrshlq_s32(vmlaq_s32(vmulq_s32(v25, v61), v24, v62), v7);
    v66[4] = vrshlq_s32(vmlaq_s32(vmulq_s32(v24, v61), v26, v62), v7);
    v66[5] = vrshlq_s32(vmlaq_s32(vmulq_s32(v21, v60), v20, v59), v7);
    v66[6] = vrshlq_s32(vmlaq_s32(vmulq_s32(v29, v64), v28, v63), v7);
    v66[7] = vrshlq_s32(vmlaq_s32(vmulq_s32(v17, v58), v16, v57), v7);
    v65 = a2;
    do
    {
      *v65 = v66[v32++];
      v65 = (v65 + 4 * a6);
    }

    while (v32 != 8);
    ++v6;
    ++a2;
  }

  while (v6 != v31);
  return result;
}

uint64_t sub_2779B03E8(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v54 = *MEMORY[0x277D85DE8];
  v7 = vdupq_n_s32(-a3);
  v8 = qword_277BC0E58[33 * a3 - 298];
  v9 = vdupq_lane_s32(v8, 0);
  v10 = vdupq_lane_s32(v8, 1);
  v11 = vdupq_lane_s32(vneg_s32(v8), 1);
  v12 = qword_277BC0E58[33 * a3 - 314];
  v13 = vdupq_lane_s32(v12, 0);
  v14 = vdupq_lane_s32(v12, 1);
  v15 = vdupq_lane_s32(vneg_s32(v12), 0);
  v16 = qword_277BC0E58[33 * a3 - 322];
  v17 = vdupq_lane_s32(v16, 0);
  v18 = vdupq_lane_s32(v16, 1);
  v19 = vdupq_lane_s32(vneg_s32(v16), 0);
  v20 = qword_277BC0E58[33 * a3 - 306];
  v21 = vdupq_lane_s32(v20, 0);
  v22 = vdupq_lane_s32(v20, 1);
  v23 = vneg_s32(v20);
  if (a4 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = a4;
  }

  v25 = vdupq_lane_s32(v23, 1);
  do
  {
    v26 = 0;
    for (i = 112; i != 48; i -= 16)
    {
      *(&v46 + v26) = vaddq_s32(*(result + i), *(result + v26));
      v26 += 16;
    }

    v28 = 64;
    do
    {
      *(&v46 + v28) = vsubq_s32(*(result + i), *(result + v28));
      i -= 16;
      v28 += 16;
    }

    while (i != -16);
    v29 = 0;
    v30 = vaddq_s32(v49, v46);
    v31 = vaddq_s32(v48, v47);
    v32 = vsubq_s32(v47, v48);
    v33 = vsubq_s32(v46, v49);
    v34 = vrshlq_s32(vmlaq_s32(vmulq_s32(v10, v52), v9, v51), v7);
    v35 = vrshlq_s32(vmlaq_s32(vmulq_s32(v9, v52), v11, v51), v7);
    v36 = vrshlq_s32(vmlaq_s32(vmulq_s32(v31, v9), v30, v10), v7);
    v37 = vrshlq_s32(vmlaq_s32(vmulq_s32(v31, v11), v30, v9), v7);
    v38 = vrshlq_s32(vmlaq_s32(vmulq_s32(v14, v32), v13, v33), v7);
    v39 = vrshlq_s32(vmlaq_s32(vmulq_s32(v15, v32), v14, v33), v7);
    v40 = vaddq_s32(v35, v50);
    v41 = vsubq_s32(v50, v35);
    v42 = vsubq_s32(v53, v34);
    v43 = vaddq_s32(v34, v53);
    v45[0] = v36;
    v45[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v18, v40), v17, v43), v7);
    v45[2] = v38;
    v45[3] = vrshlq_s32(vmlaq_s32(vmulq_s32(v21, v42), v25, v41), v7);
    v45[4] = v37;
    v45[5] = vrshlq_s32(vmlaq_s32(vmulq_s32(v22, v42), v21, v41), v7);
    v45[6] = v39;
    v45[7] = vrshlq_s32(vmlaq_s32(vmulq_s32(v19, v40), v18, v43), v7);
    v44 = a2;
    do
    {
      *v44 = v45[v29++];
      v44 = (v44 + 4 * a6);
    }

    while (v29 != 8);
    ++v6;
    result += 16 * a5;
    ++a2;
  }

  while (v6 != v24);
  return result;
}

uint64_t sub_2779B05F8(uint64_t result, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v12 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  do
  {
    for (i = 0; i != 512; i += 16)
    {
      *&v11[i] = vshlq_n_s32(*(result + i), 2uLL);
    }

    v9 = 0;
    v10 = a2;
    do
    {
      *v10 = *&v11[v9];
      v9 += 16;
      v10 = (v10 + 4 * a6);
    }

    while (v9 != 512);
    ++v6;
    result += 16 * a5;
    ++a2;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_2779B06B0(uint64_t a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v9 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v10 = a5;
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = 4 * a6;
  do
  {
    result = sub_2779ADEE4(a1 + 16 * v9 * v10, v16, a3);
    v14 = 0;
    v15 = a2;
    do
    {
      *v15 = v16[v14++];
      v15 = (v15 + v12);
    }

    while (v14 != 32);
    ++v9;
    ++a2;
  }

  while (v9 != v11);
  return result;
}

uint64_t sub_2779B0788(uint64_t result, _OWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v14 = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4;
  }

  v8 = vdupq_n_s32(0x16A1u);
  do
  {
    for (i = 0; i != 64; i += 16)
    {
      *&v13[i] = vrshrq_n_s32(vmulq_s32(*(result + i), v8), 0xCuLL);
    }

    for (j = 0; j != 64; j += 16)
    {
      *&v13[j] = vrshrq_n_s32(vmulq_s32(*&v13[j], v8), 0xCuLL);
    }

    v11 = 0;
    v12 = a2;
    do
    {
      *v12 = *&v13[v11];
      v11 += 16;
      v12 = (v12 + 4 * a6);
    }

    while (v11 != 64);
    ++v6;
    result += 16 * a5;
    ++a2;
  }

  while (v6 != v7);
  return result;
}

uint64_t sub_2779B0864(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v7 = *(&unk_277C42640 + 20 * a3 - 196);
  v8 = vdupq_lane_s32(*v7.i8, 0);
  v9 = vdupq_laneq_s32(v7, 3);
  v10 = vdupq_laneq_s32(v7, 2);
  v11 = vdupq_lane_s32(*v7.i8, 1);
  v12 = vdupq_n_s32(-a3);
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  v14 = vdupq_n_s32(0x16A1u);
  do
  {
    v15 = 0;
    v16 = (result + 16 * v6 * a5);
    v17 = v16[1];
    v18 = v16[3];
    v19 = vaddq_s32(v17, *v16);
    v20 = vmulq_s32(v16[2], v10);
    v21 = vmlaq_s32(vmlaq_s32(vmulq_s32(*v16, v8), v17, v11), v18, v9);
    v22 = vmlaq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v17, v8)), *v16, v9), v18, v11);
    v25[0] = vrshlq_s32(vaddq_s32(v21, v20), v12);
    v25[1] = vrshlq_s32(vmulq_s32(vsubq_s32(v19, v18), v10), v12);
    v25[2] = vrshlq_s32(vsubq_s32(v22, v20), v12);
    v25[3] = vrshlq_s32(vaddq_s32(vsubq_s32(v20, v21), v22), v12);
    do
    {
      v25[v15] = vrshrq_n_s32(vmulq_s32(v25[v15], v14), 0xCuLL);
      ++v15;
    }

    while (v15 != 4);
    v23 = 0;
    v24 = a2;
    do
    {
      *v24 = v25[v23++];
      v24 = (v24 + 4 * a6);
    }

    while (v23 != 4);
    ++v6;
    ++a2;
  }

  while (v6 != v13);
  return result;
}

uint64_t sub_2779B09AC(uint64_t result, _OWORD *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v29 = *MEMORY[0x277D85DE8];
  v7 = &qword_277BC0E58[33 * a3 - 298];
  v8 = vld1q_dup_f32(v7);
  v9 = qword_277BC0E58[33 * a3 - 314];
  v10 = vdupq_lane_s32(v9, 1);
  v11 = vdupq_lane_s32(v9, 0);
  v12 = vdupq_n_s32(-a3);
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  v14 = vdupq_n_s32(0x16A1u);
  do
  {
    v15 = 0;
    v16 = (result + 16 * v6 * a5);
    v17 = v16[1];
    v19 = v16[2];
    v18 = v16[3];
    v20 = vaddq_s32(v18, *v16);
    v21 = vsubq_s32(*v16, v18);
    v22 = vaddq_s32(v19, v17);
    v23 = vsubq_s32(v17, v19);
    v24 = vmulq_s32(v20, v8);
    v25 = vmulq_s32(v22, v8);
    v28[0] = vrshlq_s32(vaddq_s32(v25, v24), v12);
    v28[1] = vrshlq_s32(vmlaq_s32(vmulq_s32(v21, v11), v23, v10), v12);
    v28[2] = vrshlq_s32(vsubq_s32(v24, v25), v12);
    v28[3] = vrshlq_s32(vmlaq_s32(vnegq_s32(vmulq_s32(v23, v11)), v21, v10), v12);
    do
    {
      v28[v15] = vrshrq_n_s32(vmulq_s32(v28[v15], v14), 0xCuLL);
      ++v15;
    }

    while (v15 != 4);
    v26 = 0;
    v27 = a2;
    do
    {
      *v27 = v28[v26++];
      v27 = (v27 + 4 * a6);
    }

    while (v26 != 4);
    ++v6;
    ++a2;
  }

  while (v6 != v13);
  return result;
}

int32x4_t sub_2779B0AF0(int16x4_t *a1, int32x4_t *a2, int a3, uint64_t a4, int a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 2 * a3;
  if (a5)
  {
    do
    {
      *(&v12 + v5) = vshll_n_s16(vrev64_s16(*a1), 2uLL);
      v5 += 16;
      a1 = (a1 + v6);
    }

    while (v5 != 128);
  }

  else
  {
    do
    {
      *(&v12 + v5) = vshll_n_s16(*a1, 2uLL);
      v5 += 16;
      a1 = (a1 + v6);
    }

    while (v5 != 128);
  }

  v7 = vaddq_s32(v13, v13);
  *a2 = vaddq_s32(v12, v12);
  a2[1] = v7;
  v8 = vaddq_s32(v15, v15);
  a2[2] = vaddq_s32(v14, v14);
  a2[3] = v8;
  v9 = vaddq_s32(v17, v17);
  a2[4] = vaddq_s32(v16, v16);
  a2[5] = v9;
  result = vaddq_s32(v18, v18);
  v11 = vaddq_s32(v19, v19);
  a2[6] = result;
  a2[7] = v11;
  return result;
}

int32x4_t sub_2779B0BCC(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 2 * a3;
  if (a5)
  {
    do
    {
      *(&v42 + v5) = vshll_n_s16(vrev64_s16(*a1), 2uLL);
      v5 += 16;
      a1 = (a1 + v6);
    }

    while (v5 != 128);
  }

  else
  {
    do
    {
      *(&v42 + v5) = vshll_n_s16(*a1, 2uLL);
      v5 += 16;
      a1 = (a1 + v6);
    }

    while (v5 != 128);
  }

  v7 = vdupq_n_s32(-a4);
  v8 = qword_277BC0E58[33 * a4 - 298];
  v9 = vneg_s32(v8).u32[0];
  v10 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v45, v9), v46, v8, 0), v7);
  v11 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v46, v45), v9), v7);
  v12 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v47, v44), v8.i32[0]), v7);
  v13 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v47, v9), v44, v8, 0), v7);
  v14 = vaddq_s32(v10, v42);
  v15 = vsubq_s32(v11, v49);
  v16 = vsubq_s32(v42, v10);
  v17 = vaddq_s32(v11, v49);
  v18 = vsubq_s32(v13, v43);
  v19 = vaddq_s32(v12, v48);
  v20 = vaddq_s32(v13, v43);
  v21 = vsubq_s32(v48, v12);
  *v13.i8 = qword_277BC0E58[33 * a4 - 314];
  v22 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v19, *v13.i8, 1), v18, *v13.i8, 0), v7);
  v10.i32[0] = vneg_s32(*v13.i8).u32[0];
  v23 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v19, v10.i32[0]), v18, *v13.i8, 1), v7);
  v24 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v20, *v13.i8, 1), v21, *v13.i8, 0), v7);
  v25 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v20, v10.i32[0]), v21, *v13.i8, 1), v7);
  v26 = vaddq_s32(v22, v14);
  v27 = vaddq_s32(v23, v15);
  v28 = vaddq_s32(v24, v16);
  v29 = vsubq_s32(v25, v17);
  v30 = vsubq_s32(v14, v22);
  v31 = vsubq_s32(v15, v23);
  v32 = vsubq_s32(v16, v24);
  v33 = vaddq_s32(v25, v17);
  *v17.i8 = qword_277BC0E58[33 * a4 - 326];
  v34 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v27, *v17.i8, 1), v26, *v17.i8, 0), v7);
  v35 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v27, vneg_s32(*v17.i8).i32[0]), v26, *v17.i8, 1), v7);
  *v26.i8 = qword_277BC0E58[33 * a4 - 310];
  v36 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v29, *v26.i8, 1), v28, *v26.i8, 0), v7);
  v37 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v29, vneg_s32(*v26.i8).i32[0]), v28, *v26.i8, 1), v7);
  *v15.i8 = qword_277BC0E58[33 * a4 - 302];
  v38 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v30, *v15.i8, 1), v31, *v15.i8, 0), v7);
  v39 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v30, v15.i32[0]), v31, vneg_s32(*v15.i8), 1), v7);
  *v30.i8 = qword_277BC0E58[33 * a4 - 318];
  v40 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v33, *v30.i8, 1), v32, *v30.i8, 0), v7);
  result = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v33, vneg_s32(*v30.i8).i32[0]), v32, *v30.i8, 1), v7);
  *a2 = v35;
  a2[1] = result;
  a2[2] = v37;
  a2[3] = v38;
  a2[4] = v39;
  a2[5] = v36;
  a2[6] = v40;
  a2[7] = v34;
  return result;
}

int32x4_t sub_2779B0DD4(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 2 * a3;
  if (a5)
  {
    do
    {
      *&v32[v5] = vshll_n_s16(vrev64_s16(*a1), 2uLL);
      v5 += 16;
      a1 = (a1 + v6);
    }

    while (v5 != 128);
  }

  else
  {
    do
    {
      *&v32[v5] = vshll_n_s16(*a1, 2uLL);
      v5 += 16;
      a1 = (a1 + v6);
    }

    while (v5 != 128);
  }

  v7 = 0;
  for (i = 112; i != 48; i -= 16)
  {
    *(&v33 + v7) = vaddq_s32(*&v32[i], *&v32[v7]);
    v7 += 16;
  }

  v9 = 48;
  v10 = 64;
  do
  {
    *(&v33 + v10) = vsubq_s32(*&v32[v9], *&v32[v10]);
    v9 -= 16;
    v10 += 16;
  }

  while (v9 != -16);
  v11 = vaddq_s32(v36, v33);
  v12 = vaddq_s32(v35, v34);
  v13 = vsubq_s32(v34, v35);
  v14 = vsubq_s32(v33, v36);
  v15 = vdupq_n_s32(-a4);
  v16 = qword_277BC0E58[33 * a4 - 298];
  v17 = vneg_s32(v16);
  v18 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v39, v16, 1), v38, v16, 0), v15);
  v19 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v39, v16.i32[0]), v38, v17, 1), v15);
  v20 = vmulq_lane_s32(v12, v17, 1);
  v21 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v12, v16.i32[0]), v11, v16, 1), v15);
  v22 = vrshlq_s32(vmlaq_lane_s32(v20, v11, v16, 0), v15);
  *v11.i8 = qword_277BC0E58[33 * a4 - 314];
  v23 = vmulq_n_s32(v13, vneg_s32(*v11.i8).i32[0]);
  v24 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v13, *v11.i8, 1), v14, *v11.i8, 0), v15);
  v25 = vrshlq_s32(vmlaq_lane_s32(v23, v14, *v11.i8, 1), v15);
  v26 = vaddq_s32(v19, v37);
  v27 = vsubq_s32(v37, v19);
  v28 = vsubq_s32(v40, v18);
  v29 = vaddq_s32(v18, v40);
  *v18.i8 = qword_277BC0E58[33 * a4 - 322];
  a2[1] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v26, *v18.i8, 1), v29, *v18.i8, 0), v15);
  a2[7] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v26, vneg_s32(*v18.i8).i32[0]), v29, *v18.i8, 1), v15);
  *v26.i8 = qword_277BC0E58[33 * a4 - 306];
  v30 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v28, *v26.i8, 1), v27, *v26.i8, 0), v15);
  result = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v28, v26.i32[0]), v27, vneg_s32(*v26.i8), 1), v15);
  *a2 = v21;
  a2[2] = v24;
  a2[3] = result;
  a2[4] = v22;
  a2[5] = v30;
  a2[6] = v25;
  return result;
}

__n128 sub_2779B0FD4(int32x4_t *a1, __n128 *a2, uint64_t a3, int a4)
{
  v4 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v5 = vaddq_s32(a1[1], a1[1]);
  v12[0] = vaddq_s32(*a1, *a1);
  v12[1] = v5;
  v6 = vaddq_s32(a1[3], a1[3]);
  v12[2] = vaddq_s32(a1[2], a1[2]);
  v12[3] = v6;
  v7 = vaddq_s32(a1[5], a1[5]);
  v12[4] = vaddq_s32(a1[4], a1[4]);
  v12[5] = v7;
  v8 = vaddq_s32(a1[7], a1[7]);
  v12[6] = vaddq_s32(a1[6], a1[6]);
  v12[7] = v8;
  v9 = vdupq_n_s32(0x16A1u);
  do
  {
    v12[v4] = vrshrq_n_s32(vmulq_s32(v12[v4], v9), 0xCuLL);
    ++v4;
  }

  while (v4 != 8);
  for (i = 0; i != 8; ++i)
  {
    result = v12[i];
    *a2 = result;
    a2 = (a2 + 4 * a4);
  }

  return result;
}

__n128 sub_2779B10AC(int32x4_t *a1, __n128 *a2, int a3, int a4)
{
  v4 = 0;
  v46 = *MEMORY[0x277D85DE8];
  v5 = vdupq_n_s32(-a3);
  v6 = a1[1];
  v8 = a1[6];
  v7 = a1[7];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = qword_277BC0E58[33 * a3 - 298];
  v14 = vneg_s32(v13).u32[0];
  v15 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v9, v14), v11, v13, 0), v5);
  v16 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v11, v9), v14), v5);
  v17 = vrshlq_s32(vmulq_n_s32(vaddq_s32(v12, v10), v13.i32[0]), v5);
  v18 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v12, v14), v10, v13, 0), v5);
  v19 = vaddq_s32(v15, *a1);
  v20 = vsubq_s32(v16, v7);
  v21 = vsubq_s32(*a1, v15);
  v22 = vaddq_s32(v16, v7);
  v23 = vsubq_s32(v18, v6);
  v24 = vaddq_s32(v17, v8);
  v25 = vaddq_s32(v18, v6);
  v26 = vsubq_s32(v8, v17);
  *v18.i8 = qword_277BC0E58[33 * a3 - 314];
  v27 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v24, *v18.i8, 1), v23, *v18.i8, 0), v5);
  v15.i32[0] = vneg_s32(*v18.i8).u32[0];
  v28 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v24, v15.i32[0]), v23, *v18.i8, 1), v5);
  v29 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v25, *v18.i8, 1), v26, *v18.i8, 0), v5);
  v30 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v25, v15.i32[0]), v26, *v18.i8, 1), v5);
  v31 = vaddq_s32(v27, v19);
  v32 = vaddq_s32(v28, v20);
  v33 = vaddq_s32(v29, v21);
  v34 = vsubq_s32(v30, v22);
  v35 = vsubq_s32(v19, v27);
  v36 = vsubq_s32(v20, v28);
  v37 = vsubq_s32(v21, v29);
  v38 = vaddq_s32(v30, v22);
  *v22.i8 = qword_277BC0E58[33 * a3 - 326];
  v39 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v32, *v22.i8, 1), v31, *v22.i8, 0), v5);
  v40 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v32, vneg_s32(*v22.i8).i32[0]), v31, *v22.i8, 1), v5);
  *v31.i8 = qword_277BC0E58[33 * a3 - 310];
  *v20.i8 = qword_277BC0E58[33 * a3 - 302];
  v41 = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v35, *v20.i8, 1), v36, *v20.i8, 0), v5);
  v42 = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v35, v20.i32[0]), v36, vneg_s32(*v20.i8), 1), v5);
  *v35.i8 = qword_277BC0E58[33 * a3 - 318];
  v45[0] = v40;
  v45[1] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v38, vneg_s32(*v35.i8).i32[0]), v37, *v35.i8, 1), v5);
  v45[2] = vrshlq_s32(vmlaq_lane_s32(vmulq_n_s32(v34, vneg_s32(*v31.i8).i32[0]), v33, *v31.i8, 1), v5);
  v45[3] = v41;
  v45[4] = v42;
  v45[5] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v34, *v31.i8, 1), v33, *v31.i8, 0), v5);
  v45[6] = vrshlq_s32(vmlaq_lane_s32(vmulq_lane_s32(v38, *v35.i8, 1), v37, *v35.i8, 0), v5);
  v45[7] = v39;
  do
  {
    v45[v4] = vrshrq_n_s32(vmulq_s32(v45[v4], vdupq_n_s32(0x16A1u)), 0xCuLL);
    ++v4;
  }

  while (v4 != 8);
  for (i = 0; i != 8; ++i)
  {
    result = v45[i];
    *a2 = result;
    a2 = (a2 + 4 * a4);
  }

  return result;
}