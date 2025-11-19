void *ARGB4444ToUVRow_Any_NEON(int8x16_t *a1, int a2, int8x8_t *a3, int8x8_t *a4, int a5)
{
  v5 = a5;
  v84 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  v82 = 0u;
  memset(v83, 0, sizeof(v83));
  v8 = a5 & 0xF;
  v9 = a5 & 0xFFFFFFF0;
  v10 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    _X9 = (a1 + a2);
    v12 = a3;
    v13 = a5 & 0xFFFFFFF0;
    v14 = a4;
    _X13 = a1;
    v16.i64[0] = 0x70007000700070;
    v16.i64[1] = 0x70007000700070;
    v17.i64[0] = 0x4A004A004A004ALL;
    v17.i64[1] = 0x4A004A004A004ALL;
    v18.i64[0] = 0x26002600260026;
    v18.i64[1] = 0x26002600260026;
    v19.i64[0] = 0x12001200120012;
    v19.i64[1] = 0x12001200120012;
    v20.i64[0] = 0x5E005E005E005ELL;
    v20.i64[1] = 0x5E005E005E005ELL;
    v21.i64[0] = 0x8000800080008000;
    v21.i64[1] = 0x8000800080008000;
    do
    {
      v22 = *_X13;
      v23 = _X13[1];
      _X13 += 2;
      v13 -= 16;
      v24 = vuzp1q_s8(v22, v23);
      v25 = vshrn_n_s16(v22, 4uLL);
      v26 = vshlq_n_s8(v24, 4uLL);
      v27 = vshrn_high_n_s16(v25, v23, 4uLL);
      v28 = vpaddlq_u8(vsriq_n_s8(v26, v26, 4uLL));
      __asm { PRFM            #0, [X13,#0x1C0] }

      v34 = vpaddlq_u8(vsriq_n_s8(v24, v24, 4uLL));
      v35 = vpaddlq_u8(vsriq_n_s8(v27, v27, 4uLL));
      v36 = *_X9;
      v37 = _X9[1];
      _X9 += 2;
      v38 = vuzp1q_s8(v36, v37);
      *v27.i8 = vshrn_n_s16(v36, 4uLL);
      v39 = vshlq_n_s8(v38, 4uLL);
      v40 = vshrn_high_n_s16(*v27.i8, v37, 4uLL);
      __asm { PRFM            #0, [X9,#0x1C0] }

      v42 = vrshrq_n_u16(vpadalq_u8(v28, vsriq_n_s8(v39, v39, 4uLL)), 2uLL);
      v43 = vrshrq_n_u16(vpadalq_u8(v34, vsriq_n_s8(v38, v38, 4uLL)), 2uLL);
      v44 = vrshrq_n_u16(vpadalq_u8(v35, vsriq_n_s8(v40, v40, 4uLL)), 2uLL);
      *v12++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v42, v16), v43, v17), v44, v18), v21);
      *v14++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v44, v16), v43, v20), v42, v19), v21);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v45 = v9;
  v46 = 2 * (a5 & 0xF);
  v47 = &a1->i8[2 * v9];
  memcpy(__dst, v47, v46);
  _X22 = v83;
  memcpy(v83, &v47[v10], 2 * v8);
  if (v5)
  {
    *(__dst + v46) = *&v80[v46 + 126];
    *(v83 + v46) = *(&v82 + v46 + 14);
  }

  v49 = v79;
  _X9 = __dst;
  v51 = 16;
  v52 = v80;
  v53.i64[0] = 0x70007000700070;
  v53.i64[1] = 0x70007000700070;
  v54.i64[0] = 0x4A004A004A004ALL;
  v54.i64[1] = 0x4A004A004A004ALL;
  v55.i64[0] = 0x26002600260026;
  v55.i64[1] = 0x26002600260026;
  v56.i64[0] = 0x12001200120012;
  v56.i64[1] = 0x12001200120012;
  v57.i64[0] = 0x5E005E005E005ELL;
  v57.i64[1] = 0x5E005E005E005ELL;
  v58.i64[0] = 0x8000800080008000;
  v58.i64[1] = 0x8000800080008000;
  do
  {
    v59 = *_X9;
    v60 = _X9[1];
    _X9 += 2;
    v51 -= 16;
    v61 = vuzp1q_s8(v59, v60);
    v62 = vshrn_n_s16(v59, 4uLL);
    v63 = vshlq_n_s8(v61, 4uLL);
    v64 = vshrn_high_n_s16(v62, v60, 4uLL);
    v65 = vpaddlq_u8(vsriq_n_s8(v63, v63, 4uLL));
    __asm { PRFM            #0, [X9,#0x1C0] }

    v67 = vpaddlq_u8(vsriq_n_s8(v61, v61, 4uLL));
    v68 = vpaddlq_u8(vsriq_n_s8(v64, v64, 4uLL));
    v69 = *_X22;
    v70 = _X22[1];
    _X22 += 2;
    v71 = vuzp1q_s8(v69, v70);
    *v64.i8 = vshrn_n_s16(v69, 4uLL);
    v72 = vshlq_n_s8(v71, 4uLL);
    v73 = vshrn_high_n_s16(*v64.i8, v70, 4uLL);
    __asm { PRFM            #0, [X22,#0x1C0] }

    v75 = vrshrq_n_u16(vpadalq_u8(v65, vsriq_n_s8(v72, v72, 4uLL)), 2uLL);
    v76 = vrshrq_n_u16(vpadalq_u8(v67, vsriq_n_s8(v71, v71, 4uLL)), 2uLL);
    v77 = vrshrq_n_u16(vpadalq_u8(v68, vsriq_n_s8(v73, v73, 4uLL)), 2uLL);
    *v49++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v75, v53), v76, v54), v77, v55), v58);
    *v52++ = vaddhn_s16(vmlsq_s16(vmlsq_s16(vmulq_s16(v77, v53), v76, v57), v75, v56), v58);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + (v45 >> 1), v79, (v8 + 1) >> 1);
  return memcpy(a4 + (v45 >> 1), v80, (v8 + 1) >> 1);
}

void *YUY2ToUVRow_Any_NEON(const char *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  memset(v32, 0, sizeof(v32));
  v7 = a5 & 0xFFFFFFF0;
  v8 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    v9 = &a1[a2];
    v10 = a3;
    v11 = a5 & 0xFFFFFFF0;
    v12 = a4;
    _X13 = a1;
    do
    {
      v34 = vld4_s8(_X13);
      _X13 += 32;
      v11 -= 16;
      v36 = vld4_s8(v9);
      v9 += 32;
      __asm { PRFM            #0, [X13,#0x1C0] }

      *v10++ = vrhadd_u8(v34.val[1], v36.val[1]);
      *v12++ = vrhadd_u8(v34.val[3], v36.val[3]);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v19 = v7 >> 1;
  v20 = &a1[4 * (v7 >> 1)];
  v21 = ((a5 & 0xFu) + 1) >> 1;
  _X27 = __dst;
  memcpy(__dst, v20, (4 * v21));
  v23 = v32;
  memcpy(v32, &v20[v8], (4 * v21));
  v24 = v29;
  v25 = 16;
  v26 = v30;
  do
  {
    v35 = vld4_s8(_X27);
    _X27 += 32;
    v25 -= 16;
    v37 = vld4_s8(v23);
    v23 += 32;
    __asm { PRFM            #0, [X27,#0x1C0] }

    *v24++ = vrhadd_u8(v35.val[1], v37.val[1]);
    *v26++ = vrhadd_u8(v35.val[3], v37.val[3]);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + v19, v29, v21);
  return memcpy(a4 + v19, v30, v21);
}

void *UYVYToUVRow_Any_NEON(const char *a1, int a2, uint8x8_t *a3, uint8x8_t *a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, sizeof(__dst));
  memset(v32, 0, sizeof(v32));
  v7 = a5 & 0xFFFFFFF0;
  v8 = a2;
  if ((a5 & 0xFFFFFFF0) >= 1)
  {
    v9 = &a1[a2];
    v10 = a3;
    v11 = a5 & 0xFFFFFFF0;
    v12 = a4;
    _X13 = a1;
    do
    {
      v34 = vld4_s8(_X13);
      _X13 += 32;
      v11 -= 16;
      v36 = vld4_s8(v9);
      v9 += 32;
      __asm { PRFM            #0, [X13,#0x1C0] }

      *v10++ = vrhadd_u8(v34.val[0], v36.val[0]);
      *v12++ = vrhadd_u8(v34.val[2], v36.val[2]);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v19 = v7 >> 1;
  v20 = &a1[4 * (v7 >> 1)];
  v21 = ((a5 & 0xFu) + 1) >> 1;
  _X27 = __dst;
  memcpy(__dst, v20, (4 * v21));
  v23 = v32;
  memcpy(v32, &v20[v8], (4 * v21));
  v24 = v29;
  v25 = 16;
  v26 = v30;
  do
  {
    v35 = vld4_s8(_X27);
    _X27 += 32;
    v25 -= 16;
    v37 = vld4_s8(v23);
    v23 += 32;
    __asm { PRFM            #0, [X27,#0x1C0] }

    *v24++ = vrhadd_u8(v35.val[0], v37.val[0]);
    *v26++ = vrhadd_u8(v35.val[2], v37.val[2]);
  }

  while (!(_NF ^ _VF | _ZF));
  memcpy(a3 + v19, v29, v21);
  return memcpy(a4 + v19, v30, v21);
}

unint64_t ARGBToYRow_C(unint64_t result, int8x16_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 9 || (result + 4 * (a3 - 1) + 3 > a2 ? (v3 = a2->u64 + a3 > result) : (v3 = 0), v3))
    {
      v5 = 0;
    }

    else
    {
      if (a3 < 0x11)
      {
        v4 = 0;
LABEL_19:
        if ((a3 & 7) != 0)
        {
          v16 = a3 & 7;
        }

        else
        {
          v16 = 8;
        }

        v5 = a3 - v16;
        v17 = &a2->i8[v4];
        v18 = (result + 4 * v4);
        v19 = v16 + v4 - a3;
        v20 = vdupq_n_s16(0x1080u);
        do
        {
          v21 = vld4_s8(v18);
          v18 += 32;
          *v17++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(v21.val[2], 0x4242424242424242), v21.val[1], 0x8181818181818181), v21.val[0], 0x1919191919191919), v20);
          v19 += 8;
        }

        while (v19);
        result += 4 * (a3 - v16);
        a2 = (a2 + a3 - v16);
        goto LABEL_10;
      }

      v8 = 16;
      if ((a3 & 0xF) != 0)
      {
        v8 = a3 & 0xF;
      }

      v4 = a3 - v8;
      v9.i64[0] = 0x4242424242424242;
      v9.i64[1] = 0x4242424242424242;
      v10.i64[0] = 0x8181818181818181;
      v10.i64[1] = 0x8181818181818181;
      v11.i64[0] = 0x1919191919191919;
      v11.i64[1] = 0x1919191919191919;
      v12 = vdupq_n_s16(0x1080u);
      v13 = v4;
      v14 = result;
      v15 = a2;
      do
      {
        v22 = vld4q_s8(v14);
        v14 += 64;
        *v15++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v22.val[2].i8, 0x4242424242424242), *v22.val[1].i8, 0x8181818181818181), *v22.val[0].i8, 0x1919191919191919), v12), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v22.val[2], v9), v22.val[1], v10), v22.val[0], v11), v12);
        v13 -= 16;
      }

      while (v13);
      if (v8 >= 9)
      {
        goto LABEL_19;
      }

      a2 = (a2 + v4);
      result += 4 * v4;
      v5 = a3 - v8;
    }

LABEL_10:
    v6 = a3 - v5;
    v7 = (result + 2);
    do
    {
      a2->i8[0] = (129 * *(v7 - 1) + 66 * *v7 + 25 * *(v7 - 2) + 4224) >> 8;
      a2 = (a2 + 1);
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned __int8 *ARGBToUVRow_C(unsigned __int8 *result, int a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a2;
  if (a5 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = (*result + result[4] + result[v5] + result[v5 + 4] + 2) >> 2;
      v8 = (result[1] + result[5] + result[v5 + 1] + result[v5 + 5] + 2) >> 2;
      v9 = (result[2] + result[6] + result[v5 + 2] + result[v5 + 6] + 2) >> 2;
      *a3++ = ((112 * v7 - 74 * v8 - 38 * v9) >> 8) ^ 0x80;
      *a4++ = ((-18 * v7 - 94 * v8 + 112 * v9) >> 8) ^ 0x80;
      result += 8;
      v6 += 2;
    }

    while (v6 < a5 - 1);
  }

  v10 = &result[v5];
  if (a5)
  {
    v11 = (*result + *v10 + 1) >> 1;
    v12 = (result[1] + v10[1] + 1) >> 1;
    v13 = (result[2] + v10[2] + 1) >> 1;
    *a3 = ((112 * v11 - 74 * v12 - 38 * v13) >> 8) ^ 0x80;
    *a4 = ((-18 * v11 - 94 * v12 + 112 * v13) >> 8) ^ 0x80;
  }

  return result;
}

uint64_t BGRAToYRow_C(uint64_t result, int8x16_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 9 || result + 4 * (a3 - 1) + 4 > a2 && result + 1 < a2->u64 + a3)
    {
      v3 = 0;
      goto LABEL_6;
    }

    if (a3 >= 0x11)
    {
      v10 = 16;
      if ((a3 & 0xF) != 0)
      {
        v10 = a3 & 0xF;
      }

      v9 = a3 - v10;
      v11 = (result + 1);
      v12.i64[0] = 0x4242424242424242;
      v12.i64[1] = 0x4242424242424242;
      v13.i64[0] = 0x8181818181818181;
      v13.i64[1] = 0x8181818181818181;
      v14.i64[0] = 0x1919191919191919;
      v14.i64[1] = 0x1919191919191919;
      v15 = vdupq_n_s16(0x1080u);
      v16 = v9;
      v17 = a2;
      do
      {
        v24 = vld4q_s8(v11);
        v11 += 64;
        *v17++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v24.val[0].i8, 0x4242424242424242), *v24.val[1].i8, 0x8181818181818181), *v24.val[2].i8, 0x1919191919191919), v15), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v24.val[0], v12), v24.val[1], v13), v24.val[2], v14), v15);
        v16 -= 16;
      }

      while (v16);
      if (v10 < 9)
      {
        a2 = (a2 + v9);
        result += 4 * v9;
        v3 = a3 - v10;
LABEL_6:
        v4 = a3 - v3;
        v5 = (result + 3);
        do
        {
          v6 = *(v5 - 2);
          v7 = *(v5 - 1);
          v8 = *v5;
          v5 += 4;
          a2->i8[0] = (129 * v7 + 66 * v6 + 25 * v8 + 4224) >> 8;
          a2 = (a2 + 1);
          --v4;
        }

        while (v4);
        return result;
      }
    }

    else
    {
      v9 = 0;
    }

    if ((a3 & 7) != 0)
    {
      v18 = a3 & 7;
    }

    else
    {
      v18 = 8;
    }

    v3 = a3 - v18;
    v19 = &a2->i8[v9];
    v20 = (result + 4 * v9 + 1);
    v21 = v18 + v9 - a3;
    v22 = vdupq_n_s16(0x1080u);
    do
    {
      v23 = vld4_s8(v20);
      v20 += 32;
      *v19++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(v23.val[0], 0x4242424242424242), v23.val[1], 0x8181818181818181), v23.val[2], 0x1919191919191919), v22);
      v21 += 8;
    }

    while (v21);
    result += 4 * (a3 - v18);
    a2 = (a2 + a3 - v18);
    goto LABEL_6;
  }

  return result;
}

unsigned __int8 *BGRAToUVRow_C(unsigned __int8 *result, int a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a2;
  if (a5 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = (result[3] + result[7] + result[v5 + 3] + result[v5 + 7] + 2) >> 2;
      v8 = (result[2] + result[6] + result[v5 + 2] + result[v5 + 6] + 2) >> 2;
      v9 = (result[1] + result[5] + result[v5 + 1] + result[v5 + 5] + 2) >> 2;
      *a3++ = ((112 * v7 - 74 * v8 - 38 * v9) >> 8) ^ 0x80;
      *a4++ = ((-18 * v7 - 94 * v8 + 112 * v9) >> 8) ^ 0x80;
      result += 8;
      v6 += 2;
    }

    while (v6 < a5 - 1);
  }

  v10 = &result[v5];
  if (a5)
  {
    v11 = (result[3] + v10[3] + 1) >> 1;
    v12 = (result[2] + v10[2] + 1) >> 1;
    v13 = (result[1] + v10[1] + 1) >> 1;
    *a3 = ((112 * v11 - 74 * v12 - 38 * v13) >> 8) ^ 0x80;
    *a4 = ((-18 * v11 - 94 * v12 + 112 * v13) >> 8) ^ 0x80;
  }

  return result;
}

const char *ABGRToYRow_C(const char *result, int8x16_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 9 || (&result[4 * a3 - 1] > a2 ? (v3 = &a2->i8[a3] > result) : (v3 = 0), v3))
    {
      v5 = 0;
    }

    else
    {
      if (a3 < 0x11)
      {
        v4 = 0;
LABEL_19:
        if ((a3 & 7) != 0)
        {
          v15 = a3 & 7;
        }

        else
        {
          v15 = 8;
        }

        v5 = a3 - v15;
        v16 = &a2->i8[v4];
        v17 = &result[4 * v4];
        v18 = v15 + v4 - a3;
        v19 = vdupq_n_s16(0x1080u);
        do
        {
          v20 = vld4_s8(v17);
          v17 += 32;
          *v16++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(v20.val[0], 0x4242424242424242), v20.val[1], 0x8181818181818181), v20.val[2], 0x1919191919191919), v19);
          v18 += 8;
        }

        while (v18);
        result += 4 * (a3 - v15);
        a2 = (a2 + a3 - v15);
        goto LABEL_10;
      }

      v7 = 16;
      if ((a3 & 0xF) != 0)
      {
        v7 = a3 & 0xF;
      }

      v4 = a3 - v7;
      v8.i64[0] = 0x4242424242424242;
      v8.i64[1] = 0x4242424242424242;
      v9.i64[0] = 0x8181818181818181;
      v9.i64[1] = 0x8181818181818181;
      v10.i64[0] = 0x1919191919191919;
      v10.i64[1] = 0x1919191919191919;
      v11 = vdupq_n_s16(0x1080u);
      v12 = v4;
      v13 = result;
      v14 = a2;
      do
      {
        v21 = vld4q_s8(v13);
        v13 += 64;
        *v14++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v21.val[0].i8, 0x4242424242424242), *v21.val[1].i8, 0x8181818181818181), *v21.val[2].i8, 0x1919191919191919), v11), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v21.val[0], v8), v21.val[1], v9), v21.val[2], v10), v11);
        v12 -= 16;
      }

      while (v12);
      if (v7 >= 9)
      {
        goto LABEL_19;
      }

      a2 = (a2 + v4);
      result += 4 * v4;
      v5 = a3 - v7;
    }

LABEL_10:
    v6 = a3 - v5;
    do
    {
      a2->i8[0] = (129 * *(result + 1) + 66 * *result + 25 * *(result + 2) + 4224) >> 8;
      a2 = (a2 + 1);
      result += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned __int8 *ABGRToUVRow_C(unsigned __int8 *result, int a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a2;
  if (a5 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = (result[2] + result[6] + result[v5 + 2] + result[v5 + 6] + 2) >> 2;
      v8 = (result[1] + result[5] + result[v5 + 1] + result[v5 + 5] + 2) >> 2;
      v9 = (*result + result[4] + result[v5] + result[v5 + 4] + 2) >> 2;
      *a3++ = ((112 * v7 - 74 * v8 - 38 * v9) >> 8) ^ 0x80;
      *a4++ = ((-18 * v7 - 94 * v8 + 112 * v9) >> 8) ^ 0x80;
      result += 8;
      v6 += 2;
    }

    while (v6 < a5 - 1);
  }

  v10 = &result[v5];
  if (a5)
  {
    v11 = (result[2] + v10[2] + 1) >> 1;
    v12 = (result[1] + v10[1] + 1) >> 1;
    v13 = (*result + *v10 + 1) >> 1;
    *a3 = ((112 * v11 - 74 * v12 - 38 * v13) >> 8) ^ 0x80;
    *a4 = ((-18 * v11 - 94 * v12 + 112 * v13) >> 8) ^ 0x80;
  }

  return result;
}

uint64_t RGBAToYRow_C(uint64_t result, int8x16_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 9 || result + 4 * (a3 - 1) + 4 > a2 && result + 1 < a2->u64 + a3)
    {
      v3 = 0;
      goto LABEL_6;
    }

    if (a3 >= 0x11)
    {
      v7 = 16;
      if ((a3 & 0xF) != 0)
      {
        v7 = a3 & 0xF;
      }

      v6 = a3 - v7;
      v8 = (result + 1);
      v9.i64[0] = 0x4242424242424242;
      v9.i64[1] = 0x4242424242424242;
      v10.i64[0] = 0x8181818181818181;
      v10.i64[1] = 0x8181818181818181;
      v11.i64[0] = 0x1919191919191919;
      v11.i64[1] = 0x1919191919191919;
      v12 = vdupq_n_s16(0x1080u);
      v13 = v6;
      v14 = a2;
      do
      {
        v21 = vld4q_s8(v8);
        v8 += 64;
        *v14++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v21.val[2].i8, 0x4242424242424242), *v21.val[1].i8, 0x8181818181818181), *v21.val[0].i8, 0x1919191919191919), v12), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v21.val[2], v9), v21.val[1], v10), v21.val[0], v11), v12);
        v13 -= 16;
      }

      while (v13);
      if (v7 < 9)
      {
        a2 = (a2 + v6);
        result += 4 * v6;
        v3 = a3 - v7;
LABEL_6:
        v4 = a3 - v3;
        v5 = (result + 3);
        do
        {
          a2->i8[0] = (129 * *(v5 - 1) + 66 * *v5 + 25 * *(v5 - 2) + 4224) >> 8;
          a2 = (a2 + 1);
          v5 += 4;
          --v4;
        }

        while (v4);
        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    if ((a3 & 7) != 0)
    {
      v15 = a3 & 7;
    }

    else
    {
      v15 = 8;
    }

    v3 = a3 - v15;
    v16 = &a2->i8[v6];
    v17 = (result + 4 * v6 + 1);
    v18 = v15 + v6 - a3;
    v19 = vdupq_n_s16(0x1080u);
    do
    {
      v20 = vld4_s8(v17);
      v17 += 32;
      *v16++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(v20.val[2], 0x4242424242424242), v20.val[1], 0x8181818181818181), v20.val[0], 0x1919191919191919), v19);
      v18 += 8;
    }

    while (v18);
    result += 4 * (a3 - v15);
    a2 = (a2 + a3 - v15);
    goto LABEL_6;
  }

  return result;
}

unsigned __int8 *RGBAToUVRow_C(unsigned __int8 *result, int a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a2;
  if (a5 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = (result[1] + result[5] + result[v5 + 1] + result[v5 + 5] + 2) >> 2;
      v8 = (result[2] + result[6] + result[v5 + 2] + result[v5 + 6] + 2) >> 2;
      v9 = (result[3] + result[7] + result[v5 + 3] + result[v5 + 7] + 2) >> 2;
      *a3++ = ((112 * v7 - 74 * v8 - 38 * v9) >> 8) ^ 0x80;
      *a4++ = ((-18 * v7 - 94 * v8 + 112 * v9) >> 8) ^ 0x80;
      result += 8;
      v6 += 2;
    }

    while (v6 < a5 - 1);
  }

  v10 = &result[v5];
  if (a5)
  {
    v11 = (result[1] + v10[1] + 1) >> 1;
    v12 = (result[2] + v10[2] + 1) >> 1;
    v13 = (result[3] + v10[3] + 1) >> 1;
    *a3 = ((112 * v11 - 74 * v12 - 38 * v13) >> 8) ^ 0x80;
    *a4 = ((-18 * v11 - 94 * v12 + 112 * v13) >> 8) ^ 0x80;
  }

  return result;
}

const char *RGB24ToYRow_C(const char *result, unint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 8 || (&result[3 * a3] > a2 ? (v3 = a2 + a3 > result) : (v3 = 0), v3))
    {
      LODWORD(v5) = 0;
      v6 = result;
      v7 = a2;
      goto LABEL_14;
    }

    if (a3 < 0x10)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = a3 & 0x7FFFFFF0;
    v14.i64[0] = 0x4242424242424242;
    v14.i64[1] = 0x4242424242424242;
    v15.i64[0] = 0x8181818181818181;
    v15.i64[1] = 0x8181818181818181;
    v16.i64[0] = 0x1919191919191919;
    v16.i64[1] = 0x1919191919191919;
    v17 = result;
    v18 = v4;
    v19 = a2;
    v20 = vdupq_n_s16(0x1080u);
    do
    {
      v22 = vld3q_s8(v17);
      v17 += 48;
      *v19++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v22.val[2].i8, 0x4242424242424242), *v22.val[1].i8, 0x8181818181818181), *v22.val[0].i8, 0x1919191919191919), v20), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v22.val[2], v14), v22.val[1], v15), v22.val[0], v16), v20);
      v18 -= 16;
    }

    while (v18);
    if (v4 != a3)
    {
      if ((a3 & 8) == 0)
      {
        v7 = (a2 + v4);
        v6 = &result[3 * v4];
        LODWORD(v5) = a3 & 0x7FFFFFF0;
        goto LABEL_14;
      }

LABEL_9:
      v5 = a3 & 0x7FFFFFF8;
      v6 = &result[3 * v5];
      v7 = (a2 + v5);
      v8 = (a2 + v4);
      v9 = v4 - v5;
      v10 = &result[3 * v4];
      v11 = vdupq_n_s16(0x1080u);
      do
      {
        v21 = vld3_s8(v10);
        v10 += 24;
        *v8++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(v21.val[2], 0x4242424242424242), v21.val[1], 0x8181818181818181), v21.val[0], 0x1919191919191919), v11);
        v9 += 8;
      }

      while (v9);
      if (v5 == a3)
      {
        return result;
      }

LABEL_14:
      v12 = a3 - v5;
      v13 = (v6 + 2);
      do
      {
        *v7++ = (129 * *(v13 - 1) + 66 * *v13 + 25 * *(v13 - 2) + 4224) >> 8;
        v13 += 3;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

unsigned __int8 *RGB24ToUVRow_C(unsigned __int8 *result, int a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a2;
  if (a5 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = (*result + result[3] + result[v5] + result[v5 + 3] + 2) >> 2;
      v8 = (result[1] + result[4] + result[v5 + 1] + result[v5 + 4] + 2) >> 2;
      v9 = (result[2] + result[5] + result[v5 + 2] + result[v5 + 5] + 2) >> 2;
      *a3++ = ((112 * v7 - 74 * v8 - 38 * v9) >> 8) ^ 0x80;
      *a4++ = ((-18 * v7 - 94 * v8 + 112 * v9) >> 8) ^ 0x80;
      result += 6;
      v6 += 2;
    }

    while (v6 < a5 - 1);
  }

  v10 = &result[v5];
  if (a5)
  {
    v11 = (*result + *v10 + 1) >> 1;
    v12 = (result[1] + v10[1] + 1) >> 1;
    v13 = (result[2] + v10[2] + 1) >> 1;
    *a3 = ((112 * v11 - 74 * v12 - 38 * v13) >> 8) ^ 0x80;
    *a4 = ((-18 * v11 - 94 * v12 + 112 * v13) >> 8) ^ 0x80;
  }

  return result;
}

const char *RAWToYRow_C(const char *result, unint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 8 || (&result[3 * a3] > a2 ? (v3 = a2 + a3 > result) : (v3 = 0), v3))
    {
      LODWORD(v5) = 0;
      v6 = result;
      v7 = a2;
      goto LABEL_14;
    }

    if (a3 < 0x10)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = a3 & 0x7FFFFFF0;
    v13.i64[0] = 0x4242424242424242;
    v13.i64[1] = 0x4242424242424242;
    v14.i64[0] = 0x8181818181818181;
    v14.i64[1] = 0x8181818181818181;
    v15.i64[0] = 0x1919191919191919;
    v15.i64[1] = 0x1919191919191919;
    v16 = result;
    v17 = v4;
    v18 = a2;
    v19 = vdupq_n_s16(0x1080u);
    do
    {
      v21 = vld3q_s8(v16);
      v16 += 48;
      *v18++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v21.val[0].i8, 0x4242424242424242), *v21.val[1].i8, 0x8181818181818181), *v21.val[2].i8, 0x1919191919191919), v19), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v21.val[0], v13), v21.val[1], v14), v21.val[2], v15), v19);
      v17 -= 16;
    }

    while (v17);
    if (v4 != a3)
    {
      if ((a3 & 8) == 0)
      {
        v7 = (a2 + v4);
        v6 = &result[3 * v4];
        LODWORD(v5) = a3 & 0x7FFFFFF0;
        goto LABEL_14;
      }

LABEL_9:
      v5 = a3 & 0x7FFFFFF8;
      v6 = &result[3 * v5];
      v7 = (a2 + v5);
      v8 = (a2 + v4);
      v9 = v4 - v5;
      v10 = &result[3 * v4];
      v11 = vdupq_n_s16(0x1080u);
      do
      {
        v20 = vld3_s8(v10);
        v10 += 24;
        *v8++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(v20.val[0], 0x4242424242424242), v20.val[1], 0x8181818181818181), v20.val[2], 0x1919191919191919), v11);
        v9 += 8;
      }

      while (v9);
      if (v5 == a3)
      {
        return result;
      }

LABEL_14:
      v12 = a3 - v5;
      do
      {
        *v7++ = (129 * *(v6 + 1) + 66 * *v6 + 25 * *(v6 + 2) + 4224) >> 8;
        v6 += 3;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

unsigned __int8 *RAWToUVRow_C(unsigned __int8 *result, int a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a2;
  if (a5 >= 2)
  {
    v6 = 0;
    do
    {
      v7 = (result[2] + result[5] + result[v5 + 2] + result[v5 + 5] + 2) >> 2;
      v8 = (result[1] + result[4] + result[v5 + 1] + result[v5 + 4] + 2) >> 2;
      v9 = (*result + result[3] + result[v5] + result[v5 + 3] + 2) >> 2;
      *a3++ = ((112 * v7 - 74 * v8 - 38 * v9) >> 8) ^ 0x80;
      *a4++ = ((-18 * v7 - 94 * v8 + 112 * v9) >> 8) ^ 0x80;
      result += 6;
      v6 += 2;
    }

    while (v6 < a5 - 1);
  }

  v10 = &result[v5];
  if (a5)
  {
    v11 = (result[2] + v10[2] + 1) >> 1;
    v12 = (result[1] + v10[1] + 1) >> 1;
    v13 = (*result + *v10 + 1) >> 1;
    *a3 = ((112 * v11 - 74 * v12 - 38 * v13) >> 8) ^ 0x80;
    *a4 = ((-18 * v11 - 94 * v12 + 112 * v13) >> 8) ^ 0x80;
  }

  return result;
}

_BYTE *RGB565ToYRow_C(_BYTE *result, unint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 8 || (&result[2 * a3] > a2 ? (v3 = a2 + a3 > result) : (v3 = 0), v3))
    {
      LODWORD(v5) = 0;
      v6 = result;
      v7 = a2;
      goto LABEL_14;
    }

    if (a3 < 0x10)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = a3 & 0x7FFFFFF0;
    v14.i64[0] = 0x3838383838383838;
    v14.i64[1] = 0x3838383838383838;
    v15.i64[0] = 0x4242424242424242;
    v15.i64[1] = 0x4242424242424242;
    v16.i64[0] = 0x8181818181818181;
    v16.i64[1] = 0x8181818181818181;
    v17.i64[0] = 0x1919191919191919;
    v17.i64[1] = 0x1919191919191919;
    v18 = v4;
    v19 = result;
    v20 = a2;
    v21 = vdupq_n_s16(0x1080u);
    do
    {
      v26 = vld2q_s8(v19);
      v19 += 32;
      v22 = vshlq_n_s8(v26.val[1], 3uLL);
      v23 = vsliq_n_s8(vshrq_n_u8(v26.val[0], 2uLL), v26.val[0], 3uLL);
      v24 = vsraq_n_u8(vshlq_n_s8(vsraq_n_u8(v22, v26.val[0], 5uLL), 2uLL), vandq_s8(v22, v14), 4uLL);
      v26.val[1] = vsriq_n_s8(v26.val[1], v26.val[1], 5uLL);
      *v20++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v26.val[1].i8, 0x4242424242424242), *v23.i8, 0x1919191919191919), *v24.i8, 0x8181818181818181), v21), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v26.val[1], v15), v23, v17), v24, v16), v21);
      v18 -= 16;
    }

    while (v18);
    if (v4 != a3)
    {
      if ((a3 & 8) == 0)
      {
        v7 = (a2 + v4);
        v6 = &result[2 * v4];
        LODWORD(v5) = a3 & 0x7FFFFFF0;
        goto LABEL_14;
      }

LABEL_9:
      v5 = a3 & 0x7FFFFFF8;
      v6 = &result[2 * v5];
      v7 = (a2 + v5);
      v8 = (a2 + v4);
      v9 = v4 - v5;
      v10 = vdupq_n_s16(0x1080u);
      v11 = &result[2 * v4];
      do
      {
        v25 = vld2_s8(v11);
        v11 += 16;
        v12 = vshl_n_s8(v25.val[1], 3uLL);
        *v8++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(vsri_n_s8(v25.val[1], v25.val[1], 5uLL), 0x4242424242424242), vsli_n_s8(vshr_n_u8(v25.val[0], 2uLL), v25.val[0], 3uLL), 0x1919191919191919), vsra_n_u8(vshl_n_s8(vsra_n_u8(v12, v25.val[0], 5uLL), 2uLL), vand_s8(v12, 0x3838383838383838), 4uLL), 0x8181818181818181), v10);
        v9 += 8;
      }

      while (v9);
      if (v5 == a3)
      {
        return result;
      }

LABEL_14:
      v13 = a3 - v5;
      do
      {
        *v7++ = (25 * ((8 * *v6) | (*v6 >> 2) & 7) + 66 * (v6[1] & 0xF8 | (v6[1] >> 5)) + 129 * ((*v6 >> 3) & 0x1C | (32 * v6[1]) | (v6[1] >> 1) & 3) + 4224) >> 8;
        v6 += 2;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

const char *ARGB1555ToYRow_C(const char *result, unint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 8 || (&result[2 * a3] > a2 ? (v3 = a2 + a3 > result) : (v3 = 0), v3))
    {
      LODWORD(v5) = 0;
      v6 = result;
      v7 = a2;
      goto LABEL_14;
    }

    if (a3 < 0x10)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = a3 & 0x7FFFFFF0;
    v16.i64[0] = 0x1818181818181818;
    v16.i64[1] = 0x1818181818181818;
    v17.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v17.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v18.i64[0] = 0x4242424242424242;
    v18.i64[1] = 0x4242424242424242;
    v19.i64[0] = 0x8181818181818181;
    v19.i64[1] = 0x8181818181818181;
    v20.i64[0] = 0x1919191919191919;
    v20.i64[1] = 0x1919191919191919;
    v21 = v4;
    v22 = result;
    v23 = a2;
    v24 = vdupq_n_s16(0x1080u);
    do
    {
      v29 = vld2q_s8(v22);
      v22 += 32;
      v25 = vsraq_n_u8(vandq_s8(vshlq_n_s8(v29.val[1], 3uLL), v16), v29.val[0], 5uLL);
      v26 = vsliq_n_s8(vshrq_n_u8(v29.val[0], 2uLL), v29.val[0], 3uLL);
      v27 = vsraq_n_u8(vshlq_n_s8(v25, 3uLL), v25, 2uLL);
      v29.val[0] = vbslq_s8(v17, vaddq_s8(v29.val[1], v29.val[1]), vshrq_n_u8(v29.val[1], 4uLL));
      *v23++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v26.i8, 0x1919191919191919), *v29.val[0].i8, 0x4242424242424242), *v27.i8, 0x8181818181818181), v24), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v26, v20), v29.val[0], v18), v27, v19), v24);
      v21 -= 16;
    }

    while (v21);
    if (v4 != a3)
    {
      if ((a3 & 8) == 0)
      {
        v7 = (a2 + v4);
        v6 = &result[2 * v4];
        LODWORD(v5) = a3 & 0x7FFFFFF0;
        goto LABEL_14;
      }

LABEL_9:
      v5 = a3 & 0x7FFFFFF8;
      v6 = &result[2 * v5];
      v7 = (a2 + v5);
      v8 = (a2 + v4);
      v9 = v4 - v5;
      v10 = &result[2 * v4];
      v11 = vdupq_n_s16(0x1080u);
      do
      {
        v28 = vld2_s8(v10);
        v10 += 16;
        v12 = vsra_n_u8(vand_s8(vshl_n_s8(v28.val[1], 3uLL), 0x1818181818181818), v28.val[0], 5uLL);
        *v8++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(vsli_n_s8(vshr_n_u8(v28.val[0], 2uLL), v28.val[0], 3uLL), 0x1919191919191919), vbsl_s8(0xF8F8F8F8F8F8F8F8, vadd_s8(v28.val[1], v28.val[1]), vshr_n_u8(v28.val[1], 4uLL)), 0x4242424242424242), vsra_n_u8(vshl_n_s8(v12, 3uLL), v12, 2uLL), 0x8181818181818181), v11);
        v9 += 8;
      }

      while (v9);
      if (v5 == a3)
      {
        return result;
      }

LABEL_14:
      v13 = a3 - v5;
      do
      {
        v14 = *(v6 + 1);
        v15 = (*v6 >> 5) & 0xFFFFFFE7 | (8 * (v14 & 3));
        *v7++ = (66 * ((2 * v14) & 0xF8 | (v14 >> 4) & 7) + 25 * ((8 * *v6) | (*v6 >> 2) & 7) + 129 * ((v15 >> 2) | (8 * v15)) + 4224) >> 8;
        v6 += 2;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

const char *ARGB4444ToYRow_C(const char *result, unint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    if (a3 < 8 || (&result[2 * a3] > a2 ? (v3 = a2 + a3 > result) : (v3 = 0), v3))
    {
      LODWORD(v5) = 0;
      v6 = result;
      v7 = a2;
      goto LABEL_14;
    }

    if (a3 < 0x10)
    {
      v4 = 0;
      goto LABEL_9;
    }

    v4 = a3 & 0x7FFFFFF0;
    v15.i64[0] = 0x4242424242424242;
    v15.i64[1] = 0x4242424242424242;
    v16.i64[0] = 0x8181818181818181;
    v16.i64[1] = 0x8181818181818181;
    v17.i64[0] = 0x1919191919191919;
    v17.i64[1] = 0x1919191919191919;
    v18 = v4;
    v19 = result;
    v20 = a2;
    v21 = vdupq_n_s16(0x1080u);
    do
    {
      v24 = vld2q_s8(v19);
      v19 += 32;
      v22 = vsliq_n_s8(v24.val[0], v24.val[0], 4uLL);
      v24.val[0] = vsriq_n_s8(v24.val[0], v24.val[0], 4uLL);
      v24.val[1] = vsliq_n_s8(v24.val[1], v24.val[1], 4uLL);
      *v20++ = vaddhn_high_s16(vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(*v24.val[0].i8, 0x8181818181818181), *v22.i8, 0x1919191919191919), *v24.val[1].i8, 0x4242424242424242), v21), vmlal_high_u8(vmlal_high_u8(vmull_high_u8(v24.val[0], v16), v22, v17), v24.val[1], v15), v21);
      v18 -= 16;
    }

    while (v18);
    if (v4 != a3)
    {
      if ((a3 & 8) == 0)
      {
        v7 = (a2 + v4);
        v6 = &result[2 * v4];
        LODWORD(v5) = a3 & 0x7FFFFFF0;
        goto LABEL_14;
      }

LABEL_9:
      v5 = a3 & 0x7FFFFFF8;
      v6 = &result[2 * v5];
      v7 = (a2 + v5);
      v8 = (a2 + v4);
      v9 = v4 - v5;
      v10 = vdupq_n_s16(0x1080u);
      v11 = &result[2 * v4];
      do
      {
        v23 = vld2_s8(v11);
        v11 += 16;
        *v8++ = vaddhn_s16(vmlal_u8(vmlal_u8(vmull_u8(vsri_n_s8(v23.val[0], v23.val[0], 4uLL), 0x8181818181818181), vsli_n_s8(v23.val[0], v23.val[0], 4uLL), 0x1919191919191919), vsli_n_s8(v23.val[1], v23.val[1], 4uLL), 0x4242424242424242), v10);
        v9 += 8;
      }

      while (v9);
      if (v5 == a3)
      {
        return result;
      }

LABEL_14:
      v12 = a3 - v5;
      do
      {
        v13.i32[0] = *v6;
        v13.i32[1] = *(v6 + 1);
        v14 = vmul_s32((*&vorr_s8(vshl_n_s32(v13, 4uLL), (*&v13 & 0xFFFFFF0FFFFFFF0FLL)) & 0xFFFFF0FFFFFFF0FFLL), 0x4200000019);
        *v7++ = (129 * (*v6 & 0xF0 | (*v6 >> 4)) + v14.i16[0] + 4224 + v14.i16[2]) >> 8;
        v6 += 2;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

unint64_t RGB565ToUVRow_C(unint64_t result, int a2, int8x16_t *a3, int8x16_t *a4, int a5)
{
  v5 = (result + a2);
  v6 = a5 - 2;
  if (a5 >= 2)
  {
    if (v6 >= 0x1E)
    {
      v7 = 0;
      v25 = v6 >> 1;
      v26 = &a3->i8[v25 + 1];
      v27 = &a4->i8[v25 + 1];
      v28 = result + 4 * v25 + 4;
      v29 = v28 + a2;
      v31 = v29 > a3 && v5 < v26;
      v33 = v28 > a3 && v26 > result;
      v35 = v29 > a4 && v5 < v27;
      v37 = v28 > a4 && v27 > result;
      v38 = v26 > a4 && v27 > a3;
      if (!v38 && !v31 && !v33 && !v35 && !v37)
      {
        v39 = (v25 + 1);
        v40 = 4 * (v39 & 0xFFFFFFF0);
        v8 = (result + v40);
        v9 = (a3 + (v39 & 0xFFFFFFF0));
        v10 = (a4 + (v39 & 0xFFFFFFF0));
        v5 += v40;
        v7 = 2 * (v39 & 0xFFFFFFF0);
        v41.i64[0] = 0x200000002;
        v41.i64[1] = 0x200000002;
        v42.i64[0] = 0x7000000070;
        v42.i64[1] = 0x7000000070;
        v43 = vdupq_n_s32(0xFFB6u);
        v44 = vdupq_n_s32(0xFFDAu);
        v45 = vdupq_n_s32(0xFFA2u);
        v46 = vdupq_n_s32(0xFFEEu);
        v47 = v39 & 0xFFFFFFF0;
        do
        {
          v48 = (result + a2);
          v101 = vld4q_s8(result);
          result += 64;
          v49 = vshlq_n_s8(v101.val[1], 3uLL);
          v100 = vld4q_s8(v48);
          v50.i64[0] = 0x3838383838383838;
          v50.i64[1] = 0x3838383838383838;
          v51 = vshlq_n_s8(v101.val[3], 3uLL);
          v52 = vshlq_n_s8(v100.val[1], 3uLL);
          v53 = vandq_s8(v52, v50);
          v54 = vshlq_n_s8(v100.val[3], 3uLL);
          v55 = vsliq_n_s8(vshrq_n_u8(v101.val[0], 2uLL), v101.val[0], 3uLL);
          v56 = vsraq_n_u8(vshlq_n_s8(vsraq_n_u8(v49, v101.val[0], 5uLL), 2uLL), vandq_s8(v49, v50), 4uLL);
          v101.val[1] = vsriq_n_s8(v101.val[1], v101.val[1], 5uLL);
          v57 = vsliq_n_s8(vshrq_n_u8(v101.val[2], 2uLL), v101.val[2], 3uLL);
          v58 = vsraq_n_u8(vshlq_n_s8(vsraq_n_u8(v51, v101.val[2], 5uLL), 2uLL), vandq_s8(v51, v50), 4uLL);
          v101.val[3] = vsriq_n_s8(v101.val[3], v101.val[3], 5uLL);
          v59 = vsliq_n_s8(vshrq_n_u8(v100.val[0], 2uLL), v100.val[0], 3uLL);
          v60 = vshlq_n_s8(vsraq_n_u8(v52, v100.val[0], 5uLL), 2uLL);
          v100.val[1] = vsriq_n_s8(v100.val[1], v100.val[1], 5uLL);
          v61 = vqtbl1q_s8(v101.val[1], xmmword_273B8E7D0);
          v62 = vqtbl1q_s8(v101.val[1], xmmword_273B8E7C0);
          v63 = vqtbl1q_s8(v101.val[1], xmmword_273B8E7B0);
          v64 = vqtbl1q_s8(v101.val[1], xmmword_273B8E7A0);
          v65 = vsraq_n_u8(v60, v53, 4uLL);
          v66 = vmovl_u8(*v101.val[3].i8);
          v101.val[0] = vmovl_high_u8(v101.val[3]);
          v101.val[3] = vmovl_high_u8(v57);
          v101.val[2] = vaddw_high_u16(vqtbl1q_s8(v55, xmmword_273B8E7A0), v101.val[3]);
          v101.val[1] = vaddw_u16(vqtbl1q_s8(v55, xmmword_273B8E7B0), *v101.val[3].i8);
          v101.val[3] = vsliq_n_s8(vshrq_n_u8(v100.val[2], 2uLL), v100.val[2], 3uLL);
          v100.val[3] = vsriq_n_s8(v100.val[3], v100.val[3], 5uLL);
          v67 = vsraq_n_u8(vshlq_n_s8(vsraq_n_u8(v54, v100.val[2], 5uLL), 2uLL), vandq_s8(v54, v50), 4uLL);
          v68 = vqtbl1q_s8(v55, xmmword_273B8E7D0);
          v69 = vmovl_u8(*v57.i8);
          v70 = vaddw_high_u16(vqtbl1q_s8(v55, xmmword_273B8E7C0), v69);
          v71 = vaddw_u16(v68, *v69.i8);
          v72 = vmovl_high_u8(v59);
          v73 = vmovl_u8(*v59.i8);
          v74 = vaddw_u16(v71, *v73.i8);
          v75 = vaddw_high_u16(v70, v73);
          v76 = vmovl_u8(*v101.val[3].i8);
          v101.val[3] = vmovl_high_u8(v101.val[3]);
          v101.val[2] = vaddw_high_u16(vaddw_high_u16(v101.val[2], v72), v101.val[3]);
          v101.val[1] = vaddw_u16(vaddw_u16(v101.val[1], *v72.i8), *v101.val[3].i8);
          v101.val[3] = vaddw_high_u16(v75, v76);
          v77 = vmovl_high_u8(v100.val[1]);
          v78 = vaddw_u16(v74, *v76.i8);
          v79 = vmovl_u8(*v100.val[1].i8);
          v80 = vmovl_u8(*v100.val[3].i8);
          v81 = vmovl_high_u8(v100.val[3]);
          v100.val[2] = vmovl_u8(*v58.i8);
          v100.val[1] = vaddw_u16(vqtbl1q_s8(v56, xmmword_273B8E7D0), *v100.val[2].i8);
          v100.val[0] = vaddw_high_u16(vqtbl1q_s8(v56, xmmword_273B8E7C0), v100.val[2]);
          v100.val[2] = vqtbl1q_s8(v56, xmmword_273B8E7A0);
          v100.val[3] = vqtbl1q_s8(v56, xmmword_273B8E7B0);
          v82 = vmovl_high_u8(v58);
          v100.val[3] = vaddw_u16(v100.val[3], *v82.i8);
          v100.val[2] = vaddw_high_u16(v100.val[2], v82);
          v83 = vmovl_high_u8(v65);
          v100.val[2] = vaddw_high_u16(v100.val[2], v83);
          v100.val[3] = vaddw_u16(v100.val[3], *v83.i8);
          v84 = vmovl_u8(*v65.i8);
          v100.val[0] = vaddw_high_u16(v100.val[0], v84);
          v100.val[1] = vaddw_u16(v100.val[1], *v84.i8);
          v85 = vmovl_u8(*v67.i8);
          v86 = vaddw_u16(v100.val[1], *v85.i8);
          v87 = vaddw_high_u16(v100.val[0], v85);
          v100.val[0] = vmovl_high_u8(v67);
          v100.val[3] = vaddw_u16(v100.val[3], *v100.val[0].i8);
          v88 = vaddw_high_u16(v100.val[2], v100.val[0]);
          v89 = vshrq_n_u32(vaddq_s32(v101.val[2], v41), 2uLL);
          v100.val[2] = vshrq_n_u32(vaddq_s32(v101.val[1], v41), 2uLL);
          v100.val[1] = vshrq_n_u32(vaddq_s32(v101.val[3], v41), 2uLL);
          v100.val[0] = vshrq_n_u32(vaddq_s32(v78, v41), 2uLL);
          v101.val[1] = vaddq_s32(v100.val[3], v41);
          v100.val[3] = vshrq_n_u32(vaddq_s32(v86, v41), 2uLL);
          v90 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v64, v101.val[0]), v77), v81);
          v91 = vshrq_n_u32(vaddq_s32(v87, v41), 2uLL);
          v92 = vaddw_u16(vaddw_u16(vaddw_u16(v63, *v101.val[0].i8), *v77.i8), *v81.i8);
          v93 = vshrq_n_u32(v101.val[1], 2uLL);
          v94 = vshrq_n_u32(vaddq_s32(v90, v41), 2uLL);
          v95 = vshrq_n_u32(vaddq_s32(v92, v41), 2uLL);
          v101.val[1] = vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v62, v66), v79), v80), v41), 2uLL);
          v101.val[0] = vshrq_n_u32(vaddq_s32(v88, v41), 2uLL);
          v101.val[2] = vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddw_u16(v61, *v66.i8), *v79.i8), *v80.i8), v41), 2uLL);
          v99.val[3] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v94, v44), v89, v42), v101.val[0], v43), 8uLL);
          v99.val[2] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v95, v44), v100.val[2], v42), v93, v43), 8uLL);
          v99.val[1] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v101.val[1], v44), v100.val[1], v42), v91, v43), 8uLL);
          v99.val[0] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v101.val[2], v44), v100.val[0], v42), v100.val[3], v43), 8uLL);
          v96 = vmlaq_s32(vmulq_s32(v95, v42), v100.val[2], v46);
          v100.val[2] = vmlaq_s32(vmlaq_s32(vmulq_s32(v101.val[1], v42), v100.val[1], v46), v91, v45);
          v101.val[0] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v94, v42), v89, v46), v101.val[0], v45), 8uLL);
          v97 = vshrq_n_u32(vmlaq_s32(v96, v93, v45), 8uLL);
          v98 = vshrq_n_u32(v100.val[2], 8uLL);
          v96.i64[0] = 0x8080808080808080;
          v96.i64[1] = 0x8080808080808080;
          *a3++ = veorq_s8(vqtbl4q_s8(v99, xmmword_273B8E8C0), v96);
          v100.val[3] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v101.val[2], v42), v100.val[0], v46), v100.val[3], v45), 8uLL);
          *a4++ = veorq_s8(vqtbl4q_s8(v101, xmmword_273B8E8C0), v96);
          v47 -= 16;
        }

        while (v47);
        if ((v39 & 0xFFFFFFF0) == v39)
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = result;
    v9 = a3;
    v10 = a4;
LABEL_5:
    result = 65518;
    do
    {
      v11 = (((8 * *v8) | (*v8 >> 2) & 7) + ((8 * v8[2]) | (v8[2] >> 2) & 7) + ((8 * *v5) | (*v5 >> 2) & 7) + ((8 * v5[2]) | (v5[2] >> 2) & 7) + 2) >> 2;
      v12.i16[0] = v8[1];
      v12.i16[1] = v8[3];
      v12.i16[2] = v5[1];
      v13.i16[0] = *v8;
      v13.i16[1] = v8[2];
      v13.i16[2] = *v5;
      v13.i16[3] = v5[2];
      v12.i16[3] = v5[3];
      v14 = vshl_n_s16(v12, 3uLL);
      v15 = *&vorr_s8(vshl_n_s16(vsra_n_u16(v14, v13, 5uLL), 2uLL), vshr_n_u16(vand_s8(v14, 0x38003800380038), 4uLL)) & 0xFF00FF00FF00FFLL;
      LOWORD(v15) = vaddv_s16(v15);
      v16 = ((v8[1] & 0xF8 | (v8[1] >> 5)) + (v8[3] & 0xF8 | (v8[3] >> 5)) + (v5[1] & 0xF8 | (v5[1] >> 5)) + (v5[3] & 0xF8 | (v5[3] >> 5)) + 2) >> 2;
      v17 = (v15 + 2) >> 2;
      v9->i8[0] = ((-38 * v16 + 112 * v11 - 74 * v17) >> 8) ^ 0x80;
      v9 = (v9 + 1);
      v10->i8[0] = ((112 * v16 - 18 * v11 - 94 * v17) >> 8) ^ 0x80;
      v10 = (v10 + 1);
      v8 += 4;
      v5 += 4;
      v7 += 2;
    }

    while (v7 < a5 - 1);
    goto LABEL_9;
  }

  v10 = a4;
  v9 = a3;
  v8 = result;
LABEL_9:
  if (a5)
  {
    v18 = *v8;
    v19 = v8[1];
    v20 = *v5;
    v21 = v5[1];
    v22 = (((8 * v18) | (v18 >> 2) & 7) + ((8 * v20) | (v20 >> 2) & 7) + 1) >> 1;
    v23 = (((v18 >> 3) & 0x1C | (32 * v19) | (v19 >> 1) & 3) + ((v20 >> 3) & 0x1C | (32 * v21) | (v21 >> 1) & 3) + 1) >> 1;
    v24 = ((v19 & 0xF8 | (v19 >> 5)) + (v21 & 0xF8 | (v21 >> 5)) + 1) >> 1;
    v9->i8[0] = ((-38 * v24 + 112 * v22 - 74 * v23) >> 8) ^ 0x80;
    v10->i8[0] = ((112 * v24 - 18 * v22 - 94 * v23) >> 8) ^ 0x80;
  }

  return result;
}

unint64_t ARGB1555ToUVRow_C(unint64_t result, int a2, int8x16_t *a3, int8x16_t *a4, int a5, double a6, double a7, double a8, double a9, int16x4_t a10)
{
  v10 = (result + a2);
  v11 = a5 - 2;
  if (a5 >= 2)
  {
    if (v11 >= 0x1E)
    {
      v12 = 0;
      v37 = v11 >> 1;
      v38 = &a3->i8[v37 + 1];
      v39 = &a4->i8[v37 + 1];
      v40 = result + 4 * v37 + 4;
      v41 = v40 + a2;
      v43 = v41 > a3 && v10 < v38;
      v45 = v40 > a3 && v38 > result;
      v47 = v41 > a4 && v10 < v39;
      v49 = v40 > a4 && v39 > result;
      v50 = v38 > a4 && v39 > a3;
      if (!v50 && !v43 && !v45 && !v47 && !v49)
      {
        v51 = (v37 + 1);
        v52 = 4 * (v51 & 0xFFFFFFF0);
        v13 = (result + v52);
        v14 = (a3 + (v51 & 0xFFFFFFF0));
        v15 = (a4 + (v51 & 0xFFFFFFF0));
        v10 += v52;
        v12 = 2 * (v51 & 0xFFFFFFF0);
        v53.i64[0] = 0x1818181818181818;
        v53.i64[1] = 0x1818181818181818;
        v54.i64[0] = 0xF8F8F8F8F8F8F8F8;
        v54.i64[1] = 0xF8F8F8F8F8F8F8F8;
        *&a10 = NAN;
        v55.i64[0] = 0x200000002;
        v55.i64[1] = 0x200000002;
        v56.i64[0] = 0x7000000070;
        v56.i64[1] = 0x7000000070;
        v57 = vdupq_n_s32(0xFFB6u);
        v58 = vdupq_n_s32(0xFFDAu);
        v59.i64[0] = 0x8080808080808080;
        v59.i64[1] = 0x8080808080808080;
        v60 = vdupq_n_s32(0xFFA2u);
        v61 = vdupq_n_s32(0xFFEEu);
        v62 = v51 & 0xFFFFFFF0;
        do
        {
          v63 = (result + a2);
          v109 = vld4q_s8(result);
          result += 64;
          v64 = vsraq_n_u8(vandq_s8(vshlq_n_s8(v109.val[1], 3uLL), v53), v109.val[0], 5uLL);
          v110 = vld4q_s8(v63);
          v65 = vsraq_n_u8(vandq_s8(vshlq_n_s8(v109.val[3], 3uLL), v53), v109.val[2], 5uLL);
          v66 = vsliq_n_s8(vshrq_n_u8(v109.val[0], 2uLL), v109.val[0], 3uLL);
          v67 = vsraq_n_u8(vshlq_n_s8(v64, 3uLL), v64, 2uLL);
          v68 = vbslq_s8(v54, vaddq_s8(v109.val[1], v109.val[1]), vshrq_n_u8(v109.val[1], 4uLL));
          v69 = vsliq_n_s8(vshrq_n_u8(v109.val[2], 2uLL), v109.val[2], 3uLL);
          v70 = vsraq_n_u8(vshlq_n_s8(v65, 3uLL), v65, 2uLL);
          v71 = vbslq_s8(v54, vaddq_s8(v109.val[3], v109.val[3]), vshrq_n_u8(v109.val[3], 4uLL));
          v109.val[0] = vsliq_n_s8(vshrq_n_u8(v110.val[0], 2uLL), v110.val[0], 3uLL);
          v72 = vsraq_n_u8(vandq_s8(vshlq_n_s8(v110.val[1], 3uLL), v53), v110.val[0], 5uLL);
          v73 = vbslq_s8(v54, vaddq_s8(v110.val[1], v110.val[1]), vshrq_n_u8(v110.val[1], 4uLL));
          v109.val[1] = vsliq_n_s8(vshrq_n_u8(v110.val[2], 2uLL), v110.val[2], 3uLL);
          v74 = vsraq_n_u8(vandq_s8(vshlq_n_s8(v110.val[3], 3uLL), v53), v110.val[2], 5uLL);
          v75 = vbslq_s8(v54, vaddq_s8(v110.val[3], v110.val[3]), vshrq_n_u8(v110.val[3], 4uLL));
          v109.val[2] = vqtbl1q_s8(v66, xmmword_273B8E7D0);
          v109.val[3] = vqtbl1q_s8(v66, xmmword_273B8E7C0);
          v110.val[1] = vqtbl1q_s8(v66, xmmword_273B8E7B0);
          v110.val[2] = vmovl_high_u8(v69);
          v76 = vaddw_high_u16(vqtbl1q_s8(v66, xmmword_273B8E7A0), v110.val[2]);
          v110.val[1] = vaddw_u16(v110.val[1], *v110.val[2].i8);
          v77 = vmovl_u8(*v69.i8);
          v109.val[3] = vaddw_high_u16(v109.val[3], v77);
          v78 = vaddw_u16(v109.val[2], *v77.i8);
          v109.val[2] = vmovl_high_u8(v109.val[0]);
          v109.val[0] = vmovl_u8(*v109.val[0].i8);
          v110.val[0] = vsraq_n_u8(vshlq_n_s8(v72, 3uLL), v72, 2uLL);
          v79 = vmovl_u8(*v109.val[1].i8);
          v109.val[1] = vmovl_high_u8(v109.val[1]);
          v110.val[2] = vsraq_n_u8(vshlq_n_s8(v74, 3uLL), v74, 2uLL);
          v80 = vaddw_high_u16(vaddw_high_u16(v76, v109.val[2]), v109.val[1]);
          v81 = vaddw_u16(vaddw_u16(v110.val[1], *v109.val[2].i8), *v109.val[1].i8);
          v109.val[1] = vaddq_s32(vaddw_u16(vaddw_u16(v78, *v109.val[0].i8), *v79.i8), v55);
          v82 = vaddq_s32(vaddw_high_u16(vaddw_high_u16(v109.val[3], v109.val[0]), v79), v55);
          v83 = vshrq_n_u32(vaddq_s32(v80, v55), 2uLL);
          v84 = vshrq_n_u32(vaddq_s32(v81, v55), 2uLL);
          v85 = vshrq_n_u32(v82, 2uLL);
          v86 = vqtbl1q_s8(v67, xmmword_273B8E7A0);
          v109.val[0] = vqtbl1q_s8(v67, xmmword_273B8E7B0);
          v109.val[2] = vqtbl1q_s8(v67, xmmword_273B8E7C0);
          v109.val[3] = vqtbl1q_s8(v67, xmmword_273B8E7D0);
          v110.val[1] = vmovl_high_u8(v70);
          v87 = vshrq_n_u32(v109.val[1], 2uLL);
          v88 = vmovl_u8(*v70.i8);
          v109.val[1] = vmovl_u8(*v110.val[0].i8);
          v110.val[0] = vmovl_high_u8(v110.val[0]);
          v109.val[3] = vaddw_u16(v109.val[3], *v88.i8);
          v89 = vaddw_high_u16(v109.val[2], v88);
          v109.val[2] = vmovl_high_u8(v110.val[2]);
          v110.val[2] = vmovl_u8(*v110.val[2].i8);
          v90 = vaddw_high_u16(v89, v109.val[1]);
          v109.val[1] = vaddw_u16(vaddw_u16(v109.val[3], *v109.val[1].i8), *v110.val[2].i8);
          v91 = vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v86, v110.val[1]), v110.val[0]), v109.val[2]), v55);
          v109.val[0] = vaddq_s32(vaddw_u16(vaddw_u16(vaddw_u16(v109.val[0], *v110.val[1].i8), *v110.val[0].i8), *v109.val[2].i8), v55);
          v109.val[2] = vqtbl1q_s8(v68, xmmword_273B8E7D0);
          v109.val[3] = vqtbl1q_s8(v68, xmmword_273B8E7C0);
          v110.val[0] = vqtbl1q_s8(v68, xmmword_273B8E7B0);
          v92 = vaddq_s32(vaddw_high_u16(v90, v110.val[2]), v55);
          v110.val[1] = vmovl_u8(*v71.i8);
          v93 = vmovl_high_u8(v71);
          v110.val[2] = vmovl_high_u8(v73);
          v94 = vmovl_u8(*v73.i8);
          v110.val[3] = vaddw_high_u16(vqtbl1q_s8(v68, xmmword_273B8E7A0), v93);
          v95 = vaddq_s32(v109.val[1], v55);
          v109.val[1] = vmovl_u8(*v75.i8);
          v96 = vmovl_high_u8(v75);
          v97 = vshrq_n_u32(v95, 2uLL);
          v109.val[2] = vaddw_u16(vaddw_u16(v109.val[2], *v110.val[1].i8), *v94.i8);
          v98 = vaddw_high_u16(vaddw_high_u16(v109.val[3], v110.val[1]), v94);
          v109.val[3] = vaddw_u16(vaddw_u16(v110.val[0], *v93.i8), *v110.val[2].i8);
          v110.val[0] = vaddw_high_u16(vaddw_high_u16(v110.val[3], v110.val[2]), v96);
          v99 = vshrq_n_u32(v92, 2uLL);
          v100 = vaddw_u16(v109.val[3], *v96.i8);
          v101 = vaddw_high_u16(v98, v109.val[1]);
          v102 = vaddq_s32(vaddw_u16(v109.val[2], *v109.val[1].i8), v55);
          v109.val[1] = vaddq_s32(v101, v55);
          v103 = vshrq_n_u32(v109.val[0], 2uLL);
          v109.val[0] = vshrq_n_u32(vaddq_s32(v110.val[0], v55), 2uLL);
          v104 = vshrq_n_u32(vaddq_s32(v100, v55), 2uLL);
          v109.val[1] = vshrq_n_u32(v109.val[1], 2uLL);
          v105 = vshrq_n_u32(v91, 2uLL);
          v106 = vshrq_n_u32(v102, 2uLL);
          v110.val[2] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v83, v56), v109.val[0], v58), v105, v57), 8uLL);
          v110.val[1] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v84, v56), v104, v58), v103, v57), 8uLL);
          v110.val[0] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v85, v56), v109.val[1], v58), v99, v57), 8uLL);
          v109.val[3] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v87, v56), v106, v58), v97, v57), 8uLL);
          v107 = vmlaq_s32(vmlaq_s32(vmulq_s32(v87, v61), v106, v56), v97, v60);
          v108 = vmlaq_s32(vmlaq_s32(vmulq_s32(v84, v61), v104, v56), v103, v60);
          v111.val[3] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v83, v61), v109.val[0], v56), v105, v60), 8uLL);
          v111.val[2] = vshrq_n_u32(v108, 8uLL);
          v111.val[1] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v85, v61), v109.val[1], v56), v99, v60), 8uLL);
          *a3++ = veorq_s8(vqtbl4q_s8(*(&v109 + 48), xmmword_273B8E8C0), v59);
          v111.val[0] = vshrq_n_u32(v107, 8uLL);
          *a4++ = veorq_s8(vqtbl4q_s8(v111, xmmword_273B8E8C0), v59);
          v62 -= 16;
        }

        while (v62);
        if ((v51 & 0xFFFFFFF0) == v51)
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = result;
    v14 = a3;
    v15 = a4;
LABEL_5:
    result = 65518;
    do
    {
      v16 = ((8 * *v13) | (*v13 >> 2) & 7) + ((8 * v13[2]) | (v13[2] >> 2) & 7) + ((8 * *v10) | (*v10 >> 2) & 7) + ((8 * v10[2]) | (v10[2] >> 2) & 7) + 2;
      a10.i8[0] = v13[1];
      a10.i8[2] = v13[3];
      a10.i8[4] = v10[1];
      a10.i8[6] = v10[3];
      v17.i16[0] = *v13;
      v17.i16[1] = v13[2];
      v17.i16[2] = *v10;
      v17.i16[3] = v10[2];
      v18 = vsra_n_u16(vand_s8(vshl_n_s16(a10, 3uLL), 0x18001800180018), v17, 5uLL);
      v19 = vorr_s8(vshl_n_s16(v18, 3uLL), vshr_n_u16(v18, 2uLL));
      v19.i16[0] = vaddv_s16(v19);
      v20 = v19.i32[0];
      v21 = vand_s8(vadd_s16(a10, a10), 0xF800F800F800F8);
      a10 = vand_s8(vshr_n_u16(a10, 4uLL), 0x7000700070007);
      v22 = vorr_s8(v21, a10);
      v22.i16[0] = vaddv_s16(v22);
      v23 = (v22.i32[0] + 2) >> 2;
      v24 = (v20 + 2) >> 2;
      v14->i8[0] = ((112 * (v16 >> 2) - 38 * v23 - 74 * v24) >> 8) ^ 0x80;
      v14 = (v14 + 1);
      v15->i8[0] = ((-18 * (v16 >> 2) + 112 * v23 - 94 * v24) >> 8) ^ 0x80;
      v15 = (v15 + 1);
      v13 += 4;
      v10 += 4;
      v12 += 2;
    }

    while (v12 < a5 - 1);
    goto LABEL_9;
  }

  v15 = a4;
  v14 = a3;
  v13 = result;
LABEL_9:
  if (a5)
  {
    v25 = *v13;
    v26 = v13[1];
    v27 = (v25 >> 5) & 0xFFFFFFE7 | (8 * (v26 & 3));
    v28 = *v10;
    v29 = v10[1];
    v30 = (v28 >> 5) & 0xFFFFFFE7 | (8 * (v29 & 3));
    v31 = (2 * v26) & 0xF8 | (v26 >> 4) & 7;
    LOBYTE(v26) = (8 * v28) | (v28 >> 2) & 7;
    v32 = (v30 >> 2) | (8 * v30);
    v33 = (2 * v29) & 0xF8 | (v29 >> 4) & 7;
    v34 = (((8 * v25) | (v25 >> 2) & 7) + v26 + 1) >> 1;
    v35 = (((v27 >> 2) | (8 * v27)) + v32 + 1) >> 1;
    v36 = (v31 + v33 + 1) >> 1;
    v14->i8[0] = ((112 * v34 - 38 * v36 - 74 * v35) >> 8) ^ 0x80;
    v15->i8[0] = ((-18 * v34 + 112 * v36 - 94 * v35) >> 8) ^ 0x80;
  }

  return result;
}

char *ARGB4444ToUVRow_C(char *result, int a2, int8x16_t *a3, int8x16_t *a4, int a5)
{
  v5 = &result[a2];
  v6 = a5 - 2;
  if (a5 >= 2)
  {
    if (v6 >= 0x1E)
    {
      v7 = 0;
      v25 = v6 >> 1;
      v26 = &a3->i8[v25 + 1];
      v27 = &a4->i8[v25 + 1];
      v28 = &result[4 * v25 + 4];
      v29 = v28 + a2;
      v31 = v29 > a3 && v5 < v26;
      v33 = v28 > a3 && v26 > result;
      v35 = v29 > a4 && v5 < v27;
      v37 = v28 > a4 && v27 > result;
      v38 = v26 > a4 && v27 > a3;
      if (!v38 && !v31 && !v33 && !v35 && !v37)
      {
        v39 = (v25 + 1);
        v40 = 4 * (v39 & 0xFFFFFFF0);
        v8 = &result[v40];
        v9 = (a3 + (v39 & 0xFFFFFFF0));
        v10 = (a4 + (v39 & 0xFFFFFFF0));
        v5 += v40;
        v7 = 2 * (v39 & 0xFFFFFFF0);
        v86 = vdupq_n_s32(0xFFB6u);
        v85 = vdupq_n_s32(0xFFDAu);
        v84 = vdupq_n_s32(0xFFA2u);
        v83 = vdupq_n_s32(0xFFEEu);
        v41 = v39 & 0xFFFFFFF0;
        do
        {
          v42 = &result[a2];
          v88 = vld4q_s8(result);
          result += 64;
          v43 = v88.val[0];
          v87 = vld4q_s8(v42);
          v88.val[0] = vsriq_n_s8(v88.val[0], v88.val[0], 4uLL);
          v44 = vsliq_n_s8(v43, v43, 4uLL);
          v88.val[1] = vsliq_n_s8(v88.val[1], v88.val[1], 4uLL);
          v45 = vsliq_n_s8(v88.val[2], v88.val[2], 4uLL);
          v88.val[2] = vsriq_n_s8(v88.val[2], v88.val[2], 4uLL);
          v88.val[3] = vsliq_n_s8(v88.val[3], v88.val[3], 4uLL);
          v46 = v87.val[0];
          v87.val[0] = vsriq_n_s8(v87.val[0], v87.val[0], 4uLL);
          v87.val[1] = vsliq_n_s8(v87.val[1], v87.val[1], 4uLL);
          v47 = v87.val[2];
          v87.val[2] = vsriq_n_s8(v87.val[2], v87.val[2], 4uLL);
          v48 = vqtbl1q_s8(v88.val[0], xmmword_273B8E7D0);
          v87.val[3] = vsliq_n_s8(v87.val[3], v87.val[3], 4uLL);
          v49 = vqtbl1q_s8(v88.val[0], xmmword_273B8E7C0);
          v50 = vqtbl1q_s8(v88.val[0], xmmword_273B8E7B0);
          v51 = vqtbl1q_s8(v88.val[0], xmmword_273B8E7A0);
          v52 = vmovl_u8(*v88.val[2].i8);
          v53 = vmovl_high_u8(v88.val[2]);
          v54 = vmovl_high_u8(v87.val[0]);
          v55 = vmovl_u8(*v87.val[0].i8);
          v56 = vmovl_u8(*v87.val[2].i8);
          v57 = vqtbl1q_s8(v88.val[1], xmmword_273B8E7A0);
          v58 = vqtbl1q_s8(v88.val[1], xmmword_273B8E7B0);
          v59 = vqtbl1q_s8(v88.val[1], xmmword_273B8E7C0);
          v60 = vmovl_high_u8(v87.val[2]);
          v61 = vqtbl1q_s8(v88.val[1], xmmword_273B8E7D0);
          v62 = vmovl_high_u8(v88.val[3]);
          v88.val[2] = vmovl_u8(*v88.val[3].i8);
          v88.val[0] = vmovl_u8(*v87.val[1].i8);
          v88.val[3] = vmovl_high_u8(v87.val[1]);
          v88.val[1] = vmovl_high_u8(v87.val[3]);
          v63 = vmovl_u8(*v87.val[3].i8);
          v87.val[2] = vmovl_high_u8(v45);
          v87.val[1] = vaddw_high_u16(vqtbl1q_s8(v44, xmmword_273B8E7A0), v87.val[2]);
          v87.val[0] = vaddw_u16(vqtbl1q_s8(v44, xmmword_273B8E7B0), *v87.val[2].i8);
          v87.val[2] = vqtbl1q_s8(v44, xmmword_273B8E7D0);
          v87.val[3] = vmovl_u8(*v45.i8);
          v64 = vaddw_high_u16(vqtbl1q_s8(v44, xmmword_273B8E7C0), v87.val[3]);
          v87.val[2] = vaddw_u16(v87.val[2], *v87.val[3].i8);
          v65 = vsliq_n_s8(v46, v46, 4uLL);
          v87.val[3] = vmovl_u8(*v65.i8);
          v87.val[2] = vaddw_u16(v87.val[2], *v87.val[3].i8);
          v66 = vaddw_high_u16(v64, v87.val[3]);
          v67 = vsliq_n_s8(v47, v47, 4uLL);
          v87.val[3] = vmovl_high_u8(v65);
          v87.val[0] = vaddw_u16(v87.val[0], *v87.val[3].i8);
          v87.val[1] = vaddw_high_u16(v87.val[1], v87.val[3]);
          v87.val[3] = vmovl_high_u8(v67);
          v87.val[1] = vaddw_high_u16(v87.val[1], v87.val[3]);
          v87.val[0] = vaddw_u16(v87.val[0], *v87.val[3].i8);
          v87.val[3] = vmovl_u8(*v67.i8);
          v68 = vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v49, v52), v55), v56);
          v69 = vaddw_u16(vaddw_u16(vaddw_u16(v48, *v52.i8), *v55.i8), *v56.i8);
          v70.i64[0] = 0x200000002;
          v70.i64[1] = 0x200000002;
          v71 = vshrq_n_u32(vaddq_s32(v87.val[1], v70), 2uLL);
          v87.val[1] = vshrq_n_u32(vaddq_s32(v87.val[0], v70), 2uLL);
          v87.val[0] = vshrq_n_u32(vaddq_s32(vaddw_high_u16(v66, v87.val[3]), v70), 2uLL);
          v72 = vshrq_n_u32(vaddq_s32(vaddw_u16(v87.val[2], *v87.val[3].i8), v70), 2uLL);
          v87.val[2] = vaddq_s32(v68, v70);
          v73 = vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v51, v53), v54), v60), v70), 2uLL);
          v87.val[3] = vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddw_u16(v50, *v53.i8), *v54.i8), *v60.i8), v70), 2uLL);
          v87.val[2] = vshrq_n_u32(v87.val[2], 2uLL);
          v74 = vshrq_n_u32(vaddq_s32(v69, v70), 2uLL);
          v75 = vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddw_u16(v61, *v88.val[2].i8), *v88.val[0].i8), *v63.i8), v70), 2uLL);
          v76 = vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v59, v88.val[2]), v88.val[0]), v63), v70), 2uLL);
          v77 = vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddw_u16(v58, *v62.i8), *v88.val[3].i8), *v88.val[1].i8), v70), 2uLL);
          v78 = vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddw_high_u16(v57, v62), v88.val[3]), v88.val[1]), v70), 2uLL);
          v70.i64[0] = 0x7000000070;
          v70.i64[1] = 0x7000000070;
          v88.val[2] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v73, v86), v71, v70), v78, v85), 8uLL);
          v88.val[1] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v87.val[3], v86), v87.val[1], v70), v77, v85), 8uLL);
          v88.val[0] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v87.val[2], v86), v87.val[0], v70), v76, v85), 8uLL);
          v79 = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v74, v86), v72, v70), v75, v85), 8uLL);
          v80 = vmlaq_s32(vmulq_s32(v73, v84), v71, v83);
          v81 = vmlaq_s32(vmlaq_s32(vmulq_s32(v87.val[2], v84), v87.val[0], v83), v76, v70);
          v87.val[2] = vshrq_n_u32(vmlaq_s32(v80, v78, v70), 8uLL);
          v87.val[1] = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v87.val[3], v84), v87.val[1], v83), v77, v70), 8uLL);
          v87.val[0] = vshrq_n_u32(v81, 8uLL);
          v76.i64[0] = 0x8080808080808080;
          v76.i64[1] = 0x8080808080808080;
          *a3++ = veorq_s8(vqtbl4q_s8(v88, xmmword_273B8E8C0), v76);
          v82 = vshrq_n_u32(vmlaq_s32(vmlaq_s32(vmulq_s32(v74, v84), v72, v83), v75, v70), 8uLL);
          *a4++ = veorq_s8(vqtbl4q_s8(v87, xmmword_273B8E8C0), v76);
          v41 -= 16;
        }

        while (v41);
        if ((v39 & 0xFFFFFFF0) == v39)
        {
          goto LABEL_8;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = result;
    v9 = a3;
    v10 = a4;
    do
    {
LABEL_5:
      v11.i32[0] = *v8;
      v12.i32[0] = *(v8 + 2);
      v11.i32[1] = *(v8 + 1);
      v12.i32[1] = *(v8 + 3);
      v13.i32[0] = *v5;
      v13.i32[1] = v5[1];
      v14.i32[0] = v5[2];
      v14.i32[1] = v5[3];
      v15 = vshr_n_u32(vadd_s32(vadd_s32(vadd_s32((*&vorr_s8(vshl_n_s32(v11, 4uLL), (*&v11 & 0xFFFFFF0FFFFFFF0FLL)) & 0xFFFFF0FFFFFFF0FFLL), (*&vorr_s8(vshl_n_s32(v12, 4uLL), (*&v12 & 0xFFFFFF0FFFFFFF0FLL)) & 0xFFFFF0FFFFFFF0FFLL)), vadd_s32((*&vorr_s8(vshl_n_s32(v13, 4uLL), (*&v13 & 0xFFFFFF0FFFFFFF0FLL)) & 0xFFFFF0FFFFFFF0FFLL), (*&vorr_s8(vshl_n_s32(v14, 4uLL), (*&v14 & 0xFFFFFF0FFFFFFF0FLL)) & 0xFFFFF0FFFFFFF0FFLL))), 0x200000002), 2uLL);
      v16 = ((*v8 & 0xF0 | (*v8 >> 4)) + (v12.i8[0] & 0xF0 | (v12.i32[0] >> 4)) + (v13.i8[0] & 0xF0 | (v13.i32[0] >> 4)) + (v14.i8[0] & 0xF0 | (v14.i32[0] >> 4)) + 2) >> 2;
      v17 = vmul_s32(v15, 0xFFDA00000070);
      v18 = vmul_s32(v15, 0x700000FFEELL);
      result = v18.u32[1];
      v9->i8[0] = ((v17.i16[0] - 74 * v16 + v17.i16[2]) >> 8) ^ 0x80;
      v9 = (v9 + 1);
      v10->i8[0] = ((v18.i16[0] - 94 * v16 + v18.i16[2]) >> 8) ^ 0x80;
      v10 = (v10 + 1);
      v8 += 4;
      v5 += 4;
      v7 += 2;
    }

    while (v7 < a5 - 1);
    goto LABEL_8;
  }

  v10 = a4;
  v9 = a3;
  v8 = result;
LABEL_8:
  if (a5)
  {
    v19.i32[0] = *v8;
    v19.i32[1] = *(v8 + 1);
    v20.i32[0] = *v5;
    v20.i32[1] = v5[1];
    v21 = ((v19.i8[0] & 0xF0 | (v19.i32[0] >> 4)) + (v20.i8[0] & 0xF0 | (v20.i32[0] >> 4)) + 1) >> 1;
    v22 = vrhadd_u32((*&vorr_s8(vshl_n_s32(v19, 4uLL), (*&v19 & 0xFFFFFF0FFFFFFF0FLL)) & 0xFFFFF0FFFFFFF0FFLL), (*&vorr_s8(vshl_n_s32(v20, 4uLL), (*&v20 & 0xFFFFFF0FFFFFFF0FLL)) & 0xFFFFF0FFFFFFF0FFLL));
    v23 = vmul_s32(v22, 0xFFDA00000070);
    v9->i8[0] = ((v23.i16[0] - 74 * v21 + v23.i16[2]) >> 8) ^ 0x80;
    v24 = vmul_s32(v22, 0x700000FFEELL);
    v10->i8[0] = ((v24.i16[0] - 94 * v21 + v24.i16[2]) >> 8) ^ 0x80;
  }

  return result;
}

uint64_t MirrorRow_C(uint64_t result, unint64_t a2, int a3)
{
  v3 = a3 - 1;
  v4 = result + v3;
  if (a3 >= 2)
  {
    v5 = 2;
    if (v3 > 2)
    {
      v5 = a3 - 1;
    }

    if (v3 >= 31 && (result + v3 + 1 <= a2 || result + v3 - ((v3 - 1) | 1uLL) >= a2 + ((v3 - 1) & 0xFFFFFFFFFFFFFFFELL) + 2))
    {
      v9 = ((v5 - 1) >> 1) + 1;
      v6 = 2 * (v9 & 0x7FFFFFFFFFFFFFF0);
      v7 = (v4 - v6);
      v10 = (v4 - 31);
      v11 = v9 & 0x7FFFFFFFFFFFFFF0;
      v12 = a2;
      do
      {
        v14 = vld2q_s8(v10);
        v13 = vrev64q_s8(v14.val[0]);
        v15.val[1] = vextq_s8(v13, v13, 8uLL);
        v14.val[0] = vrev64q_s8(v14.val[1]);
        v15.val[0] = vextq_s8(v14.val[0], v14.val[0], 8uLL);
        vst2q_s8(v12, v15);
        v12 += 32;
        v10 -= 32;
        v11 -= 16;
      }

      while (v11);
      if (v9 == (v9 & 0x7FFFFFFFFFFFFFF0))
      {
LABEL_9:
        if ((a3 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
      v7 = (result + v3);
    }

    do
    {
      v8 = (a2 + v6);
      *v8 = *v7;
      v8[1] = *(v7 - 1);
      v7 -= 2;
      v6 += 2;
    }

    while (v6 < v3);
    goto LABEL_9;
  }

  v7 = (result + v3);
  if (a3)
  {
LABEL_10:
    *(a2 + v3) = *v7;
  }

  return result;
}

uint64_t MirrorSplitUVRow_C(uint64_t result, char *a2, char *a3, int a4)
{
  v4 = (a4 - 1);
  v5 = 2 * v4;
  v6 = result + v5;
  v7 = (result + v5);
  if (a4 < 2)
  {
    goto LABEL_8;
  }

  if (v4 <= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = (a4 - 1);
  }

  if (a4 < 0x20)
  {
    v9 = 0;
    do
    {
LABEL_7:
      v10 = &a2[v9];
      *v10 = *v7;
      v10[1] = *(v7 - 2);
      v11 = &a3[v9 + 1];
      *(v11 - 1) = v7[1];
      *v11 = *(v7 - 1);
      v7 -= 4;
      v9 += 2;
    }

    while (v9 < v4);
    goto LABEL_8;
  }

  v9 = 0;
  v12 = 2;
  if (v4 > 2)
  {
    v12 = (a4 - 1);
  }

  v13 = v12 - 1;
  v14 = (v13 & 0xFFFFFFFFFFFFFFFELL) + 2;
  v15 = &a2[v14];
  v16 = v5 - ((2 * v13) & 0x7FFFFFFFFFFFFFFCLL) + result - 2;
  v17 = result + v5 + 2;
  v19 = v17 > a2 && v16 < v15;
  v20 = &a3[v14];
  v22 = v17 > a3 && v16 < v20;
  if (v15 > a3 && v20 > a2)
  {
    goto LABEL_7;
  }

  if (v19)
  {
    goto LABEL_7;
  }

  if (v22)
  {
    goto LABEL_7;
  }

  v24 = ((v8 - 1) >> 1) + 1;
  v7 = (v6 - 4 * (v24 & 0x7FFFFFFFFFFFFFF0));
  v9 = 2 * (v24 & 0x7FFFFFFFFFFFFFF0);
  v25 = (v6 - 62);
  v26 = v24 & 0x7FFFFFFFFFFFFFF0;
  v27 = a2;
  v28 = a3;
  do
  {
    v34 = vld4q_s8(v25);
    v29 = vrev64q_s8(v34.val[0]);
    v32.val[1] = vextq_s8(v29, v29, 8uLL);
    v30 = vrev64q_s8(v34.val[1]);
    v33.val[1] = vextq_s8(v30, v30, 8uLL);
    v31 = vrev64q_s8(v34.val[2]);
    v32.val[0] = vextq_s8(v31, v31, 8uLL);
    v34.val[0] = vrev64q_s8(v34.val[3]);
    vst2q_s8(v27, v32);
    v27 += 32;
    v33.val[0] = vextq_s8(v34.val[0], v34.val[0], 8uLL);
    vst2q_s8(v28, v33);
    v28 += 32;
    v25 -= 64;
    v26 -= 16;
  }

  while (v26);
  if (v24 != (v24 & 0x7FFFFFFFFFFFFFF0))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a4)
  {
    a2[v4] = *v7;
    a3[v4] = v7[1];
  }

  return result;
}

const char *SplitUVRow_C(const char *result, int8x16_t *a2, int8x16_t *a3, int a4)
{
  v4 = a4 - 1;
  if (a4 >= 2)
  {
    if (v4 <= 2uLL)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    if (a4 >= 0x20)
    {
      v6 = 0;
      v10 = 2;
      if (v4 > 2uLL)
      {
        v10 = v4;
      }

      v11 = v10 - 1;
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL) + 2;
      v13 = a2->u64 + v12;
      v14 = a3->u64 + v12;
      v15 = &result[((2 * v11) & 0x7FFFFFFFFFFFFFFCLL) + 4];
      v17 = v15 > a2 && v13 > result;
      v19 = v15 > a3 && v14 > result;
      v20 = v13 > a3 && v14 > a2;
      if (!v20 && !v17 && !v19)
      {
        v21 = ((v5 - 1) >> 1) + 1;
        v6 = 2 * (v21 & 0x7FFFFFFFFFFFFFF0);
        v7 = &result[4 * (v21 & 0x7FFFFFFFFFFFFFF0)];
        v22 = v21 & 0x7FFFFFFFFFFFFFF0;
        v23 = a2;
        v24 = a3;
        do
        {
          v25 = result + 64;
          v27 = vld2q_s8(result);
          v26 = result + 32;
          v28 = vld2q_s8(v26);
          *v23 = v27.val[0];
          v23[1] = v28.val[0];
          v23 += 2;
          *v24 = v27.val[1];
          v24[1] = v28.val[1];
          v24 += 2;
          result = v25;
          v22 -= 16;
        }

        while (v22);
        if (v21 == (v21 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = result;
    do
    {
LABEL_8:
      v8 = &a2->i8[v6];
      *v8 = *v7;
      v8[1] = v7[2];
      v9 = &a3->i8[v6 + 1];
      *(v9 - 1) = v7[1];
      *v9 = v7[3];
      v7 += 4;
      v6 += 2;
    }

    while (v6 < v4);
    goto LABEL_11;
  }

  v7 = result;
LABEL_11:
  if (a4)
  {
    a2->i8[v4] = *v7;
    a3->i8[v4] = v7[1];
  }

  return result;
}

unint64_t MergeUVRow_C(unint64_t result, unint64_t a2, _BYTE *a3, int a4)
{
  v4 = (a4 - 1);
  if (a4 >= 2)
  {
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = (a4 - 1);
    }

    if (a4 >= 0x40)
    {
      v6 = 0;
      v8 = 2;
      if (v4 > 2)
      {
        v8 = (a4 - 1);
      }

      v9 = v8 - 1;
      v10 = &a3[((2 * v9) & 0x7FFFFFFFFFFFFFFCLL) + 4];
      v11 = (v9 & 0xFFFFFFFFFFFFFFFELL) + 2;
      v13 = a2 + v11 > a3 && v10 > a2;
      if (v10 > result && result + v11 > a3)
      {
        v7 = a3;
      }

      else if (v13)
      {
        v7 = a3;
      }

      else
      {
        v15 = ((v5 - 1) >> 1) + 1;
        v7 = &a3[4 * (v15 & 0x7FFFFFFFFFFFFFE0)];
        v6 = 2 * (v15 & 0x7FFFFFFFFFFFFFE0);
        v16 = a3 + 64;
        v17 = (result + 32);
        v18 = (a2 + 32);
        v19 = v15 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v21 = v17[-2];
          v20 = v17[-1];
          v23 = v18[-2];
          v22 = v18[-1];
          v29.val[1] = vuzp1q_s8(v23, v22);
          v29.val[0] = vuzp1q_s8(v21, v20);
          v29.val[3] = vuzp2q_s8(v23, v22);
          v24 = v16 - 64;
          v26 = *v17;
          v25 = v17[1];
          v17 += 4;
          v28 = *v18;
          v27 = v18[1];
          v18 += 4;
          v29.val[2] = vuzp2q_s8(v21, v20);
          vst4q_s8(v24, v29);
          v29.val[1] = vuzp1q_s8(v28, v27);
          v29.val[0] = vuzp1q_s8(v26, v25);
          v29.val[3] = vuzp2q_s8(v28, v27);
          v29.val[2] = vuzp2q_s8(v26, v25);
          vst4q_s8(v16, v29);
          v16 += 128;
          v19 -= 32;
        }

        while (v19);
        if (v15 == (v15 & 0x7FFFFFFFFFFFFFE0))
        {
LABEL_8:
          if ((a4 & 1) == 0)
          {
            return result;
          }

          goto LABEL_9;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = a3;
    }

    do
    {
      *v7 = *(result + v6);
      v7[1] = *(a2 + v6);
      v7[2] = *(result + v6 + 1);
      v7[3] = *(a2 + v6 + 1);
      v7 += 4;
      v6 += 2;
    }

    while (v6 < v4);
    goto LABEL_8;
  }

  v7 = a3;
  if (a4)
  {
LABEL_9:
    *v7 = *(result + v4);
    v7[1] = *(a2 + v4);
  }

  return result;
}

uint16x8_t *MergeUVRow_16_C(uint16x8_t *result, uint16x8_t *a2, __int16 *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 16 - a4;
    if (a5 < 8)
    {
      v6 = 0;
LABEL_4:
      v7 = a3;
LABEL_5:
      v8 = a5 - v6;
      v9 = v6;
      v10 = a2 + v6;
      v11 = &result->u16[v9];
      do
      {
        v12 = *v11++;
        *v7 = v12 << v5;
        v13 = *v10++;
        v7[1] = v13 << v5;
        v7 += 2;
        --v8;
      }

      while (v8);
      return result;
    }

    v6 = 0;
    v14 = &a3[2 * a5];
    v16 = a2 + 2 * a5 > a3 && v14 > a2;
    v17 = v14 > result && result + 2 * a5 > a3;
    if (v17 || v16)
    {
      goto LABEL_4;
    }

    v6 = a5 & 0x7FFFFFF8;
    v7 = &a3[2 * v6];
    v18 = vdupq_n_s32(v5);
    v19 = v6;
    v20 = a2;
    v21 = result;
    do
    {
      v22 = *v21++;
      v23 = vshlq_u32(vmovl_high_u16(v22), v18);
      v24 = vshlq_u32(vmovl_u16(*v22.i8), v18);
      v25 = *v20++;
      v26.val[0] = vuzp1q_s16(v24, v23);
      v26.val[1] = vuzp1q_s16(vshlq_u32(vmovl_u16(*v25.i8), v18), vshlq_u32(vmovl_high_u16(v25), v18));
      vst2q_s16(a3, v26);
      a3 += 16;
      v19 -= 8;
    }

    while (v19);
    if (v6 != a5)
    {
      goto LABEL_5;
    }
  }

  return result;
}

int16x8_t *MultiplyRow_16_C(int16x8_t *result, int16x8_t *a2, __int16 a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    if (a4 < 4 || (a2 - result) < 0x20)
    {
      goto LABEL_13;
    }

    if (a4 >= 0x10)
    {
      v4 = a4 & 0x7FFFFFF0;
      v5 = vdupq_n_s16(a3);
      v6 = result + 1;
      v7 = a2 + 1;
      v8 = v4;
      do
      {
        v9 = vmulq_s16(*v6, v5);
        v7[-1] = vmulq_s16(v6[-1], v5);
        *v7 = v9;
        v6 += 2;
        v7 += 2;
        v8 -= 16;
      }

      while (v8);
      if (v4 == a4)
      {
        return result;
      }

      if ((a4 & 0xC) == 0)
      {
LABEL_13:
        v16 = a4 - v4;
        v17 = v4;
        v18 = &a2->i16[v4];
        v19 = &result->i16[v17];
        do
        {
          v20 = *v19++;
          *v18++ = v20 * a3;
          --v16;
        }

        while (v16);
        return result;
      }
    }

    else
    {
      v4 = 0;
    }

    v10 = v4;
    v4 = a4 & 0x7FFFFFFC;
    v11 = vdup_n_s16(a3);
    v12 = (result + 2 * v10);
    v13 = (a2 + 2 * v10);
    v14 = v10 - v4;
    do
    {
      v15 = *v12++;
      *v13++ = vmul_s16(v15, v11);
      v14 += 4;
    }

    while (v14);
    if (v4 != a4)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint16x8_t *Convert16To8Row_C(uint16x8_t *result, int8x16_t *a2, unsigned int a3, unsigned int a4)
{
  if (a4 < 1)
  {
    return result;
  }

  if (a4 < 4 || (result + 2 * a4 > a2 ? (v4 = &a2->i8[a4] > result) : (v4 = 0), v4))
  {
    v6 = 0;
  }

  else
  {
    v5 = vdupq_n_s32(a3);
    if (a4 >= 0x10)
    {
      v6 = a4 & 0x7FFFFFF0;
      v12.i64[0] = 0xFF000000FFLL;
      v12.i64[1] = 0xFF000000FFLL;
      v13 = v6;
      v14 = a2;
      v15 = result;
      do
      {
        v17 = *v15;
        v16 = v15[1];
        v15 += 2;
        v24.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(v5, vmovl_high_u16(v17)), 0x10uLL), v12);
        v24.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(v5, vmovl_high_u16(v16)), 0x10uLL), v12);
        v24.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(v5, vmovl_u16(*v16.i8)), 0x10uLL), v12);
        v24.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(v5, vmovl_u16(*v17.i8)), 0x10uLL), v12);
        *v14++ = vqtbl4q_s8(v24, xmmword_273B8E8C0);
        v13 -= 16;
      }

      while (v13);
      if (v6 == a4)
      {
        return result;
      }

      if ((a4 & 0xC) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
    }

    v18 = v6;
    v6 = a4 & 0x7FFFFFFC;
    v19 = (result + 2 * v18);
    v20 = (a2->i32 + v18);
    v21 = v18 - v6;
    v22.i64[0] = 0xFF000000FFLL;
    v22.i64[1] = 0xFF000000FFLL;
    do
    {
      v23 = *v19++;
      *v20++ = vuzp1_s8(vmovn_s32(vminq_s32(vshrq_n_s32(vmulq_s32(v5, vmovl_u16(v23)), 0x10uLL), v22)), *v5.i8).u32[0];
      v21 += 4;
    }

    while (v21);
    if (v6 == a4)
    {
      return result;
    }
  }

LABEL_10:
  v7 = a4 - v6;
  v8 = &a2->i8[v6];
  v9 = result + v6;
  do
  {
    v10 = *v9++;
    v11 = (v10 * a3) >> 16;
    if (v11 >= 255)
    {
      LOBYTE(v11) = -1;
    }

    *v8++ = v11;
    --v7;
  }

  while (v7);
  return result;
}

int8x16_t *Convert8To16Row_C(int8x16_t *result, int16x8_t *a2, int a3, unsigned int a4, double a5, uint8x8_t a6)
{
  if (a4 >= 1)
  {
    v6 = 257 * a3;
    if (a4 < 4 || &result->i8[a4] > a2 && a2 + 2 * a4 > result)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v12 = vdupq_n_s32(v6);
    if (a4 >= 0x10)
    {
      v7 = a4 & 0x7FFFFFF0;
      a6.i32[1] = -243;
      v13 = v7;
      v14 = a2;
      v15 = result;
      do
      {
        v16 = *v15++;
        *v14 = vuzp2q_s16(vmulq_s32(v12, vqtbl1q_s8(v16, xmmword_273B8E7D0)), vmulq_s32(v12, vqtbl1q_s8(v16, xmmword_273B8E7C0)));
        v14[1] = vuzp2q_s16(vmulq_s32(v12, vqtbl1q_s8(v16, xmmword_273B8E7B0)), vmulq_s32(v12, vqtbl1q_s8(v16, xmmword_273B8E7A0)));
        v14 += 2;
        v13 -= 16;
      }

      while (v13);
      if (v7 == a4)
      {
        return result;
      }

      if ((a4 & 0xC) == 0)
      {
LABEL_6:
        v8 = a4 - v7;
        v9 = &a2->i16[v7];
        v10 = &result->u8[v7];
        do
        {
          v11 = *v10++;
          *v9++ = (v6 * v11) >> 16;
          --v8;
        }

        while (v8);
        return result;
      }
    }

    else
    {
      v7 = 0;
    }

    v17 = v7;
    v7 = a4 & 0x7FFFFFFC;
    v18 = (result->i32 + v17);
    v19 = (a2->i64 + 2 * v17);
    v20 = v17 - v7;
    do
    {
      v21 = *v18++;
      a6.i32[0] = v21;
      a6 = vshrn_n_s32(vmulq_s32(v12, vmovl_u16(*&vmovl_u8(a6))), 0x10uLL);
      *v19++ = *&a6;
      v20 += 4;
    }

    while (v20);
    if (v7 != a4)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t YUY2ToUVRow_C(uint64_t result, int a2, uint8x16_t *a3, uint8x16_t *a4, int a5)
{
  v5 = (a5 - 1);
  if (a5 >= 1)
  {
    v6 = a2 + 1;
    v7 = a2 + 3;
    if (a5 < 0x11)
    {
      v8 = 0;
      goto LABEL_64;
    }

    v8 = 0;
    v9 = v5 >> 1;
    v10 = &a3->i8[v9 + 1];
    v11 = result + v7;
    v12 = result + 4 * v9;
    v13 = v12 + v7 + 1;
    v14 = result + 1;
    v15 = v12 + 4;
    v16 = result + v6;
    v17 = v12 + v6 + 1;
    v19 = v13 > a3 && v11 < v10;
    v21 = v15 > a3 && v14 < v10;
    v23 = v17 > a3 && v16 < v10;
    v24 = &a4->i8[v9 + 1];
    v26 = v13 > a4 && v11 < v24;
    v28 = v15 > a4 && v14 < v24;
    v30 = v17 > a4 && v16 < v24;
    v31 = v10 > a4 && v24 > a3;
    if (v31 || v19 || v21 || v23 || v26 || v28 || v30)
    {
      goto LABEL_64;
    }

    v32 = (v9 + 1);
    if (a5 >= 0x21)
    {
      v34 = 16;
      if (((v9 + 1) & 0xF) != 0)
      {
        v34 = (v9 + 1) & 0xF;
      }

      v33 = v32 - v34;
      v35 = v32 - v34;
      v36 = result;
      v37 = a4;
      v38 = a3;
      do
      {
        v39 = (v36 + 1);
        v60 = vld4q_s8(v39);
        v40 = (v36 + v6);
        v41 = vld4q_s8(v40);
        *v38++ = vrhaddq_u8(v60.val[0], v41);
        v42 = (v36 + v7);
        v43 = vld4q_s8(v42);
        *v37++ = vrhaddq_u8(v60.val[2], v43);
        v36 += 64;
        v35 -= 16;
      }

      while (v35);
      if (v34 < 9)
      {
        a3 = (a3 + v33);
        a4 = (a4 + v33);
        v8 = 2 * v33;
        result += 4 * v33;
        do
        {
LABEL_64:
          a3->i8[0] = (*(result + 1) + *(result + v6) + 1) >> 1;
          a3 = (a3 + 1);
          a4->i8[0] = (*(result + 3) + *(result + v7) + 1) >> 1;
          a4 = (a4 + 1);
          result += 4;
          v8 += 2;
        }

        while (v8 < a5);
        return result;
      }
    }

    else
    {
      v33 = 0;
    }

    if ((v32 & 7) != 0)
    {
      v44 = v32 & 7;
    }

    else
    {
      v44 = 8;
    }

    v45 = v32 - v44;
    v8 = 2 * (v32 - v44);
    v46 = result + 4 * v45;
    v47 = ~(v5 >> 1);
    v48 = (a4 + v45);
    v49 = (a3 + v45);
    v50 = &a3->i8[v33];
    v51 = &a4->i8[v33];
    v52 = v47 + v44 + v33;
    v53 = result + 4 * v33;
    do
    {
      v54 = (v53 + 1);
      v59 = vld4_s8(v54);
      v55 = (v53 + v6);
      v56 = vld4_s8(v55);
      *v50++ = vrhadd_u8(v59.val[0], v56);
      v57 = (v53 + v7);
      v58 = vld4_s8(v57);
      *v51++ = vrhadd_u8(v59.val[2], v58);
      v53 += 32;
      v52 += 8;
    }

    while (v52);
    result = v46;
    a4 = v48;
    a3 = v49;
    goto LABEL_64;
  }

  return result;
}

_BYTE *YUY2ToYRow_C(_BYTE *result, unint64_t a2, int a3)
{
  v3 = (a3 - 1);
  if (a3 >= 2)
  {
    v4 = 2;
    if (v3 > 2)
    {
      v4 = (a3 - 1);
    }

    if (a3 >= 0x42)
    {
      v6 = 2;
      if (v3 > 2)
      {
        v6 = (a3 - 1);
      }

      v7 = v6 - 1;
      if (&result[(2 * v7) | 3] > a2 && a2 + (v7 & 0xFFFFFFFFFFFFFFFELL) + 2 > result)
      {
        v5 = 0;
      }

      else
      {
        v9 = (v4 - 1) >> 1;
        v10 = v9 + 1;
        if (((v9 + 1) & 0x1F) != 0)
        {
          v11 = (v9 + 1) & 0x1F;
        }

        else
        {
          v11 = 32;
        }

        v12 = v10 - v11;
        v5 = 2 * (v10 - v11);
        v13 = &result[4 * v12];
        v14 = result + 64;
        v15 = (a2 + 32);
        v16 = ~v9 + v11;
        do
        {
          v17 = v14 - 64;
          v18 = vld2q_s8(v17);
          v19 = v14 - 32;
          v20 = vld2q_s8(v19);
          v21 = v14 + 128;
          v23 = vld2q_s8(v14);
          v22 = v14 + 32;
          v24 = vld2q_s8(v22);
          *(v15 - 2) = v18;
          *(v15 - 1) = v20;
          *v15 = v23;
          v15[1] = v24;
          v15 += 4;
          v14 = v21;
          v16 += 32;
        }

        while (v16);
        result = v13;
      }
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v25 = (a2 + v5);
      *v25 = *result;
      v25[1] = result[2];
      result += 4;
      v5 += 2;
    }

    while (v5 < v3);
  }

  if (a3)
  {
    *(a2 + v3) = *result;
  }

  return result;
}

const char *UYVYToUVRow_C(const char *result, int a2, uint8x16_t *a3, uint8x16_t *a4, int a5)
{
  v5 = (a5 - 1);
  if (a5 >= 1)
  {
    v6 = a2;
    v7 = a2 + 2;
    if (a5 < 0x11)
    {
      v8 = 0;
      goto LABEL_64;
    }

    v8 = 0;
    v9 = v5 >> 1;
    v10 = &a3->i8[v9 + 1];
    v11 = &result[v7];
    v12 = &result[4 * v9];
    v13 = &v12[v7 + 1];
    v14 = (v12 + 3);
    v15 = &result[v6];
    v16 = &v12[v6 + 1];
    v18 = v13 > a3 && v11 < v10;
    v20 = v14 > a3 && v10 > result;
    v22 = v16 > a3 && v15 < v10;
    v23 = &a4->i8[v9 + 1];
    v25 = v13 > a4 && v11 < v23;
    v27 = v14 > a4 && v23 > result;
    v29 = v16 > a4 && v15 < v23;
    v30 = v10 > a4 && v23 > a3;
    if (v30 || v18 || v20 || v22 || v25 || v27 || v29)
    {
      goto LABEL_64;
    }

    v31 = (v9 + 1);
    if (a5 >= 0x21)
    {
      v33 = 16;
      if (((v9 + 1) & 0xF) != 0)
      {
        v33 = (v9 + 1) & 0xF;
      }

      v32 = v31 - v33;
      v34 = v31 - v33;
      v35 = result;
      v36 = a4;
      v37 = a3;
      v38 = result;
      do
      {
        v58 = vld4q_s8(v38);
        v38 += 64;
        v39 = &v35[v6];
        v40 = vld4q_s8(v39);
        *v37++ = vrhaddq_u8(v58.val[0], v40);
        v41 = &v35[v7];
        v42 = vld4q_s8(v41);
        *v36++ = vrhaddq_u8(v58.val[2], v42);
        v35 = v38;
        v34 -= 16;
      }

      while (v34);
      if (v33 < 9)
      {
        a3 = (a3 + v32);
        a4 = (a4 + v32);
        v8 = 2 * v32;
        result += 4 * v32;
        do
        {
LABEL_64:
          a3->i8[0] = (*result + result[v6] + 1) >> 1;
          a3 = (a3 + 1);
          a4->i8[0] = (*(result + 2) + result[v7] + 1) >> 1;
          a4 = (a4 + 1);
          result += 4;
          v8 += 2;
        }

        while (v8 < a5);
        return result;
      }
    }

    else
    {
      v32 = 0;
    }

    if ((v31 & 7) != 0)
    {
      v43 = v31 & 7;
    }

    else
    {
      v43 = 8;
    }

    v44 = v31 - v43;
    v8 = 2 * (v31 - v43);
    v45 = (a4 + v44);
    v46 = ~(v5 >> 1);
    v47 = (a3 + v44);
    v48 = &a3->i8[v32];
    v49 = &a4->i8[v32];
    v50 = &result[4 * v32];
    v51 = v46 + v43 + v32;
    v52 = v50;
    result += 4 * v44;
    do
    {
      v57 = vld4_s8(v52);
      v52 += 32;
      v53 = &v50[v6];
      v54 = vld4_s8(v53);
      *v48++ = vrhadd_u8(v57.val[0], v54);
      v55 = &v50[v7];
      v56 = vld4_s8(v55);
      *v49++ = vrhadd_u8(v57.val[2], v56);
      v50 = v52;
      v51 += 8;
    }

    while (v51);
    a4 = v45;
    a3 = v47;
    goto LABEL_64;
  }

  return result;
}

uint64_t UYVYToYRow_C(uint64_t result, unint64_t a2, int a3)
{
  v3 = (a3 - 1);
  if (a3 >= 2)
  {
    v4 = 2;
    if (v3 > 2)
    {
      v4 = (a3 - 1);
    }

    if (a3 >= 0x42)
    {
      v6 = 2;
      if (v3 > 2)
      {
        v6 = (a3 - 1);
      }

      v7 = v6 - 1;
      if (result + ((2 * v7) & 0x7FFFFFFFFFFFFFFCuLL) + 4 <= a2 || result + 1 >= a2 + (v7 & 0xFFFFFFFFFFFFFFFELL) + 2)
      {
        v9 = (v4 - 1) >> 1;
        v10 = v9 + 1;
        if (((v9 + 1) & 0x1F) != 0)
        {
          v11 = (v9 + 1) & 0x1F;
        }

        else
        {
          v11 = 32;
        }

        v12 = v10 - v11;
        v5 = 2 * (v10 - v11);
        v13 = result + 4 * v12;
        v14 = (result + 65);
        v15 = (a2 + 32);
        v16 = ~v9 + v11;
        do
        {
          v17 = v14 - 64;
          v18 = vld2q_s8(v17);
          v19 = v14 - 32;
          v20 = vld2q_s8(v19);
          v21 = v14 + 128;
          v23 = vld2q_s8(v14);
          v22 = v14 + 32;
          v24 = vld2q_s8(v22);
          *(v15 - 2) = v18;
          *(v15 - 1) = v20;
          *v15 = v23;
          v15[1] = v24;
          v15 += 4;
          v14 = v21;
          v16 += 32;
        }

        while (v16);
        result = v13;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v25 = (a2 + v5);
      *v25 = *(result + 1);
      v25[1] = *(result + 3);
      result += 4;
      v5 += 2;
    }

    while (v5 < v3);
  }

  if (a3)
  {
    *(a2 + v3) = *(result + 1);
  }

  return result;
}

int8x16_t *InterpolateRow_C(int8x16_t *result, uint8x16_t *a2, uint64_t a3, int a4, unsigned int a5)
{
  if (!a5)
  {
    return memcpy(result, a2, a4);
  }

  if (a5 != 128)
  {
    if (a4 < 1)
    {
      return result;
    }

    v9 = 256 - a5;
    v10 = &a2->i8[a3];
    if (a4 < 8)
    {
      LODWORD(v11) = 0;
LABEL_13:
      v12 = result;
      v13 = a2;
      goto LABEL_14;
    }

    LODWORD(v11) = 0;
    if ((result - v10) < 0x20 || (result - a2) < 0x20)
    {
      goto LABEL_13;
    }

    v18 = vdupq_n_s16(v9);
    v19 = vdupq_n_s16(a5);
    if (a4 >= 0x20)
    {
      v20 = a4 & 0x7FFFFFE0;
      v31 = result + 1;
      v32 = v20;
      v33 = a2;
      do
      {
        v34 = &v33->i8[a3];
        v35 = *v33;
        v36 = v33[1];
        v33 += 2;
        v37 = vraddhn_high_s16(vraddhn_s16(vmlaq_s16(vmulq_s16(v19, vmovl_u8(v34[2])), v18, vmovl_u8(*v36.i8)), 0), vmlaq_s16(vmulq_s16(v19, vmovl_high_u8(*v34[2].i8)), v18, vmovl_high_u8(v36)), 0);
        v31[-1] = vraddhn_high_s16(vraddhn_s16(vmlaq_s16(vmulq_s16(v19, vmovl_u8(*v34)), v18, vmovl_u8(*v35.i8)), 0), vmlaq_s16(vmulq_s16(v19, vmovl_high_u8(*v34->i8)), v18, vmovl_high_u8(v35)), 0);
        *v31 = v37;
        v31 += 2;
        v32 -= 32;
      }

      while (v32);
      if (v20 == a4)
      {
        return result;
      }

      if ((a4 & 0x18) == 0)
      {
        v13 = (a2 + v20);
        v12 = (result + v20);
        v10 += v20;
        LODWORD(v11) = a4 & 0x7FFFFFE0;
        goto LABEL_14;
      }
    }

    else
    {
      v20 = 0;
    }

    v11 = a4 & 0x7FFFFFF8;
    v10 += v11;
    v12 = (result + v11);
    v13 = (a2 + v11);
    v38 = &a2->i8[v20];
    v39 = &result->i8[v20];
    v40 = v20 - v11;
    do
    {
      *v39++ = vraddhn_s16(vmlaq_s16(vmulq_s16(v19, vmovl_u8(*(v38 + a3))), v18, vmovl_u8(*v38)), 0);
      ++v38;
      v40 += 8;
    }

    while (v40);
    if (v11 == a4)
    {
      return result;
    }

LABEL_14:
    v14 = a4 - v11;
    do
    {
      v16 = v13->u8[0];
      v13 = (v13 + 1);
      v15 = v16;
      v17 = *v10++;
      v12->i8[0] = (v17 * a5 + v9 * v15 + 128) >> 8;
      v12 = (v12 + 1);
      --v14;
    }

    while (v14);
    return result;
  }

  if (a4 < 1)
  {
    return result;
  }

  if (a4 < 8)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  if ((result - &a2->i8[a3]) < 0x20 || (result - a2) < 0x20)
  {
    goto LABEL_6;
  }

  if (a4 >= 0x20)
  {
    v5 = a4 & 0x7FFFFFE0;
    v21 = &result[1];
    v22 = v5;
    v23 = a2;
    do
    {
      v24 = vrhaddq_u8(v23[1], *(&v23[1] + a3));
      v21[-1] = vrhaddq_u8(*v23, *(v23 + a3));
      *v21 = v24;
      v23 += 2;
      v21 += 2;
      v22 -= 32;
    }

    while (v22);
    if (v5 == a4)
    {
      return result;
    }

    if ((a4 & 0x18) == 0)
    {
LABEL_6:
      v6 = a4 - v5;
      v7 = &result->i8[v5];
      v8 = &a2->u8[v5];
      do
      {
        *v7++ = (*v8 + v8[a3] + 1) >> 1;
        ++v8;
        --v6;
      }

      while (v6);
      return result;
    }
  }

  else
  {
    v5 = 0;
  }

  v25 = v5;
  v5 = a4 & 0x7FFFFFF8;
  v26 = &a2->i8[v25];
  v27 = &result->i8[v25];
  v28 = v25 - v5;
  do
  {
    v29 = *(v26 + a3);
    v30 = *v26++;
    *v27++ = vrhadd_u8(v30, v29);
    v28 += 8;
  }

  while (v28);
  if (v5 != a4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t InterpolateRow_16To8_C(unint64_t result, uint16x8_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  if (a6)
  {
    if (a6 == 128)
    {
      if (a5 < 1)
      {
        return result;
      }

      if (a5 >= 4)
      {
        v6 = 0;
        v30 = result + a5;
        v31 = &a2->i8[2 * a3];
        v33 = a2 + 2 * a5 > result && v30 > a2;
        v34 = v31 < v30 && &v31[2 * a5] > result;
        if (!v34 && !v33)
        {
          if (a5 >= 0x10)
          {
            v6 = a5 & 0x7FFFFFF0;
            v58 = vdupq_n_s32(a4);
            v59.i64[0] = 0xFF000000FFLL;
            v59.i64[1] = 0xFF000000FFLL;
            v60 = v6;
            v61 = result;
            v62 = a2;
            do
            {
              v63 = vrhaddq_u16(*v62, *(v62 + 2 * a3));
              v64 = vrhaddq_u16(v62[1], *(v62 + 2 * a3 + 16));
              v86.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v64), v58), 0x10uLL), v59);
              v86.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v63), v58), 0x10uLL), v59);
              v86.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v64.i8), v58), 0x10uLL), v59);
              v86.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v63.i8), v58), 0x10uLL), v59);
              *v61++ = vqtbl4q_s8(v86, xmmword_273B8E8C0);
              v62 += 2;
              v60 -= 16;
            }

            while (v60);
            if (v6 == a5)
            {
              return result;
            }

            if ((a5 & 0xC) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v6 = 0;
          }

          v65 = v6;
          v66 = vdupq_n_s32(a4);
          v6 = a5 & 0x7FFFFFFC;
          v67 = (a2 + 2 * v65);
          v68 = (result + v65);
          v69 = v65 - v6;
          v70.i64[0] = 0xFF000000FFLL;
          v70.i64[1] = 0xFF000000FFLL;
          do
          {
            *v68++ = vuzp1_s8(vmovn_s32(vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(vrhadd_u16(*v67, *(v67 + 2 * a3))), v66), 0x10uLL), v70)), *v66.i8).u32[0];
            ++v67;
            v69 += 4;
          }

          while (v69);
          if (v6 == a5)
          {
            return result;
          }
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_6:
      v7 = a5 - v6;
      v8 = (result + v6);
      v9 = a2 + v6;
      do
      {
        v10 = v9[a3];
        v11 = *v9++;
        v12 = (((v11 + v10 + 1) >> 1) * a4) >> 16;
        if (v12 >= 255)
        {
          LOBYTE(v12) = -1;
        }

        *v8++ = v12;
        --v7;
      }

      while (v7);
      return result;
    }

    v19 = a5 - 1;
    if (a5 < 1)
    {
      return result;
    }

    v20 = 256 - a6;
    v21 = a2 + a3;
    if (a5 >= 4)
    {
      LODWORD(v22) = 0;
      v35 = result + a5;
      v36 = a2->u64 + 2 * v19 + 2 * a3 + 2;
      v38 = a2->u64 + 2 * v19 + 2 > result && v35 > a2;
      v39 = v21 < v35 && v36 > result;
      if (!v39 && !v38)
      {
        v40 = vdupq_n_s32(v20);
        v41 = vdupq_n_s32(a6);
        v42 = vdupq_n_s32(a4);
        if (a5 >= 0x10)
        {
          v43 = a5 & 0x7FFFFFF0;
          v71.i64[0] = 0x8000000080;
          v71.i64[1] = 0x8000000080;
          v72.i64[0] = 0xFF000000FFLL;
          v72.i64[1] = 0xFF000000FFLL;
          v73 = v43;
          v74 = result;
          v75 = a2;
          do
          {
            v76 = (v75 + 2 * a3);
            v78 = *v75;
            v77 = v75[1];
            v75 += 2;
            v79 = v76[1];
            v87.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, vmovl_high_u16(v79)), v40, vmovl_high_u16(v77)), v71), 8uLL), v42), 0x10uLL), v72);
            v87.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, vmovl_high_u16(*v76)), v40, vmovl_high_u16(v78)), v71), 8uLL), v42), 0x10uLL), v72);
            v87.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, vmovl_u16(*v79.i8)), v40, vmovl_u16(*v77.i8)), v71), 8uLL), v42), 0x10uLL), v72);
            v87.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, vmovl_u16(*v76->i8)), v40, vmovl_u16(*v78.i8)), v71), 8uLL), v42), 0x10uLL), v72);
            *v74++ = vqtbl4q_s8(v87, xmmword_273B8E8C0);
            v73 -= 16;
          }

          while (v73);
          if (v43 == a5)
          {
            return result;
          }

          if ((a5 & 0xC) == 0)
          {
            v24 = (a2 + 2 * v43);
            v23 = (result + v43);
            v21 += v43;
            LODWORD(v22) = a5 & 0x7FFFFFF0;
LABEL_25:
            v25 = a5 - v22;
            do
            {
              v27 = v24->u16[0];
              v24 = (v24 + 2);
              v26 = v27;
              v28 = *v21++;
              v29 = (((v28 * a6 + v20 * v26 + 128) >> 8) * a4) >> 16;
              if (v29 >= 255)
              {
                LOBYTE(v29) = -1;
              }

              *v23++ = v29;
              --v25;
            }

            while (v25);
            return result;
          }
        }

        else
        {
          v43 = 0;
        }

        v22 = a5 & 0x7FFFFFFC;
        v21 += v22;
        v23 = (result + v22);
        v24 = (a2 + 2 * v22);
        v80 = (a2 + 2 * v43);
        v81 = (result + v43);
        v82 = v43 - v22;
        v83.i64[0] = 0x8000000080;
        v83.i64[1] = 0x8000000080;
        v84.i64[0] = 0xFF000000FFLL;
        v84.i64[1] = 0xFF000000FFLL;
        do
        {
          *v81++ = vuzp1_s8(vmovn_s32(vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_s32(vaddq_s32(vmlaq_s32(vmulq_s32(v41, vmovl_u16(*(v80 + 2 * a3))), v40, vmovl_u16(*v80)), v83), 8uLL), v42), 0x10uLL), v84)), *v40.i8).u32[0];
          ++v80;
          v82 += 4;
        }

        while (v82);
        if (v22 == a5)
        {
          return result;
        }

        goto LABEL_25;
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    v23 = result;
    v24 = a2;
    goto LABEL_25;
  }

  if (a5 < 1)
  {
    return result;
  }

  if (a5 >= 4 && (a2 + 2 * a5 <= result || result + a5 <= a2))
  {
    if (a5 >= 0x10)
    {
      v13 = a5 & 0x7FFFFFF0;
      v44 = vdupq_n_s32(a4);
      v45.i64[0] = 0xFF000000FFLL;
      v45.i64[1] = 0xFF000000FFLL;
      v46 = v13;
      v47 = result;
      v48 = a2;
      do
      {
        v50 = *v48;
        v49 = v48[1];
        v48 += 2;
        v85.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(v44, vmovl_high_u16(v50)), 0x10uLL), v45);
        v85.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(v44, vmovl_high_u16(v49)), 0x10uLL), v45);
        v85.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(v44, vmovl_u16(*v49.i8)), 0x10uLL), v45);
        v85.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(v44, vmovl_u16(*v50.i8)), 0x10uLL), v45);
        *v47++ = vqtbl4q_s8(v85, xmmword_273B8E8C0);
        v46 -= 16;
      }

      while (v46);
      if (v13 == a5)
      {
        return result;
      }

      if ((a5 & 0xC) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
    }

    v51 = v13;
    v13 = a5 & 0x7FFFFFFC;
    v52 = vdupq_n_s32(a4);
    v53 = (a2 + 2 * v51);
    v54 = (result + v51);
    v55 = v51 - v13;
    v56.i64[0] = 0xFF000000FFLL;
    v56.i64[1] = 0xFF000000FFLL;
    do
    {
      v57 = *v53++;
      *v54++ = vuzp1_s8(vmovn_s32(vminq_s32(vshrq_n_s32(vmulq_s32(v52, vmovl_u16(v57)), 0x10uLL), v56)), *v52.i8).u32[0];
      v55 += 4;
    }

    while (v55);
    if (v13 == a5)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_16:
  v14 = a5 - v13;
  v15 = (result + v13);
  v16 = a2 + v13;
  do
  {
    v17 = *v16++;
    v18 = (v17 * a4) >> 16;
    if (v18 >= 255)
    {
      LOBYTE(v18) = -1;
    }

    *v15++ = v18;
    --v14;
  }

  while (v14);
  return result;
}

uint64_t ScalePlaneDown2_16To8(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, char *a8, unsigned int a9, unsigned int a10)
{
  v12 = a2;
  if (a10 == 1)
  {
    v13 = ScaleRowDown2Linear_16To8_Odd_C;
  }

  else
  {
    v13 = ScaleRowDown2Box_16To8_Odd_C;
  }

  v14 = ScaleRowDown2_16To8_Odd_C;
  v15 = ScaleRowDown2Box_16To8_C;
  if (a10 == 1)
  {
    v15 = ScaleRowDown2Linear_16To8_C;
  }

  if (a10)
  {
    v14 = v13;
    v16 = 0;
  }

  else
  {
    v15 = ScaleRowDown2_16To8_C;
    v16 = a5;
  }

  if (result)
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  v18 = (a7 + 2 * v16);
  if (a10 >= 2)
  {
    v19 = a5;
  }

  else
  {
    v19 = 0;
  }

  v25 = v19;
  if (a2 >= 2)
  {
    v20 = a2 / 2;
    v21 = v19;
    v22 = a6;
    v23 = 4 * a5;
    v26 = v17;
    do
    {
      result = v26(v18, v21, a8, a3, a9);
      v17 = v26;
      a8 += v22;
      v18 += v23;
      --v20;
    }

    while (v20);
  }

  if (v12)
  {
    if (a10)
    {
      v24 = 0;
    }

    else
    {
      v24 = -v25;
    }

    return v17(&v18[2 * v24], 0, a8, a3, a9);
  }

  return result;
}

uint64_t ScalePlane(char *a1, int a2, libyuv *this, uint64_t a4, int8x16_t *a5, int a6, uint64_t a7, const unsigned __int8 *a8, int a9)
{
  v9 = a8;
  v12 = a4;
  v13 = this;
  v14 = a2;
  v15 = a9;
  if (this >= 0)
  {
    v16 = this;
  }

  else
  {
    v16 = -this;
  }

  if (a4 >= 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = -a4;
  }

  if (a9 == 2)
  {
    goto LABEL_13;
  }

  if (a9 != 3)
  {
    goto LABEL_25;
  }

  if (v16 <= 2 * a7 || 2 * a8 >= v17)
  {
LABEL_13:
    if (3 * a8 == v17 || v17 == a8 || v17 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v16 == 1)
    {
      v18 = 0;
      if ((a4 & 0x80000000) != 0)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

LABEL_25:
    v23 = v16 != a7 && 3 * a7 != v16 && v16 != 1;
    if (v15 == 1)
    {
      v18 = v23;
    }

    else
    {
      v18 = v15;
    }

    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v18 = 3;
  if ((a4 & 0x80000000) != 0)
  {
LABEL_38:
    a1 += ~a4 * a2;
    v14 = -a2;
    v12 = -a4;
  }

LABEL_39:
  if (a7 == this && v12 == a8)
  {
    CopyPlane(a1, v14, a5, a6, this, a8);
    return 0;
  }

  if (a7 == this && v18 != 3)
  {
    if (v12 >= a8)
    {
      v24 = (v12 << 16) / a8;
      if ((v24 & 0x80000000) != 0)
      {
        v25 = 0x8000 - (-v24 >> 1);
      }

      else
      {
        v25 = (v24 >> 1) - 0x8000;
      }
    }

    else
    {
      LODWORD(v24) = 0;
      v25 = 0;
      if (a8 >= 2 && v12 >= 2)
      {
        v25 = 0;
        v24 = ((v12 << 16) - 65537) / (a8 - 1);
      }
    }

    ScalePlaneVertical(v12, this, a8, v14, a6, a1, a5, 0, v25, v24, 1, v18);
    return 0;
  }

  v98 = a7;
  if (v16 < a7 || v12 < a8)
  {
    v33 = 2 * a8;
LABEL_68:
    v34 = a1;
    if (v18 == 3 && v33 < v12)
    {
      v99 = 0;
      v100 = 0;
      v97 = a8;
      ScaleSlope(this, v12, a7, a8, 3, &v100 + 1, &v100, &v99 + 1, &v99);
      v93 = (2 * v16);
      v35 = malloc_type_malloc((v93 + 63), 0x3B3D40DBuLL);
      v36 = ((v35 + 63) & 0xFFFFFFFFFFFFFFC0);
      if (v36)
      {
        v90 = v35;
        v95 = v34;
        v37 = libyuv::ScaleAddCols1_C;
        if (HIDWORD(v99) == 0x10000)
        {
          v37 = libyuv::ScaleAddCols0_C;
        }

        if (WORD2(v99))
        {
          v37 = libyuv::ScaleAddCols2_C;
        }

        v92 = v37;
        v38 = cpu_info_;
        if (!cpu_info_)
        {
          v39 = AArch64CpuCaps();
          v38 = v39 | 3;
          cpu_info_ = v39 | 3;
        }

        v40 = ScaleAddRow_Any_NEON;
        if ((v16 & 0xF) == 0)
        {
          v40 = ScaleAddRow_NEON;
        }

        if ((v38 & 0x100) != 0)
        {
          v41 = v40;
        }

        else
        {
          v41 = ScaleAddRow_C;
        }

        if (v97 >= 1)
        {
          v42 = 0;
          v43 = v12 << 16;
          v44 = v14;
          v91 = a6;
          do
          {
            v45 = v100 >> 16;
            v46 = &v95[v44 * (v100 >> 16)];
            v47 = v99 + v100;
            if (v99 + v100 >= v43)
            {
              v47 = v43;
            }

            LODWORD(v100) = v47;
            LODWORD(v48) = (v47 >> 16) - v45;
            bzero(v36, v93);
            if (v48 <= 1)
            {
              v48 = 1;
            }

            else
            {
              v48 = v48;
            }

            v49 = v48;
            do
            {
              v41(v46, v36, v16);
              v46 = (v46 + v44);
              --v49;
            }

            while (v49);
            v92(v98, v48, HIDWORD(v100), HIDWORD(v99), v36, a5);
            a5 = (a5 + v91);
            ++v42;
          }

          while (v42 != v97);
        }

        free(v90);
      }

      return v36 == 0;
    }

    goto LABEL_138;
  }

  if (4 * a7 == 3 * this && 3 * v12 == 4 * a8)
  {
    v94 = a1;
    if (v18 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v14;
    }

    if (v18)
    {
      v27 = ScaleRowDown34_0_Box_C;
    }

    else
    {
      v27 = ScaleRowDown34_C;
    }

    if (v18)
    {
      v28 = ScaleRowDown34_1_Box_C;
    }

    else
    {
      v28 = ScaleRowDown34_C;
    }

    if (cpu_info_)
    {
      if ((cpu_info_ & 0x100) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v77 = a7;
      v78 = AArch64CpuCaps();
      LODWORD(a7) = v77;
      cpu_info_ = v78 | 3;
      if ((v78 & 0x100) == 0)
      {
LABEL_63:
        v88 = v28;
        v89 = v27;
        v96 = v9;
        v86 = v14;
        v87 = a6;
        if (v9 >= 3)
        {
LABEL_64:
          v29 = 0;
          v30 = v94;
          do
          {
            v89(v30, v26, a5, v98, v13);
            v31 = &a5->u8[a6];
            v88(&v30[v14], v26, v31, v98);
            v32 = &v31[a6];
            (v89)(&v30[3 * v14], -v26, v32, v98);
            v30 += 3 * v14 + v14;
            a5 = &v32[a6];
            v29 += 3;
          }

          while (v29 < v9 - 2);
LABEL_179:
          if (v96 % 3 == 1)
          {
            (v89)(v30, 0, a5, v98);
          }

          else if (v96 % 3 == 2)
          {
            (v89)();
            v88(&v30[v86], 0, &a5->u8[v87], v98);
          }

          return 0;
        }

LABEL_178:
        v30 = v94;
        goto LABEL_179;
      }
    }

    HIDWORD(v79) = -1431655765 * a7 + 715827872;
    LODWORD(v79) = HIDWORD(v79);
    if ((v79 >> 4) <= 0x5555554)
    {
      v80 = ScaleRowDown34_NEON;
      v81 = v18 == 0;
      if (v18)
      {
        v82 = ScaleRowDown34_0_Box_NEON;
      }

      else
      {
        v82 = ScaleRowDown34_NEON;
      }

      v83 = ScaleRowDown34_1_Box_NEON;
    }

    else
    {
      v80 = ScaleRowDown34_Any_NEON;
      v81 = v18 == 0;
      if (v18)
      {
        v82 = ScaleRowDown34_0_Box_Any_NEON;
      }

      else
      {
        v82 = ScaleRowDown34_Any_NEON;
      }

      v83 = ScaleRowDown34_1_Box_Any_NEON;
    }

    if (v81)
    {
      v84 = v80;
    }

    else
    {
      v84 = v83;
    }

    v88 = v84;
    v89 = v82;
    v96 = v9;
    v86 = v14;
    v87 = a6;
    if (v9 >= 3)
    {
      goto LABEL_64;
    }

    goto LABEL_178;
  }

  v33 = 2 * a8;
  if (this == 2 * a7 && v33 == v12)
  {
    v52 = a1;
    v53 = ScaleRowDown2Box_C;
    if (v18 == 1)
    {
      v53 = ScaleRowDown2Linear_C;
    }

    if (v18)
    {
      v54 = v53;
    }

    else
    {
      v54 = ScaleRowDown2_C;
    }

    if (v18)
    {
      v55 = 0;
    }

    else
    {
      v55 = v14;
    }

    v56 = cpu_info_;
    if (!cpu_info_)
    {
      v57 = v14;
      v58 = a7;
      v59 = AArch64CpuCaps();
      a7 = v58;
      v14 = v57;
      v56 = v59 | 3;
      cpu_info_ = v59 | 3;
    }

    if ((v56 & 0x100) != 0)
    {
      v60 = ScaleRowDown2Box_Any_NEON;
      if (v18 == 1)
      {
        v60 = ScaleRowDown2Linear_Any_NEON;
      }

      if (v18)
      {
        v54 = v60;
      }

      else
      {
        v54 = ScaleRowDown2_Any_NEON;
      }

      if ((a7 & 0xF) == 0)
      {
        v61 = ScaleRowDown2Box_NEON;
        if (v18 == 1)
        {
          v61 = ScaleRowDown2Linear_NEON;
        }

        if (v18)
        {
          v54 = v61;
        }

        else
        {
          v54 = ScaleRowDown2_NEON;
        }
      }
    }

    if (v9 < 1)
    {
      return 0;
    }

    v62 = &v52[v55];
    v63 = 2 * v14;
    if (v18 >= 2)
    {
      v64 = v14;
    }

    else
    {
      v64 = 0;
    }

    v65 = a7;
    v66 = v64;
    do
    {
      v54(v62, v66, a5, v65, v13);
      result = 0;
      v62 += v63;
      a5 = (a5 + a6);
      --v9;
    }

    while (v9);
    return result;
  }

  if (3 * this == 8 * a7 && 3 * v12 == 8 * a8)
  {
    libyuv::ScalePlaneDown38(a7, a8, v14, a6, a1, a5, v18);
    return 0;
  }

  if (4 * a7 != this || 4 * a8 != v12)
  {
    goto LABEL_68;
  }

  v34 = a1;
  if (v18 == 3 || !v18)
  {
    libyuv::ScalePlaneDown4(a7, a8, v14, a6, a1, a5, v18);
    return 0;
  }

LABEL_138:
  v67 = (a7 + 1) / 2;
  if (v67 == this && v18 == 1)
  {
    v68 = cpu_info_;
    if (!cpu_info_)
    {
      v69 = a7;
      v70 = AArch64CpuCaps();
      a7 = v69;
      v68 = v70 | 3;
      cpu_info_ = v70 | 3;
    }

    if ((v68 & 0x100) != 0)
    {
      v71 = ScaleRowUp2_Linear_Any_NEON;
    }

    else
    {
      v71 = ScaleRowUp2_Linear_Any_C;
    }

    v72 = v12 - 1;
    if (v9 == 1)
    {
      v71(&v34[(v72 / 2) * v14], a5, a7);
      return 0;
    }

    if (v9 < 1)
    {
      return 0;
    }

    v73 = v14;
    v74 = a7;
    v75 = 0x7FFF;
    v76 = (v72 << 16) / (v9 - 1);
    do
    {
      v71(&v34[v73 * (v75 >> 16)], a5, v74);
      result = 0;
      a5 = (a5 + a6);
      v75 += v76;
      --v9;
    }

    while (v9);
  }

  else
  {
    if (v67 == this && (a8 + 1) / 2 == v12 && (v18 & 0xFFFFFFFE) == 2)
    {
      libyuv::ScalePlaneUp2_Bilinear(v12, a7, a8, v14, a6, v34, a5, a8, v85);
      return 0;
    }

    if (v18 && v12 < a8)
    {

      return libyuv::ScalePlaneBilinearUp(this, v12, a7, a8, v14, a6, v34, a5, v18);
    }

    else
    {
      if (!v18)
      {
        libyuv::ScalePlaneSimple(this, v12, a7, a8, v14, a6, v34, a5, v85);
        return 0;
      }

      return libyuv::ScalePlaneBilinearDown(this, v12, a7, a8, v14, a6, v34, a5, v18);
    }
  }

  return result;
}

void *libyuv::ScalePlaneDown38(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  if (a7)
  {
    result = ScaleRowDown38_3_Box_C;
  }

  else
  {
    result = ScaleRowDown38_C;
  }

  if (a7)
  {
    v16 = ScaleRowDown38_2_Box_C;
  }

  else
  {
    v16 = ScaleRowDown38_C;
  }

  if (cpu_info_)
  {
    if ((cpu_info_ & 0x100) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v34 = result;
    v17 = AArch64CpuCaps() | 3;
    result = v34;
    cpu_info_ = v17;
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_21;
    }
  }

  if (a7)
  {
    result = ScaleRowDown38_3_Box_Any_NEON;
  }

  else
  {
    result = ScaleRowDown38_Any_NEON;
  }

  if (a7)
  {
    v16 = ScaleRowDown38_2_Box_Any_NEON;
  }

  else
  {
    v16 = ScaleRowDown38_Any_NEON;
  }

  HIDWORD(v18) = -1431655765 * a1 + 715827880;
  LODWORD(v18) = HIDWORD(v18);
  if ((v18 >> 2) > 0x15555554)
  {
LABEL_21:
    v35 = result;
    v29 = a3;
    v30 = a4;
    v28 = v14;
    v31 = a2;
    if (a2 < 3)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (a7)
  {
    result = ScaleRowDown38_3_Box_NEON;
  }

  else
  {
    result = ScaleRowDown38_NEON;
  }

  if (a7)
  {
    v16 = ScaleRowDown38_2_Box_NEON;
  }

  else
  {
    v16 = ScaleRowDown38_NEON;
  }

  v35 = result;
  v29 = a3;
  v30 = a4;
  v28 = v14;
  v31 = a2;
  if (a2 >= 3)
  {
LABEL_22:
    v19 = 0;
    v33 = a2 - 2;
    v20 = v14;
    v21 = 3 * a3;
    v32 = 2 * v21;
    v22 = v21;
    v23 = v21 + 2 * a3;
    do
    {
      v35(a5, v20, a6, a1);
      v24 = a6 + a4;
      v35(a5 + v22, v20, v24, a1);
      v25 = v24 + a4;
      result = v16(a5 + v32, v20, v25, a1);
      a5 += v22 + v23;
      a6 = v25 + a4;
      v19 += 3;
    }

    while (v19 < v33);
  }

LABEL_24:
  if (v31 % 3 == 1)
  {
    v27 = a5;
    v26 = a6;
  }

  else
  {
    if (v31 % 3 != 2)
    {
      return result;
    }

    v35(a5, v28, a6, a1);
    v26 = a6 + v30;
    v27 = a5 + 3 * v29;
  }

  return (v35)(v27, 0, v26, a1);
}

uint64_t libyuv::ScalePlaneDown4(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v13 = result;
  if (a7)
  {
    v14 = ScaleRowDown4Box_C;
  }

  else
  {
    v14 = ScaleRowDown4_C;
  }

  if (a7)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2 * a3;
  }

  if (cpu_info_)
  {
    if ((cpu_info_ & 0x100) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = AArch64CpuCaps();
    cpu_info_ = result | 3;
    if ((result & 0x100) == 0)
    {
LABEL_9:
      if (a2 < 1)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  if (a7)
  {
    v16 = ScaleRowDown4Box_Any_NEON;
  }

  else
  {
    v16 = ScaleRowDown4_Any_NEON;
  }

  v17 = ScaleRowDown4Box_NEON;
  if (!a7)
  {
    v17 = ScaleRowDown4_NEON;
  }

  if ((v13 & 0xF) != 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = v17;
  }

  if (a2 >= 1)
  {
LABEL_21:
    v18 = a5 + v15;
    if (a7 >= 2)
    {
      v19 = a3;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = 4 * a3;
    do
    {
      result = v14(v18, v20, a6, v13);
      v18 += v21;
      a6 += a4;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t libyuv::ScalePlaneUp2_Bilinear(libyuv *this, uint64_t a2, char a3, int a4, int a5, unsigned __int8 *a6, _BYTE *a7, const unsigned __int8 *a8, unsigned __int8 *a9)
{
  v15 = this;
  v16 = cpu_info_;
  if (!cpu_info_)
  {
    v17 = AArch64CpuCaps();
    v16 = v17 | 3;
    cpu_info_ = v17 | 3;
  }

  if ((v16 & 0x100) != 0)
  {
    v18 = ScaleRowUp2_Bilinear_Any_NEON;
  }

  else
  {
    v18 = ScaleRowUp2_Bilinear_Any_C;
  }

  v22 = v18;
  result = v18(a6, 0, a7, 0, a2);
  v20 = &a7[a5];
  if (v15 >= 2)
  {
    v21 = v15 - 1;
    do
    {
      result = v22(a6, a4, v20, a5, a2);
      a6 += a4;
      v20 += 2 * a5;
      --v21;
    }

    while (v21);
  }

  if ((a3 & 1) == 0)
  {

    return v22(a6, 0, v20, 0, a2);
  }

  return result;
}

BOOL libyuv::ScalePlaneBilinearUp(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  v12 = a4;
  v14 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v15 = a2 << 16;
  ScaleSlope(a1, a2, a3, a4, a9, &v49, &v48, &v47 + 1, &v47);
  if (v14 < 0)
  {
    v14 = -v14;
  }

  v16 = cpu_info_;
  if (!cpu_info_)
  {
    v17 = AArch64CpuCaps();
    v16 = v17 | 3;
    cpu_info_ = v17 | 3;
  }

  v18 = v15 - 0x10000;
  v19 = InterpolateRow_Any_NEON;
  if ((a3 & 0xF) == 0)
  {
    v19 = InterpolateRow_NEON;
  }

  if ((v16 & 0x100) == 0)
  {
    v19 = InterpolateRow_C;
  }

  v46 = v19;
  if (v14 >> 15)
  {
    v20 = ScaleFilterCols64_C;
  }

  else
  {
    v20 = ScaleFilterCols_C;
  }

  v21 = cpu_info_;
  if (!cpu_info_)
  {
    v21 = AArch64CpuCaps() | 3;
    cpu_info_ = v21;
  }

  v22 = ScaleFilterCols_Any_NEON;
  if ((a3 & 7) == 0)
  {
    v22 = ScaleFilterCols_NEON;
  }

  if (((v14 < 0x8000) & (v21 >> 8)) == 0)
  {
    v22 = v20;
  }

  v45 = v22;
  v23 = v48;
  if (v48 > v18)
  {
    v48 = v18;
    v23 = v18;
  }

  v24 = malloc_type_malloc(((2 * (a3 + 31)) | 0x3F), 0x6D02706uLL);
  v25 = (v24 + 63) & 0xFFFFFFFFFFFFFFC0;
  if (v25)
  {
    v38 = a6;
    v39 = v24;
    v26 = (a3 + 31) & 0xFFFFFFE0;
    v27 = (v23 >> 16);
    v45((v24 + 63) & 0xFFFFFFFFFFFFFFC0, a7 + a5 * v27, a3, v49, HIDWORD(v47));
    if (a2 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = a5;
    }

    v29 = a7 + a5 * v27 + v28;
    v40 = v25;
    v45(v25 + v26, v29, a3, v49, HIDWORD(v47));
    if (a2 <= 2)
    {
      v30 = 0;
    }

    else
    {
      v30 = a5;
    }

    v31 = v29 + v30;
    v43 = v18 >> 16;
    v42 = a7 + a5 * (v18 >> 16);
    v32 = v48;
    if (a9 == 1)
    {
      do
      {
        v33 = (v32 >> 16);
        if (v33 == v27)
        {
          goto LABEL_29;
        }

        if (v32 > v18)
        {
          v48 = v18;
          v33 = v43;
          v31 = v42;
        }

        if (v33 == v27)
        {
LABEL_29:
          v33 = v27;
        }

        else
        {
          v45(v25, v31, a3, v49, HIDWORD(v47));
          v25 += v26;
          v26 = -v26;
          v34 = a5;
          if (v48 + 0x10000 >= v18)
          {
            v34 = 0;
          }

          v31 += v34;
        }

        v46(a8, v25, 0, a3, 0);
        a8 += v38;
        v32 = v48 + v47;
        v48 += v47;
        v27 = v33;
        --v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v35 = (v32 >> 16);
        if (v35 == v27)
        {
          goto LABEL_39;
        }

        if (v32 > v18)
        {
          v48 = v18;
          BYTE1(v32) = BYTE1(v18);
          v35 = v43;
          v31 = v42;
        }

        if (v35 == v27)
        {
LABEL_39:
          v35 = v27;
        }

        else
        {
          v45(v25, v31, a3, v49, HIDWORD(v47));
          v25 += v26;
          v26 = -v26;
          BYTE1(v32) = BYTE1(v48);
          v36 = a5;
          if (v48 + 0x10000 >= v18)
          {
            v36 = 0;
          }

          v31 += v36;
        }

        v46(a8, v25, v26, a3, BYTE1(v32));
        a8 += v38;
        v32 = v48 + v47;
        v48 += v47;
        v27 = v35;
        --v12;
      }

      while (v12);
    }

    free(v39);
    v25 = v40;
  }

  return v25 == 0;
}

uint64_t libyuv::ScalePlaneBilinearDown(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  v39 = 0;
  v40 = 0;
  v17 = malloc_type_malloc(a1 + 63, 0x7E96DAC6uLL);
  if (((v17 + 63) & 0xFFFFFFFFFFFFFFC0) == 0)
  {
    return 1;
  }

  v35 = (v17 + 63) & 0xFFFFFFFFFFFFFFC0;
  v37 = v17;
  v38 = a7;
  v36 = a6;
  if (a1 < 0x8000)
  {
    v18 = ScaleFilterCols_C;
  }

  else
  {
    v18 = ScaleFilterCols64_C;
  }

  ScaleSlope(a1, a2, a3, a4, a9, &v40 + 1, &v40, &v39 + 1, &v39);
  if (a1 >= 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = -a1;
  }

  v20 = cpu_info_;
  if (!cpu_info_)
  {
    v21 = AArch64CpuCaps();
    v20 = v21 | 3;
    cpu_info_ = v21 | 3;
  }

  v22 = (a2 << 16) - 0x10000;
  v23 = InterpolateRow_Any_NEON;
  if ((v19 & 0xF) == 0)
  {
    v23 = InterpolateRow_NEON;
  }

  if ((v20 & 0x100) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = InterpolateRow_C;
  }

  v25 = cpu_info_;
  if (!cpu_info_)
  {
    v26 = a3;
    v27 = v24;
    v28 = AArch64CpuCaps();
    v24 = v27;
    a3 = v26;
    v25 = v28 | 3;
    cpu_info_ = v28 | 3;
  }

  v29 = ScaleFilterCols_Any_NEON;
  if ((a3 & 7) == 0)
  {
    v29 = ScaleFilterCols_NEON;
  }

  if (((v19 < 0x8000) & (v25 >> 8)) != 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = v18;
  }

  v31 = v40;
  if (v40 > v22)
  {
    LODWORD(v40) = v22;
    v31 = v22;
  }

  if (a4 >= 1)
  {
    if (a9 == 1)
    {
      do
      {
        v30(a8, v38 + a5 * (v31 >> 16), a3, HIDWORD(v40), HIDWORD(v39));
        a8 += v36;
        v31 = v40 + v39;
        if (v40 + v39 >= v22)
        {
          v31 = v22;
        }

        LODWORD(v40) = v31;
        --a4;
      }

      while (a4);
    }

    else
    {
      do
      {
        v33 = a3;
        v34 = v24;
        v24(v35, (v38 + a5 * (v31 >> 16)), a5, v19, BYTE1(v31));
        v30(a8, v35, v33, HIDWORD(v40), HIDWORD(v39));
        v24 = v34;
        a3 = v33;
        a8 += v36;
        v31 = v40 + v39;
        if (v40 + v39 >= v22)
        {
          v31 = v22;
        }

        LODWORD(v40) = v31;
        --a4;
      }

      while (a4);
    }
  }

  free(v37);
  return 0;
}

uint64_t libyuv::ScalePlaneSimple(libyuv *this, int a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, const unsigned __int8 *a8, unsigned __int8 *a9)
{
  v13 = a4;
  v15 = this;
  v22 = 0;
  v23 = 0;
  result = ScaleSlope(this, a2, a3, a4, 0, &v23 + 1, &v23, &v22 + 1, &v22);
  if (v15 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = -v15;
  }

  v18 = 2 * v17;
  if (SHIDWORD(v23) < 0x8000 && v18 == a3)
  {
    v20 = ScaleColsUp2_C;
  }

  else
  {
    v20 = ScaleCols_C;
  }

  if (v13 >= 1)
  {
    v21 = v23;
    do
    {
      result = (v20)(a8, a7 + a5 * (v21 >> 16), a3, HIDWORD(v23), HIDWORD(v22));
      a8 += a6;
      v21 = v23 + v22;
      LODWORD(v23) = v23 + v22;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t I420Scale(char *a1, int a2, char *a3, int a4, char *a5, int a6, libyuv *this, uint64_t a8, int8x16_t *a9, int a10, int8x16_t *a11, int a12, int8x16_t *a13, int a14, int a15, int a16, int a17)
{
  if (this < 0)
  {
    v18 = -((1 - this) >> 1);
  }

  else
  {
    v18 = (this + 1) >> 1;
  }

  if (a8 < 0)
  {
    v19 = -((1 - a8) >> 1);
  }

  else
  {
    v19 = (a8 + 1) >> 1;
  }

  if (a15 < 0)
  {
    v20 = -((1 - a15) >> 1);
  }

  else
  {
    v20 = (a15 + 1) >> 1;
  }

  v21 = -((1 - a16) >> 1);
  if (a16 >= 0)
  {
    v21 = (a16 + 1) >> 1;
  }

  result = 0xFFFFFFFFLL;
  if (a15 >= 1 && a11 && a9 && a8 <= 0x8000 && this <= 0x8000 && a1 && a3 && a5 && this >= 1 && a8 && a13 && a16 >= 1)
  {
    v27 = v21;
    if (ScalePlane(a1, a2, this, a8, a9, a10, a15, a16, a17) || ScalePlane(a3, a4, v18, v19, a11, a12, v20, v27, a17))
    {
      return 1;
    }

    else
    {

      return ScalePlane(a5, a6, v18, v19, a13, a14, v20, v27, a17);
    }
  }

  return result;
}

uint64_t I444Scale(char *a1, int a2, char *a3, int a4, char *a5, int a6, libyuv *this, uint64_t a8, int8x16_t *a9, int a10, int8x16_t *a11, int a12, int8x16_t *a13, int a14, unsigned int a15, unsigned int a16, int a17)
{
  result = 0xFFFFFFFFLL;
  v21 = a15 < 1 || a11 == 0 || a9 == 0;
  if (!v21 && a8 <= 0x8000 && this <= 0x8000 && a1 && a3 && a5 && this >= 1 && a8 && a13 && a16 >= 1)
  {
    if (ScalePlane(a1, a2, this, a8, a9, a10, a15, a16, a17) || ScalePlane(a3, a4, this, a8, a11, a12, a15, a16, a17))
    {
      return 1;
    }

    else
    {

      return ScalePlane(a5, a6, this, a8, a13, a14, a15, a16, a17);
    }
  }

  return result;
}

uint64_t I422Scale(char *a1, int a2, char *a3, int a4, char *a5, int a6, libyuv *this, uint64_t a8, int8x16_t *a9, int a10, int8x16_t *a11, int a12, int8x16_t *a13, int a14, int a15, unsigned int a16, int a17)
{
  if (this < 0)
  {
    v18 = -((1 - this) >> 1);
  }

  else
  {
    v18 = (this + 1) >> 1;
  }

  v19 = (a15 + 1) >> 1;
  if (a15 < 0)
  {
    v19 = -((1 - a15) >> 1);
  }

  result = 0xFFFFFFFFLL;
  v22 = a15 < 1 || a11 == 0 || a9 == 0;
  if (!v22 && a8 <= 0x8000 && this <= 0x8000 && a1 && a3 && a5 && this >= 1 && a8 && a13 && a16 >= 1)
  {
    v28 = v19;
    if (ScalePlane(a1, a2, this, a8, a9, a10, a15, a16, a17) || ScalePlane(a3, a4, v18, a8, a11, a12, v28, a16, a17))
    {
      return 1;
    }

    else
    {

      return ScalePlane(a5, a6, v18, a8, a13, a14, v28, a16, a17);
    }
  }

  return result;
}

uint64_t libyuv::ScaleAddCols2_C(uint64_t this, int a2, int a3, int a4, uint64_t a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a4 >> 16;
  if (a4 >> 16 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a4 >> 16;
  }

  v32[0] = 0x10000 / (v8 * a2);
  v32[1] = 0x10000 / (a2 + a2 * (v7 & ~(a4 >> 31)));
  if (this >= 1)
  {
    for (i = 0; i != this; ++i)
    {
      v10 = a3;
      v11 = a3 >> 16;
      a3 += a4;
      v12 = (a3 >> 16) - v11;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = v10 >> 16;
      if (v12 >= 4)
      {
        if (v12 < 16)
        {
          v16 = 0;
          v15 = 0;
LABEL_18:
          v24 = v15;
          v15 = v13 & 0x7FFFFFFC;
          v25 = v16;
          v26 = (a5 + 2 * v24 + 2 * v14);
          v27 = v24 - v15;
          do
          {
            v28 = *v26++;
            v25 = vaddw_u16(v25, v28);
            v27 += 4;
          }

          while (v27);
          v16 = vaddvq_s32(v25);
          if (v15 == v13)
          {
            goto LABEL_6;
          }

          goto LABEL_21;
        }

        v15 = v13 & 0x7FFFFFF0;
        v17 = (a5 + 16 + 2 * v14);
        v18 = 0uLL;
        v19 = v15;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        do
        {
          v23 = v17[-1];
          v20 = vaddw_high_u16(v20, v23);
          v18 = vaddw_u16(v18, *v23.i8);
          v22 = vaddw_high_u16(v22, *v17);
          v21 = vaddw_u16(v21, *v17->i8);
          v17 += 2;
          v19 -= 16;
        }

        while (v19);
        v16 = vaddvq_s32(vaddq_s32(vaddq_s32(v21, v18), vaddq_s32(v22, v20)));
        if (v15 == v13)
        {
          goto LABEL_6;
        }

        if ((v13 & 0xC) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

LABEL_21:
      v29 = v13 - v15;
      v30 = (a5 + 2 * v15 + 2 * v14);
      do
      {
        v31 = *v30++;
        v16 += v31;
        --v29;
      }

      while (v29);
LABEL_6:
      *a6 = (v32[v13 - v7] * v16) >> 16;
      a6 = (a6 + 1);
    }
  }

  return this;
}

uint64_t libyuv::ScaleAddCols1_C(uint64_t this, int a2, int a3, int a4, uint64_t a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  v7 = a4 >> 16;
  if (a4 >> 16 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (this >= 1)
  {
    v9 = 0;
    v10 = (a5 + 2 * (a3 >> 16));
    v11 = v10 + 1;
    v12 = 2 * v8;
    v13 = 0x10000 / (v8 * a2);
    do
    {
      if (v7 >= 4)
      {
        if (v7 < 16)
        {
          v15 = 0;
          v16 = 0;
LABEL_15:
          v24 = v15;
          v25 = (v10 + 2 * v16);
          v26 = v16 - (v8 & 0xFFFFFFFC);
          do
          {
            v27 = *v25++;
            v24 = vaddw_u16(v24, v27);
            v26 += 4;
          }

          while (v26);
          v15 = vaddvq_s32(v24);
          v14 = v8 & 0x7FFFFFFC;
          if (v14 == v8)
          {
            goto LABEL_6;
          }

          goto LABEL_18;
        }

        v17 = 0uLL;
        v18 = v8 & 0x7FFFFFF0;
        v19 = v11;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        do
        {
          v23 = v19[-1];
          v20 = vaddw_high_u16(v20, v23);
          v17 = vaddw_u16(v17, *v23.i8);
          v22 = vaddw_high_u16(v22, *v19);
          v21 = vaddw_u16(v21, *v19->i8);
          v19 += 2;
          v18 -= 16;
        }

        while (v18);
        v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v21, v17), vaddq_s32(v22, v20)));
        if ((v8 & 0x7FFFFFF0) == v8)
        {
          goto LABEL_6;
        }

        v16 = v8 & 0x7FFFFFF0;
        v14 = v16;
        if ((v8 & 0xC) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      do
      {
LABEL_18:
        v15 += v10->u16[v14++];
      }

      while (v8 != v14);
LABEL_6:
      *a6 = (v15 * v13) >> 16;
      a6 = (a6 + 1);
      ++v9;
      v11 = (v11 + v12);
      v10 = (v10 + v12);
    }

    while (v9 != this);
  }

  return this;
}

uint64_t libyuv::ScaleAddCols0_C(uint64_t this, int a2, int a3, int a4, uint64_t a5, int8x16_t *a6, unsigned __int8 *a7)
{
  if (this >= 1)
  {
    v7 = a3 >> 16;
    v8 = 0x10000 / a2;
    if (this < 4 || (v9 = (a5 + 2 * (a3 >> 16)), a5 + 2 * (v7 + this) > a6) && v9 < &a6->i8[this])
    {
      v10 = 0;
      v11 = a6;
      goto LABEL_6;
    }

    v15 = vdupq_n_s32(v8);
    if (this >= 0x10)
    {
      v10 = this & 0x7FFFFFF0;
      v16 = v10;
      v17 = a6;
      do
      {
        v19 = *v9;
        v18 = v9[1];
        v9 += 2;
        v25.val[1] = vshrq_n_u32(vmulq_s32(v15, vmovl_high_u16(v19)), 0x10uLL);
        v25.val[3] = vshrq_n_u32(vmulq_s32(v15, vmovl_high_u16(v18)), 0x10uLL);
        v25.val[2] = vshrq_n_u32(vmulq_s32(v15, vmovl_u16(*v18.i8)), 0x10uLL);
        v25.val[0] = vshrq_n_u32(vmulq_s32(v15, vmovl_u16(*v19.i8)), 0x10uLL);
        *v17++ = vqtbl4q_s8(v25, xmmword_273B8E8C0);
        v16 -= 16;
      }

      while (v16);
      if (v10 == this)
      {
        return this;
      }

      if ((this & 0xC) == 0)
      {
        v11 = (a6->u16 + v10);
LABEL_6:
        v12 = this - v10;
        v13 = (a5 + 2 * v10 + 2 * v7);
        do
        {
          v14 = *v13++;
          *v11 = (v8 * v14) >> 16;
          v11 = (v11 + 1);
          --v12;
        }

        while (v12);
        return this;
      }
    }

    else
    {
      v10 = 0;
    }

    v20 = v10;
    v10 = this & 0x7FFFFFFC;
    v11 = (a6->u16 + v10);
    v21 = (a6->i32 + v20);
    v22 = (a5 + 2 * v20 + 2 * v7);
    v23 = v20 - v10;
    do
    {
      v24 = *v22++;
      *v21++ = vuzp1_s8(vshrn_n_s32(vmulq_s32(v15, vmovl_u16(v24)), 0x10uLL), *v15.i8).u32[0];
      v23 += 4;
    }

    while (v23);
    if (v10 != this)
    {
      goto LABEL_6;
    }
  }

  return this;
}

const char *ScaleRowDown2_Any_NEON(const char *result, uint64_t a2, int8x16_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF0;
  if (v4 >= 1)
  {
    _X8 = result;
    v6 = a4 & 0xFFFFFFF0;
    v7 = a3;
    do
    {
      v16 = vld2q_s8(_X8);
      _X8 += 32;
      v6 -= 16;
      __asm { PRFM            #0, [X8,#0x1C0] }

      *v7++ = v16.val[1];
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v13 = a4 & 0xF;
  v14 = &result[2 * v4];
  v15 = &a3->i8[v4];
  if (v13 < 2)
  {
    if ((a4 & 1) == 0)
    {
      return result;
    }

LABEL_27:
    *v15 = v14[1];
    return result;
  }

  *v15 = v14[1];
  v15[1] = v14[3];
  if (v13 < 4)
  {
    v15 += 2;
    v14 += 4;
    if (a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v15[2] = v14[5];
    v15[3] = v14[7];
    if (v13 < 6)
    {
      v15 += 4;
      v14 += 8;
      if (a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15[4] = v14[9];
      v15[5] = v14[11];
      if (v13 < 8)
      {
        v15 += 6;
        v14 += 12;
        if (a4)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v15[6] = v14[13];
        v15[7] = v14[15];
        if (v13 < 0xA)
        {
          v15 += 8;
          v14 += 16;
          if (a4)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15[8] = v14[17];
          v15[9] = v14[19];
          if (v13 < 0xC)
          {
            v15 += 10;
            v14 += 20;
            if (a4)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v15[10] = v14[21];
            v15[11] = v14[23];
            if (v13 < 0xE)
            {
              v15 += 12;
              v14 += 24;
              if (a4)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v15[12] = v14[25];
              v15[13] = v14[27];
              v15 += 14;
              v14 += 28;
              if (a4)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const char *ScaleRowDown2Linear_Any_NEON(const char *result, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF0;
  if (v4 >= 1)
  {
    _X9 = result;
    v6 = a4 & 0xFFFFFFF0;
    v7 = a3;
    do
    {
      v16 = vld2q_s8(_X9);
      _X9 += 32;
      v6 -= 16;
      __asm { PRFM            #0, [X9,#0x1C0] }

      *v7++ = vrhaddq_u8(v16.val[0], v16.val[1]);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v13 = a4 & 0xF;
  v14 = &result[2 * v4];
  v15 = &a3->i8[v4];
  if (v13 < 2)
  {
    if ((a4 & 1) == 0)
    {
      return result;
    }

LABEL_27:
    *v15 = (*v14 + v14[1] + 1) >> 1;
    return result;
  }

  *v15 = (*v14 + v14[1] + 1) >> 1;
  v15[1] = (v14[2] + v14[3] + 1) >> 1;
  if (v13 < 4)
  {
    v15 += 2;
    v14 += 4;
    if (a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v15[2] = (v14[4] + v14[5] + 1) >> 1;
    v15[3] = (v14[6] + v14[7] + 1) >> 1;
    if (v13 < 6)
    {
      v15 += 4;
      v14 += 8;
      if (a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15[4] = (v14[8] + v14[9] + 1) >> 1;
      v15[5] = (v14[10] + v14[11] + 1) >> 1;
      if (v13 < 8)
      {
        v15 += 6;
        v14 += 12;
        if (a4)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v15[6] = (v14[12] + v14[13] + 1) >> 1;
        v15[7] = (v14[14] + v14[15] + 1) >> 1;
        if (v13 < 0xA)
        {
          v15 += 8;
          v14 += 16;
          if (a4)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15[8] = (v14[16] + v14[17] + 1) >> 1;
          v15[9] = (v14[18] + v14[19] + 1) >> 1;
          if (v13 < 0xC)
          {
            v15 += 10;
            v14 += 20;
            if (a4)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v15[10] = (v14[20] + v14[21] + 1) >> 1;
            v15[11] = (v14[22] + v14[23] + 1) >> 1;
            if (v13 < 0xE)
            {
              v15 += 12;
              v14 += 24;
              if (a4)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v15[12] = (v14[24] + v14[25] + 1) >> 1;
              v15[13] = (v14[26] + v14[27] + 1) >> 1;
              v15 += 14;
              v14 += 28;
              if (a4)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint8x16_t *ScaleRowDown2Box_Any_NEON(uint8x16_t *result, uint64_t a2, int8x16_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF0;
  if (v4 >= 1)
  {
    v5 = a3;
    v6 = a4 & 0xFFFFFFF0;
    _X12 = result;
    _X10 = (result + a2);
    do
    {
      v9 = *_X12;
      v10 = _X12[1];
      _X12 += 2;
      v11 = *_X10;
      v12 = _X10[1];
      _X10 += 2;
      v6 -= 16;
      __asm
      {
        PRFM            #0, [X12,#0x1C0]
        PRFM            #0, [X10,#0x1C0]
      }

      *v5++ = vrshrn_high_n_s16(vrshrn_n_s16(vpadalq_u8(vpaddlq_u8(v9), v11), 2uLL), vpadalq_u8(vpaddlq_u8(v10), v12), 2uLL);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v19 = a4 & 0xF;
  v20 = result + 2 * v4;
  v21 = &a3->i8[v4];
  v22 = &v20[a2];
  if (v19 < 2)
  {
    if ((a4 & 1) == 0)
    {
      return result;
    }

LABEL_27:
    *v21 = (*v20 + v20[1] + *v22 + v22[1] + 2) >> 2;
    return result;
  }

  *v21 = (*v20 + v20[1] + *v22 + v22[1] + 2) >> 2;
  v21[1] = (v20[2] + v20[3] + v22[2] + v22[3] + 2) >> 2;
  if (v19 < 4)
  {
    v21 += 2;
    v20 += 4;
    v22 += 4;
    if (a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v21[2] = (v20[4] + v20[5] + v22[4] + v22[5] + 2) >> 2;
    v21[3] = (v20[6] + v20[7] + v22[6] + v22[7] + 2) >> 2;
    if (v19 < 6)
    {
      v21 += 4;
      v20 += 8;
      v22 += 8;
      if (a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v21[4] = (v20[8] + v20[9] + v22[8] + v22[9] + 2) >> 2;
      v21[5] = (v20[10] + v20[11] + v22[10] + v22[11] + 2) >> 2;
      if (v19 < 8)
      {
        v21 += 6;
        v20 += 12;
        v22 += 12;
        if (a4)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21[6] = (v20[12] + v20[13] + v22[12] + v22[13] + 2) >> 2;
        v21[7] = (v20[14] + v20[15] + v22[14] + v22[15] + 2) >> 2;
        if (v19 < 0xA)
        {
          v21 += 8;
          v20 += 16;
          v22 += 16;
          if (a4)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v21[8] = (v20[16] + v20[17] + v22[16] + v22[17] + 2) >> 2;
          v21[9] = (v20[18] + v20[19] + v22[18] + v22[19] + 2) >> 2;
          if (v19 < 0xC)
          {
            v21 += 10;
            v20 += 20;
            v22 += 20;
            if (a4)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v21[10] = (v20[20] + v20[21] + v22[20] + v22[21] + 2) >> 2;
            v21[11] = (v20[22] + v20[23] + v22[22] + v22[23] + 2) >> 2;
            if (v19 < 0xE)
            {
              v21 += 12;
              v20 += 24;
              v22 += 24;
              if (a4)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v21[12] = (v20[24] + v20[25] + v22[24] + v22[25] + 2) >> 2;
              v21[13] = (v20[26] + v20[27] + v22[26] + v22[27] + 2) >> 2;
              v21 += 14;
              v20 += 28;
              v22 += 28;
              if (a4)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const char *ScaleRowDown4_Any_NEON(const char *result, uint64_t a2, int8x16_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF0;
  if (v4 >= 1)
  {
    _X8 = result;
    v6 = a4 & 0xFFFFFFF0;
    v7 = a3;
    do
    {
      v16 = vld4q_s8(_X8);
      _X8 += 64;
      v6 -= 16;
      __asm { PRFM            #0, [X8,#0x1C0] }

      *v7++ = v16.val[2];
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v13 = a4 & 0xF;
  v14 = &result[4 * v4];
  v15 = &a3->i8[v4];
  if (v13 < 2)
  {
    if ((a4 & 1) == 0)
    {
      return result;
    }

LABEL_27:
    *v15 = v14[2];
    return result;
  }

  *v15 = v14[2];
  v15[1] = v14[6];
  if (v13 < 4)
  {
    v15 += 2;
    v14 += 8;
    if (a4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v15[2] = v14[10];
    v15[3] = v14[14];
    if (v13 < 6)
    {
      v15 += 4;
      v14 += 16;
      if (a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15[4] = v14[18];
      v15[5] = v14[22];
      if (v13 < 8)
      {
        v15 += 6;
        v14 += 24;
        if (a4)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v15[6] = v14[26];
        v15[7] = v14[30];
        if (v13 < 0xA)
        {
          v15 += 8;
          v14 += 32;
          if (a4)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15[8] = v14[34];
          v15[9] = v14[38];
          if (v13 < 0xC)
          {
            v15 += 10;
            v14 += 40;
            if (a4)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v15[10] = v14[42];
            v15[11] = v14[46];
            if (v13 < 0xE)
            {
              v15 += 12;
              v14 += 48;
              if (a4)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v15[12] = v14[50];
              v15[13] = v14[54];
              v15 += 14;
              v14 += 56;
              if (a4)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 ScaleRowDown4Box_Any_NEON@<H0>(uint8x16_t *a1@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X2>, int a4@<W3>)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  if (v4 >= 1)
  {
    _X9 = (a1 + a2);
    _X11 = (a1 + 2 * a2);
    _X10 = (a1 + 2 * a2 + a2);
    v8 = a3;
    v9 = a4 & 0xFFFFFFF8;
    _X14 = a1;
    do
    {
      v11 = *_X14;
      v12 = _X14[1];
      _X14 += 2;
      v13 = *_X9;
      v14 = _X9[1];
      _X9 += 2;
      v15 = *_X11;
      v16 = _X11[1];
      _X11 += 2;
      v17 = *_X10;
      v18 = _X10[1];
      _X10 += 2;
      v9 -= 8;
      __asm
      {
        PRFM            #0, [X14,#0x1C0]
        PRFM            #0, [X9,#0x1C0]
        PRFM            #0, [X11,#0x1C0]
        PRFM            #0, [X10,#0x1C0]
      }

      *v8++ = vrshrn_n_s16(vpaddq_s16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v11), v13), v15), v17), vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v12), v14), v16), v18)), 4uLL);
    }

    while (!(_NF ^ _VF | _ZF));
  }

  return ScaleRowDown4Box_C(a1 + 4 * v4, a2, a3 + v4, a4 & 7);
}

uint64_t ScaleRowDown34_Any_NEON(uint64_t result, uint64_t a2, int8x16_t *a3, unsigned int a4)
{
  v4 = 48 * (a4 / 0x30);
  v5 = a4 % 0x30;
  if (v4 >= 1)
  {
    _X13 = result;
    v7 = 48 * (a4 / 0x30);
    v8 = a3;
    do
    {
      v29 = *_X13;
      v30 = *(_X13 + 32);
      _X13 += 64;
      v7 -= 48;
      __asm { PRFM            #0, [X13,#0x1C0] }

      *v8 = vqtbl2q_s8(v29, libyuv::kShuf34_0);
      v8[1] = vqtbl2q_s8(*(&v29 + 16), libyuv::kShuf34_1);
      v8[2] = vqtbl2q_s8(v30, libyuv::kShuf34_2);
      v8 += 3;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  if (v5)
  {
    v13 = &a3[v4 / 0x10u];
    v14 = (192 * (a4 / 0x30)) / 3;
    v15 = (result + v14);
    v16 = ~v4 + a4;
    if (v16 < 0x15)
    {
      v17 = 0;
      goto LABEL_24;
    }

    v18 = v16 / 3uLL;
    if (v13 < result + 4 * v18 + v14 + 4 && v15 < &a3->i8[3 * v18 + a4 - v5 + 3])
    {
      v17 = 0;
      goto LABEL_24;
    }

    v20 = (v18 + 1);
    if (v16 >= 0x5D)
    {
      v21 = v20 & 0x7FFFFFE0;
      v22 = v14 + result + 64;
      v23 = v13;
      v24 = v21;
      do
      {
        v31 = *(v22 + 32);
        v32 = *v22;
        v33 = *(v22 - 32);
        v34 = *(v22 - 64);
        v35.val[0].i64[0] = vqtbl2q_s8(v34, xmmword_273B92ED0).u64[0];
        v35.val[0].i64[1] = vqtbl2q_s8(v33, xmmword_273BDAD60).i64[1];
        v35.val[1].i64[0] = vqtbl2q_s8(v34, xmmword_273BDAD80).u64[0];
        v35.val[1].i64[1] = vqtbl2q_s8(v33, xmmword_273BDAD70).i64[1];
        v35.val[2].i64[0] = vqtbl2q_s8(v34, xmmword_273BDAF40).u64[0];
        v35.val[2].i64[1] = vqtbl2q_s8(v33, xmmword_273BDAF30).i64[1];
        v25 = v23;
        vst3q_s8(v25, v35);
        v25 += 48;
        v33.val[1].i64[0] = vqtbl2q_s8(v32, xmmword_273B92ED0).u64[0];
        v33.val[1].i64[1] = vqtbl2q_s8(v31, xmmword_273BDAD60).i64[1];
        v34.val[0].i64[0] = vqtbl2q_s8(v32, xmmword_273BDAD80).u64[0];
        v34.val[0].i64[1] = vqtbl2q_s8(v31, xmmword_273BDAD70).i64[1];
        v34.val[1].i64[0] = vqtbl2q_s8(v32, xmmword_273BDAF40).u64[0];
        v34.val[1].i64[1] = vqtbl2q_s8(v31, xmmword_273BDAF30).i64[1];
        vst3q_s8(v25, *v33.val[1].i8);
        v22 += 128;
        v23 += 96;
        v24 -= 32;
      }

      while (v24);
      if (v21 == v20)
      {
        return result;
      }

      if ((v20 & 0x18) == 0)
      {
        v13 = (v13 + 3 * v21);
        v15 += 4 * v21;
        v17 = 3 * v21;
        do
        {
LABEL_24:
          v13->i8[0] = *v15;
          v13->i8[1] = v15[1];
          v13->i8[2] = v15[3];
          v13 = (v13 + 3);
          v15 += 4;
          v17 += 3;
        }

        while (v17 < v5);
        return result;
      }
    }

    else
    {
      v21 = 0;
    }

    v17 = 3 * (v20 & 0x7FFFFFF8);
    v15 += 4 * (v20 & 0x7FFFFFF8);
    v13 = (v13 + 3 * (v20 & 0x7FFFFFF8));
    v26 = (result + v14 + 4 * v21);
    v27 = v21 - (v20 & 0x7FFFFFF8);
    v28 = &a3->i8[3 * v21 + a4 - v5];
    do
    {
      v36 = vld4_s8(v26);
      v26 += 32;
      v36.val[2] = v36.val[3];
      vst3_s8(v28, *v36.val[0].i8);
      v28 += 24;
      v27 += 8;
    }

    while (v27);
    if ((v20 & 0x7FFFFFF8) != v20)
    {
      goto LABEL_24;
    }
  }

  return result;
}

const char *ScaleRowDown34_0_Box_Any_NEON(const char *result, uint64_t a2, char *a3, unsigned int a4)
{
  v8 = 48 * (a4 / 0x30);
  v9 = a4 % 0x30;
  if (v8 >= 1)
  {
    v10 = 48 * (a4 / 0x30);
    v11 = a3;
    _X13 = result;
    v6.i16[0] = 771;
    v6.i8[2] = 3;
    v6.i8[3] = 3;
    v6.i8[4] = 3;
    v6.i8[5] = 3;
    v6.i8[6] = 3;
    v6.i8[7] = 3;
    v6.i8[8] = 3;
    v6.i8[9] = 3;
    v6.i8[10] = 3;
    v6.i8[11] = 3;
    v6.i8[12] = 3;
    v6.i8[13] = 3;
    v6.i8[14] = 3;
    v6.i8[15] = 3;
    _X11 = &result[a2];
    do
    {
      v116 = vld4q_s8(_X13);
      _X13 += 64;
      v117 = vld4q_s8(_X11);
      _X11 += 64;
      v10 -= 48;
      v4 = vmlal_high_u8(vmovl_high_u8(v117.val[0]), v116.val[0], v6);
      v5 = vmlal_high_u8(vmovl_high_u8(v117.val[1]), v116.val[1], v6);
      __asm { PRFM            #0, [X13,#0x1C0] }

      v116.val[0] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v117.val[0].i8), *v116.val[0].i8, *v6.i8), 2uLL), v4, 2uLL);
      v116.val[1] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v117.val[1].i8), *v116.val[1].i8, *v6.i8), 2uLL), v5, 2uLL);
      v116.val[2] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v117.val[2].i8), *v116.val[2].i8, *v6.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v117.val[2]), v116.val[2], v6), 2uLL);
      v116.val[3] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v117.val[3].i8), *v116.val[3].i8, *v6.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v117.val[3]), v116.val[3], v6), 2uLL);
      __asm { PRFM            #0, [X11,#0x1C0] }

      v116.val[0] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v116.val[1].i8), *v116.val[0].i8, *v6.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v116.val[1]), v116.val[0], v6), 2uLL);
      v116.val[1] = vrhaddq_u8(v116.val[1], v116.val[2]);
      v116.val[2] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v116.val[2].i8), *v116.val[3].i8, *v6.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v116.val[2]), v116.val[3], v6), 2uLL);
      vst3q_s8(v11, *v116.val[0].i8);
      v11 += 48;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  if (v9)
  {
    v19 = &a3[v8];
    v20 = (192 * (a4 / 0x30)) / 3;
    v21 = &result[v20];
    v22 = &result[v20 + a2];
    v23 = ~v8 + a4;
    if (v23 < 0x15)
    {
      v24 = 0;
      goto LABEL_8;
    }

    v24 = 0;
    v34 = v23 / 3uLL;
    v35 = &a3[3 * v34 + a4 - v9 + 3];
    v36 = &result[4 * v34 + 4 + v20];
    v38 = v19 < v36 && v21 < v35;
    v39 = v22 >= v35 || v19 >= v36 + a2;
    if (!v39 || v38)
    {
      goto LABEL_8;
    }

    v40 = (v34 + 1);
    if (v23 >= 0x2D)
    {
      v41 = v40 & 0x7FFFFFF0;
      v79.i64[0] = 0x200000002;
      v79.i64[1] = 0x200000002;
      v80 = v19;
      v81 = v41;
      v82 = &result[v20];
      v83.i64[0] = 0x3000300030003;
      v83.i64[1] = 0x3000300030003;
      do
      {
        v84 = &v82[a2];
        v119 = vld4q_s8(v82);
        v82 += 64;
        v118 = vld4q_s8(v84);
        v114 = vmovl_high_u8(v119.val[0]);
        v85 = vmovl_u8(*v119.val[0].i8);
        v86 = vqtbl1q_s8(v119.val[1], xmmword_273B8E7B0);
        v87 = vqtbl1q_s8(v119.val[1], xmmword_273B8E7A0);
        v88 = vqtbl1q_s8(v119.val[1], xmmword_273B8E7D0);
        v89 = vqtbl1q_s8(v119.val[1], xmmword_273B8E7C0);
        v90 = vqtbl1q_s8(v119.val[2], xmmword_273B8E7D0);
        v91 = vqtbl1q_s8(v119.val[2], xmmword_273B8E7C0);
        v92 = vqtbl1q_s8(v119.val[2], xmmword_273B8E7B0);
        v93 = vqtbl1q_s8(v119.val[2], xmmword_273B8E7A0);
        v94 = vmovl_u8(*v119.val[3].i8);
        v119.val[0] = vmovl_high_u8(v119.val[3]);
        v95 = vmlal_high_u16(v93, v119.val[0], v83);
        v96 = vmlal_u16(v92, *v119.val[0].i8, 0x3000300030003);
        v97 = vmlal_high_u16(v91, v94, v83);
        v98 = vmlal_u16(v90, *v94.i8, 0x3000300030003);
        v4 = vmovl_high_u8(v118.val[0]);
        v119.val[3] = vmovl_u8(*v118.val[0].i8);
        v119.val[1] = vqtbl1q_s8(v118.val[1], xmmword_273B8E7B0);
        v119.val[2] = vqtbl1q_s8(v118.val[1], xmmword_273B8E7A0);
        v99 = vqtbl1q_s8(v118.val[1], xmmword_273B8E7D0);
        v100 = vqtbl1q_s8(v118.val[1], xmmword_273B8E7C0);
        v101 = vqtbl1q_s8(v118.val[2], xmmword_273B8E7D0);
        v102 = vqtbl1q_s8(v118.val[2], xmmword_273B8E7C0);
        v103 = vqtbl1q_s8(v118.val[2], xmmword_273B8E7B0);
        v104 = vqtbl1q_s8(v118.val[2], xmmword_273B8E7A0);
        v105 = vmovl_u8(*v118.val[3].i8);
        v118.val[3] = vmovl_high_u8(v118.val[3]);
        v118.val[0] = vmlal_high_u16(v104, v118.val[3], v83);
        v118.val[1] = vmlal_u16(v103, *v118.val[3].i8, 0x3000300030003);
        v118.val[3] = vmlal_high_u16(v102, v105, v83);
        v118.val[2] = vmlal_u16(v101, *v105.i8, 0x3000300030003);
        v106.i64[0] = 0x300000003;
        v106.i64[1] = 0x300000003;
        v107 = vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v95, v79), 2uLL), v106), vaddq_s32(v118.val[0], v79), 2uLL);
        v108 = vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v98, v79), 2uLL), v106), vaddq_s32(v118.val[2], v79), 2uLL);
        v118.val[2] = vshrq_n_u32(vaddq_s32(v107, v79), 2uLL);
        v118.val[1] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v96, v79), 2uLL), v106), vaddq_s32(v118.val[1], v79), 2uLL), v79), 2uLL);
        v118.val[0] = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(v97, v79), 2uLL), v106), vaddq_s32(v118.val[3], v79), 2uLL), v79), 2uLL);
        v109 = vshrq_n_u32(vaddq_s32(v108, v79), 2uLL);
        v110 = vmlal_u16(vrhaddq_u32(v100, v102), vmovn_s32(vrhaddq_u32(v89, v91)), 0x3000300030003);
        v111 = vmlal_u16(vrhaddq_u32(v99, v101), vmovn_s32(vrhaddq_u32(v88, v90)), 0x3000300030003);
        v112 = vmlal_u16(vrhaddq_u32(v119.val[2], v104), vmovn_s32(vrhaddq_u32(v87, v93)), 0x3000300030003);
        v115.val[2] = vqtbl4q_s8(v118, xmmword_273B8E8C0);
        v113 = vmlal_u16(vrhaddq_u32(v119.val[1], v103), vmovn_s32(vrhaddq_u32(v86, v92)), 0x3000300030003);
        v6 = vmlal_u16(v99, *v119.val[3].i8, 0x3000300030003);
        v5 = vmlal_u16(v119.val[1], *v4.i8, 0x3000300030003);
        v115.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(v111, v110), 2uLL), vuzp1q_s16(v113, v112), 2uLL);
        v115.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vuzp1q_s16(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_u16(v88, *v85.i8, 0x3000300030003), v79), 2uLL), v106), vaddq_s32(v6, v79), 2uLL), vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v89, v85, v83), v79), 2uLL), v106), vaddq_s32(vmlal_high_u16(v100, v119.val[3], v83), v79), 2uLL)), 2uLL), vuzp1q_s16(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_u16(v86, *v114.i8, 0x3000300030003), v79), 2uLL), v106), vaddq_s32(v5, v79), 2uLL), vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v87, v114, v83), v79), 2uLL), v106), vaddq_s32(vmlal_high_u16(v119.val[2], v4, v83), v79), 2uLL)), 2uLL);
        vst3q_s8(v80, v115);
        v80 += 48;
        v81 -= 16;
      }

      while (v81);
      if (v41 == v40)
      {
        return result;
      }

      if ((v40 & 8) == 0)
      {
        v24 = 3 * v41;
        v22 += 4 * v41;
        v21 += 4 * v41;
        v19 += 3 * v41;
        do
        {
LABEL_8:
          v25 = v21[1];
          v26 = (v25 + 3 * *v21 + 2) >> 2;
          v27 = v21[2];
          v28 = (v25 + v27 + 1) >> 1;
          v29 = (v27 + 3 * v21[3] + 2) >> 2;
          v30 = v22[1];
          v31 = v30 + 3 * *v22 + 2;
          v32 = v22[2];
          v33 = v30 + v32 + 1;
          result = (v32 + 3 * v22[3] + 2);
          *v19 = (3 * v26 + (v31 >> 2) + 2) >> 2;
          v19[1] = (3 * v28 + (v33 >> 1) + 2) >> 2;
          v19[2] = (3 * v29 + (result >> 2) + 2) >> 2;
          v19 += 3;
          v21 += 4;
          v22 += 4;
          v24 += 3;
        }

        while (v24 < v9);
        return result;
      }
    }

    else
    {
      v41 = 0;
    }

    v19 += 3 * (v40 & 0x7FFFFFF8);
    v42 = 4 * (v40 & 0x7FFFFFF8);
    v21 += v42;
    v22 += v42;
    v24 = 3 * (v40 & 0x7FFFFFF8);
    v43 = &result[4 * v41 + v20];
    result = (v41 - (v40 & 0x7FFFFFF8));
    v44 = &a3[3 * v41 + a4 - v9];
    v45.i64[0] = 0x300000003;
    v45.i64[1] = 0x300000003;
    v46.i64[0] = 0x3000300030003;
    v46.i64[1] = 0x3000300030003;
    v47.i64[0] = 0x200000002;
    v47.i64[1] = 0x200000002;
    do
    {
      v48 = &v43[a2];
      *(&v4 - 8) = vld4_s8(v43);
      v43 += 32;
      v50 = vmovl_u8(v49);
      *(&v6 - 8) = vld4_s8(v48);
      v51 = vqtbl1q_s8(v4, xmmword_273B8E7D0);
      v52 = vqtbl1q_s8(v4, xmmword_273B8E7C0);
      v53 = vqtbl1q_s8(v5, xmmword_273B8E7D0);
      v54 = vqtbl1q_s8(v5, xmmword_273B8E7C0);
      v56 = vmovl_u8(v55);
      v57 = vrhaddq_u32(v52, v54);
      v58 = vmlal_high_u16(v54, v56, v46);
      v59 = vrhaddq_u32(v51, v53);
      v60 = vaddq_s32(vmlal_u16(v53, *v56.i8, 0x3000300030003), v47);
      v61 = vshrq_n_u32(vaddq_s32(v58, v47), 2uLL);
      v63 = vmovl_u8(v62);
      v64 = vqtbl1q_s8(v6, xmmword_273B8E7D0);
      v65 = vqtbl1q_s8(v6, xmmword_273B8E7C0);
      v66 = vqtbl1q_s8(v7, xmmword_273B8E7D0);
      v67 = vqtbl1q_s8(v7, xmmword_273B8E7C0);
      v69 = vmovl_u8(v68);
      v70 = vmlal_u16(vrhaddq_u32(v65, v67), vmovn_s32(v57), 0x3000300030003);
      v71 = vmlal_u16(vrhaddq_u32(v64, v66), vmovn_s32(v59), 0x3000300030003);
      v4 = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(v61, v45), vaddq_s32(vmlal_high_u16(v67, v69, v46), v47), 2uLL), v47), 2uLL);
      v72 = vshrq_n_u32(vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(v60, 2uLL), v45), vaddq_s32(vmlal_u16(v66, *v69.i8, 0x3000300030003), v47), 2uLL), v47), 2uLL);
      v5 = vaddq_s32(v70, v47);
      v73 = vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_u16(v51, *v50.i8, 0x3000300030003), v47), 2uLL), v45), vaddq_s32(vmlal_u16(v64, *v63.i8, 0x3000300030003), v47), 2uLL), v47);
      v74 = vaddq_s32(vsraq_n_u32(vmulq_s32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v52, v50, v46), v47), 2uLL), v45), vaddq_s32(vmlal_high_u16(v65, v63, v46), v47), 2uLL), v47);
      v6 = vqtbl2q_s8(*(&v4 - 1), xmmword_273B92ED0);
      v75 = vshrq_n_u32(v5, 2uLL);
      v76 = vshrq_n_u32(vaddq_s32(v71, v47), 2uLL);
      v77 = vshrq_n_u32(v74, 2uLL);
      v7 = vshrq_n_u32(v73, 2uLL);
      v78 = vqtbl4q_s8(*v7.i8, xmmword_273B8E8C0);
      v69.i64[0] = vextq_s8(v78, v78, 8uLL).u64[0];
      vst3_s8(v44, *(&v6 - 1));
      v44 += 24;
      result += 8;
    }

    while (result);
    if ((v40 & 0x7FFFFFF8) != v40)
    {
      goto LABEL_8;
    }
  }

  return result;
}

const char *ScaleRowDown34_1_Box_Any_NEON(const char *result, uint64_t a2, char *a3, unsigned int a4)
{
  v8 = 48 * (a4 / 0x30);
  v9 = a4 % 0x30;
  if (v8 >= 1)
  {
    v10 = 48 * (a4 / 0x30);
    v11 = a3;
    _X13 = result;
    v5.i16[0] = 771;
    v5.i8[2] = 3;
    v5.i8[3] = 3;
    v5.i8[4] = 3;
    v5.i8[5] = 3;
    v5.i8[6] = 3;
    v5.i8[7] = 3;
    v5.i8[8] = 3;
    v5.i8[9] = 3;
    v5.i8[10] = 3;
    v5.i8[11] = 3;
    v5.i8[12] = 3;
    v5.i8[13] = 3;
    v5.i8[14] = 3;
    v5.i8[15] = 3;
    _X11 = &result[a2];
    do
    {
      v107 = vld4q_s8(_X13);
      _X13 += 64;
      v109 = vld4q_s8(_X11);
      _X11 += 64;
      v10 -= 48;
      v107.val[0] = vrhaddq_u8(v107.val[0], v109.val[0]);
      v107.val[1] = vrhaddq_u8(v107.val[1], v109.val[1]);
      v107.val[2] = vrhaddq_u8(v107.val[2], v109.val[2]);
      v107.val[3] = vrhaddq_u8(v107.val[3], v109.val[3]);
      __asm { PRFM            #0, [X13,#0x1C0] }

      v107.val[0] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v107.val[1].i8), *v107.val[0].i8, *v5.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v107.val[1]), v107.val[0], v5), 2uLL);
      __asm { PRFM            #0, [X11,#0x1C0] }

      v107.val[1] = vrhaddq_u8(v107.val[1], v107.val[2]);
      v107.val[2] = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmovl_u8(*v107.val[2].i8), *v107.val[3].i8, *v5.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v107.val[2]), v107.val[3], v5), 2uLL);
      vst3q_s8(v11, *v107.val[0].i8);
      v11 += 48;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  if (v9)
  {
    v19 = &a3[v8];
    v20 = (192 * (a4 / 0x30)) / 3;
    v21 = &result[v20];
    v22 = &result[v20 + a2];
    v23 = ~v8 + a4;
    if (v23 < 0x15)
    {
      v24 = 0;
      goto LABEL_8;
    }

    v24 = 0;
    v34 = v23 / 3uLL;
    v35 = &a3[3 * v34 + a4 - v9 + 3];
    v36 = &result[4 * v34 + 4 + v20];
    v38 = v19 < v36 && v21 < v35;
    v39 = v22 >= v35 || v19 >= v36 + a2;
    if (!v39 || v38)
    {
      goto LABEL_8;
    }

    v40 = (v34 + 1);
    if (v23 >= 0x2D)
    {
      v41 = v40 & 0x7FFFFFF0;
      v76.i64[0] = 0x200000002;
      v76.i64[1] = 0x200000002;
      v77 = v19;
      v78 = v41;
      v79 = &result[v20];
      v80.i64[0] = 0x3000300030003;
      v80.i64[1] = 0x3000300030003;
      do
      {
        v81 = &v79[a2];
        v110 = vld4q_s8(v79);
        v79 += 64;
        v104 = vmovl_u8(*v110.val[0].i8);
        v82 = vmovl_high_u8(v110.val[0]);
        v83 = vqtbl1q_s8(v110.val[1], xmmword_273B8E7C0);
        v84 = vqtbl1q_s8(v110.val[1], xmmword_273B8E7D0);
        v85 = vqtbl1q_s8(v110.val[1], xmmword_273B8E7A0);
        v86 = vqtbl1q_s8(v110.val[1], xmmword_273B8E7B0);
        v87 = vqtbl1q_s8(v110.val[2], xmmword_273B8E7A0);
        v88 = vqtbl1q_s8(v110.val[2], xmmword_273B8E7B0);
        v89 = vqtbl1q_s8(v110.val[2], xmmword_273B8E7C0);
        v90 = vqtbl1q_s8(v110.val[2], xmmword_273B8E7D0);
        v91 = vmovl_high_u8(v110.val[3]);
        v92 = vmovl_u8(*v110.val[3].i8);
        v108 = vld4q_s8(v81);
        v93 = vshrq_n_u32(vaddq_s32(vmlal_u16(v88, *v91.i8, 0x3000300030003), v76), 2uLL);
        v94 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v87, v91, v80), v76), 2uLL);
        v6 = vmovl_u8(*v108.val[0].i8);
        v110.val[2] = vmovl_high_u8(v108.val[0]);
        v110.val[1] = vqtbl1q_s8(v108.val[1], xmmword_273B8E7C0);
        v110.val[3] = vqtbl1q_s8(v108.val[1], xmmword_273B8E7D0);
        v95 = vqtbl1q_s8(v108.val[1], xmmword_273B8E7A0);
        v96 = vqtbl1q_s8(v108.val[1], xmmword_273B8E7B0);
        v97 = vqtbl1q_s8(v108.val[2], xmmword_273B8E7A0);
        v98 = vqtbl1q_s8(v108.val[2], xmmword_273B8E7B0);
        v99 = vqtbl1q_s8(v108.val[2], xmmword_273B8E7C0);
        v100 = vqtbl1q_s8(v108.val[2], xmmword_273B8E7D0);
        v101 = vmovl_high_u8(v108.val[3]);
        v108.val[0] = vmovl_u8(*v108.val[3].i8);
        v102 = vrhaddq_u32(v94, vshrq_n_u32(vaddq_s32(vmlal_high_u16(v97, v101, v80), v76), 2uLL));
        v103 = vrhaddq_u32(v93, vshrq_n_u32(vaddq_s32(vmlal_u16(v98, *v101.i8, 0x3000300030003), v76), 2uLL));
        v108.val[3] = vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v89, v92, v80), v76), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_high_u16(v99, v108.val[0], v80), v76), 2uLL));
        v108.val[2] = vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_u16(v90, *v92.i8, 0x3000300030003), v76), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_u16(v100, *v108.val[0].i8, 0x3000300030003), v76), 2uLL));
        v106.val[2] = vqtbl4q_s8(*(&v108 + 32), xmmword_273B8E8C0);
        v106.val[1] = vuzp1q_s8(vuzp1q_s16(vrhaddq_u32(vrhaddq_u32(v84, v90), vrhaddq_u32(v110.val[3], v100)), vrhaddq_u32(vrhaddq_u32(v83, v89), vrhaddq_u32(v110.val[1], v99))), vuzp1q_s16(vrhaddq_u32(vrhaddq_u32(v86, v88), vrhaddq_u32(v96, v98)), vrhaddq_u32(vrhaddq_u32(v85, v87), vrhaddq_u32(v95, v97))));
        v5 = vmlal_u16(v86, *v82.i8, 0x3000300030003);
        v4 = vmlal_high_u16(v83, v104, v80);
        v7 = vmlal_high_u16(v110.val[1], v6, v80);
        v106.val[0] = vuzp1q_s8(vuzp1q_s16(vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_u16(v84, *v104.i8, 0x3000300030003), v76), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_u16(v110.val[3], *v6.i8, 0x3000300030003), v76), 2uLL)), vrhaddq_u32(vshrq_n_u32(vaddq_s32(v4, v76), 2uLL), vshrq_n_u32(vaddq_s32(v7, v76), 2uLL))), vuzp1q_s16(vrhaddq_u32(vshrq_n_u32(vaddq_s32(v5, v76), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_u16(v96, *v110.val[2].i8, 0x3000300030003), v76), 2uLL)), vrhaddq_u32(vshrq_n_u32(vaddq_s32(vmlal_high_u16(v85, v82, v80), v76), 2uLL), vshrq_n_u32(vaddq_s32(vmlal_high_u16(v95, v110.val[2], v80), v76), 2uLL))));
        vst3q_s8(v77, v106);
        v77 += 48;
        v78 -= 16;
      }

      while (v78);
      if (v41 == v40)
      {
        return result;
      }

      if ((v40 & 8) == 0)
      {
        v24 = 3 * v41;
        v22 += 4 * v41;
        v21 += 4 * v41;
        v19 += 3 * v41;
        do
        {
LABEL_8:
          v25 = v21[1];
          v26 = (v25 + 3 * *v21 + 2) >> 2;
          v27 = v21[2];
          v28 = (v25 + v27 + 1) >> 1;
          v29 = (v27 + 3 * v21[3] + 2) >> 2;
          v30 = v22[1];
          v31 = v30 + 3 * *v22 + 2;
          v32 = v22[2];
          v33 = v30 + v32 + 1;
          result = (v32 + 3 * v22[3] + 2);
          *v19 = (v26 + (v31 >> 2) + 1) >> 1;
          v19[1] = (v28 + (v33 >> 1) + 1) >> 1;
          v19[2] = (v29 + (result >> 2) + 1) >> 1;
          v19 += 3;
          v21 += 4;
          v22 += 4;
          v24 += 3;
        }

        while (v24 < v9);
        return result;
      }
    }

    else
    {
      v41 = 0;
    }

    v19 += 3 * (v40 & 0x7FFFFFF8);
    v42 = 4 * (v40 & 0x7FFFFFF8);
    v21 += v42;
    v22 += v42;
    v24 = 3 * (v40 & 0x7FFFFFF8);
    v43 = &result[4 * v41 + v20];
    result = (v41 - (v40 & 0x7FFFFFF8));
    v44 = &a3[3 * v41 + a4 - v9];
    v45.i64[0] = 0x3000300030003;
    v45.i64[1] = 0x3000300030003;
    v46.i64[0] = 0x200000002;
    v46.i64[1] = 0x200000002;
    do
    {
      v47 = &v43[a2];
      *(&v4 - 8) = vld4_s8(v43);
      v43 += 32;
      v49 = vmovl_u8(v48);
      v50 = vqtbl1q_s8(v4, xmmword_273B8E7C0);
      v51 = vqtbl1q_s8(v4, xmmword_273B8E7D0);
      v52 = vqtbl1q_s8(v5, xmmword_273B8E7C0);
      v53 = vqtbl1q_s8(v5, xmmword_273B8E7D0);
      v55 = vmovl_u8(v54);
      v4 = vrhaddq_u32(v51, v53);
      v56 = vrhaddq_u32(v50, v52);
      *(&v6 - 8) = vld4_s8(v47);
      v57 = vshrq_n_u32(vaddq_s32(vmlal_u16(v53, *v55.i8, 0x3000300030003), v46), 2uLL);
      v58 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v52, v55, v45), v46), 2uLL);
      v60 = vmovl_u8(v59);
      v61 = vqtbl1q_s8(v6, xmmword_273B8E7C0);
      v62 = vqtbl1q_s8(v6, xmmword_273B8E7D0);
      v63 = vqtbl1q_s8(v7, xmmword_273B8E7C0);
      v64 = vqtbl1q_s8(v7, xmmword_273B8E7D0);
      v66 = vmovl_u8(v65);
      v6 = vrhaddq_u32(v62, v64);
      v7 = vrhaddq_u32(v61, v63);
      v67 = vshrq_n_u32(vaddq_s32(vmlal_u16(v64, *v66.i8, 0x3000300030003), v46), 2uLL);
      v105.val[1] = vrhaddq_u32(v58, vshrq_n_u32(vaddq_s32(vmlal_high_u16(v63, v66, v45), v46), 2uLL));
      v105.val[0] = vrhaddq_u32(v57, v67);
      v68 = vqtbl2q_s8(v105, xmmword_273B92ED0).u64[0];
      v69 = vmlal_u16(v51, *v49.i8, 0x3000300030003);
      v70 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v50, v49, v45), v46), 2uLL);
      v71 = vshrq_n_u32(vaddq_s32(vmlal_u16(v62, *v60.i8, 0x3000300030003), v46), 2uLL);
      v72 = vshrq_n_u32(vaddq_s32(vmlal_high_u16(v61, v60, v45), v46), 2uLL);
      v73 = vrhaddq_u32(v56, v7);
      v74 = vrhaddq_u32(v4, v6);
      v75 = vrhaddq_u32(v70, v72);
      v5 = vrhaddq_u32(vshrq_n_u32(vaddq_s32(v69, v46), 2uLL), v71);
      v105.val[0] = vqtbl4q_s8(*v5.i8, xmmword_273B8E8C0);
      v105.val[1].i64[0] = vextq_s8(v105.val[0], v105.val[0], 8uLL).u64[0];
      vst3_s8(v44, *v105.val[0].i8);
      v44 += 24;
      result += 8;
    }

    while (result);
    if ((v40 & 0x7FFFFFF8) != v40)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *ScaleRowDown38_Any_NEON(char *result, uint64_t a2, int8x16_t *a3, unsigned int a4)
{
  v4 = 12 * (a4 / 0xC);
  v5 = a4 % 0xC;
  if (v4 >= 1)
  {
    v6 = a3;
    _X13 = result;
    v8 = v4 - 12;
    if (v4 != 12)
    {
      do
      {
        v33 = *_X13++;
        v8 -= 12;
        __asm { PRFM            #0, [X13,#0x1C0] }

        *v6 = vqtbl2q_s8(v33, libyuv::kShuf38);
        v6 = (v6 + 12);
      }

      while (!(_NF ^ _VF | _ZF));
    }

    v13 = vqtbl2q_s8(*_X13, libyuv::kShuf38);
    v6->i64[0] = v13.i64[0];
    v6->i32[2] = v13.i32[2];
  }

  if (v5)
  {
    v14 = &a3->i8[v4];
    v15 = (96 * (a4 / 0xC)) / 3;
    v16 = &result[v15];
    v17 = ~v4 + a4;
    if (v17 < 0x18)
    {
      v18 = 0;
      goto LABEL_26;
    }

    v19 = v17 / 3uLL;
    if (v14 < &result[8 * v19 + 7 + v15] && v16 < &a3->i8[3 * v19 + a4 - v5 + 3])
    {
      v18 = 0;
      goto LABEL_26;
    }

    v21 = (v19 + 1);
    if (v17 >= 0x30)
    {
      v23 = 16;
      if (((v19 + 1) & 0xF) != 0)
      {
        v23 = (v19 + 1) & 0xF;
      }

      v22 = v21 - v23;
      v24 = ~((v17 * 0x5555555555555556uLL) >> 64) + v23;
      v25 = v14;
      v26 = &result[v15];
      do
      {
        v36 = *(v26 + 3);
        v37 = *(v26 + 2);
        v38 = *(v26 + 1);
        v39 = *v26;
        v26 += 128;
        v27 = vqtbl2q_s8(v37, xmmword_273B92E60);
        v27.i32[3] = vqtbl2q_s8(v36, xmmword_273B92E50).i32[3];
        v41.val[0].i32[0] = vqtbl2q_s8(v39, xmmword_273B92E80).u32[0];
        v41.val[0].i32[1] = vqtbl2q_s8(v38, xmmword_273B92E70).i32[1];
        v28 = vqtbl2q_s8(v37, xmmword_273BDAE80);
        v28.i32[3] = vqtbl2q_s8(v36, xmmword_273BDAE70).i32[3];
        v41.val[0].i64[1] = v27.i64[1];
        v41.val[1].i32[0] = vqtbl2q_s8(v39, xmmword_273BDAE20).u32[0];
        v41.val[1].i32[1] = vqtbl2q_s8(v38, xmmword_273BDAE10).i32[1];
        v36.val[0] = vqtbl2q_s8(v36, xmmword_273BDAED0);
        v36.val[1] = vqtbl2q_s8(v37, xmmword_273BDAEE0);
        v36.val[1].i32[3] = v36.val[0].i32[3];
        v41.val[1].i64[1] = v28.i64[1];
        v41.val[2].i32[0] = vqtbl2q_s8(v39, xmmword_273BDAE00).u32[0];
        v41.val[2].i32[1] = vqtbl2q_s8(v38, xmmword_273BDADF0).i32[1];
        v41.val[2].i64[1] = v36.val[1].i64[1];
        vst3q_s8(v25, v41);
        v25 += 48;
        v24 += 16;
      }

      while (v24);
      if (v23 < 9)
      {
        v14 += 3 * v22;
        v16 += 8 * v22;
        v18 = 3 * v22;
        do
        {
LABEL_26:
          *v14 = *v16;
          v14[1] = v16[3];
          v14[2] = v16[6];
          v14 += 3;
          v16 += 8;
          v18 += 3;
        }

        while (v18 < v5);
        return result;
      }
    }

    else
    {
      v22 = 0;
    }

    v29 = (v19 + 1) & 7;
    if (((v19 + 1) & 7) == 0)
    {
      v29 = 8;
    }

    v30 = v21 - v29;
    v18 = 3 * (v21 - v29);
    v16 += 8 * v30;
    v14 += 3 * v30;
    v31 = &result[8 * v22 + v15];
    v32 = ~((v17 * 0x5555555555555556uLL) >> 64) + v22 + v29;
    result = &a3->i8[3 * v22 + a4 - v5];
    do
    {
      v34 = *(v31 + 1);
      v35 = *v31;
      v31 += 64;
      v40.val[0].i32[0] = vqtbl2q_s8(v35, xmmword_273B92E80).u32[0];
      v40.val[0].i32[1] = vqtbl2q_s8(v34, xmmword_273B92E70).i32[1];
      v40.val[1].i32[0] = vqtbl2q_s8(v35, xmmword_273BDAE20).u32[0];
      v40.val[1].i32[1] = vqtbl2q_s8(v34, xmmword_273BDAE10).i32[1];
      v40.val[2].i32[0] = vqtbl2q_s8(v35, xmmword_273BDAE00).u32[0];
      v40.val[2].i32[1] = vqtbl2q_s8(v34, xmmword_273BDADF0).i32[1];
      vst3_s8(result, v40);
      result += 24;
      v32 += 8;
    }

    while (v32);
    goto LABEL_26;
  }

  return result;
}

uint64_t ScaleRowDown38_3_Box_Any_NEON(uint8x16_t *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v5 = 12 * (a4 / 0xC);
  v6 = a4 % 0xC;
  if (v5 >= 1)
  {
    v7 = (a1 + a2);
    v8 = (a1 + 2 * a2);
    v9 = v5;
    v10 = a3;
    v11 = a1;
    do
    {
      v13 = *v11;
      v12 = v11[1];
      v11 += 2;
      v15 = *v7;
      v14 = v7[1];
      v7 += 2;
      v17 = *v8;
      v16 = v8[1];
      v8 += 2;
      v18 = __OFSUB__(v9, 12);
      v9 -= 12;
      v26.val[0] = vaddw_u8(vaddl_u8(*v13.i8, *v15.i8), *v17.i8);
      v25.val[0] = vaddw_u8(vaddl_u8(*v12.i8, *v14.i8), *v16.i8);
      v26.val[1] = vaddw_high_u8(vaddl_high_u8(v13, v15), v17);
      v25.val[1] = vaddw_high_u8(vaddl_high_u8(v12, v14), v16);
      v26.val[1] = vqrdmulhq_s16(vaddq_s16(vaddq_s16(vqtbl2q_s8(v26, libyuv::kScaleRowDown38_3_BoxIndices1), vqtbl2q_s8(v26, libyuv::kScaleRowDown38_3_BoxIndices2)), vqtbl2q_s8(v26, libyuv::kScaleRowDown38_3_BoxIndices3)), libyuv::kMult38_Div996);
      v19 = vqrdmulhq_s16(vaddq_s16(vaddq_s16(vqtbl2q_s8(v25, libyuv::kScaleRowDown38_3_BoxIndices1), vqtbl2q_s8(v25, libyuv::kScaleRowDown38_3_BoxIndices2)), vqtbl2q_s8(v25, libyuv::kScaleRowDown38_3_BoxIndices3)), libyuv::kMult38_Div996);
      v20 = vqtbl2q_s8(*(&v26 + 16), libyuv::kScaleRowDown38_NarrowIndices);
      *v10 = v20.i64[0];
      v21 = v10 + 1;
      *v21 = v20.i32[2];
      v10 = v21 + 1;
    }

    while (!((v9 < 0) ^ v18 | (v9 == 0)));
  }

  v22 = a1->i64 + 8 * v5 / 3;
  v23 = a3 + v5;

  return ScaleRowDown38_3_Box_C(v22, a2, v23, v6);
}

uint64_t ScaleRowDown38_2_Box_Any_NEON(uint64_t result, uint64_t a2, void *a3, unsigned int a4)
{
  v4 = 12 * (a4 / 0xC);
  v5 = a4 % 0xC;
  if (v4 >= 1)
  {
    v6 = result + a2;
    v7 = a3;
    v8 = 12 * (a4 / 0xC);
    v9 = result;
    do
    {
      v19.val[0] = *v9;
      v18.val[0] = *(v9 + 16);
      v9 += 32;
      v19.val[1] = *v6;
      v18.val[1] = *(v6 + 16);
      v6 += 32;
      v10 = __OFSUB__(v8, 12);
      v8 -= 12;
      v19.val[1] = vqrdmulhq_s16(vaddq_s16(vaddq_s16(vpaddlq_u8(vqtbl1q_s8(v19.val[0], libyuv::kScaleRowDown38_2_BoxIndices1)), vpaddlq_u8(vqtbl1q_s8(v19.val[1], libyuv::kScaleRowDown38_2_BoxIndices1))), vpaddlq_u8(vqtbl2q_s8(v19, libyuv::kScaleRowDown38_2_BoxIndices2))), libyuv::kMult38_Div664);
      v11 = vqrdmulhq_s16(vaddq_s16(vaddq_s16(vpaddlq_u8(vqtbl1q_s8(v18.val[0], libyuv::kScaleRowDown38_2_BoxIndices1)), vpaddlq_u8(vqtbl1q_s8(v18.val[1], libyuv::kScaleRowDown38_2_BoxIndices1))), vpaddlq_u8(vqtbl2q_s8(v18, libyuv::kScaleRowDown38_2_BoxIndices2))), libyuv::kMult38_Div664);
      v19.val[1] = vqtbl2q_s8(*(&v19 + 16), libyuv::kScaleRowDown38_NarrowIndices);
      *v7 = v19.val[1].i64[0];
      v12 = v7 + 1;
      *v12 = v19.val[1].i32[2];
      v7 = v12 + 1;
    }

    while (!((v8 < 0) ^ v10 | (v8 == 0)));
  }

  if (v5)
  {
    v13 = 0;
    v14 = a3 + v4;
    v15 = (result + (96 * (a4 / 0xC)) / 3 + 3);
    v16 = &v15[a2];
    do
    {
      v17 = &v14[v13];
      *v17 = (10922 * (*(v15 - 2) + *(v15 - 3) + *(v15 - 1) + *(v16 - 3) + *(v16 - 2) + *(v16 - 1))) >> 16;
      v17[1] = (10922 * (v15[1] + *v15 + v15[2] + *v16 + v16[1] + v16[2])) >> 16;
      v17[2] = (v15[4] + v15[3] + v16[3] + v16[4]) >> 2;
      v13 += 3;
      v16 += 8;
      v15 += 8;
    }

    while (v13 < v5);
  }

  return result;
}

int32x4_t *ScaleARGBRowDown2_Any_NEON(int32x4_t *result, uint64_t a2, int32x4_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  if (v4 >= 1)
  {
    v5 = a3;
    _X10 = result;
    v7 = a4 & 0xFFFFFFF8;
    do
    {
      v8 = *_X10;
      v9 = _X10[1];
      v10 = _X10[2];
      v11 = _X10[3];
      _X10 += 4;
      v7 -= 8;
      __asm { PRFM            #0, [X10,#0x1C0] }

      *v5 = vuzp2q_s32(v8, v9);
      v5[1] = vuzp2q_s32(v10, v11);
      v5 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v17 = a4 & 7;
  v18 = &result->i32[2 * v4];
  v19 = &a3->i32[v4];
  if (v17 < 2)
  {
    if ((a4 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    *v19 = v18[1];
    return result;
  }

  *v19 = v18[1];
  v19[1] = v18[3];
  if (v17 < 4)
  {
    v18 += 4;
    v19 += 2;
    if (a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19[2] = v18[5];
    v19[3] = v18[7];
    if (v17 < 6)
    {
      v18 += 8;
      v19 += 4;
      if (a4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19[4] = v18[9];
      v19[5] = v18[11];
      v18 += 12;
      v19 += 6;
      if (a4)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

const float *ScaleARGBRowDown2Linear_Any_NEON(const float *result, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  if (v4 >= 1)
  {
    v5 = result + 8;
    v6 = a4 & 0xFFFFFFF8;
    v7 = result;
    v8 = a3;
    do
    {
      v13 = vld2q_f32(v7);
      v7 += 16;
      v14 = vld2q_f32(v5);
      v5 += 16;
      v9 = __OFSUB__(v6, 8);
      v6 -= 8;
      *v8 = vrhaddq_u8(v13.val[0], v13.val[1]);
      v8[1] = vrhaddq_u8(v14.val[0], v14.val[1]);
      v8 += 2;
    }

    while (!((v6 < 0) ^ v9 | (v6 == 0)));
  }

  v10 = a4 & 7;
  if ((a4 & 7) != 0)
  {
    v11 = &result[2 * v4];
    v12 = &a3->i8[4 * v4];
    *v12 = (*v11 + v11[4] + 1) >> 1;
    v12[1] = (v11[1] + v11[5] + 1) >> 1;
    v12[2] = (v11[2] + v11[6] + 1) >> 1;
    v12[3] = (v11[3] + v11[7] + 1) >> 1;
    if (v10 != 1)
    {
      v12[4] = (v11[8] + v11[12] + 1) >> 1;
      v12[5] = (v11[9] + v11[13] + 1) >> 1;
      v12[6] = (v11[10] + v11[14] + 1) >> 1;
      v12[7] = (v11[11] + v11[15] + 1) >> 1;
      if (v10 != 2)
      {
        v12[8] = (v11[16] + v11[20] + 1) >> 1;
        v12[9] = (v11[17] + v11[21] + 1) >> 1;
        v12[10] = (v11[18] + v11[22] + 1) >> 1;
        v12[11] = (v11[19] + v11[23] + 1) >> 1;
        if (v10 != 3)
        {
          v12[12] = (v11[24] + v11[28] + 1) >> 1;
          v12[13] = (v11[25] + v11[29] + 1) >> 1;
          v12[14] = (v11[26] + v11[30] + 1) >> 1;
          v12[15] = (v11[27] + v11[31] + 1) >> 1;
          if (v10 != 4)
          {
            v12[16] = (v11[32] + v11[36] + 1) >> 1;
            v12[17] = (v11[33] + v11[37] + 1) >> 1;
            v12[18] = (v11[34] + v11[38] + 1) >> 1;
            v12[19] = (v11[35] + v11[39] + 1) >> 1;
            if (v10 != 5)
            {
              v12[20] = (v11[40] + v11[44] + 1) >> 1;
              v12[21] = (v11[41] + v11[45] + 1) >> 1;
              v12[22] = (v11[42] + v11[46] + 1) >> 1;
              v12[23] = (v11[43] + v11[47] + 1) >> 1;
              if (v10 != 6)
              {
                v12[24] = (v11[48] + v11[52] + 1) >> 1;
                v12[25] = (v11[49] + v11[53] + 1) >> 1;
                v12[26] = (v11[50] + v11[54] + 1) >> 1;
                v12[27] = (v11[51] + v11[55] + 1) >> 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

const float *ScaleARGBRowDown2Box_Any_NEON(const float *result, uint64_t a2, int8x8_t *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFFFF8;
  if (v4 >= 1)
  {
    v5 = (result + a2);
    v6 = a4 & 0xFFFFFFF8;
    v7 = result;
    v8 = a3;
    do
    {
      v22 = vld2q_f32(v7);
      v7 += 8;
      v23 = vld2q_f32(v5);
      v5 += 8;
      v9 = __OFSUB__(v6, 4);
      v6 -= 4;
      *v8 = vrshrn_n_s16(vaddq_s16(vaddl_u8(*v22.val[0].f32, *v22.val[1].f32), vaddl_u8(*v23.val[0].f32, *v23.val[1].f32)), 2uLL);
      v8[1] = vrshrn_n_s16(vaddq_s16(vaddl_high_u8(v22.val[0], v22.val[1]), vaddl_high_u8(v23.val[0], v23.val[1])), 2uLL);
      v8 += 2;
    }

    while (!((v6 < 0) ^ v9 | (v6 == 0)));
  }

  v10 = a4 & 7;
  if ((a4 & 7) != 0)
  {
    v11 = a2 + 4;
    v12 = a2 + 1;
    v13 = a2 + 5;
    v14 = a2 + 2;
    v15 = a2 + 6;
    v16 = a2 + 3;
    v17 = a2 + 7;
    v18 = &result[2 * v4];
    v19 = a3 + 4 * v4;
    *v19 = (*v18 + v18[4] + v18[a2] + v18[a2 + 4] + 2) >> 2;
    v19[1] = (v18[1] + v18[5] + v18[a2 + 1] + v18[a2 + 5] + 2) >> 2;
    v19[2] = (v18[2] + v18[6] + v18[a2 + 2] + v18[a2 + 6] + 2) >> 2;
    result = ((v18[3] + v18[7] + v18[a2 + 3] + v18[a2 + 7] + 2) >> 2);
    v19[3] = result;
    if (v10 != 1)
    {
      v19[4] = (v18[8] + v18[12] + v18[a2 + 8] + v18[v11 + 8] + 2) >> 2;
      v19[5] = (v18[9] + v18[13] + v18[v12 + 8] + v18[v13 + 8] + 2) >> 2;
      v19[6] = (v18[10] + v18[14] + v18[v14 + 8] + v18[v15 + 8] + 2) >> 2;
      result = ((v18[11] + v18[15] + v18[v16 + 8] + v18[v17 + 8] + 2) >> 2);
      v19[7] = result;
      if (v10 != 2)
      {
        v19[8] = (v18[16] + v18[20] + v18[a2 + 16] + v18[v11 + 16] + 2) >> 2;
        v19[9] = (v18[17] + v18[21] + v18[v12 + 16] + v18[v13 + 16] + 2) >> 2;
        v19[10] = (v18[18] + v18[22] + v18[v14 + 16] + v18[v15 + 16] + 2) >> 2;
        result = ((v18[19] + v18[23] + v18[v16 + 16] + v18[v17 + 16] + 2) >> 2);
        v19[11] = result;
        if (v10 != 3)
        {
          v19[12] = (v18[24] + v18[28] + v18[a2 + 24] + v18[v11 + 24] + 2) >> 2;
          v19[13] = (v18[25] + v18[29] + v18[v12 + 24] + v18[v13 + 24] + 2) >> 2;
          v19[14] = (v18[26] + v18[30] + v18[v14 + 24] + v18[v15 + 24] + 2) >> 2;
          result = ((v18[27] + v18[31] + v18[v16 + 24] + v18[v17 + 24] + 2) >> 2);
          v19[15] = result;
          if (v10 != 4)
          {
            v19[16] = (v18[32] + v18[36] + v18[a2 + 32] + v18[v11 + 32] + 2) >> 2;
            v19[17] = (v18[33] + v18[37] + v18[v12 + 32] + v18[v13 + 32] + 2) >> 2;
            v19[18] = (v18[34] + v18[38] + v18[v14 + 32] + v18[v15 + 32] + 2) >> 2;
            result = ((v18[35] + v18[39] + v18[v16 + 32] + v18[v17 + 32] + 2) >> 2);
            v19[19] = result;
            if (v10 != 5)
            {
              v19[20] = (v18[40] + v18[44] + v18[a2 + 40] + v18[v11 + 40] + 2) >> 2;
              v19[21] = (v18[41] + v18[45] + v18[v12 + 40] + v18[v13 + 40] + 2) >> 2;
              v19[22] = (v18[42] + v18[46] + v18[v14 + 40] + v18[v15 + 40] + 2) >> 2;
              result = ((v18[43] + v18[47] + v18[v16 + 40] + v18[v17 + 40] + 2) >> 2);
              v19[23] = result;
              if (v10 != 6)
              {
                v21 = v18[48];
                v20 = v18 + 48;
                result = v20[4];
                v19[24] = (v21 + result + v20[a2] + v20[v11] + 2) >> 2;
                v19[25] = (v20[1] + v20[5] + v20[v12] + v20[v13] + 2) >> 2;
                v19[26] = (v20[2] + v20[6] + v20[v14] + v20[v15] + 2) >> 2;
                v19[27] = (v20[3] + v20[7] + v20[v16] + v20[v17] + 2) >> 2;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ScaleARGBRowDownEven_Any_NEON(uint64_t result, uint64_t a2, int a3, _DWORD *a4, int a5)
{
  v5 = a5 & 0xFFFFFFFC;
  v6 = 4 * a3;
  if ((a5 & 0xFFFFFFFC) >= 1)
  {
    v7 = 0;
    v8 = a4;
    v9 = a5 & 0xFFFFFFFC;
    _X7 = result;
    do
    {
      v11 = *(result + v7);
      v12 = *(result + v6 + v7);
      v13 = *(result + 8 * a3 + v7);
      v14 = *(result + 12 * a3 + v7);
      v7 += 16 * a3;
      v9 -= 4;
      __asm { PRFM            #0, [X7,#0x1C0] }

      *v8 = v11;
      v8[1] = v12;
      v20 = v8 + 2;
      *v20 = v13;
      v20[1] = v14;
      v8 = v20 + 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v21 = (result + (v6 * v5));
  v22 = (a4 + (4 * v5));
  if ((a5 & 2) == 0)
  {
    if ((a5 & 1) == 0)
    {
      return result;
    }

LABEL_9:
    *v22 = *v21;
    return result;
  }

  *v22 = *v21;
  v23 = v21[a3];
  v21 += 2 * a3;
  v22[1] = v23;
  v22 += 2;
  if (a5)
  {
    goto LABEL_9;
  }

  return result;
}

uint8x8_t *ScaleARGBRowDownEvenBox_Any_NEON(uint8x8_t *result, uint64_t a2, int a3, int8x8_t *a4, int a5)
{
  v5 = a5 & 0xFFFFFFFC;
  v6 = 4 * a3;
  if ((a5 & 0xFFFFFFFC) >= 1)
  {
    v7 = a5 & 0xFFFFFFFC;
    _X12 = result;
    v9 = a4;
    _X10 = (result + a2);
    do
    {
      v12 = *_X12;
      v11 = (_X12 + v6);
      v14 = *_X10;
      v13 = (_X10 + v6);
      v16 = *v11;
      v15 = (v11 + v6);
      v18 = *v13;
      v17 = (v13 + v6);
      v20 = *v15;
      v19 = (v15 + v6);
      v22 = *v17;
      v21 = (v17 + v6);
      v23 = *v19;
      _X12 = (v19 + v6);
      v24 = *v21;
      _X10 = (v21 + v6);
      v25 = vaddl_u8(v12, v14);
      v26 = vaddl_u8(v16, v18);
      v27 = vaddl_u8(v20, v22);
      v28 = vaddl_u8(v23, v24);
      __asm
      {
        PRFM            #0, [X12,#0x1C0]
        PRFM            #0, [X10,#0x1C0]
      }

      _VF = __OFSUB__(v7, 4);
      v7 -= 4;
      *v9 = vrshrn_n_s16(vaddq_s16(vzip1q_s64(v25, v26), vzip2q_s64(v25, v26)), 2uLL);
      v9[1] = vrshrn_n_s16(vaddq_s16(vzip1q_s64(v27, v28), vzip2q_s64(v27, v28)), 2uLL);
      v9 += 2;
    }

    while (!((v7 < 0) ^ _VF | (v7 == 0)));
  }

  v35 = a5 & 3;
  if ((a5 & 3) != 0)
  {
    v36 = a2 + 4;
    v37 = a2 + 1;
    v38 = a2 + 5;
    v39 = a2 + 2;
    v40 = a2 + 6;
    v41 = a2 + 3;
    v42 = a2 + 7;
    result = (result + v5 * v6);
    v43 = a4 + 4 * v5;
    *v43 = (result->u8[0] + result->u8[4] + result->u8[a2] + result->u8[a2 + 4] + 2) >> 2;
    v43[1] = (result->u8[1] + result->u8[5] + result->u8[a2 + 1] + result->u8[a2 + 5] + 2) >> 2;
    v43[2] = (result->u8[2] + result->u8[6] + result->u8[a2 + 2] + result->u8[a2 + 6] + 2) >> 2;
    v43[3] = (result->u8[3] + result->u8[7] + result->u8[a2 + 3] + result->u8[a2 + 7] + 2) >> 2;
    if (v35 != 1)
    {
      result = (result + v6);
      v43[4] = (result->u8[0] + result->u8[4] + result->u8[a2] + result->u8[v36] + 2) >> 2;
      v43[5] = (result->u8[1] + result->u8[5] + result->u8[v37] + result->u8[v38] + 2) >> 2;
      v43[6] = (result->u8[2] + result->u8[6] + result->u8[v39] + result->u8[v40] + 2) >> 2;
      v43[7] = (result->u8[3] + result->u8[7] + result->u8[v41] + result->u8[v42] + 2) >> 2;
      if (v35 != 2)
      {
        v44 = result + v6;
        result = v44[4];
        v43[8] = (*v44 + result + v44[a2] + v44[v36] + 2) >> 2;
        v43[9] = (v44[1] + v44[5] + v44[v37] + v44[v38] + 2) >> 2;
        v43[10] = (v44[2] + v44[6] + v44[v39] + v44[v40] + 2) >> 2;
        v43[11] = (v44[3] + v44[7] + v44[v41] + v44[v42] + 2) >> 2;
      }
    }
  }

  return result;
}

uint8x16_t *ScaleAddRow_Any_NEON(uint8x16_t *result, uint16x8_t *a2, int a3)
{
  v3 = a3 & 0xFFFFFFF0;
  if ((a3 & 0xFFFFFFF0) >= 1)
  {
    _X9 = result;
    v5 = a3 & 0xFFFFFFF0;
    v6 = a2;
    do
    {
      v7 = *_X9++;
      v8 = vaddw_high_u8(v6[1], v7);
      __asm { PRFM            #0, [X9,#0x1C0] }

      *v6 = vaddw_u8(*v6, *v7.i8);
      v6[1] = v8;
      v6 += 2;
      _VF = __OFSUB__(v5, 16);
      v5 -= 16;
    }

    while (!((v5 < 0) ^ _VF | (v5 == 0)));
  }

  v14 = &result->u8[v3];
  v15 = &a2->i16[v3];
  v16 = a3 & 0xF;
  if (v16 < 2)
  {
    if ((a3 & 1) == 0)
    {
      return result;
    }

LABEL_27:
    *v15 += *v14;
    return result;
  }

  *v15 += *v14;
  v15[1] += v14[1];
  if (v16 < 4)
  {
    v14 += 2;
    v15 += 2;
    if (a3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v15[2] += v14[2];
    v15[3] += v14[3];
    if (v16 < 6)
    {
      v14 += 4;
      v15 += 4;
      if (a3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15[4] += v14[4];
      v15[5] += v14[5];
      if (v16 < 8)
      {
        v14 += 6;
        v15 += 6;
        if (a3)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v15[6] += v14[6];
        v15[7] += v14[7];
        if (v16 < 0xA)
        {
          v14 += 8;
          v15 += 8;
          if (a3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15[8] += v14[8];
          v15[9] += v14[9];
          if (v16 < 0xC)
          {
            v14 += 10;
            v15 += 10;
            if (a3)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v15[10] += v14[10];
            v15[11] += v14[11];
            if (v16 < 0xE)
            {
              v14 += 12;
              v15 += 12;
              if (a3)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v15[12] += v14[12];
              v15[13] += v14[13];
              v14 += 14;
              v15 += 14;
              if (a3)
              {
                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *ScaleFilterCols_Any_NEON(void *result, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  v5 = a3 & 0xFFFFFFF8;
  if ((a3 & 0xFFFFFFF8) >= 1)
  {
    v6 = a3 & 0xFFFFFFF8;
    v7 = result;
    v8 = a4;
    v9 = vdupq_n_s32(a5);
    v10 = vshlq_n_s32(v9, 2uLL);
    v11 = vshlq_n_s32(v9, 3uLL);
    v12 = vaddq_s32(vmulq_s32(v9, __const_ScaleFilterCols_NEON_dx_offset), vdupq_n_s32(a4));
    v13 = vtrn1q_s16(v11, 0);
    v14 = vtrn1q_s16(v12, 0);
    v15 = vtrn1q_s16(vaddq_s32(v12, v10), 0);
    do
    {
      v16 = (a2 + (v8 >> 16));
      v17 = v8 + a5;
      v18.i16[0] = *v16;
      v19 = (a2 + (v17 >> 16));
      v20 = v17 + a5;
      v18.i16[1] = *v19;
      v21 = (a2 + (v20 >> 16));
      v22 = v20 + a5;
      v18.i16[2] = *v21;
      v23 = (a2 + (v22 >> 16));
      v24 = v22 + a5;
      v18.i16[3] = *v23;
      v25 = (a2 + (v24 >> 16));
      v26 = v24 + a5;
      v18.i16[4] = *v25;
      v27 = (a2 + (v26 >> 16));
      v28 = v26 + a5;
      v18.i16[5] = *v27;
      v29 = (a2 + (v28 >> 16));
      v30 = v28 + a5;
      v18.i16[6] = *v29;
      v31 = (a2 + (v30 >> 16));
      v8 = v30 + a5;
      v18.i16[7] = *v31;
      v32 = __OFSUB__(v6, 8);
      v6 -= 8;
      v33 = vtrn1q_s8(v18, 0);
      v34 = vtrn2q_s8(v18, 0);
      *v33.i8 = vmovn_s16(vaddq_s16(v33, vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vsubl_s16(*v34.i8, *v33.i8), v14), 0x10uLL), vmulq_s32(vsubl_high_s16(v34, v33), v15), 0x10uLL)));
      v14 = vaddq_s16(v14, v13);
      v15 = vaddq_s16(v15, v13);
      *v7++ = v33.i64[0];
    }

    while (!((v6 < 0) ^ v32 | (v6 == 0)));
  }

  v35 = a3 & 7;
  v36 = result + v5;
  v37 = a4 + v5 * a5;
  if (v35 < 2)
  {
    if ((a3 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    *v36 = *(a2 + (v37 >> 16)) + (((*(a2 + (v37 >> 16) + 1) - *(a2 + (v37 >> 16))) * v37 + 0x8000) >> 16);
    return result;
  }

  *v36 = *(a2 + ((a4 + v5 * a5) >> 16)) + (((*(a2 + ((a4 + v5 * a5) >> 16) + 1) - *(a2 + ((a4 + v5 * a5) >> 16))) * (a4 + v5 * a5) + 0x8000) >> 16);
  v38 = v37 + a5;
  v36[1] = *(a2 + (v38 >> 16)) + (((*(a2 + (v38 >> 16) + 1) - *(a2 + (v38 >> 16))) * v38 + 0x8000) >> 16);
  v37 = v38 + a5;
  if (v35 < 4)
  {
    v36 += 2;
    if (a3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v36[2] = *(a2 + (v37 >> 16)) + (((*(a2 + (v37 >> 16) + 1) - *(a2 + (v37 >> 16))) * v37 + 0x8000) >> 16);
    v39 = v37 + a5;
    v36[3] = *(a2 + (v39 >> 16)) + (((*(a2 + (v39 >> 16) + 1) - *(a2 + (v39 >> 16))) * v39 + 0x8000) >> 16);
    v37 = v39 + a5;
    if (v35 < 6)
    {
      v36 += 4;
      if (a3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v36[4] = *(a2 + (v37 >> 16)) + (((*(a2 + (v37 >> 16) + 1) - *(a2 + (v37 >> 16))) * v37 + 0x8000) >> 16);
      v40 = v37 + a5;
      v36[5] = *(a2 + (v40 >> 16)) + (((*(a2 + (v40 >> 16) + 1) - *(a2 + (v40 >> 16))) * v40 + 0x8000) >> 16);
      v37 = v40 + a5;
      v36 += 6;
      if (a3)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

_OWORD *ScaleARGBCols_Any_NEON(_OWORD *result, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a3 & 0xFFFFFFF8;
  if ((a3 & 0xFFFFFFF8) >= 1)
  {
    v6 = a4;
    v7 = result;
    v8 = a3 & 0xFFFFFFF8;
    _X13 = a2;
    do
    {
      v10 = (a2 + 4 * (v6 >> 16));
      v11 = v6 + a5;
      LODWORD(v12) = *v10;
      v13 = (a2 + 4 * (v11 >> 16));
      v14 = v11 + a5;
      DWORD1(v12) = *v13;
      v15 = (a2 + 4 * (v14 >> 16));
      v16 = v14 + a5;
      DWORD2(v12) = *v15;
      v17 = (a2 + 4 * (v16 >> 16));
      v18 = v16 + a5;
      HIDWORD(v12) = *v17;
      v19 = (a2 + 4 * (v18 >> 16));
      v20 = v18 + a5;
      LODWORD(v21) = *v19;
      v22 = (a2 + 4 * (v20 >> 16));
      v23 = v20 + a5;
      DWORD1(v21) = *v22;
      v24 = (a2 + 4 * (v23 >> 16));
      v25 = v23 + a5;
      DWORD2(v21) = *v24;
      v26 = (a2 + 4 * (v25 >> 16));
      v6 = v25 + a5;
      HIDWORD(v21) = *v26;
      __asm { PRFM            #0, [X13,#0x1C0] }

      *v7 = v12;
      v7[1] = v21;
      v7 += 2;
      _VF = __OFSUB__(v8, 8);
      v8 -= 8;
    }

    while (!((v8 < 0) ^ _VF | (v8 == 0)));
  }

  v32 = a3 & 7;
  v33 = (result + (4 * v5));
  v34 = a4 + v5 * a5;
  if (v32 < 2)
  {
    if ((a3 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    *v33 = *(a2 + 4 * (v34 >> 16));
    return result;
  }

  *v33 = *(a2 + 4 * (v34 >> 16));
  v35 = v34 + a5;
  v33[1] = *(a2 + 4 * (v35 >> 16));
  v34 = v35 + a5;
  if (v32 < 4)
  {
    v33 += 2;
    if (a3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v33[2] = *(a2 + 4 * (v34 >> 16));
    v36 = v34 + a5;
    v33[3] = *(a2 + 4 * (v36 >> 16));
    v34 = v36 + a5;
    if (v32 < 6)
    {
      v33 += 4;
      if (a3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v33[4] = *(a2 + 4 * (v34 >> 16));
      v37 = v34 + a5;
      v33[5] = *(a2 + 4 * (v37 >> 16));
      v34 = v37 + a5;
      v33 += 6;
      if (a3)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

unsigned int *ScaleARGBFilterCols_Any_NEON(int8x8_t *a1, uint64_t a2, int a3, signed int a4, signed int a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v10 = a3 & 0xFFFFFFFC;
  if ((a3 & 0xFFFFFFFC) >= 1)
  {
    v11 = a4;
    v12 = a1;
    v13 = a3 & 0xFFFFFFFC;
    _X15 = a2;
    v15 = vdupq_n_s32(a5);
    v16 = vshlq_n_s32(v15, 2uLL);
    v17.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v17.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v18 = vaddq_s32(vmulq_s32(v15, __const_ScaleARGBFilterCols_NEON_dx_offset), vdupq_n_s32(a4));
    do
    {
      v19 = (a2 + 4 * (v11 >> 16));
      v20 = v11 + a5;
      v21.i64[0] = *v19;
      v22 = (a2 + 4 * (v20 >> 16));
      v23 = v20 + a5;
      v24.i64[0] = *v22;
      v25 = (a2 + 4 * (v23 >> 16));
      v26 = v23 + a5;
      v21.i64[1] = *v25;
      v27 = (a2 + 4 * (v26 >> 16));
      v11 = v26 + a5;
      v24.i64[1] = *v27;
      v13 -= 4;
      *a10.i8 = vand_s8(vshrn_n_s32(v18, 9uLL), *v17.i8);
      v28 = vtrn1q_s32(v21, v24);
      a10 = vqtbl1q_s8(a10, libyuv::kScaleARGBFilterColsShuffleIndices);
      v29 = vtrn2q_s32(v21, v24);
      v30 = veorq_s8(a10, v17);
      __asm { PRFM            #0, [X15,#0x1C0] }

      v18 = vaddq_s32(v18, v16);
      *v12 = vshrn_n_s16(vmlal_u8(vmull_u8(*v29.i8, *a10.i8), *v28.i8, *v30.i8), 7uLL);
      v12[1] = vshrn_n_s16(vmlal_high_u8(vmull_high_u8(v29, a10), v28, v30), 7uLL);
      v12 += 2;
    }

    while (!(_NF ^ _VF | _ZF));
  }

  v36 = (a1 + (4 * v10));
  v37 = a4 + v10 * a5;
  v38 = a3 & 3;

  return ScaleARGBFilterCols_C(v36, a2, v38, v37, a5);
}

_BYTE *ScaleRowUp2_Linear_Any_C(_BYTE *result, _BYTE *a2, int a3)
{
  v3 = a3 - 1;
  *a2 = *result;
  if ((v3 & 0xFFFFFFFE) >= 1 && v3 >= 2)
  {
    v5 = v3 >> 1;
    if (v3 < 0x10 || (&result[v5] > a2 ? (v6 = &a2[2 * v5 + 1] > result) : (v6 = 0), v6))
    {
      v7 = 0;
      goto LABEL_18;
    }

    if (v3 >= 0x20)
    {
      v7 = v5 & 0x7FFFFFF0;
      v23 = (result + 1);
      v24.i64[0] = 0x303030303030303;
      v24.i64[1] = 0x303030303030303;
      v25 = v7;
      v26 = a2 + 1;
      do
      {
        v27 = *(v23 - 1);
        v28 = *v23++;
        v29.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmovl_u8(*v28.i8), *v27.i8, 0x303030303030303), 2uLL), vmlal_high_u8(vmovl_high_u8(v28), v27, v24), 2uLL);
        v29.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmovl_u8(*v27.i8), *v28.i8, 0x303030303030303), 2uLL), vmlal_high_u8(vmovl_high_u8(v27), v28, v24), 2uLL);
        vst2q_s8(v26, v29);
        v26 += 32;
        v25 -= 16;
      }

      while (v25);
      if (v7 == v5)
      {
        goto LABEL_20;
      }

      if ((v5 & 8) == 0)
      {
LABEL_18:
        v18 = &result[v7 + 1];
        v19 = &a2[2 * v7 + 2];
        v20 = v5 - v7;
        do
        {
          *(v19 - 1) = (*v18 + 3 * *(v18 - 1) + 2) >> 2;
          v21 = *(v18 - 1);
          v22 = *v18++;
          *v19 = (v21 + 3 * v22 + 2) >> 2;
          v19 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_20;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v7 = v5 & 0x7FFFFFF8;
    v9 = &result[v8 + 1];
    v10 = &a2[2 * v8 + 1];
    v11 = v8 - v7;
    v12.i64[0] = 0x2000200020002;
    v12.i64[1] = 0x2000200020002;
    do
    {
      v13 = *(v9 - 1);
      v14 = vmovl_u8(v13);
      v15 = *v9++;
      v16 = vshrq_n_u16(vaddq_s16(vmlal_u8(vmovl_u8(v15), v13, 0x303030303030303), v12), 2uLL);
      v17 = vshrq_n_u16(vaddq_s16(vmlal_u8(v14, v15, 0x303030303030303), v12), 2uLL);
      *v10++ = vuzp1q_s8(vzip1q_s16(v16, v17), vzip2q_s16(v16, v17));
      v11 += 8;
    }

    while (v11);
    if (v7 == v5)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_20:
  a2[v3] = result[v3 / 2];
  return result;
}

_BYTE *ScaleRowUp2_Linear_Any_NEON(_BYTE *result, _BYTE *a2, int a3)
{
  v3 = a3 - 1;
  *a2 = *result;
  if ((v3 & 0xFFFFFFFE) >= 1)
  {
    v4 = v3 & 0xFFFFFFE0;
    if ((v3 & 0xFFFFFFE0) != 0)
    {
      v5 = a2 + 1;
      v6 = (result + 1);
      v7 = v3 & 0xFFFFFFE0;
      _X13 = result;
      v9.i64[0] = 0x303030303030303;
      v9.i64[1] = 0x303030303030303;
      do
      {
        v10 = *_X13++;
        v11 = v10;
        v12 = *v6++;
        __asm { PRFM            #0, [X13,#0x1C0] }

        v24.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmovl_u8(*v11.i8), *v12.i8, *v9.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v11), v12, v9), 2uLL);
        v24.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmovl_u8(*v12.i8), *v11.i8, *v9.i8), 2uLL), vmlal_high_u8(vmovl_high_u8(v12), v11, v9), 2uLL);
        vst2q_s8(v5, v24);
        v5 += 32;
        _VF = __OFSUB__(v7, 32);
        v7 -= 32;
      }

      while (!((v7 < 0) ^ _VF | (v7 == 0)));
    }

    v18 = (v3 >> 1) & 0xF;
    if (v18)
    {
      v19 = v4;
      v20 = &result[(v4 >> 1) + 1];
      v21 = &a2[v19 + 2];
      do
      {
        *(v21 - 1) = (*v20 + 3 * *(v20 - 1) + 2) >> 2;
        v22 = *(v20 - 1);
        v23 = *v20++;
        *v21 = (v22 + 3 * v23 + 2) >> 2;
        v21 += 2;
        --v18;
      }

      while (v18);
    }
  }

  a2[v3] = result[v3 / 2];
  return result;
}

unsigned __int8 *ScaleRowUp2_Bilinear_Any_C(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  v5 = a5 - 1;
  v6 = &result[a2];
  *a3 = (result[a2] + 3 * *result + 2) >> 2;
  a3[a4] = (*result + 3 * result[a2] + 2) >> 2;
  if ((v5 & 0xFFFFFFFE) >= 1 && v5 >= 2)
  {
    v7 = v5 >> 1;
    if (v5 < 0x10)
    {
      v8 = 0;
      goto LABEL_5;
    }

    v8 = 0;
    v20 = a3 + 1;
    v21 = 2 * v7;
    v22 = 2 * v7 - 2;
    if (&a3[v22 + 1] < a3 + 1)
    {
      goto LABEL_5;
    }

    if (&a3[2 * v7] < a3 + 2)
    {
      goto LABEL_5;
    }

    v23 = &v20[a4];
    if (&v20[a4 + v22] < &v20[a4] || &a3[2 * v7 + a4] < &a3[a4 + 2])
    {
      goto LABEL_5;
    }

    v8 = 0;
    v24 = &result[v7];
    v25 = &a3[v21];
    v26 = a3 + 2;
    v27 = &a3[v21 + 1];
    v28 = &a3[a4 + v21];
    v29 = &a3[a4 + 2];
    v30 = (v28 + 1);
    v31 = result + 1;
    v32 = &result[v7 + 1];
    v33 = &result[v7 + a2];
    v34 = &result[a2 + 1];
    v35 = v33 + 1;
    v36 = v27 <= result || v26 >= v24;
    v37 = !v36;
    v116 = v37;
    v38 = v23 < v24 && v28 > result;
    v115 = v38;
    v39 = v30 <= result || v29 >= v24;
    v40 = !v39;
    v114 = v40;
    v41 = v31 < v25 && v24 > a3;
    v42 = v41;
    v113 = v42;
    v43 = v31 >= v27 || v26 >= v32;
    v44 = !v43;
    v45 = v31 >= v28 || v23 >= v32;
    v46 = !v45;
    v111 = v46;
    v112 = v44;
    v47 = v29 < v32 && v28 > result;
    v110 = v47;
    v48 = v6 >= v25 || v20 >= v33;
    v49 = !v48;
    v109 = v49;
    v50 = v6 >= v27 || v26 >= v33;
    v51 = !v50;
    v52 = v6 >= v28 || v23 >= v33;
    v53 = !v52;
    v54 = v6 >= v30 || v29 >= v33;
    v55 = !v54;
    v56 = v34 < v25 && v33 > a3;
    v57 = v56;
    v58 = v34 >= v27 || v26 >= v35;
    v59 = !v58;
    v60 = v34 >= v28 || v23 >= v35;
    v61 = !v60;
    v62 = &result[a2] >= v28 || v29 >= v35;
    v63 = !v62;
    v64 = v20 >= v27 || v26 >= v25;
    v65 = !v64;
    v66 = v20 >= v28 || v23 >= v25;
    v67 = !v66;
    v68 = v28 <= a3 || v29 >= v25;
    v69 = !v68;
    v70 = v26 >= v28 || v23 >= v27;
    v71 = !v70;
    v72 = v26 >= v30 || v29 >= v27;
    v73 = !v72;
    v74 = v23 >= v30 || v29 >= v28;
    v75 = !v74;
    v76 = v20 < v24 && v25 > result;
    if (v76 || v116 || v115 || v114 || v113 || v112 || v111 || v110 || v109 || v51 || v53 || v55 || v57 || v59 || v61 || v63 || v65 || v67 || v69 || v71 || v73 || v75)
    {
      goto LABEL_5;
    }

    if (v5 >= 0x20)
    {
      v8 = v7 & 0x7FFFFFF0;
      v94 = (result + 1);
      v95.i64[0] = 0x909090909090909;
      v95.i64[1] = 0x909090909090909;
      v96.i64[0] = 0x3000300030003;
      v96.i64[1] = 0x3000300030003;
      v97 = (a3 + 1);
      v98 = v8;
      v99 = (a3 + 1);
      do
      {
        v100 = *(&v94[-1].u32[1] + 3);
        v101 = (v94 + a2);
        v102 = *&v94->i8[a2 - 1];
        v103 = *&v94->i8[a2];
        v117.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vaddw_u8(vmull_u8(*v100.i8, 0x909090909090909), *v103.i8), vaddl_u8(*v102.i8, *v94), v96), 4uLL), vmlaq_s16(vmlal_high_u8(vmovl_high_u8(v103), v100, v95), vaddl_high_u8(v102, *v94->i8), v96), 4uLL);
        v117.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vaddw_u8(vmull_u8(*v94, 0x909090909090909), *v102.i8), vaddl_u8(*v103.i8, *v100.i8), v96), 4uLL), vmlaq_s16(vmlal_high_u8(vmovl_high_u8(v102), *v94->i8, v95), vaddl_high_u8(v103, v100), v96), 4uLL);
        vst2q_s8(v99, v117);
        v99 += 32;
        v104 = *(&v94[-1].u32[1] + 3);
        v105 = *v94->i8;
        v94 += 2;
        v106 = *(&v101[-1].u32[1] + 3);
        v117.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vmlal_u8(vmovl_u8(*v105.i8), *v106.i8, 0x909090909090909), vaddl_u8(*v101, *v104.i8), v96), 4uLL), vmlaq_s16(vmlal_high_u8(vmovl_high_u8(v105), v106, v95), vaddl_high_u8(*v101->i8, v104), v96), 4uLL);
        v107 = vrshrn_high_n_s16(vrshrn_n_s16(vmlaq_s16(vmlal_u8(vmovl_u8(*v104.i8), *v101, 0x909090909090909), vaddl_u8(*v106.i8, *v105.i8), v96), 4uLL), vmlaq_s16(vmlal_high_u8(vmovl_high_u8(v104), *v101->i8, v95), vaddl_high_u8(v106, v105), v96), 4uLL);
        v108 = &v97[a4];
        vst2q_s8(v108, *(&v117 + 16));
        v97 = v99;
        v98 -= 16;
      }

      while (v98);
      if (v8 == v7)
      {
        goto LABEL_7;
      }

      if ((v7 & 8) == 0)
      {
LABEL_5:
        v9 = &result[v8 + 1];
        v10 = &a3[2 * v8 + 2];
        v11 = &v10[a4];
        v12 = v7 - v8;
        v13 = &v9[a2];
        do
        {
          *(v10 - 1) = (9 * *(v9 - 1) + *v13 + 3 * (*(v13 - 1) + *v9) + 8) >> 4;
          *v10 = (9 * *v9 + *(v13 - 1) + 3 * (*v13 + *(v9 - 1)) + 8) >> 4;
          v10 += 2;
          *(v11 - 1) = (*v9 + 9 * *(v13 - 1) + 3 * (*v13 + *(v9 - 1)) + 8) >> 4;
          v14 = *(v9 - 1);
          v16 = *v9++;
          v15 = v16;
          v17 = *(v13 - 1);
          v18 = *v13++;
          *v11 = (v14 + 9 * v18 + 3 * (v17 + v15) + 8) >> 4;
          v11 += 2;
          --v12;
        }

        while (v12);
        goto LABEL_7;
      }
    }

    else
    {
      v8 = 0;
    }

    v77 = v8;
    v8 = v7 & 0x7FFFFFF8;
    v78 = v77 - v8;
    v79 = &v20[2 * v77];
    v80 = &result[v77 + 1];
    v81.i64[0] = 0x3000300030003;
    v81.i64[1] = 0x3000300030003;
    v82.i64[0] = 0x8000800080008;
    v82.i64[1] = 0x8000800080008;
    do
    {
      v83 = *(v80 - 1);
      v84 = (v80 + a2);
      v85 = *(v80 + a2 - 1);
      v86 = *(v80 + a2);
      v87 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vaddw_u8(vmull_u8(v83, 0x909090909090909), v86), vaddl_u8(v85, *v80), v81), v82), 4uLL);
      v88 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vaddw_u8(vmull_u8(*v80, 0x909090909090909), v85), vaddl_u8(v86, v83), v81), v82), 4uLL);
      *v79 = vuzp1q_s8(vzip1q_s16(v87, v88), vzip2q_s16(v87, v88));
      *v88.i8 = *(v80 - 1);
      v89 = vmovl_u8(*v88.i8);
      v90 = *v80++;
      v91 = *(v84 - 1);
      v92 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlal_u8(vmovl_u8(v90), v91, 0x909090909090909), vaddl_u8(*v84, *v88.i8), v81), v82), 4uLL);
      v93 = vshrq_n_u16(vaddq_s16(vmlaq_s16(vmlal_u8(v89, *v84, 0x909090909090909), vaddl_u8(v91, v90), v81), v82), 4uLL);
      *(v79++ + a4) = vuzp1q_s8(vzip1q_s16(v92, v93), vzip2q_s16(v92, v93));
      v78 += 8;
    }

    while (v78);
    if (v8 != v7)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  v19 = (v5 + (v5 >> 31)) >> 1;
  a3[v5] = (v6[v19] + 3 * result[v19] + 2) >> 2;
  a3[a4 + v5] = (result[v19] + 3 * v6[v19] + 2) >> 2;
  return result;
}

unsigned __int8 *ScaleRowUp2_Bilinear_Any_NEON(unsigned __int8 *result, uint64_t a2, _BYTE *a3, uint64_t a4, int a5)
{
  v5 = a5 - 1;
  v6 = &result[a2];
  *a3 = (result[a2] + 3 * *result + 2) >> 2;
  a3[a4] = (*result + 3 * result[a2] + 2) >> 2;
  if ((v5 & 0xFFFFFFFE) >= 1)
  {
    v7 = v5 & 0xFFFFFFF0;
    if ((v5 & 0xFFFFFFF0) != 0)
    {
      v8 = a3 + 1;
      v9 = &a3[a4 + 1];
      v10 = (result + 1);
      v11 = (v6 + 1);
      _X16 = result;
      v13 = v5 & 0xFFFFFFF0;
      _X4 = &result[a2];
      v15.i64[0] = 0x3000300030003;
      v15.i64[1] = 0x3000300030003;
      do
      {
        v16 = *_X16++;
        v17 = v16;
        v18 = *v10++;
        __asm { PRFM            #0, [X16,#0x1C0] }

        v24 = vmlal_u8(vmovl_u8(v17), v18, 0x303030303030303);
        v25 = vmlal_u8(vmovl_u8(v18), v17, 0x303030303030303);
        v26 = *_X4++;
        v27 = v26;
        v28 = *v11++;
        __asm { PRFM            #0, [X4,#0x1C0] }

        v30 = vmlal_u8(vmovl_u8(v28), v27, 0x303030303030303);
        v31 = vmlal_u8(vmovl_u8(v27), v28, 0x303030303030303);
        v32 = vmlaq_s16(v31, v24, v15);
        *v24.i8 = vrshrn_n_s16(vmlaq_s16(v24, v31, v15), 4uLL);
        v33 = vrshrn_n_s16(vmlaq_s16(v25, v30, v15), 4uLL);
        *v32.i8 = vrshrn_n_s16(v32, 4uLL);
        *v25.i8 = vrshrn_n_s16(vmlaq_s16(v30, v25, v15), 4uLL);
        vst2_s8(v9, *(&v24 - 8));
        v9 += 16;
        vst2_s8(v8, v25);
        v8 += 16;
        _VF = __OFSUB__(v13, 16);
        v13 -= 16;
      }

      while (!((v13 < 0) ^ _VF | (v13 == 0)));
    }

    v34 = (v5 >> 1) & 7;
    if (v34)
    {
      v35 = v7;
      v36 = &result[(v7 >> 1) + 1];
      v37 = &a3[v35 + 2];
      v38 = &v37[a4];
      v39 = &v36[a2];
      do
      {
        *(v37 - 1) = (9 * *(v36 - 1) + *v39 + 3 * (*(v39 - 1) + *v36) + 8) >> 4;
        *v37 = (9 * *v36 + *(v39 - 1) + 3 * (*v39 + *(v36 - 1)) + 8) >> 4;
        v37 += 2;
        *(v38 - 1) = (*v36 + 9 * *(v39 - 1) + 3 * (*v39 + *(v36 - 1)) + 8) >> 4;
        v40 = *(v36 - 1);
        v42 = *v36++;
        v41 = v42;
        v43 = *(v39 - 1);
        v44 = *v39++;
        *v38 = (v40 + 9 * v44 + 3 * (v43 + v41) + 8) >> 4;
        v38 += 2;
        --v34;
      }

      while (v34);
    }
  }

  v45 = (v5 + (v5 >> 31)) >> 1;
  a3[v5] = (v6[v45] + 3 * result[v45] + 2) >> 2;
  a3[a4 + v5] = (result[v45] + 3 * v6[v45] + 2) >> 2;
  return result;
}

uint64_t libyuv::ScaleARGB(uint64_t a1, int a2, uint64_t a3, int a4, int8x16_t *a5, int a6, int a7, int a8, int a9, int a10, unsigned int a11, int a12, int a13)
{
  v15 = a13;
  v167 = 0;
  v168[0] = 0;
  if (a3 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = -a3;
  }

  if (a4 >= 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = -a4;
  }

  if (a13 != 2)
  {
    if (a13 != 3)
    {
      goto LABEL_23;
    }

    if (v16 > 2 * a7 && 2 * a8 < v17)
    {
      v18 = 3;
      goto LABEL_35;
    }
  }

  if (3 * a8 == v17 || v17 == a8 || v17 == 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (v16 == 1)
  {
    v18 = 0;
    goto LABEL_35;
  }

LABEL_23:
  v23 = v16 != a7 && 3 * a7 != v16 && v16 != 1;
  if (v15 == 1)
  {
    v18 = v23;
  }

  else
  {
    v18 = v15;
  }

LABEL_35:
  if (a4 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = -a4;
  }

  if (a4 >= 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = -a2;
  }

  v156 = v25;
  if (a4 < 0)
  {
    v26 = a1 + ~a4 * a2;
  }

  else
  {
    v26 = a1;
  }

  ScaleSlope(a3, v24, a7, a8, v18, v168 + 1, v168, &v167 + 1, &v167);
  if (a9)
  {
    v27 = v167;
    v28 = SHIDWORD(v167) * a9;
    HIDWORD(v168[0]) += v28;
    v159 = v26 + 4 * (v28 >> 16);
    a5 = (a5 + 4 * a9);
    v30 = a11;
    v29 = a12;
    if (!a10)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v159 = v26;
  v30 = a11;
  v29 = a12;
  v27 = v167;
  if (a10)
  {
LABEL_46:
    v31 = v27 * a10;
    LODWORD(v168[0]) += v31;
    v159 += (v31 >> 16) * v156;
    a5 = (a5 + a10 * a6);
  }

LABEL_47:
  v32 = SHIDWORD(v167);
  v166 = v27;
  if (WORD2(v167) | v27)
  {
    v33 = v18;
    goto LABEL_49;
  }

  v33 = 0;
  if (!v27 || !HIDWORD(v167))
  {
    goto LABEL_49;
  }

  if (((HIDWORD(v167) | v27) & 0x10000) != 0)
  {
    v33 = v18;
    if ((v27 & HIDWORD(v167) & 0x10000) != 0)
    {
      v33 = 0;
      if (v27 == 0x10000 && HIDWORD(v167) == 0x10000)
      {
        result = 0;
        if (v29 && v30 >= 1 && a5 && v159)
        {
          v113 = v156;
          v114 = (v159 + SWORD1(v168[0]) * v156 + ((SHIDWORD(v168[0]) >> 14) & 0xFFFFFFFC));
          if (v29 < 0)
          {
            v115 = ~v29;
            v29 = -v29;
            v114 += v156 * v115;
            v113 = -v156;
          }

          CopyPlane(v114, v113, a5, a6, 4 * v30, v29);
          return 0;
        }

        return result;
      }
    }

LABEL_49:
    v34 = SHIDWORD(v168[0]);
    if (HIDWORD(v167) == 0x10000)
    {
      v35 = v168[0];
      v36 = v159;
      if (!WORD2(v168[0]))
      {
        ScalePlaneVertical(v24, v30, v29, v156, a6, v159, a5, SHIDWORD(v168[0]), v168[0], v27, 4, v33);
        return 0;
      }
    }

    else
    {
      v35 = v168[0];
      v36 = v159;
    }

    if (v27 < 0x10000 && v33)
    {
      v146 = v33;
      v151 = SHIDWORD(v167);
      v154 = SHIDWORD(v168[0]);
      v37 = cpu_info_;
      if (!cpu_info_)
      {
        v38 = AArch64CpuCaps();
        v37 = v38 | 3;
        cpu_info_ = v38 | 3;
      }

      v39 = InterpolateRow_Any_NEON;
      if ((v30 & 3) == 0)
      {
        v39 = InterpolateRow_NEON;
      }

      if ((v37 & 0x100) == 0)
      {
        v39 = InterpolateRow_C;
      }

      v163 = v39;
      if (v16 >> 15)
      {
        v40 = ScaleARGBFilterCols64_C;
      }

      else
      {
        v40 = ScaleARGBFilterCols_C;
      }

      v41 = cpu_info_;
      if (!cpu_info_)
      {
        v42 = AArch64CpuCaps();
        v41 = v42 | 3;
        cpu_info_ = v42 | 3;
      }

      v43 = ScaleARGBFilterCols_Any_NEON;
      if ((v30 & 3) == 0)
      {
        v43 = ScaleARGBFilterCols_NEON;
      }

      if ((v41 & 0x100) != 0)
      {
        v44 = v43;
      }

      else
      {
        v44 = v40;
      }

      v162 = 4 * v30;
      v45 = malloc_type_malloc(((2 * (v162 + 31)) | 0x3F), 0xF1AB9E83uLL);
      v141 = v45;
      v46 = (v45 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v46)
      {
        v143 = a6;
        v149 = v44;
        v47 = (v24 << 16) - 0x10000;
        v148 = (v162 + 31) & 0xFFFFFFFFFFFFFFE0;
        v48 = v36;
        if (v47 >= v35)
        {
          v49 = v35;
        }

        else
        {
          v49 = (v24 << 16) - 0x10000;
        }

        v50 = v30;
        v51 = v49 >> 16;
        v160 = v48;
        v52 = v48 + v156 * (v49 >> 16);
        v149(((v45 + 63) & 0xFFFFFFFFFFFFFFC0), v52, v50, v154, v151);
        if (v24 <= 1)
        {
          v53 = 0;
        }

        else
        {
          v53 = v156;
        }

        v54 = v52 + v53;
        v149((v46 + v148), v54, v50, v154, v151);
        if (v29 >= 1)
        {
          if (v24 <= 2)
          {
            v55 = 0;
          }

          else
          {
            v55 = v156;
          }

          v56 = v54 + v55;
          v161 = v160 + v156 * (v47 >> 16);
          if (v146 == 1)
          {
            do
            {
              if (v49 >> 16 == v51)
              {
                v60 = v166;
              }

              else
              {
                if (v49 <= v47)
                {
                  v61 = v49 >> 16;
                }

                else
                {
                  v61 = v47 >> 16;
                }

                if (v49 > v47)
                {
                  v56 = v161;
                }

                if (v49 >= v47)
                {
                  v49 = v47;
                }

                v60 = v166;
                if (v61 != v51)
                {
                  v149(v46, v56, v50, v154, v151);
                  v46 += v148;
                  LODWORD(v148) = -v148;
                  v62 = v156;
                  if (v49 + 0x10000 >= v47)
                  {
                    v62 = 0;
                  }

                  v56 += v62;
                  v51 = v61;
                }
              }

              v163(a5, v46, 0, v162, 0);
              a5 = (a5 + v143);
              v49 += v60;
              --v29;
            }

            while (v29);
          }

          else
          {
            v57 = (v162 + 31) & 0xFFFFFFE0;
            do
            {
              if (v49 >> 16 != v51)
              {
                if (v49 <= v47)
                {
                  v58 = v49 >> 16;
                }

                else
                {
                  v58 = v47 >> 16;
                }

                if (v49 > v47)
                {
                  v56 = v161;
                }

                if (v49 >= v47)
                {
                  v49 = v47;
                }

                if (v58 != v51)
                {
                  v149(v46, v56, v50, v154, v151);
                  v46 += v57;
                  v57 = -v57;
                  v59 = v156;
                  if (v49 + 0x10000 >= v47)
                  {
                    v59 = 0;
                  }

                  v56 += v59;
                  v51 = v58;
                }
              }

              v163(a5, v46, v57, v162, BYTE1(v49));
              a5 = (a5 + v143);
              v49 += v166;
              --v29;
            }

            while (v29);
          }
        }

        v101 = v141;
LABEL_234:
        free(v101);
        return 0;
      }
    }

    else
    {
      if (!v33)
      {
        v153 = SHIDWORD(v167);
        if (v16 >> 15)
        {
          v102 = ScaleARGBCols64_C;
        }

        else
        {
          v102 = ScaleARGBCols_C;
        }

        v103 = cpu_info_;
        if (!cpu_info_)
        {
          v104 = v30;
          v105 = SHIDWORD(v168[0]);
          v106 = v27;
          v107 = AArch64CpuCaps();
          v27 = v106;
          v103 = v107 | 3;
          v34 = v105;
          v30 = v104;
          cpu_info_ = v107 | 3;
        }

        v108 = ScaleARGBCols_Any_NEON;
        if ((v30 & 7) == 0)
        {
          v108 = ScaleARGBCols_NEON;
        }

        if ((v103 & 0x100) == 0)
        {
          v108 = v102;
        }

        if (v34 < 0x8000 && 2 * v16 == v30)
        {
          v110 = ScaleARGBColsUp2_C;
        }

        else
        {
          v110 = v108;
        }

        if (v29 >= 1)
        {
          v111 = v34;
          do
          {
            v112 = v27;
            (v110)(a5, v159 + v156 * (v35 >> 16), v30, v111, v153);
            v27 = v112;
            a5 = (a5 + a6);
            v35 += v112;
            --v29;
          }

          while (v29);
        }

        return 0;
      }

      v144 = a6;
      v147 = v33;
      v142 = v24;
      if (v16 >> 15)
      {
        v76 = ScaleARGBFilterCols64_C;
      }

      else
      {
        v76 = ScaleARGBFilterCols_C;
      }

      v77 = SHIDWORD(v168[0]) + SHIDWORD(v167) * (v30 - 1);
      if (v167 < 0)
      {
        v78 = SHIDWORD(v168[0]) + SHIDWORD(v167) * (v30 - 1);
      }

      else
      {
        v78 = SHIDWORD(v168[0]);
      }

      v155 = HIDWORD(v168[0]);
      if (v167 < 0)
      {
        v77 = SHIDWORD(v168[0]);
      }

      v79 = (v78 >> 16) & 0xFFFFFFFFFFFFFFFCLL;
      v80 = ((v77 >> 16) + 5) & 0xFFFFFFFFFFFFFFFCLL;
      if (v80 >= v16)
      {
        LODWORD(v80) = v16;
      }

      v81 = v80 - v79;
      v82 = cpu_info_;
      if (!cpu_info_)
      {
        v83 = v80 - v79;
        v84 = AArch64CpuCaps();
        v81 = v83;
        v82 = v84 | 3;
        cpu_info_ = v84 | 3;
      }

      v85 = InterpolateRow_Any_NEON;
      if ((v81 & 3) == 0)
      {
        v85 = InterpolateRow_NEON;
      }

      if ((v82 & 0x100) == 0)
      {
        v85 = InterpolateRow_C;
      }

      v150 = v85;
      v86 = cpu_info_;
      if (!cpu_info_)
      {
        v87 = v81;
        v88 = AArch64CpuCaps();
        v81 = v87;
        v86 = v88 | 3;
        cpu_info_ = v88 | 3;
      }

      v157 = v30;
      v89 = ScaleARGBFilterCols_Any_NEON;
      if ((v30 & 3) == 0)
      {
        v89 = ScaleARGBFilterCols_NEON;
      }

      if ((v86 & 0x100) != 0)
      {
        v76 = v89;
      }

      v90 = v81;
      v91 = malloc_type_malloc(16 * v81 + 63, 0xF9E0751uLL);
      v92 = (v91 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v92)
      {
        v152 = v91;
        if (v29 >= 1)
        {
          v93 = v76;
          v94 = v32;
          v95 = (v155 - (v79 << 16));
          v96 = v36 + 4 * v79;
          v97 = (v142 << 16) - 0x10000;
          if (v97 >= v35)
          {
            v98 = v35;
          }

          else
          {
            v98 = (v142 << 16) - 0x10000;
          }

          v164 = v36 + 4 * v79;
          if (v147 == 1)
          {
            v99 = v94;
            v100 = v95;
            do
            {
              v76(a5, v96 + v156 * (v98 >> 16), v157, v100, v99);
              v96 = v164;
              a5 = (a5 + v144);
              if (v98 + v166 >= v97)
              {
                v98 = (v142 << 16) - 0x10000;
              }

              else
              {
                v98 += v166;
              }

              --v29;
            }

            while (v29);
          }

          else
          {
            v130 = v94;
            v131 = v93;
            v132 = v95;
            do
            {
              v150(v92, v96 + v156 * (v98 >> 16), v156, (4 * v90), BYTE1(v98));
              v131(a5, v92, v157, v132, v130);
              v96 = v164;
              a5 = (a5 + v144);
              if (v98 + v166 >= v97)
              {
                v98 = (v142 << 16) - 0x10000;
              }

              else
              {
                v98 += v166;
              }

              --v29;
            }

            while (v29);
          }
        }

        v101 = v152;
        goto LABEL_234;
      }
    }

    return 1;
  }

  if (v27 != 0x20000 || HIDWORD(v167) != 0x20000)
  {
    v116 = v168[0];
    v117 = HIDWORD(v168[0]);
    if (v27 == 0x40000 && HIDWORD(v167) == 0x40000 && v18 == 3)
    {
      v118 = 8 * v30 + 31;
      v119 = malloc_type_malloc(((2 * v118) | 0x3F), 0xFBC5E689uLL);
      v120 = (v119 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v120)
      {
        v165 = v119;
        v121 = cpu_info_;
        if (!cpu_info_)
        {
          v122 = AArch64CpuCaps();
          v121 = v122 | 3;
          cpu_info_ = v122 | 3;
        }

        v123 = ScaleARGBRowDown2Box_Any_NEON;
        if ((v30 & 7) == 0)
        {
          v123 = ScaleARGBRowDown2Box_NEON;
        }

        if ((v121 & 0x100) != 0)
        {
          v124 = v123;
        }

        else
        {
          v124 = ScaleARGBRowDown2Box_C;
        }

        v158 = v30;
        if (v29 >= 1)
        {
          v125 = a6;
          v126 = (2 * v30);
          v127 = v118 & 0xFFFFFFFFFFFFFFE0;
          v128 = v159 + (v116 >> 16) * v156 + ((v117 >> 14) & 0xFFFFFFFC);
          v129 = v125;
          do
          {
            v124(v128, v156, v120, v126);
            v124(v128 + 2 * v156, v156, (v120 + v127), v126);
            v124(v120, v127, a5, v158);
            v128 += 4 * v156;
            a5 = (a5 + v129);
            --v29;
          }

          while (v29);
        }

        v101 = v165;
        goto LABEL_234;
      }

      return 1;
    }

    v145 = a6;
    if (v18)
    {
      v133 = ScaleARGBRowDownEvenBox_C;
    }

    else
    {
      v133 = ScaleARGBRowDownEven_C;
    }

    if (cpu_info_)
    {
      if ((cpu_info_ & 0x100) == 0)
      {
        goto LABEL_242;
      }
    }

    else
    {
      v134 = AArch64CpuCaps();
      cpu_info_ = v134 | 3;
      if ((v134 & 0x100) == 0)
      {
LABEL_242:
        if (v29 < 1)
        {
          return 0;
        }

        goto LABEL_254;
      }
    }

    if (v18)
    {
      v135 = ScaleARGBRowDownEvenBox_Any_NEON;
    }

    else
    {
      v135 = ScaleARGBRowDownEven_Any_NEON;
    }

    v136 = ScaleARGBRowDownEvenBox_NEON;
    if (!v18)
    {
      v136 = ScaleARGBRowDownEven_NEON;
    }

    if ((v30 & 3) != 0)
    {
      v133 = v135;
    }

    else
    {
      v133 = v136;
    }

    if (v29 < 1)
    {
      return 0;
    }

LABEL_254:
    v137 = (v32 >> 16);
    v138 = v159 + (v116 >> 16) * v156 + ((v117 >> 14) & 0xFFFFFFFC);
    if (v18 == 1)
    {
      v139 = 0;
    }

    else
    {
      v139 = v156;
    }

    v140 = v139;
    do
    {
      v133(v138, v140, v137, a5, v30);
      result = 0;
      v138 += (v166 >> 16) * v156;
      a5 = (a5 + v145);
      --v29;
    }

    while (v29);
    return result;
  }

  v63 = HIDWORD(v168[0]);
  v64 = SWORD1(v168[0]);
  v65 = ScaleARGBRowDown2Box_C;
  if (v18 == 1)
  {
    v65 = ScaleARGBRowDown2Linear_C;
  }

  if (v18)
  {
    v66 = v65;
  }

  else
  {
    v66 = ScaleARGBRowDown2_C;
  }

  if (v18 == 2)
  {
    v67 = 0;
  }

  else
  {
    v67 = -4;
  }

  v68 = cpu_info_;
  if (!cpu_info_)
  {
    v69 = AArch64CpuCaps();
    v68 = v69 | 3;
    cpu_info_ = v69 | 3;
  }

  if ((v68 & 0x100) != 0)
  {
    v70 = ScaleARGBRowDown2Box_Any_NEON;
    if (v18 == 1)
    {
      v70 = ScaleARGBRowDown2Linear_Any_NEON;
    }

    if (v18)
    {
      v66 = v70;
    }

    else
    {
      v66 = ScaleARGBRowDown2_Any_NEON;
    }

    if ((v30 & 7) == 0)
    {
      v71 = ScaleARGBRowDown2Box_NEON;
      if (v18 == 1)
      {
        v71 = ScaleARGBRowDown2Linear_NEON;
      }

      if (v18)
      {
        v66 = v71;
      }

      else
      {
        v66 = ScaleARGBRowDown2_NEON;
      }
    }
  }

  if (v29 < 1)
  {
    return 0;
  }

  v72 = v159 + v64 * v156 + ((v63 >> 14) & 0xFFFFFFFC) + v67;
  if (v18 == 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = v156;
  }

  v74 = v73;
  do
  {
    v66(v72, v74, a5, v30);
    result = 0;
    v72 += 2 * v156;
    a5 = (a5 + a6);
    --v29;
  }

  while (v29);
  return result;
}

uint64_t ScaleRowDown2_C(uint64_t result, uint64_t a2, _BYTE *a3, int a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    if (v4 >= 0x40 && ((v5 = v4 >> 1, result + 4 * v5 + 4 <= a3) || result + 1 >= &a3[2 * v5 + 2]))
    {
      v7 = v5 + 1;
      v8 = v7 & 0x1F;
      if ((v7 & 0x1F) == 0)
      {
        v8 = 32;
      }

      v9 = v7 - v8;
      v6 = 2 * v9;
      v10 = result + 4 * v9;
      v11 = &a3[2 * v9];
      v12 = (a3 + 32);
      v13 = (result + 65);
      do
      {
        v14 = v13 - 64;
        v15 = vld2q_s8(v14);
        v16 = v13 - 32;
        v17 = vld2q_s8(v16);
        v18 = v13 + 128;
        v20 = vld2q_s8(v13);
        v19 = v13 + 32;
        v21 = vld2q_s8(v19);
        *(v12 - 2) = v15;
        *(v12 - 1) = v17;
        *v12 = v20;
        v12[1] = v21;
        v12 += 4;
        v13 = v18;
        v9 -= 32;
      }

      while (v9);
      result = v10;
      a3 = v11;
    }

    else
    {
      v6 = 0;
    }

    do
    {
      *a3 = *(result + 1);
      a3[1] = *(result + 3);
      a3 += 2;
      result += 4;
      v6 += 2;
    }

    while (v6 < a4 - 1);
  }

  if (a4)
  {
    *a3 = *(result + 1);
  }

  return result;
}

unint64_t ScaleRowDown2_16To8_C(unint64_t result, uint64_t a2, char *a3, int a4, unsigned int a5)
{
  v5 = a4 - 2;
  if (a4 >= 2)
  {
    if (v5 >= 0x20 && ((v6 = v5 >> 1, result + 8 * v6 + 8 <= a3) || &a3[2 * v6] <= result))
    {
      v8 = v6 + 1;
      v9 = v8 & 0xF;
      if ((v8 & 0xF) == 0)
      {
        v9 = 16;
      }

      v10 = v8 - v9;
      v7 = 2 * v10;
      v11 = result + 8 * v10;
      v12 = &a3[2 * v10];
      v13 = vdupq_n_s32(a5);
      v14 = (result + 2);
      v15.i64[0] = 0xFF000000FFLL;
      v15.i64[1] = 0xFF000000FFLL;
      do
      {
        v16 = v14;
        v14 += 64;
        v22 = vld4q_s16(v16);
        v16 += 32;
        v23 = vld4q_s16(v16);
        v24.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v22.val[0])), 0x10uLL), v15);
        v24.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v23.val[0])), 0x10uLL), v15);
        v24.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v22.val[0].i8)), 0x10uLL), v15);
        v24.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v23.val[0].i8)), 0x10uLL), v15);
        v22.val[3] = vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v23.val[2].i8)), 0x10uLL);
        v23.val[0] = vqtbl4q_s8(v24, xmmword_273B8E8C0);
        v23.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v22.val[2])), 0x10uLL), v15);
        v17 = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v23.val[2])), 0x10uLL), v15);
        v23.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v22.val[2].i8)), 0x10uLL), v15);
        v18 = vminq_s32(v22.val[3], v15);
        v23.val[1] = vqtbl4q_s8(*(&v23 + 32), xmmword_273B8E8C0);
        vst2q_s8(a3, *v23.val[0].i8);
        a3 += 32;
        v10 -= 16;
      }

      while (v10);
      result = v11;
      a3 = v12;
    }

    else
    {
      v7 = 0;
    }

    do
    {
      v19 = (*(result + 2) * a5) >> 16;
      if (v19 >= 255)
      {
        LOBYTE(v19) = -1;
      }

      *a3 = v19;
      v20 = (*(result + 6) * a5) >> 16;
      if (v20 >= 255)
      {
        LOBYTE(v20) = -1;
      }

      a3[1] = v20;
      a3 += 2;
      result += 8;
      v7 += 2;
    }

    while (v7 < a4 - 1);
  }

  if (a4)
  {
    v21 = (*(result + 2) * a5) >> 16;
    if (v21 >= 255)
    {
      LOBYTE(v21) = -1;
    }

    *a3 = v21;
  }

  return result;
}

char *ScaleRowDown2_16To8_Odd_C(char *result, uint64_t a2, char *a3, int a4, unsigned int a5)
{
  v5 = a4 - 3;
  if (a4 >= 3)
  {
    if (v5 >= 0x20 && ((v6 = v5 >> 1, &result[8 * v6 + 8] <= a3) || &a3[2 * v6] <= result))
    {
      v8 = v6 + 1;
      v9 = v8 & 0xF;
      if ((v8 & 0xF) == 0)
      {
        v9 = 16;
      }

      v10 = v8 - v9;
      v7 = 2 * v10;
      v11 = &result[8 * v10];
      v12 = &a3[2 * v10];
      v13 = vdupq_n_s32(a5);
      v14 = (result + 2);
      v15.i64[0] = 0xFF000000FFLL;
      v15.i64[1] = 0xFF000000FFLL;
      do
      {
        v16 = v14;
        v14 += 64;
        v23 = vld4q_s16(v16);
        v16 += 32;
        v24 = vld4q_s16(v16);
        v25.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v23.val[0])), 0x10uLL), v15);
        v25.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v24.val[0])), 0x10uLL), v15);
        v25.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v23.val[0].i8)), 0x10uLL), v15);
        v25.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v24.val[0].i8)), 0x10uLL), v15);
        v23.val[3] = vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v24.val[2].i8)), 0x10uLL);
        v24.val[0] = vqtbl4q_s8(v25, xmmword_273B8E8C0);
        v24.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v23.val[2])), 0x10uLL), v15);
        v17 = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_high_u16(v24.val[2])), 0x10uLL), v15);
        v24.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(v13, vmovl_u16(*v23.val[2].i8)), 0x10uLL), v15);
        v18 = vminq_s32(v23.val[3], v15);
        v24.val[1] = vqtbl4q_s8(*(&v24 + 32), xmmword_273B8E8C0);
        vst2q_s8(a3, *v24.val[0].i8);
        a3 += 32;
        v10 -= 16;
      }

      while (v10);
      result = v11;
      a3 = v12;
    }

    else
    {
      v7 = 0;
    }

    do
    {
      v19 = (*(result + 1) * a5) >> 16;
      if (v19 >= 255)
      {
        LOBYTE(v19) = -1;
      }

      *a3 = v19;
      v20 = (*(result + 3) * a5) >> 16;
      if (v20 >= 255)
      {
        LOBYTE(v20) = -1;
      }

      a3[1] = v20;
      a3 += 2;
      result += 8;
      v7 += 2;
    }

    while (v7 < a4 - 2);
  }

  if ((a4 & 1) == 0)
  {
    v21 = (*(result + 1) * a5) >> 16;
    if (v21 >= 255)
    {
      LOBYTE(v21) = -1;
    }

    *a3++ = v21;
    result += 4;
  }

  v22 = (*result * a5) >> 16;
  if (v22 >= 255)
  {
    LOBYTE(v22) = -1;
  }

  *a3 = v22;
  return result;
}

const char *ScaleRowDown2Linear_C(const char *result, uint64_t a2, char *a3, int a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    v8 = a3;
    v7 = result;
  }

  else
  {
    if (v4 >= 0x1E && ((v5 = v4 >> 1, &result[4 * v5 + 4] <= a3) || &a3[2 * v5 + 2] <= result))
    {
      v9 = v5 + 1;
      v6 = 2 * (v9 & 0xFFFFFFF0);
      v7 = &result[4 * (v9 & 0xFFFFFFF0)];
      v8 = &a3[2 * (v9 & 0xFFFFFFF0)];
      v10 = v9 & 0xFFFFFFF0;
      do
      {
        v12 = vld4q_s8(result);
        result += 64;
        v11.val[0] = vrhaddq_u8(v12.val[0], v12.val[1]);
        v11.val[1] = vrhaddq_u8(v12.val[2], v12.val[3]);
        vst2q_s8(a3, v11);
        a3 += 32;
        v10 -= 16;
      }

      while (v10);
      if ((v9 & 0xFFFFFFF0) == v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
      v7 = result;
      v8 = a3;
    }

    do
    {
      *v8 = (*v7 + v7[1] + 1) >> 1;
      v8[1] = (v7[2] + v7[3] + 1) >> 1;
      v8 += 2;
      v7 += 4;
      v6 += 2;
    }

    while (v6 < a4 - 1);
  }

LABEL_9:
  if (a4)
  {
    *v8 = (*v7 + v7[1] + 1) >> 1;
  }

  return result;
}

unint64_t ScaleRowDown2Linear_16To8_C(unint64_t result, uint64_t a2, char *a3, int a4, unsigned int a5)
{
  v5 = a4 - 2;
  if (a4 < 2)
  {
    v9 = a3;
    v8 = result;
    goto LABEL_13;
  }

  if (v5 >= 0x1E && ((v6 = v5 >> 1, result + 8 * v6 + 8 <= a3) || &a3[2 * v6 + 2] <= result))
  {
    v13 = v6 + 1;
    v7 = 2 * (v13 & 0xFFFFFFF0);
    v8 = (result + 8 * (v13 & 0xFFFFFFF0));
    v9 = &a3[2 * (v13 & 0xFFFFFFF0)];
    v14 = vdupq_n_s32(a5);
    v15.i64[0] = 0xFF000000FFLL;
    v15.i64[1] = 0xFF000000FFLL;
    v16 = v13 & 0xFFFFFFF0;
    do
    {
      v17 = result;
      result += 128;
      v24 = vld4q_s16(v17);
      v17 += 32;
      v18 = vrhaddq_u16(v24.val[0], v24.val[1]);
      v19 = vmovl_u16(*v18.i8);
      v25 = vld4q_s16(v17);
      v20 = vrhaddq_u16(v25.val[0], v25.val[1]);
      v26.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v18), v14), 0x10uLL), v15);
      v26.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v20), v14), 0x10uLL), v15);
      v21 = vrhaddq_u16(v25.val[2], v25.val[3]);
      v24.val[0] = vrhaddq_u16(v24.val[2], v24.val[3]);
      v26.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(v19, v14), 0x10uLL), v15);
      v26.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v20.i8), v14), 0x10uLL), v15);
      v22 = vqtbl4q_s8(v26, xmmword_273B8E8C0);
      v25.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v24.val[0]), v14), 0x10uLL), v15);
      v23 = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v21), v14), 0x10uLL), v15);
      v25.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v24.val[0].i8), v14), 0x10uLL), v15);
      v25.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v21.i8), v14), 0x10uLL), v15);
      v25.val[0] = vqtbl4q_s8(*(&v25 + 16), xmmword_273B8E8C0);
      vst2q_s8(a3, *v25.val[0].i8);
      a3 += 32;
      v16 -= 16;
    }

    while (v16);
    if ((v13 & 0xFFFFFFF0) == v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a3;
  }

  do
  {
    v10 = (((*v8 + v8[1] + 1) >> 1) * a5) >> 16;
    if (v10 >= 255)
    {
      LOBYTE(v10) = -1;
    }

    *v9 = v10;
    v11 = (((v8[2] + v8[3] + 1) >> 1) * a5) >> 16;
    if (v11 >= 255)
    {
      LOBYTE(v11) = -1;
    }

    v9[1] = v11;
    v9 += 2;
    v8 += 4;
    v7 += 2;
  }

  while (v7 < a4 - 1);
LABEL_13:
  if (a4)
  {
    v12 = (((*v8 + v8[1] + 1) >> 1) * a5) >> 16;
    if (v12 >= 255)
    {
      LOBYTE(v12) = -1;
    }

    *v9 = v12;
  }

  return result;
}

unint64_t ScaleRowDown2Linear_16To8_Odd_C(unint64_t result, uint64_t a2, char *a3, int a4, unsigned int a5)
{
  v5 = a4 - 3;
  if (a4 < 3)
  {
    v9 = a3;
    v8 = result;
    goto LABEL_13;
  }

  if (v5 >= 0x1E && ((v6 = v5 >> 1, result + 8 * v6 + 8 <= a3) || &a3[2 * v6 + 2] <= result))
  {
    v14 = v6 + 1;
    v7 = 2 * (v14 & 0xFFFFFFF0);
    v8 = (result + 8 * (v14 & 0xFFFFFFF0));
    v9 = &a3[2 * (v14 & 0xFFFFFFF0)];
    v15 = vdupq_n_s32(a5);
    v16.i64[0] = 0xFF000000FFLL;
    v16.i64[1] = 0xFF000000FFLL;
    v17 = v14 & 0xFFFFFFF0;
    do
    {
      v18 = result;
      result += 128;
      v25 = vld4q_s16(v18);
      v18 += 32;
      v19 = vrhaddq_u16(v25.val[0], v25.val[1]);
      v20 = vmovl_u16(*v19.i8);
      v26 = vld4q_s16(v18);
      v21 = vrhaddq_u16(v26.val[0], v26.val[1]);
      v27.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v19), v15), 0x10uLL), v16);
      v27.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v21), v15), 0x10uLL), v16);
      v22 = vrhaddq_u16(v26.val[2], v26.val[3]);
      v25.val[0] = vrhaddq_u16(v25.val[2], v25.val[3]);
      v27.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(v20, v15), 0x10uLL), v16);
      v27.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v21.i8), v15), 0x10uLL), v16);
      v23 = vqtbl4q_s8(v27, xmmword_273B8E8C0);
      v26.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v25.val[0]), v15), 0x10uLL), v16);
      v24 = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_high_u16(v22), v15), 0x10uLL), v16);
      v26.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v25.val[0].i8), v15), 0x10uLL), v16);
      v26.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vmovl_u16(*v22.i8), v15), 0x10uLL), v16);
      v26.val[0] = vqtbl4q_s8(*(&v26 + 16), xmmword_273B8E8C0);
      vst2q_s8(a3, *v26.val[0].i8);
      a3 += 32;
      v17 -= 16;
    }

    while (v17);
    if ((v14 & 0xFFFFFFF0) == v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v8 = result;
    v9 = a3;
  }

  do
  {
    v10 = (((*v8 + v8[1] + 1) >> 1) * a5) >> 16;
    if (v10 >= 255)
    {
      LOBYTE(v10) = -1;
    }

    *v9 = v10;
    v11 = (((v8[2] + v8[3] + 1) >> 1) * a5) >> 16;
    if (v11 >= 255)
    {
      LOBYTE(v11) = -1;
    }

    v9[1] = v11;
    v9 += 2;
    v8 += 4;
    v7 += 2;
  }

  while (v7 < a4 - 2);
LABEL_13:
  if ((a4 & 1) == 0)
  {
    v12 = (((*v8 + v8[1] + 1) >> 1) * a5) >> 16;
    if (v12 >= 255)
    {
      LOBYTE(v12) = -1;
    }

    *v9++ = v12;
    v8 += 2;
  }

  v13 = (*v8 * a5) >> 16;
  if (v13 >= 255)
  {
    LOBYTE(v13) = -1;
  }

  *v9 = v13;
  return result;
}

const char *ScaleRowDown2Box_C(const char *result, uint64_t a2, char *a3, int a4)
{
  v4 = &result[a2];
  v5 = a4 - 2;
  if (a4 >= 2)
  {
    if (v5 >= 0x1E)
    {
      v6 = 0;
      v9 = v5 >> 1;
      v10 = &a3[2 * v9 + 2];
      v11 = &result[4 * v9 + 4];
      v12 = v11 + a2;
      v14 = v11 > a3 && v10 > result;
      v15 = v4 < v10 && v12 > a3;
      if (!v15 && !v14)
      {
        v16 = v9 + 1;
        v6 = 2 * (v16 & 0xFFFFFFF0);
        v17 = 4 * (v16 & 0xFFFFFFF0);
        v4 += v17;
        v7 = &result[v17];
        v8 = &a3[2 * (v16 & 0xFFFFFFF0)];
        v18 = v16 & 0xFFFFFFF0;
        do
        {
          v19 = &result[a2];
          v21 = vld4q_s8(result);
          result += 64;
          v22 = vld4q_s8(v19);
          v20.val[0] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddl_u8(*v21.val[0].i8, *v21.val[1].i8), *v22.val[0].i8), *v22.val[1].i8), 2uLL), vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v21.val[0], v21.val[1]), v22.val[0]), v22.val[1]), 2uLL);
          v20.val[1] = vrshrn_high_n_s16(vrshrn_n_s16(vaddw_u8(vaddw_u8(vaddl_u8(*v21.val[2].i8, *v21.val[3].i8), *v22.val[2].i8), *v22.val[3].i8), 2uLL), vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v21.val[2], v21.val[3]), v22.val[2]), v22.val[3]), 2uLL);
          vst2q_s8(a3, v20);
          a3 += 32;
          v18 -= 16;
        }

        while (v18);
        if ((v16 & 0xFFFFFFF0) == v16)
        {
          goto LABEL_8;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = result;
    v8 = a3;
    do
    {
LABEL_5:
      *v8 = (*v7 + v7[1] + *v4 + v4[1] + 2) >> 2;
      v8[1] = (v7[2] + v7[3] + v4[2] + v4[3] + 2) >> 2;
      v8 += 2;
      v7 += 4;
      v4 += 4;
      v6 += 2;
    }

    while (v6 < a4 - 1);
    goto LABEL_8;
  }

  v8 = a3;
  v7 = result;
LABEL_8:
  if (a4)
  {
    *v8 = (*v7 + v7[1] + *v4 + v4[1] + 2) >> 2;
  }

  return result;
}

unsigned __int16 *ScaleRowDown2Box_16To8_C(unsigned __int16 *result, uint64_t a2, char *a3, int a4, unsigned int a5)
{
  v5 = &result[a2];
  v6 = a4 - 2;
  if (a4 < 2)
  {
    v9 = a3;
    v8 = result;
    goto LABEL_12;
  }

  if (v6 >= 0x1E)
  {
    v7 = 0;
    v13 = v6 >> 1;
    v14 = &a3[2 * v13 + 2];
    v15 = &result[4 * v13 + 4];
    v16 = v15 + 2 * a2;
    v18 = v15 > a3 && v14 > result;
    v19 = v5 < v14 && v16 > a3;
    if (!v19 && !v18)
    {
      v20 = v13 + 1;
      v7 = 2 * (v20 & 0xFFFFFFF0);
      v21 = 4 * (v20 & 0xFFFFFFF0);
      v5 = (v5 + v21 * 2);
      v8 = &result[v21];
      v9 = &a3[2 * (v20 & 0xFFFFFFF0)];
      v22 = vdupq_n_s32(a5);
      v23.i64[0] = 0x200000002;
      v23.i64[1] = 0x200000002;
      v24.i64[0] = 0xFF000000FFLL;
      v24.i64[1] = 0xFF000000FFLL;
      v25 = v20 & 0xFFFFFFF0;
      do
      {
        v26 = result;
        v29 = vld4q_s16(v26);
        v26 += 32;
        v32 = vld4q_s16(v26);
        v27 = &result[a2];
        v31 = vld4q_s16(v27);
        v27 += 32;
        v33 = vld4q_s16(v27);
        v28 = vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v29.val[0].i8, *v29.val[1].i8), *v31.val[0].i8), *v31.val[1].i8), v23), 2uLL), v22), 0x10uLL);
        v30.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v29.val[0], v29.val[1]), v31.val[0]), v31.val[1]), v23), 2uLL), v22), 0x10uLL), v24);
        v29.val[0] = vaddw_high_u16(vaddl_high_u16(v29.val[2], v29.val[3]), v31.val[2]);
        v29.val[2] = vaddw_u16(vaddl_u16(*v29.val[2].i8, *v29.val[3].i8), *v31.val[2].i8);
        v30.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v32.val[0], v32.val[1]), v33.val[0]), v33.val[1]), v23), 2uLL), v22), 0x10uLL), v24);
        v30.val[0] = vminq_s32(v28, v24);
        v30.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v32.val[0].i8, *v32.val[1].i8), *v33.val[0].i8), *v33.val[1].i8), v23), 2uLL), v22), 0x10uLL), v24);
        v31.val[2] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(v29.val[0], v31.val[3]), v23), 2uLL), v22), 0x10uLL), v24);
        v32.val[0] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_high_u16(vaddw_high_u16(vaddl_high_u16(v32.val[2], v32.val[3]), v33.val[2]), v33.val[3]), v23), 2uLL), v22), 0x10uLL), v24);
        v31.val[1] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(v29.val[2], *v31.val[3].i8), v23), 2uLL), v22), 0x10uLL), v24);
        v31.val[3] = vminq_s32(vshrq_n_s32(vmulq_s32(vshrq_n_u32(vaddq_s32(vaddw_u16(vaddw_u16(vaddl_u16(*v32.val[2].i8, *v32.val[3].i8), *v33.val[2].i8), *v33.val[3].i8), v23), 2uLL), v22), 0x10uLL), v24);
        v29.val[0] = vqtbl4q_s8(v30, xmmword_273B8E8C0);
        v29.val[1] = vqtbl4q_s8(v32, xmmword_273B8E8C0);
        vst2q_s8(a3, *v29.val[0].i8);
        a3 += 32;
        result += 64;
        v25 -= 16;
      }

      while (v25);
      if ((v20 & 0xFFFFFFF0) == v20)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = result;
  v9 = a3;
  do
  {
LABEL_5:
    v10 = (((*v8 + v8[1] + *v5 + v5[1] + 2) >> 2) * a5) >> 16;
    if (v10 >= 255)
    {
      LOBYTE(v10) = -1;
    }

    *v9 = v10;
    v11 = (((v8[2] + v8[3] + v5[2] + v5[3] + 2) >> 2) * a5) >> 16;
    if (v11 >= 255)
    {
      LOBYTE(v11) = -1;
    }

    v9[1] = v11;
    v9 += 2;
    v8 += 4;
    v5 += 4;
    v7 += 2;
  }

  while (v7 < a4 - 1);
LABEL_12:
  if (a4)
  {
    v12 = (((*v8 + v8[1] + *v5 + v5[1] + 2) >> 2) * a5) >> 16;
    if (v12 >= 255)
    {
      LOBYTE(v12) = -1;
    }

    *v9 = v12;
  }

  return result;
}