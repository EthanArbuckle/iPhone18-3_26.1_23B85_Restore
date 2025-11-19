int16x4_t *hg_span_write_1s(int16x4_t *result, int a2, const float *a3)
{
  if (a2 >= 1)
  {
    if (a2 >= 5)
    {
      v3 = a2 & 3;
      if (!v3)
      {
        v3 = 4;
      }

      v4 = a2 - v3;
      a2 = v3;
      v5 = &a3[4 * v4];
      v6 = (result + 2 * v4);
      __asm { FMOV            V1.4S, #1.0 }

      v12 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v13 = vld4q_f32(a3);
        a3 += 16;
        v14 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v13, 0), _Q1), v12);
        *result++ = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v14.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v14, v14, 8uLL))))));
        v4 -= 4;
      }

      while (v4);
      a3 = v5;
      result = v6;
    }

    v15 = a2 + 1;
    do
    {
      v16 = *a3;
      a3 += 4;
      result->i16[0] = rintf(fminf(fmaxf(v16, 0.0), 1.0) * 65535.0);
      result = (result + 2);
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

_WORD *hg_span_write_1h(_WORD *result, int a2, _DWORD *a3)
{
  if (a2 >= 1)
  {
    v3 = a2 + 1;
    while (1)
    {
      v4 = HIWORD(*a3) & 0x8000;
      v5 = (*a3 >> 23);
      v6 = *a3 & 0x7FFFFF;
      v7 = v5 - 112;
      if (v5 <= 0x70)
      {
        if (v5 >= 0x66)
        {
          v4 |= (((2 * ((v6 | 0x800000) >> (113 - v5))) & 0x2000) + ((v6 | 0x800000) >> (113 - v5))) >> 13;
        }

        else
        {
          LOWORD(v4) = 0;
        }

        goto LABEL_4;
      }

      if (v5 != 255)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_20;
      }

      v4 |= (v6 < 0x2000) | (v6 >> 13) | 0x7C00;
LABEL_4:
      *result++ = v4;
      a3 += 4;
      if (--v3 <= 1)
      {
        return result;
      }
    }

    v8 = v6 + 0x2000;
    v9 = v5 - 111;
    if (v6 >= 0x7FE000)
    {
      v8 = 0;
    }

    else
    {
      v9 = v7;
    }

    if ((*a3 & 0x1000) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if ((*a3 & 0x1000) != 0)
    {
      v6 = v8;
    }

    if (v10 < 0x1F)
    {
      v4 |= (v10 << 10) | (v6 >> 13);
      goto LABEL_4;
    }

LABEL_20:
    LOWORD(v4) = v4 | 0x7C00;
    goto LABEL_4;
  }

  return result;
}

_DWORD *hg_span_write_1f(_DWORD *result, int a2, _DWORD *a3)
{
  v3 = a2 - 1;
  if (a2 >= 1)
  {
    if (a2 >= 0x11 && (&a3[4 * v3 + 1] <= result || &result[v3 + 1] <= a3))
    {
      v4 = a2 & 7;
      if (!v4)
      {
        v4 = 8;
      }

      v5 = a2 - v4;
      v6 = &a3[4 * v5];
      v7 = &result[v5];
      a2 -= v5;
      v8 = (result + 4);
      v9 = (a3 + 16);
      do
      {
        v10 = v9 - 16;
        v11 = vld4q_f32(v10);
        v12 = vld4q_f32(v9);
        *(v8 - 1) = v11;
        *v8 = v12;
        v8 += 2;
        v9 += 32;
        v5 -= 8;
      }

      while (v5);
      a3 = v6;
      result = v7;
    }

    v13 = a2 + 1;
    do
    {
      v14 = *a3;
      a3 += 4;
      *result++ = v14;
      --v13;
    }

    while (v13 > 1);
  }

  return result;
}

char *hg_span_write_2b(char *result, unsigned int a2, float *a3)
{
  v3 = a2 - 1;
  if (a2 >= 1)
  {
    if (a2 >= 9 && (&a3[4 * v3 + 2] <= result || &result[2 * v3 + 2] <= a3))
    {
      v4 = a2;
      __asm { FMOV            V0.4S, #1.0 }

      if (a2 < 0x11)
      {
        v10 = 0;
LABEL_13:
        if ((a2 & 7) != 0)
        {
          v23 = a2 & 7;
        }

        else
        {
          v23 = 8;
        }

        a2 = v23;
        v24 = &result[2 * (v4 - v23)];
        v25 = &a3[4 * (v4 - v23)];
        v26 = &a3[4 * v10];
        v27 = v23 + v10 - v4;
        v28 = vdupq_n_s32(0x437F0000u);
        v29 = &result[2 * v10];
        do
        {
          v30 = v26;
          v26 += 32;
          v37 = vld4q_f32(v30);
          v30 += 16;
          v31 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v37.val[0], 0), _Q0), v28);
          v40 = vld4q_f32(v30);
          v32 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v40.val[0], 0), _Q0), v28);
          v42.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8)));
          v42.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8)));
          v37.val[0] = vminnmq_f32(vmaxnmq_f32(v37.val[1], 0), _Q0);
          v42.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))));
          v37.val[1] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v40.val[1], 0), _Q0), v28);
          v37.val[0] = vmulq_f32(v37.val[0], v28);
          v40.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.val[0].f32)));
          v40.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.val[1].f32)));
          v42.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))));
          v40.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37.val[0], v37.val[0], 8uLL))));
          v37.val[0] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37.val[1], v37.val[1], 8uLL)));
          v37.val[1].i64[0] = vqtbl4q_s8(v42, xmmword_260812FB0).u64[0];
          v40.val[3] = vcvtq_s64_f64(v37.val[0]);
          v37.val[2].i64[0] = vqtbl4q_s8(v40, xmmword_260812FB0).u64[0];
          vst2_s8(v29, v37.val[1]);
          v29 += 16;
          v27 += 8;
        }

        while (v27);
        result = v24;
        a3 = v25;
        goto LABEL_19;
      }

      v11 = 16;
      if ((a2 & 0xF) != 0)
      {
        v11 = a2 & 0xF;
      }

      v10 = a2 - v11;
      v12 = vdupq_n_s32(0x437F0000u);
      v13 = v10;
      v14 = result;
      v15 = a3;
      do
      {
        v16 = v15;
        v36 = vld4q_f32(v16);
        v16 += 16;
        v17 = v15 + 32;
        v18 = v15 + 48;
        v41 = vld4q_f32(v17);
        v43 = vld4q_f32(v18);
        v44 = vld4q_f32(v16);
        v19 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v36.val[0], 0), _Q0), v12);
        v20 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v41.val[0], 0), _Q0), v12);
        v21 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v43.val[0], 0), _Q0), v12);
        v38.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v21.i8)));
        v38.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v20.i8)));
        v38.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v21, v21, 8uLL))));
        v38.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v20, v20, 8uLL))));
        v22 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v44.val[0], 0), _Q0), v12);
        v39.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v19.i8)));
        v41.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v44.val[1], 0), _Q0), v12);
        v36.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v36.val[1], 0), _Q0), v12);
        v36.val[1] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v41.val[1], 0), _Q0), v12);
        v36.val[2] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v43.val[1], 0), _Q0), v12);
        v39.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v22.i8)));
        v43.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.val[2].f32)));
        v41.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.val[1].f32)));
        v39.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v19, v19, 8uLL))));
        v43.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36.val[2], v36.val[2], 8uLL))));
        v41.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36.val[1], v36.val[1], 8uLL))));
        v43.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.val[0].f32)));
        v39.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v22, v22, 8uLL))));
        v44.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.val[0].f32)));
        v36.val[1].i64[0] = vqtbl4q_s8(v39, xmmword_260812FA0).u64[0];
        v43.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36.val[0], v36.val[0], 8uLL))));
        v36.val[1].i64[1] = vqtbl4q_s8(v38, xmmword_260812FA0).u64[0];
        v44.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41.val[0], v41.val[0], 8uLL))));
        v36.val[2].i64[0] = vqtbl4q_s8(*(&v43 + 32), xmmword_260812FA0).u64[0];
        v36.val[2].i64[1] = vqtbl4q_s8(*(&v41 + 32), xmmword_260812FA0).u64[0];
        vst2q_s8(v14, *v36.val[1].f32);
        v14 += 32;
        v15 += 64;
        v13 -= 16;
      }

      while (v13);
      if (v11 >= 9)
      {
        goto LABEL_13;
      }

      a3 += 4 * v10;
      a2 = v11;
      result += 2 * v10;
    }

LABEL_19:
    v33 = a2 + 1;
    do
    {
      v34 = *a3;
      v35 = a3[1];
      a3 += 4;
      *result = rintf(fminf(fmaxf(v34, 0.0), 1.0) * 255.0);
      result[1] = rintf(fminf(fmaxf(v35, 0.0), 1.0) * 255.0);
      result += 2;
      --v33;
    }

    while (v33 > 1);
  }

  return result;
}

__int16 *hg_span_write_2s(__int16 *result, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    if (a2 >= 5)
    {
      v3 = a2 & 3;
      if (!v3)
      {
        v3 = 4;
      }

      v4 = a2 - v3;
      a2 = v3;
      v5 = &result[2 * v4];
      v6 = a3 + 16 * v4;
      __asm { FMOV            V1.4S, #1.0 }

      v12 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v18 = vld4q_f32(a3);
        a3 += 64;
        v13 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18.val[0], 0), _Q1), v12);
        v17.val[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v13.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v13, v13, 8uLL))))));
        v18.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18.val[1], 0), _Q1), v12);
        v17.val[1] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v18.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v18.val[0], v18.val[0], 8uLL))))));
        vst2_s16(result, v17);
        result += 8;
        v4 -= 4;
      }

      while (v4);
      result = v5;
      a3 = v6;
    }

    v14 = a2 + 1;
    do
    {
      v15 = *a3;
      v16 = *(a3 + 4);
      a3 += 16;
      *result = rintf(fminf(fmaxf(v15, 0.0), 1.0) * 65535.0);
      result[1] = rintf(fminf(fmaxf(v16, 0.0), 1.0) * 65535.0);
      result += 2;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

_WORD *hg_span_write_2h(_WORD *result, int a2, _DWORD *a3)
{
  if (a2 >= 1)
  {
    v3 = a2 + 1;
    do
    {
      v5 = HIWORD(*a3) & 0x8000;
      v6 = (*a3 >> 23);
      v7 = *a3 & 0x7FFFFF;
      v8 = v6 - 112;
      if (v6 > 0x70)
      {
        v10 = v7 + 0x2000;
        v11 = v6 - 111;
        if (v7 >= 0x7FE000)
        {
          v10 = 0;
        }

        else
        {
          v11 = v8;
        }

        if ((*a3 & 0x1000) != 0)
        {
          v12 = v10;
        }

        else
        {
          v11 = v8;
          v12 = *a3 & 0x7FFFFF;
        }

        v13 = v11 >= 0x1F;
        v14 = (v11 << 10) | (v12 >> 13) | v5;
        v15 = v5 | 0x7C00;
        if (v13)
        {
          LOWORD(v14) = v5 | 0x7C00;
        }

        v9 = (v7 < 0x2000) | (v7 >> 13) | v5 | 0x7C00;
        if (!v7)
        {
          LOWORD(v9) = v15;
        }

        if (v8 != 143)
        {
          LOWORD(v9) = v14;
        }
      }

      else
      {
        v9 = v5 | ((((2 * ((v7 | 0x800000) >> (113 - v6))) & 0x2000) + ((v7 | 0x800000) >> (113 - v6))) >> 13);
        if (v6 < 0x66)
        {
          LOWORD(v9) = 0;
        }
      }

      v16 = a3[1];
      v17 = HIWORD(v16) & 0x8000;
      v18 = (v16 >> 23);
      v19 = v16 & 0x7FFFFF;
      v20 = v18 - 112;
      if (v18 <= 0x70)
      {
        v4 = v17 | ((((2 * ((v19 | 0x800000) >> (113 - v18))) & 0x2000) + ((v19 | 0x800000) >> (113 - v18))) >> 13);
        if (v18 < 0x66)
        {
          LOWORD(v4) = 0;
        }
      }

      else
      {
        v21 = v19 + 0x2000;
        v22 = v18 - 111;
        if (v19 >= 0x7FE000)
        {
          v21 = 0;
        }

        else
        {
          v22 = v20;
        }

        if ((v16 & 0x1000) != 0)
        {
          v23 = v21;
        }

        else
        {
          v22 = v20;
          v23 = v16 & 0x7FFFFF;
        }

        v13 = v22 >= 0x1F;
        v24 = (v22 << 10) | (v23 >> 13) | v17;
        v25 = v17 | 0x7C00;
        if (v13)
        {
          LOWORD(v24) = v17 | 0x7C00;
        }

        v4 = (v19 < 0x2000) | (v19 >> 13) | v17 | 0x7C00;
        if (!v19)
        {
          LOWORD(v4) = v25;
        }

        if (v20 != 143)
        {
          LOWORD(v4) = v24;
        }
      }

      *result = v9;
      result[1] = v4;
      a3 += 4;
      result += 2;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

_DWORD *hg_span_write_2f(_DWORD *result, int a2, _DWORD *a3)
{
  v3 = a2 - 1;
  if (a2 >= 1)
  {
    if (a2 >= 9 && (&a3[4 * v3 + 2] <= result || &result[2 * v3 + 2] <= a3))
    {
      v4 = a2 & 7;
      if (!v4)
      {
        v4 = 8;
      }

      v5 = a2 - v4;
      v6 = &a3[4 * v5];
      v7 = &result[2 * v5];
      a2 -= v5;
      v8 = result + 8;
      v9 = a3 + 16;
      do
      {
        v10 = *(v9 - 4);
        v11 = *(v9 - 2);
        v12 = *v9;
        *(&v11 + 1) = *(v9 - 2);
        *(&v10 + 1) = *(v9 - 6);
        v13 = *(v9 + 2);
        *(&v13 + 1) = *(v9 + 6);
        *(&v12 + 1) = *(v9 + 2);
        *(v8 - 2) = v10;
        *(v8 - 1) = v11;
        *v8 = v12;
        v8[1] = v13;
        v8 += 4;
        v9 += 32;
        v5 -= 8;
      }

      while (v5);
      a3 = v6;
      result = v7;
    }

    v14 = a2 + 1;
    do
    {
      *result = *a3;
      result[1] = a3[1];
      a3 += 4;
      result += 2;
      --v14;
    }

    while (v14 > 1);
  }

  return result;
}

int8x16_t *hg_span_write_2b_yxzx(int8x16_t *result, int a2, int32x4_t *a3, char a4)
{
  if (result & 1) != 0 || (a4)
  {
    return result;
  }

  if (a2 >= 1 && (result & 0xE) != 0)
  {
    v4 = &result->i32[1];
    v5 = vdupq_n_s32(0x437F0000u);
    do
    {
      v6 = *a3;
      v7 = a3[1];
      a3 += 2;
      v8 = vextq_s8(vuzp1q_s32(v6, v7), v6, 4uLL);
      v9 = vextq_s8(v8, v8, 8uLL);
      v9.i32[0] = v6.i32[1];
      v10 = a2;
      v11 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(v9, v5), v5));
      *v11.i8 = vqmovun_s32(v11);
      result->i32[0] = vqmovun_s16(v11).u32[0];
      result = (result + 4);
      a2 -= 2;
      if (v10 < 3)
      {
        break;
      }
    }

    while (v4++ & 0xF);
  }

  if (a2 < 8)
  {
    v22 = a2;
    if (a2 > 1)
    {
      goto LABEL_12;
    }

LABEL_18:
    if (v22 < 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  v13 = vdupq_n_s32(0x437F0000u);
  do
  {
    v14 = vextq_s8(vuzp1q_s32(*a3, a3[1]), *a3, 4uLL);
    v15 = vextq_s8(v14, v14, 8uLL);
    v15.i32[0] = HIDWORD(a3->i64[0]);
    v16 = vextq_s8(vuzp1q_s32(a3[2], a3[3]), a3[2], 4uLL);
    v17 = vextq_s8(v16, v16, 8uLL);
    v17.i32[0] = HIDWORD(a3[2].i64[0]);
    v18 = vextq_s8(vuzp1q_s32(a3[4], a3[5]), a3[4], 4uLL);
    v19 = vextq_s8(v18, v18, 8uLL);
    v19.i32[0] = HIDWORD(a3[4].i64[0]);
    v20 = vextq_s8(vuzp1q_s32(a3[6], a3[7]), a3[6], 4uLL);
    v21 = vextq_s8(v20, v20, 8uLL);
    v21.i32[0] = HIDWORD(a3[6].i64[0]);
    *result++ = vqmovun_high_s16(vqmovun_s16(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(v15, v13), v13))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(v17, v13), v13)))), vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(v19, v13), v13))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(v21, v13), v13))));
    a3 += 8;
    v22 = a2 - 8;
    v23 = a2 > 0xF;
    a2 -= 8;
  }

  while (v23);
  if (v22 <= 1)
  {
    goto LABEL_18;
  }

LABEL_12:
  v24 = vdupq_n_s32(0x437F0000u);
  do
  {
    v25 = *a3;
    v26 = a3[1];
    a3 += 2;
    v27 = vextq_s8(vuzp1q_s32(v25, v26), v25, 4uLL);
    v28 = vextq_s8(v27, v27, 8uLL);
    v28.i32[0] = v25.i32[1];
    v29 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(v28, v24), v24));
    *v29.i8 = vqmovun_s32(v29);
    result->i32[0] = vqmovun_s16(v29).u32[0];
    result = (result + 4);
    v30 = v22 - 2;
    v23 = v22 > 3;
    v22 -= 2;
  }

  while (v23);
  if (v30 >= 1)
  {
LABEL_15:
    v31 = vdupq_n_s32(0x437F0000u);
    v32.i64[0] = vmulq_f32(*a3, v31).u64[0];
    v32.i64[1] = v32.i64[0];
    v33 = vcvtnq_s32_f32(vminq_f32(vrev64q_s32(v32), v31));
    *v33.i8 = vqmovun_s32(v33);
    result->i32[0] = vqmovun_s16(v33).u32[0];
  }

  return result;
}

int8x16_t *hg_span_write_2b_xyxz(int8x16_t *result, int a2, uint64_t a3, char a4)
{
  if (result & 1) != 0 || (a4)
  {
    return result;
  }

  if (a2 >= 1 && (result & 0xE) != 0)
  {
    v4 = &result->i32[1];
    v5 = vdupq_n_s32(0x437F0000u);
    do
    {
      v6 = *a3;
      v7 = *(a3 + 16);
      a3 += 32;
      v8 = vuzp1q_s32(v6, v7);
      v6.i64[1] = __PAIR64__(v8.u32[1], v8.u32[2]);
      v9 = a2;
      v10 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(v6, v5), v5));
      *v10.i8 = vqmovun_s32(v10);
      result->i32[0] = vqmovun_s16(v10).u32[0];
      result = (result + 4);
      a2 -= 2;
      if (v9 < 3)
      {
        break;
      }
    }

    while (v4++ & 0xF);
  }

  if (a2 < 8)
  {
    v22 = a2;
    if (a2 > 1)
    {
      goto LABEL_12;
    }

LABEL_18:
    if (v22 < 1)
    {
      return result;
    }

    goto LABEL_15;
  }

  v12 = vdupq_n_s32(0x437F0000u);
  do
  {
    v13 = *a3;
    v14 = *(a3 + 32);
    v15 = vuzp1q_s32(*a3, *(a3 + 16));
    v16 = vuzp1q_s32(v14, *(a3 + 48));
    v13.i64[1] = __PAIR64__(v15.u32[1], v15.u32[2]);
    v14.i64[1] = __PAIR64__(v16.u32[1], v16.u32[2]);
    v17 = vmulq_f32(v14, v12);
    v18 = *(a3 + 64);
    v19 = vuzp1q_s32(v18, *(a3 + 80));
    v18.i64[1] = __PAIR64__(v19.u32[1], v19.u32[2]);
    v20 = *(a3 + 96);
    v21 = vuzp1q_s32(v20, *(a3 + 112));
    v20.i64[1] = __PAIR64__(v21.u32[1], v21.u32[2]);
    *result++ = vqmovun_high_s16(vqmovun_s16(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(v13, v12), v12))), vcvtnq_s32_f32(vminq_f32(v17, v12)))), vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(v18, v12), v12))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(v20, v12), v12))));
    a3 += 128;
    v22 = a2 - 8;
    v23 = a2 > 0xF;
    a2 -= 8;
  }

  while (v23);
  if (v22 <= 1)
  {
    goto LABEL_18;
  }

LABEL_12:
  v24 = vdupq_n_s32(0x437F0000u);
  do
  {
    v25 = *a3;
    v26 = *(a3 + 16);
    a3 += 32;
    v27 = vuzp1q_s32(v25, v26);
    v25.i64[1] = __PAIR64__(v27.u32[1], v27.u32[2]);
    v28 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(v25, v24), v24));
    *v28.i8 = vqmovun_s32(v28);
    result->i32[0] = vqmovun_s16(v28).u32[0];
    result = (result + 4);
    v29 = v22 - 2;
    v23 = v22 > 3;
    v22 -= 2;
  }

  while (v23);
  if (v29 >= 1)
  {
LABEL_15:
    v30 = vdupq_n_s32(0x437F0000u);
    v31 = vcvtnq_s32_f32(vminq_f32(vdupq_lane_s64(vmulq_f32(*a3, v30).i64[0], 0), v30));
    *v31.i8 = vqmovun_s32(v31);
    result->i32[0] = vqmovun_s16(v31).u32[0];
  }

  return result;
}

double hg_span_write_2s_yxzx(int16x4_t *a1, int a2, int32x4_t *a3, char a4, int32x4_t a5)
{
  if (a1 & 1) != 0 || (a4)
  {
    return *a5.i64;
  }

  if (a2 >= 1 && (a1 & 0xE) != 0)
  {
    v5 = a1 + 1;
    a5 = vdupq_n_s32(0x477FFF00u);
    do
    {
      v6 = a2;
      v7 = *a3;
      v8 = a3[1];
      a3 += 2;
      *a1++ = vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(vextq_s8(vzip1q_s32(v7, v7), vuzp1q_s32(v7, v8), 0xCuLL), a5), a5)));
      a2 -= 2;
      if (v6 < 3)
      {
        break;
      }
    }

    while (v5++ & 0xF);
  }

  if (a2 < 4)
  {
    v10 = a2;
    if (a2 > 1)
    {
LABEL_12:
      v12 = *a3;
      v13 = a3[1];
      a3 += 2;
      a5 = vextq_s8(vzip1q_s32(v12, v12), vuzp1q_s32(v12, v13), 0xCuLL);
      v14 = vdupq_n_s32(0x477FFF00u);
      *a5.i8 = vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(a5, v14), v14)));
      *a1++ = *a5.i8;
      v10 -= 2;
    }
  }

  else
  {
    a5 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *a1->i8 = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(vextq_s8(vzip1q_s32(*a3, *a3), vuzp1q_s32(*a3, a3[1]), 0xCuLL), a5), a5))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(vextq_s8(vzip1q_s32(a3[2], a3[2]), vuzp1q_s32(a3[2], a3[3]), 0xCuLL), a5), a5)));
      a1 += 2;
      a3 += 4;
      v10 = a2 - 4;
      v11 = a2 > 7;
      a2 -= 4;
    }

    while (v11);
    if (v10 > 1)
    {
      goto LABEL_12;
    }
  }

  if (v10 >= 1)
  {
    v15 = vdupq_n_s32(0x477FFF00u);
    v16 = vmulq_f32(*a3, v15);
    a5 = vuzp1q_s32(v16, vzip1q_s32(v16, v16));
    *a5.i8 = vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(a5, a5, 0xCuLL), v15)));
    *a1 = *a5.i8;
  }

  return *a5.i64;
}

char *hg_span_write_3b(char *result, unsigned int a2, float *a3)
{
  if (a2 >= 1)
  {
    if (a2 >= 9 && (&a3[4 * a2 - 1] <= result || &result[3 * a2] <= a3))
    {
      v3 = a2;
      __asm { FMOV            V0.4S, #1.0 }

      if (a2 < 0x11)
      {
        v9 = 0;
LABEL_13:
        if ((a2 & 7) != 0)
        {
          v26 = a2 & 7;
        }

        else
        {
          v26 = 8;
        }

        a2 = v26;
        v27 = &result[3 * (v3 - v26)];
        v28 = &a3[4 * (v3 - v26)];
        v29 = &a3[4 * v9];
        v30 = v26 + v9 - v3;
        v31 = &result[3 * v9];
        v32 = vdupq_n_s32(0x437F0000u);
        do
        {
          v33 = v29;
          v29 += 32;
          v47 = vld4q_f32(v33);
          v33 += 16;
          v34 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v47.val[0], 0), _Q0), v32);
          v49 = vld4q_f32(v33);
          v45.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8)));
          v35 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v49.val[0], 0), _Q0), v32);
          v36 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v49.val[1], 0), _Q0), v32);
          v37 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v47.val[1], 0), _Q0), v32);
          v45.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8)));
          v42.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8)));
          v45.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))));
          v42.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8)));
          *v34.i8 = vrndx_f32(*&vextq_s8(v35, v35, 8uLL));
          v42.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))));
          v47.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v49.val[2], 0), _Q0), v32);
          v38 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v47.val[2], 0), _Q0), v32);
          v47.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8)));
          v49.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.val[0].f32)));
          v45.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(*v34.i8));
          v49.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))));
          v42.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))));
          v49.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47.val[0], v47.val[0], 8uLL))));
          v47.val[2].i64[0] = vqtbl4q_s8(*(&v47 + 48), xmmword_260812FB0).u64[0];
          v47.val[0].i64[0] = vqtbl4q_s8(v45, xmmword_260812FA0).u64[0];
          v47.val[1].i64[0] = vqtbl4q_s8(v42, xmmword_260812FA0).u64[0];
          vst3_s8(v31, *v47.val[0].f32);
          v31 += 24;
          v30 += 8;
        }

        while (v30);
        result = v27;
        a3 = v28;
        goto LABEL_19;
      }

      v10 = 16;
      if ((a2 & 0xF) != 0)
      {
        v10 = a2 & 0xF;
      }

      v9 = a2 - v10;
      v11 = vdupq_n_s32(0x437F0000u);
      v12 = result;
      v13 = v9;
      v14 = a3;
      do
      {
        v15 = v14;
        v44 = vld4q_f32(v15);
        v15 += 16;
        v16 = v14 + 32;
        v17 = v14 + 48;
        v48 = vld4q_f32(v16);
        v46 = vld4q_f32(v17);
        v50 = vld4q_f32(v15);
        v18 = vmaxnmq_f32(v50.val[0], 0);
        v19 = vmaxnmq_f32(v44.val[0], 0);
        v50.val[0] = vmaxnmq_f32(v44.val[1], 0);
        v20 = vmaxnmq_f32(v46.val[0], 0);
        v44.val[0] = vmaxnmq_f32(v48.val[0], 0);
        v44.val[1] = vmaxnmq_f32(v48.val[1], 0);
        v44.val[3] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v48.val[2], 0), _Q0), v11);
        v46.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v46.val[2], 0), _Q0), v11);
        v43.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.val[0].f32)));
        v43.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.val[3].f32)));
        v46.val[1] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v46.val[1], 0), _Q0), v11);
        v44.val[2] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v44.val[2], 0), _Q0), v11);
        v43.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46.val[0], v46.val[0], 8uLL))));
        v43.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44.val[3], v44.val[3], 8uLL))));
        v46.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v50.val[2], 0), _Q0), v11);
        v46.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.val[2].f32)));
        v48.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.val[0].f32)));
        v48.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44.val[2], v44.val[2], 8uLL))));
        v44.val[1] = vmulq_f32(vminnmq_f32(v44.val[1], _Q0), v11);
        v48.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46.val[0], v46.val[0], 8uLL))));
        v46.val[0] = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44.val[1], v44.val[1], 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46.val[1], v46.val[1], 8uLL))))));
        v46.val[1] = vmulq_f32(vminnmq_f32(v50.val[0], _Q0), v11);
        v44.val[3].i64[0] = vqtbl4q_s8(v48, xmmword_260812FA0).u64[0];
        v21 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v50.val[1], 0), _Q0), v11);
        v44.val[3].i64[1] = vqtbl4q_s8(v43, xmmword_260812FA0).u64[0];
        v44.val[2] = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46.val[1], v46.val[1], 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v21.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v21, v21, 8uLL)))))), v46.val[0]);
        v22 = vmulq_f32(vminnmq_f32(v20, _Q0), v11);
        v23 = vmulq_f32(vminnmq_f32(v44.val[0], _Q0), v11);
        v24 = vmulq_f32(vminnmq_f32(v19, _Q0), v11);
        v25 = vmulq_f32(vminnmq_f32(v18, _Q0), v11);
        v44.val[1] = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v24.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v24, v24, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v25.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v25, v25, 8uLL)))))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v22.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v22, v22, 8uLL)))))));
        vst3q_s8(v12, *v44.val[1].f32);
        v12 += 48;
        v14 += 64;
        v13 -= 16;
      }

      while (v13);
      if (v10 >= 9)
      {
        goto LABEL_13;
      }

      a3 += 4 * v9;
      result += 3 * v9;
      a2 = v10;
    }

LABEL_19:
    v39 = a2 + 1;
    do
    {
      v40 = rintf(fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0);
      v41 = rintf(fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0);
      *result = rintf(fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
      result[1] = v40;
      result[2] = v41;
      a3 += 4;
      result += 3;
      --v39;
    }

    while (v39 > 1);
  }

  return result;
}

char *hg_span_write_3b_zyx(char *result, unsigned int a2, float *a3)
{
  if (a2 >= 1)
  {
    if (a2 >= 9 && (&a3[4 * a2 - 1] <= result || &result[3 * a2] <= a3))
    {
      v3 = a2;
      __asm { FMOV            V0.4S, #1.0 }

      if (a2 < 0x11)
      {
        v9 = 0;
LABEL_13:
        if ((a2 & 7) != 0)
        {
          v23 = a2 & 7;
        }

        else
        {
          v23 = 8;
        }

        a2 = v23;
        v24 = &result[3 * (v3 - v23)];
        v25 = &a3[4 * (v3 - v23)];
        v26 = &a3[4 * v9];
        v27 = v23 + v9 - v3;
        v28 = &result[3 * v9];
        v29 = vdupq_n_s32(0x437F0000u);
        do
        {
          v30 = v26;
          v26 += 32;
          v44 = vld4q_f32(v30);
          v30 += 16;
          v31 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v44.val[0], 0), _Q0), v29);
          v48 = vld4q_f32(v30);
          v46.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8)));
          v32 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v48.val[0], 0), _Q0), v29);
          v33 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v48.val[1], 0), _Q0), v29);
          v34 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v44.val[1], 0), _Q0), v29);
          v46.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8)));
          v40.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8)));
          v46.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))));
          v40.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8)));
          v40.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))));
          v44.val[1] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v48.val[2], 0), _Q0), v29);
          v44.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v44.val[2], 0), _Q0), v29);
          v46.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))));
          v48.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.val[0].f32)));
          v40.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))));
          v48.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.val[1].f32)));
          v48.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44.val[0], v44.val[0], 8uLL))));
          v46.val[0].i64[0] = vqtbl4q_s8(v46, xmmword_260812FB0).u64[0];
          v48.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44.val[1], v44.val[1], 8uLL))));
          v44.val[2].i64[0] = vqtbl4q_s8(v48, xmmword_260812FA0).u64[0];
          v44.val[3].i64[0] = vqtbl4q_s8(v40, xmmword_260812FA0).u64[0];
          vst3_s8(v28, *v44.val[2].f32);
          v28 += 24;
          v27 += 8;
        }

        while (v27);
        result = v24;
        a3 = v25;
        goto LABEL_19;
      }

      v10 = 16;
      if ((a2 & 0xF) != 0)
      {
        v10 = a2 & 0xF;
      }

      v9 = a2 - v10;
      v11 = vdupq_n_s32(0x437F0000u);
      v12 = result;
      v13 = v9;
      v14 = a3;
      do
      {
        v15 = v14;
        v39 = vld4q_f32(v15);
        v15 += 16;
        v16 = v14 + 32;
        v17 = v14 + 48;
        v47 = vld4q_f32(v16);
        v41 = vld4q_f32(v17);
        v45 = vld4q_f32(v15);
        v18 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v39.val[0], 0), _Q0), v11);
        v19 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v47.val[0], 0), _Q0), v11);
        v20 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v41.val[0], 0), _Q0), v11);
        v42.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v20.i8)));
        v42.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v19.i8)));
        v42.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v20, v20, 8uLL))));
        v21 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v45.val[0], 0), _Q0), v11);
        v42.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v19, v19, 8uLL))));
        v43.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v18.i8)));
        v38 = vqtbl4q_s8(v42, xmmword_260812FA0).u64[0];
        v42.val[1] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v41.val[1], 0), _Q0), v11);
        v22 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v47.val[1], 0), _Q0), v11);
        v42.val[2] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v39.val[1], 0), _Q0), v11);
        v42.val[3] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v45.val[1], 0), _Q0), v11);
        v43.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v21.i8)));
        v43.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v18, v18, 8uLL))));
        v39.val[0] = vminnmq_f32(vmaxnmq_f32(v39.val[2], 0), _Q0);
        v45.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v41.val[2], 0), _Q0), v11);
        v39.val[2] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v47.val[2], 0), _Q0), v11);
        v39.val[0] = vmulq_f32(v39.val[0], v11);
        v39.val[1] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v45.val[2], 0), _Q0), v11);
        v43.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v21, v21, 8uLL))));
        v43.val[2].i64[0] = vqtbl4q_s8(v43, xmmword_260812FA0).u64[0];
        v43.val[2].i64[1] = v38;
        v43.val[1] = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42.val[2], v42.val[2], 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42.val[3], v42.val[3], 8uLL)))))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v22.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v22, v22, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42.val[1], v42.val[1], 8uLL)))))));
        v43.val[0] = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39.val[0], v39.val[0], 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39.val[1], v39.val[1], 8uLL)))))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39.val[2], v39.val[2], 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45.val[0], v45.val[0], 8uLL)))))));
        vst3q_s8(v12, *v43.val[0].i8);
        v12 += 48;
        v14 += 64;
        v13 -= 16;
      }

      while (v13);
      if (v10 >= 9)
      {
        goto LABEL_13;
      }

      a3 += 4 * v9;
      result += 3 * v9;
      a2 = v10;
    }

LABEL_19:
    v35 = a2 + 1;
    do
    {
      v36 = rintf(fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
      v37 = rintf(fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0);
      *result = rintf(fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0);
      result[1] = v37;
      result[2] = v36;
      a3 += 4;
      result += 3;
      --v35;
    }

    while (v35 > 1);
  }

  return result;
}

__int16 *hg_span_write_3s(__int16 *result, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    if (a2 >= 5)
    {
      v3 = a2 & 3;
      if (!v3)
      {
        v3 = 4;
      }

      v4 = a2 - v3;
      a2 = v3;
      v5 = &result[3 * v4];
      v6 = a3 + 16 * v4;
      __asm { FMOV            V1.4S, #1.0 }

      v12 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v18 = vld4q_f32(a3);
        a3 += 64;
        v13 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18.val[0], 0), _Q1), v12);
        v14 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18.val[1], 0), _Q1), v12);
        v18.val[0] = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18.val[2], 0), _Q1), v12);
        *v18.val[2].f32 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v18.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v18.val[0], v18.val[0], 8uLL))))));
        *v18.val[1].f32 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v14.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v14, v14, 8uLL))))));
        *v18.val[0].f32 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v13.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v13, v13, 8uLL))))));
        vst3_s16(result, *v18.val[0].f32);
        result += 12;
        v4 -= 4;
      }

      while (v4);
      result = v5;
      a3 = v6;
    }

    v15 = a2 + 1;
    do
    {
      v16 = rintf(fminf(fmaxf(*(a3 + 4), 0.0), 1.0) * 65535.0);
      v17 = rintf(fminf(fmaxf(*(a3 + 8), 0.0), 1.0) * 65535.0);
      *result = rintf(fminf(fmaxf(*a3, 0.0), 1.0) * 65535.0);
      result[1] = v16;
      result[2] = v17;
      a3 += 16;
      result += 3;
      --v15;
    }

    while (v15 > 1);
  }

  return result;
}

float *hg_span_write_3f(float *result, int a2, _DWORD *a3)
{
  v3 = a2 - 1;
  if (a2 >= 1)
  {
    if (a2 >= 9 && (&a3[4 * v3 + 3] <= result || &result[3 * v3 + 3] <= a3))
    {
      v4 = a2 & 7;
      if (!v4)
      {
        v4 = 8;
      }

      v5 = a2 - v4;
      v6 = &a3[4 * v5];
      v7 = &result[3 * v5];
      a2 -= v5;
      v8 = (a3 + 16);
      do
      {
        v17.val[0] = v8[-2];
        v17.val[2] = v8[-4];
        v17.val[1] = v8[-3];
        v10 = v8[2];
        v9 = v8[3];
        v18.val[0].i64[0] = vzip1q_s32(v17.val[2], v17.val[1]).u64[0];
        v11 = vzip1q_s32(v17.val[0], v8[-1]);
        v18.val[0].i64[1] = vextq_s8(*&v17, v11, 8uLL).i64[1];
        v18.val[1].i64[0] = vtrn2q_s32(v17.val[2], v17.val[1]).u64[0];
        v18.val[1].i64[1] = v11.i64[1];
        v17.val[0].i32[3] = v8[-1].i64[1];
        v13 = *v8;
        v12 = v8[1];
        v8 += 8;
        v18.val[2].i64[0] = vzip2q_s32(v17.val[2], v17.val[1]).u64[0];
        v18.val[2].i64[1] = v17.val[0].i64[1];
        v14 = result;
        vst3q_f32(v14, v18);
        v14 += 12;
        v17.val[0].i64[0] = vzip1q_s32(v13, v12).u64[0];
        v15 = vzip1q_s32(v10, v9);
        v17.val[0].i64[1] = vextq_s8(*&v10, v15, 8uLL).i64[1];
        v17.val[1].i64[0] = vtrn2q_s32(v13, v12).u64[0];
        v17.val[1].i64[1] = v15.i64[1];
        v10.i32[3] = v9.i32[2];
        v17.val[2].i64[0] = vzip2q_s32(v13, v12).u64[0];
        v17.val[2].i64[1] = v10.i64[1];
        vst3q_f32(v14, v17);
        result += 24;
        v5 -= 8;
      }

      while (v5);
      a3 = v6;
      result = v7;
    }

    v16 = a2 + 1;
    do
    {
      *result = *a3;
      result[1] = *(a3 + 1);
      result[2] = *(a3 + 2);
      a3 += 4;
      result += 3;
      --v16;
    }

    while (v16 > 1);
  }

  return result;
}

uint8x16_t *hg_span_write_4b_wxyz(uint8x16_t *result, int a2, float32x4_t *a3)
{
  if (a2 >= 1 && (result & 0xF) != 0)
  {
    v3 = &result->i32[1];
    v4 = vdupq_n_s32(0x437F0000u);
    do
    {
      v5 = *a3++;
      v6 = a2;
      v7 = vmulq_f32(v5, v4);
      v8 = vcvtnq_s32_f32(vminq_f32(vextq_s8(v7, v7, 0xCuLL), v4));
      *v8.i8 = vqmovun_s32(v8);
      result->i32[0] = vqmovn_u16(v8).u32[0];
      result = (result + 4);
      --a2;
      if (v6 < 2)
      {
        break;
      }
    }

    while (v3++ & 0xF);
  }

  if (a2 < 4)
  {
    v15 = a2;
    if (a2 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v10 = vdupq_n_s32(0x437F0000u);
  do
  {
    v11 = vmulq_f32(*a3, v10);
    v12 = vmulq_f32(a3[1], v10);
    v13 = vmulq_f32(a3[2], v10);
    v14 = vmulq_f32(a3[3], v10);
    *result++ = vqmovn_high_u16(vqmovn_u16(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(v11, v11, 0xCuLL), v10))), vcvtnq_s32_f32(vminq_f32(vextq_s8(v12, v12, 0xCuLL), v10)))), vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(v13, v13, 0xCuLL), v10))), vcvtnq_s32_f32(vminq_f32(vextq_s8(v14, v14, 0xCuLL), v10))));
    a3 += 4;
    v15 = a2 - 4;
    v16 = a2 > 7;
    a2 -= 4;
  }

  while (v16);
  if (v15 >= 1)
  {
LABEL_12:
    v17 = v15 + 1;
    v18 = vdupq_n_s32(0x437F0000u);
    do
    {
      v19 = *a3++;
      v20 = vmulq_f32(v19, v18);
      v21 = vcvtnq_s32_f32(vminq_f32(vextq_s8(v20, v20, 0xCuLL), v18));
      *v21.i8 = vqmovun_s32(v21);
      result->i32[0] = vqmovn_u16(v21).u32[0];
      result = (result + 4);
      --v17;
    }

    while (v17 > 1);
  }

  return result;
}

uint8x16_t *hg_span_write_4b_zyxw(uint8x16_t *result, int a2, float32x4_t *a3)
{
  if (a2 >= 1 && (result & 0xF) != 0)
  {
    v3 = &result->i32[1];
    v4 = vdupq_n_s32(0x437F0000u);
    do
    {
      v5 = a2;
      v6 = *a3++;
      v7 = vrev64q_s32(vmulq_f32(v6, v4));
      v8 = vcvtnq_s32_f32(vminq_f32(vextq_s8(v7, v7, 0xCuLL), v4));
      *v8.i8 = vqmovun_s32(v8);
      result->i32[0] = vqmovn_u16(v8).u32[0];
      result = (result + 4);
      --a2;
      if (v5 < 2)
      {
        break;
      }
    }

    while (v3++ & 0xF);
  }

  if (a2 < 4)
  {
    v15 = a2;
    if (a2 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v10 = vdupq_n_s32(0x437F0000u);
  do
  {
    v11 = vrev64q_s32(vmulq_f32(*a3, v10));
    v12 = vrev64q_s32(vmulq_f32(a3[1], v10));
    v13 = vrev64q_s32(vmulq_f32(a3[2], v10));
    v14 = vrev64q_s32(vmulq_f32(a3[3], v10));
    *result++ = vqmovn_high_u16(vqmovn_u16(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(v11, v11, 0xCuLL), v10))), vcvtnq_s32_f32(vminq_f32(vextq_s8(v12, v12, 0xCuLL), v10)))), vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(v13, v13, 0xCuLL), v10))), vcvtnq_s32_f32(vminq_f32(vextq_s8(v14, v14, 0xCuLL), v10))));
    a3 += 4;
    v15 = a2 - 4;
    v16 = a2 > 7;
    a2 -= 4;
  }

  while (v16);
  if (v15 >= 1)
  {
LABEL_12:
    v17 = v15 + 1;
    v18 = vdupq_n_s32(0x437F0000u);
    do
    {
      v19 = *a3++;
      v20 = vrev64q_s32(vmulq_f32(v19, v18));
      v21 = vcvtnq_s32_f32(vminq_f32(vextq_s8(v20, v20, 0xCuLL), v18));
      *v21.i8 = vqmovun_s32(v21);
      result->i32[0] = vqmovn_u16(v21).u32[0];
      result = (result + 4);
      --v17;
    }

    while (v17 > 1);
  }

  return result;
}

uint8x16_t *hg_span_write_4b_xyzw(uint8x16_t *result, int a2, float32x4_t *a3)
{
  if (a2 >= 1 && (result & 0xF) != 0)
  {
    v3 = &result->i32[1];
    v4 = vdupq_n_s32(0x437F0000u);
    do
    {
      v5 = a2;
      v6 = *a3++;
      v7 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(v6, v4), v4));
      *v7.i8 = vqmovun_s32(v7);
      result->i32[0] = vqmovn_u16(v7).u32[0];
      result = (result + 4);
      --a2;
      if (v5 < 2)
      {
        break;
      }
    }

    while (v3++ & 0xF);
  }

  if (a2 < 4)
  {
    v10 = a2;
    if (a2 < 1)
    {
      return result;
    }

    goto LABEL_12;
  }

  v9 = vdupq_n_s32(0x437F0000u);
  do
  {
    *result++ = vqmovn_high_u16(vqmovn_u16(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(*a3, v9), v9))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(a3[1], v9), v9)))), vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(a3[2], v9), v9))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(a3[3], v9), v9))));
    a3 += 4;
    v10 = a2 - 4;
    v11 = a2 > 7;
    a2 -= 4;
  }

  while (v11);
  if (v10 >= 1)
  {
LABEL_12:
    v12 = v10 + 1;
    v13 = vdupq_n_s32(0x437F0000u);
    do
    {
      v14 = *a3++;
      v15 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(v14, v13), v13));
      *v15.i8 = vqmovun_s32(v15);
      result->i32[0] = vqmovn_u16(v15).u32[0];
      result = (result + 4);
      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

double hg_span_write_4s(int16x8_t *a1, int a2, float32x4_t *a3, float32x4_t a4)
{
  if (a2 >= 1 && (a1 & 0xF) != 0)
  {
    v4 = *a3++;
    v5 = vdupq_n_s32(0x477FFF00u);
    *a4.f32 = vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(v4, v5), v5)));
    a1->i64[0] = a4.i64[0];
    a1 = (a1 + 8);
    --a2;
  }

  if (a2 <= 1)
  {
    if (a2 == 1)
    {
LABEL_8:
      a4 = vdupq_n_s32(0x477FFF00u);
      *a4.f32 = vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(*a3, a4), a4)));
      a1->i64[0] = a4.i64[0];
    }
  }

  else
  {
    a4 = vdupq_n_s32(0x477FFF00u);
    do
    {
      v6 = *a3;
      v7 = a3[1];
      a3 += 2;
      *a1++ = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(v6, a4), a4))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(v7, a4), a4)));
      v8 = a2 - 2;
      v9 = a2 > 3;
      a2 -= 2;
    }

    while (v9);
    if (v8 == 1)
    {
      goto LABEL_8;
    }
  }

  return *a4.i64;
}

double hg_span_write_4s_wxyz(int16x8_t *a1, int a2, float32x4_t *a3, float32x4_t a4)
{
  if (a2 >= 1 && (a1 & 0xF) != 0)
  {
    v4 = *a3++;
    v5 = vdupq_n_s32(0x477FFF00u);
    a4 = vmulq_f32(v4, v5);
    *a4.f32 = vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(a4, a4, 0xCuLL), v5)));
    a1->i64[0] = a4.i64[0];
    a1 = (a1 + 8);
    --a2;
  }

  if (a2 <= 1)
  {
    if (a2 == 1)
    {
LABEL_8:
      v12 = vdupq_n_s32(0x477FFF00u);
      a4 = vmulq_f32(*a3, v12);
      *a4.f32 = vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(a4, a4, 0xCuLL), v12)));
      a1->i64[0] = a4.i64[0];
    }
  }

  else
  {
    a4 = vdupq_n_s32(0x477FFF00u);
    do
    {
      v6 = *a3;
      v7 = a3[1];
      a3 += 2;
      v8 = vmulq_f32(v6, a4);
      v9 = vmulq_f32(v7, a4);
      *a1++ = vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vextq_s8(v8, v8, 0xCuLL), a4))), vcvtnq_s32_f32(vminq_f32(vextq_s8(v9, v9, 0xCuLL), a4)));
      v10 = a2 - 2;
      v11 = a2 > 3;
      a2 -= 2;
    }

    while (v11);
    if (v10 == 1)
    {
      goto LABEL_8;
    }
  }

  return *a4.i64;
}

float16x4_t *hg_span_write_4h(float16x4_t *result, int a2, float32x4_t *a3)
{
  if (a2 >= 1)
  {
    v3 = a2 + 1;
    do
    {
      v4 = *a3++;
      *result++ = vcvt_f16_f32(v4);
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

_OWORD *hg_span_write_4f_xyzw(_OWORD *result, int a2, __int128 *a3)
{
  if (a2 >= 1)
  {
    v3 = a2 + 1;
    do
    {
      v4 = *a3++;
      *result++ = v4;
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

int8x16_t *hg_span_write_4f_wxyz(int8x16_t *result, int a2, int8x16_t *a3)
{
  if (a2 >= 1)
  {
    v3 = a2 + 1;
    do
    {
      v4 = *a3++;
      *result++ = vextq_s8(v4, v4, 0xCuLL);
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

float32x4_t hg_span_write_4b_10bit_yxzx_little_endian(int8x16_t *a1, int a2, int32x4_t *a3, int a4, float32x4_t result)
{
  if ((a1 & 0xF) == 0 && !(a4 % 6))
  {
    if (a2 < 6)
    {
      v23 = a2;
      v25 = a2 == 1;
      if (a2 < 1)
      {
        return result;
      }
    }

    else
    {
      result = vdupq_n_s32(0x447FC000u);
      v5.i64[0] = 0x300000003;
      v5.i64[1] = 0x300000003;
      v6 = vdupq_n_s32(0xFFC00u);
      do
      {
        v7 = vextq_s8(vuzp1q_s32(*a3, a3[1]), *a3, 4uLL);
        v8 = vextq_s8(v7, v7, 8uLL);
        v8.i32[0] = HIDWORD(a3->i64[0]);
        v9 = vextq_s8(vuzp1q_s32(a3[2], a3[3]), a3[2], 4uLL);
        v10 = vextq_s8(v9, v9, 8uLL);
        v10.i32[0] = HIDWORD(a3[2].i64[0]);
        v11 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v8, result), 0), result));
        v12 = vextq_s8(vuzp1q_s32(a3[4], a3[5]), a3[4], 4uLL);
        v13 = vextq_s8(v12, v12, 8uLL);
        v14 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v10, result), 0), result));
        v13.i32[0] = HIDWORD(a3[4].i64[0]);
        v15 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v13, result), 0), result));
        v16 = vextq_s8(vuzp2q_s32(vuzp1q_s32(v14, v14), v15), v11, 4uLL);
        v17 = vuzp1q_s32(v11, v11);
        v18 = vextq_s8(vtrn2q_s32(v16, v11), v16, 8uLL);
        v11.i32[2] = v15.i32[2];
        v19 = vextq_s8(v11, v14, 4uLL);
        v20 = vtrn2q_s32(v19, v14);
        v21 = vextq_s8(v15, vuzp2q_s32(v17, v14), 0xCuLL);
        v22 = vandq_s8(vshlq_n_s32(vextq_s8(v20, v19, 8uLL), 0xAuLL), v6);
        *a1++ = vorrq_s8(vorrq_s8((*&vshlq_n_s32(vextq_s8(v21, vzip1q_s32(v15, v21), 8uLL), 0x14uLL) & __PAIR128__(0x3FFFFFFF3FFFFFFFLL, 0x3FFFFFFF3FFFFFFFLL)), vandq_s8(v18, v5)), vuzp2q_s32(vextq_s8(v22, v22, 4uLL), v22));
        a3 += 6;
        v23 = a2 - 6;
        v24 = a2 > 0xB;
        a2 -= 6;
      }

      while (v24);
      v25 = v23 == 1;
      if (v23 < 1)
      {
        return result;
      }
    }

    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    if (!v25)
    {
      v28 = a3[1];
      if (v23 >= 3)
      {
        v27 = a3[2];
        if (v23 != 3)
        {
          v29 = a3[3];
        }
      }
    }

    v30 = vextq_s8(vuzp1q_s32(*a3, v28), *a3, 4uLL);
    v31 = vextq_s8(v30, v30, 8uLL);
    v31.i32[0] = HIDWORD(a3->i64[0]);
    v32 = vextq_s8(vuzp1q_s32(v27, v29), v27, 4uLL);
    v33 = vextq_s8(v32, v32, 8uLL);
    v33.i32[0] = v27.i32[1];
    v34 = vdupq_n_s32(0x447FC000u);
    v35 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v31, v34), 0), v34));
    v36 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v33, v34), 0), v34));
    if (v23 == 5)
    {
      v26 = a3[4];
    }

    v37 = vextq_s8(vuzp1q_s32(v26, 0), v26, 4uLL);
    v38 = vextq_s8(v37, v37, 8uLL);
    v38.i32[0] = v26.i32[1];
    v39 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v38, v34), 0), v34));
    v40 = vextq_s8(vuzp2q_s32(vuzp1q_s32(v36, v36), v39), v35, 4uLL);
    v41 = vextq_s8(vtrn2q_s32(v40, v35), v40, 8uLL);
    v42 = vuzp1q_s32(v35, v35);
    v35.i32[2] = v39.i32[2];
    v43 = vextq_s8(v35, v36, 4uLL);
    v44 = vextq_s8(vtrn2q_s32(v43, v36), v43, 8uLL);
    v45 = vextq_s8(v39, vuzp2q_s32(v42, v36), 0xCuLL);
    v46 = vextq_s8(v45, vzip1q_s32(v39, v45), 8uLL);
    v47 = vshlq_n_s32(v44, 0xAuLL);
    v44.i64[0] = 0x300000003;
    v44.i64[1] = 0x300000003;
    v48 = vandq_s8(v47, vdupq_n_s32(0xFFC00u));
    result = vorrq_s8(vorrq_s8((*&vshlq_n_s32(v46, 0x14uLL) & __PAIR128__(0x3FFFFFFF3FFFFFFFLL, 0x3FFFFFFF3FFFFFFFLL)), vandq_s8(v41, v44)), vuzp2q_s32(vextq_s8(v48, v48, 4uLL), v48));
    *a1 = result;
  }

  return result;
}

int8x16_t *hg_span_write_4b_10bit_big_endian(int8x16_t *result, int a2, float32x4_t *a3)
{
  if (a2 >= 1)
  {
    if ((result & 0xF) != 0)
    {
      v3 = &result->i32[1];
      v4 = vdupq_n_s32(0x447FC000u);
      v5.i64[0] = 0x300000003;
      v5.i64[1] = 0x300000003;
      do
      {
        v6 = *a3++;
        v7 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v6, xmmword_260812FC0), 0), v4));
        v8 = vandq_s8(v7, v5);
        result->i32[0] = vrev32q_s8(vaddq_s32(vaddq_s32(vdupq_lane_s32(*&vshlq_n_s32(v8, 0xCuLL), 1), vshlq_n_s32(v7, 0x16uLL)), vdupq_laneq_s32(vshlq_n_s32(v8, 2uLL), 2))).u32[0];
        result = (result + 4);
        if (!--a2)
        {
          break;
        }
      }

      while (v3++ & 0xF);
    }

    if (a2 >= 4)
    {
      v10 = vdupq_n_s32(0x447FC000u);
      do
      {
        v11 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(*a3, xmmword_260812FC0), 0), v10));
        v12 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(a3[1], xmmword_260812FC0), 0), v10));
        v13 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(a3[2], xmmword_260812FC0), 0), v10));
        v14 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(a3[3], xmmword_260812FC0), 0), v10));
        LODWORD(v15) = 0;
        HIDWORD(v15) = vdupq_lane_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(vshlq_n_s32(vandq_s8(v12, xmmword_260812FE0), 0xCuLL), 1), vshlq_n_s32(vandq_s8(v12, xmmword_260812FD0), 0x16uLL)), vdupq_laneq_s32(vshlq_n_s32(vandq_s8(v12, xmmword_260812FF0), 2uLL), 2)), 0).i32[1];
        v12.i64[0] = 0;
        v12.i64[1] = vdupq_lane_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(vshlq_n_s32(vandq_s8(v13, xmmword_260812FE0), 0xCuLL), 1), vshlq_n_s32(vandq_s8(v13, xmmword_260812FD0), 0x16uLL)), vdupq_laneq_s32(vshlq_n_s32(vandq_s8(v13, xmmword_260812FF0), 2uLL), 2)), 0).u32[2];
        v13.i64[0] = 0;
        v13.i32[2] = 0;
        v13.i32[3] = vdupq_lane_s32(vaddq_s32(vaddq_s32(vdupq_lane_s32(vshlq_n_s32(vandq_s8(v14, xmmword_260812FE0), 0xCuLL), 1), vshlq_n_s32(vandq_s8(v14, xmmword_260812FD0), 0x16uLL)), vdupq_laneq_s32(vshlq_n_s32(vandq_s8(v14, xmmword_260812FF0), 2uLL), 2)), 0).i32[3];
        *result++ = vrev32q_s8(vorrq_s8(vorrq_s8(v15, vorrq_s8(vorrq_s8(vdupq_lane_s32(*&vshlq_n_s32(vandq_s8(v11, xmmword_260812FE0), 0xCuLL), 1), vshlq_n_s32(v11, 0x16uLL)), vdupq_laneq_s32(vshlq_n_s32(vandq_s8(v11, xmmword_260812FF0), 2uLL), 2)).u32[0]), vorrq_s8(v12, v13)));
        a3 += 4;
        a2 -= 4;
      }

      while (a2 > 3);
    }

    if (a2)
    {
      v16 = a2 + 1;
      v17 = vdupq_n_s32(0x447FC000u);
      v18.i64[0] = 0x300000003;
      v18.i64[1] = 0x300000003;
      do
      {
        v19 = *a3++;
        v20 = vcvtnq_s32_f32(vminq_f32(vmaxq_f32(vmulq_f32(v19, xmmword_260812FC0), 0), v17));
        v21 = vandq_s8(v20, v18);
        result->i32[0] = vrev32q_s8(vaddq_s32(vaddq_s32(vdupq_lane_s32(*&vshlq_n_s32(v21, 0xCuLL), 1), vshlq_n_s32(v20, 0x16uLL)), vdupq_laneq_s32(vshlq_n_s32(v21, 2uLL), 2))).u32[0];
        result = (result + 4);
        --v16;
      }

      while (v16 > 1);
    }
  }

  return result;
}

double hg_span_write_4s_wxyz_big_endian(int8x16_t *a1, int a2, float32x4_t *a3, int32x4_t a4)
{
  if (a2 >= 1 && (a1 & 0xF) != 0)
  {
    v4 = *a3++;
    v5 = vdupq_n_s32(0x477FFF00u);
    v6 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(v4, v5), v5));
    a4 = vqtbl1q_s8(vqmovun_high_s32(*v6.i8, v6), xmmword_260813000);
    a4.i64[0] = vextq_s8(a4, a4, 8uLL).u64[0];
    a1->i64[0] = a4.i64[0];
    a1 = (a1 + 8);
    --a2;
  }

  if (a2 <= 1)
  {
    if (a2 == 1)
    {
LABEL_8:
      v11 = vdupq_n_s32(0x477FFF00u);
      a4 = vcvtnq_s32_f32(vminq_f32(vmulq_f32(*a3, v11), v11));
      *a4.i8 = vqtbl1_s8(vqmovun_high_s32(vqmovun_s32(a4), a4), 0x405020300010607);
      a1->i64[0] = a4.i64[0];
    }
  }

  else
  {
    a4 = vdupq_n_s32(0x477FFF00u);
    do
    {
      v7 = *a3;
      v8 = a3[1];
      a3 += 2;
      *a1++ = vqtbl1q_s8(vqmovun_high_s32(vqmovun_s32(vcvtnq_s32_f32(vminq_f32(vmulq_f32(v7, a4), a4))), vcvtnq_s32_f32(vminq_f32(vmulq_f32(v8, a4), a4))), xmmword_260813010);
      v9 = a2 - 2;
      v10 = a2 > 3;
      a2 -= 2;
    }

    while (v10);
    if (v9 == 1)
    {
      goto LABEL_8;
    }
  }

  return *a4.i64;
}

void HGHandler::HGHandler(HGHandler *this)
{
  *this = &unk_287219BB0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_2603429B0;
  *(this + 6) = xmmword_2603429C0;
  *(this + 7) = xmmword_2603429D0;
  *(this + 8) = xmmword_2603427D0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
}

uint64_t HGHandler::Reset(uint64_t a1, uint64_t a2)
{
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v3 = (*(*a2 + 128))(a2, 23);
  *(a1 + 240) = 0;
  *(a1 + 236) = v3;
  v5[0] = xmmword_2603429B0;
  v5[1] = xmmword_2603429C0;
  v5[2] = xmmword_2603429D0;
  v5[3] = xmmword_2603427D0;
  (*(*a1 + 176))(a1, v5);
  return a1;
}

uint64_t HGHandler::LoadIdentityModelViewMatrix(HGHandler *this)
{
  v2[0] = xmmword_2603429B0;
  v2[1] = xmmword_2603429C0;
  v2[2] = xmmword_2603429D0;
  v2[3] = xmmword_2603427D0;
  return (*(*this + 176))(this, v2);
}

uint64_t HGHandler::Init(uint64_t this, HGRect a2, HGRect a3, int a4, int a5)
{
  *(this + 188) = a2;
  *(this + 204) = a3;
  *(this + 220) = a3;
  *(this + 240) = a4;
  *(this + 244) = a5;
  return this;
}

uint64_t HGHandler::InitTexture(uint64_t this, int a2, HGRect a3, HGRect a4, HGRect a5, int a6, int a7)
{
  *(this + 188) = a3;
  *(this + 204) = a4;
  *(this + 220) = a5;
  *(this + 240) = a4.var0 + a6 - a5.var0;
  *(this + 244) = a4.var1 + a7 - a5.var1;
  return this;
}

int32x4_t HGHandler::Push(int32x4_t *this, const HGShaderBinding *a2)
{
  this[9].i32[2] += *a2;
  result = vaddq_s32(this[10], *(a2 + 8));
  this[10] = result;
  this[11].i32[0] += *(a2 + 6);
  return result;
}

int32x4_t HGHandler::Pop(int32x4_t *this, const HGShaderBinding *a2)
{
  this[9].i32[2] -= *a2;
  result = vsubq_s32(this[10], *(a2 + 8));
  this[10] = result;
  this[11].i32[0] -= *(a2 + 6);
  return result;
}

uint64_t HGHandler::TexCoord(HGHandler *this, int a2, int a3, int a4, const double *a5)
{
  v9 = (*(*this + 80))(this);
  (*(*this + 96))(this, (*(this + 60) + a3), (*(this + 61) + a4), 0.0);
  if (a5)
  {
    (*(*this + 112))(this, a5);
  }

  return v9;
}

uint64_t HGHandler::TexOffset(HGHandler *this, int a2, int a3, int a4)
{
  v7 = (*(*this + 80))(this);
  (*(*this + 96))(this, (*(this + 60) + a3), (*(this + 61) + a4), 0.0);
  (*(*this + 104))(this, 0.0, 0.0, 0.0);
  return v7;
}

__n128 HGHandler::LoadModelViewMatrix(HGHandler *this, const simd::float4x4 *a2)
{
  result = a2->columns[0];
  v3 = a2->columns[1];
  v4 = a2->columns[3];
  *(this + 3) = a2->columns[2];
  *(this + 4) = v4;
  *(this + 1) = result;
  *(this + 2) = v3;
  return result;
}

__n128 HGHandler::LoadProjectionMatrix(HGHandler *this, const simd::float4x4 *a2)
{
  result = a2->columns[0];
  v3 = a2->columns[1];
  v4 = a2->columns[3];
  *(this + 7) = a2->columns[2];
  *(this + 8) = v4;
  *(this + 5) = result;
  *(this + 6) = v3;
  return result;
}

void *HGLinearFilter2D::operator=(void *result, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(result + 1) = v3;
  if ((*(a2 + 28) & 2) != 0)
  {
    v5 = HIDWORD(v3) * DWORD2(v3);
    if (*(result + 6) < HIDWORD(v3) * DWORD2(v3))
    {
      if ((*(result + 28) & 2) != 0 && *result)
      {
        v6 = result;
        MEMORY[0x2666E9ED0](*result);
        result = v6;
      }

      *(result + 6) = v5;
      operator new[]();
    }

    if (v5 >= 1)
    {
      v7 = 0;
      do
      {
        *(*result + v7) = *(*a2 + v7);
        v7 += 16;
      }

      while (16 * (HIDWORD(v3) * DWORD2(v3)) != v7);
    }

    *(result + 7) = *(a2 + 28);
  }

  else
  {
    if ((*(result + 28) & 2) != 0)
    {
      if (*result)
      {
        v4 = result;
        MEMORY[0x2666E9ED0](*result, 0x1000C80451B5BE8);
        result = v4;
      }

      *result = 0;
      *(result + 6) = 0;
    }

    *result = *a2;
    *(result + 7) = *(a2 + 28);
  }

  return result;
}

BOOL HGLinearFilter2D::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 20);
  if (v3 != *(a2 + 20))
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  if ((*(a1 + 28) & *(a2 + 28) & 2) == 0)
  {
    return 0;
  }

  v6 = (v3 * v2);
  if (v6 < 1)
  {
    return 1;
  }

  v7 = vmvnq_s8(vceqq_f32(*v4, *v5));
  *v7.i8 = vpmin_s32(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  if (vpmin_s32(*v7.i8, *v7.i8).u32[0])
  {
    return 0;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (v6 == v9)
    {
      break;
    }

    v11 = vmvnq_s8(vceqq_f32(v4[v9], v5[v9]));
    *v11.i8 = vpmin_s32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    ++v9;
  }

  while (!vpmin_s32(*v11.i8, *v11.i8).u32[0]);
  return v10 >= v6;
}

BOOL HGLinearFilter2D::setType(HGLinearFilter2D *a1, unsigned int a2, int a3)
{
  if (a2 <= 0x39)
  {
    v3 = dword_260815308[a2];
    v4 = *(&off_279AA9000 + a2);
    v5 = dword_2608153F0[a2];
    v6 = (v5 - 1) >> 1;
    v7 = (v3 - 1) >> 1;
    if (a3 == 4)
    {
      v8 = *(a1 + 7);
      if ((v8 & 2) != 0 && *a1)
      {
        v9 = a1;
        v10 = a2;
        MEMORY[0x2666E9ED0](*a1, 0x1000C80451B5BE8);
        a1 = v9;
        a2 = v10;
        v8 = *(v9 + 7);
      }

      *(a1 + 4) = v5;
      *(a1 + 5) = v3;
      *a1 = v4;
      *(a1 + 7) = v8 & 0xFFFFFFFD;
      *(a1 + 2) = -v6;
      *(a1 + 3) = -v7;
    }

    else
    {
      v11 = *(a1 + 2);
      v12 = *(a1 + 3);
      if (v6 >= v11)
      {
        v13 = *(a1 + 2);
      }

      else
      {
        v13 = (v5 - 1) >> 1;
      }

      v14 = *(a1 + 5);
      v15 = v11 + *(a1 + 4);
      if (v7 >= v12)
      {
        v16 = *(a1 + 3);
      }

      else
      {
        v16 = (v3 - 1) >> 1;
      }

      v17 = v15 - 1;
      if (v5 - 1 + v6 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v5 - 1 + v6;
      }

      if (v3 - 1 + v7 <= v12 + v14 - 1)
      {
        v19 = v12 + v14 - 1;
      }

      else
      {
        v19 = v3 - 1 + v7;
      }

      v20 = a1;
      v21 = a2;
      HGLinearFilter2D::resize(a1, v13, v16, v18, v19, 0);
      a2 = v21;
      v23 = 0;
      v24 = *v20 + 16 * (v6 - *(v20 + 2) + (v7 - *(v20 + 3)) * *(v20 + 4));
      v25 = g_Mask[a3];
      do
      {
        v26 = 0;
        do
        {
          *(v24 + 16 * v26) = vbslq_s8(v25, *(v4 + 16 * v26), *(v24 + 16 * v26));
          ++v26;
        }

        while (v5 != v26);
        v24 += 16 * *(v20 + 4);
        ++v23;
        v4 += 16 * v5;
      }

      while (v23 != v3);
    }
  }

  return a2 < 0x3A;
}

HGLinearFilter2D *HGLinearFilter2D::HGLinearFilter2D(HGLinearFilter2D *a1, unsigned int a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  HGLinearFilter2D::setType(a1, a2, 4);
  return a1;
}

void HGLinearFilter2D::~HGLinearFilter2D(HGLinearFilter2D *this)
{
  if ((*(this + 28) & 2) != 0)
  {
    if (*this)
    {
      MEMORY[0x2666E9ED0](*this, 0x1000C80451B5BE8);
    }
  }
}

uint64_t HGLinearFilter2D::resize(HGLinearFilter2D *this, int a2, int a3, int a4, int a5, int a6)
{
  v7 = a4 - a2 + 1;
  v8 = a5 - a3 + 1;
  if (v7 < 1 || v8 < 1)
  {
    if ((*(this + 28) & 2) != 0 && *this)
    {
      MEMORY[0x2666E9ED0]();
    }

    v10 = 0;
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    v11 = v8 * v7;
    if (a6 || *(this + 2) != a2 || *(this + 3) != a3 || v7 != *(this + 4) || v8 != *(this + 5))
    {
      *(this + 6) = v11 + a6;
      operator new[]();
    }

    if ((*(this + 28) & 2) == 0)
    {
      *(this + 6) = v11;
      operator new[]();
    }

    if (v11 > *(this + 6))
    {
      *(this + 6) = v11;
      operator new[]();
    }

    return *this;
  }

  return v10;
}

int8x16_t HGLinearFilter2D::set(HGLinearFilter2D *this, int a2, int a3, int32x2_t a4, int a5)
{
  v6 = a3;
  v7 = a2;
  if (!*this)
  {
    *(this + 6) = 1;
    operator new[]();
  }

  v9 = *(this + 2);
  v10 = *(this + 3);
  if (a2 >= v9)
  {
    a2 = *(this + 2);
  }

  v12 = v9 + *(this + 4);
  if (a3 >= v10)
  {
    a3 = *(this + 3);
  }

  v13 = v12 - 1;
  if (v7 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  v11 = *(this + 5);
  if (v6 <= v10 + v11 - 1)
  {
    v15 = v10 + v11 - 1;
  }

  else
  {
    v15 = v6;
  }

  HGLinearFilter2D::resize(this, a2, a3, v14, v15, 0);
  v16 = 16 * (v7 - *(this + 2) + (v6 - *(this + 3)) * *(this + 4));
  result = vbslq_s8(g_Mask[a5], vdupq_lane_s32(a4, 0), *(*this + v16));
  *(*this + v16) = result;
  return result;
}

uint64_t HGLinearFilter2D::reset(uint64_t this, int a2, int a3)
{
  v3 = this;
  if (a2 && a3)
  {
    v4 = a3 * a2;
    if (*(this + 20) * *(this + 16) != a3 * a2)
    {
      if ((*(this + 28) & 2) != 0)
      {
        if (*this)
        {
          MEMORY[0x2666E9ED0]();
        }
      }

      *(v3 + 24) = v4;
      operator new[]();
    }

    *(this + 8) = 0;
    *(this + 16) = a2;
    *(this + 20) = a3;
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = (*this + v5);
        *v6 = 0;
        v6[1] = 0;
        v5 += 16;
      }

      while (16 * (a3 * a2) != v5);
    }
  }

  else
  {
    if ((*(this + 28) & 2) != 0)
    {
      this = *this;
      if (*v3)
      {
        this = MEMORY[0x2666E9ED0]();
      }
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  return this;
}

_DWORD *HGLinearFilter2D::translate(_DWORD *this, int a2, int a3)
{
  if (a3 | a2)
  {
    this[7] &= ~1u;
  }

  v3 = this[3] + a3;
  this[2] += a2;
  this[3] = v3;
  return this;
}

uint64_t HGLinearFilter2D::transpose(uint64_t this)
{
  if (*this)
  {
    *(this + 24) = *(this + 20) * *(this + 16);
    operator new[]();
  }

  return this;
}

int *HGLinearFilter2D::mirror(int *this, int a2, int a3)
{
  if ((this[7] & 2) == 0)
  {
    v5 = this;
    HGLinearFilter2D::resize(this, this[2], this[3], this[2] + this[4] - 1, this[3] + this[5] - 1, 0);
    this = v5;
  }

  if (a3)
  {
    if (a2)
    {
      v6 = 0;
      v7 = *this;
      v9 = this[4];
      v8 = this[5];
      v10 = *this + 16 * (v8 - 1) * v9;
      if (v9 >= 2)
      {
        goto LABEL_6;
      }

LABEL_10:
      LODWORD(v11) = 0;
      if (v9 != 1)
      {
        goto LABEL_12;
      }

LABEL_11:
      v16 = 16 * v11;
      v17 = *(v7 + v16);
      v18 = 16 * v11;
      *(v7 + v16) = *(v10 + v18);
      *(v10 + v18) = v17;
LABEL_12:
      while (v6 != --v8)
      {
        ++v6;
        v9 = this[4];
        if (v6 == v8)
        {
          goto LABEL_34;
        }

        v19 = 16 * v9;
        v7 += v19;
        v10 -= v19;
        if (v9 < 2)
        {
          goto LABEL_10;
        }

LABEL_6:
        v11 = 0;
        v12 = (v10 + 16 * v9 - 16);
        v13 = v9 - 2;
        do
        {
          v14 = *(v7 + 16 * v11);
          *(v7 + 16 * v11) = *v12;
          *v12-- = v14;
        }

        while (++v11 < v13--);
        if (v11 == ~v11 + v9)
        {
          goto LABEL_11;
        }
      }

      v9 = this[4];
LABEL_34:
      v38 = 1 - (this[3] + this[5]);
      this[2] = 1 - (this[2] + v9);
      this[3] = v38;
    }

    else
    {
      v27 = this[5];
      if (v27 >= 2)
      {
        v28 = this[4];
        if (v28 >= 1)
        {
          v29 = 0;
          v30 = v27 - 1;
          v31 = *this;
          v32 = *this + 16 * (v30 * v28);
          do
          {
            if (v28 < 1)
            {
              v33 = v28;
            }

            else
            {
              v35 = 0;
              do
              {
                v36 = 16 * v35;
                v37 = *(v31 + 16 * v35);
                *(v31 + v36) = *(v32 + 16 * v35);
                *(v32 + v36) = v37;
                ++v35;
                v33 = this[4];
              }

              while (v35 < v33);
              v28 = this[4];
            }

            v34 = 16 * v33;
            v31 += v34;
            v32 -= v34;
            ++v29;
            --v30;
          }

          while (v29 < v30);
          v27 = this[5];
        }
      }

      this[3] = 1 - (this[3] + v27);
    }
  }

  else if (a2)
  {
    v20 = this[5];
    if (v20 <= 0)
    {
      v23 = this[4];
    }

    else
    {
      v21 = 0;
      v22 = *this;
      v23 = this[4];
      do
      {
        if (v23 >= 2)
        {
          v24 = 0;
          v25 = v23 - 1;
          do
          {
            v26 = *(v22 + 16 * v24);
            *(v22 + 16 * v24) = *(v22 + 16 * v25);
            *(v22 + 16 * v25) = v26;
            ++v24;
            --v25;
          }

          while (v24 < v25);
          v23 = this[4];
          v20 = this[5];
        }

        v22 += 16 * v23;
        ++v21;
      }

      while (v21 < v20);
    }

    this[2] = 1 - v23 - this[2];
  }

  return this;
}

uint64_t HGLinearFilter2D::normalize(uint64_t result, unsigned int a2, float32x4_t a3)
{
  v3 = *(result + 20);
  v4 = 0uLL;
  if (v3 >= 1)
  {
    v5 = *(result + 16);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = *result;
      v8 = 16 * v5;
      do
      {
        v9 = 0;
        do
        {
          v4 = vaddq_f32(v4, v7[v9 / 0x10]);
          v9 += 16;
        }

        while (v8 != v9);
        ++v6;
        v7 = (v7 + v8);
      }

      while (v6 != v3);
    }
  }

  if (v3 >= 1)
  {
    v10 = *(result + 16);
    if (v10 >= 1)
    {
      v11 = 0;
      __asm { FMOV            V3.4S, #1.0 }

      v17.i64[0] = 0x80000000800000;
      v17.i64[1] = 0x80000000800000;
      v18 = vmaxq_f32(vaddq_f32(v4, vandq_s8(_Q3, vceqzq_f32(v4))), v17);
      v19 = vnegq_f32(v17);
      v20 = vminq_f32(v18, v19);
      v21 = vminq_f32(vmaxq_f32(vrecpeq_f32(v20), v17), v19);
      v22 = vmulq_f32(v21, vrecpsq_f32(v20, v21));
      v23 = g_Mask[a2];
      v24 = vminq_f32(vmaxq_f32(v22, v17), v19);
      v25 = vmulq_f32(vmulq_f32(v24, vrecpsq_f32(v20, v24)), a3);
      v26 = *result;
      do
      {
        while (v10 < 1)
        {
          v26 += v10;
          if (++v11 >= v3)
          {
            return result;
          }
        }

        v27 = 0;
        v28 = v26;
        do
        {
          *v28 = vbslq_s8(v23, vmulq_f32(v25, *v28), *v28);
          ++v28;
          ++v27;
          v29 = *(result + 16);
        }

        while (v27 < v29);
        v3 = *(result + 20);
        v10 = *(result + 16);
        v26 += v29;
        ++v11;
      }

      while (v11 < v3);
    }
  }

  return result;
}

HGLinearFilter2D *HGLinearFilter2D::convolve(HGLinearFilter2D *this, const HGLinearFilter2D *a2)
{
  if (*this && *a2)
  {
    v2 = *(a2 + 7);
    if (v2)
    {
      return HGLinearFilter2D::correlate(this, a2);
    }

    else
    {
      v3 = this;
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = 0;
      v8 = v2;
      HGLinearFilter2D::mirror(&v5, 1, 1);
      HGLinearFilter2D::correlate(v3, &v5);
      if (*&v5 == *a2)
      {
        HGLinearFilter2D::mirror(&v5, 1, 1);
      }

      else if ((v8 & 2) != 0 && *&v5)
      {
        MEMORY[0x2666E9ED0]();
        return v3;
      }

      return v3;
    }
  }

  return this;
}

void sub_25FC7C168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  if ((a13 & 2) != 0)
  {
    HGLinearFilter2D::convolve(&a9);
  }

  _Unwind_Resume(exception_object);
}

HGLinearFilter2D *HGLinearFilter2D::correlate(int32x2_t *this, int32x2_t *a2)
{
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = *&a2[2] - 1;
    v6 = v5 + this[2].i32[0];
    v7 = HIDWORD(*&a2[2]) - 1;
    v8 = v7 + this[2].i32[1];
    v9 = this[1];
    v10 = vadd_s32(vsub_s32(v9, vadd_s32(a2[2], a2[1])), 0x100000001);
    v11 = HGLinearFilter2D::resize(this, v9.i32[0] - v5, v9.i32[1] - v7, v6 + v9.i32[0] - 1, v8 + v9.i32[1] - 1, v8 * v6);
    v12 = this[2].i32[0];
    v13 = this[1].i32[0] + this[1].i32[1] * v12;
    v14 = *this;
    v32 = 0;
    v33 = v6;
    v34 = v8;
    v35 = v14;
    v36 = v6;
    v37 = v11 + 16 * -v13;
    v38 = v12;
    v15 = *a2;
    v16 = a2[2].u32[0];
    v17 = a2[2].i32[1];
    v31 = v6;
    v30 = v14;
    if (v16 < 2)
    {
      if (v17 < 7)
      {
        (cy[v17])(&v32, v15, v13);
      }

      else
      {
        v22 = (off_287222FE8[0])(&v32, v15, v13);
        v23 = v17 - v22;
        if (v17 - v22 >= 7)
        {
          v24 = off_287223028[0];
          do
          {
            v22 += v24(&v32, &v15[v22], v13 + v22 * v12);
            v23 = v17 - v22;
          }

          while (v17 - v22 > 6);
        }

        (caddy[v23])(&v32, &v15[v22], v13 + v22 * v12);
      }

      goto LABEL_27;
    }

    if (v16 < 7)
    {
      (cx[v16])(&v32, v15, v13);
      v21 = v17 - 1;
      if (!v21)
      {
LABEL_27:
        *this = v30;
        this[2].i32[0] = v31;
        this[2].i32[1] = v8;
        this[1] = v10;
        this[3].i32[1] = this[3].i32[1] & a2[3].i32[1] & 1 | 2;
        return this;
      }
    }

    else
    {
      LODWORD(v18) = (off_287222F68[0])(&v32, v15, v13);
      v19 = v16 - v18;
      if (v16 - v18 >= 7)
      {
        v20 = off_287222FA8[0];
        do
        {
          v18 = v20(&v32, &v15[v18], v18 + v13) + v18;
          v19 = v16 - v18;
        }

        while (v16 - v18 > 6);
      }

      (caddx[v19])(&v32, &v15[v18], v18 + v13);
      v21 = v17 - 1;
      if (!v21)
      {
        goto LABEL_27;
      }
    }

    if (v16 < 7)
    {
      v27 = caddx[v16];
      v28 = v12 + v13;
      do
      {
        v15 += a2[2].i32[0];
        (v27)(&v32, v15, v28);
        v28 += v12;
        --v21;
      }

      while (v21);
    }

    else
    {
      v25 = off_287222FA8[0];
      do
      {
        v26 = 0;
        v13 += v12;
        v15 += a2[2].i32[0];
        do
        {
          v26 += v25(&v32, &v15[v26], v26 + v13);
        }

        while (v16 - v26 > 6);
        (caddx[v16 - v26])(&v32, &v15[v26], v26 + v13);
        --v21;
      }

      while (v21);
    }

    goto LABEL_27;
  }

  return this;
}

float HGLinearFilter::rect(HGLinearFilter *this, float a2, float a3, float a4)
{
  v4 = fabsf(a2) < 1.0;
  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

float HGLinearFilter::bicubic(HGLinearFilter *this, float a2, float a3, float a4)
{
  v4 = fabsf(a2);
  if (v4 < 1.0)
  {
    return ((a3 * -0.33333) + 1.0) + (v4 * ((v4 * (((a3 + a3) + a4) + -3.0)) + (v4 * (v4 * (((a3 * -1.5) + 2.0) - a4)))));
  }

  result = 0.0;
  if (v4 < 2.0)
  {
    return ((a3 * 1.3333) + (a4 * 4.0)) + (v4 * (((a4 * -8.0) - (a3 + a3)) + (v4 * ((v4 * ((a3 * -0.16667) - a4)) + ((a4 * 5.0) + a3)))));
  }

  return result;
}

float HGLinearFilter::lanczos(HGLinearFilter *this, float a2, float a3, float a4)
{
  v4 = 0.0;
  if (fabsf(a2) < a3)
  {
    v5 = a2 * 3.1416;
    v6 = 1.0;
    v7 = 1.0;
    if (((v5 * v5) + 1.0) != 1.0)
    {
      v8 = a2;
      v9 = a3;
      v10 = sinf(a2 * 3.1416);
      a3 = v9;
      v11 = v10;
      a2 = v8;
      v7 = v11 / v5;
    }

    v12 = (a2 / a3) * 3.1416;
    if (((v12 * v12) + 1.0) != 1.0)
    {
      v6 = sinf(v12) / v12;
    }

    return v7 * v6;
  }

  return v4;
}

uint64_t HGLinearFilter2D::convolve(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x2666E9ED0](result, 0x1000C80451B5BE8);
  }

  return result;
}

void *HGLUTCache::LUTEntry::LUTEntry(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_287219CA0;
  a1[1] = (*(*a2 + 16))(a2);
  a1[2] = a3;
  return a1;
}

void HGLUTCache::LUTEntry::~LUTEntry(HGLUTCache::LUTEntry *this)
{
  *this = &unk_287219CA0;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

BOOL HGLUTCache::isLUTCached(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    while (((*(*a2 + 24))(a2, *(*v3 + 8)) & 1) == 0)
    {
      v3 += 8;
      if (v3 == v4)
      {
        v3 = v4;
        break;
      }
    }

    v4 = *(*(a1 + 8) + 8);
  }

  return v3 != v4;
}

uint64_t HGLUTCache::getNewLUT(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    while (((*(*a2 + 24))(a2, *(*v5 + 8)) & 1) == 0)
    {
      v5 += 8;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = *(*(a1 + 8) + 8);
  }

  if (v5 == v6)
  {
    v9 = (*(**(a1 + 16) + 16))(*(a1 + 16), a2, *a1);
    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](*(a1 + 8), &v9);
    return (*(*v9 + 16))(v9);
  }

  else
  {
    v7 = *(**v5 + 16);

    return v7();
  }
}

void *HGLUTCacheManager::HGLUTCacheManager(void *result, uint64_t a2)
{
  result[3] = 0;
  result[2] = 0;
  *result = a2;
  result[1] = result + 2;
  return result;
}

void HGLUTCacheManager::clear(HGLUTCacheManager *this)
{
  while (*(this + 3))
  {
    v3 = *(this + 1);
    v4 = v3[5];
    if (v4)
    {
LABEL_5:
      v5 = *(v4 + 8);
      v6 = *v5;
      while (1)
      {
        v7 = *(v5 + 8);
        if (v6 == v7)
        {
          break;
        }

        v8 = *(v7 - 1);
        *(v5 + 8) = v7 - 1;
        if (v8)
        {
          (*(*v8 + 8))(v8);
          goto LABEL_5;
        }
      }

      if (v6)
      {
        *(v5 + 8) = v6;
        operator delete(v6);
      }

      MEMORY[0x2666E9F00](v5, 0x80C40D6874129);
      MEMORY[0x2666E9F00](v4, 0x20C40960023A9);
    }

    v9 = v3[1];
    v10 = v3;
    if (v9)
    {
      do
      {
        v11 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v11 = v10[2];
        v12 = *v11 == v10;
        v10 = v11;
      }

      while (!v12);
    }

    if (*(this + 1) == v3)
    {
      *(this + 1) = v11;
    }

    v2 = *(this + 2);
    --*(this + 3);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v2, v3);
    operator delete(v3);
  }
}

uint64_t HGLUTCacheManager::getLUTCache(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v5 <= a2)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!v4[5])
  {
    operator new();
  }

  v6 = *v3;
  if (!*v3)
  {
LABEL_16:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      v8 = v6[4];
      if (v8 <= a2)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_16;
      }
    }

    if (v8 >= a2)
    {
      return v7[5];
    }

    v6 = v7[1];
    if (!v6)
    {
      goto LABEL_16;
    }
  }
}

void HGGradientLinear::HGGradientLinear(HGGradientLinear *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287219CD8;
  *(v2 + 416) = 0;
  HGNode::SetFlags(v2, 0, 5);
  *(this + 4) |= 0x621u;
  *(this + 102) = 3;
}

void sub_25FC7CDB8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 416);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGGradientLinear::~HGGradientLinear(HGGradientLinear *this)
{
  *this = &unk_287219CD8;
  v1 = *(this + 52);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 52));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGGradientLinear::~HGGradientLinear(HGNode *this)
{
  *this = &unk_287219CD8;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGGradientLinear::GetOutput(HGNode *this, HGRenderer *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  Input = HGRenderer::GetInput(a2, this, 0);
  if (!(*(*a2 + 304))(a2) || (DOD = HGRenderer::GetDOD(a2, Input), (HIDWORD(v6) - HIDWORD(DOD)) > 1))
  {
    (*(*this + 104))(this, 3, &v48);
    (*(*this + 104))(this, 4, &v45);
    (*(*this + 104))(this, 5, &v42);
    v10 = *&v48.var0 == 1.0;
    if (*&v48.var1 != 0.0)
    {
      v10 = 0;
    }

    v9.n128_f32[0] = v42;
    v8.n128_f32[0] = v43;
    v7.n128_f32[0] = v44;
    if (v10 && *&v48.var3 == 0.0 && v45 == 0.0 && v46 == 1.0 && v47 == 0.0 && v42 == 0.0 && v43 == 0.0 && v44 == 1.0)
    {
      v11 = 0;
LABEL_33:
      *(this + 102) = v11;
      (*(*this + 104))(this, 0, v41, v7, v8, v9);
      (*(*this + 104))(this, 1, &v37);
      (*(*this + 104))(this, 2, &v36);
      v21 = (v41[0] * *v36.i32) - (v37 * v41[0]);
      *v22.i32 = 1.0 / ((((v21 * v21) + ((*&v36.i32[1] - v38) * (*&v36.i32[1] - v38))) + ((*&v36.i32[2] - v39) * (*&v36.i32[2] - v39))) + ((*&v36.i32[3] - v40) * (*&v36.i32[3] - v40)));
      v41[0] = v37 * v41[0];
      v41[1] = v38;
      v41[2] = v39;
      v41[3] = v40;
      v37 = v21;
      v38 = *&v36.i32[1] - v38;
      v39 = *&v36.i32[2] - v39;
      v40 = *&v36.i32[3] - v40;
      v36 = vdupq_lane_s32(v22, 0);
      (*(*this + 96))(this, 0);
      (*(*this + 96))(this, 1, v37, v38, v39, v40);
      (*(*this + 96))(this, 2, *v36.i32, *&v36.i32[1], *&v36.i32[2], *(&v36 | 0xC));
      v23 = *(this + 102) - 1;
      if (v23 > 2)
      {
        v24 = 3;
      }

      else
      {
        v24 = dword_260815504[v23];
      }

      (*(*this + 96))(this, v24, 0.99708, 0.001462, 0.0, 0.0);
      v25 = *(this + 102);
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v29 = HGObject::operator new(0x1A0uLL);
          HgcGradientLinearAffine::HgcGradientLinearAffine(v29);
        }

        if (v25 == 3)
        {
          v27 = HGObject::operator new(0x1A0uLL);
          HgcGradientLinearPerspective::HgcGradientLinearPerspective(v27);
        }
      }

      else
      {
        if (!v25)
        {
          v28 = HGObject::operator new(0x1A0uLL);
          HgcGradientLinearIdentity::HgcGradientLinearIdentity(v28);
        }

        if (v25 == 1)
        {
          v26 = HGObject::operator new(0x1A0uLL);
          HgcGradientLinearTranslate::HgcGradientLinearTranslate(v26);
        }
      }

      (*(**(this + 52) + 120))(*(this + 52), 0, Input);
      (*(*this + 104))(this, 0, &v32);
      (*(**(this + 52) + 96))(*(this + 52), 0, v32, v33, v34, v35);
      (*(*this + 104))(this, 1, &v32);
      (*(**(this + 52) + 96))(*(this + 52), 1, v32, v33, v34, v35);
      (*(*this + 104))(this, 2, &v32);
      (*(**(this + 52) + 96))(*(this + 52), 2, v32, v33, v34, v35);
      (*(*this + 104))(this, 3, &v32);
      (*(**(this + 52) + 96))(*(this + 52), 3, v32, v33, v34, v35);
      (*(*this + 104))(this, 4, &v32);
      (*(**(this + 52) + 96))(*(this + 52), 4, v32, v33, v34, v35);
      (*(*this + 104))(this, 5, &v32);
      (*(**(this + 52) + 96))(*(this + 52), 5, v32, v33, v34, v35);
      (*(*this + 104))(this, 6, &v32);
      (*(**(this + 52) + 96))(*(this + 52), 6, v32, v33, v34, v35);
      return *(this + 52);
    }

    if (v45 != 0.0)
    {
      v10 = 0;
    }

    if (v10 && v46 == 1.0)
    {
      if (v42 != 0.0)
      {
        goto LABEL_32;
      }

      if (v43 == 0.0 && v44 == 1.0)
      {
        v11 = 1;
        goto LABEL_33;
      }
    }

    if (v42 == 0.0 && v43 == 0.0)
    {
      v8.n128_u32[0] = 1.0;
      if (v44 == 1.0)
      {
        v11 = 2;
        goto LABEL_33;
      }
    }

LABEL_32:
    v11 = 3;
    goto LABEL_33;
  }

  v13 = DOD;
  v14 = v6;
  v15 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v15);
  HGTextureWrap::SetTextureWrapMode(v15, 3, v16);
  v17 = HGRectMake4i(0, 0, 0, 1u);
  *&v48.var0 = HGRectGrow(v13, v14, v17);
  *&v48.var2 = v18;
  HGTextureWrap::SetCropRect(v15, &v48);
  (*(*v15 + 120))(v15, 0, Input);
  v19 = HGObject::operator new(0x1B0uLL);
  HGNode::HGNode(v19);
  *v19 = &unk_287219CD8;
  *(v19 + 52) = 0;
  HGNode::SetFlags(v19, 0, 5);
  *(v19 + 4) |= 0x621u;
  *(v19 + 102) = 3;
  v20 = *(this + 52);
  if (v20 == v19)
  {
    (*(*v19 + 24))(v19);
    v19 = *(this + 52);
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 24))(v20);
    }

    *(this + 52) = v19;
  }

  (*(*v19 + 120))(v19, 0, v15);
  (*(*this + 104))(this, 0, &v48);
  (*(**(this + 52) + 96))(*(this + 52), 0, *&v48.var0, *&v48.var1, *&v48.var2, *&v48.var3);
  (*(*this + 104))(this, 1, &v48);
  (*(**(this + 52) + 96))(*(this + 52), 1, *&v48.var0, *&v48.var1, *&v48.var2, *&v48.var3);
  (*(*this + 104))(this, 2, &v48);
  (*(**(this + 52) + 96))(*(this + 52), 2, *&v48.var0, *&v48.var1, *&v48.var2, *&v48.var3);
  (*(*this + 104))(this, 3, &v48);
  (*(**(this + 52) + 96))(*(this + 52), 3, *&v48.var0, *&v48.var1, *&v48.var2, *&v48.var3);
  (*(*this + 104))(this, 4, &v48);
  (*(**(this + 52) + 96))(*(this + 52), 4, *&v48.var0, *&v48.var1, *&v48.var2, *&v48.var3);
  (*(*this + 104))(this, 5, &v48);
  (*(**(this + 52) + 96))(*(this + 52), 5, *&v48.var0, *&v48.var1, *&v48.var2, *&v48.var3);
  (*(*this + 104))(this, 6, &v48);
  (*(**(this + 52) + 96))(*(this + 52), 6, *&v48.var0, *&v48.var1, *&v48.var2, *&v48.var3);
  v31 = *(this + 52);
  (*(*v15 + 24))(v15);
  return v31;
}

void sub_25FC7DD24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const char *HGGradientLinear::label_B(HGGradientLinear *this)
{
  v1 = *(this + 102);
  if (v1 > 2)
  {
    return "kXFormPerspective";
  }

  else
  {
    return off_279AA91D0[v1];
  }
}

void HGGradientLinear::info(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void HGMetalHandler::HGMetalHandler(HGMetalHandler *this, HGMetalContext *a2)
{
  HGHandler::HGHandler(this);
  *v4 = &unk_287219F40;
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  *(this + 31) = a2;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 35) = this + 288;
  *(this + 36) = 0;
  *(this + 122) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 37) = 0;
  *(this + 320) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  HGEdgePolicy::HGEdgePolicy((this + 508));
  HGEdgePolicy::HGEdgePolicy((this + 540));
  HGEdgePolicy::HGEdgePolicy((this + 572));
  HGEdgePolicy::HGEdgePolicy((this + 604));
  HGEdgePolicy::HGEdgePolicy((this + 636));
  HGEdgePolicy::HGEdgePolicy((this + 668));
  HGEdgePolicy::HGEdgePolicy((this + 700));
  HGEdgePolicy::HGEdgePolicy((this + 732));
  bzero(this + 752, 0x270uLL);
  *(this + 350) = 1;
  *(this + 183) = 0;
  *(this + 88) = 0u;
  *(this + 89) = 0u;
  *(this + 90) = 0u;
  *(this + 1456) = 0;
  *(this + 184) = 1;
  *(this + 370) = 1;
  *(this + 1484) = 0u;
  *(this + 375) = 0;
  *(this + 188) = 1;
  *(this + 378) = 1;
  *(this + 1516) = 0u;
  *(this + 383) = 0;
  *(this + 192) = 1;
  *(this + 386) = 1;
  *(this + 391) = 0;
  *(this + 1548) = 0u;
  *(this + 196) = 1;
  *(this + 394) = 1;
  *(this + 399) = 0;
  *(this + 1580) = 0u;
  *(this + 200) = 1;
  *(this + 402) = 1;
  *(this + 407) = 0;
  *(this + 1612) = 0u;
  *(this + 204) = 1;
  *(this + 410) = 1;
  *(this + 415) = 0;
  *(this + 1644) = 0u;
  *(this + 208) = 1;
  *(this + 418) = 1;
  *(this + 423) = 0;
  *(this + 1676) = 0u;
  *(this + 106) = xmmword_26038F230;
  *(this + 214) = 0;
  *(this + 1744) = 0;
  *(this + 445) = 0;
  *(this + 1764) = 0u;
  *(this + 892) = 257;
  *(this + 1786) = 0;
  *(this + 112) = 0u;
  *(this + 226) = 850045863;
  *(this + 233) = 0;
  *(this + 1832) = 0u;
  *(this + 1848) = 0u;
  *(this + 1816) = 0u;
  *(this + 234) = 1018212795;
  *(this + 239) = 0;
  *(this + 1880) = 0u;
  *(this + 1896) = 0u;
  operator new();
}

void sub_25FC7E234()
{
  std::condition_variable::~condition_variable((v0 + 1872));
  std::mutex::~mutex((v0 + 1808));
  v2 = *(v0 + 1432);
  if (v2)
  {
    *(v0 + 1440) = v2;
    operator delete(v2);
    if ((*(v0 + 1367) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v0 + 1343) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v0 + 1367) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v0 + 1344));
  if ((*(v0 + 1343) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v0 + 1319) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v0 + 1320));
  if ((*(v0 + 1319) & 0x80000000) == 0)
  {
LABEL_5:
    v3 = *(v0 + 1288);
    if (!v3)
    {
LABEL_12:
      v4 = *(v0 + 464);
      if (v4)
      {
        (*(*v4 + 24))(v4);
      }

      v5 = *(v0 + 456);
      if (v5)
      {
        (*(*v5 + 24))(v5);
      }

      v6 = *(v0 + 448);
      if (v6)
      {
        (*(*v6 + 24))(v6);
      }

      v7 = *(v0 + 440);
      if (v7)
      {
        (*(*v7 + 24))(v7);
      }

      v8 = *(v0 + 432);
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      v9 = *(v0 + 424);
      if (v9)
      {
        (*(*v9 + 24))(v9);
      }

      v10 = *(v0 + 416);
      if (v10)
      {
        (*(*v10 + 24))(v10);
      }

      v11 = *(v0 + 408);
      if (v11)
      {
        (*(*v11 + 24))(v11);
      }

      v12 = *(v0 + 400);
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      v13 = *(v0 + 392);
      if (v13)
      {
        (*(*v13 + 24))(v13);
      }

      v14 = *(v0 + 384);
      if (v14)
      {
        (*(*v14 + 24))(v14);
      }

      v15 = *(v0 + 376);
      if (v15)
      {
        (*(*v15 + 24))(v15);
      }

      v16 = *(v0 + 368);
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }

      v17 = *(v0 + 360);
      if (v17)
      {
        (*(*v17 + 24))(v17);
      }

      v18 = *(v0 + 352);
      if (v18)
      {
        (*(*v18 + 24))(v18);
      }

      v19 = *(v0 + 344);
      if (v19)
      {
        (*(*v19 + 24))(v19);
      }

      v20 = *(v0 + 336);
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      if (*v1)
      {
        (*(**v1 + 24))(*v1);
      }

      std::__tree<HGNode *>::destroy(v0 + 280, *(v0 + 288));
      v21 = *(v0 + 248);
      if (v21)
      {
        (*(*v21 + 24))(v21);
      }

      JUMPOUT(0x25FC7E224);
    }

LABEL_11:
    (*(*v3 + 24))(v3);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(*(v0 + 1296));
  v3 = *(v0 + 1288);
  if (!v3)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void HGMetalHandler::~HGMetalHandler(HGMetalHandler *this)
{
  *this = &unk_287219F40;
  v2 = *(this + 39);
  if (v2)
  {
    HGMetalHandler::CommandEncoderCargo::~CommandEncoderCargo(v2);
    MEMORY[0x2666E9F00]();
  }

  v3 = *(this + 34);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x2666E9F00](v3, 0x80C40D6874129);
  }

  v5 = *(this + 159);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 176);
  if (v6)
  {
  }

  *(this + 176) = 0;
  v7 = *(this + 177);
  if (v7)
  {
  }

  *(this + 177) = 0;
  v8 = *(this + 178);
  if (v8)
  {
  }

  *(this + 178) = 0;
  v9 = *(this + 179);
  v10 = *(this + 180);
  if (v9 != v10)
  {
    do
    {
    }

    while (v9 != v10);
    v9 = *(this + 179);
  }

  *(this + 180) = v9;
  std::condition_variable::~condition_variable(this + 39);
  std::mutex::~mutex((this + 1808));
  v11 = *(this + 179);
  if (v11)
  {
    *(this + 180) = v11;
    operator delete(v11);
  }

  if (*(this + 1367) < 0)
  {
    operator delete(*(this + 168));
    if ((*(this + 1343) & 0x80000000) == 0)
    {
LABEL_22:
      if ((*(this + 1319) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      operator delete(*(this + 162));
      v12 = *(this + 161);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*(this + 1343) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(*(this + 165));
  if (*(this + 1319) < 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v12 = *(this + 161);
  if (v12)
  {
LABEL_28:
    (*(*v12 + 24))(v12);
  }

LABEL_29:
  v13 = *(this + 58);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v14 = *(this + 57);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = *(this + 56);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v16 = *(this + 55);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = *(this + 54);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  v18 = *(this + 53);
  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  v19 = *(this + 52);
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  v20 = *(this + 51);
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  v21 = *(this + 50);
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  v22 = *(this + 49);
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  v23 = *(this + 48);
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  v24 = *(this + 47);
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  v25 = *(this + 46);
  if (v25)
  {
    (*(*v25 + 24))(v25);
  }

  v26 = *(this + 45);
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  v27 = *(this + 44);
  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  v28 = *(this + 43);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  v29 = *(this + 42);
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  v30 = *(this + 41);
  if (v30)
  {
    (*(*v30 + 24))(v30);
  }

  std::__tree<HGNode *>::destroy(this + 280, *(this + 36));
  v32 = *(this + 31);
  if (v32)
  {
    (*(*v32 + 24))(v32);
  }

  OZChannelBase::setRangeName(this, v31);
}

{
  HGMetalHandler::~HGMetalHandler(this);

  JUMPOUT(0x2666E9F00);
}

HGBitmap *HGMetalHandler::BindBuffer(HGMetalHandler *this, HGBitmap *a2)
{
  HGMetalHandler::BindBuffer(this, 0, a2, 1);
  HGMetalHandler::BindBuffer(this, 1, 0, 1);
  HGMetalHandler::BindBuffer(this, 2, 0, 1);
  HGMetalHandler::BindBuffer(this, 3, 0, 1);
  HGMetalHandler::BindBuffer(this, 4, 0, 1);
  HGMetalHandler::BindBuffer(this, 5, 0, 1);
  HGMetalHandler::BindBuffer(this, 6, 0, 1);

  return HGMetalHandler::BindBuffer(this, 7, 0, 1);
}

HGBitmap *HGMetalHandler::BindBuffer(HGMetalHandler *this, HGBitmap *a2, const char *a3)
{
  HGMetalHandler::BindBuffer(this, 0, a2, a3);
  HGMetalHandler::BindBuffer(this, 1, 0, 1);
  HGMetalHandler::BindBuffer(this, 2, 0, 1);
  HGMetalHandler::BindBuffer(this, 3, 0, 1);
  HGMetalHandler::BindBuffer(this, 4, 0, 1);
  HGMetalHandler::BindBuffer(this, 5, 0, 1);
  HGMetalHandler::BindBuffer(this, 6, 0, 1);

  return HGMetalHandler::BindBuffer(this, 7, 0, 1);
}

HGBitmap *HGMetalHandler::BindBuffer(HGMetalHandler *this, int a2, HGBitmap *a3, const char *a4)
{
  v8 = *(this + 39);
  v9 = v8;
  if (*v8)
  {
    (*(**v8 + 24))(*v8);
    v9 = *(this + 39);
  }

  *v8 = 0;
  v10 = v9[1];
  v11 = v9;
  if (v10)
  {
    (*(*v10 + 24))(v10);
    v11 = *(this + 39);
  }

  v9[1] = 0;
  v12 = v11[2];
  v13 = v11;
  if (v12)
  {
    (*(*v12 + 24))(v12);
    v13 = *(this + 39);
  }

  v11[2] = 0;
  v14 = v13[3];
  v15 = v13;
  if (v14)
  {
    (*(*v14 + 24))(v14);
    v15 = *(this + 39);
  }

  v13[3] = 0;
  v16 = v15[4];
  v17 = v15;
  if (v16)
  {
    (*(*v16 + 24))(v16);
    v17 = *(this + 39);
  }

  v15[4] = 0;
  v18 = v17[5];
  v19 = v17;
  if (v18)
  {
    (*(*v18 + 24))(v18);
    v19 = *(this + 39);
  }

  v17[5] = 0;
  v20 = v19[6];
  v21 = v19;
  if (v20)
  {
    (*(*v20 + 24))(v20);
    v21 = *(this + 39);
  }

  v19[6] = 0;
  v22 = v21[7];
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  v21[7] = 0;
  if (a3)
  {
    LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(*(this + 31));
    result = HGMetalDeviceInfo::validateTextureSampleCount(LUTEnd, a4, v24);
    v26 = result;
    v27 = this + 328;
    if (*(this + a2 + 41) != a3 || result != *(this + 118))
    {
      HGMetalHandler::FinalizeCommandEncoder(this, *(*(this + 31) + 64), *(*(this + 31) + 72), *(*(this + 31) + 88));
      *(this + 118) = v26;
      (*(*a3 + 16))(a3);
      v28 = *&v27[8 * a2];
      if (v28 == a3)
      {
        (*(*a3 + 24))(a3);
      }

      else
      {
        if (v28)
        {
          (*(*v28 + 24))(v28);
        }

        *&v27[8 * a2] = a3;
      }

      v30 = HGGPURenderer::ConvertToMetalTexture(*(this + 18), a3);
      v31 = (this + 392);
      v32 = *(this + a2 + 49);
      if (v32 == v30)
      {
        if (v30)
        {
          (*(*v30 + 24))(v30);
        }
      }

      else
      {
        if (v32)
        {
          (*(*v32 + 24))(v32);
        }

        v31[a2] = v30;
      }

      *&v61.var0 = 0;
      *&v61.var2 = 0;
      NodeMetalTexture = HGGPURenderer::GetNodeMetalTexture(*(this + 18), 0, v61, 0, 1u);
      result = v31[a2];
      if (!result || result == NodeMetalTexture)
      {
        v48 = *&v27[8 * a2];
        if (v48)
        {
          (*(*v48 + 24))(*&v27[8 * a2]);
          result = v31[a2];
        }

        *&v27[8 * a2] = 0;
        if (result)
        {
          (*(*result + 24))(result);
        }

        v31[a2] = 0;
        *(this + 1785) = 0;
        result = HGLogger::warning("HGMetalHandler::BindBuffer -- null buffer target!!", v33, v34);
      }

      else
      {
        v36 = vcvt_f32_s32(*(result + 28));
        v37 = vcvt_f32_s32(*(result + 20));
        v38 = __PAIR64__(v36.u32[1], v37.u32[0]);
        v39 = vadd_f32(v36, v37);
        v36.i32[1] = v37.i32[1];
        __asm { FMOV            V1.2S, #1.0 }

        v45 = vdiv_f32(_D1, vsub_f32(v36, v38));
        v38.i32[0] = 0;
        *&v46 = v45.f32[0] + v45.f32[0];
        v38.f32[1] = v45.f32[1] + v45.f32[1];
        *&v47 = vmul_f32(v39, vneg_f32(v45));
        *(&v47 + 1) = 0x3F8000003F000000;
        *(this + 5) = v46;
        *(this + 6) = v38;
        *(this + 7) = xmmword_260815520;
        *(this + 8) = v47;
      }

      if (*(this + 1785) == 1 && *(this + 118) >= 2u)
      {
        v49 = *(this + 58);
        v50 = *(this + 49);
        if (v49 != v50)
        {
          if (v49)
          {
            (*(*v49 + 24))(*(this + 58));
            v50 = *v31;
          }

          *(this + 58) = v50;
          if (v50)
          {
            (*(*v50 + 16))(v50);
          }
        }

        v51 = *(this + 31);
        v52 = *(*(v51 + 2) + 16);
        v53 = HGMetalContext::texturePool(v51);
        TextureRect = HGMetalTexture::GetTextureRect(*(this + 58));
        HGMetalTexture::createMSAA(v52, v53, TextureRect, v55, *(*(this + 58) + 16), *(this + 118), &v60);
        v56 = *&v27[8 * a2];
        v57 = v60;
        if (v56 != v60)
        {
          if (v56)
          {
            (*(*v56 + 24))(v56);
            v57 = v60;
          }

          *&v27[8 * a2] = v57;
          if (v57)
          {
            (*(*v57 + 16))(v57);
            v57 = v60;
          }
        }

        v58 = HGGPURenderer::ConvertToMetalTexture(*(this + 18), v57);
        v59 = v31[a2];
        if (v59 == v58)
        {
          if (v58)
          {
            (*(*v58 + 24))(v58);
          }
        }

        else
        {
          if (v59)
          {
            (*(*v59 + 24))(v59);
          }

          v31[a2] = v58;
        }

        result = v60;
        if (v60)
        {
          result = (*(*v60 + 24))(v60);
        }
      }

      if (NodeMetalTexture)
      {
        return (*(*NodeMetalTexture + 24))(NodeMetalTexture);
      }
    }
  }

  else
  {
    v29 = *(this + a2 + 41);
    if (v29)
    {
      (*(*v29 + 24))(v29);
    }

    *(this + a2 + 41) = 0;
    result = *(this + a2 + 49);
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    *(this + a2 + 49) = 0;
  }

  return result;
}

void sub_25FC7F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  _Unwind_Resume(exception_object);
}

__n128 HGMetalHandler::BindTexture(HGMetalTexture ***this, int a2, HGBitmap *a3)
{
  if (a3)
  {
    *&v15.var0 = *(a3 + 20);
    *&v15.var2 = *(a3 + 28);
    v6 = HGGPURenderer::ConvertToMetalTexture(this[18], v15, a3, 0);
    v7 = this[39];
    v8 = v7[a2];
    if (v8 == v6)
    {
      if (v6)
      {
        (*(*v6 + 24))(v6);
      }
    }

    else
    {
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      v7[a2] = v6;
    }

    EdgePolicy = HGBitmap::GetEdgePolicy(a3);
    v13 = &this[4 * a2];
    v14 = EdgePolicy[1].n128_u32[0];
    result = *EdgePolicy;
    *(v13 + 508) = *EdgePolicy;
    *(v13 + 131) = v14;
  }

  else
  {
    v9 = this[39];
    v10 = v9[a2];
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    v9[a2] = 0;
  }

  return result;
}

void sub_25FC7F684(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

HGMetalHandler *HGMetalHandler::Reset(HGMetalHandler *this, HGRenderer *a2)
{
  HGHandler::Reset(this, a2);
  *(this + 124) = (*(*a2 + 128))(a2, 23);
  *(this + 125) = (*(*a2 + 128))(a2, 23);
  *(this + 504) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 508) = v14;
  *(this + 131) = v15;
  *(this + 132) = (*(*a2 + 128))(a2, 23);
  *(this + 133) = (*(*a2 + 128))(a2, 23);
  *(this + 536) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 540) = v14;
  *(this + 139) = v15;
  *(this + 140) = (*(*a2 + 128))(a2, 23);
  *(this + 141) = (*(*a2 + 128))(a2, 23);
  *(this + 568) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 572) = v14;
  *(this + 147) = v15;
  *(this + 148) = (*(*a2 + 128))(a2, 23);
  *(this + 149) = (*(*a2 + 128))(a2, 23);
  *(this + 600) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 604) = v14;
  *(this + 155) = v15;
  *(this + 156) = (*(*a2 + 128))(a2, 23);
  *(this + 157) = (*(*a2 + 128))(a2, 23);
  *(this + 632) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 636) = v14;
  *(this + 163) = v15;
  *(this + 164) = (*(*a2 + 128))(a2, 23);
  *(this + 165) = (*(*a2 + 128))(a2, 23);
  *(this + 664) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 668) = v14;
  *(this + 171) = v15;
  *(this + 172) = (*(*a2 + 128))(a2, 23);
  *(this + 173) = (*(*a2 + 128))(a2, 23);
  *(this + 696) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 700) = v14;
  *(this + 179) = v15;
  *(this + 180) = (*(*a2 + 128))(a2, 23);
  *(this + 181) = (*(*a2 + 128))(a2, 23);
  *(this + 728) = (*(*a2 + 128))(a2, 46) == 0;
  HGEdgePolicy::HGEdgePolicy(&v14);
  *(this + 732) = v14;
  *(this + 187) = v15;
  v4 = *(this + 58);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 58) = 0;
  }

  *(this + 118) = 1;
  *(this + 484) = 0;
  *(this + 476) = 0;
  v5 = *(this + 159);
  if (v5)
  {
    v6 = *(this + 158);
    if (v6)
    {
      bzero(v5, v6);
    }
  }

  v7 = *(this + 161);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  *(this + 161) = 0;
  *(this + 158) = 0;
  *(this + 492) = 0;
  v8 = *(this + 177);
  if (v8)
  {
  }

  *(this + 177) = 0;
  v9 = *(this + 178);
  if (v9)
  {
  }

  *(this + 178) = 0;
  v10 = *(this + 179);
  v11 = *(this + 180);
  if (v10 != v11)
  {
    do
    {
      v12 = *v10++;
    }

    while (v10 != v11);
    v10 = *(this + 179);
  }

  *(this + 180) = v10;
  *(this + 47) = xmmword_2603429B0;
  *(this + 48) = xmmword_2603429C0;
  *(this + 49) = xmmword_2603429D0;
  *(this + 50) = xmmword_2603427D0;
  *(this + 51) = xmmword_2603429B0;
  *(this + 52) = xmmword_2603429C0;
  *(this + 53) = xmmword_2603429D0;
  *(this + 54) = xmmword_2603427D0;
  *(this + 55) = xmmword_2603429B0;
  *(this + 56) = xmmword_2603429C0;
  *(this + 57) = xmmword_2603429D0;
  *(this + 58) = xmmword_2603427D0;
  *(this + 59) = xmmword_2603429B0;
  *(this + 60) = xmmword_2603429C0;
  *(this + 61) = xmmword_2603429D0;
  *(this + 62) = xmmword_2603427D0;
  *(this + 63) = xmmword_2603429B0;
  *(this + 64) = xmmword_2603429C0;
  *(this + 65) = xmmword_2603429D0;
  *(this + 66) = xmmword_2603427D0;
  *(this + 67) = xmmword_2603429B0;
  *(this + 68) = xmmword_2603429C0;
  *(this + 69) = xmmword_2603429D0;
  *(this + 70) = xmmword_2603427D0;
  *(this + 71) = xmmword_2603429B0;
  *(this + 72) = xmmword_2603429C0;
  *(this + 73) = xmmword_2603429D0;
  *(this + 74) = xmmword_2603427D0;
  *(this + 75) = xmmword_2603429B0;
  *(this + 76) = xmmword_2603429C0;
  *(this + 77) = xmmword_2603429D0;
  *(this + 78) = xmmword_2603427D0;
  *(this + 1456) = 0;
  if (*(this + 1319) < 0)
  {
    operator delete(*(this + 162));
  }

  strcpy(this + 1296, "HGMetalHandler");
  *(this + 1319) = 14;
  *(this + 892) = 257;
  return this;
}

HGMetalHandler *HGMetalHandler::InitTextureUnit(HGMetalHandler *this, HGRect a2, int a3)
{
  v4 = *(this + 39);
  v5 = *(v4 + 8 * a3);
  if (v5)
  {
    v6 = *&a2.var2;
    v7 = *&a2.var0;
    v8 = *(v5 + 20);
    v9 = *(v5 + 28);
    *&v14.var0 = HGMetalTexture::GetTextureRect(*(v4 + 8 * a3));
    *&v14.var2 = v10;
    *&v12.var0 = v7;
    *&v12.var2 = v6;
    *&v13.var0 = v8;
    *&v13.var2 = v9;
    HGHandler::InitTexture(this, 0, v12, v13, v14, -*(v5 + 20), -*(v5 + 24));
  }

  return this;
}

uint64_t HGMetalHandler::SetFilter(uint64_t this, int a2, int a3)
{
  if (a2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a3 < 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  v5 = this + 32 * *(this + 476);
  *(v5 + 496) = v3;
  *(v5 + 500) = v4;
  return this;
}

__n128 HGMetalHandler::SetEdgePolicy(HGMetalHandler *this, const HGEdgePolicy *a2)
{
  v2 = this + 32 * *(this + 119);
  result = *a2;
  *(v2 + 131) = *(a2 + 4);
  *(v2 + 508) = result;
  return result;
}

uint64_t HGMetalHandler::SetParamBufferDesc(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 1288);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 1288) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

uint64_t HGMetalHandler::ActiveTexture(HGMetalHandler *this, int a2)
{
  v2 = (*(this + 44) + a2);
  *(this + 119) = v2;
  return v2;
}

uint64_t HGMetalHandler::ActiveTextureMatrix(HGMetalHandler *this, int a2)
{
  v2 = (*(this + 40) + a2);
  *(this + 120) = v2;
  return v2;
}

double HGMetalHandler::LoadIdentity(HGMetalHandler *this)
{
  v1 = *(this + 120);
  v2 = (this + 64 * v1);
  v2[47] = xmmword_2603429B0;
  v2[48] = xmmword_2603429C0;
  result = 0.0;
  v2[49] = xmmword_2603429D0;
  v2[50] = xmmword_2603427D0;
  *(this + 121) |= 1 << v1;
  return result;
}

float32x4_t HGMetalHandler::Translate(HGMetalHandler *this, double a2, double a3, double a4)
{
  v4 = a2;
  v5 = a3;
  v6 = a4;
  v7 = *(this + 120);
  v8 = (this + 64 * v7);
  result = vaddq_f32(v8[50], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8[47], v4), v8[48], v5), v8[49], v6));
  v8[50] = result;
  *(this + 121) |= 1 << v7;
  return result;
}

float32x4_t HGMetalHandler::Scale(HGMetalHandler *this, double a2, double a3, double a4)
{
  v4 = a2;
  v5 = a3;
  v6 = a4;
  v7 = *(this + 120);
  v8 = (this + 64 * v7);
  result = vmulq_n_f32(v8[47], v4);
  v10 = vmulq_n_f32(v8[48], v5);
  v11 = vmulq_n_f32(v8[49], v6);
  v8[47] = result;
  v8[48] = v10;
  v8[49] = v11;
  *(this + 121) |= 1 << v7;
  return result;
}

float32x4_t HGMetalHandler::MultMatrix(HGMetalHandler *this, const double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  v14 = a2[12];
  v15 = a2[13];
  v16 = a2[14];
  v17 = a2[15];
  v18 = *(this + 120);
  v19 = (this + 64 * v18);
  v20 = v19[47];
  v21 = v19[48];
  v22 = v19[49];
  v23 = v19[50];
  result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v20, v2), v21, v3), v22, v4), v23, v5);
  v19[47] = result;
  v19[48] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v20, v6), v21, v7), v22, v8), v23, v9);
  v19[49] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v20, v10), v21, v11), v22, v12), v23, v13);
  v19[50] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v20, v14), v21, v15), v22, v16), v23, v17);
  *(this + 121) |= 1 << v18;
  return result;
}

float32x4_t HGMetalHandler::MultMatrix(HGMetalHandler *this, float *a2)
{
  v2 = *(this + 120);
  v3 = (this + 64 * v2);
  v4 = v3[47];
  v5 = v3[48];
  v6 = v3[49];
  v7 = v3[50];
  result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v4, *a2), v5, a2[1]), v6, a2[2]), v7, a2[3]);
  v9 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v4, a2[4]), v5, a2[5]), v6, a2[6]), v7, a2[7]);
  v10 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v4, a2[8]), v5, a2[9]), v6, a2[10]), v7, a2[11]);
  v11 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v4, a2[12]), v5, a2[13]), v6, a2[14]), v7, a2[15]);
  v3[47] = result;
  v3[48] = v9;
  v3[49] = v10;
  v3[50] = v11;
  *(this + 121) |= 1 << v2;
  return result;
}

uint64_t HGMetalHandler::LocalParameter(HGMetalHandler *this, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = a3;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  return (*(*this + 144))(this, a2, v7, 1);
}

uint64_t HGMetalHandler::LocalParametersBuffer(HGMetalHandler *this, void *a2, size_t a3, uint64_t a4)
{
  v4 = 0;
  if (!a2 || !a3)
  {
    return v4;
  }

  v5 = *(this + 43) + a4;
  v6 = v5 + a3;
  if (*(this + 160) <= v5 + a3)
  {
    v7 = a2;
    v8 = a3;
    v9 = this;
    v10 = *(this + 159);
    if (v10)
    {
      v13 = malloc_type_realloc(v10, (v6 & 0xFFFFFFFFFFFFFF80) + 128, 0xCE58CF24uLL);
      if (v13)
      {
LABEL_6:
        a3 = v8;
        a2 = v7;
        this = v9;
        *(v9 + 159) = v13;
        *(v9 + 160) = (v6 & 0xFFFFFFFFFFFFFF80) + 128;
        goto LABEL_7;
      }
    }

    else
    {
      v13 = malloc_type_malloc((v6 & 0xFFFFFFFFFFFFFF80) + 128, 0x9BAAD165uLL);
      if (v13)
      {
        goto LABEL_6;
      }
    }

    HGLogger::warning("HGMetalHandler::LocalParametersBuffer -- failed to allocate memory", v11, v12);
    return 0xFFFFFFFFLL;
  }

LABEL_7:
  if (*(this + 158) < v6)
  {
    *(this + 158) = v6;
  }

  memcpy((*(this + 159) + v5), a2, a3);
  return 0;
}

float32x4_t HGMetalHandler::Normalize(HGMetalHandler *this)
{
  v1 = vsub_s32(*(this + 228), *(this + 220));
  v2.i64[0] = v1.u32[0];
  v2.i64[1] = v1.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  *v8.f32 = vcvt_f32_f64(vdivq_f64(_Q1, vcvtq_f64_u64(v2)));
  __asm { FMOV            V1.2S, #1.0 }

  v8.i64[1] = *&_Q1.f64[0];
  v9 = *(this + 120);
  v10 = (this + 64 * v9);
  v11 = vmulq_f32(v10[47], v8);
  v12 = vmulq_f32(v10[48], v8);
  v13 = vmulq_f32(v10[49], v8);
  result = vmulq_f32(v10[50], v8);
  v10[47] = v11;
  v10[48] = v12;
  v10[49] = v13;
  v10[50] = result;
  *(this + 121) |= 1 << v9;
  return result;
}

uint64_t HGMetalHandler::Rect(HGMetalHandler *this, HGRect a2, const char *a3, char *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v6 = *(this + 41);
  if (v6)
  {
    v7 = HGFormatUtils::collapseRectForFormat(&v15.var0, *(v6 + 16));
    *&a2.var2 = v8;
    *&a2.var0 = v7;
    *&v15.var0 = v7;
    *&v15.var2 = *&a2.var2;
  }

  v9 = xmmword_2603427D0;
  v10 = xmmword_2603427D0;
  *&v10 = a2.var0;
  v11 = v10;
  *(&v11 + 1) = a2.var3;
  *(&v10 + 1) = a2.var1;
  *&v9 = a2.var2;
  v12 = v9;
  *(&v12 + 1) = a2.var3;
  v17[0] = v11;
  v17[1] = v10;
  *(&v9 + 1) = a2.var1;
  v17[2] = v12;
  v17[3] = v9;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v12;
  v16[3] = v9;
  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log("gpu", 1, "rect[0..%d]: { %d, %d, %d, %d }\n", a3, a4, a3, v15.var0, v15.var1, v15.var2, v15.var3);
  }

  return HGMetalHandler::PrimitivesDraw(this, 4u, v17, 4u, v16);
}

uint64_t HGMetalHandler::PrimitivesDraw(uint64_t result, unsigned int a2, void *a3, unsigned int a4, void *a5)
{
  if (*(result + 1785) == 1)
  {
    v8 = result;
    v10 = objc_autoreleasePoolPush();
    *(v8 + 1368) = a4;
    v11 = 16 * a4;
    *(v8 + 1376) = v11;
    *(v8 + 1392) = v11;
    *(v8 + 320) = a4 > 4;
    HGMetalHandler::_updateBuffers(v8, a3, a5);
    if (!*(v8 + 256) && *(v8 + 1785) == 1)
    {
      v12 = [*(*(v8 + 248) + 32) commandBuffer];
      *(v8 + 256) = v12;
      v13 = v12;
      *(v8 + 1768) = 0;
      HGMetalHandler::_setCommandBufferDebugLabel(v8);
    }

    HGMetalHandler::_setupCommandEncoder(v8);
    HGMetalHandler::_validateMetalFunctions(v8, v14, v15);
    HGMetalHandler::_updatePipelineState(v8);
    LODWORD(v16) = HIDWORD(*(v8 + 1728));
    LODWORD(v17) = *(v8 + 1736);
    LODWORD(v18) = HIDWORD(*(v8 + 1728));
    [*(v8 + 264) setBlendColorRed:*(v8 + 1728) green:v16 blue:v17 alpha:v18];
    HGMetalHandler::_setupScissorRect(v8);
    if (*(v8 + 1785) == 1)
    {
      v22 = **(v8 + 312);
      if (v22)
      {
        [*(v8 + 264) setFragmentTexture:*(v22 + 144) atIndex:0];
        v23 = atomic_load(HGLogger::_enabled);
        if (v23)
        {
          v24 = *(v8 + 312);
          v25 = *v24;
          v26 = [objc_msgSend(*(*v24 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v27, v28, 0, v25, v26);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 0, v19, v20, v21);
      v32 = *(*(v8 + 312) + 8);
      if (v32)
      {
        [*(v8 + 264) setFragmentTexture:*(v32 + 144) atIndex:1];
        v33 = atomic_load(HGLogger::_enabled);
        if (v33)
        {
          v34 = *(*(v8 + 312) + 8);
          v35 = [objc_msgSend(*(v34 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v36, v37, 1, v34, v35);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 1, v29, v30, v31);
      v41 = *(*(v8 + 312) + 16);
      if (v41)
      {
        [*(v8 + 264) setFragmentTexture:*(v41 + 144) atIndex:2];
        v42 = atomic_load(HGLogger::_enabled);
        if (v42)
        {
          v43 = *(*(v8 + 312) + 16);
          v44 = [objc_msgSend(*(v43 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v45, v46, 2, v43, v44);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 2, v38, v39, v40);
      v50 = *(*(v8 + 312) + 24);
      if (v50)
      {
        [*(v8 + 264) setFragmentTexture:*(v50 + 144) atIndex:3];
        v51 = atomic_load(HGLogger::_enabled);
        if (v51)
        {
          v52 = *(*(v8 + 312) + 24);
          v53 = [objc_msgSend(*(v52 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v54, v55, 3, v52, v53);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 3, v47, v48, v49);
      v59 = *(*(v8 + 312) + 32);
      if (v59)
      {
        [*(v8 + 264) setFragmentTexture:*(v59 + 144) atIndex:4];
        v60 = atomic_load(HGLogger::_enabled);
        if (v60)
        {
          v61 = *(*(v8 + 312) + 32);
          v62 = [objc_msgSend(*(v61 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v63, v64, 4, v61, v62);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 4, v56, v57, v58);
      v68 = *(*(v8 + 312) + 40);
      if (v68)
      {
        [*(v8 + 264) setFragmentTexture:*(v68 + 144) atIndex:5];
        v69 = atomic_load(HGLogger::_enabled);
        if (v69)
        {
          v70 = *(*(v8 + 312) + 40);
          v71 = [objc_msgSend(*(v70 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v72, v73, 5, v70, v71);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 5, v65, v66, v67);
      v77 = *(*(v8 + 312) + 48);
      if (v77)
      {
        [*(v8 + 264) setFragmentTexture:*(v77 + 144) atIndex:6];
        v78 = atomic_load(HGLogger::_enabled);
        if (v78)
        {
          v79 = *(*(v8 + 312) + 48);
          v80 = [objc_msgSend(*(v79 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v81, v82, 6, v79, v80);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 6, v74, v75, v76);
      v86 = *(*(v8 + 312) + 56);
      if (v86)
      {
        [*(v8 + 264) setFragmentTexture:*(v86 + 144) atIndex:7];
        v87 = atomic_load(HGLogger::_enabled);
        if (v87)
        {
          v88 = *(*(v8 + 312) + 56);
          v89 = [objc_msgSend(*(v88 + 144) "label")];
          HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v90, v91, 7, v88, v89);
        }
      }

      HGMetalHandler::_encodeSourceSampler(v8, 7, v83, v84, v85);
    }

    HGMetalHandler::_encodeBuffers(v8);
    HGMetalHandler::_encodeDraw(v8, a2);
    HGMetalHandler::_finalizeSourceTextures(v8);
    HGMetalHandler::_transferEncoderResourcesToCommandBuffer(v8);
  }

  return result;
}

void HGMetalHandler::_updateBuffers(HGMetalHandler *a1, void *a2, void *a3)
{
  if (*(a1 + 1785) == 1)
  {
    HGMetalHandler::_createBuffers(a1);
    if (*(a1 + 1785) == 1)
    {
      HGTraceGuard::HGTraceGuard(v10, "metal", 2, "HGMetalHandler::updateBuffers()");
      HGMetalHandler::_updateModelViewProjectionMatrix(a1);
      HGMetalHandler::_updateTextureMatrices(a1, v6, v7, v8, v9);
      HGMetalHandler::_updateParametersBuffer(a1);
      HGMetalHandler::_updateVerticesBuffer(a1, a2);
      HGMetalHandler::_updateTexCoordsBuffer(a1, a3);
      HGTraceGuard::~HGTraceGuard(v10);
    }
  }
}

const char *HGMetalHandler::_encodeBuffers(const char *this)
{
  if (this[1785] != 1)
  {
    return this;
  }

  v1 = this;
  v2 = *(*(*(this + 39) + 64) + 144);
  [*(this + 33) setVertexBuffer:v2 offset:0 atIndex:0];
  v3 = *(v1 + 39);
  v4 = *(v3 + 160);
  if (v4)
  {
    this = [*(v1 + 33) setVertexBuffer:*(v4 + 144) offset:0 atIndex:1];
    v7 = *(v1 + 39);
    if (!v7[20])
    {
      goto LABEL_12;
    }
  }

  else if (v1[320] == 1 && (v8 = *(v3 + 72)) != 0)
  {
    this = [*(v1 + 33) setVertexBuffer:*(v8 + 144) offset:0 atIndex:1];
    v7 = *(v1 + 39);
    if (!v7[20])
    {
      goto LABEL_12;
    }
  }

  else
  {
    this = [*(v1 + 33) setVertexBuffer:v2 offset:576 atIndex:1];
    v7 = *(v1 + 39);
    if (!v7[20])
    {
      goto LABEL_12;
    }
  }

  v9 = v7[21];
  if (v9)
  {
    v10 = *(v1 + 33);
    v11 = *(v9 + 144);
    goto LABEL_15;
  }

LABEL_12:
  if (v1[320] != 1 || (v12 = v7[10]) == 0)
  {
    if (v1[492] == 1)
    {
      *(v1 + 1785) = 0;
      this = HGLogger::warning("vertex shader needs color data.", v5, v6);
    }

    goto LABEL_18;
  }

  v10 = *(v1 + 33);
  v11 = *(v12 + 144);
LABEL_15:
  this = [v10 setVertexBuffer:v11 offset:0 atIndex:2];
LABEL_18:
  if (*(v1 + 122))
  {
    v13 = 0;
    v14 = 640;
    do
    {
      while (1)
      {
        v15 = *(v1 + 39);
        if (!*(v15 + 160))
        {
          break;
        }

        v16 = *(v15 + 8 * v13 + 176);
        if (!v16)
        {
          break;
        }

        v17 = *(v1 + 33);
        v18 = *(v16 + 144);
LABEL_27:
        this = [v17 setVertexBuffer:v18 offset:0 atIndex:v13 + 3];
        ++v13;
        v14 += 64;
        if (v13 >= *(v1 + 122))
        {
          goto LABEL_28;
        }
      }

      if (v1[320] == 1)
      {
        v19 = *(v15 + 8 * v13 + 88);
        if (v19)
        {
          v17 = *(v1 + 33);
          v18 = *(v19 + 144);
          goto LABEL_27;
        }
      }

      this = [*(v1 + 33) setVertexBuffer:v2 offset:v14 atIndex:v13 + 3];
      ++v13;
      v14 += 64;
    }

    while (v13 < *(v1 + 122));
  }

LABEL_28:
  if (*(v1 + 158))
  {
    v20 = *(v1 + 33);

    return [v20 setFragmentBuffer:v2 offset:1152 atIndex:0];
  }

  return this;
}

void HGMetalHandler::_encodeDraw(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1785) == 1)
  {
    [*(a1 + 264) drawPrimitives:a2 vertexStart:0 vertexCount:*(a1 + 1368) instanceCount:1];
    ++*(a1 + 1764);
    ++*(a1 + 1772);
    kdebug_trace();
    if (*(a1 + 1319) >= 0)
    {
      v3 = *(a1 + 1319);
    }

    else
    {
      v3 = *(a1 + 1304);
    }

    if (v3 + 3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v3 + 3 >= 0x17)
    {
      operator new();
    }

    v8 = 0;
    v9 = 0;
    __p = 0;
    HIBYTE(v9) = v3 + 3;
    if (v3)
    {
      if (*(a1 + 1319) >= 0)
      {
        v4 = (a1 + 1296);
      }

      else
      {
        v4 = *(a1 + 1296);
      }

      memmove(&__p, v4, v3);
    }

    *(&__p + v3) = 2128928;
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v6 = HIBYTE(v9);
    }

    else
    {
      v6 = v8;
    }

    std::string::append((a1 + 1320), p_p, v6);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_25FC80E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGMetalHandler::_finalizeSourceTextures(HGMetalHandler *this)
{
  if (*(this + 1785) == 1)
  {
    v3 = *(this + 39);
    if (*v3)
    {
      HGMetalTexture::WaitForCopy(*v3);
      v3 = *(this + 39);
    }

    v4 = v3[1];
    if (v4)
    {
      HGMetalTexture::WaitForCopy(v4);
      v3 = *(this + 39);
    }

    v5 = v3[2];
    if (v5)
    {
      HGMetalTexture::WaitForCopy(v5);
      v3 = *(this + 39);
    }

    v6 = v3[3];
    if (v6)
    {
      HGMetalTexture::WaitForCopy(v6);
      v3 = *(this + 39);
    }

    v7 = v3[4];
    if (v7)
    {
      HGMetalTexture::WaitForCopy(v7);
      v3 = *(this + 39);
    }

    v8 = v3[5];
    if (v8)
    {
      HGMetalTexture::WaitForCopy(v8);
      v3 = *(this + 39);
    }

    v9 = v3[6];
    if (v9)
    {
      HGMetalTexture::WaitForCopy(v9);
      v3 = *(this + 39);
    }

    v10 = v3[7];
    if (v10)
    {

      HGMetalTexture::WaitForCopy(v10);
    }
  }
}

void HGMetalHandler::_transferEncoderResourcesToCommandBuffer(HGMetalHandler *this)
{
  HGTraceGuard::HGTraceGuard(&v19, "metal", 2, "HGMetalHandler::_transferEncoderResourcesToCommandBuffer()");
  v2 = 0;
  v3 = *(this + 39);
  v4 = (this + 288);
  while (1)
  {
    v5 = *(v3 + v2);
    if (v5)
    {
      (*(*v5 + 16))(*(v3 + v2));
      v6 = *v4;
      if (!*v4)
      {
LABEL_11:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = v6[4];
          if (v5 >= v8)
          {
            break;
          }

          v6 = *v7;
          if (!*v7)
          {
            goto LABEL_11;
          }
        }

        if (v8 >= v5)
        {
          break;
        }

        v6 = v7[1];
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      (*(*v5 + 24))(v5);
    }

    v2 += 8;
    if (v2 == 64)
    {
      *(this + 38) = 0;
      v9 = *(this + 35);
      if (v9 != v4)
      {
        do
        {
          v11 = v9[4];
          v12 = *(v11 + 28);
          v13 = *(v11 + 20);
          v14 = HGFormatUtils::bytesPerPixel(*(v11 + 16));
          v15 = vsub_s32(v12, v13);
          *(this + 38) += vmul_lane_s32(v15, v15, 1).u32[0] * v14;
          v16 = v9[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v9[2];
              v18 = *v17 == v9;
              v9 = v17;
            }

            while (!v18);
          }

          v9 = v17;
        }

        while (v17 != v4);
      }

      std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](*(this + 34), this + 39);
      *(this + 39) = 0;
      HGTraceGuard::HGTraceGuard(v20, "metal", 2, "HGMetalHandler::releaseBuffers()");
      v10 = *(this + 39);
      if (v10)
      {
        HGMetalHandler::CommandEncoderCargo::~CommandEncoderCargo(v10);
        MEMORY[0x2666E9F00]();
      }

      operator new();
    }
  }
}

void sub_25FC811CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  HGTraceGuard::~HGTraceGuard(&a11);
  HGTraceGuard::~HGTraceGuard(&a9);
  _Unwind_Resume(a1);
}

char *HGMetalHandler::SetVertices(HGMetalHandler *this, const void *a2, uint64_t a3, unsigned int a4)
{
  v7 = a4;
  *(this + 171) = a4;
  v8 = 16 * a4;
  *(this + 172) = v8;
  *(this + 174) = v8;
  *(this + 320) = 1;
  v9 = *(this + 31);
  v10 = *(*(v9 + 2) + 16);
  v11 = HGMetalContext::bufferPool(v9);
  *(this + 172) = v7 * a3;
  HGMetalBuffer::create(v10, v11, v7 * a3, &v16);
  v12 = *(this + 39);
  v13 = *(v12 + 72);
  v14 = v16;
  if (v13 == v16)
  {
    if (v13)
    {
      (*(*v16 + 24))();
    }
  }

  else
  {
    if (v13)
    {
      (*(*v13 + 24))(*(v12 + 72));
      v14 = v16;
    }

    *(v12 + 72) = v14;
  }

  return HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(this + 39) + 72), 0, *(this + 172), a2);
}

void sub_25FC81350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalHandler::SetVertices(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *(a1 + 1368) = (*(*a2 + 28) - *(*a2 + 20));
  v4 = *(a1 + 312);
  v5 = *(v4 + 160);
  if (v5 != result)
  {
    if (v5)
    {
      (*(*v5 + 24))(*(v4 + 160));
      result = *a2;
      *(v4 + 160) = *a2;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      *(v4 + 160) = result;
    }

    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

char *HGMetalHandler::SetColors(HGMetalHandler *this, const void *a2, uint64_t a3, unsigned int a4)
{
  v7 = a4;
  *(this + 171) = a4;
  v8 = 16 * a4;
  *(this + 172) = v8;
  *(this + 174) = v8;
  *(this + 320) = 1;
  v9 = *(this + 31);
  v10 = *(*(v9 + 2) + 16);
  v11 = HGMetalContext::bufferPool(v9);
  *(this + 173) = v7 * a3;
  HGMetalBuffer::create(v10, v11, v7 * a3, &v16);
  v12 = *(this + 39);
  v13 = *(v12 + 80);
  v14 = v16;
  if (v13 == v16)
  {
    if (v13)
    {
      (*(*v16 + 24))();
    }
  }

  else
  {
    if (v13)
    {
      (*(*v13 + 24))(*(v12 + 80));
      v14 = v16;
    }

    *(v12 + 80) = v14;
  }

  return HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(this + 39) + 80), 0, *(this + 173), a2);
}

void sub_25FC81560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalHandler::SetColors(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 312);
  v3 = *(v2 + 168);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(*(v2 + 168));
      result = *a2;
    }

    *(v2 + 168) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

char *HGMetalHandler::SetTextureCoords(HGMetalHandler *this, const void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v9 = a4;
  *(this + 171) = a4;
  v10 = 16 * a4;
  *(this + 172) = v10;
  *(this + 174) = v10;
  *(this + 320) = 1;
  v11 = *(this + 31);
  v12 = *(*(v11 + 2) + 16);
  v13 = HGMetalContext::bufferPool(v11);
  *(this + 174) = v9 * a3;
  HGMetalBuffer::create(v12, v13, v9 * a3, &v18);
  v14 = *(this + 39) + 88;
  v15 = *(v14 + 8 * a5);
  v16 = v18;
  if (v15 == v18)
  {
    if (v15)
    {
      (*(*v18 + 24))();
    }
  }

  else
  {
    if (v15)
    {
      (*(*v15 + 24))(*(v14 + 8 * a5));
      v16 = v18;
    }

    *(v14 + 8 * a5) = v16;
  }

  return HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(this + 39) + 8 * a5 + 88), 0, *(this + 174), a2);
}

void sub_25FC81768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalHandler::SetTextureCoords(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v3 = *(a1 + 312) + 176;
  v4 = *(v3 + 8 * a3);
  result = *a2;
  if (v4 != *a2)
  {
    if (v4)
    {
      (*(*v4 + 24))(*(v3 + 8 * a3));
      result = *a2;
    }

    *(v3 + 8 * a3) = result;
    if (result)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  return result;
}

char *HGMetalHandler::SetIndices(HGMetalHandler *this, const void *a2, unint64_t a3, unsigned int a4)
{
  *(this + 350) = a3 > 2;
  v6 = a4 * a3;
  v7 = *(this + 31);
  v8 = *(*(v7 + 2) + 16);
  v9 = HGMetalContext::bufferPool(v7);
  HGMetalBuffer::create(v8, v9, v6, &v14);
  v10 = *(this + 39);
  v11 = *(v10 + 152);
  v12 = v14;
  if (v11 == v14)
  {
    if (v11)
    {
      (*(*v14 + 24))();
    }
  }

  else
  {
    if (v11)
    {
      (*(*v11 + 24))(*(v10 + 152));
      v12 = v14;
    }

    *(v10 + 152) = v12;
  }

  return HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(this + 39) + 152), 0, v6, a2);
}

void sub_25FC81964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalHandler::SetIndices(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *(a1 + 1400) = *(*a2 + 16) != 3;
  v4 = *(a1 + 312);
  v5 = *(v4 + 240);
  if (v5 != result)
  {
    if (v5)
    {
      (*(*v5 + 24))(*(v4 + 240));
      result = *a2;
      *(v4 + 240) = *a2;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      *(v4 + 240) = result;
    }

    v7 = *(*result + 16);

    return v7();
  }

  return result;
}

void HGMetalHandler::PrimitivesStart(HGMetalHandler *this)
{
  *(this + 1786) = 1;
  v2 = objc_autoreleasePoolPush();
  HGMetalHandler::_createBuffers(this);
  HGMetalHandler::_updateModelViewProjectionMatrix(this);
  HGMetalHandler::_updateTextureMatrices(this, v3, v4, v5, v6);
  HGMetalHandler::_updateParametersBuffer(this);
  if (!*(this + 32) && *(this + 1785) == 1)
  {
    v7 = [*(*(this + 31) + 32) commandBuffer];
    *(this + 32) = v7;
    v8 = v7;
    *(this + 442) = 0;
    HGMetalHandler::_setCommandBufferDebugLabel(this);
  }

  HGMetalHandler::_setupCommandEncoder(this);
  HGMetalHandler::_validateMetalFunctions(this, v9, v10);
  HGMetalHandler::_updatePipelineState(this);
  LODWORD(v11) = HIDWORD(*(this + 216));
  LODWORD(v12) = *(this + 217);
  LODWORD(v13) = HIDWORD(*(this + 108));
  [*(this + 33) setBlendColorRed:*(this + 216) green:v11 blue:v12 alpha:v13];
  HGMetalHandler::_setupScissorRect(this);
  if (*(this + 1785) == 1)
  {
    v17 = **(this + 39);
    if (v17)
    {
      [*(this + 33) setFragmentTexture:*(v17 + 144) atIndex:0];
      v18 = atomic_load(HGLogger::_enabled);
      if (v18)
      {
        v19 = *(this + 39);
        v20 = *v19;
        v21 = [objc_msgSend(*(*v19 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v22, v23, 0, v20, v21);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 0, v14, v15, v16);
    v27 = *(*(this + 39) + 8);
    if (v27)
    {
      [*(this + 33) setFragmentTexture:*(v27 + 144) atIndex:1];
      v28 = atomic_load(HGLogger::_enabled);
      if (v28)
      {
        v29 = *(*(this + 39) + 8);
        v30 = [objc_msgSend(*(v29 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v31, v32, 1, v29, v30);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 1, v24, v25, v26);
    v36 = *(*(this + 39) + 16);
    if (v36)
    {
      [*(this + 33) setFragmentTexture:*(v36 + 144) atIndex:2];
      v37 = atomic_load(HGLogger::_enabled);
      if (v37)
      {
        v38 = *(*(this + 39) + 16);
        v39 = [objc_msgSend(*(v38 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v40, v41, 2, v38, v39);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 2, v33, v34, v35);
    v45 = *(*(this + 39) + 24);
    if (v45)
    {
      [*(this + 33) setFragmentTexture:*(v45 + 144) atIndex:3];
      v46 = atomic_load(HGLogger::_enabled);
      if (v46)
      {
        v47 = *(*(this + 39) + 24);
        v48 = [objc_msgSend(*(v47 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v49, v50, 3, v47, v48);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 3, v42, v43, v44);
    v54 = *(*(this + 39) + 32);
    if (v54)
    {
      [*(this + 33) setFragmentTexture:*(v54 + 144) atIndex:4];
      v55 = atomic_load(HGLogger::_enabled);
      if (v55)
      {
        v56 = *(*(this + 39) + 32);
        v57 = [objc_msgSend(*(v56 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v58, v59, 4, v56, v57);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 4, v51, v52, v53);
    v63 = *(*(this + 39) + 40);
    if (v63)
    {
      [*(this + 33) setFragmentTexture:*(v63 + 144) atIndex:5];
      v64 = atomic_load(HGLogger::_enabled);
      if (v64)
      {
        v65 = *(*(this + 39) + 40);
        v66 = [objc_msgSend(*(v65 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v67, v68, 5, v65, v66);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 5, v60, v61, v62);
    v72 = *(*(this + 39) + 48);
    if (v72)
    {
      [*(this + 33) setFragmentTexture:*(v72 + 144) atIndex:6];
      v73 = atomic_load(HGLogger::_enabled);
      if (v73)
      {
        v74 = *(*(this + 39) + 48);
        v75 = [objc_msgSend(*(v74 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v76, v77, 6, v74, v75);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 6, v69, v70, v71);
    v81 = *(*(this + 39) + 56);
    if (v81)
    {
      [*(this + 33) setFragmentTexture:*(v81 + 144) atIndex:7];
      v82 = atomic_load(HGLogger::_enabled);
      if (v82)
      {
        v83 = *(*(this + 39) + 56);
        v84 = [objc_msgSend(*(v83 + 144) "label")];
        HGLogger::log("gpu", 1, "%d: source texture (%p, %s)\n", v85, v86, 7, v83, v84);
      }
    }

    HGMetalHandler::_encodeSourceSampler(this, 7, v78, v79, v80);
  }

  HGMetalHandler::_encodeBuffers(this);

  objc_autoreleasePoolPop(v2);
}

void HGMetalHandler::PrimitivesEnd(HGMetalHandler *this)
{
  v2 = objc_autoreleasePoolPush();
  HGMetalHandler::_finalizeSourceTextures(this);
  HGMetalHandler::_transferEncoderResourcesToCommandBuffer(this);
}

void HGMetalHandler::_createBuffers(HGMetalHandler *this)
{
  HGTraceGuard::HGTraceGuard(v14, "metal", 2, "HGMetalHandler::createBuffers()");
  v2 = *(this + 158) + 1152;
  v3 = *(*(this + 39) + 64);
  if (!v3 || (v4 = vsub_s32(*(v3 + 28), *(v3 + 20)), v2 > vmul_lane_s32(v4, v4, 1).u32[0]))
  {
    v5 = *(this + 31);
    v6 = *(*(v5 + 2) + 16);
    v7 = HGMetalContext::bufferPool(v5);
    HGMetalBuffer::create(v6, v7, v2, &v13);
    v10 = *(this + 39);
    v11 = *(v10 + 64);
    v12 = v13;
    if (v11 == v13)
    {
      if (v11)
      {
        (*(*v13 + 24))();
      }
    }

    else
    {
      if (v11)
      {
        (*(*v11 + 24))(*(v10 + 64));
        v12 = v13;
      }

      *(v10 + 64) = v12;
    }

    if (!*(*(this + 39) + 64))
    {
      *(this + 1785) = 0;
      HGLogger::warning("HGMetalHandler::_createBuffers -- null buffer!!", v8, v9);
    }
  }

  HGTraceGuard::~HGTraceGuard(v14);
}

void sub_25FC82044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGMetalHandler::_updateModelViewProjectionMatrix(HGMetalHandler *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  v4 = *(this + 7);
  v5 = *(this + 8);
  v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(this + 1))), v3, *(this + 16), 1), v4, *(this + 1), 2), v5, *(this + 1), 3);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(this + 2))), v3, *(this + 32), 1), v4, *(this + 2), 2), v5, *(this + 2), 3);
  v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(this + 3))), v3, *(this + 48), 1), v4, *(this + 3), 2), v5, *(this + 3), 3);
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(this + 4))), v3, *(this + 64), 1), v4, *(this + 4), 2), v5, *(this + 4), 3);
  v43 = v6;
  v44 = v7;
  v45 = v8;
  v46 = v9;
  HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(this + 39) + 64), 0, 0x40uLL, &v43);
  v11 = atomic_load(HGLogger::_enabled);
  if ((v11 & 1) != 0 && HGLogger::getLevel("gpu", v10) >= 1)
  {
    v14 = atomic_load(HGLogger::_enabled);
    if (v14)
    {
      HGLogger::log("gpu", 2, "projection matrix :\n", v12, v13);
      v29 = atomic_load(HGLogger::_enabled);
      if ((v29 & 1) == 0)
      {
LABEL_5:
        v16 = atomic_load(HGLogger::_enabled);
        if ((v16 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v15 = atomic_load(HGLogger::_enabled);
      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    HGLogger::log("gpu", 2, " { { %lf, %lf, %lf, %lf}, \n", v12, v13, COERCE_FLOAT(*(this + 5)), COERCE_FLOAT(HIDWORD(*(this + 10))), COERCE_FLOAT(*(this + 11)), COERCE_FLOAT(HIDWORD(*(this + 5))));
    v30 = atomic_load(HGLogger::_enabled);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      v17 = atomic_load(HGLogger::_enabled);
      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

LABEL_22:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", v12, v13, COERCE_FLOAT(*(this + 6)), COERCE_FLOAT(HIDWORD(*(this + 12))), COERCE_FLOAT(*(this + 13)), COERCE_FLOAT(HIDWORD(*(this + 6))));
    v31 = atomic_load(HGLogger::_enabled);
    if ((v31 & 1) == 0)
    {
LABEL_7:
      v18 = atomic_load(HGLogger::_enabled);
      if ((v18 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", v12, v13, COERCE_FLOAT(*(this + 7)), COERCE_FLOAT(HIDWORD(*(this + 14))), COERCE_FLOAT(*(this + 15)), COERCE_FLOAT(HIDWORD(*(this + 7))));
    v32 = atomic_load(HGLogger::_enabled);
    if ((v32 & 1) == 0)
    {
LABEL_8:
      v19 = atomic_load(HGLogger::_enabled);
      if ((v19 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf} }\n", v12, v13, COERCE_FLOAT(*(this + 8)), COERCE_FLOAT(HIDWORD(*(this + 16))), COERCE_FLOAT(*(this + 17)), COERCE_FLOAT(HIDWORD(*(this + 8))));
    v33 = atomic_load(HGLogger::_enabled);
    if ((v33 & 1) == 0)
    {
LABEL_9:
      v20 = atomic_load(HGLogger::_enabled);
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    HGLogger::log("gpu", 2, "model view matrix :\n", v12, v13);
    v34 = atomic_load(HGLogger::_enabled);
    if ((v34 & 1) == 0)
    {
LABEL_10:
      v21 = atomic_load(HGLogger::_enabled);
      if ((v21 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:
    HGLogger::log("gpu", 2, " { { %lf, %lf, %lf, %lf}, \n", v12, v13, COERCE_FLOAT(*(this + 1)), COERCE_FLOAT(HIDWORD(*(this + 2))), COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 1))));
    v35 = atomic_load(HGLogger::_enabled);
    if ((v35 & 1) == 0)
    {
LABEL_11:
      v22 = atomic_load(HGLogger::_enabled);
      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

LABEL_27:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", v12, v13, COERCE_FLOAT(*(this + 2)), COERCE_FLOAT(HIDWORD(*(this + 4))), COERCE_FLOAT(*(this + 5)), COERCE_FLOAT(HIDWORD(*(this + 2))));
    v36 = atomic_load(HGLogger::_enabled);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      v23 = atomic_load(HGLogger::_enabled);
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }

LABEL_28:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", v12, v13, COERCE_FLOAT(*(this + 3)), COERCE_FLOAT(HIDWORD(*(this + 6))), COERCE_FLOAT(*(this + 7)), COERCE_FLOAT(HIDWORD(*(this + 3))));
    v37 = atomic_load(HGLogger::_enabled);
    if ((v37 & 1) == 0)
    {
LABEL_13:
      v24 = atomic_load(HGLogger::_enabled);
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_29:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf} }\n", v12, v13, COERCE_FLOAT(*(this + 4)), COERCE_FLOAT(HIDWORD(*(this + 8))), COERCE_FLOAT(*(this + 9)), COERCE_FLOAT(HIDWORD(*(this + 4))));
    v38 = atomic_load(HGLogger::_enabled);
    if ((v38 & 1) == 0)
    {
LABEL_14:
      v25 = atomic_load(HGLogger::_enabled);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_30:
    HGLogger::log("gpu", 2, "model view projection matrix :\n", v12, v13);
    v39 = atomic_load(HGLogger::_enabled);
    if ((v39 & 1) == 0)
    {
LABEL_15:
      v26 = atomic_load(HGLogger::_enabled);
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:
    HGLogger::log("gpu", 2, " { { %lf, %lf, %lf, %lf}, \n", v12, v13, v43.f32[0], v43.f32[1], v43.f32[2], v43.f32[3]);
    v40 = atomic_load(HGLogger::_enabled);
    if ((v40 & 1) == 0)
    {
LABEL_16:
      v27 = atomic_load(HGLogger::_enabled);
      if ((v27 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

LABEL_32:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", v12, v13, v44.f32[0], v44.f32[1], v44.f32[2], v44.f32[3]);
    v41 = atomic_load(HGLogger::_enabled);
    if ((v41 & 1) == 0)
    {
LABEL_17:
      v28 = atomic_load(HGLogger::_enabled);
      if ((v28 & 1) == 0)
      {
        return;
      }

      goto LABEL_18;
    }

LABEL_33:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", v12, v13, v45.f32[0], v45.f32[1], v45.f32[2], v45.f32[3]);
    v42 = atomic_load(HGLogger::_enabled);
    if ((v42 & 1) == 0)
    {
      return;
    }

LABEL_18:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf} }\n", v12, v13, v46.f32[0], v46.f32[1], v46.f32[2], v46.f32[3]);
  }
}

void HGMetalHandler::_updateTextureMatrices(HGMetalHandler *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v5 = *(this + 122);
  if (v5)
  {
    v7 = 0;
    v8 = this + 752;
    do
    {
      while (((*(this + 121) >> v7) & 1) != 0)
      {
        v9 = v7 + 1;
        HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(this + 39) + 64), (v7 + 1) << 6, 0x40uLL, &v8[64 * v7]);
        v5 = *(this + 122);
        v7 = v9;
        if (v9 >= v5)
        {
          goto LABEL_6;
        }
      }

      ++v7;
    }

    while (v7 < v5);
LABEL_6:
    if (v5)
    {
      v10 = 0;
      v11 = this + 800;
      do
      {
        if (((*(this + 121) >> v10) & 1) == 0)
        {
          goto LABEL_8;
        }

        v12 = atomic_load(HGLogger::_enabled);
        if (v12)
        {
          HGLogger::log("gpu", 2, "texture matrix %d :\n", a4, a5, v10);
          v17 = atomic_load(HGLogger::_enabled);
          if ((v17 & 1) == 0)
          {
LABEL_12:
            v14 = atomic_load(HGLogger::_enabled);
            if ((v14 & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v13 = atomic_load(HGLogger::_enabled);
          if ((v13 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        HGLogger::log("gpu", 2, " { { %lf, %lf, %lf, %lf}, \n", a4, a5, COERCE_FLOAT(*(v11 - 3)), COERCE_FLOAT(HIDWORD(*(v11 - 6))), COERCE_FLOAT(*(v11 - 5)), COERCE_FLOAT(HIDWORD(*(v11 - 3))));
        v18 = atomic_load(HGLogger::_enabled);
        if ((v18 & 1) == 0)
        {
LABEL_13:
          v15 = atomic_load(HGLogger::_enabled);
          if ((v15 & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }

LABEL_18:
        HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", a4, a5, COERCE_FLOAT(*(v11 - 2)), COERCE_FLOAT(HIDWORD(*(v11 - 4))), COERCE_FLOAT(*(v11 - 3)), COERCE_FLOAT(HIDWORD(*(v11 - 2))));
        v19 = atomic_load(HGLogger::_enabled);
        if ((v19 & 1) == 0)
        {
LABEL_14:
          v16 = atomic_load(HGLogger::_enabled);
          if (v16)
          {
            goto LABEL_20;
          }

          goto LABEL_8;
        }

LABEL_19:
        HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", a4, a5, COERCE_FLOAT(*(v11 - 1)), COERCE_FLOAT(HIDWORD(*(v11 - 2))), COERCE_FLOAT(*(v11 - 1)), COERCE_FLOAT(HIDWORD(*(v11 - 1))));
        v20 = atomic_load(HGLogger::_enabled);
        if (v20)
        {
LABEL_20:
          HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf} }\n", a4, a5, COERCE_FLOAT(*v11), COERCE_FLOAT(HIDWORD(*v11)), COERCE_FLOAT(*(v11 + 1)), COERCE_FLOAT(HIDWORD(*v11)));
        }

LABEL_8:
        ++v10;
        v11 += 64;
      }

      while (v10 < *(this + 122));
    }
  }
}

void HGMetalHandler::_updateParametersBuffer(HGMetalHandler *this)
{
  v1 = *(this + 158);
  if (!v1)
  {
    return;
  }

  HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(this + 39) + 64), 1152, v1, *(this + 159));
  v4 = atomic_load(HGLogger::_enabled);
  if ((v4 & 1) == 0 || HGLogger::getLevel("gpu", v3) < 1)
  {
    return;
  }

  v7 = *(this + 161);
  if (v7)
  {
    HGParamBufferDesc::printParamValuesFromBuffer(v7, *(this + 159), *(this + 158), &v37);
    v8 = std::string::insert(&v37, 0, "parameter buffer 0 :\n");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    std::istringstream::basic_istringstream[abi:ne200100](&v37, &v45, 8);
    memset(&v44, 0, sizeof(v44));
    v10 = MEMORY[0x277D82680];
    while (1)
    {
      std::ios_base::getloc((&v37 + *(v37.__r_.__value_.__r.__words[0] - 24)));
      v11 = std::locale::use_facet(&v46, v10);
      v12 = (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v46);
      v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v37, &v44, v12);
      if ((*(v13 + *(*v13 - 24) + 32) & 5) != 0)
      {
        break;
      }

      std::string::append(&v44, "\n");
      v16 = atomic_load(HGLogger::_enabled);
      if (v16)
      {
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v44;
        }

        else
        {
          v17 = v44.__r_.__value_.__r.__words[0];
        }

        HGLogger::log("gpu", 1, "%s", v14, v15, v17);
      }
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    v37.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82820];
    *(v37.__r_.__value_.__r.__words + *(v37.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82820] + 24);
    v37.__r_.__value_.__r.__words[2] = MEMORY[0x277D82878] + 16;
    if (v40 < 0)
    {
      operator delete(v39[6].__locale_);
    }

    v37.__r_.__value_.__r.__words[2] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v38);
    std::istream::~istream();
    MEMORY[0x2666E9E10](&v42);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    return;
  }

  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    HGLogger::log("gpu", 1, "%s", v5, v6, "parameter buffer 0 :\n");
  }

  v19 = *(this + 158);
  if ((v19 >> 4) >= 1)
  {
    v20 = 0;
    v21 = 0;
    v35 = *(MEMORY[0x277D82818] + 64);
    v36 = *MEMORY[0x277D82818];
    v33 = (v19 >> 4) & 0x7FFFFFFF;
    v34 = *(MEMORY[0x277D82818] + 72);
    do
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v37);
      memset(&v45, 0, sizeof(v45));
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37.__r_.__value_.__r.__words[2], "parameter(", 10);
      v23 = MEMORY[0x2666E9B50](v22, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "): {", 4);
      v24 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
      v25 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", ", 2);
      v26 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
      v27 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "} \n", 3);
      std::stringbuf::str();
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
        v45 = v44;
        v31 = atomic_load(HGLogger::_enabled);
        if (v31)
        {
LABEL_29:
          v32 = &v45;
          if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v32 = v45.__r_.__value_.__r.__words[0];
          }

          HGLogger::log("gpu", 1, "%s", v28, v29, v32);
        }
      }

      else
      {
        v45 = v44;
        v30 = atomic_load(HGLogger::_enabled);
        if (v30)
        {
          goto LABEL_29;
        }
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      v37.__r_.__value_.__r.__words[0] = v36;
      *(v37.__r_.__value_.__r.__words + *(v36 - 24)) = v35;
      v37.__r_.__value_.__r.__words[2] = v34;
      v38.__locale_ = (MEMORY[0x277D82878] + 16);
      if (v41 < 0)
      {
        operator delete(v39[7].__locale_);
      }

      v38.__locale_ = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(v39);
      std::iostream::~basic_iostream();
      MEMORY[0x2666E9E10](&v43);
      ++v21;
      v20 += 16;
    }

    while (v33 != v21);
  }
}

void sub_25FC82DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 - 137) < 0)
  {
    operator delete(*(v20 - 160));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalHandler::_encodeDrawIndexed(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (*(result + 1785) == 1)
  {
    v7 = result;
    v8 = *(result + 312);
    if (v8[20] && (v9 = v8[30]) != 0 || (v9 = v8[19]) != 0)
    {
      (*(*v9 + 16))(v9);
    }

    if (!a4)
    {
      a4 = *(v9 + 28) - *(v9 + 20);
    }

    [*(v7 + 264) drawIndexedPrimitives:a2 indexCount:a4 indexType:*(v7 + 1400) indexBuffer:*(v9 + 144) indexBufferOffset:a3];
    ++*(v7 + 1764);
    ++*(v7 + 1772);
    kdebug_trace();
    if (*(v7 + 1319) >= 0)
    {
      v10 = *(v7 + 1319);
    }

    else
    {
      v10 = *(v7 + 1304);
    }

    if (v10 + 3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 + 3 >= 0x17)
    {
      operator new();
    }

    v15 = 0;
    v16 = 0;
    __p = 0;
    HIBYTE(v16) = v10 + 3;
    if (v10)
    {
      if (*(v7 + 1319) >= 0)
      {
        v11 = (v7 + 1296);
      }

      else
      {
        v11 = *(v7 + 1296);
      }

      memmove(&__p, v11, v10);
    }

    *(&__p + v10) = 2128928;
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v16 >= 0)
    {
      v13 = HIBYTE(v16);
    }

    else
    {
      v13 = v15;
    }

    std::string::append((v7 + 1320), p_p, v13);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_25FC8308C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  (*(*v15 + 24))(v15);
  _Unwind_Resume(a1);
}

char *HGMetalHandler::AddMTLFunction(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [a2 functionType];
  if (v3 == 5)
  {
    std::vector<HGMTLFunctionType>::push_back[abi:ne200100](a1 + 1432, &v11);
    return v11;
  }

  if (v3 == 2)
  {
    v6 = *(a1 + 1424);
    result = a2;
    if (v6 == a2)
    {
      return result;
    }

    if (v6)
    {

      result = a2;
    }

    *(a1 + 1424) = result;
    if (!result)
    {
      return result;
    }

LABEL_13:

    return result;
  }

  if (v3 != 1)
  {
    v7 = [objc_msgSend(a2 "name")];
    return HGLogger::warning("Metal function %s is not supported", v8, v9, v7);
  }

  v4 = *(a1 + 1416);
  result = a2;
  if (v4 != a2)
  {
    if (v4)
    {

      result = a2;
    }

    *(a1 + 1416) = result;
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

void std::vector<HGMTLFunctionType>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

__n128 HGMetalHandler::SetBlendingInfo(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1464);
  if (!HGBlendingInfo::operator==(a2, a1 + 1464))
  {
    result = *a2;
    v6 = *(a2 + 16);
    *v4 = *a2;
    v4[1] = v6;
    *(a1 + 1784) = 1;
  }

  return result;
}

uint64_t HGMetalHandler::EnableBlending(uint64_t this)
{
  if ((*(this + 1456) & 1) == 0)
  {
    *(this + 1456) |= 1u;
    *(this + 1784) = 1;
  }

  return this;
}

uint64_t HGMetalHandler::DisableBlending(uint64_t this)
{
  if (*(this + 1456))
  {
    *(this + 1456) &= ~1u;
    *(this + 1784) = 1;
  }

  return this;
}

void *HGMetalHandler::EnableDepthBuffer(void *this)
{
  if (!this[57])
  {
    v1 = this;
    HGMetalHandler::FinalizeCommandEncoder(this, *(this[31] + 64), *(this[31] + 72), *(this[31] + 88));
    MetalContext = HGGPURenderer::GetMetalContext(v1[18]);
    v3 = v1[49];
    v4 = *(v3 + 20);
    v5 = *(v3 + 28);
    v6 = *(*(MetalContext + 2) + 16);
    v7 = HGMetalContext::texturePool(MetalContext);
    HGMetalTexture::createDepth(v6, v7, v4, v5, *(v1 + 118), &v9);
    this = v1[57];
    v8 = v9;
    if (this == v9)
    {
      if (this)
      {
        this = (*(*v9 + 24))(v9);
      }
    }

    else
    {
      if (this)
      {
        this = (*(*this + 24))(this);
        v8 = v9;
      }

      v1[57] = v8;
    }

    *(v1 + 1784) = 1;
  }

  return this;
}

void sub_25FC834B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalHandler::DisableDepthBuffer(HGMetalHandler *this)
{
  result = *(this + 57);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(this + 57) = 0;
    *(this + 1784) = 1;
  }

  return result;
}

__n128 HGMetalHandler::SetScissorRect(HGMetalHandler *this, __n128 *a2)
{
  result = *a2;
  *(this + 1748) = *a2;
  return result;
}

__n128 HGMetalHandler::SetBlendingColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[108] = *a2;
  return result;
}

void HGMetalHandler::FinalizeCommandEncoder(HGMetalHandler *this, unsigned int a2, unint64_t a3, unint64_t a4)
{
  if (*(this + 33))
  {
    HGMetalHandler::_setCommandEncoderDebugLabel(this);
    [*(this + 33) endEncoding];
    ++*(this + 442);
    ++*(this + 444);
    kdebug_trace();

    *(this + 33) = 0;
  }

  if (*(this + 32))
  {
    if (*(this + 442) >= a2 || *(this + 38) >= a3 || (v8 = atomic_load(this + 225), *(this + 38) + v8 >= a4))
    {
      HGMetalHandler::_commitCommandBuffer(this);
    }
  }
}

void HGMetalHandler::_commitCommandBuffer(HGMetalHandler *this)
{
  HGTraceGuard::HGTraceGuard(v3, "metal", 2, "HGMetalHandler::_commitCommandBuffer()");
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x2020000000;
  v2[3] = *(this + 34);
  operator new();
}

void sub_25FC838B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  HGTraceGuard::~HGTraceGuard(&a9);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v19 - 96), 8);
  HGTraceGuard::~HGTraceGuard((v19 - 64));
  _Unwind_Resume(a1);
}

uint64_t HGMetalHandler::FrameEnd(uint64_t this)
{
  *(this + 1772) = 0;
  *(this + 1780) = 0;
  if (*(this + 144))
  {
    kdebug_trace();
    kdebug_trace();

    return kdebug_trace();
  }

  return this;
}

_DWORD *HGMetalHandler::GetFrameCounters(_DWORD *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  *a2 = this[443];
  *a3 = this[444];
  *a4 = this[445];
  return this;
}

uint64_t HGMetalHandler::WaitForCommandBuffersCount(HGMetalHandler *this, unint64_t a2)
{
  kdebug_trace();
  HGMetalHandler::_waitForCommandBuffers(this, 0, a2, 0xFFFFFFFFFFFFFFFFLL);
  return kdebug_trace();
}

void HGMetalHandler::_waitForCommandBuffers(HGMetalHandler *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v13.__m_ = (this + 1808);
  v13.__owns_ = 1;
  std::mutex::lock((this + 1808));
  while (1)
  {
    v9 = atomic_load(this + 224);
    if (v9 <= a3)
    {
      v10 = atomic_load(this + 224);
      if (v10 <= a2)
      {
        break;
      }

      v11 = atomic_load(this + 225);
      if (v11 <= a4)
      {
        break;
      }
    }

    std::chrono::steady_clock::now();
    v12.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v8.__d_.__rep_ = 15000000;
    if (!v12.__d_.__rep_)
    {
      goto LABEL_3;
    }

    if (v12.__d_.__rep_ < 1)
    {
      v8.__d_.__rep_ = 0x8000000000E4E1C0;
      if (v12.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        goto LABEL_3;
      }
    }

    else if (v12.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      goto LABEL_2;
    }

    if (v12.__d_.__rep_ >= 0x20C49BA5E31960)
    {
LABEL_2:
      v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_3;
    }

    v8.__d_.__rep_ = 1000 * v12.__d_.__rep_ + 15000000;
LABEL_3:
    std::condition_variable::__do_timed_wait(this + 39, &v13, v8);
    std::chrono::steady_clock::now();
  }

  if (v13.__owns_)
  {
    std::mutex::unlock(v13.__m_);
  }
}

char *HGMetalHandler::_updateVerticesBuffer(uint64_t a1, void *a2)
{
  v3 = *(a1 + 312);
  if (*(a1 + 320) == 1)
  {
    v4 = *(v3 + 72);
    if (!v4)
    {
      v5 = *(*(*(a1 + 248) + 16) + 16);
      v6 = a1;
      v7 = HGMetalContext::bufferPool(*(a1 + 248));
      HGMetalBuffer::create(v5, v7, *(v6 + 1376), &v14);
      a1 = v6;
      v8 = *(v6 + 312);
      v9 = *(v8 + 72);
      v10 = v14;
      if (v9 == v14)
      {
        if (v9)
        {
          (*(*v14 + 24))(v14);
          a1 = v6;
        }
      }

      else
      {
        if (v9)
        {
          (*(*v9 + 24))(*(v8 + 72));
          v10 = v14;
          a1 = v6;
        }

        *(v8 + 72) = v10;
      }

      v4 = *(*(a1 + 312) + 72);
    }

    return HGMetalBuffer::ModifyRangeAndMarkAsDirty(v4, 0, *(a1 + 1376), a2);
  }

  else
  {
    v11 = *(a1 + 1376);
    v12 = *(v3 + 64);

    return HGMetalBuffer::ModifyRangeAndMarkAsDirty(v12, 576, v11, a2);
  }
}

void sub_25FC83D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

char *HGMetalHandler::_updateTexCoordsBuffer(char *result, void *a2)
{
  v3 = result;
  v4 = *(result + 122);
  if (result[320])
  {
    if (*(result + 122))
    {
      v5 = 11;
      do
      {
        if ((*(v3 + 484) >> (v5 - 11)))
        {
          v6 = *(*(v3 + 312) + 8 * v5);
          if (!v6)
          {
            v8 = *(v3 + 248);
            v9 = *(*(v8 + 2) + 16);
            v10 = HGMetalContext::bufferPool(v8);
            HGMetalBuffer::create(v9, v10, *(v3 + 1392), &v16);
            v11 = *(v3 + 312);
            v12 = *(v11 + 8 * v5);
            v13 = v16;
            if (v12 == v16)
            {
              if (v12)
              {
                (*(*v16 + 24))();
              }
            }

            else
            {
              if (v12)
              {
                (*(*v12 + 24))(*(v11 + 8 * v5));
                v13 = v16;
              }

              *(v11 + 8 * v5) = v13;
            }

            v6 = *(*(v3 + 312) + 8 * v5);
          }

          result = HGMetalBuffer::ModifyRangeAndMarkAsDirty(v6, 0, *(v3 + 1392), a2);
          v4 = *(v3 + 488);
        }

        v7 = v5 - 10;
        ++v5;
      }

      while (v7 < v4);
    }
  }

  else if (*(result + 122))
  {
    v14 = 0;
    v15 = 640;
    do
    {
      if ((*(v3 + 484) >> v14))
      {
        result = HGMetalBuffer::ModifyRangeAndMarkAsDirty(*(*(v3 + 312) + 64), v15, *(v3 + 1392), a2);
        v4 = *(v3 + 488);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v4);
  }

  return result;
}

void sub_25FC83ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void HGMetalHandler::_setCommandBufferDebugLabel(HGMetalHandler *this)
{
  std::to_string(&v4, *(this + 445) + 1);
  v2 = (this + 1344);
  if (*(this + 1367) < 0)
  {
    operator delete(*v2);
  }

  *v2 = *&v4.__r_.__value_.__l.__data_;
  *(this + 170) = *(&v4.__r_.__value_.__l + 2);
  std::operator+<char>();
  if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v4;
  }

  else
  {
    v3 = v4.__r_.__value_.__r.__words[0];
  }

  [*(this + 32) setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v3)}];
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_25FC83FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGMetalHandler::_setupCommandEncoder(HGMetalHandler *this)
{
  v53[2] = *MEMORY[0x277D85DE8];
  if (*(this + 33) || *(this + 1785) != 1)
  {
    return;
  }

  if (!HGRectIsNull(*(*(this + 41) + 20), *(*(this + 41) + 28)))
  {
    HGTraceGuard::HGTraceGuard(v52, "metal", 2, "HGMetalHandler::_createCommandBufferAndEncoder()");
    v4 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    v5 = 0;
    v6 = (this + 392);
    do
    {
      if (v6[v5])
      {
        v7 = [objc_msgSend(v4 "colorAttachments")];
        [v7 setTexture:*(v6[v5] + 144)];
        v10 = atomic_load(HGLogger::_enabled);
        if (v10)
        {
          HGLogger::log("gpu", 1, "destination texture [%d] (%p)\n", v8, v9, v5, v6[v5]);
        }

        std::operator+<char>();
        if (v50.f64[0] >= 0.0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        [objc_msgSend(v7 "texture")];
        if (*(this + 58))
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        [v7 setStoreAction:v12];
        if (*(v6[v5] + 168))
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        [v7 setLoadAction:v13];
        [v7 setClearColor:{0.0, 0.0, 0.0, 0.0}];
        *(v6[v5] + 168) = 1;
        if (SHIBYTE(v50.f64[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v5;
    }

    while (v5 != 8);
    v14 = *(this + 58);
    if (v14)
    {
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        HGLogger::log("gpu", 1, "destination resolve texture (%p)\n", v15, v16, *(this + 58));
      }

      v18 = atomic_load(HGLogger::_enabled);
      if (v18)
      {
        HGLogger::log("gpu", 2, "MSAA samples: %d\n", v15, v16, *(this + 118));
      }
    }

    if (*(this + 57))
    {
      v19 = [v4 depthAttachment];
      [v19 setStoreAction:0];
      [v19 setLoadAction:2];
      [v19 setClearDepth:1.0];
      [v19 setTexture:*(*(this + 57) + 144)];
      v22 = atomic_load(HGLogger::_enabled);
      if (v22)
      {
        HGLogger::log("gpu", 1, "depth texture (%p)\n", v20, v21, *(this + 57));
      }
    }

    v23 = [*(this + 32) renderCommandEncoderWithDescriptor:v4];
    *(this + 33) = v23;
    v24 = v23;
    [*(this + 33) setFrontFacingWinding:1];
    v25 = *(this + 58);
    if (!v25)
    {
      v25 = *v6;
    }

    v26 = *(v25 + 20);
    TextureRect = HGMetalTexture::GetTextureRect(v25);
    v28 = *(v25 + 24);
    v29 = (v28 - (HGMetalTexture::GetTextureRect(v25) >> 32));
    v30 = *(this + 33);
    v31 = vsub_s32(*(v25 + 28), *(v25 + 20));
    v32.i64[0] = v31.u32[0];
    v32.i64[1] = v31.u32[1];
    *__p = (v26 - TextureRect);
    *&__p[1] = v29;
    v50 = vcvtq_f64_u64(v32);
    v51 = xmmword_260342700;
    [v30 setViewport:__p];
    if (*(this + 57))
    {
      LOBYTE(__p[0]) = 1;
      v35 = atomic_load(HGLogger::_enabled);
      if (v35)
      {
        HGLogger::log("gpu", 2, "depth writing: enabled\n", v33, v34);
      }

      __p[1] = 1;
      v36 = atomic_load(HGLogger::_enabled);
      if (v36)
      {
        HGLogger::log("gpu", 2, "depth compare function: less\n", v33, v34);
      }

      DepthStencilState = HGMetalDepthStencilStateCache::getDepthStencilState(*(*(*(this + 31) + 24) + 160), __p);
      [*(this + 33) setDepthStencilState:DepthStencilState];
    }

    if (*(this + 1367) >= 0)
    {
      v38 = *(this + 1367);
    }

    else
    {
      v38 = *(this + 169);
    }

    if (v38 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v38 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&v48, 0, sizeof(v48));
    *(&v48.__r_.__value_.__s + 23) = v38 + 1;
    if (v38)
    {
      if (*(this + 1367) >= 0)
      {
        v39 = this + 1344;
      }

      else
      {
        v39 = *(this + 168);
      }

      memmove(&v48, v39, v38);
    }

    *(&v48.__r_.__value_.__l.__data_ + v38) = 46;
    std::to_string(&v47, *(this + 442) + 1);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v47;
    }

    else
    {
      v40 = v47.__r_.__value_.__r.__words[0];
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v47.__r_.__value_.__l.__size_;
    }

    v42 = std::string::append(&v48, v40, size);
    v43 = *&v42->__r_.__value_.__l.__data_;
    *&v50.f64[0] = v42->__r_.__value_.__r.__words[2];
    *__p = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(__p, " ");
    v45 = v44->__r_.__value_.__r.__words[0];
    v53[0] = v44->__r_.__value_.__l.__size_;
    *(v53 + 7) = *(&v44->__r_.__value_.__r.__words[1] + 7);
    v46 = HIBYTE(v44->__r_.__value_.__r.__words[2]);
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    if (*(this + 1343) < 0)
    {
      operator delete(*(this + 165));
    }

    *(this + 165) = v45;
    *(this + 166) = v53[0];
    *(this + 1335) = *(v53 + 7);
    *(this + 1343) = v46;
    if (SHIBYTE(v50.f64[0]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_60:
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_61:
          *(this + 1784) = 1;
          *(this + 441) = 0;
          HGTraceGuard::~HGTraceGuard(v52);
          return;
        }

LABEL_65:
        operator delete(v48.__r_.__value_.__l.__data_);
        goto LABEL_61;
      }
    }

    else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    operator delete(v47.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_65;
  }

  *(this + 1785) = 0;

  HGLogger::warning("HGMetalHandler::_setupCommandEncoder -- null buffer target!!", v2, v3);
}

void sub_25FC845E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC845FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC84610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
LABEL_8:
        HGTraceGuard::~HGTraceGuard(&a32);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a17);
      goto LABEL_8;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void HGMetalHandler::_updatePipelineState(HGMetalHandler *this)
{
  if (*(this + 1784) == 1)
  {
    v2 = *(this + 176);
    if (v2)
    {
    }

    *(this + 176) = 0;
  }

  if (*(this + 1785) == 1 && !*(this + 176))
  {
    HGTraceGuard::HGTraceGuard(v50, "metal", 2, "HGMetalHandler::_createPipelineState()");
    LODWORD(v23) = 0;
    *&v24 = 0;
    *(&v24 + 1) = 1;
    *v25 = 1;
    *&v25[4] = 0;
    *&v25[9] = 0;
    LODWORD(v26) = 0;
    *&v27 = 0;
    *(&v27 + 1) = 1;
    *v28 = 1;
    *&v28[4] = 0;
    *&v28[9] = 0;
    LODWORD(v29) = 0;
    *&v30 = 0;
    *(&v30 + 1) = 1;
    *v31 = 1;
    *&v31[4] = 0;
    *&v31[9] = 0;
    LODWORD(v32) = 0;
    *v33 = 0;
    *&v33[8] = 1;
    *&v33[25] = 0;
    *&v33[20] = 0;
    *&v33[16] = 1;
    LODWORD(v34) = 0;
    *&v35 = 0;
    *(&v35 + 1) = 1;
    *&v36[4] = 0;
    *&v36[9] = 0;
    *v36 = 1;
    LODWORD(v37) = 0;
    *&v38 = 0;
    *(&v38 + 1) = 1;
    *v39 = 1;
    *&v39[4] = 0;
    *&v39[9] = 0;
    LODWORD(v40) = 0;
    *v41 = 0;
    *&v41[8] = 1;
    *&v41[16] = 1;
    *&v41[25] = 0;
    *&v41[20] = 0;
    LODWORD(v42) = 0;
    *&v43 = 0;
    *(&v43 + 1) = 1;
    *v44 = 1;
    *&v44[4] = 0;
    *&v44[9] = 0;
    __p = 0;
    v48 = 0;
    *&v44[24] = *(this + 118);
    v44[28] = *(this + 57) != 0;
    v3 = *(this + 178);
    v45 = *(this + 177);
    v46 = v3;
    v49 = 0;
    if (&__p != (this + 1432))
    {
      std::vector<HGMTLFunctionType>::__assign_with_size[abi:ne200100]<HGMTLFunctionType*,HGMTLFunctionType*>(&__p, *(this + 179), *(this + 180), (*(this + 180) - *(this + 179)) >> 3);
    }

    v4 = *(this + 1456);
    v5 = *(this + 49);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 16);
    }

    LODWORD(v23) = v5;
    if (v4)
    {
      v25[16] = 1;
      v6 = *(this + 1480);
      v24 = *(this + 1464);
      *v25 = v6;
    }

    v7 = *(this + 50);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 16);
    }

    LODWORD(v26) = v7;
    if ((v4 & 2) != 0)
    {
      v28[16] = 1;
      v8 = *(this + 1512);
      v27 = *(this + 1496);
      *v28 = v8;
    }

    v9 = *(this + 51);
    if (v9)
    {
      LODWORD(v9) = *(v9 + 16);
    }

    LODWORD(v29) = v9;
    if ((v4 & 4) != 0)
    {
      v31[16] = 1;
      v10 = *(this + 1544);
      v30 = *(this + 1528);
      *v31 = v10;
    }

    v11 = *(this + 52);
    if (v11)
    {
      LODWORD(v11) = *(v11 + 16);
    }

    LODWORD(v32) = v11;
    if ((v4 & 8) != 0)
    {
      v33[32] = 1;
      v12 = *(this + 1576);
      *v33 = *(this + 1560);
      *&v33[16] = v12;
    }

    v13 = *(this + 53);
    if (v13)
    {
      LODWORD(v13) = *(v13 + 16);
    }

    LODWORD(v34) = v13;
    if ((v4 & 0x10) != 0)
    {
      v36[16] = 1;
      v14 = *(this + 1608);
      v35 = *(this + 1592);
      *v36 = v14;
    }

    v15 = *(this + 54);
    if (v15)
    {
      LODWORD(v15) = *(v15 + 16);
    }

    LODWORD(v37) = v15;
    if ((v4 & 0x20) != 0)
    {
      v39[16] = 1;
      v16 = *(this + 1640);
      v38 = *(this + 1624);
      *v39 = v16;
    }

    v17 = *(this + 55);
    if (v17)
    {
      LODWORD(v17) = *(v17 + 16);
    }

    LODWORD(v40) = v17;
    if ((v4 & 0x40) != 0)
    {
      v41[32] = 1;
      v18 = *(this + 1672);
      *v41 = *(this + 1656);
      *&v41[16] = v18;
    }

    v19 = *(this + 56);
    if (v19)
    {
      LODWORD(v19) = *(v19 + 16);
    }

    LODWORD(v42) = v19;
    if (v4 < 0)
    {
      v44[16] = 1;
      v20 = *(this + 1704);
      v43 = *(this + 1688);
      *v44 = v20;
    }

    RenderPipelineState = HGMetalRenderPipelineStateCache::getRenderPipelineState(*(*(*(this + 31) + 24) + 144), &v23);
    *(this + 176) = RenderPipelineState;
    if (RenderPipelineState)
    {
      [*(this + 33) setRenderPipelineState:{RenderPipelineState, v23, v24, *v25, *&v25[16], v26, v27, *v28, *&v28[16], v29, v30, *v31, *&v31[16], v32, *v33, *&v33[8], *&v33[24], v34, v35, *v36, *&v36[16], v37, v38, *v39, *&v39[16], v40, *v41, *&v41[8], *&v41[24], v42, v43, *v44, *&v44[16], v45, v46}];
    }

    else
    {
      *(this + 1785) = 0;
      HGLogger::warning("nil pipeline state.", v21, 0, v23, v24, *v25, *&v25[16], v26, v27, *v28, *&v28[16], v29, v30, *v31, *&v31[16], v32, *v33, *&v33[8], *&v33[24], v34, v35, *v36, *&v36[16], v37, v38, *v39, *&v39[16], v40, *v41, *&v41[8], *&v41[24], v42, v43, *v44, *&v44[16], v45, v46);
    }

    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }

    HGTraceGuard::~HGTraceGuard(v50);
    *(this + 1784) = 0;
  }

  else
  {
    *(this + 1784) = 0;
  }
}

void sub_25FC84AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  HGTraceGuard::~HGTraceGuard((v61 - 48));
  _Unwind_Resume(a1);
}

void HGMetalHandler::_validateMetalFunctions(HGMetalHandler *this, const char *a2, char *a3)
{
  if (*(this + 178))
  {
    if (*(this + 177))
    {
      return;
    }
  }

  else
  {
    HGLogger::warning("missing fragment function.", a2, a3);
    if (*(this + 177))
    {
      return;
    }
  }

  std::to_string(&v17, *(this + 122));
  v4 = std::string::insert(&v17, 0, "NumTexcoords:");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v18;
  }

  else
  {
    v6 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v16, v6, size);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
LABEL_13:
  std::to_string(&v17, *(this + 492));
  v9 = std::string::insert(&v17, 0, "UseVertexColors:");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v18;
  }

  else
  {
    v11 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v18.__r_.__value_.__l.__size_;
  }

  v13 = v8 ^ (2 * std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v16, v11, v12));
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_28:
    operator delete(v17.__r_.__value_.__l.__data_);
    goto LABEL_21;
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  *(&v18.__r_.__value_.__s + 23) = 10;
  strcpy(&v18, "vertexFunc");
  Function = HGMetalFunctionCache::getFunction(*(*(*(this + 31) + 24) + 168), &v18, v13);
  if (!Function)
  {
    HGMetalUtils::stringForMetalHeader(0);
  }

  *(this + 177) = Function;
  v15 = Function;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_25FC84E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalHandler::_setupScissorRect(uint64_t this)
{
  if (*(this + 1785) == 1)
  {
    v16 = v1;
    v17 = v2;
    v3 = this;
    if (*(this + 1744) == 1)
    {
      *&v15 = HGRectIntersection(*(this + 1748), *(this + 1756), *(*(this + 328) + 20), *(*(this + 328) + 28));
      *(&v15 + 1) = v4;
      v5 = *(v3 + 328);
    }

    else
    {
      v5 = *(this + 328);
      v15 = *(v5 + 20);
    }

    v6 = HGFormatUtils::collapseRectForFormat(&v15, *(v5 + 16));
    v7 = v6;
    v9 = v8;
    v10 = HIDWORD(v6);
    v11 = v6 - HGMetalTexture::GetTextureRect(*(v3 + 392));
    v12 = (v10 - (HGMetalTexture::GetTextureRect(*(v3 + 392)) >> 32));
    v13 = *(v3 + 264);
    v14[0] = v11;
    v14[1] = v12;
    v14[2] = (v9 - v7);
    v14[3] = (HIDWORD(v9) - v10);
    return [v13 setScissorRect:v14];
  }

  return this;
}

void HGMetalHandler::_setCommandEncoderDebugLabel(HGMetalHandler *this)
{
  v2 = *(this + 1343);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = this + 1320;
    v4 = this + v2 + 1320;
    if (*(this + 1343))
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = v4;
    goto LABEL_15;
  }

  v3 = *(this + 165);
  v2 = *(this + 166);
  v4 = &v3[v2];
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  while (1)
  {
    ++v5;
    while (*(v5 - 1) != 124)
    {
      v7 = v5++ == v4;
      if (v7)
      {
        goto LABEL_15;
      }
    }

    if (v5 == v4)
    {
      break;
    }

    if (*v5 == 32)
    {
      v6 = v5 - 1;
    }
  }

LABEL_15:
  v7 = v6 - v3 == -1 || v6 == v4;
  if (v7)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6 - v3;
  }

  if (v8 >= 0x32)
  {
    v9 = 50;
  }

  else
  {
    v9 = v8;
  }

  *(&v22.__r_.__value_.__s + 23) = 5;
  strcpy(&v22, "HGCE ");
  std::string::append(&v22, v3, v9);
  if (v8 >= 0x33)
  {
    std::string::append(&v22, " ... ");
  }

  v10 = *(this + 441);
  if (v10 >= 2)
  {
    std::to_string(&v18, v10);
    v11 = std::string::insert(&v18, 0, "(");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v19, ")");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v21 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v21 >= 0)
    {
      v16 = HIBYTE(v21);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(&v22, v15, v16);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_35:
        if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_43:
        operator delete(v18.__r_.__value_.__l.__data_);
        goto LABEL_36;
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

LABEL_36:
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v22;
  }

  else
  {
    v17 = v22.__r_.__value_.__r.__words[0];
  }

  [*(this + 33) setLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v17)}];
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_25FC85204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v28 - 17) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a10);
  if ((*(v28 - 17) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v28 - 40));
  _Unwind_Resume(exception_object);
}

HGMetalHandler::CommandEncoderCargo *___ZN14HGMetalHandler20_commitCommandBufferEv_block_invoke(void *a1)
{
  v2 = a1[6];
  std::mutex::lock((v2 + 1808));
  atomic_fetch_add((v2 + 1792), 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add((v2 + 1800), -*(*(a1[4] + 8) + 24));
  std::mutex::unlock((v2 + 1808));
  std::condition_variable::notify_all((v2 + 1872));
  atomic_load((v2 + 1792));
  atomic_load((v2 + 1800));
  kdebug_trace();
  v3 = *(*(a1[5] + 8) + 24);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    goto LABEL_7;
  }

  do
  {
    result = *v4;
    if (*v4)
    {
      HGMetalHandler::CommandEncoderCargo::~CommandEncoderCargo(result);
      result = MEMORY[0x2666E9F00]();
    }

    ++v4;
  }

  while (v4 != v5);
  v3 = *(*(a1[5] + 8) + 24);
  if (v3)
  {
LABEL_7:
    v7 = *v3;
    if (*v3)
    {
      v3[1] = v7;
      operator delete(v7);
    }

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void HGMetalHandler::_encodeSourceSampler(HGMetalHandler *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v7 = a2;
  v8 = (this + 32 * a2 + 496);
  v9 = vtst_s32(*v8, *v8);
  v10.i64[0] = v9.u32[0];
  v10.i64[1] = v9.u32[1];
  v23 = vandq_s8(v10, vdupq_n_s64(1uLL));
  v11 = atomic_load(HGLogger::_enabled);
  if (v11)
  {
    v12 = "linear";
    if (v23.i64[0])
    {
      v13 = "linear";
    }

    else
    {
      v13 = "nearest";
    }

    if (!v23.i64[1])
    {
      v12 = "nearest";
    }

    HGLogger::log("gpu", 2, "%d: %s / %s\n", a4, a5, a2, v13, v12);
  }

  v14 = v8[1].i32[1];
  if (*(PCICCTransferFunctionLUT::getLUTEnd(*(this + 31)) + 56) & 1) != 0 || (v17 = *(*(this + 39) + 8 * v7)) == 0 || (*(v17 + 169))
  {
    v24 = 4 * (v14 != 1);
    if (v14 == 1)
    {
      v18 = atomic_load(HGLogger::_enabled);
      if (v18)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v24 = 0;
    v22 = atomic_load(HGLogger::_enabled);
    if (v22)
    {
LABEL_13:
      HGLogger::log("gpu", 1, "sampler address mode : ClampToEdge\n", v15, v16);
    }
  }

  v25 = v8[1].i8[0];
  v19 = atomic_load(HGLogger::_enabled);
  if (v19)
  {
    if (v25)
    {
      v20 = "normalized";
    }

    else
    {
      v20 = "rectangular";
    }

    HGLogger::log("gpu", 2, "%d: %s\n", v15, v16, a2, v20);
  }

  SamplerState = HGMetalSamplerStateCache::getSamplerState(*(*(*(this + 31) + 24) + 152), &v23);
  [*(this + 33) setFragmentSamplerState:SamplerState atIndex:v7];
}

void HGMetalHandler::CommandEncoderCargo::~CommandEncoderCargo(HGMetalHandler::CommandEncoderCargo *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 27);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(this + 25);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(this + 24);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = *(this + 22);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(this + 21);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  v12 = *(this + 20);
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = *(this + 19);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v14 = *(this + 18);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = *(this + 17);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v16 = *(this + 16);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = *(this + 15);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  v18 = *(this + 14);
  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  v19 = *(this + 13);
  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  v20 = *(this + 12);
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  v21 = *(this + 11);
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  v22 = *(this + 10);
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  v23 = *(this + 9);
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  v24 = *(this + 8);
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  v25 = *(this + 7);
  if (v25)
  {
    (*(*v25 + 24))(v25);
  }

  v26 = *(this + 6);
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  v27 = *(this + 5);
  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  v28 = *(this + 4);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  v29 = *(this + 3);
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  v30 = *(this + 2);
  if (v30)
  {
    (*(*v30 + 24))(v30);
  }

  v31 = *(this + 1);
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  if (*this)
  {
    (*(**this + 24))(*this);
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

char *std::vector<HGMTLFunctionType>::__assign_with_size[abi:ne200100]<HGMTLFunctionType*,HGMTLFunctionType*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t HGPage::ReleaseTextures(HGPage *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 21) = 0;
  }

  v3 = *(this + 22);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    *(this + 22) = 0;
  }

  v4 = *(this + 23);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 23) = 0;
  }

  v5 = *(this + 24);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(this + 24) = 0;
  }

  v6 = *(this + 25);
  if (v6)
  {
    (*(*v6 + 24))(v6);
    *(this + 25) = 0;
  }

  v7 = *(this + 26);
  if (v7)
  {
    (*(*v7 + 24))(v7);
    *(this + 26) = 0;
  }

  v8 = *(this + 27);
  if (v8)
  {
    (*(*v8 + 24))(v8);
    *(this + 27) = 0;
  }

  result = *(this + 28);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(this + 28) = 0;
  }

  return result;
}

void HGPagePullTexturesGuard::HGPagePullTexturesGuard(HGPagePullTexturesGuard *this, HGNode *a2, HGPage *a3)
{
  *this = a3;
  if (a2)
  {
    (*(*a2 + 472))(a2, a3, 0);
  }
}

void HGPagePullTexturesGuard::~HGPagePullTexturesGuard(HGPage **this)
{
  v1 = *this;
  if (v1)
  {
    HGPage::ReleaseTextures(v1);
  }
}

void HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(HGPagePullMetalTexturesGuard *this, HGNode *a2, HGPage *a3)
{
  *this = a3;
  if (a2)
  {
    (*(*a2 + 480))(a2, a3, 0);
  }
}

void HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(HGPage **this)
{
  v1 = *this;
  if (v1)
  {
    HGPage::ReleaseTextures(v1);
  }
}

void HGNode::HGNode(HGNode *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_28721A040;
  *(v1 + 12) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xF00000004;
  *(v1 + 120) = 0;
  *(v1 + 112) = v1 + 120;
  *(v1 + 128) = 0;
  *(v1 + 40) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 101) = 0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = HGRectNull;
  *(v1 + 248) = 0u;
  *(v1 + 168) = HGRectNull;
  *(v1 + 216) = 0;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 220) = HGRectNull;
  *(v1 + 236) = 0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = -1;
  *(v1 + 332) = 0;
  *(v1 + 336) = 0;
  *(v1 + 344) = xmmword_26038F230;
  *(v1 + 360) = 0;
  *(v1 + 368) = 1065353216;
  __asm { FMOV            V0.4S, #1.0 }

  *(v1 + 384) = _Q0;
  *(v1 + 400) = 0;
  *(v1 + 16) = 512;
  *(v1 + 48) = 0;
  *(v1 + 56) = 2;
  HGShaderBinding::reset((v1 + 260));
}

void sub_25FC861A0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 400);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v1 + 296);
  if (v5)
  {
    *(v1 + 304) = v5;
    operator delete(v5);
  }

  std::__tree<HGNode *>::destroy(v2, *(v1 + 120));
  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void HGNode::~HGNode(HGNode *this)
{
  *this = &unk_28721A040;
  v2 = *(this + 24);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 24) = 0;
  }

  v3 = *(this + 31);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    *(this + 31) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 12) = 0;
  }

  if (*(this + 22) >= 1)
  {
    v5 = 0;
    do
    {
      if (*(*(this + 10) + 8 * v5))
      {
        (*(*this + 120))(this, v5, 0);
        v6 = *(*(this + 10) + 8 * v5);
        if (v6)
        {
          MEMORY[0x2666E9F00](v6, 0x1020C402AEDCB0CLL);
        }
      }

      ++v5;
    }

    while (v5 < *(this + 22));
  }

  v7 = *(this + 10);
  if (v7)
  {
    free(v7);
  }

  if (*(this + 14))
  {
    v8 = *(this + 6);
    if (v8)
    {
      HGFree(v8);
    }
  }

  *(this + 4) |= 0x80000000;
  v9 = *(this + 50);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = *(this + 37);
  if (v10)
  {
    *(this + 38) = v10;
    operator delete(v10);
  }

  std::__tree<HGNode *>::destroy(this + 112, *(this + 15));

  HGObject::~HGObject(this);
}

{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGNode::label_A(HGNode *this)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  result = (*(*(*this - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL) - 1;
  do
  {
    v2 = *++result;
  }

  while ((v2 - 48) < 0xA);
  return result;
}

void HGNode::info(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t HGNode::debugDescription(HGNode *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v23);
  HGObject::debugDescription(&__p);
  if ((v22 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v22 & 0x80u) == 0)
  {
    v3 = v22;
  }

  else
  {
    v3 = v21;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, p_p, v3);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v4 = (*(*this + 48))(this);
  v5 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v4, v5);
  v6 = (*(*this + 56))(this);
  if (v6)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ", ", 2);
    v8 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6, v8);
  }

  v19 = 0;
  LOBYTE(v18.__locale_) = 0;
  v17 = 0;
  LOBYTE(v16) = 0;
  (*(*this + 64))(&__p, this, 3, &v18, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_13:
      v9 = v22;
      if ((v22 & 0x80u) != 0)
      {
        v9 = v21;
      }

      if (!v9)
      {
        goto LABEL_28;
      }

LABEL_21:
      std::ios_base::getloc((&v24 + *(v24 - 24)));
      v11 = std::locale::use_facet(&v18, MEMORY[0x277D82680]);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v18);
      std::ostream::put();
      std::ostream::flush();
      if ((v22 & 0x80u) == 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      if ((v22 & 0x80u) == 0)
      {
        v13 = v22;
      }

      else
      {
        v13 = v21;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v12, v13);
      goto LABEL_28;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v18.__locale_);
  v10 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v10 = v21;
  }

  if (v10)
  {
    goto LABEL_21;
  }

LABEL_28:
  std::stringbuf::str();
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v23[0] = *MEMORY[0x277D82818];
  v14 = *(MEMORY[0x277D82818] + 72);
  *(v23 + *(v23[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v24 = v14;
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v28);
}

void sub_25FC8683C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a27);
  _Unwind_Resume(a1);
}

uint64_t HGNode::shaderDescription(HGNode *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v22);
  HGObject::HGObject(v6);
  v6[0] = &unk_28721A520;
  memset(&v16[32], 0, 32);
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, 28);
  v20 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 1;
  v21 = 0;
  (*(*this + 328))(this, v6);
  FragmentFunctionName = HGProgramDescriptor::GetFragmentFunctionName(v6);
  v3 = strlen(FragmentFunctionName);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, FragmentFunctionName, v3);
  std::stringbuf::str();
  HGProgramDescriptor::~HGProgramDescriptor(v6);
  v22[0] = *MEMORY[0x277D82818];
  v4 = *(MEMORY[0x277D82818] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v23 = v4;
  v24 = MEMORY[0x277D82878] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v27);
}

void sub_25FC86B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  HGProgramDescriptor::~HGProgramDescriptor(&a9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a44);
  _Unwind_Resume(a1);
}

uint64_t HGNode::SetInput(HGNode *this, unsigned int a2, HGNode *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 22) > a2)
  {
    v6 = *(*(this + 10) + 8 * a2);
    if (!v6)
    {
LABEL_10:
      operator new();
    }

    goto LABEL_11;
  }

  v8 = (a2 + 8) & 0x7FFFFFF8;
  v9 = *(this + 10);
  if (v9)
  {
    v10 = malloc_type_realloc(v9, 8 * v8, 0x2004093837F09uLL);
    *(this + 10) = v10;
    v11 = *(this + 22);
    if (v11 >= v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = malloc_type_malloc(8 * ((a2 + 8) & 0x7FFFFFF8), 0x2004093837F09uLL);
  *(this + 10) = v10;
  v11 = *(this + 22);
  if (v11 < v8)
  {
LABEL_8:
    bzero(&v10[v11], 8 * (v8 + ~v11) + 8);
  }

LABEL_9:
  *(this + 22) = v8;
  v6 = v10[a2];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  v12 = *(v6 + 16);
  if (v12 == a3)
  {
    return 0;
  }

  if (v12)
  {
    v13 = *(v12 + 120);
    if (v13)
    {
      v14 = (v12 + 120);
      v15 = *(v12 + 120);
      do
      {
        v16 = v15[4];
        v17 = v16 >= v6;
        v18 = v16 < v6;
        if (v17)
        {
          v14 = v15;
        }

        v15 = v15[v18];
      }

      while (v15);
      if (v14 != (v12 + 120) && v6 >= v14[4])
      {
        v19 = v14[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          v21 = v14;
          do
          {
            v20 = v21[2];
            v22 = *v20 == v21;
            v21 = v20;
          }

          while (!v22);
        }

        if (*(v12 + 112) == v14)
        {
          *(v12 + 112) = v20;
        }

        --*(v12 + 128);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v13, v14);
        operator delete(v14);
        v12 = *(*(*(this + 10) + 8 * a2) + 16);
      }
    }

    (*(*v12 + 24))(v12);
    v6 = *(*(this + 10) + 8 * a2);
  }

  *(v6 + 16) = a3;
  if (a3)
  {
    (*(*a3 + 16))(a3);
    v23 = *(a3 + 15);
    if (!v23)
    {
LABEL_41:
      operator new();
    }

    v24 = *(*(this + 10) + 8 * a2);
    while (1)
    {
      while (1)
      {
        v25 = v23;
        v26 = v23[4];
        if (v24 >= v26)
        {
          break;
        }

        v23 = *v25;
        if (!*v25)
        {
          goto LABEL_41;
        }
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = v25[1];
      if (!v23)
      {
        goto LABEL_41;
      }
    }
  }

  HGNode::ClearBits(this, 0xFFFF, a3);
  return 1;
}

uint64_t HGNode::GetInput(HGNode *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*(this + 22) <= a2)
  {
    return 0;
  }

  v2 = *(*(this + 10) + 8 * a2);
  if (!v2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

uint64_t HGNode::SetFlags(HGNode *this, uint64_t a2, int a3)
{
  if ((a3 & 0x80) != 0)
  {
    v10 = *(this + 4);
    v11 = *(this + 4);
    if (a3 != 128)
    {
      v12 = this;
      (*(*this + 136))(this, a2, a3 & 0xFFFFFF7F);
      this = v12;
      v11 = *(v12 + 4);
    }

    *(this + 4) = v11 | 0x94;
    return v10;
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v13 = *(this + 4);
    *(this + 4) = v13 | a3;
    return v13;
  }

  else
  {
    v3 = *(this + 10);
    if (!v3 || (v4 = *(v3 + 8 * a2)) == 0)
    {
      v5 = this;
      v6 = a2;
      v7 = a3;
      (*(*this + 120))(this);
      a3 = v7;
      v4 = *(*(v5 + 10) + 8 * v6);
    }

    v8 = *(v4 + 12);
    *(v4 + 12) = v8 | a3;
    return v8;
  }
}

uint64_t HGNode::ClearFlags(HGNode *this, uint64_t a2, int a3)
{
  if ((a3 & 0x80) != 0)
  {
    v10 = *(this + 4);
    v11 = *(this + 4);
    if (a3 != 128)
    {
      v12 = this;
      (*(*this + 144))(this, a2, a3 & 0xFFFFFF7F);
      this = v12;
      v11 = *(v12 + 4);
    }

    *(this + 4) = v11 & 0xFFFFFF7F;
    return v10;
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v13 = *(this + 4);
    *(this + 4) = v13 & ~a3;
    return v13;
  }

  else
  {
    v3 = *(this + 10);
    if (!v3 || (v4 = *(v3 + 8 * a2)) == 0)
    {
      v5 = this;
      v6 = a2;
      v7 = a3;
      (*(*this + 120))(this);
      a3 = v7;
      v4 = *(*(v5 + 10) + 8 * v6);
    }

    v8 = *(v4 + 12);
    *(v4 + 12) = v8 & ~a3;
    return v8;
  }
}

uint64_t HGNode::GetFlags(HGNode *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return *(this + 4);
  }

  if (*(this + 22) > a2)
  {
    v2 = *(*(this + 10) + 8 * a2);
    if (v2)
    {
      return *(v2 + 12);
    }
  }

  return 0;
}

char *HGNode::GetParameterName(HGNode *this, int a2)
{
  v3 = (*(*this + 80))(this);
  v4 = &unk_26081557C;
  if (a2 < 9)
  {
    v4 = &HGNode::GetParameterName(int)::names + 4 * a2;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t HGNode::SetParameter(HGNode *this, int a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 14);
  if (v7 >= 2)
  {
    v8 = (a2 & 0x7FFFFFFC) + 4;
    if (v8 > v7)
    {
      if (*(this + 6))
      {
        v9 = *(this + 14);
      }

      else
      {
        v9 = 0;
      }

      v10 = this;
      v11 = a2;
      v12 = a6;
      v13 = a5;
      v14 = a4;
      v15 = a3;
      v16 = HGRealloc(*(this + 6), 16 * v8);
      *(v10 + 6) = v16;
      bzero(&v16[16 * v9], 16 * (v8 - v9));
      a2 = v11;
      a3 = v15;
      a4 = v14;
      this = v10;
      a5 = v13;
      a6 = v12;
      *(v10 + 14) = v8;
    }

    if (*(this + 11) <= a2)
    {
      *(this + 11) = a2 + 1;
    }

    goto LABEL_11;
  }

  if (*(this + 11) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_11:
  v17 = (*(this + 6) + 4 * (4 * a2));
  if (*v17 == a3 && v17[1] == a4 && v17[2] == a5 && v17[3] == a6)
  {
    return 0;
  }

  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  HGNode::ClearBits(this, 0xFFFF, a7);
  return 1;
}

uint64_t HGNode::GetParameter(HGNode *this, int a2, float *a3)
{
  if (a2 < 0 || *(this + 11) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 6) + 4 * (4 * a2));
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

void HGNode::WriteDotGraph(uint64_t a1, uint64_t a2, int a3)
{
  HGDotGraph::HGDotGraph(v13);
  PCImage::setIsPremultiplied(v5, 1);
  HGDotGraph::footnode(v13, 0);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  HGDotGraph::begin(v13, v6);
  switch(a3)
  {
    case 2:
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v9 = 1065353216;
      operator new();
    case 1:
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v9 = 1065353216;
      operator new();
    case 0:
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v9 = 1065353216;
      operator new();
  }

  HGDotGraph::end(v13);
  HGDotGraph::~HGDotGraph(v13);
}

void sub_25FC89134(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&STACK[0x280]);
  std::deque<HGNode *>::~deque[abi:ne200100](v1 - 240);
  HGDotGraph::~HGDotGraph((v1 - 184));
  _Unwind_Resume(a1);
}

uint64_t hgstd::stable_unique<std::__deque_iterator<HGNode const*,HGNode const**,HGNode const*&,HGNode const***,long,512l>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  if (a2 != a4)
  {
    operator new();
  }

  std::__tree<HGNode *>::destroy(&v6, 0);
  return a1;
}

void std::deque<HGNode const*>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  if (a2 > v3)
  {
    v4 = a2 - v3;

    std::deque<HGNode const*>::__append(a1, v4);
    return;
  }

  if (a2 >= v3)
  {
    return;
  }

  v5 = a1[4];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * (v5 >> 9));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *v8 + 8 * (a1[4] & 0x1FFLL);
    if (!a2)
    {
LABEL_12:
      v11 = v5 + v3;
      v12 = (v7 + 8 * ((v5 + v3) >> 9));
      v13 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  v10 = a2 + ((v9 - *v8) >> 3);
  if (v10 >= 1)
  {
    v8 += 8 * (v10 >> 9);
    v9 = *v8 + 8 * (v10 & 0x1FF);
    goto LABEL_12;
  }

  v15 = 511 - v10;
  v8 -= 8 * (v15 >> 9);
  v9 = *v8 + 8 * (~v15 & 0x1FF);
  v11 = v5 + v3;
  v12 = (v7 + 8 * ((v5 + v3) >> 9));
  v13 = v6 - v7;
  if (v6 != v7)
  {
LABEL_13:
    v14 = *v12 + 8 * (v11 & 0x1FF);
    if (v14 == v9)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
  if (!v9)
  {
    return;
  }

LABEL_17:
  v16 = ((v14 - *v12) >> 3) + ((v12 - v8) << 6) - ((v9 - *v8) >> 3);
  if (v16 >= 1)
  {
    v17 = v6 == v7 ? 0 : (v13 << 6) - 1;
    v18 = v3 - v16;
    a1[5] = v18;
    if (v17 - v5 - v18 >= 0x400)
    {
      do
      {
        operator delete(*(v6 - 8));
        v19 = a1[1];
        v6 = a1[2] - 8;
        a1[2] = v6;
        if (v6 == v19)
        {
          v20 = 0;
        }

        else
        {
          v20 = ((v6 - v19) << 6) - 1;
        }
      }

      while ((v20 - (a1[5] + a1[4])) > 0x3FF);
    }
  }
}

const char *HGNode::SetOutputFormatComponents(const char *result, const char *a2, char *a3)
{
  if (a2 > 4 || ((1 << a2) & 0x16) == 0)
  {
    return HGLogger::warning("HGNode::SetOutputFormatComponents -- invalid HGFormatComponents value", a2, a3);
  }

  *(result + 8) = a2;
  return result;
}

HGNode *HGNode::SetSupportedFormatPrecisions(HGNode *this, const char *a2, char *a3)
{
  if ((a2 & 0xF) == 0)
  {
    return HGLogger::warning("HGNode::SetSupportedFormatPrecisions -- invalid precision mask value", a2, a3);
  }

  *(this + 9) = a2;
  return this;
}

void HGNode::EnableGLHardwareBlending(HGNode *this)
{
  if (*(this + 332) == 1)
  {
    v13 = v1;
    v14 = v2;
    glEnable(0xBE2u);
    v4 = (*(*this + 256))(this);
    HGGLBlendingInfo::HGGLBlendingInfo(v12, v4);
    Size = PVPerfStats::FrameStats::GetSize(v12);
    DstRGBFactor = HGGLBlendingInfo::GetDstRGBFactor(v12);
    v7 = LiImageSource::imageSpace(v12);
    DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(v12);
    glBlendFuncSeparate(Size, DstRGBFactor, v7, DstAlphaFactor);
    RGBOperation = HGGLBlendingInfo::GetRGBOperation(v12);
    AlphaOperation = HGGLBlendingInfo::GetAlphaOperation(v12);
    glBlendEquationSeparate(RGBOperation, AlphaOperation);
    v11 = (*(*this + 272))(this);
    glBlendColor(COERCE_GLFLOAT(*v11), COERCE_GLFLOAT(HIDWORD(*v11)), COERCE_GLFLOAT(*(v11 + 8)), COERCE_GLFLOAT(HIDWORD(*v11)));
  }
}

HGNode *HGNode::GetGuardedOutput(HGNode *this, HGRenderer *a2)
{
  result = (*(*this + 384))(this, a2);
  if (result)
  {
    v4 = result == this;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((*(result + 4) & 0x80000000) != 0)
    {
      v5 = 0;
      v6 = "HGNode::GetOutput (%s) received a de-allocated HGNode.";
    }

    else
    {
      if ((*(result + 34) & 0x80000000) == 0)
      {
        return result;
      }

      v5 = result;
      *(result + 34) = 0;
      v6 = "HGNode::GetOutput (%s) received an invalid HGNode.";
    }

    v7 = (*(*this + 48))(this);
    HGLogger::error(v6, v8, v9, v7);
    return v5;
  }

  return result;
}

HGNode *HGNode::GetOutput(HGNode *this, HGRenderer *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v2 = *(*(*this - 8) + 8);
  if (v2 == "6HGNode" || ((v2 & "6HGNode" & 0x8000000000000000) != 0) != __OFSUB__(v2, "6HGNode") && (v4 = this, v5 = a2, v6 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("6HGNode" & 0x7FFFFFFFFFFFFFFFLL)), a2 = v5, v7 = v6, this = v4, !v7))
  {
    v3 = *(this + 4);
    *(this + 4) = v3 | 0x400;
    if ((v3 & 6) == 0)
    {

      return HGRenderer::GetInput(a2, this, 0);
    }
  }

  return this;
}

uint64_t HGNode::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HGNode::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

HGNode *HGNode::ClearBits(HGNode *this, const char *a2, char *a3)
{
  v3 = a2;
  v4 = this;
  if (*(this + 10) == 1)
  {
    this = HGLogger::warning("ClearBits() : called during render\n", a2, a3);
  }

  v5 = *(v4 + 34);
  if ((v5 & v3) != 0)
  {
    *(v4 + 34) = v5 & ~v3;
    v6 = *(v4 + 14);
    v7 = (v4 + 120);
    if (v6 != v7)
    {
      do
      {
        this = HGNode::ClearBits(*v6[4], 255);
        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
    }
  }

  return this;
}

uint64_t HGNode::RenderTileDispatch(HGNode *this, int32x2_t *a2, char *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x20000) != 0)
  {
    if ((~v5 & 0x82) != 0)
    {
      HGLogger::warning("HGNode::RenderTileDispatch - improper flags for RenderSingleBufferedTile!", a2, a3);
    }

    else if (atomic_fetch_add(this + 64, 1u) >= 1)
    {
      return 0;
    }
  }

  v7 = vsub_s32(a2[1], *a2);
  HGStats::ProfilerScopeGuard::ProfilerScopeGuard(v138, *(*&a2[42] + 424), this, vmul_lane_s32(v7, v7, 1).i32[0]);
  v8 = *(this + 9);
  if (v8)
  {
    v32[0] = 0x100000001;
    v32[1] = &v34;
    v32[2] = 0x10DE000010B5;
    v33 = 3;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v39[0] = 0x100000001;
    v39[1] = &v41;
    v39[2] = 0x10DE000010B5;
    v40 = 3;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v46[0] = 0x100000001;
    v46[1] = &v48;
    v46[2] = 0x10DE000010B5;
    v47 = 3;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v53[0] = 0x100000001;
    v53[1] = &v55;
    v53[2] = 0x10DE000010B5;
    v54 = 3;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31[1] = v39;
    v31[2] = v46;
    v31[3] = v53;
    v61[0] = 0x100000001;
    v61[1] = &v63;
    v61[2] = 0x10DE000010B5;
    v62 = 3;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v66 = v67;
    v68[0] = 0x100000001;
    v68[1] = v70;
    v68[2] = 0x10DE000010B5;
    v69 = 3;
    memset(v70, 0, 48);
    v70[6] = v71;
    v72[0] = 0x100000001;
    v72[1] = &v74;
    v72[2] = 0x10DE000010B5;
    v73 = 3;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    v77 = v78;
    v79[1] = v81;
    memset(&v81[2], 0, 32);
    memset(v81, 0, 24);
    v81[6] = v82;
    v83[1] = &v85;
    v88 = v89;
    v90[1] = v92;
    memset(&v92[2], 0, 32);
    memset(v92, 0, 24);
    v92[6] = v93;
    v94[1] = &v96;
    v99 = v100;
    v79[0] = 0x100000001;
    v79[2] = 0x10DE000010B5;
    v80 = 3;
    v84 = 3;
    v91 = 3;
    v95 = 3;
    v102 = 3;
    v101[1] = v103;
    memset(&v103[2], 0, 32);
    memset(v103, 0, 24);
    v103[6] = v104;
    v83[0] = 0x100000001;
    v83[2] = 0x10DE000010B5;
    v87 = 0u;
    v85 = 0u;
    v86 = 0u;
    v60[1] = v68;
    v60[2] = v72;
    v90[0] = 0x100000001;
    v90[2] = 0x10DE000010B5;
    v60[3] = v79;
    v94[0] = 0x100000001;
    v94[2] = 0x10DE000010B5;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v60[4] = v83;
    v101[0] = 0x100000001;
    v101[2] = 0x10DE000010B5;
    v60[5] = v90;
    v60[6] = v94;
    v60[7] = v101;
    v107 = 16;
    v109 &= 0x7Cu;
    v108 = 2080374784;
    v105[0] = &v106;
    v113 &= 0x7Cu;
    v105[1] = &v110;
    v117 &= 0x7Cu;
    v105[2] = &v114;
    v121 &= 0x7Cu;
    v105[3] = &v118;
    v125 &= 0x7Cu;
    v105[4] = &v122;
    v129 &= 0x7Cu;
    v105[5] = &v126;
    v133 &= 0x7Cu;
    v105[6] = &v130;
    v106 = -24503;
    v111 = 16;
    v112 = 2080374784;
    v110 = -24503;
    v115 = 16;
    v116 = 2080374784;
    v114 = -24503;
    v119 = 16;
    v120 = 2080374784;
    v118 = -24503;
    v123 = 16;
    v124 = 2080374784;
    v122 = -24503;
    v127 = 16;
    v128 = 2080374784;
    v126 = -24503;
    v131 = 16;
    v132 = 2080374784;
    v130 = -24503;
    v135 = 16;
    v136 = 2080374784;
    v137 &= 0x7Cu;
    v134 = -24503;
    v105[7] = &v134;
    v9 = a2[1];
    *&v10 = a2->i32[0];
    *(&v10 + 1) = HIDWORD(*a2);
    v29 = v10;
    *v30 = 0;
    *&v10 = v9.i32[0];
    *(&v10 + 1) = v9.i32[1];
    *&v30[8] = v10;
    *&v30[24] = 1;
    v31[0] = v32;
    v35 = *v30;
    v36 = *&v30[16];
    v43 = *&v30[16];
    v42 = *v30;
    v34 = v29;
    v38[1] = a2[2];
    v11 = 16 * a2[3].i32[0];
    v37 = v38;
    v38[0] = v11;
    v41 = v29;
    v45[1] = a2[4];
    v12 = 16 * a2[5].i32[0];
    v44 = v45;
    v45[0] = v12;
    v49 = *v30;
    v50 = *&v30[16];
    v48 = v29;
    v13 = a2[6];
    v14 = 16 * a2[7].i32[0];
    v51 = v52;
    v52[0] = v14;
    v52[1] = v13;
    v56 = *v30;
    v57 = *&v30[16];
    v55 = v29;
    v59[1] = a2[8];
    v60[0] = v61;
    v15 = 16 * a2[9].i32[0];
    v58 = v59;
    v59[0] = v15;
    v16 = a2[26];
    *&v10 = v16.i32[0];
    *(&v10 + 1) = v16.i32[1];
    v63 = v10;
    *&v64 = 0;
    v17 = a2[27].i32[1];
    *(&v64 + 1) = a2[27].i32[0];
    *&v65 = v17;
    *(&v65 + 1) = 1;
    v67[1] = a2[10];
    v67[0] = 16 * a2[11].i32[0];
    v18 = a2[28].i32[1];
    v70[0] = a2[28].i32[0];
    v70[1] = v18;
    v70[2] = 0;
    v19 = a2[29];
    v20 = a2[30];
    *&v10 = v19.i32[0];
    *(&v10 + 1) = v19.i32[1];
    *&v70[3] = v10;
    v70[5] = 1;
    v71[1] = a2[12];
    v71[0] = 16 * a2[13].i32[0];
    *&v10 = v20.i32[0];
    *(&v10 + 1) = v20.i32[1];
    v74 = v10;
    *&v75 = 0;
    v21 = a2[31].i32[1];
    *(&v75 + 1) = a2[31].i32[0];
    *&v76 = v21;
    *(&v76 + 1) = 1;
    v78[1] = a2[14];
    v78[0] = 16 * a2[15].i32[0];
    v81[0] = a2[32].i32[0];
    v81[1] = a2[32].i32[1];
    v22 = a2[33];
    v23 = a2[34];
    *&v10 = v22.i32[0];
    *(&v10 + 1) = v22.i32[1];
    *&v81[3] = v10;
    v81[5] = 1;
    v82[1] = a2[16];
    v82[0] = 16 * a2[17].i32[0];
    *&v10 = v23.i32[0];
    *(&v10 + 1) = v23.i32[1];
    v85 = v10;
    *&v86 = 0;
    *(&v86 + 1) = a2[35].i32[0];
    *&v87 = a2[35].i32[1];
    *(&v87 + 1) = 1;
    v89[1] = a2[18];
    v89[0] = 16 * a2[19].i32[0];
    v92[0] = a2[36].i32[0];
    v92[1] = a2[36].i32[1];
    v24 = a2[37];
    v25 = a2[38];
    *&v10 = v24.i32[0];
    *(&v10 + 1) = v24.i32[1];
    *&v92[3] = v10;
    v92[5] = 1;
    v93[1] = a2[20];
    v93[0] = 16 * a2[21].i32[0];
    *&v10 = v25.i32[0];
    *(&v10 + 1) = v25.i32[1];
    v96 = v10;
    *&v97 = 0;
    *(&v97 + 1) = a2[39].i32[0];
    *&v98 = a2[39].i32[1];
    *(&v98 + 1) = 1;
    v100[1] = a2[22];
    v100[0] = 16 * a2[23].i32[0];
    v103[0] = a2[40].i32[0];
    v103[1] = a2[40].i32[1];
    v26 = a2[41];
    *&v10 = v26.i32[0];
    *(&v10 + 1) = v26.i32[1];
    *&v103[3] = v10;
    v103[5] = 1;
    v104[1] = a2[24];
    v104[0] = 16 * a2[25].i32[0];
    v28 = (*(*this + 320))(this, 0);
    v8(&v29, v31, &v28, v105, v60);
    v6 = 0;
  }

  else
  {
    v6 = (*(*this + 176))(this, a2);
  }

  HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(v138);
  return v6;
}