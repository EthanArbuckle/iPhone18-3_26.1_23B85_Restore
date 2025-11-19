__int16 *sub_2773DE3B4(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v15 = result;
    v29 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v30 = vld2q_s16(v17);
    __asm { PRFM            #0, [X0,#0x40] }

    v23 = _X11;
    v31 = vld2q_s16(v23);
    v23 += 16;
    v28 = vld2q_s16(v23);
    __asm { PRFM            #0, [X11,#0x40] }

    LODWORD(v25) = vqtbl2q_s8(v30, xmmword_27750D290).u32[0];
    HIDWORD(v25) = vqtbl2q_s8(v28, xmmword_27750D280).i32[1];
    *a5++ = v25;
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v29.val[0], 3uLL), v30.val[0], 3uLL));
    v32.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[0], *v26.i8), 0), v14);
    v27 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v29.val[1], 3uLL), v30.val[1], 3uLL));
    v32.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[1], *v27.i8), 0), v14);
    v29.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[0], v26), 0), v14);
    v29.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[1], v27), 0), v14);
    v30.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v31.val[0], 3uLL), v28.val[0], 3uLL));
    v33.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[0], *v30.val[0].i8), 0), v14);
    v30.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v31.val[1], 3uLL), v28.val[1], 3uLL));
    v33.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[1], *v30.val[1].i8), 0), v14);
    vst2q_s16(result, v32);
    v11 = 4 * a2;
    result = (result + v11);
    v31.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[0], v30.val[0]), 0), v14);
    vst2q_s16(v17, v29);
    v31.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[1], v30.val[1]), 0), v14);
    vst2q_s16(_X11, v33);
    vst2q_s16(v23, v31);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

__int16 *sub_2773DE4C4(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v13 = a7 + 2;
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v15 = result;
    v25 = vld2q_s16(v15);
    v12 = a2;
    v16 = &v15[v12];
    __asm { PRFM            #0, [X0,#0x20] }

    _X12 = v16;
    v26 = vld2q_s16(_X12);
    _X12 += 16;
    __asm { PRFM            #0, [X12] }

    LODWORD(v24) = vqtbl2q_s8(v25, xmmword_27750D290).u32[0];
    HIDWORD(v24) = vqtbl2q_s8(v26, xmmword_27750D280).i32[1];
    *a5++ = v24;
    v27.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v25.val[0], 3uLL))), 0), v14);
    v27.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v25.val[1], 3uLL))), 0), v14);
    v25.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v26.val[0], 3uLL))), 0), v14);
    v25.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v26.val[1], 3uLL))), 0), v14);
    vst2q_s16(result, v27);
    v11 = 4 * a2;
    result = (result + v11);
    vst2q_s16(v16, v25);
    v13 -= 2;
  }

  while (v13 > 2);
  return result;
}

uint64_t sub_2773DE580(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B0294(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 60);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  v13 = *(_X5 + 2);
  v14 = *(_X5 + 3);
  v15 = (_X5 + 4);
  __asm { PRFM            #0, [X5,#0x40] }

  v21 = *result;
  v22 = *(result + 16);
  v23 = *(result + 32);
  v24 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v26 = vld1q_dup_f32(v15);
  *a5 = v24.i32[3];
  v27 = (a5 + 2);
  v28 = (result + 64);
  v29 = 2 * a2;
  v30 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v31 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v32 = vceqzq_s16(v10);
  v33.i64[0] = 0xFF00FF00FF00FFLL;
  v33.i64[1] = 0xFF00FF00FF00FFLL;
  v34 = v27;
  do
  {
    v35 = v24;
    v36 = vextq_s8(v11, v13, 4uLL);
    v37 = v23;
    v38 = vextq_s8(v12, v11, 4uLL);
    v11 = v22;
    v12 = v21;
    _X12 = v28 + v29;
    v21 = *(v28 + v29 - 64);
    v22 = *(v28 + v29 - 48);
    v23 = *(v28 + v29 - 32);
    v24 = *(v28 + v29 - 16);
    __asm { PRFM            #0, [X12] }

    v41 = vld1q_dup_f32(v34++);
    v42 = vextq_s8(v13, v14, 4uLL);
    v43 = vextq_s8(v14, v26, 4uLL);
    *v27 = *&v24.i32[3];
    v44 = vextq_s8(v41, v21, 0xCuLL);
    v45 = vextq_s8(v21, v22, 0xCuLL);
    v46 = vextq_s8(v22, v23, 0xCuLL);
    v47 = vextq_s8(v23, v24, 0xCuLL);
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v44)), vcgtq_u16(v44, v12))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v11), vcgtq_u16(v11, v36)), vcgtq_u16(v11, v45)), vcgtq_u16(v45, v11))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v37), vcgtq_u16(v37, v42)), vcgtq_u16(v37, v46)), vcgtq_u16(v46, v37))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v43, v35), vcgtq_u16(v35, v43)), vcgtq_u16(v35, v47)), vcgtq_u16(v47, v35))), xmmword_27750D230));
    *(v28 - 4) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_s8(v12, *v48.i8), 0), v33), v12);
    *(v28 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v11, v48), 0), v33);
    *(v28 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v37, *v49.i8), 0), v33);
    *(v28 - 1) = vbslq_s8(v31, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v49), 0), v33), v35);
    v26 = vld1q_dup_f32(v28);
    --v30;
    v28 = (v28 + v29);
    v27 = v34;
    v13 = v37;
    v14 = v35;
  }

  while (v30 > 1);
  return result;
}

uint64_t sub_2773DE7B4(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B0320(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 60);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 60);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = *(result + 16);
  v28 = result + 32;
  v29 = *(result + 32);
  v30 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0xFF00FF00FF00FFLL;
  v36.i64[1] = 0xFF00FF00FF00FFLL;
  v37 = a5;
  do
  {
    v38 = vextq_s8(v20, v19, 0xCuLL);
    v19 = v30;
    v39 = vextq_s8(v17, v20, 0xCuLL);
    v20 = v29;
    v40 = vextq_s8(v18, v17, 0xCuLL);
    v17 = v27;
    v41 = vextq_s8(v11, v18, 0xCuLL);
    v18 = v26;
    _X13 = v28 + v33;
    v26 = *(v28 + v33 - 32);
    v27 = *(v28 + v33 - 16);
    v29 = *(v28 + 2 * a2);
    v30 = *(v28 + v33 + 16);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = *(v28 + (((a4 >> 1) & 1) << 6) + 2 * a2 - 32);
    v44 = vextq_s8(v26, v27, 4uLL);
    v45 = vextq_s8(v27, v29, 4uLL);
    v46 = vextq_s8(v29, v30, 4uLL);
    v47 = vextq_s8(v30, v7, 4uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v18), vcgtq_u16(v18, v41)), vcgtq_u16(v18, v44)), vcgtq_u16(v44, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v45)), vcgtq_u16(v45, v17))), xmmword_27750D230));
    v49 = vcgtq_u16(v19, v47);
    v7 = vcgtq_u16(v47, v19);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v20), vcgtq_u16(v20, v39)), vcgtq_u16(v20, v46)), vcgtq_u16(v46, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v19), vcgtq_u16(v19, v38)), v49), v7)), xmmword_27750D230));
    *(v28 - 32) = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v48.i8), 0), v36), v18);
    *(v28 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v48), 0), v36);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v50.i8), 0), v36);
    *(v28 + 16) = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v50), 0), v36), v19);
    v11 = vld1q_dup_f32(v37++);
    --v32;
    v28 += v33;
    *a5 = v19.i32[3];
    a5 = v37;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773DEA00(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[3].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v19 = *result;
  v20 = result[1];
  v21 = result[2];
  v22 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v24 = v9 + 1;
  v25 = 2 * a2;
  v26.i64[0] = 0xFF00FF00FF00FFLL;
  v26.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    _X10 = result->i64 + v25;
    v19 = *(result + 2 * a2);
    v20 = *(&result[1] + v25);
    v21 = *(&result[2] + v25);
    v22 = *(&result[3] + v25);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i32[3];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v27), vcgtq_u16(v27, v11)), vcgtq_u16(v27, v19)), vcgtq_u16(v19, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v28), vcgtq_u16(v28, v10)), vcgtq_u16(v28, v20)), vcgtq_u16(v20, v28))), xmmword_27750D230));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v29), vcgtq_u16(v29, v13)), vcgtq_u16(v29, v21)), vcgtq_u16(v21, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v30), vcgtq_u16(v30, v12)), vcgtq_u16(v30, v22)), vcgtq_u16(v22, v30))), xmmword_27750D230));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v24;
    result = (result + v25);
    v11 = v27;
    v10 = v28;
    v13 = v29;
    v12 = v30;
  }

  while (v24 > 1);
  return result;
}

int16x8_t *sub_2773DEB8C(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    v19 = result[2];
    v18 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v25 = vld1q_dup_f32(v15++);
    *a5 = *&v18.i32[3];
    v7.i32[0] = result[4 * ((a4 >> 1) & 1)].i32[0];
    v26 = vextq_s8(v25, v16, 0xCuLL);
    v27 = vextq_s8(v16, v17, 0xCuLL);
    v28 = vextq_s8(v17, v19, 0xCuLL);
    v29 = vextq_s8(v19, v18, 0xCuLL);
    v30 = vextq_s8(v16, v17, 4uLL);
    v31 = vextq_s8(v17, v19, 4uLL);
    v32 = vextq_s8(v19, v18, 4uLL);
    v33 = vextq_s8(v18, v7, 4uLL);
    v34 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v26)), vcgtq_u16(v26, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))), xmmword_27750D230));
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v19), vcgtq_u16(v19, v28)), vcgtq_u16(v19, v32)), vcgtq_u16(v32, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v18), vcgtq_u16(v18, v29)), vcgtq_u16(v18, v33)), vcgtq_u16(v33, v18))), xmmword_27750D230));
    v36 = vaddw_s8(v19, *v35.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v14);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v34.i8), 0), v14), v16);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v34), 0), v14);
    result[2] = vminq_s16(vmaxq_s16(v36, 0), v14);
    result[3] = vbslq_s8(v12, v7, v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773DED04(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B03AC(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 28);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  __asm { PRFM            #0, [X5,#0x20] }

  v18 = (_X5 + 2);
  v19 = *result;
  v20 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v22 = vld1q_dup_f32(v18);
  *a5 = v20.i32[3];
  v23 = (a5 + 2);
  v24 = 2 * a2;
  v25 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v26 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v27 = vceqzq_s16(v10);
  v28.i64[0] = 0xFF00FF00FF00FFLL;
  v28.i64[1] = 0xFF00FF00FF00FFLL;
  v29 = v23;
  do
  {
    v30 = vextq_s8(v12, v11, 4uLL);
    v31 = v20;
    v32 = v19;
    _X11 = result + v24;
    v19 = *(result + 2 * a2);
    v20 = *(result + v24 + 16);
    __asm { PRFM            #0, [X11,#0x20] }

    v35 = vld1q_dup_f32(v29++);
    v36 = vextq_s8(v11, v22, 4uLL);
    *v23 = *&v20.i32[3];
    v37 = vextq_s8(v35, v19, 0xCuLL);
    v38 = vextq_s8(v19, v20, 0xCuLL);
    v39 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v32), vcgtq_u16(v32, v30)), vcgtq_u16(v32, v37)), vcgtq_u16(v37, v32))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v31), vcgtq_u16(v31, v36)), vcgtq_u16(v31, v38)), vcgtq_u16(v38, v31))), xmmword_27750D230));
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v32, *v39.i8), 0), v28), v32);
    *(result + 16) = vbslq_s8(v26, vminq_s16(vmaxq_s16(vaddw_high_s8(v31, v39), 0), v28), v31);
    v40 = (result + 32);
    --v25;
    result += v24;
    v22 = vld1q_dup_f32(v40);
    v23 = v29;
    v12 = v32;
    v11 = v31;
  }

  while (v25 > 1);
  return result;
}

uint64_t sub_2773DEEB0(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B0438(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 28);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 28);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0xFF00FF00FF00FFLL;
  v31.i64[1] = 0xFF00FF00FF00FFLL;
  v32 = a5;
  do
  {
    v33 = vextq_s8(v17, v18, 0xCuLL);
    v34 = v25;
    v35 = v24;
    _X12 = result + v28;
    v24 = *(result + 2 * a2);
    v25 = *(result + v28 + 16);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i32[0] = *(result + 32 * ((a4 >> 1) & 1) + 2 * a2);
    v38 = vextq_s8(v11, v17, 0xCuLL);
    v39 = vextq_s8(v24, v25, 4uLL);
    v40 = vextq_s8(v25, v7, 4uLL);
    v41 = vcgtq_u16(v34, v40);
    v7 = vcgtq_u16(v40, v34);
    v42 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v35), vcgtq_u16(v35, v38)), vcgtq_u16(v35, v39)), vcgtq_u16(v39, v35))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v34), vcgtq_u16(v34, v33)), v41), v7)), xmmword_27750D230));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v35, *v42.i8), 0), v31), v35);
    *(result + 16) = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v34, v42), 0), v31), v34);
    v11 = vld1q_dup_f32(v32++);
    --v27;
    result += v28;
    *a5 = v34.i32[3];
    v17 = v35;
    v18 = v34;
    a5 = v32;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773DF06C(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[1].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v17 = *result;
  v18 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v20 = 2 * a2;
  v21 = v9 + 1;
  v22.i64[0] = 0xFF00FF00FF00FFLL;
  v22.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v23 = v17;
    v24 = v18;
    _X10 = result->i64 + v20;
    v17 = *(result + 2 * a2);
    v18 = *(&result[1] + v20);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i32[3];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v23), vcgtq_u16(v23, v11)), vcgtq_u16(v23, v17)), vcgtq_u16(v17, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v24), vcgtq_u16(v24, v10)), vcgtq_u16(v24, v18)), vcgtq_u16(v18, v24))), xmmword_27750D230));
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v20);
    v11 = v23;
    v10 = v24;
  }

  while (v21 > 1);
  return result;
}

int16x8_t *sub_2773DF178(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xFF00FF00FF00FFLL;
  v14.i64[1] = 0xFF00FF00FF00FFLL;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v23 = vld1q_dup_f32(v15++);
    *a5 = *&v17.i32[3];
    v7.i32[0] = result[2 * ((a4 >> 1) & 1)].i32[0];
    v24 = vextq_s8(v23, v16, 0xCuLL);
    v25 = vextq_s8(v16, v17, 0xCuLL);
    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v17, v7, 4uLL);
    v28 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v16), vcgtq_u16(v16, v26)), vcgtq_u16(v16, v24)), vcgtq_u16(v24, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v25, v17), vcgtq_u16(v17, v25)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), xmmword_27750D230));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v28.i8), 0), v14);
    *result = vbslq_s8(v13, v7, v16);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v28), 0), v14), v17);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773DF278(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B053C(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 12);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = *_X5;
  v10 = (_X5 + 1);
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 16;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_f32(v10);
  *a5 = HIDWORD(*result);
  v20 = (a5 + 2);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v24.i64[0] = 0xFF00FF00FF00FFLL;
  v24.i64[1] = 0xFF00FF00FF00FFLL;
  v25 = v20;
  do
  {
    _X12 = result + v21 + 16;
    v27 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v29 = vld1q_dup_f32(v25++);
    *v20 = *&v27.i32[3];
    v30 = vextq_s8(v9, v19, 4uLL);
    v31 = vextq_s8(v29, v27, 0xCuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v30), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v30, v17)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))))), 0), v24), v17);
    v32 = (result + 16);
    --v22;
    result += v21;
    v19 = vld1q_dup_f32(v32);
    v20 = v25;
    v9 = v17;
    v17 = v27;
  }

  while (v22 > 1);
  return result;
}

uint64_t sub_2773DF3E4(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B05C8(result, a2, a3, a4, a5, a6, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 2);
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 12);
    a6 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 12);
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 16;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v28.i64[0] = 0xFF00FF00FF00FFLL;
  v28.i64[1] = 0xFF00FF00FF00FFLL;
  v29 = a5;
  do
  {
    _X13 = result + v25 + 16;
    v31 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i32[0] = *(result + 16 * ((a4 >> 1) & 1) + 2 * a2);
    v33 = vextq_s8(v11, v16, 0xCuLL);
    v34 = vextq_s8(v31, v7, 4uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v33), xmmword_27750D2E0, xmmword_27750D2D0);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v33, v23)), vcgtq_u16(v23, v34)), vcgtq_u16(v34, v23))))), 0), v28), v23);
    v11 = vld1q_dup_f32(v29++);
    --v26;
    result += v25;
    *a5 = v23.i32[3];
    v16 = v23;
    v23 = v31;
    a5 = v29;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773DF560(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i32[3];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result->i32[3] + 2 * v9 * a2);
  v11 = *a6;
  _X5 = a6 + 1;
  v12 = v11;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v19 = *result;
  __asm { PRFM            #0, [X8] }

  v21 = 2 * a2;
  v22 = v9 + 1;
  v23.i64[0] = 0xFF00FF00FF00FFLL;
  v23.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    _X11 = result[1].i64 + v21;
    v25 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v19.i32[3];
    --v22;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v19, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v19, v12), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v12, v19)), vcgtq_u16(v19, v25)), vcgtq_u16(v25, v19))))), 0), v23);
    result = (result + v21);
    v12 = v19;
    v19 = v25;
  }

  while (v22 > 1);
  return result;
}

int8x16_t *sub_2773DF648(int8x16_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v11.i64[0] = 0xFF00FF00FF00FFLL;
  v11.i64[1] = 0xFF00FF00FF00FFLL;
  v12 = a5;
  do
  {
    v13 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v19 = vld1q_dup_f32(v12++);
    v20 = vextq_s8(v19, *result, 0xCuLL);
    *a5 = HIDWORD(*result);
    v7.i32[0] = result[(a4 >> 1) & 1].i32[0];
    v21 = vextq_s8(v13, v7, 4uLL);
    v22 = vcgtq_u16(v13, v21);
    v7 = vcgtq_u16(v21, v13);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v13, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v13, v20), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v20, v13)), v22), v7)))), 0), v11), v13);
    result = (result + 2 * a2);
    --v9;
    a5 = v12;
  }

  while (v9 > 1);
  return result;
}

__int16 *sub_2773DF708(__int16 *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  sub_2773DF770(a1, a2, a3, a4, a5, a6, a7);

  return sub_2773DF770(a1 + 64, a2, a3, v12, a5, v13, a7);
}

__int16 *sub_2773DF770(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v15 = result;
    v42 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v36 = vld2q_s16(v17);
    v18 = result + 32;
    v45 = vld2q_s16(v18);
    v19 = result + 48;
    v44 = vld2q_s16(v19);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v26 = _X11;
    v41 = vld2q_s16(v26);
    v26 += 16;
    v40 = vld2q_s16(v26);
    v27 = _X11 + 32;
    v39 = vld2q_s16(v27);
    v28 = _X11 + 48;
    v38 = vld2q_s16(v28);
    LODWORD(v29) = vqtbl2q_s8(v44, xmmword_27750D290).u32[0];
    HIDWORD(v29) = vqtbl2q_s8(v38, xmmword_27750D280).i32[1];
    v30 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v42.val[0], 4uLL), v36.val[0], 4uLL));
    v31 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v42.val[1], 4uLL), v36.val[1], 4uLL));
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[0], *v30.i8), 0), v14);
    __asm
    {
      PRFM            #0, [X11,#0x80]
      PRFM            #0, [X11,#0xC0]
    }

    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[1], *v31.i8), 0), v14);
    *a5++ = v29;
    v43.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[0], v30), 0), v14);
    v43.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[1], v31), 0), v14);
    v36.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v45.val[0], 4uLL), v44.val[0], 4uLL));
    v34 = vaddw_high_s8(v44.val[0], v36.val[0]);
    v36.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[0], *v36.val[0].i8), 0), v14);
    v35 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v45.val[1], 4uLL), v44.val[1], 4uLL));
    v36.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[1], *v35.i8), 0), v14);
    v45.val[0] = vminq_s16(vmaxq_s16(v34, 0), v14);
    v45.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44.val[1], v35), 0), v14);
    v44.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v41.val[0], 4uLL), v40.val[0], 4uLL));
    v37.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[0], *v44.val[0].i8), 0), v14);
    v44.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v41.val[1], 4uLL), v40.val[1], 4uLL));
    v37.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[1], *v44.val[1].i8), 0), v14);
    v41.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[0], v44.val[0]), 0), v14);
    v41.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[1], v44.val[1]), 0), v14);
    v40.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v39.val[0], 4uLL), v38.val[0], 4uLL));
    vst2q_s16(result, v42);
    v11 = 4 * a2;
    result = (result + v11);
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[0], *v40.val[0].i8), 0), v14);
    vst2q_s16(v17, v43);
    v40.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v39.val[1], 4uLL), v38.val[1], 4uLL));
    vst2q_s16(v18, v36);
    vst2q_s16(v19, v45);
    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[1], *v40.val[1].i8), 0), v14);
    vst2q_s16(_X11, v37);
    v39.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[0], v40.val[0]), 0), v14);
    vst2q_s16(v26, v41);
    v39.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[1], v40.val[1]), 0), v14);
    vst2q_s16(v27, v42);
    vst2q_s16(v28, v39);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

uint64_t sub_2773DF960(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _WORD *a5, _OWORD *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773DFA20(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773DFA20(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773DFA20(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774AE6FC(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 0x40) != 0)
    {
      *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
    }

    if ((a4 & 4) == 0)
    {
      *a5 = *(result + 124);
      a5 += 2;
      _X5 = result;
      result += 2 * a2;
      --a7;
    }

    v8.i64[1] = v9;
    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D2A0);
    v12 = vtstq_s16(v10, xmmword_27750D2B0);
    v14 = *_X5;
    v13 = *(_X5 + 1);
    v16 = *(_X5 + 2);
    v15 = *(_X5 + 3);
    v18 = *(_X5 + 4);
    v17 = *(_X5 + 5);
    v19 = *(_X5 + 6);
    v20 = *(_X5 + 7);
    v21 = (_X5 + 8);
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = *(result + 16);
    v30 = *(result + 32);
    v31 = *(result + 48);
    v32 = result + 96;
    v33 = *(result + 96);
    v34 = *(result + 64);
    v35 = *(result + 80);
    v36 = *(result + 112);
    __asm { PRFM            #0, [X0,#0x80] }

    v38 = 2 * a2;
    v39 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
    __asm { PRFM            #0, [X0,#0xC0] }

    v41 = vld1q_dup_f32(v21);
    *a5 = v36.i32[3];
    v42 = (a5 + 2);
    v43 = vceqzq_s16(v11);
    v44.i64[0] = 0xFE00FE00FE00FE00;
    v44.i64[1] = 0xFE00FE00FE00FE00;
    v45 = v42;
    do
    {
      v46 = vextq_s8(v19, v20, 4uLL);
      v47 = v36;
      v48 = vextq_s8(v17, v19, 4uLL);
      v19 = v33;
      v49 = vextq_s8(v18, v17, 4uLL);
      v17 = v35;
      v50 = vextq_s8(v15, v18, 4uLL);
      v18 = v34;
      v51 = vextq_s8(v16, v15, 4uLL);
      v15 = v31;
      v52 = vextq_s8(v13, v16, 4uLL);
      v16 = v30;
      v53 = vextq_s8(v14, v13, 4uLL);
      v13 = v29;
      v14 = v28;
      _X12 = v32 + v38;
      v28 = *(v32 + v38 - 96);
      v29 = *(v32 + v38 - 80);
      v30 = *(v32 + v38 - 64);
      v31 = *(v32 + v38 - 48);
      v34 = *(v32 + v38 - 32);
      v35 = *(v32 + v38 - 16);
      v33 = *(v32 + 2 * a2);
      v36 = *(v32 + v38 + 16);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v57 = vld1q_dup_f32(v45++);
      v58 = vextq_s8(v20, v41, 4uLL);
      v59 = vextq_s8(v57, v28, 0xCuLL);
      v60 = vextq_s8(v28, v29, 0xCuLL);
      v61 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v14), vcgtq_u16(v14, v53)), vcgtq_u16(v14, v59)), vcgtq_u16(v59, v14));
      v62 = vextq_s8(v29, v30, 0xCuLL);
      v63 = vqmovn_high_s16(vqmovn_s16(v61), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v13), vcgtq_u16(v13, v52)), vcgtq_u16(v13, v60)), vcgtq_u16(v60, v13)));
      v64 = vextq_s8(v30, v31, 0xCuLL);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v16), vcgtq_u16(v16, v51)), vcgtq_u16(v16, v62)), vcgtq_u16(v62, v16));
      v66 = vextq_s8(v31, v34, 0xCuLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v65), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v15), vcgtq_u16(v15, v50)), vcgtq_u16(v15, v64)), vcgtq_u16(v64, v15)));
      v68 = vextq_s8(v34, v35, 0xCuLL);
      v69 = vextq_s8(v35, v33, 0xCuLL);
      v70 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v18), vcgtq_u16(v18, v49)), vcgtq_u16(v18, v66)), vcgtq_u16(v66, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v17), vcgtq_u16(v17, v48)), vcgtq_u16(v17, v68)), vcgtq_u16(v68, v17)));
      v71 = vextq_s8(v33, v36, 0xCuLL);
      *v42 = *&v36.i32[3];
      v72 = vqtbl1q_s8(v8, vaddq_s8(v63, xmmword_27750D230));
      v73 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v46, v19), vcgtq_u16(v19, v46)), vcgtq_u16(v19, v69)), vcgtq_u16(v69, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v58, v47), vcgtq_u16(v47, v58)), vcgtq_u16(v47, v71)), vcgtq_u16(v71, v47)));
      *(v32 - 96) = vbslq_s8(v43, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v72.i8), 0), v44), v14);
      *(v32 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v72), 0), v44);
      v74 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v32 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v74.i8), 0), v44);
      *(v32 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v74), 0), v44);
      v75 = vqtbl1q_s8(v8, vaddq_s8(v70, xmmword_27750D230));
      *(v32 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v75.i8), 0), v44);
      *(v32 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v75), 0), v44);
      v76 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v76.i8), 0), v44);
      *(v32 + 16) = vbslq_s8(v12, v47, vminq_s16(vmaxq_s16(vaddw_high_s8(v47, v76), 0), v44));
      v77 = (v32 + 32);
      --v39;
      v32 += v38;
      v42 = v45;
      v20 = v47;
      v41 = vld1q_dup_f32(v77);
    }

    while (v39 > 1);
  }

  return result;
}

uint64_t sub_2773DFD9C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, int16x8_t *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773DFE5C(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773DFE5C(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773DFE5C(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774AE788(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i32[3];
      v11 = vld1q_dup_f32(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_f32(v10++);
      *a5 = *(result + 124);
      _X5 = result;
      result += 2 * a2;
      --a7;
      a5 = v10;
    }

    v8.i64[1] = v9;
    v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
    *&a5[2 * v13] = *(result + 2 * v13 * a2 + 124);
    v14 = vdupq_n_s16(~a4);
    v16 = *_X5;
    v15 = _X5[1];
    v17 = vandq_s8(v14, xmmword_27750D2A0);
    v18 = vtstq_s16(v14, xmmword_27750D2B0);
    v20 = _X5[2];
    v19 = _X5[3];
    v22 = _X5[4];
    v21 = _X5[5];
    v24 = _X5[6];
    v23 = _X5[7];
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v31 = *result;
    v32 = *(result + 16);
    v33 = *(result + 32);
    v34 = *(result + 48);
    v35 = *(result + 64);
    v36 = *(result + 80);
    v37 = result + 96;
    v38 = *(result + 96);
    v39 = *(result + 112);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = 2 * a2;
    v43 = v13 + 1;
    v44 = vceqzq_s16(v17);
    v45.i64[0] = 0xFE00FE00FE00FE00;
    v45.i64[1] = 0xFE00FE00FE00FE00;
    v46 = a5;
    do
    {
      v47 = vextq_s8(v24, v23, 0xCuLL);
      v23 = v39;
      v48 = vextq_s8(v21, v24, 0xCuLL);
      v24 = v38;
      v49 = vextq_s8(v22, v21, 0xCuLL);
      v21 = v36;
      v50 = vextq_s8(v19, v22, 0xCuLL);
      v22 = v35;
      v51 = vextq_s8(v20, v19, 0xCuLL);
      v19 = v34;
      v52 = vextq_s8(v15, v20, 0xCuLL);
      v20 = v33;
      v53 = vextq_s8(v16, v15, 0xCuLL);
      v15 = v32;
      v54 = vextq_s8(v11, v16, 0xCuLL);
      v16 = v31;
      _X13 = v37 + v42;
      v31 = *(v37 + v42 - 96);
      v32 = *(v37 + v42 - 80);
      v33 = *(v37 + v42 - 64);
      v34 = *(v37 + v42 - 48);
      v35 = *(v37 + v42 - 32);
      v36 = *(v37 + v42 - 16);
      v56 = vextq_s8(v31, v32, 4uLL);
      v57 = vextq_s8(v32, v33, 4uLL);
      v58 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v16), vcgtq_u16(v16, v54)), vcgtq_u16(v16, v56)), vcgtq_u16(v56, v16));
      v59 = vextq_s8(v33, v34, 4uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v15), vcgtq_u16(v15, v53)), vcgtq_u16(v15, v57)), vcgtq_u16(v57, v15));
      v61 = vextq_s8(v34, v35, 4uLL);
      v62 = vqmovn_high_s16(vqmovn_s16(v58), v60);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v20), vcgtq_u16(v20, v52)), vcgtq_u16(v20, v59)), vcgtq_u16(v59, v20));
      v64 = vsubq_s16(vsubq_s16(vcgtq_u16(v51, v19), vcgtq_u16(v19, v51)), vcgtq_u16(v19, v61));
      v38 = *(v37 + 2 * a2);
      v39 = *(v37 + v42 + 16);
      v65 = vaddq_s16(v64, vcgtq_u16(v61, v19));
      v66 = vextq_s8(v35, v36, 4uLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v63), v65);
      v68 = vextq_s8(v36, v38, 4uLL);
      v69 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v22), vcgtq_u16(v22, v50)), vcgtq_u16(v22, v66)), vcgtq_u16(v66, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v72 = vextq_s8(v38, v39, 4uLL);
      v73 = vqmovn_high_s16(vqmovn_s16(v69), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v21), vcgtq_u16(v21, v49)), vcgtq_u16(v21, v68)), vcgtq_u16(v68, v21)));
      v74 = vcgtq_u16(v24, v72);
      v75 = vsubq_s16(vsubq_s16(vcgtq_u16(v48, v24), vcgtq_u16(v24, v48)), v74);
      v74.i32[0] = *(v37 + (((a4 >> 1) & 1) << 7) + 2 * a2 - 96);
      v76 = vextq_s8(v39, v74, 4uLL);
      v77 = vqtbl1q_s8(v8, vaddq_s8(v62, xmmword_27750D230));
      v78 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v75, vcgtq_u16(v72, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v47, v23), vcgtq_u16(v23, v47)), vcgtq_u16(v23, v76)), vcgtq_u16(v76, v23)));
      *(v37 - 96) = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v45), v16);
      *(v37 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v45);
      v79 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v37 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v79.i8), 0), v45);
      *(v37 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v79), 0), v45);
      v80 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *(v37 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v80.i8), 0), v45);
      *(v37 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v80), 0), v45);
      v81 = vqtbl1q_s8(v8, vaddq_s8(v78, xmmword_27750D230));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v81.i8), 0), v45);
      *(v37 + 16) = vbslq_s8(v18, v23, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v81), 0), v45));
      v11 = vld1q_dup_f32(v46++);
      --v43;
      v37 += v42;
      *a5 = v23.i32[3];
      a5 = v46;
    }

    while (v43 > 1);
  }

  return result;
}

uint64_t sub_2773E01E4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E02A4(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E02A4(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E02A4(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 124);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(result + 2 * v9 * a2 + 124);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  v15 = _X5[4];
  v14 = _X5[5];
  v17 = _X5[6];
  v16 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v24 = *result;
  v25 = *(result + 16);
  v26 = *(result + 32);
  v27 = *(result + 48);
  v28 = *(result + 64);
  v29 = *(result + 80);
  v30 = (result + 96);
  v31 = *(result + 96);
  v32 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v35 = v9 + 1;
  v36 = 2 * a2;
  v37.i64[0] = 0xFE00FE00FE00FE00;
  v37.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v38 = v32;
    v39 = v31;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v26;
    v44 = v25;
    v45 = v24;
    _X11 = &v30->i8[v36];
    v24 = *(&v30[-6] + v36);
    v25 = *(&v30[-5] + v36);
    v26 = *(&v30[-4] + v36);
    v27 = *(&v30[-3] + v36);
    v28 = *(&v30[-2] + v36);
    v29 = *(&v30[-1] + v36);
    v31 = *(v30 + 2 * a2);
    v32 = *(&v30[1] + v36);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i32[3];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v45), vcgtq_u16(v45, v11)), vcgtq_u16(v45, v24)), vcgtq_u16(v24, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v44), vcgtq_u16(v44, v10)), vcgtq_u16(v44, v25)), vcgtq_u16(v25, v44))), xmmword_27750D230));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v43), vcgtq_u16(v43, v13)), vcgtq_u16(v43, v26)), vcgtq_u16(v26, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v42), vcgtq_u16(v42, v12)), vcgtq_u16(v42, v27)), vcgtq_u16(v27, v42))), xmmword_27750D230));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v41), vcgtq_u16(v41, v15)), vcgtq_u16(v41, v28)), vcgtq_u16(v28, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v40), vcgtq_u16(v40, v14)), vcgtq_u16(v40, v29)), vcgtq_u16(v29, v40))), xmmword_27750D230));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v17, v39), vcgtq_u16(v39, v17)), vcgtq_u16(v39, v31)), vcgtq_u16(v31, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v38), vcgtq_u16(v38, v16)), vcgtq_u16(v38, v32)), vcgtq_u16(v32, v38))), xmmword_27750D230));
    v30[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v30[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v30[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v30[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v30[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v30[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v35;
    *v30 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v30[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v30 = (v30 + v36);
    v11 = v45;
    v10 = v44;
    v13 = v43;
    v12 = v42;
    v15 = v41;
    v14 = v40;
    v17 = v39;
    v16 = v38;
  }

  while (v35 > 1);
  return result;
}

int16x8_t *sub_2773E0564(int16x8_t *a1, uint64_t a2, uint64_t *a3, int a4, float *a5, uint64_t a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v12 = 34;
  }

  else
  {
    v12 = 2;
  }

  v13 = a4 & 0xFFFFFF5D | v12;
  if ((a4 & 4) != 0)
  {
    v14 = 17;
  }

  else
  {
    v14 = 1;
  }

  v15 = a4 & 0xFFFFFFAE | v14 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E0614(a1, a2, a3, v13 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E0614(a1 + 8, a2, a3, v15, a5, v16, a7);
}

int16x8_t *sub_2773E0614(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v7.i64[0] = *a3;
  v7.i64[1] = a3[4];
  v8 = vdupq_n_s16(~a4);
  v9 = vandq_s8(v8, xmmword_27750D2A0);
  v10 = a7 + 1;
  v11 = vceqzq_s16(vandq_s8(v8, xmmword_27750D2B0));
  v12 = vceqzq_s16(v9);
  v13.i64[0] = 0xFE00FE00FE00FE00;
  v13.i64[1] = 0xFE00FE00FE00FE00;
  v14 = a5;
  do
  {
    v15 = *result;
    v16 = result[1];
    v17 = result[2];
    v18 = result[3];
    v19 = result[4];
    v20 = result[5];
    v22 = result[6];
    v21 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v29 = vld1q_dup_f32(v14++);
    *a5 = *&v21.i32[3];
    v30 = vextq_s8(v15, v16, 0xCuLL);
    v31 = vextq_s8(v16, v17, 0xCuLL);
    v32 = vextq_s8(v17, v18, 0xCuLL);
    v33 = vextq_s8(v18, v19, 0xCuLL);
    v34 = vextq_s8(v19, v20, 0xCuLL);
    v35 = vextq_s8(v20, v22, 0xCuLL);
    v36 = vextq_s8(v22, v21, 0xCuLL);
    v37 = vextq_s8(v29, v15, 0xCuLL);
    v38 = vextq_s8(v15, v16, 4uLL);
    v39 = vextq_s8(v16, v17, 4uLL);
    v40 = vextq_s8(v17, v18, 4uLL);
    v41 = vextq_s8(v18, v19, 4uLL);
    v42 = vextq_s8(v19, v20, 4uLL);
    v43 = vextq_s8(v20, v22, 4uLL);
    v44 = vextq_s8(v22, v21, 4uLL);
    v29.i32[0] = result[8 * ((a4 >> 1) & 1)].i32[0];
    v45 = vextq_s8(v21, v29, 4uLL);
    v46 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v15), vcgtq_u16(v15, v38)), vcgtq_u16(v15, v37)), vcgtq_u16(v37, v15))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v39)), vcgtq_u16(v39, v16))), xmmword_27750D230));
    v47 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v40)), vcgtq_u16(v40, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v18), vcgtq_u16(v18, v32)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), xmmword_27750D230));
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v19), vcgtq_u16(v19, v33)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v20), vcgtq_u16(v20, v34)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v22), vcgtq_u16(v22, v35)), vcgtq_u16(v22, v44)), vcgtq_u16(v44, v22))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v45)), vcgtq_u16(v45, v21))), xmmword_27750D230));
    *result = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_s8(v15, *v46.i8), 0), v13), v15);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v16, v46), 0), v13);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v47.i8), 0), v13);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v47), 0), v13);
    result[4] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v48.i8), 0), v13);
    result[5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v48), 0), v13);
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v49.i8), 0), v13);
    result[7] = vbslq_s8(v11, vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v49), 0), v13), v21);
    --v10;
    result = (result + 2 * a2);
    a5 = v14;
  }

  while (v10 > 1);
  return result;
}

__int16 *sub_2773E08A0(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v15 = result;
    v29 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v30 = vld2q_s16(v17);
    __asm { PRFM            #0, [X0,#0x40] }

    v23 = _X11;
    v31 = vld2q_s16(v23);
    v23 += 16;
    v28 = vld2q_s16(v23);
    __asm { PRFM            #0, [X11,#0x40] }

    LODWORD(v25) = vqtbl2q_s8(v30, xmmword_27750D290).u32[0];
    HIDWORD(v25) = vqtbl2q_s8(v28, xmmword_27750D280).i32[1];
    *a5++ = v25;
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v29.val[0], 4uLL), v30.val[0], 4uLL));
    v32.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[0], *v26.i8), 0), v14);
    v27 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v29.val[1], 4uLL), v30.val[1], 4uLL));
    v32.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[1], *v27.i8), 0), v14);
    v29.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[0], v26), 0), v14);
    v29.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[1], v27), 0), v14);
    v30.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v31.val[0], 4uLL), v28.val[0], 4uLL));
    v33.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[0], *v30.val[0].i8), 0), v14);
    v30.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v31.val[1], 4uLL), v28.val[1], 4uLL));
    v33.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[1], *v30.val[1].i8), 0), v14);
    vst2q_s16(result, v32);
    v11 = 4 * a2;
    result = (result + v11);
    v31.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[0], v30.val[0]), 0), v14);
    vst2q_s16(v17, v29);
    v31.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[1], v30.val[1]), 0), v14);
    vst2q_s16(_X11, v33);
    vst2q_s16(v23, v31);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

__int16 *sub_2773E09B0(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v13 = a7 + 2;
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v15 = result;
    v25 = vld2q_s16(v15);
    v12 = a2;
    v16 = &v15[v12];
    __asm { PRFM            #0, [X0,#0x20] }

    _X12 = v16;
    v26 = vld2q_s16(_X12);
    _X12 += 16;
    __asm { PRFM            #0, [X12] }

    LODWORD(v24) = vqtbl2q_s8(v25, xmmword_27750D290).u32[0];
    HIDWORD(v24) = vqtbl2q_s8(v26, xmmword_27750D280).i32[1];
    *a5++ = v24;
    v27.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v25.val[0], 4uLL))), 0), v14);
    v27.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v25.val[1], 4uLL))), 0), v14);
    v25.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v26.val[0], 4uLL))), 0), v14);
    v25.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v26.val[1], 4uLL))), 0), v14);
    vst2q_s16(result, v27);
    v11 = 4 * a2;
    result = (result + v11);
    vst2q_s16(v16, v25);
    v13 -= 2;
  }

  while (v13 > 2);
  return result;
}

uint64_t sub_2773E0A6C(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AE814(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 60);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  v13 = *(_X5 + 2);
  v14 = *(_X5 + 3);
  v15 = (_X5 + 4);
  __asm { PRFM            #0, [X5,#0x40] }

  v21 = *result;
  v22 = *(result + 16);
  v23 = *(result + 32);
  v24 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v26 = vld1q_dup_f32(v15);
  *a5 = v24.i32[3];
  v27 = (a5 + 2);
  v28 = (result + 64);
  v29 = 2 * a2;
  v30 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v31 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v32 = vceqzq_s16(v10);
  v33.i64[0] = 0xFE00FE00FE00FE00;
  v33.i64[1] = 0xFE00FE00FE00FE00;
  v34 = v27;
  do
  {
    v35 = v24;
    v36 = vextq_s8(v11, v13, 4uLL);
    v37 = v23;
    v38 = vextq_s8(v12, v11, 4uLL);
    v11 = v22;
    v12 = v21;
    _X12 = v28 + v29;
    v21 = *(v28 + v29 - 64);
    v22 = *(v28 + v29 - 48);
    v23 = *(v28 + v29 - 32);
    v24 = *(v28 + v29 - 16);
    __asm { PRFM            #0, [X12] }

    v41 = vld1q_dup_f32(v34++);
    v42 = vextq_s8(v13, v14, 4uLL);
    v43 = vextq_s8(v14, v26, 4uLL);
    *v27 = *&v24.i32[3];
    v44 = vextq_s8(v41, v21, 0xCuLL);
    v45 = vextq_s8(v21, v22, 0xCuLL);
    v46 = vextq_s8(v22, v23, 0xCuLL);
    v47 = vextq_s8(v23, v24, 0xCuLL);
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v44)), vcgtq_u16(v44, v12))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v11), vcgtq_u16(v11, v36)), vcgtq_u16(v11, v45)), vcgtq_u16(v45, v11))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v37), vcgtq_u16(v37, v42)), vcgtq_u16(v37, v46)), vcgtq_u16(v46, v37))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v43, v35), vcgtq_u16(v35, v43)), vcgtq_u16(v35, v47)), vcgtq_u16(v47, v35))), xmmword_27750D230));
    *(v28 - 4) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_s8(v12, *v48.i8), 0), v33), v12);
    *(v28 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v11, v48), 0), v33);
    *(v28 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v37, *v49.i8), 0), v33);
    *(v28 - 1) = vbslq_s8(v31, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v49), 0), v33), v35);
    v26 = vld1q_dup_f32(v28);
    --v30;
    v28 = (v28 + v29);
    v27 = v34;
    v13 = v37;
    v14 = v35;
  }

  while (v30 > 1);
  return result;
}

uint64_t sub_2773E0CA0(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AE8A0(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 60);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 60);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = *(result + 16);
  v28 = result + 32;
  v29 = *(result + 32);
  v30 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0xFE00FE00FE00FE00;
  v36.i64[1] = 0xFE00FE00FE00FE00;
  v37 = a5;
  do
  {
    v38 = vextq_s8(v20, v19, 0xCuLL);
    v19 = v30;
    v39 = vextq_s8(v17, v20, 0xCuLL);
    v20 = v29;
    v40 = vextq_s8(v18, v17, 0xCuLL);
    v17 = v27;
    v41 = vextq_s8(v11, v18, 0xCuLL);
    v18 = v26;
    _X13 = v28 + v33;
    v26 = *(v28 + v33 - 32);
    v27 = *(v28 + v33 - 16);
    v29 = *(v28 + 2 * a2);
    v30 = *(v28 + v33 + 16);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = *(v28 + (((a4 >> 1) & 1) << 6) + 2 * a2 - 32);
    v44 = vextq_s8(v26, v27, 4uLL);
    v45 = vextq_s8(v27, v29, 4uLL);
    v46 = vextq_s8(v29, v30, 4uLL);
    v47 = vextq_s8(v30, v7, 4uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v18), vcgtq_u16(v18, v41)), vcgtq_u16(v18, v44)), vcgtq_u16(v44, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v45)), vcgtq_u16(v45, v17))), xmmword_27750D230));
    v49 = vcgtq_u16(v19, v47);
    v7 = vcgtq_u16(v47, v19);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v20), vcgtq_u16(v20, v39)), vcgtq_u16(v20, v46)), vcgtq_u16(v46, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v19), vcgtq_u16(v19, v38)), v49), v7)), xmmword_27750D230));
    *(v28 - 32) = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v48.i8), 0), v36), v18);
    *(v28 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v48), 0), v36);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v50.i8), 0), v36);
    *(v28 + 16) = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v50), 0), v36), v19);
    v11 = vld1q_dup_f32(v37++);
    --v32;
    v28 += v33;
    *a5 = v19.i32[3];
    a5 = v37;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773E0EEC(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[3].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v19 = *result;
  v20 = result[1];
  v21 = result[2];
  v22 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v24 = v9 + 1;
  v25 = 2 * a2;
  v26.i64[0] = 0xFE00FE00FE00FE00;
  v26.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    _X10 = result->i64 + v25;
    v19 = *(result + 2 * a2);
    v20 = *(&result[1] + v25);
    v21 = *(&result[2] + v25);
    v22 = *(&result[3] + v25);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i32[3];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v27), vcgtq_u16(v27, v11)), vcgtq_u16(v27, v19)), vcgtq_u16(v19, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v28), vcgtq_u16(v28, v10)), vcgtq_u16(v28, v20)), vcgtq_u16(v20, v28))), xmmword_27750D230));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v29), vcgtq_u16(v29, v13)), vcgtq_u16(v29, v21)), vcgtq_u16(v21, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v30), vcgtq_u16(v30, v12)), vcgtq_u16(v30, v22)), vcgtq_u16(v22, v30))), xmmword_27750D230));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v24;
    result = (result + v25);
    v11 = v27;
    v10 = v28;
    v13 = v29;
    v12 = v30;
  }

  while (v24 > 1);
  return result;
}

int16x8_t *sub_2773E1078(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    v19 = result[2];
    v18 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v25 = vld1q_dup_f32(v15++);
    *a5 = *&v18.i32[3];
    v7.i32[0] = result[4 * ((a4 >> 1) & 1)].i32[0];
    v26 = vextq_s8(v25, v16, 0xCuLL);
    v27 = vextq_s8(v16, v17, 0xCuLL);
    v28 = vextq_s8(v17, v19, 0xCuLL);
    v29 = vextq_s8(v19, v18, 0xCuLL);
    v30 = vextq_s8(v16, v17, 4uLL);
    v31 = vextq_s8(v17, v19, 4uLL);
    v32 = vextq_s8(v19, v18, 4uLL);
    v33 = vextq_s8(v18, v7, 4uLL);
    v34 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v26)), vcgtq_u16(v26, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))), xmmword_27750D230));
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v19), vcgtq_u16(v19, v28)), vcgtq_u16(v19, v32)), vcgtq_u16(v32, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v18), vcgtq_u16(v18, v29)), vcgtq_u16(v18, v33)), vcgtq_u16(v33, v18))), xmmword_27750D230));
    v36 = vaddw_s8(v19, *v35.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v14);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v34.i8), 0), v14), v16);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v34), 0), v14);
    result[2] = vminq_s16(vmaxq_s16(v36, 0), v14);
    result[3] = vbslq_s8(v12, v7, v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E11F0(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AE92C(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 28);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  __asm { PRFM            #0, [X5,#0x20] }

  v18 = (_X5 + 2);
  v19 = *result;
  v20 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v22 = vld1q_dup_f32(v18);
  *a5 = v20.i32[3];
  v23 = (a5 + 2);
  v24 = 2 * a2;
  v25 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v26 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v27 = vceqzq_s16(v10);
  v28.i64[0] = 0xFE00FE00FE00FE00;
  v28.i64[1] = 0xFE00FE00FE00FE00;
  v29 = v23;
  do
  {
    v30 = vextq_s8(v12, v11, 4uLL);
    v31 = v20;
    v32 = v19;
    _X11 = result + v24;
    v19 = *(result + 2 * a2);
    v20 = *(result + v24 + 16);
    __asm { PRFM            #0, [X11,#0x20] }

    v35 = vld1q_dup_f32(v29++);
    v36 = vextq_s8(v11, v22, 4uLL);
    *v23 = *&v20.i32[3];
    v37 = vextq_s8(v35, v19, 0xCuLL);
    v38 = vextq_s8(v19, v20, 0xCuLL);
    v39 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v32), vcgtq_u16(v32, v30)), vcgtq_u16(v32, v37)), vcgtq_u16(v37, v32))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v31), vcgtq_u16(v31, v36)), vcgtq_u16(v31, v38)), vcgtq_u16(v38, v31))), xmmword_27750D230));
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v32, *v39.i8), 0), v28), v32);
    *(result + 16) = vbslq_s8(v26, vminq_s16(vmaxq_s16(vaddw_high_s8(v31, v39), 0), v28), v31);
    v40 = (result + 32);
    --v25;
    result += v24;
    v22 = vld1q_dup_f32(v40);
    v23 = v29;
    v12 = v32;
    v11 = v31;
  }

  while (v25 > 1);
  return result;
}

uint64_t sub_2773E139C(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AE9B8(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 28);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 28);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0xFE00FE00FE00FE00;
  v31.i64[1] = 0xFE00FE00FE00FE00;
  v32 = a5;
  do
  {
    v33 = vextq_s8(v17, v18, 0xCuLL);
    v34 = v25;
    v35 = v24;
    _X12 = result + v28;
    v24 = *(result + 2 * a2);
    v25 = *(result + v28 + 16);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i32[0] = *(result + 32 * ((a4 >> 1) & 1) + 2 * a2);
    v38 = vextq_s8(v11, v17, 0xCuLL);
    v39 = vextq_s8(v24, v25, 4uLL);
    v40 = vextq_s8(v25, v7, 4uLL);
    v41 = vcgtq_u16(v34, v40);
    v7 = vcgtq_u16(v40, v34);
    v42 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v35), vcgtq_u16(v35, v38)), vcgtq_u16(v35, v39)), vcgtq_u16(v39, v35))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v34), vcgtq_u16(v34, v33)), v41), v7)), xmmword_27750D230));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v35, *v42.i8), 0), v31), v35);
    *(result + 16) = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v34, v42), 0), v31), v34);
    v11 = vld1q_dup_f32(v32++);
    --v27;
    result += v28;
    *a5 = v34.i32[3];
    v17 = v35;
    v18 = v34;
    a5 = v32;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773E1558(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[1].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v17 = *result;
  v18 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v20 = 2 * a2;
  v21 = v9 + 1;
  v22.i64[0] = 0xFE00FE00FE00FE00;
  v22.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v23 = v17;
    v24 = v18;
    _X10 = result->i64 + v20;
    v17 = *(result + 2 * a2);
    v18 = *(&result[1] + v20);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i32[3];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v23), vcgtq_u16(v23, v11)), vcgtq_u16(v23, v17)), vcgtq_u16(v17, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v24), vcgtq_u16(v24, v10)), vcgtq_u16(v24, v18)), vcgtq_u16(v18, v24))), xmmword_27750D230));
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v20);
    v11 = v23;
    v10 = v24;
  }

  while (v21 > 1);
  return result;
}

int16x8_t *sub_2773E1664(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xFE00FE00FE00FE00;
  v14.i64[1] = 0xFE00FE00FE00FE00;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v23 = vld1q_dup_f32(v15++);
    *a5 = *&v17.i32[3];
    v7.i32[0] = result[2 * ((a4 >> 1) & 1)].i32[0];
    v24 = vextq_s8(v23, v16, 0xCuLL);
    v25 = vextq_s8(v16, v17, 0xCuLL);
    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v17, v7, 4uLL);
    v28 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v16), vcgtq_u16(v16, v26)), vcgtq_u16(v16, v24)), vcgtq_u16(v24, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v25, v17), vcgtq_u16(v17, v25)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), xmmword_27750D230));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v28.i8), 0), v14);
    *result = vbslq_s8(v13, v7, v16);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v28), 0), v14), v17);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E1764(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AEABC(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 12);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = *_X5;
  v10 = (_X5 + 1);
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 16;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_f32(v10);
  *a5 = HIDWORD(*result);
  v20 = (a5 + 2);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v24.i64[0] = 0xFE00FE00FE00FE00;
  v24.i64[1] = 0xFE00FE00FE00FE00;
  v25 = v20;
  do
  {
    _X12 = result + v21 + 16;
    v27 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v29 = vld1q_dup_f32(v25++);
    *v20 = *&v27.i32[3];
    v30 = vextq_s8(v9, v19, 4uLL);
    v31 = vextq_s8(v29, v27, 0xCuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v30), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v30, v17)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))))), 0), v24), v17);
    v32 = (result + 16);
    --v22;
    result += v21;
    v19 = vld1q_dup_f32(v32);
    v20 = v25;
    v9 = v17;
    v17 = v27;
  }

  while (v22 > 1);
  return result;
}

uint64_t sub_2773E18D0(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AEB48(result, a2, a3, a4, a5, a6, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 2);
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 12);
    a6 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 12);
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 16;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v28.i64[0] = 0xFE00FE00FE00FE00;
  v28.i64[1] = 0xFE00FE00FE00FE00;
  v29 = a5;
  do
  {
    _X13 = result + v25 + 16;
    v31 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i32[0] = *(result + 16 * ((a4 >> 1) & 1) + 2 * a2);
    v33 = vextq_s8(v11, v16, 0xCuLL);
    v34 = vextq_s8(v31, v7, 4uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v33), xmmword_27750D2E0, xmmword_27750D2D0);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v33, v23)), vcgtq_u16(v23, v34)), vcgtq_u16(v34, v23))))), 0), v28), v23);
    v11 = vld1q_dup_f32(v29++);
    --v26;
    result += v25;
    *a5 = v23.i32[3];
    v16 = v23;
    v23 = v31;
    a5 = v29;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773E1A4C(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i32[3];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result->i32[3] + 2 * v9 * a2);
  v11 = *a6;
  _X5 = a6 + 1;
  v12 = v11;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v19 = *result;
  __asm { PRFM            #0, [X8] }

  v21 = 2 * a2;
  v22 = v9 + 1;
  v23.i64[0] = 0xFE00FE00FE00FE00;
  v23.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    _X11 = result[1].i64 + v21;
    v25 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v19.i32[3];
    --v22;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v19, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v19, v12), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v12, v19)), vcgtq_u16(v19, v25)), vcgtq_u16(v25, v19))))), 0), v23);
    result = (result + v21);
    v12 = v19;
    v19 = v25;
  }

  while (v22 > 1);
  return result;
}

int8x16_t *sub_2773E1B34(int8x16_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v11.i64[0] = 0xFE00FE00FE00FE00;
  v11.i64[1] = 0xFE00FE00FE00FE00;
  v12 = a5;
  do
  {
    v13 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v19 = vld1q_dup_f32(v12++);
    v20 = vextq_s8(v19, *result, 0xCuLL);
    *a5 = HIDWORD(*result);
    v7.i32[0] = result[(a4 >> 1) & 1].i32[0];
    v21 = vextq_s8(v13, v7, 4uLL);
    v22 = vcgtq_u16(v13, v21);
    v7 = vcgtq_u16(v21, v13);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v13, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v13, v20), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v20, v13)), v22), v7)))), 0), v11), v13);
    result = (result + 2 * a2);
    --v9;
    a5 = v12;
  }

  while (v9 > 1);
  return result;
}

__int16 *sub_2773E1BF4(__int16 *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  sub_2773E1C5C(a1, a2, a3, a4, a5, a6, a7);

  return sub_2773E1C5C(a1 + 64, a2, a3, v12, a5, v13, a7);
}

__int16 *sub_2773E1C5C(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xFC00FC00FC00FC00;
  v14.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v15 = result;
    v42 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v36 = vld2q_s16(v17);
    v18 = result + 32;
    v45 = vld2q_s16(v18);
    v19 = result + 48;
    v44 = vld2q_s16(v19);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v26 = _X11;
    v41 = vld2q_s16(v26);
    v26 += 16;
    v40 = vld2q_s16(v26);
    v27 = _X11 + 32;
    v39 = vld2q_s16(v27);
    v28 = _X11 + 48;
    v38 = vld2q_s16(v28);
    LODWORD(v29) = vqtbl2q_s8(v44, xmmword_27750D290).u32[0];
    HIDWORD(v29) = vqtbl2q_s8(v38, xmmword_27750D280).i32[1];
    v30 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v42.val[0], 5uLL), v36.val[0], 5uLL));
    v31 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v42.val[1], 5uLL), v36.val[1], 5uLL));
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[0], *v30.i8), 0), v14);
    __asm
    {
      PRFM            #0, [X11,#0x80]
      PRFM            #0, [X11,#0xC0]
    }

    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[1], *v31.i8), 0), v14);
    *a5++ = v29;
    v43.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[0], v30), 0), v14);
    v43.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[1], v31), 0), v14);
    v36.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v45.val[0], 5uLL), v44.val[0], 5uLL));
    v34 = vaddw_high_s8(v44.val[0], v36.val[0]);
    v36.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[0], *v36.val[0].i8), 0), v14);
    v35 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v45.val[1], 5uLL), v44.val[1], 5uLL));
    v36.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[1], *v35.i8), 0), v14);
    v45.val[0] = vminq_s16(vmaxq_s16(v34, 0), v14);
    v45.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44.val[1], v35), 0), v14);
    v44.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v41.val[0], 5uLL), v40.val[0], 5uLL));
    v37.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[0], *v44.val[0].i8), 0), v14);
    v44.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v41.val[1], 5uLL), v40.val[1], 5uLL));
    v37.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[1], *v44.val[1].i8), 0), v14);
    v41.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[0], v44.val[0]), 0), v14);
    v41.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[1], v44.val[1]), 0), v14);
    v40.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v39.val[0], 5uLL), v38.val[0], 5uLL));
    vst2q_s16(result, v42);
    v11 = 4 * a2;
    result = (result + v11);
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[0], *v40.val[0].i8), 0), v14);
    vst2q_s16(v17, v43);
    v40.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v39.val[1], 5uLL), v38.val[1], 5uLL));
    vst2q_s16(v18, v36);
    vst2q_s16(v19, v45);
    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[1], *v40.val[1].i8), 0), v14);
    vst2q_s16(_X11, v37);
    v39.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[0], v40.val[0]), 0), v14);
    vst2q_s16(v26, v41);
    v39.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[1], v40.val[1]), 0), v14);
    vst2q_s16(v27, v42);
    vst2q_s16(v28, v39);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

uint64_t sub_2773E1E4C(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _WORD *a5, _OWORD *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E1F0C(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E1F0C(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E1F0C(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774ACC7C(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 0x40) != 0)
    {
      *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
    }

    if ((a4 & 4) == 0)
    {
      *a5 = *(result + 124);
      a5 += 2;
      _X5 = result;
      result += 2 * a2;
      --a7;
    }

    v8.i64[1] = v9;
    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D2A0);
    v12 = vtstq_s16(v10, xmmword_27750D2B0);
    v14 = *_X5;
    v13 = *(_X5 + 1);
    v16 = *(_X5 + 2);
    v15 = *(_X5 + 3);
    v18 = *(_X5 + 4);
    v17 = *(_X5 + 5);
    v19 = *(_X5 + 6);
    v20 = *(_X5 + 7);
    v21 = (_X5 + 8);
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = *(result + 16);
    v30 = *(result + 32);
    v31 = *(result + 48);
    v32 = result + 96;
    v33 = *(result + 96);
    v34 = *(result + 64);
    v35 = *(result + 80);
    v36 = *(result + 112);
    __asm { PRFM            #0, [X0,#0x80] }

    v38 = 2 * a2;
    v39 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
    __asm { PRFM            #0, [X0,#0xC0] }

    v41 = vld1q_dup_f32(v21);
    *a5 = v36.i32[3];
    v42 = (a5 + 2);
    v43 = vceqzq_s16(v11);
    v44.i64[0] = 0xFC00FC00FC00FC00;
    v44.i64[1] = 0xFC00FC00FC00FC00;
    v45 = v42;
    do
    {
      v46 = vextq_s8(v19, v20, 4uLL);
      v47 = v36;
      v48 = vextq_s8(v17, v19, 4uLL);
      v19 = v33;
      v49 = vextq_s8(v18, v17, 4uLL);
      v17 = v35;
      v50 = vextq_s8(v15, v18, 4uLL);
      v18 = v34;
      v51 = vextq_s8(v16, v15, 4uLL);
      v15 = v31;
      v52 = vextq_s8(v13, v16, 4uLL);
      v16 = v30;
      v53 = vextq_s8(v14, v13, 4uLL);
      v13 = v29;
      v14 = v28;
      _X12 = v32 + v38;
      v28 = *(v32 + v38 - 96);
      v29 = *(v32 + v38 - 80);
      v30 = *(v32 + v38 - 64);
      v31 = *(v32 + v38 - 48);
      v34 = *(v32 + v38 - 32);
      v35 = *(v32 + v38 - 16);
      v33 = *(v32 + 2 * a2);
      v36 = *(v32 + v38 + 16);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v57 = vld1q_dup_f32(v45++);
      v58 = vextq_s8(v20, v41, 4uLL);
      v59 = vextq_s8(v57, v28, 0xCuLL);
      v60 = vextq_s8(v28, v29, 0xCuLL);
      v61 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v14), vcgtq_u16(v14, v53)), vcgtq_u16(v14, v59)), vcgtq_u16(v59, v14));
      v62 = vextq_s8(v29, v30, 0xCuLL);
      v63 = vqmovn_high_s16(vqmovn_s16(v61), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v13), vcgtq_u16(v13, v52)), vcgtq_u16(v13, v60)), vcgtq_u16(v60, v13)));
      v64 = vextq_s8(v30, v31, 0xCuLL);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v16), vcgtq_u16(v16, v51)), vcgtq_u16(v16, v62)), vcgtq_u16(v62, v16));
      v66 = vextq_s8(v31, v34, 0xCuLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v65), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v15), vcgtq_u16(v15, v50)), vcgtq_u16(v15, v64)), vcgtq_u16(v64, v15)));
      v68 = vextq_s8(v34, v35, 0xCuLL);
      v69 = vextq_s8(v35, v33, 0xCuLL);
      v70 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v18), vcgtq_u16(v18, v49)), vcgtq_u16(v18, v66)), vcgtq_u16(v66, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v17), vcgtq_u16(v17, v48)), vcgtq_u16(v17, v68)), vcgtq_u16(v68, v17)));
      v71 = vextq_s8(v33, v36, 0xCuLL);
      *v42 = *&v36.i32[3];
      v72 = vqtbl1q_s8(v8, vaddq_s8(v63, xmmword_27750D230));
      v73 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v46, v19), vcgtq_u16(v19, v46)), vcgtq_u16(v19, v69)), vcgtq_u16(v69, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v58, v47), vcgtq_u16(v47, v58)), vcgtq_u16(v47, v71)), vcgtq_u16(v71, v47)));
      *(v32 - 96) = vbslq_s8(v43, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v72.i8), 0), v44), v14);
      *(v32 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v72), 0), v44);
      v74 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v32 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v74.i8), 0), v44);
      *(v32 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v74), 0), v44);
      v75 = vqtbl1q_s8(v8, vaddq_s8(v70, xmmword_27750D230));
      *(v32 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v75.i8), 0), v44);
      *(v32 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v75), 0), v44);
      v76 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v76.i8), 0), v44);
      *(v32 + 16) = vbslq_s8(v12, v47, vminq_s16(vmaxq_s16(vaddw_high_s8(v47, v76), 0), v44));
      v77 = (v32 + 32);
      --v39;
      v32 += v38;
      v42 = v45;
      v20 = v47;
      v41 = vld1q_dup_f32(v77);
    }

    while (v39 > 1);
  }

  return result;
}

uint64_t sub_2773E2288(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, int16x8_t *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E2348(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E2348(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E2348(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774ACD08(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i32[3];
      v11 = vld1q_dup_f32(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_f32(v10++);
      *a5 = *(result + 124);
      _X5 = result;
      result += 2 * a2;
      --a7;
      a5 = v10;
    }

    v8.i64[1] = v9;
    v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
    *&a5[2 * v13] = *(result + 2 * v13 * a2 + 124);
    v14 = vdupq_n_s16(~a4);
    v16 = *_X5;
    v15 = _X5[1];
    v17 = vandq_s8(v14, xmmword_27750D2A0);
    v18 = vtstq_s16(v14, xmmword_27750D2B0);
    v20 = _X5[2];
    v19 = _X5[3];
    v22 = _X5[4];
    v21 = _X5[5];
    v24 = _X5[6];
    v23 = _X5[7];
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v31 = *result;
    v32 = *(result + 16);
    v33 = *(result + 32);
    v34 = *(result + 48);
    v35 = *(result + 64);
    v36 = *(result + 80);
    v37 = result + 96;
    v38 = *(result + 96);
    v39 = *(result + 112);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = 2 * a2;
    v43 = v13 + 1;
    v44 = vceqzq_s16(v17);
    v45.i64[0] = 0xFC00FC00FC00FC00;
    v45.i64[1] = 0xFC00FC00FC00FC00;
    v46 = a5;
    do
    {
      v47 = vextq_s8(v24, v23, 0xCuLL);
      v23 = v39;
      v48 = vextq_s8(v21, v24, 0xCuLL);
      v24 = v38;
      v49 = vextq_s8(v22, v21, 0xCuLL);
      v21 = v36;
      v50 = vextq_s8(v19, v22, 0xCuLL);
      v22 = v35;
      v51 = vextq_s8(v20, v19, 0xCuLL);
      v19 = v34;
      v52 = vextq_s8(v15, v20, 0xCuLL);
      v20 = v33;
      v53 = vextq_s8(v16, v15, 0xCuLL);
      v15 = v32;
      v54 = vextq_s8(v11, v16, 0xCuLL);
      v16 = v31;
      _X13 = v37 + v42;
      v31 = *(v37 + v42 - 96);
      v32 = *(v37 + v42 - 80);
      v33 = *(v37 + v42 - 64);
      v34 = *(v37 + v42 - 48);
      v35 = *(v37 + v42 - 32);
      v36 = *(v37 + v42 - 16);
      v56 = vextq_s8(v31, v32, 4uLL);
      v57 = vextq_s8(v32, v33, 4uLL);
      v58 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v16), vcgtq_u16(v16, v54)), vcgtq_u16(v16, v56)), vcgtq_u16(v56, v16));
      v59 = vextq_s8(v33, v34, 4uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v15), vcgtq_u16(v15, v53)), vcgtq_u16(v15, v57)), vcgtq_u16(v57, v15));
      v61 = vextq_s8(v34, v35, 4uLL);
      v62 = vqmovn_high_s16(vqmovn_s16(v58), v60);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v20), vcgtq_u16(v20, v52)), vcgtq_u16(v20, v59)), vcgtq_u16(v59, v20));
      v64 = vsubq_s16(vsubq_s16(vcgtq_u16(v51, v19), vcgtq_u16(v19, v51)), vcgtq_u16(v19, v61));
      v38 = *(v37 + 2 * a2);
      v39 = *(v37 + v42 + 16);
      v65 = vaddq_s16(v64, vcgtq_u16(v61, v19));
      v66 = vextq_s8(v35, v36, 4uLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v63), v65);
      v68 = vextq_s8(v36, v38, 4uLL);
      v69 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v22), vcgtq_u16(v22, v50)), vcgtq_u16(v22, v66)), vcgtq_u16(v66, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v72 = vextq_s8(v38, v39, 4uLL);
      v73 = vqmovn_high_s16(vqmovn_s16(v69), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v21), vcgtq_u16(v21, v49)), vcgtq_u16(v21, v68)), vcgtq_u16(v68, v21)));
      v74 = vcgtq_u16(v24, v72);
      v75 = vsubq_s16(vsubq_s16(vcgtq_u16(v48, v24), vcgtq_u16(v24, v48)), v74);
      v74.i32[0] = *(v37 + (((a4 >> 1) & 1) << 7) + 2 * a2 - 96);
      v76 = vextq_s8(v39, v74, 4uLL);
      v77 = vqtbl1q_s8(v8, vaddq_s8(v62, xmmword_27750D230));
      v78 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v75, vcgtq_u16(v72, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v47, v23), vcgtq_u16(v23, v47)), vcgtq_u16(v23, v76)), vcgtq_u16(v76, v23)));
      *(v37 - 96) = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v45), v16);
      *(v37 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v45);
      v79 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v37 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v79.i8), 0), v45);
      *(v37 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v79), 0), v45);
      v80 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *(v37 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v80.i8), 0), v45);
      *(v37 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v80), 0), v45);
      v81 = vqtbl1q_s8(v8, vaddq_s8(v78, xmmword_27750D230));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v81.i8), 0), v45);
      *(v37 + 16) = vbslq_s8(v18, v23, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v81), 0), v45));
      v11 = vld1q_dup_f32(v46++);
      --v43;
      v37 += v42;
      *a5 = v23.i32[3];
      a5 = v46;
    }

    while (v43 > 1);
  }

  return result;
}

uint64_t sub_2773E26D0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E2790(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E2790(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E2790(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 124);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(result + 2 * v9 * a2 + 124);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  v15 = _X5[4];
  v14 = _X5[5];
  v17 = _X5[6];
  v16 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v24 = *result;
  v25 = *(result + 16);
  v26 = *(result + 32);
  v27 = *(result + 48);
  v28 = *(result + 64);
  v29 = *(result + 80);
  v30 = (result + 96);
  v31 = *(result + 96);
  v32 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v35 = v9 + 1;
  v36 = 2 * a2;
  v37.i64[0] = 0xFC00FC00FC00FC00;
  v37.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v38 = v32;
    v39 = v31;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v26;
    v44 = v25;
    v45 = v24;
    _X11 = &v30->i8[v36];
    v24 = *(&v30[-6] + v36);
    v25 = *(&v30[-5] + v36);
    v26 = *(&v30[-4] + v36);
    v27 = *(&v30[-3] + v36);
    v28 = *(&v30[-2] + v36);
    v29 = *(&v30[-1] + v36);
    v31 = *(v30 + 2 * a2);
    v32 = *(&v30[1] + v36);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i32[3];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v45), vcgtq_u16(v45, v11)), vcgtq_u16(v45, v24)), vcgtq_u16(v24, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v44), vcgtq_u16(v44, v10)), vcgtq_u16(v44, v25)), vcgtq_u16(v25, v44))), xmmword_27750D230));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v43), vcgtq_u16(v43, v13)), vcgtq_u16(v43, v26)), vcgtq_u16(v26, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v42), vcgtq_u16(v42, v12)), vcgtq_u16(v42, v27)), vcgtq_u16(v27, v42))), xmmword_27750D230));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v41), vcgtq_u16(v41, v15)), vcgtq_u16(v41, v28)), vcgtq_u16(v28, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v40), vcgtq_u16(v40, v14)), vcgtq_u16(v40, v29)), vcgtq_u16(v29, v40))), xmmword_27750D230));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v17, v39), vcgtq_u16(v39, v17)), vcgtq_u16(v39, v31)), vcgtq_u16(v31, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v38), vcgtq_u16(v38, v16)), vcgtq_u16(v38, v32)), vcgtq_u16(v32, v38))), xmmword_27750D230));
    v30[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v30[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v30[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v30[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v30[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v30[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v35;
    *v30 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v30[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v30 = (v30 + v36);
    v11 = v45;
    v10 = v44;
    v13 = v43;
    v12 = v42;
    v15 = v41;
    v14 = v40;
    v17 = v39;
    v16 = v38;
  }

  while (v35 > 1);
  return result;
}

int16x8_t *sub_2773E2A50(int16x8_t *a1, uint64_t a2, uint64_t *a3, int a4, float *a5, uint64_t a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v12 = 34;
  }

  else
  {
    v12 = 2;
  }

  v13 = a4 & 0xFFFFFF5D | v12;
  if ((a4 & 4) != 0)
  {
    v14 = 17;
  }

  else
  {
    v14 = 1;
  }

  v15 = a4 & 0xFFFFFFAE | v14 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E2B00(a1, a2, a3, v13 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E2B00(a1 + 8, a2, a3, v15, a5, v16, a7);
}

int16x8_t *sub_2773E2B00(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v7.i64[0] = *a3;
  v7.i64[1] = a3[4];
  v8 = vdupq_n_s16(~a4);
  v9 = vandq_s8(v8, xmmword_27750D2A0);
  v10 = a7 + 1;
  v11 = vceqzq_s16(vandq_s8(v8, xmmword_27750D2B0));
  v12 = vceqzq_s16(v9);
  v13.i64[0] = 0xFC00FC00FC00FC00;
  v13.i64[1] = 0xFC00FC00FC00FC00;
  v14 = a5;
  do
  {
    v15 = *result;
    v16 = result[1];
    v17 = result[2];
    v18 = result[3];
    v19 = result[4];
    v20 = result[5];
    v22 = result[6];
    v21 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v29 = vld1q_dup_f32(v14++);
    *a5 = *&v21.i32[3];
    v30 = vextq_s8(v15, v16, 0xCuLL);
    v31 = vextq_s8(v16, v17, 0xCuLL);
    v32 = vextq_s8(v17, v18, 0xCuLL);
    v33 = vextq_s8(v18, v19, 0xCuLL);
    v34 = vextq_s8(v19, v20, 0xCuLL);
    v35 = vextq_s8(v20, v22, 0xCuLL);
    v36 = vextq_s8(v22, v21, 0xCuLL);
    v37 = vextq_s8(v29, v15, 0xCuLL);
    v38 = vextq_s8(v15, v16, 4uLL);
    v39 = vextq_s8(v16, v17, 4uLL);
    v40 = vextq_s8(v17, v18, 4uLL);
    v41 = vextq_s8(v18, v19, 4uLL);
    v42 = vextq_s8(v19, v20, 4uLL);
    v43 = vextq_s8(v20, v22, 4uLL);
    v44 = vextq_s8(v22, v21, 4uLL);
    v29.i32[0] = result[8 * ((a4 >> 1) & 1)].i32[0];
    v45 = vextq_s8(v21, v29, 4uLL);
    v46 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v15), vcgtq_u16(v15, v38)), vcgtq_u16(v15, v37)), vcgtq_u16(v37, v15))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v39)), vcgtq_u16(v39, v16))), xmmword_27750D230));
    v47 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v40)), vcgtq_u16(v40, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v18), vcgtq_u16(v18, v32)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), xmmword_27750D230));
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v19), vcgtq_u16(v19, v33)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v20), vcgtq_u16(v20, v34)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v22), vcgtq_u16(v22, v35)), vcgtq_u16(v22, v44)), vcgtq_u16(v44, v22))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v45)), vcgtq_u16(v45, v21))), xmmword_27750D230));
    *result = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_s8(v15, *v46.i8), 0), v13), v15);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v16, v46), 0), v13);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v47.i8), 0), v13);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v47), 0), v13);
    result[4] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v48.i8), 0), v13);
    result[5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v48), 0), v13);
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v49.i8), 0), v13);
    result[7] = vbslq_s8(v11, vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v49), 0), v13), v21);
    --v10;
    result = (result + 2 * a2);
    a5 = v14;
  }

  while (v10 > 1);
  return result;
}

__int16 *sub_2773E2D8C(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xFC00FC00FC00FC00;
  v14.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v15 = result;
    v29 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v30 = vld2q_s16(v17);
    __asm { PRFM            #0, [X0,#0x40] }

    v23 = _X11;
    v31 = vld2q_s16(v23);
    v23 += 16;
    v28 = vld2q_s16(v23);
    __asm { PRFM            #0, [X11,#0x40] }

    LODWORD(v25) = vqtbl2q_s8(v30, xmmword_27750D290).u32[0];
    HIDWORD(v25) = vqtbl2q_s8(v28, xmmword_27750D280).i32[1];
    *a5++ = v25;
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v29.val[0], 5uLL), v30.val[0], 5uLL));
    v32.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[0], *v26.i8), 0), v14);
    v27 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v29.val[1], 5uLL), v30.val[1], 5uLL));
    v32.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[1], *v27.i8), 0), v14);
    v29.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[0], v26), 0), v14);
    v29.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[1], v27), 0), v14);
    v30.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v31.val[0], 5uLL), v28.val[0], 5uLL));
    v33.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[0], *v30.val[0].i8), 0), v14);
    v30.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v31.val[1], 5uLL), v28.val[1], 5uLL));
    v33.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[1], *v30.val[1].i8), 0), v14);
    vst2q_s16(result, v32);
    v11 = 4 * a2;
    result = (result + v11);
    v31.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[0], v30.val[0]), 0), v14);
    vst2q_s16(v17, v29);
    v31.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[1], v30.val[1]), 0), v14);
    vst2q_s16(_X11, v33);
    vst2q_s16(v23, v31);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

__int16 *sub_2773E2E9C(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v13 = a7 + 2;
  v14.i64[0] = 0xFC00FC00FC00FC00;
  v14.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v15 = result;
    v25 = vld2q_s16(v15);
    v12 = a2;
    v16 = &v15[v12];
    __asm { PRFM            #0, [X0,#0x20] }

    _X12 = v16;
    v26 = vld2q_s16(_X12);
    _X12 += 16;
    __asm { PRFM            #0, [X12] }

    LODWORD(v24) = vqtbl2q_s8(v25, xmmword_27750D290).u32[0];
    HIDWORD(v24) = vqtbl2q_s8(v26, xmmword_27750D280).i32[1];
    *a5++ = v24;
    v27.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v25.val[0], 5uLL))), 0), v14);
    v27.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v25.val[1], 5uLL))), 0), v14);
    v25.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v26.val[0], 5uLL))), 0), v14);
    v25.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v26.val[1], 5uLL))), 0), v14);
    vst2q_s16(result, v27);
    v11 = 4 * a2;
    result = (result + v11);
    vst2q_s16(v16, v25);
    v13 -= 2;
  }

  while (v13 > 2);
  return result;
}

uint64_t sub_2773E2F58(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774ACD94(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 60);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  v13 = *(_X5 + 2);
  v14 = *(_X5 + 3);
  v15 = (_X5 + 4);
  __asm { PRFM            #0, [X5,#0x40] }

  v21 = *result;
  v22 = *(result + 16);
  v23 = *(result + 32);
  v24 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v26 = vld1q_dup_f32(v15);
  *a5 = v24.i32[3];
  v27 = (a5 + 2);
  v28 = (result + 64);
  v29 = 2 * a2;
  v30 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v31 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v32 = vceqzq_s16(v10);
  v33.i64[0] = 0xFC00FC00FC00FC00;
  v33.i64[1] = 0xFC00FC00FC00FC00;
  v34 = v27;
  do
  {
    v35 = v24;
    v36 = vextq_s8(v11, v13, 4uLL);
    v37 = v23;
    v38 = vextq_s8(v12, v11, 4uLL);
    v11 = v22;
    v12 = v21;
    _X12 = v28 + v29;
    v21 = *(v28 + v29 - 64);
    v22 = *(v28 + v29 - 48);
    v23 = *(v28 + v29 - 32);
    v24 = *(v28 + v29 - 16);
    __asm { PRFM            #0, [X12] }

    v41 = vld1q_dup_f32(v34++);
    v42 = vextq_s8(v13, v14, 4uLL);
    v43 = vextq_s8(v14, v26, 4uLL);
    *v27 = *&v24.i32[3];
    v44 = vextq_s8(v41, v21, 0xCuLL);
    v45 = vextq_s8(v21, v22, 0xCuLL);
    v46 = vextq_s8(v22, v23, 0xCuLL);
    v47 = vextq_s8(v23, v24, 0xCuLL);
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v44)), vcgtq_u16(v44, v12))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v11), vcgtq_u16(v11, v36)), vcgtq_u16(v11, v45)), vcgtq_u16(v45, v11))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v37), vcgtq_u16(v37, v42)), vcgtq_u16(v37, v46)), vcgtq_u16(v46, v37))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v43, v35), vcgtq_u16(v35, v43)), vcgtq_u16(v35, v47)), vcgtq_u16(v47, v35))), xmmword_27750D230));
    *(v28 - 4) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_s8(v12, *v48.i8), 0), v33), v12);
    *(v28 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v11, v48), 0), v33);
    *(v28 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v37, *v49.i8), 0), v33);
    *(v28 - 1) = vbslq_s8(v31, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v49), 0), v33), v35);
    v26 = vld1q_dup_f32(v28);
    --v30;
    v28 = (v28 + v29);
    v27 = v34;
    v13 = v37;
    v14 = v35;
  }

  while (v30 > 1);
  return result;
}

uint64_t sub_2773E318C(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774ACE20(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 60);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 60);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = *(result + 16);
  v28 = result + 32;
  v29 = *(result + 32);
  v30 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0xFC00FC00FC00FC00;
  v36.i64[1] = 0xFC00FC00FC00FC00;
  v37 = a5;
  do
  {
    v38 = vextq_s8(v20, v19, 0xCuLL);
    v19 = v30;
    v39 = vextq_s8(v17, v20, 0xCuLL);
    v20 = v29;
    v40 = vextq_s8(v18, v17, 0xCuLL);
    v17 = v27;
    v41 = vextq_s8(v11, v18, 0xCuLL);
    v18 = v26;
    _X13 = v28 + v33;
    v26 = *(v28 + v33 - 32);
    v27 = *(v28 + v33 - 16);
    v29 = *(v28 + 2 * a2);
    v30 = *(v28 + v33 + 16);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = *(v28 + (((a4 >> 1) & 1) << 6) + 2 * a2 - 32);
    v44 = vextq_s8(v26, v27, 4uLL);
    v45 = vextq_s8(v27, v29, 4uLL);
    v46 = vextq_s8(v29, v30, 4uLL);
    v47 = vextq_s8(v30, v7, 4uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v18), vcgtq_u16(v18, v41)), vcgtq_u16(v18, v44)), vcgtq_u16(v44, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v45)), vcgtq_u16(v45, v17))), xmmword_27750D230));
    v49 = vcgtq_u16(v19, v47);
    v7 = vcgtq_u16(v47, v19);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v20), vcgtq_u16(v20, v39)), vcgtq_u16(v20, v46)), vcgtq_u16(v46, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v19), vcgtq_u16(v19, v38)), v49), v7)), xmmword_27750D230));
    *(v28 - 32) = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v48.i8), 0), v36), v18);
    *(v28 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v48), 0), v36);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v50.i8), 0), v36);
    *(v28 + 16) = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v50), 0), v36), v19);
    v11 = vld1q_dup_f32(v37++);
    --v32;
    v28 += v33;
    *a5 = v19.i32[3];
    a5 = v37;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773E33D8(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[3].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v19 = *result;
  v20 = result[1];
  v21 = result[2];
  v22 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v24 = v9 + 1;
  v25 = 2 * a2;
  v26.i64[0] = 0xFC00FC00FC00FC00;
  v26.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    _X10 = result->i64 + v25;
    v19 = *(result + 2 * a2);
    v20 = *(&result[1] + v25);
    v21 = *(&result[2] + v25);
    v22 = *(&result[3] + v25);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i32[3];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v27), vcgtq_u16(v27, v11)), vcgtq_u16(v27, v19)), vcgtq_u16(v19, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v28), vcgtq_u16(v28, v10)), vcgtq_u16(v28, v20)), vcgtq_u16(v20, v28))), xmmword_27750D230));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v29), vcgtq_u16(v29, v13)), vcgtq_u16(v29, v21)), vcgtq_u16(v21, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v30), vcgtq_u16(v30, v12)), vcgtq_u16(v30, v22)), vcgtq_u16(v22, v30))), xmmword_27750D230));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v24;
    result = (result + v25);
    v11 = v27;
    v10 = v28;
    v13 = v29;
    v12 = v30;
  }

  while (v24 > 1);
  return result;
}

int16x8_t *sub_2773E3564(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xFC00FC00FC00FC00;
  v14.i64[1] = 0xFC00FC00FC00FC00;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    v19 = result[2];
    v18 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v25 = vld1q_dup_f32(v15++);
    *a5 = *&v18.i32[3];
    v7.i32[0] = result[4 * ((a4 >> 1) & 1)].i32[0];
    v26 = vextq_s8(v25, v16, 0xCuLL);
    v27 = vextq_s8(v16, v17, 0xCuLL);
    v28 = vextq_s8(v17, v19, 0xCuLL);
    v29 = vextq_s8(v19, v18, 0xCuLL);
    v30 = vextq_s8(v16, v17, 4uLL);
    v31 = vextq_s8(v17, v19, 4uLL);
    v32 = vextq_s8(v19, v18, 4uLL);
    v33 = vextq_s8(v18, v7, 4uLL);
    v34 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v26)), vcgtq_u16(v26, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))), xmmword_27750D230));
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v19), vcgtq_u16(v19, v28)), vcgtq_u16(v19, v32)), vcgtq_u16(v32, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v18), vcgtq_u16(v18, v29)), vcgtq_u16(v18, v33)), vcgtq_u16(v33, v18))), xmmword_27750D230));
    v36 = vaddw_s8(v19, *v35.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v14);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v34.i8), 0), v14), v16);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v34), 0), v14);
    result[2] = vminq_s16(vmaxq_s16(v36, 0), v14);
    result[3] = vbslq_s8(v12, v7, v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E36DC(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774ACEAC(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 28);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  __asm { PRFM            #0, [X5,#0x20] }

  v18 = (_X5 + 2);
  v19 = *result;
  v20 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v22 = vld1q_dup_f32(v18);
  *a5 = v20.i32[3];
  v23 = (a5 + 2);
  v24 = 2 * a2;
  v25 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v26 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v27 = vceqzq_s16(v10);
  v28.i64[0] = 0xFC00FC00FC00FC00;
  v28.i64[1] = 0xFC00FC00FC00FC00;
  v29 = v23;
  do
  {
    v30 = vextq_s8(v12, v11, 4uLL);
    v31 = v20;
    v32 = v19;
    _X11 = result + v24;
    v19 = *(result + 2 * a2);
    v20 = *(result + v24 + 16);
    __asm { PRFM            #0, [X11,#0x20] }

    v35 = vld1q_dup_f32(v29++);
    v36 = vextq_s8(v11, v22, 4uLL);
    *v23 = *&v20.i32[3];
    v37 = vextq_s8(v35, v19, 0xCuLL);
    v38 = vextq_s8(v19, v20, 0xCuLL);
    v39 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v32), vcgtq_u16(v32, v30)), vcgtq_u16(v32, v37)), vcgtq_u16(v37, v32))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v31), vcgtq_u16(v31, v36)), vcgtq_u16(v31, v38)), vcgtq_u16(v38, v31))), xmmword_27750D230));
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v32, *v39.i8), 0), v28), v32);
    *(result + 16) = vbslq_s8(v26, vminq_s16(vmaxq_s16(vaddw_high_s8(v31, v39), 0), v28), v31);
    v40 = (result + 32);
    --v25;
    result += v24;
    v22 = vld1q_dup_f32(v40);
    v23 = v29;
    v12 = v32;
    v11 = v31;
  }

  while (v25 > 1);
  return result;
}

uint64_t sub_2773E3888(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774ACF38(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 28);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 28);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0xFC00FC00FC00FC00;
  v31.i64[1] = 0xFC00FC00FC00FC00;
  v32 = a5;
  do
  {
    v33 = vextq_s8(v17, v18, 0xCuLL);
    v34 = v25;
    v35 = v24;
    _X12 = result + v28;
    v24 = *(result + 2 * a2);
    v25 = *(result + v28 + 16);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i32[0] = *(result + 32 * ((a4 >> 1) & 1) + 2 * a2);
    v38 = vextq_s8(v11, v17, 0xCuLL);
    v39 = vextq_s8(v24, v25, 4uLL);
    v40 = vextq_s8(v25, v7, 4uLL);
    v41 = vcgtq_u16(v34, v40);
    v7 = vcgtq_u16(v40, v34);
    v42 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v35), vcgtq_u16(v35, v38)), vcgtq_u16(v35, v39)), vcgtq_u16(v39, v35))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v34), vcgtq_u16(v34, v33)), v41), v7)), xmmword_27750D230));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v35, *v42.i8), 0), v31), v35);
    *(result + 16) = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v34, v42), 0), v31), v34);
    v11 = vld1q_dup_f32(v32++);
    --v27;
    result += v28;
    *a5 = v34.i32[3];
    v17 = v35;
    v18 = v34;
    a5 = v32;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773E3A44(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[1].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v17 = *result;
  v18 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v20 = 2 * a2;
  v21 = v9 + 1;
  v22.i64[0] = 0xFC00FC00FC00FC00;
  v22.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v23 = v17;
    v24 = v18;
    _X10 = result->i64 + v20;
    v17 = *(result + 2 * a2);
    v18 = *(&result[1] + v20);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i32[3];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v23), vcgtq_u16(v23, v11)), vcgtq_u16(v23, v17)), vcgtq_u16(v17, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v24), vcgtq_u16(v24, v10)), vcgtq_u16(v24, v18)), vcgtq_u16(v18, v24))), xmmword_27750D230));
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v20);
    v11 = v23;
    v10 = v24;
  }

  while (v21 > 1);
  return result;
}

int16x8_t *sub_2773E3B50(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xFC00FC00FC00FC00;
  v14.i64[1] = 0xFC00FC00FC00FC00;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v23 = vld1q_dup_f32(v15++);
    *a5 = *&v17.i32[3];
    v7.i32[0] = result[2 * ((a4 >> 1) & 1)].i32[0];
    v24 = vextq_s8(v23, v16, 0xCuLL);
    v25 = vextq_s8(v16, v17, 0xCuLL);
    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v17, v7, 4uLL);
    v28 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v16), vcgtq_u16(v16, v26)), vcgtq_u16(v16, v24)), vcgtq_u16(v24, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v25, v17), vcgtq_u16(v17, v25)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), xmmword_27750D230));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v28.i8), 0), v14);
    *result = vbslq_s8(v13, v7, v16);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v28), 0), v14), v17);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E3C50(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AD03C(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 12);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = *_X5;
  v10 = (_X5 + 1);
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 16;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_f32(v10);
  *a5 = HIDWORD(*result);
  v20 = (a5 + 2);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v24.i64[0] = 0xFC00FC00FC00FC00;
  v24.i64[1] = 0xFC00FC00FC00FC00;
  v25 = v20;
  do
  {
    _X12 = result + v21 + 16;
    v27 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v29 = vld1q_dup_f32(v25++);
    *v20 = *&v27.i32[3];
    v30 = vextq_s8(v9, v19, 4uLL);
    v31 = vextq_s8(v29, v27, 0xCuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v30), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v30, v17)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))))), 0), v24), v17);
    v32 = (result + 16);
    --v22;
    result += v21;
    v19 = vld1q_dup_f32(v32);
    v20 = v25;
    v9 = v17;
    v17 = v27;
  }

  while (v22 > 1);
  return result;
}

uint64_t sub_2773E3DBC(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AD0C8(result, a2, a3, a4, a5, a6, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 2);
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 12);
    a6 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 12);
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 16;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v28.i64[0] = 0xFC00FC00FC00FC00;
  v28.i64[1] = 0xFC00FC00FC00FC00;
  v29 = a5;
  do
  {
    _X13 = result + v25 + 16;
    v31 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i32[0] = *(result + 16 * ((a4 >> 1) & 1) + 2 * a2);
    v33 = vextq_s8(v11, v16, 0xCuLL);
    v34 = vextq_s8(v31, v7, 4uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v33), xmmword_27750D2E0, xmmword_27750D2D0);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v33, v23)), vcgtq_u16(v23, v34)), vcgtq_u16(v34, v23))))), 0), v28), v23);
    v11 = vld1q_dup_f32(v29++);
    --v26;
    result += v25;
    *a5 = v23.i32[3];
    v16 = v23;
    v23 = v31;
    a5 = v29;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773E3F38(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i32[3];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result->i32[3] + 2 * v9 * a2);
  v11 = *a6;
  _X5 = a6 + 1;
  v12 = v11;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v19 = *result;
  __asm { PRFM            #0, [X8] }

  v21 = 2 * a2;
  v22 = v9 + 1;
  v23.i64[0] = 0xFC00FC00FC00FC00;
  v23.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    _X11 = result[1].i64 + v21;
    v25 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v19.i32[3];
    --v22;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v19, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v19, v12), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v12, v19)), vcgtq_u16(v19, v25)), vcgtq_u16(v25, v19))))), 0), v23);
    result = (result + v21);
    v12 = v19;
    v19 = v25;
  }

  while (v22 > 1);
  return result;
}

int8x16_t *sub_2773E4020(int8x16_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v11.i64[0] = 0xFC00FC00FC00FC00;
  v11.i64[1] = 0xFC00FC00FC00FC00;
  v12 = a5;
  do
  {
    v13 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v19 = vld1q_dup_f32(v12++);
    v20 = vextq_s8(v19, *result, 0xCuLL);
    *a5 = HIDWORD(*result);
    v7.i32[0] = result[(a4 >> 1) & 1].i32[0];
    v21 = vextq_s8(v13, v7, 4uLL);
    v22 = vcgtq_u16(v13, v21);
    v7 = vcgtq_u16(v21, v13);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v13, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v13, v20), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v20, v13)), v22), v7)))), 0), v11), v13);
    result = (result + 2 * a2);
    --v9;
    a5 = v12;
  }

  while (v9 > 1);
  return result;
}

__int16 *sub_2773E40E0(__int16 *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  sub_2773E4148(a1, a2, a3, a4, a5, a6, a7);

  return sub_2773E4148(a1 + 64, a2, a3, v12, a5, v13, a7);
}

__int16 *sub_2773E4148(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  do
  {
    v15 = result;
    v42 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v36 = vld2q_s16(v17);
    v18 = result + 32;
    v45 = vld2q_s16(v18);
    v19 = result + 48;
    v44 = vld2q_s16(v19);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v26 = _X11;
    v41 = vld2q_s16(v26);
    v26 += 16;
    v40 = vld2q_s16(v26);
    v27 = _X11 + 32;
    v39 = vld2q_s16(v27);
    v28 = _X11 + 48;
    v38 = vld2q_s16(v28);
    LODWORD(v29) = vqtbl2q_s8(v44, xmmword_27750D290).u32[0];
    HIDWORD(v29) = vqtbl2q_s8(v38, xmmword_27750D280).i32[1];
    v30 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v42.val[0], 6uLL), v36.val[0], 6uLL));
    v31 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v42.val[1], 6uLL), v36.val[1], 6uLL));
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[0], *v30.i8), 0), v14);
    __asm
    {
      PRFM            #0, [X11,#0x80]
      PRFM            #0, [X11,#0xC0]
    }

    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[1], *v31.i8), 0), v14);
    *a5++ = v29;
    v43.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[0], v30), 0), v14);
    v43.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[1], v31), 0), v14);
    v36.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v45.val[0], 6uLL), v44.val[0], 6uLL));
    v34 = vaddw_high_s8(v44.val[0], v36.val[0]);
    v36.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[0], *v36.val[0].i8), 0), v14);
    v35 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v45.val[1], 6uLL), v44.val[1], 6uLL));
    v36.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[1], *v35.i8), 0), v14);
    v45.val[0] = vminq_s16(vmaxq_s16(v34, 0), v14);
    v45.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44.val[1], v35), 0), v14);
    v44.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v41.val[0], 6uLL), v40.val[0], 6uLL));
    v37.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[0], *v44.val[0].i8), 0), v14);
    v44.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v41.val[1], 6uLL), v40.val[1], 6uLL));
    v37.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[1], *v44.val[1].i8), 0), v14);
    v41.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[0], v44.val[0]), 0), v14);
    v41.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[1], v44.val[1]), 0), v14);
    v40.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v39.val[0], 6uLL), v38.val[0], 6uLL));
    vst2q_s16(result, v42);
    v11 = 4 * a2;
    result = (result + v11);
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[0], *v40.val[0].i8), 0), v14);
    vst2q_s16(v17, v43);
    v40.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v39.val[1], 6uLL), v38.val[1], 6uLL));
    vst2q_s16(v18, v36);
    vst2q_s16(v19, v45);
    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[1], *v40.val[1].i8), 0), v14);
    vst2q_s16(_X11, v37);
    v39.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[0], v40.val[0]), 0), v14);
    vst2q_s16(v26, v41);
    v39.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[1], v40.val[1]), 0), v14);
    vst2q_s16(v27, v42);
    vst2q_s16(v28, v39);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

uint64_t sub_2773E4338(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _WORD *a5, _OWORD *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E43F8(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E43F8(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E43F8(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774AB1FC(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 0x40) != 0)
    {
      *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
    }

    if ((a4 & 4) == 0)
    {
      *a5 = *(result + 124);
      a5 += 2;
      _X5 = result;
      result += 2 * a2;
      --a7;
    }

    v8.i64[1] = v9;
    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D2A0);
    v12 = vtstq_s16(v10, xmmword_27750D2B0);
    v14 = *_X5;
    v13 = *(_X5 + 1);
    v16 = *(_X5 + 2);
    v15 = *(_X5 + 3);
    v18 = *(_X5 + 4);
    v17 = *(_X5 + 5);
    v19 = *(_X5 + 6);
    v20 = *(_X5 + 7);
    v21 = (_X5 + 8);
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = *(result + 16);
    v30 = *(result + 32);
    v31 = *(result + 48);
    v32 = result + 96;
    v33 = *(result + 96);
    v34 = *(result + 64);
    v35 = *(result + 80);
    v36 = *(result + 112);
    __asm { PRFM            #0, [X0,#0x80] }

    v38 = 2 * a2;
    v39 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
    __asm { PRFM            #0, [X0,#0xC0] }

    v41 = vld1q_dup_f32(v21);
    *a5 = v36.i32[3];
    v42 = (a5 + 2);
    v43 = vceqzq_s16(v11);
    v44.i64[0] = 0xF800F800F800F800;
    v44.i64[1] = 0xF800F800F800F800;
    v45 = v42;
    do
    {
      v46 = vextq_s8(v19, v20, 4uLL);
      v47 = v36;
      v48 = vextq_s8(v17, v19, 4uLL);
      v19 = v33;
      v49 = vextq_s8(v18, v17, 4uLL);
      v17 = v35;
      v50 = vextq_s8(v15, v18, 4uLL);
      v18 = v34;
      v51 = vextq_s8(v16, v15, 4uLL);
      v15 = v31;
      v52 = vextq_s8(v13, v16, 4uLL);
      v16 = v30;
      v53 = vextq_s8(v14, v13, 4uLL);
      v13 = v29;
      v14 = v28;
      _X12 = v32 + v38;
      v28 = *(v32 + v38 - 96);
      v29 = *(v32 + v38 - 80);
      v30 = *(v32 + v38 - 64);
      v31 = *(v32 + v38 - 48);
      v34 = *(v32 + v38 - 32);
      v35 = *(v32 + v38 - 16);
      v33 = *(v32 + 2 * a2);
      v36 = *(v32 + v38 + 16);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v57 = vld1q_dup_f32(v45++);
      v58 = vextq_s8(v20, v41, 4uLL);
      v59 = vextq_s8(v57, v28, 0xCuLL);
      v60 = vextq_s8(v28, v29, 0xCuLL);
      v61 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v14), vcgtq_u16(v14, v53)), vcgtq_u16(v14, v59)), vcgtq_u16(v59, v14));
      v62 = vextq_s8(v29, v30, 0xCuLL);
      v63 = vqmovn_high_s16(vqmovn_s16(v61), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v13), vcgtq_u16(v13, v52)), vcgtq_u16(v13, v60)), vcgtq_u16(v60, v13)));
      v64 = vextq_s8(v30, v31, 0xCuLL);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v16), vcgtq_u16(v16, v51)), vcgtq_u16(v16, v62)), vcgtq_u16(v62, v16));
      v66 = vextq_s8(v31, v34, 0xCuLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v65), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v15), vcgtq_u16(v15, v50)), vcgtq_u16(v15, v64)), vcgtq_u16(v64, v15)));
      v68 = vextq_s8(v34, v35, 0xCuLL);
      v69 = vextq_s8(v35, v33, 0xCuLL);
      v70 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v18), vcgtq_u16(v18, v49)), vcgtq_u16(v18, v66)), vcgtq_u16(v66, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v17), vcgtq_u16(v17, v48)), vcgtq_u16(v17, v68)), vcgtq_u16(v68, v17)));
      v71 = vextq_s8(v33, v36, 0xCuLL);
      *v42 = *&v36.i32[3];
      v72 = vqtbl1q_s8(v8, vaddq_s8(v63, xmmword_27750D230));
      v73 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v46, v19), vcgtq_u16(v19, v46)), vcgtq_u16(v19, v69)), vcgtq_u16(v69, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v58, v47), vcgtq_u16(v47, v58)), vcgtq_u16(v47, v71)), vcgtq_u16(v71, v47)));
      *(v32 - 96) = vbslq_s8(v43, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v72.i8), 0), v44), v14);
      *(v32 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v72), 0), v44);
      v74 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v32 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v74.i8), 0), v44);
      *(v32 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v74), 0), v44);
      v75 = vqtbl1q_s8(v8, vaddq_s8(v70, xmmword_27750D230));
      *(v32 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v75.i8), 0), v44);
      *(v32 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v75), 0), v44);
      v76 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v76.i8), 0), v44);
      *(v32 + 16) = vbslq_s8(v12, v47, vminq_s16(vmaxq_s16(vaddw_high_s8(v47, v76), 0), v44));
      v77 = (v32 + 32);
      --v39;
      v32 += v38;
      v42 = v45;
      v20 = v47;
      v41 = vld1q_dup_f32(v77);
    }

    while (v39 > 1);
  }

  return result;
}

uint64_t sub_2773E4774(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, int16x8_t *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E4834(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E4834(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E4834(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774AB288(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i32[3];
      v11 = vld1q_dup_f32(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_f32(v10++);
      *a5 = *(result + 124);
      _X5 = result;
      result += 2 * a2;
      --a7;
      a5 = v10;
    }

    v8.i64[1] = v9;
    v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
    *&a5[2 * v13] = *(result + 2 * v13 * a2 + 124);
    v14 = vdupq_n_s16(~a4);
    v16 = *_X5;
    v15 = _X5[1];
    v17 = vandq_s8(v14, xmmword_27750D2A0);
    v18 = vtstq_s16(v14, xmmword_27750D2B0);
    v20 = _X5[2];
    v19 = _X5[3];
    v22 = _X5[4];
    v21 = _X5[5];
    v24 = _X5[6];
    v23 = _X5[7];
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v31 = *result;
    v32 = *(result + 16);
    v33 = *(result + 32);
    v34 = *(result + 48);
    v35 = *(result + 64);
    v36 = *(result + 80);
    v37 = result + 96;
    v38 = *(result + 96);
    v39 = *(result + 112);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = 2 * a2;
    v43 = v13 + 1;
    v44 = vceqzq_s16(v17);
    v45.i64[0] = 0xF800F800F800F800;
    v45.i64[1] = 0xF800F800F800F800;
    v46 = a5;
    do
    {
      v47 = vextq_s8(v24, v23, 0xCuLL);
      v23 = v39;
      v48 = vextq_s8(v21, v24, 0xCuLL);
      v24 = v38;
      v49 = vextq_s8(v22, v21, 0xCuLL);
      v21 = v36;
      v50 = vextq_s8(v19, v22, 0xCuLL);
      v22 = v35;
      v51 = vextq_s8(v20, v19, 0xCuLL);
      v19 = v34;
      v52 = vextq_s8(v15, v20, 0xCuLL);
      v20 = v33;
      v53 = vextq_s8(v16, v15, 0xCuLL);
      v15 = v32;
      v54 = vextq_s8(v11, v16, 0xCuLL);
      v16 = v31;
      _X13 = v37 + v42;
      v31 = *(v37 + v42 - 96);
      v32 = *(v37 + v42 - 80);
      v33 = *(v37 + v42 - 64);
      v34 = *(v37 + v42 - 48);
      v35 = *(v37 + v42 - 32);
      v36 = *(v37 + v42 - 16);
      v56 = vextq_s8(v31, v32, 4uLL);
      v57 = vextq_s8(v32, v33, 4uLL);
      v58 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v16), vcgtq_u16(v16, v54)), vcgtq_u16(v16, v56)), vcgtq_u16(v56, v16));
      v59 = vextq_s8(v33, v34, 4uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v15), vcgtq_u16(v15, v53)), vcgtq_u16(v15, v57)), vcgtq_u16(v57, v15));
      v61 = vextq_s8(v34, v35, 4uLL);
      v62 = vqmovn_high_s16(vqmovn_s16(v58), v60);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v20), vcgtq_u16(v20, v52)), vcgtq_u16(v20, v59)), vcgtq_u16(v59, v20));
      v64 = vsubq_s16(vsubq_s16(vcgtq_u16(v51, v19), vcgtq_u16(v19, v51)), vcgtq_u16(v19, v61));
      v38 = *(v37 + 2 * a2);
      v39 = *(v37 + v42 + 16);
      v65 = vaddq_s16(v64, vcgtq_u16(v61, v19));
      v66 = vextq_s8(v35, v36, 4uLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v63), v65);
      v68 = vextq_s8(v36, v38, 4uLL);
      v69 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v22), vcgtq_u16(v22, v50)), vcgtq_u16(v22, v66)), vcgtq_u16(v66, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v72 = vextq_s8(v38, v39, 4uLL);
      v73 = vqmovn_high_s16(vqmovn_s16(v69), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v21), vcgtq_u16(v21, v49)), vcgtq_u16(v21, v68)), vcgtq_u16(v68, v21)));
      v74 = vcgtq_u16(v24, v72);
      v75 = vsubq_s16(vsubq_s16(vcgtq_u16(v48, v24), vcgtq_u16(v24, v48)), v74);
      v74.i32[0] = *(v37 + (((a4 >> 1) & 1) << 7) + 2 * a2 - 96);
      v76 = vextq_s8(v39, v74, 4uLL);
      v77 = vqtbl1q_s8(v8, vaddq_s8(v62, xmmword_27750D230));
      v78 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v75, vcgtq_u16(v72, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v47, v23), vcgtq_u16(v23, v47)), vcgtq_u16(v23, v76)), vcgtq_u16(v76, v23)));
      *(v37 - 96) = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v45), v16);
      *(v37 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v45);
      v79 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v37 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v79.i8), 0), v45);
      *(v37 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v79), 0), v45);
      v80 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *(v37 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v80.i8), 0), v45);
      *(v37 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v80), 0), v45);
      v81 = vqtbl1q_s8(v8, vaddq_s8(v78, xmmword_27750D230));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v81.i8), 0), v45);
      *(v37 + 16) = vbslq_s8(v18, v23, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v81), 0), v45));
      v11 = vld1q_dup_f32(v46++);
      --v43;
      v37 += v42;
      *a5 = v23.i32[3];
      a5 = v46;
    }

    while (v43 > 1);
  }

  return result;
}

uint64_t sub_2773E4BBC(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E4C7C(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E4C7C(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E4C7C(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 124);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(result + 2 * v9 * a2 + 124);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  v15 = _X5[4];
  v14 = _X5[5];
  v17 = _X5[6];
  v16 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v24 = *result;
  v25 = *(result + 16);
  v26 = *(result + 32);
  v27 = *(result + 48);
  v28 = *(result + 64);
  v29 = *(result + 80);
  v30 = (result + 96);
  v31 = *(result + 96);
  v32 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v35 = v9 + 1;
  v36 = 2 * a2;
  v37.i64[0] = 0xF800F800F800F800;
  v37.i64[1] = 0xF800F800F800F800;
  do
  {
    v38 = v32;
    v39 = v31;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v26;
    v44 = v25;
    v45 = v24;
    _X11 = &v30->i8[v36];
    v24 = *(&v30[-6] + v36);
    v25 = *(&v30[-5] + v36);
    v26 = *(&v30[-4] + v36);
    v27 = *(&v30[-3] + v36);
    v28 = *(&v30[-2] + v36);
    v29 = *(&v30[-1] + v36);
    v31 = *(v30 + 2 * a2);
    v32 = *(&v30[1] + v36);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i32[3];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v45), vcgtq_u16(v45, v11)), vcgtq_u16(v45, v24)), vcgtq_u16(v24, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v44), vcgtq_u16(v44, v10)), vcgtq_u16(v44, v25)), vcgtq_u16(v25, v44))), xmmword_27750D230));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v43), vcgtq_u16(v43, v13)), vcgtq_u16(v43, v26)), vcgtq_u16(v26, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v42), vcgtq_u16(v42, v12)), vcgtq_u16(v42, v27)), vcgtq_u16(v27, v42))), xmmword_27750D230));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v41), vcgtq_u16(v41, v15)), vcgtq_u16(v41, v28)), vcgtq_u16(v28, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v40), vcgtq_u16(v40, v14)), vcgtq_u16(v40, v29)), vcgtq_u16(v29, v40))), xmmword_27750D230));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v17, v39), vcgtq_u16(v39, v17)), vcgtq_u16(v39, v31)), vcgtq_u16(v31, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v38), vcgtq_u16(v38, v16)), vcgtq_u16(v38, v32)), vcgtq_u16(v32, v38))), xmmword_27750D230));
    v30[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v30[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v30[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v30[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v30[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v30[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v35;
    *v30 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v30[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v30 = (v30 + v36);
    v11 = v45;
    v10 = v44;
    v13 = v43;
    v12 = v42;
    v15 = v41;
    v14 = v40;
    v17 = v39;
    v16 = v38;
  }

  while (v35 > 1);
  return result;
}

int16x8_t *sub_2773E4F3C(int16x8_t *a1, uint64_t a2, uint64_t *a3, int a4, float *a5, uint64_t a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v12 = 34;
  }

  else
  {
    v12 = 2;
  }

  v13 = a4 & 0xFFFFFF5D | v12;
  if ((a4 & 4) != 0)
  {
    v14 = 17;
  }

  else
  {
    v14 = 1;
  }

  v15 = a4 & 0xFFFFFFAE | v14 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E4FEC(a1, a2, a3, v13 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E4FEC(a1 + 8, a2, a3, v15, a5, v16, a7);
}

int16x8_t *sub_2773E4FEC(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v7.i64[0] = *a3;
  v7.i64[1] = a3[4];
  v8 = vdupq_n_s16(~a4);
  v9 = vandq_s8(v8, xmmword_27750D2A0);
  v10 = a7 + 1;
  v11 = vceqzq_s16(vandq_s8(v8, xmmword_27750D2B0));
  v12 = vceqzq_s16(v9);
  v13.i64[0] = 0xF800F800F800F800;
  v13.i64[1] = 0xF800F800F800F800;
  v14 = a5;
  do
  {
    v15 = *result;
    v16 = result[1];
    v17 = result[2];
    v18 = result[3];
    v19 = result[4];
    v20 = result[5];
    v22 = result[6];
    v21 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v29 = vld1q_dup_f32(v14++);
    *a5 = *&v21.i32[3];
    v30 = vextq_s8(v15, v16, 0xCuLL);
    v31 = vextq_s8(v16, v17, 0xCuLL);
    v32 = vextq_s8(v17, v18, 0xCuLL);
    v33 = vextq_s8(v18, v19, 0xCuLL);
    v34 = vextq_s8(v19, v20, 0xCuLL);
    v35 = vextq_s8(v20, v22, 0xCuLL);
    v36 = vextq_s8(v22, v21, 0xCuLL);
    v37 = vextq_s8(v29, v15, 0xCuLL);
    v38 = vextq_s8(v15, v16, 4uLL);
    v39 = vextq_s8(v16, v17, 4uLL);
    v40 = vextq_s8(v17, v18, 4uLL);
    v41 = vextq_s8(v18, v19, 4uLL);
    v42 = vextq_s8(v19, v20, 4uLL);
    v43 = vextq_s8(v20, v22, 4uLL);
    v44 = vextq_s8(v22, v21, 4uLL);
    v29.i32[0] = result[8 * ((a4 >> 1) & 1)].i32[0];
    v45 = vextq_s8(v21, v29, 4uLL);
    v46 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v15), vcgtq_u16(v15, v38)), vcgtq_u16(v15, v37)), vcgtq_u16(v37, v15))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v39)), vcgtq_u16(v39, v16))), xmmword_27750D230));
    v47 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v40)), vcgtq_u16(v40, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v18), vcgtq_u16(v18, v32)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), xmmword_27750D230));
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v19), vcgtq_u16(v19, v33)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v20), vcgtq_u16(v20, v34)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v22), vcgtq_u16(v22, v35)), vcgtq_u16(v22, v44)), vcgtq_u16(v44, v22))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v45)), vcgtq_u16(v45, v21))), xmmword_27750D230));
    *result = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_s8(v15, *v46.i8), 0), v13), v15);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v16, v46), 0), v13);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v47.i8), 0), v13);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v47), 0), v13);
    result[4] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v48.i8), 0), v13);
    result[5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v48), 0), v13);
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v49.i8), 0), v13);
    result[7] = vbslq_s8(v11, vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v49), 0), v13), v21);
    --v10;
    result = (result + 2 * a2);
    a5 = v14;
  }

  while (v10 > 1);
  return result;
}

__int16 *sub_2773E5278(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  do
  {
    v15 = result;
    v29 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v30 = vld2q_s16(v17);
    __asm { PRFM            #0, [X0,#0x40] }

    v23 = _X11;
    v31 = vld2q_s16(v23);
    v23 += 16;
    v28 = vld2q_s16(v23);
    __asm { PRFM            #0, [X11,#0x40] }

    LODWORD(v25) = vqtbl2q_s8(v30, xmmword_27750D290).u32[0];
    HIDWORD(v25) = vqtbl2q_s8(v28, xmmword_27750D280).i32[1];
    *a5++ = v25;
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v29.val[0], 6uLL), v30.val[0], 6uLL));
    v32.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[0], *v26.i8), 0), v14);
    v27 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v29.val[1], 6uLL), v30.val[1], 6uLL));
    v32.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[1], *v27.i8), 0), v14);
    v29.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[0], v26), 0), v14);
    v29.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[1], v27), 0), v14);
    v30.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v31.val[0], 6uLL), v28.val[0], 6uLL));
    v33.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[0], *v30.val[0].i8), 0), v14);
    v30.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v31.val[1], 6uLL), v28.val[1], 6uLL));
    v33.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[1], *v30.val[1].i8), 0), v14);
    vst2q_s16(result, v32);
    v11 = 4 * a2;
    result = (result + v11);
    v31.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[0], v30.val[0]), 0), v14);
    vst2q_s16(v17, v29);
    v31.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[1], v30.val[1]), 0), v14);
    vst2q_s16(_X11, v33);
    vst2q_s16(v23, v31);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

__int16 *sub_2773E5388(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v13 = a7 + 2;
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  do
  {
    v15 = result;
    v25 = vld2q_s16(v15);
    v12 = a2;
    v16 = &v15[v12];
    __asm { PRFM            #0, [X0,#0x20] }

    _X12 = v16;
    v26 = vld2q_s16(_X12);
    _X12 += 16;
    __asm { PRFM            #0, [X12] }

    LODWORD(v24) = vqtbl2q_s8(v25, xmmword_27750D290).u32[0];
    HIDWORD(v24) = vqtbl2q_s8(v26, xmmword_27750D280).i32[1];
    *a5++ = v24;
    v27.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v25.val[0], 6uLL))), 0), v14);
    v27.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v25.val[1], 6uLL))), 0), v14);
    v25.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v26.val[0], 6uLL))), 0), v14);
    v25.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v26.val[1], 6uLL))), 0), v14);
    vst2q_s16(result, v27);
    v11 = 4 * a2;
    result = (result + v11);
    vst2q_s16(v16, v25);
    v13 -= 2;
  }

  while (v13 > 2);
  return result;
}

uint64_t sub_2773E5444(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AB314(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 60);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  v13 = *(_X5 + 2);
  v14 = *(_X5 + 3);
  v15 = (_X5 + 4);
  __asm { PRFM            #0, [X5,#0x40] }

  v21 = *result;
  v22 = *(result + 16);
  v23 = *(result + 32);
  v24 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v26 = vld1q_dup_f32(v15);
  *a5 = v24.i32[3];
  v27 = (a5 + 2);
  v28 = (result + 64);
  v29 = 2 * a2;
  v30 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v31 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v32 = vceqzq_s16(v10);
  v33.i64[0] = 0xF800F800F800F800;
  v33.i64[1] = 0xF800F800F800F800;
  v34 = v27;
  do
  {
    v35 = v24;
    v36 = vextq_s8(v11, v13, 4uLL);
    v37 = v23;
    v38 = vextq_s8(v12, v11, 4uLL);
    v11 = v22;
    v12 = v21;
    _X12 = v28 + v29;
    v21 = *(v28 + v29 - 64);
    v22 = *(v28 + v29 - 48);
    v23 = *(v28 + v29 - 32);
    v24 = *(v28 + v29 - 16);
    __asm { PRFM            #0, [X12] }

    v41 = vld1q_dup_f32(v34++);
    v42 = vextq_s8(v13, v14, 4uLL);
    v43 = vextq_s8(v14, v26, 4uLL);
    *v27 = *&v24.i32[3];
    v44 = vextq_s8(v41, v21, 0xCuLL);
    v45 = vextq_s8(v21, v22, 0xCuLL);
    v46 = vextq_s8(v22, v23, 0xCuLL);
    v47 = vextq_s8(v23, v24, 0xCuLL);
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v44)), vcgtq_u16(v44, v12))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v11), vcgtq_u16(v11, v36)), vcgtq_u16(v11, v45)), vcgtq_u16(v45, v11))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v37), vcgtq_u16(v37, v42)), vcgtq_u16(v37, v46)), vcgtq_u16(v46, v37))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v43, v35), vcgtq_u16(v35, v43)), vcgtq_u16(v35, v47)), vcgtq_u16(v47, v35))), xmmword_27750D230));
    *(v28 - 4) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_s8(v12, *v48.i8), 0), v33), v12);
    *(v28 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v11, v48), 0), v33);
    *(v28 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v37, *v49.i8), 0), v33);
    *(v28 - 1) = vbslq_s8(v31, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v49), 0), v33), v35);
    v26 = vld1q_dup_f32(v28);
    --v30;
    v28 = (v28 + v29);
    v27 = v34;
    v13 = v37;
    v14 = v35;
  }

  while (v30 > 1);
  return result;
}

uint64_t sub_2773E5678(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AB3A0(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 60);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 60);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = *(result + 16);
  v28 = result + 32;
  v29 = *(result + 32);
  v30 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0xF800F800F800F800;
  v36.i64[1] = 0xF800F800F800F800;
  v37 = a5;
  do
  {
    v38 = vextq_s8(v20, v19, 0xCuLL);
    v19 = v30;
    v39 = vextq_s8(v17, v20, 0xCuLL);
    v20 = v29;
    v40 = vextq_s8(v18, v17, 0xCuLL);
    v17 = v27;
    v41 = vextq_s8(v11, v18, 0xCuLL);
    v18 = v26;
    _X13 = v28 + v33;
    v26 = *(v28 + v33 - 32);
    v27 = *(v28 + v33 - 16);
    v29 = *(v28 + 2 * a2);
    v30 = *(v28 + v33 + 16);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = *(v28 + (((a4 >> 1) & 1) << 6) + 2 * a2 - 32);
    v44 = vextq_s8(v26, v27, 4uLL);
    v45 = vextq_s8(v27, v29, 4uLL);
    v46 = vextq_s8(v29, v30, 4uLL);
    v47 = vextq_s8(v30, v7, 4uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v18), vcgtq_u16(v18, v41)), vcgtq_u16(v18, v44)), vcgtq_u16(v44, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v45)), vcgtq_u16(v45, v17))), xmmword_27750D230));
    v49 = vcgtq_u16(v19, v47);
    v7 = vcgtq_u16(v47, v19);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v20), vcgtq_u16(v20, v39)), vcgtq_u16(v20, v46)), vcgtq_u16(v46, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v19), vcgtq_u16(v19, v38)), v49), v7)), xmmword_27750D230));
    *(v28 - 32) = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v48.i8), 0), v36), v18);
    *(v28 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v48), 0), v36);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v50.i8), 0), v36);
    *(v28 + 16) = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v50), 0), v36), v19);
    v11 = vld1q_dup_f32(v37++);
    --v32;
    v28 += v33;
    *a5 = v19.i32[3];
    a5 = v37;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773E58C4(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[3].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v19 = *result;
  v20 = result[1];
  v21 = result[2];
  v22 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v24 = v9 + 1;
  v25 = 2 * a2;
  v26.i64[0] = 0xF800F800F800F800;
  v26.i64[1] = 0xF800F800F800F800;
  do
  {
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    _X10 = result->i64 + v25;
    v19 = *(result + 2 * a2);
    v20 = *(&result[1] + v25);
    v21 = *(&result[2] + v25);
    v22 = *(&result[3] + v25);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i32[3];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v27), vcgtq_u16(v27, v11)), vcgtq_u16(v27, v19)), vcgtq_u16(v19, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v28), vcgtq_u16(v28, v10)), vcgtq_u16(v28, v20)), vcgtq_u16(v20, v28))), xmmword_27750D230));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v29), vcgtq_u16(v29, v13)), vcgtq_u16(v29, v21)), vcgtq_u16(v21, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v30), vcgtq_u16(v30, v12)), vcgtq_u16(v30, v22)), vcgtq_u16(v22, v30))), xmmword_27750D230));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v24;
    result = (result + v25);
    v11 = v27;
    v10 = v28;
    v13 = v29;
    v12 = v30;
  }

  while (v24 > 1);
  return result;
}

int16x8_t *sub_2773E5A50(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    v19 = result[2];
    v18 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v25 = vld1q_dup_f32(v15++);
    *a5 = *&v18.i32[3];
    v7.i32[0] = result[4 * ((a4 >> 1) & 1)].i32[0];
    v26 = vextq_s8(v25, v16, 0xCuLL);
    v27 = vextq_s8(v16, v17, 0xCuLL);
    v28 = vextq_s8(v17, v19, 0xCuLL);
    v29 = vextq_s8(v19, v18, 0xCuLL);
    v30 = vextq_s8(v16, v17, 4uLL);
    v31 = vextq_s8(v17, v19, 4uLL);
    v32 = vextq_s8(v19, v18, 4uLL);
    v33 = vextq_s8(v18, v7, 4uLL);
    v34 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v26)), vcgtq_u16(v26, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))), xmmword_27750D230));
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v19), vcgtq_u16(v19, v28)), vcgtq_u16(v19, v32)), vcgtq_u16(v32, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v18), vcgtq_u16(v18, v29)), vcgtq_u16(v18, v33)), vcgtq_u16(v33, v18))), xmmword_27750D230));
    v36 = vaddw_s8(v19, *v35.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v14);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v34.i8), 0), v14), v16);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v34), 0), v14);
    result[2] = vminq_s16(vmaxq_s16(v36, 0), v14);
    result[3] = vbslq_s8(v12, v7, v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E5BC8(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AB42C(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 28);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  __asm { PRFM            #0, [X5,#0x20] }

  v18 = (_X5 + 2);
  v19 = *result;
  v20 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v22 = vld1q_dup_f32(v18);
  *a5 = v20.i32[3];
  v23 = (a5 + 2);
  v24 = 2 * a2;
  v25 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v26 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v27 = vceqzq_s16(v10);
  v28.i64[0] = 0xF800F800F800F800;
  v28.i64[1] = 0xF800F800F800F800;
  v29 = v23;
  do
  {
    v30 = vextq_s8(v12, v11, 4uLL);
    v31 = v20;
    v32 = v19;
    _X11 = result + v24;
    v19 = *(result + 2 * a2);
    v20 = *(result + v24 + 16);
    __asm { PRFM            #0, [X11,#0x20] }

    v35 = vld1q_dup_f32(v29++);
    v36 = vextq_s8(v11, v22, 4uLL);
    *v23 = *&v20.i32[3];
    v37 = vextq_s8(v35, v19, 0xCuLL);
    v38 = vextq_s8(v19, v20, 0xCuLL);
    v39 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v32), vcgtq_u16(v32, v30)), vcgtq_u16(v32, v37)), vcgtq_u16(v37, v32))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v31), vcgtq_u16(v31, v36)), vcgtq_u16(v31, v38)), vcgtq_u16(v38, v31))), xmmword_27750D230));
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v32, *v39.i8), 0), v28), v32);
    *(result + 16) = vbslq_s8(v26, vminq_s16(vmaxq_s16(vaddw_high_s8(v31, v39), 0), v28), v31);
    v40 = (result + 32);
    --v25;
    result += v24;
    v22 = vld1q_dup_f32(v40);
    v23 = v29;
    v12 = v32;
    v11 = v31;
  }

  while (v25 > 1);
  return result;
}

uint64_t sub_2773E5D74(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AB4B8(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 28);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 28);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0xF800F800F800F800;
  v31.i64[1] = 0xF800F800F800F800;
  v32 = a5;
  do
  {
    v33 = vextq_s8(v17, v18, 0xCuLL);
    v34 = v25;
    v35 = v24;
    _X12 = result + v28;
    v24 = *(result + 2 * a2);
    v25 = *(result + v28 + 16);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i32[0] = *(result + 32 * ((a4 >> 1) & 1) + 2 * a2);
    v38 = vextq_s8(v11, v17, 0xCuLL);
    v39 = vextq_s8(v24, v25, 4uLL);
    v40 = vextq_s8(v25, v7, 4uLL);
    v41 = vcgtq_u16(v34, v40);
    v7 = vcgtq_u16(v40, v34);
    v42 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v35), vcgtq_u16(v35, v38)), vcgtq_u16(v35, v39)), vcgtq_u16(v39, v35))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v34), vcgtq_u16(v34, v33)), v41), v7)), xmmword_27750D230));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v35, *v42.i8), 0), v31), v35);
    *(result + 16) = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v34, v42), 0), v31), v34);
    v11 = vld1q_dup_f32(v32++);
    --v27;
    result += v28;
    *a5 = v34.i32[3];
    v17 = v35;
    v18 = v34;
    a5 = v32;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773E5F30(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[1].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v17 = *result;
  v18 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v20 = 2 * a2;
  v21 = v9 + 1;
  v22.i64[0] = 0xF800F800F800F800;
  v22.i64[1] = 0xF800F800F800F800;
  do
  {
    v23 = v17;
    v24 = v18;
    _X10 = result->i64 + v20;
    v17 = *(result + 2 * a2);
    v18 = *(&result[1] + v20);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i32[3];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v23), vcgtq_u16(v23, v11)), vcgtq_u16(v23, v17)), vcgtq_u16(v17, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v24), vcgtq_u16(v24, v10)), vcgtq_u16(v24, v18)), vcgtq_u16(v18, v24))), xmmword_27750D230));
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v20);
    v11 = v23;
    v10 = v24;
  }

  while (v21 > 1);
  return result;
}

int16x8_t *sub_2773E603C(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v23 = vld1q_dup_f32(v15++);
    *a5 = *&v17.i32[3];
    v7.i32[0] = result[2 * ((a4 >> 1) & 1)].i32[0];
    v24 = vextq_s8(v23, v16, 0xCuLL);
    v25 = vextq_s8(v16, v17, 0xCuLL);
    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v17, v7, 4uLL);
    v28 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v16), vcgtq_u16(v16, v26)), vcgtq_u16(v16, v24)), vcgtq_u16(v24, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v25, v17), vcgtq_u16(v17, v25)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), xmmword_27750D230));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v28.i8), 0), v14);
    *result = vbslq_s8(v13, v7, v16);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v28), 0), v14), v17);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E613C(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AB5BC(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 12);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = *_X5;
  v10 = (_X5 + 1);
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 16;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_f32(v10);
  *a5 = HIDWORD(*result);
  v20 = (a5 + 2);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v24.i64[0] = 0xF800F800F800F800;
  v24.i64[1] = 0xF800F800F800F800;
  v25 = v20;
  do
  {
    _X12 = result + v21 + 16;
    v27 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v29 = vld1q_dup_f32(v25++);
    *v20 = *&v27.i32[3];
    v30 = vextq_s8(v9, v19, 4uLL);
    v31 = vextq_s8(v29, v27, 0xCuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v30), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v30, v17)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))))), 0), v24), v17);
    v32 = (result + 16);
    --v22;
    result += v21;
    v19 = vld1q_dup_f32(v32);
    v20 = v25;
    v9 = v17;
    v17 = v27;
  }

  while (v22 > 1);
  return result;
}

uint64_t sub_2773E62A8(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AB648(result, a2, a3, a4, a5, a6, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 2);
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 12);
    a6 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 12);
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 16;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v28.i64[0] = 0xF800F800F800F800;
  v28.i64[1] = 0xF800F800F800F800;
  v29 = a5;
  do
  {
    _X13 = result + v25 + 16;
    v31 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i32[0] = *(result + 16 * ((a4 >> 1) & 1) + 2 * a2);
    v33 = vextq_s8(v11, v16, 0xCuLL);
    v34 = vextq_s8(v31, v7, 4uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v33), xmmword_27750D2E0, xmmword_27750D2D0);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v33, v23)), vcgtq_u16(v23, v34)), vcgtq_u16(v34, v23))))), 0), v28), v23);
    v11 = vld1q_dup_f32(v29++);
    --v26;
    result += v25;
    *a5 = v23.i32[3];
    v16 = v23;
    v23 = v31;
    a5 = v29;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773E6424(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i32[3];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result->i32[3] + 2 * v9 * a2);
  v11 = *a6;
  _X5 = a6 + 1;
  v12 = v11;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v19 = *result;
  __asm { PRFM            #0, [X8] }

  v21 = 2 * a2;
  v22 = v9 + 1;
  v23.i64[0] = 0xF800F800F800F800;
  v23.i64[1] = 0xF800F800F800F800;
  do
  {
    _X11 = result[1].i64 + v21;
    v25 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v19.i32[3];
    --v22;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v19, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v19, v12), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v12, v19)), vcgtq_u16(v19, v25)), vcgtq_u16(v25, v19))))), 0), v23);
    result = (result + v21);
    v12 = v19;
    v19 = v25;
  }

  while (v22 > 1);
  return result;
}

int8x16_t *sub_2773E650C(int8x16_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v11.i64[0] = 0xF800F800F800F800;
  v11.i64[1] = 0xF800F800F800F800;
  v12 = a5;
  do
  {
    v13 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v19 = vld1q_dup_f32(v12++);
    v20 = vextq_s8(v19, *result, 0xCuLL);
    *a5 = HIDWORD(*result);
    v7.i32[0] = result[(a4 >> 1) & 1].i32[0];
    v21 = vextq_s8(v13, v7, 4uLL);
    v22 = vcgtq_u16(v13, v21);
    v7 = vcgtq_u16(v21, v13);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v13, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v13, v20), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v20, v13)), v22), v7)))), 0), v11), v13);
    result = (result + 2 * a2);
    --v9;
    a5 = v12;
  }

  while (v9 > 1);
  return result;
}

__int16 *sub_2773E65CC(__int16 *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  sub_2773E6634(a1, a2, a3, a4, a5, a6, a7);

  return sub_2773E6634(a1 + 64, a2, a3, v12, a5, v13, a7);
}

__int16 *sub_2773E6634(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  do
  {
    v15 = result;
    v42 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v36 = vld2q_s16(v17);
    v18 = result + 32;
    v45 = vld2q_s16(v18);
    v19 = result + 48;
    v44 = vld2q_s16(v19);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v26 = _X11;
    v41 = vld2q_s16(v26);
    v26 += 16;
    v40 = vld2q_s16(v26);
    v27 = _X11 + 32;
    v39 = vld2q_s16(v27);
    v28 = _X11 + 48;
    v38 = vld2q_s16(v28);
    LODWORD(v29) = vqtbl2q_s8(v44, xmmword_27750D290).u32[0];
    HIDWORD(v29) = vqtbl2q_s8(v38, xmmword_27750D280).i32[1];
    v30 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v42.val[0], 7uLL), v36.val[0], 7uLL));
    v31 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v42.val[1], 7uLL), v36.val[1], 7uLL));
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[0], *v30.i8), 0), v14);
    __asm
    {
      PRFM            #0, [X11,#0x80]
      PRFM            #0, [X11,#0xC0]
    }

    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v42.val[1], *v31.i8), 0), v14);
    *a5++ = v29;
    v43.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[0], v30), 0), v14);
    v43.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v36.val[1], v31), 0), v14);
    v36.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v45.val[0], 7uLL), v44.val[0], 7uLL));
    v34 = vaddw_high_s8(v44.val[0], v36.val[0]);
    v36.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[0], *v36.val[0].i8), 0), v14);
    v35 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v45.val[1], 7uLL), v44.val[1], 7uLL));
    v36.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[1], *v35.i8), 0), v14);
    v45.val[0] = vminq_s16(vmaxq_s16(v34, 0), v14);
    v45.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44.val[1], v35), 0), v14);
    v44.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v41.val[0], 7uLL), v40.val[0], 7uLL));
    v37.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[0], *v44.val[0].i8), 0), v14);
    v44.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v41.val[1], 7uLL), v40.val[1], 7uLL));
    v37.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[1], *v44.val[1].i8), 0), v14);
    v41.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[0], v44.val[0]), 0), v14);
    v41.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[1], v44.val[1]), 0), v14);
    v40.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v39.val[0], 7uLL), v38.val[0], 7uLL));
    vst2q_s16(result, v42);
    v11 = 4 * a2;
    result = (result + v11);
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[0], *v40.val[0].i8), 0), v14);
    vst2q_s16(v17, v43);
    v40.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v39.val[1], 7uLL), v38.val[1], 7uLL));
    vst2q_s16(v18, v36);
    vst2q_s16(v19, v45);
    v42.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[1], *v40.val[1].i8), 0), v14);
    vst2q_s16(_X11, v37);
    v39.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[0], v40.val[0]), 0), v14);
    vst2q_s16(v26, v41);
    v39.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38.val[1], v40.val[1]), 0), v14);
    vst2q_s16(v27, v42);
    vst2q_s16(v28, v39);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

uint64_t sub_2773E6824(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _WORD *a5, _OWORD *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E68E4(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E68E4(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E68E4(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774A977C(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 0x40) != 0)
    {
      *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
    }

    if ((a4 & 4) == 0)
    {
      *a5 = *(result + 124);
      a5 += 2;
      _X5 = result;
      result += 2 * a2;
      --a7;
    }

    v8.i64[1] = v9;
    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D2A0);
    v12 = vtstq_s16(v10, xmmword_27750D2B0);
    v14 = *_X5;
    v13 = *(_X5 + 1);
    v16 = *(_X5 + 2);
    v15 = *(_X5 + 3);
    v18 = *(_X5 + 4);
    v17 = *(_X5 + 5);
    v19 = *(_X5 + 6);
    v20 = *(_X5 + 7);
    v21 = (_X5 + 8);
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = *(result + 16);
    v30 = *(result + 32);
    v31 = *(result + 48);
    v32 = result + 96;
    v33 = *(result + 96);
    v34 = *(result + 64);
    v35 = *(result + 80);
    v36 = *(result + 112);
    __asm { PRFM            #0, [X0,#0x80] }

    v38 = 2 * a2;
    v39 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
    __asm { PRFM            #0, [X0,#0xC0] }

    v41 = vld1q_dup_f32(v21);
    *a5 = v36.i32[3];
    v42 = (a5 + 2);
    v43 = vceqzq_s16(v11);
    v44.i64[0] = 0xF000F000F000F000;
    v44.i64[1] = 0xF000F000F000F000;
    v45 = v42;
    do
    {
      v46 = vextq_s8(v19, v20, 4uLL);
      v47 = v36;
      v48 = vextq_s8(v17, v19, 4uLL);
      v19 = v33;
      v49 = vextq_s8(v18, v17, 4uLL);
      v17 = v35;
      v50 = vextq_s8(v15, v18, 4uLL);
      v18 = v34;
      v51 = vextq_s8(v16, v15, 4uLL);
      v15 = v31;
      v52 = vextq_s8(v13, v16, 4uLL);
      v16 = v30;
      v53 = vextq_s8(v14, v13, 4uLL);
      v13 = v29;
      v14 = v28;
      _X12 = v32 + v38;
      v28 = *(v32 + v38 - 96);
      v29 = *(v32 + v38 - 80);
      v30 = *(v32 + v38 - 64);
      v31 = *(v32 + v38 - 48);
      v34 = *(v32 + v38 - 32);
      v35 = *(v32 + v38 - 16);
      v33 = *(v32 + 2 * a2);
      v36 = *(v32 + v38 + 16);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v57 = vld1q_dup_f32(v45++);
      v58 = vextq_s8(v20, v41, 4uLL);
      v59 = vextq_s8(v57, v28, 0xCuLL);
      v60 = vextq_s8(v28, v29, 0xCuLL);
      v61 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v14), vcgtq_u16(v14, v53)), vcgtq_u16(v14, v59)), vcgtq_u16(v59, v14));
      v62 = vextq_s8(v29, v30, 0xCuLL);
      v63 = vqmovn_high_s16(vqmovn_s16(v61), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v13), vcgtq_u16(v13, v52)), vcgtq_u16(v13, v60)), vcgtq_u16(v60, v13)));
      v64 = vextq_s8(v30, v31, 0xCuLL);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v16), vcgtq_u16(v16, v51)), vcgtq_u16(v16, v62)), vcgtq_u16(v62, v16));
      v66 = vextq_s8(v31, v34, 0xCuLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v65), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v15), vcgtq_u16(v15, v50)), vcgtq_u16(v15, v64)), vcgtq_u16(v64, v15)));
      v68 = vextq_s8(v34, v35, 0xCuLL);
      v69 = vextq_s8(v35, v33, 0xCuLL);
      v70 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v18), vcgtq_u16(v18, v49)), vcgtq_u16(v18, v66)), vcgtq_u16(v66, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v17), vcgtq_u16(v17, v48)), vcgtq_u16(v17, v68)), vcgtq_u16(v68, v17)));
      v71 = vextq_s8(v33, v36, 0xCuLL);
      *v42 = *&v36.i32[3];
      v72 = vqtbl1q_s8(v8, vaddq_s8(v63, xmmword_27750D230));
      v73 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v46, v19), vcgtq_u16(v19, v46)), vcgtq_u16(v19, v69)), vcgtq_u16(v69, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v58, v47), vcgtq_u16(v47, v58)), vcgtq_u16(v47, v71)), vcgtq_u16(v71, v47)));
      *(v32 - 96) = vbslq_s8(v43, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v72.i8), 0), v44), v14);
      *(v32 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v72), 0), v44);
      v74 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v32 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v74.i8), 0), v44);
      *(v32 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v74), 0), v44);
      v75 = vqtbl1q_s8(v8, vaddq_s8(v70, xmmword_27750D230));
      *(v32 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v75.i8), 0), v44);
      *(v32 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v75), 0), v44);
      v76 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v76.i8), 0), v44);
      *(v32 + 16) = vbslq_s8(v12, v47, vminq_s16(vmaxq_s16(vaddw_high_s8(v47, v76), 0), v44));
      v77 = (v32 + 32);
      --v39;
      v32 += v38;
      v42 = v45;
      v20 = v47;
      v41 = vld1q_dup_f32(v77);
    }

    while (v39 > 1);
  }

  return result;
}

uint64_t sub_2773E6C60(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, int16x8_t *a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E6D20(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E6D20(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E6D20(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774A9808(result, a2, a3, a4, a5, _X5, a7);
  }

  else
  {
    v8.i64[0] = *a3;
    v9 = a3[4];
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i32[3];
      v11 = vld1q_dup_f32(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_f32(v10++);
      *a5 = *(result + 124);
      _X5 = result;
      result += 2 * a2;
      --a7;
      a5 = v10;
    }

    v8.i64[1] = v9;
    v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
    *&a5[2 * v13] = *(result + 2 * v13 * a2 + 124);
    v14 = vdupq_n_s16(~a4);
    v16 = *_X5;
    v15 = _X5[1];
    v17 = vandq_s8(v14, xmmword_27750D2A0);
    v18 = vtstq_s16(v14, xmmword_27750D2B0);
    v20 = _X5[2];
    v19 = _X5[3];
    v22 = _X5[4];
    v21 = _X5[5];
    v24 = _X5[6];
    v23 = _X5[7];
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v31 = *result;
    v32 = *(result + 16);
    v33 = *(result + 32);
    v34 = *(result + 48);
    v35 = *(result + 64);
    v36 = *(result + 80);
    v37 = result + 96;
    v38 = *(result + 96);
    v39 = *(result + 112);
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = 2 * a2;
    v43 = v13 + 1;
    v44 = vceqzq_s16(v17);
    v45.i64[0] = 0xF000F000F000F000;
    v45.i64[1] = 0xF000F000F000F000;
    v46 = a5;
    do
    {
      v47 = vextq_s8(v24, v23, 0xCuLL);
      v23 = v39;
      v48 = vextq_s8(v21, v24, 0xCuLL);
      v24 = v38;
      v49 = vextq_s8(v22, v21, 0xCuLL);
      v21 = v36;
      v50 = vextq_s8(v19, v22, 0xCuLL);
      v22 = v35;
      v51 = vextq_s8(v20, v19, 0xCuLL);
      v19 = v34;
      v52 = vextq_s8(v15, v20, 0xCuLL);
      v20 = v33;
      v53 = vextq_s8(v16, v15, 0xCuLL);
      v15 = v32;
      v54 = vextq_s8(v11, v16, 0xCuLL);
      v16 = v31;
      _X13 = v37 + v42;
      v31 = *(v37 + v42 - 96);
      v32 = *(v37 + v42 - 80);
      v33 = *(v37 + v42 - 64);
      v34 = *(v37 + v42 - 48);
      v35 = *(v37 + v42 - 32);
      v36 = *(v37 + v42 - 16);
      v56 = vextq_s8(v31, v32, 4uLL);
      v57 = vextq_s8(v32, v33, 4uLL);
      v58 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v16), vcgtq_u16(v16, v54)), vcgtq_u16(v16, v56)), vcgtq_u16(v56, v16));
      v59 = vextq_s8(v33, v34, 4uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v15), vcgtq_u16(v15, v53)), vcgtq_u16(v15, v57)), vcgtq_u16(v57, v15));
      v61 = vextq_s8(v34, v35, 4uLL);
      v62 = vqmovn_high_s16(vqmovn_s16(v58), v60);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v20), vcgtq_u16(v20, v52)), vcgtq_u16(v20, v59)), vcgtq_u16(v59, v20));
      v64 = vsubq_s16(vsubq_s16(vcgtq_u16(v51, v19), vcgtq_u16(v19, v51)), vcgtq_u16(v19, v61));
      v38 = *(v37 + 2 * a2);
      v39 = *(v37 + v42 + 16);
      v65 = vaddq_s16(v64, vcgtq_u16(v61, v19));
      v66 = vextq_s8(v35, v36, 4uLL);
      v67 = vqmovn_high_s16(vqmovn_s16(v63), v65);
      v68 = vextq_s8(v36, v38, 4uLL);
      v69 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v22), vcgtq_u16(v22, v50)), vcgtq_u16(v22, v66)), vcgtq_u16(v66, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v72 = vextq_s8(v38, v39, 4uLL);
      v73 = vqmovn_high_s16(vqmovn_s16(v69), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v21), vcgtq_u16(v21, v49)), vcgtq_u16(v21, v68)), vcgtq_u16(v68, v21)));
      v74 = vcgtq_u16(v24, v72);
      v75 = vsubq_s16(vsubq_s16(vcgtq_u16(v48, v24), vcgtq_u16(v24, v48)), v74);
      v74.i32[0] = *(v37 + (((a4 >> 1) & 1) << 7) + 2 * a2 - 96);
      v76 = vextq_s8(v39, v74, 4uLL);
      v77 = vqtbl1q_s8(v8, vaddq_s8(v62, xmmword_27750D230));
      v78 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v75, vcgtq_u16(v72, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v47, v23), vcgtq_u16(v23, v47)), vcgtq_u16(v23, v76)), vcgtq_u16(v76, v23)));
      *(v37 - 96) = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v45), v16);
      *(v37 - 80) = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v45);
      v79 = vqtbl1q_s8(v8, vaddq_s8(v67, xmmword_27750D230));
      *(v37 - 64) = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v79.i8), 0), v45);
      *(v37 - 48) = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v79), 0), v45);
      v80 = vqtbl1q_s8(v8, vaddq_s8(v73, xmmword_27750D230));
      *(v37 - 32) = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v80.i8), 0), v45);
      *(v37 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v80), 0), v45);
      v81 = vqtbl1q_s8(v8, vaddq_s8(v78, xmmword_27750D230));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v81.i8), 0), v45);
      *(v37 + 16) = vbslq_s8(v18, v23, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v81), 0), v45));
      v11 = vld1q_dup_f32(v46++);
      --v43;
      v37 += v42;
      *a5 = v23.i32[3];
      a5 = v46;
    }

    while (v43 > 1);
  }

  return result;
}

uint64_t sub_2773E70A8(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  if ((a4 & 4) != 0)
  {
    v13 = 34;
  }

  else
  {
    v13 = 2;
  }

  v14 = a4 & 0xFFFFFF5D | v13;
  if ((a4 & 4) != 0)
  {
    v15 = 17;
  }

  else
  {
    v15 = 1;
  }

  v16 = a4 & 0xFFFFFFAE | v15 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E7168(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E7168(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773E7168(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 124);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(result + 2 * v9 * a2 + 124);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  v15 = _X5[4];
  v14 = _X5[5];
  v17 = _X5[6];
  v16 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v24 = *result;
  v25 = *(result + 16);
  v26 = *(result + 32);
  v27 = *(result + 48);
  v28 = *(result + 64);
  v29 = *(result + 80);
  v30 = (result + 96);
  v31 = *(result + 96);
  v32 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v35 = v9 + 1;
  v36 = 2 * a2;
  v37.i64[0] = 0xF000F000F000F000;
  v37.i64[1] = 0xF000F000F000F000;
  do
  {
    v38 = v32;
    v39 = v31;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v26;
    v44 = v25;
    v45 = v24;
    _X11 = &v30->i8[v36];
    v24 = *(&v30[-6] + v36);
    v25 = *(&v30[-5] + v36);
    v26 = *(&v30[-4] + v36);
    v27 = *(&v30[-3] + v36);
    v28 = *(&v30[-2] + v36);
    v29 = *(&v30[-1] + v36);
    v31 = *(v30 + 2 * a2);
    v32 = *(&v30[1] + v36);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i32[3];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v45), vcgtq_u16(v45, v11)), vcgtq_u16(v45, v24)), vcgtq_u16(v24, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v44), vcgtq_u16(v44, v10)), vcgtq_u16(v44, v25)), vcgtq_u16(v25, v44))), xmmword_27750D230));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v43), vcgtq_u16(v43, v13)), vcgtq_u16(v43, v26)), vcgtq_u16(v26, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v42), vcgtq_u16(v42, v12)), vcgtq_u16(v42, v27)), vcgtq_u16(v27, v42))), xmmword_27750D230));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v41), vcgtq_u16(v41, v15)), vcgtq_u16(v41, v28)), vcgtq_u16(v28, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v40), vcgtq_u16(v40, v14)), vcgtq_u16(v40, v29)), vcgtq_u16(v29, v40))), xmmword_27750D230));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v17, v39), vcgtq_u16(v39, v17)), vcgtq_u16(v39, v31)), vcgtq_u16(v31, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v38), vcgtq_u16(v38, v16)), vcgtq_u16(v38, v32)), vcgtq_u16(v32, v38))), xmmword_27750D230));
    v30[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v30[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v30[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v30[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v30[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v30[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v35;
    *v30 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v30[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v30 = (v30 + v36);
    v11 = v45;
    v10 = v44;
    v13 = v43;
    v12 = v42;
    v15 = v41;
    v14 = v40;
    v17 = v39;
    v16 = v38;
  }

  while (v35 > 1);
  return result;
}

int16x8_t *sub_2773E7428(int16x8_t *a1, uint64_t a2, uint64_t *a3, int a4, float *a5, uint64_t a6, int a7)
{
  if ((a4 & 4) != 0)
  {
    v12 = 34;
  }

  else
  {
    v12 = 2;
  }

  v13 = a4 & 0xFFFFFF5D | v12;
  if ((a4 & 4) != 0)
  {
    v14 = 17;
  }

  else
  {
    v14 = 1;
  }

  v15 = a4 & 0xFFFFFFAE | v14 & 0xFFFFFFBF | (((a4 & 8) != 0) << 6);
  sub_2773E74D8(a1, a2, a3, v13 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773E74D8(a1 + 8, a2, a3, v15, a5, v16, a7);
}

int16x8_t *sub_2773E74D8(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v7.i64[0] = *a3;
  v7.i64[1] = a3[4];
  v8 = vdupq_n_s16(~a4);
  v9 = vandq_s8(v8, xmmword_27750D2A0);
  v10 = a7 + 1;
  v11 = vceqzq_s16(vandq_s8(v8, xmmword_27750D2B0));
  v12 = vceqzq_s16(v9);
  v13.i64[0] = 0xF000F000F000F000;
  v13.i64[1] = 0xF000F000F000F000;
  v14 = a5;
  do
  {
    v15 = *result;
    v16 = result[1];
    v17 = result[2];
    v18 = result[3];
    v19 = result[4];
    v20 = result[5];
    v22 = result[6];
    v21 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v29 = vld1q_dup_f32(v14++);
    *a5 = *&v21.i32[3];
    v30 = vextq_s8(v15, v16, 0xCuLL);
    v31 = vextq_s8(v16, v17, 0xCuLL);
    v32 = vextq_s8(v17, v18, 0xCuLL);
    v33 = vextq_s8(v18, v19, 0xCuLL);
    v34 = vextq_s8(v19, v20, 0xCuLL);
    v35 = vextq_s8(v20, v22, 0xCuLL);
    v36 = vextq_s8(v22, v21, 0xCuLL);
    v37 = vextq_s8(v29, v15, 0xCuLL);
    v38 = vextq_s8(v15, v16, 4uLL);
    v39 = vextq_s8(v16, v17, 4uLL);
    v40 = vextq_s8(v17, v18, 4uLL);
    v41 = vextq_s8(v18, v19, 4uLL);
    v42 = vextq_s8(v19, v20, 4uLL);
    v43 = vextq_s8(v20, v22, 4uLL);
    v44 = vextq_s8(v22, v21, 4uLL);
    v29.i32[0] = result[8 * ((a4 >> 1) & 1)].i32[0];
    v45 = vextq_s8(v21, v29, 4uLL);
    v46 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v15), vcgtq_u16(v15, v38)), vcgtq_u16(v15, v37)), vcgtq_u16(v37, v15))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v39)), vcgtq_u16(v39, v16))), xmmword_27750D230));
    v47 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v40)), vcgtq_u16(v40, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v18), vcgtq_u16(v18, v32)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), xmmword_27750D230));
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v19), vcgtq_u16(v19, v33)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v20), vcgtq_u16(v20, v34)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v22), vcgtq_u16(v22, v35)), vcgtq_u16(v22, v44)), vcgtq_u16(v44, v22))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v45)), vcgtq_u16(v45, v21))), xmmword_27750D230));
    *result = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_s8(v15, *v46.i8), 0), v13), v15);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v16, v46), 0), v13);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v47.i8), 0), v13);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v47), 0), v13);
    result[4] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v48.i8), 0), v13);
    result[5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v48), 0), v13);
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v49.i8), 0), v13);
    result[7] = vbslq_s8(v11, vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v49), 0), v13), v21);
    --v10;
    result = (result + 2 * a2);
    a5 = v14;
  }

  while (v10 > 1);
  return result;
}

__int16 *sub_2773E7764(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  do
  {
    v15 = result;
    v29 = vld2q_s16(v15);
    v13 = a2;
    _X11 = &v15[v13];
    v17 = result + 16;
    v30 = vld2q_s16(v17);
    __asm { PRFM            #0, [X0,#0x40] }

    v23 = _X11;
    v31 = vld2q_s16(v23);
    v23 += 16;
    v28 = vld2q_s16(v23);
    __asm { PRFM            #0, [X11,#0x40] }

    LODWORD(v25) = vqtbl2q_s8(v30, xmmword_27750D290).u32[0];
    HIDWORD(v25) = vqtbl2q_s8(v28, xmmword_27750D280).i32[1];
    *a5++ = v25;
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v29.val[0], 7uLL), v30.val[0], 7uLL));
    v32.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[0], *v26.i8), 0), v14);
    v27 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v29.val[1], 7uLL), v30.val[1], 7uLL));
    v32.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v29.val[1], *v27.i8), 0), v14);
    v29.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[0], v26), 0), v14);
    v29.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30.val[1], v27), 0), v14);
    v30.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v31.val[0], 7uLL), v28.val[0], 7uLL));
    v33.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[0], *v30.val[0].i8), 0), v14);
    v30.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v31.val[1], 7uLL), v28.val[1], 7uLL));
    v33.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v31.val[1], *v30.val[1].i8), 0), v14);
    vst2q_s16(result, v32);
    v11 = 4 * a2;
    result = (result + v11);
    v31.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[0], v30.val[0]), 0), v14);
    vst2q_s16(v17, v29);
    v31.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28.val[1], v30.val[1]), 0), v14);
    vst2q_s16(_X11, v33);
    vst2q_s16(v23, v31);
    v12 -= 2;
  }

  while (v12 > 2);
  return result;
}

__int16 *sub_2773E7874(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v13 = a7 + 2;
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  do
  {
    v15 = result;
    v25 = vld2q_s16(v15);
    v12 = a2;
    v16 = &v15[v12];
    __asm { PRFM            #0, [X0,#0x20] }

    _X12 = v16;
    v26 = vld2q_s16(_X12);
    _X12 += 16;
    __asm { PRFM            #0, [X12] }

    LODWORD(v24) = vqtbl2q_s8(v25, xmmword_27750D290).u32[0];
    HIDWORD(v24) = vqtbl2q_s8(v26, xmmword_27750D280).i32[1];
    *a5++ = v24;
    v27.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v25.val[0], 7uLL))), 0), v14);
    v27.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v25.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v25.val[1], 7uLL))), 0), v14);
    v25.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[0], vqtbl2_s8(*&v7, vshrn_n_s16(v26.val[0], 7uLL))), 0), v14);
    v25.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v26.val[1], vqtbl2_s8(*&v9, vshrn_n_s16(v26.val[1], 7uLL))), 0), v14);
    vst2q_s16(result, v27);
    v11 = 4 * a2;
    result = (result + v11);
    vst2q_s16(v16, v25);
    v13 -= 2;
  }

  while (v13 > 2);
  return result;
}

uint64_t sub_2773E7930(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774A9894(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 60);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  v13 = *(_X5 + 2);
  v14 = *(_X5 + 3);
  v15 = (_X5 + 4);
  __asm { PRFM            #0, [X5,#0x40] }

  v21 = *result;
  v22 = *(result + 16);
  v23 = *(result + 32);
  v24 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v26 = vld1q_dup_f32(v15);
  *a5 = v24.i32[3];
  v27 = (a5 + 2);
  v28 = (result + 64);
  v29 = 2 * a2;
  v30 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v31 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v32 = vceqzq_s16(v10);
  v33.i64[0] = 0xF000F000F000F000;
  v33.i64[1] = 0xF000F000F000F000;
  v34 = v27;
  do
  {
    v35 = v24;
    v36 = vextq_s8(v11, v13, 4uLL);
    v37 = v23;
    v38 = vextq_s8(v12, v11, 4uLL);
    v11 = v22;
    v12 = v21;
    _X12 = v28 + v29;
    v21 = *(v28 + v29 - 64);
    v22 = *(v28 + v29 - 48);
    v23 = *(v28 + v29 - 32);
    v24 = *(v28 + v29 - 16);
    __asm { PRFM            #0, [X12] }

    v41 = vld1q_dup_f32(v34++);
    v42 = vextq_s8(v13, v14, 4uLL);
    v43 = vextq_s8(v14, v26, 4uLL);
    *v27 = *&v24.i32[3];
    v44 = vextq_s8(v41, v21, 0xCuLL);
    v45 = vextq_s8(v21, v22, 0xCuLL);
    v46 = vextq_s8(v22, v23, 0xCuLL);
    v47 = vextq_s8(v23, v24, 0xCuLL);
    v48 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v44)), vcgtq_u16(v44, v12))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v11), vcgtq_u16(v11, v36)), vcgtq_u16(v11, v45)), vcgtq_u16(v45, v11))), xmmword_27750D230));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v37), vcgtq_u16(v37, v42)), vcgtq_u16(v37, v46)), vcgtq_u16(v46, v37))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v43, v35), vcgtq_u16(v35, v43)), vcgtq_u16(v35, v47)), vcgtq_u16(v47, v35))), xmmword_27750D230));
    *(v28 - 4) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_s8(v12, *v48.i8), 0), v33), v12);
    *(v28 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v11, v48), 0), v33);
    *(v28 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v37, *v49.i8), 0), v33);
    *(v28 - 1) = vbslq_s8(v31, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v49), 0), v33), v35);
    v26 = vld1q_dup_f32(v28);
    --v30;
    v28 = (v28 + v29);
    v27 = v34;
    v13 = v37;
    v14 = v35;
  }

  while (v30 > 1);
  return result;
}

uint64_t sub_2773E7B64(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774A9920(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 60);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 60);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = *(result + 16);
  v28 = result + 32;
  v29 = *(result + 32);
  v30 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0xF000F000F000F000;
  v36.i64[1] = 0xF000F000F000F000;
  v37 = a5;
  do
  {
    v38 = vextq_s8(v20, v19, 0xCuLL);
    v19 = v30;
    v39 = vextq_s8(v17, v20, 0xCuLL);
    v20 = v29;
    v40 = vextq_s8(v18, v17, 0xCuLL);
    v17 = v27;
    v41 = vextq_s8(v11, v18, 0xCuLL);
    v18 = v26;
    _X13 = v28 + v33;
    v26 = *(v28 + v33 - 32);
    v27 = *(v28 + v33 - 16);
    v29 = *(v28 + 2 * a2);
    v30 = *(v28 + v33 + 16);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = *(v28 + (((a4 >> 1) & 1) << 6) + 2 * a2 - 32);
    v44 = vextq_s8(v26, v27, 4uLL);
    v45 = vextq_s8(v27, v29, 4uLL);
    v46 = vextq_s8(v29, v30, 4uLL);
    v47 = vextq_s8(v30, v7, 4uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v18), vcgtq_u16(v18, v41)), vcgtq_u16(v18, v44)), vcgtq_u16(v44, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v45)), vcgtq_u16(v45, v17))), xmmword_27750D230));
    v49 = vcgtq_u16(v19, v47);
    v7 = vcgtq_u16(v47, v19);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v20), vcgtq_u16(v20, v39)), vcgtq_u16(v20, v46)), vcgtq_u16(v46, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v19), vcgtq_u16(v19, v38)), v49), v7)), xmmword_27750D230));
    *(v28 - 32) = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v48.i8), 0), v36), v18);
    *(v28 - 16) = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v48), 0), v36);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v50.i8), 0), v36);
    *(v28 + 16) = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v50), 0), v36), v19);
    v11 = vld1q_dup_f32(v37++);
    --v32;
    v28 += v33;
    *a5 = v19.i32[3];
    a5 = v37;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773E7DB0(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[3].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  v13 = _X5[2];
  v12 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v19 = *result;
  v20 = result[1];
  v21 = result[2];
  v22 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v24 = v9 + 1;
  v25 = 2 * a2;
  v26.i64[0] = 0xF000F000F000F000;
  v26.i64[1] = 0xF000F000F000F000;
  do
  {
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = v22;
    _X10 = result->i64 + v25;
    v19 = *(result + 2 * a2);
    v20 = *(&result[1] + v25);
    v21 = *(&result[2] + v25);
    v22 = *(&result[3] + v25);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i32[3];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v27), vcgtq_u16(v27, v11)), vcgtq_u16(v27, v19)), vcgtq_u16(v19, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v28), vcgtq_u16(v28, v10)), vcgtq_u16(v28, v20)), vcgtq_u16(v20, v28))), xmmword_27750D230));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v29), vcgtq_u16(v29, v13)), vcgtq_u16(v29, v21)), vcgtq_u16(v21, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v30), vcgtq_u16(v30, v12)), vcgtq_u16(v30, v22)), vcgtq_u16(v22, v30))), xmmword_27750D230));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v24;
    result = (result + v25);
    v11 = v27;
    v10 = v28;
    v13 = v29;
    v12 = v30;
  }

  while (v24 > 1);
  return result;
}

int16x8_t *sub_2773E7F3C(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    v19 = result[2];
    v18 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v25 = vld1q_dup_f32(v15++);
    *a5 = *&v18.i32[3];
    v7.i32[0] = result[4 * ((a4 >> 1) & 1)].i32[0];
    v26 = vextq_s8(v25, v16, 0xCuLL);
    v27 = vextq_s8(v16, v17, 0xCuLL);
    v28 = vextq_s8(v17, v19, 0xCuLL);
    v29 = vextq_s8(v19, v18, 0xCuLL);
    v30 = vextq_s8(v16, v17, 4uLL);
    v31 = vextq_s8(v17, v19, 4uLL);
    v32 = vextq_s8(v19, v18, 4uLL);
    v33 = vextq_s8(v18, v7, 4uLL);
    v34 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v16), vcgtq_u16(v16, v30)), vcgtq_u16(v16, v26)), vcgtq_u16(v26, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))), xmmword_27750D230));
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v19), vcgtq_u16(v19, v28)), vcgtq_u16(v19, v32)), vcgtq_u16(v32, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v18), vcgtq_u16(v18, v29)), vcgtq_u16(v18, v33)), vcgtq_u16(v33, v18))), xmmword_27750D230));
    v36 = vaddw_s8(v19, *v35.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v14);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v16, *v34.i8), 0), v14), v16);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v34), 0), v14);
    result[2] = vminq_s16(vmaxq_s16(v36, 0), v14);
    result[3] = vbslq_s8(v12, v7, v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E80B4(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774A99AC(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 28);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v12 = *_X5;
  v11 = *(_X5 + 1);
  __asm { PRFM            #0, [X5,#0x20] }

  v18 = (_X5 + 2);
  v19 = *result;
  v20 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v22 = vld1q_dup_f32(v18);
  *a5 = v20.i32[3];
  v23 = (a5 + 2);
  v24 = 2 * a2;
  v25 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v26 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v27 = vceqzq_s16(v10);
  v28.i64[0] = 0xF000F000F000F000;
  v28.i64[1] = 0xF000F000F000F000;
  v29 = v23;
  do
  {
    v30 = vextq_s8(v12, v11, 4uLL);
    v31 = v20;
    v32 = v19;
    _X11 = result + v24;
    v19 = *(result + 2 * a2);
    v20 = *(result + v24 + 16);
    __asm { PRFM            #0, [X11,#0x20] }

    v35 = vld1q_dup_f32(v29++);
    v36 = vextq_s8(v11, v22, 4uLL);
    *v23 = *&v20.i32[3];
    v37 = vextq_s8(v35, v19, 0xCuLL);
    v38 = vextq_s8(v19, v20, 0xCuLL);
    v39 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v32), vcgtq_u16(v32, v30)), vcgtq_u16(v32, v37)), vcgtq_u16(v37, v32))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v31), vcgtq_u16(v31, v36)), vcgtq_u16(v31, v38)), vcgtq_u16(v38, v31))), xmmword_27750D230));
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v32, *v39.i8), 0), v28), v32);
    *(result + 16) = vbslq_s8(v26, vminq_s16(vmaxq_s16(vaddw_high_s8(v31, v39), 0), v28), v31);
    v40 = (result + 32);
    --v25;
    result += v24;
    v22 = vld1q_dup_f32(v40);
    v23 = v29;
    v12 = v32;
    v11 = v31;
  }

  while (v25 > 1);
  return result;
}

uint64_t sub_2773E8260(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774A9A38(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i32[3];
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 28);
    _X5 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 28);
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D2A0);
  v16 = vandq_s8(v14, xmmword_27750D2B0);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0xF000F000F000F000;
  v31.i64[1] = 0xF000F000F000F000;
  v32 = a5;
  do
  {
    v33 = vextq_s8(v17, v18, 0xCuLL);
    v34 = v25;
    v35 = v24;
    _X12 = result + v28;
    v24 = *(result + 2 * a2);
    v25 = *(result + v28 + 16);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i32[0] = *(result + 32 * ((a4 >> 1) & 1) + 2 * a2);
    v38 = vextq_s8(v11, v17, 0xCuLL);
    v39 = vextq_s8(v24, v25, 4uLL);
    v40 = vextq_s8(v25, v7, 4uLL);
    v41 = vcgtq_u16(v34, v40);
    v7 = vcgtq_u16(v40, v34);
    v42 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v35), vcgtq_u16(v35, v38)), vcgtq_u16(v35, v39)), vcgtq_u16(v39, v35))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v34), vcgtq_u16(v34, v33)), v41), v7)), xmmword_27750D230));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v35, *v42.i8), 0), v31), v35);
    *(result + 16) = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v34, v42), 0), v31), v34);
    v11 = vld1q_dup_f32(v32++);
    --v27;
    result += v28;
    *a5 = v34.i32[3];
    v17 = v35;
    v18 = v34;
    a5 = v32;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773E841C(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i32[3];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[1].i32[3] + 2 * v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v17 = *result;
  v18 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v20 = 2 * a2;
  v21 = v9 + 1;
  v22.i64[0] = 0xF000F000F000F000;
  v22.i64[1] = 0xF000F000F000F000;
  do
  {
    v23 = v17;
    v24 = v18;
    _X10 = result->i64 + v20;
    v17 = *(result + 2 * a2);
    v18 = *(&result[1] + v20);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i32[3];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v23), vcgtq_u16(v23, v11)), vcgtq_u16(v23, v17)), vcgtq_u16(v17, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v24), vcgtq_u16(v24, v10)), vcgtq_u16(v24, v18)), vcgtq_u16(v18, v24))), xmmword_27750D230));
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v20);
    v11 = v23;
    v10 = v24;
  }

  while (v21 > 1);
  return result;
}

int16x8_t *sub_2773E8528(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D2A0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D2B0));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = a5;
  do
  {
    v16 = *result;
    v17 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v23 = vld1q_dup_f32(v15++);
    *a5 = *&v17.i32[3];
    v7.i32[0] = result[2 * ((a4 >> 1) & 1)].i32[0];
    v24 = vextq_s8(v23, v16, 0xCuLL);
    v25 = vextq_s8(v16, v17, 0xCuLL);
    v26 = vextq_s8(v16, v17, 4uLL);
    v27 = vextq_s8(v17, v7, 4uLL);
    v28 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v16), vcgtq_u16(v16, v26)), vcgtq_u16(v16, v24)), vcgtq_u16(v24, v16))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v25, v17), vcgtq_u16(v17, v25)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), xmmword_27750D230));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v28.i8), 0), v14);
    *result = vbslq_s8(v13, v7, v16);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v28), 0), v14), v17);
    result = (result + 2 * a2);
    --v11;
    a5 = v15;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773E8628(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774A9B3C(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + 2 * a7 * a2 - 4);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 12);
    a5 += 2;
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = *_X5;
  v10 = (_X5 + 1);
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 16;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_f32(v10);
  *a5 = HIDWORD(*result);
  v20 = (a5 + 2);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v24.i64[0] = 0xF000F000F000F000;
  v24.i64[1] = 0xF000F000F000F000;
  v25 = v20;
  do
  {
    _X12 = result + v21 + 16;
    v27 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v29 = vld1q_dup_f32(v25++);
    *v20 = *&v27.i32[3];
    v30 = vextq_s8(v9, v19, 4uLL);
    v31 = vextq_s8(v29, v27, 0xCuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v30), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v30, v17)), vcgtq_u16(v17, v31)), vcgtq_u16(v31, v17))))), 0), v24), v17);
    v32 = (result + 16);
    --v22;
    result += v21;
    v19 = vld1q_dup_f32(v32);
    v20 = v25;
    v9 = v17;
    v17 = v27;
  }

  while (v22 > 1);
  return result;
}

uint64_t sub_2773E8794(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774A9BC8(result, a2, a3, a4, a5, a6, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 2);
    v11 = vld1q_dup_f32(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_f32(v10++);
    *a5 = *(result + 12);
    a6 = result;
    result += 2 * a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + 2 * v13 * a2 + 12);
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 16;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v28.i64[0] = 0xF000F000F000F000;
  v28.i64[1] = 0xF000F000F000F000;
  v29 = a5;
  do
  {
    _X13 = result + v25 + 16;
    v31 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i32[0] = *(result + 16 * ((a4 >> 1) & 1) + 2 * a2);
    v33 = vextq_s8(v11, v16, 0xCuLL);
    v34 = vextq_s8(v31, v7, 4uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v33), xmmword_27750D2E0, xmmword_27750D2D0);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v33, v23)), vcgtq_u16(v23, v34)), vcgtq_u16(v34, v23))))), 0), v28), v23);
    v11 = vld1q_dup_f32(v29++);
    --v26;
    result += v25;
    *a5 = v23.i32[3];
    v16 = v23;
    v23 = v31;
    a5 = v29;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773E8910(uint16x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i32[3];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result->i32[3] + 2 * v9 * a2);
  v11 = *a6;
  _X5 = a6 + 1;
  v12 = v11;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v19 = *result;
  __asm { PRFM            #0, [X8] }

  v21 = 2 * a2;
  v22 = v9 + 1;
  v23.i64[0] = 0xF000F000F000F000;
  v23.i64[1] = 0xF000F000F000F000;
  do
  {
    _X11 = result[1].i64 + v21;
    v25 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v19.i32[3];
    --v22;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v19, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v19, v12), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v12, v19)), vcgtq_u16(v19, v25)), vcgtq_u16(v25, v19))))), 0), v23);
    result = (result + v21);
    v12 = v19;
    v19 = v25;
  }

  while (v22 > 1);
  return result;
}

int8x16_t *sub_2773E89F8(int8x16_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D2C0));
  v11.i64[0] = 0xF000F000F000F000;
  v11.i64[1] = 0xF000F000F000F000;
  v12 = a5;
  do
  {
    v13 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v19 = vld1q_dup_f32(v12++);
    v20 = vextq_s8(v19, *result, 0xCuLL);
    *a5 = HIDWORD(*result);
    v7.i32[0] = result[(a4 >> 1) & 1].i32[0];
    v21 = vextq_s8(v13, v7, 4uLL);
    v22 = vcgtq_u16(v13, v21);
    v7 = vcgtq_u16(v21, v13);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v13, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v13, v20), xmmword_27750D2E0, xmmword_27750D2D0), vcgtq_u16(v20, v13)), v22), v7)))), 0), v11), v13);
    result = (result + 2 * a2);
    --v9;
    a5 = v12;
  }

  while (v9 > 1);
  return result;
}

uint64_t sub_2773E8AB8(uint64_t a1, uint64_t a2)
{
  memset(__p, 0, 24);
  memset(&__p[4], 0, 24);
  v3 = sub_2773FB5F4(__p, a2);
  if (!v3)
  {
    v4 = *(a2 + 16);
    switch(v4)
    {
      case '""':
        operator new();
      case '!':
        operator new();
      case ' ':
        sub_2773EB894();
    }

    if (dword_280B9A880 >= 3)
    {
      fwrite("Passed NALU that isn't a parameter set!\n", 0x28uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Passed NALU that isn't a parameter set!\n");
    }

    v3 = 4294954385;
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2773EB7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  p_shared_weak_owners = &v17[67].__shared_weak_owners_;
  shared_weak_owners = v17[71].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v17[72].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  v24 = *v20;
  if (*v20)
  {
    v17[71].__vftable = v24;
    operator delete(v24);
  }

  v25 = *v19;
  if (*v19)
  {
    v17[70].__vftable = v25;
    operator delete(v25);
  }

  v26 = *p_shared_weak_owners;
  *p_shared_weak_owners = 0;
  if (v26)
  {
    MEMORY[0x277CAD330](v26, 0x1000C8052888210);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v27);
  sub_2773CC26C(v18);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2773EB9AC(void *a1)
{
  v2 = a1[218];
  if (v2)
  {
    a1[219] = v2;
    operator delete(v2);
  }

  v3 = a1[215];
  if (v3)
  {
    a1[216] = v3;
    operator delete(v3);
  }

  v4 = a1[212];
  if (v4)
  {
    a1[213] = v4;
    operator delete(v4);
  }

  v5 = a1[209];
  if (v5)
  {
    a1[210] = v5;
    operator delete(v5);
  }

  result = a1[203];
  a1[203] = 0;
  if (result)
  {

    JUMPOUT(0x277CAD330);
  }

  return result;
}

void sub_2773EBA44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288662720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CAD370);
}

void sub_2773EBAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      sub_2773EBC4C(a4);
    }

    sub_2773C0914();
  }
}

void sub_2773EBB30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2773EBB4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1555555555555556)
    {
      sub_2773EBBF4(a4);
    }

    sub_2773C0914();
  }
}

void sub_2773EBBD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2773EBBF4(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2773C5248();
}

void sub_2773EBC4C(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2773C5248();
}

void sub_2773EBC94(uint64_t a1)
{
  v4 = (a1 + 2072);
  sub_2773EBD18(&v4);
  v2 = *(a1 + 2000);
  *(a1 + 2000) = 0;
  if (v2)
  {
    MEMORY[0x277CAD330](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 320);
  if (v3)
  {
    *(a1 + 328) = v3;

    operator delete(v3);
  }
}

void sub_2773EBD18(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 7;
        sub_2773EBD9C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2773EBD9C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void sub_2773EBDF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2886626E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CAD370);
}

void sub_2773EBE6C(void *a1)
{
  v2 = a1[54];
  if (v2)
  {
    v3 = a1[55];
    v4 = a1[54];
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 40;
        v7 = (v3 - 24);
        sub_2773EBD18(&v7);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[54];
    }

    a1[55] = v2;
    operator delete(v4);
  }

  v6 = a1[35];
  if (v6)
  {
    a1[36] = v6;

    operator delete(v6);
  }
}

void sub_2773EBF10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288662758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_2773EBFA4(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 24) = a3;
  *(a1 + 16) = 64;
  if (a3 <= 1)
  {
    if (dword_280B9A880 >= 3)
    {
      v3 = *MEMORY[0x277D85DF8];
      v4 = "NALU too small\n";
      v5 = "NALU too small\n";
      v6 = 15;
LABEL_21:
      fwrite(v5, v6, 1uLL, v3);
      syslog(27, v4);
      return 4294954387;
    }

    return 4294954387;
  }

  if (*a2 < 0)
  {
    if (dword_280B9A880 >= 3)
    {
      v3 = *MEMORY[0x277D85DF8];
      v4 = "forbidden_zero_bit is 1\n";
      v5 = "forbidden_zero_bit is 1\n";
      v6 = 24;
      goto LABEL_21;
    }

    return 4294954387;
  }

  v8 = *a2;
  v9 = *a2 >> 1;
  *(a1 + 16) = v9;
  if (a3 == 2 && (v8 & 0x7C) != 0x48)
  {
    if (dword_280B9A880 < 3)
    {
      return 4294954387;
    }

    v10 = "NALU (type %d) has no RBSP!\n";
    fprintf(*MEMORY[0x277D85DF8], "NALU (type %d) has no RBSP!\n");
    goto LABEL_9;
  }

  *(a1 + 17) = (a2[1] >> 3) & 0xDF | (32 * (*a2 & 1));
  if ((a2[1] & 7) == 0)
  {
    if (dword_280B9A880 >= 3)
    {
      v3 = *MEMORY[0x277D85DF8];
      v4 = "nuh_temporal_id_plus1 == 0\n";
      v5 = "nuh_temporal_id_plus1 == 0\n";
      v6 = 27;
      goto LABEL_21;
    }

    return 4294954387;
  }

  result = 0;
  v13 = (a2[1] & 7) - 1;
  *(a1 + 18) = v13;
  if (v9 > 0x25)
  {
    return result;
  }

  if (((1 << v9) & 0x3003F0000) != 0)
  {
    goto LABEL_16;
  }

  if (((1 << v9) & 0x3C) != 0)
  {
    if (!v13)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v10 = "Temporal ID must be non-zero for NALU type %d\n";
      fprintf(*MEMORY[0x277D85DF8], "Temporal ID must be non-zero for NALU type %d\n");
LABEL_9:
      v11 = *(a1 + 16);
LABEL_10:
      syslog(27, v10, v11, v14);
      return 4294954387;
    }

    return 0;
  }

  if (((1 << v9) & 0x3000000000) != 0)
  {
    if (a3 != 2 && dword_280B9A880 >= 4)
    {
      fprintf(*MEMORY[0x277D85DF8], "End of sequence/bitstream NALU (%d) shouldn't have RBSP data (%ld bytes)!\n", v9, a3 - 2);
      syslog(28, "End of sequence/bitstream NALU (%d) shouldn't have RBSP data (%ld bytes)!\n", *(a1 + 16), *(a1 + 24) - 2);
      LOBYTE(v13) = *(a1 + 18);
    }

LABEL_16:
    if (v13)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v10 = "Temporal ID (%d) must be zero for NALU type %d\n";
      fprintf(*MEMORY[0x277D85DF8], "Temporal ID (%d) must be zero for NALU type %d\n", v13, *(a1 + 16));
      v11 = *(a1 + 18);
      v14 = *(a1 + 16);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2773EC258(char *a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = &a1[a5];
  }

  else
  {
    v10 = (a2 + 2);
    bzero(a1, v10);
    a1[v10] = 1;
    v9 = &a1[v10 + 1];
  }

  *v9 = *a3;
  v11 = v9 + 2;
  v9[1] = a3[1];
  v12 = a4 - 2;
  if (a4 != 2)
  {
    v13 = 0;
    v14 = a3 + 2;
    do
    {
      v15 = *v14;
      if (v13 == 2)
      {
        if (v15 > 3)
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
          *v11++ = 3;
          v15 = *v14;
        }
      }

      if (v15)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      ++v14;
      *v11++ = v15;
      --v12;
    }

    while (v12);
  }

  if (a5)
  {
    v16 = v11 - (a1 + a5);
    switch(a5)
    {
      case 4:
        *a1 = bswap32(v16);
        break;
      case 2:
        *a1 = bswap32(v16) >> 16;
        break;
      case 1:
        *a1 = v16;
        break;
    }
  }

  return v11 - a1;
}

uint64_t sub_2773EC398(uint64_t a1)
{
  *a1 = &unk_288662998;
  *(a1 + 8) = 0;
  *(a1 + 16) = 64;
  *(a1 + 18) = -1;
  *(a1 + 24) = 0;
  v3 = a1;
  if (atomic_load_explicit(&qword_280B9A8C0, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&qword_280B9A8C0, &v4, sub_2773EC36C);
  }

  return a1;
}

uint64_t sub_2773EC43C(uint64_t a1, uint64_t a2, char a3)
{
  result = 0;
  *(a1 + 520) = *(a2 + 204);
  v5 = *(a2 + 2096);
  *(a1 + 528) = v5;
  v6 = *(a2 + 2098);
  *(a1 + 529) = *(a2 + 2098);
  *(a1 + 1028) = *(a2 + 2113);
  v7 = *(a2 + 2132);
  v8 = (a1 + 648);
  v9 = vextq_s8(v7, v7, 8uLL).u64[0];
  vst2_f32(v8, v7);
  v10 = v5 == 8 && v6 == 8;
  v11 = !v10;
  *(a1 + 531) = v11;
  v12 = *(a2 + 201);
  *(a1 + 532) = v12;
  *(a1 + 533) = *(a2 + 1991);
  v13 = a3 ^ 1;
  if (v10)
  {
    v13 = 0;
  }

  *(a1 + 534) = v13;
  if (!*(a1 + 408) && v12)
  {
    if (*(a1 + 432) == 1)
    {
      if (dword_280B9A880 >= 3)
      {
        v14 = MEMORY[0x277D85DF8];
        fwrite("VRA not implemented without CoreVideo\n", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "VRA not implemented without CoreVideo\n");
        if (dword_280B9A880 > 2)
        {
          fwrite("Failed to allocate chroma plane\n", 0x20uLL, 1uLL, *v14);
          syslog(27, "Failed to allocate chroma plane\n");
        }
      }

      return 4294954386;
    }

    else
    {
      v16 = *(a2 + 2117) << v11;
      sub_27743FBF4();
      LODWORD(v17) = qword_280B9A898;
      if (v16 < qword_280B9A898)
      {
        LODWORD(v17) = v16;
      }

      if (v17 <= 32)
      {
        v17 = 32;
      }

      else
      {
        v17 = v17;
      }

      v18 = ((71 << v11) + 0x7FFFFFFF + v17) & -v17;
      v19 = v17 - 1;
      v20 = -v17;
      v21 = (v17 - 1 + ((*(a2 + 204) + 142) << v11)) & -v17;
      if ((v21 & 0x3FF) == 0 && v21 > 0x3FF)
      {
        v23 = v17;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23 + v21;
      v25 = *(a2 + 201);
      v26 = v25 < 3;
      v27 = v25 < 2;
      v28 = (2 * v24) >> (v25 < 3);
      v29 = v17 + v28 * ((*(a2 + 208) >> (v25 < 2)) + 143);
      v30 = *(a1 + 720);
      v31 = *(a1 + 728) - v30;
      if (v29 <= v31)
      {
        if (v29 < v31)
        {
          *(a1 + 728) = v30 + v29;
        }
      }

      else
      {
        sub_2773C07DC((a1 + 720), v29 - v31);
        v30 = *(a1 + 720);
      }

      result = 0;
      *(a1 + 530) = 2;
      *(a1 + 424) = v28 >> v11;
      *(a1 + 408) = (v19 + ((2 * v18) >> v26) + v30 + v28 * (0x47u >> v27)) & v20;
    }
  }

  return result;
}

unint64_t sub_2773EC6A0(unint64_t result, int a2, int a3, int a4)
{
  v4 = *(result + 520) >> a4;
  v5 = *(result + 524) >> a4;
  v6 = *(result + 744) >> a4;
  v7 = result + 8 * a4;
  v8 = *(v7 + 400);
  v9 = *(v7 + 416);
  v10 = a2 & ~(a2 >> 31);
  if (a3 >= v5)
  {
    v11 = *(result + 524) >> a4;
  }

  else
  {
    v11 = a3;
  }

  if (*(result + 531))
  {
    if (v11 > v10)
    {
      v12 = 2 * v9 * v10;
      v13 = (v8 + v12);
      v14 = (v8 + v12 + 2 * v4 - 2);
      v15 = vdupq_n_s64(v6 - 1);
      v16 = v12 - 2 * v6 + v8 + 8;
      v17 = 2 * v9;
      v18 = v12 + 2 * v4 + v8 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        if (v6)
        {
          v20 = v16;
          v21 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
          v22 = *v13;
          v23 = xmmword_27750D320;
          v24 = xmmword_27750D310;
          v25 = xmmword_27750D300;
          v26 = xmmword_27750D2F0;
          do
          {
            v27 = vmovn_s64(vcgeq_u64(v15, v23));
            if (vuzp1_s8(vuzp1_s16(v27, *v15.i8), *v15.i8).u8[0])
            {
              *(v20 - 4) = v22;
            }

            if (vuzp1_s8(vuzp1_s16(v27, *&v15), *&v15).i8[1])
            {
              *(v20 - 3) = v22;
            }

            if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v24))), *&v15).i8[2])
            {
              *(v20 - 2) = v22;
              *(v20 - 1) = v22;
            }

            v28 = vmovn_s64(vcgeq_u64(v15, v25));
            if (vuzp1_s8(*&v15, vuzp1_s16(v28, *&v15)).i32[1])
            {
              *v20 = v22;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(v28, *&v15)).i8[5])
            {
              v20[1] = v22;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v26)))).i8[6])
            {
              v20[2] = v22;
              v20[3] = v22;
            }

            v25 = vaddq_s64(v25, v19);
            v24 = vaddq_s64(v24, v19);
            v23 = vaddq_s64(v23, v19);
            v20 += 8;
            v26 = vaddq_s64(v26, v19);
            v21 -= 8;
          }

          while (v21);
          v29 = v18;
          result = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
          v30 = *v14;
          v31 = xmmword_27750D320;
          v32 = xmmword_27750D310;
          v33 = xmmword_27750D300;
          v34 = xmmword_27750D2F0;
          do
          {
            v35 = vmovn_s64(vcgeq_u64(v15, v31));
            if (vuzp1_s8(vuzp1_s16(v35, *v15.i8), *v15.i8).u8[0])
            {
              *(v29 - 4) = v30;
            }

            if (vuzp1_s8(vuzp1_s16(v35, *&v15), *&v15).i8[1])
            {
              *(v29 - 3) = v30;
            }

            if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v32))), *&v15).i8[2])
            {
              *(v29 - 2) = v30;
              *(v29 - 1) = v30;
            }

            v36 = vmovn_s64(vcgeq_u64(v15, v33));
            if (vuzp1_s8(*&v15, vuzp1_s16(v36, *&v15)).i32[1])
            {
              *v29 = v30;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(v36, *&v15)).i8[5])
            {
              v29[1] = v30;
            }

            if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v34)))).i8[6])
            {
              v29[2] = v30;
              v29[3] = v30;
            }

            v37 = vdupq_n_s64(8uLL);
            v33 = vaddq_s64(v33, v37);
            v32 = vaddq_s64(v32, v37);
            v31 = vaddq_s64(v31, v37);
            v34 = vaddq_s64(v34, v37);
            v29 += 8;
            result -= 8;
          }

          while (result);
        }

        LODWORD(v10) = v10 + 1;
        v13 += v9;
        v14 += v9;
        v16 += v17;
        v18 += v17;
      }

      while (v10 != v11);
    }

    if (a2 < 1 && v6 >= 1)
    {
      v38 = (v6 + 1) - 1;
      v39 = (v8 + -2 * v9 - 2 * v6);
      do
      {
        result = memcpy(v39, (v8 - 2 * v6), 2 * (v4 + 2 * v6));
        v39 -= 2 * v9;
        --v38;
      }

      while (v38);
    }

    if (v5 <= a3 && v6 >= 1)
    {
      v40 = v5 - 1;
      v41 = v4;
      v42 = (v8 - 2 * v6 + 2 * v9 * v40);
      v43 = 2 * (v41 + 2 * v6);
      v44 = (v6 + 1) - 1;
      v45 = (v8 + v9 * (2 * v40 + 2) - 2 * v6);
      v46 = 2 * v9;
      do
      {
        result = memcpy(v45, v42, v43);
        v45 += v46;
        --v44;
      }

      while (v44);
    }
  }

  else
  {
    v59 = *(result + 524) >> a4;
    v47 = *(result + 520) >> a4;
    v48 = v8;
    v49 = v11 - v10;
    if (v11 > v10)
    {
      v50 = (v48 + v9 * v10);
      do
      {
        memset(&v50[-v6], *v50, v6);
        result = memset(&v50[v47], v50[v47 - 1], v6);
        v50 += v9;
        --v49;
      }

      while (v49);
    }

    v51 = v48;
    if (a2 < 1 && v6 >= 1)
    {
      v52 = (v6 + 1) - 1;
      v53 = (v48 + -v9 - v6);
      do
      {
        result = memcpy(v53, (v48 - v6), v47 + 2 * v6);
        v53 -= v9;
        --v52;
      }

      while (v52);
    }

    if (v59 <= a3 && v6 >= 1)
    {
      v54 = v59 - 1;
      v55 = (v48 - v6 + v9 * v54);
      v56 = (v6 + 1) - 1;
      v57 = (v51 + v9 + v9 * v54 - v6);
      do
      {
        result = memcpy(v57, v55, v47 + 2 * v6);
        v57 += v9;
        --v56;
      }

      while (v56);
    }
  }

  return result;
}

void sub_2773ECB80(uint64_t a1)
{
  sub_2773ECBB8(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t sub_2773ECBB8(uint64_t a1)
{
  *a1 = &unk_2886629F0;
  std::condition_variable::~condition_variable((a1 + 1104));
  std::mutex::~mutex((a1 + 1040));
  v2 = *(a1 + 1000);
  if (v2)
  {
    *(a1 + 1008) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 968);
  if (v3)
  {
    *(a1 + 976) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 944);
  if (v4)
  {
    *(a1 + 952) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 904);
  if (v5)
  {
    *(a1 + 912) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 880);
  if (v6)
  {
    *(a1 + 888) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 856);
  if (v7)
  {
    *(a1 + 864) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 808);
  if (v8)
  {
    *(a1 + 816) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 776);
  if (v9)
  {
    *(a1 + 784) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 720);
  if (v10)
  {
    *(a1 + 728) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 688);
  if (v11)
  {
    *(a1 + 696) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 376);
  if (v12)
  {
    *(a1 + 384) = v12;
    operator delete(v12);
  }

  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  v13 = *(a1 + 64);
  if (v13)
  {
    *(a1 + 72) = v13;
    operator delete(v13);
  }

  return a1;
}

double sub_2773ECCE4(uint64_t a1)
{
  *a1 = &unk_2886629F0;
  *(a1 + 48) = 1;
  *(a1 + 56) = a1;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 141) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 527) = 0;
  *(a1 + 520) = 0;
  *(a1 + 712) = 1;
  *(a1 + 736) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 824) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 920) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 1040) = 850045863;
  *(a1 + 1096) = 0;
  *(a1 + 1104) = 1018212795;
  *(a1 + 1144) = 0;
  *(a1 + 992) = 0;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 44) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 36) = 0;
  *(a1 + 548) = 0;
  *(a1 + 597) = 0;
  *(a1 + 1172) = 0;
  *(a1 + 748) = 0;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 672) = -1;
  *(a1 + 664) = -1;
  *(a1 + 680) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 648) = 0u;
  return result;
}

unsigned int *sub_2773ECE34(unsigned int *result)
{
  if (*(result + 530) >= 2u)
  {
    if (*(result + 531))
    {
      v1 = 1 << (*(result + 529) - 1);
      if (*(result + 534))
      {
        LOWORD(v1) = 0x8000;
      }

      v2 = result[131];
      if (v2 >= 1)
      {
        v3 = 0;
        v4 = result[130];
        v5 = vdupq_n_s64(v4 - 1);
        v6 = vdupq_n_s64(8uLL);
        v7 = *(result + 51) + 8;
        v8 = 2 * *(result + 53);
        do
        {
          if (v4 >= 1)
          {
            v9 = v7;
            v10 = (v4 + 7) & 0xFFFFFFF8;
            v11 = xmmword_27750D320;
            v12 = xmmword_27750D310;
            v13 = xmmword_27750D300;
            v14 = xmmword_27750D2F0;
            do
            {
              v15 = vmovn_s64(vcgeq_u64(v5, v11));
              if (vuzp1_s8(vuzp1_s16(v15, *v5.i8), *v5.i8).u8[0])
              {
                *(v9 - 4) = v1;
              }

              if (vuzp1_s8(vuzp1_s16(v15, *&v5), *&v5).i8[1])
              {
                *(v9 - 3) = v1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v12))), *&v5).i8[2])
              {
                *(v9 - 2) = v1;
                *(v9 - 1) = v1;
              }

              v16 = vmovn_s64(vcgeq_u64(v5, v13));
              if (vuzp1_s8(*&v5, vuzp1_s16(v16, *&v5)).i32[1])
              {
                *v9 = v1;
              }

              if (vuzp1_s8(*&v5, vuzp1_s16(v16, *&v5)).i8[5])
              {
                v9[1] = v1;
              }

              if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v14)))).i8[6])
              {
                v9[2] = v1;
                v9[3] = v1;
              }

              v13 = vaddq_s64(v13, v6);
              v12 = vaddq_s64(v12, v6);
              v11 = vaddq_s64(v11, v6);
              v9 += 8;
              v14 = vaddq_s64(v14, v6);
              v10 -= 8;
            }

            while (v10);
          }

          v3 += 2;
          v7 += v8;
        }

        while (v3 < v2);
      }
    }

    else
    {
      return memset(*(result + 51), 128, *(result + 53) * result[131] / 2);
    }
  }

  return result;
}

uint64_t sub_2773ECFF8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  if (!v1)
  {
    v5 = -16;
    goto LABEL_7;
  }

  v3 = (64 - v1);
  v4 = 16;
  if (v3 < 0x10)
  {
    v4 = 64 - v1;
  }

  *v2++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v1 - v4)) & (-1 << v1));
  *result = v2;
  if (v3 <= 0xF)
  {
    v5 = v4 - 16;
LABEL_7:
    *result = v2;
    *v2 &= ~(0xFFFFFFFFFFFFFFFFLL >> v5);
  }

  return result;
}

uint64_t sub_2773ED06C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 504);
  v5 = *(a1 + 508);
  v6 = *(a1 + 520);
  v7 = *(a1 + 524);
  v8 = (*(*a1 + 24))(a1);
  v9 = (*(*a1 + 32))(a1);
  result = (*(*a2 + 40))(a2, v4, v5, v6, v7, v8, v9);
  if (result)
  {
    v11 = 0;
    *(a1 + 512) = 0;
  }

  else
  {
    v12 = *(a1 + 530);
    if (*(a1 + 530))
    {
      v13 = (a1 + 488);
      do
      {
        *(v13 - 11) = *(v13 - 2);
        *(v13 - 9) = *v13;
        ++v13;
        --v12;
      }

      while (v12);
    }

    *(a1 + 512) = *(a1 + 520);
    v11 = *(a1 + 524);
  }

  *(a1 + 516) = v11;
  return result;
}

uint64_t sub_2773ED190(uint64_t a1, FILE *__stream, uint64_t a3, int a4)
{
  v7 = 0;
  if (a3 && (*(a1 + 432) & 1) != 0)
  {
    if (*(a1 + 504) == *(a1 + 520) && *(a1 + 508) == *(a1 + 524))
    {
      v7 = 0;
    }

    else
    {
      result = sub_2773ED06C(a1, a3);
      if (result)
      {
        return result;
      }

      v7 = 1;
    }
  }

  v9 = *(a1 + 648);
  v10 = (*(a1 + 520) - (v9 + *(a1 + 656)));
  v11 = *(a1 + 524);
  v12 = *(a1 + 652);
  v13 = *(a1 + 660);
  v14 = v11 - (v12 + v13);
  v15 = v11 - v13;
  if (*(a1 + 531) == 1)
  {
    __ptr = 0;
    v97 = 0;
    v98 = 0;
    v16 = *(a1 + 534);
    if (*(a1 + 530) < 2u)
    {
      if ((v16 & 1) == 0)
      {
        v92 = a1 + 400;
        v17 = *(a1 + 400) + 2 * v9;
        goto LABEL_44;
      }

      sub_2773ED84C(&__ptr, v10);
      v92 = a1 + 400;
      v17 = *(a1 + 400) + 2 * *(a1 + 648);
    }

    else
    {
      sub_2773ED84C(&__ptr, 2 * v10 * v14);
      v92 = a1 + 400;
      v17 = *(a1 + 400) + 2 * *(a1 + 648);
      if ((v16 & 1) == 0)
      {
        v12 = *(a1 + 652);
LABEL_44:
        if (v12 >= v15)
        {
          goto LABEL_48;
        }

        v91 = v16;
        v50 = v12;
        do
        {
          fwrite((v17 + 2 * *(a1 + 416) * v50++), 1uLL, 2 * v10, __stream);
        }

        while (v50 < v15);
LABEL_47:
        v16 = v91;
LABEL_48:
        v34 = __ptr;
        if (*(a1 + 530) >= 2u)
        {
          v51 = *(a1 + 532);
          v52 = v51 < 3;
          v53 = v51 < 2;
          v54 = v10 >> (v51 < 3);
          v55 = (v14 >> (v51 < 2));
          v56 = 16 - *(a1 + 529);
          if (!v16)
          {
            v56 = 0;
          }

          v57 = v54 * v55;
          if (v55 >= 1)
          {
            v58 = *(a1 + 424);
            v59 = __ptr + 2 * v57;
            v60 = 2 * (*(a1 + 648) >> v52);
            v61 = 2 * v54;
            v62 = 2 * v58 * (*(a1 + 652) >> v53) + 4 * v54 + 2 * v60 + *(v92 + 8) - 2;
            v63 = 2 * v58;
            v64 = __ptr;
            do
            {
              if (v54 >= 1)
              {
                v65 = v62;
                v66 = v54 - 1;
                do
                {
                  *&v64[2 * v66] = *(v65 - 1) >> v56;
                  v67 = *v65;
                  v65 -= 2;
                  *&v59[2 * v66] = v67 >> v56;
                  v68 = v66-- + 1;
                }

                while (v68 > 1);
              }

              v59 += v61;
              v64 += v61;
              v62 += v63;
              v49 = v55-- <= 1;
            }

            while (!v49);
          }

          fwrite(v34, 1uLL, 4 * v57, __stream);
        }

        goto LABEL_59;
      }
    }

    v23 = *(a1 + 652);
    if (v23 >= v15)
    {
      goto LABEL_48;
    }

    v90 = v14;
    v91 = v16;
    v95 = v7;
    v24 = 16 - *(a1 + 528);
    v25 = __ptr;
    v26 = 2 * v23;
    do
    {
      if (v10 >= 1)
      {
        v27 = (v17 + *(a1 + 416) * v26);
        v28 = v25;
        v29 = v10;
        do
        {
          v30 = *v27++;
          *v28++ = v30 >> v24;
          --v29;
        }

        while (v29);
      }

      fwrite(v25, 1uLL, 2 * v10, __stream);
      ++v23;
      v26 += 2;
    }

    while (v23 < v15);
    v7 = v95;
    v14 = v90;
    goto LABEL_47;
  }

  if (a4)
  {
    v94 = v7;
    v18 = *(a1 + 532);
    v19 = v18 < 3;
    v20 = v18 < 2;
    if (v18 >= 2)
    {
      v21 = v18 < 3;
    }

    else
    {
      v21 = v19 + 1;
    }

    v22 = (2 * v10 * v14) >> v21;
    v93 = v20;
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
        sub_2773EBC4C(v22);
      }

      sub_2773C0914();
    }

    v70 = v14;
    if (v12 < v15)
    {
      v71 = v12;
      v72 = v15;
      v73 = *(a1 + 400) + v9;
      do
      {
        if (v10 >= 1)
        {
          v74 = (v73 + *(a1 + 416) * v71);
          v75 = 0;
          v76 = v10;
          do
          {
            v77 = *v74++;
            *v75++ = v77;
            --v76;
          }

          while (v76);
        }

        fwrite(0, 2uLL, v10, __stream);
        ++v71;
      }

      while (v71 < v72);
    }

    if (*(a1 + 530) > 1u)
    {
      v78 = v10 >> v19;
      v79 = (v70 >> v93);
      v80 = (v10 >> v19) * v79;
      if (v79 >= 1)
      {
        v81 = *(a1 + 424);
        v82 = 2 * v80;
        v83 = 2 * v78;
        v84 = v81 * (*(a1 + 652) >> v93) + v83 + 2 * (*(a1 + 648) >> v19) + *(a1 + 408) - 1;
        v85 = 0;
        do
        {
          if (v78 >= 1)
          {
            v86 = v84;
            v87 = v78 - 1;
            do
            {
              *(v85 + 2 * v87) = *(v86 - 1);
              v88 = *v86;
              v86 -= 2;
              *(v82 + 2 * v87) = v88;
              v89 = v87-- + 1;
            }

            while (v89 > 1);
          }

          v82 += v83;
          v85 += v83;
          v84 += v81;
          v49 = v79-- <= 1;
        }

        while (!v49);
      }

      fwrite(0, 2uLL, 2 * v80, __stream);
    }

    v7 = v94;
    goto LABEL_61;
  }

  __ptr = 0;
  v97 = 0;
  v98 = 0;
  if (*(a1 + 530) >= 2u)
  {
    v31 = 2 * v10 * v14;
    if (v31)
    {
      sub_2773C07DC(&__ptr, v31);
      v9 = *(a1 + 648);
      v12 = *(a1 + 652);
    }
  }

  if (v12 < v15)
  {
    v32 = *(a1 + 400) + v9;
    v33 = v12;
    do
    {
      fwrite((v32 + *(a1 + 416) * v33++), 1uLL, v10, __stream);
    }

    while (v33 < v15);
  }

  v34 = __ptr;
  if (*(a1 + 530) >= 2u)
  {
    v35 = *(a1 + 532);
    v36 = v35 < 2;
    v37 = (v14 >> (v35 < 2));
    v38 = v35 < 3;
    v39 = v10 >> (v35 < 3);
    v40 = v39 * v37;
    if (v37 >= 1)
    {
      v41 = *(a1 + 424);
      v42 = __ptr + v40;
      v43 = v41 * (*(a1 + 652) >> v36) + 2 * v39 + 2 * (*(a1 + 648) >> v38) + *(a1 + 408) - 1;
      v44 = __ptr;
      do
      {
        if (v39 >= 1)
        {
          v45 = v43;
          v46 = v39 - 1;
          do
          {
            v44[v46] = *(v45 - 1);
            v47 = *v45;
            v45 -= 2;
            v42[v46] = v47;
            v48 = v46-- + 1;
          }

          while (v48 > 1);
        }

        v44 += v39;
        v42 += v39;
        v43 += v41;
        v49 = v37-- <= 1;
      }

      while (!v49);
    }

    fwrite(v34, 1uLL, 2 * v40, __stream);
  }

LABEL_59:
  if (v34)
  {
    operator delete(v34);
  }

LABEL_61:
  if (!v7 || *(a1 + 432) != 1)
  {
    return 0;
  }

  result = 0;
  v69 = *(a1 + 456);
  *(a1 + 400) = *(a1 + 440);
  *(a1 + 416) = v69;
  *(a1 + 512) = 0;
  return result;
}

void sub_2773ED808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2773ED84C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 1;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 2 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 1)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v8 = v7 - v3;
        if (v8 <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v8;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_2773EBC4C(v10);
      }

      sub_2773C0914();
    }

    bzero(a1[1], 2 * v6);
    v11 = v4 + 2 * v6;
  }

  a1[1] = v11;
}

uint64_t sub_2773ED958(uint64_t a1, uint64_t a2)
{
  v117 = *MEMORY[0x277D85DE8];
  if (*(a1 + 531) == 1)
  {
    for (i = 0; i != 288; i += 96)
    {
      *(&c + i + 92) = 1;
      *(&c + i + 92) = CC_MD5_Init((&c + i)) != 0;
    }

    if (*(a1 + 534) == 1)
    {
      v5 = 16 - *(a1 + 528);
      v6 = 16 - *(a1 + 529);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v10 = *(a1 + 530);
    v11 = *(a1 + 520);
    v12 = *(a1 + 524);
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    v13 = 400;
    if (*(a1 + 432))
    {
      v13 = 440;
    }

    v14 = 408;
    if (*(a1 + 432))
    {
      v14 = 448;
    }

    v15 = 416;
    if (*(a1 + 432))
    {
      v15 = 456;
    }

    v16 = *(a1 + v13);
    v107 = *(a1 + v14);
    if (*(a1 + 432))
    {
      v17 = 464;
    }

    else
    {
      v17 = 424;
    }

    v105 = *(a1 + v17);
    *len = *(a1 + v15);
    v18 = 2 * v12 * v11;
    v19 = 2 * v18;
    data = *(a1 + 376);
    v20 = *(a1 + 384) - data;
    if (v19 <= v20)
    {
      if (v19 < v20)
      {
        *(a1 + 384) = &data[v19];
      }
    }

    else
    {
      sub_2773C07DC((a1 + 376), v19 - v20);
      data = *(a1 + 376);
    }

    if (*(a1 + 528) == 8)
    {
      if (v12 >= 1)
      {
        v33 = 0;
        v34 = data;
        do
        {
          v35 = v16;
          v36 = v34;
          v37 = v11;
          if (v11 >= 1)
          {
            do
            {
              v38 = *v35++;
              *v36++ = v38 >> v5;
              --v37;
            }

            while (v37);
          }

          ++v33;
          v34 += v11;
          v16 += *len;
        }

        while (v33 != v12);
      }

      v18 = v12 * v11;
    }

    else
    {
      if (!v5)
      {
        if (*(a1 + 524))
        {
          v103 = 0;
          do
          {
            v104 = CC_MD5_Update(&c, v16, 2 * v11);
            v112 &= v104;
            ++v103;
            v16 += *len;
          }

          while (v103 < *(a1 + 524));
        }

LABEL_59:
        if (v107)
        {
          v53 = *(a1 + 532);
          v54 = v11 >> (v53 < 3);
          v55 = (v12 >> (v53 < 2));
          v56 = *(a1 + 529);
          v57 = v54 * v55;
          if (v56 == 8)
          {
            if (v55 >= 1)
            {
              v58 = data;
              v59 = v107 + 4 * v54 - 2;
              v60 = &data[v57];
              do
              {
                if (v54 >= 1)
                {
                  v61 = v59;
                  v62 = v54 - 1;
                  do
                  {
                    v58[v62] = *(v61 - 1) >> v6;
                    v63 = *v61;
                    v61 -= 2;
                    v60[v62] = v63 >> v6;
                    v64 = v62-- + 1;
                  }

                  while (v64 > 1);
                }

                v58 += v54;
                v60 += v54;
                v59 += 2 * v105;
                v65 = v55-- <= 1;
              }

              while (!v65);
            }

            v66 = CC_MD5_Update(&v113, data, v57);
            v114 &= v66;
            v67 = CC_MD5_Update(&v115, &data[v57], v57);
          }

          else
          {
            v89 = &data[2 * v57];
            if (v55 >= 1)
            {
              v90 = data;
              v91 = 2 * v54;
              v92 = v107 + 4 * v54 - 2;
              v93 = &data[2 * v57];
              do
              {
                if (v54 >= 1)
                {
                  v94 = v92;
                  v95 = v54 - 1;
                  do
                  {
                    *&v90[2 * v95] = *(v94 - 1) >> v6;
                    v96 = *v94;
                    v94 -= 2;
                    *&v93[2 * v95] = v96 >> v6;
                    v97 = v95-- + 1;
                  }

                  while (v97 > 1);
                }

                v93 += v91;
                v90 += v91;
                v92 += 2 * v105;
                v65 = v55-- <= 1;
              }

              while (!v65);
            }

            v98 = 2 * v57;
            v99 = CC_MD5_Update(&v113, data, v98);
            v114 &= v99;
            v67 = CC_MD5_Update(&v115, v89, v98);
          }

          v116 &= v67;
        }

        v100 = 0;
        p_c = &c;
        while (1)
        {
          v102 = CC_MD5_Final(a2, p_c);
          v87 = (v102 & p_c[1].A) == 0;
          LOBYTE(p_c[1].A) &= v102;
          if (v87)
          {
            break;
          }

          result = 0;
          if (v10 != 1)
          {
            a2 += 16;
            p_c = (p_c + 96);
            v65 = v100++ > 1;
            if (!v65)
            {
              continue;
            }
          }

          return result;
        }

        return 4294954385;
      }

      if (v12 >= 1)
      {
        v46 = 0;
        v47 = data;
        do
        {
          v48 = v16;
          v49 = v47;
          v50 = v11;
          if (v11 >= 1)
          {
            do
            {
              v51 = *v48++;
              *v49++ = v51 >> v5;
              --v50;
            }

            while (v50);
          }

          ++v46;
          v47 += v11;
          v16 += *len;
        }

        while (v46 != v12);
      }
    }

    v52 = CC_MD5_Update(&c, data, v18);
    v112 &= v52;
    goto LABEL_59;
  }

  for (j = 0; j != 288; j += 96)
  {
    *(&c + j + 92) = 1;
    *(&c + j + 92) = CC_MD5_Init((&c + j)) != 0;
  }

  if (*(a1 + 534) == 1)
  {
    v8 = 16 - *(a1 + 528);
    v9 = 16 - *(a1 + 529);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v21 = *(a1 + 530);
  v22 = *(a1 + 520);
  v23 = *(a1 + 524);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v24 = 400;
  if (*(a1 + 432))
  {
    v24 = 440;
  }

  v25 = 408;
  if (*(a1 + 432))
  {
    v25 = 448;
  }

  v26 = 416;
  if (*(a1 + 432))
  {
    v26 = 456;
  }

  v27 = *(a1 + v24);
  v108 = *(a1 + v25);
  if (*(a1 + 432))
  {
    v28 = 464;
  }

  else
  {
    v28 = 424;
  }

  v29 = *(a1 + v26);
  v30 = *(a1 + v28);
  v31 = 2 * v23 * v22;
  dataa = *(a1 + 376);
  v32 = *(a1 + 384) - dataa;
  if (v31 <= v32)
  {
    if (v31 < v32)
    {
      *(a1 + 384) = &dataa[v31];
    }
  }

  else
  {
    sub_2773C07DC((a1 + 376), v31 - v32);
    dataa = *(a1 + 376);
  }

  if (v8)
  {
    if (v23 >= 1)
    {
      v39 = 0;
      v40 = dataa;
      do
      {
        v41 = v27;
        v42 = v40;
        v43 = v22;
        if (v22 >= 1)
        {
          do
          {
            v44 = *v41++;
            *v42++ = v44 >> v8;
            --v43;
          }

          while (v43);
        }

        ++v39;
        v40 += v22;
        v27 += v29;
      }

      while (v39 != v23);
    }

    v45 = CC_MD5_Update(&c, dataa, v23 * v22);
    v112 &= v45;
  }

  else if (*(a1 + 524))
  {
    v68 = 0;
    do
    {
      v69 = CC_MD5_Update(&c, v27, v22);
      v112 &= v69;
      ++v68;
      v27 += v29;
    }

    while (v68 < *(a1 + 524));
  }

  if (v108)
  {
    v70 = *(a1 + 532);
    v71 = v22 >> (v70 < 3);
    v72 = (v23 >> (v70 < 2));
    v73 = v71 * v72;
    v74 = &dataa[v71 * v72];
    if (v72 >= 1)
    {
      v75 = dataa;
      v76 = v108 + 2 * v71 - 1;
      v77 = &dataa[v71 * v72];
      do
      {
        if (v71 >= 1)
        {
          v78 = v76;
          v79 = v71 - 1;
          do
          {
            v75[v79] = *(v78 - 1) >> v9;
            v80 = *v78;
            v78 -= 2;
            v77[v79] = v80 >> v9;
            v81 = v79-- + 1;
          }

          while (v81 > 1);
        }

        v75 += v71;
        v77 += v71;
        v76 += v30;
        v65 = v72-- <= 1;
      }

      while (!v65);
    }

    v82 = CC_MD5_Update(&v113, dataa, v73);
    v114 &= v82;
    v83 = CC_MD5_Update(&v115, v74, v73);
    v116 &= v83;
  }

  v84 = 0;
  v85 = &c;
  while (1)
  {
    v86 = CC_MD5_Final(a2, v85);
    v87 = (v86 & v85[1].A) == 0;
    LOBYTE(v85[1].A) &= v86;
    if (v87)
    {
      break;
    }

    result = 0;
    if (v21 != 1)
    {
      a2 += 16;
      v85 = (v85 + 96);
      v65 = v84++ > 1;
      if (!v65)
      {
        continue;
      }
    }

    return result;
  }

  return 4294954385;
}

void sub_2773EE100(uint64_t a1, double *a2, double *a3)
{
  v5 = (1046529 * *(a1 + 520) * *(a1 + 524));
  v6 = 999.0;
  v7 = 999.0;
  if (*a2 > 0.0)
  {
    v7 = log10(v5 / *a2) * 10.0;
  }

  *a3 = v7;
  v8 = a2[1];
  v9 = 999.0;
  if (v8 > 0.0)
  {
    v9 = log10(v5 * 0.25 / v8) * 10.0;
  }

  a3[1] = v9;
  v10 = a2[2];
  v11 = 999.0;
  if (v10 > 0.0)
  {
    v11 = log10(v5 * 0.25 / v10) * 10.0;
  }

  a3[2] = v11;
  v12 = *a2 + a2[1] + a2[2];
  if (v12 > 0.0)
  {
    v6 = log10(v5 * 1.5 / v12) * 10.0;
  }

  a3[3] = v6;
}

void sub_2773EE200(uint64_t a1, double *a2, double *a3)
{
  v5 = (261121 * *(a1 + 520) * *(a1 + 524));
  v6 = 999.0;
  v7 = 999.0;
  if (*a2 > 0.0)
  {
    v7 = log10(v5 / *a2) * 10.0;
  }

  *a3 = v7;
  v8 = a2[1];
  v9 = 999.0;
  if (v8 > 0.0)
  {
    v9 = log10(v5 * 0.25 / v8) * 10.0;
  }

  a3[1] = v9;
  v10 = a2[2];
  v11 = 999.0;
  if (v10 > 0.0)
  {
    v11 = log10(v5 * 0.25 / v10) * 10.0;
  }

  a3[2] = v11;
  v12 = *a2 + a2[1] + a2[2];
  if (v12 > 0.0)
  {
    v6 = log10(v5 * 1.5 / v12) * 10.0;
  }

  a3[3] = v6;
}

void sub_2773EE300(uint64_t a1, double *a2, double *a3)
{
  v5 = (65025 * *(a1 + 520) * *(a1 + 524));
  v6 = 999.0;
  v7 = 999.0;
  if (*a2 > 0.0)
  {
    v7 = log10(v5 / *a2) * 10.0;
  }

  *a3 = v7;
  v8 = a2[1];
  v9 = 999.0;
  if (v8 > 0.0)
  {
    v9 = log10(v5 * 0.25 / v8) * 10.0;
  }

  a3[1] = v9;
  v10 = a2[2];
  v11 = 999.0;
  if (v10 > 0.0)
  {
    v11 = log10(v5 * 0.25 / v10) * 10.0;
  }

  a3[2] = v11;
  v12 = *a2 + a2[1] + a2[2];
  if (v12 > 0.0)
  {
    v6 = log10(v5 * 1.5 / v12) * 10.0;
  }

  a3[3] = v6;
}

void sub_2773EE3FC(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 1;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 2 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 1)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v8 = v7 - v3;
        if (v8 <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v8;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(a1[1], 2 * v6);
    v11 = v4 + 2 * v6;
  }

  a1[1] = v11;
}

void sub_2773EE524(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 60))
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void sub_2773EE658(uint64_t a1, int a2)
{
  bzero(*(a1 + 944), *(a1 + 928) * *(a1 + 760));
  bzero(*(a1 + 968), *(a1 + 936) * *(a1 + 752));
  if (a2)
  {
    bzero(*(a1 + 800), 2 * *(a1 + 760) * *(a1 + 768));
    v4 = *(a1 + 880);
    v5 = 16 * *(a1 + 840) * *(a1 + 848);

    bzero(v4, v5);
  }
}

void *sub_2773EE6F0(void *result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v10 = *(a7 + 400);
  v11 = *(a7 + 408);
  v12 = *(a7 + 416);
  v105 = *(a7 + 424);
  v13 = v105 >> 1;
  if (result <= 2)
  {
    if (a2 <= 3)
    {
      v14 = 3;
    }

    else
    {
      v14 = a2;
    }

    v15 = *(a7 + 524);
    LODWORD(v16) = a2 + a6 + 4;
    if (v16 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v16;
    }

    if (v14 - 3 < v16)
    {
      v17 = v14 - 3;
      v18 = vdupq_n_s64((3 - result) - 1);
      v19 = v10 + 2 * v12 * v17 - 8;
      do
      {
        v20 = 0;
        v21 = *(v10 + 2 * v12 * v17);
        v22 = v19;
        do
        {
          v23 = vdupq_n_s64(v20);
          v24 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D320)));
          if (vuzp1_s8(vuzp1_s16(v24, *v18.i8), *v18.i8).u8[0])
          {
            v22[3] = v21;
          }

          if (vuzp1_s8(vuzp1_s16(v24, *&v18), *&v18).i8[1])
          {
            v22[2] = v21;
          }

          if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D310)))), *&v18).i8[2])
          {
            v22[1] = v21;
            *v22 = v21;
          }

          v25 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D300)));
          if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i32[1])
          {
            *(v22 - 1) = v21;
          }

          if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i8[5])
          {
            *(v22 - 2) = v21;
          }

          if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v23, xmmword_27750D2F0))))).i8[6])
          {
            *(v22 - 3) = v21;
            *(v22 - 4) = v21;
          }

          v20 += 8;
          v22 -= 8;
        }

        while (((10 - result) & 0xFFFFFFF8) != v20);
        ++v17;
        v19 += 2 * v12;
      }

      while (v17 != v16);
    }

    if (a4 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = a4;
    }

    v27 = a4 + a6 + 2;
    if (v27 >= v15)
    {
      v28 = v15;
    }

    else
    {
      v28 = a4 + a6 + 2;
    }

    if (v26 <= v28)
    {
      v29 = (1 - a3) & ~((1 - a3) >> 31);
      v30 = v26 - 1;
      v31 = (v29 + 3) & 0xFFFFFFFC;
      v32 = vdupq_n_s64(v29 - 1);
      v33 = v11 + 4 * v13 * v30 - 8;
      do
      {
        if (a3 <= 0)
        {
          v34 = 0;
          v35 = *(v11 + 4 * v13 * v30);
          v36 = v33;
          do
          {
            v37 = vdupq_n_s64(v34);
            v38 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v37, xmmword_27750D320)));
            if (vuzp1_s16(v38, *v32.i8).u8[0])
            {
              v36[1] = v35;
            }

            if (vuzp1_s16(v38, *&v32).i8[2])
            {
              *v36 = v35;
            }

            if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v37, xmmword_27750D310)))).i32[1])
            {
              *(v36 - 1) = v35;
              *(v36 - 2) = v35;
            }

            v34 += 4;
            v36 -= 4;
          }

          while (v31 != v34);
          v15 = *(a7 + 524);
        }

        ++v30;
        if (v27 >= v15)
        {
          v39 = v15;
        }

        else
        {
          v39 = a4 + a6 + 2;
        }

        v33 += 4 * v13;
      }

      while (v30 < v39);
    }
  }

  v40 = result + a5 + 4;
  v41 = *(a7 + 520);
  if (v40 > v41)
  {
    if (a2 <= 3)
    {
      v42 = 3;
    }

    else
    {
      v42 = a2;
    }

    v43 = *(a7 + 524);
    v44 = a2 + a6 + 4;
    if (v44 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    if (v42 - 3 < v45)
    {
      v46 = v40 - v41;
      v47 = v42 - 3;
      v48 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = vdupq_n_s64(v46 - 1);
      v50 = 2 * v12 * v47 + 2 * v41 + v10 + 8;
      v51 = vdupq_n_s64(8uLL);
      do
      {
        if (v40 != v41)
        {
          v52 = v50;
          v53 = *(v10 + 2 * v41 + 2 * v12 * v47 - 2);
          v54 = v48;
          v55 = xmmword_27750D320;
          v56 = xmmword_27750D310;
          v57 = xmmword_27750D300;
          v58 = xmmword_27750D2F0;
          do
          {
            v59 = vmovn_s64(vcgeq_u64(v49, v55));
            if (vuzp1_s8(vuzp1_s16(v59, *v49.i8), *v49.i8).u8[0])
            {
              *(v52 - 4) = v53;
            }

            if (vuzp1_s8(vuzp1_s16(v59, *&v49), *&v49).i8[1])
            {
              *(v52 - 3) = v53;
            }

            if (vuzp1_s8(vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v56))), *&v49).i8[2])
            {
              *(v52 - 2) = v53;
              *(v52 - 1) = v53;
            }

            v60 = vmovn_s64(vcgeq_u64(v49, v57));
            if (vuzp1_s8(*&v49, vuzp1_s16(v60, *&v49)).i32[1])
            {
              *v52 = v53;
            }

            if (vuzp1_s8(*&v49, vuzp1_s16(v60, *&v49)).i8[5])
            {
              v52[1] = v53;
            }

            if (vuzp1_s8(*&v49, vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v58)))).i8[6])
            {
              v52[2] = v53;
              v52[3] = v53;
            }

            v57 = vaddq_s64(v57, v51);
            v56 = vaddq_s64(v56, v51);
            v55 = vaddq_s64(v55, v51);
            v52 += 8;
            v58 = vaddq_s64(v58, v51);
            v54 -= 8;
          }

          while (v54);
        }

        ++v47;
        v50 += 2 * v12;
      }

      while (v47 != v45);
    }

    if (a4 <= 1)
    {
      v61 = 1;
    }

    else
    {
      v61 = a4;
    }

    v62 = a4 + a6 + 2;
    if (v62 >= v43)
    {
      v63 = v43;
    }

    else
    {
      v63 = a4 + a6 + 2;
    }

    if (v61 <= v63)
    {
      v64 = 2 * v41;
      v65 = v11 + 2 * v64 - 4;
      v66 = a3 + a5 - v41 + 2;
      v67 = v66 & ~(v66 >> 31);
      v68 = v61 - 1;
      v69 = vdupq_n_s64(v67 - 1);
      v70 = (v67 + 3) & 0xFFFFFFFC;
      v71 = 4 * v13 * v68 + 2 * v64 + v11 + 8;
      v72 = vdupq_n_s64(4uLL);
      do
      {
        if (v66 >= 1)
        {
          v73 = *(v65 + 4 * v13 * v68);
          v74 = v71;
          v75 = v70;
          v76 = xmmword_27750D320;
          v77 = xmmword_27750D310;
          do
          {
            v78 = vmovn_s64(vcgeq_u64(v69, v76));
            if (vuzp1_s16(v78, *v69.i8).u8[0])
            {
              *(v74 - 2) = v73;
            }

            if (vuzp1_s16(v78, *&v69).i8[2])
            {
              *(v74 - 1) = v73;
            }

            if (vuzp1_s16(*&v69, vmovn_s64(vcgeq_u64(v69, *&v77))).i32[1])
            {
              *v74 = v73;
              v74[1] = v73;
            }

            v77 = vaddq_s64(v77, v72);
            v76 = vaddq_s64(v76, v72);
            v74 += 4;
            v75 -= 4;
          }

          while (v75);
          v43 = *(a7 + 524);
        }

        ++v68;
        if (v62 >= v43)
        {
          v79 = v43;
        }

        else
        {
          v79 = a4 + a6 + 2;
        }

        v71 += 4 * v13;
      }

      while (v68 < v79);
    }
  }

  v103 = a3;
  v104 = v11;
  v82 = v10 + 2 * result;
  if (a2 <= 2)
  {
    v83 = a2 - 3;
    v84 = (v82 - 6);
    do
    {
      v85 = &v84[-2 * v12];
      result = memcpy(v85, v84, 2 * a5 + 14);
      v84 = v85;
      v86 = __CFADD__(v83++, 1);
    }

    while (!v86);
    if (a4 <= 0)
    {
      v87 = a4 - 1;
      v88 = (v104 + 2 * (2 * v103 - 2));
      do
      {
        v89 = &v88[-2 * v105];
        result = memcpy(v89, v88, 2 * (2 * a5 + 6));
        v88 = v89;
        v86 = __CFADD__(v87++, 1);
      }

      while (!v86);
    }
  }

  v90 = *(a7 + 524);
  if (a2 + a6 + 4 > v90)
  {
    v91 = v90 - 1;
    v92 = a6 + a2 - v90 + 4;
    v93 = 2 * v12 * v91;
    v94 = v82 - 6;
    v95 = v12 * (2 * v91 + 2);
    do
    {
      result = memcpy((v94 + v95), (v94 + v93), 2 * a5 + 14);
      v94 += 2 * v12;
      --v92;
    }

    while (v92);
    v96 = *(a7 + 524);
    if (v96 < a4 + a6 + 2)
    {
      v97 = v96 - 1;
      v98 = 2 * (2 * a5 + 6);
      v99 = a6 + a4 - v96 + 2;
      v100 = 2 * v105 * v97;
      v101 = v104 + 2 * (2 * v103 - 2);
      v102 = v105 * (2 * v97 + 2);
      do
      {
        result = memcpy((v101 + v102), (v101 + v100), v98);
        v101 += 2 * v105;
        --v99;
      }

      while (v99);
    }
  }

  return result;
}

unint64_t sub_2773EEE44(unint64_t result, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v96 = a6;
  v8 = *(a7 + 400);
  v10 = *(a7 + 408);
  v9 = *(a7 + 416);
  v11 = *(a7 + 424);
  v12 = v11;
  v94 = v10;
  v95 = a3;
  if (result <= 2)
  {
    if (a2 <= 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = a2;
    }

    v14 = a2 + a6 + 4;
    LODWORD(v15) = *(a7 + 524);
    if (v14 >= v15)
    {
      v16 = *(a7 + 524);
    }

    else
    {
      v16 = a2 + a6 + 4;
    }

    if (v13 - 3 < v16)
    {
      v89 = a5;
      v91 = a2;
      v17 = result;
      v18 = (3 - result);
      v19 = v13 - 3;
      v20 = v8;
      v21 = (v8 + v9 * (v13 - 3));
      do
      {
        memset(&v21[-v18], *v21, v18);
        ++v19;
        LODWORD(v15) = *(a7 + 524);
        if (v14 >= v15)
        {
          v22 = *(a7 + 524);
        }

        else
        {
          v22 = v14;
        }

        v21 += v9;
      }

      while (v19 < v22);
      v12 = *(a7 + 424);
      a3 = v95;
      a6 = v96;
      a5 = v89;
      a2 = v91;
      result = v17;
      v8 = v20;
    }

    if (a4 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = a4;
    }

    v24 = a4 + a6 + 2;
    if (v24 >= v15)
    {
      v15 = v15;
    }

    else
    {
      v15 = v24;
    }

    if (v23 <= v15)
    {
      v25 = (1 - a3) & ~((1 - a3) >> 31);
      v26 = v23 - 1;
      v27 = (v25 + 7) & 0xFFFFFFF8;
      v28 = vdupq_n_s64(v25 - 1);
      v29 = v10 + 2 * (v12 >> 1) * v26 - 8;
      do
      {
        if (a3 <= 0)
        {
          v30 = 0;
          v31 = *(v10 + 2 * (v12 >> 1) * v26);
          v32 = v29;
          do
          {
            v33 = vdupq_n_s64(v30);
            v34 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v33, xmmword_27750D320)));
            if (vuzp1_s8(vuzp1_s16(v34, *v28.i8), *v28.i8).u8[0])
            {
              v32[3] = v31;
            }

            if (vuzp1_s8(vuzp1_s16(v34, *&v28), *&v28).i8[1])
            {
              v32[2] = v31;
            }

            if (vuzp1_s8(vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v33, xmmword_27750D310)))), *&v28).i8[2])
            {
              v32[1] = v31;
              *v32 = v31;
            }

            v35 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v33, xmmword_27750D300)));
            if (vuzp1_s8(*&v28, vuzp1_s16(v35, *&v28)).i32[1])
            {
              *(v32 - 1) = v31;
            }

            if (vuzp1_s8(*&v28, vuzp1_s16(v35, *&v28)).i8[5])
            {
              *(v32 - 2) = v31;
            }

            if (vuzp1_s8(*&v28, vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v33, xmmword_27750D2F0))))).i8[6])
            {
              *(v32 - 3) = v31;
              *(v32 - 4) = v31;
            }

            v30 += 8;
            v32 -= 8;
          }

          while (v27 != v30);
        }

        ++v26;
        v29 += 2 * (v12 >> 1);
      }

      while (v26 != v15);
    }
  }

  v36 = result + a5 + 4;
  v37 = *(a7 + 520);
  v38 = v36 - v37;
  if (v36 > v37)
  {
    if (a2 <= 3)
    {
      v39 = 3;
    }

    else
    {
      v39 = a2;
    }

    v40 = a2 + a6 + 4;
    LODWORD(v41) = *(a7 + 524);
    if (v40 >= v41)
    {
      v42 = *(a7 + 524);
    }

    else
    {
      v42 = a2 + a6 + 4;
    }

    if (v39 - 3 < v42)
    {
      v90 = result;
      v92 = a2;
      v43 = a5;
      v44 = v38;
      v45 = v39 - 3;
      v46 = v8;
      v47 = (v8 + v37 + v9 * (v39 - 3));
      do
      {
        memset(v47, *(v47 - 1), v44);
        ++v45;
        LODWORD(v41) = *(a7 + 524);
        if (v40 >= v41)
        {
          v48 = *(a7 + 524);
        }

        else
        {
          v48 = v40;
        }

        v47 += v9;
      }

      while (v45 < v48);
      v37 = *(a7 + 520);
      v12 = *(a7 + 424);
      a6 = v96;
      a5 = v43;
      result = v90;
      a2 = v92;
      v8 = v46;
    }

    if (a4 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = a4;
    }

    v50 = a4 + a6 + 2;
    if (v50 >= v41)
    {
      v41 = v41;
    }

    else
    {
      v41 = v50;
    }

    if (v49 <= v41)
    {
      v51 = 2 * v37;
      v52 = v10 + v51 - 2;
      v53 = v12 >> 1;
      v54 = v95 + a5 - v37 + 2;
      v55 = v54 & ~(v54 >> 31);
      v56 = v49 - 1;
      v57 = vdupq_n_s64(v55 - 1);
      v58 = v51 + 2 * v53 * v56 + v10 + 8;
      v59 = vdupq_n_s64(8uLL);
      do
      {
        if (v54 >= 1)
        {
          v60 = *(v52 + 2 * v53 * v56);
          v61 = v58;
          v62 = (v55 + 7) & 0xFFFFFFF8;
          v63 = xmmword_27750D320;
          v64 = xmmword_27750D310;
          v65 = xmmword_27750D300;
          v66 = xmmword_27750D2F0;
          do
          {
            v67 = vmovn_s64(vcgeq_u64(v57, v63));
            if (vuzp1_s8(vuzp1_s16(v67, *v57.i8), *v57.i8).u8[0])
            {
              *(v61 - 4) = v60;
            }

            if (vuzp1_s8(vuzp1_s16(v67, *&v57), *&v57).i8[1])
            {
              *(v61 - 3) = v60;
            }

            if (vuzp1_s8(vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v64))), *&v57).i8[2])
            {
              *(v61 - 2) = v60;
              *(v61 - 1) = v60;
            }

            v68 = vmovn_s64(vcgeq_u64(v57, v65));
            if (vuzp1_s8(*&v57, vuzp1_s16(v68, *&v57)).i32[1])
            {
              *v61 = v60;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(v68, *&v57)).i8[5])
            {
              v61[1] = v60;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v66)))).i8[6])
            {
              v61[2] = v60;
              v61[3] = v60;
            }

            v65 = vaddq_s64(v65, v59);
            v64 = vaddq_s64(v64, v59);
            v63 = vaddq_s64(v63, v59);
            v61 += 8;
            v66 = vaddq_s64(v66, v59);
            v62 -= 8;
          }

          while (v62);
        }

        ++v56;
        v58 += 2 * v53;
      }

      while (v56 != v41);
    }
  }

  v69 = a5;
  v93 = 2 * a5;
  v70 = v8 + result;
  v71 = a2;
  if (a2 <= 2)
  {
    v72 = a5 + 7;
    v73 = a2 - 3;
    v74 = (v70 - 3);
    do
    {
      v75 = &v74[-v9];
      result = memcpy(&v74[-v9], v74, v72);
      v74 = v75;
      v76 = __CFADD__(v73++, 1);
    }

    while (!v76);
    if (a4 <= 0)
    {
      v77 = a4 - 1;
      v78 = (v94 + 2 * v95 - 2);
      do
      {
        v79 = &v78[-v11];
        result = memcpy(&v78[-v11], v78, v93 + 6);
        v78 = v79;
        v76 = __CFADD__(v77++, 1);
      }

      while (!v76);
    }
  }

  v80 = *(a7 + 524);
  if (v71 + v96 + 4 > v80)
  {
    v81 = v9 * (v80 - 1);
    v82 = v69 + 7;
    v83 = v96 + v71 - v80 + 4;
    v84 = v70 - 3;
    do
    {
      result = memcpy((v84 + v9 + v81), (v84 + v81), v82);
      v84 += v9;
      --v83;
    }

    while (v83);
    v85 = *(a7 + 524);
    if (v85 < a4 + v96 + 2)
    {
      v86 = v11 * (v85 - 1);
      v87 = v96 + a4 - v85 + 2;
      v88 = v94 + 2 * v95 - 2;
      do
      {
        result = memcpy((v88 + v11 + v86), (v88 + v86), v93 + 6);
        v88 += v11;
        --v87;
      }

      while (v87);
    }
  }

  return result;
}