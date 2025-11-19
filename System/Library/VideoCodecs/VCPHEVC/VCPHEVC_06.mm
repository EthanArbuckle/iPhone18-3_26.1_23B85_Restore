uint64_t sub_277413000(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, uint64_t a7, int8x16_t *a8)
{
  v9 = vld1q_dup_f32(a4);
  v8 = a4 + 1;
  v10 = vld1_dup_f32(v8);
  v11 = vdupq_n_s32(a3);
  v12 = vmlal_s16(vshlq_s32(vmovl_s16(v10), v11), *v9.i8, 0x2000200020002000);
  v13 = vnegq_s32(v11);
  if (result < 16)
  {
    v18 = result;
  }

  else
  {
    v14 = a6 + 2;
    do
    {
      v15 = v14;
      v16 = a2 + 1;
      v17 = a8;
      do
      {
        *v17 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(v12, v15[-2], *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *v15[-2].i8, v9), v13))), vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(v12, *v15, *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *v15->i8, v9), v13)));
        v17 = (v17 + a7);
        --v16;
        v15 = (v15 + 2 * a5);
      }

      while (v16 > 1);
      ++a8;
      a6 += 4;
      v18 = result - 16;
      v14 += 4;
      v19 = result <= 31;
      result = (result - 16);
    }

    while (!v19);
  }

  v20 = 2 * a7;
  v21 = 4 * a5;
  if ((v18 & 8) != 0)
  {
    v22 = a2 + 2;
    v23 = a6;
    v24 = a8;
    do
    {
      v25 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(v12, *v23, *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *v23->i8, v9), v13))), vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(v12, *(v23 + 2 * a5), *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&v23->i8[2 * a5], v9), v13)));
      *v24 = v25.i64[0];
      *(v24 + a7) = v25.i64[1];
      v24 = (v24 + v20);
      v23 = (v23 + v21);
      v22 -= 2;
    }

    while (v22 > 2);
    a8 = (a8 + 8);
    a6 += 2;
  }

  if ((v18 & 4) != 0)
  {
    v26 = vextq_s8(v9, v9, 8uLL).u64[0];
    v27 = a2 + 2;
    do
    {
      v28 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(v12, *a6, *v9.i8), v13)), vrshlq_s32(vmlal_s16(v12, *(a6 + 2 * a5), v26), v13)));
      a8->i32[0] = v28.i32[0];
      *(a8->i32 + a7) = v28.i32[1];
      a8 = (a8 + v20);
      a6 = (a6 + v21);
      v27 -= 2;
    }

    while (v27 > 2);
  }

  return result;
}

double sub_2774131B4(int a1, int a2, uint64_t a3, int16x8_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint8x16_t *a8)
{
  if (a1 < 16)
  {
    v16 = a1;
  }

  else
  {
    v8 = (a6 + 2);
    v9 = a4 + 1;
    do
    {
      v10 = v9;
      v11 = v8;
      v12 = a2 + 1;
      v13 = a8;
      do
      {
        v14 = vqrshrn_high_n_s16(vqrshrn_n_s16(vhaddq_s16(v10[-1], v11[-1]), 6uLL), vhaddq_s16(*v10, *v11), 6uLL);
        v15.i64[0] = 0x8080808080808080;
        v15.i64[1] = 0x8080808080808080;
        *v13 = vsqaddq_u8(v15, v14);
        v13 = (v13 + a7);
        --v12;
        v11 = (v11 + 2 * a5);
        v10 = (v10 + 2 * a3);
      }

      while (v12 > 1);
      ++a8;
      a4 += 2;
      a6 += 4;
      v16 = a1 - 16;
      v8 += 2;
      v9 += 2;
      v17 = a1 <= 31;
      a1 -= 16;
    }

    while (!v17);
  }

  v18 = 4 * a3;
  v19 = 4 * a5;
  v20 = 2 * a7;
  if ((v16 & 8) != 0)
  {
    v21 = a2 + 2;
    v22 = a6;
    v23 = a4;
    v24 = a8;
    do
    {
      v14 = vqrshrn_high_n_s16(vqrshrn_n_s16(vhaddq_s16(*v23, *v22), 6uLL), vhaddq_s16(*(v23 + 2 * a3), *(v22 + 2 * a5)), 6uLL);
      v25.i64[0] = 0x8080808080808080;
      v25.i64[1] = 0x8080808080808080;
      v26 = vsqaddq_u8(v25, v14);
      *v24 = v26.i64[0];
      *(v24 + a7) = v26.i64[1];
      v23 = (v23 + v18);
      v22 = (v22 + v19);
      v24 = (v24 + v20);
      v21 -= 2;
    }

    while (v21 > 2);
    a8 = (a8 + 8);
    ++a4;
    a6 += 2;
  }

  if ((v16 & 4) != 0)
  {
    v27 = a2 + 2;
    do
    {
      v28 = a4->i64[0];
      v14.i64[1] = *(a4->i64 + 2 * a3);
      v29.i64[0] = *a6;
      v29.i64[1] = *(a6 + 2 * a5);
      *v14.i8 = vqrshrn_n_s16(vhaddq_s16(v14, v29), 6uLL);
      *v29.i8 = vsqadd_u8(0x8080808080808080, *v14.i8);
      a8->i32[0] = v29.i32[0];
      *(a8->i32 + a7) = v29.i32[1];
      a4 = (a4 + v18);
      a6 = (a6 + v19);
      a8 = (a8 + v20);
      v27 -= 2;
    }

    while (v27 > 2);
  }

  return *v14.i64;
}

uint64_t sub_277413318(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
  v9 = 4 * a4;
  v10 = a7 + 2 * a6;
  v11 = 8 * a4 - 3;
  v181 = vdup_lane_s8(v7, 1);
  v182 = vdup_lane_s8(v7, 0);
  v179 = vdup_lane_s8(v7, 3);
  v180 = vdup_lane_s8(v7, 2);
  v178 = vdup_lane_s8(v7, 4);
  v12 = vdup_lane_s8(v7, 5);
  v13 = vdup_lane_s8(v7, 6);
  v14 = vdup_lane_s8(v7, 7);
  v15 = 5 * a4;
  v16.i64[0] = 0x700000007;
  v16.i64[1] = 0x700000007;
  do
  {
    v17 = 0;
    _X19 = (a5 - 3 * a4 - 3);
    v19 = *_X19;
    __asm { PRFUM           #0, [X19,#0x1F] }

    _X20 = &_X19->i8[v9];
    __asm
    {
      PRFM            #0, [X20]
      PRFUM           #0, [X20,#0xF]
    }

    v28 = (_X19 + a4);
    _X20 = &v28->i8[v9];
    _X21 = &v28[1].i8[15];
    v31 = *v28;
    _X19 = &v28->i8[a4];
    __asm
    {
      PRFM            #0, [X21]
      PRFM            #0, [X20]
      PRFUM           #0, [X20,#0xF]
    }

    _X20 = &_X19[v9];
    _X21 = &_X19[a4];
    v38 = *_X19;
    _X19 += 31;
    v39 = v38;
    __asm
    {
      PRFM            #0, [X19]
      PRFM            #0, [X20]
      PRFUM           #0, [X20,#0xF]
    }

    _X19 = &_X21[v9];
    v44 = &_X21[a4];
    v45 = *_X21;
    _X21 += 31;
    v46 = v45;
    __asm
    {
      PRFM            #0, [X21]
      PRFM            #0, [X19]
      PRFUM           #0, [X19,#0xF]
    }

    _X19 = &v44->i8[v9];
    _X21 = &v44[1].i8[15];
    v52 = *v44;
    _X20 = &v44->i8[a4];
    __asm
    {
      PRFM            #0, [X21]
      PRFM            #0, [X19]
      PRFUM           #0, [X19,#0xF]
    }

    _X19 = &_X20[v9];
    _X21 = &_X20[a4];
    v59 = *_X20;
    _X20 += 31;
    v60 = v59;
    __asm
    {
      PRFM            #0, [X20]
      PRFM            #0, [X19]
      PRFUM           #0, [X19,#0xF]
    }

    _X19 = &_X21[v9];
    v65 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v19, v19, 1uLL), v181), *v19.i8, v182), *&vextq_s8(v19, v19, 2uLL), v180), *&vextq_s8(v19, v19, 3uLL), v179), *&vextq_s8(v19, v19, 4uLL), v178), *&vextq_s8(v19, v19, 6uLL), v13), *&vextq_s8(v19, v19, 5uLL), v12), *&vextq_s8(v19, v19, 7uLL), v14);
    v66 = *_X21;
    _X21 += 31;
    __asm
    {
      PRFM            #0, [X21]
      PRFM            #0, [X19]
      PRFUM           #0, [X19,#0xF]
    }

    v70 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v31, v31, 1uLL), v181), *v31.i8, v182), *&vextq_s8(v31, v31, 2uLL), v180), *&vextq_s8(v31, v31, 3uLL), v179), *&vextq_s8(v31, v31, 4uLL), v178), *&vextq_s8(v31, v31, 6uLL), v13), *&vextq_s8(v31, v31, 5uLL), v12), *&vextq_s8(v31, v31, 7uLL), v14);
    v71 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v39, v39, 1uLL), v181), *v39.i8, v182), *&vextq_s8(v39, v39, 2uLL), v180), *&vextq_s8(v39, v39, 3uLL), v179), *&vextq_s8(v39, v39, 4uLL), v178), *&vextq_s8(v39, v39, 6uLL), v13), *&vextq_s8(v39, v39, 5uLL), v12), *&vextq_s8(v39, v39, 7uLL), v14);
    v72 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v46, v46, 1uLL), v181), *v46.i8, v182), *&vextq_s8(v46, v46, 2uLL), v180), *&vextq_s8(v46, v46, 3uLL), v179), *&vextq_s8(v46, v46, 4uLL), v178), *&vextq_s8(v46, v46, 6uLL), v13), *&vextq_s8(v46, v46, 5uLL), v12), *&vextq_s8(v46, v46, 7uLL), v14);
    v73 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v52, v52, 1uLL), v181), *v52.i8, v182), *&vextq_s8(v52, v52, 2uLL), v180), *&vextq_s8(v52, v52, 3uLL), v179), *&vextq_s8(v52, v52, 4uLL), v178), *&vextq_s8(v52, v52, 6uLL), v13), *&vextq_s8(v52, v52, 5uLL), v12), *&vextq_s8(v52, v52, 7uLL), v14);
    v74 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v60, v60, 1uLL), v181), *v60.i8, v182), *&vextq_s8(v60, v60, 2uLL), v180), *&vextq_s8(v60, v60, 3uLL), v179), *&vextq_s8(v60, v60, 4uLL), v178), *&vextq_s8(v60, v60, 6uLL), v13), *&vextq_s8(v60, v60, 5uLL), v12), *&vextq_s8(v60, v60, 7uLL), v14);
    v75 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v66, v66, 1uLL), v181), *v66.i8, v182), *&vextq_s8(v66, v66, 2uLL), v180), *&vextq_s8(v66, v66, 3uLL), v179), *&vextq_s8(v66, v66, 4uLL), v178), *&vextq_s8(v66, v66, 6uLL), v13), *&vextq_s8(v66, v66, 5uLL), v12), *&vextq_s8(v66, v66, 7uLL), v14);
    v76 = a5;
    v77 = a2 + 2;
    do
    {
      v78 = vmlsl_lane_s16(vmull_lane_s16(*v70.i8, *v8.i8, 1), *v65.i8, *v8.i8, 0);
      v79 = vmlsl_high_lane_s16(vmull_high_lane_s16(v70, *v8.i8, 1), v65, *v8.i8, 0);
      v65 = v71;
      _X21 = v76 + v9;
      v81 = *(v76 + v9 - 3);
      __asm { PRFUM           #0, [X21,#0x1C] }

      _X21 = v76 + v11;
      __asm
      {
        PRFM            #0, [X21]
        PRFUM           #0, [X21,#0xF]
      }

      _X21 = v76 + v15;
      v87 = *(v76 + v15 - 3);
      __asm { PRFUM           #0, [X21,#0x1C] }

      _X21 = v76 + v11 + a4;
      __asm
      {
        PRFM            #0, [X21]
        PRFUM           #0, [X21,#0xF]
      }

      v92 = vmlsl_lane_s16(vmull_lane_s16(*v71.i8, *v8.i8, 1), *v70.i8, *v8.i8, 0);
      v93 = vmlsl_high_lane_s16(vmull_high_lane_s16(v71, *v8.i8, 1), v70, *v8.i8, 0);
      v70 = v72;
      v94 = vmlal_lane_s16(vaddq_s32(vmlsl_lane_s16(v78, *v71.i8, *v8.i8, 2), v16), *v72.i8, *v8.i8, 3);
      v95 = vmlal_high_lane_s16(vaddq_s32(vmlsl_high_lane_s16(v79, v71, *v8.i8, 2), v16), v72, *v8.i8, 3);
      v96 = vmlsl_lane_s16(v92, *v72.i8, *v8.i8, 2);
      v97 = vmlsl_high_lane_s16(v93, v72, *v8.i8, 2);
      v72 = v74;
      v71 = v73;
      v98 = vdup_lane_s8(v7, 6);
      v99 = vdup_lane_s8(v7, 7);
      v73 = v75;
      v75 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v87, v87, 1uLL), v181), *v87.i8, v182), *&vextq_s8(v87, v87, 2uLL), v180), *&vextq_s8(v87, v87, 3uLL), v179), *&vextq_s8(v87, v87, 4uLL), v178), *&vextq_s8(v87, v87, 6uLL), v98), *&vextq_s8(v87, v87, 5uLL), v12), *&vextq_s8(v87, v87, 7uLL), v99);
      v74 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v81, v81, 1uLL), v181), *v81.i8, v182), *&vextq_s8(v81, v81, 2uLL), v180), *&vextq_s8(v81, v81, 3uLL), v179), *&vextq_s8(v81, v81, 4uLL), v178), *&vextq_s8(v81, v81, 6uLL), v98), *&vextq_s8(v81, v81, 5uLL), v12), *&vextq_s8(v81, v81, 7uLL), v99);
      *&a7->i8[v17] = vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v94, *v71.i8, v8, 4), *v73.i8, v8, 6), *v72.i8, v8, 5), *v74.i8, v8, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v95, v71, v8, 4), v73, v8, 6), v72, v8, 5), v74, v8, 7), 6uLL);
      *&v10[v17] = vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vaddq_s32(v96, v16), *v71.i8, *v8.i8, 3), *v72.i8, v8, 4), *v74.i8, v8, 6), *v73.i8, v8, 5), *v75.i8, v8, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vaddq_s32(v97, v16), v71, *v8.i8, 3), v72, v8, 4), v74, v8, 6), v73, v8, 5), v75, v8, 7), 6uLL);
      v17 += 4 * a6;
      v77 -= 2;
      v76 += 2 * a4;
    }

    while (v77 > 2);
    a7 += 2;
    a5 += 8;
    v100 = result - 8;
    v10 += 16;
    v101 = result > 0xF;
    result = (result - 8);
  }

  while (v101);
  if (v100)
  {
LABEL_9:
    v102 = qword_27750DCD0[((a3 >> 16) & 3) - 1];
    _X8 = a5 - 3 * a4;
    v104 = *(_X8 - 3);
    _X8 -= 3;
    v105 = v104;
    __asm { PRFUM           #0, [X8,#0x1F] }

    _X9 = _X8 + 4 * a4;
    __asm
    {
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    v110 = (_X8 + a4);
    _X9 = &v110->i8[4 * a4];
    _X10 = &v110[1].i8[15];
    v113 = *v110;
    _X8 = &v110->i8[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X9 = &_X8[4 * a4];
    _X10 = &_X8[a4];
    v120 = *_X8;
    _X8 += 31;
    v121 = v120;
    __asm
    {
      PRFM            #0, [X8]
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X8 = &_X10[4 * a4];
    _X9 = &_X10[a4];
    v127 = *_X10;
    _X10 += 31;
    v128 = v127;
    v129 = vmovl_u8(qword_27750DCD0[(a3 & 3) - 1]);
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X8]
      PRFUM           #0, [X8,#0xF]
    }

    _X8 = &_X9[4 * a4];
    _X10 = &_X9[a4];
    v135 = *_X9;
    _X9 += 31;
    v136 = v135;
    __asm
    {
      PRFM            #0, [X9]
      PRFM            #0, [X8]
      PRFUM           #0, [X8,#0xF]
    }

    _X8 = &_X10[4 * a4];
    _X9 = &_X10[a4];
    v142 = *_X10;
    _X10 += 31;
    v143 = v142;
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X8]
      PRFUM           #0, [X8,#0xF]
    }

    _X12 = &_X9[4 * a4];
    v148 = *_X9;
    _X9 += 31;
    v149 = v148;
    __asm { PRFM            #0, [X9] }

    v151 = a2 + 1;
    _X10 = a5 + 8 * a4 - 3;
    __asm { PRFM            #0, [X12] }

    _X11 = a5 + 4 * a4 + 28;
    v155 = vdupq_lane_s8(v102, 2);
    v156 = vextq_s8(v155, v155, 8uLL).u64[0];
    v157 = vdupq_lane_s8(v102, 3);
    v158 = vextq_s8(v157, v157, 8uLL).u64[0];
    v159 = vdupq_lane_s8(v102, 4);
    v160 = vextq_s8(v159, v159, 8uLL).u64[0];
    v161 = vdupq_lane_s8(v102, 6);
    __asm { PRFUM           #0, [X12,#0xF] }

    v163 = vextq_s8(v161, v161, 8uLL).u64[0];
    v164 = vdupq_lane_s8(v102, 0);
    v165 = vdupq_lane_s8(v102, 7);
    v166 = vextq_s8(v165, v165, 8uLL).u64[0];
    v167 = vdupq_lane_s8(v102, 1);
    v168.i64[0] = 0x700000007;
    v168.i64[1] = 0x700000007;
    v169 = vdupq_lane_s8(v102, 5);
    do
    {
      v170 = vmlsl_u8(vmull_u8(*v113.i8, *v167.i8), *v105.i8, *v164.i8);
      v171 = vmull_high_u8(v113, v167);
      v172 = vmull_high_u8(v105, v164);
      v105 = v113;
      v113 = v121;
      v121 = v128;
      v128 = v136;
      v136 = v143;
      v143 = v149;
      v149 = *(_X11 - 31);
      __asm { PRFM            #0, [X11] }

      v174 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(v170, *v113.i8, *v155.i8), *v121.i8, *v157.i8), *v128.i8, *v159.i8), *v143.i8, *v161.i8), *v136.i8, *v169.i8), *v149.i8, *v165.i8);
      __asm { PRFM            #0, [X10] }

      *v171.i8 = vsub_s16(*v171.i8, *&vmlal_u8(v172, *&vextq_s8(v113, v113, 8uLL), v156));
      v176 = vmlal_u8(vmlal_u8(vmlal_u8(v171, *&vextq_s8(v121, v121, 8uLL), v158), *&vextq_s8(v128, v128, 8uLL), v160), *&vextq_s8(v143, v143, 8uLL), v163);
      *v176.i8 = vsub_s16(*v176.i8, *&vmlal_u8(vmull_high_u8(v136, v169), *&vextq_s8(v149, v149, 8uLL), v166));
      __asm { PRFUM           #0, [X10,#0xF] }

      *a7 = vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_lane_s16(vaddq_s32(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*&vextq_s8(v174, v174, 2uLL), *v129.i8, 1), *v174.i8, *v129.i8, 0), *&vextq_s8(v174, v174, 4uLL), *v129.i8, 2), v168), *&vextq_s8(v174, v174, 6uLL), *v129.i8, 3), v174, v129, 4), *&vextq_s8(v174, v176, 0xCuLL), v129, 6), *&vextq_s8(v174, v176, 0xAuLL), v129, 5), *&vextq_s8(v174, v176, 0xEuLL), v129, 7), 6uLL);
      a7 = (a7 + 2 * a6);
      --v151;
      _X10 += a4;
      _X11 += a4;
    }

    while (v151 > 1);
  }

  return result;
}

uint64_t sub_277413A08(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, int16x4_t *a7)
{
  v8 = 9 * a4;
  v9 = (a3 >> 16) & 3;
  v10 = 4 * a4;
  v11 = 5 * a4;
  v12 = a4;
  v13 = 2 * a6;
  if (result < 16)
  {
    v98 = result;
  }

  else
  {
    v14 = qword_27750DCD0[v9 - 1];
    v15 = vdupq_lane_s8(v14, 0);
    v16 = vdupq_lane_s8(v14, 1);
    v17 = vdupq_lane_s8(v14, 2);
    v18 = vdupq_lane_s8(v14, 3);
    v19 = vdupq_lane_s8(v14, 4);
    v20 = vdupq_lane_s8(v14, 5);
    v21 = vdupq_lane_s8(v14, 6);
    v22 = vdupq_lane_s8(v14, 7);
    v23.i64[0] = 0xE000E000E000E000;
    v23.i64[1] = 0xE000E000E000E000;
    do
    {
      _X5 = a5 + v10 + -3 * a4;
      _X7 = &a5[3] - 3 * a4 + 7;
      v26 = *&a5->i8[-3 * a4];
      _X16 = (a5 + a4 + -3 * a4);
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X5]
        PRFUM           #0, [X5,#0xF]
      }

      _X5 = _X16 + v10;
      _X7 = (_X16 + a4);
      v37 = *_X16;
      _X16 = (_X16 + 31);
      v38 = v37;
      __asm
      {
        PRFM            #0, [X16]
        PRFM            #0, [X5]
        PRFUM           #0, [X5,#0xF]
      }

      _X16 = _X7 + v10;
      v43 = (_X7 + a4);
      v44 = *_X7;
      _X7 = (_X7 + 31);
      v45 = v44;
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X16]
        PRFUM           #0, [X16,#0xF]
      }

      _X16 = &v43->i8[v10];
      _X7 = &v43[1].i8[15];
      v51 = *v43;
      _X5 = &v43->i8[a4];
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X16]
        PRFUM           #0, [X16,#0xF]
      }

      _X16 = &_X5[v10];
      _X7 = &_X5[a4];
      v58 = *_X5;
      _X5 += 31;
      v59 = v58;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X16]
        PRFUM           #0, [X16,#0xF]
      }

      _X16 = &_X7[v10];
      _X5 = &_X7[a4];
      v65 = *_X7;
      _X7 += 31;
      v66 = v65;
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X16]
        PRFUM           #0, [X16,#0xF]
      }

      _X7 = &_X5[v10];
      v71 = *_X5;
      _X5 += 31;
      v72 = v71;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
      }

      v75 = a5;
      v76 = a2 + 2;
      __asm { PRFUM           #0, [X7,#0xF] }

      v78 = a7;
      do
      {
        v79 = vmlsl_u8(vmull_u8(*v45.i8, *v16.i8), *v38.i8, *v15.i8);
        v80 = vmlsl_high_u8(vmull_high_u8(v45, v16), v38, v15);
        v81 = vmlsl_u8(vmlsl_u8(vmull_u8(*v38.i8, *v16.i8), *v26.i8, *v15.i8), *v45.i8, *v17.i8);
        v82 = vmlsl_high_u8(vmlsl_high_u8(vmull_high_u8(v38, v16), v26, v15), v45, v17);
        v26 = v45;
        v45 = v59;
        v83 = vmlal_u8(vaddq_s16(v81, v23), *v51.i8, *v18.i8);
        v84 = vmlal_high_u8(vaddq_s16(v82, v23), v51, v18);
        v85 = vmlsl_u8(v79, *v51.i8, *v17.i8);
        v86 = vmlsl_high_u8(v80, v51, v17);
        v38 = v51;
        v51 = v66;
        v59 = v72;
        _X19 = &v75[3] + v10 + 7;
        v66 = *&v75->i8[4 * a4];
        __asm { PRFM            #0, [X19] }

        _X19 = &v75[v12];
        __asm
        {
          PRFM            #0, [X19]
          PRFUM           #0, [X19,#0xF]
        }

        _X19 = &v75[3] + v11 + 7;
        v72 = *&v75->i8[5 * a4];
        __asm { PRFM            #0, [X19] }

        _X19 = v75 + v8;
        __asm
        {
          PRFM            #0, [X19]
          PRFUM           #0, [X19,#0xF]
        }

        *v78 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v83, *v45.i8, *v19.i8), *v59.i8, *v21.i8), *v51.i8, *v20.i8), *v66.i8, *v22.i8);
        v78[1] = vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(v84, v45, v19), v59, v21), v51, v20), v66, v22);
        v97 = (v78 + v13);
        *v97 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vaddq_s16(v85, v23), *v45.i8, *v18.i8), *v51.i8, *v19.i8), *v66.i8, *v21.i8), *v59.i8, *v20.i8), *v72.i8, *v22.i8);
        v97[1] = vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(vaddq_s16(v86, v23), v45, v18), v51, v19), v66, v21), v59, v20), v72, v22);
        v76 -= 2;
        v75 = (v75 + 2 * a4);
        v78 = (v97 + v13);
      }

      while (v76 > 2);
      a7 += 4;
      a5 += 2;
      v98 = result - 16;
      v99 = result > 0x1F;
      result = (result - 16);
    }

    while (v99);
  }

  if ((v98 & 8) != 0)
  {
    v100 = qword_27750DCD0[v9 - 1];
    _X17 = (a5 - 3 * a4);
    _X0 = _X17 + 4 * a4;
    _X2 = (_X17 + a4);
    v104 = *_X17;
    _X17 = (_X17 + 15);
    v105 = v104;
    __asm
    {
      PRFM            #0, [X17]
      PRFM            #0, [X0]
      PRFUM           #0, [X0,#7]
    }

    _X17 = _X2 + 4 * a4;
    v110 = (_X2 + a4);
    v111 = *_X2;
    _X2 = (_X2 + 15);
    v112 = v111;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#7]
    }

    _X17 = v110 + 4 * a4;
    _X2 = &v110[1] + 7;
    v118 = *v110;
    _X0 = (v110 + a4);
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#7]
    }

    _X17 = _X0 + 4 * a4;
    _X2 = (_X0 + a4);
    v125 = *_X0;
    _X0 = (_X0 + 15);
    v126 = v125;
    __asm
    {
      PRFM            #0, [X0]
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#7]
    }

    _X17 = _X2 + 4 * a4;
    v131 = (_X2 + a4);
    v132 = *_X2;
    _X2 = (_X2 + 15);
    v133 = v132;
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#7]
    }

    _X17 = v131 + 4 * a4;
    _X2 = &v131[1] + 7;
    v139 = *v131;
    _X0 = (v131 + a4);
    __asm
    {
      PRFM            #0, [X2]
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#7]
    }

    _X19 = _X0 + 4 * a4;
    v145 = *_X0;
    _X0 = (_X0 + 15);
    v146 = v145;
    __asm
    {
      PRFM            #0, [X0]
      PRFM            #0, [X19]
    }

    v149 = a2 + 4;
    result = 11 * a4;
    v150 = vdup_lane_s8(v100, 1);
    v151 = vdup_lane_s8(v100, 0);
    v152 = vdup_lane_s8(v100, 2);
    v153 = vdup_lane_s8(v100, 3);
    v154 = vdup_lane_s8(v100, 4);
    v155 = vdup_lane_s8(v100, 5);
    v156 = vdup_lane_s8(v100, 6);
    __asm { PRFUM           #0, [X19,#7] }

    v158.i64[0] = 0xE000E000E000E000;
    v158.i64[1] = 0xE000E000E000E000;
    v159 = a5;
    v160 = a7;
    v161 = vdup_lane_s8(v100, 7);
    do
    {
      v162 = vmlsl_u8(vmull_u8(v112, v150), v105, v151);
      v105 = v133;
      v163 = vmull_u8(v126, v150);
      v164 = vmlal_u8(vaddq_s16(vmlsl_u8(v162, v118, v152), v158), v126, v153);
      v165 = vmlsl_u8(vmlsl_u8(vmull_u8(v118, v150), v112, v151), v126, v152);
      v166 = vmlsl_u8(vmull_u8(v105, v150), v126, v151);
      _X22 = &v159[1] + v10 + 7;
      v126 = *(v159 + 4 * a4);
      _X25 = &v159[v12];
      _X26 = (v159 + v11);
      _X27 = v159 + v8;
      _X28 = (v159 + 6 * a4);
      _X30 = v159 + 10 * a4;
      _X24 = (v159 + 7 * a4);
      _X23 = v159 + result;
      v159 = (v159 + v10);
      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X25]
        PRFUM           #0, [X25,#7]
      }

      v178 = vmlal_u8(vaddq_s16(v165, v158), v105, v153);
      v179 = *_X26;
      _X26 = (_X26 + 15);
      v133 = v179;
      __asm
      {
        PRFM            #0, [X26]
        PRFM            #0, [X27]
        PRFUM           #0, [X27,#7]
      }

      v112 = v139;
      v183 = vmlsl_u8(vmlal_u8(vmlal_u8(v164, v105, v154), v146, v156), v139, v155);
      v184 = vmlal_u8(v178, v139, v154);
      v185 = vmlal_u8(vaddq_s16(vmlsl_u8(vmlsl_u8(v163, v118, v151), v105, v152), v158), v139, v153);
      v186 = vmlsl_u8(v166, v139, v152);
      v187 = *_X28;
      _X28 = (_X28 + 15);
      v139 = v187;
      __asm
      {
        PRFM            #0, [X28]
        PRFM            #0, [X30]
        PRFUM           #0, [X30,#7]
      }

      v191 = vmlsl_u8(vmlal_u8(v184, v126, v156), v146, v155);
      v192 = vmlal_u8(v185, v146, v154);
      v193 = vmlal_u8(vaddq_s16(v186, v158), v146, v153);
      v118 = v146;
      v194 = *_X24;
      _X24 = (_X24 + 15);
      v146 = v194;
      __asm
      {
        PRFM            #0, [X24]
        PRFM            #0, [X23]
        PRFUM           #0, [X23,#7]
      }

      *v160 = vmlsl_u8(v183, v126, v161);
      v198 = (v160 + v13);
      *v198 = vmlsl_u8(v191, v133, v161);
      v199 = (v198 + v13);
      *v199 = vmlsl_u8(vmlsl_u8(vmlal_u8(v192, v133, v156), v126, v155), v139, v161);
      v200 = (v199 + v13);
      *v200 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v193, v126, v154), v139, v156), v133, v155), v194, v161);
      v149 -= 4;
      v160 = (v200 + v13);
    }

    while (v149 > 4);
    a7 += 2;
    ++a5;
  }

  if ((v98 & 4) != 0)
  {
    v201 = qword_27750DCD0[v9 - 1];
    _X13 = (a5 - 3 * a4);
    _X14 = _X13 + 4 * a4;
    v204 = (_X13 + a4);
    v205 = *_X13;
    _X13 = (_X13 + 15);
    v206 = v205;
    __asm
    {
      PRFM            #0, [X13]
      PRFM            #0, [X14]
      PRFUM           #0, [X14,#7]
    }

    _X13 = v204 + 4 * a4;
    _X14 = &v204[1] + 7;
    v212 = *v204;
    _X16 = (v204 + a4);
    __asm
    {
      PRFM            #0, [X14]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    _X13 = _X16 + 4 * a4;
    _X14 = (_X16 + a4);
    v219 = *_X16;
    _X16 = (_X16 + 15);
    v220 = v219;
    __asm
    {
      PRFM            #0, [X16]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    _X13 = _X14 + 4 * a4;
    v225 = (_X14 + a4);
    v226 = *_X14;
    _X14 = (_X14 + 15);
    v227 = v226;
    __asm
    {
      PRFM            #0, [X14]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    _X13 = v225 + 4 * a4;
    _X14 = &v225[1] + 7;
    v233 = *v225;
    _X16 = (v225 + a4);
    __asm
    {
      PRFM            #0, [X14]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    _X13 = _X16 + 4 * a4;
    _X14 = (_X16 + a4);
    v240 = *_X16;
    _X16 = (_X16 + 15);
    v241 = v240;
    __asm
    {
      PRFM            #0, [X16]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    _X13 = _X14 + 4 * a4;
    v246 = *_X14;
    _X14 = (_X14 + 15);
    v247 = v246;
    __asm
    {
      PRFM            #0, [X14]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    v251 = a2 + 4;
    v252 = 11 * a4;
    v253 = 7 * a4;
    v254 = vdup_lane_s8(v201, 1);
    v255 = vdup_lane_s8(v201, 0);
    v256 = vdup_lane_s8(v201, 2);
    v257 = vdup_lane_s8(v201, 3);
    v258 = vdup_lane_s8(v201, 4);
    v259 = vdup_lane_s8(v201, 5);
    v260 = 6 * a4;
    v261 = vdup_lane_s8(v201, 6);
    v262 = vdup_lane_s8(v201, 7);
    do
    {
      _X19 = &a5[v12];
      _X5 = (a5 + v11);
      _X7 = a5 + v8;
      _X2 = (a5 + v260);
      _X3 = a5 + 2 * v11;
      _X0 = (a5 + v253);
      _X1 = a5 + v252;
      a5 = (a5 + v10);
      v270 = vmull_u8(v212, v254);
      v271 = vmull_u8(v227, v254);
      v272 = vmull_u8(v227, v255);
      *v270.i8 = vsub_s16(*v270.i8, *&vmlal_u8(vmull_u8(v206, v255), v220, v256));
      v273 = vmlal_u8(v270, v227, v257);
      v274 = vmlal_u8(vmull_u8(v212, v255), v227, v256).u64[0];
      _X20 = &a5[1] + 7;
      v227 = *a5;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X19]
        PRFUM           #0, [X19,#7]
      }

      v279 = vmull_u8(v233, v254).u64[0];
      v280 = vmlal_u8(v273, v233, v258);
      *v7.i8 = vsub_s16(*&vmull_u8(v220, v254), v274);
      v281 = vmlal_u8(v7, v233, v257);
      v282 = vmlal_u8(vmull_u8(v220, v255), v233, v256).u64[0];
      v206 = v233;
      v283 = *_X5;
      _X5 = (_X5 + 15);
      v233 = v283;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#7]
      }

      v287 = vmull_u8(v241, v259);
      v288 = vmlal_u8(v281, v241, v258);
      *v271.i8 = vsub_s16(*v271.i8, v282);
      v289 = vmlal_u8(v271, v241, v257);
      v290 = vmlal_u8(v272, v241, v256);
      v212 = v241;
      v291 = *_X2;
      _X2 = (_X2 + 15);
      v241 = v291;
      __asm
      {
        PRFM            #0, [X2]
        PRFM            #0, [X3]
        PRFUM           #0, [X3,#7]
      }

      v295 = vmull_u8(v247, v259);
      v280.i64[0] = vmlal_u8(v280, v247, v261).u64[0];
      v296 = vmlal_u8(v289, v247, v258);
      *v290.i8 = vsub_s16(v279, *v290.i8);
      v297 = vmlal_u8(v290, v247, v257);
      v298 = *_X0;
      _X0 = (_X0 + 15);
      v220 = v247;
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X1]
        PRFUM           #0, [X1,#7]
      }

      v302 = vmull_u8(*a5, v259);
      *a7 = vadd_s16(vsub_s16(*v280.i8, *&vmlal_u8(v287, *a5, v262)), 0xE000E000E000E000);
      v7 = vmlal_u8(v288, v227, v261);
      *(a7 + v13) = vadd_s16(vsub_s16(*v7.i8, *&vmlal_u8(v295, v233, v262)), 0xE000E000E000E000);
      v303 = (a7 + v13 + v13);
      *v303 = vadd_s16(vsub_s16(*&vmlal_u8(v296, v233, v261), *&vmlal_u8(v302, v241, v262)), 0xE000E000E000E000);
      result = v303 + v13;
      v251 -= 4;
      a7 = (result + v13);
      *result = vadd_s16(vsub_s16(*&vmlal_u8(vmlal_u8(v297, v227, v258), v241, v261), *&vmlal_u8(vmull_u8(v233, v259), v298, v262)), 0xE000E000E000E000);
      v247 = v298;
    }

    while (v251 > 4);
  }

  return result;
}

uint64_t sub_2774140FC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x8_t *a7)
{
  _X20 = a5;
  v13 = result;
  if (result < 16)
  {
    v14 = result;
  }

  else
  {
    do
    {
      result = sub_277414304(a2, a3, a4, _X20, a6, a7);
      a7 += 2;
      _X20 += 16;
      v14 = v13 - 16;
      v15 = v13 > 0x1F;
      v13 -= 16;
    }

    while (v15);
  }

  v16 = 4 * a4;
  v17 = 2 * a6;
  if ((v14 & 8) != 0)
  {
    v18 = qword_27750DCD0[(a3 & 3) - 1];
    v19 = vdup_lane_s8(v18, 0);
    v20 = vdup_lane_s8(v18, 1);
    v21 = vdup_lane_s8(v18, 2);
    v22 = vdup_lane_s8(v18, 3);
    v23 = vdup_lane_s8(v18, 4);
    v24 = vdup_lane_s8(v18, 5);
    v25 = vdup_lane_s8(v18, 6);
    v26 = a2 + 1;
    v27 = vdup_lane_s8(v18, 7);
    v28.i64[0] = 0xE000E000E000E000;
    v28.i64[1] = 0xE000E000E000E000;
    _X13 = _X20;
    v30 = a7;
    do
    {
      v31 = *(_X13 - 3);
      __asm { PRFUM           #0, [X13,#0x1C] }

      _X15 = _X13 + v16;
      __asm
      {
        PRFUM           #0, [X15,#-3]
        PRFUM           #0, [X15,#0xC]
      }

      *v30 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vaddq_s16(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v31, v31, 1uLL), v20), *v31.i8, v19), *&vextq_s8(v31, v31, 2uLL), v21), v28), *&vextq_s8(v31, v31, 3uLL), v22), *&vextq_s8(v31, v31, 4uLL), v23), *&vextq_s8(v31, v31, 6uLL), v25), *&vextq_s8(v31, v31, 5uLL), v24), *&vextq_s8(v31, v31, 7uLL), v27);
      v30 = (v30 + v17);
      _X13 += a4;
      --v26;
    }

    while (v26 > 1);
    ++a7;
    _X20 += 8;
  }

  if ((v14 & 4) != 0)
  {
    v40 = qword_27750DCD0[(a3 & 3) - 1];
    v41 = vdup_lane_s8(v40, 0);
    v42 = vdup_lane_s8(v40, 1);
    v43 = vdup_lane_s8(v40, 2);
    v44 = vdup_lane_s8(v40, 3);
    v45 = vdup_lane_s8(v40, 4);
    v46 = vdup_lane_s8(v40, 5);
    v47 = a2 + 1;
    v48 = vdup_lane_s8(v40, 6);
    v49 = vdup_lane_s8(v40, 7);
    do
    {
      v50 = *(_X20 - 3);
      __asm { PRFUM           #0, [X20,#0x1C] }

      _X11 = _X20 + v16;
      __asm
      {
        PRFUM           #0, [X11,#-3]
        PRFUM           #0, [X11,#0xC]
      }

      v55 = vextq_s8(v50, v50, 3uLL).u64[0];
      v56 = vextq_s8(v50, v50, 4uLL).u64[0];
      v57 = vextq_s8(v50, v50, 5uLL).u64[0];
      v58 = vextq_s8(v50, v50, 6uLL).u64[0];
      v59 = vextq_s8(v50, v50, 7uLL).u64[0];
      v60 = vmull_u8(*&vextq_s8(v50, v50, 1uLL), v42).u64[0];
      v61 = vmlal_u8(vmull_u8(*v50.i8, v41), *&vextq_s8(v50, v50, 2uLL), v43);
      *v61.i8 = vsub_s16(v60, *v61.i8);
      *a7->i8 = vadd_s16(vsub_s16(*&vmlal_u8(vmlal_u8(vmlal_u8(v61, v55, v44), v56, v45), v58, v48), *&vmlal_u8(vmull_u8(v57, v46), v59, v49)), 0xE000E000E000E000);
      a7 = (a7 + v17);
      _X20 += a4;
      --v47;
    }

    while (v47 > 1);
  }

  return result;
}

uint64_t sub_277414304(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint16x8_t *a6)
{
  v6 = qword_27750DCD0[(a2 & 3) - 1];
  v7 = a6 + 1;
  v8 = (a4 + 5);
  v9 = vdup_lane_s8(v6, 0);
  v10 = vdup_lane_s8(v6, 1);
  v11 = vdup_lane_s8(v6, 2);
  v12 = vdup_lane_s8(v6, 3);
  v13 = vdup_lane_s8(v6, 4);
  v14 = vdup_lane_s8(v6, 5);
  v15 = result + 1;
  v16 = vdup_lane_s8(v6, 6);
  v17 = vdup_lane_s8(v6, 7);
  v18.i64[0] = 0xE000E000E000E000;
  v18.i64[1] = 0xE000E000E000E000;
  do
  {
    v19 = v8[-1];
    v20 = *v8->i8;
    v21 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vaddq_s16(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v20, v20, 1uLL), v10), *v8, v9), *&vextq_s8(v20, v20, 2uLL), v11), v18), *&vextq_s8(v20, v20, 3uLL), v12), *&vextq_s8(v20, v20, 4uLL), v13), *&vextq_s8(v20, v20, 6uLL), v16), *&vextq_s8(v20, v20, 5uLL), v14), *&vextq_s8(v20, v20, 7uLL), v17);
    v7[-1] = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vaddq_s16(vmlsl_u8(vmlsl_u8(vmull_u8(vext_s8(v19, *v8, 1uLL), v10), v19, v9), vext_s8(v19, *v8, 2uLL), v11), v18), vext_s8(v19, *v8, 3uLL), v12), vext_s8(v19, *v8, 4uLL), v13), vext_s8(v19, *v8, 6uLL), v16), vext_s8(v19, *v8, 5uLL), v14), vext_s8(v19, *v8, 7uLL), v17);
    *v7 = v21;
    v7 = (v7 + 2 * a5);
    v8 = (v8 + a3);
    --v15;
  }

  while (v15 > 1);
  return result;
}

uint64_t sub_2774143F8(uint64_t result, int a2, double a3, __n128 a4, int16x8_t a5, uint64_t a6, uint64_t a7, unsigned __int32 *a8, uint64_t a9, int16x4_t *a10)
{
  v10 = 2 * a9;
  if (result < 32)
  {
    v29 = result;
    if ((result & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v11.i64[0] = 0xE000E000E000E000;
  v11.i64[1] = 0xE000E000E000E000;
  do
  {
    v12 = a2 + 4;
    v13 = a10;
    v14 = a8;
    do
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = (v14 + a7);
      v18 = *v17;
      v19 = v17[1];
      v20 = (v17 + a7);
      v21 = *v20;
      v22 = v20[1];
      v23 = (v20 + a7);
      v24 = *v23;
      v25 = v23[1];
      *v13 = vaddq_s16(vshll_n_u8(*v15.i8, 6uLL), v11);
      v13[1] = vaddq_s16(vshll_high_n_u8(v15, 6uLL), v11);
      v13[2] = vaddq_s16(vshll_n_u8(*v16.i8, 6uLL), v11);
      v13[3] = vaddq_s16(vshll_high_n_u8(v16, 6uLL), v11);
      v26 = (v13 + v10);
      *v26 = vaddq_s16(vshll_n_u8(*v18.i8, 6uLL), v11);
      v26[1] = vaddq_s16(vshll_high_n_u8(v18, 6uLL), v11);
      v26[2] = vaddq_s16(vshll_n_u8(*v19.i8, 6uLL), v11);
      v26[3] = vaddq_s16(vshll_high_n_u8(v19, 6uLL), v11);
      v27 = (v26 + v10);
      *v27 = vaddq_s16(vshll_n_u8(*v21.i8, 6uLL), v11);
      v27[1] = vaddq_s16(vshll_high_n_u8(v21, 6uLL), v11);
      v27[2] = vaddq_s16(vshll_n_u8(*v22.i8, 6uLL), v11);
      v27[3] = vaddq_s16(vshll_high_n_u8(v22, 6uLL), v11);
      v28 = (v27 + v10);
      *v28 = vaddq_s16(vshll_n_u8(*v24.i8, 6uLL), v11);
      v28[1] = vaddq_s16(vshll_high_n_u8(v24, 6uLL), v11);
      a4 = vaddq_s16(vshll_n_u8(*v25.i8, 6uLL), v11);
      a5 = vaddq_s16(vshll_high_n_u8(v25, 6uLL), v11);
      v28[2] = a4;
      v28[3] = a5;
      v12 -= 4;
      v14 = (v23 + a7);
      v13 = (v28 + v10);
    }

    while (v12 > 4);
    a8 += 8;
    a10 += 8;
    v29 = result - 32;
    v30 = result <= 63;
    result = (result - 32);
  }

  while (!v30);
  if ((v29 & 0x10) != 0)
  {
LABEL_10:
    v31 = a2 + 4;
    v32.i64[0] = 0xE000E000E000E000;
    v32.i64[1] = 0xE000E000E000E000;
    v33 = a10;
    v34 = a8;
    do
    {
      v35 = *v34;
      v36 = (v34 + a7);
      v37 = *v36;
      v38 = (v36 + a7);
      v39 = *v38;
      v40 = (v38 + a7);
      v41 = *v40;
      *v33 = vaddq_s16(vshll_n_u8(*v35.i8, 6uLL), v32);
      v33[1] = vaddq_s16(vshll_high_n_u8(v35, 6uLL), v32);
      v42 = (v33 + v10);
      *v42 = vaddq_s16(vshll_n_u8(*v37.i8, 6uLL), v32);
      v42[1] = vaddq_s16(vshll_high_n_u8(v37, 6uLL), v32);
      v43 = (v42 + v10);
      *v43 = vaddq_s16(vshll_n_u8(*v39.i8, 6uLL), v32);
      v43[1] = vaddq_s16(vshll_high_n_u8(v39, 6uLL), v32);
      a4 = vaddq_s16(vshll_n_u8(*v41.i8, 6uLL), v32);
      a5 = vaddq_s16(vshll_high_n_u8(v41, 6uLL), v32);
      v44 = &v43->i8[v10];
      *v44 = a4;
      v44[1] = a5;
      v31 -= 4;
      v34 = (v40 + a7);
      v33 = (v44 + v10);
    }

    while (v31 > 4);
    a8 += 4;
    a10 += 4;
  }

LABEL_13:
  v45 = 4 * a9;
  if ((v29 & 8) != 0)
  {
    v46 = a2 + 2;
    v47.i64[0] = 0xE000E000E000E000;
    v47.i64[1] = 0xE000E000E000E000;
    v48 = a10;
    v49 = a8;
    do
    {
      v50 = *v49;
      v51 = (v49 + a7);
      a5.i64[0] = *v51;
      v49 = (v51 + a7);
      *v48 = vaddq_s16(vshll_n_u8(v50, 6uLL), v47);
      a4 = vaddq_s16(vshll_n_u8(*a5.i8, 6uLL), v47);
      *(v48 + 2 * a9) = a4;
      v48 = (v48 + v45);
      v46 -= 2;
    }

    while (v46 > 2);
    a8 += 2;
    a10 += 2;
  }

  if ((v29 & 4) != 0)
  {
    v52 = a2 + 2;
    do
    {
      a4.n128_u32[0] = *a8;
      a5.i32[0] = *(a8 + a7);
      *a10 = vadd_s16(vshl_n_s16(*&vmovl_u8(a4.n128_u64[0]), 6uLL), 0xE000E000E000E000);
      a4.n128_u64[0] = vadd_s16(vshl_n_s16(*&vmovl_u8(*a5.i8), 6uLL), 0xE000E000E000E000);
      *(a10 + 2 * a9) = a4.n128_u64[0];
      a8 = (a8 + 2 * a7);
      a10 = (a10 + v45);
      v52 -= 2;
    }

    while (v52 > 2);
  }

  return result;
}

uint64_t sub_277414668(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  if (result < 8)
  {
    v19 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = qword_27750DCD0[(a3 & 3) - 1];
  v9 = vmovl_u8(qword_27750DCD0[((a3 >> 16) & 3) - 1]);
  v10 = 4 * a4;
  v11 = 2 * a6;
  v12 = a5 + 8 * a4 - 3;
  v13 = 2 * a4;
  v14 = a5 + 5 * a4;
  v193 = vdup_lane_s8(v8, 1);
  v194 = vdup_lane_s8(v8, 0);
  v191 = vdup_lane_s8(v8, 3);
  v192 = vdup_lane_s8(v8, 2);
  v190 = vdup_lane_s8(v8, 4);
  v15 = vdup_lane_s8(v8, 5);
  v16 = vdup_lane_s8(v8, 6);
  v17 = vdup_lane_s8(v8, 7);
  v18 = a5 + 4 * a4;
  v19 = a7;
  do
  {
    _X21 = (a5 - 3 * a4 - 3);
    v21 = *_X21;
    __asm { PRFUM           #0, [X21,#0x1F] }

    _X22 = &_X21->i8[v10];
    __asm
    {
      PRFM            #0, [X22]
      PRFUM           #0, [X22,#0xF]
    }

    _X21 = &_X21->i8[a4];
    _X22 = &_X21[v10];
    _X23 = &_X21[a4];
    v33 = *_X21;
    _X21 += 31;
    v34 = v33;
    __asm
    {
      PRFM            #0, [X21]
      PRFM            #0, [X22]
      PRFUM           #0, [X22,#0xF]
    }

    _X21 = &_X23[v10];
    _X22 = &_X23[a4];
    v40 = *_X23;
    _X23 += 31;
    v41 = v40;
    __asm
    {
      PRFM            #0, [X23]
      PRFM            #0, [X21]
      PRFUM           #0, [X21,#0xF]
    }

    _X21 = &_X22[v10];
    _X23 = &_X22[a4];
    v47 = *_X22;
    _X22 += 31;
    v48 = v47;
    __asm
    {
      PRFM            #0, [X22]
      PRFM            #0, [X21]
      PRFUM           #0, [X21,#0xF]
    }

    _X21 = &_X23[v10];
    _X22 = &_X23[a4];
    v54 = *_X23;
    _X23 += 31;
    v55 = v54;
    __asm
    {
      PRFM            #0, [X23]
      PRFM            #0, [X21]
      PRFUM           #0, [X21,#0xF]
    }

    _X21 = &_X22[v10];
    _X23 = &_X22[a4];
    v61 = *_X22;
    _X22 += 31;
    v62 = v61;
    __asm
    {
      PRFM            #0, [X22]
      PRFM            #0, [X21]
      PRFUM           #0, [X21,#0xF]
    }

    _X21 = &_X23[v10];
    v67 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v21, v21, 1uLL), v193), *v21.i8, v194), *&vextq_s8(v21, v21, 2uLL), v192), *&vextq_s8(v21, v21, 3uLL), v191), *&vextq_s8(v21, v21, 4uLL), v190), *&vextq_s8(v21, v21, 6uLL), v16), *&vextq_s8(v21, v21, 5uLL), v15), *&vextq_s8(v21, v21, 7uLL), v17);
    v68 = *_X23;
    _X23 += 31;
    __asm
    {
      PRFM            #0, [X23]
      PRFM            #0, [X21]
      PRFUM           #0, [X21,#0xF]
    }

    v72 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v34, v34, 1uLL), v193), *v34.i8, v194), *&vextq_s8(v34, v34, 2uLL), v192), *&vextq_s8(v34, v34, 3uLL), v191), *&vextq_s8(v34, v34, 4uLL), v190), *&vextq_s8(v34, v34, 6uLL), v16), *&vextq_s8(v34, v34, 5uLL), v15), *&vextq_s8(v34, v34, 7uLL), v17);
    v73 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v41, v41, 1uLL), v193), *v41.i8, v194), *&vextq_s8(v41, v41, 2uLL), v192), *&vextq_s8(v41, v41, 3uLL), v191), *&vextq_s8(v41, v41, 4uLL), v190), *&vextq_s8(v41, v41, 6uLL), v16), *&vextq_s8(v41, v41, 5uLL), v15), *&vextq_s8(v41, v41, 7uLL), v17);
    v74 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v48, v48, 1uLL), v193), *v48.i8, v194), *&vextq_s8(v48, v48, 2uLL), v192), *&vextq_s8(v48, v48, 3uLL), v191), *&vextq_s8(v48, v48, 4uLL), v190), *&vextq_s8(v48, v48, 6uLL), v16), *&vextq_s8(v48, v48, 5uLL), v15), *&vextq_s8(v48, v48, 7uLL), v17);
    v75 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v55, v55, 1uLL), v193), *v55.i8, v194), *&vextq_s8(v55, v55, 2uLL), v192), *&vextq_s8(v55, v55, 3uLL), v191), *&vextq_s8(v55, v55, 4uLL), v190), *&vextq_s8(v55, v55, 6uLL), v16), *&vextq_s8(v55, v55, 5uLL), v15), *&vextq_s8(v55, v55, 7uLL), v17);
    v76 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v62, v62, 1uLL), v193), *v62.i8, v194), *&vextq_s8(v62, v62, 2uLL), v192), *&vextq_s8(v62, v62, 3uLL), v191), *&vextq_s8(v62, v62, 4uLL), v190), *&vextq_s8(v62, v62, 6uLL), v16), *&vextq_s8(v62, v62, 5uLL), v15), *&vextq_s8(v62, v62, 7uLL), v17);
    v77 = v12;
    v78 = v18;
    v79 = v14;
    v80 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v68, v68, 1uLL), v193), *v68.i8, v194), *&vextq_s8(v68, v68, 2uLL), v192), *&vextq_s8(v68, v68, 3uLL), v191), *&vextq_s8(v68, v68, 4uLL), v190), *&vextq_s8(v68, v68, 6uLL), v16), *&vextq_s8(v68, v68, 5uLL), v15), *&vextq_s8(v68, v68, 7uLL), v17);
    v81 = v12 + a4;
    v82 = a2 + 2;
    v83 = a7;
    v84 = a7 + a6;
    do
    {
      v85 = vmlsl_lane_s16(vmull_lane_s16(*v72.i8, *v9.i8, 1), *v67.i8, *v9.i8, 0);
      v86 = vmlsl_high_lane_s16(vmull_high_lane_s16(v72, *v9.i8, 1), v67, *v9.i8, 0);
      v67 = v73;
      _X28 = v78 + v7;
      v88 = *(v78 + v7 - 3);
      __asm { PRFUM           #0, [X28,#0x1C] }

      _X28 = v77 + v7;
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X28,#0xF]
      }

      _X28 = v79 + v7;
      v94 = *(v79 + v7 - 3);
      __asm { PRFUM           #0, [X28,#0x1C] }

      _X28 = v81 + v7;
      __asm
      {
        PRFM            #0, [X28]
        PRFUM           #0, [X28,#0xF]
      }

      v99 = vmlsl_lane_s16(vmull_lane_s16(*v73.i8, *v9.i8, 1), *v72.i8, *v9.i8, 0);
      v100 = vmlsl_high_lane_s16(vmull_high_lane_s16(v73, *v9.i8, 1), v72, *v9.i8, 0);
      v72 = v74;
      v101 = vmlsl_lane_s16(v85, *v73.i8, *v9.i8, 2);
      v102 = vmlsl_high_lane_s16(v86, v73, *v9.i8, 2);
      v73 = v75;
      v103 = vmlal_lane_s16(v101, *v74.i8, *v9.i8, 3);
      v104 = vmlal_high_lane_s16(v102, v74, *v9.i8, 3);
      v105 = vmlsl_lane_s16(v99, *v74.i8, *v9.i8, 2);
      v106 = vmlsl_high_lane_s16(v100, v74, *v9.i8, 2);
      v74 = v76;
      v107 = vdup_lane_s8(v8, 6);
      v75 = v80;
      v108 = vdup_lane_s8(v8, 7);
      v80 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v94, v94, 1uLL), v193), *v94.i8, v194), *&vextq_s8(v94, v94, 2uLL), v192), *&vextq_s8(v94, v94, 3uLL), v191), *&vextq_s8(v94, v94, 4uLL), v190), *&vextq_s8(v94, v94, 6uLL), v107), *&vextq_s8(v94, v94, 5uLL), v15), *&vextq_s8(v94, v94, 7uLL), v108);
      v76 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v88, v88, 1uLL), v193), *v88.i8, v194), *&vextq_s8(v88, v88, 2uLL), v192), *&vextq_s8(v88, v88, 3uLL), v191), *&vextq_s8(v88, v88, 4uLL), v190), *&vextq_s8(v88, v88, 6uLL), v107), *&vextq_s8(v88, v88, 5uLL), v15), *&vextq_s8(v88, v88, 7uLL), v108);
      *&v83[v7 / 4] = vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v103, *v73.i8, v9, 4), *v75.i8, v9, 6), *v74.i8, v9, 5), *v76.i8, v9, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v104, v73, v9, 4), v75, v9, 6), v74, v9, 5), v76, v9, 7), 6uLL), 6uLL);
      *&v84[v7] = vqrshrun_n_s16(vqshrn_high_n_s32(vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v105, *v73.i8, *v9.i8, 3), *v74.i8, v9, 4), *v76.i8, v9, 6), *v75.i8, v9, 5), *v80.i8, v9, 7), 6uLL), vmlsl_high_laneq_s16(vmlsl_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v106, v73, *v9.i8, 3), v74, v9, 4), v76, v9, 6), v75, v9, 5), v80, v9, 7), 6uLL), 6uLL);
      v83 = (v83 + v11);
      v84 += v11;
      v82 -= 2;
      v81 += v13;
      v79 += v13;
      v78 += v13;
      v77 += v13;
    }

    while (v82 > 2);
    v19 += 2;
    a5 += 8;
    v109 = result - 8;
    v7 += 8;
    v110 = result > 0xF;
    result = (result - 8);
  }

  while (v110);
  if (v109)
  {
LABEL_9:
    v111 = qword_27750DCD0[((a3 >> 16) & 3) - 1];
    _X9 = a5 - 3 * a4;
    v113 = *(_X9 - 3);
    _X9 -= 3;
    v114 = v113;
    __asm { PRFUM           #0, [X9,#0x1F] }

    _X10 = _X9 + 4 * a4;
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0xF]
    }

    _X9 = (_X9 + a4);
    _X10 = _X9 + 4 * a4;
    _X11 = (_X9 + a4);
    v122 = *_X9;
    _X9 = (_X9 + 31);
    v123 = v122;
    __asm
    {
      PRFM            #0, [X9]
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0xF]
    }

    _X9 = _X11 + 4 * a4;
    v128 = (_X11 + a4);
    v129 = *_X11;
    _X11 = (_X11 + 31);
    v130 = v129;
    __asm
    {
      PRFM            #0, [X11]
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X9 = &v128->i8[4 * a4];
    _X11 = &v128[1].i8[15];
    v136 = *v128;
    _X10 = &v128->i8[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X9 = &_X10[4 * a4];
    _X11 = &_X10[a4];
    v143 = *_X10;
    _X10 += 31;
    v144 = v143;
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X9 = &_X11[4 * a4];
    _X10 = &_X11[a4];
    v150 = *_X11;
    _X11 += 31;
    v151 = v150;
    __asm
    {
      PRFM            #0, [X11]
      PRFM            #0, [X9]
      PRFUM           #0, [X9,#0xF]
    }

    _X12 = &_X10[4 * a4];
    v156 = *_X10;
    _X10 += 31;
    v157 = v156;
    v158 = vmovl_u8(qword_27750DCD0[(a3 & 3) - 1]);
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X12]
    }

    v161 = a2 + 1;
    _X10 = a5 + 8 * a4 - 3;
    _X11 = a5 + 4 * a4 + 28;
    v164 = vdupq_lane_s8(v111, 0);
    v165 = vdupq_lane_s8(v111, 2);
    v166 = vextq_s8(v165, v165, 8uLL).u64[0];
    v167 = vdupq_lane_s8(v111, 3);
    v168 = vextq_s8(v167, v167, 8uLL).u64[0];
    v169 = vdupq_lane_s8(v111, 4);
    __asm { PRFUM           #0, [X12,#0xF] }

    v171 = vextq_s8(v169, v169, 8uLL).u64[0];
    v172 = vdupq_lane_s8(v111, 1);
    v173 = vdupq_lane_s8(v111, 6);
    v174 = vextq_s8(v173, v173, 8uLL).u64[0];
    v175 = vdupq_lane_s8(v111, 7);
    v176 = vextq_s8(v175, v175, 8uLL).u64[0];
    v177 = vdupq_lane_s8(v111, 5);
    do
    {
      v178 = vmlsl_u8(vmull_u8(*v123.i8, *v172.i8), *v114.i8, *v164.i8);
      v179 = vmull_high_u8(v123, v172);
      v180 = vmull_high_u8(v114, v164);
      v114 = v123;
      v123 = v130;
      v130 = v136;
      v136 = v144;
      v144 = v151;
      v151 = v157;
      v157 = *(_X11 - 31);
      __asm
      {
        PRFM            #0, [X11]
        PRFM            #0, [X10]
      }

      v183 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(v178, *v123.i8, *v165.i8), *v130.i8, *v167.i8), *v136.i8, *v169.i8), *v151.i8, *v173.i8), *v144.i8, *v177.i8), *v157.i8, *v175.i8);
      *v179.i8 = vsub_s16(*v179.i8, *&vmlal_u8(v180, *&vextq_s8(v123, v123, 8uLL), v166));
      v184 = vmlal_u8(vmlal_u8(vmlal_u8(v179, *&vextq_s8(v130, v130, 8uLL), v168), *&vextq_s8(v136, v136, 8uLL), v171), *&vextq_s8(v151, v151, 8uLL), v174);
      *v184.i8 = vsub_s16(*v184.i8, *&vmlal_u8(vmull_high_u8(v144, v177), *&vextq_s8(v157, v157, 8uLL), v176));
      v185 = vextq_s8(v183, v184, 0xAuLL).u64[0];
      v186 = vextq_s8(v183, v184, 0xCuLL).u64[0];
      v187 = vmlal_high_laneq_s16(vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*&vextq_s8(v183, v183, 2uLL), *v158.i8, 1), *v183.i8, *v158.i8, 0), *&vextq_s8(v183, v183, 4uLL), *v158.i8, 2), *&vextq_s8(v183, v183, 6uLL), *v158.i8, 3), v183, v158, 4);
      v188 = vextq_s8(v183, v184, 0xEuLL);
      *v188.i8 = vqshrn_n_s32(vmlsl_laneq_s16(vmlsl_laneq_s16(vmlal_laneq_s16(v187, v186, v158, 6), v185, v158, 5), *v188.i8, v158, 7), 6uLL);
      __asm { PRFUM           #0, [X10,#0xF] }

      *v19 = vqrshrun_n_s16(v188, 6uLL).u32[0];
      v19 = (v19 + a6);
      --v161;
      _X10 += a4;
      _X11 += a4;
    }

    while (v161 > 1);
  }

  return result;
}

uint64_t sub_277414D88(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, int8x8_t *a7)
{
  v7 = 4 * a4;
  v8 = 9 * a4;
  v9 = 5 * a4;
  v311 = (a3 >> 16) & 3;
  if (result < 16)
  {
    v26 = a7;
    v104 = result;
  }

  else
  {
    v10 = 0;
    v11 = qword_27750DCD0[((a3 >> 16) & 3) - 1];
    v12 = 2 * a6;
    v13 = a5 + v8;
    v14 = 2 * a4;
    v15 = a5 + v9;
    v16 = a5 + 4 * a4;
    v17 = vdupq_lane_s8(v11, 0);
    v18 = vdupq_lane_s8(v11, 1);
    v19 = vdupq_lane_s8(v11, 2);
    v20 = vdupq_lane_s8(v11, 3);
    v21 = vdupq_lane_s8(v11, 4);
    v22 = vdupq_lane_s8(v11, 5);
    v23 = &a5[a4];
    v24 = vdupq_lane_s8(v11, 6);
    v25 = vdupq_lane_s8(v11, 7);
    v26 = a7;
    do
    {
      _X24 = a5 + v7 + -3 * a4;
      _X25 = (a5 + a4 + -3 * a4);
      _X2 = &a5[3] - 3 * a4 + 7;
      v30 = *&a5->i8[-3 * a4];
      __asm
      {
        PRFM            #0, [X2]
        PRFM            #0, [X24]
        PRFUM           #0, [X24,#0xF]
      }

      _X2 = _X25 + v7;
      v39 = (_X25 + a4);
      v40 = *_X25;
      _X25 = (_X25 + 31);
      v41 = v40;
      __asm
      {
        PRFM            #0, [X25]
        PRFM            #0, [X2]
        PRFUM           #0, [X2,#0xF]
      }

      _X2 = &v39->i8[v7];
      _X25 = &v39[1].i8[15];
      v47 = *v39;
      _X24 = &v39->i8[a4];
      __asm
      {
        PRFM            #0, [X25]
        PRFM            #0, [X2]
        PRFUM           #0, [X2,#0xF]
      }

      _X2 = &_X24[v7];
      _X25 = &_X24[a4];
      v54 = *_X24;
      _X24 += 31;
      v55 = v54;
      __asm
      {
        PRFM            #0, [X24]
        PRFM            #0, [X2]
        PRFUM           #0, [X2,#0xF]
      }

      _X2 = &_X25[v7];
      v60 = &_X25[a4];
      v61 = *_X25;
      _X25 += 31;
      v62 = v61;
      __asm
      {
        PRFM            #0, [X25]
        PRFM            #0, [X2]
        PRFUM           #0, [X2,#0xF]
      }

      _X2 = &v60->i8[v7];
      _X25 = &v60[1].i8[15];
      v68 = *v60;
      v69 = (v60 + a4);
      __asm
      {
        PRFM            #0, [X25]
        PRFM            #0, [X2]
      }

      _X30 = &v69->i8[v7];
      __asm { PRFUM           #0, [X2,#0xF] }

      _X25 = &v69[1].i8[15];
      v75 = *v69;
      v76 = v23;
      v77 = v16;
      __asm { PRFM            #0, [X25] }

      v79 = v15;
      v80 = v13;
      __asm { PRFM            #0, [X30] }

      v82 = a2 + 2;
      v83 = a7;
      __asm { PRFUM           #0, [X30,#0xF] }

      v85 = a7 + a6;
      do
      {
        v86 = vmlsl_u8(vmull_u8(*v47.i8, *v18.i8), *v41.i8, *v17.i8);
        v87 = vmlsl_high_u8(vmull_high_u8(v47, v18), v41, v17);
        v88 = vmlsl_u8(vmlsl_u8(vmull_u8(*v41.i8, *v18.i8), *v30.i8, *v17.i8), *v47.i8, *v19.i8);
        v89 = vmlsl_high_u8(vmlsl_high_u8(vmull_high_u8(v41, v18), v30, v17), v47, v19);
        v30 = v47;
        v47 = v62;
        v62 = v75;
        v90 = vmlal_u8(v88, *v55.i8, *v20.i8);
        v91 = vmlal_high_u8(v89, v55, v20);
        v92 = vmlsl_u8(v86, *v55.i8, *v19.i8);
        v93 = vmlsl_high_u8(v87, v55, v19);
        v41 = v55;
        v55 = v68;
        _X13 = &v77[v10 + 31];
        v68 = *&v77[v10];
        __asm { PRFM            #0, [X13] }

        _X13 = &v76[v10 / 8];
        __asm
        {
          PRFM            #0, [X13]
          PRFUM           #0, [X13,#0xF]
        }

        _X13 = &v79[v10 + 31];
        v75 = *&v79[v10];
        _X12 = &v80[v10];
        __asm
        {
          PRFM            #0, [X13]
          PRFM            #0, [X12]
          PRFUM           #0, [X12,#0xF]
        }

        *v83[v10 / 8].i8 = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v90, *v47.i8, *v21.i8), *v62.i8, *v24.i8), *v55.i8, *v22.i8), *v68.i8, *v25.i8), 6uLL), vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(v91, v47, v21), v62, v24), v55, v22), v68, v25), 6uLL);
        *&v85[v10] = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(v92, *v47.i8, *v20.i8), *v55.i8, *v21.i8), *v68.i8, *v24.i8), *v62.i8, *v22.i8), *v75.i8, *v25.i8), 6uLL), vmlsl_high_u8(vmlsl_high_u8(vmlal_high_u8(vmlal_high_u8(vmlal_high_u8(v93, v47, v20), v55, v21), v68, v24), v62, v22), v75, v25), 6uLL);
        v83 = (v83 + v12);
        v85 += v12;
        v82 -= 2;
        v80 += v14;
        v79 += v14;
        v77 += v14;
        v76 = (v76 + v14);
      }

      while (v82 > 2);
      v26 += 2;
      a5 += 2;
      v104 = result - 16;
      v10 += 16;
      v105 = result > 0x1F;
      result = (result - 16);
    }

    while (v105);
  }

  v106 = a4;
  if ((v104 & 8) == 0)
  {
    v107 = v311;
    if ((v104 & 4) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  v107 = v311;
  v108 = qword_27750DCD0[v311 - 1];
  _X12 = (a5 - 3 * a4);
  _X13 = _X12 + 4 * a4;
  _X16 = (_X12 + a4);
  v112 = *_X12;
  _X12 = (_X12 + 15);
  v113 = v112;
  __asm
  {
    PRFM            #0, [X12]
    PRFM            #0, [X13]
    PRFUM           #0, [X13,#7]
  }

  _X12 = _X16 + 4 * a4;
  _X13 = (_X16 + a4);
  v119 = *_X16;
  _X16 = (_X16 + 15);
  v120 = v119;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X12]
    PRFUM           #0, [X12,#7]
  }

  _X12 = _X13 + 4 * a4;
  _X16 = (_X13 + a4);
  v126 = *_X13;
  _X13 = (_X13 + 15);
  v127 = v126;
  __asm
  {
    PRFM            #0, [X13]
    PRFM            #0, [X12]
    PRFUM           #0, [X12,#7]
  }

  _X12 = _X16 + 4 * a4;
  _X13 = (_X16 + a4);
  v133 = *_X16;
  _X16 = (_X16 + 15);
  v134 = v133;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X12]
    PRFUM           #0, [X12,#7]
  }

  _X12 = _X13 + 4 * a4;
  _X16 = (_X13 + a4);
  v140 = *_X13;
  _X13 = (_X13 + 15);
  v141 = v140;
  __asm
  {
    PRFM            #0, [X13]
    PRFM            #0, [X12]
    PRFUM           #0, [X12,#7]
  }

  _X12 = _X16 + 4 * a4;
  _X13 = (_X16 + a4);
  v147 = *_X16;
  _X16 = (_X16 + 15);
  v148 = v147;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X12]
    PRFUM           #0, [X12,#7]
  }

  _X12 = _X13 + 4 * a4;
  v153 = *_X13;
  _X13 = (_X13 + 15);
  v154 = v153;
  __asm
  {
    PRFM            #0, [X13]
    PRFM            #0, [X12]
    PRFUM           #0, [X12,#7]
  }

  v158 = a2 + 4;
  result = 7 * a4;
  v159 = vdup_lane_s8(v108, 1);
  v160 = vdup_lane_s8(v108, 0);
  v161 = vdup_lane_s8(v108, 2);
  v162 = vdup_lane_s8(v108, 3);
  v163 = vdup_lane_s8(v108, 4);
  v164 = vdup_lane_s8(v108, 5);
  v165 = vdup_lane_s8(v108, 6);
  v166 = a5;
  v167 = v26;
  v168 = vdup_lane_s8(v108, 7);
  do
  {
    _X27 = &v166[v106];
    _X26 = (v166 + v9);
    _X25 = v166 + v8;
    _X24 = (v166 + 6 * a4);
    _X23 = v166 + 10 * a4;
    _X22 = (v166 + result);
    _X21 = v166 + 11 * a4;
    v166 = (v166 + v7);
    v176 = vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(v120, v159), v113, v160), v127, v161), v134, v162);
    v177 = vmlsl_u8(vmlsl_u8(vmull_u8(v127, v159), v120, v160), v134, v161);
    v178 = vmull_u8(v134, v159);
    v179 = vmlsl_u8(vmull_u8(v141, v159), v134, v160);
    _X28 = &v166[1] + 7;
    v134 = *v166;
    __asm
    {
      PRFM            #0, [X28]
      PRFM            #0, [X27]
      PRFUM           #0, [X27,#7]
    }

    v184 = vmlal_u8(v176, v141, v163);
    v185 = vmlal_u8(v177, v141, v162);
    v186 = vmlsl_u8(vmlsl_u8(v178, v127, v160), v141, v161);
    v113 = v141;
    v187 = *_X26;
    _X26 = (_X26 + 15);
    v141 = v187;
    __asm
    {
      PRFM            #0, [X26]
      PRFM            #0, [X25]
      PRFUM           #0, [X25,#7]
    }

    v191 = vmlsl_u8(vmlal_u8(v184, v154, v165), v148, v164);
    v192 = vmlal_u8(v185, v148, v163);
    v193 = vmlal_u8(v186, v148, v162);
    v194 = vmlsl_u8(v179, v148, v161);
    v120 = v148;
    v195 = *_X24;
    _X24 = (_X24 + 15);
    v148 = v195;
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X23]
      PRFUM           #0, [X23,#7]
    }

    v199 = vmlsl_u8(vmlal_u8(v192, *v166, v165), v154, v164);
    v200 = vmlal_u8(v193, v154, v163);
    v201 = vmlal_u8(v194, v154, v162);
    v127 = v154;
    v202 = *_X22;
    _X22 = (_X22 + 15);
    v154 = v202;
    __asm
    {
      PRFM            #0, [X22]
      PRFM            #0, [X21]
      PRFUM           #0, [X21,#7]
    }

    *v200.i8 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(v200, v141, v165), *v166, v164), v148, v168), 6uLL);
    *v201.i8 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v201, *v166, v163), v148, v165), v141, v164), v202, v168), 6uLL);
    *v167 = vqrshrun_n_s16(vmlsl_u8(v191, *v166, v168), 6uLL);
    *(v167 + a6) = vqrshrun_n_s16(vmlsl_u8(v199, v141, v168), 6uLL);
    v206 = (v167 + a6 + a6);
    *v206 = *v200.i8;
    v207 = (v206 + a6);
    *v207 = *v201.i8;
    v167 = (v207 + a6);
    v158 -= 4;
  }

  while (v158 > 4);
  ++v26;
  ++a5;
  if ((v104 & 4) != 0)
  {
LABEL_14:
    v208 = qword_27750DCD0[v107 - 1];
    _X12 = (a5 - 3 * a4);
    _X13 = _X12 + 4 * a4;
    _X16 = (_X12 + a4);
    v212 = *_X12;
    _X12 = (_X12 + 15);
    v213 = v212;
    __asm
    {
      PRFM            #0, [X12]
      PRFM            #0, [X13]
      PRFUM           #0, [X13,#7]
    }

    _X12 = _X16 + 4 * a4;
    _X13 = (_X16 + a4);
    v219 = *_X16;
    _X16 = (_X16 + 15);
    v220 = v219;
    __asm
    {
      PRFM            #0, [X16]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    _X12 = _X13 + 4 * a4;
    _X16 = (_X13 + a4);
    v226 = *_X13;
    _X13 = (_X13 + 15);
    v227 = v226;
    __asm
    {
      PRFM            #0, [X13]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    _X12 = _X16 + 4 * a4;
    _X13 = (_X16 + a4);
    v233 = *_X16;
    _X16 = (_X16 + 15);
    v234 = v233;
    __asm
    {
      PRFM            #0, [X16]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    _X12 = _X13 + 4 * a4;
    _X16 = (_X13 + a4);
    v240 = *_X13;
    _X13 = (_X13 + 15);
    v241 = v240;
    __asm
    {
      PRFM            #0, [X13]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    _X12 = _X16 + 4 * a4;
    _X13 = (_X16 + a4);
    v247 = *_X16;
    _X16 = (_X16 + 15);
    v248 = v247;
    __asm
    {
      PRFM            #0, [X16]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    _X12 = _X13 + 4 * a4;
    v253 = *_X13;
    _X13 = (_X13 + 15);
    v254 = v253;
    __asm
    {
      PRFM            #0, [X13]
      PRFM            #0, [X12]
      PRFUM           #0, [X12,#7]
    }

    v258 = a2 + 4;
    v259 = 11 * a4;
    v260 = 7 * a4;
    v261 = 6 * a4;
    v262 = vdup_lane_s8(v208, 1);
    v263 = vdup_lane_s8(v208, 0);
    v264 = vdup_lane_s8(v208, 2);
    v265 = vdup_lane_s8(v208, 3);
    v266 = vdup_lane_s8(v208, 4);
    v267 = vdup_lane_s8(v208, 5);
    v268 = vdup_lane_s8(v208, 6);
    v269 = vdup_lane_s8(v208, 7);
    do
    {
      _X19 = &a5[v106];
      _X6 = (a5 + v9);
      _X7 = a5 + v8;
      _X1 = (a5 + v261);
      _X3 = a5 + 2 * v9;
      _X0 = (a5 + v260);
      _X2 = a5 + v259;
      a5 = (a5 + v7);
      v277 = vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(v220, v262), v213, v263), v227, v264), v234, v265);
      v278 = vmlsl_u8(vmlsl_u8(vmull_u8(v227, v262), v220, v263), v234, v264);
      v279 = vmull_u8(v234, v262);
      v280 = vmlsl_u8(vmull_u8(v241, v262), v234, v263);
      _X20 = &a5[1] + 7;
      v234 = *a5;
      __asm
      {
        PRFM            #0, [X20]
        PRFM            #0, [X19]
        PRFUM           #0, [X19,#7]
      }

      v285 = vmlal_u8(v277, v241, v266);
      v286 = vmlal_u8(v278, v241, v265);
      v287 = vmlsl_u8(vmlsl_u8(v279, v227, v263), v241, v264);
      v213 = v241;
      v288 = *_X6;
      _X6 = (_X6 + 15);
      v241 = v288;
      __asm
      {
        PRFM            #0, [X6]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#7]
      }

      v292 = vmlsl_u8(vmlal_u8(v285, v254, v268), v248, v267);
      v293 = vmlal_u8(v286, v248, v266);
      v294 = vmlal_u8(v287, v248, v265);
      v295 = vmlsl_u8(v280, v248, v264);
      v220 = v248;
      v296 = *_X1;
      _X1 = (_X1 + 15);
      v248 = v296;
      __asm
      {
        PRFM            #0, [X1]
        PRFM            #0, [X3]
        PRFUM           #0, [X3,#7]
      }

      v300 = vmlsl_u8(vmlal_u8(v293, *a5, v268), v254, v267);
      v301 = vmlal_u8(v294, v254, v266);
      v302 = vmlal_u8(v295, v254, v265);
      v227 = v254;
      v303 = *_X0;
      _X0 = (_X0 + 15);
      v254 = v303;
      __asm
      {
        PRFM            #0, [X0]
        PRFM            #0, [X2]
        PRFUM           #0, [X2,#7]
      }

      v307 = vmlsl_u8(vmlsl_u8(vmlal_u8(v301, v241, v268), *a5, v267), v248, v269);
      v308 = vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(v302, *a5, v266), v248, v268), v241, v267), v303, v269);
      v26->i32[0] = vqrshrun_n_s16(vmlsl_u8(v292, *a5, v269), 6uLL).u32[0];
      v309 = (v26 + a6);
      v309->i32[0] = vqrshrun_n_s16(vmlsl_u8(v300, v241, v269), 6uLL).u32[0];
      v310 = (v309 + a6);
      v310->i32[0] = vqrshrun_n_s16(v307, 6uLL).u32[0];
      result = v310 + a6;
      v26 = (v310 + a6 + a6);
      v258 -= 4;
      *result = vqrshrun_n_s16(v308, 6uLL).u32[0];
    }

    while (v258 > 4);
  }

  return result;
}

uint64_t sub_2774154B4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x16_t *a7)
{
  _X21 = a5;
  v13 = result;
  if (result < 16)
  {
    v14 = result;
  }

  else
  {
    do
    {
      result = sub_2774156A8(a2, a3, a4, _X21, a6, a7++);
      _X21 += 16;
      v14 = v13 - 16;
      v15 = v13 > 0x1F;
      v13 -= 16;
    }

    while (v15);
  }

  v16 = 4 * a4;
  if ((v14 & 8) != 0)
  {
    v17 = qword_27750DCD0[(a3 & 3) - 1];
    v18 = a2 + 1;
    v19 = vdup_lane_s8(v17, 0);
    v20 = vdup_lane_s8(v17, 1);
    v21 = vdup_lane_s8(v17, 2);
    v22 = vdup_lane_s8(v17, 3);
    v23 = vdup_lane_s8(v17, 4);
    v24 = vdup_lane_s8(v17, 5);
    v25 = vdup_lane_s8(v17, 6);
    v26 = vdup_lane_s8(v17, 7);
    _X12 = _X21;
    v28 = a7;
    do
    {
      v29 = *(_X12 - 3);
      __asm { PRFUM           #0, [X12,#0x1C] }

      _X14 = _X12 + v16;
      __asm
      {
        PRFUM           #0, [X14,#-3]
        PRFUM           #0, [X14,#0xC]
      }

      *v28 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v29, v29, 1uLL), v20), *v29.i8, v19), *&vextq_s8(v29, v29, 2uLL), v21), *&vextq_s8(v29, v29, 3uLL), v22), *&vextq_s8(v29, v29, 4uLL), v23), *&vextq_s8(v29, v29, 6uLL), v25), *&vextq_s8(v29, v29, 5uLL), v24), *&vextq_s8(v29, v29, 7uLL), v26), 6uLL);
      v28 = (v28 + a6);
      _X12 += a4;
      --v18;
    }

    while (v18 > 1);
    a7 = (a7 + 8);
    _X21 += 8;
  }

  if ((v14 & 4) != 0)
  {
    v38 = qword_27750DCD0[(a3 & 3) - 1];
    v39 = a2 + 1;
    v40 = vdup_lane_s8(v38, 0);
    v41 = vdup_lane_s8(v38, 1);
    v42 = vdup_lane_s8(v38, 2);
    v43 = vdup_lane_s8(v38, 3);
    v44 = vdup_lane_s8(v38, 4);
    v45 = vdup_lane_s8(v38, 5);
    v46 = vdup_lane_s8(v38, 6);
    v47 = vdup_lane_s8(v38, 7);
    do
    {
      v48 = *(_X21 - 3);
      __asm { PRFUM           #0, [X21,#0x1C] }

      _X10 = _X21 + v16;
      __asm
      {
        PRFUM           #0, [X10,#-3]
        PRFUM           #0, [X10,#0xC]
      }

      a7->i32[0] = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v48, v48, 1uLL), v41), *v48.i8, v40), *&vextq_s8(v48, v48, 2uLL), v42), *&vextq_s8(v48, v48, 3uLL), v43), *&vextq_s8(v48, v48, 4uLL), v44), *&vextq_s8(v48, v48, 6uLL), v46), *&vextq_s8(v48, v48, 5uLL), v45), *&vextq_s8(v48, v48, 7uLL), v47), 6uLL).u32[0];
      a7 = (a7 + a6);
      _X21 += a4;
      --v39;
    }

    while (v39 > 1);
  }

  return result;
}

uint64_t sub_2774156A8(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  v6 = qword_27750DCD0[(a2 & 3) - 1];
  v7 = (a4 + 5);
  v8 = result + 1;
  v9 = vdup_lane_s8(v6, 0);
  v10 = vdup_lane_s8(v6, 1);
  v11 = vdup_lane_s8(v6, 2);
  v12 = vdup_lane_s8(v6, 3);
  v13 = vdup_lane_s8(v6, 4);
  v14 = vdup_lane_s8(v6, 5);
  v15 = vdup_lane_s8(v6, 6);
  v16 = vdup_lane_s8(v6, 7);
  do
  {
    v17 = v7[-1];
    v18 = *v7->i8;
    *a6 = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(vext_s8(v17, *v7, 1uLL), v10), v17, v9), vext_s8(v17, *v7, 2uLL), v11), vext_s8(v17, *v7, 3uLL), v12), vext_s8(v17, *v7, 4uLL), v13), vext_s8(v17, *v7, 6uLL), v15), vext_s8(v17, *v7, 5uLL), v14), vext_s8(v17, *v7, 7uLL), v16), 6uLL), vmlsl_u8(vmlsl_u8(vmlal_u8(vmlal_u8(vmlal_u8(vmlsl_u8(vmlsl_u8(vmull_u8(*&vextq_s8(v18, v18, 1uLL), v10), *v7, v9), *&vextq_s8(v18, v18, 2uLL), v11), *&vextq_s8(v18, v18, 3uLL), v12), *&vextq_s8(v18, v18, 4uLL), v13), *&vextq_s8(v18, v18, 6uLL), v15), *&vextq_s8(v18, v18, 5uLL), v14), *&vextq_s8(v18, v18, 7uLL), v16), 6uLL);
    a6 = (a6 + a5);
    v7 = (v7 + a3);
    --v8;
  }

  while (v8 > 1);
  return result;
}

uint64_t sub_277415788(uint64_t result, int a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, _DWORD *a7)
{
  if (result < 32)
  {
    v24 = result;
    if ((result & 0x10) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    do
    {
      v7 = a2 + 4;
      v8 = a5;
      v9 = a7;
      do
      {
        v10 = *v8;
        v11 = v8[1];
        v12 = (v8 + a4);
        v13 = *v12;
        v14 = v12[1];
        v15 = (v12 + a4);
        v16 = *v15;
        v17 = v15[1];
        v18 = (v15 + a4);
        v19 = *v18;
        v20 = v18[1];
        *v9 = v10;
        v9[1] = v11;
        v21 = (v9 + a6);
        *v21 = v13;
        v21[1] = v14;
        v22 = (v21 + a6);
        *v22 = v16;
        v22[1] = v17;
        v23 = (v22 + a6);
        *v23 = v19;
        v23[1] = v20;
        v9 = (v23 + a6);
        v7 -= 4;
        v8 = (v18 + a4);
      }

      while (v7 > 4);
      a5 += 2;
      a7 += 8;
      v24 = result - 32;
      v25 = result <= 63;
      result = (result - 32);
    }

    while (!v25);
    if ((v24 & 0x10) == 0)
    {
LABEL_7:
      if ((v24 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  v26 = a2 + 4;
  v27 = a5;
  v28 = a7;
  do
  {
    v29 = *v27;
    v30 = (v27 + a4);
    v31 = *v30;
    v32 = (v30 + a4);
    v33 = *v32;
    v34 = (v32 + a4);
    v35 = *v34;
    *v28 = v29;
    v36 = (v28 + a6);
    *v36 = v31;
    v37 = (v36 + a6);
    *v37 = v33;
    v38 = (v37 + a6);
    *v38 = v35;
    v28 = (v38 + a6);
    v26 -= 4;
    v27 = (v34 + a4);
  }

  while (v26 > 4);
  ++a5;
  a7 += 4;
  if ((v24 & 8) == 0)
  {
LABEL_8:
    if ((v24 & 4) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_14:
  v39 = a2 + 2;
  v40 = a5;
  v41 = a7;
  do
  {
    v42 = *v40;
    v43 = (v40 + a4);
    v44 = *v43;
    v40 = (v43 + a4);
    *v41 = v42;
    v45 = (v41 + a6);
    *v45 = v44;
    v41 = (v45 + a6);
    v39 -= 2;
  }

  while (v39 > 2);
  a5 = (a5 + 8);
  a7 += 2;
  if ((v24 & 4) != 0)
  {
LABEL_17:
    v46 = a2 + 2;
    do
    {
      v47 = *(a5 + a4);
      *a7 = *a5;
      *(a7 + a6) = v47;
      a7 = (a7 + a6 + a6);
      a5 = (a5 + 2 * a4);
      v46 -= 2;
    }

    while (v46 > 2);
  }

  return result;
}

uint64_t sub_2774158F8(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, const float *a7, uint64_t a8, int16x4_t *a9, uint64_t a10, void *a11)
{
  v12 = vld1q_dup_f32(a4);
  v11 = a4 + 1;
  v13 = a11;
  v15 = vld1q_dup_f32(a7);
  v14 = a7 + 1;
  v16 = vld1_dup_f32(v11);
  v17 = vld1_dup_f32(v14);
  v18 = a9;
  v19 = vaddq_s32(vshlq_n_s32(vaddl_s16(*v15.i8, *v12.i8), 0xDuLL), vshlq_s32(vaddl_s16(v17, v16), vdupq_n_s32(a3)));
  v20 = 4 * a10;
  v21 = vdupq_n_s32(~a3);
  v22 = 4 * a5;
  v23 = 4 * a8;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v24 = a9 + 2 * a8;
  v25 = a6 + 2 * a5;
  v26.i64[0] = 0xFF00FF00FF00FFLL;
  v26.i64[1] = 0xFF00FF00FF00FFLL;
  v27 = a11 + 2 * a10;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a2 + 2;
    do
    {
      v32 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *&v25[v29], *v12.i8), *&v24[v30], *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&v25[v29], v12), *&v24[v30], v15), v21)), 0), v26);
      *(v13 + v28) = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + v29), *v12.i8), *(v18 + v30), *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&a6->i8[v29], v12), *&v18->i8[v30], v15), v21)), 0), v26);
      *&v27[v28] = v32;
      v31 -= 2;
      v30 += v23;
      v29 += v22;
      v28 += v20;
    }

    while (v31 > 2);
    v13 += 2;
    a6 += 2;
    v18 += 2;
    v33 = result - 8;
    v24 += 16;
    v25 += 16;
    v27 += 16;
    v34 = result <= 15;
    result = (result - 8);
  }

  while (!v34);
  if (v33)
  {
LABEL_10:
    v35 = vextq_s8(v12, v12, 8uLL).u64[0];
    v36 = vextq_s8(v15, v15, 8uLL).u64[0];
    v37 = a2 + 2;
    v38.i64[0] = 0xFF00FF00FF00FFLL;
    v38.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v39 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *a6, *v12.i8), *v18, *v15.i8), v21)), vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + 2 * a5), v35), *(v18 + 2 * a8), v36), v21)), 0), v38);
      *v13 = v39.i64[0];
      *(v13 + 2 * a10) = v39.i64[1];
      v13 = (v13 + v20);
      a6 = (a6 + v22);
      v18 = (v18 + v23);
      v37 -= 2;
    }

    while (v37 > 2);
  }

  return result;
}

uint64_t sub_277415AC4(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, uint64_t a7, void *a8)
{
  v9 = vld1q_dup_f32(a4);
  v8 = a4 + 1;
  v10 = vld1_dup_f32(v8);
  v11 = vdupq_n_s32(a3);
  v12 = vmlal_s16(vshlq_s32(vmovl_s16(v10), v11), *v9.i8, 0x2000200020002000);
  v13 = vnegq_s32(v11);
  v14 = 4 * a7;
  v15 = 4 * a5;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v16 = a6 + 2 * a5;
  v17.i64[0] = 0xFF00FF00FF00FFLL;
  v17.i64[1] = 0xFF00FF00FF00FFLL;
  v18 = a8 + 2 * a7;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 + 2;
    do
    {
      v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *&v16[v20], *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&v16[v20], v9), v13)), v17);
      *(a8 + v19) = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *(a6 + v20), *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&a6->i8[v20], v9), v13)), v17);
      *&v18[v19] = v22;
      v21 -= 2;
      v20 += v15;
      v19 += v14;
    }

    while (v21 > 2);
    a8 += 2;
    a6 += 2;
    v23 = result - 8;
    v16 += 16;
    v18 += 16;
    v24 = result <= 15;
    result = (result - 8);
  }

  while (!v24);
  if (v23)
  {
LABEL_10:
    v25 = vextq_s8(v9, v9, 8uLL).u64[0];
    v26 = a2 + 2;
    v27.i64[0] = 0xFF00FF00FF00FFLL;
    v27.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v28 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *a6, *v9.i8), v13)), vrshlq_s32(vmlal_s16(v12, *(a6 + 2 * a5), v25), v13)), v27);
      *a8 = v28.i64[0];
      *(a8 + 2 * a7) = v28.i64[1];
      a8 = (a8 + v14);
      a6 = (a6 + v15);
      v26 -= 2;
    }

    while (v26 > 2);
  }

  return result;
}

uint64_t sub_277415C10(uint64_t result, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v8 = 4 * a3;
  v9 = 4 * a5;
  v10 = 4 * a7;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = a6 + 2 * a5;
  v12 = a4 + 2 * a3;
  v13.i64[0] = 0x2000200020002000;
  v13.i64[1] = 0x2000200020002000;
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  v15 = a8 + 2 * a7;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = a2 + 2;
    do
    {
      *(a8 + v16) = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*(a4 + v17), *(a6 + v18)), v13), 5uLL), 0), v14);
      *&v15[v16] = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*&v12[v17], *&v11[v18]), v13), 5uLL), 0), v14);
      v19 -= 2;
      v18 += v9;
      v17 += v8;
      v16 += v10;
    }

    while (v19 > 2);
    a8 += 2;
    a4 += 2;
    a6 += 2;
    v20 = result - 8;
    v11 += 16;
    v12 += 16;
    v15 += 16;
    v21 = result <= 15;
    result = (result - 8);
  }

  while (!v21);
  if (v20)
  {
LABEL_10:
    v22 = a2 + 2;
    v23.i64[0] = 0x2000200020002000;
    v23.i64[1] = 0x2000200020002000;
    v24.i64[0] = 0xFF00FF00FF00FFLL;
    v24.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v25.i64[0] = *a4;
      v25.i64[1] = *(a4 + 2 * a3);
      v26.i64[0] = *a6;
      v26.i64[1] = *(a6 + 2 * a5);
      v27 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(v25, v26), v23), 5uLL), 0), v24);
      *a8 = v27.i64[0];
      *(a8 + 2 * a7) = v27.i64[1];
      a4 = (a4 + v8);
      a6 = (a6 + v9);
      a8 = (a8 + v10);
      v22 -= 2;
    }

    while (v22 > 2);
  }

  return result;
}

uint64_t sub_277415D58(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (a5 - 6 * a4 - 6);
    v16 = vshrq_n_u16(*_X17, 8uLL);
    v17 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 8uLL);
    v18 = vextq_s8(v16, v17, 2uLL);
    v19 = vextq_s8(v16, v17, 4uLL);
    v20 = vextq_s8(v16, v17, 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    v26 = vextq_s8(v16, v17, 8uLL);
    _X5 = &_X17->i8[8 * a4];
    v28 = vextq_s8(v16, v17, 0xAuLL);
    __asm { PRFM            #0, [X5] }

    v30 = vextq_s8(v16, v17, 0xCuLL);
    __asm { PRFUM           #0, [X5,#0x1E] }

    v32 = vextq_s8(v16, v17, 0xEuLL);
    _X17 = (_X17 + 2 * a4);
    v34 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v18.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v19.i8, *v10.i8, 2), *v20.i8, *v10.i8, 3), *v26.i8, v10, 4), *v28.i8, v10, 5), *v30.i8, v10, 6), *v32.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v18, *v10.i8, 1), v16, *v10.i8, 0), v19, *v10.i8, 2), v20, *v10.i8, 3), v26, v10, 4), v28, v10, 5), v30, v10, 6), v32, v10, 7));
    v35 = vshrq_n_u16(*_X17, 8uLL);
    v36 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v42 = vextq_s8(v35, v36, 2uLL);
    v43 = vextq_s8(v35, v36, 4uLL);
    v44 = vextq_s8(v35, v36, 6uLL);
    v45 = vextq_s8(v35, v36, 8uLL);
    v46 = vextq_s8(v35, v36, 0xAuLL);
    v47 = vextq_s8(v35, v36, 0xCuLL);
    v48 = vextq_s8(v35, v36, 0xEuLL);
    v49 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v10.i8, 1), *v35.i8, *v10.i8, 0), *v43.i8, *v10.i8, 2), *v44.i8, *v10.i8, 3), *v45.i8, v10, 4), *v46.i8, v10, 5), *v47.i8, v10, 6), *v48.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v10.i8, 1), v35, *v10.i8, 0), v43, *v10.i8, 2), v44, *v10.i8, 3), v45, v10, 4), v46, v10, 5), v47, v10, 6), v48, v10, 7));
    v50 = vshrq_n_u16(*_X17, 8uLL);
    v51 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v57 = vextq_s8(v50, v51, 2uLL);
    v58 = vextq_s8(v50, v51, 4uLL);
    v59 = vextq_s8(v50, v51, 6uLL);
    v60 = vextq_s8(v50, v51, 8uLL);
    v61 = vextq_s8(v50, v51, 0xAuLL);
    v62 = vextq_s8(v50, v51, 0xCuLL);
    v63 = vextq_s8(v50, v51, 0xEuLL);
    v64 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v57.i8, *v10.i8, 1), *v50.i8, *v10.i8, 0), *v58.i8, *v10.i8, 2), *v59.i8, *v10.i8, 3), *v60.i8, v10, 4), *v61.i8, v10, 5), *v62.i8, v10, 6), *v63.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v57, *v10.i8, 1), v50, *v10.i8, 0), v58, *v10.i8, 2), v59, *v10.i8, 3), v60, v10, 4), v61, v10, 5), v62, v10, 6), v63, v10, 7));
    v65 = vshrq_n_u16(*_X17, 8uLL);
    v66 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v72 = vextq_s8(v65, v66, 2uLL);
    v73 = vextq_s8(v65, v66, 4uLL);
    v74 = vextq_s8(v65, v66, 6uLL);
    v75 = vextq_s8(v65, v66, 8uLL);
    v76 = vextq_s8(v65, v66, 0xAuLL);
    v77 = vextq_s8(v65, v66, 0xCuLL);
    v78 = vextq_s8(v65, v66, 0xEuLL);
    v79 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v10.i8, 1), *v65.i8, *v10.i8, 0), *v73.i8, *v10.i8, 2), *v74.i8, *v10.i8, 3), *v75.i8, v10, 4), *v76.i8, v10, 5), *v77.i8, v10, 6), *v78.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v10.i8, 1), v65, *v10.i8, 0), v73, *v10.i8, 2), v74, *v10.i8, 3), v75, v10, 4), v76, v10, 5), v77, v10, 6), v78, v10, 7));
    v80 = vshrq_n_u16(*_X17, 8uLL);
    v81 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v87 = vextq_s8(v80, v81, 2uLL);
    v88 = vextq_s8(v80, v81, 4uLL);
    v89 = vextq_s8(v80, v81, 6uLL);
    v90 = vextq_s8(v80, v81, 8uLL);
    v91 = vextq_s8(v80, v81, 0xAuLL);
    v92 = vextq_s8(v80, v81, 0xCuLL);
    v93 = vextq_s8(v80, v81, 0xEuLL);
    v94 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v87.i8, *v10.i8, 1), *v80.i8, *v10.i8, 0), *v88.i8, *v10.i8, 2), *v89.i8, *v10.i8, 3), *v90.i8, v10, 4), *v91.i8, v10, 5), *v92.i8, v10, 6), *v93.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v87, *v10.i8, 1), v80, *v10.i8, 0), v88, *v10.i8, 2), v89, *v10.i8, 3), v90, v10, 4), v91, v10, 5), v92, v10, 6), v93, v10, 7));
    v95 = vshrq_n_u16(*_X17, 8uLL);
    v96 = vshrq_n_u16(_X17[1], 8uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v102 = vextq_s8(v95, v96, 2uLL);
    v103 = vextq_s8(v95, v96, 4uLL);
    v104 = vextq_s8(v95, v96, 6uLL);
    v105 = vextq_s8(v95, v96, 8uLL);
    v106 = vextq_s8(v95, v96, 0xAuLL);
    v107 = vextq_s8(v95, v96, 0xCuLL);
    v108 = vextq_s8(v95, v96, 0xEuLL);
    v109 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v102.i8, *v10.i8, 1), *v95.i8, *v10.i8, 0), *v103.i8, *v10.i8, 2), *v104.i8, *v10.i8, 3), *v105.i8, v10, 4), *v106.i8, v10, 5), *v107.i8, v10, 6), *v108.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v102, *v10.i8, 1), v95, *v10.i8, 0), v103, *v10.i8, 2), v104, *v10.i8, 3), v105, v10, 4), v106, v10, 5), v107, v10, 6), v108, v10, 7));
    v110 = _X17[1];
    v111 = vshrq_n_u16(*_X17, 8uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v116 = vshrq_n_u16(v110, 8uLL);
    v117 = vextq_s8(v111, v116, 2uLL);
    v118 = vextq_s8(v111, v116, 4uLL);
    v119 = vextq_s8(v111, v116, 6uLL);
    v120 = vextq_s8(v111, v116, 8uLL);
    v121 = vextq_s8(v111, v116, 0xAuLL);
    v122 = vextq_s8(v111, v116, 0xCuLL);
    v123 = vextq_s8(v111, v116, 0xEuLL);
    v124 = a7;
    _X5 = v13;
    _X7 = v12;
    v127 = a2 + 1;
    v128 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v117.i8, *v10.i8, 1), *v111.i8, *v10.i8, 0), *v118.i8, *v10.i8, 2), *v119.i8, *v10.i8, 3), *v120.i8, v10, 4), *v121.i8, v10, 5), *v122.i8, v10, 6), *v123.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v117, *v10.i8, 1), v111, *v10.i8, 0), v118, *v10.i8, 2), v119, *v10.i8, 3), v120, v10, 4), v121, v10, 5), v122, v10, 6), v123, v10, 7));
    do
    {
      v129 = vshrq_n_u16(*(_X5 - 46), 8uLL);
      v130 = vshrq_n_u16(*(_X5 - 30), 8uLL);
      v131 = vextq_s8(v129, v130, 2uLL);
      v132 = vextq_s8(v129, v130, 4uLL);
      v133 = vextq_s8(v129, v130, 6uLL);
      v134 = vextq_s8(v129, v130, 8uLL);
      v135 = vextq_s8(v129, v130, 0xAuLL);
      v136 = vextq_s8(v129, v130, 0xCuLL);
      v137 = vextq_s8(v129, v130, 0xEuLL);
      v138 = vmlal_lane_s16(vmull_lane_s16(*v131.i8, *v10.i8, 1), *v129.i8, *v10.i8, 0);
      v139 = vmlal_high_lane_s16(vmull_high_lane_s16(v131, *v10.i8, 1), v129, *v10.i8, 0);
      v140 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v11.i8, 0), *v49.i8, *v11.i8, 1);
      v141 = vmlal_high_lane_s16(vmull_high_lane_s16(v34, *v11.i8, 0), v49, *v11.i8, 1);
      v34 = v49;
      v49 = v64;
      v64 = v79;
      v79 = v94;
      v94 = v109;
      v109 = v128;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v145 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v138, *v132.i8, *v10.i8, 2), *v133.i8, *v10.i8, 3), *v134.i8, v10, 4), *v135.i8, v10, 5), *v136.i8, v10, 6), *v137.i8, v10, 7);
      v146 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v139, v132, *v10.i8, 2), v133, *v10.i8, 3), v134, v10, 4), v135, v10, 5), v136, v10, 6), v137, v10, 7);
      v128 = vuzp1q_s16(v145, v146);
      --v127;
      *v124 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v140, *v49.i8, *v11.i8, 2), *v64.i8, *v11.i8, 3), *v79.i8, v11, 4), *v94.i8, v11, 5), *v109.i8, v11, 6), vmovn_s32(v145), v11, 7), v14), 6uLL), vaddq_s32(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v141, v49, *v11.i8, 2), v64, *v11.i8, 3), v79, v11, 4), v94, v11, 5), v109, v11, 6), vmovn_s32(v146), v11, 7), v14), 6uLL);
      _X7 += v8;
      _X5 += v8;
      v124 = (v124 + v9);
    }

    while (v127 > 1);
    a7 += 2;
    a5 += 16;
    v147 = result - 8;
    v12 += 16;
    v13 += 16;
    v148 = result > 0xF;
    result = (result - 8);
  }

  while (v148);
  if (v147)
  {
LABEL_9:
    v149 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6 * a4);
    v151 = *(_X11 - 6);
    _X11 = (_X11 - 6);
    v152 = xmmword_27750DCF0[v7 - 1];
    v153 = vshr_n_u16(v151, 8uLL);
    v154 = vshr_n_u16(_X11[1], 8uLL);
    v155 = vshr_n_u16(_X11[2], 8uLL);
    __asm { PRFUM           #0, [X11,#0x1E] }

    _X10 = &_X11[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    _X10 = (_X11 + 2 * a4);
    v161 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v153, v154, 2uLL), *v149.i8, 1), v153, *v149.i8, 0), vext_s8(v153, v154, 4uLL), *v149.i8, 2), vext_s8(v153, v154, 6uLL), *v149.i8, 3), v154, v149, 4), vext_s8(v154, v155, 2uLL), v149, 5), vext_s8(v154, v155, 4uLL), v149, 6), vext_s8(v154, v155, 6uLL), v149, 7));
    v162 = vshr_n_u16(*_X10, 8uLL);
    v163 = vshr_n_u16(_X10[1], 8uLL);
    v164 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v170 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v162, v163, 2uLL), *v149.i8, 1), v162, *v149.i8, 0), vext_s8(v162, v163, 4uLL), *v149.i8, 2), vext_s8(v162, v163, 6uLL), *v149.i8, 3), v163, v149, 4), vext_s8(v163, v164, 2uLL), v149, 5), vext_s8(v163, v164, 4uLL), v149, 6), vext_s8(v163, v164, 6uLL), v149, 7));
    v171 = vshr_n_u16(*_X10, 8uLL);
    v172 = vshr_n_u16(_X10[1], 8uLL);
    v173 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v179 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v171, v172, 2uLL), *v149.i8, 1), v171, *v149.i8, 0), vext_s8(v171, v172, 4uLL), *v149.i8, 2), vext_s8(v171, v172, 6uLL), *v149.i8, 3), v172, v149, 4), vext_s8(v172, v173, 2uLL), v149, 5), vext_s8(v172, v173, 4uLL), v149, 6), vext_s8(v172, v173, 6uLL), v149, 7));
    v180 = vshr_n_u16(*_X10, 8uLL);
    v181 = vshr_n_u16(_X10[1], 8uLL);
    v182 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v188 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v180, v181, 2uLL), *v149.i8, 1), v180, *v149.i8, 0), vext_s8(v180, v181, 4uLL), *v149.i8, 2), vext_s8(v180, v181, 6uLL), *v149.i8, 3), v181, v149, 4), vext_s8(v181, v182, 2uLL), v149, 5), vext_s8(v181, v182, 4uLL), v149, 6), vext_s8(v181, v182, 6uLL), v149, 7));
    v189 = vshr_n_u16(*_X10, 8uLL);
    v190 = vshr_n_u16(_X10[1], 8uLL);
    v191 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v197 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v189, v190, 2uLL), *v149.i8, 1), v189, *v149.i8, 0), vext_s8(v189, v190, 4uLL), *v149.i8, 2), vext_s8(v189, v190, 6uLL), *v149.i8, 3), v190, v149, 4), vext_s8(v190, v191, 2uLL), v149, 5), vext_s8(v190, v191, 4uLL), v149, 6), vext_s8(v190, v191, 6uLL), v149, 7));
    v198 = vshr_n_u16(*_X10, 8uLL);
    v199 = vshr_n_u16(_X10[1], 8uLL);
    v200 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v206 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v198, v199, 2uLL), *v149.i8, 1), v198, *v149.i8, 0), vext_s8(v198, v199, 4uLL), *v149.i8, 2), vext_s8(v198, v199, 6uLL), *v149.i8, 3), v199, v149, 4), vext_s8(v199, v200, 2uLL), v149, 5), vext_s8(v199, v200, 4uLL), v149, 6), vext_s8(v199, v200, 6uLL), v149, 7));
    v207 = vshr_n_u16(*_X10, 8uLL);
    v208 = vshr_n_u16(_X10[1], 8uLL);
    v209 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v214 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v207, v208, 2uLL), *v149.i8, 1), v207, *v149.i8, 0), vext_s8(v207, v208, 4uLL), *v149.i8, 2), vext_s8(v207, v208, 6uLL), *v149.i8, 3), v208, v149, 4), vext_s8(v208, v209, 2uLL), v149, 5), vext_s8(v208, v209, 4uLL), v149, 6), vext_s8(v208, v209, 6uLL), v149, 7));
    v215 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v218.i64[0] = 0x38000000380000;
      v218.i64[1] = 0x38000000380000;
      v219 = vmlal_lane_s16(v218, v161, *v152.i8, 0);
      v220 = vshr_n_u16(_X12[-2], 8uLL);
      v221 = vshr_n_u16(_X12[-1], 8uLL);
      v222 = vshr_n_u16(*_X12, 8uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v226 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v220, v221, 2uLL), *v149.i8, 1), v220, *v149.i8, 0), vext_s8(v220, v221, 4uLL), *v149.i8, 2), vext_s8(v220, v221, 6uLL), *v149.i8, 3), v221, v149, 4), vext_s8(v221, v222, 2uLL), v149, 5), vext_s8(v221, v222, 4uLL), v149, 6), vext_s8(v221, v222, 6uLL), v149, 7);
      v227 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v219, v170, *v152.i8, 1), v179, *v152.i8, 2), v188, *v152.i8, 3), v197, v152, 4), v206, v152, 5), v214, v152, 6);
      v161 = v170;
      v170 = v179;
      v179 = v188;
      v188 = v197;
      v197 = v206;
      v206 = v214;
      v214 = vmovn_s32(v226);
      --v215;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_laneq_s16(v227, v214, v152, 7), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v215 > 1);
  }

  return result;
}

unint64_t sub_277416620(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, int16x4_t *a7)
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
    _X10 = &a5->i8[-6 * a4];
    v19 = *_X10;
    _X10 += 30;
    v20 = v19;
    _X22 = &a5->i8[-4 * a4];
    v22 = *_X22;
    _X22 += 30;
    v23 = vshrq_n_u16(v20, 8uLL);
    v24 = vshrq_n_u16(v22, 8uLL);
    _X24 = &a5->i8[-2 * a4];
    v26 = *_X24;
    _X24 += 30;
    v27 = v26;
    _X25 = &a5[1].i8[14];
    _X26 = &a5->i8[2 * a4];
    v30 = *_X26;
    _X26 += 30;
    v31 = v30;
    _X27 = &a5->i8[4 * a4];
    v33 = *_X27;
    _X27 += 30;
    v34 = v33;
    _X28 = &a5->i8[6 * a4];
    v36 = *_X28;
    _X28 += 30;
    __asm { PRFM            #0, [X10] }

    v42 = vshrq_n_u16(v27, 8uLL);
    v43 = vshrq_n_u16(*a5, 8uLL);
    v44 = vshrq_n_u16(v31, 8uLL);
    v45 = vshrq_n_u16(v34, 8uLL);
    __asm
    {
      PRFM            #0, [X22]
      PRFM            #0, [X24]
    }

    v48 = vshrq_n_u16(v36, 8uLL);
    __asm
    {
      PRFM            #0, [X25]
      PRFM            #0, [X26]
    }

    v51 = v15;
    v52 = v14;
    v53 = v17;
    __asm
    {
      PRFM            #0, [X27]
      PRFM            #0, [X28]
    }

    v56 = v11;
    v57 = v10;
    v58 = a7;
    v59 = a7 + 2 * a6;
    do
    {
      v60 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v8.i8, 1), *v24.i8, *v8.i8, 0);
      v61 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v8.i8, 1), v24, *v8.i8, 0);
      _X10 = &v53[v7 + 30];
      v63 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v8.i8, 1), *v23.i8, *v8.i8, 0), *v42.i8, *v8.i8, 2);
      v64 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v8.i8, 1), v23, *v8.i8, 0), v42, *v8.i8, 2);
      v23 = v42;
      v42 = v44;
      v44 = v48;
      __asm { PRFM            #0, [X10] }

      _X10 = &v51[v7 + 30];
      v48 = vshrq_n_u16(*&v51[v7], 8uLL);
      v67 = vmlal_lane_s16(v63, *v43.i8, *v8.i8, 3);
      v68 = vmlal_high_lane_s16(v64, v43, *v8.i8, 3);
      v69 = vmlal_lane_s16(v60, *v43.i8, *v8.i8, 2);
      v70 = vmlal_high_lane_s16(v61, v43, *v8.i8, 2);
      v24 = v43;
      v43 = v45;
      __asm { PRFM            #0, [X10] }

      _X10 = &v52[v7];
      __asm { PRFM            #0, [X10] }

      _X1 = &v56[v7];
      __asm { PRFM            #0, [X1] }

      v45 = vshrq_n_u16(*&v53[v7], 8uLL);
      __asm
      {
        PRFUM           #0, [X10,#0xE]
        PRFUM           #0, [X1,#0xE]
      }

      *v58[v7 / 8].i8 = vaddq_s16(vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v67, *v42.i8, v8, 4), *v43.i8, v8, 5), *v44.i8, v8, 6), *v45.i8, v8, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v68, v42, v8, 4), v43, v8, 5), v44, v8, 6), v45, v8, 7)), v13);
      *&v59[v7] = vaddq_s16(vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v69, *v42.i8, *v8.i8, 3), *v43.i8, v8, 4), *v44.i8, v8, 5), *v45.i8, v8, 6), *v48.i8, v8, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v70, v42, *v8.i8, 3), v43, v8, 4), v44, v8, 5), v45, v8, 6), v48, v8, 7)), v13);
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
    v83 = vshr_n_u16(v82, 8uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 8uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 8uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 8uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 8uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 8uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 8uLL);
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
      v91 = vshr_n_u16(*a5->i8, 8uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 8uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 8uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 8uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vadd_s16(vmovn_s32(vmlal_laneq_s16(v141, v91, v80, 7)), 0xE000E000E000E000);
      v149 = (v16 + v114);
      *v149 = vadd_s16(vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7)), 0xE000E000E000E000);
      v150 = (v149 + v114);
      *v150 = vadd_s16(vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7)), 0xE000E000E000E000);
      v151 = (v150 + v114);
      *v151 = vadd_s16(vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7)), 0xE000E000E000E000);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_277416A80(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
      v16 = vshrq_n_u16(*_X15, 8uLL);
      v17 = vshrq_n_u16(_X15[1], 8uLL);
      __asm { PRFUM           #0, [X15,#0x2E] }

      _X17 = &_X15->i8[v7 * 8];
      v24 = vextq_s8(v16, v17, 2uLL);
      __asm { PRFM            #0, [X17] }

      v26 = vextq_s8(v16, v17, 4uLL);
      v27 = vextq_s8(v16, v17, 6uLL);
      v28 = vextq_s8(v16, v17, 8uLL);
      v29 = vextq_s8(v16, v17, 0xAuLL);
      v30 = vextq_s8(v16, v17, 0xCuLL);
      v31 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v26.i8, *v10.i8, 2), *v27.i8, *v10.i8, 3), *v28.i8, v10, 4), *v29.i8, v10, 5);
      v32 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v10.i8, 1), v16, *v10.i8, 0), v26, *v10.i8, 2), v27, *v10.i8, 3), v28, v10, 4), v29, v10, 5);
      v33 = vextq_s8(v16, v17, 0xEuLL);
      __asm { PRFUM           #0, [X17,#0x1E] }

      *v13 = vaddq_s16(vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(v31, *v30.i8, v10, 6), *v33.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v32, v30, v10, 6), v33, v10, 7)), v12);
      --v15;
      _X15 = (_X15 + v8);
      v13 = (v13 + v9);
    }

    while (v15 > 1);
    a7 += 2;
    a5 += 16;
    v35 = result - 8;
    ++v11;
    v36 = result > 0xF;
    result = (result - 8);
  }

  while (v36);
  if (v35)
  {
LABEL_9:
    v37 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6);
    v39 = a2 + 1;
    do
    {
      v40 = vshr_n_u16(*_X11, 8uLL);
      v41 = vshr_n_u16(_X11[1], 8uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v43 = vshr_n_u16(_X11[2], 8uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vadd_s16(vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v40, v41, 2uLL), *v37.i8, 1), v40, *v37.i8, 0), vext_s8(v40, v41, 4uLL), *v37.i8, 2), vext_s8(v40, v41, 6uLL), *v37.i8, 3), v41, v37, 4), vext_s8(v41, v43, 2uLL), v37, 5), vext_s8(v41, v43, 4uLL), v37, 6), vext_s8(v41, v43, 6uLL), v37, 7)), 0xE000E000E000E000);
      --v39;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v39 > 1);
  }

  return result;
}

uint64_t sub_277416C1C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, int16x4_t *a7)
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
      *&a7->i8[v13] = vaddq_s16((*&vshrq_n_u16(*&a5->i8[v12], 2uLL) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0)), v10);
      *&v9[v13] = vaddq_s16((*&vshrq_n_u16(v15, 2uLL) & __PAIR128__(0xFFC0FFC0FFC0FFC0, 0xFFC0FFC0FFC0FFC0)), v10);
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
      *a7 = vadd_s16((*&vshr_n_u16(v19, 2uLL) & 0xFFC0FFC0FFC0FFC0), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16((*&vshr_n_u16(v20, 2uLL) & 0xFFC0FFC0FFC0FFC0), 0xE000E000E000E000);
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return result;
}

uint64_t sub_277416D04(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
    v15 = vshrq_n_u16(*_X17, 8uLL);
    v16 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 8uLL);
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
    v33 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v17.i8, *v10.i8, 1), *v15.i8, *v10.i8, 0), *v18.i8, *v10.i8, 2), *v19.i8, *v10.i8, 3), *v25.i8, v10, 4), *v27.i8, v10, 5), *v29.i8, v10, 6), *v31.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v17, *v10.i8, 1), v15, *v10.i8, 0), v18, *v10.i8, 2), v19, *v10.i8, 3), v25, v10, 4), v27, v10, 5), v29, v10, 6), v31, v10, 7));
    v34 = vshrq_n_u16(*_X17, 8uLL);
    v35 = vshrq_n_u16(_X17[1], 8uLL);
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
    v48 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v41.i8, *v10.i8, 1), *v34.i8, *v10.i8, 0), *v42.i8, *v10.i8, 2), *v43.i8, *v10.i8, 3), *v44.i8, v10, 4), *v45.i8, v10, 5), *v46.i8, v10, 6), *v47.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v41, *v10.i8, 1), v34, *v10.i8, 0), v42, *v10.i8, 2), v43, *v10.i8, 3), v44, v10, 4), v45, v10, 5), v46, v10, 6), v47, v10, 7));
    v49 = vshrq_n_u16(*_X17, 8uLL);
    v50 = vshrq_n_u16(_X17[1], 8uLL);
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
    v63 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v10.i8, 1), *v49.i8, *v10.i8, 0), *v57.i8, *v10.i8, 2), *v58.i8, *v10.i8, 3), *v59.i8, v10, 4), *v60.i8, v10, 5), *v61.i8, v10, 6), *v62.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v10.i8, 1), v49, *v10.i8, 0), v57, *v10.i8, 2), v58, *v10.i8, 3), v59, v10, 4), v60, v10, 5), v61, v10, 6), v62, v10, 7));
    v64 = vshrq_n_u16(*_X17, 8uLL);
    v65 = vshrq_n_u16(_X17[1], 8uLL);
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
    v78 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v71.i8, *v10.i8, 1), *v64.i8, *v10.i8, 0), *v72.i8, *v10.i8, 2), *v73.i8, *v10.i8, 3), *v74.i8, v10, 4), *v75.i8, v10, 5), *v76.i8, v10, 6), *v77.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v71, *v10.i8, 1), v64, *v10.i8, 0), v72, *v10.i8, 2), v73, *v10.i8, 3), v74, v10, 4), v75, v10, 5), v76, v10, 6), v77, v10, 7));
    v79 = vshrq_n_u16(*_X17, 8uLL);
    v80 = vshrq_n_u16(_X17[1], 8uLL);
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
    v93 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v86.i8, *v10.i8, 1), *v79.i8, *v10.i8, 0), *v87.i8, *v10.i8, 2), *v88.i8, *v10.i8, 3), *v89.i8, v10, 4), *v90.i8, v10, 5), *v91.i8, v10, 6), *v92.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v86, *v10.i8, 1), v79, *v10.i8, 0), v87, *v10.i8, 2), v88, *v10.i8, 3), v89, v10, 4), v90, v10, 5), v91, v10, 6), v92, v10, 7));
    v94 = vshrq_n_u16(*_X17, 8uLL);
    v95 = vshrq_n_u16(_X17[1], 8uLL);
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
    v108 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v10.i8, 1), *v94.i8, *v10.i8, 0), *v102.i8, *v10.i8, 2), *v103.i8, *v10.i8, 3), *v104.i8, v10, 4), *v105.i8, v10, 5), *v106.i8, v10, 6), *v107.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v10.i8, 1), v94, *v10.i8, 0), v102, *v10.i8, 2), v103, *v10.i8, 3), v104, v10, 4), v105, v10, 5), v106, v10, 6), v107, v10, 7));
    v109 = _X17[1];
    v110 = vshrq_n_u16(*_X17, 8uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v115 = vshrq_n_u16(v109, 8uLL);
    v116 = vextq_s8(v110, v115, 2uLL);
    v117 = vextq_s8(v110, v115, 4uLL);
    v118 = vextq_s8(v110, v115, 6uLL);
    v119 = vextq_s8(v110, v115, 8uLL);
    v120 = vextq_s8(v110, v115, 0xAuLL);
    v121 = vextq_s8(v110, v115, 0xCuLL);
    v122 = vextq_s8(v110, v115, 0xEuLL);
    v123 = a7;
    _X5 = v13;
    _X7 = v12;
    v126 = a2 + 1;
    v127 = vuzp1q_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v116.i8, *v10.i8, 1), *v110.i8, *v10.i8, 0), *v117.i8, *v10.i8, 2), *v118.i8, *v10.i8, 3), *v119.i8, v10, 4), *v120.i8, v10, 5), *v121.i8, v10, 6), *v122.i8, v10, 7), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v116, *v10.i8, 1), v110, *v10.i8, 0), v117, *v10.i8, 2), v118, *v10.i8, 3), v119, v10, 4), v120, v10, 5), v121, v10, 6), v122, v10, 7));
    do
    {
      v128 = vshrq_n_u16(*(_X5 - 46), 8uLL);
      v129 = vshrq_n_u16(*(_X5 - 30), 8uLL);
      v130 = vextq_s8(v128, v129, 2uLL);
      v131 = vextq_s8(v128, v129, 4uLL);
      v132 = vextq_s8(v128, v129, 6uLL);
      v133 = vextq_s8(v128, v129, 8uLL);
      v134 = vextq_s8(v128, v129, 0xAuLL);
      v135 = vextq_s8(v128, v129, 0xCuLL);
      v136 = vextq_s8(v128, v129, 0xEuLL);
      v137 = vmlal_lane_s16(vmull_lane_s16(*v130.i8, *v10.i8, 1), *v128.i8, *v10.i8, 0);
      v138 = vmlal_high_lane_s16(vmull_high_lane_s16(v130, *v10.i8, 1), v128, *v10.i8, 0);
      v139 = vmlal_lane_s16(vmull_lane_s16(*v48.i8, *v11.i8, 1), *v33.i8, *v11.i8, 0);
      v140 = vmlal_high_lane_s16(vmull_high_lane_s16(v48, *v11.i8, 1), v33, *v11.i8, 0);
      v33 = v48;
      v48 = v63;
      v63 = v78;
      v78 = v93;
      v93 = v108;
      v108 = v127;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v144 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v137, *v131.i8, *v10.i8, 2), *v132.i8, *v10.i8, 3), *v133.i8, v10, 4), *v134.i8, v10, 5), *v135.i8, v10, 6), *v136.i8, v10, 7);
      v145 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v138, v131, *v10.i8, 2), v132, *v10.i8, 3), v133, v10, 4), v134, v10, 5), v135, v10, 6), v136, v10, 7);
      v127 = vuzp1q_s16(v144, v145);
      v146 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v139, *v48.i8, *v11.i8, 2), *v63.i8, *v11.i8, 3), *v78.i8, v11, 4), *v93.i8, v11, 5), *v108.i8, v11, 6), vmovn_s32(v144), v11, 7), 0xCuLL), vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v140, v48, *v11.i8, 2), v63, *v11.i8, 3), v78, v11, 4), v93, v11, 5), v108, v11, 6), vmovn_s32(v145), v11, 7), 0xCuLL);
      v144.i64[0] = 0xFF00FF00FF00FFLL;
      v144.i64[1] = 0xFF00FF00FF00FFLL;
      --v126;
      *v123 = vminq_u16(v146, v144);
      _X7 += v8;
      _X5 += v8;
      v123 = (v123 + v9);
    }

    while (v126 > 1);
    a7 += 2;
    a5 += 16;
    v147 = result - 8;
    v12 += 16;
    v13 += 16;
    v148 = result > 0xF;
    result = (result - 8);
  }

  while (v148);
  if (v147)
  {
LABEL_9:
    v149 = xmmword_27750DCF0[(a3 & 3) - 1];
    v150 = xmmword_27750DCF0[v7 - 1];
    _X10 = (a5 - 6 * a4);
    v152 = *(_X10 - 6);
    _X10 = (_X10 - 6);
    v153 = vshr_n_u16(v152, 8uLL);
    v154 = vshr_n_u16(_X10[1], 8uLL);
    v155 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v161 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v153, v154, 2uLL), *v149.i8, 1), v153, *v149.i8, 0), vext_s8(v153, v154, 4uLL), *v149.i8, 2), vext_s8(v153, v154, 6uLL), *v149.i8, 3), v154, v149, 4), vext_s8(v154, v155, 2uLL), v149, 5), vext_s8(v154, v155, 4uLL), v149, 6), vext_s8(v154, v155, 6uLL), v149, 7));
    v162 = vshr_n_u16(*_X10, 8uLL);
    v163 = vshr_n_u16(_X10[1], 8uLL);
    v164 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v170 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v162, v163, 2uLL), *v149.i8, 1), v162, *v149.i8, 0), vext_s8(v162, v163, 4uLL), *v149.i8, 2), vext_s8(v162, v163, 6uLL), *v149.i8, 3), v163, v149, 4), vext_s8(v163, v164, 2uLL), v149, 5), vext_s8(v163, v164, 4uLL), v149, 6), vext_s8(v163, v164, 6uLL), v149, 7));
    v171 = vshr_n_u16(*_X10, 8uLL);
    v172 = vshr_n_u16(_X10[1], 8uLL);
    v173 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v179 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v171, v172, 2uLL), *v149.i8, 1), v171, *v149.i8, 0), vext_s8(v171, v172, 4uLL), *v149.i8, 2), vext_s8(v171, v172, 6uLL), *v149.i8, 3), v172, v149, 4), vext_s8(v172, v173, 2uLL), v149, 5), vext_s8(v172, v173, 4uLL), v149, 6), vext_s8(v172, v173, 6uLL), v149, 7));
    v180 = vshr_n_u16(*_X10, 8uLL);
    v181 = vshr_n_u16(_X10[1], 8uLL);
    v182 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v188 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v180, v181, 2uLL), *v149.i8, 1), v180, *v149.i8, 0), vext_s8(v180, v181, 4uLL), *v149.i8, 2), vext_s8(v180, v181, 6uLL), *v149.i8, 3), v181, v149, 4), vext_s8(v181, v182, 2uLL), v149, 5), vext_s8(v181, v182, 4uLL), v149, 6), vext_s8(v181, v182, 6uLL), v149, 7));
    v189 = vshr_n_u16(*_X10, 8uLL);
    v190 = vshr_n_u16(_X10[1], 8uLL);
    v191 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v197 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v189, v190, 2uLL), *v149.i8, 1), v189, *v149.i8, 0), vext_s8(v189, v190, 4uLL), *v149.i8, 2), vext_s8(v189, v190, 6uLL), *v149.i8, 3), v190, v149, 4), vext_s8(v190, v191, 2uLL), v149, 5), vext_s8(v190, v191, 4uLL), v149, 6), vext_s8(v190, v191, 6uLL), v149, 7));
    v198 = vshr_n_u16(*_X10, 8uLL);
    v199 = vshr_n_u16(_X10[1], 8uLL);
    v200 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v206 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v198, v199, 2uLL), *v149.i8, 1), v198, *v149.i8, 0), vext_s8(v198, v199, 4uLL), *v149.i8, 2), vext_s8(v198, v199, 6uLL), *v149.i8, 3), v199, v149, 4), vext_s8(v199, v200, 2uLL), v149, 5), vext_s8(v199, v200, 4uLL), v149, 6), vext_s8(v199, v200, 6uLL), v149, 7));
    v207 = vshr_n_u16(*_X10, 8uLL);
    v208 = vshr_n_u16(_X10[1], 8uLL);
    v209 = vshr_n_u16(_X10[2], 8uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v214 = vmovn_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v207, v208, 2uLL), *v149.i8, 1), v207, *v149.i8, 0), vext_s8(v207, v208, 4uLL), *v149.i8, 2), vext_s8(v207, v208, 6uLL), *v149.i8, 3), v208, v149, 4), vext_s8(v208, v209, 2uLL), v149, 5), vext_s8(v208, v209, 4uLL), v149, 6), vext_s8(v208, v209, 6uLL), v149, 7));
    v215 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v218 = vshr_n_u16(_X12[-2], 8uLL);
      v219 = vshr_n_u16(_X12[-1], 8uLL);
      v220 = vshr_n_u16(*_X12, 8uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v224 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v218, v219, 2uLL), *v149.i8, 1), v218, *v149.i8, 0), vext_s8(v218, v219, 4uLL), *v149.i8, 2), vext_s8(v218, v219, 6uLL), *v149.i8, 3), v219, v149, 4), vext_s8(v219, v220, 2uLL), v149, 5), vext_s8(v219, v220, 4uLL), v149, 6), vext_s8(v219, v220, 6uLL), v149, 7);
      v225 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v170, *v150.i8, 1), v161, *v150.i8, 0), v179, *v150.i8, 2), v188, *v150.i8, 3), v197, v150, 4), v206, v150, 5), v214, v150, 6);
      v161 = v170;
      v170 = v179;
      v179 = v188;
      v188 = v197;
      v197 = v206;
      v206 = v214;
      v214 = vmovn_s32(v224);
      --v215;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v225, v214, v150, 7), 0xCuLL), 0xFF00FF00FF00FFLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v215 > 1);
  }

  return result;
}

unint64_t sub_2774175D0(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x4_t *a7)
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
  v13.i64[0] = 0xFF00FF00FF00FFLL;
  v13.i64[1] = 0xFF00FF00FF00FFLL;
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
    v23 = vshrq_n_u16(v20, 8uLL);
    v24 = vshrq_n_u16(v22, 8uLL);
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

    v42 = vshrq_n_u16(v27, 8uLL);
    v43 = vshrq_n_u16(*a5, 8uLL);
    v44 = vshrq_n_u16(v31, 8uLL);
    v45 = vshrq_n_u16(v34, 8uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v48 = vshrq_n_u16(v36, 8uLL);
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
      v48 = vshrq_n_u16(*&v51[v7], 8uLL);
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

      v45 = vshrq_n_u16(*&v53[v7], 8uLL);
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
    v83 = vshr_n_u16(v82, 8uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 8uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 8uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 8uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 8uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 8uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 8uLL);
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
      v91 = vshr_n_u16(*a5->i8, 8uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 8uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 8uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 8uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v141, v91, v80, 7), 6uLL), 0xFF00FF00FF00FFLL);
      v149 = (v16 + v114);
      *v149 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7), 6uLL), 0xFF00FF00FF00FFLL);
      v150 = (v149 + v114);
      *v150 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7), 6uLL), 0xFF00FF00FF00FFLL);
      v151 = (v150 + v114);
      *v151 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7), 6uLL), 0xFF00FF00FF00FFLL);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_277417A3C(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
      v38 = vshr_n_u16(*_X11, 8uLL);
      v39 = vshr_n_u16(_X11[1], 8uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v41 = vshr_n_u16(_X11[2], 8uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v38, v39, 2uLL), *v35.i8, 1), v38, *v35.i8, 0), vext_s8(v38, v39, 4uLL), *v35.i8, 2), vext_s8(v38, v39, 6uLL), *v35.i8, 3), v39, v35, 4), vext_s8(v39, v41, 2uLL), v35, 5), vext_s8(v39, v41, 4uLL), v35, 6), vext_s8(v39, v41, 6uLL), v35, 7), 6uLL), 0xFF00FF00FF00FFLL);
      --v37;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v37 > 1);
  }

  return result;
}

double sub_277417BE0(int a1, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, void *a7)
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
      v14 = vshrq_n_u16(*&a5->i8[v11], 8uLL);
      v15 = vshrq_n_u16(*&v10[v11], 8uLL);
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
      *v14.i8 = vshr_n_u16(*a5, 8uLL);
      v19 = vshr_n_u16(*(a5 + 2 * a4), 8uLL);
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

uint64_t sub_277417CA0(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, const float *a7, uint64_t a8, int16x4_t *a9, uint64_t a10, void *a11)
{
  v12 = vld1q_dup_f32(a4);
  v11 = a4 + 1;
  v13 = a11;
  v15 = vld1q_dup_f32(a7);
  v14 = a7 + 1;
  v16 = vld1_dup_f32(v11);
  v17 = vld1_dup_f32(v14);
  v18 = a9;
  v19 = vaddq_s32(vshlq_n_s32(vaddl_s16(*v15.i8, *v12.i8), 0xDuLL), vshlq_s32(vaddl_s16(v17, v16), vdupq_n_s32(a3)));
  v20 = 4 * a10;
  v21 = vdupq_n_s32(~a3);
  v22 = 4 * a5;
  v23 = 4 * a8;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v24 = a9 + 2 * a8;
  v25 = a6 + 2 * a5;
  v26.i64[0] = 0xFE00FE00FE00FE00;
  v26.i64[1] = 0xFE00FE00FE00FE00;
  v27 = a11 + 2 * a10;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a2 + 2;
    do
    {
      v32 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *&v25[v29], *v12.i8), *&v24[v30], *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&v25[v29], v12), *&v24[v30], v15), v21)), 0), v26);
      *(v13 + v28) = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + v29), *v12.i8), *(v18 + v30), *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&a6->i8[v29], v12), *&v18->i8[v30], v15), v21)), 0), v26);
      *&v27[v28] = v32;
      v31 -= 2;
      v30 += v23;
      v29 += v22;
      v28 += v20;
    }

    while (v31 > 2);
    v13 += 2;
    a6 += 2;
    v18 += 2;
    v33 = result - 8;
    v24 += 16;
    v25 += 16;
    v27 += 16;
    v34 = result <= 15;
    result = (result - 8);
  }

  while (!v34);
  if (v33)
  {
LABEL_10:
    v35 = vextq_s8(v12, v12, 8uLL).u64[0];
    v36 = vextq_s8(v15, v15, 8uLL).u64[0];
    v37 = a2 + 2;
    v38.i64[0] = 0xFE00FE00FE00FE00;
    v38.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v39 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *a6, *v12.i8), *v18, *v15.i8), v21)), vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + 2 * a5), v35), *(v18 + 2 * a8), v36), v21)), 0), v38);
      *v13 = v39.i64[0];
      *(v13 + 2 * a10) = v39.i64[1];
      v13 = (v13 + v20);
      a6 = (a6 + v22);
      v18 = (v18 + v23);
      v37 -= 2;
    }

    while (v37 > 2);
  }

  return result;
}

uint64_t sub_277417E6C(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, uint64_t a7, void *a8)
{
  v9 = vld1q_dup_f32(a4);
  v8 = a4 + 1;
  v10 = vld1_dup_f32(v8);
  v11 = vdupq_n_s32(a3);
  v12 = vmlal_s16(vshlq_s32(vmovl_s16(v10), v11), *v9.i8, 0x2000200020002000);
  v13 = vnegq_s32(v11);
  v14 = 4 * a7;
  v15 = 4 * a5;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v16 = a6 + 2 * a5;
  v17.i64[0] = 0xFE00FE00FE00FE00;
  v17.i64[1] = 0xFE00FE00FE00FE00;
  v18 = a8 + 2 * a7;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 + 2;
    do
    {
      v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *&v16[v20], *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&v16[v20], v9), v13)), v17);
      *(a8 + v19) = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *(a6 + v20), *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&a6->i8[v20], v9), v13)), v17);
      *&v18[v19] = v22;
      v21 -= 2;
      v20 += v15;
      v19 += v14;
    }

    while (v21 > 2);
    a8 += 2;
    a6 += 2;
    v23 = result - 8;
    v16 += 16;
    v18 += 16;
    v24 = result <= 15;
    result = (result - 8);
  }

  while (!v24);
  if (v23)
  {
LABEL_10:
    v25 = vextq_s8(v9, v9, 8uLL).u64[0];
    v26 = a2 + 2;
    v27.i64[0] = 0xFE00FE00FE00FE00;
    v27.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v28 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *a6, *v9.i8), v13)), vrshlq_s32(vmlal_s16(v12, *(a6 + 2 * a5), v25), v13)), v27);
      *a8 = v28.i64[0];
      *(a8 + 2 * a7) = v28.i64[1];
      a8 = (a8 + v14);
      a6 = (a6 + v15);
      v26 -= 2;
    }

    while (v26 > 2);
  }

  return result;
}

uint64_t sub_277417FB8(uint64_t result, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v8 = 4 * a3;
  v9 = 4 * a5;
  v10 = 4 * a7;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = a6 + 2 * a5;
  v12 = a4 + 2 * a3;
  v13.i64[0] = 0x2000200020002000;
  v13.i64[1] = 0x2000200020002000;
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  v15 = a8 + 2 * a7;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = a2 + 2;
    do
    {
      *(a8 + v16) = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*(a4 + v17), *(a6 + v18)), v13), 4uLL), 0), v14);
      *&v15[v16] = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*&v12[v17], *&v11[v18]), v13), 4uLL), 0), v14);
      v19 -= 2;
      v18 += v9;
      v17 += v8;
      v16 += v10;
    }

    while (v19 > 2);
    a8 += 2;
    a4 += 2;
    a6 += 2;
    v20 = result - 8;
    v11 += 16;
    v12 += 16;
    v15 += 16;
    v21 = result <= 15;
    result = (result - 8);
  }

  while (!v21);
  if (v20)
  {
LABEL_10:
    v22 = a2 + 2;
    v23.i64[0] = 0x2000200020002000;
    v23.i64[1] = 0x2000200020002000;
    v24.i64[0] = 0xFE00FE00FE00FE00;
    v24.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v25.i64[0] = *a4;
      v25.i64[1] = *(a4 + 2 * a3);
      v26.i64[0] = *a6;
      v26.i64[1] = *(a6 + 2 * a5);
      v27 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(v25, v26), v23), 4uLL), 0), v24);
      *a8 = v27.i64[0];
      *(a8 + 2 * a7) = v27.i64[1];
      a4 = (a4 + v8);
      a6 = (a6 + v9);
      a8 = (a8 + v10);
      v22 -= 2;
    }

    while (v22 > 2);
  }

  return result;
}

uint64_t sub_277418100(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (a5 - 6 * a4 - 6);
    v16 = vshrq_n_u16(*_X17, 7uLL);
    v17 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 7uLL);
    v18 = vextq_s8(v16, v17, 2uLL);
    v19 = vextq_s8(v16, v17, 4uLL);
    v20 = vextq_s8(v16, v17, 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    v26 = vextq_s8(v16, v17, 8uLL);
    _X5 = &_X17->i8[8 * a4];
    v28 = vextq_s8(v16, v17, 0xAuLL);
    __asm { PRFM            #0, [X5] }

    v30 = vextq_s8(v16, v17, 0xCuLL);
    __asm { PRFUM           #0, [X5,#0x1E] }

    v32 = vextq_s8(v16, v17, 0xEuLL);
    _X17 = (_X17 + 2 * a4);
    v34 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v18.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v19.i8, *v10.i8, 2), *v20.i8, *v10.i8, 3), *v26.i8, v10, 4), *v28.i8, v10, 5), *v30.i8, v10, 6), *v32.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v18, *v10.i8, 1), v16, *v10.i8, 0), v19, *v10.i8, 2), v20, *v10.i8, 3), v26, v10, 4), v28, v10, 5), v30, v10, 6), v32, v10, 7), 1uLL);
    v35 = vshrq_n_u16(*_X17, 7uLL);
    v36 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v42 = vextq_s8(v35, v36, 2uLL);
    v43 = vextq_s8(v35, v36, 4uLL);
    v44 = vextq_s8(v35, v36, 6uLL);
    v45 = vextq_s8(v35, v36, 8uLL);
    v46 = vextq_s8(v35, v36, 0xAuLL);
    v47 = vextq_s8(v35, v36, 0xCuLL);
    v48 = vextq_s8(v35, v36, 0xEuLL);
    v49 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v10.i8, 1), *v35.i8, *v10.i8, 0), *v43.i8, *v10.i8, 2), *v44.i8, *v10.i8, 3), *v45.i8, v10, 4), *v46.i8, v10, 5), *v47.i8, v10, 6), *v48.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v10.i8, 1), v35, *v10.i8, 0), v43, *v10.i8, 2), v44, *v10.i8, 3), v45, v10, 4), v46, v10, 5), v47, v10, 6), v48, v10, 7), 1uLL);
    v50 = vshrq_n_u16(*_X17, 7uLL);
    v51 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v57 = vextq_s8(v50, v51, 2uLL);
    v58 = vextq_s8(v50, v51, 4uLL);
    v59 = vextq_s8(v50, v51, 6uLL);
    v60 = vextq_s8(v50, v51, 8uLL);
    v61 = vextq_s8(v50, v51, 0xAuLL);
    v62 = vextq_s8(v50, v51, 0xCuLL);
    v63 = vextq_s8(v50, v51, 0xEuLL);
    v64 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v57.i8, *v10.i8, 1), *v50.i8, *v10.i8, 0), *v58.i8, *v10.i8, 2), *v59.i8, *v10.i8, 3), *v60.i8, v10, 4), *v61.i8, v10, 5), *v62.i8, v10, 6), *v63.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v57, *v10.i8, 1), v50, *v10.i8, 0), v58, *v10.i8, 2), v59, *v10.i8, 3), v60, v10, 4), v61, v10, 5), v62, v10, 6), v63, v10, 7), 1uLL);
    v65 = vshrq_n_u16(*_X17, 7uLL);
    v66 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v72 = vextq_s8(v65, v66, 2uLL);
    v73 = vextq_s8(v65, v66, 4uLL);
    v74 = vextq_s8(v65, v66, 6uLL);
    v75 = vextq_s8(v65, v66, 8uLL);
    v76 = vextq_s8(v65, v66, 0xAuLL);
    v77 = vextq_s8(v65, v66, 0xCuLL);
    v78 = vextq_s8(v65, v66, 0xEuLL);
    v79 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v10.i8, 1), *v65.i8, *v10.i8, 0), *v73.i8, *v10.i8, 2), *v74.i8, *v10.i8, 3), *v75.i8, v10, 4), *v76.i8, v10, 5), *v77.i8, v10, 6), *v78.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v10.i8, 1), v65, *v10.i8, 0), v73, *v10.i8, 2), v74, *v10.i8, 3), v75, v10, 4), v76, v10, 5), v77, v10, 6), v78, v10, 7), 1uLL);
    v80 = vshrq_n_u16(*_X17, 7uLL);
    v81 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v87 = vextq_s8(v80, v81, 2uLL);
    v88 = vextq_s8(v80, v81, 4uLL);
    v89 = vextq_s8(v80, v81, 6uLL);
    v90 = vextq_s8(v80, v81, 8uLL);
    v91 = vextq_s8(v80, v81, 0xAuLL);
    v92 = vextq_s8(v80, v81, 0xCuLL);
    v93 = vextq_s8(v80, v81, 0xEuLL);
    v94 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v87.i8, *v10.i8, 1), *v80.i8, *v10.i8, 0), *v88.i8, *v10.i8, 2), *v89.i8, *v10.i8, 3), *v90.i8, v10, 4), *v91.i8, v10, 5), *v92.i8, v10, 6), *v93.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v87, *v10.i8, 1), v80, *v10.i8, 0), v88, *v10.i8, 2), v89, *v10.i8, 3), v90, v10, 4), v91, v10, 5), v92, v10, 6), v93, v10, 7), 1uLL);
    v95 = vshrq_n_u16(*_X17, 7uLL);
    v96 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v102 = vextq_s8(v95, v96, 2uLL);
    v103 = vextq_s8(v95, v96, 4uLL);
    v104 = vextq_s8(v95, v96, 6uLL);
    v105 = vextq_s8(v95, v96, 8uLL);
    v106 = vextq_s8(v95, v96, 0xAuLL);
    v107 = vextq_s8(v95, v96, 0xCuLL);
    v108 = vextq_s8(v95, v96, 0xEuLL);
    v109 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v102.i8, *v10.i8, 1), *v95.i8, *v10.i8, 0), *v103.i8, *v10.i8, 2), *v104.i8, *v10.i8, 3), *v105.i8, v10, 4), *v106.i8, v10, 5), *v107.i8, v10, 6), *v108.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v102, *v10.i8, 1), v95, *v10.i8, 0), v103, *v10.i8, 2), v104, *v10.i8, 3), v105, v10, 4), v106, v10, 5), v107, v10, 6), v108, v10, 7), 1uLL);
    v110 = vshrq_n_u16(*_X17, 7uLL);
    v111 = vshrq_n_u16(_X17[1], 7uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v116 = vextq_s8(v110, v111, 2uLL);
    v117 = vextq_s8(v110, v111, 4uLL);
    v118 = vextq_s8(v110, v111, 6uLL);
    v119 = vextq_s8(v110, v111, 8uLL);
    v120 = vextq_s8(v110, v111, 0xAuLL);
    v121 = vextq_s8(v110, v111, 0xCuLL);
    v122 = vextq_s8(v110, v111, 0xEuLL);
    v123 = a7;
    _X5 = v13;
    _X7 = v12;
    v126 = a2 + 1;
    v127 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v116.i8, *v10.i8, 1), *v110.i8, *v10.i8, 0), *v117.i8, *v10.i8, 2), *v118.i8, *v10.i8, 3), *v119.i8, v10, 4), *v120.i8, v10, 5), *v121.i8, v10, 6), *v122.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v116, *v10.i8, 1), v110, *v10.i8, 0), v117, *v10.i8, 2), v118, *v10.i8, 3), v119, v10, 4), v120, v10, 5), v121, v10, 6), v122, v10, 7), 1uLL);
    do
    {
      v128 = vshrq_n_u16(*(_X5 - 46), 7uLL);
      v129 = vshrq_n_u16(*(_X5 - 30), 7uLL);
      v130 = vextq_s8(v128, v129, 2uLL);
      v131 = vextq_s8(v128, v129, 4uLL);
      v132 = vextq_s8(v128, v129, 6uLL);
      v133 = vextq_s8(v128, v129, 8uLL);
      v134 = vextq_s8(v128, v129, 0xAuLL);
      v135 = vextq_s8(v128, v129, 0xCuLL);
      v136 = vextq_s8(v128, v129, 0xEuLL);
      v137 = vmlal_lane_s16(vmull_lane_s16(*v130.i8, *v10.i8, 1), *v128.i8, *v10.i8, 0);
      v138 = vmlal_high_lane_s16(vmull_high_lane_s16(v130, *v10.i8, 1), v128, *v10.i8, 0);
      v139 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v11.i8, 0), *v49.i8, *v11.i8, 1);
      v140 = vmlal_high_lane_s16(vmull_high_lane_s16(v34, *v11.i8, 0), v49, *v11.i8, 1);
      v34 = v49;
      v49 = v64;
      v64 = v79;
      v79 = v94;
      v94 = v109;
      v109 = v127;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v144 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v138, v131, *v10.i8, 2), v132, *v10.i8, 3), v133, v10, 4), v134, v10, 5), v135, v10, 6), v136, v10, 7);
      v145 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v137, *v131.i8, *v10.i8, 2), *v132.i8, *v10.i8, 3), *v133.i8, v10, 4), *v134.i8, v10, 5), *v135.i8, v10, 6), *v136.i8, v10, 7), 1uLL);
      v146 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v139, *v49.i8, *v11.i8, 2), *v64.i8, *v11.i8, 3), *v79.i8, v11, 4), *v94.i8, v11, 5), *v109.i8, v11, 6), v145, v11, 7);
      v127 = vshrn_high_n_s32(v145, v144, 1uLL);
      --v126;
      *v123 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v146, v14), 6uLL), vaddq_s32(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v140, v49, *v11.i8, 2), v64, *v11.i8, 3), v79, v11, 4), v94, v11, 5), v109, v11, 6), vshrn_n_s32(v144, 1uLL), v11, 7), v14), 6uLL);
      _X7 += v8;
      _X5 += v8;
      v123 = (v123 + v9);
    }

    while (v126 > 1);
    a7 += 2;
    a5 += 16;
    v147 = result - 8;
    v12 += 16;
    v13 += 16;
    v148 = result > 0xF;
    result = (result - 8);
  }

  while (v148);
  if (v147)
  {
LABEL_9:
    v149 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6 * a4);
    v151 = *(_X11 - 6);
    _X11 = (_X11 - 6);
    v152 = xmmword_27750DCF0[v7 - 1];
    v153 = vshr_n_u16(v151, 7uLL);
    v154 = vshr_n_u16(_X11[1], 7uLL);
    v155 = vshr_n_u16(_X11[2], 7uLL);
    __asm { PRFUM           #0, [X11,#0x1E] }

    _X10 = &_X11[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    _X10 = (_X11 + 2 * a4);
    v161 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v153, v154, 2uLL), *v149.i8, 1), v153, *v149.i8, 0), vext_s8(v153, v154, 4uLL), *v149.i8, 2), vext_s8(v153, v154, 6uLL), *v149.i8, 3), v154, v149, 4), vext_s8(v154, v155, 2uLL), v149, 5), vext_s8(v154, v155, 4uLL), v149, 6), vext_s8(v154, v155, 6uLL), v149, 7), 1uLL);
    v162 = vshr_n_u16(*_X10, 7uLL);
    v163 = vshr_n_u16(_X10[1], 7uLL);
    v164 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v170 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v162, v163, 2uLL), *v149.i8, 1), v162, *v149.i8, 0), vext_s8(v162, v163, 4uLL), *v149.i8, 2), vext_s8(v162, v163, 6uLL), *v149.i8, 3), v163, v149, 4), vext_s8(v163, v164, 2uLL), v149, 5), vext_s8(v163, v164, 4uLL), v149, 6), vext_s8(v163, v164, 6uLL), v149, 7), 1uLL);
    v171 = vshr_n_u16(*_X10, 7uLL);
    v172 = vshr_n_u16(_X10[1], 7uLL);
    v173 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v179 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v171, v172, 2uLL), *v149.i8, 1), v171, *v149.i8, 0), vext_s8(v171, v172, 4uLL), *v149.i8, 2), vext_s8(v171, v172, 6uLL), *v149.i8, 3), v172, v149, 4), vext_s8(v172, v173, 2uLL), v149, 5), vext_s8(v172, v173, 4uLL), v149, 6), vext_s8(v172, v173, 6uLL), v149, 7), 1uLL);
    v180 = vshr_n_u16(*_X10, 7uLL);
    v181 = vshr_n_u16(_X10[1], 7uLL);
    v182 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v188 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v180, v181, 2uLL), *v149.i8, 1), v180, *v149.i8, 0), vext_s8(v180, v181, 4uLL), *v149.i8, 2), vext_s8(v180, v181, 6uLL), *v149.i8, 3), v181, v149, 4), vext_s8(v181, v182, 2uLL), v149, 5), vext_s8(v181, v182, 4uLL), v149, 6), vext_s8(v181, v182, 6uLL), v149, 7), 1uLL);
    v189 = vshr_n_u16(*_X10, 7uLL);
    v190 = vshr_n_u16(_X10[1], 7uLL);
    v191 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v197 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v189, v190, 2uLL), *v149.i8, 1), v189, *v149.i8, 0), vext_s8(v189, v190, 4uLL), *v149.i8, 2), vext_s8(v189, v190, 6uLL), *v149.i8, 3), v190, v149, 4), vext_s8(v190, v191, 2uLL), v149, 5), vext_s8(v190, v191, 4uLL), v149, 6), vext_s8(v190, v191, 6uLL), v149, 7), 1uLL);
    v198 = vshr_n_u16(*_X10, 7uLL);
    v199 = vshr_n_u16(_X10[1], 7uLL);
    v200 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v206 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v198, v199, 2uLL), *v149.i8, 1), v198, *v149.i8, 0), vext_s8(v198, v199, 4uLL), *v149.i8, 2), vext_s8(v198, v199, 6uLL), *v149.i8, 3), v199, v149, 4), vext_s8(v199, v200, 2uLL), v149, 5), vext_s8(v199, v200, 4uLL), v149, 6), vext_s8(v199, v200, 6uLL), v149, 7), 1uLL);
    v207 = vshr_n_u16(*_X10, 7uLL);
    v208 = vshr_n_u16(_X10[1], 7uLL);
    v209 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v214 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v207, v208, 2uLL), *v149.i8, 1), v207, *v149.i8, 0), vext_s8(v207, v208, 4uLL), *v149.i8, 2), vext_s8(v207, v208, 6uLL), *v149.i8, 3), v208, v149, 4), vext_s8(v208, v209, 2uLL), v149, 5), vext_s8(v208, v209, 4uLL), v149, 6), vext_s8(v208, v209, 6uLL), v149, 7), 1uLL);
    v215 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v218.i64[0] = 0x38000000380000;
      v218.i64[1] = 0x38000000380000;
      v219 = vmlal_lane_s16(v218, v161, *v152.i8, 0);
      v220 = vshr_n_u16(_X12[-2], 7uLL);
      v221 = vshr_n_u16(_X12[-1], 7uLL);
      v222 = vshr_n_u16(*_X12, 7uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v226 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v220, v221, 2uLL), *v149.i8, 1), v220, *v149.i8, 0), vext_s8(v220, v221, 4uLL), *v149.i8, 2), vext_s8(v220, v221, 6uLL), *v149.i8, 3), v221, v149, 4), vext_s8(v221, v222, 2uLL), v149, 5), vext_s8(v221, v222, 4uLL), v149, 6), vext_s8(v221, v222, 6uLL), v149, 7);
      v227 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v219, v170, *v152.i8, 1), v179, *v152.i8, 2), v188, *v152.i8, 3), v197, v152, 4), v206, v152, 5), v214, v152, 6);
      v161 = v170;
      v170 = v179;
      v179 = v188;
      v188 = v197;
      v197 = v206;
      v206 = v214;
      v214 = vshrn_n_s32(v226, 1uLL);
      --v215;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_laneq_s16(v227, v214, v152, 7), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v215 > 1);
  }

  return result;
}

unint64_t sub_2774189E4(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, int16x4_t *a7)
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
    v23 = vshrq_n_u16(v20, 7uLL);
    v24 = vshrq_n_u16(v22, 7uLL);
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

    v42 = vshrq_n_u16(v27, 7uLL);
    v43 = vshrq_n_u16(*a5, 7uLL);
    v44 = vshrq_n_u16(v31, 7uLL);
    v45 = vshrq_n_u16(v34, 7uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v48 = vshrq_n_u16(v36, 7uLL);
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
      v48 = vshrq_n_u16(*&v51[v7], 7uLL);
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

      v45 = vshrq_n_u16(*&v53[v7], 7uLL);
      *v58[v7 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v69, *v42.i8, v8, 4), *v43.i8, v8, 5), *v44.i8, v8, 6), *v45.i8, v8, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v70, v42, v8, 4), v43, v8, 5), v44, v8, 6), v45, v8, 7), 1uLL), v13);
      *&v59[v7] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v71, *v42.i8, *v8.i8, 3), *v43.i8, v8, 4), *v44.i8, v8, 5), *v45.i8, v8, 6), *v48.i8, v8, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v72, v42, *v8.i8, 3), v43, v8, 4), v44, v8, 5), v45, v8, 6), v48, v8, 7), 1uLL), v13);
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
    v83 = vshr_n_u16(v82, 7uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 7uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 7uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 7uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 7uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 7uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 7uLL);
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
      v91 = vshr_n_u16(*a5->i8, 7uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 7uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 7uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 7uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(v141, v91, v80, 7), 1uLL), 0xE000E000E000E000);
      v149 = (v16 + v114);
      *v149 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7), 1uLL), 0xE000E000E000E000);
      v150 = (v149 + v114);
      *v150 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7), 1uLL), 0xE000E000E000E000);
      v151 = (v150 + v114);
      *v151 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7), 1uLL), 0xE000E000E000E000);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_277418E4C(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
      v16 = vshrq_n_u16(*_X15, 7uLL);
      v17 = vshrq_n_u16(_X15[1], 7uLL);
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

      *v13 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v25.i8, *v10.i8, 2), *v26.i8, *v10.i8, 3), *v27.i8, v10, 4), *v28.i8, v10, 5), *v29.i8, v10, 6), *v30.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v10.i8, 1), v16, *v10.i8, 0), v25, *v10.i8, 2), v26, *v10.i8, 3), v27, v10, 4), v28, v10, 5), v29, v10, 6), v30, v10, 7), 1uLL), v12);
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
      v38 = vshr_n_u16(*_X11, 7uLL);
      v39 = vshr_n_u16(_X11[1], 7uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v41 = vshr_n_u16(_X11[2], 7uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v38, v39, 2uLL), *v35.i8, 1), v38, *v35.i8, 0), vext_s8(v38, v39, 4uLL), *v35.i8, 2), vext_s8(v38, v39, 6uLL), *v35.i8, 3), v39, v35, 4), vext_s8(v39, v41, 2uLL), v35, 5), vext_s8(v39, v41, 4uLL), v35, 6), vext_s8(v39, v41, 6uLL), v35, 7), 1uLL), 0xE000E000E000E000);
      --v37;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v37 > 1);
  }

  return result;
}

uint64_t sub_277418FEC(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, int16x4_t *a7)
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
      *&a7->i8[v13] = vaddq_s16((*&vshrq_n_u16(*&a5->i8[v12], 2uLL) & __PAIR128__(0xFFE0FFE0FFE0FFE0, 0xFFE0FFE0FFE0FFE0)), v10);
      *&v9[v13] = vaddq_s16((*&vshrq_n_u16(v15, 2uLL) & __PAIR128__(0xFFE0FFE0FFE0FFE0, 0xFFE0FFE0FFE0FFE0)), v10);
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
      *a7 = vadd_s16((*&vshr_n_u16(v19, 2uLL) & 0xFFE0FFE0FFE0FFE0), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16((*&vshr_n_u16(v20, 2uLL) & 0xFFE0FFE0FFE0FFE0), 0xE000E000E000E000);
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return result;
}

uint64_t sub_2774190D4(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
    v15 = vshrq_n_u16(*_X17, 7uLL);
    v16 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 7uLL);
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
    v33 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v17.i8, *v10.i8, 1), *v15.i8, *v10.i8, 0), *v18.i8, *v10.i8, 2), *v19.i8, *v10.i8, 3), *v25.i8, v10, 4), *v27.i8, v10, 5), *v29.i8, v10, 6), *v31.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v17, *v10.i8, 1), v15, *v10.i8, 0), v18, *v10.i8, 2), v19, *v10.i8, 3), v25, v10, 4), v27, v10, 5), v29, v10, 6), v31, v10, 7), 1uLL);
    v34 = vshrq_n_u16(*_X17, 7uLL);
    v35 = vshrq_n_u16(_X17[1], 7uLL);
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
    v48 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v41.i8, *v10.i8, 1), *v34.i8, *v10.i8, 0), *v42.i8, *v10.i8, 2), *v43.i8, *v10.i8, 3), *v44.i8, v10, 4), *v45.i8, v10, 5), *v46.i8, v10, 6), *v47.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v41, *v10.i8, 1), v34, *v10.i8, 0), v42, *v10.i8, 2), v43, *v10.i8, 3), v44, v10, 4), v45, v10, 5), v46, v10, 6), v47, v10, 7), 1uLL);
    v49 = vshrq_n_u16(*_X17, 7uLL);
    v50 = vshrq_n_u16(_X17[1], 7uLL);
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
    v63 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v10.i8, 1), *v49.i8, *v10.i8, 0), *v57.i8, *v10.i8, 2), *v58.i8, *v10.i8, 3), *v59.i8, v10, 4), *v60.i8, v10, 5), *v61.i8, v10, 6), *v62.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v10.i8, 1), v49, *v10.i8, 0), v57, *v10.i8, 2), v58, *v10.i8, 3), v59, v10, 4), v60, v10, 5), v61, v10, 6), v62, v10, 7), 1uLL);
    v64 = vshrq_n_u16(*_X17, 7uLL);
    v65 = vshrq_n_u16(_X17[1], 7uLL);
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
    v78 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v71.i8, *v10.i8, 1), *v64.i8, *v10.i8, 0), *v72.i8, *v10.i8, 2), *v73.i8, *v10.i8, 3), *v74.i8, v10, 4), *v75.i8, v10, 5), *v76.i8, v10, 6), *v77.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v71, *v10.i8, 1), v64, *v10.i8, 0), v72, *v10.i8, 2), v73, *v10.i8, 3), v74, v10, 4), v75, v10, 5), v76, v10, 6), v77, v10, 7), 1uLL);
    v79 = vshrq_n_u16(*_X17, 7uLL);
    v80 = vshrq_n_u16(_X17[1], 7uLL);
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
    v93 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v86.i8, *v10.i8, 1), *v79.i8, *v10.i8, 0), *v87.i8, *v10.i8, 2), *v88.i8, *v10.i8, 3), *v89.i8, v10, 4), *v90.i8, v10, 5), *v91.i8, v10, 6), *v92.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v86, *v10.i8, 1), v79, *v10.i8, 0), v87, *v10.i8, 2), v88, *v10.i8, 3), v89, v10, 4), v90, v10, 5), v91, v10, 6), v92, v10, 7), 1uLL);
    v94 = vshrq_n_u16(*_X17, 7uLL);
    v95 = vshrq_n_u16(_X17[1], 7uLL);
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
    v108 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v10.i8, 1), *v94.i8, *v10.i8, 0), *v102.i8, *v10.i8, 2), *v103.i8, *v10.i8, 3), *v104.i8, v10, 4), *v105.i8, v10, 5), *v106.i8, v10, 6), *v107.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v10.i8, 1), v94, *v10.i8, 0), v102, *v10.i8, 2), v103, *v10.i8, 3), v104, v10, 4), v105, v10, 5), v106, v10, 6), v107, v10, 7), 1uLL);
    v109 = vshrq_n_u16(*_X17, 7uLL);
    v110 = vshrq_n_u16(_X17[1], 7uLL);
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
    v126 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v10.i8, 1), *v109.i8, *v10.i8, 0), *v116.i8, *v10.i8, 2), *v117.i8, *v10.i8, 3), *v118.i8, v10, 4), *v119.i8, v10, 5), *v120.i8, v10, 6), *v121.i8, v10, 7), 1uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v10.i8, 1), v109, *v10.i8, 0), v116, *v10.i8, 2), v117, *v10.i8, 3), v118, v10, 4), v119, v10, 5), v120, v10, 6), v121, v10, 7), 1uLL);
    do
    {
      v127 = vshrq_n_u16(*(_X5 - 46), 7uLL);
      v128 = vshrq_n_u16(*(_X5 - 30), 7uLL);
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
      v144 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v136, *v130.i8, *v10.i8, 2), *v131.i8, *v10.i8, 3), *v132.i8, v10, 4), *v133.i8, v10, 5), *v134.i8, v10, 6), *v135.i8, v10, 7), 1uLL);
      v145 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v138, *v48.i8, *v11.i8, 2), *v63.i8, *v11.i8, 3), *v78.i8, v11, 4), *v93.i8, v11, 5), *v108.i8, v11, 6), v144, v11, 7);
      v126 = vshrn_high_n_s32(v144, v143, 1uLL);
      v135.i64[0] = 0xFE00FE00FE00FE00;
      v135.i64[1] = 0xFE00FE00FE00FE00;
      --v125;
      *v122 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v145, 0xBuLL), vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v139, v48, *v11.i8, 2), v63, *v11.i8, 3), v78, v11, 4), v93, v11, 5), v108, v11, 6), vshrn_n_s32(v143, 1uLL), v11, 7), 0xBuLL), v135);
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
    v152 = vshr_n_u16(v151, 7uLL);
    v153 = vshr_n_u16(_X10[1], 7uLL);
    v154 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v160 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v152, v153, 2uLL), *v148.i8, 1), v152, *v148.i8, 0), vext_s8(v152, v153, 4uLL), *v148.i8, 2), vext_s8(v152, v153, 6uLL), *v148.i8, 3), v153, v148, 4), vext_s8(v153, v154, 2uLL), v148, 5), vext_s8(v153, v154, 4uLL), v148, 6), vext_s8(v153, v154, 6uLL), v148, 7), 1uLL);
    v161 = vshr_n_u16(*_X10, 7uLL);
    v162 = vshr_n_u16(_X10[1], 7uLL);
    v163 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v169 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v161, v162, 2uLL), *v148.i8, 1), v161, *v148.i8, 0), vext_s8(v161, v162, 4uLL), *v148.i8, 2), vext_s8(v161, v162, 6uLL), *v148.i8, 3), v162, v148, 4), vext_s8(v162, v163, 2uLL), v148, 5), vext_s8(v162, v163, 4uLL), v148, 6), vext_s8(v162, v163, 6uLL), v148, 7), 1uLL);
    v170 = vshr_n_u16(*_X10, 7uLL);
    v171 = vshr_n_u16(_X10[1], 7uLL);
    v172 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v178 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v170, v171, 2uLL), *v148.i8, 1), v170, *v148.i8, 0), vext_s8(v170, v171, 4uLL), *v148.i8, 2), vext_s8(v170, v171, 6uLL), *v148.i8, 3), v171, v148, 4), vext_s8(v171, v172, 2uLL), v148, 5), vext_s8(v171, v172, 4uLL), v148, 6), vext_s8(v171, v172, 6uLL), v148, 7), 1uLL);
    v179 = vshr_n_u16(*_X10, 7uLL);
    v180 = vshr_n_u16(_X10[1], 7uLL);
    v181 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v187 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v179, v180, 2uLL), *v148.i8, 1), v179, *v148.i8, 0), vext_s8(v179, v180, 4uLL), *v148.i8, 2), vext_s8(v179, v180, 6uLL), *v148.i8, 3), v180, v148, 4), vext_s8(v180, v181, 2uLL), v148, 5), vext_s8(v180, v181, 4uLL), v148, 6), vext_s8(v180, v181, 6uLL), v148, 7), 1uLL);
    v188 = vshr_n_u16(*_X10, 7uLL);
    v189 = vshr_n_u16(_X10[1], 7uLL);
    v190 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v196 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v188, v189, 2uLL), *v148.i8, 1), v188, *v148.i8, 0), vext_s8(v188, v189, 4uLL), *v148.i8, 2), vext_s8(v188, v189, 6uLL), *v148.i8, 3), v189, v148, 4), vext_s8(v189, v190, 2uLL), v148, 5), vext_s8(v189, v190, 4uLL), v148, 6), vext_s8(v189, v190, 6uLL), v148, 7), 1uLL);
    v197 = vshr_n_u16(*_X10, 7uLL);
    v198 = vshr_n_u16(_X10[1], 7uLL);
    v199 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v205 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v197, v198, 2uLL), *v148.i8, 1), v197, *v148.i8, 0), vext_s8(v197, v198, 4uLL), *v148.i8, 2), vext_s8(v197, v198, 6uLL), *v148.i8, 3), v198, v148, 4), vext_s8(v198, v199, 2uLL), v148, 5), vext_s8(v198, v199, 4uLL), v148, 6), vext_s8(v198, v199, 6uLL), v148, 7), 1uLL);
    v206 = vshr_n_u16(*_X10, 7uLL);
    v207 = vshr_n_u16(_X10[1], 7uLL);
    v208 = vshr_n_u16(_X10[2], 7uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v213 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v206, v207, 2uLL), *v148.i8, 1), v206, *v148.i8, 0), vext_s8(v206, v207, 4uLL), *v148.i8, 2), vext_s8(v206, v207, 6uLL), *v148.i8, 3), v207, v148, 4), vext_s8(v207, v208, 2uLL), v148, 5), vext_s8(v207, v208, 4uLL), v148, 6), vext_s8(v207, v208, 6uLL), v148, 7), 1uLL);
    v214 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v217 = vshr_n_u16(_X12[-2], 7uLL);
      v218 = vshr_n_u16(_X12[-1], 7uLL);
      v219 = vshr_n_u16(*_X12, 7uLL);
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
      v213 = vshrn_n_s32(v223, 1uLL);
      --v214;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v224, v213, v149, 7), 0xBuLL), 0xFE00FE00FE00FE00);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v214 > 1);
  }

  return result;
}

unint64_t sub_2774199BC(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x4_t *a7)
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
  v13.i64[0] = 0xFE00FE00FE00FE00;
  v13.i64[1] = 0xFE00FE00FE00FE00;
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
    v23 = vshrq_n_u16(v20, 7uLL);
    v24 = vshrq_n_u16(v22, 7uLL);
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

    v42 = vshrq_n_u16(v27, 7uLL);
    v43 = vshrq_n_u16(*a5, 7uLL);
    v44 = vshrq_n_u16(v31, 7uLL);
    v45 = vshrq_n_u16(v34, 7uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v48 = vshrq_n_u16(v36, 7uLL);
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
      v48 = vshrq_n_u16(*&v51[v7], 7uLL);
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

      v45 = vshrq_n_u16(*&v53[v7], 7uLL);
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
    v83 = vshr_n_u16(v82, 7uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 7uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 7uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 7uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 7uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 7uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 7uLL);
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
      v91 = vshr_n_u16(*a5->i8, 7uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 7uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 7uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 7uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v141, v91, v80, 7), 6uLL), 0xFE00FE00FE00FE00);
      v149 = (v16 + v114);
      *v149 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7), 6uLL), 0xFE00FE00FE00FE00);
      v150 = (v149 + v114);
      *v150 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7), 6uLL), 0xFE00FE00FE00FE00);
      v151 = (v150 + v114);
      *v151 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7), 6uLL), 0xFE00FE00FE00FE00);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_277419E28(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
      v38 = vshr_n_u16(*_X11, 7uLL);
      v39 = vshr_n_u16(_X11[1], 7uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v41 = vshr_n_u16(_X11[2], 7uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v38, v39, 2uLL), *v35.i8, 1), v38, *v35.i8, 0), vext_s8(v38, v39, 4uLL), *v35.i8, 2), vext_s8(v38, v39, 6uLL), *v35.i8, 3), v39, v35, 4), vext_s8(v39, v41, 2uLL), v35, 5), vext_s8(v39, v41, 4uLL), v35, 6), vext_s8(v39, v41, 6uLL), v35, 7), 6uLL), 0xFE00FE00FE00FE00);
      --v37;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v37 > 1);
  }

  return result;
}

double sub_277419FCC(int a1, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, void *a7)
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
      v14 = vshrq_n_u16(*&a5->i8[v11], 7uLL);
      v15 = vshrq_n_u16(*&v10[v11], 7uLL);
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
      *v14.i8 = vshr_n_u16(*a5, 7uLL);
      v19 = vshr_n_u16(*(a5 + 2 * a4), 7uLL);
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

uint64_t sub_27741A08C(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, const float *a7, uint64_t a8, int16x4_t *a9, uint64_t a10, void *a11)
{
  v12 = vld1q_dup_f32(a4);
  v11 = a4 + 1;
  v13 = a11;
  v15 = vld1q_dup_f32(a7);
  v14 = a7 + 1;
  v16 = vld1_dup_f32(v11);
  v17 = vld1_dup_f32(v14);
  v18 = a9;
  v19 = vaddq_s32(vshlq_n_s32(vaddl_s16(*v15.i8, *v12.i8), 0xDuLL), vshlq_s32(vaddl_s16(v17, v16), vdupq_n_s32(a3)));
  v20 = 4 * a10;
  v21 = vdupq_n_s32(~a3);
  v22 = 4 * a5;
  v23 = 4 * a8;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v24 = a9 + 2 * a8;
  v25 = a6 + 2 * a5;
  v26.i64[0] = 0xFC00FC00FC00FC00;
  v26.i64[1] = 0xFC00FC00FC00FC00;
  v27 = a11 + 2 * a10;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a2 + 2;
    do
    {
      v32 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *&v25[v29], *v12.i8), *&v24[v30], *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&v25[v29], v12), *&v24[v30], v15), v21)), 0), v26);
      *(v13 + v28) = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + v29), *v12.i8), *(v18 + v30), *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&a6->i8[v29], v12), *&v18->i8[v30], v15), v21)), 0), v26);
      *&v27[v28] = v32;
      v31 -= 2;
      v30 += v23;
      v29 += v22;
      v28 += v20;
    }

    while (v31 > 2);
    v13 += 2;
    a6 += 2;
    v18 += 2;
    v33 = result - 8;
    v24 += 16;
    v25 += 16;
    v27 += 16;
    v34 = result <= 15;
    result = (result - 8);
  }

  while (!v34);
  if (v33)
  {
LABEL_10:
    v35 = vextq_s8(v12, v12, 8uLL).u64[0];
    v36 = vextq_s8(v15, v15, 8uLL).u64[0];
    v37 = a2 + 2;
    v38.i64[0] = 0xFC00FC00FC00FC00;
    v38.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v39 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *a6, *v12.i8), *v18, *v15.i8), v21)), vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + 2 * a5), v35), *(v18 + 2 * a8), v36), v21)), 0), v38);
      *v13 = v39.i64[0];
      *(v13 + 2 * a10) = v39.i64[1];
      v13 = (v13 + v20);
      a6 = (a6 + v22);
      v18 = (v18 + v23);
      v37 -= 2;
    }

    while (v37 > 2);
  }

  return result;
}

uint64_t sub_27741A258(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, uint64_t a7, void *a8)
{
  v9 = vld1q_dup_f32(a4);
  v8 = a4 + 1;
  v10 = vld1_dup_f32(v8);
  v11 = vdupq_n_s32(a3);
  v12 = vmlal_s16(vshlq_s32(vmovl_s16(v10), v11), *v9.i8, 0x2000200020002000);
  v13 = vnegq_s32(v11);
  v14 = 4 * a7;
  v15 = 4 * a5;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v16 = a6 + 2 * a5;
  v17.i64[0] = 0xFC00FC00FC00FC00;
  v17.i64[1] = 0xFC00FC00FC00FC00;
  v18 = a8 + 2 * a7;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 + 2;
    do
    {
      v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *&v16[v20], *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&v16[v20], v9), v13)), v17);
      *(a8 + v19) = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *(a6 + v20), *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&a6->i8[v20], v9), v13)), v17);
      *&v18[v19] = v22;
      v21 -= 2;
      v20 += v15;
      v19 += v14;
    }

    while (v21 > 2);
    a8 += 2;
    a6 += 2;
    v23 = result - 8;
    v16 += 16;
    v18 += 16;
    v24 = result <= 15;
    result = (result - 8);
  }

  while (!v24);
  if (v23)
  {
LABEL_10:
    v25 = vextq_s8(v9, v9, 8uLL).u64[0];
    v26 = a2 + 2;
    v27.i64[0] = 0xFC00FC00FC00FC00;
    v27.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v28 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *a6, *v9.i8), v13)), vrshlq_s32(vmlal_s16(v12, *(a6 + 2 * a5), v25), v13)), v27);
      *a8 = v28.i64[0];
      *(a8 + 2 * a7) = v28.i64[1];
      a8 = (a8 + v14);
      a6 = (a6 + v15);
      v26 -= 2;
    }

    while (v26 > 2);
  }

  return result;
}

uint64_t sub_27741A3A4(uint64_t result, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v8 = 4 * a3;
  v9 = 4 * a5;
  v10 = 4 * a7;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = a6 + 2 * a5;
  v12 = a4 + 2 * a3;
  v13.i64[0] = 0x2000200020002000;
  v13.i64[1] = 0x2000200020002000;
  v14.i64[0] = 0xFC00FC00FC00FC00;
  v14.i64[1] = 0xFC00FC00FC00FC00;
  v15 = a8 + 2 * a7;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = a2 + 2;
    do
    {
      *(a8 + v16) = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*(a4 + v17), *(a6 + v18)), v13), 3uLL), 0), v14);
      *&v15[v16] = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*&v12[v17], *&v11[v18]), v13), 3uLL), 0), v14);
      v19 -= 2;
      v18 += v9;
      v17 += v8;
      v16 += v10;
    }

    while (v19 > 2);
    a8 += 2;
    a4 += 2;
    a6 += 2;
    v20 = result - 8;
    v11 += 16;
    v12 += 16;
    v15 += 16;
    v21 = result <= 15;
    result = (result - 8);
  }

  while (!v21);
  if (v20)
  {
LABEL_10:
    v22 = a2 + 2;
    v23.i64[0] = 0x2000200020002000;
    v23.i64[1] = 0x2000200020002000;
    v24.i64[0] = 0xFC00FC00FC00FC00;
    v24.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v25.i64[0] = *a4;
      v25.i64[1] = *(a4 + 2 * a3);
      v26.i64[0] = *a6;
      v26.i64[1] = *(a6 + 2 * a5);
      v27 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(v25, v26), v23), 3uLL), 0), v24);
      *a8 = v27.i64[0];
      *(a8 + 2 * a7) = v27.i64[1];
      a4 = (a4 + v8);
      a6 = (a6 + v9);
      a8 = (a8 + v10);
      v22 -= 2;
    }

    while (v22 > 2);
  }

  return result;
}

uint64_t sub_27741A4EC(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
  v20 = a5 + 16 * a4 - 6;
  v21 = a5 + 8 * a4 + 40;
  v22.i64[0] = 0x38000000380000;
  v22.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (a5 - 6 * a4 - 6);
    v24 = vshrq_n_u16(*_X17, 6uLL);
    v25 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 6uLL);
    v26 = vextq_s8(v24, v25, 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    v32 = vextq_s8(v24, v25, 8uLL);
    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v37 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v24, v12), vextq_s8(v24, v25, 2uLL), v13), vextq_s8(v24, v25, 4uLL), v14), vextq_s8(v24, v25, 0xAuLL), v15), vextq_s8(v24, v25, 0xCuLL), v16), vextq_s8(v24, v25, 0xEuLL), v17);
    v38 = vmulq_s16(v26, v18);
    v39 = vmulq_s16(v32, v19);
    v40 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v39.i8, *v38.i8), *v37.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v38, v39), v37), 2uLL);
    v41 = vshrq_n_u16(*_X17, 6uLL);
    v42 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v48 = vextq_s8(v41, v42, 6uLL);
    v49 = vextq_s8(v41, v42, 8uLL);
    v50 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v41, v12), vextq_s8(v41, v42, 2uLL), v13), vextq_s8(v41, v42, 4uLL), v14), vextq_s8(v41, v42, 0xAuLL), v15), vextq_s8(v41, v42, 0xCuLL), v16), vextq_s8(v41, v42, 0xEuLL), v17);
    v51 = vmulq_s16(v48, v18);
    v52 = vmulq_s16(v49, v19);
    v53 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v52.i8, *v51.i8), *v50.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v51, v52), v50), 2uLL);
    v54 = vshrq_n_u16(*_X17, 6uLL);
    v55 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v61 = vextq_s8(v54, v55, 6uLL);
    v62 = vextq_s8(v54, v55, 8uLL);
    v63 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v54, v12), vextq_s8(v54, v55, 2uLL), v13), vextq_s8(v54, v55, 4uLL), v14), vextq_s8(v54, v55, 0xAuLL), v15), vextq_s8(v54, v55, 0xCuLL), v16), vextq_s8(v54, v55, 0xEuLL), v17);
    v64 = vmulq_s16(v61, v18);
    v65 = vmulq_s16(v62, v19);
    v66 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v65.i8, *v64.i8), *v63.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v64, v65), v63), 2uLL);
    v67 = vshrq_n_u16(*_X17, 6uLL);
    v68 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v74 = vextq_s8(v67, v68, 6uLL);
    v75 = vextq_s8(v67, v68, 8uLL);
    v76 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v67, v12), vextq_s8(v67, v68, 2uLL), v13), vextq_s8(v67, v68, 4uLL), v14), vextq_s8(v67, v68, 0xAuLL), v15), vextq_s8(v67, v68, 0xCuLL), v16), vextq_s8(v67, v68, 0xEuLL), v17);
    v77 = vmulq_s16(v74, v18);
    v78 = vmulq_s16(v75, v19);
    v79 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v78.i8, *v77.i8), *v76.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v77, v78), v76), 2uLL);
    v80 = vshrq_n_u16(*_X17, 6uLL);
    v81 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v87 = vextq_s8(v80, v81, 6uLL);
    v88 = vextq_s8(v80, v81, 8uLL);
    v89 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v80, v12), vextq_s8(v80, v81, 2uLL), v13), vextq_s8(v80, v81, 4uLL), v14), vextq_s8(v80, v81, 0xAuLL), v15), vextq_s8(v80, v81, 0xCuLL), v16), vextq_s8(v80, v81, 0xEuLL), v17);
    v90 = vmulq_s16(v87, v18);
    v91 = vmulq_s16(v88, v19);
    v92 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v91.i8, *v90.i8), *v89.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v90, v91), v89), 2uLL);
    v93 = vshrq_n_u16(*_X17, 6uLL);
    v94 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v100 = vextq_s8(v93, v94, 6uLL);
    v101 = vextq_s8(v93, v94, 8uLL);
    v102 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v93, v12), vextq_s8(v93, v94, 2uLL), v13), vextq_s8(v93, v94, 4uLL), v14), vextq_s8(v93, v94, 0xAuLL), v15), vextq_s8(v93, v94, 0xCuLL), v16), vextq_s8(v93, v94, 0xEuLL), v17);
    v103 = vmulq_s16(v100, v18);
    v104 = vmulq_s16(v101, v19);
    v105 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v104.i8, *v103.i8), *v102.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v103, v104), v102), 2uLL);
    v106 = vshrq_n_u16(*_X17, 6uLL);
    v107 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v112 = vextq_s8(v106, v107, 6uLL);
    v113 = vextq_s8(v106, v107, 8uLL);
    v114 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v106, v12), vextq_s8(v106, v107, 2uLL), v13), vextq_s8(v106, v107, 4uLL), v14), vextq_s8(v106, v107, 0xAuLL), v15), vextq_s8(v106, v107, 0xCuLL), v16), vextq_s8(v106, v107, 0xEuLL), v17);
    v115 = vmulq_s16(v112, v18);
    v116 = vmulq_s16(v113, v19);
    v117 = a7;
    _X5 = v21;
    _X7 = v20;
    v120 = a2 + 1;
    v121 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v116.i8, *v115.i8), *v114.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v115, v116), v114), 2uLL);
    do
    {
      v122 = vshrq_n_u16(*(_X5 - 46), 6uLL);
      v123 = vshrq_n_u16(*(_X5 - 30), 6uLL);
      v124 = vextq_s8(v122, v123, 2uLL);
      v125 = vextq_s8(v122, v123, 4uLL);
      v126 = vextq_s8(v122, v123, 6uLL);
      v127 = vextq_s8(v122, v123, 8uLL);
      v128 = vextq_s8(v122, v123, 0xAuLL);
      v129 = vextq_s8(v122, v123, 0xCuLL);
      v130 = vextq_s8(v122, v123, 0xEuLL);
      v131 = vmlaq_s16(vmulq_s16(v122, v12), v124, v13);
      v132 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v11.i8, 0), *v53.i8, *v11.i8, 1);
      v133 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v11.i8, 0), v53, *v11.i8, 1);
      v40 = v53;
      v53 = v66;
      v66 = v79;
      v79 = v92;
      v92 = v105;
      v105 = v121;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v137 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v131, v125, v14), v128, v15), v129, v16), v130, v17);
      v138 = vmulq_s16(v126, v18);
      v139 = vmulq_s16(v127, v19);
      v140 = vaddl_u16(*v139.i8, *v138.i8);
      v141 = vaddl_high_u16(v138, v139);
      v142 = vaddw_s16(v140, *v137.i8);
      v143 = vaddw_high_s16(v141, v137);
      *v141.i8 = vshrn_n_s32(v142, 2uLL);
      v144 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v132, *v53.i8, *v11.i8, 2), *v66.i8, *v11.i8, 3), *v79.i8, v11, 4), *v92.i8, v11, 5), *v105.i8, v11, 6), *v141.i8, v11, 7);
      v121 = vshrn_high_n_s32(*v141.i8, v143, 2uLL);
      --v120;
      *v117 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v144, v22), 6uLL), vaddq_s32(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v133, v53, *v11.i8, 2), v66, *v11.i8, 3), v79, v11, 4), v92, v11, 5), v105, v11, 6), vshrn_n_s32(v143, 2uLL), v11, 7), v22), 6uLL);
      _X7 += v8;
      _X5 += v8;
      v117 = (v117 + v9);
    }

    while (v120 > 1);
    a7 += 2;
    a5 += 16;
    v145 = result - 8;
    v20 += 16;
    v21 += 16;
    v146 = result > 0xF;
    result = (result - 8);
  }

  while (v146);
  if (v145)
  {
LABEL_9:
    v147 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6 * a4);
    v149 = *(_X11 - 6);
    _X11 = (_X11 - 6);
    v150 = xmmword_27750DCF0[v7 - 1];
    v151 = vshr_n_u16(v149, 6uLL);
    v152 = vshr_n_u16(_X11[1], 6uLL);
    v153 = vshr_n_u16(_X11[2], 6uLL);
    __asm { PRFUM           #0, [X11,#0x1E] }

    _X10 = &_X11[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    _X10 = (_X11 + 2 * a4);
    v159 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v151, v152, 2uLL), *v147.i8, 1), v151, *v147.i8, 0), vext_s8(v151, v152, 4uLL), *v147.i8, 2), vext_s8(v151, v152, 6uLL), *v147.i8, 3), v152, v147, 4), vext_s8(v152, v153, 2uLL), v147, 5), vext_s8(v152, v153, 4uLL), v147, 6), vext_s8(v152, v153, 6uLL), v147, 7), 2uLL);
    v160 = vshr_n_u16(*_X10, 6uLL);
    v161 = vshr_n_u16(_X10[1], 6uLL);
    v162 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v168 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v160, v161, 2uLL), *v147.i8, 1), v160, *v147.i8, 0), vext_s8(v160, v161, 4uLL), *v147.i8, 2), vext_s8(v160, v161, 6uLL), *v147.i8, 3), v161, v147, 4), vext_s8(v161, v162, 2uLL), v147, 5), vext_s8(v161, v162, 4uLL), v147, 6), vext_s8(v161, v162, 6uLL), v147, 7), 2uLL);
    v169 = vshr_n_u16(*_X10, 6uLL);
    v170 = vshr_n_u16(_X10[1], 6uLL);
    v171 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v177 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v169, v170, 2uLL), *v147.i8, 1), v169, *v147.i8, 0), vext_s8(v169, v170, 4uLL), *v147.i8, 2), vext_s8(v169, v170, 6uLL), *v147.i8, 3), v170, v147, 4), vext_s8(v170, v171, 2uLL), v147, 5), vext_s8(v170, v171, 4uLL), v147, 6), vext_s8(v170, v171, 6uLL), v147, 7), 2uLL);
    v178 = vshr_n_u16(*_X10, 6uLL);
    v179 = vshr_n_u16(_X10[1], 6uLL);
    v180 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v186 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v178, v179, 2uLL), *v147.i8, 1), v178, *v147.i8, 0), vext_s8(v178, v179, 4uLL), *v147.i8, 2), vext_s8(v178, v179, 6uLL), *v147.i8, 3), v179, v147, 4), vext_s8(v179, v180, 2uLL), v147, 5), vext_s8(v179, v180, 4uLL), v147, 6), vext_s8(v179, v180, 6uLL), v147, 7), 2uLL);
    v187 = vshr_n_u16(*_X10, 6uLL);
    v188 = vshr_n_u16(_X10[1], 6uLL);
    v189 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v195 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v187, v188, 2uLL), *v147.i8, 1), v187, *v147.i8, 0), vext_s8(v187, v188, 4uLL), *v147.i8, 2), vext_s8(v187, v188, 6uLL), *v147.i8, 3), v188, v147, 4), vext_s8(v188, v189, 2uLL), v147, 5), vext_s8(v188, v189, 4uLL), v147, 6), vext_s8(v188, v189, 6uLL), v147, 7), 2uLL);
    v196 = vshr_n_u16(*_X10, 6uLL);
    v197 = vshr_n_u16(_X10[1], 6uLL);
    v198 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v204 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v196, v197, 2uLL), *v147.i8, 1), v196, *v147.i8, 0), vext_s8(v196, v197, 4uLL), *v147.i8, 2), vext_s8(v196, v197, 6uLL), *v147.i8, 3), v197, v147, 4), vext_s8(v197, v198, 2uLL), v147, 5), vext_s8(v197, v198, 4uLL), v147, 6), vext_s8(v197, v198, 6uLL), v147, 7), 2uLL);
    v205 = vshr_n_u16(*_X10, 6uLL);
    v206 = vshr_n_u16(_X10[1], 6uLL);
    v207 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v212 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v205, v206, 2uLL), *v147.i8, 1), v205, *v147.i8, 0), vext_s8(v205, v206, 4uLL), *v147.i8, 2), vext_s8(v205, v206, 6uLL), *v147.i8, 3), v206, v147, 4), vext_s8(v206, v207, 2uLL), v147, 5), vext_s8(v206, v207, 4uLL), v147, 6), vext_s8(v206, v207, 6uLL), v147, 7), 2uLL);
    v213 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v216.i64[0] = 0x38000000380000;
      v216.i64[1] = 0x38000000380000;
      v217 = vmlal_lane_s16(v216, v159, *v150.i8, 0);
      v218 = vshr_n_u16(_X12[-2], 6uLL);
      v219 = vshr_n_u16(_X12[-1], 6uLL);
      v220 = vshr_n_u16(*_X12, 6uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v224 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v218, v219, 2uLL), *v147.i8, 1), v218, *v147.i8, 0), vext_s8(v218, v219, 4uLL), *v147.i8, 2), vext_s8(v218, v219, 6uLL), *v147.i8, 3), v219, v147, 4), vext_s8(v219, v220, 2uLL), v147, 5), vext_s8(v219, v220, 4uLL), v147, 6), vext_s8(v219, v220, 6uLL), v147, 7);
      v225 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v217, v168, *v150.i8, 1), v177, *v150.i8, 2), v186, *v150.i8, 3), v195, v150, 4), v204, v150, 5), v212, v150, 6);
      v159 = v168;
      v168 = v177;
      v177 = v186;
      v186 = v195;
      v195 = v204;
      v204 = v212;
      v212 = vshrn_n_s32(v224, 2uLL);
      --v213;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_laneq_s16(v225, v212, v150, 7), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v213 > 1);
  }

  return result;
}

unint64_t sub_27741AD78(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, int16x4_t *a7)
{
  v160 = (a3 >> 16) & 3;
  if (result < 8)
  {
    v25 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = xmmword_27750DCF0[((a3 >> 16) & 3) - 1];
  v9 = vdupq_lane_s16(*v8.i8, 0);
  v10 = vdupq_lane_s16(*v8.i8, 1);
  v11 = vdupq_lane_s16(*v8.i8, 2);
  v12 = vdupq_laneq_s16(v8, 5);
  v13 = vdupq_laneq_s16(v8, 6);
  v14 = vdupq_laneq_s16(v8, 7);
  v15 = vdupq_lane_s16(*v8.i8, 3);
  v16 = vdupq_laneq_s16(v8, 4);
  v17 = 4 * a6;
  v18 = a2 + 2;
  v19 = &a5->i8[20 * a4];
  v20 = 4 * a4;
  v21 = &a5->i8[8 * a4];
  v22 = &a5->i8[18 * a4];
  v23 = &a5->i8[10 * a4];
  v24.i64[0] = 0xE000E000E000E000;
  v24.i64[1] = 0xE000E000E000E000;
  v25 = a7;
  do
  {
    _X17 = &a5->i8[-6 * a4];
    v27 = *_X17;
    _X17 += 30;
    v28 = v27;
    _X24 = &a5->i8[-4 * a4];
    v30 = *_X24;
    _X24 += 30;
    v31 = vshrq_n_u16(v28, 6uLL);
    v32 = vshrq_n_u16(v30, 6uLL);
    _X25 = &a5->i8[-2 * a4];
    v34 = *_X25;
    _X25 += 30;
    v35 = v34;
    _X26 = &a5[1].i8[14];
    _X27 = &a5->i8[2 * a4];
    v38 = *_X27;
    _X27 += 30;
    v39 = v38;
    _X28 = &a5->i8[4 * a4];
    v41 = *_X28;
    _X28 += 30;
    v42 = v41;
    _X30 = &a5->i8[6 * a4];
    v44 = *_X30;
    _X30 += 30;
    __asm { PRFM            #0, [X17] }

    v50 = vshrq_n_u16(v35, 6uLL);
    v51 = vshrq_n_u16(*a5, 6uLL);
    v52 = vshrq_n_u16(v39, 6uLL);
    v53 = vshrq_n_u16(v42, 6uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v56 = vshrq_n_u16(v44, 6uLL);
    __asm
    {
      PRFM            #0, [X26]
      PRFM            #0, [X27]
    }

    v59 = v23;
    v60 = v22;
    v61 = v21;
    __asm
    {
      PRFM            #0, [X28]
      PRFM            #0, [X30]
    }

    v64 = v19;
    v65 = v18;
    v66 = a7;
    v67 = a7 + 2 * a6;
    do
    {
      v68 = v50;
      v69 = v51;
      v50 = v52;
      v51 = v53;
      v52 = v56;
      _X10 = &v61[v7 + 30];
      v53 = vshrq_n_u16(*&v61[v7], 6uLL);
      __asm { PRFM            #0, [X10] }

      _X10 = &v59[v7 + 30];
      v56 = vshrq_n_u16(*&v59[v7], 6uLL);
      __asm { PRFM            #0, [X10] }

      _X10 = &v60[v7];
      __asm { PRFM            #0, [X10] }

      _X1 = &v64[v7];
      __asm
      {
        PRFM            #0, [X1]
        PRFUM           #0, [X10,#0xE]
        PRFUM           #0, [X1,#0xE]
      }

      v80 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v52, v13), v51, v12), v68, v11), v32, v10), v31, v9), v53, v14);
      v81 = vmulq_s16(v69, v15);
      v82 = vmulq_s16(v50, v16);
      v83 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v52, v12), v69, v11), v68, v10), v32, v9), v53, v13), v56, v14);
      v84 = vmulq_s16(v50, v15);
      v85 = vmulq_s16(v51, v16);
      *v66[v7 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v81.i8, *v82.i8), *v80.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v81, v82), v80), 2uLL), v24);
      *&v67[v7] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v84.i8, *v85.i8), *v83.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v84, v85), v83), 2uLL), v24);
      v67 += v17;
      v66 = (v66 + v17);
      v65 -= 2;
      v64 += v20;
      v61 += v20;
      v60 += v20;
      v59 += v20;
      v32 = v69;
      v31 = v68;
    }

    while (v65 > 2);
    v25 += 2;
    ++a5;
    v86 = result - 8;
    v7 += 16;
    v87 = result > 0xF;
    result = (result - 8);
  }

  while (v87);
  if (v86)
  {
LABEL_9:
    v88 = xmmword_27750DCF0[v160 - 1];
    _X10 = (a5->i64 - 6 * a4);
    v90 = *_X10;
    _X10 = (_X10 + 14);
    v91 = vshr_n_u16(v90, 6uLL);
    _X11 = (a5->i64 - 4 * a4);
    v93 = *_X11;
    _X11 = (_X11 + 14);
    v94 = vshr_n_u16(v93, 6uLL);
    _X12 = (a5->i64 - 2 * a4);
    v96 = *_X12;
    _X12 = (_X12 + 14);
    v97 = vshr_n_u16(v96, 6uLL);
    _X13 = &a5->i8[14];
    v99 = vshr_n_u16(*a5->i8, 6uLL);
    _X14 = (a5->i64 + 2 * a4);
    v101 = *_X14;
    _X14 = (_X14 + 14);
    v102 = vshr_n_u16(v101, 6uLL);
    _X15 = (a5->i64 + 4 * a4);
    v104 = *_X15;
    _X15 = (_X15 + 14);
    v105 = vshr_n_u16(v104, 6uLL);
    _X16 = (a5->i64 + 6 * a4);
    v107 = *_X16;
    _X16 = (_X16 + 14);
    v108 = vshr_n_u16(v107, 6uLL);
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

    v116 = 8 * a4;
    v117 = 10 * a4;
    v118 = a2 + 4;
    v119 = 3 * a4;
    v120 = 22 * a4;
    v121 = 12 * a4;
    v122 = 2 * a6;
    v123 = 14 * a4;
    do
    {
      _X2 = (a5->i64 + v117);
      _X3 = (a5->i64 + v121);
      _X5 = (a5->i64 + v123);
      _X17 = &a5->i8[v120];
      result = &a5->u64[v119];
      a5 = (a5 + v116);
      _X1 = &a5->i8[14];
      __asm { PRFM            #0, [X1] }

      v130 = *_X2;
      _X2 = (_X2 + 14);
      v131 = v130;
      __asm { PRFM            #0, [X2] }

      v133 = *_X3;
      _X3 = (_X3 + 14);
      v134 = v133;
      __asm { PRFM            #0, [X3] }

      v136 = *_X5;
      _X5 = (_X5 + 14);
      __asm { PRFM            #0, [X5] }

      v138 = vmlal_lane_s16(vmull_lane_s16(v99, *v88.i8, 1), v97, *v88.i8, 0);
      v139 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v94, *v88.i8, 1), v91, *v88.i8, 0), v97, *v88.i8, 2), v99, *v88.i8, 3);
      v140 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v97, *v88.i8, 1), v94, *v88.i8, 0), v99, *v88.i8, 2);
      v141 = vmlal_lane_s16(vmull_lane_s16(v102, *v88.i8, 1), v99, *v88.i8, 0);
      v99 = vshr_n_u16(*a5->i8, 6uLL);
      v142 = vmlal_laneq_s16(v139, v102, v88, 4);
      v143 = vmlal_lane_s16(v140, v102, *v88.i8, 3);
      v144 = vmlal_lane_s16(v138, v102, *v88.i8, 2);
      v91 = v102;
      v102 = vshr_n_u16(v131, 6uLL);
      v145 = vmlal_laneq_s16(v142, v105, v88, 5);
      v146 = vmlal_laneq_s16(v143, v105, v88, 4);
      v147 = vmlal_lane_s16(v144, v105, *v88.i8, 3);
      v148 = vmlal_lane_s16(v141, v105, *v88.i8, 2);
      v94 = v105;
      v105 = vshr_n_u16(v134, 6uLL);
      v149 = vmlal_laneq_s16(v145, v108, v88, 6);
      v150 = vmlal_laneq_s16(v146, v108, v88, 5);
      v151 = vmlal_laneq_s16(v147, v108, v88, 4);
      v152 = vmlal_lane_s16(v148, v108, *v88.i8, 3);
      v97 = v108;
      v108 = vshr_n_u16(v136, 6uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v25 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(v149, v99, v88, 7), 2uLL), 0xE000E000E000E000);
      v157 = (v25 + v122);
      *v157 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v150, v99, v88, 6), v102, v88, 7), 2uLL), 0xE000E000E000E000);
      v158 = (v157 + v122);
      *v158 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v151, v99, v88, 5), v102, v88, 6), v105, v88, 7), 2uLL), 0xE000E000E000E000);
      v159 = (v158 + v122);
      *v159 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v152, v99, v88, 4), v102, v88, 5), v105, v88, 6), v108, v88, 7), 2uLL), 0xE000E000E000E000);
      v118 -= 4;
      v25 = (v159 + v122);
    }

    while (v118 > 4);
  }

  return result;
}

uint64_t sub_27741B1E8(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
  v11 = vdupq_lane_s16(*v10.i8, 0);
  v12 = vdupq_lane_s16(*v10.i8, 1);
  v13 = vdupq_lane_s16(*v10.i8, 2);
  v14 = vdupq_laneq_s16(v10, 5);
  v15 = vdupq_laneq_s16(v10, 6);
  v16 = vdupq_laneq_s16(v10, 7);
  v17 = vdupq_lane_s16(*v10.i8, 3);
  v18 = vdupq_laneq_s16(v10, 4);
  v19 = (a5 - 6);
  v20.i64[0] = 0xE000E000E000E000;
  v20.i64[1] = 0xE000E000E000E000;
  do
  {
    v21 = a7;
    _X15 = v19;
    v23 = a2 + 1;
    do
    {
      v24 = vshrq_n_u16(*_X15, 6uLL);
      v25 = vshrq_n_u16(_X15[1], 6uLL);
      __asm { PRFUM           #0, [X15,#0x2E] }

      _X17 = &_X15->i8[v7 * 8];
      v32 = vextq_s8(v24, v25, 8uLL);
      v33 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v24, v11), vextq_s8(v24, v25, 2uLL), v12), vextq_s8(v24, v25, 4uLL), v13), vextq_s8(v24, v25, 0xAuLL), v14), vextq_s8(v24, v25, 0xCuLL), v15), vextq_s8(v24, v25, 0xEuLL), v16);
      v34 = vmulq_s16(vextq_s8(v24, v25, 6uLL), v17);
      v35 = vmulq_s16(v32, v18);
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      *v21 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v35.i8, *v34.i8), *v33.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v34, v35), v33), 2uLL), v20);
      --v23;
      _X15 = (_X15 + v8);
      v21 = (v21 + v9);
    }

    while (v23 > 1);
    a7 += 2;
    a5 += 16;
    v38 = result - 8;
    ++v19;
    v39 = result > 0xF;
    result = (result - 8);
  }

  while (v39);
  if (v38)
  {
LABEL_9:
    v40 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6);
    v42 = a2 + 1;
    do
    {
      v43 = vshr_n_u16(*_X11, 6uLL);
      v44 = vshr_n_u16(_X11[1], 6uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v46 = vshr_n_u16(_X11[2], 6uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v43, v44, 2uLL), *v40.i8, 1), v43, *v40.i8, 0), vext_s8(v43, v44, 4uLL), *v40.i8, 2), vext_s8(v43, v44, 6uLL), *v40.i8, 3), v44, v40, 4), vext_s8(v44, v46, 2uLL), v40, 5), vext_s8(v44, v46, 4uLL), v40, 6), vext_s8(v44, v46, 6uLL), v40, 7), 2uLL), 0xE000E000E000E000);
      --v42;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v42 > 1);
  }

  return result;
}

uint64_t sub_27741B398(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, int16x4_t *a7)
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
      *&a7->i8[v13] = vaddq_s16((*&vshrq_n_u16(*&a5->i8[v12], 2uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v10);
      *&v9[v13] = vaddq_s16((*&vshrq_n_u16(v15, 2uLL) & __PAIR128__(0xFFF0FFF0FFF0FFF0, 0xFFF0FFF0FFF0FFF0)), v10);
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
      *a7 = vadd_s16((*&vshr_n_u16(v19, 2uLL) & 0xFFF0FFF0FFF0FFF0), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16((*&vshr_n_u16(v20, 2uLL) & 0xFFF0FFF0FFF0FFF0), 0xE000E000E000E000);
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return result;
}

uint64_t sub_27741B480(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
  v20 = a5 + 16 * a4 - 6;
  v21 = a5 + 8 * a4 + 40;
  do
  {
    _X17 = (a5 - 6 * a4 - 6);
    v23 = vshrq_n_u16(*_X17, 6uLL);
    v24 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 6uLL);
    v25 = vextq_s8(v23, v24, 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    v31 = vextq_s8(v23, v24, 8uLL);
    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v36 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v23, v12), vextq_s8(v23, v24, 2uLL), v13), vextq_s8(v23, v24, 4uLL), v14), vextq_s8(v23, v24, 0xAuLL), v15), vextq_s8(v23, v24, 0xCuLL), v16), vextq_s8(v23, v24, 0xEuLL), v17);
    v37 = vmulq_s16(v25, v18);
    v38 = vmulq_s16(v31, v19);
    v39 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v38.i8, *v37.i8), *v36.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v37, v38), v36), 2uLL);
    v40 = vshrq_n_u16(*_X17, 6uLL);
    v41 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v47 = vextq_s8(v40, v41, 6uLL);
    v48 = vextq_s8(v40, v41, 8uLL);
    v49 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v40, v12), vextq_s8(v40, v41, 2uLL), v13), vextq_s8(v40, v41, 4uLL), v14), vextq_s8(v40, v41, 0xAuLL), v15), vextq_s8(v40, v41, 0xCuLL), v16), vextq_s8(v40, v41, 0xEuLL), v17);
    v50 = vmulq_s16(v47, v18);
    v51 = vmulq_s16(v48, v19);
    v52 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v51.i8, *v50.i8), *v49.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v50, v51), v49), 2uLL);
    v53 = vshrq_n_u16(*_X17, 6uLL);
    v54 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v60 = vextq_s8(v53, v54, 6uLL);
    v61 = vextq_s8(v53, v54, 8uLL);
    v62 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v53, v12), vextq_s8(v53, v54, 2uLL), v13), vextq_s8(v53, v54, 4uLL), v14), vextq_s8(v53, v54, 0xAuLL), v15), vextq_s8(v53, v54, 0xCuLL), v16), vextq_s8(v53, v54, 0xEuLL), v17);
    v63 = vmulq_s16(v60, v18);
    v64 = vmulq_s16(v61, v19);
    v65 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v64.i8, *v63.i8), *v62.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v63, v64), v62), 2uLL);
    v66 = vshrq_n_u16(*_X17, 6uLL);
    v67 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v73 = vextq_s8(v66, v67, 6uLL);
    v74 = vextq_s8(v66, v67, 8uLL);
    v75 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v66, v12), vextq_s8(v66, v67, 2uLL), v13), vextq_s8(v66, v67, 4uLL), v14), vextq_s8(v66, v67, 0xAuLL), v15), vextq_s8(v66, v67, 0xCuLL), v16), vextq_s8(v66, v67, 0xEuLL), v17);
    v76 = vmulq_s16(v73, v18);
    v77 = vmulq_s16(v74, v19);
    v78 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v77.i8, *v76.i8), *v75.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v76, v77), v75), 2uLL);
    v79 = vshrq_n_u16(*_X17, 6uLL);
    v80 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v86 = vextq_s8(v79, v80, 6uLL);
    v87 = vextq_s8(v79, v80, 8uLL);
    v88 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v79, v12), vextq_s8(v79, v80, 2uLL), v13), vextq_s8(v79, v80, 4uLL), v14), vextq_s8(v79, v80, 0xAuLL), v15), vextq_s8(v79, v80, 0xCuLL), v16), vextq_s8(v79, v80, 0xEuLL), v17);
    v89 = vmulq_s16(v86, v18);
    v90 = vmulq_s16(v87, v19);
    v91 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v90.i8, *v89.i8), *v88.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v89, v90), v88), 2uLL);
    v92 = vshrq_n_u16(*_X17, 6uLL);
    v93 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v99 = vextq_s8(v92, v93, 6uLL);
    v100 = vextq_s8(v92, v93, 8uLL);
    v101 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v92, v12), vextq_s8(v92, v93, 2uLL), v13), vextq_s8(v92, v93, 4uLL), v14), vextq_s8(v92, v93, 0xAuLL), v15), vextq_s8(v92, v93, 0xCuLL), v16), vextq_s8(v92, v93, 0xEuLL), v17);
    v102 = vmulq_s16(v99, v18);
    v103 = vmulq_s16(v100, v19);
    v104 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v103.i8, *v102.i8), *v101.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v102, v103), v101), 2uLL);
    v105 = vshrq_n_u16(*_X17, 6uLL);
    v106 = vshrq_n_u16(_X17[1], 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v111 = vextq_s8(v105, v106, 6uLL);
    v112 = vextq_s8(v105, v106, 8uLL);
    v113 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v105, v12), vextq_s8(v105, v106, 2uLL), v13), vextq_s8(v105, v106, 4uLL), v14), vextq_s8(v105, v106, 0xAuLL), v15), vextq_s8(v105, v106, 0xCuLL), v16), vextq_s8(v105, v106, 0xEuLL), v17);
    v114 = vmulq_s16(v111, v18);
    v115 = vmulq_s16(v112, v19);
    v116 = a7;
    _X5 = v21;
    _X7 = v20;
    v119 = a2 + 1;
    v120 = vshrn_high_n_s32(vshrn_n_s32(vaddw_s16(vaddl_u16(*v115.i8, *v114.i8), *v113.i8), 2uLL), vaddw_high_s16(vaddl_high_u16(v114, v115), v113), 2uLL);
    do
    {
      v121 = vshrq_n_u16(*(_X5 - 46), 6uLL);
      v122 = vshrq_n_u16(*(_X5 - 30), 6uLL);
      v123 = vextq_s8(v121, v122, 2uLL);
      v124 = vextq_s8(v121, v122, 4uLL);
      v125 = vextq_s8(v121, v122, 6uLL);
      v126 = vextq_s8(v121, v122, 8uLL);
      v127 = vextq_s8(v121, v122, 0xAuLL);
      v128 = vextq_s8(v121, v122, 0xCuLL);
      v129 = vextq_s8(v121, v122, 0xEuLL);
      v130 = vmlaq_s16(vmulq_s16(v121, v12), v123, v13);
      v131 = vmlal_lane_s16(vmull_lane_s16(*v52.i8, *v11.i8, 1), *v39.i8, *v11.i8, 0);
      v132 = vmlal_high_lane_s16(vmull_high_lane_s16(v52, *v11.i8, 1), v39, *v11.i8, 0);
      v39 = v52;
      v52 = v65;
      v65 = v78;
      v78 = v91;
      v91 = v104;
      v104 = v120;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v136 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v130, v124, v14), v127, v15), v128, v16), v129, v17);
      v137 = vmulq_s16(v125, v18);
      v138 = vmulq_s16(v126, v19);
      v139 = vaddl_u16(*v138.i8, *v137.i8);
      v140 = vaddl_high_u16(v137, v138);
      v141 = vaddw_s16(v139, *v136.i8);
      v142 = vaddw_high_s16(v140, v136);
      *v140.i8 = vshrn_n_s32(v141, 2uLL);
      v143 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v131, *v52.i8, *v11.i8, 2), *v65.i8, *v11.i8, 3), *v78.i8, v11, 4), *v91.i8, v11, 5), *v104.i8, v11, 6), *v140.i8, v11, 7);
      v120 = vshrn_high_n_s32(*v140.i8, v142, 2uLL);
      v144 = vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v132, v52, *v11.i8, 2), v65, *v11.i8, 3), v78, v11, 4), v91, v11, 5), v104, v11, 6), vshrn_n_s32(v142, 2uLL), v11, 7);
      v142.i64[0] = 0xFC00FC00FC00FC00;
      v142.i64[1] = 0xFC00FC00FC00FC00;
      --v119;
      *v116 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v143, 0xAuLL), v144, 0xAuLL), v142);
      _X7 += v8;
      _X5 += v8;
      v116 = (v116 + v9);
    }

    while (v119 > 1);
    a7 += 2;
    a5 += 16;
    v145 = result - 8;
    v20 += 16;
    v21 += 16;
    v146 = result > 0xF;
    result = (result - 8);
  }

  while (v146);
  if (v145)
  {
LABEL_9:
    v147 = xmmword_27750DCF0[(a3 & 3) - 1];
    v148 = xmmword_27750DCF0[v7 - 1];
    _X10 = (a5 - 6 * a4);
    v150 = *(_X10 - 6);
    _X10 = (_X10 - 6);
    v151 = vshr_n_u16(v150, 6uLL);
    v152 = vshr_n_u16(_X10[1], 6uLL);
    v153 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v159 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v151, v152, 2uLL), *v147.i8, 1), v151, *v147.i8, 0), vext_s8(v151, v152, 4uLL), *v147.i8, 2), vext_s8(v151, v152, 6uLL), *v147.i8, 3), v152, v147, 4), vext_s8(v152, v153, 2uLL), v147, 5), vext_s8(v152, v153, 4uLL), v147, 6), vext_s8(v152, v153, 6uLL), v147, 7), 2uLL);
    v160 = vshr_n_u16(*_X10, 6uLL);
    v161 = vshr_n_u16(_X10[1], 6uLL);
    v162 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v168 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v160, v161, 2uLL), *v147.i8, 1), v160, *v147.i8, 0), vext_s8(v160, v161, 4uLL), *v147.i8, 2), vext_s8(v160, v161, 6uLL), *v147.i8, 3), v161, v147, 4), vext_s8(v161, v162, 2uLL), v147, 5), vext_s8(v161, v162, 4uLL), v147, 6), vext_s8(v161, v162, 6uLL), v147, 7), 2uLL);
    v169 = vshr_n_u16(*_X10, 6uLL);
    v170 = vshr_n_u16(_X10[1], 6uLL);
    v171 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v177 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v169, v170, 2uLL), *v147.i8, 1), v169, *v147.i8, 0), vext_s8(v169, v170, 4uLL), *v147.i8, 2), vext_s8(v169, v170, 6uLL), *v147.i8, 3), v170, v147, 4), vext_s8(v170, v171, 2uLL), v147, 5), vext_s8(v170, v171, 4uLL), v147, 6), vext_s8(v170, v171, 6uLL), v147, 7), 2uLL);
    v178 = vshr_n_u16(*_X10, 6uLL);
    v179 = vshr_n_u16(_X10[1], 6uLL);
    v180 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v186 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v178, v179, 2uLL), *v147.i8, 1), v178, *v147.i8, 0), vext_s8(v178, v179, 4uLL), *v147.i8, 2), vext_s8(v178, v179, 6uLL), *v147.i8, 3), v179, v147, 4), vext_s8(v179, v180, 2uLL), v147, 5), vext_s8(v179, v180, 4uLL), v147, 6), vext_s8(v179, v180, 6uLL), v147, 7), 2uLL);
    v187 = vshr_n_u16(*_X10, 6uLL);
    v188 = vshr_n_u16(_X10[1], 6uLL);
    v189 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v195 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v187, v188, 2uLL), *v147.i8, 1), v187, *v147.i8, 0), vext_s8(v187, v188, 4uLL), *v147.i8, 2), vext_s8(v187, v188, 6uLL), *v147.i8, 3), v188, v147, 4), vext_s8(v188, v189, 2uLL), v147, 5), vext_s8(v188, v189, 4uLL), v147, 6), vext_s8(v188, v189, 6uLL), v147, 7), 2uLL);
    v196 = vshr_n_u16(*_X10, 6uLL);
    v197 = vshr_n_u16(_X10[1], 6uLL);
    v198 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v204 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v196, v197, 2uLL), *v147.i8, 1), v196, *v147.i8, 0), vext_s8(v196, v197, 4uLL), *v147.i8, 2), vext_s8(v196, v197, 6uLL), *v147.i8, 3), v197, v147, 4), vext_s8(v197, v198, 2uLL), v147, 5), vext_s8(v197, v198, 4uLL), v147, 6), vext_s8(v197, v198, 6uLL), v147, 7), 2uLL);
    v205 = vshr_n_u16(*_X10, 6uLL);
    v206 = vshr_n_u16(_X10[1], 6uLL);
    v207 = vshr_n_u16(_X10[2], 6uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v212 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v205, v206, 2uLL), *v147.i8, 1), v205, *v147.i8, 0), vext_s8(v205, v206, 4uLL), *v147.i8, 2), vext_s8(v205, v206, 6uLL), *v147.i8, 3), v206, v147, 4), vext_s8(v206, v207, 2uLL), v147, 5), vext_s8(v206, v207, 4uLL), v147, 6), vext_s8(v206, v207, 6uLL), v147, 7), 2uLL);
    v213 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v216 = vshr_n_u16(_X12[-2], 6uLL);
      v217 = vshr_n_u16(_X12[-1], 6uLL);
      v218 = vshr_n_u16(*_X12, 6uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v222 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v216, v217, 2uLL), *v147.i8, 1), v216, *v147.i8, 0), vext_s8(v216, v217, 4uLL), *v147.i8, 2), vext_s8(v216, v217, 6uLL), *v147.i8, 3), v217, v147, 4), vext_s8(v217, v218, 2uLL), v147, 5), vext_s8(v217, v218, 4uLL), v147, 6), vext_s8(v217, v218, 6uLL), v147, 7);
      v223 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v168, *v148.i8, 1), v159, *v148.i8, 0), v177, *v148.i8, 2), v186, *v148.i8, 3), v195, v148, 4), v204, v148, 5), v212, v148, 6);
      v159 = v168;
      v168 = v177;
      v177 = v186;
      v186 = v195;
      v195 = v204;
      v204 = v212;
      v212 = vshrn_n_s32(v222, 2uLL);
      --v213;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v223, v212, v148, 7), 0xAuLL), 0xFC00FC00FC00FC00);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v213 > 1);
  }

  return result;
}

unint64_t sub_27741BD10(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x4_t *a7)
{
  v164 = (a3 >> 16) & 3;
  if (result < 8)
  {
    v25 = a7;
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = xmmword_27750DCF0[((a3 >> 16) & 3) - 1];
  v9 = vdupq_lane_s16(*v8.i8, 0);
  v10 = vdupq_lane_s16(*v8.i8, 1);
  v11 = vdupq_lane_s16(*v8.i8, 2);
  v12 = vdupq_laneq_s16(v8, 5);
  v13 = vdupq_laneq_s16(v8, 6);
  v14 = vdupq_laneq_s16(v8, 7);
  v15 = vdupq_lane_s16(*v8.i8, 3);
  v16 = vdupq_laneq_s16(v8, 4);
  v17 = 4 * a6;
  v18 = a2 + 2;
  v19 = &a5->i8[20 * a4];
  v20 = 4 * a4;
  v21 = &a5->i8[8 * a4];
  v22 = &a5->i8[18 * a4];
  v23 = &a5->i8[10 * a4];
  v24.i64[0] = 0xFC00FC00FC00FC00;
  v24.i64[1] = 0xFC00FC00FC00FC00;
  v25 = a7;
  do
  {
    _X17 = &a5->i8[-6 * a4];
    v27 = *_X17;
    _X17 += 30;
    v28 = v27;
    _X24 = &a5->i8[-4 * a4];
    v30 = *_X24;
    _X24 += 30;
    v31 = vshrq_n_u16(v28, 6uLL);
    v32 = vshrq_n_u16(v30, 6uLL);
    _X25 = &a5->i8[-2 * a4];
    v34 = *_X25;
    _X25 += 30;
    v35 = v34;
    _X26 = &a5[1].i8[14];
    _X27 = &a5->i8[2 * a4];
    v38 = *_X27;
    _X27 += 30;
    v39 = v38;
    _X28 = &a5->i8[4 * a4];
    v41 = *_X28;
    _X28 += 30;
    v42 = v41;
    _X30 = &a5->i8[6 * a4];
    v44 = *_X30;
    _X30 += 30;
    __asm { PRFM            #0, [X17] }

    v50 = vshrq_n_u16(v35, 6uLL);
    v51 = vshrq_n_u16(*a5, 6uLL);
    v52 = vshrq_n_u16(v39, 6uLL);
    v53 = vshrq_n_u16(v42, 6uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v56 = vshrq_n_u16(v44, 6uLL);
    __asm
    {
      PRFM            #0, [X26]
      PRFM            #0, [X27]
    }

    v59 = v23;
    v60 = v22;
    v61 = v21;
    __asm
    {
      PRFM            #0, [X28]
      PRFM            #0, [X30]
    }

    v64 = v19;
    v65 = v18;
    v66 = a7;
    v67 = a7 + 2 * a6;
    do
    {
      v68 = v50;
      v69 = v51;
      v50 = v52;
      v51 = v53;
      _X10 = &v61[v7 + 30];
      __asm { PRFM            #0, [X10] }

      _X10 = &v59[v7 + 30];
      v52 = v56;
      __asm { PRFM            #0, [X10] }

      _X10 = &v60[v7];
      __asm { PRFM            #0, [X10] }

      _X1 = &v64[v7];
      v53 = vshrq_n_u16(*&v61[v7], 6uLL);
      __asm
      {
        PRFM            #0, [X1]
        PRFUM           #0, [X10,#0xE]
        PRFUM           #0, [X1,#0xE]
      }

      v80 = vmlaq_s16(vmulq_s16(v56, v13), v51, v12);
      v56 = vshrq_n_u16(*&v59[v7], 6uLL);
      v81 = vmlaq_s16(vmlaq_s16(vmlaq_s16(v80, v68, v11), v32, v10), v31, v9);
      v82 = vmulq_s16(v69, v15);
      v83 = vmulq_s16(v50, v16);
      v84 = vmlaq_s16(v81, v53, v14);
      v85 = vaddl_u16(*v82.i8, *v83.i8);
      v86 = vaddl_high_u16(v82, v83);
      v87 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v52, v12), v69, v11), v68, v10), v32, v9), v53, v13), v56, v14);
      v88 = vmulq_s16(v50, v15);
      v89 = vmulq_s16(v51, v16);
      *v66[v7 / 8].i8 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(v85, *v84.i8), 6uLL), vaddw_high_s16(v86, v84), 6uLL), v24);
      *&v67[v7] = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v88.i8, *v89.i8), *v87.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v88, v89), v87), 6uLL), v24);
      v67 += v17;
      v65 -= 2;
      v64 += v20;
      v66 = (v66 + v17);
      v61 += v20;
      v60 += v20;
      v59 += v20;
      v32 = v69;
      v31 = v68;
    }

    while (v65 > 2);
    v25 += 2;
    ++a5;
    v90 = result - 8;
    v7 += 16;
    v91 = result > 0xF;
    result = (result - 8);
  }

  while (v91);
  if (v90)
  {
LABEL_9:
    v92 = xmmword_27750DCF0[v164 - 1];
    _X10 = (a5->i64 - 6 * a4);
    v94 = *_X10;
    _X10 = (_X10 + 14);
    v95 = vshr_n_u16(v94, 6uLL);
    _X11 = (a5->i64 - 4 * a4);
    v97 = *_X11;
    _X11 = (_X11 + 14);
    v98 = vshr_n_u16(v97, 6uLL);
    _X12 = (a5->i64 - 2 * a4);
    v100 = *_X12;
    _X12 = (_X12 + 14);
    v101 = vshr_n_u16(v100, 6uLL);
    _X13 = &a5->i8[14];
    v103 = vshr_n_u16(*a5->i8, 6uLL);
    _X14 = (a5->i64 + 2 * a4);
    v105 = *_X14;
    _X14 = (_X14 + 14);
    v106 = vshr_n_u16(v105, 6uLL);
    _X15 = (a5->i64 + 4 * a4);
    v108 = *_X15;
    _X15 = (_X15 + 14);
    v109 = vshr_n_u16(v108, 6uLL);
    _X16 = (a5->i64 + 6 * a4);
    v111 = *_X16;
    _X16 = (_X16 + 14);
    v112 = vshr_n_u16(v111, 6uLL);
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

    v120 = 8 * a4;
    v121 = 10 * a4;
    v122 = a2 + 4;
    v123 = 3 * a4;
    v124 = 22 * a4;
    v125 = 12 * a4;
    v126 = 2 * a6;
    v127 = 14 * a4;
    do
    {
      _X2 = (a5->i64 + v121);
      _X3 = (a5->i64 + v125);
      _X5 = (a5->i64 + v127);
      _X17 = &a5->i8[v124];
      result = &a5->u64[v123];
      a5 = (a5 + v120);
      _X1 = &a5->i8[14];
      __asm { PRFM            #0, [X1] }

      v134 = *_X2;
      _X2 = (_X2 + 14);
      v135 = v134;
      __asm { PRFM            #0, [X2] }

      v137 = *_X3;
      _X3 = (_X3 + 14);
      v138 = v137;
      __asm { PRFM            #0, [X3] }

      v140 = *_X5;
      _X5 = (_X5 + 14);
      __asm { PRFM            #0, [X5] }

      v142 = vmlal_lane_s16(vmull_lane_s16(v103, *v92.i8, 1), v101, *v92.i8, 0);
      v143 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v98, *v92.i8, 1), v95, *v92.i8, 0), v101, *v92.i8, 2), v103, *v92.i8, 3);
      v144 = vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v101, *v92.i8, 1), v98, *v92.i8, 0), v103, *v92.i8, 2);
      v145 = vmlal_lane_s16(vmull_lane_s16(v106, *v92.i8, 1), v103, *v92.i8, 0);
      v103 = vshr_n_u16(*a5->i8, 6uLL);
      v146 = vmlal_laneq_s16(v143, v106, v92, 4);
      v147 = vmlal_lane_s16(v144, v106, *v92.i8, 3);
      v148 = vmlal_lane_s16(v142, v106, *v92.i8, 2);
      v95 = v106;
      v106 = vshr_n_u16(v135, 6uLL);
      v149 = vmlal_laneq_s16(v146, v109, v92, 5);
      v150 = vmlal_laneq_s16(v147, v109, v92, 4);
      v151 = vmlal_lane_s16(v148, v109, *v92.i8, 3);
      v152 = vmlal_lane_s16(v145, v109, *v92.i8, 2);
      v98 = v109;
      v109 = vshr_n_u16(v138, 6uLL);
      v153 = vmlal_laneq_s16(v149, v112, v92, 6);
      v154 = vmlal_laneq_s16(v150, v112, v92, 5);
      v155 = vmlal_laneq_s16(v151, v112, v92, 4);
      v156 = vmlal_lane_s16(v152, v112, *v92.i8, 3);
      v101 = v112;
      v112 = vshr_n_u16(v140, 6uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v25 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v153, v103, v92, 7), 6uLL), 0xFC00FC00FC00FC00);
      v161 = (v25 + v126);
      *v161 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v154, v103, v92, 6), v106, v92, 7), 6uLL), 0xFC00FC00FC00FC00);
      v162 = (v161 + v126);
      *v162 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v155, v103, v92, 5), v106, v92, 6), v109, v92, 7), 6uLL), 0xFC00FC00FC00FC00);
      v163 = (v162 + v126);
      *v163 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v156, v103, v92, 4), v106, v92, 5), v109, v92, 6), v112, v92, 7), 6uLL), 0xFC00FC00FC00FC00);
      v122 -= 4;
      v25 = (v163 + v126);
    }

    while (v122 > 4);
  }

  return result;
}

uint64_t sub_27741C184(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
  v11 = vdupq_lane_s16(*v10.i8, 0);
  v12 = vdupq_lane_s16(*v10.i8, 1);
  v13 = vdupq_lane_s16(*v10.i8, 2);
  v14 = vdupq_laneq_s16(v10, 5);
  v15 = vdupq_laneq_s16(v10, 6);
  v16 = vdupq_laneq_s16(v10, 7);
  v17 = vdupq_lane_s16(*v10.i8, 3);
  v18 = vdupq_laneq_s16(v10, 4);
  v19 = (a5 - 6);
  v20.i64[0] = 0xFC00FC00FC00FC00;
  v20.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v21 = a7;
    _X15 = v19;
    v23 = a2 + 1;
    do
    {
      v24 = vshrq_n_u16(*_X15, 6uLL);
      v25 = vshrq_n_u16(_X15[1], 6uLL);
      __asm { PRFUM           #0, [X15,#0x2E] }

      _X17 = &_X15->i8[v7 * 8];
      v32 = vextq_s8(v24, v25, 8uLL);
      v33 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v24, v11), vextq_s8(v24, v25, 2uLL), v12), vextq_s8(v24, v25, 4uLL), v13), vextq_s8(v24, v25, 0xAuLL), v14), vextq_s8(v24, v25, 0xCuLL), v15), vextq_s8(v24, v25, 0xEuLL), v16);
      v34 = vmulq_s16(vextq_s8(v24, v25, 6uLL), v17);
      v35 = vmulq_s16(v32, v18);
      __asm
      {
        PRFM            #0, [X17]
        PRFUM           #0, [X17,#0x1E]
      }

      *v21 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(vaddw_s16(vaddl_u16(*v35.i8, *v34.i8), *v33.i8), 6uLL), vaddw_high_s16(vaddl_high_u16(v34, v35), v33), 6uLL), v20);
      --v23;
      _X15 = (_X15 + v8);
      v21 = (v21 + v9);
    }

    while (v23 > 1);
    a7 += 2;
    a5 += 16;
    v38 = result - 8;
    ++v19;
    v39 = result > 0xF;
    result = (result - 8);
  }

  while (v39);
  if (v38)
  {
LABEL_9:
    v40 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6);
    v42 = a2 + 1;
    do
    {
      v43 = vshr_n_u16(*_X11, 6uLL);
      v44 = vshr_n_u16(_X11[1], 6uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v46 = vshr_n_u16(_X11[2], 6uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v43, v44, 2uLL), *v40.i8, 1), v43, *v40.i8, 0), vext_s8(v43, v44, 4uLL), *v40.i8, 2), vext_s8(v43, v44, 6uLL), *v40.i8, 3), v44, v40, 4), vext_s8(v44, v46, 2uLL), v40, 5), vext_s8(v44, v46, 4uLL), v40, 6), vext_s8(v44, v46, 6uLL), v40, 7), 6uLL), 0xFC00FC00FC00FC00);
      --v42;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v42 > 1);
  }

  return result;
}

double sub_27741C338(int a1, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, void *a7)
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
      v14 = vshrq_n_u16(*&a5->i8[v11], 6uLL);
      v15 = vshrq_n_u16(*&v10[v11], 6uLL);
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
      *v14.i8 = vshr_n_u16(*a5, 6uLL);
      v19 = vshr_n_u16(*(a5 + 2 * a4), 6uLL);
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

uint64_t sub_27741C3F8(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, const float *a7, uint64_t a8, int16x4_t *a9, uint64_t a10, void *a11)
{
  v12 = vld1q_dup_f32(a4);
  v11 = a4 + 1;
  v13 = a11;
  v15 = vld1q_dup_f32(a7);
  v14 = a7 + 1;
  v16 = vld1_dup_f32(v11);
  v17 = vld1_dup_f32(v14);
  v18 = a9;
  v19 = vaddq_s32(vshlq_n_s32(vaddl_s16(*v15.i8, *v12.i8), 0xDuLL), vshlq_s32(vaddl_s16(v17, v16), vdupq_n_s32(a3)));
  v20 = 4 * a10;
  v21 = vdupq_n_s32(~a3);
  v22 = 4 * a5;
  v23 = 4 * a8;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v24 = a9 + 2 * a8;
  v25 = a6 + 2 * a5;
  v26.i64[0] = 0xF800F800F800F800;
  v26.i64[1] = 0xF800F800F800F800;
  v27 = a11 + 2 * a10;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a2 + 2;
    do
    {
      v32 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *&v25[v29], *v12.i8), *&v24[v30], *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&v25[v29], v12), *&v24[v30], v15), v21)), 0), v26);
      *(v13 + v28) = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + v29), *v12.i8), *(v18 + v30), *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&a6->i8[v29], v12), *&v18->i8[v30], v15), v21)), 0), v26);
      *&v27[v28] = v32;
      v31 -= 2;
      v30 += v23;
      v29 += v22;
      v28 += v20;
    }

    while (v31 > 2);
    v13 += 2;
    a6 += 2;
    v18 += 2;
    v33 = result - 8;
    v24 += 16;
    v25 += 16;
    v27 += 16;
    v34 = result <= 15;
    result = (result - 8);
  }

  while (!v34);
  if (v33)
  {
LABEL_10:
    v35 = vextq_s8(v12, v12, 8uLL).u64[0];
    v36 = vextq_s8(v15, v15, 8uLL).u64[0];
    v37 = a2 + 2;
    v38.i64[0] = 0xF800F800F800F800;
    v38.i64[1] = 0xF800F800F800F800;
    do
    {
      v39 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *a6, *v12.i8), *v18, *v15.i8), v21)), vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + 2 * a5), v35), *(v18 + 2 * a8), v36), v21)), 0), v38);
      *v13 = v39.i64[0];
      *(v13 + 2 * a10) = v39.i64[1];
      v13 = (v13 + v20);
      a6 = (a6 + v22);
      v18 = (v18 + v23);
      v37 -= 2;
    }

    while (v37 > 2);
  }

  return result;
}

uint64_t sub_27741C5C4(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, uint64_t a7, void *a8)
{
  v9 = vld1q_dup_f32(a4);
  v8 = a4 + 1;
  v10 = vld1_dup_f32(v8);
  v11 = vdupq_n_s32(a3);
  v12 = vmlal_s16(vshlq_s32(vmovl_s16(v10), v11), *v9.i8, 0x2000200020002000);
  v13 = vnegq_s32(v11);
  v14 = 4 * a7;
  v15 = 4 * a5;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v16 = a6 + 2 * a5;
  v17.i64[0] = 0xF800F800F800F800;
  v17.i64[1] = 0xF800F800F800F800;
  v18 = a8 + 2 * a7;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 + 2;
    do
    {
      v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *&v16[v20], *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&v16[v20], v9), v13)), v17);
      *(a8 + v19) = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *(a6 + v20), *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&a6->i8[v20], v9), v13)), v17);
      *&v18[v19] = v22;
      v21 -= 2;
      v20 += v15;
      v19 += v14;
    }

    while (v21 > 2);
    a8 += 2;
    a6 += 2;
    v23 = result - 8;
    v16 += 16;
    v18 += 16;
    v24 = result <= 15;
    result = (result - 8);
  }

  while (!v24);
  if (v23)
  {
LABEL_10:
    v25 = vextq_s8(v9, v9, 8uLL).u64[0];
    v26 = a2 + 2;
    v27.i64[0] = 0xF800F800F800F800;
    v27.i64[1] = 0xF800F800F800F800;
    do
    {
      v28 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *a6, *v9.i8), v13)), vrshlq_s32(vmlal_s16(v12, *(a6 + 2 * a5), v25), v13)), v27);
      *a8 = v28.i64[0];
      *(a8 + 2 * a7) = v28.i64[1];
      a8 = (a8 + v14);
      a6 = (a6 + v15);
      v26 -= 2;
    }

    while (v26 > 2);
  }

  return result;
}

uint64_t sub_27741C710(uint64_t result, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v8 = 4 * a3;
  v9 = 4 * a5;
  v10 = 4 * a7;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = a6 + 2 * a5;
  v12 = a4 + 2 * a3;
  v13.i64[0] = 0x2000200020002000;
  v13.i64[1] = 0x2000200020002000;
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  v15 = a8 + 2 * a7;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = a2 + 2;
    do
    {
      *(a8 + v16) = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*(a4 + v17), *(a6 + v18)), v13), 2uLL), 0), v14);
      *&v15[v16] = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*&v12[v17], *&v11[v18]), v13), 2uLL), 0), v14);
      v19 -= 2;
      v18 += v9;
      v17 += v8;
      v16 += v10;
    }

    while (v19 > 2);
    a8 += 2;
    a4 += 2;
    a6 += 2;
    v20 = result - 8;
    v11 += 16;
    v12 += 16;
    v15 += 16;
    v21 = result <= 15;
    result = (result - 8);
  }

  while (!v21);
  if (v20)
  {
LABEL_10:
    v22 = a2 + 2;
    v23.i64[0] = 0x2000200020002000;
    v23.i64[1] = 0x2000200020002000;
    v24.i64[0] = 0xF800F800F800F800;
    v24.i64[1] = 0xF800F800F800F800;
    do
    {
      v25.i64[0] = *a4;
      v25.i64[1] = *(a4 + 2 * a3);
      v26.i64[0] = *a6;
      v26.i64[1] = *(a6 + 2 * a5);
      v27 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(v25, v26), v23), 2uLL), 0), v24);
      *a8 = v27.i64[0];
      *(a8 + 2 * a7) = v27.i64[1];
      a4 = (a4 + v8);
      a6 = (a6 + v9);
      a8 = (a8 + v10);
      v22 -= 2;
    }

    while (v22 > 2);
  }

  return result;
}

uint64_t sub_27741C858(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (a5 - 6 * a4 - 6);
    v16 = vshrq_n_u16(*_X17, 5uLL);
    v17 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 5uLL);
    v18 = vextq_s8(v16, v17, 2uLL);
    v19 = vextq_s8(v16, v17, 4uLL);
    v20 = vextq_s8(v16, v17, 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    v26 = vextq_s8(v16, v17, 8uLL);
    _X5 = &_X17->i8[8 * a4];
    v28 = vextq_s8(v16, v17, 0xAuLL);
    __asm { PRFM            #0, [X5] }

    v30 = vextq_s8(v16, v17, 0xCuLL);
    __asm { PRFUM           #0, [X5,#0x1E] }

    v32 = vextq_s8(v16, v17, 0xEuLL);
    _X17 = (_X17 + 2 * a4);
    v34 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v18.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v19.i8, *v10.i8, 2), *v20.i8, *v10.i8, 3), *v26.i8, v10, 4), *v28.i8, v10, 5), *v30.i8, v10, 6), *v32.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v18, *v10.i8, 1), v16, *v10.i8, 0), v19, *v10.i8, 2), v20, *v10.i8, 3), v26, v10, 4), v28, v10, 5), v30, v10, 6), v32, v10, 7), 3uLL);
    v35 = vshrq_n_u16(*_X17, 5uLL);
    v36 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v42 = vextq_s8(v35, v36, 2uLL);
    v43 = vextq_s8(v35, v36, 4uLL);
    v44 = vextq_s8(v35, v36, 6uLL);
    v45 = vextq_s8(v35, v36, 8uLL);
    v46 = vextq_s8(v35, v36, 0xAuLL);
    v47 = vextq_s8(v35, v36, 0xCuLL);
    v48 = vextq_s8(v35, v36, 0xEuLL);
    v49 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v10.i8, 1), *v35.i8, *v10.i8, 0), *v43.i8, *v10.i8, 2), *v44.i8, *v10.i8, 3), *v45.i8, v10, 4), *v46.i8, v10, 5), *v47.i8, v10, 6), *v48.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v10.i8, 1), v35, *v10.i8, 0), v43, *v10.i8, 2), v44, *v10.i8, 3), v45, v10, 4), v46, v10, 5), v47, v10, 6), v48, v10, 7), 3uLL);
    v50 = vshrq_n_u16(*_X17, 5uLL);
    v51 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v57 = vextq_s8(v50, v51, 2uLL);
    v58 = vextq_s8(v50, v51, 4uLL);
    v59 = vextq_s8(v50, v51, 6uLL);
    v60 = vextq_s8(v50, v51, 8uLL);
    v61 = vextq_s8(v50, v51, 0xAuLL);
    v62 = vextq_s8(v50, v51, 0xCuLL);
    v63 = vextq_s8(v50, v51, 0xEuLL);
    v64 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v57.i8, *v10.i8, 1), *v50.i8, *v10.i8, 0), *v58.i8, *v10.i8, 2), *v59.i8, *v10.i8, 3), *v60.i8, v10, 4), *v61.i8, v10, 5), *v62.i8, v10, 6), *v63.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v57, *v10.i8, 1), v50, *v10.i8, 0), v58, *v10.i8, 2), v59, *v10.i8, 3), v60, v10, 4), v61, v10, 5), v62, v10, 6), v63, v10, 7), 3uLL);
    v65 = vshrq_n_u16(*_X17, 5uLL);
    v66 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v72 = vextq_s8(v65, v66, 2uLL);
    v73 = vextq_s8(v65, v66, 4uLL);
    v74 = vextq_s8(v65, v66, 6uLL);
    v75 = vextq_s8(v65, v66, 8uLL);
    v76 = vextq_s8(v65, v66, 0xAuLL);
    v77 = vextq_s8(v65, v66, 0xCuLL);
    v78 = vextq_s8(v65, v66, 0xEuLL);
    v79 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v10.i8, 1), *v65.i8, *v10.i8, 0), *v73.i8, *v10.i8, 2), *v74.i8, *v10.i8, 3), *v75.i8, v10, 4), *v76.i8, v10, 5), *v77.i8, v10, 6), *v78.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v10.i8, 1), v65, *v10.i8, 0), v73, *v10.i8, 2), v74, *v10.i8, 3), v75, v10, 4), v76, v10, 5), v77, v10, 6), v78, v10, 7), 3uLL);
    v80 = vshrq_n_u16(*_X17, 5uLL);
    v81 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v87 = vextq_s8(v80, v81, 2uLL);
    v88 = vextq_s8(v80, v81, 4uLL);
    v89 = vextq_s8(v80, v81, 6uLL);
    v90 = vextq_s8(v80, v81, 8uLL);
    v91 = vextq_s8(v80, v81, 0xAuLL);
    v92 = vextq_s8(v80, v81, 0xCuLL);
    v93 = vextq_s8(v80, v81, 0xEuLL);
    v94 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v87.i8, *v10.i8, 1), *v80.i8, *v10.i8, 0), *v88.i8, *v10.i8, 2), *v89.i8, *v10.i8, 3), *v90.i8, v10, 4), *v91.i8, v10, 5), *v92.i8, v10, 6), *v93.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v87, *v10.i8, 1), v80, *v10.i8, 0), v88, *v10.i8, 2), v89, *v10.i8, 3), v90, v10, 4), v91, v10, 5), v92, v10, 6), v93, v10, 7), 3uLL);
    v95 = vshrq_n_u16(*_X17, 5uLL);
    v96 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v102 = vextq_s8(v95, v96, 2uLL);
    v103 = vextq_s8(v95, v96, 4uLL);
    v104 = vextq_s8(v95, v96, 6uLL);
    v105 = vextq_s8(v95, v96, 8uLL);
    v106 = vextq_s8(v95, v96, 0xAuLL);
    v107 = vextq_s8(v95, v96, 0xCuLL);
    v108 = vextq_s8(v95, v96, 0xEuLL);
    v109 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v102.i8, *v10.i8, 1), *v95.i8, *v10.i8, 0), *v103.i8, *v10.i8, 2), *v104.i8, *v10.i8, 3), *v105.i8, v10, 4), *v106.i8, v10, 5), *v107.i8, v10, 6), *v108.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v102, *v10.i8, 1), v95, *v10.i8, 0), v103, *v10.i8, 2), v104, *v10.i8, 3), v105, v10, 4), v106, v10, 5), v107, v10, 6), v108, v10, 7), 3uLL);
    v110 = vshrq_n_u16(*_X17, 5uLL);
    v111 = vshrq_n_u16(_X17[1], 5uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v116 = vextq_s8(v110, v111, 2uLL);
    v117 = vextq_s8(v110, v111, 4uLL);
    v118 = vextq_s8(v110, v111, 6uLL);
    v119 = vextq_s8(v110, v111, 8uLL);
    v120 = vextq_s8(v110, v111, 0xAuLL);
    v121 = vextq_s8(v110, v111, 0xCuLL);
    v122 = vextq_s8(v110, v111, 0xEuLL);
    v123 = a7;
    _X5 = v13;
    _X7 = v12;
    v126 = a2 + 1;
    v127 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v116.i8, *v10.i8, 1), *v110.i8, *v10.i8, 0), *v117.i8, *v10.i8, 2), *v118.i8, *v10.i8, 3), *v119.i8, v10, 4), *v120.i8, v10, 5), *v121.i8, v10, 6), *v122.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v116, *v10.i8, 1), v110, *v10.i8, 0), v117, *v10.i8, 2), v118, *v10.i8, 3), v119, v10, 4), v120, v10, 5), v121, v10, 6), v122, v10, 7), 3uLL);
    do
    {
      v128 = vshrq_n_u16(*(_X5 - 46), 5uLL);
      v129 = vshrq_n_u16(*(_X5 - 30), 5uLL);
      v130 = vextq_s8(v128, v129, 2uLL);
      v131 = vextq_s8(v128, v129, 4uLL);
      v132 = vextq_s8(v128, v129, 6uLL);
      v133 = vextq_s8(v128, v129, 8uLL);
      v134 = vextq_s8(v128, v129, 0xAuLL);
      v135 = vextq_s8(v128, v129, 0xCuLL);
      v136 = vextq_s8(v128, v129, 0xEuLL);
      v137 = vmlal_lane_s16(vmull_lane_s16(*v130.i8, *v10.i8, 1), *v128.i8, *v10.i8, 0);
      v138 = vmlal_high_lane_s16(vmull_high_lane_s16(v130, *v10.i8, 1), v128, *v10.i8, 0);
      v139 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v11.i8, 0), *v49.i8, *v11.i8, 1);
      v140 = vmlal_high_lane_s16(vmull_high_lane_s16(v34, *v11.i8, 0), v49, *v11.i8, 1);
      v34 = v49;
      v49 = v64;
      v64 = v79;
      v79 = v94;
      v94 = v109;
      v109 = v127;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v144 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v138, v131, *v10.i8, 2), v132, *v10.i8, 3), v133, v10, 4), v134, v10, 5), v135, v10, 6), v136, v10, 7);
      v145 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v137, *v131.i8, *v10.i8, 2), *v132.i8, *v10.i8, 3), *v133.i8, v10, 4), *v134.i8, v10, 5), *v135.i8, v10, 6), *v136.i8, v10, 7), 3uLL);
      v146 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v139, *v49.i8, *v11.i8, 2), *v64.i8, *v11.i8, 3), *v79.i8, v11, 4), *v94.i8, v11, 5), *v109.i8, v11, 6), v145, v11, 7);
      v127 = vshrn_high_n_s32(v145, v144, 3uLL);
      --v126;
      *v123 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v146, v14), 6uLL), vaddq_s32(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v140, v49, *v11.i8, 2), v64, *v11.i8, 3), v79, v11, 4), v94, v11, 5), v109, v11, 6), vshrn_n_s32(v144, 3uLL), v11, 7), v14), 6uLL);
      _X7 += v8;
      _X5 += v8;
      v123 = (v123 + v9);
    }

    while (v126 > 1);
    a7 += 2;
    a5 += 16;
    v147 = result - 8;
    v12 += 16;
    v13 += 16;
    v148 = result > 0xF;
    result = (result - 8);
  }

  while (v148);
  if (v147)
  {
LABEL_9:
    v149 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6 * a4);
    v151 = *(_X11 - 6);
    _X11 = (_X11 - 6);
    v152 = xmmword_27750DCF0[v7 - 1];
    v153 = vshr_n_u16(v151, 5uLL);
    v154 = vshr_n_u16(_X11[1], 5uLL);
    v155 = vshr_n_u16(_X11[2], 5uLL);
    __asm { PRFUM           #0, [X11,#0x1E] }

    _X10 = &_X11[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    _X10 = (_X11 + 2 * a4);
    v161 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v153, v154, 2uLL), *v149.i8, 1), v153, *v149.i8, 0), vext_s8(v153, v154, 4uLL), *v149.i8, 2), vext_s8(v153, v154, 6uLL), *v149.i8, 3), v154, v149, 4), vext_s8(v154, v155, 2uLL), v149, 5), vext_s8(v154, v155, 4uLL), v149, 6), vext_s8(v154, v155, 6uLL), v149, 7), 3uLL);
    v162 = vshr_n_u16(*_X10, 5uLL);
    v163 = vshr_n_u16(_X10[1], 5uLL);
    v164 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v170 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v162, v163, 2uLL), *v149.i8, 1), v162, *v149.i8, 0), vext_s8(v162, v163, 4uLL), *v149.i8, 2), vext_s8(v162, v163, 6uLL), *v149.i8, 3), v163, v149, 4), vext_s8(v163, v164, 2uLL), v149, 5), vext_s8(v163, v164, 4uLL), v149, 6), vext_s8(v163, v164, 6uLL), v149, 7), 3uLL);
    v171 = vshr_n_u16(*_X10, 5uLL);
    v172 = vshr_n_u16(_X10[1], 5uLL);
    v173 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v179 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v171, v172, 2uLL), *v149.i8, 1), v171, *v149.i8, 0), vext_s8(v171, v172, 4uLL), *v149.i8, 2), vext_s8(v171, v172, 6uLL), *v149.i8, 3), v172, v149, 4), vext_s8(v172, v173, 2uLL), v149, 5), vext_s8(v172, v173, 4uLL), v149, 6), vext_s8(v172, v173, 6uLL), v149, 7), 3uLL);
    v180 = vshr_n_u16(*_X10, 5uLL);
    v181 = vshr_n_u16(_X10[1], 5uLL);
    v182 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v188 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v180, v181, 2uLL), *v149.i8, 1), v180, *v149.i8, 0), vext_s8(v180, v181, 4uLL), *v149.i8, 2), vext_s8(v180, v181, 6uLL), *v149.i8, 3), v181, v149, 4), vext_s8(v181, v182, 2uLL), v149, 5), vext_s8(v181, v182, 4uLL), v149, 6), vext_s8(v181, v182, 6uLL), v149, 7), 3uLL);
    v189 = vshr_n_u16(*_X10, 5uLL);
    v190 = vshr_n_u16(_X10[1], 5uLL);
    v191 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v197 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v189, v190, 2uLL), *v149.i8, 1), v189, *v149.i8, 0), vext_s8(v189, v190, 4uLL), *v149.i8, 2), vext_s8(v189, v190, 6uLL), *v149.i8, 3), v190, v149, 4), vext_s8(v190, v191, 2uLL), v149, 5), vext_s8(v190, v191, 4uLL), v149, 6), vext_s8(v190, v191, 6uLL), v149, 7), 3uLL);
    v198 = vshr_n_u16(*_X10, 5uLL);
    v199 = vshr_n_u16(_X10[1], 5uLL);
    v200 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v206 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v198, v199, 2uLL), *v149.i8, 1), v198, *v149.i8, 0), vext_s8(v198, v199, 4uLL), *v149.i8, 2), vext_s8(v198, v199, 6uLL), *v149.i8, 3), v199, v149, 4), vext_s8(v199, v200, 2uLL), v149, 5), vext_s8(v199, v200, 4uLL), v149, 6), vext_s8(v199, v200, 6uLL), v149, 7), 3uLL);
    v207 = vshr_n_u16(*_X10, 5uLL);
    v208 = vshr_n_u16(_X10[1], 5uLL);
    v209 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v214 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v207, v208, 2uLL), *v149.i8, 1), v207, *v149.i8, 0), vext_s8(v207, v208, 4uLL), *v149.i8, 2), vext_s8(v207, v208, 6uLL), *v149.i8, 3), v208, v149, 4), vext_s8(v208, v209, 2uLL), v149, 5), vext_s8(v208, v209, 4uLL), v149, 6), vext_s8(v208, v209, 6uLL), v149, 7), 3uLL);
    v215 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v218.i64[0] = 0x38000000380000;
      v218.i64[1] = 0x38000000380000;
      v219 = vmlal_lane_s16(v218, v161, *v152.i8, 0);
      v220 = vshr_n_u16(_X12[-2], 5uLL);
      v221 = vshr_n_u16(_X12[-1], 5uLL);
      v222 = vshr_n_u16(*_X12, 5uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v226 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v220, v221, 2uLL), *v149.i8, 1), v220, *v149.i8, 0), vext_s8(v220, v221, 4uLL), *v149.i8, 2), vext_s8(v220, v221, 6uLL), *v149.i8, 3), v221, v149, 4), vext_s8(v221, v222, 2uLL), v149, 5), vext_s8(v221, v222, 4uLL), v149, 6), vext_s8(v221, v222, 6uLL), v149, 7);
      v227 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v219, v170, *v152.i8, 1), v179, *v152.i8, 2), v188, *v152.i8, 3), v197, v152, 4), v206, v152, 5), v214, v152, 6);
      v161 = v170;
      v170 = v179;
      v179 = v188;
      v188 = v197;
      v197 = v206;
      v206 = v214;
      v214 = vshrn_n_s32(v226, 3uLL);
      --v215;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_laneq_s16(v227, v214, v152, 7), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v215 > 1);
  }

  return result;
}

unint64_t sub_27741D13C(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, int16x4_t *a7)
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
    v23 = vshrq_n_u16(v20, 5uLL);
    v24 = vshrq_n_u16(v22, 5uLL);
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

    v42 = vshrq_n_u16(v27, 5uLL);
    v43 = vshrq_n_u16(*a5, 5uLL);
    v44 = vshrq_n_u16(v31, 5uLL);
    v45 = vshrq_n_u16(v34, 5uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v48 = vshrq_n_u16(v36, 5uLL);
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
      v48 = vshrq_n_u16(*&v51[v7], 5uLL);
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

      v45 = vshrq_n_u16(*&v53[v7], 5uLL);
      *v58[v7 / 8].i8 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v69, *v42.i8, v8, 4), *v43.i8, v8, 5), *v44.i8, v8, 6), *v45.i8, v8, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v70, v42, v8, 4), v43, v8, 5), v44, v8, 6), v45, v8, 7), 3uLL), v13);
      *&v59[v7] = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v71, *v42.i8, *v8.i8, 3), *v43.i8, v8, 4), *v44.i8, v8, 5), *v45.i8, v8, 6), *v48.i8, v8, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v72, v42, *v8.i8, 3), v43, v8, 4), v44, v8, 5), v45, v8, 6), v48, v8, 7), 3uLL), v13);
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
    v83 = vshr_n_u16(v82, 5uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 5uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 5uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 5uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 5uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 5uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 5uLL);
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
      v91 = vshr_n_u16(*a5->i8, 5uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 5uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 5uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 5uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(v141, v91, v80, 7), 3uLL), 0xE000E000E000E000);
      v149 = (v16 + v114);
      *v149 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7), 3uLL), 0xE000E000E000E000);
      v150 = (v149 + v114);
      *v150 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7), 3uLL), 0xE000E000E000E000);
      v151 = (v150 + v114);
      *v151 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7), 3uLL), 0xE000E000E000E000);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_27741D5A4(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
      v16 = vshrq_n_u16(*_X15, 5uLL);
      v17 = vshrq_n_u16(_X15[1], 5uLL);
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

      *v13 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v25.i8, *v10.i8, 2), *v26.i8, *v10.i8, 3), *v27.i8, v10, 4), *v28.i8, v10, 5), *v29.i8, v10, 6), *v30.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v10.i8, 1), v16, *v10.i8, 0), v25, *v10.i8, 2), v26, *v10.i8, 3), v27, v10, 4), v28, v10, 5), v29, v10, 6), v30, v10, 7), 3uLL), v12);
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
      v38 = vshr_n_u16(*_X11, 5uLL);
      v39 = vshr_n_u16(_X11[1], 5uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v41 = vshr_n_u16(_X11[2], 5uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vadd_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v38, v39, 2uLL), *v35.i8, 1), v38, *v35.i8, 0), vext_s8(v38, v39, 4uLL), *v35.i8, 2), vext_s8(v38, v39, 6uLL), *v35.i8, 3), v39, v35, 4), vext_s8(v39, v41, 2uLL), v35, 5), vext_s8(v39, v41, 4uLL), v35, 6), vext_s8(v39, v41, 6uLL), v35, 7), 3uLL), 0xE000E000E000E000);
      --v37;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v37 > 1);
  }

  return result;
}

uint64_t sub_27741D744(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, int16x4_t *a7)
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
      *&a7->i8[v13] = vaddq_s16((*&vshrq_n_u16(*&a5->i8[v12], 2uLL) & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8)), v10);
      *&v9[v13] = vaddq_s16((*&vshrq_n_u16(v15, 2uLL) & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8)), v10);
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
      *a7 = vadd_s16((*&vshr_n_u16(v19, 2uLL) & 0xFFF8FFF8FFF8FFF8), 0xE000E000E000E000);
      *(a7 + 2 * a6) = vadd_s16((*&vshr_n_u16(v20, 2uLL) & 0xFFF8FFF8FFF8FFF8), 0xE000E000E000E000);
      a7 = (a7 + v8);
      v18 -= 2;
    }

    while (v18 > 2);
  }

  return result;
}

uint64_t sub_27741D82C(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
    v15 = vshrq_n_u16(*_X17, 5uLL);
    v16 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 5uLL);
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
    v33 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v17.i8, *v10.i8, 1), *v15.i8, *v10.i8, 0), *v18.i8, *v10.i8, 2), *v19.i8, *v10.i8, 3), *v25.i8, v10, 4), *v27.i8, v10, 5), *v29.i8, v10, 6), *v31.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v17, *v10.i8, 1), v15, *v10.i8, 0), v18, *v10.i8, 2), v19, *v10.i8, 3), v25, v10, 4), v27, v10, 5), v29, v10, 6), v31, v10, 7), 3uLL);
    v34 = vshrq_n_u16(*_X17, 5uLL);
    v35 = vshrq_n_u16(_X17[1], 5uLL);
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
    v48 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v41.i8, *v10.i8, 1), *v34.i8, *v10.i8, 0), *v42.i8, *v10.i8, 2), *v43.i8, *v10.i8, 3), *v44.i8, v10, 4), *v45.i8, v10, 5), *v46.i8, v10, 6), *v47.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v41, *v10.i8, 1), v34, *v10.i8, 0), v42, *v10.i8, 2), v43, *v10.i8, 3), v44, v10, 4), v45, v10, 5), v46, v10, 6), v47, v10, 7), 3uLL);
    v49 = vshrq_n_u16(*_X17, 5uLL);
    v50 = vshrq_n_u16(_X17[1], 5uLL);
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
    v63 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v10.i8, 1), *v49.i8, *v10.i8, 0), *v57.i8, *v10.i8, 2), *v58.i8, *v10.i8, 3), *v59.i8, v10, 4), *v60.i8, v10, 5), *v61.i8, v10, 6), *v62.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v10.i8, 1), v49, *v10.i8, 0), v57, *v10.i8, 2), v58, *v10.i8, 3), v59, v10, 4), v60, v10, 5), v61, v10, 6), v62, v10, 7), 3uLL);
    v64 = vshrq_n_u16(*_X17, 5uLL);
    v65 = vshrq_n_u16(_X17[1], 5uLL);
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
    v78 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v71.i8, *v10.i8, 1), *v64.i8, *v10.i8, 0), *v72.i8, *v10.i8, 2), *v73.i8, *v10.i8, 3), *v74.i8, v10, 4), *v75.i8, v10, 5), *v76.i8, v10, 6), *v77.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v71, *v10.i8, 1), v64, *v10.i8, 0), v72, *v10.i8, 2), v73, *v10.i8, 3), v74, v10, 4), v75, v10, 5), v76, v10, 6), v77, v10, 7), 3uLL);
    v79 = vshrq_n_u16(*_X17, 5uLL);
    v80 = vshrq_n_u16(_X17[1], 5uLL);
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
    v93 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v86.i8, *v10.i8, 1), *v79.i8, *v10.i8, 0), *v87.i8, *v10.i8, 2), *v88.i8, *v10.i8, 3), *v89.i8, v10, 4), *v90.i8, v10, 5), *v91.i8, v10, 6), *v92.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v86, *v10.i8, 1), v79, *v10.i8, 0), v87, *v10.i8, 2), v88, *v10.i8, 3), v89, v10, 4), v90, v10, 5), v91, v10, 6), v92, v10, 7), 3uLL);
    v94 = vshrq_n_u16(*_X17, 5uLL);
    v95 = vshrq_n_u16(_X17[1], 5uLL);
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
    v108 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v10.i8, 1), *v94.i8, *v10.i8, 0), *v102.i8, *v10.i8, 2), *v103.i8, *v10.i8, 3), *v104.i8, v10, 4), *v105.i8, v10, 5), *v106.i8, v10, 6), *v107.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v10.i8, 1), v94, *v10.i8, 0), v102, *v10.i8, 2), v103, *v10.i8, 3), v104, v10, 4), v105, v10, 5), v106, v10, 6), v107, v10, 7), 3uLL);
    v109 = vshrq_n_u16(*_X17, 5uLL);
    v110 = vshrq_n_u16(_X17[1], 5uLL);
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
    v126 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v10.i8, 1), *v109.i8, *v10.i8, 0), *v116.i8, *v10.i8, 2), *v117.i8, *v10.i8, 3), *v118.i8, v10, 4), *v119.i8, v10, 5), *v120.i8, v10, 6), *v121.i8, v10, 7), 3uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v10.i8, 1), v109, *v10.i8, 0), v116, *v10.i8, 2), v117, *v10.i8, 3), v118, v10, 4), v119, v10, 5), v120, v10, 6), v121, v10, 7), 3uLL);
    do
    {
      v127 = vshrq_n_u16(*(_X5 - 46), 5uLL);
      v128 = vshrq_n_u16(*(_X5 - 30), 5uLL);
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
      v144 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v136, *v130.i8, *v10.i8, 2), *v131.i8, *v10.i8, 3), *v132.i8, v10, 4), *v133.i8, v10, 5), *v134.i8, v10, 6), *v135.i8, v10, 7), 3uLL);
      v145 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v138, *v48.i8, *v11.i8, 2), *v63.i8, *v11.i8, 3), *v78.i8, v11, 4), *v93.i8, v11, 5), *v108.i8, v11, 6), v144, v11, 7);
      v126 = vshrn_high_n_s32(v144, v143, 3uLL);
      v135.i64[0] = 0xF800F800F800F800;
      v135.i64[1] = 0xF800F800F800F800;
      --v125;
      *v122 = vminq_u16(vqrshrun_high_n_s32(vqrshrun_n_s32(v145, 9uLL), vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v139, v48, *v11.i8, 2), v63, *v11.i8, 3), v78, v11, 4), v93, v11, 5), v108, v11, 6), vshrn_n_s32(v143, 3uLL), v11, 7), 9uLL), v135);
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
    v152 = vshr_n_u16(v151, 5uLL);
    v153 = vshr_n_u16(_X10[1], 5uLL);
    v154 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v160 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v152, v153, 2uLL), *v148.i8, 1), v152, *v148.i8, 0), vext_s8(v152, v153, 4uLL), *v148.i8, 2), vext_s8(v152, v153, 6uLL), *v148.i8, 3), v153, v148, 4), vext_s8(v153, v154, 2uLL), v148, 5), vext_s8(v153, v154, 4uLL), v148, 6), vext_s8(v153, v154, 6uLL), v148, 7), 3uLL);
    v161 = vshr_n_u16(*_X10, 5uLL);
    v162 = vshr_n_u16(_X10[1], 5uLL);
    v163 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v169 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v161, v162, 2uLL), *v148.i8, 1), v161, *v148.i8, 0), vext_s8(v161, v162, 4uLL), *v148.i8, 2), vext_s8(v161, v162, 6uLL), *v148.i8, 3), v162, v148, 4), vext_s8(v162, v163, 2uLL), v148, 5), vext_s8(v162, v163, 4uLL), v148, 6), vext_s8(v162, v163, 6uLL), v148, 7), 3uLL);
    v170 = vshr_n_u16(*_X10, 5uLL);
    v171 = vshr_n_u16(_X10[1], 5uLL);
    v172 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v178 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v170, v171, 2uLL), *v148.i8, 1), v170, *v148.i8, 0), vext_s8(v170, v171, 4uLL), *v148.i8, 2), vext_s8(v170, v171, 6uLL), *v148.i8, 3), v171, v148, 4), vext_s8(v171, v172, 2uLL), v148, 5), vext_s8(v171, v172, 4uLL), v148, 6), vext_s8(v171, v172, 6uLL), v148, 7), 3uLL);
    v179 = vshr_n_u16(*_X10, 5uLL);
    v180 = vshr_n_u16(_X10[1], 5uLL);
    v181 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v187 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v179, v180, 2uLL), *v148.i8, 1), v179, *v148.i8, 0), vext_s8(v179, v180, 4uLL), *v148.i8, 2), vext_s8(v179, v180, 6uLL), *v148.i8, 3), v180, v148, 4), vext_s8(v180, v181, 2uLL), v148, 5), vext_s8(v180, v181, 4uLL), v148, 6), vext_s8(v180, v181, 6uLL), v148, 7), 3uLL);
    v188 = vshr_n_u16(*_X10, 5uLL);
    v189 = vshr_n_u16(_X10[1], 5uLL);
    v190 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v196 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v188, v189, 2uLL), *v148.i8, 1), v188, *v148.i8, 0), vext_s8(v188, v189, 4uLL), *v148.i8, 2), vext_s8(v188, v189, 6uLL), *v148.i8, 3), v189, v148, 4), vext_s8(v189, v190, 2uLL), v148, 5), vext_s8(v189, v190, 4uLL), v148, 6), vext_s8(v189, v190, 6uLL), v148, 7), 3uLL);
    v197 = vshr_n_u16(*_X10, 5uLL);
    v198 = vshr_n_u16(_X10[1], 5uLL);
    v199 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v205 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v197, v198, 2uLL), *v148.i8, 1), v197, *v148.i8, 0), vext_s8(v197, v198, 4uLL), *v148.i8, 2), vext_s8(v197, v198, 6uLL), *v148.i8, 3), v198, v148, 4), vext_s8(v198, v199, 2uLL), v148, 5), vext_s8(v198, v199, 4uLL), v148, 6), vext_s8(v198, v199, 6uLL), v148, 7), 3uLL);
    v206 = vshr_n_u16(*_X10, 5uLL);
    v207 = vshr_n_u16(_X10[1], 5uLL);
    v208 = vshr_n_u16(_X10[2], 5uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v213 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v206, v207, 2uLL), *v148.i8, 1), v206, *v148.i8, 0), vext_s8(v206, v207, 4uLL), *v148.i8, 2), vext_s8(v206, v207, 6uLL), *v148.i8, 3), v207, v148, 4), vext_s8(v207, v208, 2uLL), v148, 5), vext_s8(v207, v208, 4uLL), v148, 6), vext_s8(v207, v208, 6uLL), v148, 7), 3uLL);
    v214 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v217 = vshr_n_u16(_X12[-2], 5uLL);
      v218 = vshr_n_u16(_X12[-1], 5uLL);
      v219 = vshr_n_u16(*_X12, 5uLL);
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
      v213 = vshrn_n_s32(v223, 3uLL);
      --v214;
      _X11 += v8;
      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v224, v213, v149, 7), 9uLL), 0xF800F800F800F800);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v214 > 1);
  }

  return result;
}

unint64_t sub_27741E114(unint64_t result, int a2, unint64_t a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x4_t *a7)
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
  v13.i64[0] = 0xF800F800F800F800;
  v13.i64[1] = 0xF800F800F800F800;
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
    v23 = vshrq_n_u16(v20, 5uLL);
    v24 = vshrq_n_u16(v22, 5uLL);
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

    v42 = vshrq_n_u16(v27, 5uLL);
    v43 = vshrq_n_u16(*a5, 5uLL);
    v44 = vshrq_n_u16(v31, 5uLL);
    v45 = vshrq_n_u16(v34, 5uLL);
    __asm
    {
      PRFM            #0, [X24]
      PRFM            #0, [X25]
    }

    v48 = vshrq_n_u16(v36, 5uLL);
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
      v48 = vshrq_n_u16(*&v51[v7], 5uLL);
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

      v45 = vshrq_n_u16(*&v53[v7], 5uLL);
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
    v83 = vshr_n_u16(v82, 5uLL);
    _X11 = (a5->i64 - 4 * a4);
    v85 = *_X11;
    _X11 = (_X11 + 14);
    v86 = vshr_n_u16(v85, 5uLL);
    _X12 = (a5->i64 - 2 * a4);
    v88 = *_X12;
    _X12 = (_X12 + 14);
    v89 = vshr_n_u16(v88, 5uLL);
    _X13 = &a5->i8[14];
    v91 = vshr_n_u16(*a5->i8, 5uLL);
    _X14 = (a5->i64 + 2 * a4);
    v93 = *_X14;
    _X14 = (_X14 + 14);
    v94 = vshr_n_u16(v93, 5uLL);
    _X15 = (a5->i64 + 4 * a4);
    v96 = *_X15;
    _X15 = (_X15 + 14);
    v97 = vshr_n_u16(v96, 5uLL);
    _X16 = (a5->i64 + 6 * a4);
    v99 = *_X16;
    _X16 = (_X16 + 14);
    v100 = vshr_n_u16(v99, 5uLL);
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
      v91 = vshr_n_u16(*a5->i8, 5uLL);
      v134 = vmlal_laneq_s16(v131, v94, v80, 4);
      v135 = vmlal_lane_s16(v132, v94, *v80.i8, 3);
      v136 = vmlal_lane_s16(v130, v94, *v80.i8, 2);
      v83 = v94;
      v94 = vshr_n_u16(v123, 5uLL);
      v137 = vmlal_laneq_s16(v134, v97, v80, 5);
      v138 = vmlal_laneq_s16(v135, v97, v80, 4);
      v139 = vmlal_lane_s16(v136, v97, *v80.i8, 3);
      v140 = vmlal_lane_s16(v133, v97, *v80.i8, 2);
      v86 = v97;
      v97 = vshr_n_u16(v126, 5uLL);
      v141 = vmlal_laneq_s16(v137, v100, v80, 6);
      v142 = vmlal_laneq_s16(v138, v100, v80, 5);
      v143 = vmlal_laneq_s16(v139, v100, v80, 4);
      v144 = vmlal_lane_s16(v140, v100, *v80.i8, 3);
      v89 = v100;
      v100 = vshr_n_u16(v128, 5uLL);
      __asm
      {
        PRFM            #0, [X17]
        PRFM            #0, [X0]
        PRFUM           #0, [X17,#6]
        PRFUM           #0, [X0,#6]
      }

      *v16 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(v141, v91, v80, 7), 6uLL), 0xF800F800F800F800);
      v149 = (v16 + v114);
      *v149 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v142, v91, v80, 6), v94, v80, 7), 6uLL), 0xF800F800F800F800);
      v150 = (v149 + v114);
      *v150 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v143, v91, v80, 5), v94, v80, 6), v97, v80, 7), 6uLL), 0xF800F800F800F800);
      v151 = (v150 + v114);
      *v151 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v144, v91, v80, 4), v94, v80, 5), v97, v80, 6), v100, v80, 7), 6uLL), 0xF800F800F800F800);
      v110 -= 4;
      v16 = (v151 + v114);
    }

    while (v110 > 4);
  }

  return result;
}

uint64_t sub_27741E580(uint64_t result, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint16x4_t *a7)
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
      v38 = vshr_n_u16(*_X11, 5uLL);
      v39 = vshr_n_u16(_X11[1], 5uLL);
      __asm { PRFUM           #0, [X11,#0x1E] }

      v41 = vshr_n_u16(_X11[2], 5uLL);
      _X13 = &_X11[v7];
      __asm
      {
        PRFM            #0, [X13]
        PRFUM           #0, [X13,#0x16]
      }

      *a7 = vmin_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v38, v39, 2uLL), *v35.i8, 1), v38, *v35.i8, 0), vext_s8(v38, v39, 4uLL), *v35.i8, 2), vext_s8(v38, v39, 6uLL), *v35.i8, 3), v39, v35, 4), vext_s8(v39, v41, 2uLL), v35, 5), vext_s8(v39, v41, 4uLL), v35, 6), vext_s8(v39, v41, 6uLL), v35, 7), 6uLL), 0xF800F800F800F800);
      --v37;
      _X11 = (_X11 + v8);
      a7 = (a7 + v9);
    }

    while (v37 > 1);
  }

  return result;
}

double sub_27741E724(int a1, int a2, uint64_t a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, void *a7)
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
      v14 = vshrq_n_u16(*&a5->i8[v11], 5uLL);
      v15 = vshrq_n_u16(*&v10[v11], 5uLL);
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
      *v14.i8 = vshr_n_u16(*a5, 5uLL);
      v19 = vshr_n_u16(*(a5 + 2 * a4), 5uLL);
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

uint64_t sub_27741E7E4(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, const float *a7, uint64_t a8, int16x4_t *a9, uint64_t a10, void *a11)
{
  v12 = vld1q_dup_f32(a4);
  v11 = a4 + 1;
  v13 = a11;
  v15 = vld1q_dup_f32(a7);
  v14 = a7 + 1;
  v16 = vld1_dup_f32(v11);
  v17 = vld1_dup_f32(v14);
  v18 = a9;
  v19 = vaddq_s32(vshlq_n_s32(vaddl_s16(*v15.i8, *v12.i8), 0xDuLL), vshlq_s32(vaddl_s16(v17, v16), vdupq_n_s32(a3)));
  v20 = 4 * a10;
  v21 = vdupq_n_s32(~a3);
  v22 = 4 * a5;
  v23 = 4 * a8;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v24 = a9 + 2 * a8;
  v25 = a6 + 2 * a5;
  v26.i64[0] = 0xF000F000F000F000;
  v26.i64[1] = 0xF000F000F000F000;
  v27 = a11 + 2 * a10;
  do
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = a2 + 2;
    do
    {
      v32 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *&v25[v29], *v12.i8), *&v24[v30], *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&v25[v29], v12), *&v24[v30], v15), v21)), 0), v26);
      *(v13 + v28) = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + v29), *v12.i8), *(v18 + v30), *v15.i8), v21)), vrshlq_s32(vmlal_high_s16(vmlal_high_s16(v19, *&a6->i8[v29], v12), *&v18->i8[v30], v15), v21)), 0), v26);
      *&v27[v28] = v32;
      v31 -= 2;
      v30 += v23;
      v29 += v22;
      v28 += v20;
    }

    while (v31 > 2);
    v13 += 2;
    a6 += 2;
    v18 += 2;
    v33 = result - 8;
    v24 += 16;
    v25 += 16;
    v27 += 16;
    v34 = result <= 15;
    result = (result - 8);
  }

  while (!v34);
  if (v33)
  {
LABEL_10:
    v35 = vextq_s8(v12, v12, 8uLL).u64[0];
    v36 = vextq_s8(v15, v15, 8uLL).u64[0];
    v37 = a2 + 2;
    v38.i64[0] = 0xF000F000F000F000;
    v38.i64[1] = 0xF000F000F000F000;
    do
    {
      v39 = vminq_s16(vmaxq_s16(vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmlal_s16(vmlal_s16(v19, *a6, *v12.i8), *v18, *v15.i8), v21)), vrshlq_s32(vmlal_s16(vmlal_s16(v19, *(a6 + 2 * a5), v35), *(v18 + 2 * a8), v36), v21)), 0), v38);
      *v13 = v39.i64[0];
      *(v13 + 2 * a10) = v39.i64[1];
      v13 = (v13 + v20);
      a6 = (a6 + v22);
      v18 = (v18 + v23);
      v37 -= 2;
    }

    while (v37 > 2);
  }

  return result;
}

uint64_t sub_27741E9B0(uint64_t result, int a2, unsigned int a3, const float *a4, uint64_t a5, int16x4_t *a6, uint64_t a7, void *a8)
{
  v9 = vld1q_dup_f32(a4);
  v8 = a4 + 1;
  v10 = vld1_dup_f32(v8);
  v11 = vdupq_n_s32(a3);
  v12 = vmlal_s16(vshlq_s32(vmovl_s16(v10), v11), *v9.i8, 0x2000200020002000);
  v13 = vnegq_s32(v11);
  v14 = 4 * a7;
  v15 = 4 * a5;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v16 = a6 + 2 * a5;
  v17.i64[0] = 0xF000F000F000F000;
  v17.i64[1] = 0xF000F000F000F000;
  v18 = a8 + 2 * a7;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 + 2;
    do
    {
      v22 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *&v16[v20], *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&v16[v20], v9), v13)), v17);
      *(a8 + v19) = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *(a6 + v20), *v9.i8), v13)), vrshlq_s32(vmlal_high_s16(v12, *&a6->i8[v20], v9), v13)), v17);
      *&v18[v19] = v22;
      v21 -= 2;
      v20 += v15;
      v19 += v14;
    }

    while (v21 > 2);
    a8 += 2;
    a6 += 2;
    v23 = result - 8;
    v16 += 16;
    v18 += 16;
    v24 = result <= 15;
    result = (result - 8);
  }

  while (!v24);
  if (v23)
  {
LABEL_10:
    v25 = vextq_s8(v9, v9, 8uLL).u64[0];
    v26 = a2 + 2;
    v27.i64[0] = 0xF000F000F000F000;
    v27.i64[1] = 0xF000F000F000F000;
    do
    {
      v28 = vminq_u16(vqmovun_high_s32(vqmovun_s32(vrshlq_s32(vmlal_s16(v12, *a6, *v9.i8), v13)), vrshlq_s32(vmlal_s16(v12, *(a6 + 2 * a5), v25), v13)), v27);
      *a8 = v28.i64[0];
      *(a8 + 2 * a7) = v28.i64[1];
      a8 = (a8 + v14);
      a6 = (a6 + v15);
      v26 -= 2;
    }

    while (v26 > 2);
  }

  return result;
}

uint64_t sub_27741EAFC(uint64_t result, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8)
{
  v8 = 4 * a3;
  v9 = 4 * a5;
  v10 = 4 * a7;
  if (result < 8)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  v11 = a6 + 2 * a5;
  v12 = a4 + 2 * a3;
  v13.i64[0] = 0x2000200020002000;
  v13.i64[1] = 0x2000200020002000;
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = a8 + 2 * a7;
  do
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = a2 + 2;
    do
    {
      *(a8 + v16) = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*(a4 + v17), *(a6 + v18)), v13), 1uLL), 0), v14);
      *&v15[v16] = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(*&v12[v17], *&v11[v18]), v13), 1uLL), 0), v14);
      v19 -= 2;
      v18 += v9;
      v17 += v8;
      v16 += v10;
    }

    while (v19 > 2);
    a8 += 2;
    a4 += 2;
    a6 += 2;
    v20 = result - 8;
    v11 += 16;
    v12 += 16;
    v15 += 16;
    v21 = result <= 15;
    result = (result - 8);
  }

  while (!v21);
  if (v20)
  {
LABEL_10:
    v22 = a2 + 2;
    v23.i64[0] = 0x2000200020002000;
    v23.i64[1] = 0x2000200020002000;
    v24.i64[0] = 0xF000F000F000F000;
    v24.i64[1] = 0xF000F000F000F000;
    do
    {
      v25.i64[0] = *a4;
      v25.i64[1] = *(a4 + 2 * a3);
      v26.i64[0] = *a6;
      v26.i64[1] = *(a6 + 2 * a5);
      v27 = vminq_s16(vmaxq_s16(vrshrq_n_s16(vhaddq_s16(vhaddq_s16(v25, v26), v23), 1uLL), 0), v24);
      *a8 = v27.i64[0];
      *(a8 + 2 * a7) = v27.i64[1];
      a4 = (a4 + v8);
      a6 = (a6 + v9);
      a8 = (a8 + v10);
      v22 -= 2;
    }

    while (v22 > 2);
  }

  return result;
}

uint64_t sub_27741EC44(uint64_t result, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int16x4_t *a7)
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
  v14.i64[0] = 0x38000000380000;
  v14.i64[1] = 0x38000000380000;
  do
  {
    _X17 = (a5 - 6 * a4 - 6);
    v16 = vshrq_n_u16(*_X17, 4uLL);
    v17 = vshrq_n_u16(*(a5 - 6 * a4 + 10), 4uLL);
    v18 = vextq_s8(v16, v17, 2uLL);
    v19 = vextq_s8(v16, v17, 4uLL);
    v20 = vextq_s8(v16, v17, 6uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    v26 = vextq_s8(v16, v17, 8uLL);
    _X5 = &_X17->i8[8 * a4];
    v28 = vextq_s8(v16, v17, 0xAuLL);
    __asm { PRFM            #0, [X5] }

    v30 = vextq_s8(v16, v17, 0xCuLL);
    __asm { PRFUM           #0, [X5,#0x1E] }

    v32 = vextq_s8(v16, v17, 0xEuLL);
    _X17 = (_X17 + 2 * a4);
    v34 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v18.i8, *v10.i8, 1), *v16.i8, *v10.i8, 0), *v19.i8, *v10.i8, 2), *v20.i8, *v10.i8, 3), *v26.i8, v10, 4), *v28.i8, v10, 5), *v30.i8, v10, 6), *v32.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v18, *v10.i8, 1), v16, *v10.i8, 0), v19, *v10.i8, 2), v20, *v10.i8, 3), v26, v10, 4), v28, v10, 5), v30, v10, 6), v32, v10, 7), 4uLL);
    v35 = vshrq_n_u16(*_X17, 4uLL);
    v36 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v42 = vextq_s8(v35, v36, 2uLL);
    v43 = vextq_s8(v35, v36, 4uLL);
    v44 = vextq_s8(v35, v36, 6uLL);
    v45 = vextq_s8(v35, v36, 8uLL);
    v46 = vextq_s8(v35, v36, 0xAuLL);
    v47 = vextq_s8(v35, v36, 0xCuLL);
    v48 = vextq_s8(v35, v36, 0xEuLL);
    v49 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v10.i8, 1), *v35.i8, *v10.i8, 0), *v43.i8, *v10.i8, 2), *v44.i8, *v10.i8, 3), *v45.i8, v10, 4), *v46.i8, v10, 5), *v47.i8, v10, 6), *v48.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v10.i8, 1), v35, *v10.i8, 0), v43, *v10.i8, 2), v44, *v10.i8, 3), v45, v10, 4), v46, v10, 5), v47, v10, 6), v48, v10, 7), 4uLL);
    v50 = vshrq_n_u16(*_X17, 4uLL);
    v51 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v57 = vextq_s8(v50, v51, 2uLL);
    v58 = vextq_s8(v50, v51, 4uLL);
    v59 = vextq_s8(v50, v51, 6uLL);
    v60 = vextq_s8(v50, v51, 8uLL);
    v61 = vextq_s8(v50, v51, 0xAuLL);
    v62 = vextq_s8(v50, v51, 0xCuLL);
    v63 = vextq_s8(v50, v51, 0xEuLL);
    v64 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v57.i8, *v10.i8, 1), *v50.i8, *v10.i8, 0), *v58.i8, *v10.i8, 2), *v59.i8, *v10.i8, 3), *v60.i8, v10, 4), *v61.i8, v10, 5), *v62.i8, v10, 6), *v63.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v57, *v10.i8, 1), v50, *v10.i8, 0), v58, *v10.i8, 2), v59, *v10.i8, 3), v60, v10, 4), v61, v10, 5), v62, v10, 6), v63, v10, 7), 4uLL);
    v65 = vshrq_n_u16(*_X17, 4uLL);
    v66 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v72 = vextq_s8(v65, v66, 2uLL);
    v73 = vextq_s8(v65, v66, 4uLL);
    v74 = vextq_s8(v65, v66, 6uLL);
    v75 = vextq_s8(v65, v66, 8uLL);
    v76 = vextq_s8(v65, v66, 0xAuLL);
    v77 = vextq_s8(v65, v66, 0xCuLL);
    v78 = vextq_s8(v65, v66, 0xEuLL);
    v79 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v10.i8, 1), *v65.i8, *v10.i8, 0), *v73.i8, *v10.i8, 2), *v74.i8, *v10.i8, 3), *v75.i8, v10, 4), *v76.i8, v10, 5), *v77.i8, v10, 6), *v78.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v10.i8, 1), v65, *v10.i8, 0), v73, *v10.i8, 2), v74, *v10.i8, 3), v75, v10, 4), v76, v10, 5), v77, v10, 6), v78, v10, 7), 4uLL);
    v80 = vshrq_n_u16(*_X17, 4uLL);
    v81 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v87 = vextq_s8(v80, v81, 2uLL);
    v88 = vextq_s8(v80, v81, 4uLL);
    v89 = vextq_s8(v80, v81, 6uLL);
    v90 = vextq_s8(v80, v81, 8uLL);
    v91 = vextq_s8(v80, v81, 0xAuLL);
    v92 = vextq_s8(v80, v81, 0xCuLL);
    v93 = vextq_s8(v80, v81, 0xEuLL);
    v94 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v87.i8, *v10.i8, 1), *v80.i8, *v10.i8, 0), *v88.i8, *v10.i8, 2), *v89.i8, *v10.i8, 3), *v90.i8, v10, 4), *v91.i8, v10, 5), *v92.i8, v10, 6), *v93.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v87, *v10.i8, 1), v80, *v10.i8, 0), v88, *v10.i8, 2), v89, *v10.i8, 3), v90, v10, 4), v91, v10, 5), v92, v10, 6), v93, v10, 7), 4uLL);
    v95 = vshrq_n_u16(*_X17, 4uLL);
    v96 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X5 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X5]
      PRFUM           #0, [X5,#0x1E]
    }

    _X17 = (_X17 + 2 * a4);
    v102 = vextq_s8(v95, v96, 2uLL);
    v103 = vextq_s8(v95, v96, 4uLL);
    v104 = vextq_s8(v95, v96, 6uLL);
    v105 = vextq_s8(v95, v96, 8uLL);
    v106 = vextq_s8(v95, v96, 0xAuLL);
    v107 = vextq_s8(v95, v96, 0xCuLL);
    v108 = vextq_s8(v95, v96, 0xEuLL);
    v109 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v102.i8, *v10.i8, 1), *v95.i8, *v10.i8, 0), *v103.i8, *v10.i8, 2), *v104.i8, *v10.i8, 3), *v105.i8, v10, 4), *v106.i8, v10, 5), *v107.i8, v10, 6), *v108.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v102, *v10.i8, 1), v95, *v10.i8, 0), v103, *v10.i8, 2), v104, *v10.i8, 3), v105, v10, 4), v106, v10, 5), v107, v10, 6), v108, v10, 7), 4uLL);
    v110 = vshrq_n_u16(*_X17, 4uLL);
    v111 = vshrq_n_u16(_X17[1], 4uLL);
    __asm { PRFUM           #0, [X17,#0x2E] }

    _X17 = &_X17->i8[8 * a4];
    __asm
    {
      PRFM            #0, [X17]
      PRFUM           #0, [X17,#0x1E]
    }

    v116 = vextq_s8(v110, v111, 2uLL);
    v117 = vextq_s8(v110, v111, 4uLL);
    v118 = vextq_s8(v110, v111, 6uLL);
    v119 = vextq_s8(v110, v111, 8uLL);
    v120 = vextq_s8(v110, v111, 0xAuLL);
    v121 = vextq_s8(v110, v111, 0xCuLL);
    v122 = vextq_s8(v110, v111, 0xEuLL);
    v123 = a7;
    _X5 = v13;
    _X7 = v12;
    v126 = a2 + 1;
    v127 = vshrn_high_n_s32(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v116.i8, *v10.i8, 1), *v110.i8, *v10.i8, 0), *v117.i8, *v10.i8, 2), *v118.i8, *v10.i8, 3), *v119.i8, v10, 4), *v120.i8, v10, 5), *v121.i8, v10, 6), *v122.i8, v10, 7), 4uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v116, *v10.i8, 1), v110, *v10.i8, 0), v117, *v10.i8, 2), v118, *v10.i8, 3), v119, v10, 4), v120, v10, 5), v121, v10, 6), v122, v10, 7), 4uLL);
    do
    {
      v128 = vshrq_n_u16(*(_X5 - 46), 4uLL);
      v129 = vshrq_n_u16(*(_X5 - 30), 4uLL);
      v130 = vextq_s8(v128, v129, 2uLL);
      v131 = vextq_s8(v128, v129, 4uLL);
      v132 = vextq_s8(v128, v129, 6uLL);
      v133 = vextq_s8(v128, v129, 8uLL);
      v134 = vextq_s8(v128, v129, 0xAuLL);
      v135 = vextq_s8(v128, v129, 0xCuLL);
      v136 = vextq_s8(v128, v129, 0xEuLL);
      v137 = vmlal_lane_s16(vmull_lane_s16(*v130.i8, *v10.i8, 1), *v128.i8, *v10.i8, 0);
      v138 = vmlal_high_lane_s16(vmull_high_lane_s16(v130, *v10.i8, 1), v128, *v10.i8, 0);
      v139 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v11.i8, 0), *v49.i8, *v11.i8, 1);
      v140 = vmlal_high_lane_s16(vmull_high_lane_s16(v34, *v11.i8, 0), v49, *v11.i8, 1);
      v34 = v49;
      v49 = v64;
      v64 = v79;
      v79 = v94;
      v94 = v109;
      v109 = v127;
      __asm
      {
        PRFM            #0, [X5]
        PRFM            #0, [X7]
        PRFUM           #0, [X7,#0x1E]
      }

      v144 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v138, v131, *v10.i8, 2), v132, *v10.i8, 3), v133, v10, 4), v134, v10, 5), v135, v10, 6), v136, v10, 7);
      v145 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v137, *v131.i8, *v10.i8, 2), *v132.i8, *v10.i8, 3), *v133.i8, v10, 4), *v134.i8, v10, 5), *v135.i8, v10, 6), *v136.i8, v10, 7), 4uLL);
      v146 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(v139, *v49.i8, *v11.i8, 2), *v64.i8, *v11.i8, 3), *v79.i8, v11, 4), *v94.i8, v11, 5), *v109.i8, v11, 6), v145, v11, 7);
      v127 = vshrn_high_n_s32(v145, v144, 4uLL);
      --v126;
      *v123 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(v146, v14), 6uLL), vaddq_s32(vmlal_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v140, v49, *v11.i8, 2), v64, *v11.i8, 3), v79, v11, 4), v94, v11, 5), v109, v11, 6), vshrn_n_s32(v144, 4uLL), v11, 7), v14), 6uLL);
      _X7 += v8;
      _X5 += v8;
      v123 = (v123 + v9);
    }

    while (v126 > 1);
    a7 += 2;
    a5 += 16;
    v147 = result - 8;
    v12 += 16;
    v13 += 16;
    v148 = result > 0xF;
    result = (result - 8);
  }

  while (v148);
  if (v147)
  {
LABEL_9:
    v149 = xmmword_27750DCF0[(a3 & 3) - 1];
    _X11 = (a5 - 6 * a4);
    v151 = *(_X11 - 6);
    _X11 = (_X11 - 6);
    v152 = xmmword_27750DCF0[v7 - 1];
    v153 = vshr_n_u16(v151, 4uLL);
    v154 = vshr_n_u16(_X11[1], 4uLL);
    v155 = vshr_n_u16(_X11[2], 4uLL);
    __asm { PRFUM           #0, [X11,#0x1E] }

    _X10 = &_X11[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    _X10 = (_X11 + 2 * a4);
    v161 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v153, v154, 2uLL), *v149.i8, 1), v153, *v149.i8, 0), vext_s8(v153, v154, 4uLL), *v149.i8, 2), vext_s8(v153, v154, 6uLL), *v149.i8, 3), v154, v149, 4), vext_s8(v154, v155, 2uLL), v149, 5), vext_s8(v154, v155, 4uLL), v149, 6), vext_s8(v154, v155, 6uLL), v149, 7), 4uLL);
    v162 = vshr_n_u16(*_X10, 4uLL);
    v163 = vshr_n_u16(_X10[1], 4uLL);
    v164 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v170 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v162, v163, 2uLL), *v149.i8, 1), v162, *v149.i8, 0), vext_s8(v162, v163, 4uLL), *v149.i8, 2), vext_s8(v162, v163, 6uLL), *v149.i8, 3), v163, v149, 4), vext_s8(v163, v164, 2uLL), v149, 5), vext_s8(v163, v164, 4uLL), v149, 6), vext_s8(v163, v164, 6uLL), v149, 7), 4uLL);
    v171 = vshr_n_u16(*_X10, 4uLL);
    v172 = vshr_n_u16(_X10[1], 4uLL);
    v173 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v179 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v171, v172, 2uLL), *v149.i8, 1), v171, *v149.i8, 0), vext_s8(v171, v172, 4uLL), *v149.i8, 2), vext_s8(v171, v172, 6uLL), *v149.i8, 3), v172, v149, 4), vext_s8(v172, v173, 2uLL), v149, 5), vext_s8(v172, v173, 4uLL), v149, 6), vext_s8(v172, v173, 6uLL), v149, 7), 4uLL);
    v180 = vshr_n_u16(*_X10, 4uLL);
    v181 = vshr_n_u16(_X10[1], 4uLL);
    v182 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v188 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v180, v181, 2uLL), *v149.i8, 1), v180, *v149.i8, 0), vext_s8(v180, v181, 4uLL), *v149.i8, 2), vext_s8(v180, v181, 6uLL), *v149.i8, 3), v181, v149, 4), vext_s8(v181, v182, 2uLL), v149, 5), vext_s8(v181, v182, 4uLL), v149, 6), vext_s8(v181, v182, 6uLL), v149, 7), 4uLL);
    v189 = vshr_n_u16(*_X10, 4uLL);
    v190 = vshr_n_u16(_X10[1], 4uLL);
    v191 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v197 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v189, v190, 2uLL), *v149.i8, 1), v189, *v149.i8, 0), vext_s8(v189, v190, 4uLL), *v149.i8, 2), vext_s8(v189, v190, 6uLL), *v149.i8, 3), v190, v149, 4), vext_s8(v190, v191, 2uLL), v149, 5), vext_s8(v190, v191, 4uLL), v149, 6), vext_s8(v190, v191, 6uLL), v149, 7), 4uLL);
    v198 = vshr_n_u16(*_X10, 4uLL);
    v199 = vshr_n_u16(_X10[1], 4uLL);
    v200 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X11 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X11]
      PRFUM           #0, [X11,#0x16]
    }

    _X10 = (_X10 + 2 * a4);
    v206 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v198, v199, 2uLL), *v149.i8, 1), v198, *v149.i8, 0), vext_s8(v198, v199, 4uLL), *v149.i8, 2), vext_s8(v198, v199, 6uLL), *v149.i8, 3), v199, v149, 4), vext_s8(v199, v200, 2uLL), v149, 5), vext_s8(v199, v200, 4uLL), v149, 6), vext_s8(v199, v200, 6uLL), v149, 7), 4uLL);
    v207 = vshr_n_u16(*_X10, 4uLL);
    v208 = vshr_n_u16(_X10[1], 4uLL);
    v209 = vshr_n_u16(_X10[2], 4uLL);
    __asm { PRFUM           #0, [X10,#0x1E] }

    _X10 = &_X10[a4];
    __asm
    {
      PRFM            #0, [X10]
      PRFUM           #0, [X10,#0x16]
    }

    v214 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v207, v208, 2uLL), *v149.i8, 1), v207, *v149.i8, 0), vext_s8(v207, v208, 4uLL), *v149.i8, 2), vext_s8(v207, v208, 6uLL), *v149.i8, 3), v208, v149, 4), vext_s8(v208, v209, 2uLL), v149, 5), vext_s8(v208, v209, 4uLL), v149, 6), vext_s8(v208, v209, 6uLL), v149, 7), 4uLL);
    v215 = a2 + 1;
    _X11 = a5 + 16 * a4 - 6;
    _X12 = (a5 + 8 * a4 + 10);
    do
    {
      v218.i64[0] = 0x38000000380000;
      v218.i64[1] = 0x38000000380000;
      v219 = vmlal_lane_s16(v218, v161, *v152.i8, 0);
      v220 = vshr_n_u16(_X12[-2], 4uLL);
      v221 = vshr_n_u16(_X12[-1], 4uLL);
      v222 = vshr_n_u16(*_X12, 4uLL);
      __asm
      {
        PRFUM           #0, [X12,#0xE]
        PRFM            #0, [X11]
        PRFUM           #0, [X11,#0x16]
      }

      v226 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(vext_s8(v220, v221, 2uLL), *v149.i8, 1), v220, *v149.i8, 0), vext_s8(v220, v221, 4uLL), *v149.i8, 2), vext_s8(v220, v221, 6uLL), *v149.i8, 3), v221, v149, 4), vext_s8(v221, v222, 2uLL), v149, 5), vext_s8(v221, v222, 4uLL), v149, 6), vext_s8(v221, v222, 6uLL), v149, 7);
      v227 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v219, v170, *v152.i8, 1), v179, *v152.i8, 2), v188, *v152.i8, 3), v197, v152, 4), v206, v152, 5), v214, v152, 6);
      v161 = v170;
      v170 = v179;
      v179 = v188;
      v188 = v197;
      v197 = v206;
      v206 = v214;
      v214 = vshrn_n_s32(v226, 4uLL);
      --v215;
      _X11 += v8;
      *a7 = vshrn_n_s32(vmlal_laneq_s16(v227, v214, v152, 7), 6uLL);
      _X12 = (_X12 + v8);
      a7 = (a7 + v9);
    }

    while (v215 > 1);
  }

  return result;
}