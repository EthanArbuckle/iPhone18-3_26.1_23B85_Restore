uint64_t sub_2773D036C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 0x12)
  {
    v3 = 0;
    v4 = 2;
  }

  else
  {
    v3 = 0;
    v4 = 2;
    do
    {
      v5 = *(a2 + v4);
      *(a1 + v3) = v5;
      v6 = vceqzq_s8(v5);
      if (vorrq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0])
      {
        do
        {
          v7 = v4;
          v8 = v3++;
          ++v4;
        }

        while (*(a2 + v7));
        if (v7 + 2 < a3)
        {
          v9 = *(a2 + v4);
          if ((*(a2 + v7 + 2) | (v9 << 8)) == 3)
          {
            *(a1 + v3) = v9;
            v4 = v7 + 3;
            v3 = v8 + 2;
          }
        }
      }

      else
      {
        v4 += 16;
        v3 += 16;
      }
    }

    while (v4 + 15 < a3);
  }

  while (v4 < a3)
  {
    v10 = v4 + 2;
    v11 = a2 + v4;
    v12 = *(a2 + v4);
    if (v4 + 2 < a3 && ((v12 << 16) | (*(v11 + 1) << 8) | *(v11 + 2)) == 3)
    {
      v13 = (a1 + v3);
      *v13 = v12;
      v3 += 2;
      v13[1] = *(v11 + 1);
      v4 = v10;
    }

    else
    {
      *(a1 + v3++) = v12;
    }

    ++v4;
  }

  return v3;
}

uint64_t sub_2773D046C(uint64_t a1)
{
  if (*(a1 + 531))
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  v2 = *(a1 + 524);
  if (v2 < 1)
  {
    v3 = 0;
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v3 = 0;
  v4 = 0;
  v5 = (*(a1 + 520) >> v1 >> 2);
  v6 = *(a1 + 400) + 16;
  do
  {
    v7 = 0uLL;
    if (v5 >= 1)
    {
      v8 = v6;
      v9 = (*(a1 + 520) >> v1 >> 2);
      v10 = 0uLL;
      do
      {
        v7 = veorq_s8(v8[-1], v7);
        v10 = veorq_s8(*v8, v10);
        v8 += 2;
        --v9;
      }

      while (v9);
      v7 = veorq_s8(v10, v7);
    }

    v3 ^= *&veor_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
    ++v4;
    v6 += 8 * (*(a1 + 416) >> v1);
  }

  while (v4 != v2);
  if (v2 == 1)
  {
    goto LABEL_20;
  }

  v11 = 0;
  v12 = *(a1 + 424) >> v1;
  v13 = v2 >> 1;
  v14 = *(a1 + 408) + 16;
  v15 = 8 * v12;
  do
  {
    v16 = 0uLL;
    if (v5 >= 1)
    {
      v17 = v14;
      v18 = v5;
      v19 = 0uLL;
      do
      {
        v16 = veorq_s8(v17[-1], v16);
        v19 = veorq_s8(*v17, v19);
        v17 += 2;
        --v18;
      }

      while (v18);
      v16 = veorq_s8(v19, v16);
    }

    ++v11;
    v14 += v15;
  }

  while (v11 != v13);
  v20 = *&veor_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) ^ v3;
LABEL_21:
  v21 = ((v3 ^ HIDWORD(v3)) >> 16) ^ (v3 ^ WORD2(v3));
  return (((v20 ^ HIDWORD(v20)) >> 16) ^ (v20 ^ WORD2(v20)) ^ ((((v20 ^ HIDWORD(v20)) >> 16) ^ (v20 ^ WORD2(v20))) << 8)) & 0xFF00 | (v21 ^ (v21 >> 8));
}

uint8x16_t *sub_2773D05C8(uint8x16_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 2;
  v10 = a7 + 1;
  do
  {
    v11 = _X8[-2];
    v12 = _X8[-1];
    v13 = *_X8;
    v14 = _X8[1];
    __asm { PRFM            #0, [X8,#0x20] }

    *a5++ = v14.i8[15];
    _X8[-2] = vsqaddq_u8(v11, vqtbl2q_s8(*&v7, vshrq_n_u8(v11, 3uLL)));
    _X8[-1] = vsqaddq_u8(v12, vqtbl2q_s8(*&v7, vshrq_n_u8(v12, 3uLL)));
    *_X8 = vsqaddq_u8(v13, vqtbl2q_s8(*&v7, vshrq_n_u8(v13, 3uLL)));
    _X8[1] = vsqaddq_u8(v14, vqtbl2q_s8(*&v7, vshrq_n_u8(v14, 3uLL)));
    _X8 = (_X8 + a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D0630(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int8 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1F3C(result, a2, a3, a4, a5, _X5, 64, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u8[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].u8[15];
    _X5 = result;
    result = (result + a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D1F0);
  v13 = *_X5;
  v12 = _X5[1];
  v14 = _X5[2];
  v15 = _X5[3];
  i8 = _X5[4].i8;
  __asm { PRFM            #0, [X5,#0x40] }

  v22 = *result;
  v23 = result[1];
  v24 = result[2];
  v25 = result[3];
  v26 = result[4].i8;
  __asm { PRFM            #0, [X0,#0x40] }

  v28 = vld1q_dup_s8(i8);
  *a5 = v25.u8[15];
  v29 = (a5 + 1);
  v30 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v31 = vceqzq_s8(v11);
  v32 = vceqzq_s8(v10);
  v33.i64[0] = 0x202020202020202;
  v33.i64[1] = 0x202020202020202;
  v34.i64[0] = 0x303030303030303;
  v34.i64[1] = 0x303030303030303;
  v35 = v29;
  do
  {
    v36 = vextq_s8(v14, v15, 1uLL);
    v37 = v25;
    v38 = v24;
    v39 = v23;
    v40 = vextq_s8(v13, v12, 1uLL);
    v13 = v22;
    _X11 = &v26[a2];
    v22 = *&v26[a2 - 64];
    v23 = *&v26[a2 - 48];
    v24 = *&v26[a2 - 32];
    v25 = *&v26[a2 - 16];
    __asm { PRFM            #0, [X11] }

    v43 = vld1q_dup_s8(v35++);
    *v29 = v25.i8[15];
    v44 = vextq_s8(v15, v28, 1uLL);
    v45 = vextq_s8(v12, v14, 1uLL);
    v46 = vextq_s8(v43, v22, 0xFuLL);
    v47 = vextq_s8(v22, v23, 0xFuLL);
    v48 = vextq_s8(v23, v24, 0xFuLL);
    v49 = vextq_s8(v24, v25, 0xFuLL);
    v50 = vsqaddq_u8(v13, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v13, v40), v34, v33), vcgtq_u8(v40, v13)), vcgtq_u8(v13, v46)), vcgtq_u8(v46, v13))));
    v51 = vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v39, v45), v34, v33), vcgtq_u8(v45, v39)), vcgtq_u8(v39, v47)), vcgtq_u8(v47, v39)));
    v12 = v39;
    v52 = vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v38, v36), v34, v33), vcgtq_u8(v36, v38)), vcgtq_u8(v38, v48)), vcgtq_u8(v48, v38)));
    v14 = v38;
    v53 = vbslq_s8(v31, vsqaddq_u8(v37, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v37, v44), v34, v33), vcgtq_u8(v44, v37)), vcgtq_u8(v37, v49)), vcgtq_u8(v49, v37)))), v37);
    *(v26 - 4) = vbslq_s8(v32, v50, v13);
    *(v26 - 3) = vsqaddq_u8(v39, v51);
    v28 = vld1q_dup_s8(v26);
    --v30;
    *(v26 - 2) = vsqaddq_u8(v38, v52);
    *(v26 - 1) = v53;
    v26 += a2;
    v29 = v35;
    v15 = v37;
  }

  while (v30 > 1);
  return result;
}

int8x16_t *sub_2773D083C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, char *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B2398(result->i8, a2, a3, a4, a5, _X5, 0x40u, a7);
  }

  v8 = *a3;
  if ((a4 & 4) != 0)
  {
    v11 = &_X5[-1].i8[15];
    v10 = vld1q_dup_s8(v11);
  }

  else
  {
    v9 = a5;
    v10 = vld1q_dup_s8(v9++);
    *a5 = result[3].i8[15];
    _X5 = result;
    result = (result + a2);
    v7 = a7 - 1;
    a5 = v9;
  }

  v12 = (__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v12] = result[3].i8[v12 * a2 + 15];
  v13 = vdupq_n_s8(~a4);
  v14 = vandq_s8(v13, xmmword_27750D1E0);
  v15 = vandq_s8(v13, xmmword_27750D1F0);
  v16 = *_X5;
  v17 = _X5[1];
  v19 = _X5[2];
  v18 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v25 = *result;
  v26 = result[1];
  v27 = result + 2;
  v28 = result[2];
  v29 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v31 = v12 + 1;
  v32 = vceqzq_s8(v15);
  v33 = vceqzq_s8(v14);
  v34.i64[0] = 0x202020202020202;
  v34.i64[1] = 0x202020202020202;
  v35.i64[0] = 0x303030303030303;
  v35.i64[1] = 0x303030303030303;
  v36 = a5;
  do
  {
    v37 = vextq_s8(v19, v18, 0xFuLL);
    v18 = v29;
    v38 = v28;
    v39 = v26;
    v40 = vextq_s8(v10, v16, 0xFuLL);
    v41 = vextq_s8(v16, v17, 0xFuLL);
    v16 = v25;
    _X12 = &v27->i8[a2];
    v25 = *(&v27[-2] + a2);
    v26 = *(&v27[-1] + a2);
    v28 = *(v27 + a2);
    v29 = *(&v27[1] + a2);
    __asm { PRFM            #0, [X12,#0x20] }

    v10.i32[0] = v27[-2].u8[a2 + ((32 * a4) & 0x40)];
    v44 = vextq_s8(v17, v19, 0xFuLL);
    v45 = vextq_s8(v25, v26, 1uLL);
    v46 = vextq_s8(v26, v28, 1uLL);
    v47 = vextq_s8(v28, v29, 1uLL);
    v48 = vextq_s8(v29, v10, 1uLL);
    v49 = vsqaddq_u8(v16, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v16, v40), v35, v34), vcgtq_u8(v40, v16)), vcgtq_u8(v16, v45)), vcgtq_u8(v45, v16))));
    v17 = v39;
    v50 = vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v38, v44), v35, v34), vcgtq_u8(v44, v38)), vcgtq_u8(v38, v47)), vcgtq_u8(v47, v38)));
    v19 = v38;
    v27[-2] = vbslq_s8(v33, v49, v16);
    v27[-1] = vsqaddq_u8(v39, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v39, v41), v35, v34), vcgtq_u8(v41, v39)), vcgtq_u8(v39, v46)), vcgtq_u8(v46, v39))));
    *v27 = vsqaddq_u8(v38, v50);
    v27[1] = vbslq_s8(v32, vsqaddq_u8(v18, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v18, v37), v35, v34), vcgtq_u8(v37, v18)), vcgtq_u8(v18, v48)), vcgtq_u8(v48, v18)))), v18);
    v10 = vld1q_dup_s8(v36++);
    --v31;
    v27 = (v27 + a2);
    *a5 = v18.i8[15];
    a5 = v36;
  }

  while (v31 > 1);
  return result;
}

uint8x16_t *sub_2773D0A64(uint8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _BYTE *a5, uint8x16_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i8[15];
    _X5 = result;
    result = (result + a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[3].i8[v8 * a2 + 15];
  v10 = *_X5;
  v9 = _X5[1];
  v11 = _X5[2];
  v12 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v18 = *result;
  v19 = result[1];
  v20 = result[2];
  v21 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v23 = v8 + 1;
  v24.i64[0] = 0x202020202020202;
  v24.i64[1] = 0x202020202020202;
  v25.i64[0] = 0x303030303030303;
  v25.i64[1] = 0x303030303030303;
  do
  {
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    _X9 = result->i64 + a2;
    v18 = *(result + a2);
    v19 = *(&result[1] + a2);
    v20 = *(&result[2] + a2);
    v21 = *(&result[3] + a2);
    __asm { PRFM            #0, [X9,#0x40] }

    *a5++ = v29.i8[15];
    v32 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v26, v10), v25, v24), vcgtq_u8(v10, v26)), vcgtq_u8(v26, v18)), vcgtq_u8(v18, v26)));
    v10 = v26;
    v33 = vsqaddq_u8(v26, v32);
    v34 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v27, v9), v25, v24), vcgtq_u8(v9, v27)), vcgtq_u8(v27, v19)), vcgtq_u8(v19, v27)));
    v9 = v27;
    v35 = vsqaddq_u8(v27, v34);
    v36 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v28, v11), v25, v24), vcgtq_u8(v11, v28)), vcgtq_u8(v28, v20)), vcgtq_u8(v20, v28)));
    v11 = v28;
    v37 = vsqaddq_u8(v28, v36);
    v38 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v29, v12), v25, v24), vcgtq_u8(v12, v29)), vcgtq_u8(v29, v21)), vcgtq_u8(v21, v29)));
    v12 = v29;
    *result = v33;
    result[1] = v35;
    result[2] = v37;
    result[3] = vsqaddq_u8(v29, v38);
    --v23;
    result = (result + a2);
  }

  while (v23 > 1);
  return result;
}

int8x16_t *sub_2773D0BB0(int8x16_t *result, uint64_t a2, int8x16_t *a3, int a4, char *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s8(vandq_s8(v9, xmmword_27750D1F0));
  v13 = vceqzq_s8(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0x303030303030303;
  v15.i64[1] = 0x303030303030303;
  v16 = a5;
  do
  {
    v18 = *result;
    v17 = result[1];
    v19 = result[2];
    v20 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v26 = vld1q_dup_s8(v16++);
    *a5 = v20.i8[15];
    v7.i8[0] = result->i8[(32 * a4) & 0x40];
    v27 = vextq_s8(v26, v18, 0xFuLL);
    v28 = vextq_s8(v18, v17, 0xFuLL);
    v29 = vextq_s8(v17, v19, 0xFuLL);
    v30 = vextq_s8(v19, v20, 0xFuLL);
    v31 = vextq_s8(v18, v17, 1uLL);
    v32 = vextq_s8(v17, v19, 1uLL);
    v33 = vextq_s8(v19, v20, 1uLL);
    v34 = vextq_s8(v20, v7, 1uLL);
    v7 = vsqaddq_u8(v20, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v20, v30), v15, v14), vcgtq_u8(v30, v20)), vcgtq_u8(v20, v34)), vcgtq_u8(v34, v20))));
    *result = vbslq_s8(v13, vsqaddq_u8(v18, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v18, v31), v15, v14), vcgtq_u8(v31, v18)), vcgtq_u8(v18, v27)), vcgtq_u8(v27, v18)))), v18);
    result[1] = vsqaddq_u8(v17, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v28), v15, v14), vcgtq_u8(v28, v17)), vcgtq_u8(v17, v32)), vcgtq_u8(v32, v17))));
    result[2] = vsqaddq_u8(v19, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v19, v29), v15, v14), vcgtq_u8(v29, v19)), vcgtq_u8(v19, v33)), vcgtq_u8(v33, v19))));
    result[3] = vbslq_s8(v12, v7, v20);
    result = (result + a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

uint8x16_t *sub_2773D0CFC(uint8x16_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 1;
  v10 = a7 + 1;
  do
  {
    v11 = _X8[-1];
    v12 = *_X8;
    __asm { PRFM            #0, [X8,#0x10] }

    *a5++ = HIBYTE(*_X8);
    _X8[-1] = vsqaddq_u8(v11, vqtbl2q_s8(*&v7, vshrq_n_u8(v11, 3uLL)));
    *_X8 = vsqaddq_u8(v12, vqtbl2q_s8(*&v7, vshrq_n_u8(v12, 3uLL)));
    _X8 = (_X8 + a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D0D44(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int8 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1F3C(result, a2, a3, a4, a5, _X5, 32, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u8[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].u8[15];
    _X5 = result;
    result = (result + a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D1F0);
  v12 = *_X5;
  v13 = _X5[1];
  i8 = _X5[2].i8;
  __asm { PRFM            #0, [X5,#0x20] }

  v20 = *result;
  v21 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v23 = vld1q_dup_s8(i8);
  *a5 = v21.u8[15];
  v24 = (a5 + 1);
  v25 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v26 = vceqzq_s8(v11);
  v27 = vceqzq_s8(v10);
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v29.i64[0] = 0x303030303030303;
  v29.i64[1] = 0x303030303030303;
  v30 = v24;
  do
  {
    v31 = vextq_s8(v12, v13, 1uLL);
    v32 = vextq_s8(v13, v23, 1uLL);
    v33 = v21;
    v34 = v20;
    _X10 = &result->i8[a2];
    v20 = *(result + a2);
    v21 = *(&result[1] + a2);
    __asm { PRFM            #0, [X10,#0x20] }

    v37 = vld1q_dup_s8(v30++);
    *v24 = v21.i8[15];
    v38 = vextq_s8(v37, v20, 0xFuLL);
    v39 = vextq_s8(v20, v21, 0xFuLL);
    *result = vbslq_s8(v27, vsqaddq_u8(v34, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v34, v31), v29, v28), vcgtq_u8(v31, v34)), vcgtq_u8(v34, v38)), vcgtq_u8(v38, v34)))), v34);
    result[1] = vbslq_s8(v26, vsqaddq_u8(v33, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v33, v32), v29, v28), vcgtq_u8(v32, v33)), vcgtq_u8(v33, v39)), vcgtq_u8(v39, v33)))), v33);
    v40 = result[2].i8;
    --v25;
    v24 = v30;
    v23 = vld1q_dup_s8(v40);
    v12 = v34;
    v13 = v33;
    result = (result + a2);
  }

  while (v25 > 1);
  return result;
}

int8x16_t *sub_2773D0ED4(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, char *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B2398(result->i8, a2, a3, a4, a5, _X5, 0x20u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i8[15];
    v11 = vld1q_dup_s8(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s8(v10++);
    *a5 = result[1].i8[15];
    _X5 = result;
    result = (result + a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[1].i8[v13 * a2 + 15];
  v14 = vdupq_n_s8(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D1F0);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = vceqzq_s8(v16);
  v29 = vceqzq_s8(v15);
  v30.i64[0] = 0x202020202020202;
  v30.i64[1] = 0x202020202020202;
  v31.i64[0] = 0x303030303030303;
  v31.i64[1] = 0x303030303030303;
  v32 = a5;
  do
  {
    v33 = vextq_s8(v17, v18, 0xFuLL);
    v34 = v25;
    v35 = vextq_s8(v11, v17, 0xFuLL);
    v17 = v24;
    _X11 = &result->i8[a2];
    v24 = *(result + a2);
    v25 = *(&result[1] + a2);
    __asm { PRFM            #0, [X11,#0x20] }

    v7.i8[0] = result->i8[a2 + ((16 * a4) & 0x20)];
    v38 = vextq_s8(v24, v25, 1uLL);
    v39 = vextq_s8(v25, v7, 1uLL);
    v40 = vcgtq_u8(v34, v39);
    v7 = vcgtq_u8(v39, v34);
    *result = vbslq_s8(v29, vsqaddq_u8(v17, vqtbl1q_s8(v9, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v35), v31, v30), vcgtq_u8(v35, v17)), vcgtq_u8(v17, v38)), vcgtq_u8(v38, v17)))), v17);
    result[1] = vbslq_s8(v28, vsqaddq_u8(v34, vqtbl1q_s8(v9, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v34, v33), v31, v30), vcgtq_u8(v33, v34)), v40), v7))), v34);
    v11 = vld1q_dup_s8(v32++);
    --v27;
    *a5 = v34.i8[15];
    v18 = v34;
    a5 = v32;
    result = (result + a2);
  }

  while (v27 > 1);
  return result;
}

uint8x16_t *sub_2773D1070(uint8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _BYTE *a5, uint8x16_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i8[15];
    _X5 = result;
    result = (result + a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[1].i8[v8 * a2 + 15];
  v10 = *_X5;
  v9 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v16 = *result;
  v17 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v19 = v8 + 1;
  v20.i64[0] = 0x202020202020202;
  v20.i64[1] = 0x202020202020202;
  v21.i64[0] = 0x303030303030303;
  v21.i64[1] = 0x303030303030303;
  do
  {
    v22 = v16;
    v23 = v17;
    _X9 = result->i64 + a2;
    v16 = *(result + a2);
    v17 = *(&result[1] + a2);
    __asm { PRFM            #0, [X9,#0x20] }

    *a5++ = v23.i8[15];
    v26 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v22, v10), v21, v20), vcgtq_u8(v10, v22)), vcgtq_u8(v22, v16)), vcgtq_u8(v16, v22)));
    v10 = v22;
    v27 = vsqaddq_u8(v22, v26);
    v28 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v23, v9), v21, v20), vcgtq_u8(v9, v23)), vcgtq_u8(v23, v17)), vcgtq_u8(v17, v23)));
    v9 = v23;
    *result = v27;
    result[1] = vsqaddq_u8(v23, v28);
    --v19;
    result = (result + a2);
  }

  while (v19 > 1);
  return result;
}

int8x16_t *sub_2773D114C(int8x16_t *result, uint64_t a2, int8x16_t *a3, int a4, char *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s8(vandq_s8(v9, xmmword_27750D1F0));
  v13 = vceqzq_s8(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0x303030303030303;
  v15.i64[1] = 0x303030303030303;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v24 = vld1q_dup_s8(v16++);
    *a5 = v18.i8[15];
    v7.i8[0] = result->i8[(16 * a4) & 0x20];
    v25 = vextq_s8(v24, v17, 0xFuLL);
    v26 = vextq_s8(v17, v18, 0xFuLL);
    v27 = vextq_s8(v17, v18, 1uLL);
    v28 = vextq_s8(v18, v7, 1uLL);
    v7 = vsqaddq_u8(v18, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v18, v26), v15, v14), vcgtq_u8(v26, v18)), vcgtq_u8(v18, v28)), vcgtq_u8(v28, v18))));
    *result = vbslq_s8(v13, vsqaddq_u8(v17, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v27), v15, v14), vcgtq_u8(v27, v17)), vcgtq_u8(v17, v25)), vcgtq_u8(v25, v17)))), v17);
    result[1] = vbslq_s8(v12, v7, v18);
    result = (result + a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

uint8x16_t *sub_2773D1230(uint8x16_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  do
  {
    v10 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    *a5++ = HIBYTE(*result);
    *result = vsqaddq_u8(v10, vqtbl2q_s8(*&v7, vshrq_n_u8(v10, 3uLL)));
    result = (result + a2);
    --v9;
  }

  while (v9 > 1);
  return result;
}

unsigned __int8 *sub_2773D1268(unsigned __int8 *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int8 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1F3C(result, a2, a3, a4, a5, _X5, 16, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[15];
    _X5 = result;
    result += a2;
    v7 = a7 - 1;
  }

  v9 = *_X5;
  i8 = _X5[1].i8;
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 16;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s8(i8);
  *a5 = HIBYTE(*result);
  v20 = (a5 + 1);
  v21 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v22 = vceqzq_s8(vandq_s8(vdupq_n_s8(~a4), xmmword_27750D200));
  v23.i64[0] = 0x202020202020202;
  v23.i64[1] = 0x202020202020202;
  v24.i64[0] = 0x303030303030303;
  v24.i64[1] = 0x303030303030303;
  v25 = v20;
  do
  {
    _X11 = &result[a2 + 16];
    v27 = *&result[a2];
    __asm { PRFM            #0, [X11] }

    v29 = vld1q_dup_s8(v25++);
    *v20 = v27.i8[15];
    v30 = vextq_s8(v9, v19, 1uLL);
    v31 = vextq_s8(v29, v27, 0xFuLL);
    *result = vbslq_s8(v22, vsqaddq_u8(v17, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v30), v24, v23), vcgtq_u8(v30, v17)), vcgtq_u8(v17, v31)), vcgtq_u8(v31, v17)))), v17);
    v32 = (result + 16);
    --v21;
    v20 = v25;
    v19 = vld1q_dup_s8(v32);
    v9 = v17;
    v17 = v27;
    result += a2;
  }

  while (v21 > 1);
  return result;
}

char *sub_2773D13B0(char *result, uint64_t a2, int8x16_t *a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B2398(result, a2, a3, a4, a5, a6, 0x10u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 1);
    v11 = vld1q_dup_s8(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s8(v10++);
    *a5 = result[15];
    a6 = result;
    result += a2;
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[v13 * a2 + 15];
  v15 = *a6;
  _X5 = a6 + 16;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X10 = result + 16;
  v23 = *result;
  __asm { PRFM            #0, [X10] }

  v25 = v13 + 1;
  v26 = vceqzq_s8(vandq_s8(vdupq_n_s8(~a4), xmmword_27750D200));
  v27.i64[0] = 0x202020202020202;
  v27.i64[1] = 0x202020202020202;
  v28.i64[0] = 0x303030303030303;
  v28.i64[1] = 0x303030303030303;
  v29 = a5;
  do
  {
    _X12 = &result[a2 + 16];
    v31 = *&result[a2];
    __asm { PRFM            #0, [X12] }

    v7.i8[0] = result[a2 + ((8 * a4) & 0x10)];
    v33 = vextq_s8(v11, v16, 0xFuLL);
    v34 = vextq_s8(v31, v7, 1uLL);
    v7 = vbslq_s8(vcgtq_u8(v23, v33), v28, v27);
    *result = vbslq_s8(v26, vsqaddq_u8(v23, vqtbl1q_s8(v9, vaddq_s8(vsubq_s8(vaddq_s8(v7, vcgtq_u8(v33, v23)), vcgtq_u8(v23, v34)), vcgtq_u8(v34, v23)))), v23);
    v11 = vld1q_dup_s8(v29++);
    --v25;
    v16 = v23;
    *a5 = v23.i8[15];
    v23 = v31;
    a5 = v29;
    result += a2;
  }

  while (v25 > 1);
  return result;
}

uint8x16_t *sub_2773D1508(uint8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _BYTE *a5, uint8x16_t *a6, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i8[15];
    a6 = result;
    result = (result + a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result->i8[v8 * a2 + 15];
  v10 = *a6;
  _X5 = a6 + 1;
  v11 = v10;
  __asm { PRFM            #0, [X5] }

  _X9 = result + 1;
  v18 = *result;
  __asm { PRFM            #0, [X9] }

  v20 = v8 + 1;
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22.i64[0] = 0x303030303030303;
  v22.i64[1] = 0x303030303030303;
  do
  {
    _X10 = result[1].i64 + a2;
    v24 = *(result + a2);
    __asm { PRFM            #0, [X10] }

    *a5++ = v18.i8[15];
    v26 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v18, v11), v22, v21), vcgtq_u8(v11, v18)), vcgtq_u8(v18, v24)), vcgtq_u8(v24, v18)));
    v11 = v18;
    *result = vsqaddq_u8(v18, v26);
    --v20;
    v18 = v24;
    result = (result + a2);
  }

  while (v20 > 1);
  return result;
}

int8x16_t *sub_2773D15BC(int8x16_t *result, uint64_t a2, int8x16_t *a3, int a4, char *a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, uint64_t a13, int a14)
{
  v14 = *a3;
  v15 = a14 + 1;
  v16 = vceqzq_s8(vandq_s8(vdupq_n_s8(~a4), xmmword_27750D200));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v18.i64[0] = 0x303030303030303;
  v18.i64[1] = 0x303030303030303;
  v19 = a5;
  do
  {
    v20 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v26 = vld1q_dup_s8(v19++);
    v27 = vextq_s8(v26, *result, 0xFuLL);
    *a5 = HIBYTE(*result);
    a12.i8[0] = result->i8[(8 * a4) & 0x10];
    v28 = vextq_s8(v20, a12, 1uLL);
    a12 = vsqaddq_u8(v20, vqtbl1q_s8(v14, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v20, v27), v18, v17), vcgtq_u8(v27, v20)), vcgtq_u8(v20, v28)), vcgtq_u8(v28, v20))));
    *result = vbslq_s8(v16, a12, v20);
    result = (result + a2);
    --v15;
    a5 = v19;
  }

  while (v15 > 1);
  return result;
}

uint8x8_t *sub_2773D1658(uint8x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  do
  {
    v10 = *result;
    __asm { PRFM            #0, [X0,#8] }

    *a5++ = HIBYTE(*result);
    *result = vsqadd_u8(v10, vqtbl2_s8(*&v7, vshr_n_u8(v10, 3uLL)));
    result = (result + a2);
    --v9;
  }

  while (v9 > 1);
  return result;
}

unsigned __int8 *sub_2773D1690(unsigned __int8 *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int8 *a5, int8x8_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1F3C(result, a2, a3, a4, a5, _X5, 8, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[7];
    _X5 = result;
    result += a2;
    v7 = a7 - 1;
  }

  v9 = *_X5;
  v10 = &_X5[1];
  __asm { PRFM            #0, [X5,#8] }

  _X10 = result + 8;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s8(v10).u64[0];
  *a5 = HIBYTE(*result);
  v20 = (a5 + 1);
  v21 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v22 = vceqz_s8(vand_s8(vdup_n_s8(~a4), 0x200000000000001));
  v23 = v20;
  do
  {
    _X11 = &result[a2 + 8];
    v25 = *&result[a2];
    __asm { PRFM            #0, [X11] }

    v27 = vld1_dup_s8(v23++);
    *v20 = v25.i8[7];
    v28 = vext_s8(v9, v19, 1uLL);
    v29 = vext_s8(v27, v25, 7uLL);
    *result = vbsl_s8(v22, vsqadd_u8(v17, vqtbl1_s8(v8, vadd_s8(vsub_s8(vadd_s8(vbsl_s8(vcgt_u8(v17, v28), 0x303030303030303, 0x202020202020202), vcgt_u8(v28, v17)), vcgt_u8(v17, v29)), vcgt_u8(v29, v17)))), v17);
    v30 = (result + 8);
    --v21;
    v20 = v23;
    v19 = vld1q_dup_s8(v30).u64[0];
    v9 = v17;
    v17 = v25;
    result += a2;
  }

  while (v21 > 1);
  return result;
}

char *sub_2773D17D8(char *result, uint64_t a2, int8x16_t *a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B2398(result, a2, a3, a4, a5, a6, 8u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 1);
    v11 = vld1q_dup_s8(v12).u64[0];
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s8(v10++).u64[0];
    *a5 = result[7];
    a6 = result;
    result += a2;
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[v13 * a2 + 7];
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X10 = result + 8;
  v23 = *result;
  __asm { PRFM            #0, [X10] }

  v25 = v13 + 1;
  v26 = vceqz_s8(vand_s8(vdup_n_s8(~a4), 0x200000000000001));
  v27 = a5;
  do
  {
    _X12 = &result[a2 + 8];
    v29 = *&result[a2];
    __asm { PRFM            #0, [X12] }

    v7.i8[0] = result[a2 + ((4 * a4) & 8)];
    v31 = vext_s8(v11, v16, 7uLL);
    v32 = vext_s8(v29, v7, 1uLL);
    v7 = vbsl_s8(vcgt_u8(v23, v31), 0x303030303030303, 0x202020202020202);
    *result = vbsl_s8(v26, vsqadd_u8(v23, vqtbl1_s8(v9, vadd_s8(vsub_s8(vadd_s8(v7, vcgt_u8(v31, v23)), vcgt_u8(v23, v32)), vcgt_u8(v32, v23)))), v23);
    v11 = vld1q_dup_s8(v27++).u64[0];
    --v25;
    v16 = v23;
    *a5 = v23.i8[7];
    v23 = v29;
    a5 = v27;
    result += a2;
  }

  while (v25 > 1);
  return result;
}

uint8x8_t *sub_2773D1930(uint8x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _BYTE *a5, uint8x8_t *a6, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i8[7];
    a6 = result;
    result = (result + a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result->i8[v8 * a2 + 7];
  v10 = *a6;
  _X5 = a6 + 1;
  v11 = v10;
  __asm { PRFM            #0, [X5] }

  _X9 = result + 1;
  v18 = *result;
  __asm { PRFM            #0, [X9] }

  v20 = v8 + 1;
  do
  {
    _X10 = &result[1] + a2;
    v22 = *(result + a2);
    __asm { PRFM            #0, [X10] }

    *a5++ = v18.i8[7];
    v24 = vqtbl1_s8(v7, vadd_s8(vsub_s8(vadd_s8(vbsl_s8(vcgt_u8(v18, v11), 0x303030303030303, 0x202020202020202), vcgt_u8(v11, v18)), vcgt_u8(v18, v22)), vcgt_u8(v22, v18)));
    v11 = v18;
    *result = vsqadd_u8(v18, v24);
    --v20;
    v18 = v22;
    result = (result + a2);
  }

  while (v20 > 1);
  return result;
}

int8x8_t *sub_2773D19E4(int8x8_t *result, uint64_t a2, int8x16_t *a3, int a4, char *a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12, uint64_t a13, int a14)
{
  v14 = *a3;
  v15 = a14 + 1;
  v16 = vceqz_s8(vand_s8(vdup_n_s8(~a4), 0x200000000000001));
  v17 = a5;
  do
  {
    v18 = *result;
    __asm { PRFM            #0, [X0,#8] }

    v24 = vld1_dup_s8(v17++);
    v25 = vext_s8(v24, *result, 7uLL);
    *a5 = HIBYTE(*result);
    a12.i8[0] = result->i8[(4 * a4) & 8];
    v26 = vext_s8(v18, a12, 1uLL);
    a12 = vsqadd_u8(v18, vqtbl1_s8(v14, vadd_s8(vsub_s8(vadd_s8(vbsl_s8(vcgt_u8(v18, v25), 0x303030303030303, 0x202020202020202), vcgt_u8(v25, v18)), vcgt_u8(v18, v26)), vcgt_u8(v26, v18))));
    *result = vbsl_s8(v16, a12, v18);
    result = (result + a2);
    --v15;
    a5 = v17;
  }

  while (v15 > 1);
  return result;
}

char *sub_2773D1A80(char *a1, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  sub_2773D1AE8(a1, a2, a3, a4, a5, a6, a7);

  return sub_2773D1AE8(a1 + 64, a2, a3, v12, a5, v13, a7);
}

char *sub_2773D1AE8(char *result, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  do
  {
    v13 = result;
    v23 = vld2q_s8(v13);
    _X10 = &v13[a2];
    v15 = result + 32;
    v24 = vld2q_s8(v15);
    __asm { PRFM            #0, [X0,#0x40] }

    v21 = _X10;
    v25 = vld2q_s8(v21);
    v21 += 32;
    v26 = vld2q_s8(v21);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5 = v24.val[0].i8[15];
    a5[1] = v24.val[1].i8[15];
    a5[2] = v26.val[0].i8[15];
    a5[3] = v26.val[1].i8[15];
    v23.val[0] = vsqaddq_u8(v23.val[0], vqtbl2q_s8(*&v7, vshrq_n_u8(v23.val[0], 3uLL)));
    v23.val[1] = vsqaddq_u8(v23.val[1], vqtbl2q_s8(*&v9, vshrq_n_u8(v23.val[1], 3uLL)));
    v24.val[0] = vsqaddq_u8(v24.val[0], vqtbl2q_s8(*&v7, vshrq_n_u8(v24.val[0], 3uLL)));
    v24.val[1] = vsqaddq_u8(v24.val[1], vqtbl2q_s8(*&v9, vshrq_n_u8(v24.val[1], 3uLL)));
    v25.val[0] = vsqaddq_u8(v25.val[0], vqtbl2q_s8(*&v7, vshrq_n_u8(v25.val[0], 3uLL)));
    v25.val[1] = vsqaddq_u8(v25.val[1], vqtbl2q_s8(*&v9, vshrq_n_u8(v25.val[1], 3uLL)));
    vst2q_s8(result, v23);
    v11 = 2 * a2;
    result += v11;
    vst2q_s8(v15, v24);
    v26.val[0] = vsqaddq_u8(v26.val[0], vqtbl2q_s8(*&v7, vshrq_n_u8(v26.val[0], 3uLL)));
    vst2q_s8(_X10, v25);
    v26.val[1] = vsqaddq_u8(v26.val[1], vqtbl2q_s8(*&v9, vshrq_n_u8(v26.val[1], 3uLL)));
    vst2q_s8(v21, v26);
    v12 -= 2;
    a5 += 4;
  }

  while (v12 > 2);
  return result;
}

uint64_t sub_2773D1BBC(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _BYTE *a5, int8x16_t *a6, int a7)
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
  sub_2773D1C7C(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773D1C7C(a1 + 64, a2, a3, v16, a5, a6 + 4, a7);
}

uint64_t sub_2773D1C7C(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _BYTE *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1A64(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + a7 * a2 - 2);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 62);
    a5 += 2;
    _X5 = result;
    result += a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D210);
  v11 = vandq_s8(v9, xmmword_27750D220);
  v13 = *_X5;
  v12 = _X5[1];
  v14 = _X5[2];
  v15 = _X5[3];
  i16 = _X5[4].i16;
  __asm { PRFM            #0, [X5,#0x40] }

  v22 = *result;
  v23 = *(result + 16);
  v24 = *(result + 32);
  v25 = *(result + 48);
  v26 = (result + 64);
  __asm { PRFM            #0, [X0,#0x40] }

  v28 = vld1q_dup_s16(i16);
  *a5 = v25.i16[7];
  v29 = (a5 + 2);
  v30 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v31 = vceqzq_s8(v11);
  v32 = vceqzq_s8(v10);
  v33 = v29;
  do
  {
    v34 = vextq_s8(v14, v15, 2uLL);
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v38 = vextq_s8(v13, v12, 2uLL);
    v13 = v22;
    _X11 = v26 + a2;
    v22 = *(v26 + a2 - 64);
    v23 = *(v26 + a2 - 48);
    v24 = *(v26 + a2 - 32);
    v25 = *(v26 + a2 - 16);
    __asm { PRFM            #0, [X11] }

    v41 = vld1q_dup_s16(v33++);
    *v29 = v25.i16[7];
    v42 = vextq_s8(v15, v28, 2uLL);
    v43 = vextq_s8(v12, v14, 2uLL);
    v44 = vextq_s8(v41, v22, 0xEuLL);
    v45 = vextq_s8(v22, v23, 0xEuLL);
    v46 = vextq_s8(v23, v24, 0xEuLL);
    v47 = vextq_s8(v24, v25, 0xEuLL);
    v48 = vsqaddq_u8(v13, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v13, v38), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v38, v13)), vcgtq_u8(v13, v44)), vcgtq_u8(v44, v13))));
    v49 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v37, v43), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v43, v37)), vcgtq_u8(v37, v45)), vcgtq_u8(v45, v37)));
    v12 = v37;
    v50 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v36, v34), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v34, v36)), vcgtq_u8(v36, v46)), vcgtq_u8(v46, v36)));
    v14 = v36;
    v51 = vbslq_s8(v31, vsqaddq_u8(v35, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v35, v42), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v42, v35)), vcgtq_u8(v35, v47)), vcgtq_u8(v47, v35)))), v35);
    *(v26 - 4) = vbslq_s8(v32, v48, v13);
    *(v26 - 3) = vsqaddq_u8(v37, v49);
    v28 = vld1q_dup_s16(v26);
    --v30;
    *(v26 - 2) = vsqaddq_u8(v36, v50);
    *(v26 - 1) = v51;
    v26 = (v26 + a2);
    v29 = v33;
    v15 = v35;
  }

  while (v30 > 1);
  return result;
}

uint64_t sub_2773D1E90(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, char *a5, int8x16_t *a6, int a7)
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
  sub_2773D1F50(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773D1F50(a1 + 64, a2, a3, v16, a5, a6 + 4, a7);
}

uint64_t sub_2773D1F50(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, char *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B1AF0(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) != 0)
  {
    v11 = &_X5[-1].i16[7];
    v10 = vld1q_dup_s16(v11);
  }

  else
  {
    v9 = a5;
    v10 = vld1q_dup_s16(v9++);
    *a5 = *(result + 62);
    _X5 = result;
    result += a2;
    --a7;
    a5 = v9;
  }

  v7.i64[1] = v8;
  v12 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v12] = *(result + v12 * a2 + 62);
  v13 = vdupq_n_s8(~a4);
  v14 = vandq_s8(v13, xmmword_27750D210);
  v15 = vandq_s8(v13, xmmword_27750D220);
  v17 = *_X5;
  v16 = _X5[1];
  v19 = _X5[2];
  v18 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v25 = result + 32;
  v26 = *(result + 32);
  v27 = *result;
  v28 = *(result + 16);
  v29 = *(result + 48);
  __asm { PRFM            #0, [X0,#0x40] }

  v31 = v12 + 1;
  v32 = vceqzq_s8(v15);
  v33 = vceqzq_s8(v14);
  v34 = a5;
  do
  {
    v35 = vextq_s8(v19, v18, 0xEuLL);
    v18 = v29;
    v36 = v26;
    v37 = v28;
    v38 = vextq_s8(v10, v17, 0xEuLL);
    v39 = vextq_s8(v17, v16, 0xEuLL);
    v17 = v27;
    _X12 = v25 + a2;
    v27 = *(v25 + a2 - 32);
    v28 = *(v25 + a2 - 16);
    v26 = *(v25 + a2);
    v29 = *(v25 + a2 + 16);
    __asm { PRFM            #0, [X12,#0x20] }

    v10.i32[0] = *(v25 + a2 + ((32 * a4) & 0x40) - 32);
    v42 = vextq_s8(v16, v19, 0xEuLL);
    v43 = vextq_s8(v27, v28, 2uLL);
    v44 = vextq_s8(v28, v26, 2uLL);
    v45 = vextq_s8(v26, v29, 2uLL);
    v46 = vextq_s8(v29, v10, 2uLL);
    v47 = vsqaddq_u8(v17, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v38), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v38, v17)), vcgtq_u8(v17, v43)), vcgtq_u8(v43, v17))));
    v16 = v37;
    v48 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v36, v42), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v42, v36)), vcgtq_u8(v36, v45)), vcgtq_u8(v45, v36)));
    v19 = v36;
    *(v25 - 32) = vbslq_s8(v33, v47, v17);
    *(v25 - 16) = vsqaddq_u8(v37, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v37, v39), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v39, v37)), vcgtq_u8(v37, v44)), vcgtq_u8(v44, v37))));
    *v25 = vsqaddq_u8(v36, v48);
    *(v25 + 16) = vbslq_s8(v32, vsqaddq_u8(v18, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v18, v35), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v35, v18)), vcgtq_u8(v18, v46)), vcgtq_u8(v46, v18)))), v18);
    v10 = vld1q_dup_s16(v34++);
    --v31;
    v25 += a2;
    *a5 = v18.i16[7];
    a5 = v34;
  }

  while (v31 > 1);
  return result;
}

uint8x16_t *sub_2773D2180(uint8x16_t *a1, uint64_t a2, uint64_t *a3, int a4, _WORD *a5, uint8x16_t *a6, unsigned int a7)
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
  sub_2773D2240(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773D2240(a1 + 4, a2, a3, v16, a5, a6 + 4, a7);
}

uint8x16_t *sub_2773D2240(uint8x16_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, uint8x16_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i16[7];
    _X5 = result;
    result = (result + a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[3].i16[7] + v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  v12 = _X5[2];
  v13 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v19 = *result;
  v20 = result[1];
  v21 = result[2];
  v22 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v24 = v9 + 1;
  do
  {
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    _X9 = result->i64 + a2;
    v19 = *(result + a2);
    v20 = *(&result[1] + a2);
    v21 = *(&result[2] + a2);
    v22 = *(&result[3] + a2);
    __asm { PRFM            #0, [X9,#0x40] }

    *a5++ = v28.i16[7];
    v31 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v25, v11), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v11, v25)), vcgtq_u8(v25, v19)), vcgtq_u8(v19, v25)));
    v11 = v25;
    v32 = vsqaddq_u8(v25, v31);
    v33 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v26, v10), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v10, v26)), vcgtq_u8(v26, v20)), vcgtq_u8(v20, v26)));
    v10 = v26;
    v34 = vsqaddq_u8(v26, v33);
    v35 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v27, v12), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v12, v27)), vcgtq_u8(v27, v21)), vcgtq_u8(v21, v27)));
    v12 = v27;
    v36 = vsqaddq_u8(v27, v35);
    v37 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v28, v13), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v13, v28)), vcgtq_u8(v28, v22)), vcgtq_u8(v22, v28)));
    v13 = v28;
    *result = v32;
    result[1] = v34;
    result[2] = v36;
    result[3] = vsqaddq_u8(v28, v37);
    --v24;
    result = (result + a2);
  }

  while (v24 > 1);
  return result;
}

int8x16_t *sub_2773D239C(int8x16_t *a1, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, uint64_t a6, int a7)
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
  sub_2773D244C(a1, a2, a3, v13 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773D244C(a1 + 4, a2, a3, v15, a5, v16, a7);
}

int8x16_t *sub_2773D244C(int8x16_t *result, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D210);
  v11 = a7 + 1;
  v12 = vceqzq_s8(vandq_s8(v9, xmmword_27750D220));
  v13 = vceqzq_s8(v10);
  v14 = a5;
  do
  {
    v16 = *result;
    v15 = result[1];
    v17 = result[2];
    v18 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v24 = vld1q_dup_s16(v14++);
    *a5 = v18.i16[7];
    v7.i16[0] = *(result->i16 + ((32 * a4) & 0x40));
    v25 = vextq_s8(v24, v16, 0xEuLL);
    v26 = vextq_s8(v16, v15, 0xEuLL);
    v27 = vextq_s8(v15, v17, 0xEuLL);
    v28 = vextq_s8(v17, v18, 0xEuLL);
    v29 = vextq_s8(v16, v15, 2uLL);
    v30 = vextq_s8(v15, v17, 2uLL);
    v31 = vextq_s8(v17, v18, 2uLL);
    v32 = vextq_s8(v18, v7, 2uLL);
    v7 = vsqaddq_u8(v18, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v18, v28), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v28, v18)), vcgtq_u8(v18, v32)), vcgtq_u8(v32, v18))));
    *result = vbslq_s8(v13, vsqaddq_u8(v16, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v16, v29), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v29, v16)), vcgtq_u8(v16, v25)), vcgtq_u8(v25, v16)))), v16);
    result[1] = vsqaddq_u8(v15, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v15, v26), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v26, v15)), vcgtq_u8(v15, v30)), vcgtq_u8(v30, v15))));
    result[2] = vsqaddq_u8(v17, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v27), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v27, v17)), vcgtq_u8(v17, v31)), vcgtq_u8(v31, v17))));
    result[3] = vbslq_s8(v12, v7, v18);
    result = (result + a2);
    --v11;
    a5 = v14;
  }

  while (v11 > 1);
  return result;
}

char *sub_2773D25A8(char *result, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  do
  {
    v13 = result;
    v22 = vld2q_s8(v13);
    v14 = &v13[a2];
    __asm { PRFM            #0, [X0,#0x20] }

    _X11 = v14;
    v23 = vld2q_s8(_X11);
    _X11 += 32;
    __asm { PRFM            #0, [X11] }

    *a5 = v22.val[0].i8[15];
    a5[1] = v22.val[1].i8[15];
    a5[2] = v23.val[0].i8[15];
    a5[3] = v23.val[1].i8[15];
    v22.val[0] = vsqaddq_u8(v22.val[0], vqtbl2q_s8(*&v7, vshrq_n_u8(v22.val[0], 3uLL)));
    v22.val[1] = vsqaddq_u8(v22.val[1], vqtbl2q_s8(*&v9, vshrq_n_u8(v22.val[1], 3uLL)));
    v23.val[0] = vsqaddq_u8(v23.val[0], vqtbl2q_s8(*&v7, vshrq_n_u8(v23.val[0], 3uLL)));
    vst2q_s8(result, v22);
    v11 = 2 * a2;
    result += v11;
    v23.val[1] = vsqaddq_u8(v23.val[1], vqtbl2q_s8(*&v9, vshrq_n_u8(v23.val[1], 3uLL)));
    vst2q_s8(v14, v23);
    v12 -= 2;
    a5 += 4;
  }

  while (v12 > 2);
  return result;
}

char *sub_2773D2638(char *result, uint64_t a2, __int128 *a3, uint64_t a4, _BYTE *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a7 + 2;
  do
  {
    v13 = result;
    v22 = vld2_s8(v13);
    v14 = &v13[a2];
    __asm { PRFM            #0, [X0,#0x10] }

    _X11 = v14;
    v23 = vld2_s8(_X11);
    _X11 += 16;
    __asm { PRFM            #0, [X11] }

    *a5 = v22.val[0].i8[7];
    a5[1] = v22.val[1].i8[7];
    a5[2] = v23.val[0].i8[7];
    a5[3] = v23.val[1].i8[7];
    v22.val[0] = vsqadd_u8(v22.val[0], vqtbl2_s8(*&v7, vshr_n_u8(v22.val[0], 3uLL)));
    v22.val[1] = vsqadd_u8(v22.val[1], vqtbl2_s8(*&v9, vshr_n_u8(v22.val[1], 3uLL)));
    v23.val[0] = vsqadd_u8(v23.val[0], vqtbl2_s8(*&v7, vshr_n_u8(v23.val[0], 3uLL)));
    vst2_s8(result, v22);
    v11 = 2 * a2;
    result += v11;
    v23.val[1] = vsqadd_u8(v23.val[1], vqtbl2_s8(*&v9, vshr_n_u8(v23.val[1], 3uLL)));
    vst2_s8(v14, v23);
    v12 -= 2;
    a5 += 4;
  }

  while (v12 > 2);
  return result;
}

uint64_t sub_2773D26C8(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _BYTE *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1B7C(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + a7 * a2 - 2);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 30);
    a5 += 2;
    _X5 = result;
    result += a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D210);
  v11 = vandq_s8(v9, xmmword_27750D220);
  v12 = *_X5;
  v13 = _X5[1];
  i16 = _X5[2].i16;
  __asm { PRFM            #0, [X5,#0x20] }

  v20 = *result;
  v21 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v23 = vld1q_dup_s16(i16);
  *a5 = v21.i16[7];
  v24 = (a5 + 2);
  v25 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v26 = vceqzq_s8(v11);
  v27 = vceqzq_s8(v10);
  v28 = v24;
  do
  {
    v29 = vextq_s8(v12, v13, 2uLL);
    v30 = vextq_s8(v13, v23, 2uLL);
    v31 = v21;
    v32 = v20;
    _X10 = result + a2;
    v20 = *(result + a2);
    v21 = *(result + a2 + 16);
    __asm { PRFM            #0, [X10,#0x20] }

    v35 = vld1q_dup_s16(v28++);
    *v24 = v21.i16[7];
    v36 = vextq_s8(v35, v20, 0xEuLL);
    v37 = vextq_s8(v20, v21, 0xEuLL);
    *result = vbslq_s8(v27, vsqaddq_u8(v32, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v32, v29), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v29, v32)), vcgtq_u8(v32, v36)), vcgtq_u8(v36, v32)))), v32);
    *(result + 16) = vbslq_s8(v26, vsqaddq_u8(v31, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v31, v30), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v30, v31)), vcgtq_u8(v31, v37)), vcgtq_u8(v37, v31)))), v31);
    v38 = (result + 32);
    --v25;
    v24 = v28;
    v23 = vld1q_dup_s16(v38);
    v12 = v32;
    v13 = v31;
    result += a2;
  }

  while (v25 > 1);
  return result;
}

uint64_t sub_2773D2860(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, char *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B1C08(result, a2, a3, a4, a5, _X5, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = *(result + 30);
    _X5 = result;
    result += a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + v13 * a2 + 30);
  v14 = vdupq_n_s8(~a4);
  v15 = vandq_s8(v14, xmmword_27750D210);
  v16 = vandq_s8(v14, xmmword_27750D220);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = *(result + 16);
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = vceqzq_s8(v16);
  v29 = vceqzq_s8(v15);
  v30 = a5;
  do
  {
    v31 = vextq_s8(v17, v18, 0xEuLL);
    v32 = v25;
    v33 = vextq_s8(v11, v17, 0xEuLL);
    v17 = v24;
    _X11 = result + a2;
    v24 = *(result + a2);
    v25 = *(result + a2 + 16);
    __asm { PRFM            #0, [X11,#0x20] }

    v7.i16[0] = *(result + a2 + ((16 * a4) & 0x20));
    v36 = vextq_s8(v24, v25, 2uLL);
    v37 = vextq_s8(v25, v7, 2uLL);
    v38 = vcgtq_u8(v32, v37);
    v7 = vcgtq_u8(v37, v32);
    *result = vbslq_s8(v29, vsqaddq_u8(v17, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v33), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v33, v17)), vcgtq_u8(v17, v36)), vcgtq_u8(v36, v17)))), v17);
    *(result + 16) = vbslq_s8(v28, vsqaddq_u8(v32, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v32, v31), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v31, v32)), v38), v7))), v32);
    v11 = vld1q_dup_s16(v30++);
    --v27;
    *a5 = v32.i16[7];
    v18 = v32;
    a5 = v30;
    result += a2;
  }

  while (v27 > 1);
  return result;
}

uint8x16_t *sub_2773D2A04(uint8x16_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, uint8x16_t *_X5, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i16[7];
    _X5 = result;
    result = (result + a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result[1].i16[7] + v9 * a2);
  v11 = *_X5;
  v10 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v17 = *result;
  v18 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v20 = v9 + 1;
  do
  {
    v21 = v17;
    v22 = v18;
    _X9 = result->i64 + a2;
    v17 = *(result + a2);
    v18 = *(&result[1] + a2);
    __asm { PRFM            #0, [X9,#0x20] }

    *a5++ = v22.i16[7];
    v25 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v21, v11), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v11, v21)), vcgtq_u8(v21, v17)), vcgtq_u8(v17, v21)));
    v11 = v21;
    v26 = vsqaddq_u8(v21, v25);
    v27 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v22, v10), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v10, v22)), vcgtq_u8(v22, v18)), vcgtq_u8(v18, v22)));
    v10 = v22;
    *result = v26;
    result[1] = vsqaddq_u8(v22, v27);
    --v20;
    result = (result + a2);
  }

  while (v20 > 1);
  return result;
}

int8x16_t *sub_2773D2AF0(int8x16_t *result, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, uint64_t a6, int a7)
{
  v8.i64[0] = *a3;
  v8.i64[1] = a3[4];
  v9 = vdupq_n_s8(~a4);
  v10 = vandq_s8(v9, xmmword_27750D210);
  v11 = a7 + 1;
  v12 = vceqzq_s8(vandq_s8(v9, xmmword_27750D220));
  v13 = vceqzq_s8(v10);
  v14 = a5;
  do
  {
    v15 = *result;
    v16 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v22 = vld1q_dup_s16(v14++);
    *a5 = v16.i16[7];
    v7.i16[0] = *(result->i16 + ((16 * a4) & 0x20));
    v23 = vextq_s8(v22, v15, 0xEuLL);
    v24 = vextq_s8(v15, v16, 0xEuLL);
    v25 = vextq_s8(v15, v16, 2uLL);
    v26 = vextq_s8(v16, v7, 2uLL);
    v7 = vsqaddq_u8(v16, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v16, v24), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v24, v16)), vcgtq_u8(v16, v26)), vcgtq_u8(v26, v16))));
    *result = vbslq_s8(v13, vsqaddq_u8(v15, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v15, v25), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v25, v15)), vcgtq_u8(v15, v23)), vcgtq_u8(v23, v15)))), v15);
    result[1] = vbslq_s8(v12, v7, v16);
    result = (result + a2);
    --v11;
    a5 = v14;
  }

  while (v11 > 1);
  return result;
}

uint64_t sub_2773D2BE4(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _BYTE *a5, int8x16_t *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1C94(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + a7 * a2 - 2);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 14);
    a5 += 2;
    _X5 = result;
    result += a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = *_X5;
  i16 = _X5[1].i16;
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 16;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s16(i16);
  *a5 = HIWORD(*result);
  v20 = (a5 + 2);
  v21 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v22 = vceqzq_s8(vandq_s8(vdupq_n_s8(~a4), xmmword_27750D250));
  v23 = v20;
  do
  {
    _X11 = result + a2 + 16;
    v25 = *(result + a2);
    __asm { PRFM            #0, [X11] }

    v27 = vld1q_dup_s16(v23++);
    *v20 = v25.i16[7];
    v28 = vextq_s8(v9, v19, 2uLL);
    v29 = vextq_s8(v27, v25, 0xEuLL);
    *result = vbslq_s8(v22, vsqaddq_u8(v17, vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v17, v28), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v28, v17)), vcgtq_u8(v17, v29)), vcgtq_u8(v29, v17)))), v17);
    v30 = (result + 16);
    --v21;
    v20 = v23;
    v19 = vld1q_dup_s16(v30);
    v9 = v17;
    v17 = v25;
    result += a2;
  }

  while (v21 > 1);
  return result;
}

uint64_t sub_2773D2D34(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B1D20(result, a2, a3, a4, a5, a6, a7);
  }

  v8.i64[0] = *a3;
  v9 = a3[4];
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 2);
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = *(result + 14);
    a6 = result;
    result += a2;
    --a7;
    a5 = v10;
  }

  v8.i64[1] = v9;
  v13 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v13] = *(result + v13 * a2 + 14);
  v15 = *a6;
  _X5 = a6 + 16;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X10 = result + 16;
  v23 = *result;
  __asm { PRFM            #0, [X10] }

  v25 = v13 + 1;
  v26 = vceqzq_s8(vandq_s8(vdupq_n_s8(~a4), xmmword_27750D250));
  v27 = a5;
  do
  {
    _X12 = result + a2 + 16;
    v29 = *(result + a2);
    __asm { PRFM            #0, [X12] }

    v7.i16[0] = *(result + a2 + ((8 * a4) & 0x10));
    v31 = vextq_s8(v11, v16, 0xEuLL);
    v32 = vextq_s8(v29, v7, 2uLL);
    v7 = vbslq_s8(vcgtq_u8(v23, v31), xmmword_27750D240, xmmword_27750D230);
    *result = vbslq_s8(v26, vsqaddq_u8(v23, vqtbl1q_s8(v8, vaddq_s8(vsubq_s8(vaddq_s8(v7, vcgtq_u8(v31, v23)), vcgtq_u8(v23, v32)), vcgtq_u8(v32, v23)))), v23);
    v11 = vld1q_dup_s16(v27++);
    --v25;
    v16 = v23;
    *a5 = v23.i16[7];
    v23 = v29;
    a5 = v27;
    result += a2;
  }

  while (v25 > 1);
  return result;
}

uint8x16_t *sub_2773D2E94(uint8x16_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, uint8x16_t *a6, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i16[7];
    a6 = result;
    result = (result + a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result->i16[7] + v9 * a2);
  v11 = *a6;
  _X5 = a6 + 1;
  v12 = v11;
  __asm { PRFM            #0, [X5] }

  _X9 = result + 1;
  v19 = *result;
  __asm { PRFM            #0, [X9] }

  v21 = v9 + 1;
  do
  {
    _X10 = result[1].i64 + a2;
    v23 = *(result + a2);
    __asm { PRFM            #0, [X10] }

    *a5++ = v19.i16[7];
    v25 = vqtbl1q_s8(v7, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v19, v12), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v12, v19)), vcgtq_u8(v19, v23)), vcgtq_u8(v23, v19)));
    v12 = v19;
    *result = vsqaddq_u8(v19, v25);
    --v21;
    v19 = v23;
    result = (result + a2);
  }

  while (v21 > 1);
  return result;
}

int8x16_t *sub_2773D2F58(int8x16_t *result, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, uint64_t a13, int a14)
{
  v14.i64[0] = *a3;
  v14.i64[1] = a3[4];
  v15 = a14 + 1;
  v16 = vceqzq_s8(vandq_s8(vdupq_n_s8(~a4), xmmword_27750D250));
  v17 = a5;
  do
  {
    v18 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v24 = vld1q_dup_s16(v17++);
    v25 = vextq_s8(v24, *result, 0xEuLL);
    *a5 = HIWORD(*result);
    a12.i16[0] = *(result->i16 + ((8 * a4) & 0x10));
    v26 = vextq_s8(v18, a12, 2uLL);
    a12 = vsqaddq_u8(v18, vqtbl1q_s8(v14, vaddq_s8(vsubq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v18, v25), xmmword_27750D240, xmmword_27750D230), vcgtq_u8(v25, v18)), vcgtq_u8(v18, v26)), vcgtq_u8(v26, v18))));
    *result = vbslq_s8(v16, a12, v18);
    result = (result + a2);
    --v15;
    a5 = v17;
  }

  while (v15 > 1);
  return result;
}

uint64_t sub_2773D3004(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _BYTE *a5, int8x8_t *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B1E24(result, a2, a3, a4, a5, _X5, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 0x40) != 0)
  {
    *&a5[2 * a7] = *(result + a7 * a2 - 2);
  }

  if ((a4 & 4) == 0)
  {
    *a5 = *(result + 6);
    a5 += 2;
    _X5 = result;
    result += a2;
    --a7;
  }

  v7.i64[1] = v8;
  v9 = *_X5;
  v10 = &_X5[1];
  __asm { PRFM            #0, [X5,#8] }

  _X10 = result + 8;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s16(v10).u64[0];
  *a5 = HIWORD(*result);
  v20 = (a5 + 2);
  v21 = ((__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v22 = vceqz_s8(vand_s8(vdup_n_s8(~a4), 0x202000000000101));
  v23 = v20;
  do
  {
    _X11 = result + a2 + 8;
    v25 = *(result + a2);
    __asm { PRFM            #0, [X11] }

    v27 = vld1_dup_s16(v23++);
    *v20 = v25.i16[3];
    v28 = vext_s8(v9, v19, 2uLL);
    v29 = vext_s8(v27, v25, 6uLL);
    *result = vbsl_s8(v22, vsqadd_u8(v17, vqtbl1_s8(v7, vadd_s8(vsub_s8(vadd_s8(vbsl_s8(vcgt_u8(v17, v28), 0xB030B030B030B03, 0xA020A020A020A02), vcgt_u8(v28, v17)), vcgt_u8(v17, v29)), vcgt_u8(v29, v17)))), v17);
    v30 = (result + 8);
    --v21;
    v20 = v23;
    v19 = vld1q_dup_s16(v30).u64[0];
    v9 = v17;
    v17 = v25;
    result += a2;
  }

  while (v21 > 1);
  return result;
}

uint64_t sub_2773D3154(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, char *a5, unsigned __int8 *a6, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B1EB0(result, a2, a3, a4, a5, a6, a7);
  }

  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) != 0)
  {
    v11 = (a6 - 2);
    v10 = vld1q_dup_s16(v11).u64[0];
  }

  else
  {
    v9 = a5;
    v10 = vld1q_dup_s16(v9++).u64[0];
    *a5 = *(result + 6);
    a6 = result;
    result += a2;
    --a7;
    a5 = v9;
  }

  v7.i64[1] = v8;
  v12 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  *&a5[2 * v12] = *(result + v12 * a2 + 6);
  v14 = *a6;
  _X5 = a6 + 8;
  v15 = v14;
  __asm { PRFM            #0, [X5] }

  _X10 = result + 8;
  v22 = *result;
  __asm { PRFM            #0, [X10] }

  v24 = v12 + 1;
  v25 = vceqz_s8(vand_s8(vdup_n_s8(~a4), 0x202000000000101));
  v26 = a5;
  do
  {
    _X12 = result + a2 + 8;
    v28 = *(result + a2);
    __asm { PRFM            #0, [X12] }

    v30 = vext_s8(v10, v15, 6uLL);
    v15.i16[0] = *(result + a2 + ((4 * a4) & 8));
    v31 = vext_s8(v28, v15, 2uLL);
    *result = vbsl_s8(v25, vsqadd_u8(v22, vqtbl1_s8(v7, vadd_s8(vsub_s8(vadd_s8(vbsl_s8(vcgt_u8(v22, v30), 0xB030B030B030B03, 0xA020A020A020A02), vcgt_u8(v30, v22)), vcgt_u8(v22, v31)), vcgt_u8(v31, v22)))), v22);
    v10 = vld1q_dup_s16(v26++).u64[0];
    --v24;
    v15 = v22;
    *a5 = v22.i16[3];
    v22 = v28;
    a5 = v26;
    result += a2;
  }

  while (v24 > 1);
  return result;
}

uint8x8_t *sub_2773D32B4(uint8x8_t *result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, uint8x8_t *a6, unsigned int a7)
{
  v7.i64[0] = *a3;
  v8 = a3[4];
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i16[3];
    a6 = result;
    result = (result + a2);
    --a7;
  }

  v7.i64[1] = v8;
  v9 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v9] = *(&result->i16[3] + v9 * a2);
  v11 = *a6;
  _X5 = a6 + 1;
  v12 = v11;
  __asm { PRFM            #0, [X5] }

  _X9 = result + 1;
  v19 = *result;
  __asm { PRFM            #0, [X9] }

  v21 = v9 + 1;
  do
  {
    _X10 = &result[1] + a2;
    v23 = *(result + a2);
    __asm { PRFM            #0, [X10] }

    *a5++ = v19.i16[3];
    v25 = vqtbl1_s8(v7, vadd_s8(vsub_s8(vadd_s8(vbsl_s8(vcgt_u8(v19, v12), 0xB030B030B030B03, 0xA020A020A020A02), vcgt_u8(v12, v19)), vcgt_u8(v19, v23)), vcgt_u8(v23, v19)));
    v12 = v19;
    *result = vsqadd_u8(v19, v25);
    --v21;
    v19 = v23;
    result = (result + a2);
  }

  while (v21 > 1);
  return result;
}

int8x8_t *sub_2773D3378(int8x8_t *result, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12, uint64_t a13, int a14)
{
  v14.i64[0] = *a3;
  v14.i64[1] = a3[4];
  v15 = a14 + 1;
  v16 = vceqz_s8(vand_s8(vdup_n_s8(~a4), 0x202000000000101));
  v17 = a5;
  do
  {
    v18 = *result;
    __asm { PRFM            #0, [X0,#8] }

    v24 = vld1_dup_s16(v17++);
    v25 = vext_s8(v24, *result, 6uLL);
    *a5 = HIWORD(*result);
    a12.i16[0] = *(result->i16 + ((4 * a4) & 8));
    v26 = vext_s8(v18, a12, 2uLL);
    a12 = vsqadd_u8(v18, vqtbl1_s8(v14, vadd_s8(vsub_s8(vadd_s8(vbsl_s8(vcgt_u8(v18, v25), 0xB030B030B030B03, 0xA020A020A020A02), vcgt_u8(v25, v18)), vcgt_u8(v18, v26)), vcgt_u8(v26, v18))));
    *result = vbsl_s8(v16, a12, v18);
    result = (result + a2);
    --v15;
    a5 = v17;
  }

  while (v15 > 1);
  return result;
}

int16x8_t *sub_2773D3424(int16x8_t *result, uint64_t a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i < a4; i += 4)
    {
      if (a3 >= 1)
      {
        v5 = 0;
        v6 = result;
        do
        {
          v7 = *(v6 + 6 * a2);
          v8 = vshlq_n_s16(*(v6 + 2 * a2), 8uLL);
          v9 = vshlq_n_s16(*(v6 + 4 * a2), 8uLL);
          *v6 = vshlq_n_s16(*v6, 8uLL);
          *(v6 + 2 * a2) = v8;
          *(v6 + 4 * a2) = v9;
          *(v6 + 6 * a2) = vshlq_n_s16(v7, 8uLL);
          v5 += 8;
          ++v6;
        }

        while (v5 < a3);
      }

      result = (result + 8 * a2);
    }
  }

  return result;
}

int16x8_t *sub_2773D34AC(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  _X9 = result + 6;
  v11.i64[0] = 0xFF00FF00FF00FFLL;
  v11.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v12 = _X9[-6];
    v13 = _X9[-5];
    v14 = _X9[-4];
    v15 = _X9[-3];
    v16 = _X9[-2];
    v17 = _X9[-1];
    v18 = *_X9;
    v19 = _X9[1];
    __asm
    {
      PRFM            #0, [X9,#0x20]
      PRFM            #0, [X9,#0x60]
    }

    *a5++ = v19.i16[7];
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 3uLL), v13, 3uLL));
    v27 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v26.i8), 0), v11);
    v28 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v26), 0), v11);
    v29 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 3uLL), v15, 3uLL));
    v30 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v29.i8), 0), v11);
    v31 = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v29), 0), v11);
    v32 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v16, 3uLL), v17, 3uLL));
    v33 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v32.i8), 0), v11);
    v34 = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v32), 0), v11);
    v35 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v18, 3uLL), v19, 3uLL));
    _X9[-6] = v27;
    _X9[-5] = v28;
    _X9[-4] = v30;
    _X9[-3] = v31;
    _X9[-2] = v33;
    _X9[-1] = v34;
    *_X9 = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v35.i8), 0), v11);
    _X9[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v35), 0), v11);
    --v9;
    _X9 = (_X9 + 2 * a2);
  }

  while (v9 > 1);
  return result;
}

int8x16_t *sub_2773D3594(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774B07A8(result->i8, a2, a3, a4, a5, _X5, 64, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 0x40) != 0)
    {
      a5[a7] = result->u16[a7 * a2 - 1];
    }

    if ((a4 & 4) == 0)
    {
      *a5++ = result[7].u16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
    }

    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D1E0);
    v12 = vandq_s8(v10, xmmword_27750D260);
    v14 = *_X5;
    v13 = _X5[1];
    v16 = _X5[2];
    v15 = _X5[3];
    v18 = _X5[4];
    v17 = _X5[5];
    v19 = _X5[6];
    v20 = _X5[7];
    i16 = _X5[8].i16;
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = result[1];
    v30 = result[2];
    v31 = result[3];
    v32 = result + 6;
    v33 = result[6];
    v34 = result[4];
    v35 = result[5];
    v36 = 2 * a2;
    v37 = ((__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32) + 1;
    v38 = result[7];
    __asm { PRFM            #0, [X0,#0x80] }

    v40 = vceqzq_s16(v12);
    v41 = vceqzq_s16(v11);
    __asm { PRFM            #0, [X0,#0xC0] }

    v43.i64[0] = 0x202020202020202;
    v43.i64[1] = 0x202020202020202;
    v44.i64[0] = 0xFF00FF00FF00FFLL;
    v44.i64[1] = 0xFF00FF00FF00FFLL;
    v45 = vld1q_dup_s16(i16);
    *a5 = v38.u16[7];
    v46 = (a5 + 1);
    v47 = v46;
    do
    {
      v48 = vextq_s8(v19, v20, 2uLL);
      v49 = v38;
      v50 = vextq_s8(v17, v19, 2uLL);
      v19 = v33;
      v51 = vextq_s8(v18, v17, 2uLL);
      v17 = v35;
      v52 = vextq_s8(v15, v18, 2uLL);
      v18 = v34;
      v53 = vextq_s8(v16, v15, 2uLL);
      v15 = v31;
      v54 = vextq_s8(v13, v16, 2uLL);
      v16 = v30;
      v55 = vextq_s8(v14, v13, 2uLL);
      v13 = v29;
      v14 = v28;
      _X12 = &v32->i8[v36];
      v28 = *(&v32[-6] + v36);
      v29 = *(&v32[-5] + v36);
      v30 = *(&v32[-4] + v36);
      v31 = *(&v32[-3] + v36);
      v34 = *(&v32[-2] + v36);
      v35 = *(&v32[-1] + v36);
      v33 = *(v32 + 2 * a2);
      v38 = *(&v32[1] + v36);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v59 = vld1q_dup_s16(v47++);
      v60 = vextq_s8(v20, v45, 2uLL);
      v61 = vextq_s8(v59, v28, 0xEuLL);
      v62 = vextq_s8(v28, v29, 0xEuLL);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v14), vcgtq_u16(v14, v55)), vcgtq_u16(v14, v61)), vcgtq_u16(v61, v14));
      v64 = vextq_s8(v29, v30, 0xEuLL);
      v65 = vqmovn_high_s16(vqmovn_s16(v63), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v13), vcgtq_u16(v13, v54)), vcgtq_u16(v13, v62)), vcgtq_u16(v62, v13)));
      v66 = vextq_s8(v30, v31, 0xEuLL);
      v67 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v16), vcgtq_u16(v16, v53)), vcgtq_u16(v16, v64)), vcgtq_u16(v64, v16));
      v68 = vextq_s8(v31, v34, 0xEuLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v67), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v15), vcgtq_u16(v15, v52)), vcgtq_u16(v15, v66)), vcgtq_u16(v66, v15)));
      v70 = vextq_s8(v34, v35, 0xEuLL);
      v71 = vextq_s8(v35, v33, 0xEuLL);
      v72 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v18), vcgtq_u16(v18, v51)), vcgtq_u16(v18, v68)), vcgtq_u16(v68, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v17), vcgtq_u16(v17, v50)), vcgtq_u16(v17, v70)), vcgtq_u16(v70, v17)));
      v73 = vextq_s8(v33, v38, 0xEuLL);
      *v46 = v38.i16[7];
      v74 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v60, v49), vcgtq_u16(v49, v60)), vcgtq_u16(v49, v73)), vcgtq_u16(v73, v49));
      v75 = vqtbl1q_s8(v9, vaddq_s8(v65, v43));
      v76 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v19), vcgtq_u16(v19, v48)), vcgtq_u16(v19, v71)), vcgtq_u16(v71, v19))), v74);
      v32[-6] = vbslq_s8(v41, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v75.i8), 0), v44), v14);
      v32[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v75), 0), v44);
      v77 = vqtbl1q_s8(v9, vaddq_s8(v69, v43));
      v32[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v44);
      v32[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v44);
      v78 = vqtbl1q_s8(v9, vaddq_s8(v72, v43));
      v32[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v78.i8), 0), v44);
      v32[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v78), 0), v44);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v76, v43));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v79.i8), 0), v44);
      v32[1] = vbslq_s8(v40, vminq_s16(vmaxq_s16(vaddw_high_s8(v49, v79), 0), v44), v49);
      v80 = v32[2].i16;
      --v37;
      v32 = (v32 + v36);
      v46 = v47;
      v20 = v49;
      v45 = vld1q_dup_s16(v80);
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t *sub_2773D3908(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774B0C24(result->i8, a2, a3, a4, a5, _X5, 0x40u, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i16[7];
      v11 = vld1q_dup_s16(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_s16(v10++);
      *a5 = result[7].i16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
      a5 = v10;
    }

    v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
    a5[v13] = result[7].i16[v13 * a2 + 7];
    v14 = vdupq_n_s16(~a4);
    v15 = vandq_s8(v14, xmmword_27750D1E0);
    v16 = vandq_s8(v14, xmmword_27750D260);
    v18 = *_X5;
    v17 = _X5[1];
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
    v32 = result[1];
    v33 = result[2];
    v34 = result[3];
    v35 = result[4];
    v36 = result[5];
    v37 = result + 6;
    v38 = result[6];
    v39 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = v13 + 1;
    v43 = 2 * a2;
    v44 = vceqzq_s16(v16);
    v45 = vceqzq_s16(v15);
    v46.i64[0] = 0x202020202020202;
    v46.i64[1] = 0x202020202020202;
    v47.i64[0] = 0xFF00FF00FF00FFLL;
    v47.i64[1] = 0xFF00FF00FF00FFLL;
    v48 = a5;
    do
    {
      v49 = vextq_s8(v24, v23, 0xEuLL);
      v23 = v39;
      v50 = vextq_s8(v21, v24, 0xEuLL);
      v24 = v38;
      v51 = vextq_s8(v22, v21, 0xEuLL);
      v21 = v36;
      v52 = vextq_s8(v19, v22, 0xEuLL);
      v22 = v35;
      v53 = vextq_s8(v20, v19, 0xEuLL);
      v19 = v34;
      v54 = vextq_s8(v17, v20, 0xEuLL);
      v20 = v33;
      v55 = vextq_s8(v18, v17, 0xEuLL);
      v17 = v32;
      v56 = vextq_s8(v11, v18, 0xEuLL);
      v18 = v31;
      _X13 = &v37->i8[v43];
      v31 = *(&v37[-6] + v43);
      v32 = *(&v37[-5] + v43);
      v33 = *(&v37[-4] + v43);
      v34 = *(&v37[-3] + v43);
      v35 = *(&v37[-2] + v43);
      v36 = *(&v37[-1] + v43);
      v58 = vextq_s8(v31, v32, 2uLL);
      v59 = vextq_s8(v32, v33, 2uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v56, v18), vcgtq_u16(v18, v56)), vcgtq_u16(v18, v58)), vcgtq_u16(v58, v18));
      v61 = vextq_s8(v33, v34, 2uLL);
      v62 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v17), vcgtq_u16(v17, v55)), vcgtq_u16(v17, v59)), vcgtq_u16(v59, v17));
      v63 = vextq_s8(v34, v35, 2uLL);
      v64 = vqmovn_high_s16(vqmovn_s16(v60), v62);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v20), vcgtq_u16(v20, v54)), vcgtq_u16(v20, v61)), vcgtq_u16(v61, v20));
      v66 = vsubq_s16(vsubq_s16(vcgtq_u16(v53, v19), vcgtq_u16(v19, v53)), vcgtq_u16(v19, v63));
      v38 = *(v37 + 2 * a2);
      v39 = *(&v37[1] + v43);
      v67 = vaddq_s16(v66, vcgtq_u16(v63, v19));
      v68 = vextq_s8(v35, v36, 2uLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v65), v67);
      v70 = vextq_s8(v36, v38, 2uLL);
      v71 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v22), vcgtq_u16(v22, v52)), vcgtq_u16(v22, v68)), vcgtq_u16(v68, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v74 = vextq_s8(v38, v39, 2uLL);
      v75 = vqmovn_high_s16(vqmovn_s16(v71), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v21), vcgtq_u16(v21, v51)), vcgtq_u16(v21, v70)), vcgtq_u16(v70, v21)));
      v76 = vcgtq_u16(v24, v74);
      v77 = vsubq_s16(vsubq_s16(vcgtq_u16(v50, v24), vcgtq_u16(v24, v50)), v76);
      v76.i32[0] = v37[8 * ((a4 >> 1) & 1) - 6].u16[a2];
      v78 = vextq_s8(v39, v76, 2uLL);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v64, v46));
      v80 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v77, vcgtq_u16(v74, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v23), vcgtq_u16(v23, v49)), vcgtq_u16(v23, v78)), vcgtq_u16(v78, v23)));
      v37[-6] = vbslq_s8(v45, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v79.i8), 0), v47), v18);
      v37[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v79), 0), v47);
      v81 = vqtbl1q_s8(v9, vaddq_s8(v69, v46));
      v37[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v81.i8), 0), v47);
      v37[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v81), 0), v47);
      v82 = vqtbl1q_s8(v9, vaddq_s8(v75, v46));
      v37[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v82.i8), 0), v47);
      v37[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v82), 0), v47);
      v83 = vqtbl1q_s8(v9, vaddq_s8(v80, v46));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v83.i8), 0), v47);
      v37[1] = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v83), 0), v47), v23);
      v11 = vld1q_dup_s16(v48++);
      --v42;
      v37 = (v37 + v43);
      *a5 = v23.i16[7];
      a5 = v48;
    }

    while (v42 > 1);
  }

  return result;
}

uint64_t sub_2773D3C88(uint64_t result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 126);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = *(result + 2 * v8 * a2 + 126);
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  v14 = _X5[4];
  v13 = _X5[5];
  v16 = _X5[6];
  v15 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v23 = *result;
  v24 = *(result + 16);
  v25 = *(result + 32);
  v26 = *(result + 48);
  v27 = *(result + 64);
  v28 = *(result + 80);
  v29 = (result + 96);
  v30 = *(result + 96);
  v31 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v34 = v8 + 1;
  v35 = 2 * a2;
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xFF00FF00FF00FFLL;
  v37.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v38 = v31;
    v39 = v30;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v44 = v24;
    v45 = v23;
    _X11 = &v29->i8[v35];
    v23 = *(&v29[-6] + v35);
    v24 = *(&v29[-5] + v35);
    v25 = *(&v29[-4] + v35);
    v26 = *(&v29[-3] + v35);
    v27 = *(&v29[-2] + v35);
    v28 = *(&v29[-1] + v35);
    v30 = *(v29 + 2 * a2);
    v31 = *(&v29[1] + v35);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i16[7];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v45), vcgtq_u16(v45, v10)), vcgtq_u16(v45, v23)), vcgtq_u16(v23, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v44), vcgtq_u16(v44, v9)), vcgtq_u16(v44, v24)), vcgtq_u16(v24, v44))), v36));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v43), vcgtq_u16(v43, v12)), vcgtq_u16(v43, v25)), vcgtq_u16(v25, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v42), vcgtq_u16(v42, v11)), vcgtq_u16(v42, v26)), vcgtq_u16(v26, v42))), v36));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v41), vcgtq_u16(v41, v14)), vcgtq_u16(v41, v27)), vcgtq_u16(v27, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v40), vcgtq_u16(v40, v13)), vcgtq_u16(v40, v28)), vcgtq_u16(v28, v40))), v36));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v39), vcgtq_u16(v39, v16)), vcgtq_u16(v39, v30)), vcgtq_u16(v30, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v38), vcgtq_u16(v38, v15)), vcgtq_u16(v38, v31)), vcgtq_u16(v31, v38))), v36));
    v29[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v29[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v29[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v29[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v29[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v29[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v34;
    *v29 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v29[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v29 = (v29 + v35);
    v10 = v45;
    v9 = v44;
    v12 = v43;
    v11 = v42;
    v14 = v41;
    v13 = v40;
    v16 = v39;
    v15 = v38;
  }

  while (v34 > 1);
  return result;
}

int16x8_t *sub_2773D3F34(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFF00FF00FF00FFLL;
  v15.i64[1] = 0xFF00FF00FF00FFLL;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v19 = result[2];
    v20 = result[3];
    v21 = result[4];
    v22 = result[5];
    v24 = result[6];
    v23 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v31 = vld1q_dup_s16(v16++);
    *a5 = v23.i16[7];
    v32 = vextq_s8(v31, v17, 0xEuLL);
    v33 = vextq_s8(v17, v18, 0xEuLL);
    v34 = vextq_s8(v18, v19, 0xEuLL);
    v35 = vextq_s8(v19, v20, 0xEuLL);
    v36 = vextq_s8(v20, v21, 0xEuLL);
    v37 = vextq_s8(v21, v22, 0xEuLL);
    v38 = vextq_s8(v22, v24, 0xEuLL);
    v39 = vextq_s8(v24, v23, 0xEuLL);
    v40 = vextq_s8(v17, v18, 2uLL);
    v41 = vextq_s8(v18, v19, 2uLL);
    v42 = vextq_s8(v19, v20, 2uLL);
    v43 = vextq_s8(v20, v21, 2uLL);
    v44 = vextq_s8(v21, v22, 2uLL);
    v45 = vextq_s8(v22, v24, 2uLL);
    v46 = vextq_s8(v24, v23, 2uLL);
    v7.i16[0] = result[8 * ((a4 >> 1) & 1)].i16[0];
    v47 = vextq_s8(v23, v7, 2uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v32)), vcgtq_u16(v32, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v18), vcgtq_u16(v18, v33)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), v14));
    v49 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v19), vcgtq_u16(v19, v34)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v20), vcgtq_u16(v20, v35)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), v14));
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v44)), vcgtq_u16(v44, v21))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v37, v22), vcgtq_u16(v22, v37)), vcgtq_u16(v22, v45)), vcgtq_u16(v45, v22))), v14));
    v51 = vminq_s16(vmaxq_s16(vaddw_s8(v21, *v50.i8), 0), v15);
    v52 = vminq_s16(vmaxq_s16(vaddw_high_s8(v22, v50), 0), v15);
    v53 = vcgtq_u16(v23, v47);
    v7 = vcgtq_u16(v47, v23);
    v54 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v24), vcgtq_u16(v24, v38)), vcgtq_u16(v24, v46)), vcgtq_u16(v46, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v23), vcgtq_u16(v23, v39)), v53), v7)), v14));
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v48.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v48), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v49.i8), 0), v15);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v49), 0), v15);
    result[4] = v51;
    result[5] = v52;
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v54.i8), 0), v15);
    result[7] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v54), 0), v15), v23);
    --v11;
    result = (result + 2 * a2);
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D41B4(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 2;
  v10 = a7 + 1;
  v11.i64[0] = 0xFF00FF00FF00FFLL;
  v11.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v12 = _X8[-2];
    v13 = _X8[-1];
    v14 = *_X8;
    v15 = _X8[1];
    __asm { PRFM            #0, [X8,#0x20] }

    *a5++ = v15.i16[7];
    v21 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 3uLL), v13, 3uLL));
    v22 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v21.i8), 0), v11);
    v23 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v21), 0), v11);
    v24 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 3uLL), v15, 3uLL));
    _X8[-2] = v22;
    _X8[-1] = v23;
    *_X8 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v24.i8), 0), v11);
    _X8[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v24), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D4240(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B07A8(result->i8, a2, a3, a4, a5, _X5, 32, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  v14 = _X5[2];
  v15 = _X5[3];
  i16 = _X5[4].i16;
  __asm { PRFM            #0, [X5,#0x40] }

  v22 = *result;
  v23 = result[1];
  v24 = result[2];
  v25 = result[3];
  v26 = result[4].i16;
  __asm { PRFM            #0, [X0,#0x40] }

  v28 = vld1q_dup_s16(i16);
  *a5 = v25.u16[7];
  v29 = (a5 + 1);
  v30 = a2;
  v31 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v32 = vceqzq_s16(v11);
  v33 = vceqzq_s16(v10);
  v34.i64[0] = 0x202020202020202;
  v34.i64[1] = 0x202020202020202;
  v35.i64[0] = 0xFF00FF00FF00FFLL;
  v35.i64[1] = 0xFF00FF00FF00FFLL;
  v36 = v29;
  do
  {
    v37 = v25;
    v38 = vextq_s8(v12, v14, 2uLL);
    v39 = v24;
    v40 = vextq_s8(v13, v12, 2uLL);
    v12 = v23;
    v13 = v22;
    _X12 = &v26[v30];
    v22 = *&v26[v30 - 32];
    v23 = *&v26[v30 - 24];
    v24 = *&v26[v30 - 16];
    v25 = *&v26[v30 - 8];
    __asm { PRFM            #0, [X12] }

    v43 = vld1q_dup_s16(v36++);
    v44 = vextq_s8(v14, v15, 2uLL);
    v45 = vextq_s8(v15, v28, 2uLL);
    *v29 = v25.i16[7];
    v46 = vextq_s8(v43, v22, 0xEuLL);
    v47 = vextq_s8(v22, v23, 0xEuLL);
    v48 = vextq_s8(v23, v24, 0xEuLL);
    v49 = vextq_s8(v24, v25, 0xEuLL);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v13), vcgtq_u16(v13, v40)), vcgtq_u16(v13, v46)), vcgtq_u16(v46, v13))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v47)), vcgtq_u16(v47, v12))), v34));
    v51 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v44, v39), vcgtq_u16(v39, v44)), vcgtq_u16(v39, v48)), vcgtq_u16(v48, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v45, v37), vcgtq_u16(v37, v45)), vcgtq_u16(v37, v49)), vcgtq_u16(v49, v37))), v34));
    *(v26 - 4) = vbslq_s8(v33, vminq_s16(vmaxq_s16(vaddw_s8(v13, *v50.i8), 0), v35), v13);
    *(v26 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v12, v50), 0), v35);
    *(v26 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v51.i8), 0), v35);
    *(v26 - 1) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_high_s8(v37, v51), 0), v35), v37);
    v28 = vld1q_dup_s16(v26);
    --v31;
    v26 = (v26 + v30 * 2);
    v29 = v36;
    v14 = v39;
    v15 = v37;
  }

  while (v31 > 1);
  return result;
}

int8x16_t *sub_2773D4468(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B0C24(result->i8, a2, a3, a4, a5, _X5, 0x20u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[3].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = result[1];
  v28 = result + 2;
  v29 = result[2];
  v30 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xFF00FF00FF00FFLL;
  v37.i64[1] = 0xFF00FF00FF00FFLL;
  v38 = a5;
  do
  {
    v39 = vextq_s8(v20, v19, 0xEuLL);
    v19 = v30;
    v40 = vextq_s8(v17, v20, 0xEuLL);
    v20 = v29;
    v41 = vextq_s8(v18, v17, 0xEuLL);
    v17 = v27;
    v42 = vextq_s8(v11, v18, 0xEuLL);
    v18 = v26;
    _X13 = &v28->i8[v33];
    v26 = *(&v28[-2] + v33);
    v27 = *(&v28[-1] + v33);
    v29 = *(v28 + 2 * a2);
    v30 = *(&v28[1] + v33);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = v28[4 * ((a4 >> 1) & 1) - 2].u16[a2];
    v45 = vextq_s8(v26, v27, 2uLL);
    v46 = vextq_s8(v27, v29, 2uLL);
    v47 = vextq_s8(v29, v30, 2uLL);
    v48 = vextq_s8(v30, v7, 2uLL);
    v49 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v18), vcgtq_u16(v18, v42)), vcgtq_u16(v18, v45)), vcgtq_u16(v45, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v17), vcgtq_u16(v17, v41)), vcgtq_u16(v17, v46)), vcgtq_u16(v46, v17))), v36));
    v50 = vcgtq_u16(v19, v48);
    v7 = vcgtq_u16(v48, v19);
    v51 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v20), vcgtq_u16(v20, v40)), vcgtq_u16(v20, v47)), vcgtq_u16(v47, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v19), vcgtq_u16(v19, v39)), v50), v7)), v36));
    v28[-2] = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v49.i8), 0), v37), v18);
    v28[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v49), 0), v37);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v51.i8), 0), v37);
    v28[1] = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v51), 0), v37), v19);
    v11 = vld1q_dup_s16(v38++);
    --v32;
    v28 = (v28 + v33);
    *a5 = v19.i16[7];
    a5 = v38;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773D46A8(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[3].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v18 = *result;
  v19 = result[1];
  v20 = result[2];
  v21 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v23 = v8 + 1;
  v24 = 2 * a2;
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26.i64[0] = 0xFF00FF00FF00FFLL;
  v26.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    _X10 = result->i64 + v24;
    v18 = *(result + 2 * a2);
    v19 = *(&result[1] + v24);
    v20 = *(&result[2] + v24);
    v21 = *(&result[3] + v24);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i16[7];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v27), vcgtq_u16(v27, v10)), vcgtq_u16(v27, v18)), vcgtq_u16(v18, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v28), vcgtq_u16(v28, v9)), vcgtq_u16(v28, v19)), vcgtq_u16(v19, v28))), v25));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v29), vcgtq_u16(v29, v12)), vcgtq_u16(v29, v20)), vcgtq_u16(v20, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v30), vcgtq_u16(v30, v11)), vcgtq_u16(v30, v21)), vcgtq_u16(v21, v30))), v25));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v23;
    result = (result + v24);
    v10 = v27;
    v9 = v28;
    v12 = v29;
    v11 = v30;
  }

  while (v23 > 1);
  return result;
}

int16x8_t *sub_2773D4820(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFF00FF00FF00FFLL;
  v15.i64[1] = 0xFF00FF00FF00FFLL;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v20 = result[2];
    v19 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v26 = vld1q_dup_s16(v16++);
    *a5 = v19.i16[7];
    v7.i16[0] = result[4 * ((a4 >> 1) & 1)].i16[0];
    v27 = vextq_s8(v26, v17, 0xEuLL);
    v28 = vextq_s8(v17, v18, 0xEuLL);
    v29 = vextq_s8(v18, v20, 0xEuLL);
    v30 = vextq_s8(v20, v19, 0xEuLL);
    v31 = vextq_s8(v17, v18, 2uLL);
    v32 = vextq_s8(v18, v20, 2uLL);
    v33 = vextq_s8(v20, v19, 2uLL);
    v34 = vextq_s8(v19, v7, 2uLL);
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v18), vcgtq_u16(v18, v28)), vcgtq_u16(v18, v32)), vcgtq_u16(v32, v18))), v14));
    v36 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v20), vcgtq_u16(v20, v29)), vcgtq_u16(v20, v33)), vcgtq_u16(v33, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v19), vcgtq_u16(v19, v30)), vcgtq_u16(v19, v34)), vcgtq_u16(v34, v19))), v14));
    v37 = vaddw_s8(v20, *v36.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v36), 0), v15);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v35.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(v37, 0), v15);
    result[3] = vbslq_s8(v12, v7, v19);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D498C(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 1;
  v10 = a7 + 1;
  v11.i64[0] = 0xFF00FF00FF00FFLL;
  v11.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v12 = _X8[-1];
    v13 = *_X8;
    __asm { PRFM            #0, [X8,#0x10] }

    *a5++ = HIWORD(*_X8);
    v19 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 3uLL), v13, 3uLL));
    _X8[-1] = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v19.i8), 0), v11);
    *_X8 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v19), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D49EC(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B07A8(result->i8, a2, a3, a4, a5, _X5, 16, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  i16 = _X5[2].i16;
  __asm { PRFM            #0, [X5,#0x20] }

  v20 = *result;
  v21 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v23 = vld1q_dup_s16(i16);
  *a5 = v21.u16[7];
  v24 = (a5 + 1);
  v25 = 2 * a2;
  v26 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v27 = vceqzq_s16(v11);
  v28 = vceqzq_s16(v10);
  v29.i64[0] = 0x202020202020202;
  v29.i64[1] = 0x202020202020202;
  v30.i64[0] = 0xFF00FF00FF00FFLL;
  v30.i64[1] = 0xFF00FF00FF00FFLL;
  v31 = v24;
  do
  {
    v32 = vextq_s8(v13, v12, 2uLL);
    v33 = v21;
    v34 = v20;
    _X11 = &result->i8[v25];
    v20 = *(result + 2 * a2);
    v21 = *(&result[1] + v25);
    __asm { PRFM            #0, [X11,#0x20] }

    v37 = vld1q_dup_s16(v31++);
    v38 = vextq_s8(v12, v23, 2uLL);
    *v24 = v21.i16[7];
    v39 = vextq_s8(v37, v20, 0xEuLL);
    v40 = vextq_s8(v20, v21, 0xEuLL);
    v41 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v34), vcgtq_u16(v34, v32)), vcgtq_u16(v34, v39)), vcgtq_u16(v39, v34))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v33), vcgtq_u16(v33, v38)), vcgtq_u16(v33, v40)), vcgtq_u16(v40, v33))), v29));
    *result = vbslq_s8(v28, vminq_s16(vmaxq_s16(vaddw_s8(v34, *v41.i8), 0), v30), v34);
    result[1] = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_high_s8(v33, v41), 0), v30), v33);
    v42 = result[2].i16;
    --v26;
    result = (result + v25);
    v23 = vld1q_dup_s16(v42);
    v24 = v31;
    v13 = v34;
    v12 = v33;
  }

  while (v26 > 1);
  return result;
}

int8x16_t *sub_2773D4B8C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B0C24(result->i8, a2, a3, a4, a5, _X5, 0x10u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[1].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0x202020202020202;
  v31.i64[1] = 0x202020202020202;
  v32.i64[0] = 0xFF00FF00FF00FFLL;
  v32.i64[1] = 0xFF00FF00FF00FFLL;
  v33 = a5;
  do
  {
    v34 = vextq_s8(v17, v18, 0xEuLL);
    v35 = v25;
    v36 = v24;
    _X12 = &result->i8[v28];
    v24 = *(result + 2 * a2);
    v25 = *(&result[1] + v28);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[a2];
    v39 = vextq_s8(v11, v17, 0xEuLL);
    v40 = vextq_s8(v24, v25, 2uLL);
    v41 = vextq_s8(v25, v7, 2uLL);
    v42 = vcgtq_u16(v35, v41);
    v7 = vcgtq_u16(v41, v35);
    v43 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v36), vcgtq_u16(v36, v39)), vcgtq_u16(v36, v40)), vcgtq_u16(v40, v36))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v35), vcgtq_u16(v35, v34)), v42), v7)), v31));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v36, *v43.i8), 0), v32), v36);
    result[1] = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v43), 0), v32), v35);
    v11 = vld1q_dup_s16(v33++);
    --v27;
    result = (result + v28);
    *a5 = v35.i16[7];
    v17 = v36;
    v18 = v35;
    a5 = v33;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773D4D3C(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[1].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v16 = *result;
  v17 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v19 = 2 * a2;
  v20 = v8 + 1;
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22.i64[0] = 0xFF00FF00FF00FFLL;
  v22.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v23 = v16;
    v24 = v17;
    _X10 = result->i64 + v19;
    v16 = *(result + 2 * a2);
    v17 = *(&result[1] + v19);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i16[7];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v23), vcgtq_u16(v23, v10)), vcgtq_u16(v23, v16)), vcgtq_u16(v16, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v24), vcgtq_u16(v24, v9)), vcgtq_u16(v24, v17)), vcgtq_u16(v17, v24))), v21));
    --v20;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v19);
    v10 = v23;
    v9 = v24;
  }

  while (v20 > 1);
  return result;
}

int16x8_t *sub_2773D4E34(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFF00FF00FF00FFLL;
  v15.i64[1] = 0xFF00FF00FF00FFLL;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v24 = vld1q_dup_s16(v16++);
    *a5 = v18.i16[7];
    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[0];
    v25 = vextq_s8(v24, v17, 0xEuLL);
    v26 = vextq_s8(v17, v18, 0xEuLL);
    v27 = vextq_s8(v17, v18, 2uLL);
    v28 = vextq_s8(v18, v7, 2uLL);
    v29 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v25)), vcgtq_u16(v25, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v18), vcgtq_u16(v18, v26)), vcgtq_u16(v18, v28)), vcgtq_u16(v28, v18))), v14));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v29.i8), 0), v15);
    *result = vbslq_s8(v13, v7, v17);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v29), 0), v15), v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D4F28(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  v10.i64[0] = 0xFF00FF00FF00FFLL;
  v10.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    v11 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    *a5++ = HIWORD(*result);
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v11, vqtbl2_s8(*&v7, vshrn_n_s16(v11, 3uLL))), 0), v10);
    result = (result + 2 * a2);
    --v9;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773D4F74(int16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774B07A8(result->i8, a2, a3, a4, a5, _X5, 8, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result->u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = *_X5;
  i16 = _X5[1].i16;
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 1;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s16(i16);
  *a5 = HIWORD(*result);
  v20 = (a5 + 1);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v24.i64[0] = 0x2000200020002;
  v24.i64[1] = 0x2000200020002;
  v25.i64[0] = 0x3000300030003;
  v25.i64[1] = 0x3000300030003;
  v26.i64[0] = 0xFF00FF00FF00FFLL;
  v26.i64[1] = 0xFF00FF00FF00FFLL;
  v27 = v20;
  do
  {
    _X12 = result[1].i64 + v21;
    v29 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v31 = vld1q_dup_s16(v27++);
    *v20 = v29.i16[7];
    v32 = vextq_s8(v9, v19, 2uLL);
    v33 = vextq_s8(v31, v29, 0xEuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v32), v25, v24), vcgtq_u16(v32, v17)), vcgtq_u16(v17, v33)), vcgtq_u16(v33, v17))))), 0), v26), v17);
    v34 = result[1].i16;
    --v22;
    result = (result + v21);
    v19 = vld1q_dup_s16(v34);
    v20 = v27;
    v9 = v17;
    v17 = v29;
  }

  while (v22 > 1);
  return result;
}

int16x8_t *sub_2773D50D0(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774B0C24(result->i8, a2, a3, a4, a5, a6, 8u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 1);
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result->i16[v13 * a2 + 7];
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v28.i64[0] = 0x2000200020002;
  v28.i64[1] = 0x2000200020002;
  v29.i64[0] = 0x3000300030003;
  v29.i64[1] = 0x3000300030003;
  v30.i64[0] = 0xFF00FF00FF00FFLL;
  v30.i64[1] = 0xFF00FF00FF00FFLL;
  v31 = a5;
  do
  {
    _X13 = result[1].i64 + v25;
    v33 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i16[0] = result[(a4 >> 1) & 1].i16[a2];
    v35 = vextq_s8(v11, v16, 0xEuLL);
    v36 = vextq_s8(v33, v7, 2uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v35), v29, v28);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v9, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v35, v23)), vcgtq_u16(v23, v36)), vcgtq_u16(v36, v23))))), 0), v30), v23);
    v11 = vld1q_dup_s16(v31++);
    --v26;
    result = (result + v25);
    *a5 = v23.i16[7];
    v16 = v23;
    v23 = v33;
    a5 = v31;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773D523C(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result->i16[v8 * a2 + 7];
  v10 = *a6;
  _X5 = a6 + 1;
  v11 = v10;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v18 = *result;
  __asm { PRFM            #0, [X8] }

  v20 = 2 * a2;
  v21 = v8 + 1;
  v22.i64[0] = 0x2000200020002;
  v22.i64[1] = 0x2000200020002;
  v23.i64[0] = 0x3000300030003;
  v23.i64[1] = 0x3000300030003;
  v24.i64[0] = 0xFF00FF00FF00FFLL;
  v24.i64[1] = 0xFF00FF00FF00FFLL;
  do
  {
    _X11 = result[1].i64 + v20;
    v26 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v18.i16[7];
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v18, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v18, v11), v23, v22), vcgtq_u16(v11, v18)), vcgtq_u16(v18, v26)), vcgtq_u16(v26, v18))))), 0), v24);
    result = (result + v20);
    v11 = v18;
    v18 = v26;
  }

  while (v21 > 1);
  return result;
}

int8x16_t *sub_2773D530C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v11.i64[0] = 0x2000200020002;
  v11.i64[1] = 0x2000200020002;
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v13.i64[0] = 0xFF00FF00FF00FFLL;
  v13.i64[1] = 0xFF00FF00FF00FFLL;
  v14 = a5;
  do
  {
    v15 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v21 = vld1q_dup_s16(v14++);
    v22 = vextq_s8(v21, *result, 0xEuLL);
    *a5 = HIWORD(*result);
    v7.i16[0] = result[(a4 >> 1) & 1].i16[0];
    v23 = vextq_s8(v15, v7, 2uLL);
    v24 = vcgtq_u16(v15, v23);
    v7 = vcgtq_u16(v23, v15);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v15, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v15, v22), v12, v11), vcgtq_u16(v22, v15)), v24), v7)))), 0), v13), v15);
    result = (result + 2 * a2);
    --v9;
    a5 = v14;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773D53BC(int16x8_t *result, uint64_t a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i < a4; i += 4)
    {
      if (a3 >= 1)
      {
        v5 = 0;
        v6 = result;
        do
        {
          v7 = *(v6 + 6 * a2);
          v8 = vshlq_n_s16(*(v6 + 2 * a2), 7uLL);
          v9 = vshlq_n_s16(*(v6 + 4 * a2), 7uLL);
          *v6 = vshlq_n_s16(*v6, 7uLL);
          *(v6 + 2 * a2) = v8;
          *(v6 + 4 * a2) = v9;
          *(v6 + 6 * a2) = vshlq_n_s16(v7, 7uLL);
          v5 += 8;
          ++v6;
        }

        while (v5 < a3);
      }

      result = (result + 8 * a2);
    }
  }

  return result;
}

int16x8_t *sub_2773D5444(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  _X9 = result + 6;
  v11.i64[0] = 0xFE00FE00FE00FE00;
  v11.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v12 = _X9[-6];
    v13 = _X9[-5];
    v14 = _X9[-4];
    v15 = _X9[-3];
    v16 = _X9[-2];
    v17 = _X9[-1];
    v18 = *_X9;
    v19 = _X9[1];
    __asm
    {
      PRFM            #0, [X9,#0x20]
      PRFM            #0, [X9,#0x60]
    }

    *a5++ = v19.i16[7];
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 4uLL), v13, 4uLL));
    v27 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v26.i8), 0), v11);
    v28 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v26), 0), v11);
    v29 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 4uLL), v15, 4uLL));
    v30 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v29.i8), 0), v11);
    v31 = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v29), 0), v11);
    v32 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v16, 4uLL), v17, 4uLL));
    v33 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v32.i8), 0), v11);
    v34 = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v32), 0), v11);
    v35 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v18, 4uLL), v19, 4uLL));
    _X9[-6] = v27;
    _X9[-5] = v28;
    _X9[-4] = v30;
    _X9[-3] = v31;
    _X9[-2] = v33;
    _X9[-1] = v34;
    *_X9 = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v35.i8), 0), v11);
    _X9[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v35), 0), v11);
    --v9;
    _X9 = (_X9 + 2 * a2);
  }

  while (v9 > 1);
  return result;
}

int8x16_t *sub_2773D552C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774AED28(result->i8, a2, a3, a4, a5, _X5, 64, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 0x40) != 0)
    {
      a5[a7] = result->u16[a7 * a2 - 1];
    }

    if ((a4 & 4) == 0)
    {
      *a5++ = result[7].u16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
    }

    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D1E0);
    v12 = vandq_s8(v10, xmmword_27750D260);
    v14 = *_X5;
    v13 = _X5[1];
    v16 = _X5[2];
    v15 = _X5[3];
    v18 = _X5[4];
    v17 = _X5[5];
    v19 = _X5[6];
    v20 = _X5[7];
    i16 = _X5[8].i16;
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = result[1];
    v30 = result[2];
    v31 = result[3];
    v32 = result + 6;
    v33 = result[6];
    v34 = result[4];
    v35 = result[5];
    v36 = 2 * a2;
    v37 = ((__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32) + 1;
    v38 = result[7];
    __asm { PRFM            #0, [X0,#0x80] }

    v40 = vceqzq_s16(v12);
    v41 = vceqzq_s16(v11);
    __asm { PRFM            #0, [X0,#0xC0] }

    v43.i64[0] = 0x202020202020202;
    v43.i64[1] = 0x202020202020202;
    v44.i64[0] = 0xFE00FE00FE00FE00;
    v44.i64[1] = 0xFE00FE00FE00FE00;
    v45 = vld1q_dup_s16(i16);
    *a5 = v38.u16[7];
    v46 = (a5 + 1);
    v47 = v46;
    do
    {
      v48 = vextq_s8(v19, v20, 2uLL);
      v49 = v38;
      v50 = vextq_s8(v17, v19, 2uLL);
      v19 = v33;
      v51 = vextq_s8(v18, v17, 2uLL);
      v17 = v35;
      v52 = vextq_s8(v15, v18, 2uLL);
      v18 = v34;
      v53 = vextq_s8(v16, v15, 2uLL);
      v15 = v31;
      v54 = vextq_s8(v13, v16, 2uLL);
      v16 = v30;
      v55 = vextq_s8(v14, v13, 2uLL);
      v13 = v29;
      v14 = v28;
      _X12 = &v32->i8[v36];
      v28 = *(&v32[-6] + v36);
      v29 = *(&v32[-5] + v36);
      v30 = *(&v32[-4] + v36);
      v31 = *(&v32[-3] + v36);
      v34 = *(&v32[-2] + v36);
      v35 = *(&v32[-1] + v36);
      v33 = *(v32 + 2 * a2);
      v38 = *(&v32[1] + v36);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v59 = vld1q_dup_s16(v47++);
      v60 = vextq_s8(v20, v45, 2uLL);
      v61 = vextq_s8(v59, v28, 0xEuLL);
      v62 = vextq_s8(v28, v29, 0xEuLL);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v14), vcgtq_u16(v14, v55)), vcgtq_u16(v14, v61)), vcgtq_u16(v61, v14));
      v64 = vextq_s8(v29, v30, 0xEuLL);
      v65 = vqmovn_high_s16(vqmovn_s16(v63), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v13), vcgtq_u16(v13, v54)), vcgtq_u16(v13, v62)), vcgtq_u16(v62, v13)));
      v66 = vextq_s8(v30, v31, 0xEuLL);
      v67 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v16), vcgtq_u16(v16, v53)), vcgtq_u16(v16, v64)), vcgtq_u16(v64, v16));
      v68 = vextq_s8(v31, v34, 0xEuLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v67), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v15), vcgtq_u16(v15, v52)), vcgtq_u16(v15, v66)), vcgtq_u16(v66, v15)));
      v70 = vextq_s8(v34, v35, 0xEuLL);
      v71 = vextq_s8(v35, v33, 0xEuLL);
      v72 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v18), vcgtq_u16(v18, v51)), vcgtq_u16(v18, v68)), vcgtq_u16(v68, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v17), vcgtq_u16(v17, v50)), vcgtq_u16(v17, v70)), vcgtq_u16(v70, v17)));
      v73 = vextq_s8(v33, v38, 0xEuLL);
      *v46 = v38.i16[7];
      v74 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v60, v49), vcgtq_u16(v49, v60)), vcgtq_u16(v49, v73)), vcgtq_u16(v73, v49));
      v75 = vqtbl1q_s8(v9, vaddq_s8(v65, v43));
      v76 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v19), vcgtq_u16(v19, v48)), vcgtq_u16(v19, v71)), vcgtq_u16(v71, v19))), v74);
      v32[-6] = vbslq_s8(v41, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v75.i8), 0), v44), v14);
      v32[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v75), 0), v44);
      v77 = vqtbl1q_s8(v9, vaddq_s8(v69, v43));
      v32[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v44);
      v32[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v44);
      v78 = vqtbl1q_s8(v9, vaddq_s8(v72, v43));
      v32[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v78.i8), 0), v44);
      v32[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v78), 0), v44);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v76, v43));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v79.i8), 0), v44);
      v32[1] = vbslq_s8(v40, vminq_s16(vmaxq_s16(vaddw_high_s8(v49, v79), 0), v44), v49);
      v80 = v32[2].i16;
      --v37;
      v32 = (v32 + v36);
      v46 = v47;
      v20 = v49;
      v45 = vld1q_dup_s16(v80);
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t *sub_2773D58A0(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774AF1A4(result->i8, a2, a3, a4, a5, _X5, 0x40u, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i16[7];
      v11 = vld1q_dup_s16(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_s16(v10++);
      *a5 = result[7].i16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
      a5 = v10;
    }

    v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
    a5[v13] = result[7].i16[v13 * a2 + 7];
    v14 = vdupq_n_s16(~a4);
    v15 = vandq_s8(v14, xmmword_27750D1E0);
    v16 = vandq_s8(v14, xmmword_27750D260);
    v18 = *_X5;
    v17 = _X5[1];
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
    v32 = result[1];
    v33 = result[2];
    v34 = result[3];
    v35 = result[4];
    v36 = result[5];
    v37 = result + 6;
    v38 = result[6];
    v39 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = v13 + 1;
    v43 = 2 * a2;
    v44 = vceqzq_s16(v16);
    v45 = vceqzq_s16(v15);
    v46.i64[0] = 0x202020202020202;
    v46.i64[1] = 0x202020202020202;
    v47.i64[0] = 0xFE00FE00FE00FE00;
    v47.i64[1] = 0xFE00FE00FE00FE00;
    v48 = a5;
    do
    {
      v49 = vextq_s8(v24, v23, 0xEuLL);
      v23 = v39;
      v50 = vextq_s8(v21, v24, 0xEuLL);
      v24 = v38;
      v51 = vextq_s8(v22, v21, 0xEuLL);
      v21 = v36;
      v52 = vextq_s8(v19, v22, 0xEuLL);
      v22 = v35;
      v53 = vextq_s8(v20, v19, 0xEuLL);
      v19 = v34;
      v54 = vextq_s8(v17, v20, 0xEuLL);
      v20 = v33;
      v55 = vextq_s8(v18, v17, 0xEuLL);
      v17 = v32;
      v56 = vextq_s8(v11, v18, 0xEuLL);
      v18 = v31;
      _X13 = &v37->i8[v43];
      v31 = *(&v37[-6] + v43);
      v32 = *(&v37[-5] + v43);
      v33 = *(&v37[-4] + v43);
      v34 = *(&v37[-3] + v43);
      v35 = *(&v37[-2] + v43);
      v36 = *(&v37[-1] + v43);
      v58 = vextq_s8(v31, v32, 2uLL);
      v59 = vextq_s8(v32, v33, 2uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v56, v18), vcgtq_u16(v18, v56)), vcgtq_u16(v18, v58)), vcgtq_u16(v58, v18));
      v61 = vextq_s8(v33, v34, 2uLL);
      v62 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v17), vcgtq_u16(v17, v55)), vcgtq_u16(v17, v59)), vcgtq_u16(v59, v17));
      v63 = vextq_s8(v34, v35, 2uLL);
      v64 = vqmovn_high_s16(vqmovn_s16(v60), v62);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v20), vcgtq_u16(v20, v54)), vcgtq_u16(v20, v61)), vcgtq_u16(v61, v20));
      v66 = vsubq_s16(vsubq_s16(vcgtq_u16(v53, v19), vcgtq_u16(v19, v53)), vcgtq_u16(v19, v63));
      v38 = *(v37 + 2 * a2);
      v39 = *(&v37[1] + v43);
      v67 = vaddq_s16(v66, vcgtq_u16(v63, v19));
      v68 = vextq_s8(v35, v36, 2uLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v65), v67);
      v70 = vextq_s8(v36, v38, 2uLL);
      v71 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v22), vcgtq_u16(v22, v52)), vcgtq_u16(v22, v68)), vcgtq_u16(v68, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v74 = vextq_s8(v38, v39, 2uLL);
      v75 = vqmovn_high_s16(vqmovn_s16(v71), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v21), vcgtq_u16(v21, v51)), vcgtq_u16(v21, v70)), vcgtq_u16(v70, v21)));
      v76 = vcgtq_u16(v24, v74);
      v77 = vsubq_s16(vsubq_s16(vcgtq_u16(v50, v24), vcgtq_u16(v24, v50)), v76);
      v76.i32[0] = v37[8 * ((a4 >> 1) & 1) - 6].u16[a2];
      v78 = vextq_s8(v39, v76, 2uLL);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v64, v46));
      v80 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v77, vcgtq_u16(v74, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v23), vcgtq_u16(v23, v49)), vcgtq_u16(v23, v78)), vcgtq_u16(v78, v23)));
      v37[-6] = vbslq_s8(v45, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v79.i8), 0), v47), v18);
      v37[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v79), 0), v47);
      v81 = vqtbl1q_s8(v9, vaddq_s8(v69, v46));
      v37[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v81.i8), 0), v47);
      v37[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v81), 0), v47);
      v82 = vqtbl1q_s8(v9, vaddq_s8(v75, v46));
      v37[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v82.i8), 0), v47);
      v37[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v82), 0), v47);
      v83 = vqtbl1q_s8(v9, vaddq_s8(v80, v46));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v83.i8), 0), v47);
      v37[1] = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v83), 0), v47), v23);
      v11 = vld1q_dup_s16(v48++);
      --v42;
      v37 = (v37 + v43);
      *a5 = v23.i16[7];
      a5 = v48;
    }

    while (v42 > 1);
  }

  return result;
}

uint64_t sub_2773D5C20(uint64_t result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 126);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = *(result + 2 * v8 * a2 + 126);
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  v14 = _X5[4];
  v13 = _X5[5];
  v16 = _X5[6];
  v15 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v23 = *result;
  v24 = *(result + 16);
  v25 = *(result + 32);
  v26 = *(result + 48);
  v27 = *(result + 64);
  v28 = *(result + 80);
  v29 = (result + 96);
  v30 = *(result + 96);
  v31 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v34 = v8 + 1;
  v35 = 2 * a2;
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xFE00FE00FE00FE00;
  v37.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v38 = v31;
    v39 = v30;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v44 = v24;
    v45 = v23;
    _X11 = &v29->i8[v35];
    v23 = *(&v29[-6] + v35);
    v24 = *(&v29[-5] + v35);
    v25 = *(&v29[-4] + v35);
    v26 = *(&v29[-3] + v35);
    v27 = *(&v29[-2] + v35);
    v28 = *(&v29[-1] + v35);
    v30 = *(v29 + 2 * a2);
    v31 = *(&v29[1] + v35);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i16[7];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v45), vcgtq_u16(v45, v10)), vcgtq_u16(v45, v23)), vcgtq_u16(v23, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v44), vcgtq_u16(v44, v9)), vcgtq_u16(v44, v24)), vcgtq_u16(v24, v44))), v36));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v43), vcgtq_u16(v43, v12)), vcgtq_u16(v43, v25)), vcgtq_u16(v25, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v42), vcgtq_u16(v42, v11)), vcgtq_u16(v42, v26)), vcgtq_u16(v26, v42))), v36));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v41), vcgtq_u16(v41, v14)), vcgtq_u16(v41, v27)), vcgtq_u16(v27, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v40), vcgtq_u16(v40, v13)), vcgtq_u16(v40, v28)), vcgtq_u16(v28, v40))), v36));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v39), vcgtq_u16(v39, v16)), vcgtq_u16(v39, v30)), vcgtq_u16(v30, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v38), vcgtq_u16(v38, v15)), vcgtq_u16(v38, v31)), vcgtq_u16(v31, v38))), v36));
    v29[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v29[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v29[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v29[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v29[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v29[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v34;
    *v29 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v29[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v29 = (v29 + v35);
    v10 = v45;
    v9 = v44;
    v12 = v43;
    v11 = v42;
    v14 = v41;
    v13 = v40;
    v16 = v39;
    v15 = v38;
  }

  while (v34 > 1);
  return result;
}

int16x8_t *sub_2773D5ECC(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFE00FE00FE00FE00;
  v15.i64[1] = 0xFE00FE00FE00FE00;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v19 = result[2];
    v20 = result[3];
    v21 = result[4];
    v22 = result[5];
    v24 = result[6];
    v23 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v31 = vld1q_dup_s16(v16++);
    *a5 = v23.i16[7];
    v32 = vextq_s8(v31, v17, 0xEuLL);
    v33 = vextq_s8(v17, v18, 0xEuLL);
    v34 = vextq_s8(v18, v19, 0xEuLL);
    v35 = vextq_s8(v19, v20, 0xEuLL);
    v36 = vextq_s8(v20, v21, 0xEuLL);
    v37 = vextq_s8(v21, v22, 0xEuLL);
    v38 = vextq_s8(v22, v24, 0xEuLL);
    v39 = vextq_s8(v24, v23, 0xEuLL);
    v40 = vextq_s8(v17, v18, 2uLL);
    v41 = vextq_s8(v18, v19, 2uLL);
    v42 = vextq_s8(v19, v20, 2uLL);
    v43 = vextq_s8(v20, v21, 2uLL);
    v44 = vextq_s8(v21, v22, 2uLL);
    v45 = vextq_s8(v22, v24, 2uLL);
    v46 = vextq_s8(v24, v23, 2uLL);
    v7.i16[0] = result[8 * ((a4 >> 1) & 1)].i16[0];
    v47 = vextq_s8(v23, v7, 2uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v32)), vcgtq_u16(v32, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v18), vcgtq_u16(v18, v33)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), v14));
    v49 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v19), vcgtq_u16(v19, v34)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v20), vcgtq_u16(v20, v35)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), v14));
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v44)), vcgtq_u16(v44, v21))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v37, v22), vcgtq_u16(v22, v37)), vcgtq_u16(v22, v45)), vcgtq_u16(v45, v22))), v14));
    v51 = vminq_s16(vmaxq_s16(vaddw_s8(v21, *v50.i8), 0), v15);
    v52 = vminq_s16(vmaxq_s16(vaddw_high_s8(v22, v50), 0), v15);
    v53 = vcgtq_u16(v23, v47);
    v7 = vcgtq_u16(v47, v23);
    v54 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v24), vcgtq_u16(v24, v38)), vcgtq_u16(v24, v46)), vcgtq_u16(v46, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v23), vcgtq_u16(v23, v39)), v53), v7)), v14));
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v48.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v48), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v49.i8), 0), v15);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v49), 0), v15);
    result[4] = v51;
    result[5] = v52;
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v54.i8), 0), v15);
    result[7] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v54), 0), v15), v23);
    --v11;
    result = (result + 2 * a2);
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D614C(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 2;
  v10 = a7 + 1;
  v11.i64[0] = 0xFE00FE00FE00FE00;
  v11.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v12 = _X8[-2];
    v13 = _X8[-1];
    v14 = *_X8;
    v15 = _X8[1];
    __asm { PRFM            #0, [X8,#0x20] }

    *a5++ = v15.i16[7];
    v21 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 4uLL), v13, 4uLL));
    v22 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v21.i8), 0), v11);
    v23 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v21), 0), v11);
    v24 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 4uLL), v15, 4uLL));
    _X8[-2] = v22;
    _X8[-1] = v23;
    *_X8 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v24.i8), 0), v11);
    _X8[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v24), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D61D8(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AED28(result->i8, a2, a3, a4, a5, _X5, 32, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  v14 = _X5[2];
  v15 = _X5[3];
  i16 = _X5[4].i16;
  __asm { PRFM            #0, [X5,#0x40] }

  v22 = *result;
  v23 = result[1];
  v24 = result[2];
  v25 = result[3];
  v26 = result[4].i16;
  __asm { PRFM            #0, [X0,#0x40] }

  v28 = vld1q_dup_s16(i16);
  *a5 = v25.u16[7];
  v29 = (a5 + 1);
  v30 = a2;
  v31 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v32 = vceqzq_s16(v11);
  v33 = vceqzq_s16(v10);
  v34.i64[0] = 0x202020202020202;
  v34.i64[1] = 0x202020202020202;
  v35.i64[0] = 0xFE00FE00FE00FE00;
  v35.i64[1] = 0xFE00FE00FE00FE00;
  v36 = v29;
  do
  {
    v37 = v25;
    v38 = vextq_s8(v12, v14, 2uLL);
    v39 = v24;
    v40 = vextq_s8(v13, v12, 2uLL);
    v12 = v23;
    v13 = v22;
    _X12 = &v26[v30];
    v22 = *&v26[v30 - 32];
    v23 = *&v26[v30 - 24];
    v24 = *&v26[v30 - 16];
    v25 = *&v26[v30 - 8];
    __asm { PRFM            #0, [X12] }

    v43 = vld1q_dup_s16(v36++);
    v44 = vextq_s8(v14, v15, 2uLL);
    v45 = vextq_s8(v15, v28, 2uLL);
    *v29 = v25.i16[7];
    v46 = vextq_s8(v43, v22, 0xEuLL);
    v47 = vextq_s8(v22, v23, 0xEuLL);
    v48 = vextq_s8(v23, v24, 0xEuLL);
    v49 = vextq_s8(v24, v25, 0xEuLL);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v13), vcgtq_u16(v13, v40)), vcgtq_u16(v13, v46)), vcgtq_u16(v46, v13))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v47)), vcgtq_u16(v47, v12))), v34));
    v51 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v44, v39), vcgtq_u16(v39, v44)), vcgtq_u16(v39, v48)), vcgtq_u16(v48, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v45, v37), vcgtq_u16(v37, v45)), vcgtq_u16(v37, v49)), vcgtq_u16(v49, v37))), v34));
    *(v26 - 4) = vbslq_s8(v33, vminq_s16(vmaxq_s16(vaddw_s8(v13, *v50.i8), 0), v35), v13);
    *(v26 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v12, v50), 0), v35);
    *(v26 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v51.i8), 0), v35);
    *(v26 - 1) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_high_s8(v37, v51), 0), v35), v37);
    v28 = vld1q_dup_s16(v26);
    --v31;
    v26 = (v26 + v30 * 2);
    v29 = v36;
    v14 = v39;
    v15 = v37;
  }

  while (v31 > 1);
  return result;
}

int8x16_t *sub_2773D6400(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AF1A4(result->i8, a2, a3, a4, a5, _X5, 0x20u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[3].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = result[1];
  v28 = result + 2;
  v29 = result[2];
  v30 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xFE00FE00FE00FE00;
  v37.i64[1] = 0xFE00FE00FE00FE00;
  v38 = a5;
  do
  {
    v39 = vextq_s8(v20, v19, 0xEuLL);
    v19 = v30;
    v40 = vextq_s8(v17, v20, 0xEuLL);
    v20 = v29;
    v41 = vextq_s8(v18, v17, 0xEuLL);
    v17 = v27;
    v42 = vextq_s8(v11, v18, 0xEuLL);
    v18 = v26;
    _X13 = &v28->i8[v33];
    v26 = *(&v28[-2] + v33);
    v27 = *(&v28[-1] + v33);
    v29 = *(v28 + 2 * a2);
    v30 = *(&v28[1] + v33);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = v28[4 * ((a4 >> 1) & 1) - 2].u16[a2];
    v45 = vextq_s8(v26, v27, 2uLL);
    v46 = vextq_s8(v27, v29, 2uLL);
    v47 = vextq_s8(v29, v30, 2uLL);
    v48 = vextq_s8(v30, v7, 2uLL);
    v49 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v18), vcgtq_u16(v18, v42)), vcgtq_u16(v18, v45)), vcgtq_u16(v45, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v17), vcgtq_u16(v17, v41)), vcgtq_u16(v17, v46)), vcgtq_u16(v46, v17))), v36));
    v50 = vcgtq_u16(v19, v48);
    v7 = vcgtq_u16(v48, v19);
    v51 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v20), vcgtq_u16(v20, v40)), vcgtq_u16(v20, v47)), vcgtq_u16(v47, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v19), vcgtq_u16(v19, v39)), v50), v7)), v36));
    v28[-2] = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v49.i8), 0), v37), v18);
    v28[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v49), 0), v37);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v51.i8), 0), v37);
    v28[1] = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v51), 0), v37), v19);
    v11 = vld1q_dup_s16(v38++);
    --v32;
    v28 = (v28 + v33);
    *a5 = v19.i16[7];
    a5 = v38;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773D6640(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[3].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v18 = *result;
  v19 = result[1];
  v20 = result[2];
  v21 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v23 = v8 + 1;
  v24 = 2 * a2;
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26.i64[0] = 0xFE00FE00FE00FE00;
  v26.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    _X10 = result->i64 + v24;
    v18 = *(result + 2 * a2);
    v19 = *(&result[1] + v24);
    v20 = *(&result[2] + v24);
    v21 = *(&result[3] + v24);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i16[7];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v27), vcgtq_u16(v27, v10)), vcgtq_u16(v27, v18)), vcgtq_u16(v18, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v28), vcgtq_u16(v28, v9)), vcgtq_u16(v28, v19)), vcgtq_u16(v19, v28))), v25));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v29), vcgtq_u16(v29, v12)), vcgtq_u16(v29, v20)), vcgtq_u16(v20, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v30), vcgtq_u16(v30, v11)), vcgtq_u16(v30, v21)), vcgtq_u16(v21, v30))), v25));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v23;
    result = (result + v24);
    v10 = v27;
    v9 = v28;
    v12 = v29;
    v11 = v30;
  }

  while (v23 > 1);
  return result;
}

int16x8_t *sub_2773D67B8(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFE00FE00FE00FE00;
  v15.i64[1] = 0xFE00FE00FE00FE00;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v20 = result[2];
    v19 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v26 = vld1q_dup_s16(v16++);
    *a5 = v19.i16[7];
    v7.i16[0] = result[4 * ((a4 >> 1) & 1)].i16[0];
    v27 = vextq_s8(v26, v17, 0xEuLL);
    v28 = vextq_s8(v17, v18, 0xEuLL);
    v29 = vextq_s8(v18, v20, 0xEuLL);
    v30 = vextq_s8(v20, v19, 0xEuLL);
    v31 = vextq_s8(v17, v18, 2uLL);
    v32 = vextq_s8(v18, v20, 2uLL);
    v33 = vextq_s8(v20, v19, 2uLL);
    v34 = vextq_s8(v19, v7, 2uLL);
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v18), vcgtq_u16(v18, v28)), vcgtq_u16(v18, v32)), vcgtq_u16(v32, v18))), v14));
    v36 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v20), vcgtq_u16(v20, v29)), vcgtq_u16(v20, v33)), vcgtq_u16(v33, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v19), vcgtq_u16(v19, v30)), vcgtq_u16(v19, v34)), vcgtq_u16(v34, v19))), v14));
    v37 = vaddw_s8(v20, *v36.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v36), 0), v15);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v35.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(v37, 0), v15);
    result[3] = vbslq_s8(v12, v7, v19);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D6924(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 1;
  v10 = a7 + 1;
  v11.i64[0] = 0xFE00FE00FE00FE00;
  v11.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v12 = _X8[-1];
    v13 = *_X8;
    __asm { PRFM            #0, [X8,#0x10] }

    *a5++ = HIWORD(*_X8);
    v19 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 4uLL), v13, 4uLL));
    _X8[-1] = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v19.i8), 0), v11);
    *_X8 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v19), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D6984(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AED28(result->i8, a2, a3, a4, a5, _X5, 16, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  i16 = _X5[2].i16;
  __asm { PRFM            #0, [X5,#0x20] }

  v20 = *result;
  v21 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v23 = vld1q_dup_s16(i16);
  *a5 = v21.u16[7];
  v24 = (a5 + 1);
  v25 = 2 * a2;
  v26 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v27 = vceqzq_s16(v11);
  v28 = vceqzq_s16(v10);
  v29.i64[0] = 0x202020202020202;
  v29.i64[1] = 0x202020202020202;
  v30.i64[0] = 0xFE00FE00FE00FE00;
  v30.i64[1] = 0xFE00FE00FE00FE00;
  v31 = v24;
  do
  {
    v32 = vextq_s8(v13, v12, 2uLL);
    v33 = v21;
    v34 = v20;
    _X11 = &result->i8[v25];
    v20 = *(result + 2 * a2);
    v21 = *(&result[1] + v25);
    __asm { PRFM            #0, [X11,#0x20] }

    v37 = vld1q_dup_s16(v31++);
    v38 = vextq_s8(v12, v23, 2uLL);
    *v24 = v21.i16[7];
    v39 = vextq_s8(v37, v20, 0xEuLL);
    v40 = vextq_s8(v20, v21, 0xEuLL);
    v41 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v34), vcgtq_u16(v34, v32)), vcgtq_u16(v34, v39)), vcgtq_u16(v39, v34))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v33), vcgtq_u16(v33, v38)), vcgtq_u16(v33, v40)), vcgtq_u16(v40, v33))), v29));
    *result = vbslq_s8(v28, vminq_s16(vmaxq_s16(vaddw_s8(v34, *v41.i8), 0), v30), v34);
    result[1] = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_high_s8(v33, v41), 0), v30), v33);
    v42 = result[2].i16;
    --v26;
    result = (result + v25);
    v23 = vld1q_dup_s16(v42);
    v24 = v31;
    v13 = v34;
    v12 = v33;
  }

  while (v26 > 1);
  return result;
}

int8x16_t *sub_2773D6B24(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AF1A4(result->i8, a2, a3, a4, a5, _X5, 0x10u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[1].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0x202020202020202;
  v31.i64[1] = 0x202020202020202;
  v32.i64[0] = 0xFE00FE00FE00FE00;
  v32.i64[1] = 0xFE00FE00FE00FE00;
  v33 = a5;
  do
  {
    v34 = vextq_s8(v17, v18, 0xEuLL);
    v35 = v25;
    v36 = v24;
    _X12 = &result->i8[v28];
    v24 = *(result + 2 * a2);
    v25 = *(&result[1] + v28);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[a2];
    v39 = vextq_s8(v11, v17, 0xEuLL);
    v40 = vextq_s8(v24, v25, 2uLL);
    v41 = vextq_s8(v25, v7, 2uLL);
    v42 = vcgtq_u16(v35, v41);
    v7 = vcgtq_u16(v41, v35);
    v43 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v36), vcgtq_u16(v36, v39)), vcgtq_u16(v36, v40)), vcgtq_u16(v40, v36))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v35), vcgtq_u16(v35, v34)), v42), v7)), v31));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v36, *v43.i8), 0), v32), v36);
    result[1] = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v43), 0), v32), v35);
    v11 = vld1q_dup_s16(v33++);
    --v27;
    result = (result + v28);
    *a5 = v35.i16[7];
    v17 = v36;
    v18 = v35;
    a5 = v33;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773D6CD4(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[1].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v16 = *result;
  v17 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v19 = 2 * a2;
  v20 = v8 + 1;
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22.i64[0] = 0xFE00FE00FE00FE00;
  v22.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v23 = v16;
    v24 = v17;
    _X10 = result->i64 + v19;
    v16 = *(result + 2 * a2);
    v17 = *(&result[1] + v19);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i16[7];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v23), vcgtq_u16(v23, v10)), vcgtq_u16(v23, v16)), vcgtq_u16(v16, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v24), vcgtq_u16(v24, v9)), vcgtq_u16(v24, v17)), vcgtq_u16(v17, v24))), v21));
    --v20;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v19);
    v10 = v23;
    v9 = v24;
  }

  while (v20 > 1);
  return result;
}

int16x8_t *sub_2773D6DCC(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFE00FE00FE00FE00;
  v15.i64[1] = 0xFE00FE00FE00FE00;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v24 = vld1q_dup_s16(v16++);
    *a5 = v18.i16[7];
    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[0];
    v25 = vextq_s8(v24, v17, 0xEuLL);
    v26 = vextq_s8(v17, v18, 0xEuLL);
    v27 = vextq_s8(v17, v18, 2uLL);
    v28 = vextq_s8(v18, v7, 2uLL);
    v29 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v25)), vcgtq_u16(v25, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v18), vcgtq_u16(v18, v26)), vcgtq_u16(v18, v28)), vcgtq_u16(v28, v18))), v14));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v29.i8), 0), v15);
    *result = vbslq_s8(v13, v7, v17);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v29), 0), v15), v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D6EC0(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  v10.i64[0] = 0xFE00FE00FE00FE00;
  v10.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    v11 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    *a5++ = HIWORD(*result);
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v11, vqtbl2_s8(*&v7, vshrn_n_s16(v11, 4uLL))), 0), v10);
    result = (result + 2 * a2);
    --v9;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773D6F0C(int16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AED28(result->i8, a2, a3, a4, a5, _X5, 8, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result->u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = *_X5;
  i16 = _X5[1].i16;
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 1;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s16(i16);
  *a5 = HIWORD(*result);
  v20 = (a5 + 1);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v24.i64[0] = 0x2000200020002;
  v24.i64[1] = 0x2000200020002;
  v25.i64[0] = 0x3000300030003;
  v25.i64[1] = 0x3000300030003;
  v26.i64[0] = 0xFE00FE00FE00FE00;
  v26.i64[1] = 0xFE00FE00FE00FE00;
  v27 = v20;
  do
  {
    _X12 = result[1].i64 + v21;
    v29 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v31 = vld1q_dup_s16(v27++);
    *v20 = v29.i16[7];
    v32 = vextq_s8(v9, v19, 2uLL);
    v33 = vextq_s8(v31, v29, 0xEuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v32), v25, v24), vcgtq_u16(v32, v17)), vcgtq_u16(v17, v33)), vcgtq_u16(v33, v17))))), 0), v26), v17);
    v34 = result[1].i16;
    --v22;
    result = (result + v21);
    v19 = vld1q_dup_s16(v34);
    v20 = v27;
    v9 = v17;
    v17 = v29;
  }

  while (v22 > 1);
  return result;
}

int16x8_t *sub_2773D7068(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AF1A4(result->i8, a2, a3, a4, a5, a6, 8u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 1);
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result->i16[v13 * a2 + 7];
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v28.i64[0] = 0x2000200020002;
  v28.i64[1] = 0x2000200020002;
  v29.i64[0] = 0x3000300030003;
  v29.i64[1] = 0x3000300030003;
  v30.i64[0] = 0xFE00FE00FE00FE00;
  v30.i64[1] = 0xFE00FE00FE00FE00;
  v31 = a5;
  do
  {
    _X13 = result[1].i64 + v25;
    v33 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i16[0] = result[(a4 >> 1) & 1].i16[a2];
    v35 = vextq_s8(v11, v16, 0xEuLL);
    v36 = vextq_s8(v33, v7, 2uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v35), v29, v28);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v9, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v35, v23)), vcgtq_u16(v23, v36)), vcgtq_u16(v36, v23))))), 0), v30), v23);
    v11 = vld1q_dup_s16(v31++);
    --v26;
    result = (result + v25);
    *a5 = v23.i16[7];
    v16 = v23;
    v23 = v33;
    a5 = v31;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773D71D4(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result->i16[v8 * a2 + 7];
  v10 = *a6;
  _X5 = a6 + 1;
  v11 = v10;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v18 = *result;
  __asm { PRFM            #0, [X8] }

  v20 = 2 * a2;
  v21 = v8 + 1;
  v22.i64[0] = 0x2000200020002;
  v22.i64[1] = 0x2000200020002;
  v23.i64[0] = 0x3000300030003;
  v23.i64[1] = 0x3000300030003;
  v24.i64[0] = 0xFE00FE00FE00FE00;
  v24.i64[1] = 0xFE00FE00FE00FE00;
  do
  {
    _X11 = result[1].i64 + v20;
    v26 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v18.i16[7];
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v18, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v18, v11), v23, v22), vcgtq_u16(v11, v18)), vcgtq_u16(v18, v26)), vcgtq_u16(v26, v18))))), 0), v24);
    result = (result + v20);
    v11 = v18;
    v18 = v26;
  }

  while (v21 > 1);
  return result;
}

int8x16_t *sub_2773D72A4(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v11.i64[0] = 0x2000200020002;
  v11.i64[1] = 0x2000200020002;
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v13.i64[0] = 0xFE00FE00FE00FE00;
  v13.i64[1] = 0xFE00FE00FE00FE00;
  v14 = a5;
  do
  {
    v15 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v21 = vld1q_dup_s16(v14++);
    v22 = vextq_s8(v21, *result, 0xEuLL);
    *a5 = HIWORD(*result);
    v7.i16[0] = result[(a4 >> 1) & 1].i16[0];
    v23 = vextq_s8(v15, v7, 2uLL);
    v24 = vcgtq_u16(v15, v23);
    v7 = vcgtq_u16(v23, v15);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v15, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v15, v22), v12, v11), vcgtq_u16(v22, v15)), v24), v7)))), 0), v13), v15);
    result = (result + 2 * a2);
    --v9;
    a5 = v14;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773D7354(int16x8_t *result, uint64_t a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i < a4; i += 4)
    {
      if (a3 >= 1)
      {
        v5 = 0;
        v6 = result;
        do
        {
          v7 = *(v6 + 6 * a2);
          v8 = vshlq_n_s16(*(v6 + 2 * a2), 6uLL);
          v9 = vshlq_n_s16(*(v6 + 4 * a2), 6uLL);
          *v6 = vshlq_n_s16(*v6, 6uLL);
          *(v6 + 2 * a2) = v8;
          *(v6 + 4 * a2) = v9;
          *(v6 + 6 * a2) = vshlq_n_s16(v7, 6uLL);
          v5 += 8;
          ++v6;
        }

        while (v5 < a3);
      }

      result = (result + 8 * a2);
    }
  }

  return result;
}

int16x8_t *sub_2773D73DC(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  _X9 = result + 6;
  v11.i64[0] = 0xFC00FC00FC00FC00;
  v11.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v12 = _X9[-6];
    v13 = _X9[-5];
    v14 = _X9[-4];
    v15 = _X9[-3];
    v16 = _X9[-2];
    v17 = _X9[-1];
    v18 = *_X9;
    v19 = _X9[1];
    __asm
    {
      PRFM            #0, [X9,#0x20]
      PRFM            #0, [X9,#0x60]
    }

    *a5++ = v19.i16[7];
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 5uLL), v13, 5uLL));
    v27 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v26.i8), 0), v11);
    v28 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v26), 0), v11);
    v29 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 5uLL), v15, 5uLL));
    v30 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v29.i8), 0), v11);
    v31 = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v29), 0), v11);
    v32 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v16, 5uLL), v17, 5uLL));
    v33 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v32.i8), 0), v11);
    v34 = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v32), 0), v11);
    v35 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v18, 5uLL), v19, 5uLL));
    _X9[-6] = v27;
    _X9[-5] = v28;
    _X9[-4] = v30;
    _X9[-3] = v31;
    _X9[-2] = v33;
    _X9[-1] = v34;
    *_X9 = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v35.i8), 0), v11);
    _X9[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v35), 0), v11);
    --v9;
    _X9 = (_X9 + 2 * a2);
  }

  while (v9 > 1);
  return result;
}

int8x16_t *sub_2773D74C4(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774AD2A8(result->i8, a2, a3, a4, a5, _X5, 64, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 0x40) != 0)
    {
      a5[a7] = result->u16[a7 * a2 - 1];
    }

    if ((a4 & 4) == 0)
    {
      *a5++ = result[7].u16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
    }

    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D1E0);
    v12 = vandq_s8(v10, xmmword_27750D260);
    v14 = *_X5;
    v13 = _X5[1];
    v16 = _X5[2];
    v15 = _X5[3];
    v18 = _X5[4];
    v17 = _X5[5];
    v19 = _X5[6];
    v20 = _X5[7];
    i16 = _X5[8].i16;
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = result[1];
    v30 = result[2];
    v31 = result[3];
    v32 = result + 6;
    v33 = result[6];
    v34 = result[4];
    v35 = result[5];
    v36 = 2 * a2;
    v37 = ((__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32) + 1;
    v38 = result[7];
    __asm { PRFM            #0, [X0,#0x80] }

    v40 = vceqzq_s16(v12);
    v41 = vceqzq_s16(v11);
    __asm { PRFM            #0, [X0,#0xC0] }

    v43.i64[0] = 0x202020202020202;
    v43.i64[1] = 0x202020202020202;
    v44.i64[0] = 0xFC00FC00FC00FC00;
    v44.i64[1] = 0xFC00FC00FC00FC00;
    v45 = vld1q_dup_s16(i16);
    *a5 = v38.u16[7];
    v46 = (a5 + 1);
    v47 = v46;
    do
    {
      v48 = vextq_s8(v19, v20, 2uLL);
      v49 = v38;
      v50 = vextq_s8(v17, v19, 2uLL);
      v19 = v33;
      v51 = vextq_s8(v18, v17, 2uLL);
      v17 = v35;
      v52 = vextq_s8(v15, v18, 2uLL);
      v18 = v34;
      v53 = vextq_s8(v16, v15, 2uLL);
      v15 = v31;
      v54 = vextq_s8(v13, v16, 2uLL);
      v16 = v30;
      v55 = vextq_s8(v14, v13, 2uLL);
      v13 = v29;
      v14 = v28;
      _X12 = &v32->i8[v36];
      v28 = *(&v32[-6] + v36);
      v29 = *(&v32[-5] + v36);
      v30 = *(&v32[-4] + v36);
      v31 = *(&v32[-3] + v36);
      v34 = *(&v32[-2] + v36);
      v35 = *(&v32[-1] + v36);
      v33 = *(v32 + 2 * a2);
      v38 = *(&v32[1] + v36);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v59 = vld1q_dup_s16(v47++);
      v60 = vextq_s8(v20, v45, 2uLL);
      v61 = vextq_s8(v59, v28, 0xEuLL);
      v62 = vextq_s8(v28, v29, 0xEuLL);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v14), vcgtq_u16(v14, v55)), vcgtq_u16(v14, v61)), vcgtq_u16(v61, v14));
      v64 = vextq_s8(v29, v30, 0xEuLL);
      v65 = vqmovn_high_s16(vqmovn_s16(v63), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v13), vcgtq_u16(v13, v54)), vcgtq_u16(v13, v62)), vcgtq_u16(v62, v13)));
      v66 = vextq_s8(v30, v31, 0xEuLL);
      v67 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v16), vcgtq_u16(v16, v53)), vcgtq_u16(v16, v64)), vcgtq_u16(v64, v16));
      v68 = vextq_s8(v31, v34, 0xEuLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v67), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v15), vcgtq_u16(v15, v52)), vcgtq_u16(v15, v66)), vcgtq_u16(v66, v15)));
      v70 = vextq_s8(v34, v35, 0xEuLL);
      v71 = vextq_s8(v35, v33, 0xEuLL);
      v72 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v18), vcgtq_u16(v18, v51)), vcgtq_u16(v18, v68)), vcgtq_u16(v68, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v17), vcgtq_u16(v17, v50)), vcgtq_u16(v17, v70)), vcgtq_u16(v70, v17)));
      v73 = vextq_s8(v33, v38, 0xEuLL);
      *v46 = v38.i16[7];
      v74 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v60, v49), vcgtq_u16(v49, v60)), vcgtq_u16(v49, v73)), vcgtq_u16(v73, v49));
      v75 = vqtbl1q_s8(v9, vaddq_s8(v65, v43));
      v76 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v19), vcgtq_u16(v19, v48)), vcgtq_u16(v19, v71)), vcgtq_u16(v71, v19))), v74);
      v32[-6] = vbslq_s8(v41, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v75.i8), 0), v44), v14);
      v32[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v75), 0), v44);
      v77 = vqtbl1q_s8(v9, vaddq_s8(v69, v43));
      v32[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v44);
      v32[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v44);
      v78 = vqtbl1q_s8(v9, vaddq_s8(v72, v43));
      v32[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v78.i8), 0), v44);
      v32[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v78), 0), v44);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v76, v43));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v79.i8), 0), v44);
      v32[1] = vbslq_s8(v40, vminq_s16(vmaxq_s16(vaddw_high_s8(v49, v79), 0), v44), v49);
      v80 = v32[2].i16;
      --v37;
      v32 = (v32 + v36);
      v46 = v47;
      v20 = v49;
      v45 = vld1q_dup_s16(v80);
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t *sub_2773D7838(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774AD724(result->i8, a2, a3, a4, a5, _X5, 0x40u, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i16[7];
      v11 = vld1q_dup_s16(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_s16(v10++);
      *a5 = result[7].i16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
      a5 = v10;
    }

    v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
    a5[v13] = result[7].i16[v13 * a2 + 7];
    v14 = vdupq_n_s16(~a4);
    v15 = vandq_s8(v14, xmmword_27750D1E0);
    v16 = vandq_s8(v14, xmmword_27750D260);
    v18 = *_X5;
    v17 = _X5[1];
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
    v32 = result[1];
    v33 = result[2];
    v34 = result[3];
    v35 = result[4];
    v36 = result[5];
    v37 = result + 6;
    v38 = result[6];
    v39 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = v13 + 1;
    v43 = 2 * a2;
    v44 = vceqzq_s16(v16);
    v45 = vceqzq_s16(v15);
    v46.i64[0] = 0x202020202020202;
    v46.i64[1] = 0x202020202020202;
    v47.i64[0] = 0xFC00FC00FC00FC00;
    v47.i64[1] = 0xFC00FC00FC00FC00;
    v48 = a5;
    do
    {
      v49 = vextq_s8(v24, v23, 0xEuLL);
      v23 = v39;
      v50 = vextq_s8(v21, v24, 0xEuLL);
      v24 = v38;
      v51 = vextq_s8(v22, v21, 0xEuLL);
      v21 = v36;
      v52 = vextq_s8(v19, v22, 0xEuLL);
      v22 = v35;
      v53 = vextq_s8(v20, v19, 0xEuLL);
      v19 = v34;
      v54 = vextq_s8(v17, v20, 0xEuLL);
      v20 = v33;
      v55 = vextq_s8(v18, v17, 0xEuLL);
      v17 = v32;
      v56 = vextq_s8(v11, v18, 0xEuLL);
      v18 = v31;
      _X13 = &v37->i8[v43];
      v31 = *(&v37[-6] + v43);
      v32 = *(&v37[-5] + v43);
      v33 = *(&v37[-4] + v43);
      v34 = *(&v37[-3] + v43);
      v35 = *(&v37[-2] + v43);
      v36 = *(&v37[-1] + v43);
      v58 = vextq_s8(v31, v32, 2uLL);
      v59 = vextq_s8(v32, v33, 2uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v56, v18), vcgtq_u16(v18, v56)), vcgtq_u16(v18, v58)), vcgtq_u16(v58, v18));
      v61 = vextq_s8(v33, v34, 2uLL);
      v62 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v17), vcgtq_u16(v17, v55)), vcgtq_u16(v17, v59)), vcgtq_u16(v59, v17));
      v63 = vextq_s8(v34, v35, 2uLL);
      v64 = vqmovn_high_s16(vqmovn_s16(v60), v62);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v20), vcgtq_u16(v20, v54)), vcgtq_u16(v20, v61)), vcgtq_u16(v61, v20));
      v66 = vsubq_s16(vsubq_s16(vcgtq_u16(v53, v19), vcgtq_u16(v19, v53)), vcgtq_u16(v19, v63));
      v38 = *(v37 + 2 * a2);
      v39 = *(&v37[1] + v43);
      v67 = vaddq_s16(v66, vcgtq_u16(v63, v19));
      v68 = vextq_s8(v35, v36, 2uLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v65), v67);
      v70 = vextq_s8(v36, v38, 2uLL);
      v71 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v22), vcgtq_u16(v22, v52)), vcgtq_u16(v22, v68)), vcgtq_u16(v68, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v74 = vextq_s8(v38, v39, 2uLL);
      v75 = vqmovn_high_s16(vqmovn_s16(v71), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v21), vcgtq_u16(v21, v51)), vcgtq_u16(v21, v70)), vcgtq_u16(v70, v21)));
      v76 = vcgtq_u16(v24, v74);
      v77 = vsubq_s16(vsubq_s16(vcgtq_u16(v50, v24), vcgtq_u16(v24, v50)), v76);
      v76.i32[0] = v37[8 * ((a4 >> 1) & 1) - 6].u16[a2];
      v78 = vextq_s8(v39, v76, 2uLL);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v64, v46));
      v80 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v77, vcgtq_u16(v74, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v23), vcgtq_u16(v23, v49)), vcgtq_u16(v23, v78)), vcgtq_u16(v78, v23)));
      v37[-6] = vbslq_s8(v45, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v79.i8), 0), v47), v18);
      v37[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v79), 0), v47);
      v81 = vqtbl1q_s8(v9, vaddq_s8(v69, v46));
      v37[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v81.i8), 0), v47);
      v37[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v81), 0), v47);
      v82 = vqtbl1q_s8(v9, vaddq_s8(v75, v46));
      v37[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v82.i8), 0), v47);
      v37[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v82), 0), v47);
      v83 = vqtbl1q_s8(v9, vaddq_s8(v80, v46));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v83.i8), 0), v47);
      v37[1] = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v83), 0), v47), v23);
      v11 = vld1q_dup_s16(v48++);
      --v42;
      v37 = (v37 + v43);
      *a5 = v23.i16[7];
      a5 = v48;
    }

    while (v42 > 1);
  }

  return result;
}

uint64_t sub_2773D7BB8(uint64_t result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 126);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = *(result + 2 * v8 * a2 + 126);
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  v14 = _X5[4];
  v13 = _X5[5];
  v16 = _X5[6];
  v15 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v23 = *result;
  v24 = *(result + 16);
  v25 = *(result + 32);
  v26 = *(result + 48);
  v27 = *(result + 64);
  v28 = *(result + 80);
  v29 = (result + 96);
  v30 = *(result + 96);
  v31 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v34 = v8 + 1;
  v35 = 2 * a2;
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xFC00FC00FC00FC00;
  v37.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v38 = v31;
    v39 = v30;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v44 = v24;
    v45 = v23;
    _X11 = &v29->i8[v35];
    v23 = *(&v29[-6] + v35);
    v24 = *(&v29[-5] + v35);
    v25 = *(&v29[-4] + v35);
    v26 = *(&v29[-3] + v35);
    v27 = *(&v29[-2] + v35);
    v28 = *(&v29[-1] + v35);
    v30 = *(v29 + 2 * a2);
    v31 = *(&v29[1] + v35);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i16[7];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v45), vcgtq_u16(v45, v10)), vcgtq_u16(v45, v23)), vcgtq_u16(v23, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v44), vcgtq_u16(v44, v9)), vcgtq_u16(v44, v24)), vcgtq_u16(v24, v44))), v36));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v43), vcgtq_u16(v43, v12)), vcgtq_u16(v43, v25)), vcgtq_u16(v25, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v42), vcgtq_u16(v42, v11)), vcgtq_u16(v42, v26)), vcgtq_u16(v26, v42))), v36));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v41), vcgtq_u16(v41, v14)), vcgtq_u16(v41, v27)), vcgtq_u16(v27, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v40), vcgtq_u16(v40, v13)), vcgtq_u16(v40, v28)), vcgtq_u16(v28, v40))), v36));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v39), vcgtq_u16(v39, v16)), vcgtq_u16(v39, v30)), vcgtq_u16(v30, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v38), vcgtq_u16(v38, v15)), vcgtq_u16(v38, v31)), vcgtq_u16(v31, v38))), v36));
    v29[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v29[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v29[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v29[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v29[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v29[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v34;
    *v29 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v29[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v29 = (v29 + v35);
    v10 = v45;
    v9 = v44;
    v12 = v43;
    v11 = v42;
    v14 = v41;
    v13 = v40;
    v16 = v39;
    v15 = v38;
  }

  while (v34 > 1);
  return result;
}

int16x8_t *sub_2773D7E64(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFC00FC00FC00FC00;
  v15.i64[1] = 0xFC00FC00FC00FC00;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v19 = result[2];
    v20 = result[3];
    v21 = result[4];
    v22 = result[5];
    v24 = result[6];
    v23 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v31 = vld1q_dup_s16(v16++);
    *a5 = v23.i16[7];
    v32 = vextq_s8(v31, v17, 0xEuLL);
    v33 = vextq_s8(v17, v18, 0xEuLL);
    v34 = vextq_s8(v18, v19, 0xEuLL);
    v35 = vextq_s8(v19, v20, 0xEuLL);
    v36 = vextq_s8(v20, v21, 0xEuLL);
    v37 = vextq_s8(v21, v22, 0xEuLL);
    v38 = vextq_s8(v22, v24, 0xEuLL);
    v39 = vextq_s8(v24, v23, 0xEuLL);
    v40 = vextq_s8(v17, v18, 2uLL);
    v41 = vextq_s8(v18, v19, 2uLL);
    v42 = vextq_s8(v19, v20, 2uLL);
    v43 = vextq_s8(v20, v21, 2uLL);
    v44 = vextq_s8(v21, v22, 2uLL);
    v45 = vextq_s8(v22, v24, 2uLL);
    v46 = vextq_s8(v24, v23, 2uLL);
    v7.i16[0] = result[8 * ((a4 >> 1) & 1)].i16[0];
    v47 = vextq_s8(v23, v7, 2uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v32)), vcgtq_u16(v32, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v18), vcgtq_u16(v18, v33)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), v14));
    v49 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v19), vcgtq_u16(v19, v34)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v20), vcgtq_u16(v20, v35)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), v14));
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v44)), vcgtq_u16(v44, v21))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v37, v22), vcgtq_u16(v22, v37)), vcgtq_u16(v22, v45)), vcgtq_u16(v45, v22))), v14));
    v51 = vminq_s16(vmaxq_s16(vaddw_s8(v21, *v50.i8), 0), v15);
    v52 = vminq_s16(vmaxq_s16(vaddw_high_s8(v22, v50), 0), v15);
    v53 = vcgtq_u16(v23, v47);
    v7 = vcgtq_u16(v47, v23);
    v54 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v24), vcgtq_u16(v24, v38)), vcgtq_u16(v24, v46)), vcgtq_u16(v46, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v23), vcgtq_u16(v23, v39)), v53), v7)), v14));
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v48.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v48), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v49.i8), 0), v15);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v49), 0), v15);
    result[4] = v51;
    result[5] = v52;
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v54.i8), 0), v15);
    result[7] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v54), 0), v15), v23);
    --v11;
    result = (result + 2 * a2);
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D80E4(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 2;
  v10 = a7 + 1;
  v11.i64[0] = 0xFC00FC00FC00FC00;
  v11.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v12 = _X8[-2];
    v13 = _X8[-1];
    v14 = *_X8;
    v15 = _X8[1];
    __asm { PRFM            #0, [X8,#0x20] }

    *a5++ = v15.i16[7];
    v21 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 5uLL), v13, 5uLL));
    v22 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v21.i8), 0), v11);
    v23 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v21), 0), v11);
    v24 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 5uLL), v15, 5uLL));
    _X8[-2] = v22;
    _X8[-1] = v23;
    *_X8 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v24.i8), 0), v11);
    _X8[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v24), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D8170(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AD2A8(result->i8, a2, a3, a4, a5, _X5, 32, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  v14 = _X5[2];
  v15 = _X5[3];
  i16 = _X5[4].i16;
  __asm { PRFM            #0, [X5,#0x40] }

  v22 = *result;
  v23 = result[1];
  v24 = result[2];
  v25 = result[3];
  v26 = result[4].i16;
  __asm { PRFM            #0, [X0,#0x40] }

  v28 = vld1q_dup_s16(i16);
  *a5 = v25.u16[7];
  v29 = (a5 + 1);
  v30 = a2;
  v31 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v32 = vceqzq_s16(v11);
  v33 = vceqzq_s16(v10);
  v34.i64[0] = 0x202020202020202;
  v34.i64[1] = 0x202020202020202;
  v35.i64[0] = 0xFC00FC00FC00FC00;
  v35.i64[1] = 0xFC00FC00FC00FC00;
  v36 = v29;
  do
  {
    v37 = v25;
    v38 = vextq_s8(v12, v14, 2uLL);
    v39 = v24;
    v40 = vextq_s8(v13, v12, 2uLL);
    v12 = v23;
    v13 = v22;
    _X12 = &v26[v30];
    v22 = *&v26[v30 - 32];
    v23 = *&v26[v30 - 24];
    v24 = *&v26[v30 - 16];
    v25 = *&v26[v30 - 8];
    __asm { PRFM            #0, [X12] }

    v43 = vld1q_dup_s16(v36++);
    v44 = vextq_s8(v14, v15, 2uLL);
    v45 = vextq_s8(v15, v28, 2uLL);
    *v29 = v25.i16[7];
    v46 = vextq_s8(v43, v22, 0xEuLL);
    v47 = vextq_s8(v22, v23, 0xEuLL);
    v48 = vextq_s8(v23, v24, 0xEuLL);
    v49 = vextq_s8(v24, v25, 0xEuLL);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v13), vcgtq_u16(v13, v40)), vcgtq_u16(v13, v46)), vcgtq_u16(v46, v13))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v47)), vcgtq_u16(v47, v12))), v34));
    v51 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v44, v39), vcgtq_u16(v39, v44)), vcgtq_u16(v39, v48)), vcgtq_u16(v48, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v45, v37), vcgtq_u16(v37, v45)), vcgtq_u16(v37, v49)), vcgtq_u16(v49, v37))), v34));
    *(v26 - 4) = vbslq_s8(v33, vminq_s16(vmaxq_s16(vaddw_s8(v13, *v50.i8), 0), v35), v13);
    *(v26 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v12, v50), 0), v35);
    *(v26 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v51.i8), 0), v35);
    *(v26 - 1) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_high_s8(v37, v51), 0), v35), v37);
    v28 = vld1q_dup_s16(v26);
    --v31;
    v26 = (v26 + v30 * 2);
    v29 = v36;
    v14 = v39;
    v15 = v37;
  }

  while (v31 > 1);
  return result;
}

int8x16_t *sub_2773D8398(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AD724(result->i8, a2, a3, a4, a5, _X5, 0x20u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[3].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = result[1];
  v28 = result + 2;
  v29 = result[2];
  v30 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xFC00FC00FC00FC00;
  v37.i64[1] = 0xFC00FC00FC00FC00;
  v38 = a5;
  do
  {
    v39 = vextq_s8(v20, v19, 0xEuLL);
    v19 = v30;
    v40 = vextq_s8(v17, v20, 0xEuLL);
    v20 = v29;
    v41 = vextq_s8(v18, v17, 0xEuLL);
    v17 = v27;
    v42 = vextq_s8(v11, v18, 0xEuLL);
    v18 = v26;
    _X13 = &v28->i8[v33];
    v26 = *(&v28[-2] + v33);
    v27 = *(&v28[-1] + v33);
    v29 = *(v28 + 2 * a2);
    v30 = *(&v28[1] + v33);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = v28[4 * ((a4 >> 1) & 1) - 2].u16[a2];
    v45 = vextq_s8(v26, v27, 2uLL);
    v46 = vextq_s8(v27, v29, 2uLL);
    v47 = vextq_s8(v29, v30, 2uLL);
    v48 = vextq_s8(v30, v7, 2uLL);
    v49 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v18), vcgtq_u16(v18, v42)), vcgtq_u16(v18, v45)), vcgtq_u16(v45, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v17), vcgtq_u16(v17, v41)), vcgtq_u16(v17, v46)), vcgtq_u16(v46, v17))), v36));
    v50 = vcgtq_u16(v19, v48);
    v7 = vcgtq_u16(v48, v19);
    v51 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v20), vcgtq_u16(v20, v40)), vcgtq_u16(v20, v47)), vcgtq_u16(v47, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v19), vcgtq_u16(v19, v39)), v50), v7)), v36));
    v28[-2] = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v49.i8), 0), v37), v18);
    v28[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v49), 0), v37);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v51.i8), 0), v37);
    v28[1] = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v51), 0), v37), v19);
    v11 = vld1q_dup_s16(v38++);
    --v32;
    v28 = (v28 + v33);
    *a5 = v19.i16[7];
    a5 = v38;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773D85D8(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[3].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v18 = *result;
  v19 = result[1];
  v20 = result[2];
  v21 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v23 = v8 + 1;
  v24 = 2 * a2;
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26.i64[0] = 0xFC00FC00FC00FC00;
  v26.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    _X10 = result->i64 + v24;
    v18 = *(result + 2 * a2);
    v19 = *(&result[1] + v24);
    v20 = *(&result[2] + v24);
    v21 = *(&result[3] + v24);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i16[7];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v27), vcgtq_u16(v27, v10)), vcgtq_u16(v27, v18)), vcgtq_u16(v18, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v28), vcgtq_u16(v28, v9)), vcgtq_u16(v28, v19)), vcgtq_u16(v19, v28))), v25));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v29), vcgtq_u16(v29, v12)), vcgtq_u16(v29, v20)), vcgtq_u16(v20, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v30), vcgtq_u16(v30, v11)), vcgtq_u16(v30, v21)), vcgtq_u16(v21, v30))), v25));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v23;
    result = (result + v24);
    v10 = v27;
    v9 = v28;
    v12 = v29;
    v11 = v30;
  }

  while (v23 > 1);
  return result;
}

int16x8_t *sub_2773D8750(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFC00FC00FC00FC00;
  v15.i64[1] = 0xFC00FC00FC00FC00;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v20 = result[2];
    v19 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v26 = vld1q_dup_s16(v16++);
    *a5 = v19.i16[7];
    v7.i16[0] = result[4 * ((a4 >> 1) & 1)].i16[0];
    v27 = vextq_s8(v26, v17, 0xEuLL);
    v28 = vextq_s8(v17, v18, 0xEuLL);
    v29 = vextq_s8(v18, v20, 0xEuLL);
    v30 = vextq_s8(v20, v19, 0xEuLL);
    v31 = vextq_s8(v17, v18, 2uLL);
    v32 = vextq_s8(v18, v20, 2uLL);
    v33 = vextq_s8(v20, v19, 2uLL);
    v34 = vextq_s8(v19, v7, 2uLL);
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v18), vcgtq_u16(v18, v28)), vcgtq_u16(v18, v32)), vcgtq_u16(v32, v18))), v14));
    v36 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v20), vcgtq_u16(v20, v29)), vcgtq_u16(v20, v33)), vcgtq_u16(v33, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v19), vcgtq_u16(v19, v30)), vcgtq_u16(v19, v34)), vcgtq_u16(v34, v19))), v14));
    v37 = vaddw_s8(v20, *v36.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v36), 0), v15);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v35.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(v37, 0), v15);
    result[3] = vbslq_s8(v12, v7, v19);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D88BC(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 1;
  v10 = a7 + 1;
  v11.i64[0] = 0xFC00FC00FC00FC00;
  v11.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v12 = _X8[-1];
    v13 = *_X8;
    __asm { PRFM            #0, [X8,#0x10] }

    *a5++ = HIWORD(*_X8);
    v19 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 5uLL), v13, 5uLL));
    _X8[-1] = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v19.i8), 0), v11);
    *_X8 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v19), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773D891C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AD2A8(result->i8, a2, a3, a4, a5, _X5, 16, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  i16 = _X5[2].i16;
  __asm { PRFM            #0, [X5,#0x20] }

  v20 = *result;
  v21 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v23 = vld1q_dup_s16(i16);
  *a5 = v21.u16[7];
  v24 = (a5 + 1);
  v25 = 2 * a2;
  v26 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v27 = vceqzq_s16(v11);
  v28 = vceqzq_s16(v10);
  v29.i64[0] = 0x202020202020202;
  v29.i64[1] = 0x202020202020202;
  v30.i64[0] = 0xFC00FC00FC00FC00;
  v30.i64[1] = 0xFC00FC00FC00FC00;
  v31 = v24;
  do
  {
    v32 = vextq_s8(v13, v12, 2uLL);
    v33 = v21;
    v34 = v20;
    _X11 = &result->i8[v25];
    v20 = *(result + 2 * a2);
    v21 = *(&result[1] + v25);
    __asm { PRFM            #0, [X11,#0x20] }

    v37 = vld1q_dup_s16(v31++);
    v38 = vextq_s8(v12, v23, 2uLL);
    *v24 = v21.i16[7];
    v39 = vextq_s8(v37, v20, 0xEuLL);
    v40 = vextq_s8(v20, v21, 0xEuLL);
    v41 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v34), vcgtq_u16(v34, v32)), vcgtq_u16(v34, v39)), vcgtq_u16(v39, v34))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v33), vcgtq_u16(v33, v38)), vcgtq_u16(v33, v40)), vcgtq_u16(v40, v33))), v29));
    *result = vbslq_s8(v28, vminq_s16(vmaxq_s16(vaddw_s8(v34, *v41.i8), 0), v30), v34);
    result[1] = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_high_s8(v33, v41), 0), v30), v33);
    v42 = result[2].i16;
    --v26;
    result = (result + v25);
    v23 = vld1q_dup_s16(v42);
    v24 = v31;
    v13 = v34;
    v12 = v33;
  }

  while (v26 > 1);
  return result;
}

int8x16_t *sub_2773D8ABC(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AD724(result->i8, a2, a3, a4, a5, _X5, 0x10u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[1].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0x202020202020202;
  v31.i64[1] = 0x202020202020202;
  v32.i64[0] = 0xFC00FC00FC00FC00;
  v32.i64[1] = 0xFC00FC00FC00FC00;
  v33 = a5;
  do
  {
    v34 = vextq_s8(v17, v18, 0xEuLL);
    v35 = v25;
    v36 = v24;
    _X12 = &result->i8[v28];
    v24 = *(result + 2 * a2);
    v25 = *(&result[1] + v28);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[a2];
    v39 = vextq_s8(v11, v17, 0xEuLL);
    v40 = vextq_s8(v24, v25, 2uLL);
    v41 = vextq_s8(v25, v7, 2uLL);
    v42 = vcgtq_u16(v35, v41);
    v7 = vcgtq_u16(v41, v35);
    v43 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v36), vcgtq_u16(v36, v39)), vcgtq_u16(v36, v40)), vcgtq_u16(v40, v36))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v35), vcgtq_u16(v35, v34)), v42), v7)), v31));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v36, *v43.i8), 0), v32), v36);
    result[1] = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v43), 0), v32), v35);
    v11 = vld1q_dup_s16(v33++);
    --v27;
    result = (result + v28);
    *a5 = v35.i16[7];
    v17 = v36;
    v18 = v35;
    a5 = v33;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773D8C6C(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[1].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v16 = *result;
  v17 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v19 = 2 * a2;
  v20 = v8 + 1;
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22.i64[0] = 0xFC00FC00FC00FC00;
  v22.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v23 = v16;
    v24 = v17;
    _X10 = result->i64 + v19;
    v16 = *(result + 2 * a2);
    v17 = *(&result[1] + v19);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i16[7];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v23), vcgtq_u16(v23, v10)), vcgtq_u16(v23, v16)), vcgtq_u16(v16, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v24), vcgtq_u16(v24, v9)), vcgtq_u16(v24, v17)), vcgtq_u16(v17, v24))), v21));
    --v20;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v19);
    v10 = v23;
    v9 = v24;
  }

  while (v20 > 1);
  return result;
}

int16x8_t *sub_2773D8D64(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xFC00FC00FC00FC00;
  v15.i64[1] = 0xFC00FC00FC00FC00;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v24 = vld1q_dup_s16(v16++);
    *a5 = v18.i16[7];
    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[0];
    v25 = vextq_s8(v24, v17, 0xEuLL);
    v26 = vextq_s8(v17, v18, 0xEuLL);
    v27 = vextq_s8(v17, v18, 2uLL);
    v28 = vextq_s8(v18, v7, 2uLL);
    v29 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v25)), vcgtq_u16(v25, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v18), vcgtq_u16(v18, v26)), vcgtq_u16(v18, v28)), vcgtq_u16(v28, v18))), v14));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v29.i8), 0), v15);
    *result = vbslq_s8(v13, v7, v17);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v29), 0), v15), v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773D8E58(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  v10.i64[0] = 0xFC00FC00FC00FC00;
  v10.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    v11 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    *a5++ = HIWORD(*result);
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v11, vqtbl2_s8(*&v7, vshrn_n_s16(v11, 5uLL))), 0), v10);
    result = (result + 2 * a2);
    --v9;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773D8EA4(int16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AD2A8(result->i8, a2, a3, a4, a5, _X5, 8, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result->u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = *_X5;
  i16 = _X5[1].i16;
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 1;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s16(i16);
  *a5 = HIWORD(*result);
  v20 = (a5 + 1);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v24.i64[0] = 0x2000200020002;
  v24.i64[1] = 0x2000200020002;
  v25.i64[0] = 0x3000300030003;
  v25.i64[1] = 0x3000300030003;
  v26.i64[0] = 0xFC00FC00FC00FC00;
  v26.i64[1] = 0xFC00FC00FC00FC00;
  v27 = v20;
  do
  {
    _X12 = result[1].i64 + v21;
    v29 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v31 = vld1q_dup_s16(v27++);
    *v20 = v29.i16[7];
    v32 = vextq_s8(v9, v19, 2uLL);
    v33 = vextq_s8(v31, v29, 0xEuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v32), v25, v24), vcgtq_u16(v32, v17)), vcgtq_u16(v17, v33)), vcgtq_u16(v33, v17))))), 0), v26), v17);
    v34 = result[1].i16;
    --v22;
    result = (result + v21);
    v19 = vld1q_dup_s16(v34);
    v20 = v27;
    v9 = v17;
    v17 = v29;
  }

  while (v22 > 1);
  return result;
}

int16x8_t *sub_2773D9000(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AD724(result->i8, a2, a3, a4, a5, a6, 8u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 1);
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result->i16[v13 * a2 + 7];
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v28.i64[0] = 0x2000200020002;
  v28.i64[1] = 0x2000200020002;
  v29.i64[0] = 0x3000300030003;
  v29.i64[1] = 0x3000300030003;
  v30.i64[0] = 0xFC00FC00FC00FC00;
  v30.i64[1] = 0xFC00FC00FC00FC00;
  v31 = a5;
  do
  {
    _X13 = result[1].i64 + v25;
    v33 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i16[0] = result[(a4 >> 1) & 1].i16[a2];
    v35 = vextq_s8(v11, v16, 0xEuLL);
    v36 = vextq_s8(v33, v7, 2uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v35), v29, v28);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v9, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v35, v23)), vcgtq_u16(v23, v36)), vcgtq_u16(v36, v23))))), 0), v30), v23);
    v11 = vld1q_dup_s16(v31++);
    --v26;
    result = (result + v25);
    *a5 = v23.i16[7];
    v16 = v23;
    v23 = v33;
    a5 = v31;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773D916C(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result->i16[v8 * a2 + 7];
  v10 = *a6;
  _X5 = a6 + 1;
  v11 = v10;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v18 = *result;
  __asm { PRFM            #0, [X8] }

  v20 = 2 * a2;
  v21 = v8 + 1;
  v22.i64[0] = 0x2000200020002;
  v22.i64[1] = 0x2000200020002;
  v23.i64[0] = 0x3000300030003;
  v23.i64[1] = 0x3000300030003;
  v24.i64[0] = 0xFC00FC00FC00FC00;
  v24.i64[1] = 0xFC00FC00FC00FC00;
  do
  {
    _X11 = result[1].i64 + v20;
    v26 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v18.i16[7];
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v18, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v18, v11), v23, v22), vcgtq_u16(v11, v18)), vcgtq_u16(v18, v26)), vcgtq_u16(v26, v18))))), 0), v24);
    result = (result + v20);
    v11 = v18;
    v18 = v26;
  }

  while (v21 > 1);
  return result;
}

int8x16_t *sub_2773D923C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v11.i64[0] = 0x2000200020002;
  v11.i64[1] = 0x2000200020002;
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v13.i64[0] = 0xFC00FC00FC00FC00;
  v13.i64[1] = 0xFC00FC00FC00FC00;
  v14 = a5;
  do
  {
    v15 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v21 = vld1q_dup_s16(v14++);
    v22 = vextq_s8(v21, *result, 0xEuLL);
    *a5 = HIWORD(*result);
    v7.i16[0] = result[(a4 >> 1) & 1].i16[0];
    v23 = vextq_s8(v15, v7, 2uLL);
    v24 = vcgtq_u16(v15, v23);
    v7 = vcgtq_u16(v23, v15);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v15, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v15, v22), v12, v11), vcgtq_u16(v22, v15)), v24), v7)))), 0), v13), v15);
    result = (result + 2 * a2);
    --v9;
    a5 = v14;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773D92EC(int16x8_t *result, uint64_t a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i < a4; i += 4)
    {
      if (a3 >= 1)
      {
        v5 = 0;
        v6 = result;
        do
        {
          v7 = *(v6 + 6 * a2);
          v8 = vshlq_n_s16(*(v6 + 2 * a2), 5uLL);
          v9 = vshlq_n_s16(*(v6 + 4 * a2), 5uLL);
          *v6 = vshlq_n_s16(*v6, 5uLL);
          *(v6 + 2 * a2) = v8;
          *(v6 + 4 * a2) = v9;
          *(v6 + 6 * a2) = vshlq_n_s16(v7, 5uLL);
          v5 += 8;
          ++v6;
        }

        while (v5 < a3);
      }

      result = (result + 8 * a2);
    }
  }

  return result;
}

int16x8_t *sub_2773D9374(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  _X9 = result + 6;
  v11.i64[0] = 0xF800F800F800F800;
  v11.i64[1] = 0xF800F800F800F800;
  do
  {
    v12 = _X9[-6];
    v13 = _X9[-5];
    v14 = _X9[-4];
    v15 = _X9[-3];
    v16 = _X9[-2];
    v17 = _X9[-1];
    v18 = *_X9;
    v19 = _X9[1];
    __asm
    {
      PRFM            #0, [X9,#0x20]
      PRFM            #0, [X9,#0x60]
    }

    *a5++ = v19.i16[7];
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 6uLL), v13, 6uLL));
    v27 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v26.i8), 0), v11);
    v28 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v26), 0), v11);
    v29 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 6uLL), v15, 6uLL));
    v30 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v29.i8), 0), v11);
    v31 = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v29), 0), v11);
    v32 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v16, 6uLL), v17, 6uLL));
    v33 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v32.i8), 0), v11);
    v34 = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v32), 0), v11);
    v35 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v18, 6uLL), v19, 6uLL));
    _X9[-6] = v27;
    _X9[-5] = v28;
    _X9[-4] = v30;
    _X9[-3] = v31;
    _X9[-2] = v33;
    _X9[-1] = v34;
    *_X9 = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v35.i8), 0), v11);
    _X9[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v35), 0), v11);
    --v9;
    _X9 = (_X9 + 2 * a2);
  }

  while (v9 > 1);
  return result;
}

int8x16_t *sub_2773D945C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774AB828(result->i8, a2, a3, a4, a5, _X5, 64, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 0x40) != 0)
    {
      a5[a7] = result->u16[a7 * a2 - 1];
    }

    if ((a4 & 4) == 0)
    {
      *a5++ = result[7].u16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
    }

    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D1E0);
    v12 = vandq_s8(v10, xmmword_27750D260);
    v14 = *_X5;
    v13 = _X5[1];
    v16 = _X5[2];
    v15 = _X5[3];
    v18 = _X5[4];
    v17 = _X5[5];
    v19 = _X5[6];
    v20 = _X5[7];
    i16 = _X5[8].i16;
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = result[1];
    v30 = result[2];
    v31 = result[3];
    v32 = result + 6;
    v33 = result[6];
    v34 = result[4];
    v35 = result[5];
    v36 = 2 * a2;
    v37 = ((__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32) + 1;
    v38 = result[7];
    __asm { PRFM            #0, [X0,#0x80] }

    v40 = vceqzq_s16(v12);
    v41 = vceqzq_s16(v11);
    __asm { PRFM            #0, [X0,#0xC0] }

    v43.i64[0] = 0x202020202020202;
    v43.i64[1] = 0x202020202020202;
    v44.i64[0] = 0xF800F800F800F800;
    v44.i64[1] = 0xF800F800F800F800;
    v45 = vld1q_dup_s16(i16);
    *a5 = v38.u16[7];
    v46 = (a5 + 1);
    v47 = v46;
    do
    {
      v48 = vextq_s8(v19, v20, 2uLL);
      v49 = v38;
      v50 = vextq_s8(v17, v19, 2uLL);
      v19 = v33;
      v51 = vextq_s8(v18, v17, 2uLL);
      v17 = v35;
      v52 = vextq_s8(v15, v18, 2uLL);
      v18 = v34;
      v53 = vextq_s8(v16, v15, 2uLL);
      v15 = v31;
      v54 = vextq_s8(v13, v16, 2uLL);
      v16 = v30;
      v55 = vextq_s8(v14, v13, 2uLL);
      v13 = v29;
      v14 = v28;
      _X12 = &v32->i8[v36];
      v28 = *(&v32[-6] + v36);
      v29 = *(&v32[-5] + v36);
      v30 = *(&v32[-4] + v36);
      v31 = *(&v32[-3] + v36);
      v34 = *(&v32[-2] + v36);
      v35 = *(&v32[-1] + v36);
      v33 = *(v32 + 2 * a2);
      v38 = *(&v32[1] + v36);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v59 = vld1q_dup_s16(v47++);
      v60 = vextq_s8(v20, v45, 2uLL);
      v61 = vextq_s8(v59, v28, 0xEuLL);
      v62 = vextq_s8(v28, v29, 0xEuLL);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v14), vcgtq_u16(v14, v55)), vcgtq_u16(v14, v61)), vcgtq_u16(v61, v14));
      v64 = vextq_s8(v29, v30, 0xEuLL);
      v65 = vqmovn_high_s16(vqmovn_s16(v63), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v13), vcgtq_u16(v13, v54)), vcgtq_u16(v13, v62)), vcgtq_u16(v62, v13)));
      v66 = vextq_s8(v30, v31, 0xEuLL);
      v67 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v16), vcgtq_u16(v16, v53)), vcgtq_u16(v16, v64)), vcgtq_u16(v64, v16));
      v68 = vextq_s8(v31, v34, 0xEuLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v67), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v15), vcgtq_u16(v15, v52)), vcgtq_u16(v15, v66)), vcgtq_u16(v66, v15)));
      v70 = vextq_s8(v34, v35, 0xEuLL);
      v71 = vextq_s8(v35, v33, 0xEuLL);
      v72 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v18), vcgtq_u16(v18, v51)), vcgtq_u16(v18, v68)), vcgtq_u16(v68, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v17), vcgtq_u16(v17, v50)), vcgtq_u16(v17, v70)), vcgtq_u16(v70, v17)));
      v73 = vextq_s8(v33, v38, 0xEuLL);
      *v46 = v38.i16[7];
      v74 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v60, v49), vcgtq_u16(v49, v60)), vcgtq_u16(v49, v73)), vcgtq_u16(v73, v49));
      v75 = vqtbl1q_s8(v9, vaddq_s8(v65, v43));
      v76 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v19), vcgtq_u16(v19, v48)), vcgtq_u16(v19, v71)), vcgtq_u16(v71, v19))), v74);
      v32[-6] = vbslq_s8(v41, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v75.i8), 0), v44), v14);
      v32[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v75), 0), v44);
      v77 = vqtbl1q_s8(v9, vaddq_s8(v69, v43));
      v32[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v44);
      v32[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v44);
      v78 = vqtbl1q_s8(v9, vaddq_s8(v72, v43));
      v32[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v78.i8), 0), v44);
      v32[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v78), 0), v44);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v76, v43));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v79.i8), 0), v44);
      v32[1] = vbslq_s8(v40, vminq_s16(vmaxq_s16(vaddw_high_s8(v49, v79), 0), v44), v49);
      v80 = v32[2].i16;
      --v37;
      v32 = (v32 + v36);
      v46 = v47;
      v20 = v49;
      v45 = vld1q_dup_s16(v80);
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t *sub_2773D97D0(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774ABCA4(result->i8, a2, a3, a4, a5, _X5, 0x40u, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i16[7];
      v11 = vld1q_dup_s16(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_s16(v10++);
      *a5 = result[7].i16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
      a5 = v10;
    }

    v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
    a5[v13] = result[7].i16[v13 * a2 + 7];
    v14 = vdupq_n_s16(~a4);
    v15 = vandq_s8(v14, xmmword_27750D1E0);
    v16 = vandq_s8(v14, xmmword_27750D260);
    v18 = *_X5;
    v17 = _X5[1];
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
    v32 = result[1];
    v33 = result[2];
    v34 = result[3];
    v35 = result[4];
    v36 = result[5];
    v37 = result + 6;
    v38 = result[6];
    v39 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = v13 + 1;
    v43 = 2 * a2;
    v44 = vceqzq_s16(v16);
    v45 = vceqzq_s16(v15);
    v46.i64[0] = 0x202020202020202;
    v46.i64[1] = 0x202020202020202;
    v47.i64[0] = 0xF800F800F800F800;
    v47.i64[1] = 0xF800F800F800F800;
    v48 = a5;
    do
    {
      v49 = vextq_s8(v24, v23, 0xEuLL);
      v23 = v39;
      v50 = vextq_s8(v21, v24, 0xEuLL);
      v24 = v38;
      v51 = vextq_s8(v22, v21, 0xEuLL);
      v21 = v36;
      v52 = vextq_s8(v19, v22, 0xEuLL);
      v22 = v35;
      v53 = vextq_s8(v20, v19, 0xEuLL);
      v19 = v34;
      v54 = vextq_s8(v17, v20, 0xEuLL);
      v20 = v33;
      v55 = vextq_s8(v18, v17, 0xEuLL);
      v17 = v32;
      v56 = vextq_s8(v11, v18, 0xEuLL);
      v18 = v31;
      _X13 = &v37->i8[v43];
      v31 = *(&v37[-6] + v43);
      v32 = *(&v37[-5] + v43);
      v33 = *(&v37[-4] + v43);
      v34 = *(&v37[-3] + v43);
      v35 = *(&v37[-2] + v43);
      v36 = *(&v37[-1] + v43);
      v58 = vextq_s8(v31, v32, 2uLL);
      v59 = vextq_s8(v32, v33, 2uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v56, v18), vcgtq_u16(v18, v56)), vcgtq_u16(v18, v58)), vcgtq_u16(v58, v18));
      v61 = vextq_s8(v33, v34, 2uLL);
      v62 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v17), vcgtq_u16(v17, v55)), vcgtq_u16(v17, v59)), vcgtq_u16(v59, v17));
      v63 = vextq_s8(v34, v35, 2uLL);
      v64 = vqmovn_high_s16(vqmovn_s16(v60), v62);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v20), vcgtq_u16(v20, v54)), vcgtq_u16(v20, v61)), vcgtq_u16(v61, v20));
      v66 = vsubq_s16(vsubq_s16(vcgtq_u16(v53, v19), vcgtq_u16(v19, v53)), vcgtq_u16(v19, v63));
      v38 = *(v37 + 2 * a2);
      v39 = *(&v37[1] + v43);
      v67 = vaddq_s16(v66, vcgtq_u16(v63, v19));
      v68 = vextq_s8(v35, v36, 2uLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v65), v67);
      v70 = vextq_s8(v36, v38, 2uLL);
      v71 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v22), vcgtq_u16(v22, v52)), vcgtq_u16(v22, v68)), vcgtq_u16(v68, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v74 = vextq_s8(v38, v39, 2uLL);
      v75 = vqmovn_high_s16(vqmovn_s16(v71), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v21), vcgtq_u16(v21, v51)), vcgtq_u16(v21, v70)), vcgtq_u16(v70, v21)));
      v76 = vcgtq_u16(v24, v74);
      v77 = vsubq_s16(vsubq_s16(vcgtq_u16(v50, v24), vcgtq_u16(v24, v50)), v76);
      v76.i32[0] = v37[8 * ((a4 >> 1) & 1) - 6].u16[a2];
      v78 = vextq_s8(v39, v76, 2uLL);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v64, v46));
      v80 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v77, vcgtq_u16(v74, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v23), vcgtq_u16(v23, v49)), vcgtq_u16(v23, v78)), vcgtq_u16(v78, v23)));
      v37[-6] = vbslq_s8(v45, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v79.i8), 0), v47), v18);
      v37[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v79), 0), v47);
      v81 = vqtbl1q_s8(v9, vaddq_s8(v69, v46));
      v37[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v81.i8), 0), v47);
      v37[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v81), 0), v47);
      v82 = vqtbl1q_s8(v9, vaddq_s8(v75, v46));
      v37[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v82.i8), 0), v47);
      v37[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v82), 0), v47);
      v83 = vqtbl1q_s8(v9, vaddq_s8(v80, v46));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v83.i8), 0), v47);
      v37[1] = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v83), 0), v47), v23);
      v11 = vld1q_dup_s16(v48++);
      --v42;
      v37 = (v37 + v43);
      *a5 = v23.i16[7];
      a5 = v48;
    }

    while (v42 > 1);
  }

  return result;
}

uint64_t sub_2773D9B50(uint64_t result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 126);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = *(result + 2 * v8 * a2 + 126);
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  v14 = _X5[4];
  v13 = _X5[5];
  v16 = _X5[6];
  v15 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v23 = *result;
  v24 = *(result + 16);
  v25 = *(result + 32);
  v26 = *(result + 48);
  v27 = *(result + 64);
  v28 = *(result + 80);
  v29 = (result + 96);
  v30 = *(result + 96);
  v31 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v34 = v8 + 1;
  v35 = 2 * a2;
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xF800F800F800F800;
  v37.i64[1] = 0xF800F800F800F800;
  do
  {
    v38 = v31;
    v39 = v30;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v44 = v24;
    v45 = v23;
    _X11 = &v29->i8[v35];
    v23 = *(&v29[-6] + v35);
    v24 = *(&v29[-5] + v35);
    v25 = *(&v29[-4] + v35);
    v26 = *(&v29[-3] + v35);
    v27 = *(&v29[-2] + v35);
    v28 = *(&v29[-1] + v35);
    v30 = *(v29 + 2 * a2);
    v31 = *(&v29[1] + v35);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i16[7];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v45), vcgtq_u16(v45, v10)), vcgtq_u16(v45, v23)), vcgtq_u16(v23, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v44), vcgtq_u16(v44, v9)), vcgtq_u16(v44, v24)), vcgtq_u16(v24, v44))), v36));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v43), vcgtq_u16(v43, v12)), vcgtq_u16(v43, v25)), vcgtq_u16(v25, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v42), vcgtq_u16(v42, v11)), vcgtq_u16(v42, v26)), vcgtq_u16(v26, v42))), v36));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v41), vcgtq_u16(v41, v14)), vcgtq_u16(v41, v27)), vcgtq_u16(v27, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v40), vcgtq_u16(v40, v13)), vcgtq_u16(v40, v28)), vcgtq_u16(v28, v40))), v36));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v39), vcgtq_u16(v39, v16)), vcgtq_u16(v39, v30)), vcgtq_u16(v30, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v38), vcgtq_u16(v38, v15)), vcgtq_u16(v38, v31)), vcgtq_u16(v31, v38))), v36));
    v29[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v29[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v29[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v29[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v29[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v29[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v34;
    *v29 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v29[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v29 = (v29 + v35);
    v10 = v45;
    v9 = v44;
    v12 = v43;
    v11 = v42;
    v14 = v41;
    v13 = v40;
    v16 = v39;
    v15 = v38;
  }

  while (v34 > 1);
  return result;
}

int16x8_t *sub_2773D9DFC(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xF800F800F800F800;
  v15.i64[1] = 0xF800F800F800F800;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v19 = result[2];
    v20 = result[3];
    v21 = result[4];
    v22 = result[5];
    v24 = result[6];
    v23 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v31 = vld1q_dup_s16(v16++);
    *a5 = v23.i16[7];
    v32 = vextq_s8(v31, v17, 0xEuLL);
    v33 = vextq_s8(v17, v18, 0xEuLL);
    v34 = vextq_s8(v18, v19, 0xEuLL);
    v35 = vextq_s8(v19, v20, 0xEuLL);
    v36 = vextq_s8(v20, v21, 0xEuLL);
    v37 = vextq_s8(v21, v22, 0xEuLL);
    v38 = vextq_s8(v22, v24, 0xEuLL);
    v39 = vextq_s8(v24, v23, 0xEuLL);
    v40 = vextq_s8(v17, v18, 2uLL);
    v41 = vextq_s8(v18, v19, 2uLL);
    v42 = vextq_s8(v19, v20, 2uLL);
    v43 = vextq_s8(v20, v21, 2uLL);
    v44 = vextq_s8(v21, v22, 2uLL);
    v45 = vextq_s8(v22, v24, 2uLL);
    v46 = vextq_s8(v24, v23, 2uLL);
    v7.i16[0] = result[8 * ((a4 >> 1) & 1)].i16[0];
    v47 = vextq_s8(v23, v7, 2uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v32)), vcgtq_u16(v32, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v18), vcgtq_u16(v18, v33)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), v14));
    v49 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v19), vcgtq_u16(v19, v34)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v20), vcgtq_u16(v20, v35)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), v14));
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v44)), vcgtq_u16(v44, v21))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v37, v22), vcgtq_u16(v22, v37)), vcgtq_u16(v22, v45)), vcgtq_u16(v45, v22))), v14));
    v51 = vminq_s16(vmaxq_s16(vaddw_s8(v21, *v50.i8), 0), v15);
    v52 = vminq_s16(vmaxq_s16(vaddw_high_s8(v22, v50), 0), v15);
    v53 = vcgtq_u16(v23, v47);
    v7 = vcgtq_u16(v47, v23);
    v54 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v24), vcgtq_u16(v24, v38)), vcgtq_u16(v24, v46)), vcgtq_u16(v46, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v23), vcgtq_u16(v23, v39)), v53), v7)), v14));
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v48.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v48), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v49.i8), 0), v15);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v49), 0), v15);
    result[4] = v51;
    result[5] = v52;
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v54.i8), 0), v15);
    result[7] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v54), 0), v15), v23);
    --v11;
    result = (result + 2 * a2);
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773DA07C(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 2;
  v10 = a7 + 1;
  v11.i64[0] = 0xF800F800F800F800;
  v11.i64[1] = 0xF800F800F800F800;
  do
  {
    v12 = _X8[-2];
    v13 = _X8[-1];
    v14 = *_X8;
    v15 = _X8[1];
    __asm { PRFM            #0, [X8,#0x20] }

    *a5++ = v15.i16[7];
    v21 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 6uLL), v13, 6uLL));
    v22 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v21.i8), 0), v11);
    v23 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v21), 0), v11);
    v24 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 6uLL), v15, 6uLL));
    _X8[-2] = v22;
    _X8[-1] = v23;
    *_X8 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v24.i8), 0), v11);
    _X8[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v24), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773DA108(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AB828(result->i8, a2, a3, a4, a5, _X5, 32, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  v14 = _X5[2];
  v15 = _X5[3];
  i16 = _X5[4].i16;
  __asm { PRFM            #0, [X5,#0x40] }

  v22 = *result;
  v23 = result[1];
  v24 = result[2];
  v25 = result[3];
  v26 = result[4].i16;
  __asm { PRFM            #0, [X0,#0x40] }

  v28 = vld1q_dup_s16(i16);
  *a5 = v25.u16[7];
  v29 = (a5 + 1);
  v30 = a2;
  v31 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v32 = vceqzq_s16(v11);
  v33 = vceqzq_s16(v10);
  v34.i64[0] = 0x202020202020202;
  v34.i64[1] = 0x202020202020202;
  v35.i64[0] = 0xF800F800F800F800;
  v35.i64[1] = 0xF800F800F800F800;
  v36 = v29;
  do
  {
    v37 = v25;
    v38 = vextq_s8(v12, v14, 2uLL);
    v39 = v24;
    v40 = vextq_s8(v13, v12, 2uLL);
    v12 = v23;
    v13 = v22;
    _X12 = &v26[v30];
    v22 = *&v26[v30 - 32];
    v23 = *&v26[v30 - 24];
    v24 = *&v26[v30 - 16];
    v25 = *&v26[v30 - 8];
    __asm { PRFM            #0, [X12] }

    v43 = vld1q_dup_s16(v36++);
    v44 = vextq_s8(v14, v15, 2uLL);
    v45 = vextq_s8(v15, v28, 2uLL);
    *v29 = v25.i16[7];
    v46 = vextq_s8(v43, v22, 0xEuLL);
    v47 = vextq_s8(v22, v23, 0xEuLL);
    v48 = vextq_s8(v23, v24, 0xEuLL);
    v49 = vextq_s8(v24, v25, 0xEuLL);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v13), vcgtq_u16(v13, v40)), vcgtq_u16(v13, v46)), vcgtq_u16(v46, v13))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v47)), vcgtq_u16(v47, v12))), v34));
    v51 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v44, v39), vcgtq_u16(v39, v44)), vcgtq_u16(v39, v48)), vcgtq_u16(v48, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v45, v37), vcgtq_u16(v37, v45)), vcgtq_u16(v37, v49)), vcgtq_u16(v49, v37))), v34));
    *(v26 - 4) = vbslq_s8(v33, vminq_s16(vmaxq_s16(vaddw_s8(v13, *v50.i8), 0), v35), v13);
    *(v26 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v12, v50), 0), v35);
    *(v26 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v51.i8), 0), v35);
    *(v26 - 1) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_high_s8(v37, v51), 0), v35), v37);
    v28 = vld1q_dup_s16(v26);
    --v31;
    v26 = (v26 + v30 * 2);
    v29 = v36;
    v14 = v39;
    v15 = v37;
  }

  while (v31 > 1);
  return result;
}

int8x16_t *sub_2773DA330(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774ABCA4(result->i8, a2, a3, a4, a5, _X5, 0x20u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[3].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = result[1];
  v28 = result + 2;
  v29 = result[2];
  v30 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xF800F800F800F800;
  v37.i64[1] = 0xF800F800F800F800;
  v38 = a5;
  do
  {
    v39 = vextq_s8(v20, v19, 0xEuLL);
    v19 = v30;
    v40 = vextq_s8(v17, v20, 0xEuLL);
    v20 = v29;
    v41 = vextq_s8(v18, v17, 0xEuLL);
    v17 = v27;
    v42 = vextq_s8(v11, v18, 0xEuLL);
    v18 = v26;
    _X13 = &v28->i8[v33];
    v26 = *(&v28[-2] + v33);
    v27 = *(&v28[-1] + v33);
    v29 = *(v28 + 2 * a2);
    v30 = *(&v28[1] + v33);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = v28[4 * ((a4 >> 1) & 1) - 2].u16[a2];
    v45 = vextq_s8(v26, v27, 2uLL);
    v46 = vextq_s8(v27, v29, 2uLL);
    v47 = vextq_s8(v29, v30, 2uLL);
    v48 = vextq_s8(v30, v7, 2uLL);
    v49 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v18), vcgtq_u16(v18, v42)), vcgtq_u16(v18, v45)), vcgtq_u16(v45, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v17), vcgtq_u16(v17, v41)), vcgtq_u16(v17, v46)), vcgtq_u16(v46, v17))), v36));
    v50 = vcgtq_u16(v19, v48);
    v7 = vcgtq_u16(v48, v19);
    v51 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v20), vcgtq_u16(v20, v40)), vcgtq_u16(v20, v47)), vcgtq_u16(v47, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v19), vcgtq_u16(v19, v39)), v50), v7)), v36));
    v28[-2] = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v49.i8), 0), v37), v18);
    v28[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v49), 0), v37);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v51.i8), 0), v37);
    v28[1] = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v51), 0), v37), v19);
    v11 = vld1q_dup_s16(v38++);
    --v32;
    v28 = (v28 + v33);
    *a5 = v19.i16[7];
    a5 = v38;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773DA570(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[3].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v18 = *result;
  v19 = result[1];
  v20 = result[2];
  v21 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v23 = v8 + 1;
  v24 = 2 * a2;
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26.i64[0] = 0xF800F800F800F800;
  v26.i64[1] = 0xF800F800F800F800;
  do
  {
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    _X10 = result->i64 + v24;
    v18 = *(result + 2 * a2);
    v19 = *(&result[1] + v24);
    v20 = *(&result[2] + v24);
    v21 = *(&result[3] + v24);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i16[7];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v27), vcgtq_u16(v27, v10)), vcgtq_u16(v27, v18)), vcgtq_u16(v18, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v28), vcgtq_u16(v28, v9)), vcgtq_u16(v28, v19)), vcgtq_u16(v19, v28))), v25));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v29), vcgtq_u16(v29, v12)), vcgtq_u16(v29, v20)), vcgtq_u16(v20, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v30), vcgtq_u16(v30, v11)), vcgtq_u16(v30, v21)), vcgtq_u16(v21, v30))), v25));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v23;
    result = (result + v24);
    v10 = v27;
    v9 = v28;
    v12 = v29;
    v11 = v30;
  }

  while (v23 > 1);
  return result;
}

int16x8_t *sub_2773DA6E8(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xF800F800F800F800;
  v15.i64[1] = 0xF800F800F800F800;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v20 = result[2];
    v19 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v26 = vld1q_dup_s16(v16++);
    *a5 = v19.i16[7];
    v7.i16[0] = result[4 * ((a4 >> 1) & 1)].i16[0];
    v27 = vextq_s8(v26, v17, 0xEuLL);
    v28 = vextq_s8(v17, v18, 0xEuLL);
    v29 = vextq_s8(v18, v20, 0xEuLL);
    v30 = vextq_s8(v20, v19, 0xEuLL);
    v31 = vextq_s8(v17, v18, 2uLL);
    v32 = vextq_s8(v18, v20, 2uLL);
    v33 = vextq_s8(v20, v19, 2uLL);
    v34 = vextq_s8(v19, v7, 2uLL);
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v18), vcgtq_u16(v18, v28)), vcgtq_u16(v18, v32)), vcgtq_u16(v32, v18))), v14));
    v36 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v20), vcgtq_u16(v20, v29)), vcgtq_u16(v20, v33)), vcgtq_u16(v33, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v19), vcgtq_u16(v19, v30)), vcgtq_u16(v19, v34)), vcgtq_u16(v34, v19))), v14));
    v37 = vaddw_s8(v20, *v36.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v36), 0), v15);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v35.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(v37, 0), v15);
    result[3] = vbslq_s8(v12, v7, v19);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773DA854(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 1;
  v10 = a7 + 1;
  v11.i64[0] = 0xF800F800F800F800;
  v11.i64[1] = 0xF800F800F800F800;
  do
  {
    v12 = _X8[-1];
    v13 = *_X8;
    __asm { PRFM            #0, [X8,#0x10] }

    *a5++ = HIWORD(*_X8);
    v19 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 6uLL), v13, 6uLL));
    _X8[-1] = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v19.i8), 0), v11);
    *_X8 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v19), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773DA8B4(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AB828(result->i8, a2, a3, a4, a5, _X5, 16, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  i16 = _X5[2].i16;
  __asm { PRFM            #0, [X5,#0x20] }

  v20 = *result;
  v21 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v23 = vld1q_dup_s16(i16);
  *a5 = v21.u16[7];
  v24 = (a5 + 1);
  v25 = 2 * a2;
  v26 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v27 = vceqzq_s16(v11);
  v28 = vceqzq_s16(v10);
  v29.i64[0] = 0x202020202020202;
  v29.i64[1] = 0x202020202020202;
  v30.i64[0] = 0xF800F800F800F800;
  v30.i64[1] = 0xF800F800F800F800;
  v31 = v24;
  do
  {
    v32 = vextq_s8(v13, v12, 2uLL);
    v33 = v21;
    v34 = v20;
    _X11 = &result->i8[v25];
    v20 = *(result + 2 * a2);
    v21 = *(&result[1] + v25);
    __asm { PRFM            #0, [X11,#0x20] }

    v37 = vld1q_dup_s16(v31++);
    v38 = vextq_s8(v12, v23, 2uLL);
    *v24 = v21.i16[7];
    v39 = vextq_s8(v37, v20, 0xEuLL);
    v40 = vextq_s8(v20, v21, 0xEuLL);
    v41 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v34), vcgtq_u16(v34, v32)), vcgtq_u16(v34, v39)), vcgtq_u16(v39, v34))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v33), vcgtq_u16(v33, v38)), vcgtq_u16(v33, v40)), vcgtq_u16(v40, v33))), v29));
    *result = vbslq_s8(v28, vminq_s16(vmaxq_s16(vaddw_s8(v34, *v41.i8), 0), v30), v34);
    result[1] = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_high_s8(v33, v41), 0), v30), v33);
    v42 = result[2].i16;
    --v26;
    result = (result + v25);
    v23 = vld1q_dup_s16(v42);
    v24 = v31;
    v13 = v34;
    v12 = v33;
  }

  while (v26 > 1);
  return result;
}

int8x16_t *sub_2773DAA54(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774ABCA4(result->i8, a2, a3, a4, a5, _X5, 0x10u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[1].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0x202020202020202;
  v31.i64[1] = 0x202020202020202;
  v32.i64[0] = 0xF800F800F800F800;
  v32.i64[1] = 0xF800F800F800F800;
  v33 = a5;
  do
  {
    v34 = vextq_s8(v17, v18, 0xEuLL);
    v35 = v25;
    v36 = v24;
    _X12 = &result->i8[v28];
    v24 = *(result + 2 * a2);
    v25 = *(&result[1] + v28);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[a2];
    v39 = vextq_s8(v11, v17, 0xEuLL);
    v40 = vextq_s8(v24, v25, 2uLL);
    v41 = vextq_s8(v25, v7, 2uLL);
    v42 = vcgtq_u16(v35, v41);
    v7 = vcgtq_u16(v41, v35);
    v43 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v36), vcgtq_u16(v36, v39)), vcgtq_u16(v36, v40)), vcgtq_u16(v40, v36))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v35), vcgtq_u16(v35, v34)), v42), v7)), v31));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v36, *v43.i8), 0), v32), v36);
    result[1] = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v43), 0), v32), v35);
    v11 = vld1q_dup_s16(v33++);
    --v27;
    result = (result + v28);
    *a5 = v35.i16[7];
    v17 = v36;
    v18 = v35;
    a5 = v33;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773DAC04(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[1].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v16 = *result;
  v17 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v19 = 2 * a2;
  v20 = v8 + 1;
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22.i64[0] = 0xF800F800F800F800;
  v22.i64[1] = 0xF800F800F800F800;
  do
  {
    v23 = v16;
    v24 = v17;
    _X10 = result->i64 + v19;
    v16 = *(result + 2 * a2);
    v17 = *(&result[1] + v19);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i16[7];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v23), vcgtq_u16(v23, v10)), vcgtq_u16(v23, v16)), vcgtq_u16(v16, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v24), vcgtq_u16(v24, v9)), vcgtq_u16(v24, v17)), vcgtq_u16(v17, v24))), v21));
    --v20;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v19);
    v10 = v23;
    v9 = v24;
  }

  while (v20 > 1);
  return result;
}

int16x8_t *sub_2773DACFC(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xF800F800F800F800;
  v15.i64[1] = 0xF800F800F800F800;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v24 = vld1q_dup_s16(v16++);
    *a5 = v18.i16[7];
    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[0];
    v25 = vextq_s8(v24, v17, 0xEuLL);
    v26 = vextq_s8(v17, v18, 0xEuLL);
    v27 = vextq_s8(v17, v18, 2uLL);
    v28 = vextq_s8(v18, v7, 2uLL);
    v29 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v25)), vcgtq_u16(v25, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v18), vcgtq_u16(v18, v26)), vcgtq_u16(v18, v28)), vcgtq_u16(v28, v18))), v14));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v29.i8), 0), v15);
    *result = vbslq_s8(v13, v7, v17);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v29), 0), v15), v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773DADF0(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  v10.i64[0] = 0xF800F800F800F800;
  v10.i64[1] = 0xF800F800F800F800;
  do
  {
    v11 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    *a5++ = HIWORD(*result);
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v11, vqtbl2_s8(*&v7, vshrn_n_s16(v11, 6uLL))), 0), v10);
    result = (result + 2 * a2);
    --v9;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773DAE3C(int16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774AB828(result->i8, a2, a3, a4, a5, _X5, 8, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result->u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = *_X5;
  i16 = _X5[1].i16;
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 1;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s16(i16);
  *a5 = HIWORD(*result);
  v20 = (a5 + 1);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v24.i64[0] = 0x2000200020002;
  v24.i64[1] = 0x2000200020002;
  v25.i64[0] = 0x3000300030003;
  v25.i64[1] = 0x3000300030003;
  v26.i64[0] = 0xF800F800F800F800;
  v26.i64[1] = 0xF800F800F800F800;
  v27 = v20;
  do
  {
    _X12 = result[1].i64 + v21;
    v29 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v31 = vld1q_dup_s16(v27++);
    *v20 = v29.i16[7];
    v32 = vextq_s8(v9, v19, 2uLL);
    v33 = vextq_s8(v31, v29, 0xEuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v32), v25, v24), vcgtq_u16(v32, v17)), vcgtq_u16(v17, v33)), vcgtq_u16(v33, v17))))), 0), v26), v17);
    v34 = result[1].i16;
    --v22;
    result = (result + v21);
    v19 = vld1q_dup_s16(v34);
    v20 = v27;
    v9 = v17;
    v17 = v29;
  }

  while (v22 > 1);
  return result;
}

int16x8_t *sub_2773DAF98(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774ABCA4(result->i8, a2, a3, a4, a5, a6, 8u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 1);
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result->i16[v13 * a2 + 7];
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v28.i64[0] = 0x2000200020002;
  v28.i64[1] = 0x2000200020002;
  v29.i64[0] = 0x3000300030003;
  v29.i64[1] = 0x3000300030003;
  v30.i64[0] = 0xF800F800F800F800;
  v30.i64[1] = 0xF800F800F800F800;
  v31 = a5;
  do
  {
    _X13 = result[1].i64 + v25;
    v33 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i16[0] = result[(a4 >> 1) & 1].i16[a2];
    v35 = vextq_s8(v11, v16, 0xEuLL);
    v36 = vextq_s8(v33, v7, 2uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v35), v29, v28);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v9, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v35, v23)), vcgtq_u16(v23, v36)), vcgtq_u16(v36, v23))))), 0), v30), v23);
    v11 = vld1q_dup_s16(v31++);
    --v26;
    result = (result + v25);
    *a5 = v23.i16[7];
    v16 = v23;
    v23 = v33;
    a5 = v31;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773DB104(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result->i16[v8 * a2 + 7];
  v10 = *a6;
  _X5 = a6 + 1;
  v11 = v10;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v18 = *result;
  __asm { PRFM            #0, [X8] }

  v20 = 2 * a2;
  v21 = v8 + 1;
  v22.i64[0] = 0x2000200020002;
  v22.i64[1] = 0x2000200020002;
  v23.i64[0] = 0x3000300030003;
  v23.i64[1] = 0x3000300030003;
  v24.i64[0] = 0xF800F800F800F800;
  v24.i64[1] = 0xF800F800F800F800;
  do
  {
    _X11 = result[1].i64 + v20;
    v26 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v18.i16[7];
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v18, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v18, v11), v23, v22), vcgtq_u16(v11, v18)), vcgtq_u16(v18, v26)), vcgtq_u16(v26, v18))))), 0), v24);
    result = (result + v20);
    v11 = v18;
    v18 = v26;
  }

  while (v21 > 1);
  return result;
}

int8x16_t *sub_2773DB1D4(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v11.i64[0] = 0x2000200020002;
  v11.i64[1] = 0x2000200020002;
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v13.i64[0] = 0xF800F800F800F800;
  v13.i64[1] = 0xF800F800F800F800;
  v14 = a5;
  do
  {
    v15 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v21 = vld1q_dup_s16(v14++);
    v22 = vextq_s8(v21, *result, 0xEuLL);
    *a5 = HIWORD(*result);
    v7.i16[0] = result[(a4 >> 1) & 1].i16[0];
    v23 = vextq_s8(v15, v7, 2uLL);
    v24 = vcgtq_u16(v15, v23);
    v7 = vcgtq_u16(v23, v15);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v15, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v15, v22), v12, v11), vcgtq_u16(v22, v15)), v24), v7)))), 0), v13), v15);
    result = (result + 2 * a2);
    --v9;
    a5 = v14;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773DB284(int16x8_t *result, uint64_t a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    for (i = 0; i < a4; i += 4)
    {
      if (a3 >= 1)
      {
        v5 = 0;
        v6 = result;
        do
        {
          v7 = *(v6 + 6 * a2);
          v8 = vshlq_n_s16(*(v6 + 2 * a2), 4uLL);
          v9 = vshlq_n_s16(*(v6 + 4 * a2), 4uLL);
          *v6 = vshlq_n_s16(*v6, 4uLL);
          *(v6 + 2 * a2) = v8;
          *(v6 + 4 * a2) = v9;
          *(v6 + 6 * a2) = vshlq_n_s16(v7, 4uLL);
          v5 += 8;
          ++v6;
        }

        while (v5 < a3);
      }

      result = (result + 8 * a2);
    }
  }

  return result;
}

int16x8_t *sub_2773DB30C(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  _X9 = result + 6;
  v11.i64[0] = 0xF000F000F000F000;
  v11.i64[1] = 0xF000F000F000F000;
  do
  {
    v12 = _X9[-6];
    v13 = _X9[-5];
    v14 = _X9[-4];
    v15 = _X9[-3];
    v16 = _X9[-2];
    v17 = _X9[-1];
    v18 = *_X9;
    v19 = _X9[1];
    __asm
    {
      PRFM            #0, [X9,#0x20]
      PRFM            #0, [X9,#0x60]
    }

    *a5++ = v19.i16[7];
    v26 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 7uLL), v13, 7uLL));
    v27 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v26.i8), 0), v11);
    v28 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v26), 0), v11);
    v29 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 7uLL), v15, 7uLL));
    v30 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v29.i8), 0), v11);
    v31 = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v29), 0), v11);
    v32 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v16, 7uLL), v17, 7uLL));
    v33 = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v32.i8), 0), v11);
    v34 = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v32), 0), v11);
    v35 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v18, 7uLL), v19, 7uLL));
    _X9[-6] = v27;
    _X9[-5] = v28;
    _X9[-4] = v30;
    _X9[-3] = v31;
    _X9[-2] = v33;
    _X9[-1] = v34;
    *_X9 = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v35.i8), 0), v11);
    _X9[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v35), 0), v11);
    --v9;
    _X9 = (_X9 + 2 * a2);
  }

  while (v9 > 1);
  return result;
}

int8x16_t *sub_2773DB3F4(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774A9DA8(result->i8, a2, a3, a4, a5, _X5, 64, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 0x40) != 0)
    {
      a5[a7] = result->u16[a7 * a2 - 1];
    }

    if ((a4 & 4) == 0)
    {
      *a5++ = result[7].u16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
    }

    v10 = vdupq_n_s16(~a4);
    v11 = vandq_s8(v10, xmmword_27750D1E0);
    v12 = vandq_s8(v10, xmmword_27750D260);
    v14 = *_X5;
    v13 = _X5[1];
    v16 = _X5[2];
    v15 = _X5[3];
    v18 = _X5[4];
    v17 = _X5[5];
    v19 = _X5[6];
    v20 = _X5[7];
    i16 = _X5[8].i16;
    __asm
    {
      PRFM            #0, [X5,#0x80]
      PRFM            #0, [X5,#0xC0]
    }

    v28 = *result;
    v29 = result[1];
    v30 = result[2];
    v31 = result[3];
    v32 = result + 6;
    v33 = result[6];
    v34 = result[4];
    v35 = result[5];
    v36 = 2 * a2;
    v37 = ((__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32) + 1;
    v38 = result[7];
    __asm { PRFM            #0, [X0,#0x80] }

    v40 = vceqzq_s16(v12);
    v41 = vceqzq_s16(v11);
    __asm { PRFM            #0, [X0,#0xC0] }

    v43.i64[0] = 0x202020202020202;
    v43.i64[1] = 0x202020202020202;
    v44.i64[0] = 0xF000F000F000F000;
    v44.i64[1] = 0xF000F000F000F000;
    v45 = vld1q_dup_s16(i16);
    *a5 = v38.u16[7];
    v46 = (a5 + 1);
    v47 = v46;
    do
    {
      v48 = vextq_s8(v19, v20, 2uLL);
      v49 = v38;
      v50 = vextq_s8(v17, v19, 2uLL);
      v19 = v33;
      v51 = vextq_s8(v18, v17, 2uLL);
      v17 = v35;
      v52 = vextq_s8(v15, v18, 2uLL);
      v18 = v34;
      v53 = vextq_s8(v16, v15, 2uLL);
      v15 = v31;
      v54 = vextq_s8(v13, v16, 2uLL);
      v16 = v30;
      v55 = vextq_s8(v14, v13, 2uLL);
      v13 = v29;
      v14 = v28;
      _X12 = &v32->i8[v36];
      v28 = *(&v32[-6] + v36);
      v29 = *(&v32[-5] + v36);
      v30 = *(&v32[-4] + v36);
      v31 = *(&v32[-3] + v36);
      v34 = *(&v32[-2] + v36);
      v35 = *(&v32[-1] + v36);
      v33 = *(v32 + 2 * a2);
      v38 = *(&v32[1] + v36);
      __asm
      {
        PRFM            #0, [X12,#0x20]
        PRFM            #0, [X12,#0x60]
      }

      v59 = vld1q_dup_s16(v47++);
      v60 = vextq_s8(v20, v45, 2uLL);
      v61 = vextq_s8(v59, v28, 0xEuLL);
      v62 = vextq_s8(v28, v29, 0xEuLL);
      v63 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v14), vcgtq_u16(v14, v55)), vcgtq_u16(v14, v61)), vcgtq_u16(v61, v14));
      v64 = vextq_s8(v29, v30, 0xEuLL);
      v65 = vqmovn_high_s16(vqmovn_s16(v63), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v13), vcgtq_u16(v13, v54)), vcgtq_u16(v13, v62)), vcgtq_u16(v62, v13)));
      v66 = vextq_s8(v30, v31, 0xEuLL);
      v67 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v53, v16), vcgtq_u16(v16, v53)), vcgtq_u16(v16, v64)), vcgtq_u16(v64, v16));
      v68 = vextq_s8(v31, v34, 0xEuLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v67), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v15), vcgtq_u16(v15, v52)), vcgtq_u16(v15, v66)), vcgtq_u16(v66, v15)));
      v70 = vextq_s8(v34, v35, 0xEuLL);
      v71 = vextq_s8(v35, v33, 0xEuLL);
      v72 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v18), vcgtq_u16(v18, v51)), vcgtq_u16(v18, v68)), vcgtq_u16(v68, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v50, v17), vcgtq_u16(v17, v50)), vcgtq_u16(v17, v70)), vcgtq_u16(v70, v17)));
      v73 = vextq_s8(v33, v38, 0xEuLL);
      *v46 = v38.i16[7];
      v74 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v60, v49), vcgtq_u16(v49, v60)), vcgtq_u16(v49, v73)), vcgtq_u16(v73, v49));
      v75 = vqtbl1q_s8(v9, vaddq_s8(v65, v43));
      v76 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v48, v19), vcgtq_u16(v19, v48)), vcgtq_u16(v19, v71)), vcgtq_u16(v71, v19))), v74);
      v32[-6] = vbslq_s8(v41, vminq_s16(vmaxq_s16(vaddw_s8(v14, *v75.i8), 0), v44), v14);
      v32[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v75), 0), v44);
      v77 = vqtbl1q_s8(v9, vaddq_s8(v69, v43));
      v32[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v16, *v77.i8), 0), v44);
      v32[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v77), 0), v44);
      v78 = vqtbl1q_s8(v9, vaddq_s8(v72, v43));
      v32[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v18, *v78.i8), 0), v44);
      v32[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v78), 0), v44);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v76, v43));
      *v32 = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v79.i8), 0), v44);
      v32[1] = vbslq_s8(v40, vminq_s16(vmaxq_s16(vaddw_high_s8(v49, v79), 0), v44), v49);
      v80 = v32[2].i16;
      --v37;
      v32 = (v32 + v36);
      v46 = v47;
      v20 = v49;
      v45 = vld1q_dup_s16(v80);
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t *sub_2773DB768(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774AA224(result->i8, a2, a3, a4, a5, _X5, 0x40u, a7);
  }

  else
  {
    v9 = *a3;
    if ((a4 & 4) != 0)
    {
      v12 = &_X5[-1].i16[7];
      v11 = vld1q_dup_s16(v12);
    }

    else
    {
      v10 = a5;
      v11 = vld1q_dup_s16(v10++);
      *a5 = result[7].i16[7];
      _X5 = result;
      result = (result + 2 * a2);
      v8 = a7 - 1;
      a5 = v10;
    }

    v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
    a5[v13] = result[7].i16[v13 * a2 + 7];
    v14 = vdupq_n_s16(~a4);
    v15 = vandq_s8(v14, xmmword_27750D1E0);
    v16 = vandq_s8(v14, xmmword_27750D260);
    v18 = *_X5;
    v17 = _X5[1];
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
    v32 = result[1];
    v33 = result[2];
    v34 = result[3];
    v35 = result[4];
    v36 = result[5];
    v37 = result + 6;
    v38 = result[6];
    v39 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v42 = v13 + 1;
    v43 = 2 * a2;
    v44 = vceqzq_s16(v16);
    v45 = vceqzq_s16(v15);
    v46.i64[0] = 0x202020202020202;
    v46.i64[1] = 0x202020202020202;
    v47.i64[0] = 0xF000F000F000F000;
    v47.i64[1] = 0xF000F000F000F000;
    v48 = a5;
    do
    {
      v49 = vextq_s8(v24, v23, 0xEuLL);
      v23 = v39;
      v50 = vextq_s8(v21, v24, 0xEuLL);
      v24 = v38;
      v51 = vextq_s8(v22, v21, 0xEuLL);
      v21 = v36;
      v52 = vextq_s8(v19, v22, 0xEuLL);
      v22 = v35;
      v53 = vextq_s8(v20, v19, 0xEuLL);
      v19 = v34;
      v54 = vextq_s8(v17, v20, 0xEuLL);
      v20 = v33;
      v55 = vextq_s8(v18, v17, 0xEuLL);
      v17 = v32;
      v56 = vextq_s8(v11, v18, 0xEuLL);
      v18 = v31;
      _X13 = &v37->i8[v43];
      v31 = *(&v37[-6] + v43);
      v32 = *(&v37[-5] + v43);
      v33 = *(&v37[-4] + v43);
      v34 = *(&v37[-3] + v43);
      v35 = *(&v37[-2] + v43);
      v36 = *(&v37[-1] + v43);
      v58 = vextq_s8(v31, v32, 2uLL);
      v59 = vextq_s8(v32, v33, 2uLL);
      v60 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v56, v18), vcgtq_u16(v18, v56)), vcgtq_u16(v18, v58)), vcgtq_u16(v58, v18));
      v61 = vextq_s8(v33, v34, 2uLL);
      v62 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v55, v17), vcgtq_u16(v17, v55)), vcgtq_u16(v17, v59)), vcgtq_u16(v59, v17));
      v63 = vextq_s8(v34, v35, 2uLL);
      v64 = vqmovn_high_s16(vqmovn_s16(v60), v62);
      v65 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v54, v20), vcgtq_u16(v20, v54)), vcgtq_u16(v20, v61)), vcgtq_u16(v61, v20));
      v66 = vsubq_s16(vsubq_s16(vcgtq_u16(v53, v19), vcgtq_u16(v19, v53)), vcgtq_u16(v19, v63));
      v38 = *(v37 + 2 * a2);
      v39 = *(&v37[1] + v43);
      v67 = vaddq_s16(v66, vcgtq_u16(v63, v19));
      v68 = vextq_s8(v35, v36, 2uLL);
      v69 = vqmovn_high_s16(vqmovn_s16(v65), v67);
      v70 = vextq_s8(v36, v38, 2uLL);
      v71 = vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v52, v22), vcgtq_u16(v22, v52)), vcgtq_u16(v22, v68)), vcgtq_u16(v68, v22));
      __asm
      {
        PRFM            #0, [X13,#0x20]
        PRFM            #0, [X13,#0x60]
      }

      v74 = vextq_s8(v38, v39, 2uLL);
      v75 = vqmovn_high_s16(vqmovn_s16(v71), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v51, v21), vcgtq_u16(v21, v51)), vcgtq_u16(v21, v70)), vcgtq_u16(v70, v21)));
      v76 = vcgtq_u16(v24, v74);
      v77 = vsubq_s16(vsubq_s16(vcgtq_u16(v50, v24), vcgtq_u16(v24, v50)), v76);
      v76.i32[0] = v37[8 * ((a4 >> 1) & 1) - 6].u16[a2];
      v78 = vextq_s8(v39, v76, 2uLL);
      v79 = vqtbl1q_s8(v9, vaddq_s8(v64, v46));
      v80 = vqmovn_high_s16(vqmovn_s16(vaddq_s16(v77, vcgtq_u16(v74, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v49, v23), vcgtq_u16(v23, v49)), vcgtq_u16(v23, v78)), vcgtq_u16(v78, v23)));
      v37[-6] = vbslq_s8(v45, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v79.i8), 0), v47), v18);
      v37[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v79), 0), v47);
      v81 = vqtbl1q_s8(v9, vaddq_s8(v69, v46));
      v37[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v81.i8), 0), v47);
      v37[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v81), 0), v47);
      v82 = vqtbl1q_s8(v9, vaddq_s8(v75, v46));
      v37[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v22, *v82.i8), 0), v47);
      v37[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v21, v82), 0), v47);
      v83 = vqtbl1q_s8(v9, vaddq_s8(v80, v46));
      *v37 = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v83.i8), 0), v47);
      v37[1] = vbslq_s8(v44, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v83), 0), v47), v23);
      v11 = vld1q_dup_s16(v48++);
      --v42;
      v37 = (v37 + v43);
      *a5 = v23.i16[7];
      a5 = v48;
    }

    while (v42 > 1);
  }

  return result;
}

uint64_t sub_2773DBAE8(uint64_t result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = *(result + 126);
    _X5 = result;
    result += 2 * a2;
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = *(result + 2 * v8 * a2 + 126);
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  v14 = _X5[4];
  v13 = _X5[5];
  v16 = _X5[6];
  v15 = _X5[7];
  __asm
  {
    PRFM            #0, [X5,#0x80]
    PRFM            #0, [X5,#0xC0]
  }

  v23 = *result;
  v24 = *(result + 16);
  v25 = *(result + 32);
  v26 = *(result + 48);
  v27 = *(result + 64);
  v28 = *(result + 80);
  v29 = (result + 96);
  v30 = *(result + 96);
  v31 = *(result + 112);
  __asm
  {
    PRFM            #0, [X0,#0x80]
    PRFM            #0, [X0,#0xC0]
  }

  v34 = v8 + 1;
  v35 = 2 * a2;
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xF000F000F000F000;
  v37.i64[1] = 0xF000F000F000F000;
  do
  {
    v38 = v31;
    v39 = v30;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v44 = v24;
    v45 = v23;
    _X11 = &v29->i8[v35];
    v23 = *(&v29[-6] + v35);
    v24 = *(&v29[-5] + v35);
    v25 = *(&v29[-4] + v35);
    v26 = *(&v29[-3] + v35);
    v27 = *(&v29[-2] + v35);
    v28 = *(&v29[-1] + v35);
    v30 = *(v29 + 2 * a2);
    v31 = *(&v29[1] + v35);
    __asm
    {
      PRFM            #0, [X11,#0x20]
      PRFM            #0, [X11,#0x60]
    }

    *a5++ = v38.i16[7];
    v49 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v45), vcgtq_u16(v45, v10)), vcgtq_u16(v45, v23)), vcgtq_u16(v23, v45))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v44), vcgtq_u16(v44, v9)), vcgtq_u16(v44, v24)), vcgtq_u16(v24, v44))), v36));
    v50 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v43), vcgtq_u16(v43, v12)), vcgtq_u16(v43, v25)), vcgtq_u16(v25, v43))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v42), vcgtq_u16(v42, v11)), vcgtq_u16(v42, v26)), vcgtq_u16(v26, v42))), v36));
    v51 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v14, v41), vcgtq_u16(v41, v14)), vcgtq_u16(v41, v27)), vcgtq_u16(v27, v41))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v13, v40), vcgtq_u16(v40, v13)), vcgtq_u16(v40, v28)), vcgtq_u16(v28, v40))), v36));
    v52 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v16, v39), vcgtq_u16(v39, v16)), vcgtq_u16(v39, v30)), vcgtq_u16(v30, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v15, v38), vcgtq_u16(v38, v15)), vcgtq_u16(v38, v31)), vcgtq_u16(v31, v38))), v36));
    v29[-6] = vminq_s16(vmaxq_s16(vaddw_s8(v45, *v49.i8), 0), v37);
    v29[-5] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44, v49), 0), v37);
    v29[-4] = vminq_s16(vmaxq_s16(vaddw_s8(v43, *v50.i8), 0), v37);
    v29[-3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v42, v50), 0), v37);
    v29[-2] = vminq_s16(vmaxq_s16(vaddw_s8(v41, *v51.i8), 0), v37);
    v29[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40, v51), 0), v37);
    --v34;
    *v29 = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v52.i8), 0), v37);
    v29[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v38, v52), 0), v37);
    v29 = (v29 + v35);
    v10 = v45;
    v9 = v44;
    v12 = v43;
    v11 = v42;
    v14 = v41;
    v13 = v40;
    v16 = v39;
    v15 = v38;
  }

  while (v34 > 1);
  return result;
}

int16x8_t *sub_2773DBD94(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xF000F000F000F000;
  v15.i64[1] = 0xF000F000F000F000;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v19 = result[2];
    v20 = result[3];
    v21 = result[4];
    v22 = result[5];
    v24 = result[6];
    v23 = result[7];
    __asm
    {
      PRFM            #0, [X0,#0x80]
      PRFM            #0, [X0,#0xC0]
    }

    v31 = vld1q_dup_s16(v16++);
    *a5 = v23.i16[7];
    v32 = vextq_s8(v31, v17, 0xEuLL);
    v33 = vextq_s8(v17, v18, 0xEuLL);
    v34 = vextq_s8(v18, v19, 0xEuLL);
    v35 = vextq_s8(v19, v20, 0xEuLL);
    v36 = vextq_s8(v20, v21, 0xEuLL);
    v37 = vextq_s8(v21, v22, 0xEuLL);
    v38 = vextq_s8(v22, v24, 0xEuLL);
    v39 = vextq_s8(v24, v23, 0xEuLL);
    v40 = vextq_s8(v17, v18, 2uLL);
    v41 = vextq_s8(v18, v19, 2uLL);
    v42 = vextq_s8(v19, v20, 2uLL);
    v43 = vextq_s8(v20, v21, 2uLL);
    v44 = vextq_s8(v21, v22, 2uLL);
    v45 = vextq_s8(v22, v24, 2uLL);
    v46 = vextq_s8(v24, v23, 2uLL);
    v7.i16[0] = result[8 * ((a4 >> 1) & 1)].i16[0];
    v47 = vextq_s8(v23, v7, 2uLL);
    v48 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v17), vcgtq_u16(v17, v40)), vcgtq_u16(v17, v32)), vcgtq_u16(v32, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v33, v18), vcgtq_u16(v18, v33)), vcgtq_u16(v18, v41)), vcgtq_u16(v41, v18))), v14));
    v49 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v19), vcgtq_u16(v19, v34)), vcgtq_u16(v19, v42)), vcgtq_u16(v42, v19))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v35, v20), vcgtq_u16(v20, v35)), vcgtq_u16(v20, v43)), vcgtq_u16(v43, v20))), v14));
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v36, v21), vcgtq_u16(v21, v36)), vcgtq_u16(v21, v44)), vcgtq_u16(v44, v21))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v37, v22), vcgtq_u16(v22, v37)), vcgtq_u16(v22, v45)), vcgtq_u16(v45, v22))), v14));
    v51 = vminq_s16(vmaxq_s16(vaddw_s8(v21, *v50.i8), 0), v15);
    v52 = vminq_s16(vmaxq_s16(vaddw_high_s8(v22, v50), 0), v15);
    v53 = vcgtq_u16(v23, v47);
    v7 = vcgtq_u16(v47, v23);
    v54 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v24), vcgtq_u16(v24, v38)), vcgtq_u16(v24, v46)), vcgtq_u16(v46, v24))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v23), vcgtq_u16(v23, v39)), v53), v7)), v14));
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v48.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v48), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v19, *v49.i8), 0), v15);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v20, v49), 0), v15);
    result[4] = v51;
    result[5] = v52;
    result[6] = vminq_s16(vmaxq_s16(vaddw_s8(v24, *v54.i8), 0), v15);
    result[7] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v23, v54), 0), v15), v23);
    --v11;
    result = (result + 2 * a2);
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773DC014(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 2;
  v10 = a7 + 1;
  v11.i64[0] = 0xF000F000F000F000;
  v11.i64[1] = 0xF000F000F000F000;
  do
  {
    v12 = _X8[-2];
    v13 = _X8[-1];
    v14 = *_X8;
    v15 = _X8[1];
    __asm { PRFM            #0, [X8,#0x20] }

    *a5++ = v15.i16[7];
    v21 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 7uLL), v13, 7uLL));
    v22 = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v21.i8), 0), v11);
    v23 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v21), 0), v11);
    v24 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v14, 7uLL), v15, 7uLL));
    _X8[-2] = v22;
    _X8[-1] = v23;
    *_X8 = vminq_s16(vmaxq_s16(vaddw_s8(v14, *v24.i8), 0), v11);
    _X8[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v15, v24), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773DC0A0(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774A9DA8(result->i8, a2, a3, a4, a5, _X5, 32, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  v14 = _X5[2];
  v15 = _X5[3];
  i16 = _X5[4].i16;
  __asm { PRFM            #0, [X5,#0x40] }

  v22 = *result;
  v23 = result[1];
  v24 = result[2];
  v25 = result[3];
  v26 = result[4].i16;
  __asm { PRFM            #0, [X0,#0x40] }

  v28 = vld1q_dup_s16(i16);
  *a5 = v25.u16[7];
  v29 = (a5 + 1);
  v30 = a2;
  v31 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v32 = vceqzq_s16(v11);
  v33 = vceqzq_s16(v10);
  v34.i64[0] = 0x202020202020202;
  v34.i64[1] = 0x202020202020202;
  v35.i64[0] = 0xF000F000F000F000;
  v35.i64[1] = 0xF000F000F000F000;
  v36 = v29;
  do
  {
    v37 = v25;
    v38 = vextq_s8(v12, v14, 2uLL);
    v39 = v24;
    v40 = vextq_s8(v13, v12, 2uLL);
    v12 = v23;
    v13 = v22;
    _X12 = &v26[v30];
    v22 = *&v26[v30 - 32];
    v23 = *&v26[v30 - 24];
    v24 = *&v26[v30 - 16];
    v25 = *&v26[v30 - 8];
    __asm { PRFM            #0, [X12] }

    v43 = vld1q_dup_s16(v36++);
    v44 = vextq_s8(v14, v15, 2uLL);
    v45 = vextq_s8(v15, v28, 2uLL);
    *v29 = v25.i16[7];
    v46 = vextq_s8(v43, v22, 0xEuLL);
    v47 = vextq_s8(v22, v23, 0xEuLL);
    v48 = vextq_s8(v23, v24, 0xEuLL);
    v49 = vextq_s8(v24, v25, 0xEuLL);
    v50 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v13), vcgtq_u16(v13, v40)), vcgtq_u16(v13, v46)), vcgtq_u16(v46, v13))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v12), vcgtq_u16(v12, v38)), vcgtq_u16(v12, v47)), vcgtq_u16(v47, v12))), v34));
    v51 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v44, v39), vcgtq_u16(v39, v44)), vcgtq_u16(v39, v48)), vcgtq_u16(v48, v39))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v45, v37), vcgtq_u16(v37, v45)), vcgtq_u16(v37, v49)), vcgtq_u16(v49, v37))), v34));
    *(v26 - 4) = vbslq_s8(v33, vminq_s16(vmaxq_s16(vaddw_s8(v13, *v50.i8), 0), v35), v13);
    *(v26 - 3) = vminq_s16(vmaxq_s16(vaddw_high_s8(v12, v50), 0), v35);
    *(v26 - 2) = vminq_s16(vmaxq_s16(vaddw_s8(v39, *v51.i8), 0), v35);
    *(v26 - 1) = vbslq_s8(v32, vminq_s16(vmaxq_s16(vaddw_high_s8(v37, v51), 0), v35), v37);
    v28 = vld1q_dup_s16(v26);
    --v31;
    v26 = (v26 + v30 * 2);
    v29 = v36;
    v14 = v39;
    v15 = v37;
  }

  while (v31 > 1);
  return result;
}

int8x16_t *sub_2773DC2C8(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AA224(result->i8, a2, a3, a4, a5, _X5, 0x20u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[3].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v18 = *_X5;
  v17 = _X5[1];
  v20 = _X5[2];
  v19 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v26 = *result;
  v27 = result[1];
  v28 = result + 2;
  v29 = result[2];
  v30 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v32 = v13 + 1;
  v33 = 2 * a2;
  v34 = vceqzq_s16(v16);
  v35 = vceqzq_s16(v15);
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37.i64[0] = 0xF000F000F000F000;
  v37.i64[1] = 0xF000F000F000F000;
  v38 = a5;
  do
  {
    v39 = vextq_s8(v20, v19, 0xEuLL);
    v19 = v30;
    v40 = vextq_s8(v17, v20, 0xEuLL);
    v20 = v29;
    v41 = vextq_s8(v18, v17, 0xEuLL);
    v17 = v27;
    v42 = vextq_s8(v11, v18, 0xEuLL);
    v18 = v26;
    _X13 = &v28->i8[v33];
    v26 = *(&v28[-2] + v33);
    v27 = *(&v28[-1] + v33);
    v29 = *(v28 + 2 * a2);
    v30 = *(&v28[1] + v33);
    __asm { PRFM            #0, [X13,#0x20] }

    v7.i32[0] = v28[4 * ((a4 >> 1) & 1) - 2].u16[a2];
    v45 = vextq_s8(v26, v27, 2uLL);
    v46 = vextq_s8(v27, v29, 2uLL);
    v47 = vextq_s8(v29, v30, 2uLL);
    v48 = vextq_s8(v30, v7, 2uLL);
    v49 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v42, v18), vcgtq_u16(v18, v42)), vcgtq_u16(v18, v45)), vcgtq_u16(v45, v18))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v41, v17), vcgtq_u16(v17, v41)), vcgtq_u16(v17, v46)), vcgtq_u16(v46, v17))), v36));
    v50 = vcgtq_u16(v19, v48);
    v7 = vcgtq_u16(v48, v19);
    v51 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v40, v20), vcgtq_u16(v20, v40)), vcgtq_u16(v20, v47)), vcgtq_u16(v47, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v19), vcgtq_u16(v19, v39)), v50), v7)), v36));
    v28[-2] = vbslq_s8(v35, vminq_s16(vmaxq_s16(vaddw_s8(v18, *v49.i8), 0), v37), v18);
    v28[-1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v17, v49), 0), v37);
    *v28 = vminq_s16(vmaxq_s16(vaddw_s8(v20, *v51.i8), 0), v37);
    v28[1] = vbslq_s8(v34, vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v51), 0), v37), v19);
    v11 = vld1q_dup_s16(v38++);
    --v32;
    v28 = (v28 + v33);
    *a5 = v19.i16[7];
    a5 = v38;
  }

  while (v32 > 1);
  return result;
}

uint16x8_t *sub_2773DC508(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[3].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[3].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  v12 = _X5[2];
  v11 = _X5[3];
  __asm { PRFM            #0, [X5,#0x40] }

  v18 = *result;
  v19 = result[1];
  v20 = result[2];
  v21 = result[3];
  __asm { PRFM            #0, [X0,#0x40] }

  v23 = v8 + 1;
  v24 = 2 * a2;
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26.i64[0] = 0xF000F000F000F000;
  v26.i64[1] = 0xF000F000F000F000;
  do
  {
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    _X10 = result->i64 + v24;
    v18 = *(result + 2 * a2);
    v19 = *(&result[1] + v24);
    v20 = *(&result[2] + v24);
    v21 = *(&result[3] + v24);
    __asm { PRFM            #0, [X10,#0x40] }

    *a5++ = v30.i16[7];
    v33 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v27), vcgtq_u16(v27, v10)), vcgtq_u16(v27, v18)), vcgtq_u16(v18, v27))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v28), vcgtq_u16(v28, v9)), vcgtq_u16(v28, v19)), vcgtq_u16(v19, v28))), v25));
    v34 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v12, v29), vcgtq_u16(v29, v12)), vcgtq_u16(v29, v20)), vcgtq_u16(v20, v29))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v11, v30), vcgtq_u16(v30, v11)), vcgtq_u16(v30, v21)), vcgtq_u16(v21, v30))), v25));
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v27, *v33.i8), 0), v26);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v28, v33), 0), v26);
    result[2] = vminq_s16(vmaxq_s16(vaddw_s8(v29, *v34.i8), 0), v26);
    result[3] = vminq_s16(vmaxq_s16(vaddw_high_s8(v30, v34), 0), v26);
    --v23;
    result = (result + v24);
    v10 = v27;
    v9 = v28;
    v12 = v29;
    v11 = v30;
  }

  while (v23 > 1);
  return result;
}

int16x8_t *sub_2773DC680(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xF000F000F000F000;
  v15.i64[1] = 0xF000F000F000F000;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    v20 = result[2];
    v19 = result[3];
    __asm { PRFM            #0, [X0,#0x40] }

    v26 = vld1q_dup_s16(v16++);
    *a5 = v19.i16[7];
    v7.i16[0] = result[4 * ((a4 >> 1) & 1)].i16[0];
    v27 = vextq_s8(v26, v17, 0xEuLL);
    v28 = vextq_s8(v17, v18, 0xEuLL);
    v29 = vextq_s8(v18, v20, 0xEuLL);
    v30 = vextq_s8(v20, v19, 0xEuLL);
    v31 = vextq_s8(v17, v18, 2uLL);
    v32 = vextq_s8(v18, v20, 2uLL);
    v33 = vextq_s8(v20, v19, 2uLL);
    v34 = vextq_s8(v19, v7, 2uLL);
    v35 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v31, v17), vcgtq_u16(v17, v31)), vcgtq_u16(v17, v27)), vcgtq_u16(v27, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v28, v18), vcgtq_u16(v18, v28)), vcgtq_u16(v18, v32)), vcgtq_u16(v32, v18))), v14));
    v36 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v29, v20), vcgtq_u16(v20, v29)), vcgtq_u16(v20, v33)), vcgtq_u16(v33, v20))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v30, v19), vcgtq_u16(v19, v30)), vcgtq_u16(v19, v34)), vcgtq_u16(v34, v19))), v14));
    v37 = vaddw_s8(v20, *v36.i8);
    v7 = vminq_s16(vmaxq_s16(vaddw_high_s8(v19, v36), 0), v15);
    *result = vbslq_s8(v13, vminq_s16(vmaxq_s16(vaddw_s8(v17, *v35.i8), 0), v15), v17);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v35), 0), v15);
    result[2] = vminq_s16(vmaxq_s16(v37, 0), v15);
    result[3] = vbslq_s8(v12, v7, v19);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773DC7EC(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  _X8 = result + 1;
  v10 = a7 + 1;
  v11.i64[0] = 0xF000F000F000F000;
  v11.i64[1] = 0xF000F000F000F000;
  do
  {
    v12 = _X8[-1];
    v13 = *_X8;
    __asm { PRFM            #0, [X8,#0x10] }

    *a5++ = HIWORD(*_X8);
    v19 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v12, 7uLL), v13, 7uLL));
    _X8[-1] = vminq_s16(vmaxq_s16(vaddw_s8(v12, *v19.i8), 0), v11);
    *_X8 = vminq_s16(vmaxq_s16(vaddw_high_s8(v13, v19), 0), v11);
    _X8 = (_X8 + 2 * a2);
    --v10;
  }

  while (v10 > 1);
  return result;
}

int8x16_t *sub_2773DC84C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774A9DA8(result->i8, a2, a3, a4, a5, _X5, 16, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = vandq_s8(v9, xmmword_27750D260);
  v13 = *_X5;
  v12 = _X5[1];
  i16 = _X5[2].i16;
  __asm { PRFM            #0, [X5,#0x20] }

  v20 = *result;
  v21 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v23 = vld1q_dup_s16(i16);
  *a5 = v21.u16[7];
  v24 = (a5 + 1);
  v25 = 2 * a2;
  v26 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v27 = vceqzq_s16(v11);
  v28 = vceqzq_s16(v10);
  v29.i64[0] = 0x202020202020202;
  v29.i64[1] = 0x202020202020202;
  v30.i64[0] = 0xF000F000F000F000;
  v30.i64[1] = 0xF000F000F000F000;
  v31 = v24;
  do
  {
    v32 = vextq_s8(v13, v12, 2uLL);
    v33 = v21;
    v34 = v20;
    _X11 = &result->i8[v25];
    v20 = *(result + 2 * a2);
    v21 = *(&result[1] + v25);
    __asm { PRFM            #0, [X11,#0x20] }

    v37 = vld1q_dup_s16(v31++);
    v38 = vextq_s8(v12, v23, 2uLL);
    *v24 = v21.i16[7];
    v39 = vextq_s8(v37, v20, 0xEuLL);
    v40 = vextq_s8(v20, v21, 0xEuLL);
    v41 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v32, v34), vcgtq_u16(v34, v32)), vcgtq_u16(v34, v39)), vcgtq_u16(v39, v34))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v38, v33), vcgtq_u16(v33, v38)), vcgtq_u16(v33, v40)), vcgtq_u16(v40, v33))), v29));
    *result = vbslq_s8(v28, vminq_s16(vmaxq_s16(vaddw_s8(v34, *v41.i8), 0), v30), v34);
    result[1] = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_high_s8(v33, v41), 0), v30), v33);
    v42 = result[2].i16;
    --v26;
    result = (result + v25);
    v23 = vld1q_dup_s16(v42);
    v24 = v31;
    v13 = v34;
    v12 = v33;
  }

  while (v26 > 1);
  return result;
}

int8x16_t *sub_2773DC9EC(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, int8x16_t *_X5, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AA224(result->i8, a2, a3, a4, a5, _X5, 0x10u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = &_X5[-1].i16[7];
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result[1].i16[v13 * a2 + 7];
  v14 = vdupq_n_s16(~a4);
  v15 = vandq_s8(v14, xmmword_27750D1E0);
  v16 = vandq_s8(v14, xmmword_27750D260);
  v17 = *_X5;
  v18 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v24 = *result;
  v25 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v27 = v13 + 1;
  v28 = 2 * a2;
  v29 = vceqzq_s16(v16);
  v30 = vceqzq_s16(v15);
  v31.i64[0] = 0x202020202020202;
  v31.i64[1] = 0x202020202020202;
  v32.i64[0] = 0xF000F000F000F000;
  v32.i64[1] = 0xF000F000F000F000;
  v33 = a5;
  do
  {
    v34 = vextq_s8(v17, v18, 0xEuLL);
    v35 = v25;
    v36 = v24;
    _X12 = &result->i8[v28];
    v24 = *(result + 2 * a2);
    v25 = *(&result[1] + v28);
    __asm { PRFM            #0, [X12,#0x20] }

    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[a2];
    v39 = vextq_s8(v11, v17, 0xEuLL);
    v40 = vextq_s8(v24, v25, 2uLL);
    v41 = vextq_s8(v25, v7, 2uLL);
    v42 = vcgtq_u16(v35, v41);
    v7 = vcgtq_u16(v41, v35);
    v43 = vqtbl1q_s8(v9, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v39, v36), vcgtq_u16(v36, v39)), vcgtq_u16(v36, v40)), vcgtq_u16(v40, v36))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v34, v35), vcgtq_u16(v35, v34)), v42), v7)), v31));
    *result = vbslq_s8(v30, vminq_s16(vmaxq_s16(vaddw_s8(v36, *v43.i8), 0), v32), v36);
    result[1] = vbslq_s8(v29, vminq_s16(vmaxq_s16(vaddw_high_s8(v35, v43), 0), v32), v35);
    v11 = vld1q_dup_s16(v33++);
    --v27;
    result = (result + v28);
    *a5 = v35.i16[7];
    v17 = v36;
    v18 = v35;
    a5 = v33;
  }

  while (v27 > 1);
  return result;
}

uint16x8_t *sub_2773DCB9C(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *_X5, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result[1].i16[7];
    _X5 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result[1].i16[v8 * a2 + 7];
  v10 = *_X5;
  v9 = _X5[1];
  __asm { PRFM            #0, [X5,#0x20] }

  v16 = *result;
  v17 = result[1];
  __asm { PRFM            #0, [X0,#0x20] }

  v19 = 2 * a2;
  v20 = v8 + 1;
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22.i64[0] = 0xF000F000F000F000;
  v22.i64[1] = 0xF000F000F000F000;
  do
  {
    v23 = v16;
    v24 = v17;
    _X10 = result->i64 + v19;
    v16 = *(result + 2 * a2);
    v17 = *(&result[1] + v19);
    __asm { PRFM            #0, [X10,#0x20] }

    *a5++ = v24.i16[7];
    v27 = vqtbl1q_s8(v7, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v10, v23), vcgtq_u16(v23, v10)), vcgtq_u16(v23, v16)), vcgtq_u16(v16, v23))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v9, v24), vcgtq_u16(v24, v9)), vcgtq_u16(v24, v17)), vcgtq_u16(v17, v24))), v21));
    --v20;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v23, *v27.i8), 0), v22);
    result[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v24, v27), 0), v22);
    result = (result + v19);
    v10 = v23;
    v9 = v24;
  }

  while (v20 > 1);
  return result;
}

int16x8_t *sub_2773DCC94(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = vdupq_n_s16(~a4);
  v10 = vandq_s8(v9, xmmword_27750D1E0);
  v11 = a7 + 1;
  v12 = vceqzq_s16(vandq_s8(v9, xmmword_27750D260));
  v13 = vceqzq_s16(v10);
  v14.i64[0] = 0x202020202020202;
  v14.i64[1] = 0x202020202020202;
  v15.i64[0] = 0xF000F000F000F000;
  v15.i64[1] = 0xF000F000F000F000;
  v16 = a5;
  do
  {
    v17 = *result;
    v18 = result[1];
    __asm { PRFM            #0, [X0,#0x20] }

    v24 = vld1q_dup_s16(v16++);
    *a5 = v18.i16[7];
    v7.i16[0] = result[2 * ((a4 >> 1) & 1)].i16[0];
    v25 = vextq_s8(v24, v17, 0xEuLL);
    v26 = vextq_s8(v17, v18, 0xEuLL);
    v27 = vextq_s8(v17, v18, 2uLL);
    v28 = vextq_s8(v18, v7, 2uLL);
    v29 = vqtbl1q_s8(v8, vaddq_s8(vqmovn_high_s16(vqmovn_s16(vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v27, v17), vcgtq_u16(v17, v27)), vcgtq_u16(v17, v25)), vcgtq_u16(v25, v17))), vaddq_s16(vsubq_s16(vsubq_s16(vcgtq_u16(v26, v18), vcgtq_u16(v18, v26)), vcgtq_u16(v18, v28)), vcgtq_u16(v28, v18))), v14));
    v7 = vminq_s16(vmaxq_s16(vaddw_s8(v17, *v29.i8), 0), v15);
    *result = vbslq_s8(v13, v7, v17);
    result[1] = vbslq_s8(v12, vminq_s16(vmaxq_s16(vaddw_high_s8(v18, v29), 0), v15), v18);
    result = (result + 2 * a2);
    --v11;
    a5 = v16;
  }

  while (v11 > 1);
  return result;
}

int16x8_t *sub_2773DCD88(int16x8_t *result, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, uint64_t a6, int a7)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a7 + 1;
  v10.i64[0] = 0xF000F000F000F000;
  v10.i64[1] = 0xF000F000F000F000;
  do
  {
    v11 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    *a5++ = HIWORD(*result);
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v11, vqtbl2_s8(*&v7, vshrn_n_s16(v11, 7uLL))), 0), v10);
    result = (result + 2 * a2);
    --v9;
  }

  while (v9 > 1);
  return result;
}

int16x8_t *sub_2773DCDD4(int16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, unsigned __int16 *a5, int8x16_t *_X5, int a7)
{
  v7 = a7;
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {
    return sub_2774A9DA8(result->i8, a2, a3, a4, a5, _X5, 8, a7);
  }

  v8 = *a3;
  if ((a4 & 0x40) != 0)
  {
    a5[a7] = result->u16[a7 * a2 - 1];
  }

  if ((a4 & 4) == 0)
  {
    *a5++ = result->u16[7];
    _X5 = result;
    result = (result + 2 * a2);
    v7 = a7 - 1;
  }

  v9 = *_X5;
  i16 = _X5[1].i16;
  __asm { PRFM            #0, [X5,#0x10] }

  _X10 = result + 1;
  v17 = *result;
  __asm { PRFM            #0, [X10] }

  v19 = vld1q_dup_s16(i16);
  *a5 = HIWORD(*result);
  v20 = (a5 + 1);
  v21 = 2 * a2;
  v22 = ((__PAIR64__(v7, (a4 >> 3) & 1) - 1) >> 32) + 1;
  v23 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v24.i64[0] = 0x2000200020002;
  v24.i64[1] = 0x2000200020002;
  v25.i64[0] = 0x3000300030003;
  v25.i64[1] = 0x3000300030003;
  v26.i64[0] = 0xF000F000F000F000;
  v26.i64[1] = 0xF000F000F000F000;
  v27 = v20;
  do
  {
    _X12 = result[1].i64 + v21;
    v29 = *(result + 2 * a2);
    __asm { PRFM            #0, [X12] }

    v31 = vld1q_dup_s16(v27++);
    *v20 = v29.i16[7];
    v32 = vextq_s8(v9, v19, 2uLL);
    v33 = vextq_s8(v31, v29, 0xEuLL);
    *result = vbslq_s8(v23, vminq_s16(vmaxq_s16(vaddw_s8(v17, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v17, v32), v25, v24), vcgtq_u16(v32, v17)), vcgtq_u16(v17, v33)), vcgtq_u16(v33, v17))))), 0), v26), v17);
    v34 = result[1].i16;
    --v22;
    result = (result + v21);
    v19 = vld1q_dup_s16(v34);
    v20 = v27;
    v9 = v17;
    v17 = v29;
  }

  while (v22 > 1);
  return result;
}

int16x8_t *sub_2773DCF30(int16x8_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, unsigned __int16 *a6, int a7)
{
  v8 = a7;
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {
    return sub_2774AA224(result->i8, a2, a3, a4, a5, a6, 8u, a7);
  }

  v9 = *a3;
  if ((a4 & 4) != 0)
  {
    v12 = (a6 - 1);
    v11 = vld1q_dup_s16(v12);
  }

  else
  {
    v10 = a5;
    v11 = vld1q_dup_s16(v10++);
    *a5 = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    v8 = a7 - 1;
    a5 = v10;
  }

  v13 = (__PAIR64__(v8, (a4 >> 3) & 1) - 1) >> 32;
  a5[v13] = result->i16[v13 * a2 + 7];
  v15 = *a6;
  _X5 = a6 + 8;
  v16 = v15;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v23 = *result;
  __asm { PRFM            #0, [X8] }

  v25 = 2 * a2;
  v26 = v13 + 1;
  v27 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v28.i64[0] = 0x2000200020002;
  v28.i64[1] = 0x2000200020002;
  v29.i64[0] = 0x3000300030003;
  v29.i64[1] = 0x3000300030003;
  v30.i64[0] = 0xF000F000F000F000;
  v30.i64[1] = 0xF000F000F000F000;
  v31 = a5;
  do
  {
    _X13 = result[1].i64 + v25;
    v33 = *(result + 2 * a2);
    __asm { PRFM            #0, [X13] }

    v7.i16[0] = result[(a4 >> 1) & 1].i16[a2];
    v35 = vextq_s8(v11, v16, 0xEuLL);
    v36 = vextq_s8(v33, v7, 2uLL);
    v7 = vbslq_s8(vcgtq_u16(v23, v35), v29, v28);
    *result = vbslq_s8(v27, vminq_s16(vmaxq_s16(vaddw_s8(v23, vqtbl1_s8(v9, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(v7, vcgtq_u16(v35, v23)), vcgtq_u16(v23, v36)), vcgtq_u16(v36, v23))))), 0), v30), v23);
    v11 = vld1q_dup_s16(v31++);
    --v26;
    result = (result + v25);
    *a5 = v23.i16[7];
    v16 = v23;
    v23 = v33;
    a5 = v31;
  }

  while (v26 > 1);
  return result;
}

uint16x8_t *sub_2773DD09C(uint16x8_t *result, uint64_t a2, int8x16_t *a3, unsigned int a4, _WORD *a5, uint16x8_t *a6, unsigned int a7)
{
  v7 = *a3;
  if ((a4 & 4) == 0)
  {
    *a5++ = result->i16[7];
    a6 = result;
    result = (result + 2 * a2);
    --a7;
  }

  v8 = (__PAIR64__(a7, (a4 >> 3) & 1) - 1) >> 32;
  a5[v8] = result->i16[v8 * a2 + 7];
  v10 = *a6;
  _X5 = a6 + 1;
  v11 = v10;
  __asm { PRFM            #0, [X5] }

  _X8 = result + 1;
  v18 = *result;
  __asm { PRFM            #0, [X8] }

  v20 = 2 * a2;
  v21 = v8 + 1;
  v22.i64[0] = 0x2000200020002;
  v22.i64[1] = 0x2000200020002;
  v23.i64[0] = 0x3000300030003;
  v23.i64[1] = 0x3000300030003;
  v24.i64[0] = 0xF000F000F000F000;
  v24.i64[1] = 0xF000F000F000F000;
  do
  {
    _X11 = result[1].i64 + v20;
    v26 = *(result + 2 * a2);
    __asm { PRFM            #0, [X11] }

    *a5++ = v18.i16[7];
    --v21;
    *result = vminq_s16(vmaxq_s16(vaddw_s8(v18, vqtbl1_s8(v7, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v18, v11), v23, v22), vcgtq_u16(v11, v18)), vcgtq_u16(v18, v26)), vcgtq_u16(v26, v18))))), 0), v24);
    result = (result + v20);
    v11 = v18;
    v18 = v26;
  }

  while (v21 > 1);
  return result;
}

int8x16_t *sub_2773DD16C(int8x16_t *result, uint64_t a2, int8x16_t *a3, unint64_t a4, __int16 *a5, uint64_t a6, int a7)
{
  v8 = *a3;
  v9 = a7 + 1;
  v10 = vceqzq_s16(vandq_s8(vdupq_n_s16(~a4), xmmword_27750D270));
  v11.i64[0] = 0x2000200020002;
  v11.i64[1] = 0x2000200020002;
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v13.i64[0] = 0xF000F000F000F000;
  v13.i64[1] = 0xF000F000F000F000;
  v14 = a5;
  do
  {
    v15 = *result;
    __asm { PRFM            #0, [X0,#0x10] }

    v21 = vld1q_dup_s16(v14++);
    v22 = vextq_s8(v21, *result, 0xEuLL);
    *a5 = HIWORD(*result);
    v7.i16[0] = result[(a4 >> 1) & 1].i16[0];
    v23 = vextq_s8(v15, v7, 2uLL);
    v24 = vcgtq_u16(v15, v23);
    v7 = vcgtq_u16(v23, v15);
    *result = vbslq_s8(v10, vminq_s16(vmaxq_s16(vaddw_s8(v15, vqtbl1_s8(v8, vqmovn_u16(vaddq_s16(vsubq_s16(vaddq_s16(vbslq_s8(vcgtq_u16(v15, v22), v12, v11), vcgtq_u16(v22, v15)), v24), v7)))), 0), v13), v15);
    result = (result + 2 * a2);
    --v9;
    a5 = v14;
  }

  while (v9 > 1);
  return result;
}

__int16 *sub_2773DD21C(__int16 *a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  sub_2773DD284(a1, a2, a3, a4, a5, a6, a7);

  return sub_2773DD284(a1 + 64, a2, a3, v12, a5, v13, a7);
}

__int16 *sub_2773DD284(__int16 *result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
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
    v30 = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v42.val[0], 3uLL), v36.val[0], 3uLL));
    v31 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v42.val[1], 3uLL), v36.val[1], 3uLL));
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
    v36.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v45.val[0], 3uLL), v44.val[0], 3uLL));
    v34 = vaddw_high_s8(v44.val[0], v36.val[0]);
    v36.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[0], *v36.val[0].i8), 0), v14);
    v35 = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v45.val[1], 3uLL), v44.val[1], 3uLL));
    v36.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v45.val[1], *v35.i8), 0), v14);
    v45.val[0] = vminq_s16(vmaxq_s16(v34, 0), v14);
    v45.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v44.val[1], v35), 0), v14);
    v44.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v41.val[0], 3uLL), v40.val[0], 3uLL));
    v37.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[0], *v44.val[0].i8), 0), v14);
    v44.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v41.val[1], 3uLL), v40.val[1], 3uLL));
    v37.val[1] = vminq_s16(vmaxq_s16(vaddw_s8(v41.val[1], *v44.val[1].i8), 0), v14);
    v41.val[0] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[0], v44.val[0]), 0), v14);
    v41.val[1] = vminq_s16(vmaxq_s16(vaddw_high_s8(v40.val[1], v44.val[1]), 0), v14);
    v40.val[0] = vqtbl2q_s8(*&v7, vshrn_high_n_s16(vshrn_n_s16(v39.val[0], 3uLL), v38.val[0], 3uLL));
    vst2q_s16(result, v42);
    v11 = 4 * a2;
    result = (result + v11);
    v42.val[0] = vminq_s16(vmaxq_s16(vaddw_s8(v39.val[0], *v40.val[0].i8), 0), v14);
    vst2q_s16(v17, v43);
    v40.val[1] = vqtbl2q_s8(*&v9, vshrn_high_n_s16(vshrn_n_s16(v39.val[1], 3uLL), v38.val[1], 3uLL));
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

uint64_t sub_2773DD474(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _WORD *a5, _OWORD *a6, int a7)
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
  sub_2773DD534(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773DD534(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773DD534(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _WORD *a5, _OWORD *_X5, int a7)
{
  if (((~a4 & 6) == 0) == ((a4 & 0x20) == 0) || ((~a4 & 9) == 0) == ((a4 & 0x40) == 0))
  {

    return sub_2774B017C(result, a2, a3, a4, a5, _X5, a7);
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
    v44.i64[0] = 0xFF00FF00FF00FFLL;
    v44.i64[1] = 0xFF00FF00FF00FFLL;
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

uint64_t sub_2773DD8B0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, __int16 *a5, int16x8_t *a6, int a7)
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
  sub_2773DD970(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773DD970(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773DD970(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, __int16 *a5, int16x8_t *_X5, int a7)
{
  if (((~a4 & 5) == 0) == ((a4 & 0x10) == 0) || ((~a4 & 0xA) == 0) == ((a4 & 0x80) == 0))
  {

    return sub_2774B0208(result, a2, a3, a4, a5, _X5, a7);
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
    v45.i64[0] = 0xFF00FF00FF00FFLL;
    v45.i64[1] = 0xFF00FF00FF00FFLL;
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

uint64_t sub_2773DDCF8(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, _DWORD *a5, uint16x8_t *a6, unsigned int a7)
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
  sub_2773DDDB8(a1, a2, a3, v14 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773DDDB8(a1 + 128, a2, a3, v16, a5, a6 + 8, a7);
}

uint64_t sub_2773DDDB8(uint64_t result, uint64_t a2, uint64_t *a3, unsigned int a4, _DWORD *a5, uint16x8_t *_X5, unsigned int a7)
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
  v37.i64[0] = 0xFF00FF00FF00FFLL;
  v37.i64[1] = 0xFF00FF00FF00FFLL;
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

int16x8_t *sub_2773DE078(int16x8_t *a1, uint64_t a2, uint64_t *a3, int a4, float *a5, uint64_t a6, int a7)
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
  sub_2773DE128(a1, a2, a3, v13 & 0xFFFFFF7F | (((a4 & 8) != 0) << 7), a5, a6, a7);

  return sub_2773DE128(a1 + 8, a2, a3, v15, a5, v16, a7);
}

int16x8_t *sub_2773DE128(int16x8_t *result, uint64_t a2, uint64_t *a3, unint64_t a4, float *a5, uint64_t a6, int a7)
{
  v7.i64[0] = *a3;
  v7.i64[1] = a3[4];
  v8 = vdupq_n_s16(~a4);
  v9 = vandq_s8(v8, xmmword_27750D2A0);
  v10 = a7 + 1;
  v11 = vceqzq_s16(vandq_s8(v8, xmmword_27750D2B0));
  v12 = vceqzq_s16(v9);
  v13.i64[0] = 0xFF00FF00FF00FFLL;
  v13.i64[1] = 0xFF00FF00FF00FFLL;
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