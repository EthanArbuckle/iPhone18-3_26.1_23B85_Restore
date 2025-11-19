unint64_t sub_27741F528(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, int16x4_t *a7)
{
  v152 = (a3 >> 16) & 3;
  if (result < 8)
  {
    v16 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = xmmword_27750DCF0[((a3 >> 16) & 3) - 1];
  v9 = 4 * a6;
  v10 = a2 + 2;
  v11 = &a5->i8[20 * a4];
  v12 = 4 * a4;
  v13.i64[0] = 0xE000E000E000E000;
  v13.i64[1] = 0xE000E000E000E000;
  v14 = &a5->i8[18 * a4];
  v15 = &a5->i8[10 * a4];
  v16 = a7;
  v17 = &a5->i8[8 * a4];
  do
  {
    _X22 = &a5->i8[-6 * a4];
    v19 = *_X22;
    _X22 += 30;
    v20 = v19;
    _X24 = &a5->i8[-4 * a4];
    v22 = *_X24;
    _X24 += 30;
    v23 = vshrq_n_u16(v20, 4uLL);
    v24 = vshrq_n_u16(v22, 4uLL);
    _X25 = &a5->i8[-2 * a4];
    v26 = *_X25;
    _X25 += 30;
    v27 = v26;
    _X26 = &a5[1].i8[14];
    _X27 = &a5->i8[2 * a4];
    v30 = *_X27;
    _X27 += 30;
    v31 = v30;
    _X28 = &a5->i8[4 * a4];
    v33 = *_X28;
    _X28 += 30;
    v34 = v33;
    _X30 = &a5->i8[6 * a4];
    v36 = *_X30;
    _X30 += 30;
    __asm { PRFM            #0, [X22] }

    v42 = vshrq_n_u16(v27, 4uLL);
    v43 = vshrq_n_u16(*a5, 4uLL);
    v44 = vshrq_n_u16(v31, 4uLL);
    v45 = vshrq_n_u16(v34, 4uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v48 = vshrq_n_u16(v36, 4uLL);
    __asm
    {
      PRFM            #0, [X26]
      PRFM            #0, [X27]
    }

    v51 = v15;
    v52 = v14;
    v53 = v17;
    __asm
    {
      PRFM            #0, [X28]
      PRFM            #0, [X30]
    }

    v56 = v11;
    v57 = v10;
    v58 = a7;
    v59 = a7 + 2 * a6;
    do
    {
      v60 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v8.i8, 1), *v24.i8, *v8.i8, 0);
      v61 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v8.i8, 1), v24, *v8.i8, 0);
      v62 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v8.i8, 1), *v23.i8, *v8.i8, 0), *v42.i8, *v8.i8, 2);
      v63 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v8.i8, 1), v23, *v8.i8, 0), v42, *v8.i8, 2);
      v23 = v42;
      v42 = v44;
      _X10 = &v53[v7 + 30];
      __asm { PRFM            #0, [X10] }

      v44 = v48;
      _X10 = &v51[v7 + 30];
      __asm { PRFM            #0, [X10] }

      _X10 = &v52[v7];
      v48 = vshrq_n_u16(*&v51[v7], 4uLL);
      v69 = vmlal_lane_s16(v62, *v43.i8, *v8.i8, 3);
      v70 = vmlal_high_lane_s16(v63, v43, *v8.i8, 3);
      v71 = vmlal_lane_s16(v60, *v43.i8, *v8.i8, 2);
      v72 = vmlal_high_lane_s16(v61, v43, *v8.i8, 2);
      v24 = v43;
      v43 = v45;
      __asm { PRFM            #0, [X10] }

      _X1 = &v56[v7];
      __asm
      {
        PRFM            #0, [X1]
        PRFUM           #0, [X10,#0xE]
        PRFUM           #0, [X1,#0xE]
      }

      v45 = vshrq_n_u16(*&v53[v7], 4uLL);
      *v58[v7 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v69, *v42.i8, v8, 4), *v43.i8, v8, 5), *v44.i8, v8, 6), *v45.i8, v8, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v70, v42, v8, 4), v43, v8, 5), v44, v8, 6), v45, v8, 7), 4uLL), v13);
      *&v59[v7] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v71, *v42.i8, *v8.i8, 3), *v43.i8, v8, 4), *v44.i8, v8, 5), *v45.i8, v8, 6), *v48.i8, v8, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v72, v42, *v8.i8, 3), v43, v8, 4), v44, v8, 5), v45, v8, 6), v48, v8, 7), 4uLL), v13);
      v58 = (v58 + v9);
      v59 += v9;
      v57 -= 2;
      v56 += v12;
      v53 += v12;
      v52 += v12;
      v51 += v12;
    }

    while (v57 > 2);
    v16 += 2;
    ++a5;
    v78 = result - 8;
    v7 += 16;
    v79 = result > 0xF;
    result = (result - 8);
  }

  while (v79);
  if (v78)
  {
LABEL_9:
    v80 = xmmword_27750DCF0[v152 - 1];
    _X10 = (a5->i64 - 6 * a4);
    v82 = *_X10;
    _X10 = (_X10 + 14);
    v83 = vshr_n_u16(v82, 4uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 4uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 4uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 4uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 4uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 4uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 4uLL);
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X11]
      PRFM            #0, [X12]
      PRFM            #0, [X13]
      PRFM            #0, [X14]
      PRFM            #0, [X15]
      PRFM            #0, [X16]
    }

    v108 = 8 * a4;
    v109 = 10 * a4;
    v110 = a2 + 4;
    v111 = 3 * a4;
    v112 = 22 * a4;
    v113 = 12 * a4;
    v114 = 2 * a6;
    v115 = 14 * a4;
    do
    {
      _X2 = (a5->i64 + v109);
      _X3 = (a5->i64 + v113);
      _X5 = (a5->i64 + v115);
      _X17 = &a5->i8[v112];
      result = &a5->u64[v111];
      a5 = (a5 + v108);
      _X1 = &a5->i8[14];
      __asm { PRFM            #0, [X1] }

      v122 = *_X2;
      _X2 = (_X2 + 14);
      v123 = v122;
      __asm { PRFM            #0, [X2] }

      v125 = *_X3;
      _X3 = (_X3 + 14);
      v126 = v125;
      __asm { PRFM            #0, [X3] }

      v128 = *_X5;
      _X5 = (_X5 + 14);
      __asm { PRFM            #0, [X5] }

      v130 = vmlal_lane_s16(vmull_lane_s16(v91, *v80.i8, 1), v89, *v80.i8, 0);
      v131 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v86, *v80.i8, 1), v83, *v80.i8, 0), v89, *v80.i8, 2), v91, *v80.i8, 3);
      v132 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v89, *v80.i8, 1), v86, *v80.i8, 0), v91, *v80.i8, 2);
      v133 = vmlal_lane_s16(vmull_lane_s16(v94, *v80.i8, 1), v91, *v80.i8, 0);
      v91 = vshr_n_u16(*a5->i8, 4uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 4uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 4uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 4uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(v141, v91, v80, 7), 4uLL), 0xE000E000E000E000);
      v149 = (v16 + v114);
      *v149 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7), 4uLL), 0xE000E000E000E000);
      v150 = (v149 + v114);
      *v150 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7), 4uLL), 0xE000E000E000E000);
      v151 = (v150 + v114);
      *v151 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7), 4uLL), 0xE000E000E000E000);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_27741F990(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
{
  v7 = a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = xmmword_27750DCF0[(a3 & 3) - 1];
  v11 = (a5 - 6);
  v12.i64[0] = 0xE000E000E000E000;
  v12.i64[1] = 0xE000E000E000E000;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 4uLL);
      v17 = vshrq_n_u16(_X15[1], 4uLL);
      __asm { PRFUM           #0, [X15,#0x2E] }

      _X17 = &_X15->i8[v7 * 8];
      v24 = vextq_s8(v16, v17, 2uLL);
      v25 = vextq_s8(v16, v17, 4uLL);
      v26 = vextq_s8(v16, v17, 6uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xAuLL);
      v29 = vextq_s8(v16, v17, 0xCuLL);
      v30 = vextq_s8(v16, v17, 0xEuLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      *v13 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v25.i8, *v10.i8, 2), *v26.i8, *v10.i8, 3), *v27.i8, v10, 4), *v28.i8, v10, 5), *v29.i8, v10, 6), *v30.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v10.i8, 1), v16, *v10.i8, 0), v25, *v10.i8, 2), v26, *v10.i8, 3), v27, v10, 4), v28, v10, 5), v29, v10, 6), v30, v10, 7), 4uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    a5 += 16;
    v33 = result - 8;
    ++v11;
    v34 = result > 0xF;
    result = (result - 8);
  }

  while (v34);
  if (v33)
  {
LABEL_9:
    v35 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6);
    v37 = a2 + 1;
    do
    {
      v38 = vshr_n_u16(*_X11, 4uLL);
      v39 = vshr_n_u16(_X11[1], 4uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v41 = vshr_n_u16(_X11[2], 4uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v38, v39, 2uLL), *v35.i8, 1), v38, *v35.i8, 0), vext_s8(v38, v39, 4uLL), *v35.i8, 2), vext_s8(v38, v39, 6uLL), *v35.i8, 3), v39, v35, 4), vext_s8(v39, v41, 2uLL), v35, 5), vext_s8(v39, v41, 4uLL), v35, 6), vext_s8(v39, v41, 6uLL), v35, 7), 4uLL), 0xE000E000E000E000);
      --v37;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v37 > 1);
  }

  return result;
}

uint64_t sub_27741FB30(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, int16x4_t *a7)
{
  v7 = 4 * a4;
  v8 = 4 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = a7 + 2 * a6;
  v10.i64[0] = 0xE000E000E000E000;
  v10.i64[1] = 0xE000E000E000E000;
  v11 = a5 + 2 * a4;
  do
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 + 2;
    do
    {
      v15 = *&v11[v12];
      *&a7->i8[v13] = vaddq_s16((*&vshrq_n_u16(*&a5->i8[v12], 2uLL) & __PAIR128__(0xFFFCFFFCFFFCFFFCLL, 0xFFFCFFFCFFFCFFFCLL)), v10);
      *&v9[v13] = vaddq_s16((*&vshrq_n_u16(v15, 2uLL) & __PAIR128__(0xFFFCFFFCFFFCFFFCLL, 0xFFFCFFFCFFFCFFFCLL)), v10);
      v13 += v8;
      v12 += v7;
      v14 -= 2;
    }

    while (v14 > 2);
    a7 += 2;
    a5 += 2;
    v16 = result - 8;
    v9 += 16;
    v11 += 16;
    v17 = result <= 15;
    result = (result - 8);
  }

  while (!v17);
  if (v16)
  {
LABEL_10:
    v18 = a2 + 2;
    do
    {
      v19 = *a5;
      v20 = *(a5 + 2 * a4);
      a5 = (a5 + v7);
      *a7 = vadd_s16((*&vshr_n_u16(v19, 2uLL) & 0xFFFCFFFCFFFCFFFCLL), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16((*&vshr_n_u16(v20, 2uLL) & 0xFFFCFFFCFFFCFFFCLL), 0xE000E000E000E000);
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return result;
}

uint64_t sub_27741FC18(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 3;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = xmmword_27750DCF0[(a3 & 3) - 1];
  v11 = xmmword_27750DCF0[v7 - 1];
  v12 = a5 + 16 * a4 - 6;
  v13 = a5 + 8 * a4 + 40;
  do
  {
    _X17 = (a5 - 6 * a4 - 6);
    v15 = vshrq_n_u16(*_X17, 4uLL);
    v16 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 4uLL);
    v17 = vextq_s8(v15, v16, 2uLL);
    v18 = vextq_s8(v15, v16, 4uLL);
    v19 = vextq_s8(v15, v16, 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    v25 = vextq_s8(v15, v16, 8uLL);
    _X5 = &_X17->i8[8 * a4];
    v27 = vextq_s8(v15, v16, 0xAuLL);
    __asm { PRFM            #0, [X5] }

    v29 = vextq_s8(v15, v16, 0xCuLL);
    __asm { PRFUM           #0, [X5,#0x1E] }

    v31 = vextq_s8(v15, v16, 0xEuLL);
    _X17 = (_X17 + 2 * a4);
    v33 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v17.i8, *v10.i8, 1), *v15.i8, *v10.i8, 0), *v18.i8, *v10.i8, 2), *v19.i8, *v10.i8, 3), *v25.i8, v10, 4), *v27.i8, v10, 5), *v29.i8, v10, 6), *v31.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v17, *v10.i8, 1), v15, *v10.i8, 0), v18, *v10.i8, 2), v19, *v10.i8, 3), v25, v10, 4), v27, v10, 5), v29, v10, 6), v31, v10, 7), 4uLL);
    v34 = vshrq_n_u16(*_X17, 4uLL);
    v35 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v41 = vextq_s8(v34, v35, 2uLL);
    v42 = vextq_s8(v34, v35, 4uLL);
    v43 = vextq_s8(v34, v35, 6uLL);
    v44 = vextq_s8(v34, v35, 8uLL);
    v45 = vextq_s8(v34, v35, 0xAuLL);
    v46 = vextq_s8(v34, v35, 0xCuLL);
    v47 = vextq_s8(v34, v35, 0xEuLL);
    v48 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v41.i8, *v10.i8, 1), *v34.i8, *v10.i8, 0), *v42.i8, *v10.i8, 2), *v43.i8, *v10.i8, 3), *v44.i8, v10, 4), *v45.i8, v10, 5), *v46.i8, v10, 6), *v47.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v41, *v10.i8, 1), v34, *v10.i8, 0), v42, *v10.i8, 2), v43, *v10.i8, 3), v44, v10, 4), v45, v10, 5), v46, v10, 6), v47, v10, 7), 4uLL);
    v49 = vshrq_n_u16(*_X17, 4uLL);
    v50 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v56 = vextq_s8(v49, v50, 2uLL);
    v57 = vextq_s8(v49, v50, 4uLL);
    v58 = vextq_s8(v49, v50, 6uLL);
    v59 = vextq_s8(v49, v50, 8uLL);
    v60 = vextq_s8(v49, v50, 0xAuLL);
    v61 = vextq_s8(v49, v50, 0xCuLL);
    v62 = vextq_s8(v49, v50, 0xEuLL);
    v63 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v10.i8, 1), *v49.i8, *v10.i8, 0), *v57.i8, *v10.i8, 2), *v58.i8, *v10.i8, 3), *v59.i8, v10, 4), *v60.i8, v10, 5), *v61.i8, v10, 6), *v62.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v10.i8, 1), v49, *v10.i8, 0), v57, *v10.i8, 2), v58, *v10.i8, 3), v59, v10, 4), v60, v10, 5), v61, v10, 6), v62, v10, 7), 4uLL);
    v64 = vshrq_n_u16(*_X17, 4uLL);
    v65 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v71 = vextq_s8(v64, v65, 2uLL);
    v72 = vextq_s8(v64, v65, 4uLL);
    v73 = vextq_s8(v64, v65, 6uLL);
    v74 = vextq_s8(v64, v65, 8uLL);
    v75 = vextq_s8(v64, v65, 0xAuLL);
    v76 = vextq_s8(v64, v65, 0xCuLL);
    v77 = vextq_s8(v64, v65, 0xEuLL);
    v78 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v71.i8, *v10.i8, 1), *v64.i8, *v10.i8, 0), *v72.i8, *v10.i8, 2), *v73.i8, *v10.i8, 3), *v74.i8, v10, 4), *v75.i8, v10, 5), *v76.i8, v10, 6), *v77.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v71, *v10.i8, 1), v64, *v10.i8, 0), v72, *v10.i8, 2), v73, *v10.i8, 3), v74, v10, 4), v75, v10, 5), v76, v10, 6), v77, v10, 7), 4uLL);
    v79 = vshrq_n_u16(*_X17, 4uLL);
    v80 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v86 = vextq_s8(v79, v80, 2uLL);
    v87 = vextq_s8(v79, v80, 4uLL);
    v88 = vextq_s8(v79, v80, 6uLL);
    v89 = vextq_s8(v79, v80, 8uLL);
    v90 = vextq_s8(v79, v80, 0xAuLL);
    v91 = vextq_s8(v79, v80, 0xCuLL);
    v92 = vextq_s8(v79, v80, 0xEuLL);
    v93 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v86.i8, *v10.i8, 1), *v79.i8, *v10.i8, 0), *v87.i8, *v10.i8, 2), *v88.i8, *v10.i8, 3), *v89.i8, v10, 4), *v90.i8, v10, 5), *v91.i8, v10, 6), *v92.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v86, *v10.i8, 1), v79, *v10.i8, 0), v87, *v10.i8, 2), v88, *v10.i8, 3), v89, v10, 4), v90, v10, 5), v91, v10, 6), v92, v10, 7), 4uLL);
    v94 = vshrq_n_u16(*_X17, 4uLL);
    v95 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v101 = vextq_s8(v94, v95, 2uLL);
    v102 = vextq_s8(v94, v95, 4uLL);
    v103 = vextq_s8(v94, v95, 6uLL);
    v104 = vextq_s8(v94, v95, 8uLL);
    v105 = vextq_s8(v94, v95, 0xAuLL);
    v106 = vextq_s8(v94, v95, 0xCuLL);
    v107 = vextq_s8(v94, v95, 0xEuLL);
    v108 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v10.i8, 1), *v94.i8, *v10.i8, 0), *v102.i8, *v10.i8, 2), *v103.i8, *v10.i8, 3), *v104.i8, v10, 4), *v105.i8, v10, 5), *v106.i8, v10, 6), *v107.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v10.i8, 1), v94, *v10.i8, 0), v102, *v10.i8, 2), v103, *v10.i8, 3), v104, v10, 4), v105, v10, 5), v106, v10, 6), v107, v10, 7), 4uLL);
    v109 = vshrq_n_u16(*_X17, 4uLL);
    v110 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v115 = vextq_s8(v109, v110, 2uLL);
    v116 = vextq_s8(v109, v110, 4uLL);
    v117 = vextq_s8(v109, v110, 6uLL);
    v118 = vextq_s8(v109, v110, 8uLL);
    v119 = vextq_s8(v109, v110, 0xAuLL);
    v120 = vextq_s8(v109, v110, 0xCuLL);
    v121 = vextq_s8(v109, v110, 0xEuLL);
    v122 = a7;
    _X5 = v13;
    _X7 = v12;
    v125 = a2 + 1;
    v126 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v10.i8, 1), *v109.i8, *v10.i8, 0), *v116.i8, *v10.i8, 2), *v117.i8, *v10.i8, 3), *v118.i8, v10, 4), *v119.i8, v10, 5), *v120.i8, v10, 6), *v121.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v10.i8, 1), v109, *v10.i8, 0), v116, *v10.i8, 2), v117, *v10.i8, 3), v118, v10, 4), v119, v10, 5), v120, v10, 6), v121, v10, 7), 4uLL);
    do
    {
      v127 = vshrq_n_u16(*(_X5 - 46), 4uLL);
      v128 = vshrq_n_u16(*(_X5 - 30), 4uLL);
      v129 = vextq_s8(v127, v128, 2uLL);
      v130 = vextq_s8(v127, v128, 4uLL);
      v131 = vextq_s8(v127, v128, 6uLL);
      v132 = vextq_s8(v127, v128, 8uLL);
      v133 = vextq_s8(v127, v128, 0xAuLL);
      v134 = vextq_s8(v127, v128, 0xCuLL);
      v135 = vextq_s8(v127, v128, 0xEuLL);
      v136 = vmlal_lane_s16(vmull_lane_s16(*v129.i8, *v10.i8, 1), *v127.i8, *v10.i8, 0);
      v137 = vmlal_high_lane_s16(vmull_high_lane_s16(v129, *v10.i8, 1), v127, *v10.i8, 0);
      v138 = vmlal_lane_s16(vmull_lane_s16(*v48.i8, *v11.i8, 1), *v33.i8, *v11.i8, 0);
      v139 = vmlal_high_lane_s16(vmull_high_lane_s16(v48, *v11.i8, 1), v33, *v11.i8, 0);
      v33 = v48;
      v48 = v63;
      v63 = v78;
      v78 = v93;
      v93 = v108;
      v108 = v126;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v143 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v137, v130, *v10.i8, 2), v131, *v10.i8, 3), v132, v10, 4), v133, v10, 5), v134, v10, 6), v135, v10, 7);
      v144 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v136, *v130.i8, *v10.i8, 2), *v131.i8, *v10.i8, 3), *v132.i8, v10, 4), *v133.i8, v10, 5), *v134.i8, v10, 6), *v135.i8, v10, 7), 4uLL);
      v145 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v138, *v48.i8, *v11.i8, 2), *v63.i8, *v11.i8, 3), *v78.i8, v11, 4), *v93.i8, v11, 5), *v108.i8, v11, 6), v144, v11, 7);
      v126 = vshrn_high_n_s32(v144, v143, 4uLL);
      v135.i64[0] = 0xF000F000F000F000;
      v135.i64[1] = 0xF000F000F000F000;
      --v125;
      *v122 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v145, 8uLL), vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v139, v48, *v11.i8, 2), v63, *v11.i8, 3), v78, v11, 4), v93, v11, 5), v108, v11, 6), vshrn_n_s32(v143, 4uLL), v11, 7), 8uLL), v135);
      _X7 += v8;
      _X5 += v8;
      v122 = (v122 + v9);
    }

    while (v125 > 1);
    a7 += 2;
    a5 += 16;
    v146 = result - 8;
    v12 += 16;
    v13 += 16;
    v147 = result > 0xF;
    result = (result - 8);
  }

  while (v147);
  if (v146)
  {
LABEL_9:
    v148 = xmmword_27750DCF0[(a3 & 3) - 1];
    v149 = xmmword_27750DCF0[v7 - 1];
    _X10 = (a5 - 6 * a4);
    v151 = *(_X10 - 6);
    _X10 = (_X10 - 6);
    v152 = vshr_n_u16(v151, 4uLL);
    v153 = vshr_n_u16(_X10[1], 4uLL);
    v154 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v160 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v152, v153, 2uLL), *v148.i8, 1), v152, *v148.i8, 0), vext_s8(v152, v153, 4uLL), *v148.i8, 2), vext_s8(v152, v153, 6uLL), *v148.i8, 3), v153, v148, 4), vext_s8(v153, v154, 2uLL), v148, 5), vext_s8(v153, v154, 4uLL), v148, 6), vext_s8(v153, v154, 6uLL), v148, 7), 4uLL);
    v161 = vshr_n_u16(*_X10, 4uLL);
    v162 = vshr_n_u16(_X10[1], 4uLL);
    v163 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v169 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v161, v162, 2uLL), *v148.i8, 1), v161, *v148.i8, 0), vext_s8(v161, v162, 4uLL), *v148.i8, 2), vext_s8(v161, v162, 6uLL), *v148.i8, 3), v162, v148, 4), vext_s8(v162, v163, 2uLL), v148, 5), vext_s8(v162, v163, 4uLL), v148, 6), vext_s8(v162, v163, 6uLL), v148, 7), 4uLL);
    v170 = vshr_n_u16(*_X10, 4uLL);
    v171 = vshr_n_u16(_X10[1], 4uLL);
    v172 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v178 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v170, v171, 2uLL), *v148.i8, 1), v170, *v148.i8, 0), vext_s8(v170, v171, 4uLL), *v148.i8, 2), vext_s8(v170, v171, 6uLL), *v148.i8, 3), v171, v148, 4), vext_s8(v171, v172, 2uLL), v148, 5), vext_s8(v171, v172, 4uLL), v148, 6), vext_s8(v171, v172, 6uLL), v148, 7), 4uLL);
    v179 = vshr_n_u16(*_X10, 4uLL);
    v180 = vshr_n_u16(_X10[1], 4uLL);
    v181 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v187 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v179, v180, 2uLL), *v148.i8, 1), v179, *v148.i8, 0), vext_s8(v179, v180, 4uLL), *v148.i8, 2), vext_s8(v179, v180, 6uLL), *v148.i8, 3), v180, v148, 4), vext_s8(v180, v181, 2uLL), v148, 5), vext_s8(v180, v181, 4uLL), v148, 6), vext_s8(v180, v181, 6uLL), v148, 7), 4uLL);
    v188 = vshr_n_u16(*_X10, 4uLL);
    v189 = vshr_n_u16(_X10[1], 4uLL);
    v190 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v196 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v188, v189, 2uLL), *v148.i8, 1), v188, *v148.i8, 0), vext_s8(v188, v189, 4uLL), *v148.i8, 2), vext_s8(v188, v189, 6uLL), *v148.i8, 3), v189, v148, 4), vext_s8(v189, v190, 2uLL), v148, 5), vext_s8(v189, v190, 4uLL), v148, 6), vext_s8(v189, v190, 6uLL), v148, 7), 4uLL);
    v197 = vshr_n_u16(*_X10, 4uLL);
    v198 = vshr_n_u16(_X10[1], 4uLL);
    v199 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v205 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v197, v198, 2uLL), *v148.i8, 1), v197, *v148.i8, 0), vext_s8(v197, v198, 4uLL), *v148.i8, 2), vext_s8(v197, v198, 6uLL), *v148.i8, 3), v198, v148, 4), vext_s8(v198, v199, 2uLL), v148, 5), vext_s8(v198, v199, 4uLL), v148, 6), vext_s8(v198, v199, 6uLL), v148, 7), 4uLL);
    v206 = vshr_n_u16(*_X10, 4uLL);
    v207 = vshr_n_u16(_X10[1], 4uLL);
    v208 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v213 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v206, v207, 2uLL), *v148.i8, 1), v206, *v148.i8, 0), vext_s8(v206, v207, 4uLL), *v148.i8, 2), vext_s8(v206, v207, 6uLL), *v148.i8, 3), v207, v148, 4), vext_s8(v207, v208, 2uLL), v148, 5), vext_s8(v207, v208, 4uLL), v148, 6), vext_s8(v207, v208, 6uLL), v148, 7), 4uLL);
    v214 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v217 = vshr_n_u16(_X12[-2], 4uLL);
      v218 = vshr_n_u16(_X12[-1], 4uLL);
      v219 = vshr_n_u16(*_X12, 4uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v223 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v217, v218, 2uLL), *v148.i8, 1), v217, *v148.i8, 0), vext_s8(v217, v218, 4uLL), *v148.i8, 2), vext_s8(v217, v218, 6uLL), *v148.i8, 3), v218, v148, 4), vext_s8(v218, v219, 2uLL), v148, 5), vext_s8(v218, v219, 4uLL), v148, 6), vext_s8(v218, v219, 6uLL), v148, 7);
      v224 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v169, *v149.i8, 1), v160, *v149.i8, 0), v178, *v149.i8, 2), v187, *v149.i8, 3), v196, v149, 4), v205, v149, 5), v213, v149, 6);
      v160 = v169;
      v169 = v178;
      v178 = v187;
      v187 = v196;
      v196 = v205;
      v205 = v213;
      v213 = vshrn_n_s32(v223, 4uLL);
      --v214;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v224, v213, v149, 7), 8uLL), 0xF000F000F000F000);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v214 > 1);
  }

  return result;
}

unint64_t sub_277420500(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x4_t *a7)
{
  v152 = (a3 >> 16) & 3;
  if (result < 8)
  {
    v16 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = xmmword_27750DCF0[((a3 >> 16) & 3) - 1];
  v9 = 4 * a6;
  v10 = a2 + 2;
  v11 = &a5->i8[20 * a4];
  v12 = 4 * a4;
  v13.i64[0] = 0xF000F000F000F000;
  v13.i64[1] = 0xF000F000F000F000;
  v14 = &a5->i8[18 * a4];
  v15 = &a5->i8[10 * a4];
  v16 = a7;
  v17 = &a5->i8[8 * a4];
  do
  {
    _X22 = &a5->i8[-6 * a4];
    v19 = *_X22;
    _X22 += 30;
    v20 = v19;
    _X24 = &a5->i8[-4 * a4];
    v22 = *_X24;
    _X24 += 30;
    v23 = vshrq_n_u16(v20, 4uLL);
    v24 = vshrq_n_u16(v22, 4uLL);
    _X25 = &a5->i8[-2 * a4];
    v26 = *_X25;
    _X25 += 30;
    v27 = v26;
    _X26 = &a5[1].i8[14];
    _X27 = &a5->i8[2 * a4];
    v30 = *_X27;
    _X27 += 30;
    v31 = v30;
    _X28 = &a5->i8[4 * a4];
    v33 = *_X28;
    _X28 += 30;
    v34 = v33;
    _X30 = &a5->i8[6 * a4];
    v36 = *_X30;
    _X30 += 30;
    __asm { PRFM            #0, [X22] }

    v42 = vshrq_n_u16(v27, 4uLL);
    v43 = vshrq_n_u16(*a5, 4uLL);
    v44 = vshrq_n_u16(v31, 4uLL);
    v45 = vshrq_n_u16(v34, 4uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v48 = vshrq_n_u16(v36, 4uLL);
    __asm
    {
      PRFM            #0, [X26]
      PRFM            #0, [X27]
    }

    v51 = v15;
    v52 = v14;
    v53 = v17;
    __asm
    {
      PRFM            #0, [X28]
      PRFM            #0, [X30]
    }

    v56 = v11;
    v57 = v10;
    v58 = a7;
    v59 = a7 + 2 * a6;
    do
    {
      v60 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v8.i8, 1), *v24.i8, *v8.i8, 0);
      v61 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v8.i8, 1), v24, *v8.i8, 0);
      v62 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v8.i8, 1), *v23.i8, *v8.i8, 0), *v42.i8, *v8.i8, 2);
      v63 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v8.i8, 1), v23, *v8.i8, 0), v42, *v8.i8, 2);
      v23 = v42;
      v42 = v44;
      _X10 = &v53[v7 + 30];
      __asm { PRFM            #0, [X10] }

      v44 = v48;
      _X10 = &v51[v7 + 30];
      __asm { PRFM            #0, [X10] }

      _X10 = &v52[v7];
      v48 = vshrq_n_u16(*&v51[v7], 4uLL);
      v69 = vmlal_lane_s16(v62, *v43.i8, *v8.i8, 3);
      v70 = vmlal_high_lane_s16(v63, v43, *v8.i8, 3);
      v71 = vmlal_lane_s16(v60, *v43.i8, *v8.i8, 2);
      v72 = vmlal_high_lane_s16(v61, v43, *v8.i8, 2);
      v24 = v43;
      v43 = v45;
      __asm { PRFM            #0, [X10] }

      _X1 = &v56[v7];
      __asm
      {
        PRFM            #0, [X1]
        PRFUM           #0, [X10,#0xE]
        PRFUM           #0, [X1,#0xE]
      }

      v45 = vshrq_n_u16(*&v53[v7], 4uLL);
      *v58[v7 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v69, *v42.i8, v8, 4), *v43.i8, v8, 5), *v44.i8, v8, 6), *v45.i8, v8, 7), 6uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v70, v42, v8, 4), v43, v8, 5), v44, v8, 6), v45, v8, 7), 6uLL), v13);
      *&v59[v7] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v71, *v42.i8, *v8.i8, 3), *v43.i8, v8, 4), *v44.i8, v8, 5), *v45.i8, v8, 6), *v48.i8, v8, 7), 6uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v72, v42, *v8.i8, 3), v43, v8, 4), v44, v8, 5), v45, v8, 6), v48, v8, 7), 6uLL), v13);
      v58 = (v58 + v9);
      v59 += v9;
      v57 -= 2;
      v56 += v12;
      v53 += v12;
      v52 += v12;
      v51 += v12;
    }

    while (v57 > 2);
    v16 += 2;
    ++a5;
    v78 = result - 8;
    v7 += 16;
    v79 = result > 0xF;
    result = (result - 8);
  }

  while (v79);
  if (v78)
  {
LABEL_9:
    v80 = xmmword_27750DCF0[v152 - 1];
    _X10 = (a5->i64 - 6 * a4);
    v82 = *_X10;
    _X10 = (_X10 + 14);
    v83 = vshr_n_u16(v82, 4uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 4uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 4uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 4uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 4uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 4uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 4uLL);
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X11]
      PRFM            #0, [X12]
      PRFM            #0, [X13]
      PRFM            #0, [X14]
      PRFM            #0, [X15]
      PRFM            #0, [X16]
    }

    v108 = 8 * a4;
    v109 = 10 * a4;
    v110 = a2 + 4;
    v111 = 3 * a4;
    v112 = 22 * a4;
    v113 = 12 * a4;
    v114 = 2 * a6;
    v115 = 14 * a4;
    do
    {
      _X2 = (a5->i64 + v109);
      _X3 = (a5->i64 + v113);
      _X5 = (a5->i64 + v115);
      _X17 = &a5->i8[v112];
      result = &a5->u64[v111];
      a5 = (a5 + v108);
      _X1 = &a5->i8[14];
      __asm { PRFM            #0, [X1] }

      v122 = *_X2;
      _X2 = (_X2 + 14);
      v123 = v122;
      __asm { PRFM            #0, [X2] }

      v125 = *_X3;
      _X3 = (_X3 + 14);
      v126 = v125;
      __asm { PRFM            #0, [X3] }

      v128 = *_X5;
      _X5 = (_X5 + 14);
      __asm { PRFM            #0, [X5] }

      v130 = vmlal_lane_s16(vmull_lane_s16(v91, *v80.i8, 1), v89, *v80.i8, 0);
      v131 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v86, *v80.i8, 1), v83, *v80.i8, 0), v89, *v80.i8, 2), v91, *v80.i8, 3);
      v132 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v89, *v80.i8, 1), v86, *v80.i8, 0), v91, *v80.i8, 2);
      v133 = vmlal_lane_s16(vmull_lane_s16(v94, *v80.i8, 1), v91, *v80.i8, 0);
      v91 = vshr_n_u16(*a5->i8, 4uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 4uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 4uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 4uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v141, v91, v80, 7), 6uLL), 0xF000F000F000F000);
      v149 = (v16 + v114);
      *v149 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7), 6uLL), 0xF000F000F000F000);
      v150 = (v149 + v114);
      *v150 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7), 6uLL), 0xF000F000F000F000);
      v151 = (v150 + v114);
      *v151 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7), 6uLL), 0xF000F000F000F000);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_27742096C(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = xmmword_27750DCF0[(a3 & 3) - 1];
  v11 = (a5 - 6);
  v12.i64[0] = 0xF000F000F000F000;
  v12.i64[1] = 0xF000F000F000F000;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 4uLL);
      v17 = vshrq_n_u16(_X15[1], 4uLL);
      __asm { PRFUM           #0, [X15,#0x2E] }

      _X17 = &_X15->i8[v7 * 8];
      v24 = vextq_s8(v16, v17, 2uLL);
      v25 = vextq_s8(v16, v17, 4uLL);
      v26 = vextq_s8(v16, v17, 6uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xAuLL);
      v29 = vextq_s8(v16, v17, 0xCuLL);
      v30 = vextq_s8(v16, v17, 0xEuLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      *v13 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v25.i8, *v10.i8, 2), *v26.i8, *v10.i8, 3), *v27.i8, v10, 4), *v28.i8, v10, 5), *v29.i8, v10, 6), *v30.i8, v10, 7), 6uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v10.i8, 1), v16, *v10.i8, 0), v25, *v10.i8, 2), v26, *v10.i8, 3), v27, v10, 4), v28, v10, 5), v29, v10, 6), v30, v10, 7), 6uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    a5 += 16;
    v33 = result - 8;
    ++v11;
    v34 = result > 0xF;
    result = (result - 8);
  }

  while (v34);
  if (v33)
  {
LABEL_9:
    v35 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6);
    v37 = a2 + 1;
    do
    {
      v38 = vshr_n_u16(*_X11, 4uLL);
      v39 = vshr_n_u16(_X11[1], 4uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v41 = vshr_n_u16(_X11[2], 4uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v38, v39, 2uLL), *v35.i8, 1), v38, *v35.i8, 0), vext_s8(v38, v39, 4uLL), *v35.i8, 2), vext_s8(v38, v39, 6uLL), *v35.i8, 3), v39, v35, 4), vext_s8(v39, v41, 2uLL), v35, 5), vext_s8(v39, v41, 4uLL), v35, 6), vext_s8(v39, v41, 6uLL), v35, 7), 6uLL), 0xF000F000F000F000);
      --v37;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v37 > 1);
  }

  return result;
}

double sub_277420B10(int a1, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, void *a7)
{
  v7 = 4 * a4;
  v8 = 4 * a6;
  if (a1 < 8)
  {
    if (!a1)
    {
      return *v14.i64;
    }

    goto LABEL_10;
  }

  v9 = a7 + 2 * a6;
  v10 = a5 + 2 * a4;
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = a2 + 2;
    do
    {
      v14 = vshrq_n_u16(*&a5->i8[v11], 4uLL);
      v15 = vshrq_n_u16(*&v10[v11], 4uLL);
      *(a7 + v12) = v14;
      *&v9[v12] = v15;
      v12 += v8;
      v11 += v7;
      v13 -= 2;
    }

    while (v13 > 2);
    a7 += 2;
    a5 += 2;
    v16 = a1 - 8;
    v9 += 16;
    v10 += 16;
    v17 = a1 <= 15;
    a1 -= 8;
  }

  while (!v17);
  if (v16)
  {
LABEL_10:
    v18 = a2 + 2;
    do
    {
      *v14.i8 = vshr_n_u16(*a5, 4uLL);
      v19 = vshr_n_u16(*(a5 + 2 * a4), 4uLL);
      a5 = (a5 + v7);
      *a7 = v14.i64[0];
      *(a7 + 2 * a6) = v19;
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return *v14.i64;
}

uint64_t sub_277420BD0(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, int16x4_t *a7)
{
  v10 = 2 * a6;
  if (result < 16)
  {
    v75 = result;
    if ((result & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = qword_27750DD20[(a3 & 7) - 1];
    v12 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
    v13 = -2 - a4;
    v14 = 4 * (a4 - 16);
    v15 = &a7[2];
    v16 = 2 * a4;
    v17 = vdupq_lane_s8(v11, 0);
    v18 = vdup_lane_s8(v11, 1);
    v19 = vdup_lane_s8(v11, 2);
    v20 = vdup_lane_s8(v11, 3);
    v21.i64[0] = 0xE000E000E000E000;
    v21.i64[1] = 0xE000E000E000E000;
    do
    {
      _X17 = _X4 + v13;
      _X5 = _X4 + v13 + 79;
      v24 = *(_X4 + v13);
      __asm
      {
        PRFUM           #0, [X17,#0x1F]
        PRFM            #0, [X17,#0x40]
        PRFM            #0, [X5]
      }

      v7.i64[0] = *(_X4 + v13 + 16);
      __asm { PRFUM           #0, [X17,#0x1F] }

      _X17 = _X4 + v13 + 16 + v14;
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#7]
      }

      v36 = *(_X4 - 2);
      __asm
      {
        PRFUM           #0, [X4,#0x1D]
        PRFUM           #0, [X4,#0x3E]
        PRFUM           #0, [X4,#0x4D]
      }

      v8.i64[0] = *(_X4 + 14);
      __asm { PRFUM           #0, [X4,#0x1D] }

      _X5 = _X4 + 14 + v14;
      __asm
      {
        PRFM            #0, [X5]
        PRFUM           #0, [X5,#7]
      }

      _X5 = (_X4 + 14 + a4 - 16);
      _X7 = &_X5[4].i8[15];
      v46 = *_X5;
      __asm
      {
        PRFUM           #0, [X5,#0x1F]
        PRFM            #0, [X5,#0x40]
        PRFM            #0, [X7]
      }

      _X17 = (_X4 + 14 + a4);
      _X5 = _X17 + v14;
      v52 = *_X17;
      _X17 = (_X17 + 15);
      v9.i64[0] = v52;
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X5]
        PRFUM           #0, [X5,#7]
      }

      v56 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v24, v24, 2uLL), v18), *&vextq_s8(v24, v24, 4uLL), v19), *v24.i8, *v17.i8), *&vextq_s8(v24, v24, 6uLL), v20);
      v7 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v24, v7, 0xAuLL), v18), *&vextq_s8(v24, v7, 0xCuLL), v19), v24, v17), *&vextq_s8(v24, v7, 0xEuLL), v20);
      v57 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v36, v36, 2uLL), v18), *&vextq_s8(v36, v36, 4uLL), v19), *v36.i8, *v17.i8), *&vextq_s8(v36, v36, 6uLL), v20);
      v8 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v36, v8, 0xAuLL), v18), *&vextq_s8(v36, v8, 0xCuLL), v19), v36, v17), *&vextq_s8(v36, v8, 0xEuLL), v20);
      v58 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v46, v46, 2uLL), v18), *&vextq_s8(v46, v46, 4uLL), v19), *v46.i8, *v17.i8), *&vextq_s8(v46, v46, 6uLL), v20);
      v59 = vextq_s8(v46, v9, 0xCuLL);
      v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v46, v9, 0xAuLL), v18), *v59.i8, v19), v46, v17), *&vextq_s8(v46, v9, 0xEuLL), v20);
      v60 = _X4;
      v61 = v15;
      v62 = a2 + 1;
      do
      {
        v63 = v57;
        v57 = v58;
        _X19 = v60 + v16;
        v65 = *(v60 + v16 - 2);
        __asm
        {
          PRFUM           #0, [X19,#0x1D]
          PRFUM           #0, [X19,#0x3E]
          PRFUM           #0, [X19,#0x4D]
        }

        v59.i64[0] = *(v60 + v16 + 14);
        v58 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v65, v65, 2uLL), v18), *&vextq_s8(v65, v65, 4uLL), v19), *v65.i8, *v17.i8), *&vextq_s8(v65, v65, 6uLL), v20);
        v69 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v8.i8, v12, 1), *v9.i8, v12, 2), *v7.i8, v12, 0);
        v70 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v8, v12, 1), v9, v12, 2), v7, v12, 0);
        v7 = v8;
        v8 = v9;
        __asm { PRFUM           #0, [X19,#0x1D] }

        _X19 = v60 + 6 * a4 - 50;
        __asm
        {
          PRFM            #0, [X19]
          PRFUM           #0, [X19,#7]
        }

        v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v65, v59, 0xAuLL), v18), *&vextq_s8(v65, v59, 0xCuLL), v19), v65, v17), *&vextq_s8(v65, v59, 0xEuLL), v20);
        v59 = vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v63, v12, 1), v57, v12, 2), v56, v12, 0), v58, v12, 3);
        --v62;
        v61[-1] = vaddq_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v63.i8, v12, 1), *v57.i8, v12, 2), *v56.i8, v12, 0), *v58.i8, v12, 3), 6uLL), v59, 6uLL), v21);
        *v61 = vaddq_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v69, *v9.i8, v12, 3), 6uLL), vmlsl_high_lane_s16(v70, v9, v12, 3), 6uLL), v21);
        v61 = (v61 + v10);
        v60 += a4;
        v56 = v63;
      }

      while (v62 > 1);
      a7 += 4;
      _X4 += 16;
      v75 = result - 16;
      v15 += 2;
      v76 = result > 0x1F;
      result = (result - 16);
    }

    while (v76);
    if ((v75 & 8) == 0)
    {
LABEL_7:
      if ((v75 & 4) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  v77 = qword_27750DD20[(a3 & 7) - 1];
  v78 = vdup_lane_s8(v77, 0);
  v79 = vdup_lane_s8(v77, 1);
  v80 = vdup_lane_s8(v77, 2);
  v81 = vdup_lane_s8(v77, 3);
  v82 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
  _X10 = (_X4 - a4 - 2);
  v84 = *_X10;
  __asm { PRFUM           #0, [X10,#0x1F] }

  _X10 = &_X10->i8[4 * a4];
  __asm
  {
    PRFM            #0, [X10]
    PRFUM           #0, [X10,#0xF]
  }

  v89 = *(_X4 - 2);
  _X12 = _X4 + 29;
  __asm { PRFUM           #0, [X11,#0x1F] }

  _X10 = _X4 - 2 + 4 * a4;
  __asm
  {
    PRFM            #0, [X10]
    PRFUM           #0, [X10,#0xF]
  }

  _X10 = (_X4 - 2 + a4);
  _X13 = _X10 + 4 * a4;
  v97 = *_X10;
  _X10 = (_X10 + 31);
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
    PRFUM           #0, [X13,#0xF]
  }

  v101 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v84, v84, 2uLL), v79), *&vextq_s8(v84, v84, 4uLL), v80), *v84.i8, v78), *&vextq_s8(v84, v84, 6uLL), v81);
  v102 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v89, v89, 2uLL), v79), *&vextq_s8(v89, v89, 4uLL), v80), *v89.i8, v78), *&vextq_s8(v89, v89, 6uLL), v81);
  v103 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v97, v97, 2uLL), v79), *&vextq_s8(v97, v97, 4uLL), v80), *v97.i8, v78), *&vextq_s8(v97, v97, 6uLL), v81);
  v104 = a2 + 1;
  _X11 = _X4 - 2 + 6 * a4;
  _X12 = _X4 + 29 + 2 * a4;
  v107 = vdup_lane_s8(v77, 1);
  v108 = vdup_lane_s8(v77, 3);
  v109.i64[0] = 0xE000E000E000E000;
  v109.i64[1] = 0xE000E000E000E000;
  v110 = a7;
  do
  {
    v111 = *(_X12 - 31);
    __asm
    {
      PRFM            #0, [X12]
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0xF]
    }

    v115 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v102.i8, v82, 1), *v103.i8, v82, 2), *v101.i8, v82, 0);
    v116 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v102, v82, 1), v103, v82, 2), v101, v82, 0);
    v101 = v102;
    v102 = v103;
    v103 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v111, v111, 2uLL), v107), *&vextq_s8(v111, v111, 4uLL), v80), *v111.i8, v78), *&vextq_s8(v111, v111, 6uLL), v108);
    *v110 = vaddq_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v115, *v103.i8, v82, 3), 6uLL), vmlsl_high_lane_s16(v116, v103, v82, 3), 6uLL), v109);
    v110 = (v110 + v10);
    --v104;
    _X11 += a4;
    _X12 += a4;
  }

  while (v104 > 1);
  a7 += 2;
  _X4 += 8;
  if ((v75 & 4) != 0)
  {
LABEL_13:
    v117 = qword_27750DD20[((a3 >> 16) & 7) - 1];
    v118 = vmovl_u8(qword_27750DD20[(a3 & 7) - 1]).u64[0];
    _X9 = (_X4 - a4 - 2);
    v120 = *_X9;
    __asm { PRFUM           #0, [X9,#0x1F] }

    _X9 = &_X9->i8[4 * a4];
    __asm
    {
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    v126 = *(_X4 - 2);
    _X4 = _X4 - 2;
    v127 = v126;
    __asm { PRFUM           #0, [X4,#0x1F] }

    _X9 = _X4 + 4 * a4;
    __asm
    {
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X10 = _X4 + a4 + 4 * a4;
    _X9 = _X4 + a4 + 31;
    v134 = *(_X4 + a4);
    __asm
    {
      PRFM            #0, [X9]
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0xF]
    }

    v138 = a2 + 1;
    _X10 = _X4 + 6 * a4;
    v140 = vdupq_lane_s8(v117, 0);
    v141 = vdupq_lane_s8(v117, 1);
    v142 = vdupq_lane_s8(v117, 2);
    _X11 = _X4 + 31 + 2 * a4;
    v144 = vextq_s8(v142, v142, 8uLL).u64[0];
    v145 = vdupq_lane_s8(v117, 3);
    v146 = vextq_s8(v145, v145, 8uLL).u64[0];
    do
    {
      v147 = v127;
      v127 = v134;
      v134 = *(_X11 - 31);
      __asm
      {
        PRFM            #0, [X11]
        PRFM            #0, [X10]
        PRFUM           #0, [X10,#0xF]
      }

      v151 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*v147.i8, *v141.i8), *v127.i8, *v142.i8), *v120.i8, *v140.i8), *v134.i8, *v145.i8);
      v152 = vmlal_u8(vmull_high_u8(v120, v140), *&vextq_s8(v134, v134, 8uLL), v146);
      *v152.i8 = vsub_s16(*&vmlal_u8(vmull_high_u8(v147, v141), *&vextq_s8(v127, v127, 8uLL), v144), *v152.i8);
      *a7 = vadd_s16(vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*&vextq_s8(v151, v151, 4uLL), v118, 1), v151, v118, 2), *v151.i8, v118, 0), *&vextq_s8(v151, v152, 0xCuLL), v118, 3), 6uLL), 0xE000E000E000E000);
      a7 = (a7 + v10);
      --v138;
      _X10 += a4;
      _X11 += a4;
      v120 = v147;
    }

    while (v138 > 1);
  }

  return result;
}

int16x4_t *sub_277421140(int16x4_t *result, int a2, unint64_t a3, uint64_t a4, _OWORD *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 3 * a4;
  v9 = 2 * a4;
  v10 = 2 * a6;
  if (result < 16)
  {
    v61 = result;
  }

  else
  {
    v11 = qword_27750DD20[v7 - 1];
    v12 = 4 * a4;
    v13 = vdupq_lane_s8(v11, 0);
    v14 = vdupq_lane_s8(v11, 1);
    v15 = vdupq_lane_s8(v11, 2);
    v16 = vdupq_lane_s8(v11, 3);
    do
    {
      _X19 = _X4 + v12 - a4;
      _X7 = _X4 - a4 + 31;
      v19 = *(_X4 - a4);
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X19]
        PRFUM           #0, [X19,#0xF]
      }

      v27 = *_X4;
      __asm { PRFUM           #0, [X4,#0x1F] }

      _X7 = _X4 + v12;
      __asm
      {
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0xF]
      }

      _X20 = _X4 + a4 + v12;
      _X7 = _X4 + a4 + 31;
      v34 = *(_X4 + a4);
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X20]
      }

      v37 = a2 + 2;
      v38 = a7;
      __asm { PRFUM           #0, [X20,#0xF] }

      v40 = _X4;
      do
      {
        _X21 = v40 + v9 + 31;
        v42 = *(v40 + 2 * a4);
        __asm { PRFM            #0, [X21] }

        _X21 = v40 + 6 * a4;
        __asm
        {
          PRFM            #0, [X21]
          PRFUM           #0, [X21,#0xF]
        }

        v47.i64[0] = 0xE000E000E000E000;
        v47.i64[1] = 0xE000E000E000E000;
        v48 = vmlsl_u8(vmlal_u8(vmlal_u8(v47, *v27.i8, *v14.i8), *v34.i8, *v15.i8), *v19.i8, *v13.i8);
        v49.i64[0] = 0xE000E000E000E000;
        v49.i64[1] = 0xE000E000E000E000;
        v50 = vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(v49, v27, v14), v34, v15), v19, v13);
        v51.i64[0] = 0xE000E000E000E000;
        v51.i64[1] = 0xE000E000E000E000;
        v52 = vmlal_u8(v51, *v34.i8, *v14.i8);
        v53.i64[0] = 0xE000E000E000E000;
        v53.i64[1] = 0xE000E000E000E000;
        v54 = vmlal_high_u8(v53, v34, v14);
        v19 = v34;
        _X21 = v40 + v8 + 31;
        v34 = *(v40 + 3 * a4);
        __asm { PRFM            #0, [X21] }

        _X21 = v40 + 7 * a4;
        __asm
        {
          PRFM            #0, [X21]
          PRFUM           #0, [X21,#0xF]
        }

        *v38 = vmlsl_u8(v48, *v42.i8, *v16.i8);
        v38[1] = vmlsl_high_u8(v50, v42, v16);
        v40 = (v40 + a4 + a4);
        v60 = (v38 + v10);
        v37 -= 2;
        *v60 = vmlsl_u8(vmlsl_u8(vmlal_u8(v52, *v42.i8, *v15.i8), *v27.i8, *v13.i8), *v34.i8, *v16.i8);
        v60[1] = vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(v54, v42, v15), v27, v13), v34, v16);
        v38 = (v60 + v10);
        v27 = v42;
      }

      while (v37 > 2);
      a7 += 4;
      ++_X4;
      v61 = result - 16;
      v62 = result > 0x1F;
      result = (result - 16);
    }

    while (v62);
  }

  v63 = 4 * a6;
  if ((v61 & 8) != 0)
  {
    _X17 = _X4 + 4 * a4 - a4;
    _X16 = _X4 - a4 + 15;
    v66 = *(_X4 - a4);
    v67 = qword_27750DD20[v7 - 1];
    __asm
    {
      PRFM            #0, [X16]
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#7]
    }

    v71 = *_X4;
    __asm { PRFUM           #0, [X4,#0xF] }

    _X15 = _X4 + 4 * a4;
    __asm
    {
      PRFM            #0, [X15]
      PRFUM           #0, [X15,#7]
    }

    _X16 = _X4 + 4 * a4 + a4;
    _X15 = _X4 + a4 + 15;
    v78 = *(_X4 + a4);
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X16]
      PRFUM           #0, [X16,#7]
    }

    v82 = a2 + 2;
    v83 = vdup_lane_s8(v67, 1);
    v84 = vdup_lane_s8(v67, 0);
    v85 = vdup_lane_s8(v67, 2);
    result = a7;
    v86 = _X4;
    v87 = vdup_lane_s8(v67, 3);
    do
    {
      _X5 = &v86[v9 + 15];
      v89 = *&v86[2 * a4];
      __asm { PRFM            #0, [X5] }

      _X5 = &v86[6 * a4];
      __asm
      {
        PRFM            #0, [X5]
        PRFUM           #0, [X5,#7]
      }

      v94.i64[0] = 0xE000E000E000E000;
      v94.i64[1] = 0xE000E000E000E000;
      v95 = vmlsl_u8(vmlal_u8(vmlal_u8(v94, v71, v83), v78, v85), v66, v84);
      v96.i64[0] = 0xE000E000E000E000;
      v96.i64[1] = 0xE000E000E000E000;
      v97 = vmlal_u8(v96, v78, v83);
      v66 = v78;
      _X5 = &v86[v8 + 15];
      v78 = *&v86[3 * a4];
      v99 = &v86[a4];
      __asm { PRFM            #0, [X5] }

      _X2 = &v86[7 * a4];
      __asm
      {
        PRFM            #0, [X2]
        PRFUM           #0, [X2,#7]
      }

      *result->i8 = vmlsl_u8(v95, v89, v87);
      *&result->i8[v10] = vmlsl_u8(vmlsl_u8(vmlal_u8(v97, v89, v85), v71, v84), v78, v87);
      v86 = &v99[a4];
      result = (result + v63);
      v82 -= 2;
      v71 = v89;
    }

    while (v82 > 2);
    a7 += 2;
    _X4 = (_X4 + 8);
  }

  if ((v61 & 4) != 0)
  {
    v104 = qword_27750DD20[v7 - 1];
    _X13 = _X4 + 4 * a4 - a4;
    _X12 = _X4 - a4 + 15;
    v107 = *(_X4 - a4);
    __asm
    {
      PRFM            #0, [X12]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    v111 = *_X4;
    __asm { PRFUM           #0, [X4,#0xF] }

    _X12 = _X4 + 4 * a4;
    __asm
    {
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    _X13 = _X4 + 4 * a4 + a4;
    _X12 = _X4 + a4 + 15;
    v118 = *(_X4 + a4);
    __asm
    {
      PRFM            #0, [X12]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    v122 = a2 + 2;
    v123 = vdup_lane_s8(v104, 1);
    v124 = vdup_lane_s8(v104, 0);
    v125 = vdup_lane_s8(v104, 2);
    v126 = vdup_lane_s8(v104, 3);
    do
    {
      _X16 = _X4 + v9 + 15;
      v128 = *(_X4 + 2 * a4);
      __asm { PRFM            #0, [X16] }

      _X16 = _X4 + 6 * a4;
      __asm
      {
        PRFM            #0, [X16]
        PRFUM           #0, [X16,#7]
      }

      _X16 = (_X4 + v8);
      _X17 = _X4 + 7 * a4;
      _X4 = (_X4 + a4 + a4);
      v135 = vmull_u8(v107, v124);
      v136 = vmull_u8(v118, v123);
      v137 = vmlal_u8(vmull_u8(v111, v123), v118, v125).u64[0];
      v107 = v118;
      v138 = *_X16;
      _X16 = (_X16 + 15);
      v118 = v138;
      __asm
      {
        PRFM            #0, [X16]
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#7]
      }

      *a7 = vadd_s16(vsub_s16(v137, *&vmlal_u8(v135, v128, v126)), 0xE000E000E000E000);
      *(a7 + v10) = vadd_s16(vsub_s16(*&vmlal_u8(v136, v128, v125), *&vmlal_u8(vmull_u8(v111, v124), v138, v126)), 0xE000E000E000E000);
      a7 = (a7 + v63);
      v122 -= 2;
      v111 = v128;
    }

    while (v122 > 2);
  }

  return result;
}

int16x4_t *sub_2774214B8(int16x4_t *result, int a2, char a3, uint64_t a4, uint64_t _X4, uint64_t a6, int16x4_t *a7, double a8, double a9, double a10, double a11, double a12, int8x16_t a13, double a14, int8x16_t a15)
{
  v15 = 2 * a4;
  v16 = 2 * a6;
  if (result < 16)
  {
    v34 = result;
  }

  else
  {
    v17 = qword_27750DD20[(a3 & 7) - 1];
    v18 = vdupq_lane_s8(v17, 0);
    v19 = vdup_lane_s8(v17, 1);
    v20 = vdup_lane_s8(v17, 2);
    v21 = vdup_lane_s8(v17, 3);
    do
    {
      v22 = -2;
      v23 = a2 + 2;
      v24 = a7;
      do
      {
        v25 = *(_X4 + v22);
        a13.i64[0] = *(_X4 + v22 + 16);
        v26 = (_X4 + v22 + a4);
        v27 = *v26;
        a15.i64[0] = v26[1].i64[0];
        v28 = vextq_s8(*v26, a15, 0xAuLL).u64[0];
        v29 = vextq_s8(*v26, a15, 0xCuLL).u64[0];
        a15 = vextq_s8(*v26, a15, 0xEuLL);
        v30.i64[0] = 0xE000E000E000E000;
        v30.i64[1] = 0xE000E000E000E000;
        v31.i64[0] = 0xE000E000E000E000;
        v31.i64[1] = 0xE000E000E000E000;
        *v24 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v30, *&vextq_s8(v25, v25, 2uLL), v19), *&vextq_s8(v25, v25, 4uLL), v20), *v25.i8, *v18.i8), *&vextq_s8(v25, v25, 6uLL), v21);
        v24[1] = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmlal_u8(v31, *&vextq_s8(v25, a13, 0xAuLL), v19), *&vextq_s8(v25, a13, 0xCuLL), v20), v25, v18), *&vextq_s8(v25, a13, 0xEuLL), v21);
        v25.i64[0] = 0xE000E000E000E000;
        v25.i64[1] = 0xE000E000E000E000;
        v32 = &v24->i8[v16];
        v33.i64[0] = 0xE000E000E000E000;
        v33.i64[1] = 0xE000E000E000E000;
        a13 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmlal_u8(v33, v28, v19), v29, v20), v27, v18), *a15.i8, v21);
        *v32 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v25, *&vextq_s8(v27, v27, 2uLL), v19), *&vextq_s8(v27, v27, 4uLL), v20), *v27.i8, *v18.i8), *&vextq_s8(v27, v27, 6uLL), v21);
        v32[1] = a13;
        v22 += v15;
        v23 -= 2;
        v24 = &v32->i8[v16];
      }

      while (v23 > 2);
      a7 += 4;
      _X4 += 16;
      v34 = result - 16;
      v35 = result > 0x1F;
      result = (result - 16);
    }

    while (v35);
  }

  v36 = 4 * a4;
  v37 = 4 * a6;
  if ((v34 & 8) != 0)
  {
    v38 = qword_27750DD20[(a3 & 7) - 1];
    v39 = a2 + 2;
    v40 = vdup_lane_s8(v38, 0);
    v41 = vdup_lane_s8(v38, 1);
    v42 = vdup_lane_s8(v38, 2);
    v43 = vdup_lane_s8(v38, 3);
    _X17 = _X4;
    result = a7;
    do
    {
      v45 = *(_X17 - 2);
      __asm { PRFUM           #0, [X17,#0x1D] }

      _X5 = _X17 + v36 - 2;
      __asm
      {
        PRFM            #0, [X5]
        PRFUM           #0, [X5,#0xF]
      }

      _X5 = _X17 + a4;
      v55 = *(_X17 + a4 - 2);
      __asm { PRFUM           #0, [X5,#0x1D] }

      _X5 = _X17 + v36 - 2 + a4;
      __asm
      {
        PRFM            #0, [X5]
        PRFUM           #0, [X5,#0xF]
      }

      v60.i64[0] = 0xE000E000E000E000;
      v60.i64[1] = 0xE000E000E000E000;
      *result->i8 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v60, *&vextq_s8(v45, v45, 2uLL), v41), *&vextq_s8(v45, v45, 4uLL), v42), *v45.i8, v40), *&vextq_s8(v45, v45, 6uLL), v43);
      v45.i64[0] = 0xE000E000E000E000;
      v45.i64[1] = 0xE000E000E000E000;
      *&result->i8[v16] = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v45, *&vextq_s8(v55, v55, 2uLL), v41), *&vextq_s8(v55, v55, 4uLL), v42), *v55.i8, v40), *&vextq_s8(v55, v55, 6uLL), v43);
      result = (result + v37);
      v39 -= 2;
      _X17 += v15;
    }

    while (v39 > 2);
    a7 += 2;
    _X4 += 8;
  }

  if ((v34 & 4) != 0)
  {
    v61 = qword_27750DD20[(a3 & 7) - 1];
    v62 = a2 + 2;
    v63 = v36 - 2;
    v64 = vdup_lane_s8(v61, 0);
    v65 = vdup_lane_s8(v61, 1);
    v66 = v36 - 2 + a4;
    v67 = vdup_lane_s8(v61, 2);
    v68 = vdup_lane_s8(v61, 3);
    do
    {
      v69 = *(_X4 - 2);
      __asm { PRFUM           #0, [X4,#0x1D] }

      _X14 = _X4 + v63;
      __asm
      {
        PRFM            #0, [X14]
        PRFUM           #0, [X14,#0xF]
      }

      _X14 = _X4 + a4;
      v75 = *(_X4 + a4 - 2);
      __asm { PRFUM           #0, [X14,#0x1D] }

      _X14 = _X4 + v66;
      __asm
      {
        PRFM            #0, [X14]
        PRFUM           #0, [X14,#0xF]
      }

      *a7 = vadd_s16(vsub_s16(*&vmlal_u8(vmull_u8(*&vextq_s8(v69, v69, 2uLL), v65), *&vextq_s8(v69, v69, 4uLL), v67), *&vmlal_u8(vmull_u8(*v69.i8, v64), *&vextq_s8(v69, v69, 6uLL), v68)), 0xE000E000E000E000);
      *(a7 + v16) = vadd_s16(vsub_s16(*&vmlal_u8(vmull_u8(*&vextq_s8(v75, v75, 2uLL), v65), *&vextq_s8(v75, v75, 4uLL), v67), *&vmlal_u8(vmull_u8(*v75.i8, v64), *&vextq_s8(v75, v75, 6uLL), v68)), 0xE000E000E000E000);
      a7 = (a7 + v37);
      v62 -= 2;
      _X4 += v15;
    }

    while (v62 > 2);
  }

  return result;
}

uint64_t sub_277421764(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, int8x8_t *a7)
{
  if (result < 16)
  {
    v21 = a7;
    v76 = result;
    if ((result & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    v11 = qword_27750DD20[(a3 & 7) - 1];
    v12 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
    v13 = -2 - a4;
    v14 = 4 * (a4 - 16);
    v15 = _X4 + 6 * a4 - 50;
    v16 = vdupq_lane_s8(v11, 0);
    v17 = vdup_lane_s8(v11, 1);
    v18 = vdup_lane_s8(v11, 2);
    v19 = vdup_lane_s8(v11, 3);
    v20 = _X4 + 2 * a4;
    v21 = a7;
    do
    {
      _X17 = _X4 + v13;
      _X7 = _X4 + v13 + 79;
      v24 = *(_X4 + v13);
      __asm
      {
        PRFUM           #0, [X17,#0x1F]
        PRFM            #0, [X17,#0x40]
        PRFM            #0, [X7]
      }

      v7.i64[0] = *(_X4 + v13 + 16);
      __asm { PRFUM           #0, [X17,#0x1F] }

      _X17 = _X4 + v13 + 16 + v14;
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#7]
      }

      v36 = *(_X4 - 2);
      __asm
      {
        PRFUM           #0, [X4,#0x1D]
        PRFUM           #0, [X4,#0x3E]
        PRFUM           #0, [X4,#0x4D]
      }

      v8.i64[0] = *(_X4 + 14);
      __asm { PRFUM           #0, [X4,#0x1D] }

      _X7 = _X4 + 14 + v14;
      __asm
      {
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#7]
      }

      _X7 = (_X4 + 14 + a4 - 16);
      _X19 = &_X7[4].i8[15];
      v46 = *_X7;
      __asm
      {
        PRFUM           #0, [X7,#0x1F]
        PRFM            #0, [X7,#0x40]
        PRFM            #0, [X19]
      }

      _X17 = (_X4 + 14 + a4);
      _X7 = _X17 + v14;
      v52 = *_X17;
      _X17 = (_X17 + 15);
      v9.i64[0] = v52;
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#7]
      }

      v56 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v24, v24, 2uLL), v17), *&vextq_s8(v24, v24, 4uLL), v18), *v24.i8, *v16.i8), *&vextq_s8(v24, v24, 6uLL), v19);
      v7 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v24, v7, 0xAuLL), v17), *&vextq_s8(v24, v7, 0xCuLL), v18), v24, v16), *&vextq_s8(v24, v7, 0xEuLL), v19);
      v57 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v36, v36, 2uLL), v17), *&vextq_s8(v36, v36, 4uLL), v18), *v36.i8, *v16.i8), *&vextq_s8(v36, v36, 6uLL), v19);
      v8 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v36, v8, 0xAuLL), v17), *&vextq_s8(v36, v8, 0xCuLL), v18), v36, v16), *&vextq_s8(v36, v8, 0xEuLL), v19);
      v58 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v46, v46, 2uLL), v17), *&vextq_s8(v46, v46, 4uLL), v18), *v46.i8, *v16.i8), *&vextq_s8(v46, v46, 6uLL), v19);
      v59 = vextq_s8(v46, v9, 0xCuLL);
      v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v46, v9, 0xAuLL), v17), *v59.i8, v18), v46, v16), *&vextq_s8(v46, v9, 0xEuLL), v19);
      v60 = v20;
      v61 = v15;
      v62 = a2 + 1;
      v63 = a7;
      do
      {
        v64 = v57;
        v57 = v58;
        _X21 = v60 + v10;
        v66 = *(v60 + v10 - 2);
        __asm
        {
          PRFUM           #0, [X21,#0x1D]
          PRFUM           #0, [X21,#0x3E]
          PRFUM           #0, [X21,#0x4D]
        }

        v59.i64[0] = *(v60 + v10 + 14);
        v58 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v66, v66, 2uLL), v17), *&vextq_s8(v66, v66, 4uLL), v18), *v66.i8, *v16.i8), *&vextq_s8(v66, v66, 6uLL), v19);
        v70 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v8.i8, v12, 1), *v9.i8, v12, 2), *v7.i8, v12, 0);
        v71 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v8, v12, 1), v9, v12, 2), v7, v12, 0);
        v7 = v8;
        v8 = v9;
        __asm { PRFUM           #0, [X21,#0x1D] }

        _X21 = v61 + v10;
        __asm
        {
          PRFM            #0, [X21]
          PRFUM           #0, [X21,#7]
        }

        v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v66, v59, 0xAuLL), v17), *&vextq_s8(v66, v59, 0xCuLL), v18), v66, v16), *&vextq_s8(v66, v59, 0xEuLL), v19);
        v59 = vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v64, v12, 1), v57, v12, 2), v56, v12, 0), v58, v12, 3);
        *v63[v10 / 8].i8 = vqrshrun_high_n_s16(vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v64.i8, v12, 1), *v57.i8, v12, 2), *v56.i8, v12, 0), *v58.i8, v12, 3), 6uLL), v59, 6uLL), 6uLL), vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v70, *v9.i8, v12, 3), 6uLL), vmlsl_high_lane_s16(v71, v9, v12, 3), 6uLL), 6uLL);
        v63 = (v63 + a6);
        --v62;
        v61 += a4;
        v60 += a4;
        v56 = v64;
      }

      while (v62 > 1);
      v21 += 2;
      _X4 += 16;
      v76 = result - 16;
      v10 += 16;
      v77 = result > 0x1F;
      result = (result - 16);
    }

    while (v77);
    if ((v76 & 8) == 0)
    {
LABEL_7:
      if ((v76 & 4) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  v78 = qword_27750DD20[(a3 & 7) - 1];
  v79 = vdup_lane_s8(v78, 0);
  v80 = vdup_lane_s8(v78, 1);
  v81 = vdup_lane_s8(v78, 2);
  v82 = vdup_lane_s8(v78, 3);
  _X10 = (_X4 - a4 - 2);
  v84 = *_X10;
  __asm { PRFUM           #0, [X10,#0x1F] }

  _X10 = &_X10->i8[4 * a4];
  __asm
  {
    PRFM            #0, [X10]
    PRFUM           #0, [X10,#0xF]
  }

  v89 = *(_X4 - 2);
  v90 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
  _X12 = _X4 + 29;
  __asm { PRFUM           #0, [X11,#0x1F] }

  _X10 = _X4 - 2 + 4 * a4;
  __asm
  {
    PRFM            #0, [X10]
    PRFUM           #0, [X10,#0xF]
  }

  _X10 = (_X4 - 2 + a4);
  _X13 = _X10 + 4 * a4;
  v98 = *_X10;
  _X10 = (_X10 + 31);
  __asm
  {
    PRFM            #0, [X10]
    PRFM            #0, [X13]
    PRFUM           #0, [X13,#0xF]
  }

  v102 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v84, v84, 2uLL), v80), *&vextq_s8(v84, v84, 4uLL), v81), *v84.i8, v79), *&vextq_s8(v84, v84, 6uLL), v82);
  v103 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v89, v89, 2uLL), v80), *&vextq_s8(v89, v89, 4uLL), v81), *v89.i8, v79), *&vextq_s8(v89, v89, 6uLL), v82);
  v104 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v98, v98, 2uLL), v80), *&vextq_s8(v98, v98, 4uLL), v81), *v98.i8, v79), *&vextq_s8(v98, v98, 6uLL), v82);
  v105 = a2 + 1;
  _X11 = _X4 - 2 + 6 * a4;
  v107 = vdup_lane_s8(v78, 1);
  _X12 = _X4 + 29 + 2 * a4;
  v109 = vdup_lane_s8(v78, 3);
  v110 = v21;
  do
  {
    v111 = *(_X12 - 31);
    __asm
    {
      PRFM            #0, [X12]
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0xF]
    }

    v115 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v103.i8, v90, 1), *v104.i8, v90, 2), *v102.i8, v90, 0);
    v116 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v103, v90, 1), v104, v90, 2), v102, v90, 0);
    v102 = v103;
    v103 = v104;
    v104 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v111, v111, 2uLL), v107), *&vextq_s8(v111, v111, 4uLL), v81), *v111.i8, v79), *&vextq_s8(v111, v111, 6uLL), v109);
    *v110 = vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v115, *v104.i8, v90, 3), 6uLL), vmlsl_high_lane_s16(v116, v104, v90, 3), 6uLL), 6uLL);
    v110 = (v110 + a6);
    --v105;
    _X11 += a4;
    _X12 += a4;
  }

  while (v105 > 1);
  ++v21;
  _X4 += 8;
  if ((v76 & 4) != 0)
  {
LABEL_13:
    v117 = qword_27750DD20[((a3 >> 16) & 7) - 1];
    v118 = vmovl_u8(qword_27750DD20[(a3 & 7) - 1]).u64[0];
    _X9 = (_X4 - a4 - 2);
    v120 = *_X9;
    __asm { PRFUM           #0, [X9,#0x1F] }

    _X9 = &_X9->i8[4 * a4];
    __asm
    {
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    v126 = *(_X4 - 2);
    _X4 = _X4 - 2;
    v127 = v126;
    __asm { PRFUM           #0, [X4,#0x1F] }

    _X9 = _X4 + 4 * a4;
    __asm
    {
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X10 = _X4 + a4 + 4 * a4;
    _X9 = _X4 + a4 + 31;
    v134 = *(_X4 + a4);
    __asm
    {
      PRFM            #0, [X9]
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0xF]
    }

    v138 = a2 + 1;
    _X10 = _X4 + 6 * a4;
    _X11 = _X4 + 31 + 2 * a4;
    v141 = vdupq_lane_s8(v117, 0);
    v142 = vdupq_lane_s8(v117, 1);
    v143 = vdupq_lane_s8(v117, 2);
    v144 = vextq_s8(v143, v143, 8uLL).u64[0];
    v145 = vdupq_lane_s8(v117, 3);
    v146 = vextq_s8(v145, v145, 8uLL).u64[0];
    do
    {
      v147 = v127;
      v127 = v134;
      v134 = *(_X11 - 31);
      __asm
      {
        PRFM            #0, [X11]
        PRFM            #0, [X10]
        PRFUM           #0, [X10,#0xF]
      }

      v151 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*v147.i8, *v142.i8), *v127.i8, *v143.i8), *v120.i8, *v141.i8), *v134.i8, *v145.i8);
      v152 = vmlal_u8(vmull_high_u8(v120, v141), *&vextq_s8(v134, v134, 8uLL), v146);
      *v152.i8 = vsub_s16(*&vmlal_u8(vmull_high_u8(v147, v142), *&vextq_s8(v127, v127, 8uLL), v144), *v152.i8);
      v153 = vextq_s8(v151, v152, 0xCuLL);
      *v153.i8 = vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*&vextq_s8(v151, v151, 4uLL), v118, 1), v151, v118, 2), *v151.i8, v118, 0), *v153.i8, v118, 3), 6uLL);
      v21->i32[0] = vqrshrun_n_s16(v153, 6uLL).u32[0];
      v21 = (v21 + a6);
      --v138;
      _X10 += a4;
      _X11 += a4;
      v120 = v147;
    }

    while (v138 > 1);
  }

  return result;
}

double sub_277421CDC(int a1, int a2, unint64_t a3, uint64_t a4, _OWORD *_X4, uint64_t a6, int8x8_t *a7, uint8x16_t a8)
{
  v8 = (a3 >> 16) & 7;
  v9 = 2 * a4;
  v10 = 3 * a4;
  if (a1 < 16)
  {
    v22 = a7;
    v67 = a1;
  }

  else
  {
    v11 = 0;
    v12 = qword_27750DD20[v8 - 1];
    v13 = 4 * a4;
    v14 = 2 * a6;
    v15 = _X4 + 8 * a4 - a4;
    v16 = _X4 + v10;
    v17 = _X4 + 2 * a4;
    a8 = vdupq_lane_s8(v12, 0);
    v18 = vdupq_lane_s8(v12, 1);
    v19 = _X4 + 6 * a4;
    v20 = vdupq_lane_s8(v12, 2);
    v21 = vdupq_lane_s8(v12, 3);
    v22 = a7;
    do
    {
      _X23 = _X4 - a4 + 31;
      v24 = *(_X4 - a4);
      _X22 = _X4 + v13 - a4;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X22]
        PRFUM           #0, [X22,#0xF]
      }

      v33 = *_X4;
      __asm { PRFUM           #0, [X4,#0x1F] }

      _X22 = _X4 + v13;
      __asm
      {
        PRFM            #0, [X22]
        PRFUM           #0, [X22,#0xF]
      }

      _X28 = _X4 + a4 + v13;
      _X22 = _X4 + a4 + 31;
      v40 = *(_X4 + a4);
      __asm { PRFM            #0, [X22] }

      v42 = v19;
      v43 = v17;
      v44 = v16;
      v45 = v15;
      __asm { PRFM            #0, [X28] }

      v47 = a2 + 2;
      v48 = a7;
      __asm { PRFUM           #0, [X28,#0xF] }

      v50 = a7 + a6;
      do
      {
        v51 = v40;
        _X30 = &v43[v11 + 31];
        v53 = *&v43[v11];
        __asm { PRFM            #0, [X30] }

        _X30 = &v42[v11];
        __asm
        {
          PRFM            #0, [X30]
          PRFUM           #0, [X30,#0xF]
        }

        v58 = vmlsl_u8(vmlal_u8(vmull_u8(*v33.i8, *v18.i8), *v40.i8, *v20.i8), *v24.i8, *a8.i8);
        v59 = vmlsl_high_u8(vmlal_high_u8(vmull_high_u8(v33, v18), v40, v20), v24, a8);
        v60 = vmull_u8(*v40.i8, *v18.i8);
        v61 = vmull_high_u8(v40, v18);
        _X30 = &v44[v11 + 31];
        v40 = *&v44[v11];
        v24 = v51;
        __asm { PRFM            #0, [X30] }

        _X30 = v45 + v11;
        __asm
        {
          PRFM            #0, [X30]
          PRFUM           #0, [X30,#0xF]
        }

        *v48[v11 / 8].i8 = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(v58, *v53.i8, *v21.i8), 6uLL), vmlsl_high_u8(v59, v53, v21), 6uLL);
        *&v50[v11] = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v60, *v53.i8, *v20.i8), *v33.i8, *a8.i8), *v40.i8, *v21.i8), 6uLL), vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(v61, v53, v20), v33, a8), v40, v21), 6uLL);
        v50 += v14;
        v48 = (v48 + v14);
        v47 -= 2;
        v45 += v9;
        v44 += v9;
        v43 += v9;
        v42 += v9;
        v33 = v53;
      }

      while (v47 > 2);
      v22 += 2;
      ++_X4;
      v67 = a1 - 16;
      v11 += 16;
      v68 = a1 > 0x1F;
      a1 -= 16;
    }

    while (v68);
  }

  if ((v67 & 8) != 0)
  {
    _X16 = _X4 + 4 * a4 - a4;
    _X15 = _X4 - a4 + 15;
    v71 = *(_X4 - a4);
    v72 = qword_27750DD20[v8 - 1];
    __asm
    {
      PRFM            #0, [X15]
      PRFM            #0, [X16]
      PRFUM           #0, [X16,#7]
    }

    a8.i64[0] = *_X4;
    __asm { PRFUM           #0, [X4,#0xF] }

    _X14 = _X4 + 4 * a4;
    __asm
    {
      PRFM            #0, [X14]
      PRFUM           #0, [X14,#7]
    }

    _X15 = _X4 + 4 * a4 + a4;
    _X14 = _X4 + a4 + 15;
    v82 = *(_X4 + a4);
    __asm
    {
      PRFM            #0, [X14]
      PRFM            #0, [X15]
      PRFUM           #0, [X15,#7]
    }

    v86 = a2 + 2;
    v87 = vdup_lane_s8(v72, 1);
    v88 = vdup_lane_s8(v72, 0);
    v89 = vdup_lane_s8(v72, 2);
    v90 = v22;
    v91 = _X4;
    v92 = vdup_lane_s8(v72, 3);
    do
    {
      v93 = &v91[a4];
      _X6 = &v91[v9 + 15];
      v95 = *&v91[2 * a4];
      __asm { PRFM            #0, [X6] }

      _X6 = &v91[6 * a4];
      __asm
      {
        PRFM            #0, [X6]
        PRFUM           #0, [X6,#7]
      }

      v100 = vmlsl_u8(vmlal_u8(vmull_u8(*a8.i8, v87), v82, v89), v71, v88);
      v101 = vmull_u8(v82, v87);
      v71 = v82;
      _X6 = &v91[v10 + 15];
      v82 = *&v91[3 * a4];
      _X0 = &v91[7 * a4];
      __asm
      {
        PRFM            #0, [X6]
        PRFM            #0, [X0]
        PRFUM           #0, [X0,#7]
      }

      *v90 = vqrshrun_n_s16(vmlsl_u8(v100, v95, v92), 6uLL);
      v107 = (v90 + a6);
      *v107 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v101, v95, v89), *a8.i8, v88), v82, v92), 6uLL);
      v90 = (v107 + a6);
      v86 -= 2;
      v91 = &v93[a4];
      *a8.i8 = v95;
    }

    while (v86 > 2);
    ++v22;
    _X4 = (_X4 + 8);
  }

  if ((v67 & 4) != 0)
  {
    v108 = qword_27750DD20[v8 - 1];
    _X12 = _X4 + 4 * a4 - a4;
    _X11 = _X4 - a4 + 15;
    v111 = *(_X4 - a4);
    __asm
    {
      PRFM            #0, [X11]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    a8.i64[0] = *_X4;
    __asm { PRFUM           #0, [X4,#0xF] }

    _X11 = _X4 + 4 * a4;
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#7]
    }

    _X12 = _X4 + 4 * a4 + a4;
    _X11 = _X4 + a4 + 15;
    v121 = *(_X4 + a4);
    __asm
    {
      PRFM            #0, [X11]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    v125 = a2 + 2;
    v126 = vdup_lane_s8(v108, 1);
    v127 = vdup_lane_s8(v108, 0);
    v128 = vdup_lane_s8(v108, 2);
    v129 = vdup_lane_s8(v108, 3);
    do
    {
      _X15 = _X4 + v9 + 15;
      v131 = *(_X4 + 2 * a4);
      __asm { PRFM            #0, [X15] }

      _X15 = _X4 + 6 * a4;
      __asm
      {
        PRFM            #0, [X15]
        PRFUM           #0, [X15,#7]
      }

      _X15 = (_X4 + v10);
      _X16 = _X4 + 7 * a4;
      _X4 = (_X4 + a4 + a4);
      v138 = vmlsl_u8(vmlal_u8(vmull_u8(*a8.i8, v126), v121, v128), v111, v127);
      v139 = vmull_u8(v121, v126);
      v111 = v121;
      v140 = *_X15;
      _X15 = (_X15 + 15);
      v121 = v140;
      __asm
      {
        PRFM            #0, [X15]
        PRFM            #0, [X16]
        PRFUM           #0, [X16,#7]
      }

      v22->i32[0] = vqrshrun_n_s16(vmlsl_u8(v138, v131, v129), 6uLL).u32[0];
      v144 = (v22 + a6);
      v22 = (v22 + a6 + a6);
      v125 -= 2;
      v144->i32[0] = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v139, v131, v128), *a8.i8, v127), v140, v129), 6uLL).u32[0];
      *a8.i8 = v131;
    }

    while (v125 > 2);
  }

  return *a8.i64;
}

uint64_t sub_2774220B8(uint64_t result, int a2, char a3, uint64_t a4, uint64_t _X4, uint64_t a6, int8x8_t *a7, double a8, double a9, double a10, double a11, double a12, uint16x8_t a13, double a14, int8x16_t a15)
{
  v15 = 2 * a4;
  if (result < 16)
  {
    v32 = result;
  }

  else
  {
    v16 = qword_27750DD20[(a3 & 7) - 1];
    v17 = a7 + a6;
    v18 = vdupq_lane_s8(v16, 0);
    v19 = vdup_lane_s8(v16, 1);
    v20 = vdup_lane_s8(v16, 2);
    v21 = vdup_lane_s8(v16, 3);
    do
    {
      v22 = 0;
      v23 = -2;
      v24 = a2 + 2;
      do
      {
        v25 = *(_X4 + v23);
        a13.i64[0] = *(_X4 + v23 + 16);
        v26 = (_X4 + v23 + a4);
        a15.i64[0] = v26[1].i64[0];
        v27 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v25, v25, 2uLL), v19), *&vextq_s8(v25, v25, 4uLL), v20), *v25.i8, *v18.i8), *&vextq_s8(v25, v25, 6uLL), v21);
        v28 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v25, a13, 0xAuLL), v19), *&vextq_s8(v25, a13, 0xCuLL), v20), v25, v18), *&vextq_s8(v25, a13, 0xEuLL), v21);
        v29 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(*v26, *v26, 2uLL), v19), *&vextq_s8(*v26, *v26, 4uLL), v20), *v26->i8, *v18.i8), *&vextq_s8(*v26, *v26, 6uLL), v21);
        v30 = vextq_s8(*v26, a15, 0xAuLL).u64[0];
        v31 = vextq_s8(*v26, a15, 0xCuLL).u64[0];
        a15 = vextq_s8(*v26, a15, 0xEuLL);
        a13 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(v30, v19), v31, v20), *v26, v18), *a15.i8, v21);
        *&a7->i8[v22] = vqrshrun_high_n_s16(vqrshrun_n_s16(v27, 6uLL), v28, 6uLL);
        *&v17[v22] = vqrshrun_high_n_s16(vqrshrun_n_s16(v29, 6uLL), a13, 6uLL);
        v22 += 2 * a6;
        v23 += v15;
        v24 -= 2;
      }

      while (v24 > 2);
      a7 += 2;
      _X4 += 16;
      v32 = result - 16;
      v17 += 16;
      v33 = result > 0x1F;
      result = (result - 16);
    }

    while (v33);
  }

  v34 = 4 * a4;
  if ((v32 & 8) != 0)
  {
    v35 = qword_27750DD20[(a3 & 7) - 1];
    v36 = a2 + 2;
    v37 = vdup_lane_s8(v35, 0);
    v38 = vdup_lane_s8(v35, 1);
    v39 = vdup_lane_s8(v35, 2);
    v40 = vdup_lane_s8(v35, 3);
    _X15 = _X4;
    v42 = a7;
    do
    {
      v43 = *(_X15 - 2);
      __asm { PRFUM           #0, [X15,#0x1D] }

      _X17 = _X15 + v34 - 2;
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0xF]
      }

      _X17 = _X15 + a4;
      v53 = *(_X15 + a4 - 2);
      __asm { PRFUM           #0, [X17,#0x1D] }

      _X17 = _X15 + v34 - 2 + a4;
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0xF]
      }

      *v42 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v43, v43, 2uLL), v38), *&vextq_s8(v43, v43, 4uLL), v39), *v43.i8, v37), *&vextq_s8(v43, v43, 6uLL), v40), 6uLL);
      v58 = (v42 + a6);
      *v58 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v53, v53, 2uLL), v38), *&vextq_s8(v53, v53, 4uLL), v39), *v53.i8, v37), *&vextq_s8(v53, v53, 6uLL), v40), 6uLL);
      v42 = (v58 + a6);
      v36 -= 2;
      _X15 += v15;
    }

    while (v36 > 2);
    ++a7;
    _X4 += 8;
  }

  if ((v32 & 4) != 0)
  {
    v59 = qword_27750DD20[(a3 & 7) - 1];
    v60 = a2 + 2;
    v61 = v34 - 2;
    v62 = vdup_lane_s8(v59, 0);
    v63 = vdup_lane_s8(v59, 1);
    v64 = vdup_lane_s8(v59, 2);
    v65 = vdup_lane_s8(v59, 3);
    do
    {
      v66 = *(_X4 - 2);
      __asm { PRFUM           #0, [X4,#0x1D] }

      _X12 = _X4 + v61;
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0xF]
      }

      _X12 = _X4 + a4;
      v72 = *(_X4 + a4 - 2);
      __asm { PRFUM           #0, [X12,#0x1D] }

      _X12 = _X4 + v61 + a4;
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0xF]
      }

      a7->i32[0] = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v66, v66, 2uLL), v63), *&vextq_s8(v66, v66, 4uLL), v64), *v66.i8, v62), *&vextq_s8(v66, v66, 6uLL), v65), 6uLL).u32[0];
      *(a7->i32 + a6) = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v72, v72, 2uLL), v63), *&vextq_s8(v72, v72, 4uLL), v64), *v72.i8, v62), *&vextq_s8(v72, v72, 6uLL), v65), 6uLL).u32[0];
      a7 = (a7 + a6 + a6);
      v60 -= 2;
      _X4 += v15;
    }

    while (v60 > 2);
  }

  return result;
}

uint64_t sub_277422360(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 8uLL);
    v17 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3));
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 8uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 8uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3));
    v42 = vshrq_n_u16(*_X17, 8uLL);
    v43 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3));
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 8uLL);
      v57 = vshrq_n_u16(_X5[1], 8uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v29.i8, v11, 0), *v41.i8, v11, 1);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v29, v11, 0), v41, v11, 1);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3);
      v69 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v51 = vuzp1q_s16(v68, v69);
      --v55;
      *v52 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), vmovn_s32(v68), v11, 3), v14), 6uLL), vaddq_s32(vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vmovn_s32(v69), v11, 3), v14), 6uLL);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v70 = result - 8;
    v12 += 16;
    v13 += 16;
    v71 = result > 0xF;
    result = (result - 8);
  }

  while (v71);
  if (v70)
  {
LABEL_9:
    v72 = qword_27750DD60[2 * (a3 & 7) - 2];
    v73 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v75 = vshr_n_u16(*_X10, 8uLL);
    v76 = vshrq_n_u16(*(_X10 + 4), 8uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v81 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v76.i8, v72, 1), v75, v72, 0), *&vextq_s8(v76, v76, 4uLL), v72, 2), v76, v72, 3));
    v82 = vshrq_n_u16(*_X4, 8uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v88 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v82.i8, v72, 1), vshr_n_u16(*(_X4 - 4), 8uLL), v72, 0), *&vextq_s8(v82, v82, 4uLL), v72, 2), v82, v72, 3));
    *v76.i8 = vshr_n_u16(*_X10, 8uLL);
    v89 = vshrq_n_u16(*(_X4 + 2 * a4), 8uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v94 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v89.i8, v72, 1), *v76.i8, v72, 0), *&vextq_s8(v89, v89, 4uLL), v72, 2), v89, v72, 3));
    v95 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v98.i64[0] = 0x38000000380000;
      v98.i64[1] = 0x38000000380000;
      v99 = vshrq_n_u16(*_X12, 8uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v103 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v98, v81, v73, 0), v88, v73, 1), v94, v73, 2);
      v81 = v88;
      v88 = v94;
      v94 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v99.i8, v72, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 8uLL), v72, 0), *&vextq_s8(v99, v99, 4uLL), v72, 2), v99, v72, 3));
      --v95;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_lane_s16(v103, v94, v73, 3), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v95 > 1);
  }

  return result;
}

unint64_t sub_2774226EC(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xE000E000E000E000;
  v14.i64[1] = 0xE000E000E000E000;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 8uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 8uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 8uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      v20 = v33;
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 8uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = *&v30[v10];
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vaddq_s16(vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(v39, *v20.i8, v11, 2), *v26.i8, v11, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(v40, v20, v11, 2), v26, v11, 3)), v14);
      v33 = vshrq_n_u16(v46, 8uLL);
      *&v38[v10] = vaddq_s16(vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3)), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v54 = result - 8;
    v10 += 16;
    v55 = result > 0xF;
    result = (result - 8);
  }

  while (v55);
  if (v54)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v57 = *_X12;
    _X12 = (_X12 + 14);
    v58 = qword_27750DD60[2 * v7 - 2];
    v59 = vshr_n_u16(v57, 8uLL);
    __asm { PRFM            #0, [X12] }

    v61 = vshr_n_u16(*_X4->i8, 8uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v64 = *_X11;
    _X11 = (_X11 + 14);
    v65 = vshr_n_u16(v64, 8uLL);
    __asm { PRFM            #0, [X11] }

    v67 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v72 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v74 = vmlal_lane_s16(vmull_lane_s16(v61, v58, 1), v59, v58, 0);
      v75 = vmlal_lane_s16(vmull_lane_s16(v65, v58, 1), v61, v58, 0);
      v61 = vshr_n_u16(*_X4->i8, 8uLL);
      v76 = vmlal_lane_s16(v74, v65, v58, 2);
      v59 = v65;
      v65 = vshr_n_u16(v72, 8uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vadd_s16(vmovn_s32(vmlal_lane_s16(v76, v61, v58, 3)), 0xE000E000E000E000);
      *(v15 + 2 * a6) = vadd_s16(vmovn_s32(vmlal_lane_s16(vmlal_lane_s16(v75, v61, v58, 2), v65, v58, 3)), 0xE000E000E000E000);
      v15 = (v15 + v8);
      v67 -= 2;
    }

    while (v67 > 2);
  }

  return result;
}

uint64_t sub_277422974(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xE000E000E000E000;
  v12.i64[1] = 0xE000E000E000E000;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 8uLL);
      v17 = vshrq_n_u16(_X15[1], 8uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vaddq_s16(vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3)), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 8uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vadd_s16(vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 8uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3)), 0xE000E000E000E000);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_277422AB8(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 8uLL);
    v17 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3));
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 8uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 8uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3));
    v42 = vshrq_n_u16(*_X17, 8uLL);
    v43 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vuzp1q_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3));
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 8uLL);
      v57 = vshrq_n_u16(_X5[1], 8uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v41.i8, v11, 1), *v29.i8, v11, 0);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v41, v11, 1), v29, v11, 0);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3);
      v69 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v51 = vuzp1q_s16(v68, v69);
      --v55;
      *v52 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), vmovn_s32(v68), v11, 3), 0xCuLL), vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vmovn_s32(v69), v11, 3), 0xCuLL), v14);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v70 = result - 8;
    v12 += 16;
    v13 += 16;
    v71 = result > 0xF;
    result = (result - 8);
  }

  while (v71);
  if (v70)
  {
LABEL_9:
    v72 = qword_27750DD60[2 * (a3 & 7) - 2];
    v73 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v75 = vshr_n_u16(*_X10, 8uLL);
    v76 = vshrq_n_u16(*(_X10 + 4), 8uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v81 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v76.i8, v72, 1), v75, v72, 0), *&vextq_s8(v76, v76, 4uLL), v72, 2), v76, v72, 3));
    v82 = vshrq_n_u16(*_X4, 8uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v88 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v82.i8, v72, 1), vshr_n_u16(*(_X4 - 4), 8uLL), v72, 0), *&vextq_s8(v82, v82, 4uLL), v72, 2), v82, v72, 3));
    *v76.i8 = vshr_n_u16(*_X10, 8uLL);
    v89 = vshrq_n_u16(*(_X4 + 2 * a4), 8uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v94 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v89.i8, v72, 1), *v76.i8, v72, 0), *&vextq_s8(v89, v89, 4uLL), v72, 2), v89, v72, 3));
    v95 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v98 = vshrq_n_u16(*_X12, 8uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v102 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v88, v73, 1), v81, v73, 0), v94, v73, 2);
      v81 = v88;
      v88 = v94;
      v94 = vmovn_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v98.i8, v72, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 8uLL), v72, 0), *&vextq_s8(v98, v98, 4uLL), v72, 2), v98, v72, 3));
      --v95;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v102, v94, v73, 3), 0xCuLL), 0xFF00FF00FF00FFLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v95 > 1);
  }

  return result;
}

unint64_t sub_277422E48(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 8uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 8uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 8uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 8uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = vmlal_lane_s16(v39, *v33.i8, v11, 2);
      v47 = vmlal_high_lane_s16(v40, v33, v11, 2);
      v20 = v33;
      v33 = vshrq_n_u16(*&v30[v10], 8uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(v46, *v26.i8, v11, 3), 6uLL), vmlal_high_lane_s16(v47, v26, v11, 3), 6uLL), v14);
      *&v38[v10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3), 6uLL), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v55 = result - 8;
    v10 += 16;
    v56 = result > 0xF;
    result = (result - 8);
  }

  while (v56);
  if (v55)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v58 = *_X12;
    _X12 = (_X12 + 14);
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = vshr_n_u16(v58, 8uLL);
    __asm { PRFM            #0, [X12] }

    v62 = vshr_n_u16(*_X4->i8, 8uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v65 = *_X11;
    _X11 = (_X11 + 14);
    v66 = vshr_n_u16(v65, 8uLL);
    __asm { PRFM            #0, [X11] }

    v68 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v73 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v75 = vmlal_lane_s16(vmull_lane_s16(v62, v59, 1), v60, v59, 0);
      v76 = vmlal_lane_s16(vmull_lane_s16(v66, v59, 1), v62, v59, 0);
      v62 = vshr_n_u16(*_X4->i8, 8uLL);
      v77 = vmlal_lane_s16(v75, v66, v59, 2);
      v60 = v66;
      v66 = vshr_n_u16(v73, 8uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v77, v62, v59, 3), 6uLL), 0xFF00FF00FF00FFLL);
      *(v15 + 2 * a6) = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v76, v62, v59, 2), v66, v59, 3), 6uLL), 0xFF00FF00FF00FFLL);
      v15 = (v15 + v8);
      v68 -= 2;
    }

    while (v68 > 2);
  }

  return result;
}

uint64_t sub_2774230DC(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xFF00FF00FF00FFLL;
  v12.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 8uLL);
      v17 = vshrq_n_u16(_X15[1], 8uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 6uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 8uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 8uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3), 6uLL), 0xFF00FF00FF00FFLL);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_277423228(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 7uLL);
    v17 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 1uLL);
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 7uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 7uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3), 1uLL);
    v42 = vshrq_n_u16(*_X17, 7uLL);
    v43 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3), 1uLL);
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 7uLL);
      v57 = vshrq_n_u16(_X5[1], 7uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v29.i8, v11, 0), *v41.i8, v11, 1);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v29, v11, 0), v41, v11, 1);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v69 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3), 1uLL);
      v70 = vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), v69, v11, 3);
      v51 = vshrn_high_n_s32(v69, v68, 1uLL);
      --v55;
      *v52 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v70, v14), 6uLL), vaddq_s32(vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vshrn_n_s32(v68, 1uLL), v11, 3), v14), 6uLL);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v71 = result - 8;
    v12 += 16;
    v13 += 16;
    v72 = result > 0xF;
    result = (result - 8);
  }

  while (v72);
  if (v71)
  {
LABEL_9:
    v73 = qword_27750DD60[2 * (a3 & 7) - 2];
    v74 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v76 = vshr_n_u16(*_X10, 7uLL);
    v77 = vshrq_n_u16(*(_X10 + 4), 7uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v82 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, v73, 1), v76, v73, 0), *&vextq_s8(v77, v77, 4uLL), v73, 2), v77, v73, 3), 1uLL);
    v83 = vshrq_n_u16(*_X4, 7uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v89 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v83.i8, v73, 1), vshr_n_u16(*(_X4 - 4), 7uLL), v73, 0), *&vextq_s8(v83, v83, 4uLL), v73, 2), v83, v73, 3), 1uLL);
    *v77.i8 = vshr_n_u16(*_X10, 7uLL);
    v90 = vshrq_n_u16(*(_X4 + 2 * a4), 7uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v90.i8, v73, 1), *v77.i8, v73, 0), *&vextq_s8(v90, v90, 4uLL), v73, 2), v90, v73, 3), 1uLL);
    v96 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v99.i64[0] = 0x38000000380000;
      v99.i64[1] = 0x38000000380000;
      v100 = vshrq_n_u16(*_X12, 7uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v104 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v99, v82, v74, 0), v89, v74, 1), v95, v74, 2);
      v82 = v89;
      v89 = v95;
      v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v100.i8, v73, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 7uLL), v73, 0), *&vextq_s8(v100, v100, 4uLL), v73, 2), v100, v73, 3), 1uLL);
      --v96;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_lane_s16(v104, v95, v74, 3), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v96 > 1);
  }

  return result;
}

unint64_t sub_2774235C0(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xE000E000E000E000;
  v14.i64[1] = 0xE000E000E000E000;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 7uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 7uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 7uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 7uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = vmlal_lane_s16(v39, *v33.i8, v11, 2);
      v47 = vmlal_high_lane_s16(v40, v33, v11, 2);
      v20 = v33;
      v33 = vshrq_n_u16(*&v30[v10], 7uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v46, *v26.i8, v11, 3), 1uLL), vmlal_high_lane_s16(v47, v26, v11, 3), 1uLL), v14);
      *&v38[v10] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3), 1uLL), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v55 = result - 8;
    v10 += 16;
    v56 = result > 0xF;
    result = (result - 8);
  }

  while (v56);
  if (v55)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v58 = *_X12;
    _X12 = (_X12 + 14);
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = vshr_n_u16(v58, 7uLL);
    __asm { PRFM            #0, [X12] }

    v62 = vshr_n_u16(*_X4->i8, 7uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v65 = *_X11;
    _X11 = (_X11 + 14);
    v66 = vshr_n_u16(v65, 7uLL);
    __asm { PRFM            #0, [X11] }

    v68 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v73 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v75 = vmlal_lane_s16(vmull_lane_s16(v62, v59, 1), v60, v59, 0);
      v76 = vmlal_lane_s16(vmull_lane_s16(v66, v59, 1), v62, v59, 0);
      v62 = vshr_n_u16(*_X4->i8, 7uLL);
      v77 = vmlal_lane_s16(v75, v66, v59, 2);
      v60 = v66;
      v66 = vshr_n_u16(v73, 7uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vadd_s16(vshrn_n_s32(vmlal_lane_s16(v77, v62, v59, 3), 1uLL), 0xE000E000E000E000);
      *(v15 + 2 * a6) = vadd_s16(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v76, v62, v59, 2), v66, v59, 3), 1uLL), 0xE000E000E000E000);
      v15 = (v15 + v8);
      v68 -= 2;
    }

    while (v68 > 2);
  }

  return result;
}

uint64_t sub_277423850(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xE000E000E000E000;
  v12.i64[1] = 0xE000E000E000E000;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 7uLL);
      v17 = vshrq_n_u16(_X15[1], 7uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 1uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 7uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 7uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3), 1uLL), 0xE000E000E000E000);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_277423998(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 7uLL);
    v17 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 1uLL);
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 7uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 7uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3), 1uLL);
    v42 = vshrq_n_u16(*_X17, 7uLL);
    v43 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), 1uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3), 1uLL);
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 7uLL);
      v57 = vshrq_n_u16(_X5[1], 7uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v41.i8, v11, 1), *v29.i8, v11, 0);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v41, v11, 1), v29, v11, 0);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v69 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3), 1uLL);
      v70 = vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), v69, v11, 3);
      v51 = vshrn_high_n_s32(v69, v68, 1uLL);
      --v55;
      *v52 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v70, 0xBuLL), vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vshrn_n_s32(v68, 1uLL), v11, 3), 0xBuLL), v14);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v71 = result - 8;
    v12 += 16;
    v13 += 16;
    v72 = result > 0xF;
    result = (result - 8);
  }

  while (v72);
  if (v71)
  {
LABEL_9:
    v73 = qword_27750DD60[2 * (a3 & 7) - 2];
    v74 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v76 = vshr_n_u16(*_X10, 7uLL);
    v77 = vshrq_n_u16(*(_X10 + 4), 7uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v82 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, v73, 1), v76, v73, 0), *&vextq_s8(v77, v77, 4uLL), v73, 2), v77, v73, 3), 1uLL);
    v83 = vshrq_n_u16(*_X4, 7uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v89 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v83.i8, v73, 1), vshr_n_u16(*(_X4 - 4), 7uLL), v73, 0), *&vextq_s8(v83, v83, 4uLL), v73, 2), v83, v73, 3), 1uLL);
    *v77.i8 = vshr_n_u16(*_X10, 7uLL);
    v90 = vshrq_n_u16(*(_X4 + 2 * a4), 7uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v90.i8, v73, 1), *v77.i8, v73, 0), *&vextq_s8(v90, v90, 4uLL), v73, 2), v90, v73, 3), 1uLL);
    v96 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v99 = vshrq_n_u16(*_X12, 7uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v103 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v89, v74, 1), v82, v74, 0), v95, v74, 2);
      v82 = v89;
      v89 = v95;
      v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v99.i8, v73, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 7uLL), v73, 0), *&vextq_s8(v99, v99, 4uLL), v73, 2), v99, v73, 3), 1uLL);
      --v96;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v103, v95, v74, 3), 0xBuLL), 0xFE00FE00FE00FE00);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v96 > 1);
  }

  return result;
}

unint64_t sub_277423D34(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 7uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 7uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 7uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 7uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = vmlal_lane_s16(v39, *v33.i8, v11, 2);
      v47 = vmlal_high_lane_s16(v40, v33, v11, 2);
      v20 = v33;
      v33 = vshrq_n_u16(*&v30[v10], 7uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(v46, *v26.i8, v11, 3), 6uLL), vmlal_high_lane_s16(v47, v26, v11, 3), 6uLL), v14);
      *&v38[v10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3), 6uLL), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v55 = result - 8;
    v10 += 16;
    v56 = result > 0xF;
    result = (result - 8);
  }

  while (v56);
  if (v55)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v58 = *_X12;
    _X12 = (_X12 + 14);
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = vshr_n_u16(v58, 7uLL);
    __asm { PRFM            #0, [X12] }

    v62 = vshr_n_u16(*_X4->i8, 7uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v65 = *_X11;
    _X11 = (_X11 + 14);
    v66 = vshr_n_u16(v65, 7uLL);
    __asm { PRFM            #0, [X11] }

    v68 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v73 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v75 = vmlal_lane_s16(vmull_lane_s16(v62, v59, 1), v60, v59, 0);
      v76 = vmlal_lane_s16(vmull_lane_s16(v66, v59, 1), v62, v59, 0);
      v62 = vshr_n_u16(*_X4->i8, 7uLL);
      v77 = vmlal_lane_s16(v75, v66, v59, 2);
      v60 = v66;
      v66 = vshr_n_u16(v73, 7uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v77, v62, v59, 3), 6uLL), 0xFE00FE00FE00FE00);
      *(v15 + 2 * a6) = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v76, v62, v59, 2), v66, v59, 3), 6uLL), 0xFE00FE00FE00FE00);
      v15 = (v15 + v8);
      v68 -= 2;
    }

    while (v68 > 2);
  }

  return result;
}

uint64_t sub_277423FC8(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xFE00FE00FE00FE00;
  v12.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 7uLL);
      v17 = vshrq_n_u16(_X15[1], 7uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 6uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 7uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 7uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3), 6uLL), 0xFE00FE00FE00FE00);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_277424114(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = vdupq_lane_s16(v10, 0);
  v13 = vdupq_lane_s16(v10, 3);
  v14 = vdupq_lane_s16(v10, 1);
  v15 = vdupq_lane_s16(v10, 2);
  v16 = _X4 + 12 * a4 - 4;
  v17 = _X4 + 4 * a4 - 4;
  v18.i64[0] = 0x38000000380000;
  v18.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v20 = vshrq_n_u16(*_X17, 6uLL);
    v21 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v30 = vextq_s8(v20, v21, 4uLL);
    v31 = vextq_s8(v20, v21, 8uLL);
    v32 = vmlaq_s16(vmulq_s16(v20, v12), vextq_s8(v20, v21, 0xCuLL), v13);
    v33 = vmulq_s16(v30, v14);
    v34 = vmulq_s16(v31, v15);
    v35 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v34.i8, *v33.i8), *v32.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v33, v34), v32), 2uLL);
    _X17 = _X4 - 4;
    v37 = vshrq_n_u16(*(_X4 - 4), 6uLL);
    v38 = vshrq_n_u16(*(_X4 + 12), 6uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v44 = vextq_s8(v37, v38, 4uLL);
    v45 = vextq_s8(v37, v38, 8uLL);
    v46 = vmlaq_s16(vmulq_s16(v37, v12), vextq_s8(v37, v38, 0xCuLL), v13);
    v47 = vmulq_s16(v44, v14);
    v48 = vmulq_s16(v45, v15);
    v49 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v48.i8, *v47.i8), *v46.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v47, v48), v46), 2uLL);
    v50 = vshrq_n_u16(*_X17, 6uLL);
    v51 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v56 = vextq_s8(v50, v51, 4uLL);
    v57 = vextq_s8(v50, v51, 8uLL);
    v58 = vmlaq_s16(vmulq_s16(v50, v12), vextq_s8(v50, v51, 0xCuLL), v13);
    v59 = vmulq_s16(v56, v14);
    v60 = vmulq_s16(v57, v15);
    v61 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v60.i8, *v59.i8), *v58.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v59, v60), v58), 2uLL);
    v62 = a7;
    _X5 = v17;
    _X7 = v16;
    v65 = a2 + 1;
    do
    {
      v66 = vshrq_n_u16(*_X5, 6uLL);
      v67 = vshrq_n_u16(_X5[1], 6uLL);
      v68 = vextq_s8(v66, v67, 4uLL);
      v69 = vextq_s8(v66, v67, 8uLL);
      v70 = vmlaq_s16(vmulq_s16(v66, v12), vextq_s8(v66, v67, 0xCuLL), v13);
      v71 = vmulq_s16(v68, v14);
      v72 = vmulq_s16(v69, v15);
      v73 = vaddl_u16(*v72.i8, *v71.i8);
      v74 = vaddl_high_u16(v71, v72);
      v75 = vmlal_lane_s16(vmull_lane_s16(*v35.i8, v11, 0), *v49.i8, v11, 1);
      v76 = vmlal_high_lane_s16(vmull_high_lane_s16(v35, v11, 0), v49, v11, 1);
      v35 = v49;
      v49 = v61;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v80 = vaddw_s16(v73, *v70.i8);
      v81 = vaddw_high_s16(v74, v70);
      *v80.i8 = vshrn_n_s32(v80, 2uLL);
      v82 = vmlal_lane_s16(vmlal_lane_s16(v75, *v49.i8, v11, 2), *v80.i8, v11, 3);
      v61 = vshrn_high_n_s32(*v80.i8, v81, 2uLL);
      --v65;
      *v62 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v82, v18), 6uLL), vaddq_s32(vmlal_lane_s16(vmlal_high_lane_s16(v76, v49, v11, 2), vshrn_n_s32(v81, 2uLL), v11, 3), v18), 6uLL);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v62 = (v62 + v9);
    }

    while (v65 > 1);
    a7 += 2;
    _X4 += 16;
    v83 = result - 8;
    v16 += 16;
    v17 += 16;
    v84 = result > 0xF;
    result = (result - 8);
  }

  while (v84);
  if (v83)
  {
LABEL_9:
    v85 = qword_27750DD60[2 * (a3 & 7) - 2];
    v86 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v88 = vshr_n_u16(*_X10, 6uLL);
    v89 = vshrq_n_u16(*(_X10 + 4), 6uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v94 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v89.i8, v85, 1), v88, v85, 0), *&vextq_s8(v89, v89, 4uLL), v85, 2), v89, v85, 3), 2uLL);
    v95 = vshrq_n_u16(*_X4, 6uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v101 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v95.i8, v85, 1), vshr_n_u16(*(_X4 - 4), 6uLL), v85, 0), *&vextq_s8(v95, v95, 4uLL), v85, 2), v95, v85, 3), 2uLL);
    *v89.i8 = vshr_n_u16(*_X10, 6uLL);
    v102 = vshrq_n_u16(*(_X4 + 2 * a4), 6uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v107 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v102.i8, v85, 1), *v89.i8, v85, 0), *&vextq_s8(v102, v102, 4uLL), v85, 2), v102, v85, 3), 2uLL);
    v108 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v111.i64[0] = 0x38000000380000;
      v111.i64[1] = 0x38000000380000;
      v112 = vshrq_n_u16(*_X12, 6uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v116 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v111, v94, v86, 0), v101, v86, 1), v107, v86, 2);
      v94 = v101;
      v101 = v107;
      v107 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v112.i8, v85, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 6uLL), v85, 0), *&vextq_s8(v112, v112, 4uLL), v85, 2), v112, v85, 3), 2uLL);
      --v108;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_lane_s16(v116, v107, v86, 3), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v108 > 1);
  }

  return result;
}

unint64_t sub_2774244BC(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v21 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = vdupq_lane_s16(v11, 0);
  v13 = vdupq_lane_s16(v11, 3);
  v14 = vdupq_lane_s16(v11, 1);
  v15 = vdupq_lane_s16(v11, 2);
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  v18 = &_X4->i8[14 * a4];
  v19 = &_X4->i8[6 * a4];
  v20.i64[0] = 0xE000E000E000E000;
  v20.i64[1] = 0xE000E000E000E000;
  v21 = a7;
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v23 = *_X20;
    _X20 += 30;
    v24 = vshrq_n_u16(v23, 6uLL);
    __asm { PRFM            #0, [X20] }

    v30 = vshrq_n_u16(*_X4, 6uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v33 = *_X23;
    _X23 += 30;
    v34 = v19;
    v35 = v18;
    v36 = v17;
    v37 = vshrq_n_u16(v33, 6uLL);
    __asm { PRFM            #0, [X23] }

    v39 = v16;
    v40 = a2 + 2;
    v41 = a7;
    v42 = a7 + 2 * a6;
    do
    {
      v43 = vmulq_s16(v24, v12);
      _X27 = &v36[v10 + 30];
      __asm { PRFM            #0, [X27] }

      _X27 = &v34[v10 + 30];
      v47 = vmulq_s16(v30, v14);
      v48 = vmulq_s16(v30, v12);
      v30 = vshrq_n_u16(*&v36[v10], 6uLL);
      v49 = vmulq_s16(v37, v15);
      v50 = vmulq_s16(v37, v14);
      v24 = v37;
      v37 = vshrq_n_u16(*&v34[v10], 6uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v35[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v39[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      v58 = vmlaq_s16(v43, v30, v13);
      v59 = vmlaq_s16(v48, v37, v13);
      v60 = vmulq_s16(v30, v15);
      *v41[v10 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v47.i8, *v49.i8), *v58.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v47, v49), v58), 2uLL), v20);
      *&v42[v10] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v60.i8, *v50.i8), *v59.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v60, v50), v59), 2uLL), v20);
      v42 += v8;
      v41 = (v41 + v8);
      v40 -= 2;
      v39 = (v39 + v9);
      v36 += v9;
      v35 += v9;
      v34 += v9;
    }

    while (v40 > 2);
    v21 += 2;
    ++_X4;
    v61 = result - 8;
    v10 += 16;
    v62 = result > 0xF;
    result = (result - 8);
  }

  while (v62);
  if (v61)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v64 = *_X12;
    _X12 = (_X12 + 14);
    v65 = qword_27750DD60[2 * v7 - 2];
    v66 = vshr_n_u16(v64, 6uLL);
    __asm { PRFM            #0, [X12] }

    v68 = vshr_n_u16(*_X4->i8, 6uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v71 = *_X11;
    _X11 = (_X11 + 14);
    v72 = vshr_n_u16(v71, 6uLL);
    __asm { PRFM            #0, [X11] }

    v74 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v79 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v81 = vmlal_lane_s16(vmull_lane_s16(v68, v65, 1), v66, v65, 0);
      v82 = vmlal_lane_s16(vmull_lane_s16(v72, v65, 1), v68, v65, 0);
      v68 = vshr_n_u16(*_X4->i8, 6uLL);
      v83 = vmlal_lane_s16(v81, v72, v65, 2);
      v66 = v72;
      v72 = vshr_n_u16(v79, 6uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v21 = vadd_s16(vshrn_n_s32(vmlal_lane_s16(v83, v68, v65, 3), 2uLL), 0xE000E000E000E000);
      *(v21 + 2 * a6) = vadd_s16(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v82, v68, v65, 2), v72, v65, 3), 2uLL), 0xE000E000E000E000);
      v21 = (v21 + v8);
      v74 -= 2;
    }

    while (v74 > 2);
  }

  return result;
}

uint64_t sub_27742475C(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = vdupq_lane_s16(v10, 0);
  v12 = vdupq_lane_s16(v10, 3);
  v13 = vdupq_lane_s16(v10, 1);
  v14 = vdupq_lane_s16(v10, 2);
  v15 = (_X4 - 4);
  v16.i64[0] = 0xE000E000E000E000;
  v16.i64[1] = 0xE000E000E000E000;
  do
  {
    v17 = a7;
    _X15 = v15;
    v19 = a2 + 1;
    do
    {
      v20 = vshrq_n_u16(*_X15, 6uLL);
      v21 = vshrq_n_u16(_X15[1], 6uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v30 = vextq_s8(v20, v21, 4uLL);
      v31 = vextq_s8(v20, v21, 8uLL);
      v32 = vmlaq_s16(vmulq_s16(v20, v11), vextq_s8(v20, v21, 0xCuLL), v12);
      v33 = vmulq_s16(v30, v13);
      v34 = vmulq_s16(v31, v14);
      *v17 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v34.i8, *v33.i8), *v32.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v33, v34), v32), 2uLL), v16);
      --v19;
      _X15 = (_X15 + v8);
      v17 = (v17 + v9);
    }

    while (v19 > 1);
    a7 += 2;
    ++_X4;
    v35 = result - 8;
    ++v15;
    v36 = result > 0xF;
    result = (result - 8);
  }

  while (v36);
  if (v35)
  {
LABEL_9:
    v37 = qword_27750DD60[2 * (a3 & 7) - 2];
    v38 = a2 + 1;
    v39 = v7 - 4;
    do
    {
      v40 = vshrq_n_u16(*_X4, 6uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v39];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v40.i8, v37, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 6uLL), v37, 0), *&vextq_s8(v40, v40, 4uLL), v37, 2), v40, v37, 3), 2uLL), 0xE000E000E000E000);
      --v38;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v38 > 1);
  }

  return result;
}

uint64_t sub_2774248B4(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = vdupq_lane_s16(v10, 0);
  v13 = vdupq_lane_s16(v10, 3);
  v14 = vdupq_lane_s16(v10, 1);
  v15 = vdupq_lane_s16(v10, 2);
  v16 = _X4 + 12 * a4 - 4;
  v17 = _X4 + 4 * a4 - 4;
  v18.i64[0] = 0xFC00FC00FC00FC00;
  v18.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v20 = vshrq_n_u16(*_X17, 6uLL);
    v21 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v30 = vextq_s8(v20, v21, 4uLL);
    v31 = vextq_s8(v20, v21, 8uLL);
    v32 = vmlaq_s16(vmulq_s16(v20, v12), vextq_s8(v20, v21, 0xCuLL), v13);
    v33 = vmulq_s16(v30, v14);
    v34 = vmulq_s16(v31, v15);
    v35 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v34.i8, *v33.i8), *v32.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v33, v34), v32), 2uLL);
    _X17 = _X4 - 4;
    v37 = vshrq_n_u16(*(_X4 - 4), 6uLL);
    v38 = vshrq_n_u16(*(_X4 + 12), 6uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v44 = vextq_s8(v37, v38, 4uLL);
    v45 = vextq_s8(v37, v38, 8uLL);
    v46 = vmlaq_s16(vmulq_s16(v37, v12), vextq_s8(v37, v38, 0xCuLL), v13);
    v47 = vmulq_s16(v44, v14);
    v48 = vmulq_s16(v45, v15);
    v49 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v48.i8, *v47.i8), *v46.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v47, v48), v46), 2uLL);
    v50 = vshrq_n_u16(*_X17, 6uLL);
    v51 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v56 = vextq_s8(v50, v51, 4uLL);
    v57 = vextq_s8(v50, v51, 8uLL);
    v58 = vmlaq_s16(vmulq_s16(v50, v12), vextq_s8(v50, v51, 0xCuLL), v13);
    v59 = vmulq_s16(v56, v14);
    v60 = vmulq_s16(v57, v15);
    v61 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v60.i8, *v59.i8), *v58.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v59, v60), v58), 2uLL);
    v62 = a7;
    _X5 = v17;
    _X7 = v16;
    v65 = a2 + 1;
    do
    {
      v66 = vmlal_lane_s16(vmull_lane_s16(*v49.i8, v11, 1), *v35.i8, v11, 0);
      v67 = vmlal_high_lane_s16(vmull_high_lane_s16(v49, v11, 1), v35, v11, 0);
      v35 = v49;
      v49 = v61;
      v68 = vshrq_n_u16(*_X5, 6uLL);
      v69 = vshrq_n_u16(_X5[1], 6uLL);
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v73 = vextq_s8(v68, v69, 4uLL);
      v74 = vextq_s8(v68, v69, 8uLL);
      v75 = vmlaq_s16(vmulq_s16(v68, v12), vextq_s8(v68, v69, 0xCuLL), v13);
      v76 = vmulq_s16(v73, v14);
      v77 = vmulq_s16(v74, v15);
      v78 = vaddl_u16(*v77.i8, *v76.i8);
      v79 = vaddw_high_s16(vaddl_high_u16(v76, v77), v75);
      *v75.i8 = vshrn_n_s32(vaddw_s16(v78, *v75.i8), 2uLL);
      v80 = vmlal_lane_s16(vmlal_lane_s16(v66, *v49.i8, v11, 2), *v75.i8, v11, 3);
      v61 = vshrn_high_n_s32(*v75.i8, v79, 2uLL);
      --v65;
      *v62 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v80, 0xAuLL), vmlal_lane_s16(vmlal_high_lane_s16(v67, v49, v11, 2), vshrn_n_s32(v79, 2uLL), v11, 3), 0xAuLL), v18);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v62 = (v62 + v9);
    }

    while (v65 > 1);
    a7 += 2;
    _X4 += 16;
    v81 = result - 8;
    v16 += 16;
    v17 += 16;
    v82 = result > 0xF;
    result = (result - 8);
  }

  while (v82);
  if (v81)
  {
LABEL_9:
    v83 = qword_27750DD60[2 * (a3 & 7) - 2];
    v84 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v86 = vshr_n_u16(*_X10, 6uLL);
    v87 = vshrq_n_u16(*(_X10 + 4), 6uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v92 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v87.i8, v83, 1), v86, v83, 0), *&vextq_s8(v87, v87, 4uLL), v83, 2), v87, v83, 3), 2uLL);
    v93 = vshrq_n_u16(*_X4, 6uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v99 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v93.i8, v83, 1), vshr_n_u16(*(_X4 - 4), 6uLL), v83, 0), *&vextq_s8(v93, v93, 4uLL), v83, 2), v93, v83, 3), 2uLL);
    *v87.i8 = vshr_n_u16(*_X10, 6uLL);
    v100 = vshrq_n_u16(*(_X4 + 2 * a4), 6uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v105 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v100.i8, v83, 1), *v87.i8, v83, 0), *&vextq_s8(v100, v100, 4uLL), v83, 2), v100, v83, 3), 2uLL);
    v106 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v109 = vshrq_n_u16(*_X12, 6uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v113 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v99, v84, 1), v92, v84, 0), v105, v84, 2);
      v92 = v99;
      v99 = v105;
      v105 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v109.i8, v83, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 6uLL), v83, 0), *&vextq_s8(v109, v109, 4uLL), v83, 2), v109, v83, 3), 2uLL);
      --v106;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v113, v105, v84, 3), 0xAuLL), 0xFC00FC00FC00FC00);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v106 > 1);
  }

  return result;
}

unint64_t sub_277424C60(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v21 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = vdupq_lane_s16(v11, 0);
  v13 = vdupq_lane_s16(v11, 3);
  v14 = vdupq_lane_s16(v11, 1);
  v15 = vdupq_lane_s16(v11, 2);
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  v18 = &_X4->i8[14 * a4];
  v19 = &_X4->i8[6 * a4];
  v20.i64[0] = 0xFC00FC00FC00FC00;
  v20.i64[1] = 0xFC00FC00FC00FC00;
  v21 = a7;
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v23 = *_X20;
    _X20 += 30;
    v24 = vshrq_n_u16(v23, 6uLL);
    __asm { PRFM            #0, [X20] }

    v30 = vshrq_n_u16(*_X4, 6uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v33 = *_X23;
    _X23 += 30;
    v34 = v19;
    v35 = v18;
    v36 = v17;
    v37 = vshrq_n_u16(v33, 6uLL);
    __asm { PRFM            #0, [X23] }

    v39 = v16;
    v40 = a2 + 2;
    v41 = a7;
    v42 = a7 + 2 * a6;
    do
    {
      v43 = vmulq_s16(v24, v12);
      _X27 = &v36[v10 + 30];
      __asm { PRFM            #0, [X27] }

      _X27 = &v34[v10 + 30];
      v47 = vmulq_s16(v30, v14);
      v48 = vmulq_s16(v30, v12);
      v30 = vshrq_n_u16(*&v36[v10], 6uLL);
      v49 = vmulq_s16(v37, v15);
      v50 = vmulq_s16(v37, v14);
      v24 = v37;
      v37 = vshrq_n_u16(*&v34[v10], 6uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v35[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v39[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      v58 = vmlaq_s16(v43, v30, v13);
      v59 = vaddw_s16(vaddl_u16(*v47.i8, *v49.i8), *v58.i8);
      v60 = vaddw_high_s16(vaddl_high_u16(v47, v49), v58);
      v61 = vmlaq_s16(v48, v37, v13);
      v62 = vmulq_s16(v30, v15);
      *v41[v10 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v59, 6uLL), v60, 6uLL), v20);
      *&v42[v10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v62.i8, *v50.i8), *v61.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v62, v50), v61), 6uLL), v20);
      v42 += v8;
      v41 = (v41 + v8);
      v40 -= 2;
      v39 = (v39 + v9);
      v36 += v9;
      v35 += v9;
      v34 += v9;
    }

    while (v40 > 2);
    v21 += 2;
    ++_X4;
    v63 = result - 8;
    v10 += 16;
    v64 = result > 0xF;
    result = (result - 8);
  }

  while (v64);
  if (v63)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v66 = *_X12;
    _X12 = (_X12 + 14);
    v67 = qword_27750DD60[2 * v7 - 2];
    v68 = vshr_n_u16(v66, 6uLL);
    __asm { PRFM            #0, [X12] }

    v70 = vshr_n_u16(*_X4->i8, 6uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v73 = *_X11;
    _X11 = (_X11 + 14);
    v74 = vshr_n_u16(v73, 6uLL);
    __asm { PRFM            #0, [X11] }

    v76 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v81 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v83 = vmlal_lane_s16(vmull_lane_s16(v70, v67, 1), v68, v67, 0);
      v84 = vmlal_lane_s16(vmull_lane_s16(v74, v67, 1), v70, v67, 0);
      v70 = vshr_n_u16(*_X4->i8, 6uLL);
      v85 = vmlal_lane_s16(v83, v74, v67, 2);
      v68 = v74;
      v74 = vshr_n_u16(v81, 6uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v21 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v85, v70, v67, 3), 6uLL), 0xFC00FC00FC00FC00);
      *(v21 + 2 * a6) = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v84, v70, v67, 2), v74, v67, 3), 6uLL), 0xFC00FC00FC00FC00);
      v21 = (v21 + v8);
      v76 -= 2;
    }

    while (v76 > 2);
  }

  return result;
}

uint64_t sub_277424F04(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = vdupq_lane_s16(v10, 0);
  v12 = vdupq_lane_s16(v10, 3);
  v13 = vdupq_lane_s16(v10, 1);
  v14 = vdupq_lane_s16(v10, 2);
  v15 = (_X4 - 4);
  v16.i64[0] = 0xFC00FC00FC00FC00;
  v16.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v17 = a7;
    _X15 = v15;
    v19 = a2 + 1;
    do
    {
      v20 = vshrq_n_u16(*_X15, 6uLL);
      v21 = vshrq_n_u16(_X15[1], 6uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v30 = vextq_s8(v20, v21, 4uLL);
      v31 = vextq_s8(v20, v21, 8uLL);
      v32 = vmlaq_s16(vmulq_s16(v20, v11), vextq_s8(v20, v21, 0xCuLL), v12);
      v33 = vmulq_s16(v30, v13);
      v34 = vmulq_s16(v31, v14);
      *v17 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v34.i8, *v33.i8), *v32.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v33, v34), v32), 6uLL), v16);
      --v19;
      _X15 = (_X15 + v8);
      v17 = (v17 + v9);
    }

    while (v19 > 1);
    a7 += 2;
    ++_X4;
    v35 = result - 8;
    ++v15;
    v36 = result > 0xF;
    result = (result - 8);
  }

  while (v36);
  if (v35)
  {
LABEL_9:
    v37 = qword_27750DD60[2 * (a3 & 7) - 2];
    v38 = a2 + 1;
    v39 = v7 - 4;
    do
    {
      v40 = vshrq_n_u16(*_X4, 6uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v39];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v40.i8, v37, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 6uLL), v37, 0), *&vextq_s8(v40, v40, 4uLL), v37, 2), v40, v37, 3), 6uLL), 0xFC00FC00FC00FC00);
      --v38;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v38 > 1);
  }

  return result;
}

uint64_t sub_277425060(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 5uLL);
    v17 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 3uLL);
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 5uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 5uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3), 3uLL);
    v42 = vshrq_n_u16(*_X17, 5uLL);
    v43 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3), 3uLL);
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 5uLL);
      v57 = vshrq_n_u16(_X5[1], 5uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v29.i8, v11, 0), *v41.i8, v11, 1);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v29, v11, 0), v41, v11, 1);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v69 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3), 3uLL);
      v70 = vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), v69, v11, 3);
      v51 = vshrn_high_n_s32(v69, v68, 3uLL);
      --v55;
      *v52 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v70, v14), 6uLL), vaddq_s32(vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vshrn_n_s32(v68, 3uLL), v11, 3), v14), 6uLL);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v71 = result - 8;
    v12 += 16;
    v13 += 16;
    v72 = result > 0xF;
    result = (result - 8);
  }

  while (v72);
  if (v71)
  {
LABEL_9:
    v73 = qword_27750DD60[2 * (a3 & 7) - 2];
    v74 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v76 = vshr_n_u16(*_X10, 5uLL);
    v77 = vshrq_n_u16(*(_X10 + 4), 5uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v82 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, v73, 1), v76, v73, 0), *&vextq_s8(v77, v77, 4uLL), v73, 2), v77, v73, 3), 3uLL);
    v83 = vshrq_n_u16(*_X4, 5uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v89 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v83.i8, v73, 1), vshr_n_u16(*(_X4 - 4), 5uLL), v73, 0), *&vextq_s8(v83, v83, 4uLL), v73, 2), v83, v73, 3), 3uLL);
    *v77.i8 = vshr_n_u16(*_X10, 5uLL);
    v90 = vshrq_n_u16(*(_X4 + 2 * a4), 5uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v90.i8, v73, 1), *v77.i8, v73, 0), *&vextq_s8(v90, v90, 4uLL), v73, 2), v90, v73, 3), 3uLL);
    v96 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v99.i64[0] = 0x38000000380000;
      v99.i64[1] = 0x38000000380000;
      v100 = vshrq_n_u16(*_X12, 5uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v104 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v99, v82, v74, 0), v89, v74, 1), v95, v74, 2);
      v82 = v89;
      v89 = v95;
      v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v100.i8, v73, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 5uLL), v73, 0), *&vextq_s8(v100, v100, 4uLL), v73, 2), v100, v73, 3), 3uLL);
      --v96;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_lane_s16(v104, v95, v74, 3), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v96 > 1);
  }

  return result;
}

unint64_t sub_2774253F8(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xE000E000E000E000;
  v14.i64[1] = 0xE000E000E000E000;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 5uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 5uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 5uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 5uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = vmlal_lane_s16(v39, *v33.i8, v11, 2);
      v47 = vmlal_high_lane_s16(v40, v33, v11, 2);
      v20 = v33;
      v33 = vshrq_n_u16(*&v30[v10], 5uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v46, *v26.i8, v11, 3), 3uLL), vmlal_high_lane_s16(v47, v26, v11, 3), 3uLL), v14);
      *&v38[v10] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3), 3uLL), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v55 = result - 8;
    v10 += 16;
    v56 = result > 0xF;
    result = (result - 8);
  }

  while (v56);
  if (v55)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v58 = *_X12;
    _X12 = (_X12 + 14);
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = vshr_n_u16(v58, 5uLL);
    __asm { PRFM            #0, [X12] }

    v62 = vshr_n_u16(*_X4->i8, 5uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v65 = *_X11;
    _X11 = (_X11 + 14);
    v66 = vshr_n_u16(v65, 5uLL);
    __asm { PRFM            #0, [X11] }

    v68 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v73 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v75 = vmlal_lane_s16(vmull_lane_s16(v62, v59, 1), v60, v59, 0);
      v76 = vmlal_lane_s16(vmull_lane_s16(v66, v59, 1), v62, v59, 0);
      v62 = vshr_n_u16(*_X4->i8, 5uLL);
      v77 = vmlal_lane_s16(v75, v66, v59, 2);
      v60 = v66;
      v66 = vshr_n_u16(v73, 5uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vadd_s16(vshrn_n_s32(vmlal_lane_s16(v77, v62, v59, 3), 3uLL), 0xE000E000E000E000);
      *(v15 + 2 * a6) = vadd_s16(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v76, v62, v59, 2), v66, v59, 3), 3uLL), 0xE000E000E000E000);
      v15 = (v15 + v8);
      v68 -= 2;
    }

    while (v68 > 2);
  }

  return result;
}

uint64_t sub_277425688(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xE000E000E000E000;
  v12.i64[1] = 0xE000E000E000E000;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 5uLL);
      v17 = vshrq_n_u16(_X15[1], 5uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 3uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 5uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 5uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3), 3uLL), 0xE000E000E000E000);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_2774257D0(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 5uLL);
    v17 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 3uLL);
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 5uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 5uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3), 3uLL);
    v42 = vshrq_n_u16(*_X17, 5uLL);
    v43 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), 3uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3), 3uLL);
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 5uLL);
      v57 = vshrq_n_u16(_X5[1], 5uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v41.i8, v11, 1), *v29.i8, v11, 0);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v41, v11, 1), v29, v11, 0);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v69 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3), 3uLL);
      v70 = vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), v69, v11, 3);
      v51 = vshrn_high_n_s32(v69, v68, 3uLL);
      --v55;
      *v52 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v70, 9uLL), vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vshrn_n_s32(v68, 3uLL), v11, 3), 9uLL), v14);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v71 = result - 8;
    v12 += 16;
    v13 += 16;
    v72 = result > 0xF;
    result = (result - 8);
  }

  while (v72);
  if (v71)
  {
LABEL_9:
    v73 = qword_27750DD60[2 * (a3 & 7) - 2];
    v74 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v76 = vshr_n_u16(*_X10, 5uLL);
    v77 = vshrq_n_u16(*(_X10 + 4), 5uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v82 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, v73, 1), v76, v73, 0), *&vextq_s8(v77, v77, 4uLL), v73, 2), v77, v73, 3), 3uLL);
    v83 = vshrq_n_u16(*_X4, 5uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v89 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v83.i8, v73, 1), vshr_n_u16(*(_X4 - 4), 5uLL), v73, 0), *&vextq_s8(v83, v83, 4uLL), v73, 2), v83, v73, 3), 3uLL);
    *v77.i8 = vshr_n_u16(*_X10, 5uLL);
    v90 = vshrq_n_u16(*(_X4 + 2 * a4), 5uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v90.i8, v73, 1), *v77.i8, v73, 0), *&vextq_s8(v90, v90, 4uLL), v73, 2), v90, v73, 3), 3uLL);
    v96 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v99 = vshrq_n_u16(*_X12, 5uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v103 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v89, v74, 1), v82, v74, 0), v95, v74, 2);
      v82 = v89;
      v89 = v95;
      v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v99.i8, v73, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 5uLL), v73, 0), *&vextq_s8(v99, v99, 4uLL), v73, 2), v99, v73, 3), 3uLL);
      --v96;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v103, v95, v74, 3), 9uLL), 0xF800F800F800F800);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v96 > 1);
  }

  return result;
}

unint64_t sub_277425B6C(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 5uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 5uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 5uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 5uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = vmlal_lane_s16(v39, *v33.i8, v11, 2);
      v47 = vmlal_high_lane_s16(v40, v33, v11, 2);
      v20 = v33;
      v33 = vshrq_n_u16(*&v30[v10], 5uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(v46, *v26.i8, v11, 3), 6uLL), vmlal_high_lane_s16(v47, v26, v11, 3), 6uLL), v14);
      *&v38[v10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3), 6uLL), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v55 = result - 8;
    v10 += 16;
    v56 = result > 0xF;
    result = (result - 8);
  }

  while (v56);
  if (v55)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v58 = *_X12;
    _X12 = (_X12 + 14);
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = vshr_n_u16(v58, 5uLL);
    __asm { PRFM            #0, [X12] }

    v62 = vshr_n_u16(*_X4->i8, 5uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v65 = *_X11;
    _X11 = (_X11 + 14);
    v66 = vshr_n_u16(v65, 5uLL);
    __asm { PRFM            #0, [X11] }

    v68 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v73 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v75 = vmlal_lane_s16(vmull_lane_s16(v62, v59, 1), v60, v59, 0);
      v76 = vmlal_lane_s16(vmull_lane_s16(v66, v59, 1), v62, v59, 0);
      v62 = vshr_n_u16(*_X4->i8, 5uLL);
      v77 = vmlal_lane_s16(v75, v66, v59, 2);
      v60 = v66;
      v66 = vshr_n_u16(v73, 5uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v77, v62, v59, 3), 6uLL), 0xF800F800F800F800);
      *(v15 + 2 * a6) = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v76, v62, v59, 2), v66, v59, 3), 6uLL), 0xF800F800F800F800);
      v15 = (v15 + v8);
      v68 -= 2;
    }

    while (v68 > 2);
  }

  return result;
}

uint64_t sub_277425E00(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xF800F800F800F800;
  v12.i64[1] = 0xF800F800F800F800;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 5uLL);
      v17 = vshrq_n_u16(_X15[1], 5uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 6uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 5uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 5uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3), 6uLL), 0xF800F800F800F800);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_277425F4C(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 4uLL);
    v17 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 4uLL);
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 4uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 4uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3), 4uLL);
    v42 = vshrq_n_u16(*_X17, 4uLL);
    v43 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3), 4uLL);
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 4uLL);
      v57 = vshrq_n_u16(_X5[1], 4uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v29.i8, v11, 0), *v41.i8, v11, 1);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v29, v11, 0), v41, v11, 1);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v69 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3), 4uLL);
      v70 = vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), v69, v11, 3);
      v51 = vshrn_high_n_s32(v69, v68, 4uLL);
      --v55;
      *v52 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v70, v14), 6uLL), vaddq_s32(vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vshrn_n_s32(v68, 4uLL), v11, 3), v14), 6uLL);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v71 = result - 8;
    v12 += 16;
    v13 += 16;
    v72 = result > 0xF;
    result = (result - 8);
  }

  while (v72);
  if (v71)
  {
LABEL_9:
    v73 = qword_27750DD60[2 * (a3 & 7) - 2];
    v74 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v76 = vshr_n_u16(*_X10, 4uLL);
    v77 = vshrq_n_u16(*(_X10 + 4), 4uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v82 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, v73, 1), v76, v73, 0), *&vextq_s8(v77, v77, 4uLL), v73, 2), v77, v73, 3), 4uLL);
    v83 = vshrq_n_u16(*_X4, 4uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v89 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v83.i8, v73, 1), vshr_n_u16(*(_X4 - 4), 4uLL), v73, 0), *&vextq_s8(v83, v83, 4uLL), v73, 2), v83, v73, 3), 4uLL);
    *v77.i8 = vshr_n_u16(*_X10, 4uLL);
    v90 = vshrq_n_u16(*(_X4 + 2 * a4), 4uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v90.i8, v73, 1), *v77.i8, v73, 0), *&vextq_s8(v90, v90, 4uLL), v73, 2), v90, v73, 3), 4uLL);
    v96 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v99.i64[0] = 0x38000000380000;
      v99.i64[1] = 0x38000000380000;
      v100 = vshrq_n_u16(*_X12, 4uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v104 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v99, v82, v74, 0), v89, v74, 1), v95, v74, 2);
      v82 = v89;
      v89 = v95;
      v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v100.i8, v73, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 4uLL), v73, 0), *&vextq_s8(v100, v100, 4uLL), v73, 2), v100, v73, 3), 4uLL);
      --v96;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_lane_s16(v104, v95, v74, 3), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v96 > 1);
  }

  return result;
}

unint64_t sub_2774262E4(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xE000E000E000E000;
  v14.i64[1] = 0xE000E000E000E000;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 4uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 4uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 4uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 4uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = vmlal_lane_s16(v39, *v33.i8, v11, 2);
      v47 = vmlal_high_lane_s16(v40, v33, v11, 2);
      v20 = v33;
      v33 = vshrq_n_u16(*&v30[v10], 4uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(v46, *v26.i8, v11, 3), 4uLL), vmlal_high_lane_s16(v47, v26, v11, 3), 4uLL), v14);
      *&v38[v10] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3), 4uLL), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v55 = result - 8;
    v10 += 16;
    v56 = result > 0xF;
    result = (result - 8);
  }

  while (v56);
  if (v55)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v58 = *_X12;
    _X12 = (_X12 + 14);
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = vshr_n_u16(v58, 4uLL);
    __asm { PRFM            #0, [X12] }

    v62 = vshr_n_u16(*_X4->i8, 4uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v65 = *_X11;
    _X11 = (_X11 + 14);
    v66 = vshr_n_u16(v65, 4uLL);
    __asm { PRFM            #0, [X11] }

    v68 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v73 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v75 = vmlal_lane_s16(vmull_lane_s16(v62, v59, 1), v60, v59, 0);
      v76 = vmlal_lane_s16(vmull_lane_s16(v66, v59, 1), v62, v59, 0);
      v62 = vshr_n_u16(*_X4->i8, 4uLL);
      v77 = vmlal_lane_s16(v75, v66, v59, 2);
      v60 = v66;
      v66 = vshr_n_u16(v73, 4uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vadd_s16(vshrn_n_s32(vmlal_lane_s16(v77, v62, v59, 3), 4uLL), 0xE000E000E000E000);
      *(v15 + 2 * a6) = vadd_s16(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v76, v62, v59, 2), v66, v59, 3), 4uLL), 0xE000E000E000E000);
      v15 = (v15 + v8);
      v68 -= 2;
    }

    while (v68 > 2);
  }

  return result;
}

uint64_t sub_277426574(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, int16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xE000E000E000E000;
  v12.i64[1] = 0xE000E000E000E000;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 4uLL);
      v17 = vshrq_n_u16(_X15[1], 4uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 4uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 4uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 4uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3), 4uLL), 0xE000E000E000E000);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_2774266BC(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t _X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = _X4 + 12 * a4 - 4;
  v13 = _X4 + 4 * a4 - 4;
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  do
  {
    _X17 = (_X4 + 2 * (-2 - a4));
    v16 = vshrq_n_u16(*_X17, 4uLL);
    v17 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v16, v17, 8uLL);
    v28 = vextq_s8(v16, v17, 0xCuLL);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 4uLL);
    _X17 = _X4 - 4;
    v31 = vshrq_n_u16(*(_X4 - 4), 4uLL);
    v32 = vshrq_n_u16(*(_X4 + 12), 4uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X5 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X4 - 4 + 2 * a4);
    v38 = vextq_s8(v31, v32, 4uLL);
    v39 = vextq_s8(v31, v32, 8uLL);
    v40 = vextq_s8(v31, v32, 0xCuLL);
    v41 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v38.i8, v10, 1), *v31.i8, v10, 0), *v39.i8, v10, 2), *v40.i8, v10, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v38, v10, 1), v31, v10, 0), v39, v10, 2), v40, v10, 3), 4uLL);
    v42 = vshrq_n_u16(*_X17, 4uLL);
    v43 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x3E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v48 = vextq_s8(v42, v43, 4uLL);
    v49 = vextq_s8(v42, v43, 8uLL);
    v50 = vextq_s8(v42, v43, 0xCuLL);
    v51 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v48.i8, v10, 1), *v42.i8, v10, 0), *v49.i8, v10, 2), *v50.i8, v10, 3), 4uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v48, v10, 1), v42, v10, 0), v49, v10, 2), v50, v10, 3), 4uLL);
    v52 = a7;
    _X5 = v13;
    _X7 = v12;
    v55 = a2 + 1;
    do
    {
      v56 = vshrq_n_u16(*_X5, 4uLL);
      v57 = vshrq_n_u16(_X5[1], 4uLL);
      v58 = vextq_s8(v56, v57, 4uLL);
      v59 = vextq_s8(v56, v57, 8uLL);
      v60 = vextq_s8(v56, v57, 0xCuLL);
      v61 = vmlal_lane_s16(vmull_lane_s16(*v58.i8, v10, 1), *v56.i8, v10, 0);
      v62 = vmlal_high_lane_s16(vmull_high_lane_s16(v58, v10, 1), v56, v10, 0);
      v63 = vmlal_lane_s16(vmull_lane_s16(*v41.i8, v11, 1), *v29.i8, v11, 0);
      v64 = vmlal_high_lane_s16(vmull_high_lane_s16(v41, v11, 1), v29, v11, 0);
      v29 = v41;
      v41 = v51;
      __asm
      {
        PRFUM           #0, [X5,#0x3E]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v68 = vmlal_high_lane_s16(vmlal_high_lane_s16(v62, v59, v10, 2), v60, v10, 3);
      v69 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v61, *v59.i8, v10, 2), *v60.i8, v10, 3), 4uLL);
      v70 = vmlal_lane_s16(vmlal_lane_s16(v63, *v41.i8, v11, 2), v69, v11, 3);
      v51 = vshrn_high_n_s32(v69, v68, 4uLL);
      --v55;
      *v52 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v70, 8uLL), vmlal_lane_s16(vmlal_high_lane_s16(v64, v41, v11, 2), vshrn_n_s32(v68, 4uLL), v11, 3), 8uLL), v14);
      _X7 += v8;
      _X5 = (_X5 + v8);
      v52 = (v52 + v9);
    }

    while (v55 > 1);
    a7 += 2;
    _X4 += 16;
    v71 = result - 8;
    v12 += 16;
    v13 += 16;
    v72 = result > 0xF;
    result = (result - 8);
  }

  while (v72);
  if (v71)
  {
LABEL_9:
    v73 = qword_27750DD60[2 * (a3 & 7) - 2];
    v74 = qword_27750DD60[2 * v7 - 2];
    _X10 = _X4 + 2 * (-2 - a4);
    v76 = vshr_n_u16(*_X10, 4uLL);
    v77 = vshrq_n_u16(*(_X10 + 4), 4uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = _X10 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v82 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v77.i8, v73, 1), v76, v73, 0), *&vextq_s8(v77, v77, 4uLL), v73, 2), v77, v73, 3), 4uLL);
    v83 = vshrq_n_u16(*_X4, 4uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X10 = _X4 - 4 + 8 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    _X10 = (_X4 - 4 + 2 * a4);
    v89 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v83.i8, v73, 1), vshr_n_u16(*(_X4 - 4), 4uLL), v73, 0), *&vextq_s8(v83, v83, 4uLL), v73, 2), v83, v73, 3), 4uLL);
    *v77.i8 = vshr_n_u16(*_X10, 4uLL);
    v90 = vshrq_n_u16(*(_X4 + 2 * a4), 4uLL);
    __asm { PRFUM           #0, [X10,#0x22] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x12]
    }

    v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v90.i8, v73, 1), *v77.i8, v73, 0), *&vextq_s8(v90, v90, 4uLL), v73, 2), v90, v73, 3), 4uLL);
    v96 = a2 + 1;
    _X11 = _X4 - 4 + 12 * a4;
    _X12 = (_X4 + 4 * a4);
    do
    {
      v99 = vshrq_n_u16(*_X12, 4uLL);
      __asm
      {
        PRFUM           #0, [X12,#0x1E]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x12]
      }

      v103 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v89, v74, 1), v82, v74, 0), v95, v74, 2);
      v82 = v89;
      v89 = v95;
      v95 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v99.i8, v73, 1), vshr_n_u16(*(&_X12[-1].u64[1] + 4), 4uLL), v73, 0), *&vextq_s8(v99, v99, 4uLL), v73, 2), v99, v73, 3), 4uLL);
      --v96;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v103, v95, v74, 3), 8uLL), 0xF000F000F000F000);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v96 > 1);
  }

  return result;
}

unint64_t sub_277426A58(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    v15 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = &_X4->i8[14 * a4];
  v13 = &_X4->i8[6 * a4];
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = a7;
  v16 = &_X4[a4];
  v17 = &_X4->i8[4 * a4];
  do
  {
    _X20 = &_X4->i8[-2 * a4];
    v19 = *_X20;
    _X20 += 30;
    v20 = vshrq_n_u16(v19, 4uLL);
    __asm { PRFM            #0, [X20] }

    v26 = vshrq_n_u16(*_X4, 4uLL);
    __asm { PRFUM           #0, [X4,#0x1E] }

    _X23 = &_X4->i8[2 * a4];
    v29 = *_X23;
    _X23 += 30;
    v30 = v13;
    v31 = v12;
    v32 = v17;
    v33 = vshrq_n_u16(v29, 4uLL);
    __asm { PRFM            #0, [X23] }

    v35 = v16;
    v36 = a2 + 2;
    v37 = a7;
    v38 = a7 + 2 * a6;
    do
    {
      v39 = vmlal_lane_s16(vmull_lane_s16(*v26.i8, v11, 1), *v20.i8, v11, 0);
      v40 = vmlal_high_lane_s16(vmull_high_lane_s16(v26, v11, 1), v20, v11, 0);
      _X27 = &v32[v10 + 30];
      v42 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, v11, 1), *v26.i8, v11, 0);
      v43 = vmlal_high_lane_s16(vmull_high_lane_s16(v33, v11, 1), v26, v11, 0);
      v26 = vshrq_n_u16(*&v32[v10], 4uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v30[v10 + 30];
      v46 = vmlal_lane_s16(v39, *v33.i8, v11, 2);
      v47 = vmlal_high_lane_s16(v40, v33, v11, 2);
      v20 = v33;
      v33 = vshrq_n_u16(*&v30[v10], 4uLL);
      __asm { PRFM            #0, [X27] }

      _X27 = &v31[v10];
      __asm { PRFM            #0, [X27] }

      _X28 = &v35[v10 / 0x10];
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X27,#0xE]
        PRFUM           #0, [X28,#0xE]
      }

      *v37[v10 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(v46, *v26.i8, v11, 3), 6uLL), vmlal_high_lane_s16(v47, v26, v11, 3), 6uLL), v14);
      *&v38[v10] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v42, *v26.i8, v11, 2), *v33.i8, v11, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(v43, v26, v11, 2), v33, v11, 3), 6uLL), v14);
      v38 += v8;
      v37 = (v37 + v8);
      v36 -= 2;
      v35 = (v35 + v9);
      v32 += v9;
      v31 += v9;
      v30 += v9;
    }

    while (v36 > 2);
    v15 += 2;
    ++_X4;
    v55 = result - 8;
    v10 += 16;
    v56 = result > 0xF;
    result = (result - 8);
  }

  while (v56);
  if (v55)
  {
LABEL_9:
    _X12 = (_X4->i64 - 2 * a4);
    v58 = *_X12;
    _X12 = (_X12 + 14);
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = vshr_n_u16(v58, 4uLL);
    __asm { PRFM            #0, [X12] }

    v62 = vshr_n_u16(*_X4->i8, 4uLL);
    __asm { PRFUM           #0, [X4,#0xE] }

    _X11 = (_X4->i64 + 2 * a4);
    v65 = *_X11;
    _X11 = (_X11 + 14);
    v66 = vshr_n_u16(v65, 4uLL);
    __asm { PRFM            #0, [X11] }

    v68 = a2 + 2;
    do
    {
      _X17 = (_X4->i64 + 6 * a4);
      result = _X4 + 14 * a4;
      _X1 = &_X4[a4];
      _X4 = (_X4 + v9);
      _X16 = &_X4->i8[14];
      __asm { PRFM            #0, [X16] }

      v73 = *_X17;
      _X17 = (_X17 + 14);
      __asm { PRFM            #0, [X17] }

      v75 = vmlal_lane_s16(vmull_lane_s16(v62, v59, 1), v60, v59, 0);
      v76 = vmlal_lane_s16(vmull_lane_s16(v66, v59, 1), v62, v59, 0);
      v62 = vshr_n_u16(*_X4->i8, 4uLL);
      v77 = vmlal_lane_s16(v75, v66, v59, 2);
      v60 = v66;
      v66 = vshr_n_u16(v73, 4uLL);
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X0,#6]
        PRFUM           #0, [X1,#6]
      }

      *v15 = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(v77, v62, v59, 3), 6uLL), 0xF000F000F000F000);
      *(v15 + 2 * a6) = vmin_u16(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(v76, v62, v59, 2), v66, v59, 3), 6uLL), 0xF000F000F000F000);
      v15 = (v15 + v8);
      v68 -= 2;
    }

    while (v68 > 2);
  }

  return result;
}

uint64_t sub_277426CEC(uint64_t result, int a2, char a3, uint64_t a4, uint16x8_t *_X4, uint64_t a6, uint16x4_t *a7)
{
  v7 = 8 * a4;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = (_X4 - 4);
  v12.i64[0] = 0xF000F000F000F000;
  v12.i64[1] = 0xF000F000F000F000;
  do
  {
    v13 = a7;
    _X15 = v11;
    v15 = a2 + 1;
    do
    {
      v16 = vshrq_n_u16(*_X15, 4uLL);
      v17 = vshrq_n_u16(_X15[1], 4uLL);
      __asm { PRFUM           #0, [X15,#0x3E] }

      _X17 = &_X15->i8[v7];
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 8uLL);
      v28 = vextq_s8(v16, v17, 0xCuLL);
      *v13 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v26.i8, v10, 1), *v16.i8, v10, 0), *v27.i8, v10, 2), *v28.i8, v10, 3), 6uLL), vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v26, v10, 1), v16, v10, 0), v27, v10, 2), v28, v10, 3), 6uLL), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    ++_X4;
    v29 = result - 8;
    ++v11;
    v30 = result > 0xF;
    result = (result - 8);
  }

  while (v30);
  if (v29)
  {
LABEL_9:
    v31 = qword_27750DD60[2 * (a3 & 7) - 2];
    v32 = a2 + 1;
    v33 = v7 - 4;
    do
    {
      v34 = vshrq_n_u16(*_X4, 4uLL);
      __asm { PRFUM           #0, [X4,#0x1E] }

      _X12 = &_X4->i8[v33];
      __asm
      {
        PRFM            #0, [X12]
        PRFUM           #0, [X12,#0x12]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v34.i8, v31, 1), vshr_n_u16(*(&_X4[-1].u64[1] + 4), 4uLL), v31, 0), *&vextq_s8(v34, v34, 4uLL), v31, 2), v34, v31, 3), 6uLL), 0xF000F000F000F000);
      --v32;
      _X4 = (_X4 + v8);
      a7 = (a7 + v9);
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_277426E38(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
{
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = qword_27750DCD0[(a3 & 3) - 1];
  v8 = vmovl_u8(qword_27750DCD0[((a3 >> 16) & 3) - 1]);
  v9 = a7 + 2 * a6;
  v10 = a5 + 4 * a4 - 3;
  v11 = v10 + a4;
  v92 = vdup_lane_s8(v7, 1);
  v93 = vdup_lane_s8(v7, 0);
  v90 = vdup_lane_s8(v7, 3);
  v91 = vdup_lane_s8(v7, 2);
  v89 = vdup_lane_s8(v7, 4);
  v12 = vdup_lane_s8(v7, 5);
  v13 = vdup_lane_s8(v7, 6);
  v14 = vdup_lane_s8(v7, 7);
  v15.i64[0] = 0x700000007;
  v15.i64[1] = 0x700000007;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = *(a5 - 3 * a4 - 3);
    v19 = (a5 - 3 * a4 - 3 + a4);
    v20 = *v19;
    v21 = (v19 + a4);
    v22 = *v21;
    v23 = (v21 + a4);
    v24 = *v23;
    v25 = (v23 + a4);
    v26 = *v25;
    v27 = &v25->i8[a4];
    v28 = *&v27->i8[a4];
    v29 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v18, v18, 1uLL), v92), *v18.i8, v93), *&vextq_s8(v18, v18, 2uLL), v91), *&vextq_s8(v18, v18, 3uLL), v90), *&vextq_s8(v18, v18, 4uLL), v89), *&vextq_s8(v18, v18, 6uLL), v13), *&vextq_s8(v18, v18, 5uLL), v12), *&vextq_s8(v18, v18, 7uLL), v14);
    v30 = *v27->i8;
    v31 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v20, v20, 1uLL), v92), *v20.i8, v93), *&vextq_s8(v20, v20, 2uLL), v91), *&vextq_s8(v20, v20, 3uLL), v90), *&vextq_s8(v20, v20, 4uLL), v89), *&vextq_s8(v20, v20, 6uLL), v13), *&vextq_s8(v20, v20, 5uLL), v12), *&vextq_s8(v20, v20, 7uLL), v14);
    v32 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v22, v22, 1uLL), v92), *v22.i8, v93), *&vextq_s8(v22, v22, 2uLL), v91), *&vextq_s8(v22, v22, 3uLL), v90), *&vextq_s8(v22, v22, 4uLL), v89), *&vextq_s8(v22, v22, 6uLL), v13), *&vextq_s8(v22, v22, 5uLL), v12), *&vextq_s8(v22, v22, 7uLL), v14);
    v33 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v24, v24, 1uLL), v92), *v24.i8, v93), *&vextq_s8(v24, v24, 2uLL), v91), *&vextq_s8(v24, v24, 3uLL), v90), *&vextq_s8(v24, v24, 4uLL), v89), *&vextq_s8(v24, v24, 6uLL), v13), *&vextq_s8(v24, v24, 5uLL), v12), *&vextq_s8(v24, v24, 7uLL), v14);
    v34 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v26, v26, 1uLL), v92), *v26.i8, v93), *&vextq_s8(v26, v26, 2uLL), v91), *&vextq_s8(v26, v26, 3uLL), v90), *&vextq_s8(v26, v26, 4uLL), v89), *&vextq_s8(v26, v26, 6uLL), v13), *&vextq_s8(v26, v26, 5uLL), v12), *&vextq_s8(v26, v26, 7uLL), v14);
    v35 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v30, v30, 1uLL), v92), *v27, v93), *&vextq_s8(v30, v30, 2uLL), v91), *&vextq_s8(v30, v30, 3uLL), v90), *&vextq_s8(v30, v30, 4uLL), v89), *&vextq_s8(v30, v30, 6uLL), v13), *&vextq_s8(v30, v30, 5uLL), v12), *&vextq_s8(v30, v30, 7uLL), v14);
    v36 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v28, v28, 1uLL), v92), *v28.i8, v93), *&vextq_s8(v28, v28, 2uLL), v91), *&vextq_s8(v28, v28, 3uLL), v90), *&vextq_s8(v28, v28, 4uLL), v89), *&vextq_s8(v28, v28, 6uLL), v13), *&vextq_s8(v28, v28, 5uLL), v12), *&vextq_s8(v28, v28, 7uLL), v14);
    v37 = a2 + 2;
    do
    {
      v38 = vmlsl_lane_s16(vmull_lane_s16(*v31.i8, *v8.i8, 1), *v29.i8, *v8.i8, 0);
      v39 = vmlsl_high_lane_s16(vmull_high_lane_s16(v31, *v8.i8, 1), v29, *v8.i8, 0);
      v29 = v32;
      v40 = *(v10 + v16);
      v41 = *(v11 + v16);
      v42 = vmlsl_lane_s16(vmull_lane_s16(*v32.i8, *v8.i8, 1), *v31.i8, *v8.i8, 0);
      v43 = vmlsl_high_lane_s16(vmull_high_lane_s16(v32, *v8.i8, 1), v31, *v8.i8, 0);
      v31 = v33;
      v44 = vmlal_lane_s16(vaddq_s32(vmlsl_lane_s16(v38, *v32.i8, *v8.i8, 2), v15), *v33.i8, *v8.i8, 3);
      v45 = vmlal_high_lane_s16(vaddq_s32(vmlsl_high_lane_s16(v39, v32, *v8.i8, 2), v15), v33, *v8.i8, 3);
      v46 = vmlsl_lane_s16(v42, *v33.i8, *v8.i8, 2);
      v47 = vmlsl_high_lane_s16(v43, v33, *v8.i8, 2);
      v33 = v35;
      v32 = v34;
      v48 = vdup_lane_s8(v7, 6);
      v49 = vdup_lane_s8(v7, 7);
      v34 = v36;
      v36 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v41, v41, 1uLL), v92), *v41.i8, v93), *&vextq_s8(v41, v41, 2uLL), v91), *&vextq_s8(v41, v41, 3uLL), v90), *&vextq_s8(v41, v41, 4uLL), v89), *&vextq_s8(v41, v41, 6uLL), v48), *&vextq_s8(v41, v41, 5uLL), v12), *&vextq_s8(v41, v41, 7uLL), v49);
      v35 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v40, v40, 1uLL), v92), *v40.i8, v93), *&vextq_s8(v40, v40, 2uLL), v91), *&vextq_s8(v40, v40, 3uLL), v90), *&vextq_s8(v40, v40, 4uLL), v89), *&vextq_s8(v40, v40, 6uLL), v48), *&vextq_s8(v40, v40, 5uLL), v12), *&vextq_s8(v40, v40, 7uLL), v49);
      *&a7->i8[v17] = vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v44, *v32.i8, v8, 4), *v34.i8, v8, 6), *v33.i8, v8, 5), *v35.i8, v8, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v45, v32, v8, 4), v34, v8, 6), v33, v8, 5), v35, v8, 7), 6uLL);
      *&v9[v17] = vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vaddq_s32(v46, v15), *v32.i8, *v8.i8, 3), *v33.i8, v8, 4), *v35.i8, v8, 6), *v34.i8, v8, 5), *v36.i8, v8, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vaddq_s32(v47, v15), v32, *v8.i8, 3), v33, v8, 4), v35, v8, 6), v34, v8, 5), v36, v8, 7), 6uLL);
      v17 += 4 * a6;
      v16 += 2 * a4;
      v37 -= 2;
    }

    while (v37 > 2);
    a7 += 2;
    a5 += 8;
    v50 = result - 8;
    v9 += 16;
    v11 += 8;
    v10 += 8;
    v51 = result > 0xF;
    result = (result - 8);
  }

  while (v51);
  if (v50)
  {
LABEL_9:
    v52 = qword_27750DCD0[((a3 >> 16) & 3) - 1];
    v53 = vmovl_u8(qword_27750DCD0[(a3 & 3) - 1]);
    v54 = a5 - 3 * a4;
    v55 = *(v54 - 3);
    v56 = (v54 - 3 + a4);
    v57 = *v56;
    v58 = (v56 + a4);
    v59 = *v58;
    v60 = (v58 + a4);
    v61 = *v60;
    v62 = &v60->i8[a4];
    v63 = *v62;
    v64 = &v62->i8[a4];
    v65 = *v64;
    v66 = *(v64 + a4);
    v67 = (a5 + 4 * a4 - 3);
    v68 = a2 + 1;
    v69 = vdupq_lane_s8(v52, 0);
    v70 = vdupq_lane_s8(v52, 1);
    v71 = vdupq_lane_s8(v52, 2);
    v72 = vextq_s8(v71, v71, 8uLL).u64[0];
    v73 = vdupq_lane_s8(v52, 3);
    v74 = vextq_s8(v73, v73, 8uLL).u64[0];
    v75 = vdupq_lane_s8(v52, 4);
    v76 = vdupq_lane_s8(v52, 5);
    v77 = vdupq_lane_s8(v52, 6);
    v78 = vextq_s8(v75, v75, 8uLL).u64[0];
    v79 = vextq_s8(v77, v77, 8uLL).u64[0];
    v80 = vdupq_lane_s8(v52, 7);
    v81 = vextq_s8(v80, v80, 8uLL).u64[0];
    v82.i64[0] = 0x700000007;
    v82.i64[1] = 0x700000007;
    do
    {
      v83 = vmlsl_u8(vmull_u8(*v57.i8, *v70.i8), *v55.i8, *v69.i8);
      v84 = vmull_high_u8(v57, v70);
      v85 = vmull_high_u8(v55, v69);
      v55 = v57;
      v57 = v59;
      v59 = v61;
      v61 = v63;
      v63 = v65;
      v65 = v66;
      v86 = vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(v83, *v57.i8, *v71.i8), *v59.i8, *v73.i8), *v61.i8, *v75.i8), *v66.i8, *v77.i8);
      v66 = *v67->i8;
      v87 = vmlsl_u8(vmlsl_u8(v86, *v63.i8, *v76.i8), *v67, *v80.i8);
      *v84.i8 = vsub_s16(*v84.i8, *&vmlal_u8(v85, *&vextq_s8(v57, v57, 8uLL), v72));
      v88 = vmlal_u8(vmlal_u8(vmlal_u8(v84, *&vextq_s8(v59, v59, 8uLL), v74), *&vextq_s8(v61, v61, 8uLL), v78), *&vextq_s8(v65, v65, 8uLL), v79);
      *v88.i8 = vsub_s16(*v88.i8, *&vmlal_u8(vmull_high_u8(v63, v76), *&vextq_s8(v66, v66, 8uLL), v81));
      *a7 = vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_lane_s16(vaddq_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*&vextq_s8(v87, v87, 2uLL), *v53.i8, 1), *v87.i8, *v53.i8, 0), *&vextq_s8(v87, v87, 4uLL), *v53.i8, 2), v82), *&vextq_s8(v87, v87, 6uLL), *v53.i8, 3), v87, v53, 4), *&vextq_s8(v87, v88, 0xCuLL), v53, 6), *&vextq_s8(v87, v88, 0xAuLL), v53, 5), *&vextq_s8(v87, v88, 0xEuLL), v53, 7), 6uLL);
      a7 = (a7 + 2 * a6);
      v67 = (v67 + a4);
      --v68;
    }

    while (v68 > 1);
  }

  return result;
}

uint64_t sub_2774273E4(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, int16x4_t *a7)
{
  v8 = (a3 >> 16) & 3;
  v9 = 2 * a6;
  if (result < 16)
  {
    v48 = result;
  }

  else
  {
    v10 = qword_27750DCD0[v8 - 1];
    v11 = a5 + 5 * a4;
    v12 = a5 + 4 * a4;
    v13 = vdupq_lane_s8(v10, 0);
    v14 = vdupq_lane_s8(v10, 1);
    v15 = vdupq_lane_s8(v10, 2);
    v16 = vdupq_lane_s8(v10, 3);
    v17 = vdupq_lane_s8(v10, 4);
    v18 = vdupq_lane_s8(v10, 5);
    v19 = vdupq_lane_s8(v10, 6);
    v20 = vdupq_lane_s8(v10, 7);
    v21.i64[0] = 0xE000E000E000E000;
    v21.i64[1] = 0xE000E000E000E000;
    do
    {
      v22 = 0;
      v23 = *&a5->i8[-3 * a4];
      v24 = (a5 + a4 + -3 * a4);
      v25 = *v24;
      v26 = (v24 + a4);
      v27 = *v26;
      v28 = (v26 + a4);
      v29 = *v28;
      v30 = (v28 + a4);
      v31 = *v30;
      v32 = (v30 + a4);
      v33 = *v32;
      v34 = *(v32 + a4);
      v35 = a2 + 2;
      v36 = a7;
      do
      {
        v37 = vmlsl_u8(vmull_u8(*v25.i8, *v14.i8), *v23.i8, *v13.i8);
        v38 = vmlsl_high_u8(vmull_high_u8(v25, v14), v23, v13);
        v23 = v27;
        v39 = vmlsl_u8(vmull_u8(*v27.i8, *v14.i8), *v25.i8, *v13.i8);
        v40 = vmlsl_high_u8(vmull_high_u8(v27, v14), v25, v13);
        v41 = vmlsl_u8(v37, *v27.i8, *v15.i8);
        v42 = vmlsl_high_u8(v38, v27, v15);
        v27 = v31;
        v43 = vmlal_u8(vaddq_s16(v41, v21), *v29.i8, *v16.i8);
        v44 = vmlal_high_u8(vaddq_s16(v42, v21), v29, v16);
        v45 = vmlsl_u8(v39, *v29.i8, *v15.i8);
        v46 = vmlsl_high_u8(v40, v29, v15);
        v25 = v29;
        v29 = v33;
        v31 = v34;
        v33 = *&v12[v22];
        v34 = *&v11[v22];
        *v36 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v43, *v27.i8, *v17.i8), *v31.i8, *v19.i8), *v29.i8, *v18.i8), *v33.i8, *v20.i8);
        v36[1] = vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(v44, v27, v17), v31, v19), v29, v18), v33, v20);
        v47 = (v36 + v9);
        *v47 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vaddq_s16(v45, v21), *v27.i8, *v16.i8), *v29.i8, *v17.i8), *v33.i8, *v19.i8), *v31.i8, *v18.i8), *v34.i8, *v20.i8);
        v47[1] = vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(vaddq_s16(v46, v21), v27, v16), v29, v17), v33, v19), v31, v18), v34, v20);
        v22 += 2 * a4;
        v35 -= 2;
        v36 = (v47 + v9);
      }

      while (v35 > 2);
      a7 += 4;
      a5 += 2;
      v48 = result - 16;
      v11 += 16;
      v12 += 16;
      v49 = result > 0x1F;
      result = (result - 16);
    }

    while (v49);
  }

  v50 = 4 * a4;
  if ((v48 & 8) != 0)
  {
    v51 = qword_27750DCD0[v8 - 1];
    v52 = (a5 - 3 * a4);
    v53 = *v52;
    v54 = (v52 + a4);
    v55 = *v54;
    v56 = (v54 + a4);
    v57 = *v56;
    v58 = (v56 + a4);
    v59 = *v58;
    v60 = (v58 + a4);
    v61 = *v60;
    v62 = (v60 + a4);
    v63 = *v62;
    v64 = *(v62 + a4);
    v65 = vdup_lane_s8(v51, 1);
    v66 = vdup_lane_s8(v51, 0);
    v67 = vdup_lane_s8(v51, 2);
    v68 = vdup_lane_s8(v51, 3);
    v69 = vdup_lane_s8(v51, 4);
    v70 = vdup_lane_s8(v51, 5);
    v71 = vdup_lane_s8(v51, 6);
    LODWORD(result) = a2 + 4;
    v72 = vdup_lane_s8(v51, 7);
    v73.i64[0] = 0xE000E000E000E000;
    v73.i64[1] = 0xE000E000E000E000;
    v74 = a5;
    v75 = a7;
    do
    {
      v76 = vmlsl_u8(vmull_u8(v55, v65), v53, v66);
      v77 = vmlsl_u8(vmull_u8(v57, v65), v55, v66);
      v78 = vmlsl_u8(v76, v57, v67);
      v79 = vmlsl_u8(vmull_u8(v59, v65), v57, v66);
      v80 = vmull_u8(v61, v65);
      v81 = vmlal_u8(vmlal_u8(vaddq_s16(v78, v73), v59, v68), v61, v69);
      v82 = vmlal_u8(vaddq_s16(vmlsl_u8(v77, v59, v67), v73), v61, v68);
      v83 = vmlsl_u8(v79, v61, v67);
      v53 = v61;
      v61 = *(v74 + 5 * a4);
      v84 = vmlsl_u8(vmlal_u8(v81, v64, v71), v63, v70);
      v85 = vmlal_u8(v82, v63, v69);
      v86 = vmlal_u8(vaddq_s16(v83, v73), v63, v68);
      v87 = vmlsl_u8(vmlsl_u8(v80, v59, v66), v63, v67);
      v55 = v63;
      v63 = *(v74 + 6 * a4);
      v59 = *(v74 + 4 * a4);
      v88 = vmlsl_u8(vmlal_u8(v85, v59, v71), v64, v70);
      v89 = vmlal_u8(v86, v64, v69);
      v90 = vmlal_u8(vaddq_s16(v87, v73), v64, v68);
      v57 = v64;
      v64 = *(v74 + 7 * a4);
      *v75 = vmlsl_u8(v84, v59, v72);
      v91 = (v75 + v9);
      *v91 = vmlsl_u8(v88, v61, v72);
      v92 = (v91 + v9);
      *v92 = vmlsl_u8(vmlsl_u8(vmlal_u8(v89, v61, v71), v59, v70), v63, v72);
      v93 = (v92 + v9);
      result = (result - 4);
      *v93 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v90, v59, v69), v63, v71), v61, v70), v64, v72);
      v75 = (v93 + v9);
      v74 = (v74 + v50);
    }

    while (result > 4);
    a7 += 2;
    ++a5;
  }

  if ((v48 & 4) != 0)
  {
    v94 = qword_27750DCD0[v8 - 1];
    v95 = (a5 - 3 * a4);
    v96 = *v95;
    v97 = (v95 + a4);
    v98 = *v97;
    v99 = (v97 + a4);
    v100 = *v99;
    v101 = (v99 + a4);
    v102 = *v101;
    v103 = (v101 + a4);
    v104 = *v103;
    v105 = (v103 + a4);
    v106 = *v105;
    v107 = *(v105 + a4);
    v108 = vdup_lane_s8(v94, 1);
    v109 = vdup_lane_s8(v94, 0);
    v110 = vdup_lane_s8(v94, 2);
    v111 = vdup_lane_s8(v94, 3);
    v112 = vdup_lane_s8(v94, 4);
    v113 = vdup_lane_s8(v94, 5);
    v114 = a2 + 4;
    v115 = vdup_lane_s8(v94, 6);
    v116 = vdup_lane_s8(v94, 7);
    do
    {
      v117 = vmull_u8(v98, v108);
      v118 = vmull_u8(v100, v108);
      v119 = vmull_u8(v104, v108).u64[0];
      *v117.i8 = vsub_s16(*v117.i8, *&vmlal_u8(vmull_u8(v96, v109), v100, v110));
      v120 = vmlal_u8(vmlal_u8(v117, v102, v111), v104, v112);
      *v118.i8 = vsub_s16(*v118.i8, *&vmlal_u8(vmull_u8(v98, v109), v102, v110));
      v121 = vmlal_u8(v118, v104, v111);
      v122 = vmlal_u8(vmull_u8(v100, v109), v104, v110).u64[0];
      v123 = *(a5 + 5 * a4);
      v96 = v104;
      v124 = vmull_u8(v106, v113);
      v125 = vmlal_u8(v121, v106, v112);
      *v7.i8 = vsub_s16(*&vmull_u8(v102, v108), v122);
      v126 = vmlal_u8(v7, v106, v111);
      v127 = vmlal_u8(vmull_u8(v102, v109), v106, v110);
      v98 = v106;
      v106 = *(a5 + 6 * a4);
      v128 = vmull_u8(v107, v113);
      v120.i64[0] = vmlal_u8(v120, v107, v115).u64[0];
      v129 = vmlal_u8(v126, v107, v112);
      *v127.i8 = vsub_s16(v119, *v127.i8);
      v130 = vmlal_u8(v127, v107, v111);
      v131 = *(a5 + 7 * a4);
      v100 = v107;
      a5 = (a5 + v50);
      v132 = *a5;
      v133 = vmull_u8(*a5, v113);
      *a7 = vadd_s16(vsub_s16(*v120.i8, *&vmlal_u8(v124, *a5, v116)), 0xE000E000E000E000);
      *(a7 + v9) = vadd_s16(vsub_s16(*&vmlal_u8(v125, v132, v115), *&vmlal_u8(v128, v123, v116)), 0xE000E000E000E000);
      v7 = vmlal_u8(v129, v123, v115);
      v134 = (a7 + v9 + v9);
      *v134 = vadd_s16(vsub_s16(*v7.i8, *&vmlal_u8(v133, v106, v116)), 0xE000E000E000E000);
      *v124.i8 = vsub_s16(*&vmlal_u8(vmlal_u8(v130, v132, v112), v106, v115), *&vmlal_u8(vmull_u8(v123, v113), v131, v116));
      v135 = (v134 + v9);
      v114 -= 4;
      a7 = (v135 + v9);
      v102 = v132;
      *v135 = vadd_s16(*v124.i8, 0xE000E000E000E000);
      v104 = v123;
      v107 = v131;
    }

    while (v114 > 4);
  }

  return result;
}

uint64_t sub_277427864(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x8_t *a7)
{
  v13 = result;
  if (result < 16)
  {
    v14 = result;
  }

  else
  {
    do
    {
      result = sub_277414304(a2, a3, a4, a5, a6, a7);
      a7 += 2;
      a5 += 16;
      v14 = v13 - 16;
      v15 = v13 > 0x1F;
      v13 -= 16;
    }

    while (v15);
  }

  v16 = 2 * a6;
  if ((v14 & 8) != 0)
  {
    v17 = qword_27750DCD0[(a3 & 3) - 1];
    v18 = (a5 - 3);
    v19 = a2 + 1;
    v20 = vdup_lane_s8(v17, 0);
    v21 = vdup_lane_s8(v17, 1);
    v22 = vdup_lane_s8(v17, 2);
    v23 = vdup_lane_s8(v17, 3);
    v24 = vdup_lane_s8(v17, 4);
    v25 = vdup_lane_s8(v17, 5);
    v26 = vdup_lane_s8(v17, 6);
    v27 = vdup_lane_s8(v17, 7);
    v28.i64[0] = 0xE000E000E000E000;
    v28.i64[1] = 0xE000E000E000E000;
    v29 = a7;
    do
    {
      v30 = *v18;
      v18 = (v18 + a4);
      *v29 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vaddq_s16(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v30, v30, 1uLL), v21), *v30.i8, v20), *&vextq_s8(v30, v30, 2uLL), v22), v28), *&vextq_s8(v30, v30, 3uLL), v23), *&vextq_s8(v30, v30, 4uLL), v24), *&vextq_s8(v30, v30, 6uLL), v26), *&vextq_s8(v30, v30, 5uLL), v25), *&vextq_s8(v30, v30, 7uLL), v27);
      v29 = (v29 + v16);
      --v19;
    }

    while (v19 > 1);
    ++a7;
    a5 += 8;
  }

  if ((v14 & 4) != 0)
  {
    v31 = qword_27750DCD0[(a3 & 3) - 1];
    v32 = (a5 - 3);
    v33 = vdup_lane_s8(v31, 0);
    v34 = vdup_lane_s8(v31, 1);
    v35 = vdup_lane_s8(v31, 2);
    v36 = vdup_lane_s8(v31, 3);
    v37 = vdup_lane_s8(v31, 4);
    v38 = vdup_lane_s8(v31, 5);
    v39 = a2 + 1;
    v40 = vdup_lane_s8(v31, 6);
    v41 = vdup_lane_s8(v31, 7);
    do
    {
      v42 = *v32;
      v32 = (v32 + a4);
      v43 = vextq_s8(v42, v42, 3uLL).u64[0];
      v44 = vextq_s8(v42, v42, 4uLL).u64[0];
      v45 = vextq_s8(v42, v42, 5uLL).u64[0];
      v46 = vextq_s8(v42, v42, 6uLL).u64[0];
      v47 = vextq_s8(v42, v42, 7uLL).u64[0];
      v48 = vmull_u8(*&vextq_s8(v42, v42, 1uLL), v34).u64[0];
      v49 = vmlal_u8(vmull_u8(*v42.i8, v33), *&vextq_s8(v42, v42, 2uLL), v35);
      *v49.i8 = vsub_s16(v48, *v49.i8);
      *a7->i8 = vadd_s16(vsub_s16(*&vmlal_u8(vmlal_u8(vmlal_u8(v49, v43, v36), v44, v37), v46, v40), *&vmlal_u8(vmull_u8(v45, v38), v47, v41)), 0xE000E000E000E000);
      a7 = (a7 + v16);
      --v39;
    }

    while (v39 > 1);
  }

  return result;
}

uint64_t sub_277427A4C(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  if (result < 8)
  {
    v16 = a5;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = qword_27750DCD0[(a3 & 3) - 1];
  v8 = vmovl_u8(qword_27750DCD0[((a3 >> 16) & 3) - 1]);
  v9 = a7 + a6;
  v10 = 4 * a4 - 3;
  v11 = v10 + a4;
  v91 = vdup_lane_s8(v7, 1);
  v92 = vdup_lane_s8(v7, 0);
  v89 = vdup_lane_s8(v7, 3);
  v90 = vdup_lane_s8(v7, 2);
  v12 = vdup_lane_s8(v7, 4);
  v13 = vdup_lane_s8(v7, 5);
  v14 = vdup_lane_s8(v7, 6);
  v15 = vdup_lane_s8(v7, 7);
  v16 = a5;
  do
  {
    v17 = 0;
    v18 = *(v16 - 3 * a4 - 3);
    v19 = (v16 - 3 * a4 - 3 + a4);
    v20 = *v19;
    v21 = (v19 + a4);
    v22 = *v21;
    v23 = (v21 + a4);
    v24 = *v23;
    v25 = (v23 + a4);
    v26 = *v25;
    v27 = &v25->i8[a4];
    v28 = *v27->i8;
    v29 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v18, v18, 1uLL), v91), *v18.i8, v92), *&vextq_s8(v18, v18, 2uLL), v90), *&vextq_s8(v18, v18, 3uLL), v89), *&vextq_s8(v18, v18, 4uLL), v12), *&vextq_s8(v18, v18, 6uLL), v14), *&vextq_s8(v18, v18, 5uLL), v13), *&vextq_s8(v18, v18, 7uLL), v15);
    v30 = *&v27->i8[a4];
    v31 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v20, v20, 1uLL), v91), *v20.i8, v92), *&vextq_s8(v20, v20, 2uLL), v90), *&vextq_s8(v20, v20, 3uLL), v89), *&vextq_s8(v20, v20, 4uLL), v12), *&vextq_s8(v20, v20, 6uLL), v14), *&vextq_s8(v20, v20, 5uLL), v13), *&vextq_s8(v20, v20, 7uLL), v15);
    v32 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v22, v22, 1uLL), v91), *v22.i8, v92), *&vextq_s8(v22, v22, 2uLL), v90), *&vextq_s8(v22, v22, 3uLL), v89), *&vextq_s8(v22, v22, 4uLL), v12), *&vextq_s8(v22, v22, 6uLL), v14), *&vextq_s8(v22, v22, 5uLL), v13), *&vextq_s8(v22, v22, 7uLL), v15);
    v33 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v24, v24, 1uLL), v91), *v24.i8, v92), *&vextq_s8(v24, v24, 2uLL), v90), *&vextq_s8(v24, v24, 3uLL), v89), *&vextq_s8(v24, v24, 4uLL), v12), *&vextq_s8(v24, v24, 6uLL), v14), *&vextq_s8(v24, v24, 5uLL), v13), *&vextq_s8(v24, v24, 7uLL), v15);
    v34 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v26, v26, 1uLL), v91), *v26.i8, v92), *&vextq_s8(v26, v26, 2uLL), v90), *&vextq_s8(v26, v26, 3uLL), v89), *&vextq_s8(v26, v26, 4uLL), v12), *&vextq_s8(v26, v26, 6uLL), v14), *&vextq_s8(v26, v26, 5uLL), v13), *&vextq_s8(v26, v26, 7uLL), v15);
    v35 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v28, v28, 1uLL), v91), *v27, v92), *&vextq_s8(v28, v28, 2uLL), v90), *&vextq_s8(v28, v28, 3uLL), v89), *&vextq_s8(v28, v28, 4uLL), v12), *&vextq_s8(v28, v28, 6uLL), v14), *&vextq_s8(v28, v28, 5uLL), v13), *&vextq_s8(v28, v28, 7uLL), v15);
    v36 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v30, v30, 1uLL), v91), *v30.i8, v92), *&vextq_s8(v30, v30, 2uLL), v90), *&vextq_s8(v30, v30, 3uLL), v89), *&vextq_s8(v30, v30, 4uLL), v12), *&vextq_s8(v30, v30, 6uLL), v14), *&vextq_s8(v30, v30, 5uLL), v13), *&vextq_s8(v30, v30, 7uLL), v15);
    v37 = a2 + 2;
    v38 = a5;
    do
    {
      v39 = *(v38 + v10);
      v40 = vmlsl_lane_s16(vmull_lane_s16(*v31.i8, *v8.i8, 1), *v29.i8, *v8.i8, 0);
      v41 = vmlsl_high_lane_s16(vmull_high_lane_s16(v31, *v8.i8, 1), v29, *v8.i8, 0);
      v29 = v32;
      v42 = *(v38 + v11);
      v43 = vmlsl_lane_s16(vmull_lane_s16(*v32.i8, *v8.i8, 1), *v31.i8, *v8.i8, 0);
      v44 = vmlsl_high_lane_s16(vmull_high_lane_s16(v32, *v8.i8, 1), v31, *v8.i8, 0);
      v31 = v33;
      v45 = vmlal_lane_s16(vmlsl_lane_s16(v40, *v32.i8, *v8.i8, 2), *v33.i8, *v8.i8, 3);
      v46 = vmlal_high_lane_s16(vmlsl_high_lane_s16(v41, v32, *v8.i8, 2), v33, *v8.i8, 3);
      v47 = vmlsl_lane_s16(v43, *v33.i8, *v8.i8, 2);
      v48 = vmlsl_high_lane_s16(v44, v33, *v8.i8, 2);
      v33 = v35;
      v32 = v34;
      v49 = vdup_lane_s8(v7, 6);
      v50 = vdup_lane_s8(v7, 7);
      v34 = v36;
      v36 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v42, v42, 1uLL), v91), *v42.i8, v92), *&vextq_s8(v42, v42, 2uLL), v90), *&vextq_s8(v42, v42, 3uLL), v89), *&vextq_s8(v42, v42, 4uLL), v12), *&vextq_s8(v42, v42, 6uLL), v49), *&vextq_s8(v42, v42, 5uLL), v13), *&vextq_s8(v42, v42, 7uLL), v50);
      v35 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v39, v39, 1uLL), v91), *v39.i8, v92), *&vextq_s8(v39, v39, 2uLL), v90), *&vextq_s8(v39, v39, 3uLL), v89), *&vextq_s8(v39, v39, 4uLL), v12), *&vextq_s8(v39, v39, 6uLL), v49), *&vextq_s8(v39, v39, 5uLL), v13), *&vextq_s8(v39, v39, 7uLL), v50);
      *(a7 + v17) = vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v45, *v32.i8, v8, 4), *v34.i8, v8, 6), *v33.i8, v8, 5), *v35.i8, v8, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v46, v32, v8, 4), v34, v8, 6), v33, v8, 5), v35, v8, 7), 6uLL), 6uLL);
      *&v9[v17] = vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v47, *v32.i8, *v8.i8, 3), *v33.i8, v8, 4), *v35.i8, v8, 6), *v34.i8, v8, 5), *v36.i8, v8, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v48, v32, *v8.i8, 3), v33, v8, 4), v35, v8, 6), v34, v8, 5), v36, v8, 7), 6uLL), 6uLL);
      v17 += 2 * a6;
      v38 += 2 * a4;
      v37 -= 2;
    }

    while (v37 > 2);
    a7 += 2;
    v16 += 8;
    v51 = result - 8;
    v9 += 8;
    v11 += 8;
    v10 += 8;
    v52 = result > 0xF;
    result = (result - 8);
  }

  while (v52);
  if (v51)
  {
LABEL_9:
    v53 = qword_27750DCD0[((a3 >> 16) & 3) - 1];
    v54 = vmovl_u8(qword_27750DCD0[(a3 & 3) - 1]);
    v55 = v16 - 3 * a4;
    v56 = *(v55 - 3);
    v57 = (v55 - 3 + a4);
    v58 = *v57;
    v59 = (v57 + a4);
    v60 = *v59;
    v61 = (v59 + a4);
    v62 = *v61;
    v63 = &v61->i8[a4];
    v64 = *v63;
    v65 = &v63->i8[a4];
    v66 = *v65;
    v67 = *(v65 + a4);
    v68 = (v16 + 4 * a4 - 3);
    v69 = vdupq_lane_s8(v53, 0);
    v70 = vdupq_lane_s8(v53, 1);
    v71 = a2 + 1;
    v72 = vdupq_lane_s8(v53, 2);
    v73 = vextq_s8(v72, v72, 8uLL).u64[0];
    v74 = vdupq_lane_s8(v53, 3);
    v75 = vextq_s8(v74, v74, 8uLL).u64[0];
    v76 = vdupq_lane_s8(v53, 4);
    v77 = vextq_s8(v76, v76, 8uLL).u64[0];
    v78 = vdupq_lane_s8(v53, 5);
    v79 = vdupq_lane_s8(v53, 6);
    v80 = vextq_s8(v79, v79, 8uLL).u64[0];
    v81 = vdupq_lane_s8(v53, 7);
    v82 = vextq_s8(v81, v81, 8uLL).u64[0];
    do
    {
      v83 = vmlsl_u8(vmull_u8(*v58.i8, *v70.i8), *v56.i8, *v69.i8);
      v84 = vmull_high_u8(v58, v70);
      v85 = vmull_high_u8(v56, v69);
      v56 = v58;
      v58 = v60;
      v60 = v62;
      v62 = v64;
      v64 = v66;
      v66 = v67;
      v86 = vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(v83, *v58.i8, *v72.i8), *v60.i8, *v74.i8), *v62.i8, *v76.i8), *v67.i8, *v79.i8);
      v67 = *v68->i8;
      v87 = vmlsl_u8(vmlsl_u8(v86, *v64.i8, *v78.i8), *v68, *v81.i8);
      *v84.i8 = vsub_s16(*v84.i8, *&vmlal_u8(v85, *&vextq_s8(v58, v58, 8uLL), v73));
      v88 = vmlal_u8(vmlal_u8(vmlal_u8(v84, *&vextq_s8(v60, v60, 8uLL), v75), *&vextq_s8(v62, v62, 8uLL), v77), *&vextq_s8(v66, v66, 8uLL), v80);
      *v88.i8 = vsub_s16(*v88.i8, *&vmlal_u8(vmull_high_u8(v64, v78), *&vextq_s8(v67, v67, 8uLL), v82));
      *v87.i8 = vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*&vextq_s8(v87, v87, 2uLL), *v54.i8, 1), *v87.i8, *v54.i8, 0), *&vextq_s8(v87, v87, 4uLL), *v54.i8, 2), *&vextq_s8(v87, v87, 6uLL), *v54.i8, 3), v87, v54, 4), *&vextq_s8(v87, v88, 0xCuLL), v54, 6), *&vextq_s8(v87, v88, 0xAuLL), v54, 5), *&vextq_s8(v87, v88, 0xEuLL), v54, 7), 6uLL);
      *a7 = vqrshrun_n_s16(v87, 6uLL).u32[0];
      a7 = (a7 + a6);
      v68 = (v68 + a4);
      --v71;
    }

    while (v71 > 1);
  }

  return result;
}

double sub_277427FEC(int a1, int a2, unint64_t a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, int8x8_t *a7, uint8x16_t a8)
{
  v8 = (a3 >> 16) & 3;
  if (a1 < 16)
  {
    v43 = a1;
  }

  else
  {
    v9 = qword_27750DCD0[v8 - 1];
    v10 = a7 + a6;
    v11 = a5 + 5 * a4;
    v12 = a5 + 4 * a4;
    a8 = vdupq_lane_s8(v9, 0);
    v13 = vdupq_lane_s8(v9, 1);
    v14 = vdupq_lane_s8(v9, 2);
    v15 = vdupq_lane_s8(v9, 3);
    v16 = vdupq_lane_s8(v9, 4);
    v17 = vdupq_lane_s8(v9, 5);
    v18 = vdupq_lane_s8(v9, 6);
    v19 = vdupq_lane_s8(v9, 7);
    do
    {
      v20 = 0;
      v21 = 0;
      v22 = *&a5->i8[-3 * a4];
      v23 = (a5 + a4 + -3 * a4);
      v24 = *v23;
      v25 = (v23 + a4);
      v26 = *v25;
      v27 = (v25 + a4);
      v28 = *v27;
      v29 = (v27 + a4);
      v30 = *v29;
      v31 = (v29 + a4);
      v32 = *v31;
      v33 = *(v31 + a4);
      v34 = a2 + 2;
      do
      {
        v35 = vmlsl_u8(vmull_u8(*v26.i8, *v13.i8), *v24.i8, *a8.i8);
        v36 = vmlsl_high_u8(vmull_high_u8(v26, v13), v24, a8);
        v37 = vmlsl_u8(vmlsl_u8(vmull_u8(*v24.i8, *v13.i8), *v22.i8, *a8.i8), *v26.i8, *v14.i8);
        v38 = vmlsl_high_u8(vmlsl_high_u8(vmull_high_u8(v24, v13), v22, a8), v26, v14);
        v22 = v26;
        v26 = v30;
        v39 = vmlal_u8(v37, *v28.i8, *v15.i8);
        v40 = vmlal_high_u8(v38, v28, v15);
        v41 = vmlsl_u8(v35, *v28.i8, *v14.i8);
        v42 = vmlsl_high_u8(v36, v28, v14);
        v24 = v28;
        v28 = v32;
        v30 = v33;
        v32 = *&v12[v20];
        v33 = *&v11[v20];
        *&a7->i8[v21] = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v39, *v26.i8, *v16.i8), *v30.i8, *v18.i8), *v28.i8, *v17.i8), *v32.i8, *v19.i8), 6uLL), vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(v40, v26, v16), v30, v18), v28, v17), v32, v19), 6uLL);
        *&v10[v21] = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(v41, *v26.i8, *v15.i8), *v28.i8, *v16.i8), *v32.i8, *v18.i8), *v30.i8, *v17.i8), *v33.i8, *v19.i8), 6uLL), vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(v42, v26, v15), v28, v16), v32, v18), v30, v17), v33, v19), 6uLL);
        v21 += 2 * a6;
        v20 += 2 * a4;
        v34 -= 2;
      }

      while (v34 > 2);
      a7 += 2;
      a5 += 2;
      v43 = a1 - 16;
      v10 += 16;
      v11 += 16;
      v12 += 16;
      v44 = a1 > 0x1F;
      a1 -= 16;
    }

    while (v44);
  }

  v45 = 4 * a4;
  if ((v43 & 8) != 0)
  {
    v46 = qword_27750DCD0[v8 - 1];
    v47 = (a5 - 3 * a4);
    v48 = *v47;
    v49 = (v47 + a4);
    v50 = *v49;
    v51 = (v49 + a4);
    v52 = *v51;
    v53 = (v51 + a4);
    v54 = *v53;
    v55 = (v53 + a4);
    v56 = *v55;
    v57 = (v55 + a4);
    v58 = *v57;
    v59 = *(v57 + a4);
    v60 = a2 + 4;
    *a8.i8 = vdup_lane_s8(v46, 1);
    v61 = vdup_lane_s8(v46, 0);
    v62 = vdup_lane_s8(v46, 2);
    v63 = vdup_lane_s8(v46, 3);
    v64 = vdup_lane_s8(v46, 4);
    v65 = vdup_lane_s8(v46, 5);
    v66 = vdup_lane_s8(v46, 6);
    v67 = vdup_lane_s8(v46, 7);
    v68 = a5;
    v69 = a7;
    do
    {
      v70 = vmlsl_u8(vmull_u8(v50, *a8.i8), v48, v61);
      v48 = v56;
      v71 = vmlsl_u8(vmull_u8(v54, *a8.i8), v52, v61);
      v72 = vmlal_u8(vmlsl_u8(v70, v52, v62), v54, v63);
      v73 = vmlsl_u8(vmlsl_u8(vmull_u8(v52, *a8.i8), v50, v61), v54, v62);
      v74 = vmlsl_u8(vmull_u8(v56, *a8.i8), v54, v61);
      v54 = *(v68 + 4 * a4);
      v75 = vmlal_u8(v72, v56, v64);
      v76 = vmlal_u8(v73, v56, v63);
      v77 = vmlsl_u8(v71, v56, v62);
      v56 = *(v68 + 5 * a4);
      v78 = vmlsl_u8(vmlal_u8(v75, v59, v66), v58, v65);
      v79 = vmlal_u8(v76, v58, v64);
      v80 = vmlal_u8(v77, v58, v63);
      v81 = vmlsl_u8(v74, v58, v62);
      v50 = v58;
      v58 = *(v68 + 6 * a4);
      v82 = vmlsl_u8(vmlal_u8(v79, v54, v66), v59, v65);
      v83 = vmlal_u8(v80, v59, v64);
      v84 = vmlal_u8(v81, v59, v63);
      v52 = v59;
      v59 = *(v68 + 7 * a4);
      *v69 = vqrshrun_n_s16(vmlsl_u8(v78, v54, v67), 6uLL);
      v85 = (v69 + a6);
      *v85 = vqrshrun_n_s16(vmlsl_u8(v82, v56, v67), 6uLL);
      v86 = (v85 + a6);
      *v86 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v83, v56, v66), v54, v65), v58, v67), 6uLL);
      v87 = (v86 + a6);
      *v87 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v84, v54, v64), v58, v66), v56, v65), v59, v67), 6uLL);
      v69 = (v87 + a6);
      v60 -= 4;
      v68 = (v68 + v45);
    }

    while (v60 > 4);
    ++a7;
    ++a5;
  }

  if ((v43 & 4) != 0)
  {
    v88 = qword_27750DCD0[v8 - 1];
    v89 = (a5 - 3 * a4);
    v90 = *v89;
    v91 = (v89 + a4);
    v92 = *v91;
    v93 = (v91 + a4);
    v94 = *v93;
    v95 = (v93 + a4);
    v96 = *v95;
    v97 = (v95 + a4);
    v98 = *v97;
    v99 = (v97 + a4);
    v100 = *v99;
    *a8.i8 = *(v99 + a4);
    v101 = a2 + 4;
    v102 = vdup_lane_s8(v88, 1);
    v103 = vdup_lane_s8(v88, 0);
    v104 = vdup_lane_s8(v88, 2);
    v105 = vdup_lane_s8(v88, 3);
    v106 = vdup_lane_s8(v88, 4);
    v107 = vdup_lane_s8(v88, 5);
    v108 = vdup_lane_s8(v88, 6);
    v109 = vdup_lane_s8(v88, 7);
    do
    {
      v110 = vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(v92, v102), v90, v103), v94, v104), v96, v105), v98, v106);
      v111 = vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(v94, v102), v92, v103), v96, v104), v98, v105);
      v112 = vmlsl_u8(vmlsl_u8(vmull_u8(v96, v102), v94, v103), v98, v104);
      v113 = vmull_u8(v98, v102);
      v90 = v98;
      v98 = *(a5 + 5 * a4);
      v114 = vmlsl_u8(vmlsl_u8(v113, v96, v103), v100, v104);
      v115 = *(a5 + 6 * a4);
      v116 = *(a5 + 7 * a4);
      v92 = v100;
      a5 = (a5 + v45);
      v96 = *a5;
      v117 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v111, v100, v106), *a5, v108), *a8.i8, v107), v98, v109);
      v118 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(v112, v100, v105), *a8.i8, v106), v98, v108), *a5, v107), v115, v109);
      v119 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(v114, *a8.i8, v105), *a5, v106), v115, v108), v98, v107), v116, v109);
      a7->i32[0] = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v110, *a8.i8, v108), v100, v107), *a5, v109), 6uLL).u32[0];
      *(a7->i32 + a6) = vqrshrun_n_s16(v117, 6uLL).u32[0];
      v120 = (a7 + a6 + a6);
      v120->i32[0] = vqrshrun_n_s16(v118, 6uLL).u32[0];
      v121 = (v120 + a6);
      a7 = (v121 + a6);
      v101 -= 4;
      v94 = *a8.i8;
      v121->i32[0] = vqrshrun_n_s16(v119, 6uLL).u32[0];
      v100 = v115;
      *a8.i8 = v116;
    }

    while (v101 > 4);
  }

  return *a8.i64;
}

uint64_t sub_277428448(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x16_t *a7)
{
  v13 = result;
  if (result < 16)
  {
    v14 = result;
  }

  else
  {
    do
    {
      result = sub_2774156A8(a2, a3, a4, a5, a6, a7++);
      a5 += 16;
      v14 = v13 - 16;
      v15 = v13 > 0x1F;
      v13 -= 16;
    }

    while (v15);
  }

  if ((v14 & 8) != 0)
  {
    v16 = qword_27750DCD0[(a3 & 3) - 1];
    v17 = (a5 - 3);
    v18 = vdup_lane_s8(v16, 0);
    v19 = vdup_lane_s8(v16, 1);
    v20 = vdup_lane_s8(v16, 2);
    v21 = vdup_lane_s8(v16, 3);
    v22 = vdup_lane_s8(v16, 4);
    v23 = vdup_lane_s8(v16, 5);
    v24 = a2 + 1;
    v25 = vdup_lane_s8(v16, 6);
    v26 = vdup_lane_s8(v16, 7);
    v27 = a7;
    do
    {
      v28 = *v17->i8;
      v29 = vmlsl_u8(vmull_u8(*&vextq_s8(v28, v28, 1uLL), v19), *v17, v18);
      v17 = (v17 + a4);
      *v27 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(v29, *&vextq_s8(v28, v28, 2uLL), v20), *&vextq_s8(v28, v28, 3uLL), v21), *&vextq_s8(v28, v28, 4uLL), v22), *&vextq_s8(v28, v28, 6uLL), v25), *&vextq_s8(v28, v28, 5uLL), v23), *&vextq_s8(v28, v28, 7uLL), v26), 6uLL);
      v27 = (v27 + a6);
      --v24;
    }

    while (v24 > 1);
    a7 = (a7 + 8);
    a5 += 8;
  }

  if ((v14 & 4) != 0)
  {
    v30 = qword_27750DCD0[(a3 & 3) - 1];
    v31 = (a5 - 3);
    v32 = a2 + 1;
    v33 = vdup_lane_s8(v30, 0);
    v34 = vdup_lane_s8(v30, 1);
    v35 = vdup_lane_s8(v30, 2);
    v36 = vdup_lane_s8(v30, 3);
    v37 = vdup_lane_s8(v30, 4);
    v38 = vdup_lane_s8(v30, 5);
    v39 = vdup_lane_s8(v30, 6);
    v40 = vdup_lane_s8(v30, 7);
    do
    {
      v41 = *v31->i8;
      v42 = vmlsl_u8(vmull_u8(*&vextq_s8(v41, v41, 1uLL), v34), *v31, v33);
      v31 = (v31 + a4);
      a7->i32[0] = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(v42, *&vextq_s8(v41, v41, 2uLL), v35), *&vextq_s8(v41, v41, 3uLL), v36), *&vextq_s8(v41, v41, 4uLL), v37), *&vextq_s8(v41, v41, 6uLL), v39), *&vextq_s8(v41, v41, 5uLL), v38), *&vextq_s8(v41, v41, 7uLL), v40), 6uLL).u32[0];
      a7 = (a7 + a6);
      --v32;
    }

    while (v32 > 1);
  }

  return result;
}

uint64_t sub_27742861C(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 3;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = xmmword_27750DCF0[(a3 & 3) - 1];
  v11 = xmmword_27750DCF0[v7 - 1];
  v12 = vdupq_lane_s16(*v10.i8, 0);
  v13 = vdupq_lane_s16(*v10.i8, 1);
  v14 = vdupq_lane_s16(*v10.i8, 2);
  v15 = vdupq_laneq_s16(v10, 5);
  v16 = vdupq_laneq_s16(v10, 6);
  v17 = vdupq_laneq_s16(v10, 7);
  v18 = vdupq_lane_s16(*v10.i8, 3);
  v19 = vdupq_laneq_s16(v10, 4);
  v20 = a5 + 8 * a4 + 10;
  v21.i64[0] = 0x38000000380000;
  v21.i64[1] = 0x38000000380000;
  do
  {
    v22 = *(a5 - 6 * a4 - 6);
    v23 = *(a5 - 6 * a4 + 10);
    v24 = vextq_s8(v22, v23, 6uLL);
    v25 = vextq_s8(v22, v23, 8uLL);
    v26 = (a5 - 6 * a4 - 6 + 2 * a4);
    v27 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v22, v12), vextq_s8(v22, v23, 2uLL), v13), vextq_s8(v22, v23, 4uLL), v14), vextq_s8(v22, v23, 0xAuLL), v15), vextq_s8(v22, v23, 0xCuLL), v16), vextq_s8(v22, v23, 0xEuLL), v17);
    v28 = vmulq_s16(v24, v18);
    v29 = vmulq_s16(v25, v19);
    v30 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v29.i8, *v28.i8), *v27.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v28, v29), v27), 2uLL);
    v31 = *v26;
    v32 = *(v26 + 1);
    v33 = (v26 + 2 * a4);
    v34 = vextq_s8(v31, v32, 6uLL);
    v35 = vextq_s8(v31, v32, 8uLL);
    v36 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v31, v12), vextq_s8(v31, v32, 2uLL), v13), vextq_s8(v31, v32, 4uLL), v14), vextq_s8(v31, v32, 0xAuLL), v15), vextq_s8(v31, v32, 0xCuLL), v16), vextq_s8(v31, v32, 0xEuLL), v17);
    v37 = vmulq_s16(v34, v18);
    v38 = vmulq_s16(v35, v19);
    v39 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v38.i8, *v37.i8), *v36.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v37, v38), v36), 2uLL);
    v40 = *v33;
    v41 = *(v33 + 1);
    v42 = (v33 + 2 * a4);
    v43 = vextq_s8(v40, v41, 6uLL);
    v44 = vextq_s8(v40, v41, 8uLL);
    v45 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v40, v12), vextq_s8(v40, v41, 2uLL), v13), vextq_s8(v40, v41, 4uLL), v14), vextq_s8(v40, v41, 0xAuLL), v15), vextq_s8(v40, v41, 0xCuLL), v16), vextq_s8(v40, v41, 0xEuLL), v17);
    v46 = vmulq_s16(v43, v18);
    v47 = vmulq_s16(v44, v19);
    v48 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v47.i8, *v46.i8), *v45.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v46, v47), v45), 2uLL);
    v49 = *v42;
    v50 = *(v42 + 1);
    v51 = (v42 + 2 * a4);
    v52 = vextq_s8(v49, v50, 6uLL);
    v53 = vextq_s8(v49, v50, 8uLL);
    v54 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v49, v12), vextq_s8(v49, v50, 2uLL), v13), vextq_s8(v49, v50, 4uLL), v14), vextq_s8(v49, v50, 0xAuLL), v15), vextq_s8(v49, v50, 0xCuLL), v16), vextq_s8(v49, v50, 0xEuLL), v17);
    v55 = vmulq_s16(v52, v18);
    v56 = vmulq_s16(v53, v19);
    v57 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v56.i8, *v55.i8), *v54.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v55, v56), v54), 2uLL);
    v58 = *v51;
    v59 = *(v51 + 1);
    v60 = (v51 + 2 * a4);
    v61 = vextq_s8(v58, v59, 6uLL);
    v62 = vextq_s8(v58, v59, 8uLL);
    v63 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v58, v12), vextq_s8(v58, v59, 2uLL), v13), vextq_s8(v58, v59, 4uLL), v14), vextq_s8(v58, v59, 0xAuLL), v15), vextq_s8(v58, v59, 0xCuLL), v16), vextq_s8(v58, v59, 0xEuLL), v17);
    v64 = vmulq_s16(v61, v18);
    v65 = vmulq_s16(v62, v19);
    v66 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v65.i8, *v64.i8), *v63.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v64, v65), v63), 2uLL);
    v67 = *v60;
    v68 = *(v60 + 1);
    v69 = (v60 + 2 * a4);
    v70 = vextq_s8(v67, v68, 6uLL);
    v71 = vextq_s8(v67, v68, 8uLL);
    v72 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v67, v12), vextq_s8(v67, v68, 2uLL), v13), vextq_s8(v67, v68, 4uLL), v14), vextq_s8(v67, v68, 0xAuLL), v15), vextq_s8(v67, v68, 0xCuLL), v16), vextq_s8(v67, v68, 0xEuLL), v17);
    v73 = vmulq_s16(v70, v18);
    v74 = vmulq_s16(v71, v19);
    v75 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v74.i8, *v73.i8), *v72.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v73, v74), v72), 2uLL);
    v76 = v69[1];
    v77 = vextq_s8(*v69, v76, 8uLL);
    v78 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(*v69, v12), vextq_s8(*v69, v76, 2uLL), v13), vextq_s8(*v69, v76, 4uLL), v14), vextq_s8(*v69, v76, 0xAuLL), v15), vextq_s8(*v69, v76, 0xCuLL), v16), vextq_s8(*v69, v76, 0xEuLL), v17);
    v79 = vmulq_s16(vextq_s8(*v69, v76, 6uLL), v18);
    v80 = vmulq_s16(v77, v19);
    v81 = a2 + 1;
    v82 = a7;
    v83 = v20;
    v84 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v80.i8, *v79.i8), *v78.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v79, v80), v78), 2uLL);
    do
    {
      v85 = v83[-1];
      v86 = vextq_s8(v85, *v83, 6uLL);
      v87 = vextq_s8(v85, *v83, 8uLL);
      v88 = vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v11.i8, 0), *v39.i8, *v11.i8, 1);
      v89 = vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v11.i8, 0), v39, *v11.i8, 1);
      v30 = v39;
      v39 = v48;
      v48 = v57;
      v57 = v66;
      v66 = v75;
      v75 = v84;
      v90 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v85, v12), vextq_s8(v85, *v83, 2uLL), v13), vextq_s8(v85, *v83, 4uLL), v14), vextq_s8(v85, *v83, 0xAuLL), v15), vextq_s8(v85, *v83, 0xCuLL), v16), vextq_s8(v85, *v83, 0xEuLL), v17);
      v91 = vmulq_s16(v86, v18);
      v92 = vmulq_s16(v87, v19);
      v93 = vaddl_u16(*v92.i8, *v91.i8);
      v94 = vaddl_high_u16(v91, v92);
      v95 = vaddw_s16(v93, *v90.i8);
      v96 = vaddw_high_s16(v94, v90);
      *v94.i8 = vshrn_n_s32(v95, 2uLL);
      v97 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v88, *v39.i8, *v11.i8, 2), *v48.i8, *v11.i8, 3), *v57.i8, v11, 4), *v66.i8, v11, 5), *v75.i8, v11, 6), *v94.i8, v11, 7);
      v84 = vshrn_high_n_s32(*v94.i8, v96, 2uLL);
      *v82 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v97, v21), 6uLL), vaddq_s32(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v89, v39, *v11.i8, 2), v48, *v11.i8, 3), v57, v11, 4), v66, v11, 5), v75, v11, 6), vshrn_n_s32(v96, 2uLL), v11, 7), v21), 6uLL);
      v83 = (v83 + v8);
      v82 = (v82 + v9);
      --v81;
    }

    while (v81 > 1);
    a7 += 2;
    a5 += 16;
    v98 = result - 8;
    v20 += 16;
    v99 = result > 0xF;
    result = (result - 8);
  }

  while (v99);
  if (v98)
  {
LABEL_9:
    v100 = xmmword_27750DCF0[(a3 & 3) - 1];
    v101 = xmmword_27750DCF0[v7 - 1];
    v102 = a5 - 6 * a4;
    v103 = *(v102 - 6);
    v102 -= 6;
    v104 = *(v102 + 8);
    v105 = *(v102 + 16);
    v106 = (v102 + 2 * a4);
    v107 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v103, v104, 2uLL), *v100.i8, 1), v103, *v100.i8, 0), vext_s8(v103, v104, 4uLL), *v100.i8, 2), vext_s8(v103, v104, 6uLL), *v100.i8, 3), v104, v100, 4), vext_s8(v104, v105, 2uLL), v100, 5), vext_s8(v104, v105, 4uLL), v100, 6), vext_s8(v104, v105, 6uLL), v100, 7), 2uLL);
    v108 = *v106;
    v109 = v106[1];
    v110 = v106[2];
    v111 = (v106 + 2 * a4);
    v112 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v108, v109, 2uLL), *v100.i8, 1), v108, *v100.i8, 0), vext_s8(v108, v109, 4uLL), *v100.i8, 2), vext_s8(v108, v109, 6uLL), *v100.i8, 3), v109, v100, 4), vext_s8(v109, v110, 2uLL), v100, 5), vext_s8(v109, v110, 4uLL), v100, 6), vext_s8(v109, v110, 6uLL), v100, 7), 2uLL);
    v113 = *v111;
    v114 = v111[1];
    v115 = v111[2];
    v116 = (v111 + 2 * a4);
    v117 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v113, v114, 2uLL), *v100.i8, 1), v113, *v100.i8, 0), vext_s8(v113, v114, 4uLL), *v100.i8, 2), vext_s8(v113, v114, 6uLL), *v100.i8, 3), v114, v100, 4), vext_s8(v114, v115, 2uLL), v100, 5), vext_s8(v114, v115, 4uLL), v100, 6), vext_s8(v114, v115, 6uLL), v100, 7), 2uLL);
    v118 = *v116;
    v119 = v116[1];
    v120 = v116[2];
    v121 = (v116 + 2 * a4);
    v122 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v118, v119, 2uLL), *v100.i8, 1), v118, *v100.i8, 0), vext_s8(v118, v119, 4uLL), *v100.i8, 2), vext_s8(v118, v119, 6uLL), *v100.i8, 3), v119, v100, 4), vext_s8(v119, v120, 2uLL), v100, 5), vext_s8(v119, v120, 4uLL), v100, 6), vext_s8(v119, v120, 6uLL), v100, 7), 2uLL);
    v123 = *v121;
    v124 = v121[1];
    v125 = v121[2];
    v126 = (v121 + 2 * a4);
    v127 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v123, v124, 2uLL), *v100.i8, 1), v123, *v100.i8, 0), vext_s8(v123, v124, 4uLL), *v100.i8, 2), vext_s8(v123, v124, 6uLL), *v100.i8, 3), v124, v100, 4), vext_s8(v124, v125, 2uLL), v100, 5), vext_s8(v124, v125, 4uLL), v100, 6), vext_s8(v124, v125, 6uLL), v100, 7), 2uLL);
    v128 = *v126;
    v129 = v126[1];
    v130 = v126[2];
    v131 = (v126 + 2 * a4);
    v132 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v128, v129, 2uLL), *v100.i8, 1), v128, *v100.i8, 0), vext_s8(v128, v129, 4uLL), *v100.i8, 2), vext_s8(v128, v129, 6uLL), *v100.i8, 3), v129, v100, 4), vext_s8(v129, v130, 2uLL), v100, 5), vext_s8(v129, v130, 4uLL), v100, 6), vext_s8(v129, v130, 6uLL), v100, 7), 2uLL);
    v133 = v131[1];
    v134 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(*v131, v133, 2uLL), *v100.i8, 1), *v131, *v100.i8, 0), vext_s8(*v131, v133, 4uLL), *v100.i8, 2), vext_s8(*v131, v133, 6uLL), *v100.i8, 3), v133, v100, 4), vext_s8(v133, v131[2], 2uLL), v100, 5), vext_s8(v133, v131[2], 4uLL), v100, 6), vext_s8(v133, v131[2], 6uLL), v100, 7), 2uLL);
    v135 = (a5 + 8 * a4 + 10);
    v136 = a2 + 1;
    do
    {
      v137.i64[0] = 0x38000000380000;
      v137.i64[1] = 0x38000000380000;
      v138 = v135[-1];
      v139 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v137, v107, *v101.i8, 0), v112, *v101.i8, 1), v117, *v101.i8, 2), v122, *v101.i8, 3), v127, v101, 4), v132, v101, 5), v134, v101, 6);
      v107 = v112;
      v112 = v117;
      v117 = v122;
      v122 = v127;
      v127 = v132;
      v132 = v134;
      v134 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v135[-2], v138, 2uLL), *v100.i8, 1), v135[-2], *v100.i8, 0), vext_s8(v135[-2], v138, 4uLL), *v100.i8, 2), vext_s8(v135[-2], v138, 6uLL), *v100.i8, 3), v138, v100, 4), vext_s8(v138, *v135, 2uLL), v100, 5), vext_s8(v138, *v135, 4uLL), v100, 6), vext_s8(v138, *v135, 6uLL), v100, 7), 2uLL);
      *a7 = vshrn_n_s32(vmlal_laneq_s16(v139, v134, v101, 7), 6uLL);
      v135 = (v135 + v8);
      a7 = (a7 + v9);
      --v136;
    }

    while (v136 > 1);
  }

  return result;
}

uint64_t sub_277428CE0(uint64_t result, int a2, unint64_t a3, uint64_t a4, int16x4_t *a5, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 3;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v8 = xmmword_27750DCF0[v7 - 1];
  v9 = vdupq_lane_s16(*v8.i8, 0);
  v10 = vdupq_lane_s16(*v8.i8, 1);
  v11 = vdupq_lane_s16(*v8.i8, 2);
  v12 = vdupq_laneq_s16(v8, 5);
  v13 = vdupq_laneq_s16(v8, 6);
  v14 = vdupq_laneq_s16(v8, 7);
  v15 = vdupq_lane_s16(*v8.i8, 3);
  v16 = vdupq_laneq_s16(v8, 4);
  v17 = a7 + 2 * a6;
  v18 = a5 + 10 * a4;
  v19 = &a5[a4];
  v20.i64[0] = 0xE000E000E000E000;
  v20.i64[1] = 0xE000E000E000E000;
  do
  {
    v21 = 0;
    v22 = 0;
    v23 = *&a5->i8[-6 * a4];
    v24 = *&a5->i8[-4 * a4];
    v25 = *&a5->i8[-2 * a4];
    v26 = a2 + 2;
    v27 = *a5->i8;
    v28 = *&a5->i8[2 * a4];
    v29 = *&a5->i8[4 * a4];
    v30 = *&a5->i8[6 * a4];
    do
    {
      v31 = v25;
      v32 = v27;
      v25 = v28;
      v27 = v29;
      v28 = v30;
      v29 = *&v19->i8[v21];
      v30 = *&v18[v21];
      v33 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v28, v13), v27, v12), v31, v11), v24, v10), v23, v9), v29, v14);
      v34 = vmulq_s16(v32, v15);
      v35 = vmulq_s16(v25, v16);
      v36 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v28, v12), v32, v11), v31, v10), v24, v9), v29, v13), v30, v14);
      v37 = vmulq_s16(v25, v15);
      v38 = vmulq_s16(v27, v16);
      *&a7->i8[v22] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v34.i8, *v35.i8), *v33.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v34, v35), v33), 2uLL), v20);
      *&v17[v22] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v37.i8, *v38.i8), *v36.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v37, v38), v36), 2uLL), v20);
      v22 += 4 * a6;
      v21 += 4 * a4;
      v26 -= 2;
      v24 = v32;
      v23 = v31;
    }

    while (v26 > 2);
    a7 += 2;
    a5 += 2;
    v39 = result - 8;
    v17 += 16;
    v18 += 16;
    v19 += 2;
    v40 = result > 0xF;
    result = (result - 8);
  }

  while (v40);
  if (v39)
  {
LABEL_9:
    v41 = xmmword_27750DCF0[v7 - 1];
    v42 = *(a5 - 6 * a4);
    v43 = *(a5 - 4 * a4);
    v44 = *(a5 - 2 * a4);
    v45 = *a5;
    v46 = *(a5 + 2 * a4);
    v47 = *(a5 + 4 * a4);
    v48 = *(a5 + 6 * a4);
    v49 = a2 + 4;
    v50 = 2 * a6;
    do
    {
      v51 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v43, *v41.i8, 1), v42, *v41.i8, 0), v44, *v41.i8, 2), v45, *v41.i8, 3), v46, v41, 4);
      v52 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v44, *v41.i8, 1), v43, *v41.i8, 0), v45, *v41.i8, 2), v46, *v41.i8, 3);
      v53 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v45, *v41.i8, 1), v44, *v41.i8, 0), v46, *v41.i8, 2);
      v54 = vmull_lane_s16(v46, *v41.i8, 1);
      v42 = v46;
      v46 = *(a5 + 10 * a4);
      v55 = vmlal_laneq_s16(v51, v47, v41, 5);
      v56 = vmlal_laneq_s16(v52, v47, v41, 4);
      v57 = vmlal_lane_s16(v53, v47, *v41.i8, 3);
      v58 = vmlal_lane_s16(vmlal_lane_s16(v54, v45, *v41.i8, 0), v47, *v41.i8, 2);
      v43 = v47;
      v47 = *(a5 + 12 * a4);
      v59 = vmlal_laneq_s16(v55, v48, v41, 6);
      v60 = vmlal_laneq_s16(v56, v48, v41, 5);
      v61 = vmlal_laneq_s16(v57, v48, v41, 4);
      v62 = vmlal_lane_s16(v58, v48, *v41.i8, 3);
      v44 = v48;
      v48 = *(a5 + 14 * a4);
      a5 += a4;
      v45 = *a5;
      v63 = vmlal_laneq_s16(vmlal_laneq_s16(v60, *a5, v41, 6), v46, v41, 7);
      v64 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v61, *a5, v41, 5), v46, v41, 6), v47, v41, 7);
      v65 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v62, *a5, v41, 4), v46, v41, 5), v47, v41, 6), v48, v41, 7);
      *a7 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(v59, *a5, v41, 7), 2uLL), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16(vshrn_n_s32(v63, 2uLL), 0xE000E000E000E000);
      v66 = (a7 + v50 + v50);
      *v66 = vadd_s16(vshrn_n_s32(v64, 2uLL), 0xE000E000E000E000);
      v67 = (v66 + v50);
      v49 -= 4;
      *v67 = vadd_s16(vshrn_n_s32(v65, 2uLL), 0xE000E000E000E000);
      a7 = (v67 + v50);
    }

    while (v49 > 4);
  }

  return result;
}

uint64_t sub_277428FD8(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
{
  v7 = 2 * a4;
  v8 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = xmmword_27750DCF0[(a3 & 3) - 1];
  v10 = vdupq_lane_s16(*v9.i8, 0);
  v11 = vdupq_lane_s16(*v9.i8, 1);
  v12 = vdupq_lane_s16(*v9.i8, 2);
  v13 = vdupq_laneq_s16(v9, 5);
  v14 = vdupq_laneq_s16(v9, 6);
  v15 = vdupq_laneq_s16(v9, 7);
  v16 = vdupq_lane_s16(*v9.i8, 3);
  v17 = vdupq_laneq_s16(v9, 4);
  v18 = (a5 + 10);
  v19.i64[0] = 0xE000E000E000E000;
  v19.i64[1] = 0xE000E000E000E000;
  do
  {
    v20 = a2 + 1;
    v21 = a7;
    v22 = v18;
    do
    {
      v23 = v22[-1];
      v24 = vmulq_s16(vextq_s8(v23, *v22, 6uLL), v16);
      v25 = vmulq_s16(vextq_s8(v23, *v22, 8uLL), v17);
      v26 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v23, v10), vextq_s8(v23, *v22, 2uLL), v11), vextq_s8(v23, *v22, 4uLL), v12), vextq_s8(v23, *v22, 0xAuLL), v13), vextq_s8(v23, *v22, 0xCuLL), v14), vextq_s8(v23, *v22, 0xEuLL), v15);
      *v21 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v25.i8, *v24.i8), *v26.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v24, v25), v26), 2uLL), v19);
      v22 = (v22 + v7);
      v21 = (v21 + v8);
      --v20;
    }

    while (v20 > 1);
    a7 += 2;
    a5 += 16;
    v27 = result - 8;
    ++v18;
    v28 = result > 0xF;
    result = (result - 8);
  }

  while (v28);
  if (v27)
  {
LABEL_9:
    v29 = xmmword_27750DCF0[(a3 & 3) - 1];
    v30 = (a5 + 10);
    v31 = a2 + 1;
    do
    {
      v32 = v30[-1];
      *a7 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v30[-2], v32, 2uLL), *v29.i8, 1), v30[-2], *v29.i8, 0), vext_s8(v30[-2], v32, 4uLL), *v29.i8, 2), vext_s8(v30[-2], v32, 6uLL), *v29.i8, 3), v32, v29, 4), vext_s8(v32, *v30, 2uLL), v29, 5), vext_s8(v32, *v30, 4uLL), v29, 6), vext_s8(v32, *v30, 6uLL), v29, 7), 2uLL), 0xE000E000E000E000);
      v30 = (v30 + v7);
      a7 = (a7 + v8);
      --v31;
    }

    while (v31 > 1);
  }

  return result;
}

uint64_t sub_277429150(uint64_t result, int a2, uint64_t a3, uint64_t a4, int16x4_t *a5, uint64_t a6, int16x4_t *a7)
{
  v7 = 4 * a4;
  v8 = 4 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = a7 + 2 * a6;
  v10.i64[0] = 0xE000E000E000E000;
  v10.i64[1] = 0xE000E000E000E000;
  v11 = a5 + 2 * a4;
  do
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 + 2;
    do
    {
      v15 = *&v11[v12];
      *&a7->i8[v13] = vaddq_s16(vshlq_n_s16(*&a5->i8[v12], 4uLL), v10);
      *&v9[v13] = vaddq_s16(vshlq_n_s16(v15, 4uLL), v10);
      v13 += v8;
      v12 += v7;
      v14 -= 2;
    }

    while (v14 > 2);
    a7 += 2;
    a5 += 2;
    v16 = result - 8;
    v9 += 16;
    v11 += 16;
    v17 = result <= 15;
    result = (result - 8);
  }

  while (!v17);
  if (v16)
  {
LABEL_10:
    v18 = a2 + 2;
    do
    {
      v19 = *(a5 + 2 * a4);
      v20 = *a5;
      a5 = (a5 + v7);
      *a7 = vadd_s16(vshl_n_s16(v20, 4uLL), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16(vshl_n_s16(v19, 4uLL), 0xE000E000E000E000);
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return result;
}

uint64_t sub_277429228(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 3;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = xmmword_27750DCF0[(a3 & 3) - 1];
  v11 = xmmword_27750DCF0[v7 - 1];
  v12 = vdupq_lane_s16(*v10.i8, 0);
  v13 = vdupq_lane_s16(*v10.i8, 1);
  v14 = vdupq_lane_s16(*v10.i8, 2);
  v15 = vdupq_laneq_s16(v10, 5);
  v16 = vdupq_laneq_s16(v10, 6);
  v17 = vdupq_laneq_s16(v10, 7);
  v18 = vdupq_lane_s16(*v10.i8, 3);
  v19 = vdupq_laneq_s16(v10, 4);
  v20 = a5 + 8 * a4 + 10;
  do
  {
    v21 = *(a5 - 6 * a4 - 6);
    v22 = *(a5 - 6 * a4 + 10);
    v23 = vextq_s8(v21, v22, 6uLL);
    v24 = vextq_s8(v21, v22, 8uLL);
    v25 = (a5 - 6 * a4 - 6 + 2 * a4);
    v26 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v21, v12), vextq_s8(v21, v22, 2uLL), v13), vextq_s8(v21, v22, 4uLL), v14), vextq_s8(v21, v22, 0xAuLL), v15), vextq_s8(v21, v22, 0xCuLL), v16), vextq_s8(v21, v22, 0xEuLL), v17);
    v27 = vmulq_s16(v23, v18);
    v28 = vmulq_s16(v24, v19);
    v29 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v28.i8, *v27.i8), *v26.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v27, v28), v26), 2uLL);
    v30 = *v25;
    v31 = *(v25 + 1);
    v32 = (v25 + 2 * a4);
    v33 = vextq_s8(v30, v31, 6uLL);
    v34 = vextq_s8(v30, v31, 8uLL);
    v35 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v30, v12), vextq_s8(v30, v31, 2uLL), v13), vextq_s8(v30, v31, 4uLL), v14), vextq_s8(v30, v31, 0xAuLL), v15), vextq_s8(v30, v31, 0xCuLL), v16), vextq_s8(v30, v31, 0xEuLL), v17);
    v36 = vmulq_s16(v33, v18);
    v37 = vmulq_s16(v34, v19);
    v38 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v37.i8, *v36.i8), *v35.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v36, v37), v35), 2uLL);
    v39 = *v32;
    v40 = *(v32 + 1);
    v41 = (v32 + 2 * a4);
    v42 = vextq_s8(v39, v40, 6uLL);
    v43 = vextq_s8(v39, v40, 8uLL);
    v44 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v39, v12), vextq_s8(v39, v40, 2uLL), v13), vextq_s8(v39, v40, 4uLL), v14), vextq_s8(v39, v40, 0xAuLL), v15), vextq_s8(v39, v40, 0xCuLL), v16), vextq_s8(v39, v40, 0xEuLL), v17);
    v45 = vmulq_s16(v42, v18);
    v46 = vmulq_s16(v43, v19);
    v47 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v46.i8, *v45.i8), *v44.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v45, v46), v44), 2uLL);
    v48 = *v41;
    v49 = *(v41 + 1);
    v50 = (v41 + 2 * a4);
    v51 = vextq_s8(v48, v49, 6uLL);
    v52 = vextq_s8(v48, v49, 8uLL);
    v53 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v48, v12), vextq_s8(v48, v49, 2uLL), v13), vextq_s8(v48, v49, 4uLL), v14), vextq_s8(v48, v49, 0xAuLL), v15), vextq_s8(v48, v49, 0xCuLL), v16), vextq_s8(v48, v49, 0xEuLL), v17);
    v54 = vmulq_s16(v51, v18);
    v55 = vmulq_s16(v52, v19);
    v56 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v55.i8, *v54.i8), *v53.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v54, v55), v53), 2uLL);
    v57 = *v50;
    v58 = *(v50 + 1);
    v59 = (v50 + 2 * a4);
    v60 = vextq_s8(v57, v58, 6uLL);
    v61 = vextq_s8(v57, v58, 8uLL);
    v62 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v57, v12), vextq_s8(v57, v58, 2uLL), v13), vextq_s8(v57, v58, 4uLL), v14), vextq_s8(v57, v58, 0xAuLL), v15), vextq_s8(v57, v58, 0xCuLL), v16), vextq_s8(v57, v58, 0xEuLL), v17);
    v63 = vmulq_s16(v60, v18);
    v64 = vmulq_s16(v61, v19);
    v65 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v64.i8, *v63.i8), *v62.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v63, v64), v62), 2uLL);
    v66 = *v59;
    v67 = *(v59 + 1);
    v68 = (v59 + 2 * a4);
    v69 = vextq_s8(v66, v67, 6uLL);
    v70 = vextq_s8(v66, v67, 8uLL);
    v71 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v66, v12), vextq_s8(v66, v67, 2uLL), v13), vextq_s8(v66, v67, 4uLL), v14), vextq_s8(v66, v67, 0xAuLL), v15), vextq_s8(v66, v67, 0xCuLL), v16), vextq_s8(v66, v67, 0xEuLL), v17);
    v72 = vmulq_s16(v69, v18);
    v73 = vmulq_s16(v70, v19);
    v74 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v73.i8, *v72.i8), *v71.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v72, v73), v71), 2uLL);
    v75 = v68[1];
    v76 = vextq_s8(*v68, v75, 8uLL);
    v77 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(*v68, v12), vextq_s8(*v68, v75, 2uLL), v13), vextq_s8(*v68, v75, 4uLL), v14), vextq_s8(*v68, v75, 0xAuLL), v15), vextq_s8(*v68, v75, 0xCuLL), v16), vextq_s8(*v68, v75, 0xEuLL), v17);
    v78 = vmulq_s16(vextq_s8(*v68, v75, 6uLL), v18);
    v79 = vmulq_s16(v76, v19);
    v80 = a2 + 1;
    v81 = a7;
    v82 = v20;
    v83 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v79.i8, *v78.i8), *v77.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v78, v79), v77), 2uLL);
    do
    {
      v84 = v82[-1];
      v85 = vextq_s8(v84, *v82, 6uLL);
      v86 = vextq_s8(v84, *v82, 8uLL);
      v87 = vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v11.i8, 1), *v29.i8, *v11.i8, 0);
      v88 = vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v11.i8, 1), v29, *v11.i8, 0);
      v29 = v38;
      v38 = v47;
      v47 = v56;
      v56 = v65;
      v65 = v74;
      v74 = v83;
      v89 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v84, v12), vextq_s8(v84, *v82, 2uLL), v13), vextq_s8(v84, *v82, 4uLL), v14), vextq_s8(v84, *v82, 0xAuLL), v15), vextq_s8(v84, *v82, 0xCuLL), v16), vextq_s8(v84, *v82, 0xEuLL), v17);
      v90 = vmulq_s16(v85, v18);
      v91 = vmulq_s16(v86, v19);
      v92 = vaddl_u16(*v91.i8, *v90.i8);
      v93 = vaddl_high_u16(v90, v91);
      v94 = vaddw_s16(v92, *v89.i8);
      v95 = vaddw_high_s16(v93, v89);
      *v93.i8 = vshrn_n_s32(v94, 2uLL);
      v96 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v87, *v38.i8, *v11.i8, 2), *v47.i8, *v11.i8, 3), *v56.i8, v11, 4), *v65.i8, v11, 5), *v74.i8, v11, 6), *v93.i8, v11, 7);
      v83 = vshrn_high_n_s32(*v93.i8, v95, 2uLL);
      v97 = vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v88, v38, *v11.i8, 2), v47, *v11.i8, 3), v56, v11, 4), v65, v11, 5), v74, v11, 6), vshrn_n_s32(v95, 2uLL), v11, 7);
      v95.i64[0] = 0xFC00FC00FC00FC00;
      v95.i64[1] = 0xFC00FC00FC00FC00;
      *v81 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v96, 0xAuLL), v97, 0xAuLL), v95);
      v82 = (v82 + v8);
      v81 = (v81 + v9);
      --v80;
    }

    while (v80 > 1);
    a7 += 2;
    a5 += 16;
    v98 = result - 8;
    v20 += 16;
    v99 = result > 0xF;
    result = (result - 8);
  }

  while (v99);
  if (v98)
  {
LABEL_9:
    v100 = xmmword_27750DCF0[(a3 & 3) - 1];
    v101 = xmmword_27750DCF0[v7 - 1];
    v102 = a5 - 6 * a4;
    v103 = *(v102 - 6);
    v102 -= 6;
    v104 = *(v102 + 8);
    v105 = *(v102 + 16);
    v106 = (v102 + 2 * a4);
    v107 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v103, v104, 2uLL), *v100.i8, 1), v103, *v100.i8, 0), vext_s8(v103, v104, 4uLL), *v100.i8, 2), vext_s8(v103, v104, 6uLL), *v100.i8, 3), v104, v100, 4), vext_s8(v104, v105, 2uLL), v100, 5), vext_s8(v104, v105, 4uLL), v100, 6), vext_s8(v104, v105, 6uLL), v100, 7), 2uLL);
    v108 = *v106;
    v109 = v106[1];
    v110 = v106[2];
    v111 = (v106 + 2 * a4);
    v112 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v108, v109, 2uLL), *v100.i8, 1), v108, *v100.i8, 0), vext_s8(v108, v109, 4uLL), *v100.i8, 2), vext_s8(v108, v109, 6uLL), *v100.i8, 3), v109, v100, 4), vext_s8(v109, v110, 2uLL), v100, 5), vext_s8(v109, v110, 4uLL), v100, 6), vext_s8(v109, v110, 6uLL), v100, 7), 2uLL);
    v113 = *v111;
    v114 = v111[1];
    v115 = v111[2];
    v116 = (v111 + 2 * a4);
    v117 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v113, v114, 2uLL), *v100.i8, 1), v113, *v100.i8, 0), vext_s8(v113, v114, 4uLL), *v100.i8, 2), vext_s8(v113, v114, 6uLL), *v100.i8, 3), v114, v100, 4), vext_s8(v114, v115, 2uLL), v100, 5), vext_s8(v114, v115, 4uLL), v100, 6), vext_s8(v114, v115, 6uLL), v100, 7), 2uLL);
    v118 = *v116;
    v119 = v116[1];
    v120 = v116[2];
    v121 = (v116 + 2 * a4);
    v122 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v118, v119, 2uLL), *v100.i8, 1), v118, *v100.i8, 0), vext_s8(v118, v119, 4uLL), *v100.i8, 2), vext_s8(v118, v119, 6uLL), *v100.i8, 3), v119, v100, 4), vext_s8(v119, v120, 2uLL), v100, 5), vext_s8(v119, v120, 4uLL), v100, 6), vext_s8(v119, v120, 6uLL), v100, 7), 2uLL);
    v123 = *v121;
    v124 = v121[1];
    v125 = v121[2];
    v126 = (v121 + 2 * a4);
    v127 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v123, v124, 2uLL), *v100.i8, 1), v123, *v100.i8, 0), vext_s8(v123, v124, 4uLL), *v100.i8, 2), vext_s8(v123, v124, 6uLL), *v100.i8, 3), v124, v100, 4), vext_s8(v124, v125, 2uLL), v100, 5), vext_s8(v124, v125, 4uLL), v100, 6), vext_s8(v124, v125, 6uLL), v100, 7), 2uLL);
    v128 = *v126;
    v129 = v126[1];
    v130 = v126[2];
    v131 = (v126 + 2 * a4);
    v132 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v128, v129, 2uLL), *v100.i8, 1), v128, *v100.i8, 0), vext_s8(v128, v129, 4uLL), *v100.i8, 2), vext_s8(v128, v129, 6uLL), *v100.i8, 3), v129, v100, 4), vext_s8(v129, v130, 2uLL), v100, 5), vext_s8(v129, v130, 4uLL), v100, 6), vext_s8(v129, v130, 6uLL), v100, 7), 2uLL);
    v133 = v131[1];
    v134 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(*v131, v133, 2uLL), *v100.i8, 1), *v131, *v100.i8, 0), vext_s8(*v131, v133, 4uLL), *v100.i8, 2), vext_s8(*v131, v133, 6uLL), *v100.i8, 3), v133, v100, 4), vext_s8(v133, v131[2], 2uLL), v100, 5), vext_s8(v133, v131[2], 4uLL), v100, 6), vext_s8(v133, v131[2], 6uLL), v100, 7), 2uLL);
    v135 = (a5 + 8 * a4 + 10);
    v136 = a2 + 1;
    do
    {
      v137 = v135[-1];
      v138 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v112, *v101.i8, 1), v107, *v101.i8, 0), v117, *v101.i8, 2), v122, *v101.i8, 3), v127, v101, 4), v132, v101, 5), v134, v101, 6);
      v107 = v112;
      v112 = v117;
      v117 = v122;
      v122 = v127;
      v127 = v132;
      v132 = v134;
      v134 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v135[-2], v137, 2uLL), *v100.i8, 1), v135[-2], *v100.i8, 0), vext_s8(v135[-2], v137, 4uLL), *v100.i8, 2), vext_s8(v135[-2], v137, 6uLL), *v100.i8, 3), v137, v100, 4), vext_s8(v137, *v135, 2uLL), v100, 5), vext_s8(v137, *v135, 4uLL), v100, 6), vext_s8(v137, *v135, 6uLL), v100, 7), 2uLL);
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v138, v134, v101, 7), 0xAuLL), 0xFC00FC00FC00FC00);
      v135 = (v135 + v8);
      a7 = (a7 + v9);
      --v136;
    }

    while (v136 > 1);
  }

  return result;
}

uint64_t sub_2774298F0(uint64_t result, int a2, unint64_t a3, uint64_t a4, int16x4_t *a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = (a3 >> 16) & 3;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v8 = xmmword_27750DCF0[v7 - 1];
  v9 = vdupq_lane_s16(*v8.i8, 0);
  v10 = vdupq_lane_s16(*v8.i8, 1);
  v11 = vdupq_lane_s16(*v8.i8, 2);
  v12 = vdupq_laneq_s16(v8, 5);
  v13 = vdupq_laneq_s16(v8, 6);
  v14 = vdupq_laneq_s16(v8, 7);
  v15 = vdupq_lane_s16(*v8.i8, 3);
  v16 = vdupq_laneq_s16(v8, 4);
  v17 = a7 + 2 * a6;
  v18 = a5 + 10 * a4;
  v19 = &a5[a4];
  v20.i64[0] = 0xFC00FC00FC00FC00;
  v20.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v21 = 0;
    v22 = 0;
    v23 = *&a5->i8[-6 * a4];
    v24 = *&a5->i8[-4 * a4];
    v25 = *&a5->i8[-2 * a4];
    v26 = a2 + 2;
    v27 = *a5->i8;
    v28 = *&a5->i8[2 * a4];
    v29 = *&a5->i8[4 * a4];
    v30 = *&a5->i8[6 * a4];
    do
    {
      v31 = v25;
      v32 = v27;
      v25 = v28;
      v27 = v29;
      v28 = v30;
      v29 = *&v19->i8[v21];
      v30 = *&v18[v21];
      v33 = vmulq_s16(v32, v15);
      v34 = vmulq_s16(v25, v16);
      v35 = vaddl_u16(*v33.i8, *v34.i8);
      v36 = vaddl_high_u16(v33, v34);
      v37 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v28, v13), v27, v12), v31, v11), v24, v10);
      v38 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v28, v12), v32, v11), v31, v10), v24, v9);
      v39 = vmulq_s16(v25, v15);
      v40 = vmulq_s16(v27, v16);
      v41 = vmlaq_s16(vmlaq_s16(v37, v23, v9), v29, v14);
      v42 = vmlaq_s16(vmlaq_s16(v38, v29, v13), v30, v14);
      *&a7->i8[v22] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(v35, *v41.i8), 6uLL), vaddw_high_s16(v36, v41), 6uLL), v20);
      *&v17[v22] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v39.i8, *v40.i8), *v42.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v39, v40), v42), 6uLL), v20);
      v22 += 4 * a6;
      v21 += 4 * a4;
      v26 -= 2;
      v24 = v32;
      v23 = v31;
    }

    while (v26 > 2);
    a7 += 2;
    a5 += 2;
    v43 = result - 8;
    v17 += 16;
    v18 += 16;
    v19 += 2;
    v44 = result > 0xF;
    result = (result - 8);
  }

  while (v44);
  if (v43)
  {
LABEL_9:
    v45 = xmmword_27750DCF0[v7 - 1];
    v46 = *(a5 - 6 * a4);
    v47 = *(a5 - 4 * a4);
    v48 = *(a5 - 2 * a4);
    v49 = *a5;
    v50 = *(a5 + 2 * a4);
    v51 = *(a5 + 4 * a4);
    v52 = *(a5 + 6 * a4);
    v53 = a2 + 4;
    v54 = 2 * a6;
    do
    {
      v55 = vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v47, *v45.i8, 1), v46, *v45.i8, 0), v48, *v45.i8, 2), v49, *v45.i8, 3), v50, v45, 4);
      v56 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v48, *v45.i8, 1), v47, *v45.i8, 0), v49, *v45.i8, 2), v50, *v45.i8, 3);
      v57 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v49, *v45.i8, 1), v48, *v45.i8, 0), v50, *v45.i8, 2);
      v58 = vmull_lane_s16(v50, *v45.i8, 1);
      v46 = v50;
      v50 = *(a5 + 10 * a4);
      v59 = vmlal_laneq_s16(v55, v51, v45, 5);
      v60 = vmlal_laneq_s16(v56, v51, v45, 4);
      v61 = vmlal_lane_s16(v57, v51, *v45.i8, 3);
      v62 = vmlal_lane_s16(vmlal_lane_s16(v58, v49, *v45.i8, 0), v51, *v45.i8, 2);
      v47 = v51;
      v51 = *(a5 + 12 * a4);
      v63 = vmlal_laneq_s16(v59, v52, v45, 6);
      v64 = vmlal_laneq_s16(v60, v52, v45, 5);
      v65 = vmlal_laneq_s16(v61, v52, v45, 4);
      v66 = vmlal_lane_s16(v62, v52, *v45.i8, 3);
      v48 = v52;
      v52 = *(a5 + 14 * a4);
      a5 += a4;
      v49 = *a5;
      v67 = vmlal_laneq_s16(vmlal_laneq_s16(v64, *a5, v45, 6), v50, v45, 7);
      v68 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v65, *a5, v45, 5), v50, v45, 6), v51, v45, 7);
      v69 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v66, *a5, v45, 4), v50, v45, 5), v51, v45, 6), v52, v45, 7);
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v63, *a5, v45, 7), 6uLL), 0xFC00FC00FC00FC00);
      *(a7 + 2 * a6) = vmin_u16(vqrshrun_n_s32(v67, 6uLL), 0xFC00FC00FC00FC00);
      v70 = (a7 + v54 + v54);
      *v70 = vmin_u16(vqrshrun_n_s32(v68, 6uLL), 0xFC00FC00FC00FC00);
      v71 = (v70 + v54);
      v53 -= 4;
      *v71 = vmin_u16(vqrshrun_n_s32(v69, 6uLL), 0xFC00FC00FC00FC00);
      a7 = (v71 + v54);
    }

    while (v53 > 4);
  }

  return result;
}

uint64_t sub_277429BEC(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = 2 * a4;
  v8 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = xmmword_27750DCF0[(a3 & 3) - 1];
  v10 = vdupq_lane_s16(*v9.i8, 0);
  v11 = vdupq_lane_s16(*v9.i8, 1);
  v12 = vdupq_lane_s16(*v9.i8, 2);
  v13 = vdupq_laneq_s16(v9, 5);
  v14 = vdupq_laneq_s16(v9, 6);
  v15 = vdupq_laneq_s16(v9, 7);
  v16 = vdupq_lane_s16(*v9.i8, 3);
  v17 = vdupq_laneq_s16(v9, 4);
  v18 = (a5 + 10);
  v19.i64[0] = 0xFC00FC00FC00FC00;
  v19.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v20 = a2 + 1;
    v21 = a7;
    v22 = v18;
    do
    {
      v23 = v22[-1];
      v24 = vmulq_s16(vextq_s8(v23, *v22, 6uLL), v16);
      v25 = vmulq_s16(vextq_s8(v23, *v22, 8uLL), v17);
      v26 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v23, v10), vextq_s8(v23, *v22, 2uLL), v11), vextq_s8(v23, *v22, 4uLL), v12), vextq_s8(v23, *v22, 0xAuLL), v13), vextq_s8(v23, *v22, 0xCuLL), v14), vextq_s8(v23, *v22, 0xEuLL), v15);
      *v21 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v25.i8, *v24.i8), *v26.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v24, v25), v26), 6uLL), v19);
      v22 = (v22 + v7);
      v21 = (v21 + v8);
      --v20;
    }

    while (v20 > 1);
    a7 += 2;
    a5 += 16;
    v27 = result - 8;
    ++v18;
    v28 = result > 0xF;
    result = (result - 8);
  }

  while (v28);
  if (v27)
  {
LABEL_9:
    v29 = xmmword_27750DCF0[(a3 & 3) - 1];
    v30 = (a5 + 10);
    v31 = a2 + 1;
    do
    {
      v32 = v30[-1];
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v30[-2], v32, 2uLL), *v29.i8, 1), v30[-2], *v29.i8, 0), vext_s8(v30[-2], v32, 4uLL), *v29.i8, 2), vext_s8(v30[-2], v32, 6uLL), *v29.i8, 3), v32, v29, 4), vext_s8(v32, *v30, 2uLL), v29, 5), vext_s8(v32, *v30, 4uLL), v29, 6), vext_s8(v32, *v30, 6uLL), v29, 7), 6uLL), 0xFC00FC00FC00FC00);
      v30 = (v30 + v7);
      a7 = (a7 + v8);
      --v31;
    }

    while (v31 > 1);
  }

  return result;
}

double sub_277429D68(int a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v7 = 4 * a4;
  v8 = 4 * a6;
  if (a1 < 8)
  {
    if (!a1)
    {
      return *&v14;
    }

    goto LABEL_10;
  }

  v9 = a7 + 2 * a6;
  v10 = a5 + 2 * a4;
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = a2 + 2;
    do
    {
      v14 = *(a5 + v11);
      v15 = *&v10[v11];
      *(a7 + v12) = v14;
      *&v9[v12] = v15;
      v12 += v8;
      v11 += v7;
      v13 -= 2;
    }

    while (v13 > 2);
    a7 += 2;
    a5 += 2;
    v16 = a1 - 8;
    v9 += 16;
    v10 += 16;
    v17 = a1 <= 15;
    a1 -= 8;
  }

  while (!v17);
  if (v16)
  {
LABEL_10:
    v18 = a2 + 2;
    do
    {
      *&v14 = *a5;
      v19 = *(a5 + 2 * a4);
      a5 = (a5 + v7);
      *a7 = v14;
      *(a7 + 2 * a6) = v19;
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return *&v14;
}

uint64_t sub_277429E18(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
{
  v10 = 2 * a6;
  if (result < 16)
  {
    v35 = result;
    if ((result & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = qword_27750DD20[(a3 & 7) - 1];
    v12 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
    v13 = -2 - a4;
    v14 = &a7[2];
    v15 = vdupq_lane_s8(v11, 0);
    v16 = vdup_lane_s8(v11, 1);
    v17 = vdup_lane_s8(v11, 2);
    v18 = vdup_lane_s8(v11, 3);
    v19 = a5 + 2 * a4 + 14;
    v20.i64[0] = 0xE000E000E000E000;
    v20.i64[1] = 0xE000E000E000E000;
    do
    {
      v21 = *(a5 + v13);
      v7.i64[0] = *(a5 + v13 + 16);
      v8.i64[0] = *(a5 + 14);
      v22 = *(a5 + 14 + a4 - 16);
      v23 = *(a5 - 2);
      v9.i64[0] = *(a5 + 14 + a4);
      v24 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v21, v21, 2uLL), v16), *&vextq_s8(v21, v21, 4uLL), v17), *v21.i8, *v15.i8), *&vextq_s8(v21, v21, 6uLL), v18);
      v7 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v21, v7, 0xAuLL), v16), *&vextq_s8(v21, v7, 0xCuLL), v17), v21, v15), *&vextq_s8(v21, v7, 0xEuLL), v18);
      v25 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v23, v23, 2uLL), v16), *&vextq_s8(v23, v23, 4uLL), v17), *v23.i8, *v15.i8), *&vextq_s8(v23, v23, 6uLL), v18);
      v8 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v23, v8, 0xAuLL), v16), *&vextq_s8(v23, v8, 0xCuLL), v17), v23, v15), *&vextq_s8(v23, v8, 0xEuLL), v18);
      v26 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v22, v22, 2uLL), v16), *&vextq_s8(v22, v22, 4uLL), v17), *v22.i8, *v15.i8), *&vextq_s8(v22, v22, 6uLL), v18);
      v27 = vextq_s8(v22, v9, 0xCuLL);
      v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v22, v9, 0xAuLL), v16), *v27.i8, v17), v22, v15), *&vextq_s8(v22, v9, 0xEuLL), v18);
      v28 = v19;
      v29 = v14;
      v30 = a2 + 1;
      do
      {
        v31 = v25;
        v25 = v26;
        v32 = v28[-1];
        v27.i64[0] = v28->i64[0];
        v26 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v32, v32, 2uLL), v16), *&vextq_s8(v32, v32, 4uLL), v17), *v32.i8, *v15.i8), *&vextq_s8(v32, v32, 6uLL), v18);
        v33 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v8.i8, v12, 1), *v9.i8, v12, 2), *v7.i8, v12, 0);
        v34 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v8, v12, 1), v9, v12, 2), v7, v12, 0);
        v7 = v8;
        v8 = v9;
        v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v32, v27, 0xAuLL), v16), *&vextq_s8(v32, v27, 0xCuLL), v17), v32, v15), *&vextq_s8(v32, v27, 0xEuLL), v18);
        v27 = vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v31, v12, 1), v25, v12, 2), v24, v12, 0), v26, v12, 3);
        --v30;
        v29[-1] = vaddq_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v31.i8, v12, 1), *v25.i8, v12, 2), *v24.i8, v12, 0), *v26.i8, v12, 3), 6uLL), v27, 6uLL), v20);
        *v29 = vaddq_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v33, *v9.i8, v12, 3), 6uLL), vmlsl_high_lane_s16(v34, v9, v12, 3), 6uLL), v20);
        v29 = (v29 + v10);
        v28 = (v28 + a4);
        v24 = v31;
      }

      while (v30 > 1);
      a7 += 4;
      a5 += 16;
      v35 = result - 16;
      v14 += 2;
      v19 += 16;
      v36 = result > 0x1F;
      result = (result - 16);
    }

    while (v36);
    if ((v35 & 8) == 0)
    {
LABEL_7:
      if ((v35 & 4) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  v37 = qword_27750DD20[(a3 & 7) - 1];
  v38 = vdup_lane_s8(v37, 0);
  v39 = vdup_lane_s8(v37, 1);
  v40 = vdup_lane_s8(v37, 2);
  v41 = vdup_lane_s8(v37, 3);
  v42 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
  v43 = *(a5 - 2);
  v44 = *(a5 - a4 - 2);
  v45 = *(a5 - 2 + a4);
  v46 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v44, v44, 2uLL), v39), *&vextq_s8(v44, v44, 4uLL), v40), *v44.i8, v38), *&vextq_s8(v44, v44, 6uLL), v41);
  v47 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v43, v43, 2uLL), v39), *&vextq_s8(v43, v43, 4uLL), v40), *v43.i8, v38), *&vextq_s8(v43, v43, 6uLL), v41);
  v48 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v45, v45, 2uLL), v39), *&vextq_s8(v45, v45, 4uLL), v40), *v45.i8, v38), *&vextq_s8(v45, v45, 6uLL), v41);
  v49 = (a5 - 2 + 2 * a4);
  v50 = a2 + 1;
  v51 = v41;
  v52.i64[0] = 0xE000E000E000E000;
  v52.i64[1] = 0xE000E000E000E000;
  v53 = a7;
  do
  {
    v54 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v47.i8, v42, 1), *v48.i8, v42, 2), *v46.i8, v42, 0);
    v55 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v47, v42, 1), v48, v42, 2), v46, v42, 0);
    v46 = v47;
    v47 = v48;
    v48 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(*v49, *v49, 2uLL), v39), *&vextq_s8(*v49, *v49, 4uLL), v40), *v49->i8, v38), *&vextq_s8(*v49, *v49, 6uLL), v51);
    *v53 = vaddq_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v54, *v48.i8, v42, 3), 6uLL), vmlsl_high_lane_s16(v55, v48, v42, 3), 6uLL), v52);
    v53 = (v53 + v10);
    v49 = (v49 + a4);
    --v50;
  }

  while (v50 > 1);
  a7 += 2;
  a5 += 8;
  if ((v35 & 4) != 0)
  {
LABEL_13:
    v56 = qword_27750DD20[((a3 >> 16) & 7) - 1];
    v57 = vmovl_u8(qword_27750DD20[(a3 & 7) - 1]).u64[0];
    v58 = *(a5 - a4 - 2);
    v60 = *(a5 - 2);
    v59 = a5 - 2;
    v61 = v60;
    v62 = *(v59 + a4);
    v63 = (v59 + 2 * a4);
    v64 = vdupq_lane_s8(v56, 0);
    v65 = vdupq_lane_s8(v56, 1);
    v66 = vdupq_lane_s8(v56, 2);
    v67 = a2 + 1;
    v68 = vextq_s8(v66, v66, 8uLL).u64[0];
    v69 = vdupq_lane_s8(v56, 3);
    v70 = vextq_s8(v69, v69, 8uLL).u64[0];
    do
    {
      v71 = v61;
      v61 = v62;
      v62 = *v63->i8;
      v72 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*v71.i8, *v65.i8), *v61.i8, *v66.i8), *v58.i8, *v64.i8), *v63, *v69.i8);
      v73 = vmlal_u8(vmull_high_u8(v58, v64), *&vextq_s8(v62, v62, 8uLL), v70);
      *v73.i8 = vsub_s16(*&vmlal_u8(vmull_high_u8(v71, v65), *&vextq_s8(v61, v61, 8uLL), v68), *v73.i8);
      *a7 = vadd_s16(vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*&vextq_s8(v72, v72, 4uLL), v57, 1), v72, v57, 2), *v72.i8, v57, 0), *&vextq_s8(v72, v73, 0xCuLL), v57, 3), 6uLL), 0xE000E000E000E000);
      a7 = (a7 + v10);
      v63 = (v63 + a4);
      --v67;
      v58 = v71;
    }

    while (v67 > 1);
  }

  return result;
}

unint64_t sub_27742A250(unint64_t result, int a2, unint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a6;
  if (result < 16)
  {
    v32 = result;
  }

  else
  {
    v9 = qword_27750DD20[v7 - 1];
    v10 = a5 + 3 * a4;
    v11 = a5 + 2 * a4;
    v12 = vdupq_lane_s8(v9, 0);
    v13 = vdupq_lane_s8(v9, 1);
    v14 = vdupq_lane_s8(v9, 2);
    v15 = vdupq_lane_s8(v9, 3);
    do
    {
      v16 = 0;
      v17 = *(a5 - a4);
      v18 = *a5;
      v19 = a2 + 2;
      v20 = a7;
      v21 = *(a5 + a4);
      do
      {
        v22 = *&v11[v16];
        v23.i64[0] = 0xE000E000E000E000;
        v23.i64[1] = 0xE000E000E000E000;
        v24 = vmlsl_u8(vmlal_u8(vmlal_u8(v23, *v18.i8, *v13.i8), *v21.i8, *v14.i8), *v17.i8, *v12.i8);
        v25.i64[0] = 0xE000E000E000E000;
        v25.i64[1] = 0xE000E000E000E000;
        v26 = vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(v25, v18, v13), v21, v14), v17, v12);
        v27.i64[0] = 0xE000E000E000E000;
        v27.i64[1] = 0xE000E000E000E000;
        v28 = vmlal_u8(v27, *v21.i8, *v13.i8);
        v29.i64[0] = 0xE000E000E000E000;
        v29.i64[1] = 0xE000E000E000E000;
        v30 = vmlal_high_u8(v29, v21, v13);
        v17 = v21;
        v21 = *&v10[v16];
        *v20 = vmlsl_u8(v24, *v22.i8, *v15.i8);
        v20[1] = vmlsl_high_u8(v26, v22, v15);
        v31 = (v20 + v8);
        *v31 = vmlsl_u8(vmlsl_u8(vmlal_u8(v28, *v22.i8, *v14.i8), *v18.i8, *v12.i8), *v21.i8, *v15.i8);
        v31[1] = vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(v30, v22, v14), v18, v12), v21, v15);
        v16 += 2 * a4;
        v19 -= 2;
        v20 = (v31 + v8);
        v18 = v22;
      }

      while (v19 > 2);
      a7 += 4;
      ++a5;
      v32 = result - 16;
      v10 += 16;
      v11 += 16;
      v33 = result > 0x1F;
      result = (result - 16);
    }

    while (v33);
  }

  v34 = 4 * a6;
  if ((v32 & 8) != 0)
  {
    v35 = qword_27750DD20[v7 - 1];
    v36 = *(a5 - a4);
    v37 = *(a5 + a4);
    v38 = *a5;
    v39 = a2 + 2;
    v40 = vdup_lane_s8(v35, 1);
    v41 = vdup_lane_s8(v35, 0);
    v42 = vdup_lane_s8(v35, 2);
    v43 = vdup_lane_s8(v35, 3);
    v44 = a7;
    v45 = a5;
    do
    {
      result = v45 + a4;
      v46 = *(v45 + 2 * a4);
      v47.i64[0] = 0xE000E000E000E000;
      v47.i64[1] = 0xE000E000E000E000;
      v48 = vmlsl_u8(vmlal_u8(vmlal_u8(v47, v38, v40), v37, v42), v36, v41);
      v49.i64[0] = 0xE000E000E000E000;
      v49.i64[1] = 0xE000E000E000E000;
      v50 = vmlal_u8(v49, v37, v40);
      v36 = v37;
      v37 = *(v45 + 3 * a4);
      *v44 = vmlsl_u8(v48, v46, v43);
      *(v44 + 2 * a6) = vmlsl_u8(vmlsl_u8(vmlal_u8(v50, v46, v42), v38, v41), v37, v43);
      v45 = (v45 + a4 + a4);
      v44 = (v44 + v34);
      v39 -= 2;
      v38 = v46;
    }

    while (v39 > 2);
    a7 += 2;
    a5 = (a5 + 8);
  }

  if ((v32 & 4) != 0)
  {
    v51 = qword_27750DD20[v7 - 1];
    v52 = *(a5 - a4);
    v53 = *a5;
    v54 = *(a5 + a4);
    v55 = vdup_lane_s8(v51, 1);
    v56 = vdup_lane_s8(v51, 0);
    v57 = a2 + 2;
    v58 = vdup_lane_s8(v51, 2);
    v59 = vdup_lane_s8(v51, 3);
    do
    {
      v60 = *(a5 + 2 * a4);
      v61 = vmull_u8(v52, v56);
      v62 = vmull_u8(v54, v55);
      v63 = vmlal_u8(vmull_u8(v53, v55), v54, v58).u64[0];
      v52 = v54;
      v54 = *(a5 + 3 * a4);
      a5 = (a5 + a4 + a4);
      *a7 = vadd_s16(vsub_s16(v63, *&vmlal_u8(v61, v60, v59)), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16(vsub_s16(*&vmlal_u8(v62, v60, v58), *&vmlal_u8(vmull_u8(v53, v56), v54, v59)), 0xE000E000E000E000);
      a7 = (a7 + v34);
      v57 -= 2;
      v53 = v60;
    }

    while (v57 > 2);
  }

  return result;
}

uint64_t sub_27742A48C(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7, double a8, double a9, double a10, double a11, double a12, int8x16_t a13, double a14, int8x16_t a15)
{
  v15 = 2 * a6;
  if (result < 16)
  {
    v33 = result;
  }

  else
  {
    v16 = qword_27750DD20[(a3 & 7) - 1];
    v17 = vdupq_lane_s8(v16, 0);
    v18 = vdup_lane_s8(v16, 1);
    v19 = vdup_lane_s8(v16, 2);
    v20 = vdup_lane_s8(v16, 3);
    do
    {
      v21 = -2;
      v22 = a2 + 2;
      v23 = a7;
      do
      {
        v24 = *(a5 + v21);
        a13.i64[0] = *(a5 + v21 + 16);
        v25 = (a5 + v21 + a4);
        v26 = *v25;
        a15.i64[0] = v25[1].i64[0];
        v27 = vextq_s8(*v25, a15, 0xAuLL).u64[0];
        v28 = vextq_s8(*v25, a15, 0xCuLL).u64[0];
        a15 = vextq_s8(*v25, a15, 0xEuLL);
        v29.i64[0] = 0xE000E000E000E000;
        v29.i64[1] = 0xE000E000E000E000;
        v30.i64[0] = 0xE000E000E000E000;
        v30.i64[1] = 0xE000E000E000E000;
        *v23 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v29, *&vextq_s8(v24, v24, 2uLL), v18), *&vextq_s8(v24, v24, 4uLL), v19), *v24.i8, *v17.i8), *&vextq_s8(v24, v24, 6uLL), v20);
        v23[1] = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmlal_u8(v30, *&vextq_s8(v24, a13, 0xAuLL), v18), *&vextq_s8(v24, a13, 0xCuLL), v19), v24, v17), *&vextq_s8(v24, a13, 0xEuLL), v20);
        v24.i64[0] = 0xE000E000E000E000;
        v24.i64[1] = 0xE000E000E000E000;
        v31 = &v23->i8[v15];
        v32.i64[0] = 0xE000E000E000E000;
        v32.i64[1] = 0xE000E000E000E000;
        a13 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmlal_u8(v32, v27, v18), v28, v19), v26, v17), *a15.i8, v20);
        *v31 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v24, *&vextq_s8(v26, v26, 2uLL), v18), *&vextq_s8(v26, v26, 4uLL), v19), *v26.i8, *v17.i8), *&vextq_s8(v26, v26, 6uLL), v20);
        v31[1] = a13;
        v21 += 2 * a4;
        v22 -= 2;
        v23 = &v31->i8[v15];
      }

      while (v22 > 2);
      a7 += 4;
      a5 += 16;
      v33 = result - 16;
      v34 = result > 0x1F;
      result = (result - 16);
    }

    while (v34);
  }

  v35 = 4 * a6;
  if ((v33 & 8) != 0)
  {
    v36 = qword_27750DD20[(a3 & 7) - 1];
    v37 = (a5 - 2);
    v38 = vdup_lane_s8(v36, 0);
    v39 = vdup_lane_s8(v36, 1);
    v40 = a2 + 2;
    v41 = vdup_lane_s8(v36, 2);
    v42 = vdup_lane_s8(v36, 3);
    v43 = a7;
    do
    {
      v44 = *v37;
      v45 = (v37 + a4);
      v46 = *v45;
      v37 = (v45 + a4);
      v47.i64[0] = 0xE000E000E000E000;
      v47.i64[1] = 0xE000E000E000E000;
      *v43 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v47, *&vextq_s8(v44, v44, 2uLL), v39), *&vextq_s8(v44, v44, 4uLL), v41), *v44.i8, v38), *&vextq_s8(v44, v44, 6uLL), v42);
      v44.i64[0] = 0xE000E000E000E000;
      v44.i64[1] = 0xE000E000E000E000;
      *(v43 + 2 * a6) = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v44, *&vextq_s8(v46, v46, 2uLL), v39), *&vextq_s8(v46, v46, 4uLL), v41), *v46.i8, v38), *&vextq_s8(v46, v46, 6uLL), v42);
      v43 = (v43 + v35);
      v40 -= 2;
    }

    while (v40 > 2);
    a7 += 2;
    a5 += 8;
  }

  if ((v33 & 4) != 0)
  {
    v48 = qword_27750DD20[(a3 & 7) - 1];
    v49 = (a5 - 2);
    v50 = vdup_lane_s8(v48, 0);
    v51 = vdup_lane_s8(v48, 1);
    v52 = a2 + 2;
    v53 = vdup_lane_s8(v48, 2);
    v54 = vdup_lane_s8(v48, 3);
    do
    {
      v55 = *v49;
      v56 = (v49 + a4);
      v57 = *v56;
      v49 = (v56 + a4);
      *a7 = vadd_s16(vsub_s16(*&vmlal_u8(vmull_u8(*&vextq_s8(v55, v55, 2uLL), v51), *&vextq_s8(v55, v55, 4uLL), v53), *&vmlal_u8(vmull_u8(*v55.i8, v50), *&vextq_s8(v55, v55, 6uLL), v54)), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16(vsub_s16(*&vmlal_u8(vmull_u8(*&vextq_s8(v57, v57, 2uLL), v51), *&vextq_s8(v57, v57, 4uLL), v53), *&vmlal_u8(vmull_u8(*v57.i8, v50), *&vextq_s8(v57, v57, 6uLL), v54)), 0xE000E000E000E000);
      a7 = (a7 + v35);
      v52 -= 2;
    }

    while (v52 > 2);
  }

  return result;
}

uint64_t sub_27742A6E8(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x16_t *a7)
{
  if (result < 16)
  {
    v32 = result;
    if ((result & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = qword_27750DD20[(a3 & 7) - 1];
    v11 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
    v12 = -2 - a4;
    v13 = a5 + 2 * a4 + 14;
    v14 = vdupq_lane_s8(v10, 0);
    v15 = vdup_lane_s8(v10, 1);
    v16 = vdup_lane_s8(v10, 2);
    v17 = vdup_lane_s8(v10, 3);
    do
    {
      v18 = *(a5 + v12);
      v7.i64[0] = *(a5 + v12 + 16);
      v8.i64[0] = *(a5 + 14);
      v19 = *(a5 + 14 + a4 - 16);
      v20 = *(a5 - 2);
      v9.i64[0] = *(a5 + 14 + a4);
      v21 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v18, v18, 2uLL), v15), *&vextq_s8(v18, v18, 4uLL), v16), *v18.i8, *v14.i8), *&vextq_s8(v18, v18, 6uLL), v17);
      v7 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v18, v7, 0xAuLL), v15), *&vextq_s8(v18, v7, 0xCuLL), v16), v18, v14), *&vextq_s8(v18, v7, 0xEuLL), v17);
      v22 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v20, v20, 2uLL), v15), *&vextq_s8(v20, v20, 4uLL), v16), *v20.i8, *v14.i8), *&vextq_s8(v20, v20, 6uLL), v17);
      v8 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v20, v8, 0xAuLL), v15), *&vextq_s8(v20, v8, 0xCuLL), v16), v20, v14), *&vextq_s8(v20, v8, 0xEuLL), v17);
      v23 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v19, v19, 2uLL), v15), *&vextq_s8(v19, v19, 4uLL), v16), *v19.i8, *v14.i8), *&vextq_s8(v19, v19, 6uLL), v17);
      v24 = vextq_s8(v19, v9, 0xCuLL);
      v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v19, v9, 0xAuLL), v15), *v24.i8, v16), v19, v14), *&vextq_s8(v19, v9, 0xEuLL), v17);
      v25 = a2 + 1;
      v26 = v13;
      v27 = a7;
      do
      {
        v28 = v22;
        v22 = v23;
        v29 = v26[-1];
        v24.i64[0] = v26->i64[0];
        v23 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v29, v29, 2uLL), v15), *&vextq_s8(v29, v29, 4uLL), v16), *v29.i8, *v14.i8), *&vextq_s8(v29, v29, 6uLL), v17);
        v30 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v8.i8, v11, 1), *v9.i8, v11, 2), *v7.i8, v11, 0);
        v31 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v8, v11, 1), v9, v11, 2), v7, v11, 0);
        v7 = v8;
        v8 = v9;
        v9 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v29, v24, 0xAuLL), v15), *&vextq_s8(v29, v24, 0xCuLL), v16), v29, v14), *&vextq_s8(v29, v24, 0xEuLL), v17);
        v24 = vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v28, v11, 1), v22, v11, 2), v21, v11, 0), v23, v11, 3);
        *v27 = vqrshrun_high_n_s16(vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v28.i8, v11, 1), *v22.i8, v11, 2), *v21.i8, v11, 0), *v23.i8, v11, 3), 6uLL), v24, 6uLL), 6uLL), vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v30, *v9.i8, v11, 3), 6uLL), vmlsl_high_lane_s16(v31, v9, v11, 3), 6uLL), 6uLL);
        v27 = (v27 + a6);
        v26 = (v26 + a4);
        --v25;
        v21 = v28;
      }

      while (v25 > 1);
      ++a7;
      a5 += 16;
      v32 = result - 16;
      v13 += 16;
      v33 = result > 0x1F;
      result = (result - 16);
    }

    while (v33);
    if ((v32 & 8) == 0)
    {
LABEL_7:
      if ((v32 & 4) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  v34 = qword_27750DD20[(a3 & 7) - 1];
  v35 = vdup_lane_s8(v34, 0);
  v36 = vdup_lane_s8(v34, 1);
  v37 = vdup_lane_s8(v34, 2);
  v38 = vdup_lane_s8(v34, 3);
  v39 = vmovl_u8(qword_27750DD20[((a3 >> 16) & 7) - 1]).u64[0];
  v40 = *(a5 - a4 - 2);
  v41 = *(a5 - 2);
  v42 = *(a5 - 2 + a4);
  v43 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v40, v40, 2uLL), v36), *&vextq_s8(v40, v40, 4uLL), v37), *v40.i8, v35), *&vextq_s8(v40, v40, 6uLL), v38);
  v44 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v41, v41, 2uLL), v36), *&vextq_s8(v41, v41, 4uLL), v37), *v41.i8, v35), *&vextq_s8(v41, v41, 6uLL), v38);
  v45 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v42, v42, 2uLL), v36), *&vextq_s8(v42, v42, 4uLL), v37), *v42.i8, v35), *&vextq_s8(v42, v42, 6uLL), v38);
  v46 = (a5 - 2 + 2 * a4);
  v47 = a2 + 1;
  v48 = a7;
  do
  {
    v49 = vmlsl_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v44.i8, v39, 1), *v45.i8, v39, 2), *v43.i8, v39, 0);
    v50 = vmlsl_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v44, v39, 1), v45, v39, 2), v43, v39, 0);
    v43 = v44;
    v44 = v45;
    v45 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(*v46, *v46, 2uLL), v36), *&vextq_s8(*v46, *v46, 4uLL), v37), *v46->i8, v35), *&vextq_s8(*v46, *v46, 6uLL), v38);
    *v48 = vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_lane_s16(v49, *v45.i8, v39, 3), 6uLL), vmlsl_high_lane_s16(v50, v45, v39, 3), 6uLL), 6uLL);
    v48 = (v48 + a6);
    v46 = (v46 + a4);
    --v47;
  }

  while (v47 > 1);
  a7 = (a7 + 8);
  a5 += 8;
  if ((v32 & 4) != 0)
  {
LABEL_13:
    v51 = qword_27750DD20[((a3 >> 16) & 7) - 1];
    v52 = vmovl_u8(qword_27750DD20[(a3 & 7) - 1]).u64[0];
    v53 = *(a5 - a4 - 2);
    v55 = *(a5 - 2);
    v54 = a5 - 2;
    v56 = v55;
    v57 = *(v54 + a4);
    v58 = (v54 + 2 * a4);
    v59 = a2 + 1;
    v60 = vdupq_lane_s8(v51, 0);
    v61 = vdupq_lane_s8(v51, 1);
    v62 = vdupq_lane_s8(v51, 2);
    v63 = vextq_s8(v62, v62, 8uLL).u64[0];
    v64 = vdupq_lane_s8(v51, 3);
    v65 = vextq_s8(v64, v64, 8uLL).u64[0];
    do
    {
      v66 = v56;
      v56 = v57;
      v57 = *v58->i8;
      v67 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*v66.i8, *v61.i8), *v56.i8, *v62.i8), *v53.i8, *v60.i8), *v58, *v64.i8);
      v68 = vmlal_u8(vmull_high_u8(v53, v60), *&vextq_s8(v57, v57, 8uLL), v65);
      *v68.i8 = vsub_s16(*&vmlal_u8(vmull_high_u8(v66, v61), *&vextq_s8(v56, v56, 8uLL), v63), *v68.i8);
      v69 = vextq_s8(v67, v68, 0xCuLL);
      *v69.i8 = vqshrn_n_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*&vextq_s8(v67, v67, 4uLL), v52, 1), v67, v52, 2), *v67.i8, v52, 0), *v69.i8, v52, 3), 6uLL);
      a7->i32[0] = vqrshrun_n_s16(v69, 6uLL).u32[0];
      a7 = (a7 + a6);
      v58 = (v58 + a4);
      --v59;
      v53 = v66;
    }

    while (v59 > 1);
  }

  return result;
}

uint64_t sub_27742AB08(uint64_t result, int a2, unint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, int8x8_t *a7)
{
  v7 = (a3 >> 16) & 7;
  if (result < 16)
  {
    v28 = result;
    if ((result & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = qword_27750DD20[v7 - 1];
    v9 = a7 + a6;
    v10 = a5 + 3 * a4;
    v11 = a5 + 2 * a4;
    v12 = vdupq_lane_s8(v8, 0);
    v13 = vdupq_lane_s8(v8, 1);
    v14 = vdupq_lane_s8(v8, 2);
    v15 = vdupq_lane_s8(v8, 3);
    do
    {
      v16 = 0;
      v17 = 0;
      v18 = *(a5 - a4);
      v19 = *a5;
      v20 = a2 + 2;
      v21 = *(a5 + a4);
      do
      {
        v22 = v21;
        v23 = *&v11[v16];
        v24 = vmlsl_u8(vmlal_u8(vmull_u8(*v19.i8, *v13.i8), *v21.i8, *v14.i8), *v18.i8, *v12.i8);
        v25 = vmlsl_high_u8(vmlal_high_u8(vmull_high_u8(v19, v13), v21, v14), v18, v12);
        v26 = vmull_u8(*v21.i8, *v13.i8);
        v27 = vmull_high_u8(v21, v13);
        v21 = *&v10[v16];
        *&a7->i8[v17] = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(v24, *v23.i8, *v15.i8), 6uLL), vmlsl_high_u8(v25, v23, v15), 6uLL);
        *&v9[v17] = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v26, *v23.i8, *v14.i8), *v19.i8, *v12.i8), *v21.i8, *v15.i8), 6uLL), vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(v27, v23, v14), v19, v12), v21, v15), 6uLL);
        v18 = v22;
        v17 += 2 * a6;
        v16 += 2 * a4;
        v20 -= 2;
        v19 = v23;
      }

      while (v20 > 2);
      a7 += 2;
      ++a5;
      v28 = result - 16;
      v9 += 16;
      v10 += 16;
      v11 += 16;
      v29 = result > 0x1F;
      result = (result - 16);
    }

    while (v29);
    if ((v28 & 8) == 0)
    {
LABEL_7:
      if ((v28 & 4) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  v30 = qword_27750DD20[v7 - 1];
  v31 = *(a5 - a4);
  v32 = *(a5 + a4);
  v33 = *a5;
  v34 = a2 + 2;
  v35 = vdup_lane_s8(v30, 1);
  v36 = vdup_lane_s8(v30, 0);
  v37 = vdup_lane_s8(v30, 2);
  v38 = vdup_lane_s8(v30, 3);
  v39 = a7;
  v40 = a5;
  do
  {
    v41 = *(v40 + 2 * a4);
    v42 = vmlsl_u8(vmlal_u8(vmull_u8(v33, v35), v32, v37), v31, v36);
    v43 = vmull_u8(v32, v35);
    v31 = v32;
    v32 = *(v40 + 3 * a4);
    v40 = (v40 + a4 + a4);
    *v39 = vqrshrun_n_s16(vmlsl_u8(v42, v41, v38), 6uLL);
    v44 = (v39 + a6);
    *v44 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v43, v41, v37), v33, v36), v32, v38), 6uLL);
    v39 = (v44 + a6);
    v34 -= 2;
    v33 = v41;
  }

  while (v34 > 2);
  ++a7;
  a5 = (a5 + 8);
  if ((v28 & 4) != 0)
  {
LABEL_13:
    v45 = qword_27750DD20[v7 - 1];
    v46 = *(a5 - a4);
    v47 = *a5;
    v48 = *(a5 + a4);
    v49 = a2 + 2;
    v50 = vdup_lane_s8(v45, 1);
    v51 = vdup_lane_s8(v45, 0);
    v52 = vdup_lane_s8(v45, 2);
    v53 = vdup_lane_s8(v45, 3);
    do
    {
      v54 = *(a5 + 2 * a4);
      v55 = vmlsl_u8(vmlal_u8(vmull_u8(v47, v50), v48, v52), v46, v51);
      v56 = vmull_u8(v48, v50);
      v46 = v48;
      v48 = *(a5 + 3 * a4);
      a5 = (a5 + a4 + a4);
      a7->i32[0] = vqrshrun_n_s16(vmlsl_u8(v55, v54, v53), 6uLL).u32[0];
      v57 = (a7 + a6);
      a7 = (a7 + a6 + a6);
      v49 -= 2;
      v57->i32[0] = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v56, v54, v52), v47, v51), v48, v53), 6uLL).u32[0];
      v47 = v54;
    }

    while (v49 > 2);
  }

  return result;
}

uint64_t sub_27742AD54(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x8_t *a7, double a8, double a9, double a10, double a11, double a12, uint16x8_t a13, double a14, int8x16_t a15)
{
  if (result < 16)
  {
    v31 = result;
    if ((result & 8) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = qword_27750DD20[(a3 & 7) - 1];
    v16 = a7 + a6;
    v17 = vdupq_lane_s8(v15, 0);
    v18 = vdup_lane_s8(v15, 1);
    v19 = vdup_lane_s8(v15, 2);
    v20 = vdup_lane_s8(v15, 3);
    do
    {
      v21 = 0;
      v22 = -2;
      v23 = a2 + 2;
      do
      {
        v24 = *(a5 + v22);
        a13.i64[0] = *(a5 + v22 + 16);
        v25 = (a5 + v22 + a4);
        a15.i64[0] = v25[1].i64[0];
        v26 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v24, v24, 2uLL), v18), *&vextq_s8(v24, v24, 4uLL), v19), *v24.i8, *v17.i8), *&vextq_s8(v24, v24, 6uLL), v20);
        v27 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(*&vextq_s8(v24, a13, 0xAuLL), v18), *&vextq_s8(v24, a13, 0xCuLL), v19), v24, v17), *&vextq_s8(v24, a13, 0xEuLL), v20);
        v28 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(*v25, *v25, 2uLL), v18), *&vextq_s8(*v25, *v25, 4uLL), v19), *v25->i8, *v17.i8), *&vextq_s8(*v25, *v25, 6uLL), v20);
        v29 = vextq_s8(*v25, a15, 0xAuLL).u64[0];
        v30 = vextq_s8(*v25, a15, 0xCuLL).u64[0];
        a15 = vextq_s8(*v25, a15, 0xEuLL);
        a13 = vmlsl_u8(vmlsl_high_u8(vmlal_u8(vmull_u8(v29, v18), v30, v19), *v25, v17), *a15.i8, v20);
        *&a7->i8[v21] = vqrshrun_high_n_s16(vqrshrun_n_s16(v26, 6uLL), v27, 6uLL);
        *&v16[v21] = vqrshrun_high_n_s16(vqrshrun_n_s16(v28, 6uLL), a13, 6uLL);
        v21 += 2 * a6;
        v22 += 2 * a4;
        v23 -= 2;
      }

      while (v23 > 2);
      a7 += 2;
      a5 += 16;
      v31 = result - 16;
      v16 += 16;
      v32 = result > 0x1F;
      result = (result - 16);
    }

    while (v32);
    if ((v31 & 8) == 0)
    {
LABEL_7:
      if ((v31 & 4) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  v33 = qword_27750DD20[(a3 & 7) - 1];
  v34 = (a5 - 2);
  v35 = vdup_lane_s8(v33, 0);
  v36 = vdup_lane_s8(v33, 1);
  v37 = a2 + 2;
  v38 = vdup_lane_s8(v33, 2);
  v39 = vdup_lane_s8(v33, 3);
  v40 = a7;
  do
  {
    v41 = *v34;
    v42 = (v34 + a4);
    v43 = *v42;
    v34 = (v42 + a4);
    *v40 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v41, v41, 2uLL), v36), *&vextq_s8(v41, v41, 4uLL), v38), *v41.i8, v35), *&vextq_s8(v41, v41, 6uLL), v39), 6uLL);
    v44 = (v40 + a6);
    *v44 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v43, v43, 2uLL), v36), *&vextq_s8(v43, v43, 4uLL), v38), *v43.i8, v35), *&vextq_s8(v43, v43, 6uLL), v39), 6uLL);
    v40 = (v44 + a6);
    v37 -= 2;
  }

  while (v37 > 2);
  ++a7;
  a5 += 8;
  if ((v31 & 4) != 0)
  {
LABEL_13:
    v45 = qword_27750DD20[(a3 & 7) - 1];
    v46 = (a5 - 2);
    v47 = a2 + 2;
    v48 = vdup_lane_s8(v45, 0);
    v49 = vdup_lane_s8(v45, 1);
    v50 = vdup_lane_s8(v45, 2);
    v51 = vdup_lane_s8(v45, 3);
    do
    {
      v52 = *v46;
      v53 = (v46 + a4);
      v54 = *v53;
      v46 = (v53 + a4);
      a7->i32[0] = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v52, v52, 2uLL), v49), *&vextq_s8(v52, v52, 4uLL), v50), *v52.i8, v48), *&vextq_s8(v52, v52, 6uLL), v51), 6uLL).u32[0];
      *(a7->i32 + a6) = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*&vextq_s8(v54, v54, 2uLL), v49), *&vextq_s8(v54, v54, 4uLL), v50), *v54.i8, v48), *&vextq_s8(v54, v54, 6uLL), v51), 6uLL).u32[0];
      a7 = (a7 + a6 + a6);
      v47 -= 2;
    }

    while (v47 > 2);
  }

  return result;
}

uint64_t sub_27742AFB4(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 2 * a4;
  v9 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * (a3 & 7) - 2];
  v11 = qword_27750DD60[2 * v7 - 2];
  v12 = vdupq_lane_s16(v10, 0);
  v13 = vdupq_lane_s16(v10, 3);
  v14 = vdupq_lane_s16(v10, 1);
  v15 = vdupq_lane_s16(v10, 2);
  v16 = a5 + 4 * a4 + 12;
  v17.i64[0] = 0x38000000380000;
  v17.i64[1] = 0x38000000380000;
  do
  {
    v18 = (a5 + 2 * (-2 - a4));
    v19 = v18[1];
    v20 = vextq_s8(*v18, v19, 8uLL);
    v21 = vmlaq_s16(vmulq_s16(*v18, v12), vextq_s8(*v18, v19, 0xCuLL), v13);
    v22 = vmulq_s16(vextq_s8(*v18, v19, 4uLL), v14);
    v23 = vmulq_s16(v20, v15);
    v24 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v23.i8, *v22.i8), *v21.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v22, v23), v21), 2uLL);
    v25 = *(a5 - 4);
    v26 = *(a5 + 12);
    v27 = a5 - 4 + 2 * a4;
    v28 = vextq_s8(v25, v26, 4uLL);
    v29 = vextq_s8(v25, v26, 8uLL);
    v30 = vmlaq_s16(vmulq_s16(v25, v12), vextq_s8(v25, v26, 0xCuLL), v13);
    v31 = vmulq_s16(v28, v14);
    v32 = vmulq_s16(v29, v15);
    v33 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v32.i8, *v31.i8), *v30.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v31, v32), v30), 2uLL);
    v34 = *(v27 + 16);
    v35 = vextq_s8(*v27, v34, 8uLL);
    v36 = vmlaq_s16(vmulq_s16(*v27, v12), vextq_s8(*v27, v34, 0xCuLL), v13);
    v37 = vmulq_s16(vextq_s8(*v27, v34, 4uLL), v14);
    v38 = vmulq_s16(v35, v15);
    v39 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v38.i8, *v37.i8), *v36.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v37, v38), v36), 2uLL);
    v40 = a2 + 1;
    v41 = a7;
    v42 = v16;
    do
    {
      v43 = v42[-1];
      v44 = vextq_s8(v43, *v42, 4uLL);
      v45 = vextq_s8(v43, *v42, 8uLL);
      v46 = vmlaq_s16(vmulq_s16(v43, v12), vextq_s8(v43, *v42, 0xCuLL), v13);
      v47 = vmulq_s16(v44, v14);
      v48 = vmulq_s16(v45, v15);
      v49 = vaddl_u16(*v48.i8, *v47.i8);
      v50 = vaddl_high_u16(v47, v48);
      v51 = vmlal_lane_s16(vmull_lane_s16(*v24.i8, v11, 0), *v33.i8, v11, 1);
      v52 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, v11, 0), v33, v11, 1);
      v24 = v33;
      v33 = v39;
      v53 = vaddw_s16(v49, *v46.i8);
      v54 = vaddw_high_s16(v50, v46);
      *v53.i8 = vshrn_n_s32(v53, 2uLL);
      v55 = vmlal_lane_s16(vmlal_lane_s16(v51, *v33.i8, v11, 2), *v53.i8, v11, 3);
      v39 = vshrn_high_n_s32(*v53.i8, v54, 2uLL);
      *v41 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v55, v17), 6uLL), vaddq_s32(vmlal_lane_s16(vmlal_high_lane_s16(v52, v33, v11, 2), vshrn_n_s32(v54, 2uLL), v11, 3), v17), 6uLL);
      v42 = (v42 + v8);
      v41 = (v41 + v9);
      --v40;
    }

    while (v40 > 1);
    a7 += 2;
    a5 += 16;
    v56 = result - 8;
    v16 += 16;
    v57 = result > 0xF;
    result = (result - 8);
  }

  while (v57);
  if (v56)
  {
LABEL_9:
    v58 = qword_27750DD60[2 * (a3 & 7) - 2];
    v59 = qword_27750DD60[2 * v7 - 2];
    v60 = a5 + 2 * (-2 - a4);
    v61 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v60 + 4), v58, 1), *v60, v58, 0), *&vextq_s8(*(v60 + 4), *(v60 + 4), 4uLL), v58, 2), *(v60 + 4), v58, 3), 2uLL);
    v62 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*a5, v58, 1), *(a5 - 4), v58, 0), *&vextq_s8(*a5, *a5, 4uLL), v58, 2), *a5, v58, 3), 2uLL);
    v63 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(a5 + 2 * a4), v58, 1), *(a5 - 4 + 2 * a4), v58, 0), *&vextq_s8(*(a5 + 2 * a4), *(a5 + 2 * a4), 4uLL), v58, 2), *(a5 + 2 * a4), v58, 3), 2uLL);
    v64 = (a5 + 4 * a4);
    v65 = a2 + 1;
    do
    {
      v66.i64[0] = 0x38000000380000;
      v66.i64[1] = 0x38000000380000;
      v67 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v66, v61, v59, 0), v62, v59, 1), v63, v59, 2);
      v61 = v62;
      v62 = v63;
      v63 = vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v64, v58, 1), *(v64 - 4), v58, 0), *&vextq_s8(*v64->i8, *v64->i8, 4uLL), v58, 2), *v64->i8, v58, 3), 2uLL);
      *a7 = vshrn_n_s32(vmlal_lane_s16(v67, v63, v59, 3), 6uLL);
      v64 = (v64 + v8);
      a7 = (a7 + v9);
      --v65;
    }

    while (v65 > 1);
  }

  return result;
}

uint64_t sub_27742B274(uint64_t result, int a2, unint64_t a3, uint64_t a4, int16x4_t *a5, uint64_t a6, int16x4_t *a7)
{
  v7 = (a3 >> 16) & 7;
  v8 = 4 * a6;
  v9 = 4 * a4;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v10 = qword_27750DD60[2 * v7 - 2];
  v11 = vdupq_lane_s16(v10, 0);
  v12 = vdupq_lane_s16(v10, 3);
  v13 = vdupq_lane_s16(v10, 1);
  v14 = vdupq_lane_s16(v10, 2);
  v15 = a7 + 2 * a6;
  v16 = a5 + 6 * a4;
  v17 = a5 + 4 * a4;
  v18.i64[0] = 0xE000E000E000E000;
  v18.i64[1] = 0xE000E000E000E000;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = *&a5->i8[-2 * a4];
    v22 = *a5->i8;
    v23 = a2 + 2;
    v24 = *&a5->i8[2 * a4];
    do
    {
      v25 = v24;
      v26 = vmulq_s16(v22, v13);
      v27 = *&v17[v19];
      v28 = vmulq_s16(v24, v14);
      v29 = vmulq_s16(v24, v13);
      v24 = *&v16[v19];
      v30 = vmlaq_s16(vmulq_s16(v21, v11), v27, v12);
      v31 = vmlaq_s16(vmulq_s16(v22, v11), v24, v12);
      v32 = vmulq_s16(v27, v14);
      *&a7->i8[v20] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v26.i8, *v28.i8), *v30.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v26, v28), v30), 2uLL), v18);
      *&v15[v20] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v32.i8, *v29.i8), *v31.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v32, v29), v31), 2uLL), v18);
      v21 = v25;
      v20 += v8;
      v19 += v9;
      v23 -= 2;
      v22 = v27;
    }

    while (v23 > 2);
    a7 += 2;
    a5 += 2;
    v33 = result - 8;
    v15 += 16;
    v16 += 16;
    v17 += 16;
    v34 = result > 0xF;
    result = (result - 8);
  }

  while (v34);
  if (v33)
  {
LABEL_9:
    v35 = qword_27750DD60[2 * v7 - 2];
    v36 = *(a5 - 2 * a4);
    v37 = *(a5 + 2 * a4);
    v38 = *a5;
    v39 = a2 + 2;
    do
    {
      v40 = vmlal_lane_s16(vmull_lane_s16(v38, v35, 1), v36, v35, 0);
      v36 = v37;
      v41 = vmlal_lane_s16(v40, v37, v35, 2);
      v42 = vmull_lane_s16(v37, v35, 1);
      v37 = *(a5 + 6 * a4);
      a5 = (a5 + v9);
      v43 = vmlal_lane_s16(v42, v38, v35, 0);
      v38 = *a5;
      v44 = vmlal_lane_s16(vmlal_lane_s16(v43, *a5, v35, 2), v37, v35, 3);
      *a7 = vadd_s16(vshrn_n_s32(vmlal_lane_s16(v41, *a5, v35, 3), 2uLL), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16(vshrn_n_s32(v44, 2uLL), 0xE000E000E000E000);
      a7 = (a7 + v8);
      v39 -= 2;
    }

    while (v39 > 2);
  }

  return result;
}

uint64_t sub_27742B430(uint64_t result, int a2, char a3, uint64_t a4, int16x4_t *a5, uint64_t a6, int16x4_t *a7)
{
  v7 = 2 * a4;
  v8 = 2 * a6;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = qword_27750DD60[2 * (a3 & 7) - 2];
  v10 = vdupq_lane_s16(v9, 0);
  v11 = vdupq_lane_s16(v9, 3);
  v12 = vdupq_lane_s16(v9, 1);
  v13 = vdupq_lane_s16(v9, 2);
  v14 = (&a5[1] + 4);
  v15.i64[0] = 0xE000E000E000E000;
  v15.i64[1] = 0xE000E000E000E000;
  do
  {
    v16 = a2 + 1;
    v17 = a7;
    v18 = v14;
    do
    {
      v19 = v18[-1];
      v20 = vextq_s8(v19, *v18, 4uLL);
      v21 = vextq_s8(v19, *v18, 8uLL);
      v22 = vmlaq_s16(vmulq_s16(v19, v10), vextq_s8(v19, *v18, 0xCuLL), v11);
      v23 = vmulq_s16(v20, v12);
      v24 = vmulq_s16(v21, v13);
      *v17 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v24.i8, *v23.i8), *v22.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v23, v24), v22), 2uLL), v15);
      v18 = (v18 + v7);
      v17 = (v17 + v8);
      --v16;
    }

    while (v16 > 1);
    a7 += 2;
    a5 += 2;
    v25 = result - 8;
    ++v14;
    v26 = result <= 15;
    result = (result - 8);
  }

  while (!v26);
  if (v25)
  {
LABEL_10:
    v27 = qword_27750DD60[2 * (a3 & 7) - 2];
    v28 = a2 + 1;
    do
    {
      *a7 = vadd_s16(vshrn_n_s32(vmlal_high_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*a5, v27, 1), *(a5 - 4), v27, 0), *&vextq_s8(*a5->i8, *a5->i8, 4uLL), v27, 2), *a5->i8, v27, 3), 2uLL), 0xE000E000E000E000);
      a5 = (a5 + v7);
      a7 = (a7 + v8);
      --v28;
    }

    while (v28 > 1);
  }

  return result;
}