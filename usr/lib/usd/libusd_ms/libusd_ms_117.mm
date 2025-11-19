int8x8_t *sub_29AB49A78(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = result + 4;
      v12 = vdupq_n_s32(0x437F0000u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2CA0), v12), 0));
        *v15.i8 = vqmovn_s32(v15);
        *(v11 - 1) = vqmovun_s16(v15).u32[0];
        v11 += 4;
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = vdupq_n_s32(0x437F0000u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2CA0), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2CA0), v5), 0))));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 8))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB49B78(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = result + 4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x437F0000u);
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CA0), v13), 0));
        *v15.i8 = vqmovn_s32(v15);
        *(v11 - 1) = vqmovun_s16(v15).u32[0];
        v11 += 4;
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x437F0000u);
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CA0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CA0), v6), 0))));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 8))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB49C6C(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = &result->i8[2 * a2];
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12 = vdupq_n_s32(0x477FFF00u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2CA0), v12), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5 = vdupq_n_s32(0x477FFF00u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2CA0), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2CA0), v5), 0)));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 16))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB49D6C(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = &result->i8[2 * a2];
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CA0), v13), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CA0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CA0), v6), 0)));
      v7 = &result[1];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > (v3 - 16))
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

_DWORD *sub_29AB49E60(_DWORD *result, int a2, float32x4_t *a3, double a4, float32x4_t a5, double a6, double a7, int32x4_t a8)
{
  v8 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v17 = vdupq_n_s32(0x437F0000u);
      a5.i64[0] = 0x3F0000003F000000;
      a5.i64[1] = 0x3F0000003F000000;
      do
      {
        v18 = *a3++;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v18, v17), a5), xmmword_29B6C2CB0), v17), 0));
        *a8.i8 = vqmovn_s32(a8);
        *a8.i8 = vqmovun_s16(a8);
        v16 = result + 1;
        *result = a8.i32[0];
        v19 = (result + 2) > v8;
        ++result;
      }

      while (!v19);
    }

    else
    {
      v16 = result;
    }

    if (v16 < v8)
    {
      v20 = vdupq_n_s32(0x437F0000u);
      a5.i32[0] = 1132396544;
      v21.i64[0] = 0x3F0000003F000000;
      v21.i64[1] = 0x3F0000003F000000;
      do
      {
        a8.i32[0] = a3->i32[1];
        v22 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(a8, a5), v21), 0), v20), 0));
        *v16 = v22.i8[0];
        v23 = a3->i32[0];
        a3 = (a3 + 8);
        v22.i32[0] = v23;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(v22, a5), v21), 0), v20), 0));
        v16[1] = a8.i8[0];
        v16 += 2;
      }

      while (v16 < v8);
    }
  }

  else
  {
    v9 = a3[-2].i64 + 4 * a2;
    v10 = vdupq_n_s32(0x437F0000u);
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v10), v11), xmmword_29B6C2CB0), v10), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v10), v11), xmmword_29B6C2CB0), v10), 0))));
      v12 = (result + 2);
      if (v12 == v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = (v8 - 8);
      }

      if (v12 == v8)
      {
        v14 = a3 + 2;
      }

      else
      {
        v14 = v9;
      }

      if (v12 > v8 - 8)
      {
        a3 = v14;
      }

      else
      {
        v13 = v12;
        a3 += 2;
      }

      v15 = v12 == v8;
      result = v13;
    }

    while (!v15);
  }

  return result;
}

_DWORD *sub_29AB49FD8(_DWORD *result, int a2, float32x4_t *a3)
{
  v3 = result + a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x437F0000u);
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CB0), v13), 0));
        *v15.i8 = vqmovn_s32(v15);
        v11 = result + 1;
        *result = vqmovun_s16(v15).u32[0];
        v16 = (result + 2) > v3;
        ++result;
      }

      while (!v16);
    }

    else
    {
      v11 = result;
    }

    for (; v11 < v3; v11 += 2)
    {
      v17 = a3->f32[1] + 0.5;
      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      if (v17 > 255.0)
      {
        v17 = 255.0;
      }

      *v11 = v17;
      v18 = a3->f32[0];
      a3 = (a3 + 8);
      v19 = v18 + 0.5;
      if ((v18 + 0.5) < 0.0)
      {
        v19 = 0.0;
      }

      if (v19 > 255.0)
      {
        v19 = 255.0;
      }

      v11[1] = v19;
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x437F0000u);
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CB0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CB0), v6), 0))));
      v7 = (result + 2);
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 8);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > v3 - 8)
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

void *sub_29AB4A13C(void *result, int a2, float32x4_t *a3, float32x4_t a4, double a5, double a6, double a7, int32x4_t a8)
{
  v8 = result + 2 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      a4 = vdupq_n_s32(0x477FFF00u);
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      do
      {
        v18 = *a3++;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v18, a4), v17), xmmword_29B6C2CB0), a4), 0));
        *a8.i8 = vqmovun_s32(a8);
        v16 = result + 1;
        *result = a8.i64[0];
        v19 = (result + 2) > v8;
        ++result;
      }

      while (!v19);
    }

    else
    {
      v16 = result;
    }

    if (v16 < v8)
    {
      a4.i32[0] = 1199570688;
      v20.i64[0] = 0x3F0000003F000000;
      v20.i64[1] = 0x3F0000003F000000;
      v21 = vdupq_n_s32(0x477FFF00u);
      do
      {
        a8.i32[0] = a3->i32[1];
        v22 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(a8, a4), v20), 0), v21), 0));
        *v16 = v22.i16[0];
        v23 = a3->i32[0];
        a3 = (a3 + 8);
        v22.i32[0] = v23;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(v22, a4), v20), 0), v21), 0));
        v16[1] = a8.i16[0];
        v16 += 2;
      }

      while (v16 < v8);
    }
  }

  else
  {
    v9 = a3[-2].i64 + 4 * a2;
    v10 = vdupq_n_s32(0x477FFF00u);
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v10), v11), xmmword_29B6C2CB0), v10), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v10), v11), xmmword_29B6C2CB0), v10), 0)));
      v12 = (result + 2);
      if (v12 == v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = (v8 - 16);
      }

      if (v12 == v8)
      {
        v14 = a3 + 2;
      }

      else
      {
        v14 = v9;
      }

      if (v12 > v8 - 16)
      {
        a3 = v14;
      }

      else
      {
        v13 = v12;
        a3 += 2;
      }

      v15 = v12 == v8;
      result = v13;
    }

    while (!v15);
  }

  return result;
}

int16x4_t *sub_29AB4A2B4(int16x4_t *result, int a2, float32x4_t *a3)
{
  v3 = result + 2 * a2;
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        v11 = result + 1;
        *result = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CB0), v13), 0)));
        v15 = &result[2] > v3;
        ++result;
      }

      while (!v15);
    }

    else
    {
      v11 = result;
    }

    for (; v11 < v3; v11 = (v11 + 4))
    {
      v17 = a3->f32[0];
      v16 = a3->f32[1];
      a3 = (a3 + 8);
      v18 = v16 + 0.5;
      if (v18 < 0.0)
      {
        v18 = 0.0;
      }

      if (v18 > 65535.0)
      {
        v18 = 65535.0;
      }

      v19 = v18;
      v20 = v17 + 0.5;
      if ((v17 + 0.5) < 0.0)
      {
        v20 = 0.0;
      }

      if (v20 > 65535.0)
      {
        v20 = 65535.0;
      }

      v11->i16[0] = v19;
      v11->i16[1] = v20;
    }
  }

  else
  {
    v4 = a3[-2].i64 + 4 * a2;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result->i8 = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CB0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CB0), v6), 0)));
      v7 = &result[2];
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = (v3 - 16);
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > v3 - 16)
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

_DWORD *sub_29AB4A410(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[124];
  v7 = result[125];
  v8 = byte_29B6C31DC[result[84]];
  v37 = result[22];
  v9 = result[46];
  if ((a2 & 0x80000000) != 0 || v9 <= a2)
  {
    result = (off_2A2071EB0[result[60]])(a2, v9);
    LODWORD(a2) = result;
  }

  v10 = v6 * v8;
  v38 = a2;
  v11 = *(v5 + 38) + v5[80] * a2;
  v12 = a3 - 4 * v5[92] * v7;
  for (i = 372; i < 0x181; i += 12)
  {
    v15 = v5[i / 4 + 3];
    v14 = v5[i / 4 + 4];
    if (v14 < v15)
    {
      break;
    }

    v16 = v14 + 1;
    v17 = (v16 - v15);
    v18 = v12 + 4 * v16 * v7;
    v19 = v5[i / 4 + 5];
    v20 = *(v5 + 43);
    if (v20)
    {
      v21 = v20(v18 - v17 * v10, v11, v17, v19, v38, *(v5 + 44));
    }

    else
    {
      v21 = v11 + v19 * v10;
    }

    v22 = (v17 * v6);
    result = (*(v5 + 53))(v18 - 4 * v22, v22, v21);
    v23 = *(v5 + 54);
    if (v23)
    {
      result = v23(v12 + 4 * v15 * v7, v22);
    }
  }

  if (v37 == 2)
  {
    v24 = v5[94];
    if (*(v5 + 47))
    {
      v25 = 0;
      v26 = v5 + 94;
      v27 = v5[8];
      v39 = v27;
      v40 = -v24;
      v28 = &v40;
      v29 = 1;
      do
      {
        v30 = v29;
        v31 = v26[v25];
        if (v31)
        {
          v32 = *v28;
          v33 = *v28 * v7;
          if (v32 < 0 || v32 >= v27)
          {
            v35 = v32 % v27 + v27;
            if (!(v32 % v27))
            {
              v35 = 0;
            }

            if (v32 >= 0)
            {
              v36 = v32 % v27;
            }

            else
            {
              v36 = v35;
            }

            v34 = v36 * v7;
          }

          else
          {
            v34 = v33;
          }

          result = sub_29AB402A4(v12 + 4 * v33, (v12 + 4 * v34), 4 * v31 * v7);
        }

        v29 = 0;
        v28 = &v39;
        v25 = 1;
      }

      while ((v30 & 1) != 0);
    }
  }

  return result;
}

unint64_t sub_29AB4A608(uint64_t a1, unint64_t a2, char *a3)
{
  v3 = *(a1 + 500);
  if (*(a1 + 68) == 6 && *(a1 + 40) == 1.0)
  {
    return sub_29AB402A4(a2, a3, 4 * v3 * *(a1 + 36));
  }

  else
  {
    return (*(a1 + 440))(a2, *(a1 + 36), &a3[-4 * v3 * *(a1 + 368)], *a1, *(a1 + 8), *(a1 + 92));
  }
}

uint64_t sub_29AB4A66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 36);
  v9 = (*(a1 + 496) * v8);
  v10 = *(a1 + 448);
  if (v10)
  {
    v10(a3, v9);
  }

  if (*(a1 + 360))
  {
    a2 = a3;
  }

  result = (*(a1 + 456))(a2, v9, a3);
  v12 = *(a1 + 360);
  if (v12)
  {
    v13 = *(a1 + 352);

    return v12(a2, v8, a4, v13);
  }

  return result;
}

unint64_t sub_29AB4A724(unint64_t result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v5 = *a3;
  v6 = *a2;
  if (*a2 >= 1.0 && v6 <= 1.0)
  {
    return sub_29AB402A4(result, v5, a4 - v5);
  }

  v7 = a4 - v5;
  if ((a4 - v5) >= 64)
  {
    do
    {
      v8 = vmulq_n_f32(v5[1], v6);
      v9 = vmulq_n_f32(v5[2], v6);
      v10 = vmulq_n_f32(v5[3], v6);
      *result = vmulq_n_f32(*v5, v6);
      *(result + 16) = v8;
      *(result + 32) = v9;
      *(result + 48) = v10;
      result += 64;
      v5 += 4;
      v7 -= 64;
    }

    while (v7 > 63);
  }

  if (v7 >= 16)
  {
    v11 = a4 - v5;
    do
    {
      v12 = *v5++;
      *result = vmulq_n_f32(v12, v6);
      result += 16;
      v11 -= 16;
    }

    while (v11 > 15);
  }

  while (v5 < a4)
  {
    v13 = v5->f32[0];
    v5 = (v5 + 4);
    *result = v6 * v13;
    result += 4;
  }

  return result;
}

float32x4_t *sub_29AB4A7D8(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - *a3;
  if (v8 >= 64)
  {
    do
    {
      v9 = vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7));
      v10 = vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7));
      v11 = vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7));
      *result = vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7));
      result[1] = v9;
      result[2] = v10;
      result[3] = v11;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v12 = a4 - v4;
    do
    {
      v13 = *v4++;
      v14 = vmulq_n_f32(v13, v6);
      v15 = *v5++;
      *result++ = vaddq_f32(v14, vmulq_n_f32(v15, v7));
      v12 -= 16;
    }

    while (v12 > 15);
  }

  while (v4 < a4)
  {
    v16 = v4->f32[0];
    v4 = (v4 + 4);
    v17 = v16;
    v18 = v5->f32[0];
    v5 = (v5 + 4);
    result->f32[0] = (v6 * v17) + (v7 * v18);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4A8A4(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a2[2];
  v10 = a4 - *a3;
  if (v10 >= 64)
  {
    do
    {
      v11 = vaddq_f32(vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v9));
      v12 = vaddq_f32(vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v9));
      v13 = vaddq_f32(vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v9));
      *result = vaddq_f32(vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v9));
      result[1] = v11;
      result[2] = v12;
      result[3] = v13;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v14 = a4 - v4;
    do
    {
      v15 = *v4++;
      v16 = vmulq_n_f32(v15, v6);
      v17 = *v5++;
      v18 = vaddq_f32(v16, vmulq_n_f32(v17, v7));
      v19 = *v8++;
      *result++ = vaddq_f32(v18, vmulq_n_f32(v19, v9));
      v14 -= 16;
    }

    while (v14 > 15);
  }

  while (v4 < a4)
  {
    v20 = v4->f32[0];
    v4 = (v4 + 4);
    v21 = v6 * v20;
    v22 = v5->f32[0];
    v5 = (v5 + 4);
    v23 = v7 * v22;
    v24 = v8->f32[0];
    v8 = (v8 + 4);
    result->f32[0] = (v21 + v23) + (v9 * v24);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4A9BC(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a4 - *a3;
  if (v12 >= 64)
  {
    do
    {
      v13 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11));
      v14 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11));
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11));
      result[1] = v13;
      result[2] = v14;
      result[3] = v15;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 -= 64;
    }

    while (v12 > 63);
  }

  if (v12 >= 16)
  {
    v16 = a4 - v4;
    do
    {
      v17 = *v4++;
      v18 = vmulq_n_f32(v17, v6);
      v19 = *v5++;
      v20 = vaddq_f32(v18, vmulq_n_f32(v19, v7));
      v21 = *v8++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v10));
      v23 = *v9++;
      *result++ = vaddq_f32(v22, vmulq_n_f32(v23, v11));
      v16 -= 16;
    }

    while (v16 > 15);
  }

  while (v4 < a4)
  {
    v24 = v4->f32[0];
    v4 = (v4 + 4);
    v25 = v6 * v24;
    v26 = v5->f32[0];
    v5 = (v5 + 4);
    v27 = v25 + (v7 * v26);
    v28 = v8->f32[0];
    v8 = (v8 + 4);
    v29 = v10 * v28;
    v30 = v9->f32[0];
    v9 = (v9 + 4);
    result->f32[0] = (v27 + v29) + (v11 * v30);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4AB18(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a2[4];
  v14 = a4 - *a3;
  if (v14 >= 64)
  {
    do
    {
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11)), vmulq_n_f32(v12[1], v13));
      v16 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11)), vmulq_n_f32(v12[2], v13));
      v17 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11)), vmulq_n_f32(v12[3], v13));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11)), vmulq_n_f32(*v12, v13));
      result[1] = v15;
      result[2] = v16;
      result[3] = v17;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 += 4;
      v14 -= 64;
    }

    while (v14 > 63);
  }

  if (v14 >= 16)
  {
    v18 = a4 - v4;
    do
    {
      v19 = *v4++;
      v20 = vmulq_n_f32(v19, v6);
      v21 = *v5++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v7));
      v23 = *v8++;
      v24 = vaddq_f32(v22, vmulq_n_f32(v23, v10));
      v25 = *v9++;
      v26 = vaddq_f32(v24, vmulq_n_f32(v25, v11));
      v27 = *v12++;
      *result++ = vaddq_f32(v26, vmulq_n_f32(v27, v13));
      v18 -= 16;
    }

    while (v18 > 15);
  }

  while (v4 < a4)
  {
    v28 = v4->f32[0];
    v4 = (v4 + 4);
    v29 = v28;
    v30 = v5->f32[0];
    v5 = (v5 + 4);
    v31 = (v6 * v29) + (v7 * v30);
    v32 = v8->f32[0];
    v8 = (v8 + 4);
    v33 = v31 + (v10 * v32);
    v34 = v9->f32[0];
    v9 = (v9 + 4);
    v35 = v11 * v34;
    v36 = v12->f32[0];
    v12 = (v12 + 4);
    result->f32[0] = (v33 + v35) + (v13 * v36);
    result = (result + 4);
  }

  return result;
}

float *sub_29AB4ACC0(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a4 - *a3;
  if (v16 >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &result[v17];
      v19 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17 + 4], v6), vmulq_n_f32(*&v5[v17 + 4], v7)), vmulq_n_f32(*&v8[v17 + 4], v10)), vmulq_n_f32(*&v9[v17 + 4], v11)), vmulq_n_f32(*&v12[v17 + 4], v14)), vmulq_n_f32(*&v13[v17 + 4], v15));
      v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17 + 8], v6), vmulq_n_f32(*&v5[v17 + 8], v7)), vmulq_n_f32(*&v8[v17 + 8], v10)), vmulq_n_f32(*&v9[v17 + 8], v11)), vmulq_n_f32(*&v12[v17 + 8], v14)), vmulq_n_f32(*&v13[v17 + 8], v15));
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17 + 12], v6), vmulq_n_f32(*&v5[v17 + 12], v7)), vmulq_n_f32(*&v8[v17 + 12], v10)), vmulq_n_f32(*&v9[v17 + 12], v11)), vmulq_n_f32(*&v12[v17 + 12], v14)), vmulq_n_f32(*&v13[v17 + 12], v15));
      *v18 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17], v6), vmulq_n_f32(*&v5[v17], v7)), vmulq_n_f32(*&v8[v17], v10)), vmulq_n_f32(*&v9[v17], v11)), vmulq_n_f32(*&v12[v17], v14)), vmulq_n_f32(*&v13[v17], v15));
      v18[1] = v19;
      v18[2] = v20;
      v18[3] = v21;
      v17 += 16;
      v16 -= 64;
    }

    while (v16 > 63);
    result = (result + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v12 = (v12 + v17 * 4);
    v13 = (v13 + v17 * 4);
  }

  if (v16 >= 16)
  {
    v22 = 0;
    v23 = a4 - v4;
    do
    {
      *&result[v22] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v22], v6), vmulq_n_f32(*&v5[v22], v7)), vmulq_n_f32(*&v8[v22], v10)), vmulq_n_f32(*&v9[v22], v11)), vmulq_n_f32(*&v12[v22], v14)), vmulq_n_f32(*&v13[v22], v15));
      v22 += 4;
      v23 -= 16;
    }

    while (v23 > 15);
    result = (result + v22 * 4);
    v4 = (v4 + v22 * 4);
    v5 = (v5 + v22 * 4);
    v8 = (v8 + v22 * 4);
    v9 = (v9 + v22 * 4);
    v12 = (v12 + v22 * 4);
    v13 = (v13 + v22 * 4);
  }

  while (v4 < a4)
  {
    v24 = *v4++;
    v25 = v6 * v24;
    v26 = *v5++;
    v27 = v7 * v26;
    v28 = *v8++;
    v29 = (v25 + v27) + (v10 * v28);
    v30 = *v9++;
    v31 = v29 + (v11 * v30);
    v32 = *v12++;
    v33 = v14 * v32;
    v34 = *v13++;
    *result++ = (v31 + v33) + (v15 * v34);
  }

  return result;
}

float *sub_29AB4AEF8(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a3[6];
  v17 = a2[6];
  v18 = a4 - *a3;
  if (v18 >= 64)
  {
    v19 = 0;
    do
    {
      v20 = &result[v19];
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19 + 4], v6), vmulq_n_f32(*&v5[v19 + 4], v7)), vmulq_n_f32(*&v8[v19 + 4], v10)), vmulq_n_f32(*&v9[v19 + 4], v11)), vmulq_n_f32(*&v12[v19 + 4], v14)), vmulq_n_f32(*&v13[v19 + 4], v15)), vmulq_n_f32(*&v16[v19 + 4], v17));
      v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19 + 8], v6), vmulq_n_f32(*&v5[v19 + 8], v7)), vmulq_n_f32(*&v8[v19 + 8], v10)), vmulq_n_f32(*&v9[v19 + 8], v11)), vmulq_n_f32(*&v12[v19 + 8], v14)), vmulq_n_f32(*&v13[v19 + 8], v15)), vmulq_n_f32(*&v16[v19 + 8], v17));
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19 + 12], v6), vmulq_n_f32(*&v5[v19 + 12], v7)), vmulq_n_f32(*&v8[v19 + 12], v10)), vmulq_n_f32(*&v9[v19 + 12], v11)), vmulq_n_f32(*&v12[v19 + 12], v14)), vmulq_n_f32(*&v13[v19 + 12], v15)), vmulq_n_f32(*&v16[v19 + 12], v17));
      *v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19], v6), vmulq_n_f32(*&v5[v19], v7)), vmulq_n_f32(*&v8[v19], v10)), vmulq_n_f32(*&v9[v19], v11)), vmulq_n_f32(*&v12[v19], v14)), vmulq_n_f32(*&v13[v19], v15)), vmulq_n_f32(*&v16[v19], v17));
      v20[1] = v21;
      v20[2] = v22;
      v20[3] = v23;
      v19 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v16 = (v16 + v19 * 4);
  }

  if (v18 >= 16)
  {
    v24 = 0;
    v25 = a4 - v4;
    do
    {
      *&result[v24] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v24], v6), vmulq_n_f32(*&v5[v24], v7)), vmulq_n_f32(*&v8[v24], v10)), vmulq_n_f32(*&v9[v24], v11)), vmulq_n_f32(*&v12[v24], v14)), vmulq_n_f32(*&v13[v24], v15)), vmulq_n_f32(*&v16[v24], v17));
      v24 += 4;
      v25 -= 16;
    }

    while (v25 > 15);
    result = (result + v24 * 4);
    v4 = (v4 + v24 * 4);
    v5 = (v5 + v24 * 4);
    v8 = (v8 + v24 * 4);
    v9 = (v9 + v24 * 4);
    v12 = (v12 + v24 * 4);
    v13 = (v13 + v24 * 4);
    v16 = (v16 + v24 * 4);
  }

  while (v4 < a4)
  {
    v26 = *v4++;
    v27 = v6 * v26;
    v28 = *v5++;
    v29 = v27 + (v7 * v28);
    v30 = *v8++;
    v31 = v10 * v30;
    v32 = *v9++;
    v33 = (v29 + v31) + (v11 * v32);
    v34 = *v12++;
    v35 = v33 + (v14 * v34);
    v36 = *v13++;
    v37 = v15 * v36;
    v38 = *v16++;
    *result++ = (v35 + v37) + (v17 * v38);
  }

  return result;
}

float *sub_29AB4B18C(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - *a3;
  v19 = a3[6];
  v20 = a3[7];
  if (v18 >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &result[v21];
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21 + 4], v6), vmulq_n_f32(*&v5[v21 + 4], v7)), vmulq_n_f32(*&v8[v21 + 4], v10)), vmulq_n_f32(*&v9[v21 + 4], v11)), vmulq_n_f32(*&v12[v21 + 4], v14)), vmulq_n_f32(*&v13[v21 + 4], v15)), vmulq_n_f32(*&v19[v21 + 4], v16)), vmulq_n_f32(*&v20[v21 + 4], v17));
      v24 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21 + 8], v6), vmulq_n_f32(*&v5[v21 + 8], v7)), vmulq_n_f32(*&v8[v21 + 8], v10)), vmulq_n_f32(*&v9[v21 + 8], v11)), vmulq_n_f32(*&v12[v21 + 8], v14)), vmulq_n_f32(*&v13[v21 + 8], v15)), vmulq_n_f32(*&v19[v21 + 8], v16)), vmulq_n_f32(*&v20[v21 + 8], v17));
      v25 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21 + 12], v6), vmulq_n_f32(*&v5[v21 + 12], v7)), vmulq_n_f32(*&v8[v21 + 12], v10)), vmulq_n_f32(*&v9[v21 + 12], v11)), vmulq_n_f32(*&v12[v21 + 12], v14)), vmulq_n_f32(*&v13[v21 + 12], v15)), vmulq_n_f32(*&v19[v21 + 12], v16)), vmulq_n_f32(*&v20[v21 + 12], v17));
      *v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21], v6), vmulq_n_f32(*&v5[v21], v7)), vmulq_n_f32(*&v8[v21], v10)), vmulq_n_f32(*&v9[v21], v11)), vmulq_n_f32(*&v12[v21], v14)), vmulq_n_f32(*&v13[v21], v15)), vmulq_n_f32(*&v19[v21], v16)), vmulq_n_f32(*&v20[v21], v17));
      v22[1] = v23;
      v22[2] = v24;
      v22[3] = v25;
      v21 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v26 = 0;
    v27 = a4 - v4;
    do
    {
      *&result[v26] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v26], v6), vmulq_n_f32(*&v5[v26], v7)), vmulq_n_f32(*&v8[v26], v10)), vmulq_n_f32(*&v9[v26], v11)), vmulq_n_f32(*&v12[v26], v14)), vmulq_n_f32(*&v13[v26], v15)), vmulq_n_f32(*&v19[v26], v16)), vmulq_n_f32(*&v20[v26], v17));
      v26 += 4;
      v27 -= 16;
    }

    while (v27 > 15);
    result = (result + v26 * 4);
    v4 = (v4 + v26 * 4);
    v5 = (v5 + v26 * 4);
    v8 = (v8 + v26 * 4);
    v9 = (v9 + v26 * 4);
    v12 = (v12 + v26 * 4);
    v13 = (v13 + v26 * 4);
    v19 = (v19 + v26 * 4);
    v20 = (v20 + v26 * 4);
  }

  while (v4 < a4)
  {
    v28 = *v4++;
    v29 = v28;
    v30 = *v5++;
    v31 = (v6 * v29) + (v7 * v30);
    v32 = *v8++;
    v33 = v31 + (v10 * v32);
    v34 = *v9++;
    v35 = v11 * v34;
    v36 = *v12++;
    v37 = (v33 + v35) + (v14 * v36);
    v38 = *v13++;
    v39 = v37 + (v15 * v38);
    v40 = *v19++;
    v41 = v16 * v40;
    v42 = *v20++;
    *result++ = (v39 + v41) + (v17 * v42);
  }

  return result;
}

float32x4_t *sub_29AB4B474(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = *a2;
  v6 = a4 - *a3;
  if (v6 >= 64)
  {
    do
    {
      v7 = vaddq_f32(result[1], vmulq_n_f32(v4[1], v5));
      v8 = vaddq_f32(result[2], vmulq_n_f32(v4[2], v5));
      v9 = vaddq_f32(result[3], vmulq_n_f32(v4[3], v5));
      *result = vaddq_f32(*result, vmulq_n_f32(*v4, v5));
      result[1] = v7;
      result[2] = v8;
      result[3] = v9;
      result += 4;
      v4 += 4;
      v6 -= 64;
    }

    while (v6 > 63);
  }

  if (v6 >= 16)
  {
    v10 = a4 - v4;
    do
    {
      v11 = *v4++;
      *result = vaddq_f32(*result, vmulq_n_f32(v11, v5));
      ++result;
      v10 -= 16;
    }

    while (v10 > 15);
  }

  while (v4 < a4)
  {
    v12 = v4->f32[0];
    v4 = (v4 + 4);
    result->f32[0] = result->f32[0] + (v5 * v12);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B524(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - *a3;
  if (v8 >= 64)
  {
    do
    {
      v9 = vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7));
      v10 = vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7));
      v11 = vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7));
      *result = vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7));
      result[1] = v9;
      result[2] = v10;
      result[3] = v11;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v12 = a4 - v4;
    do
    {
      v13 = *v4++;
      v14 = vaddq_f32(*result, vmulq_n_f32(v13, v6));
      v15 = *v5++;
      *result++ = vaddq_f32(v14, vmulq_n_f32(v15, v7));
      v12 -= 16;
    }

    while (v12 > 15);
  }

  while (v4 < a4)
  {
    v16 = v4->f32[0];
    v4 = (v4 + 4);
    v17 = v6 * v16;
    v18 = v5->f32[0];
    v5 = (v5 + 4);
    result->f32[0] = (result->f32[0] + v17) + (v7 * v18);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B618(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a2[2];
  v10 = a4 - *a3;
  if (v10 >= 64)
  {
    do
    {
      v11 = vaddq_f32(vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v9));
      v12 = vaddq_f32(vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v9));
      v13 = vaddq_f32(vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v9));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v9));
      result[1] = v11;
      result[2] = v12;
      result[3] = v13;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v14 = a4 - v4;
    do
    {
      v15 = *v4++;
      v16 = vaddq_f32(*result, vmulq_n_f32(v15, v6));
      v17 = *v5++;
      v18 = vaddq_f32(v16, vmulq_n_f32(v17, v7));
      v19 = *v8++;
      *result++ = vaddq_f32(v18, vmulq_n_f32(v19, v9));
      v14 -= 16;
    }

    while (v14 > 15);
  }

  while (v4 < a4)
  {
    v20 = v4->f32[0];
    v4 = (v4 + 4);
    v21 = result->f32[0] + (v6 * v20);
    v22 = v5->f32[0];
    v5 = (v5 + 4);
    v23 = v7 * v22;
    v24 = v8->f32[0];
    v8 = (v8 + 4);
    result->f32[0] = (v21 + v23) + (v9 * v24);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B758(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a4 - *a3;
  if (v12 >= 64)
  {
    do
    {
      v13 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11));
      v14 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11));
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11));
      result[1] = v13;
      result[2] = v14;
      result[3] = v15;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 -= 64;
    }

    while (v12 > 63);
  }

  if (v12 >= 16)
  {
    v16 = a4 - v4;
    do
    {
      v17 = *v4++;
      v18 = vaddq_f32(*result, vmulq_n_f32(v17, v6));
      v19 = *v5++;
      v20 = vaddq_f32(v18, vmulq_n_f32(v19, v7));
      v21 = *v8++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v10));
      v23 = *v9++;
      *result++ = vaddq_f32(v22, vmulq_n_f32(v23, v11));
      v16 -= 16;
    }

    while (v16 > 15);
  }

  while (v4 < a4)
  {
    v24 = v4->f32[0];
    v4 = (v4 + 4);
    v25 = result->f32[0] + (v6 * v24);
    v26 = v5->f32[0];
    v5 = (v5 + 4);
    v27 = v25 + (v7 * v26);
    v28 = v8->f32[0];
    v8 = (v8 + 4);
    v29 = v10 * v28;
    v30 = v9->f32[0];
    v9 = (v9 + 4);
    result->f32[0] = (v27 + v29) + (v11 * v30);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B8DC(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a2[4];
  v14 = a4 - *a3;
  if (v14 >= 64)
  {
    do
    {
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11)), vmulq_n_f32(v12[1], v13));
      v16 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11)), vmulq_n_f32(v12[2], v13));
      v17 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11)), vmulq_n_f32(v12[3], v13));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11)), vmulq_n_f32(*v12, v13));
      result[1] = v15;
      result[2] = v16;
      result[3] = v17;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 += 4;
      v14 -= 64;
    }

    while (v14 > 63);
  }

  if (v14 >= 16)
  {
    v18 = a4 - v4;
    do
    {
      v19 = *v4++;
      v20 = vaddq_f32(*result, vmulq_n_f32(v19, v6));
      v21 = *v5++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v7));
      v23 = *v8++;
      v24 = vaddq_f32(v22, vmulq_n_f32(v23, v10));
      v25 = *v9++;
      v26 = vaddq_f32(v24, vmulq_n_f32(v25, v11));
      v27 = *v12++;
      *result++ = vaddq_f32(v26, vmulq_n_f32(v27, v13));
      v18 -= 16;
    }

    while (v18 > 15);
  }

  while (v4 < a4)
  {
    v28 = v4->f32[0];
    v4 = (v4 + 4);
    v29 = v6 * v28;
    v30 = v5->f32[0];
    v5 = (v5 + 4);
    v31 = (result->f32[0] + v29) + (v7 * v30);
    v32 = v8->f32[0];
    v8 = (v8 + 4);
    v33 = v31 + (v10 * v32);
    v34 = v9->f32[0];
    v9 = (v9 + 4);
    v35 = v11 * v34;
    v36 = v12->f32[0];
    v12 = (v12 + 4);
    result->f32[0] = (v33 + v35) + (v13 * v36);
    result = (result + 4);
  }

  return result;
}

float *sub_29AB4BAAC(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a4 - *a3;
  if (v16 >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &result[v17];
      v19 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17 + 4], vmulq_n_f32(*&v4[v17 + 4], v6)), vmulq_n_f32(*&v5[v17 + 4], v7)), vmulq_n_f32(*&v8[v17 + 4], v10)), vmulq_n_f32(*&v9[v17 + 4], v11)), vmulq_n_f32(*&v12[v17 + 4], v14)), vmulq_n_f32(*&v13[v17 + 4], v15));
      v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17 + 8], vmulq_n_f32(*&v4[v17 + 8], v6)), vmulq_n_f32(*&v5[v17 + 8], v7)), vmulq_n_f32(*&v8[v17 + 8], v10)), vmulq_n_f32(*&v9[v17 + 8], v11)), vmulq_n_f32(*&v12[v17 + 8], v14)), vmulq_n_f32(*&v13[v17 + 8], v15));
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17 + 12], vmulq_n_f32(*&v4[v17 + 12], v6)), vmulq_n_f32(*&v5[v17 + 12], v7)), vmulq_n_f32(*&v8[v17 + 12], v10)), vmulq_n_f32(*&v9[v17 + 12], v11)), vmulq_n_f32(*&v12[v17 + 12], v14)), vmulq_n_f32(*&v13[v17 + 12], v15));
      *v18 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17], vmulq_n_f32(*&v4[v17], v6)), vmulq_n_f32(*&v5[v17], v7)), vmulq_n_f32(*&v8[v17], v10)), vmulq_n_f32(*&v9[v17], v11)), vmulq_n_f32(*&v12[v17], v14)), vmulq_n_f32(*&v13[v17], v15));
      v18[1] = v19;
      v18[2] = v20;
      v18[3] = v21;
      v17 += 16;
      v16 -= 64;
    }

    while (v16 > 63);
    result = (result + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v12 = (v12 + v17 * 4);
    v13 = (v13 + v17 * 4);
  }

  if (v16 >= 16)
  {
    v22 = 0;
    v23 = a4 - v4;
    do
    {
      *&result[v22] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v22], vmulq_n_f32(*&v4[v22], v6)), vmulq_n_f32(*&v5[v22], v7)), vmulq_n_f32(*&v8[v22], v10)), vmulq_n_f32(*&v9[v22], v11)), vmulq_n_f32(*&v12[v22], v14)), vmulq_n_f32(*&v13[v22], v15));
      v22 += 4;
      v23 -= 16;
    }

    while (v23 > 15);
    result = (result + v22 * 4);
    v4 = (v4 + v22 * 4);
    v5 = (v5 + v22 * 4);
    v8 = (v8 + v22 * 4);
    v9 = (v9 + v22 * 4);
    v12 = (v12 + v22 * 4);
    v13 = (v13 + v22 * 4);
  }

  while (v4 < a4)
  {
    v24 = *v4++;
    v25 = *result + (v6 * v24);
    v26 = *v5++;
    v27 = v7 * v26;
    v28 = *v8++;
    v29 = (v25 + v27) + (v10 * v28);
    v30 = *v9++;
    v31 = v29 + (v11 * v30);
    v32 = *v12++;
    v33 = v14 * v32;
    v34 = *v13++;
    *result++ = (v31 + v33) + (v15 * v34);
  }

  return result;
}

float *sub_29AB4BD0C(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a3[6];
  v17 = a2[6];
  v18 = a4 - *a3;
  if (v18 >= 64)
  {
    v19 = 0;
    do
    {
      v20 = &result[v19];
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19 + 4], vmulq_n_f32(*&v4[v19 + 4], v6)), vmulq_n_f32(*&v5[v19 + 4], v7)), vmulq_n_f32(*&v8[v19 + 4], v10)), vmulq_n_f32(*&v9[v19 + 4], v11)), vmulq_n_f32(*&v12[v19 + 4], v14)), vmulq_n_f32(*&v13[v19 + 4], v15)), vmulq_n_f32(*&v16[v19 + 4], v17));
      v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19 + 8], vmulq_n_f32(*&v4[v19 + 8], v6)), vmulq_n_f32(*&v5[v19 + 8], v7)), vmulq_n_f32(*&v8[v19 + 8], v10)), vmulq_n_f32(*&v9[v19 + 8], v11)), vmulq_n_f32(*&v12[v19 + 8], v14)), vmulq_n_f32(*&v13[v19 + 8], v15)), vmulq_n_f32(*&v16[v19 + 8], v17));
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19 + 12], vmulq_n_f32(*&v4[v19 + 12], v6)), vmulq_n_f32(*&v5[v19 + 12], v7)), vmulq_n_f32(*&v8[v19 + 12], v10)), vmulq_n_f32(*&v9[v19 + 12], v11)), vmulq_n_f32(*&v12[v19 + 12], v14)), vmulq_n_f32(*&v13[v19 + 12], v15)), vmulq_n_f32(*&v16[v19 + 12], v17));
      *v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19], vmulq_n_f32(*&v4[v19], v6)), vmulq_n_f32(*&v5[v19], v7)), vmulq_n_f32(*&v8[v19], v10)), vmulq_n_f32(*&v9[v19], v11)), vmulq_n_f32(*&v12[v19], v14)), vmulq_n_f32(*&v13[v19], v15)), vmulq_n_f32(*&v16[v19], v17));
      v20[1] = v21;
      v20[2] = v22;
      v20[3] = v23;
      v19 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v16 = (v16 + v19 * 4);
  }

  if (v18 >= 16)
  {
    v24 = 0;
    v25 = a4 - v4;
    do
    {
      *&result[v24] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v24], vmulq_n_f32(*&v4[v24], v6)), vmulq_n_f32(*&v5[v24], v7)), vmulq_n_f32(*&v8[v24], v10)), vmulq_n_f32(*&v9[v24], v11)), vmulq_n_f32(*&v12[v24], v14)), vmulq_n_f32(*&v13[v24], v15)), vmulq_n_f32(*&v16[v24], v17));
      v24 += 4;
      v25 -= 16;
    }

    while (v25 > 15);
    result = (result + v24 * 4);
    v4 = (v4 + v24 * 4);
    v5 = (v5 + v24 * 4);
    v8 = (v8 + v24 * 4);
    v9 = (v9 + v24 * 4);
    v12 = (v12 + v24 * 4);
    v13 = (v13 + v24 * 4);
    v16 = (v16 + v24 * 4);
  }

  while (v4 < a4)
  {
    v26 = *v4++;
    v27 = *result + (v6 * v26);
    v28 = *v5++;
    v29 = v27 + (v7 * v28);
    v30 = *v8++;
    v31 = v10 * v30;
    v32 = *v9++;
    v33 = (v29 + v31) + (v11 * v32);
    v34 = *v12++;
    v35 = v33 + (v14 * v34);
    v36 = *v13++;
    v37 = v15 * v36;
    v38 = *v16++;
    *result++ = (v35 + v37) + (v17 * v38);
  }

  return result;
}

float *sub_29AB4BFC8(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - *a3;
  v19 = a3[6];
  v20 = a3[7];
  if (v18 >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &result[v21];
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21 + 4], vmulq_n_f32(*&v4[v21 + 4], v6)), vmulq_n_f32(*&v5[v21 + 4], v7)), vmulq_n_f32(*&v8[v21 + 4], v10)), vmulq_n_f32(*&v9[v21 + 4], v11)), vmulq_n_f32(*&v12[v21 + 4], v14)), vmulq_n_f32(*&v13[v21 + 4], v15)), vmulq_n_f32(*&v19[v21 + 4], v16)), vmulq_n_f32(*&v20[v21 + 4], v17));
      v24 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21 + 8], vmulq_n_f32(*&v4[v21 + 8], v6)), vmulq_n_f32(*&v5[v21 + 8], v7)), vmulq_n_f32(*&v8[v21 + 8], v10)), vmulq_n_f32(*&v9[v21 + 8], v11)), vmulq_n_f32(*&v12[v21 + 8], v14)), vmulq_n_f32(*&v13[v21 + 8], v15)), vmulq_n_f32(*&v19[v21 + 8], v16)), vmulq_n_f32(*&v20[v21 + 8], v17));
      v25 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21 + 12], vmulq_n_f32(*&v4[v21 + 12], v6)), vmulq_n_f32(*&v5[v21 + 12], v7)), vmulq_n_f32(*&v8[v21 + 12], v10)), vmulq_n_f32(*&v9[v21 + 12], v11)), vmulq_n_f32(*&v12[v21 + 12], v14)), vmulq_n_f32(*&v13[v21 + 12], v15)), vmulq_n_f32(*&v19[v21 + 12], v16)), vmulq_n_f32(*&v20[v21 + 12], v17));
      *v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21], vmulq_n_f32(*&v4[v21], v6)), vmulq_n_f32(*&v5[v21], v7)), vmulq_n_f32(*&v8[v21], v10)), vmulq_n_f32(*&v9[v21], v11)), vmulq_n_f32(*&v12[v21], v14)), vmulq_n_f32(*&v13[v21], v15)), vmulq_n_f32(*&v19[v21], v16)), vmulq_n_f32(*&v20[v21], v17));
      v22[1] = v23;
      v22[2] = v24;
      v22[3] = v25;
      v21 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v26 = 0;
    v27 = a4 - v4;
    do
    {
      *&result[v26] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v26], vmulq_n_f32(*&v4[v26], v6)), vmulq_n_f32(*&v5[v26], v7)), vmulq_n_f32(*&v8[v26], v10)), vmulq_n_f32(*&v9[v26], v11)), vmulq_n_f32(*&v12[v26], v14)), vmulq_n_f32(*&v13[v26], v15)), vmulq_n_f32(*&v19[v26], v16)), vmulq_n_f32(*&v20[v26], v17));
      v26 += 4;
      v27 -= 16;
    }

    while (v27 > 15);
    result = (result + v26 * 4);
    v4 = (v4 + v26 * 4);
    v5 = (v5 + v26 * 4);
    v8 = (v8 + v26 * 4);
    v9 = (v9 + v26 * 4);
    v12 = (v12 + v26 * 4);
    v13 = (v13 + v26 * 4);
    v19 = (v19 + v26 * 4);
    v20 = (v20 + v26 * 4);
  }

  while (v4 < a4)
  {
    v28 = *v4++;
    v29 = v6 * v28;
    v30 = *v5++;
    v31 = (*result + v29) + (v7 * v30);
    v32 = *v8++;
    v33 = v31 + (v10 * v32);
    v34 = *v9++;
    v35 = v11 * v34;
    v36 = *v12++;
    v37 = (v33 + v35) + (v14 * v36);
    v38 = *v13++;
    v39 = v37 + (v15 * v38);
    v40 = *v19++;
    v41 = v16 * v40;
    v42 = *v20++;
    *result++ = (v39 + v41) + (v17 * v42);
  }

  return result;
}

uint64_t sub_29AB4C2D8(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 40) + *(a1 + 328) * *(a2 + 16));
  sub_29AB4A608(a1, *(a2 + 48), v4);
  result = sub_29AB4A66C(a1, *(a1 + 312) + *(a1 + 324) * *(a2 + 8), *(a2 + 48), *(a2 + 8));
  *v4 = 2137108966;
  ++*(a2 + 8);
  v6 = *(a2 + 16);
  if (v6 + 1 == *(a1 + 332))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_29AB4C368(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 40) + *(a1 + 328) * *(a2 + 16));
  result = sub_29AB4A66C(a1, *(a1 + 312) + *(a1 + 324) * *(a2 + 8), v4, *(a2 + 8));
  *v4 = 2137108966;
  ++*(a2 + 8);
  v6 = *(a2 + 16);
  if (v6 + 1 == *(a1 + 332))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  *(a2 + 16) = v7;
  return result;
}

float32x4_t **sub_29AB4C3EC(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = *a2;
  v6 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v7 = vmulq_n_f32(a3[1], v5);
      v8 = vmulq_n_f32(a3[2], v5);
      v9 = vmulq_n_f32(a3[3], v5);
      *v4 = vmulq_n_f32(*a3, v5);
      v4[1] = v7;
      v4[2] = v8;
      v4[3] = v9;
      a3 += 4;
      v4 += 4;
      v6 -= 64;
    }

    while (v6 > 63);
  }

  if (v6 >= 16)
  {
    v10 = a4 - a3;
    do
    {
      v11 = *a3++;
      *v4++ = vmulq_n_f32(v11, v5);
      v10 -= 16;
    }

    while (v10 > 15);
  }

  while (a3 < a4)
  {
    v12 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v5 * v12;
    v4 = (v4 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C474(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[2];
      v12 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v10, v6);
      v4[2] = vmulq_n_f32(v11, v6);
      v4[3] = vmulq_n_f32(v12, v6);
      *v5 = vmulq_n_f32(v9, v7);
      v5[1] = vmulq_n_f32(v10, v7);
      v5[2] = vmulq_n_f32(v11, v7);
      v5[3] = vmulq_n_f32(v12, v7);
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v13 = a4 - a3;
    do
    {
      v14 = *a3++;
      *v4++ = vmulq_n_f32(v14, v6);
      *v5++ = vmulq_n_f32(v14, v7);
      v13 -= 16;
    }

    while (v13 > 15);
  }

  while (a3 < a4)
  {
    v15 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v15;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v15;
    v5 = (v5 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C528(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = a2[2];
  v10 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v11 = *a3;
      v12 = a3[1];
      v13 = a3[2];
      v14 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v12, v6);
      v4[2] = vmulq_n_f32(v13, v6);
      v4[3] = vmulq_n_f32(v14, v6);
      *v5 = vmulq_n_f32(v11, v7);
      v5[1] = vmulq_n_f32(v12, v7);
      v5[2] = vmulq_n_f32(v13, v7);
      v5[3] = vmulq_n_f32(v14, v7);
      *v8 = vmulq_n_f32(v11, v9);
      v8[1] = vmulq_n_f32(v12, v9);
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8[2] = vmulq_n_f32(v13, v9);
      v8[3] = vmulq_n_f32(v14, v9);
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v15 = a4 - a3;
    do
    {
      v16 = *a3++;
      *v4++ = vmulq_n_f32(v16, v6);
      *v5++ = vmulq_n_f32(v16, v7);
      *v8++ = vmulq_n_f32(v16, v9);
      v15 -= 16;
    }

    while (v15 > 15);
  }

  while (a3 < a4)
  {
    v17 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v17;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v17;
    v5 = (v5 + 4);
    v8->f32[0] = v9 * v17;
    v8 = (v8 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C610(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a4 - a3;
  v11 = a2[2];
  v12 = a2[3];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[2];
      v16 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v14, v6);
      v4[2] = vmulq_n_f32(v15, v6);
      v4[3] = vmulq_n_f32(v16, v6);
      *v5 = vmulq_n_f32(v13, v7);
      v5[1] = vmulq_n_f32(v14, v7);
      v5[2] = vmulq_n_f32(v15, v7);
      v5[3] = vmulq_n_f32(v16, v7);
      *v8 = vmulq_n_f32(v13, v11);
      v8[1] = vmulq_n_f32(v14, v11);
      v8[2] = vmulq_n_f32(v15, v11);
      v8[3] = vmulq_n_f32(v16, v11);
      a3 += 4;
      v4 += 4;
      *v9 = vmulq_n_f32(v13, v12);
      v9[1] = vmulq_n_f32(v14, v12);
      v5 += 4;
      v8 += 4;
      v9[2] = vmulq_n_f32(v15, v12);
      v9[3] = vmulq_n_f32(v16, v12);
      v9 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v17 = a4 - a3;
    do
    {
      v18 = *a3++;
      *v4++ = vmulq_n_f32(v18, v6);
      *v5++ = vmulq_n_f32(v18, v7);
      *v8++ = vmulq_n_f32(v18, v11);
      *v9++ = vmulq_n_f32(v18, v12);
      v17 -= 16;
    }

    while (v17 > 15);
  }

  while (a3 < a4)
  {
    v19 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v19;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v19;
    v5 = (v5 + 4);
    v8->f32[0] = v11 * v19;
    v8 = (v8 + 4);
    v9->f32[0] = v12 * v19;
    v9 = (v9 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C724(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a4 - a3;
  v14 = result[4];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v15 = *a3;
      v16 = a3[1];
      v17 = a3[2];
      v18 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v16, v6);
      v4[2] = vmulq_n_f32(v17, v6);
      v4[3] = vmulq_n_f32(v18, v6);
      *v5 = vmulq_n_f32(v15, v7);
      v5[1] = vmulq_n_f32(v16, v7);
      v5[2] = vmulq_n_f32(v17, v7);
      v5[3] = vmulq_n_f32(v18, v7);
      *v8 = vmulq_n_f32(v15, v10);
      v8[1] = vmulq_n_f32(v16, v10);
      v8[2] = vmulq_n_f32(v17, v10);
      v8[3] = vmulq_n_f32(v18, v10);
      *v9 = vmulq_n_f32(v15, v11);
      v9[1] = vmulq_n_f32(v16, v11);
      v9[2] = vmulq_n_f32(v17, v11);
      v9[3] = vmulq_n_f32(v18, v11);
      a3 += 4;
      v4 += 4;
      v5 += 4;
      *v14 = vmulq_n_f32(v15, v12);
      v14[1] = vmulq_n_f32(v16, v12);
      v8 += 4;
      v9 += 4;
      v14[2] = vmulq_n_f32(v17, v12);
      v14[3] = vmulq_n_f32(v18, v12);
      v14 += 4;
      v13 -= 64;
    }

    while (v13 > 63);
  }

  if (v13 >= 16)
  {
    v19 = a4 - a3;
    do
    {
      v20 = *a3++;
      *v4++ = vmulq_n_f32(v20, v6);
      *v5++ = vmulq_n_f32(v20, v7);
      *v8++ = vmulq_n_f32(v20, v10);
      *v9++ = vmulq_n_f32(v20, v11);
      *v14++ = vmulq_n_f32(v20, v12);
      v19 -= 16;
    }

    while (v19 > 15);
  }

  while (a3 < a4)
  {
    v21 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v21;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v21;
    v5 = (v5 + 4);
    v8->f32[0] = v10 * v21;
    v8 = (v8 + 4);
    v9->f32[0] = v11 * v21;
    v9 = (v9 + 4);
    v14->f32[0] = v12 * v21;
    v14 = (v14 + 4);
  }

  return result;
}

float *sub_29AB4C86C(float *result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = *(result + 1);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(result + 2);
  v9 = *(result + 3);
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a4 - a3;
  v15 = *(result + 4);
  v16 = *(result + 5);
  if ((a4 - a3) >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &v4[v17];
      v19 = *&a3[v17];
      v20 = *&a3[v17 + 4];
      result = &v5[v17];
      v21 = &v8[v17];
      v22 = &v9[v17];
      v23 = &v15[v17];
      v24 = *&a3[v17 + 8];
      v25 = *&a3[v17 + 12];
      v26 = &v16[v17];
      *v18 = vmulq_n_f32(v19, v6);
      v18[1] = vmulq_n_f32(v20, v6);
      v18[2] = vmulq_n_f32(v24, v6);
      v18[3] = vmulq_n_f32(v25, v6);
      *result = vmulq_n_f32(v19, v7);
      *(result + 1) = vmulq_n_f32(v20, v7);
      *(result + 2) = vmulq_n_f32(v24, v7);
      *(result + 3) = vmulq_n_f32(v25, v7);
      *v21 = vmulq_n_f32(v19, v10);
      v21[1] = vmulq_n_f32(v20, v10);
      v21[2] = vmulq_n_f32(v24, v10);
      v21[3] = vmulq_n_f32(v25, v10);
      *v22 = vmulq_n_f32(v19, v11);
      v22[1] = vmulq_n_f32(v20, v11);
      v22[2] = vmulq_n_f32(v24, v11);
      v22[3] = vmulq_n_f32(v25, v11);
      *v23 = vmulq_n_f32(v19, v12);
      v23[1] = vmulq_n_f32(v20, v12);
      v23[2] = vmulq_n_f32(v24, v12);
      v23[3] = vmulq_n_f32(v25, v12);
      *v26 = vmulq_n_f32(v19, v13);
      v26[1] = vmulq_n_f32(v20, v13);
      v17 += 16;
      v14 -= 64;
      v26[2] = vmulq_n_f32(v24, v13);
      v26[3] = vmulq_n_f32(v25, v13);
    }

    while (v14 > 63);
    a3 = (a3 + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v15 = (v15 + v17 * 4);
    v16 = (v16 + v17 * 4);
  }

  if (v14 >= 16)
  {
    v27 = 0;
    v28 = a4 - a3;
    do
    {
      v29 = *&a3[v27];
      *&v4[v27] = vmulq_n_f32(v29, v6);
      *&v5[v27] = vmulq_n_f32(v29, v7);
      *&v8[v27] = vmulq_n_f32(v29, v10);
      *&v9[v27] = vmulq_n_f32(v29, v11);
      *&v15[v27] = vmulq_n_f32(v29, v12);
      *&v16[v27] = vmulq_n_f32(v29, v13);
      v27 += 4;
      v28 -= 16;
    }

    while (v28 > 15);
    a3 = (a3 + v27 * 4);
    v4 = (v4 + v27 * 4);
    v5 = (v5 + v27 * 4);
    v8 = (v8 + v27 * 4);
    v9 = (v9 + v27 * 4);
    v15 = (v15 + v27 * 4);
    v16 = (v16 + v27 * 4);
  }

  while (a3 < a4)
  {
    v30 = *a3++;
    *v4++ = v6 * v30;
    *v5++ = v7 * v30;
    *v8++ = v10 * v30;
    *v9++ = v11 * v30;
    *v15++ = v12 * v30;
    *v16++ = v13 * v30;
  }

  return result;
}

float **sub_29AB4CA2C(float **result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[4];
  v13 = result[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a4 - a3;
  v18 = result[6];
  if ((a4 - a3) >= 64)
  {
    v19 = 0;
    do
    {
      result = &v4[v19];
      v20 = *&a3[v19];
      v21 = *&a3[v19 + 4];
      v22 = &v5[v19];
      v23 = &v8[v19];
      v24 = &v9[v19];
      v25 = &v12[v19];
      v26 = *&a3[v19 + 8];
      v27 = *&a3[v19 + 12];
      v28 = &v13[v19];
      v29 = &v18[v19];
      *result = vmulq_n_f32(v20, v6);
      *(result + 1) = vmulq_n_f32(v21, v6);
      *(result + 2) = vmulq_n_f32(v26, v6);
      *(result + 3) = vmulq_n_f32(v27, v6);
      *v22 = vmulq_n_f32(v20, v7);
      v22[1] = vmulq_n_f32(v21, v7);
      v22[2] = vmulq_n_f32(v26, v7);
      v22[3] = vmulq_n_f32(v27, v7);
      *v23 = vmulq_n_f32(v20, v10);
      v23[1] = vmulq_n_f32(v21, v10);
      v23[2] = vmulq_n_f32(v26, v10);
      v23[3] = vmulq_n_f32(v27, v10);
      *v24 = vmulq_n_f32(v20, v11);
      v24[1] = vmulq_n_f32(v21, v11);
      v24[2] = vmulq_n_f32(v26, v11);
      v24[3] = vmulq_n_f32(v27, v11);
      *v25 = vmulq_n_f32(v20, v14);
      v25[1] = vmulq_n_f32(v21, v14);
      v25[2] = vmulq_n_f32(v26, v14);
      v25[3] = vmulq_n_f32(v27, v14);
      *v28 = vmulq_n_f32(v20, v15);
      v28[1] = vmulq_n_f32(v21, v15);
      v28[2] = vmulq_n_f32(v26, v15);
      v28[3] = vmulq_n_f32(v27, v15);
      *v29 = vmulq_n_f32(v20, v16);
      v29[1] = vmulq_n_f32(v21, v16);
      v19 += 16;
      v17 -= 64;
      v29[2] = vmulq_n_f32(v26, v16);
      v29[3] = vmulq_n_f32(v27, v16);
    }

    while (v17 > 63);
    a3 = (a3 + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v18 = (v18 + v19 * 4);
  }

  if (v17 >= 16)
  {
    v30 = 0;
    v31 = a4 - a3;
    do
    {
      v32 = *&a3[v30];
      *&v4[v30] = vmulq_n_f32(v32, v6);
      *&v5[v30] = vmulq_n_f32(v32, v7);
      *&v8[v30] = vmulq_n_f32(v32, v10);
      *&v9[v30] = vmulq_n_f32(v32, v11);
      *&v12[v30] = vmulq_n_f32(v32, v14);
      *&v13[v30] = vmulq_n_f32(v32, v15);
      *&v18[v30] = vmulq_n_f32(v32, v16);
      v30 += 4;
      v31 -= 16;
    }

    while (v31 > 15);
    a3 = (a3 + v30 * 4);
    v4 = (v4 + v30 * 4);
    v5 = (v5 + v30 * 4);
    v8 = (v8 + v30 * 4);
    v9 = (v9 + v30 * 4);
    v12 = (v12 + v30 * 4);
    v13 = (v13 + v30 * 4);
    v18 = (v18 + v30 * 4);
  }

  while (a3 < a4)
  {
    v33 = *a3++;
    *v4++ = v6 * v33;
    *v5++ = v7 * v33;
    *v8++ = v10 * v33;
    *v9++ = v11 * v33;
    *v12++ = v14 * v33;
    *v13++ = v15 * v33;
    *v18++ = v16 * v33;
  }

  return result;
}

float **sub_29AB4CC28(float **result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[4];
  v13 = result[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - a3;
  v19 = result[6];
  v20 = result[7];
  if ((a4 - a3) >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &v4[v21];
      v23 = *&a3[v21];
      v24 = *&a3[v21 + 4];
      v25 = &v5[v21];
      v26 = &v8[v21];
      v27 = &v9[v21];
      v28 = &v12[v21];
      v29 = *&a3[v21 + 8];
      v30 = *&a3[v21 + 12];
      v31 = &v13[v21];
      v32 = &v19[v21];
      *v22 = vmulq_n_f32(v23, v6);
      v22[1] = vmulq_n_f32(v24, v6);
      result = &v20[v21];
      v22[2] = vmulq_n_f32(v29, v6);
      v22[3] = vmulq_n_f32(v30, v6);
      *v25 = vmulq_n_f32(v23, v7);
      v25[1] = vmulq_n_f32(v24, v7);
      v25[2] = vmulq_n_f32(v29, v7);
      v25[3] = vmulq_n_f32(v30, v7);
      *v26 = vmulq_n_f32(v23, v10);
      v26[1] = vmulq_n_f32(v24, v10);
      v26[2] = vmulq_n_f32(v29, v10);
      v26[3] = vmulq_n_f32(v30, v10);
      *v27 = vmulq_n_f32(v23, v11);
      v27[1] = vmulq_n_f32(v24, v11);
      v27[2] = vmulq_n_f32(v29, v11);
      v27[3] = vmulq_n_f32(v30, v11);
      *v28 = vmulq_n_f32(v23, v14);
      v28[1] = vmulq_n_f32(v24, v14);
      v28[2] = vmulq_n_f32(v29, v14);
      v28[3] = vmulq_n_f32(v30, v14);
      *v31 = vmulq_n_f32(v23, v15);
      v31[1] = vmulq_n_f32(v24, v15);
      v31[2] = vmulq_n_f32(v29, v15);
      v31[3] = vmulq_n_f32(v30, v15);
      *v32 = vmulq_n_f32(v23, v16);
      v32[1] = vmulq_n_f32(v24, v16);
      v32[2] = vmulq_n_f32(v29, v16);
      v32[3] = vmulq_n_f32(v30, v16);
      *result = vmulq_n_f32(v23, v17);
      *(result + 1) = vmulq_n_f32(v24, v17);
      v21 += 16;
      v18 -= 64;
      *(result + 2) = vmulq_n_f32(v29, v17);
      *(result + 3) = vmulq_n_f32(v30, v17);
    }

    while (v18 > 63);
    a3 = (a3 + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v33 = 0;
    v34 = a4 - a3;
    do
    {
      result = &v4[v33];
      v35 = *&a3[v33];
      *&v4[v33] = vmulq_n_f32(v35, v6);
      *&v5[v33] = vmulq_n_f32(v35, v7);
      *&v8[v33] = vmulq_n_f32(v35, v10);
      *&v9[v33] = vmulq_n_f32(v35, v11);
      *&v12[v33] = vmulq_n_f32(v35, v14);
      *&v13[v33] = vmulq_n_f32(v35, v15);
      *&v19[v33] = vmulq_n_f32(v35, v16);
      *&v20[v33] = vmulq_n_f32(v35, v17);
      v33 += 4;
      v34 -= 16;
    }

    while (v34 > 15);
    a3 = (a3 + v33 * 4);
    v4 = (v4 + v33 * 4);
    v5 = (v5 + v33 * 4);
    v8 = (v8 + v33 * 4);
    v9 = (v9 + v33 * 4);
    v12 = (v12 + v33 * 4);
    v13 = (v13 + v33 * 4);
    v19 = (v19 + v33 * 4);
    v20 = (v20 + v33 * 4);
  }

  while (a3 < a4)
  {
    v36 = *a3++;
    *v4++ = v6 * v36;
    *v5++ = v7 * v36;
    *v8++ = v10 * v36;
    *v9++ = v11 * v36;
    *v12++ = v14 * v36;
    *v13++ = v15 * v36;
    *v19++ = v16 * v36;
    *v20++ = v17 * v36;
  }

  return result;
}

float32x4_t **sub_29AB4CE60(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = *a2;
  v6 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v7 = vaddq_f32(vmulq_n_f32(a3[1], v5), v4[1]);
      v8 = vaddq_f32(vmulq_n_f32(a3[2], v5), v4[2]);
      v9 = vaddq_f32(vmulq_n_f32(a3[3], v5), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v5), *v4);
      v4[1] = v7;
      v4[2] = v8;
      v4[3] = v9;
      a3 += 4;
      v4 += 4;
      v6 -= 64;
    }

    while (v6 > 63);
  }

  if (v6 >= 16)
  {
    v10 = a4 - a3;
    do
    {
      v11 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v11, v5));
      ++v4;
      v10 -= 16;
    }

    while (v10 > 15);
  }

  while (a3 < a4)
  {
    v12 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v5 * v12) + v4->f32[0];
    v4 = (v4 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4CF10(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[2];
      v12 = a3[3];
      v13 = vaddq_f32(vmulq_n_f32(v10, v6), v4[1]);
      v14 = vaddq_f32(vmulq_n_f32(v11, v6), v4[2]);
      v15 = vaddq_f32(vmulq_n_f32(v12, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v13;
      v4[2] = v14;
      v4[3] = v15;
      v16 = vaddq_f32(vmulq_n_f32(v10, v7), v5[1]);
      v17 = vaddq_f32(vmulq_n_f32(v11, v7), v5[2]);
      v18 = vaddq_f32(vmulq_n_f32(v12, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v9, v7), *v5);
      v5[1] = v16;
      v5[2] = v17;
      v5[3] = v18;
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v19 = a4 - a3;
    do
    {
      v20 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v20, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v20, v7), *v5);
      ++v5;
      v19 -= 16;
    }

    while (v19 > 15);
  }

  while (a3 < a4)
  {
    v21 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v21) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v21) + v5->f32[0];
    v5 = (v5 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4D014(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = a2[2];
  v10 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v11 = *a3;
      v12 = a3[1];
      v13 = a3[2];
      v14 = a3[3];
      v15 = vaddq_f32(vmulq_n_f32(v12, v6), v4[1]);
      v16 = vaddq_f32(vmulq_n_f32(v13, v6), v4[2]);
      v17 = vaddq_f32(vmulq_n_f32(v14, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v15;
      v4[2] = v16;
      v4[3] = v17;
      v18 = vaddq_f32(vmulq_n_f32(v12, v7), v5[1]);
      v19 = vaddq_f32(vmulq_n_f32(v13, v7), v5[2]);
      v20 = vaddq_f32(vmulq_n_f32(v14, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v11, v7), *v5);
      v5[1] = v18;
      v5[2] = v19;
      v5[3] = v20;
      v21 = vaddq_f32(vmulq_n_f32(v12, v9), v8[1]);
      v22 = vaddq_f32(vmulq_n_f32(v13, v9), v8[2]);
      v23 = vaddq_f32(vmulq_n_f32(v14, v9), v8[3]);
      *v8 = vaddq_f32(vmulq_n_f32(v11, v9), *v8);
      v8[1] = v21;
      v8[2] = v22;
      v8[3] = v23;
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v24 = a4 - a3;
    do
    {
      v25 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v25, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v25, v7), *v5);
      ++v5;
      *v8 = vaddq_f32(vmulq_n_f32(v25, v9), *v8);
      ++v8;
      v24 -= 16;
    }

    while (v24 > 15);
  }

  while (a3 < a4)
  {
    v26 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v26) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v26) + v5->f32[0];
    v5 = (v5 + 4);
    v8->f32[0] = (v9 * v26) + v8->f32[0];
    v8 = (v8 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4D174(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a4 - a3;
  v11 = a2[2];
  v12 = a2[3];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[2];
      v16 = a3[3];
      v17 = vaddq_f32(vmulq_n_f32(v14, v6), v4[1]);
      v18 = vaddq_f32(vmulq_n_f32(v15, v6), v4[2]);
      v19 = vaddq_f32(vmulq_n_f32(v16, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v17;
      v4[2] = v18;
      v4[3] = v19;
      v20 = vaddq_f32(vmulq_n_f32(v14, v7), v5[1]);
      v21 = vaddq_f32(vmulq_n_f32(v15, v7), v5[2]);
      v22 = vaddq_f32(vmulq_n_f32(v16, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v13, v7), *v5);
      v5[1] = v20;
      v5[2] = v21;
      v5[3] = v22;
      v23 = vaddq_f32(vmulq_n_f32(v14, v11), v8[1]);
      v24 = vaddq_f32(vmulq_n_f32(v15, v11), v8[2]);
      v25 = vaddq_f32(vmulq_n_f32(v16, v11), v8[3]);
      *v8 = vaddq_f32(vmulq_n_f32(v13, v11), *v8);
      v8[1] = v23;
      v8[2] = v24;
      v8[3] = v25;
      v26 = vaddq_f32(vmulq_n_f32(v14, v12), v9[1]);
      v27 = vaddq_f32(vmulq_n_f32(v15, v12), v9[2]);
      v28 = vaddq_f32(vmulq_n_f32(v16, v12), v9[3]);
      *v9 = vaddq_f32(vmulq_n_f32(v13, v12), *v9);
      v9[1] = v26;
      a3 += 4;
      v9[2] = v27;
      v9[3] = v28;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v29 = a4 - a3;
    do
    {
      v30 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v30, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v30, v7), *v5);
      ++v5;
      *v8 = vaddq_f32(vmulq_n_f32(v30, v11), *v8);
      ++v8;
      *v9 = vaddq_f32(vmulq_n_f32(v30, v12), *v9);
      ++v9;
      v29 -= 16;
    }

    while (v29 > 15);
  }

  while (a3 < a4)
  {
    v31 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v31) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v31) + v5->f32[0];
    v5 = (v5 + 4);
    v8->f32[0] = (v11 * v31) + v8->f32[0];
    v8 = (v8 + 4);
    v9->f32[0] = (v12 * v31) + v9->f32[0];
    v9 = (v9 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4D328(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a4 - a3;
  v14 = result[4];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v16 = *a3;
      v15 = a3[1];
      v18 = a3[2];
      v17 = a3[3];
      v19 = vaddq_f32(vmulq_n_f32(v15, v6), v4[1]);
      v20 = vaddq_f32(vmulq_n_f32(v18, v6), v4[2]);
      v21 = vaddq_f32(vmulq_n_f32(v17, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v19;
      v4[2] = v20;
      v4[3] = v21;
      v22 = vaddq_f32(vmulq_n_f32(v15, v7), v5[1]);
      v23 = vaddq_f32(vmulq_n_f32(v18, v7), v5[2]);
      v24 = vaddq_f32(vmulq_n_f32(v17, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v16, v7), *v5);
      v5[1] = v22;
      v5[2] = v23;
      v5[3] = v24;
      v25 = vaddq_f32(vmulq_n_f32(v15, v10), v8[1]);
      v26 = vaddq_f32(vmulq_n_f32(v18, v10), v8[2]);
      v27 = vaddq_f32(vmulq_n_f32(v17, v10), v8[3]);
      *v8 = vaddq_f32(vmulq_n_f32(v16, v10), *v8);
      v8[1] = v25;
      v8[2] = v26;
      v8[3] = v27;
      v28 = vaddq_f32(vmulq_n_f32(v15, v11), v9[1]);
      v29 = vaddq_f32(vmulq_n_f32(v18, v11), v9[2]);
      v30 = vaddq_f32(vmulq_n_f32(v17, v11), v9[3]);
      *v9 = vaddq_f32(vmulq_n_f32(v16, v11), *v9);
      v9[1] = v28;
      v9[2] = v29;
      v9[3] = v30;
      v31 = vaddq_f32(vmulq_n_f32(v15, v12), v14[1]);
      v32 = vaddq_f32(vmulq_n_f32(v18, v12), v14[2]);
      v33 = vaddq_f32(vmulq_n_f32(v17, v12), v14[3]);
      *v14 = vaddq_f32(vmulq_n_f32(v16, v12), *v14);
      v14[1] = v31;
      a3 += 4;
      v4 += 4;
      v14[2] = v32;
      v14[3] = v33;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v14 += 4;
      v13 -= 64;
    }

    while (v13 > 63);
  }

  if (v13 >= 16)
  {
    v34 = a4 - a3;
    do
    {
      v35 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v35, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v35, v7), *v5);
      ++v5;
      *v8 = vaddq_f32(vmulq_n_f32(v35, v10), *v8);
      ++v8;
      *v9 = vaddq_f32(vmulq_n_f32(v35, v11), *v9);
      ++v9;
      *v14 = vaddq_f32(vmulq_n_f32(v35, v12), *v14);
      ++v14;
      v34 -= 16;
    }

    while (v34 > 15);
  }

  while (a3 < a4)
  {
    v36 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v36) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v36) + v5->f32[0];
    v5 = (v5 + 4);
    v8->f32[0] = (v10 * v36) + v8->f32[0];
    v8 = (v8 + 4);
    v9->f32[0] = (v11 * v36) + v9->f32[0];
    v9 = (v9 + 4);
    v14->f32[0] = (v12 * v36) + v14->f32[0];
    v14 = (v14 + 4);
  }

  return result;
}

float *sub_29AB4D538(float *result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = *(result + 1);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(result + 2);
  v9 = *(result + 3);
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a4 - a3;
  v15 = *(result + 4);
  v16 = *(result + 5);
  if ((a4 - a3) >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &v4[v17];
      v19 = &v5[v17];
      v20 = &v8[v17];
      result = &v9[v17];
      v21 = &v15[v17];
      v22 = &v16[v17];
      v24 = *&a3[v17];
      v23 = *&a3[v17 + 4];
      v26 = *&a3[v17 + 8];
      v25 = *&a3[v17 + 12];
      v27 = vaddq_f32(vmulq_n_f32(v23, v6), *&v4[v17 + 4]);
      v28 = vaddq_f32(vmulq_n_f32(v26, v6), *&v4[v17 + 8]);
      v29 = vaddq_f32(vmulq_n_f32(v25, v6), *&v4[v17 + 12]);
      *v18 = vaddq_f32(vmulq_n_f32(v24, v6), *&v4[v17]);
      v18[1] = v27;
      v18[2] = v28;
      v18[3] = v29;
      v30 = vaddq_f32(vmulq_n_f32(v23, v7), *&v5[v17 + 4]);
      v31 = vaddq_f32(vmulq_n_f32(v26, v7), *&v5[v17 + 8]);
      v32 = vaddq_f32(vmulq_n_f32(v25, v7), *&v5[v17 + 12]);
      *v19 = vaddq_f32(vmulq_n_f32(v24, v7), *&v5[v17]);
      v19[1] = v30;
      v19[2] = v31;
      v19[3] = v32;
      v33 = vaddq_f32(vmulq_n_f32(v23, v10), *&v8[v17 + 4]);
      v34 = vaddq_f32(vmulq_n_f32(v26, v10), *&v8[v17 + 8]);
      v35 = vaddq_f32(vmulq_n_f32(v25, v10), *&v8[v17 + 12]);
      *v20 = vaddq_f32(vmulq_n_f32(v24, v10), *&v8[v17]);
      v20[1] = v33;
      v20[2] = v34;
      v20[3] = v35;
      v36 = vaddq_f32(vmulq_n_f32(v23, v11), *&v9[v17 + 4]);
      v37 = vaddq_f32(vmulq_n_f32(v26, v11), *&v9[v17 + 8]);
      v38 = vaddq_f32(vmulq_n_f32(v25, v11), *&v9[v17 + 12]);
      *result = vaddq_f32(vmulq_n_f32(v24, v11), *&v9[v17]);
      *(result + 1) = v36;
      *(result + 2) = v37;
      *(result + 3) = v38;
      v39 = vaddq_f32(vmulq_n_f32(v23, v12), *&v15[v17 + 4]);
      v40 = vaddq_f32(vmulq_n_f32(v26, v12), *&v15[v17 + 8]);
      v41 = vaddq_f32(vmulq_n_f32(v25, v12), *&v15[v17 + 12]);
      *v21 = vaddq_f32(vmulq_n_f32(v24, v12), *&v15[v17]);
      v21[1] = v39;
      v21[2] = v40;
      v21[3] = v41;
      v42 = vaddq_f32(vmulq_n_f32(v23, v13), *&v16[v17 + 4]);
      v43 = vaddq_f32(vmulq_n_f32(v26, v13), *&v16[v17 + 8]);
      v44 = vaddq_f32(vmulq_n_f32(v25, v13), *&v16[v17 + 12]);
      *v22 = vaddq_f32(vmulq_n_f32(v24, v13), *&v16[v17]);
      v22[1] = v42;
      v22[2] = v43;
      v22[3] = v44;
      v17 += 16;
      v14 -= 64;
    }

    while (v14 > 63);
    a3 = (a3 + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v15 = (v15 + v17 * 4);
    v16 = (v16 + v17 * 4);
  }

  if (v14 >= 16)
  {
    v45 = 0;
    v46 = a4 - a3;
    do
    {
      v47 = *&a3[v45];
      *&v4[v45] = vaddq_f32(*&v4[v45], vmulq_n_f32(v47, v6));
      *&v5[v45] = vaddq_f32(vmulq_n_f32(v47, v7), *&v5[v45]);
      *&v8[v45] = vaddq_f32(vmulq_n_f32(v47, v10), *&v8[v45]);
      *&v9[v45] = vaddq_f32(vmulq_n_f32(v47, v11), *&v9[v45]);
      *&v15[v45] = vaddq_f32(vmulq_n_f32(v47, v12), *&v15[v45]);
      *&v16[v45] = vaddq_f32(vmulq_n_f32(v47, v13), *&v16[v45]);
      v45 += 4;
      v46 -= 16;
    }

    while (v46 > 15);
    a3 = (a3 + v45 * 4);
    v4 = (v4 + v45 * 4);
    v5 = (v5 + v45 * 4);
    v8 = (v8 + v45 * 4);
    v9 = (v9 + v45 * 4);
    v15 = (v15 + v45 * 4);
    v16 = (v16 + v45 * 4);
  }

  while (a3 < a4)
  {
    v48 = *a3++;
    *v4 = (v6 * v48) + *v4;
    ++v4;
    *v5 = (v7 * v48) + *v5;
    ++v5;
    *v8 = (v10 * v48) + *v8;
    ++v8;
    *v9 = (v11 * v48) + *v9;
    ++v9;
    *v15 = (v12 * v48) + *v15;
    ++v15;
    *v16 = (v13 * v48) + *v16;
    ++v16;
  }

  return result;
}

float **sub_29AB4D7E8(float **result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[4];
  v13 = result[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a4 - a3;
  v18 = result[6];
  if ((a4 - a3) >= 64)
  {
    v19 = 0;
    do
    {
      v20 = &v4[v19];
      v21 = &v5[v19];
      v22 = &v8[v19];
      v23 = &v9[v19];
      v24 = &v12[v19];
      result = &v13[v19];
      v25 = &v18[v19];
      v27 = *&a3[v19];
      v26 = *&a3[v19 + 4];
      v29 = *&a3[v19 + 8];
      v28 = *&a3[v19 + 12];
      v30 = vaddq_f32(vmulq_n_f32(v26, v6), *&v4[v19 + 4]);
      v31 = vaddq_f32(vmulq_n_f32(v29, v6), *&v4[v19 + 8]);
      v32 = vaddq_f32(vmulq_n_f32(v28, v6), *&v4[v19 + 12]);
      *v20 = vaddq_f32(vmulq_n_f32(v27, v6), *&v4[v19]);
      v20[1] = v30;
      v20[2] = v31;
      v20[3] = v32;
      v33 = vaddq_f32(vmulq_n_f32(v26, v7), *&v5[v19 + 4]);
      v34 = vaddq_f32(vmulq_n_f32(v29, v7), *&v5[v19 + 8]);
      v35 = vaddq_f32(vmulq_n_f32(v28, v7), *&v5[v19 + 12]);
      *v21 = vaddq_f32(vmulq_n_f32(v27, v7), *&v5[v19]);
      v21[1] = v33;
      v21[2] = v34;
      v21[3] = v35;
      v36 = vaddq_f32(vmulq_n_f32(v26, v10), *&v8[v19 + 4]);
      v37 = vaddq_f32(vmulq_n_f32(v29, v10), *&v8[v19 + 8]);
      v38 = vaddq_f32(vmulq_n_f32(v28, v10), *&v8[v19 + 12]);
      *v22 = vaddq_f32(vmulq_n_f32(v27, v10), *&v8[v19]);
      v22[1] = v36;
      v22[2] = v37;
      v22[3] = v38;
      v39 = vaddq_f32(vmulq_n_f32(v26, v11), *&v9[v19 + 4]);
      v40 = vaddq_f32(vmulq_n_f32(v29, v11), *&v9[v19 + 8]);
      v41 = vaddq_f32(vmulq_n_f32(v28, v11), *&v9[v19 + 12]);
      *v23 = vaddq_f32(vmulq_n_f32(v27, v11), *&v9[v19]);
      v23[1] = v39;
      v23[2] = v40;
      v23[3] = v41;
      v42 = vaddq_f32(vmulq_n_f32(v26, v14), *&v12[v19 + 4]);
      v43 = vaddq_f32(vmulq_n_f32(v29, v14), *&v12[v19 + 8]);
      v44 = vaddq_f32(vmulq_n_f32(v28, v14), *&v12[v19 + 12]);
      *v24 = vaddq_f32(vmulq_n_f32(v27, v14), *&v12[v19]);
      v24[1] = v42;
      v24[2] = v43;
      v24[3] = v44;
      v45 = vaddq_f32(vmulq_n_f32(v26, v15), *&v13[v19 + 4]);
      v46 = vaddq_f32(vmulq_n_f32(v29, v15), *&v13[v19 + 8]);
      v47 = vaddq_f32(vmulq_n_f32(v28, v15), *&v13[v19 + 12]);
      *result = vaddq_f32(vmulq_n_f32(v27, v15), *&v13[v19]);
      *(result + 1) = v45;
      *(result + 2) = v46;
      *(result + 3) = v47;
      v48 = vaddq_f32(vmulq_n_f32(v26, v16), *&v18[v19 + 4]);
      v49 = vaddq_f32(vmulq_n_f32(v29, v16), *&v18[v19 + 8]);
      v50 = vaddq_f32(vmulq_n_f32(v28, v16), *&v18[v19 + 12]);
      *v25 = vaddq_f32(vmulq_n_f32(v27, v16), *&v18[v19]);
      v25[1] = v48;
      v25[2] = v49;
      v25[3] = v50;
      v19 += 16;
      v17 -= 64;
    }

    while (v17 > 63);
    a3 = (a3 + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v18 = (v18 + v19 * 4);
  }

  if (v17 >= 16)
  {
    v51 = 0;
    v52 = a4 - a3;
    do
    {
      v53 = *&a3[v51];
      *&v4[v51] = vaddq_f32(*&v4[v51], vmulq_n_f32(v53, v6));
      *&v5[v51] = vaddq_f32(vmulq_n_f32(v53, v7), *&v5[v51]);
      *&v8[v51] = vaddq_f32(vmulq_n_f32(v53, v10), *&v8[v51]);
      *&v9[v51] = vaddq_f32(vmulq_n_f32(v53, v11), *&v9[v51]);
      *&v12[v51] = vaddq_f32(vmulq_n_f32(v53, v14), *&v12[v51]);
      *&v13[v51] = vaddq_f32(vmulq_n_f32(v53, v15), *&v13[v51]);
      *&v18[v51] = vaddq_f32(vmulq_n_f32(v53, v16), *&v18[v51]);
      v51 += 4;
      v52 -= 16;
    }

    while (v52 > 15);
    a3 = (a3 + v51 * 4);
    v4 = (v4 + v51 * 4);
    v5 = (v5 + v51 * 4);
    v8 = (v8 + v51 * 4);
    v9 = (v9 + v51 * 4);
    v12 = (v12 + v51 * 4);
    v13 = (v13 + v51 * 4);
    v18 = (v18 + v51 * 4);
  }

  while (a3 < a4)
  {
    v54 = *a3++;
    *v4 = (v6 * v54) + *v4;
    ++v4;
    *v5 = (v7 * v54) + *v5;
    ++v5;
    *v8 = (v10 * v54) + *v8;
    ++v8;
    *v9 = (v11 * v54) + *v9;
    ++v9;
    *v12 = (v14 * v54) + *v12;
    ++v12;
    *v13 = (v15 * v54) + *v13;
    ++v13;
    *v18 = (v16 * v54) + *v18;
    ++v18;
  }

  return result;
}

float **sub_29AB4DB04(float **result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[4];
  v13 = result[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - a3;
  v19 = result[6];
  v20 = result[7];
  if ((a4 - a3) >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &v4[v21];
      v23 = &v5[v21];
      v24 = &v8[v21];
      v25 = &v9[v21];
      v26 = &v12[v21];
      v27 = &v13[v21];
      v28 = &v19[v21];
      result = &v20[v21];
      v30 = *&a3[v21];
      v29 = *&a3[v21 + 4];
      v32 = *&a3[v21 + 8];
      v31 = *&a3[v21 + 12];
      v33 = vaddq_f32(vmulq_n_f32(v29, v6), *&v4[v21 + 4]);
      v34 = vaddq_f32(vmulq_n_f32(v32, v6), *&v4[v21 + 8]);
      v35 = vaddq_f32(vmulq_n_f32(v31, v6), *&v4[v21 + 12]);
      *v22 = vaddq_f32(vmulq_n_f32(v30, v6), *&v4[v21]);
      v22[1] = v33;
      v22[2] = v34;
      v22[3] = v35;
      v36 = vaddq_f32(vmulq_n_f32(v29, v7), *&v5[v21 + 4]);
      v37 = vaddq_f32(vmulq_n_f32(v32, v7), *&v5[v21 + 8]);
      v38 = vaddq_f32(vmulq_n_f32(v31, v7), *&v5[v21 + 12]);
      *v23 = vaddq_f32(vmulq_n_f32(v30, v7), *&v5[v21]);
      v23[1] = v36;
      v23[2] = v37;
      v23[3] = v38;
      v39 = vaddq_f32(vmulq_n_f32(v29, v10), *&v8[v21 + 4]);
      v40 = vaddq_f32(vmulq_n_f32(v32, v10), *&v8[v21 + 8]);
      v41 = vaddq_f32(vmulq_n_f32(v31, v10), *&v8[v21 + 12]);
      *v24 = vaddq_f32(vmulq_n_f32(v30, v10), *&v8[v21]);
      v24[1] = v39;
      v24[2] = v40;
      v24[3] = v41;
      v42 = vaddq_f32(vmulq_n_f32(v29, v11), *&v9[v21 + 4]);
      v43 = vaddq_f32(vmulq_n_f32(v32, v11), *&v9[v21 + 8]);
      v44 = vaddq_f32(vmulq_n_f32(v31, v11), *&v9[v21 + 12]);
      *v25 = vaddq_f32(vmulq_n_f32(v30, v11), *&v9[v21]);
      v25[1] = v42;
      v25[2] = v43;
      v25[3] = v44;
      v45 = vaddq_f32(vmulq_n_f32(v29, v14), *&v12[v21 + 4]);
      v46 = vaddq_f32(vmulq_n_f32(v32, v14), *&v12[v21 + 8]);
      v47 = vaddq_f32(vmulq_n_f32(v31, v14), *&v12[v21 + 12]);
      *v26 = vaddq_f32(vmulq_n_f32(v30, v14), *&v12[v21]);
      v26[1] = v45;
      v26[2] = v46;
      v26[3] = v47;
      v48 = vaddq_f32(vmulq_n_f32(v29, v15), *&v13[v21 + 4]);
      v49 = vaddq_f32(vmulq_n_f32(v32, v15), *&v13[v21 + 8]);
      v50 = vaddq_f32(vmulq_n_f32(v31, v15), *&v13[v21 + 12]);
      *v27 = vaddq_f32(vmulq_n_f32(v30, v15), *&v13[v21]);
      v27[1] = v48;
      v27[2] = v49;
      v27[3] = v50;
      v51 = vaddq_f32(vmulq_n_f32(v29, v16), *&v19[v21 + 4]);
      v52 = vaddq_f32(vmulq_n_f32(v32, v16), *&v19[v21 + 8]);
      v53 = vaddq_f32(vmulq_n_f32(v31, v16), *&v19[v21 + 12]);
      *v28 = vaddq_f32(vmulq_n_f32(v30, v16), *&v19[v21]);
      v28[1] = v51;
      v28[2] = v52;
      v28[3] = v53;
      v54 = vaddq_f32(vmulq_n_f32(v29, v17), *&v20[v21 + 4]);
      v55 = vaddq_f32(vmulq_n_f32(v32, v17), *&v20[v21 + 8]);
      v56 = vaddq_f32(vmulq_n_f32(v31, v17), *&v20[v21 + 12]);
      *result = vaddq_f32(vmulq_n_f32(v30, v17), *&v20[v21]);
      *(result + 1) = v54;
      *(result + 2) = v55;
      *(result + 3) = v56;
      v21 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    a3 = (a3 + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v57 = 0;
    v58 = a4 - a3;
    do
    {
      result = &v4[v57];
      v59 = *&a3[v57];
      *&v4[v57] = vaddq_f32(*&v4[v57], vmulq_n_f32(v59, v6));
      *&v5[v57] = vaddq_f32(vmulq_n_f32(v59, v7), *&v5[v57]);
      *&v8[v57] = vaddq_f32(vmulq_n_f32(v59, v10), *&v8[v57]);
      *&v9[v57] = vaddq_f32(vmulq_n_f32(v59, v11), *&v9[v57]);
      *&v12[v57] = vaddq_f32(vmulq_n_f32(v59, v14), *&v12[v57]);
      *&v13[v57] = vaddq_f32(vmulq_n_f32(v59, v15), *&v13[v57]);
      *&v19[v57] = vaddq_f32(vmulq_n_f32(v59, v16), *&v19[v57]);
      *&v20[v57] = vaddq_f32(vmulq_n_f32(v59, v17), *&v20[v57]);
      v57 += 4;
      v58 -= 16;
    }

    while (v58 > 15);
    a3 = (a3 + v57 * 4);
    v4 = (v4 + v57 * 4);
    v5 = (v5 + v57 * 4);
    v8 = (v8 + v57 * 4);
    v9 = (v9 + v57 * 4);
    v12 = (v12 + v57 * 4);
    v13 = (v13 + v57 * 4);
    v19 = (v19 + v57 * 4);
    v20 = (v20 + v57 * 4);
  }

  while (a3 < a4)
  {
    v60 = *a3++;
    *v4 = (v6 * v60) + *v4;
    ++v4;
    *v5 = (v7 * v60) + *v5;
    ++v5;
    *v8 = (v10 * v60) + *v8;
    ++v8;
    *v9 = (v11 * v60) + *v9;
    ++v9;
    *v12 = (v14 * v60) + *v12;
    ++v12;
    *v13 = (v15 * v60) + *v13;
    ++v13;
    *v19 = (v16 * v60) + *v19;
    ++v19;
    *v20 = (v17 * v60) + *v20;
    ++v20;
  }

  return result;
}

uint64_t sub_29AB4DE84(uint64_t a1, int *a2, int *a3, int *a4)
{
  result = sub_29AB54174(a1, "S\x80\xF6\x34nvalid width");
  if (!result)
  {
    goto LABEL_23;
  }

  if (*(a1 + 16))
  {
    v9 = *(a1 + 192);
    v10 = *(a1 + 200);
    if (v10 - v9 <= 87)
    {
      *(a1 + 192) = v10;
      (*(a1 + 24))(*(a1 + 40), (88 - (v10 - v9)));
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *(a1 + 192);
  }

  *(a1 + 192) = v9 + 88;
LABEL_7:
  v11 = sub_29AB4FF24(a1);
  v12 = v11;
  if (a2)
  {
    *a2 = v11;
    v12 = 0;
  }

  v13 = sub_29AB4FF24(a1);
  if (a3)
  {
    *a3 = v13;
  }

  else
  {
    v12 = v13;
  }

  if (*(a1 + 16))
  {
    if (!(*(a1 + 32))(*(a1 + 40)))
    {
      goto LABEL_16;
    }

    if (!*(a1 + 48))
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 192) >= *(a1 + 200))
  {
LABEL_22:
    result = 0;
LABEL_23:
    *(a1 + 192) = *(a1 + 208);
    return result;
  }

LABEL_16:
  v14 = v12;
  if (a2)
  {
    v14 = *a2;
  }

  if (v14)
  {
    v15 = 0x10000000 / v14;
    if (a3)
    {
      v12 = *a3;
    }

    if (v15 < v12)
    {
      goto LABEL_22;
    }
  }

  if (!*(a1 + 16))
  {
    v16 = *(a1 + 192);
    goto LABEL_28;
  }

  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  if (v17 - v16 > 7)
  {
LABEL_28:
    *(a1 + 192) = v16 + 8;
    goto LABEL_29;
  }

  *(a1 + 192) = v17;
  (*(a1 + 24))(*(a1 + 40), (8 - (v17 - v16)));
LABEL_29:
  v18 = 0;
  v19 = (a1 + 56);
  v20 = a1 + 57;
  v21 = 11;
  do
  {
    if (!--v21)
    {
      return 0;
    }

    v23 = *(a1 + 192);
    v22 = *(a1 + 200);
    if (v23 >= v22)
    {
      if (*(a1 + 48))
      {
        v25 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v25)
        {
          v22 = &v19[v25];
          v24 = *v19;
        }

        else
        {
          v24 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v22 = (a1 + 57);
        }

        *(a1 + 192) = v20;
        *(a1 + 200) = v22;
        v23 = (a1 + 57);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      *(a1 + 192) = v23 + 1;
      v24 = *v23++;
    }

    if (v23 >= v22)
    {
      if (*(a1 + 48))
      {
        v27 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v27)
        {
          v22 = &v19[v27];
          v26 = *v19;
        }

        else
        {
          v26 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v22 = (a1 + 57);
        }

        *(a1 + 192) = v20;
        *(a1 + 200) = v22;
        v23 = (a1 + 57);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      *(a1 + 192) = v23 + 1;
      v26 = *v23++;
    }

    if (v23 >= v22)
    {
      if (!*(a1 + 48))
      {
        goto LABEL_55;
      }

      v28 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v28)
      {
        v22 = &v19[v28];
      }

      else
      {
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v22 = (a1 + 57);
      }

      *(a1 + 200) = v22;
      v23 = (a1 + 57);
    }

    else
    {
      ++v23;
    }

    *(a1 + 192) = v23;
LABEL_55:
    if (v23 >= v22)
    {
      if (*(a1 + 48))
      {
        v30 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v30)
        {
          v22 = &v19[v30];
          v29 = *v19;
        }

        else
        {
          v29 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v22 = (a1 + 57);
        }

        *(a1 + 192) = v20;
        *(a1 + 200) = v22;
        v23 = (a1 + 57);
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      *(a1 + 192) = v23 + 1;
      v29 = *v23++;
    }

    if (*(a1 + 16))
    {
      if (!(*(a1 + 32))(*(a1 + 40)))
      {
        goto LABEL_68;
      }

      if (!*(a1 + 48))
      {
        goto LABEL_22;
      }

      v23 = *(a1 + 192);
      v22 = *(a1 + 200);
    }

    if (v23 >= v22)
    {
      goto LABEL_22;
    }

LABEL_68:
    if (v26 != 8)
    {
      goto LABEL_22;
    }

    v18 |= v29;
  }

  while (v24);
  if (a4)
  {
    if ((v18 & 0x10) != 0)
    {
      v31 = 4;
    }

    else
    {
      v31 = 3;
    }

    *a4 = v31;
  }

  return 1;
}

uint64_t sub_29AB4E24C(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v8 = *(a1 + 208);
  v9 = *(a1 + 216);
  *(a1 + 192) = v8;
  *(a1 + 200) = v9;
  if (v8 >= v9)
  {
    if (*(a1 + 48))
    {
      v12 = (a1 + 56);
      v13 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      v8 = *(a1 + 208);
      *(a1 + 184) += *(a1 + 192) - v8;
      if (v13)
      {
        v9 = &v12[v13];
        v11 = *v12;
      }

      else
      {
        v11 = 0;
        *(a1 + 48) = 0;
        v9 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v10 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v9;
    }

    else
    {
      v11 = 0;
      v10 = v8;
    }
  }

  else
  {
    v10 = v8 + 1;
    *(a1 + 192) = v8 + 1;
    v11 = *v8;
  }

  if (v10 >= v9)
  {
    if (!*(a1 + 48))
    {
LABEL_25:
      result = 0;
      v21 = *(a1 + 216);
      *(a1 + 192) = v8;
      *(a1 + 200) = v21;
      return result;
    }

    v16 = (a1 + 56);
    v17 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    v8 = *(a1 + 208);
    *(a1 + 184) += *(a1 + 192) - v8;
    if (v17)
    {
      v9 = &v16[v17];
      v15 = *v16;
    }

    else
    {
      v15 = 0;
      *(a1 + 48) = 0;
      v9 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v14 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v9;
  }

  else
  {
    v14 = v10 + 1;
    *(a1 + 192) = v10 + 1;
    v15 = *v10;
  }

  if (v11 != 80 || (v15 - 55) <= 0xFFFFFFFD)
  {
    goto LABEL_25;
  }

  if (a4)
  {
    if (v15 == 54)
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

    *a4 = v18;
  }

  if (v14 >= v9)
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      v22 = (a1 + 56);
      v23 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v23)
      {
        v24 = &v22[v23];
        LOBYTE(v19) = *v22;
      }

      else
      {
        LOBYTE(v19) = 0;
        *(a1 + 48) = 0;
        v24 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v24;
    }
  }

  else
  {
    *(a1 + 192) = v14 + 1;
    LOBYTE(v19) = *v14;
  }

  v30 = v19;
  sub_29AB54254(a1, &v30);
  v25 = sub_29AB5442C(a1, &v30);
  if (a2)
  {
    *a2 = v25;
  }

  if (!v25)
  {
    goto LABEL_39;
  }

  sub_29AB54254(a1, &v30);
  v26 = sub_29AB5442C(a1, &v30);
  if (a3)
  {
    *a3 = v26;
  }

  if (!v26)
  {
LABEL_39:
    v28 = off_2A1B71BE0();
    result = 0;
    v29 = "invalid width";
    goto LABEL_40;
  }

  sub_29AB54254(a1, &v30);
  v27 = sub_29AB5442C(a1, &v30);
  if (v27 >= 0x10000)
  {
    v28 = off_2A1B71BE0();
    result = 0;
    v29 = "max value > 65535";
LABEL_40:
    *v28 = v29;
    return result;
  }

  if (v27 <= 255)
  {
    return 8;
  }

  else
  {
    return 16;
  }
}

__n128 sub_29AB4E50C(__n128 *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v18[127] = *MEMORY[0x29EDCA608];
  sub_29AB54574(a1);
  if (!v8)
  {
    goto LABEL_25;
  }

  sub_29AB545CC(a1, &v17);
  if (!v17)
  {
    goto LABEL_25;
  }

  v9 = 0;
  do
  {
    if (!(v17 ^ 0x333D54414D524F46 | v18[0] ^ 0x6C725F7469622D32 | *(v18 + 7) ^ 0x656267725F656CLL))
    {
      v9 = 1;
    }

    sub_29AB545CC(a1, &v17);
  }

  while (v17);
  if (!v9)
  {
    goto LABEL_25;
  }

  sub_29AB545CC(a1, &v17);
  if (v17 != 22829 || BYTE2(v17) != 32)
  {
    goto LABEL_25;
  }

  v16 = &v17 + 3;
  v11 = strtol(&v17 + 3, &v16, 10);
  if (a3)
  {
    *a3 = v11;
  }

  v12 = v16 + 2;
  do
  {
    v13 = *(v12 - 2);
    ++v12;
  }

  while (v13 == 32);
  if (v13 == 43 && *(v12 - 2) == 88 && *(v12 - 1) == 32)
  {
    v16 = v12;
    v14 = strtol(v12, 0, 10);
    if (a2)
    {
      *a2 = v14;
    }

    if (a4)
    {
      *a4 = 3;
    }
  }

  else
  {
LABEL_25:
    result = a1[13];
    a1[12] = result;
  }

  return result;
}

uint64_t sub_29AB4E6D0(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v9 = *(a1 + 192);
  v8 = *(a1 + 200);
  if (v9 >= v8)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_9;
    }

    v10 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v10)
    {
      v8 = a1 + 56 + v10;
    }

    else
    {
      *(a1 + 48) = 0;
      v8 = a1 + 57;
      *(a1 + 56) = 0;
    }

    *(a1 + 200) = v8;
    v9 = (a1 + 57);
  }

  else
  {
    ++v9;
  }

  *(a1 + 192) = v9;
LABEL_9:
  if (v9 >= v8)
  {
    if (!*(a1 + 48))
    {
      v11 = 0;
      goto LABEL_18;
    }

    v12 = (a1 + 56);
    v13 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v13)
    {
      v8 = &v12[v13];
      v11 = *v12;
    }

    else
    {
      v11 = 0;
      *(a1 + 48) = 0;
      v8 = a1 + 57;
      *(a1 + 56) = 0;
    }

    v9 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v8;
  }

  else
  {
    *(a1 + 192) = v9 + 1;
    v11 = *v9++;
  }

  if (v11 >= 2)
  {
    goto LABEL_89;
  }

LABEL_18:
  if (v9 < v8)
  {
    *(a1 + 192) = v9 + 1;
    v14 = *v9++;
    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_32:
    if ((v14 & 0xFFFFFFF7) != 1)
    {
      goto LABEL_89;
    }

    if (*(a1 + 16) && v8 - v9 <= 3)
    {
      *(a1 + 192) = v8;
      (*(a1 + 24))(*(a1 + 40), (4 - (v8 - v9)));
      v19 = *(a1 + 192);
      v8 = *(a1 + 200);
    }

    else
    {
      v19 = v9 + 4;
      *(a1 + 192) = v9 + 4;
    }

    if (v19 >= v8)
    {
      if (!*(a1 + 48))
      {
        goto LABEL_89;
      }

      v21 = (a1 + 56);
      v22 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v22)
      {
        v8 = &v21[v22];
        v17 = *v21;
      }

      else
      {
        v17 = 0;
        *(a1 + 48) = 0;
        v8 = a1 + 57;
        *(a1 + 56) = 0;
      }

      v20 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v8;
    }

    else
    {
      v20 = v19 + 1;
      *(a1 + 192) = v19 + 1;
      v17 = *v19;
    }

    if (v17 > 0x20 || ((1 << v17) & 0x101018100) == 0)
    {
      goto LABEL_89;
    }

    if (*(a1 + 16) && v8 - v20 <= 3)
    {
      *(a1 + 192) = v8;
      (*(a1 + 24))(*(a1 + 40), (4 - (v8 - v20)));
      goto LABEL_51;
    }

    v18 = v20 + 4;
LABEL_50:
    *(a1 + 192) = v18;
    goto LABEL_51;
  }

  if (!*(a1 + 48))
  {
    v14 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v15 = (a1 + 56);
  v16 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
  *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
  if (v16)
  {
    v8 = &v15[v16];
    v14 = *v15;
  }

  else
  {
    v14 = 0;
    *(a1 + 48) = 0;
    v8 = a1 + 57;
    *(a1 + 56) = 0;
  }

  v9 = (a1 + 57);
  *(a1 + 192) = a1 + 57;
  *(a1 + 200) = v8;
  if (v11)
  {
    goto LABEL_32;
  }

LABEL_25:
  if ((v14 & 0xF6) != 2)
  {
    goto LABEL_89;
  }

  if (!*(a1 + 16) || v8 - v9 > 8)
  {
    v17 = 0;
    v18 = v9 + 9;
    goto LABEL_50;
  }

  *(a1 + 192) = v8;
  (*(a1 + 24))(*(a1 + 40), (9 - (v8 - v9)));
  v17 = 0;
LABEL_51:
  result = sub_29AB538DC(a1);
  if (!result)
  {
    goto LABEL_90;
  }

  v24 = result;
  result = sub_29AB538DC(a1);
  if (!result)
  {
    goto LABEL_90;
  }

  v25 = result;
  v27 = *(a1 + 192);
  v26 = *(a1 + 200);
  if (v27 >= v26)
  {
    if (*(a1 + 48))
    {
      v29 = (a1 + 56);
      v30 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v30)
      {
        v26 = &v29[v30];
        v28 = *v29;
      }

      else
      {
        v28 = 0;
        *(a1 + 48) = 0;
        v26 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v27 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v26;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v27 + 1;
    v28 = *v27++;
  }

  if (v27 >= v26)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_69;
    }

    v32 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v32)
    {
      v33 = a1 + 56 + v32;
    }

    else
    {
      *(a1 + 48) = 0;
      v33 = a1 + 57;
      *(a1 + 56) = 0;
    }

    *(a1 + 200) = v33;
    v31 = (a1 + 57);
  }

  else
  {
    v31 = v27 + 1;
  }

  *(a1 + 192) = v31;
LABEL_69:
  if (!v17)
  {
    if (v28 > 15)
    {
      if (v28 == 32 || v28 == 24)
      {
        v34 = v28 >> 3;
        goto LABEL_94;
      }

      if (v28 == 16)
      {
        if ((v14 & 0xFFFFFFF7) == 3)
        {
          v34 = 2;
        }

        else
        {
          v34 = 3;
        }

        goto LABEL_94;
      }

      goto LABEL_89;
    }

    if (v28 != 8)
    {
      if (v28 == 15)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    }

LABEL_92:
    v34 = 1;
    goto LABEL_94;
  }

  if (v28 != 8 && v28 != 16)
  {
    goto LABEL_89;
  }

  if (v17 <= 15)
  {
    if (v17 != 8)
    {
      if (v17 == 15)
      {
        goto LABEL_86;
      }

LABEL_89:
      result = 0;
LABEL_90:
      *(a1 + 192) = *(a1 + 208);
      return result;
    }

    goto LABEL_92;
  }

  if (v17 == 32 || v17 == 24)
  {
    v34 = v17 >> 3;
    goto LABEL_94;
  }

  if (v17 != 16)
  {
    goto LABEL_89;
  }

LABEL_86:
  v34 = 3;
LABEL_94:
  if (a2)
  {
    *a2 = v24;
  }

  if (a3)
  {
    *a3 = v25;
  }

  if (a4)
  {
    *a4 = v34;
  }

  return 1;
}

uint64_t sub_29AB4EBFC(uint64_t a1, int a2)
{
  v4 = a1 + 0x4000;
  *(a1 + 18504) = 0xFFFFFFFF00000000;
  *(a1 + 18472) = -1;
  if (sub_29AB4ED4C(a1) == 216)
  {
    if (a2 == 1)
    {
      return 1;
    }

    v8 = sub_29AB4ED4C(a1);
    if (v8 == 194)
    {
      goto LABEL_17;
    }

LABEL_8:
    if ((v8 & 0xFE) == 0xC0)
    {
LABEL_17:
      *(v4 + 2096) = v8 == 194;

      return sub_29AB4F744(a1, a2);
    }

    else
    {
      result = sub_29AB4EEAC(a1, v8);
      if (result)
      {
        while (1)
        {
          while (1)
          {
            v9 = sub_29AB4ED4C(a1);
            if (v9 != 255)
            {
              v8 = v9;
              if (v9 != 194)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }

            v10 = *a1;
            if (*(*a1 + 16))
            {
              break;
            }

LABEL_14:
            if (*(v10 + 192) >= *(v10 + 200))
            {
LABEL_20:
              v6 = off_2A1B71BE0();
              result = 0;
              v7 = "no SOF";
              goto LABEL_5;
            }
          }

          if ((*(v10 + 32))(*(v10 + 40)))
          {
            if (!*(v10 + 48))
            {
              goto LABEL_20;
            }

            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v6 = off_2A1B71BE0();
    result = 0;
    v7 = "no SOI";
LABEL_5:
    *v6 = v7;
  }

  return result;
}

uint64_t sub_29AB4ED4C(unsigned __int8 *a1)
{
  result = a1[18472];
  if (result != 255)
  {
    a1[18472] = -1;
    return result;
  }

  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 >= *(*a1 + 200))
  {
    if (!*(v3 + 48))
    {
      return 255;
    }

    v6 = (v3 + 56);
    v7 = (*(v3 + 16))(*(v3 + 40), v3 + 56, *(v3 + 52));
    *(v3 + 184) += *(v3 + 192) - *(v3 + 208);
    if (v7)
    {
      v8 = &v6[v7];
      v5 = *v6;
    }

    else
    {
      v5 = 0;
      *(v3 + 48) = 0;
      v8 = (v3 + 57);
      *(v3 + 56) = 0;
    }

    *(v3 + 192) = v3 + 57;
    *(v3 + 200) = v8;
  }

  else
  {
    *(v3 + 192) = v4 + 1;
    v5 = *v4;
  }

  if (v5 != 255)
  {
    return 255;
  }

  while (1)
  {
    v9 = *a1;
    v10 = *(*a1 + 192);
    if (v10 >= *(*a1 + 200))
    {
      break;
    }

    *(v9 + 192) = v10 + 1;
    result = *v10;
LABEL_18:
    if (result != 255)
    {
      return result;
    }
  }

  if (*(v9 + 48))
  {
    v11 = (v9 + 56);
    result = (*(v9 + 16))(*(v9 + 40), v9 + 56, *(v9 + 52));
    *(v9 + 184) += *(v9 + 192) - *(v9 + 208);
    if (result)
    {
      v12 = &v11[result];
      result = *v11;
    }

    else
    {
      *(v9 + 48) = 0;
      v12 = (v9 + 57);
      *(v9 + 56) = 0;
    }

    *(v9 + 192) = v9 + 57;
    *(v9 + 200) = v12;
    goto LABEL_18;
  }

  return 0;
}

BOOL sub_29AB4EEAC(uint64_t *a1, int a2)
{
  v89 = *MEMORY[0x29EDCA608];
  v4 = a1 + 2048;
  if (a2 > 220)
  {
    if (a2 == 221)
    {
      if (sub_29AB4FF24(*a1) != 4)
      {
        v76 = off_2A1B71BE0();
        result = 0;
        v78 = "bad DRI len";
        goto LABEL_141;
      }

      v4[538] = sub_29AB4FF24(*a1);
      return 1;
    }

    if (a2 == 255)
    {
      v76 = off_2A1B71BE0();
      result = 0;
      v78 = "expected marker";
      goto LABEL_141;
    }

LABEL_40:
    if (a2 != 254 && (a2 & 0xFFFFFFF0) != 0xE0)
    {
      v76 = off_2A1B71BE0();
      result = 0;
      v78 = "unknown marker";
      goto LABEL_141;
    }

    v65 = sub_29AB4FF24(*a1);
    if (v65 <= 1)
    {
      v76 = off_2A1B71BE0();
      result = 0;
      if (a2 == 254)
      {
        v78 = "bad COM len";
      }

      else
      {
        v78 = "bad APP len";
      }

LABEL_141:
      *v76 = v78;
      return result;
    }

    v66 = v65;
    if (a2 == 224 && (v67 = v65 - 7, v65 >= 7))
    {
      v68 = 0;
      v69 = 1;
      do
      {
        v70 = *a1;
        v71 = *(*a1 + 192);
        if (v71 >= *(*a1 + 200))
        {
          v72 = *(v70 + 48);
          if (v72)
          {
            v73 = (v70 + 56);
            v74 = (*(v70 + 16))(*(v70 + 40), v70 + 56, *(v70 + 52));
            *(v70 + 184) += *(v70 + 192) - *(v70 + 208);
            if (v74)
            {
              v75 = &v73[v74];
              v72 = *v73;
            }

            else
            {
              v72 = 0;
              *(v70 + 48) = 0;
              v75 = (v70 + 57);
              *(v70 + 56) = 0;
            }

            *(v70 + 192) = v70 + 57;
            *(v70 + 200) = v75;
          }
        }

        else
        {
          *(v70 + 192) = v71 + 1;
          v72 = *v71;
        }

        if (v72 != aJfif_0[v68])
        {
          v69 = 0;
        }

        ++v68;
      }

      while (v68 != 5);
      if (v69)
      {
        v4[530] = 1;
      }
    }

    else
    {
      v67 = v65 - 2;
      if (a2 == 238 && v65 >= 0xE)
      {
        v79 = 0;
        v80 = 1;
        do
        {
          v81 = *a1;
          v82 = *(*a1 + 192);
          if (v82 >= *(*a1 + 200))
          {
            v83 = *(v81 + 48);
            if (v83)
            {
              v84 = (v81 + 56);
              v85 = (*(v81 + 16))(*(v81 + 40), v81 + 56, *(v81 + 52));
              *(v81 + 184) += *(v81 + 192) - *(v81 + 208);
              if (v85)
              {
                v86 = &v84[v85];
                v83 = *v84;
              }

              else
              {
                v83 = 0;
                *(v81 + 48) = 0;
                v86 = (v81 + 57);
                *(v81 + 56) = 0;
              }

              *(v81 + 192) = v81 + 57;
              *(v81 + 200) = v86;
            }
          }

          else
          {
            *(v81 + 192) = v82 + 1;
            v83 = *v82;
          }

          if (v83 != aAdobe_0[v79])
          {
            v80 = 0;
          }

          ++v79;
        }

        while (v79 != 6);
        if (v80)
        {
          sub_29AB4FE84(*a1);
          sub_29AB4FF24(*a1);
          sub_29AB4FF24(*a1);
          v4[531] = sub_29AB4FE84(*a1);
          v67 = v66 - 14;
        }

        else
        {
          v67 = v66 - 8;
        }
      }
    }

    sub_29AB50224(*a1, v67);
    return 1;
  }

  if (a2 != 196)
  {
    if (a2 == 219)
    {
      v5 = sub_29AB4FF24(*a1);
      v6 = v5 - 2;
      if (v5 >= 3)
      {
        do
        {
          v7 = *a1;
          v8 = *(*a1 + 192);
          if (v8 >= *(*a1 + 200))
          {
            v10 = *(v7 + 48);
            if (!v10)
            {
              v14 = 0;
              goto LABEL_19;
            }

            v11 = (v7 + 56);
            v12 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
            *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
            if (v12)
            {
              v13 = &v11[v12];
              v9 = *v11;
            }

            else
            {
              v9 = 0;
              *(v7 + 48) = 0;
              v13 = (v7 + 57);
              *(v7 + 56) = 0;
            }

            *(v7 + 192) = v7 + 57;
            *(v7 + 200) = v13;
          }

          else
          {
            *(v7 + 192) = v8 + 1;
            v9 = *v8;
          }

          v14 = v9 > 0xF;
          if (v9 >= 0x10 && (v9 & 0xF0) != 16)
          {
            v76 = off_2A1B71BE0();
            result = 0;
            v78 = "bad DQT type";
            goto LABEL_141;
          }

          v10 = v9 & 0xF;
          if (v10 > 3)
          {
            v76 = off_2A1B71BE0();
            result = 0;
            v78 = "bad DQT table";
            goto LABEL_141;
          }

LABEL_19:
          v16 = 0;
          v17 = &a1[16 * v10 + 1681];
          do
          {
            v18 = *a1;
            if (v14)
            {
              LOWORD(v19) = sub_29AB4FF24(*a1);
            }

            else
            {
              v20 = *(v18 + 192);
              if (v20 >= *(v18 + 200))
              {
                if (*(v18 + 48))
                {
                  v21 = (v18 + 56);
                  v19 = (*(v18 + 16))(*(v18 + 40), v18 + 56, *(v18 + 52));
                  *(v18 + 184) += *(v18 + 192) - *(v18 + 208);
                  if (v19)
                  {
                    v22 = &v21[v19];
                    LOWORD(v19) = *v21;
                  }

                  else
                  {
                    *(v18 + 48) = 0;
                    v22 = (v18 + 57);
                    *(v18 + 56) = 0;
                  }

                  *(v18 + 192) = v18 + 57;
                  *(v18 + 200) = v22;
                }

                else
                {
                  LOWORD(v19) = 0;
                }
              }

              else
              {
                *(v18 + 192) = v20 + 1;
                LOWORD(v19) = *v20;
              }
            }

            *(v17 + 2 * byte_29B6C3784[v16++]) = v19;
          }

          while (v16 != 64);
          if (v14)
          {
            v23 = -129;
          }

          else
          {
            v23 = -65;
          }

          v24 = __OFADD__(v23, v6);
          v6 += v23;
        }

        while (!((v6 < 0) ^ v24 | (v6 == 0)));
      }

      return v6 == 0;
    }

    goto LABEL_40;
  }

  v26 = sub_29AB4FF24(*a1);
  v27 = v26 - 2;
  if (v26 < 3)
  {
    return v27 == 0;
  }

  v87 = a1 + 841;
  while (1)
  {
    v28 = *a1;
    v29 = *(*a1 + 192);
    if (v29 >= *(*a1 + 200))
    {
      if (*(v28 + 48))
      {
        v31 = (v28 + 56);
        v32 = (*(v28 + 16))(*(v28 + 40), v28 + 56, *(v28 + 52));
        *(v28 + 184) += *(v28 + 192) - *(v28 + 208);
        if (v32)
        {
          v33 = &v31[v32];
          v30 = *v31;
        }

        else
        {
          v30 = 0;
          *(v28 + 48) = 0;
          v33 = (v28 + 57);
          *(v28 + 56) = 0;
        }

        *(v28 + 192) = v28 + 57;
        *(v28 + 200) = v33;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      *(v28 + 192) = v29 + 1;
      v30 = *v29;
    }

    if (v30 > 0x1F)
    {
      break;
    }

    v34 = v30 & 0xF;
    if (v34 > 3)
    {
      break;
    }

    v35 = 0;
    LODWORD(v36) = 0;
    do
    {
      v37 = *a1;
      v38 = *(*a1 + 192);
      if (v38 >= *(*a1 + 200))
      {
        v39 = *(v37 + 48);
        if (v39)
        {
          v40 = (v37 + 56);
          v41 = (*(v37 + 16))(*(v37 + 40), v37 + 56, *(v37 + 52));
          *(v37 + 184) += *(v37 + 192) - *(v37 + 208);
          if (v41)
          {
            v42 = &v40[v41];
            v39 = *v40;
          }

          else
          {
            v39 = 0;
            *(v37 + 48) = 0;
            v42 = (v37 + 57);
            *(v37 + 56) = 0;
          }

          *(v37 + 192) = v37 + 57;
          *(v37 + 200) = v42;
        }
      }

      else
      {
        *(v37 + 192) = v38 + 1;
        v39 = *v38;
      }

      *&v88[v35] = v39;
      v36 = (v36 + v39);
      v35 += 4;
    }

    while (v35 != 64);
    if (v36 > 0x100)
    {
      break;
    }

    if (v30 > 0xF)
    {
      if (!sub_29AB50050(&v87[210 * (v30 & 0xF)], v88))
      {
        return 0;
      }

      v43 = 6728;
      if (v36)
      {
LABEL_71:
        v44 = v43 + 1680 * (v30 & 0xF) + 1024;
        v45 = v36;
        do
        {
          v46 = *a1;
          v47 = *(*a1 + 192);
          if (v47 >= *(*a1 + 200))
          {
            LODWORD(v47) = *(v46 + 48);
            if (v47)
            {
              v48 = (v46 + 56);
              v49 = (*(v46 + 16))(*(v46 + 40), v46 + 56, *(v46 + 52));
              *(v46 + 184) += *(v46 + 192) - *(v46 + 208);
              if (v49)
              {
                v50 = &v48[v49];
                LOBYTE(v47) = *v48;
              }

              else
              {
                LOBYTE(v47) = 0;
                *(v46 + 48) = 0;
                v50 = (v46 + 57);
                *(v46 + 56) = 0;
              }

              *(v46 + 192) = v46 + 57;
              *(v46 + 200) = v50;
            }
          }

          else
          {
            *(v46 + 192) = v47 + 1;
            LOBYTE(v47) = *v47;
          }

          *(a1 + v44++) = v47;
          --v45;
        }

        while (v45);
      }
    }

    else
    {
      if (!sub_29AB50050(&a1[210 * (v30 & 0xF) + 1], v88))
      {
        return 0;
      }

      v43 = 8;
      if (v36)
      {
        goto LABEL_71;
      }
    }

    if (v30 >= 0x10)
    {
      v51 = 0;
      v52 = &a1[128 * v34 + 1745];
      v53 = &v87[210 * (v30 & 0xF)];
      do
      {
        v54 = *(v53 + v51);
        *(v52 + 2 * v51) = 0;
        if (v54 != 255)
        {
          v55 = *(v53 + v54 + 1024);
          v56 = v55 & 0xF;
          v57 = *(v53 + v54 + 1280);
          v58 = (v55 & 0xF) + v57;
          if ((v55 & 0xF) != 0 && v58 <= 9)
          {
            v60 = v51 << v57;
            v61 = (v60 & 0x1FF) >> (9 - v56);
            v62 = -1 << v56;
            v63 = (v60 & 0x100) != 0 ? 0 : v62 + 1;
            v64 = v63 + v61;
            if (v64 == v64)
            {
              *(v52 + 2 * v51) = v55 & 0xF0 | (v64 << 8) | v58;
            }
          }
        }

        ++v51;
      }

      while (v51 != 512);
    }

    v27 = v27 - 17 - v36;
    if (v27 <= 0)
    {
      return v27 == 0;
    }
  }

  *off_2A1B71BE0() = "bad DHT header";
  return 0;
}

uint64_t sub_29AB4F744(uint64_t a1, int a2)
{
  v4 = *a1;
  v5 = sub_29AB4FF24(*a1);
  if (v5 <= 0xA)
  {
    goto LABEL_2;
  }

  v9 = v5;
  v10 = *(v4 + 192);
  if (v10 >= *(v4 + 200))
  {
    if (!*(v4 + 48))
    {
LABEL_15:
      v6 = off_2A1B71BE0();
      result = 0;
      v8 = "only 8-bit";
      goto LABEL_78;
    }

    v12 = (v4 + 56);
    v13 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
    *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
    if (v13)
    {
      v14 = &v12[v13];
      v11 = *v12;
    }

    else
    {
      v11 = 0;
      *(v4 + 48) = 0;
      v14 = (v4 + 57);
      *(v4 + 56) = 0;
    }

    *(v4 + 192) = v4 + 57;
    *(v4 + 200) = v14;
  }

  else
  {
    *(v4 + 192) = v10 + 1;
    v11 = *v10;
  }

  if (v11 != 8)
  {
    goto LABEL_15;
  }

  v15 = sub_29AB4FF24(v4);
  *(v4 + 4) = v15;
  if (!v15)
  {
    v6 = off_2A1B71BE0();
    result = 0;
    v8 = "no header height";
    goto LABEL_78;
  }

  v16 = sub_29AB4FF24(v4);
  *v4 = v16;
  if (!v16)
  {
    v6 = off_2A1B71BE0();
    result = 0;
    v8 = "0 width";
    goto LABEL_78;
  }

  if (*(v4 + 4) >= 0x1000001u)
  {
LABEL_14:
    v6 = off_2A1B71BE0();
    result = 0;
    v8 = "too large";
    goto LABEL_78;
  }

  v18 = *(v4 + 192);
  v17 = *(v4 + 200);
  if (v18 >= v17)
  {
    if (!*(v4 + 48))
    {
LABEL_64:
      v6 = off_2A1B71BE0();
      result = 0;
      v8 = "bad component count";
      goto LABEL_78;
    }

    v20 = v4 + 56;
    v21 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
    *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
    if (v21)
    {
      v17 = (v20 + v21);
      LODWORD(v20) = *v20;
    }

    else
    {
      LODWORD(v20) = 0;
      *(v4 + 48) = 0;
      v17 = (v4 + 57);
      *(v4 + 56) = 0;
    }

    v19 = (v4 + 57);
    *(v4 + 192) = v4 + 57;
    *(v4 + 200) = v17;
  }

  else
  {
    v19 = v18 + 1;
    *(v4 + 192) = v18 + 1;
    LODWORD(v20) = *v18;
  }

  if (v20 > 4 || ((1 << v20) & 0x1A) == 0)
  {
    goto LABEL_64;
  }

  *(v4 + 8) = v20;
  v23 = v20;
  v24 = (a1 + 18152);
  do
  {
    *(v24 - 3) = 0;
    *v24 = 0;
    v24 += 12;
    --v23;
  }

  while (v23);
  if (v9 != 3 * v20 + 8)
  {
LABEL_2:
    v6 = off_2A1B71BE0();
    result = 0;
    v8 = "bad SOF len";
    goto LABEL_78;
  }

  v25 = 0;
  *(a1 + 18512) = 0;
  v26 = (v4 + 56);
  v27 = v4 + 57;
  v28 = (a1 + 18092);
  while (1)
  {
    if (v19 >= v17)
    {
      v29 = *(v4 + 48);
      if (v29)
      {
        v30 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
        *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
        if (v30)
        {
          v17 = &v26[v30];
          v29 = *v26;
        }

        else
        {
          v29 = 0;
          *(v4 + 48) = 0;
          *(v4 + 56) = 0;
          v17 = (v4 + 57);
        }

        *(v4 + 192) = v27;
        *(v4 + 200) = v17;
        v19 = (v4 + 57);
        LODWORD(v20) = *(v4 + 8);
      }
    }

    else
    {
      *(v4 + 192) = v19 + 1;
      v29 = *v19++;
    }

    *(v28 - 3) = v29;
    if (v20 == 3 && v29 == byte_29B6C37D3[v25])
    {
      ++*(a1 + 18512);
    }

    if (v19 >= v17)
    {
      if (!*(v4 + 48))
      {
        *(v28 - 2) = 0;
        goto LABEL_67;
      }

      v32 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
      *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
      if (v32)
      {
        v17 = &v26[v32];
        v31 = *v26;
      }

      else
      {
        v31 = 0;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        v17 = (v4 + 57);
      }

      *(v4 + 192) = v27;
      *(v4 + 200) = v17;
      v19 = (v4 + 57);
    }

    else
    {
      *(v4 + 192) = v19 + 1;
      v31 = *v19++;
    }

    *(v28 - 2) = v31 >> 4;
    if (v31 - 80 <= 0xFFFFFFBF)
    {
      goto LABEL_67;
    }

    v33 = v31 & 0xF;
    *(v28 - 1) = v33;
    if ((v33 - 5) <= 0xFFFFFFFB)
    {
      break;
    }

    if (v19 < v17)
    {
      *(v4 + 192) = v19 + 1;
      v34 = *v19++;
      goto LABEL_60;
    }

    if (*(v4 + 48))
    {
      v35 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
      *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
      if (v35)
      {
        v17 = &v26[v35];
        v34 = *v26;
      }

      else
      {
        v34 = 0;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        v17 = (v4 + 57);
      }

      *(v4 + 192) = v27;
      *(v4 + 200) = v17;
      v19 = (v4 + 57);
LABEL_60:
      *v28 = v34;
      if (v34 >= 4)
      {
        v6 = off_2A1B71BE0();
        result = 0;
        v8 = "bad TQ";
        goto LABEL_78;
      }

      goto LABEL_61;
    }

    *v28 = 0;
LABEL_61:
    ++v25;
    v20 = *(v4 + 8);
    v28 += 24;
    if (v25 >= v20)
    {
      if (a2)
      {
        return 1;
      }

      v60 = *(v4 + 4);
      v61 = *v4;
      if (!sub_29AB50270(*v4, v60, v20, 0))
      {
        goto LABEL_14;
      }

      if (v20 < 1)
      {
        v37 = 0x100000001;
LABEL_80:
        *(a1 + 18056) = v37;
        v42 = vshl_n_s32(v37, 3uLL);
        *(a1 + 18072) = v42;
        v59 = (v61 + v42.i32[0] - 1) / v42.i32[0];
        *(a1 + 18064) = v59;
        v58 = (v60 + v42.i32[1] - 1) / v42.i32[1];
        *(a1 + 18068) = v58;
        if (v20 >= 1)
        {
          v43 = 0;
          v44 = v37;
          v57 = v37.i32[0] - 1;
          v56 = v37.i32[1] - 1;
          v45 = 1;
          for (i = 18084; ; i += 96)
          {
            v47 = (a1 + i);
            v48 = *(a1 + i);
            v49 = *(a1 + i + 4);
            v47[6] = (v57 + v48 * v61) / v44.i32[0];
            v47[7] = (v56 + v49 * v60) / v44.i32[1];
            v50 = v48 * v59;
            v51 = v49 * v58;
            v47[8] = 8 * v48 * v59;
            v47[9] = 8 * v49 * v58;
            v52 = (a1 + v43);
            v53 = sub_29AB502C8(8 * v48 * v59, 8 * v49 * v58, 15);
            v52[2268] = 0;
            v52[2270] = 0;
            v52[2269] = 0;
            v52[2267] = v53;
            if (!v53)
            {
              break;
            }

            v52[2266] = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
            if (*(a1 + 18480))
            {
              v54 = a1 + i;
              *(v54 + 84) = v50;
              *(v54 + 88) = v51;
              v55 = sub_29AB5037C(8 * v50, 8 * v51, 2u, 15);
              v52[2268] = v55;
              if (!v55)
              {
                break;
              }

              v52[2270] = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
            }

            ++v45;
            v43 += 96;
            result = 1;
            if (96 * v20 == v43)
            {
              return result;
            }
          }

          *off_2A1B71BE0() = "outofmem";
          sub_29AB50308(a1, v45);
          return 0;
        }

        return 1;
      }

      v36 = (a1 + 18084);
      v37 = 0x100000001;
      v38 = v20;
      do
      {
        v39 = *v36;
        v36 += 12;
        v37 = vmax_s32(v39, v37);
        --v38;
      }

      while (v38);
      v40 = (a1 + 18088);
      v41 = v20;
      while (!(v37.i32[0] % *(v40 - 1)))
      {
        if (v37.i32[1] % *v40)
        {
          goto LABEL_77;
        }

        v40 += 24;
        if (!--v41)
        {
          goto LABEL_80;
        }
      }

LABEL_67:
      v6 = off_2A1B71BE0();
      result = 0;
      v8 = "bad H";
      goto LABEL_78;
    }
  }

LABEL_77:
  v6 = off_2A1B71BE0();
  result = 0;
  v8 = "bad V";
LABEL_78:
  *v6 = v8;
  return result;
}

uint64_t sub_29AB4FE84(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2 >= *(a1 + 200))
  {
    if (*(a1 + 48))
    {
      v4 = (a1 + 56);
      result = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (result)
      {
        v5 = &v4[result];
        result = *v4;
      }

      else
      {
        *(a1 + 48) = 0;
        v5 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 192) = v2 + 1;
    return *v2;
  }

  return result;
}

uint64_t sub_29AB4FF24(uint64_t a1)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  if (v3 >= v2)
  {
    if (*(a1 + 48))
    {
      v5 = (a1 + 56);
      v6 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v6)
      {
        v2 = &v5[v6];
        v4 = *v5;
      }

      else
      {
        v4 = 0;
        *(a1 + 48) = 0;
        v2 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v3 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v4 = *v3++;
  }

  if (v3 >= v2)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = (a1 + 56);
      v9 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v9)
      {
        v10 = &v8[v9];
        v7 = *v8;
      }

      else
      {
        v7 = 0;
        *(a1 + 48) = 0;
        v10 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v10;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v7 = *v3;
  }

  return v7 | (v4 << 8);
}

uint64_t sub_29AB50050(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 1280;
  while (*(a2 + 4 * v2) < 1)
  {
LABEL_10:
    if (++v2 == 16)
    {
      v8 = 0;
      v9 = 0;
      *(v4 + v3) = 0;
      v10 = a1 + 512;
      v11 = 1;
      while (1)
      {
        *(a1 + 1612 + 4 * v11) = v9 - v8;
        if (v11 == *(v4 + v9))
        {
          v12 = (v10 + 2 * v9);
          v13 = (a1 + 1281 + v9);
          do
          {
            *v12++ = v8++;
            v14 = *v13++;
            ++v9;
          }

          while (v11 == v14);
          if ((v8 - 1) >> v11)
          {
            break;
          }
        }

        *(a1 + 1540 + 4 * v11) = v8 << (16 - v11);
        v8 *= 2;
        if (++v11 == 17)
        {
          *(a1 + 1608) = -1;
          *&v15 = -1;
          *(&v15 + 1) = -1;
          *a1 = v15;
          *(a1 + 16) = v15;
          *(a1 + 32) = v15;
          *(a1 + 48) = v15;
          *(a1 + 64) = v15;
          *(a1 + 80) = v15;
          *(a1 + 96) = v15;
          *(a1 + 112) = v15;
          *(a1 + 128) = v15;
          *(a1 + 144) = v15;
          *(a1 + 160) = v15;
          *(a1 + 176) = v15;
          *(a1 + 192) = v15;
          *(a1 + 208) = v15;
          *(a1 + 224) = v15;
          *(a1 + 240) = v15;
          *(a1 + 256) = v15;
          *(a1 + 272) = v15;
          *(a1 + 288) = v15;
          *(a1 + 304) = v15;
          *(a1 + 320) = v15;
          *(a1 + 336) = v15;
          *(a1 + 352) = v15;
          *(a1 + 368) = v15;
          *(a1 + 384) = v15;
          *(a1 + 400) = v15;
          *(a1 + 416) = v15;
          *(a1 + 432) = v15;
          *(a1 + 448) = v15;
          *(a1 + 464) = v15;
          *(a1 + 480) = v15;
          *(a1 + 496) = v15;
          if (v9 < 1)
          {
            return 1;
          }

          v16 = 0;
          v17 = v9;
          do
          {
            v18 = *(v4 + v16);
            if (v18 <= 9)
            {
              v19 = 9 - v18;
              v20 = (a1 + (*(v10 + 2 * v16) << v19));
              v21 = 1;
              do
              {
                *v20++ = v16;
              }

              while (!(v21++ >> v19));
            }

            ++v16;
            v23 = 1;
          }

          while (v16 != v17);
          return v23;
        }
      }

      goto LABEL_24;
    }
  }

  v5 = 0;
  if (v3 <= 256)
  {
    v6 = 256;
  }

  else
  {
    v6 = v3;
  }

  v7 = v3 - v6;
  while (1)
  {
    *(v4 + v3 + v5) = v2 + 1;
    if (!(v7 + v5))
    {
      break;
    }

    if (++v5 >= *(a2 + 4 * v2))
    {
      v3 += v5;
      goto LABEL_10;
    }
  }

LABEL_24:
  v24 = off_2A1B71BE0();
  v23 = 0;
  *v24 = v25;
  return v23;
}

uint64_t sub_29AB50224(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 < 0)
    {
      v4 = *(result + 200);
    }

    else
    {
      if (*(result + 16))
      {
        v2 = *(result + 192);
        v3 = *(result + 200);
        if (a2 > v3 - v2)
        {
          *(result + 192) = v3;
          return (*(result + 24))(*(result + 40), (a2 - (v3 - v2)));
        }
      }

      else
      {
        v2 = *(result + 192);
      }

      v4 = v2 + a2;
    }

    *(result + 192) = v4;
  }

  return result;
}

BOOL sub_29AB50270(signed int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (((a2 | a1) & 0x80000000) != 0 || a2 && (0x7FFFFFFF / a2) < a1)
  {
    return 0;
  }

  v4 = a2 * a1;
  return (((a2 * a1) | a3) & 0x80000000) == 0 && (!a3 || (0x7FFFFFFF / a3) >= v4) && (a4 ^ 0x7FFFFFFF) >= (v4 * a3);
}

void *sub_29AB502C8(signed int a1, unsigned int a2, int a3)
{
  if (((a2 | a1) & 0x80000000) != 0 || a2 && (0x7FFFFFFF / a2) < a1 || (a3 ^ 0x7FFFFFFF) < (a2 * a1))
  {
    return 0;
  }

  else
  {
    return malloc((a2 * a1 + a3));
  }
}

void sub_29AB50308(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = (a1 + 18160);
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        free(v4);
        *(v3 - 4) = 0;
        *(v3 - 3) = 0;
      }

      v5 = *(v3 - 2);
      if (v5)
      {
        free(v5);
        *(v3 - 2) = 0;
        *v3 = 0;
      }

      v6 = *(v3 - 1);
      if (v6)
      {
        free(v6);
        *(v3 - 1) = 0;
      }

      v3 += 12;
      --v2;
    }

    while (v2);
  }
}

void *sub_29AB5037C(signed int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (!sub_29AB50270(a1, a2, a3, a4))
  {
    return 0;
  }

  return malloc((a4 + a2 * a1 * a3));
}

uint64_t sub_29AB503E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v338 = *MEMORY[0x29EDCA608];
  v322 = 0;
  v321 = 0;
  v7 = *v3;
  *(v3 + 8) = 0;
  v8 = (v3 + 8);
  *(v3 + 36) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  if (!sub_29AB523AC(v7))
  {
    return 0;
  }

  v9 = 1;
  if (v5 != 1)
  {
    v314 = v5;
    v316 = v6;
    v317 = 0;
    v307 = 0;
    v308 = 0;
    v311 = 0;
    v312 = 0;
    v10 = 0;
    v310 = 0;
    v319 = 0;
    v11 = (v7 + 56);
    v12 = v7 + 57;
    v13 = 1;
    while (1)
    {
      v14 = sub_29AB4FF24(v7);
      v15 = sub_29AB4FF24(v7);
      v16 = v15 | (v14 << 16);
      v17 = sub_29AB4FF24(v7);
      v18 = sub_29AB4FF24(v7);
      v26 = v18 | (v17 << 16);
      if (v26 > 1347179588)
      {
        switch(v26)
        {
          case 1347179589:
            if (v13)
            {
              goto LABEL_146;
            }

            if (v16 >= 0x301 || (v52 = v15 / 3u, 3 * (v15 / 3u) != v16))
            {
              v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
              v9 = 0;
              v106 = "invalid PLTE";
              goto LABEL_147;
            }

            v317 = v15 / 3u;
            if (v15 >= 3)
            {
              v54 = *(v7 + 192);
              v53 = *(v7 + 200);
              v55 = v324;
              do
              {
                if (v54 >= v53)
                {
                  v56 = *(v7 + 48);
                  if (v56)
                  {
                    v57 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
                    *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
                    if (v57)
                    {
                      v53 = &v11[v57];
                      LOBYTE(v56) = *v11;
                    }

                    else
                    {
                      LOBYTE(v56) = 0;
                      *(v7 + 48) = 0;
                      *(v7 + 56) = 0;
                      v53 = (v7 + 57);
                    }

                    *(v7 + 192) = v12;
                    *(v7 + 200) = v53;
                    v54 = (v7 + 57);
                  }
                }

                else
                {
                  *(v7 + 192) = v54 + 1;
                  LOBYTE(v56) = *v54++;
                }

                *(v55 - 3) = v56;
                if (v54 >= v53)
                {
                  v58 = *(v7 + 48);
                  if (v58)
                  {
                    v59 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
                    *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
                    if (v59)
                    {
                      v53 = &v11[v59];
                      LOBYTE(v58) = *v11;
                    }

                    else
                    {
                      LOBYTE(v58) = 0;
                      *(v7 + 48) = 0;
                      *(v7 + 56) = 0;
                      v53 = (v7 + 57);
                    }

                    *(v7 + 192) = v12;
                    *(v7 + 200) = v53;
                    v54 = (v7 + 57);
                  }
                }

                else
                {
                  *(v7 + 192) = v54 + 1;
                  LOBYTE(v58) = *v54++;
                }

                *(v55 - 2) = v58;
                if (v54 >= v53)
                {
                  v60 = *(v7 + 48);
                  if (v60)
                  {
                    v61 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
                    *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
                    if (v61)
                    {
                      v53 = &v11[v61];
                      LOBYTE(v60) = *v11;
                    }

                    else
                    {
                      LOBYTE(v60) = 0;
                      *(v7 + 48) = 0;
                      *(v7 + 56) = 0;
                      v53 = (v7 + 57);
                    }

                    *(v7 + 192) = v12;
                    *(v7 + 200) = v53;
                    v54 = (v7 + 57);
                  }
                }

                else
                {
                  *(v7 + 192) = v54 + 1;
                  LOBYTE(v60) = *v54++;
                }

                *(v55 - 1) = v60;
                *v55 = -1;
                v55 += 4;
                --v52;
              }

              while (v52);
            }

            goto LABEL_134;
          case 1732332865:
            if (v13)
            {
              goto LABEL_146;
            }

            if (v16 != 4)
            {
              v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
              v9 = 0;
              v106 = "invalid gAMA";
              goto LABEL_147;
            }

            v62 = sub_29AB4FF24(v7);
            v13 = 0;
            v316[9] = (sub_29AB4FF24(v7) | (v62 << 16)) / 100000.0;
            break;
          case 1951551059:
            if (v13)
            {
              goto LABEL_146;
            }

            if (*v8)
            {
              v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
              v9 = 0;
              v106 = "tRNS after IDAT";
              goto LABEL_147;
            }

            if (!v319)
            {
              v65 = *(v7 + 8);
              if ((v65 & 1) == 0)
              {
                v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
                v9 = 0;
                v106 = "tRNS with alpha";
                goto LABEL_147;
              }

              if (v16 != 2 * v65)
              {
                goto LABEL_157;
              }

              if (v314 == 2)
              {
                v27 = v65 + 1;
                goto LABEL_425;
              }

              if (*(v316 + 8) == 16)
              {
                if (v65 < 1)
                {
                  goto LABEL_118;
                }

                v66 = 0;
                do
                {
                  v320[v66++] = sub_29AB4FF24(v7);
                }

                while (v66 < *(v7 + 8));
              }

              else
              {
                if (v65 < 1)
                {
LABEL_118:
                  v13 = 0;
                  v319 = 0;
                  v307 = 1;
                  break;
                }

                v85 = 0;
                do
                {
                  *(&v321 + v85++) = byte_29B6C37D6[*(v316 + 8)] * sub_29AB4FF24(v7);
                }

                while (v85 < *(v7 + 8));
              }

              v307 = 1;
LABEL_139:
              v13 = 0;
              v319 = 0;
              break;
            }

            if (v314 == 2)
            {
              v27 = 4;
LABEL_425:
              *(v7 + 8) = v27;
              return 1;
            }

            if (!v317)
            {
              v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
              v9 = 0;
              v106 = "tRNS before PLTE";
              goto LABEL_147;
            }

            if (v317 < v16)
            {
LABEL_157:
              v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
              v9 = 0;
              v106 = "bad tRNS len";
              goto LABEL_147;
            }

            if (v16)
            {
              v32 = *(v7 + 192);
              v31 = *(v7 + 200);
              v33 = v15 + (v14 << 16);
              v34 = v324;
              do
              {
                if (v32 >= v31)
                {
                  v35 = *(v7 + 48);
                  if (v35)
                  {
                    v36 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
                    *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
                    if (v36)
                    {
                      v31 = &v11[v36];
                      LOBYTE(v35) = *v11;
                    }

                    else
                    {
                      LOBYTE(v35) = 0;
                      *(v7 + 48) = 0;
                      *(v7 + 56) = 0;
                      v31 = (v7 + 57);
                    }

                    *(v7 + 192) = v12;
                    *(v7 + 200) = v31;
                    v32 = (v7 + 57);
                  }
                }

                else
                {
                  *(v7 + 192) = v32 + 1;
                  LOBYTE(v35) = *v32++;
                }

                *v34 = v35;
                v34 += 4;
                --v33;
              }

              while (v33);
            }

            v13 = 0;
            v319 = 4;
            break;
          default:
            goto LABEL_96;
        }
      }

      else
      {
        if (v26 > 1229278787)
        {
          if (v26 != 1229472850)
          {
            if (v26 == 1229278788)
            {
              if (v13)
              {
LABEL_146:
                v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
                v9 = 0;
                v106 = "first not IHDR";
                goto LABEL_147;
              }

              if (v314)
              {
                return 1;
              }

              v109 = *v8;
              if (!v109)
              {
                v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
                v9 = 0;
                v106 = "no IDAT";
                goto LABEL_147;
              }

              v110 = v316;
              v111 = (*(v7 + 4) + *(v7 + 8) * *(v7 + 4) * ((*(v316 + 8) * *v7 + 7) >> 3));
              v112 = malloc(v111);
              if (!v112)
              {
                goto LABEL_441;
              }

              v119 = v112;
              v120 = &v109[v312];
              v121 = &v325;
              v325 = v109;
              v326 = v120;
              v329 = v112;
              v330 = v112;
              v331 = &v112[v111];
              v332 = 1;
              if (!v311)
              {
                if (v312 < 1)
                {
                  v256 = 0;
                }

                else
                {
                  v325 = v109 + 1;
                  v256 = *v109++;
                }

                if (v109 >= v120)
                {
                  v259 = 0;
                }

                else
                {
                  v325 = v109 + 1;
                  v259 = *v109++;
                }

                if (v109 < v120 && -1108378657 * (v259 | (v256 << 8)) <= 0x8421084)
                {
                  if ((v259 & 0x20) != 0)
                  {
                    v110 = v316;
                  }

                  else
                  {
                    v110 = v316;
                    v121 = &v325;
                    if ((v256 & 0xF) == 8)
                    {
                      goto LABEL_170;
                    }
                  }
                }

                v260 = (off_2A1B71BE0)(&off_2A1B71BE0, v113, v114, &v325, v115, v116, v117, v118);
                *v260 = v261;
                goto LABEL_440;
              }

LABEL_170:
              v122 = 0;
              v123 = 0;
              v328 = 0;
              v327 = 0;
              v124 = v333;
              v300 = "zlib corrupt";
              while (2)
              {
                if (v123 <= 0)
                {
                  v125 = v325;
                  while (!(v122 >> v123))
                  {
                    if (v125 >= v326)
                    {
                      v126 = 0;
                    }

                    else
                    {
                      v325 = v125 + 1;
                      v126 = *v125++;
                    }

                    v122 |= v126 << v123;
                    v328 = v122;
                    v127 = v123 + 8;
                    LODWORD(v327) = v123 + 8;
                    v30 = v123 < 17;
                    v123 += 8;
                    if (!v30)
                    {
                      v128 = v122 >> 1;
                      v129 = v127 - 1;
                      goto LABEL_189;
                    }
                  }

                  v325 = v326;
                }

                v128 = v122 >> 1;
                v328 = v122 >> 1;
                v129 = v123 - 1;
                LODWORD(v327) = v123 - 1;
                if (v123 <= 2)
                {
                  v130 = v325;
                  while (!(v128 >> v129))
                  {
                    if (v130 >= v326)
                    {
                      v131 = 0;
                    }

                    else
                    {
                      v325 = v130 + 1;
                      v131 = *v130++;
                    }

                    v128 |= v131 << v129;
                    v328 = v128;
                    v132 = v129 + 8;
                    LODWORD(v327) = v129 + 8;
                    v30 = v129 < 17;
                    v129 += 8;
                    if (!v30)
                    {
                      v129 = v132;
                      goto LABEL_189;
                    }
                  }

                  v325 = v326;
                }

LABEL_189:
                v133 = v128 >> 2;
                v328 = v128 >> 2;
                v134 = v129 - 2;
                LODWORD(v327) = v129 - 2;
                if ((v128 & 3) >= 2)
                {
                  if ((v128 & 3) != 2)
                  {
                    goto LABEL_440;
                  }

                  v141 = v325;
                  v140 = v326;
                  if (v129 > 6)
                  {
                    v143 = v129 - 2;
                  }

                  else
                  {
                    while (!(v133 >> v134))
                    {
                      if (v141 >= v326)
                      {
                        v142 = 0;
                      }

                      else
                      {
                        v325 = v141 + 1;
                        v142 = *v141++;
                      }

                      v133 |= v142 << v134;
                      v328 = v133;
                      v143 = v134 + 8;
                      LODWORD(v327) = v134 + 8;
                      v30 = v134 < 17;
                      v134 += 8;
                      if (!v30)
                      {
                        goto LABEL_297;
                      }
                    }

                    v325 = v326;
                    v141 = v326;
                    v143 = v134;
                  }

LABEL_297:
                  v188 = v133 >> 5;
                  v328 = v133 >> 5;
                  v189 = v143 - 5;
                  LODWORD(v327) = v143 - 5;
                  if (v143 <= 9)
                  {
                    while (!(v188 >> v189))
                    {
                      if (v141 >= v326)
                      {
                        v190 = 0;
                      }

                      else
                      {
                        v325 = v141 + 1;
                        v190 = *v141++;
                      }

                      v188 |= v190 << v189;
                      v328 = v188;
                      v191 = v189 + 8;
                      LODWORD(v327) = v189 + 8;
                      v30 = v189 < 17;
                      v189 += 8;
                      if (!v30)
                      {
                        goto LABEL_306;
                      }
                    }

                    v325 = v326;
                    v141 = v326;
                  }

                  v191 = v189;
LABEL_306:
                  v192 = v188 >> 5;
                  v328 = v188 >> 5;
                  v193 = v191 - 5;
                  LODWORD(v327) = v191 - 5;
                  if (v191 < 9)
                  {
                    while (!(v192 >> v193))
                    {
                      if (v141 >= v326)
                      {
                        v194 = 0;
                      }

                      else
                      {
                        v325 = v141 + 1;
                        v194 = *v141++;
                      }

                      v192 |= v194 << v193;
                      v328 = v192;
                      v195 = v193 + 8;
                      LODWORD(v327) = v193 + 8;
                      v30 = v193 < 17;
                      v193 += 8;
                      if (!v30)
                      {
                        goto LABEL_315;
                      }
                    }

                    v325 = v326;
                    v141 = v326;
                  }

                  v195 = v193;
LABEL_315:
                  v196 = 0;
                  v197 = v192 >> 4;
                  v328 = v192 >> 4;
                  v198 = (v133 & 0x1F) + 257;
                  v199 = (v188 & 0x1F) + 1;
                  v200 = v195 - 4;
                  LODWORD(v327) = v195 - 4;
                  memset(v335, 0, 19);
                  v201 = (v192 & 0xF) + 4;
                  do
                  {
                    if (v200 <= 2)
                    {
                      v202 = v141;
                      while (!(v197 >> v200))
                      {
                        if (v202 >= v140)
                        {
                          v203 = 0;
                        }

                        else
                        {
                          v141 = v202 + 1;
                          v325 = v202 + 1;
                          v203 = *v202++;
                        }

                        v197 |= v203 << v200;
                        v328 = v197;
                        v204 = v200 + 8;
                        LODWORD(v327) = v200 + 8;
                        v30 = v200 < 17;
                        v200 += 8;
                        if (!v30)
                        {
                          goto LABEL_326;
                        }
                      }

                      v325 = v140;
                      v141 = v140;
                    }

                    v204 = v200;
LABEL_326:
                    v205 = v197 & 7;
                    v197 >>= 3;
                    v328 = v197;
                    v200 = v204 - 3;
                    v206 = byte_29B6C3927[v196];
                    LODWORD(v327) = v200;
                    v335[v206] = v205;
                    ++v196;
                  }

                  while (v196 != v201);
                  v298 = v124;
                  v207 = sub_29AB52710(__n, v335, 19);
                  v121 = &v325;
                  if (v207)
                  {
                    v214 = 0;
                    v295 = v198;
                    v296 = v199;
                    v215 = (v199 + v198);
                    v216 = v327;
                    v305 = HIDWORD(v327);
                    v217 = v328;
                    v218 = v325;
                    v219 = v326;
                    do
                    {
                      if (v216 > 15)
                      {
                        goto LABEL_341;
                      }

                      if (v218 >= v219)
                      {
                        if (v305)
                        {
                          goto LABEL_431;
                        }

                        v305 = 1;
                        HIDWORD(v327) = 1;
                        v216 += 16;
                      }

                      else
                      {
                        v220 = v218;
                        while (!(v217 >> v216))
                        {
                          if (v220 >= v219)
                          {
                            v221 = 0;
                          }

                          else
                          {
                            v218 = v220 + 1;
                            v325 = v220 + 1;
                            v221 = *v220++;
                          }

                          v217 |= v221 << v216;
                          v328 = v217;
                          v222 = v216 + 8;
                          LODWORD(v327) = v216 + 8;
                          v30 = v216 < 17;
                          v216 += 8;
                          if (!v30)
                          {
                            v216 = v222;
                            goto LABEL_341;
                          }
                        }

                        v325 = v219;
                        v218 = v219;
                      }

LABEL_341:
                      v223 = *(__n + (v217 & 0x1FF));
                      if (*(__n + (v217 & 0x1FF)))
                      {
                        v217 >>= v223 >> 9;
                        v328 = v217;
                        v216 -= v223 >> 9;
                        LODWORD(v327) = v216;
                        v224 = v223 & 0x1FF;
                      }

                      else
                      {
                        v225 = 0;
                        v226 = __rbit32(v217) >> 16;
                        v227 = 1042;
                        do
                        {
                          v228 = __n[v225++ + 274];
                          v227 += 2;
                        }

                        while (v228 <= v226);
                        if ((v225 + 9) > 0xF)
                        {
                          goto LABEL_431;
                        }

                        v229 = *(&__n[25] + v227) - *(__n + v227) + (v226 >> (7 - v225));
                        if (v229 > 287 || *(&__n[289] + v229) - 9 != v225)
                        {
                          goto LABEL_431;
                        }

                        v217 >>= v225 + 9;
                        v328 = v217;
                        v216 = v216 - v225 - 9;
                        LODWORD(v327) = v216;
                        v224 = *(&__n[361] + v229);
                      }

                      if (v224 > 0x12)
                      {
                        goto LABEL_431;
                      }

                      if (v224 > 0xF)
                      {
                        v230 = &v336[v214];
                        if (v224 == 17)
                        {
                          if (v216 <= 2)
                          {
                            v234 = v218;
                            while (!(v217 >> v216))
                            {
                              if (v234 >= v219)
                              {
                                v235 = 0;
                              }

                              else
                              {
                                v218 = v234 + 1;
                                v325 = v234 + 1;
                                v235 = *v234++;
                              }

                              v217 |= v235 << v216;
                              v328 = v217;
                              v236 = v216 + 8;
                              LODWORD(v327) = v216 + 8;
                              v30 = v216 < 17;
                              v216 += 8;
                              if (!v30)
                              {
                                goto LABEL_384;
                              }
                            }

                            v325 = v219;
                            v218 = v219;
                          }

                          v236 = v216;
LABEL_384:
                          v208 = 0;
                          v241 = v217 & 7;
                          v217 >>= 3;
                          v328 = v217;
                          v216 = v236 - 3;
                          LODWORD(v327) = v236 - 3;
                          v240 = v241 + 3;
                        }

                        else if (v224 == 16)
                        {
                          if (v216 <= 1)
                          {
                            v231 = v218;
                            while (!(v217 >> v216))
                            {
                              if (v231 >= v219)
                              {
                                v232 = 0;
                              }

                              else
                              {
                                v218 = v231 + 1;
                                v325 = v231 + 1;
                                v232 = *v231++;
                              }

                              v217 |= v232 << v216;
                              v328 = v217;
                              v233 = v216 + 8;
                              LODWORD(v327) = v216 + 8;
                              v30 = v216 < 17;
                              v216 += 8;
                              if (!v30)
                              {
                                goto LABEL_380;
                              }
                            }

                            v325 = v219;
                            v218 = v219;
                          }

                          v233 = v216;
LABEL_380:
                          v328 = v217 >> 2;
                          v216 = v233 - 2;
                          LODWORD(v327) = v233 - 2;
                          if (!v214)
                          {
                            goto LABEL_431;
                          }

                          v240 = (v217 & 3) + 3;
                          v208 = *(v230 - 1);
                          v217 >>= 2;
                        }

                        else
                        {
                          if (v216 <= 6)
                          {
                            v237 = v218;
                            while (!(v217 >> v216))
                            {
                              if (v237 >= v219)
                              {
                                v238 = 0;
                              }

                              else
                              {
                                v218 = v237 + 1;
                                v325 = v237 + 1;
                                v238 = *v237++;
                              }

                              v217 |= v238 << v216;
                              v328 = v217;
                              v239 = v216 + 8;
                              LODWORD(v327) = v216 + 8;
                              v30 = v216 < 17;
                              v216 += 8;
                              if (!v30)
                              {
                                goto LABEL_387;
                              }
                            }

                            v325 = v219;
                            v218 = v219;
                          }

                          v239 = v216;
LABEL_387:
                          v208 = 0;
                          v242 = v217 & 0x7F;
                          v217 >>= 7;
                          v328 = v217;
                          v216 = v239 - 7;
                          LODWORD(v327) = v239 - 7;
                          v240 = v242 + 11;
                        }

                        if (v215 - v214 < v240)
                        {
                          goto LABEL_431;
                        }

                        v243 = v215;
                        memset(v230, v208, v240);
                        v215 = v243;
                        v214 += v240;
                      }

                      else
                      {
                        v336[v214++] = v224;
                      }
                    }

                    while (v214 < v215);
                    if (v214 == v215)
                    {
                      v244 = sub_29AB52710(v298, v336, v295);
                      v121 = &v325;
                      if (v244)
                      {
                        v245 = sub_29AB52710(v334, &v336[v295], v296);
                        v121 = &v325;
                        v110 = v316;
                        v124 = v298;
                        if (!v245)
                        {
                          goto LABEL_440;
                        }

                        goto LABEL_210;
                      }
                    }

                    else
                    {
LABEL_431:
                      *(off_2A1B71BE0)(&off_2A1B71BE0, v208, v209, &v325, v210, v211, v212, v213) = "bad codelengths";
                    }
                  }

                  v110 = v316;
                  goto LABEL_440;
                }

                if ((v128 & 3) != 0)
                {
                  v144 = sub_29AB52710(v124, byte_29B6C37E7, 288);
                  v121 = &v325;
                  if (!v144)
                  {
                    goto LABEL_440;
                  }

                  v145 = sub_29AB52710(v334, byte_29B6C3907, 32);
                  v121 = &v325;
                  if (!v145)
                  {
                    goto LABEL_440;
                  }

LABEL_210:
                  v119 = v329;
                  while (2)
                  {
                    while (2)
                    {
                      v146 = v327;
                      if (v327 > 15)
                      {
LABEL_223:
                        v150 = v146;
                      }

                      else
                      {
                        v147 = v325;
                        if (v325 < v326)
                        {
                          v148 = v328;
                          while (!(v148 >> v146))
                          {
                            if (v147 >= v326)
                            {
                              v149 = 0;
                            }

                            else
                            {
                              v325 = v147 + 1;
                              v149 = *v147++;
                            }

                            v148 |= v149 << v146;
                            v328 = v148;
                            v150 = v146 + 8;
                            LODWORD(v327) = v146 + 8;
                            v30 = v146 < 17;
                            v146 += 8;
                            if (!v30)
                            {
                              goto LABEL_224;
                            }
                          }

                          v325 = v326;
                          goto LABEL_223;
                        }

                        if (HIDWORD(v327))
                        {
                          goto LABEL_430;
                        }

                        v150 = v327 + 16;
                        LODWORD(v327) = v327 + 16;
                        HIDWORD(v327) = 1;
                      }

LABEL_224:
                      v151 = *(v124 + (v328 & 0x1FF));
                      if (*(v124 + (v328 & 0x1FF)))
                      {
                        v152 = v328 >> (v151 >> 9);
                        v328 = v152;
                        v153 = v150 - (v151 >> 9);
                        LODWORD(v327) = v153;
                        v154 = v151 & 0x1FF;
                      }

                      else
                      {
                        v155 = 0;
                        v156 = __rbit32(v328) >> 16;
                        v157 = 1102;
                        do
                        {
                          v158 = *&v333[4 * v155++ + 1096];
                          v157 += 2;
                        }

                        while (v158 <= v156);
                        v159 = v155 + 9;
                        if ((v155 + 9) > 0xF)
                        {
                          goto LABEL_430;
                        }

                        v160 = *&v333[v157 + 40] - *(&v325 + v157) + (v156 >> (7 - v155));
                        if (v160 > 287 || v333[v160 + 1156] - 9 != v155)
                        {
                          goto LABEL_430;
                        }

                        v152 = v328 >> v159;
                        v328 >>= v159;
                        v153 = v150 - v155 - 9;
                        LODWORD(v327) = v153;
                        v154 = *&v333[2 * v160 + 1444];
                      }

                      if (v154 <= 0xFF)
                      {
                        if (v119 >= v331)
                        {
                          v161 = sub_29AB52AC4(&v325, v119, 1, &v325, v115, v116, v117, v118);
                          v121 = &v325;
                          if (!v161)
                          {
                            goto LABEL_440;
                          }

                          v119 = v329;
                        }

                        *v119++ = v154;
                        continue;
                      }

                      break;
                    }

                    if (v154 == 256)
                    {
                      v135 = v124;
                      v329 = v119;
                      if (!HIDWORD(v327))
                      {
                        v110 = v316;
                        v121 = &v325;
                        goto LABEL_417;
                      }

                      v110 = v316;
                      v121 = &v325;
                      if (v153 >= 16)
                      {
                        goto LABEL_417;
                      }

LABEL_430:
                      v257 = (off_2A1B71BE0)(&off_2A1B71BE0, v113, v114, &v325, v115, v116, v117, v118);
                      *v257 = v258;
LABEL_440:
                      free(v121[5]);
LABEL_441:
                      v9 = 0;
                      *(v110 + 2) = 0;
                      return v9;
                    }

                    if (v154 > 0x11D)
                    {
                      goto LABEL_430;
                    }

                    v162 = v154 - 257;
                    v163 = dword_29B6C393C[v162];
                    if ((v162 - 28) >= 0xFFFFFFFFFFFFFFECLL)
                    {
                      v164 = dword_29B6C39B8[v162];
                      if (v153 < v164)
                      {
                        v165 = v325;
                        while (!(v152 >> v153))
                        {
                          if (v165 >= v326)
                          {
                            v166 = 0;
                          }

                          else
                          {
                            v325 = v165 + 1;
                            v166 = *v165++;
                          }

                          v152 |= v166 << v153;
                          v328 = v152;
                          v167 = v153 + 8;
                          LODWORD(v327) = v153 + 8;
                          v30 = v153 < 17;
                          v153 += 8;
                          if (!v30)
                          {
                            goto LABEL_250;
                          }
                        }

                        v325 = v326;
                      }

                      v167 = v153;
LABEL_250:
                      v168 = v152 & ~(-1 << v164);
                      v152 >>= v164;
                      v328 = v152;
                      v153 = v167 - v164;
                      LODWORD(v327) = v167 - v164;
                      v163 = (v168 + v163);
                    }

                    if (v153 > 15)
                    {
LABEL_262:
                      v171 = v153;
                    }

                    else
                    {
                      v169 = v325;
                      if (v325 < v326)
                      {
                        while (!(v152 >> v153))
                        {
                          if (v169 >= v326)
                          {
                            v170 = 0;
                          }

                          else
                          {
                            v325 = v169 + 1;
                            v170 = *v169++;
                          }

                          v152 |= v170 << v153;
                          v328 = v152;
                          v171 = v153 + 8;
                          LODWORD(v327) = v153 + 8;
                          v30 = v153 < 17;
                          v153 += 8;
                          if (!v30)
                          {
                            goto LABEL_263;
                          }
                        }

                        v325 = v326;
                        goto LABEL_262;
                      }

                      if (HIDWORD(v327))
                      {
                        goto LABEL_430;
                      }

                      v171 = v153 + 16;
                      LODWORD(v327) = v153 + 16;
                      HIDWORD(v327) = 1;
                    }

LABEL_263:
                    v172 = *(v334 + (v152 & 0x1FF));
                    if (*(v334 + (v152 & 0x1FF)))
                    {
                      v173 = v152 >> (v172 >> 9);
                      v328 = v173;
                      v174 = v171 - (v172 >> 9);
                      LODWORD(v327) = v174;
                      v175 = v172 & 0x1FF;
                    }

                    else
                    {
                      v176 = 0;
                      v177 = __rbit32(v152) >> 16;
                      v178 = 3122;
                      do
                      {
                        v179 = v334[v176++ + 274];
                        v178 += 2;
                      }

                      while (v179 <= v177);
                      if ((v176 + 9) > 0xF)
                      {
                        goto LABEL_430;
                      }

                      v180 = *&v333[v178 + 40] - *(&v325 + v178) + (v177 >> (7 - v176));
                      if (v180 > 287 || *(&v334[289] + v180) - 9 != v176)
                      {
                        goto LABEL_430;
                      }

                      v173 = v152 >> (v176 + 9);
                      v328 = v173;
                      v174 = v171 - v176 - 9;
                      LODWORD(v327) = v174;
                      v175 = *(&v334[361] + v180);
                    }

                    if (v175 > 0x1D)
                    {
                      goto LABEL_430;
                    }

                    v181 = dword_29B6C3A34[v175];
                    if (v175 >= 4)
                    {
                      v182 = dword_29B6C3AB4[v175];
                      if (v174 < v182)
                      {
                        v183 = v325;
                        while (!(v173 >> v174))
                        {
                          if (v183 >= v326)
                          {
                            v184 = 0;
                          }

                          else
                          {
                            v325 = v183 + 1;
                            v184 = *v183++;
                          }

                          v173 |= v184 << v174;
                          v328 = v173;
                          v185 = v174 + 8;
                          LODWORD(v327) = v174 + 8;
                          v30 = v174 < 17;
                          v174 += 8;
                          if (!v30)
                          {
                            goto LABEL_283;
                          }
                        }

                        v325 = v326;
                      }

                      v185 = v174;
LABEL_283:
                      v328 = v173 >> v182;
                      LODWORD(v327) = v185 - v182;
                      v181 += v173 & ~(-1 << v182);
                    }

                    if (v119 - v330 < v181)
                    {
                      goto LABEL_430;
                    }

                    if (v331 - v119 < v163)
                    {
                      v186 = sub_29AB52AC4(&v325, v119, v163, &v325, v115, v116, v117, v118);
                      v121 = &v325;
                      if (!v186)
                      {
                        goto LABEL_440;
                      }

                      v119 = v329;
                    }

                    if (v181 == 1)
                    {
                      if (v163)
                      {
                        memset(v119, *(v119 - 1), v163);
                        v119 += (v163 - 1) + 1;
                      }
                    }

                    else if (v163)
                    {
                      v187 = v119;
                      do
                      {
                        v119 = v187 + 1;
                        *v187 = v187[-v181];
                        ++v187;
                        LODWORD(v163) = v163 - 1;
                      }

                      while (v163);
                    }

                    continue;
                  }
                }

                v135 = v124;
                v136 = v134 & 7;
                if ((v134 & 7) != 0)
                {
                  if (v129 <= 1)
                  {
                    v137 = v325;
                    while (!(v133 >> v134))
                    {
                      if (v137 >= v326)
                      {
                        v138 = 0;
                      }

                      else
                      {
                        v325 = v137 + 1;
                        v138 = *v137++;
                      }

                      v133 |= v138 << v134;
                      v328 = v133;
                      v139 = v134 + 8;
                      LODWORD(v327) = v134 + 8;
                      v30 = v134 < 17;
                      v134 += 8;
                      if (!v30)
                      {
                        goto LABEL_397;
                      }
                    }

                    v325 = v326;
                  }

                  v139 = v134;
LABEL_397:
                  v133 >>= v136;
                  v328 = v133;
                  v134 = v139 - v136;
                  LODWORD(v327) = v139 - v136;
                }

                v246 = (v134 - 1);
                if (v134 < 1)
                {
                  if (v134 < 0)
                  {
                    goto LABEL_470;
                  }

                  v247 = 0;
                }

                else
                {
                  v247 = (v246 >> 3) + 1;
                  v248 = __n;
                  v249 = 1;
                  do
                  {
                    *v248++ = v133;
                    v133 >>= 8;
                    --v249;
                  }

                  while (-(v246 >> 3) != v249);
                  v250 = v134 - (v246 & 0xFFFFFFF8);
                  v328 = v133;
                  LODWORD(v327) = v250 - 8;
                  if (v250 != 8)
                  {
                    goto LABEL_470;
                  }

                  if (-v249 > 2)
                  {
                    goto LABEL_411;
                  }
                }

                v252 = v325;
                v251 = v326;
                do
                {
                  if (v252 >= v251)
                  {
                    v253 = 0;
                  }

                  else
                  {
                    v325 = v252 + 1;
                    v253 = *v252++;
                  }

                  *(__n + v247++) = v253;
                }

                while (v247 != 4);
LABEL_411:
                v254 = LOWORD(__n[0]);
                if ((HIWORD(__n[0]) ^ LOWORD(__n[0])) != 0xFFFF)
                {
                  goto LABEL_470;
                }

                v255 = v325;
                if (&v325[LOWORD(__n[0])] > v326)
                {
                  v300 = "read past buffer";
LABEL_470:
                  *(off_2A1B71BE0)(&off_2A1B71BE0, v113, v114, &v325, v115, v116, v117, v118) = v300;
LABEL_471:
                  v110 = v316;
                  v121 = &v325;
                  goto LABEL_440;
                }

                if (&v119[LOWORD(__n[0])] > v331)
                {
                  if (!sub_29AB52AC4(&v325, v119, LOWORD(__n[0]), &v325, v115, v116, v117, v118))
                  {
                    goto LABEL_471;
                  }

                  v119 = v329;
                  v255 = v325;
                }

                v110 = v316;
                memcpy(v119, v255, v254);
                v121 = &v325;
                v325 = &v255[v254];
                v119 += v254;
                v329 = v119;
LABEL_417:
                if (v122)
                {
                  v262 = v330;
                  *(v110 + 2) = v330;
                  if (!v262)
                  {
                    return 0;
                  }

                  v306 = v119 - v262;
                  free(*(v316 + 1));
                  *(v316 + 1) = 0;
                  v263 = *(v7 + 8);
                  v264 = v263 == -1;
                  if (v319)
                  {
                    v264 = 0;
                  }

                  if (v307)
                  {
                    v264 = 1;
                  }

                  if (v264)
                  {
                    ++v263;
                  }

                  v301 = v263;
                  *(v7 + 12) = v263;
                  v304 = *(v316 + 2);
                  v303 = *(v316 + 8);
                  v265 = v303 == 16;
                  if (v308)
                  {
                    v299 = v301 << v265;
                    v297 = sub_29AB5037C(**v316, *(*v316 + 4), v301 << v265, 0);
                    if (v297)
                    {
                      v309 = 0;
                      while (1)
                      {
                        v266 = *v316;
                        v267 = dword_29B6C3B34[v309];
                        v268 = dword_29B6C3B6C[v309];
                        v269 = **v316 + ~v267 + v268;
                        if (v268 <= v269)
                        {
                          v270 = dword_29B6C3B50[v309];
                          v271 = dword_29B6C3B88[v309];
                          v272 = v266[1] + ~v270 + v271;
                          if (v271 <= v272)
                          {
                            v302 = v266[2];
                            v315 = v269 / v268;
                            v318 = v272 / v271;
                            if (!sub_29AB52BA8(v316, v304, v306, v301, v269 / v268, v272 / v271, v303, v310))
                            {
                              free(v297);
                              return 0;
                            }

                            if (v318 >= 1)
                            {
                              v273 = 0;
                              v274 = v299 * v270;
                              v313 = v299 * v271;
                              v275 = v299 * v268;
                              do
                              {
                                if (v315 >= 1)
                                {
                                  v276 = 0;
                                  v277 = *(v316 + 3);
                                  v278 = &v297[v299 * v267 + (**v316 * v274)];
                                  do
                                  {
                                    memcpy(v278, v277 + (v276 + v273 * v315) * v299, v299);
                                    ++v276;
                                    v278 += v275;
                                  }

                                  while (v276 < v315);
                                }

                                ++v273;
                                v274 += v313;
                              }

                              while (v273 < v318);
                            }

                            v279 = v318 + v318 * ((v315 * v303 * v302 + 7) >> 3);
                            free(*(v316 + 3));
                            v304 += v279;
                            v306 -= v279;
                          }
                        }

                        if (++v309 == 7)
                        {
                          *(v316 + 3) = v297;
                          goto LABEL_473;
                        }
                      }
                    }

LABEL_488:
                    v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v67, v68, v69, v70, v71, v72, v73);
                    v9 = 0;
                    v106 = "outofmem";
LABEL_147:
                    *v105 = v106;
                    return v9;
                  }

                  if (!sub_29AB52BA8(v316, v304, v306, v301, **v316, *(*v316 + 4), v303, v310))
                  {
                    return 0;
                  }

LABEL_473:
                  if (v307)
                  {
                    v280 = *(v7 + 12);
                    if (*(v316 + 8) == 16)
                    {
                      sub_29AB52594(v316, v320, v280);
                    }

                    else
                    {
                      sub_29AB52620(v316, &v321, v280);
                    }
                  }

                  if (v311 && byte_2A17482F0 == 1 && *(v7 + 12) >= 3)
                  {
                    sub_29AB526AC(v316);
                  }

                  if (v319)
                  {
                    *(v7 + 8) = v319;
                    *(v7 + 12) = v319;
                    v282 = **v316;
                    v281 = *(*v316 + 4);
                    v283 = (v281 * v282);
                    v284 = *(v316 + 3);
                    v285 = sub_29AB502C8(v281 * v282, v319, 0);
                    if (!v285)
                    {
                      goto LABEL_488;
                    }

                    v286 = v285;
                    if (v319 == 3)
                    {
                      if (v283)
                      {
                        v287 = v284;
                        v288 = v285;
                        do
                        {
                          v289 = *v287++;
                          v290 = &v323[4 * v289];
                          *v288 = *v290;
                          *(v288 + 2) = v290[2];
                          v288 = (v288 + 3);
                          --v283;
                        }

                        while (v283);
                      }
                    }

                    else if (v283)
                    {
                      v292 = v284;
                      v293 = v285;
                      do
                      {
                        v294 = *v292++;
                        *v293++ = *&v323[4 * v294];
                        --v283;
                      }

                      while (v283);
                    }

                    free(v284);
                    *(v316 + 3) = v286;
                  }

                  else if (v307)
                  {
                    ++*(v7 + 8);
                  }

                  free(*(v316 + 2));
                  *(v316 + 2) = 0;
                  sub_29AB4FF24(v7);
                  sub_29AB4FF24(v7);
                  return 1;
                }

                v124 = v135;
                v123 = v327;
                v122 = v328;
                continue;
              }
            }

LABEL_96:
            if (v13)
            {
              goto LABEL_146;
            }

            if ((v17 & 0x2000) == 0)
            {
              aXxxxPngChunkNo[0] = BYTE1(v17);
              aXxxxPngChunkNo[1] = v17;
              aXxxxPngChunkNo[2] = BYTE1(v18);
              aXxxxPngChunkNo[3] = v18;
              v107 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
              v9 = 0;
              *v107 = v108;
              return v9;
            }

            sub_29AB50224(v7, v16);
LABEL_134:
            v13 = 0;
            goto LABEL_135;
          }

          if (!v13)
          {
            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
            v9 = 0;
            v106 = "multiple IHDR";
            goto LABEL_147;
          }

          if (v16 != 13)
          {
            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
            v9 = 0;
            v106 = "bad IHDR len";
            goto LABEL_147;
          }

          v37 = sub_29AB4FF24(v7);
          *v7 = sub_29AB4FF24(v7) | (v37 << 16);
          v38 = sub_29AB4FF24(v7);
          v46 = sub_29AB4FF24(v7) | (v38 << 16);
          *(v7 + 4) = v46;
          if (v46 >= 0x1000001 || *v7 >= 0x1000001u)
          {
LABEL_141:
            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v39, v40, v41, v42, v43, v44, v45);
            v9 = 0;
            v106 = "too large";
            goto LABEL_147;
          }

          v48 = *(v7 + 192);
          v47 = *(v7 + 200);
          if (v48 >= v47)
          {
            v51 = v316;
            if (!*(v7 + 48))
            {
              v316[8] = 0.0;
LABEL_165:
              v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v39, v40, v41, v42, v43, v44, v45);
              v9 = 0;
              v106 = "1/2/4/8/16-bit only";
              goto LABEL_147;
            }

            v63 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
            *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
            if (v63)
            {
              v47 = &v11[v63];
              v50 = *v11;
            }

            else
            {
              v50 = 0;
              *(v7 + 48) = 0;
              *(v7 + 56) = 0;
              v47 = (v7 + 57);
            }

            *(v7 + 192) = v12;
            *(v7 + 200) = v47;
            v49 = (v7 + 57);
          }

          else
          {
            v49 = v48 + 1;
            *(v7 + 192) = v48 + 1;
            v50 = *v48;
            v51 = v316;
          }

          *(v51 + 8) = v50;
          if (v50 > 0x10 || ((1 << v50) & 0x10116) == 0)
          {
            goto LABEL_165;
          }

          if (v49 >= v47)
          {
            if (*(v7 + 48))
            {
              v82 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
              *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
              if (v82)
              {
                v83 = &v11[v82];
                v81 = *v11;
              }

              else
              {
                v81 = 0;
                *(v7 + 48) = 0;
                *(v7 + 56) = 0;
                v83 = (v7 + 57);
              }

              *(v7 + 192) = v12;
              *(v7 + 200) = v83;
              goto LABEL_121;
            }

            v81 = 0;
            v84 = v319;
          }

          else
          {
            *(v7 + 192) = v49 + 1;
            v81 = *v49;
LABEL_121:
            if (v81 >= 7)
            {
              goto LABEL_144;
            }

            if (v81 == 3)
            {
              if (*(v51 + 8) == 16)
              {
                goto LABEL_144;
              }

              v81 = 3;
              v84 = 3;
            }

            else
            {
              v84 = v319;
              if (v81)
              {
LABEL_144:
                v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v39, v40, v41, v42, v43, v44, v45);
                v9 = 0;
                v106 = "bad ctype";
                goto LABEL_147;
              }
            }
          }

          if (sub_29AB4FE84(v7))
          {
            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v86, v87, v88, v89, v90, v91, v92);
            v9 = 0;
            v106 = "bad comp method";
            goto LABEL_147;
          }

          if (sub_29AB4FE84(v7))
          {
            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v93, v94, v95, v96, v97, v98, v99);
            v9 = 0;
            v106 = "bad filter method";
            goto LABEL_147;
          }

          v100 = sub_29AB4FE84(v7);
          if (v100 >= 2)
          {
            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v39, v40, v41, v42, v43, v44, v45);
            v9 = 0;
            v106 = "bad interlace method";
            goto LABEL_147;
          }

          if (!*v7 || (v101 = *(v7 + 4)) == 0)
          {
            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v39, v40, v41, v42, v43, v44, v45);
            v9 = 0;
            v106 = "0-pixel image";
            goto LABEL_147;
          }

          v102 = 0x40000000u / *v7;
          v310 = v81;
          v308 = v100;
          if (v84)
          {
            *(v7 + 8) = 1;
            if (v101 > v102 >> 2)
            {
              goto LABEL_141;
            }

            v319 = v84;
            goto LABEL_134;
          }

          v103 = v81 & 2;
          if (v81 > 3)
          {
            ++v103;
          }

          v104 = v103 + 1;
          *(v7 + 8) = v104;
          if (v102 / v104 < v101)
          {
            goto LABEL_141;
          }

          goto LABEL_139;
        }

        if (v26 == 1130840649)
        {
          sub_29AB50224(v7, v16);
          v311 = 1;
          goto LABEL_135;
        }

        if (v26 != 1229209940)
        {
          goto LABEL_96;
        }

        if (v13)
        {
          goto LABEL_146;
        }

        v27 = v319;
        if (v319 && !v317)
        {
          v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
          v9 = 0;
          v106 = "no PLTE";
          goto LABEL_147;
        }

        if (v314 == 2)
        {
          if (!v319)
          {
            return 1;
          }

          goto LABEL_425;
        }

        if (v16 >= 0x40000001)
        {
          v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
          v9 = 0;
          v106 = "IDAT size limit";
          goto LABEL_147;
        }

        v28 = v16 + v312;
        if ((v16 + v312) < v312)
        {
          return 0;
        }

        if (v28 <= v10)
        {
          v64 = *v8;
        }

        else
        {
          if (v16 <= 0x1000)
          {
            v29 = 4096;
          }

          else
          {
            v29 = v15 | (v14 << 16);
          }

          if (v10)
          {
            v29 = v10;
          }

          if (v28 > v29)
          {
            while ((v29 & 0x80000000) == 0)
            {
              v10 = 2 * v29;
              v30 = v28 > 2 * v29;
              v29 *= 2;
              if (!v30)
              {
                goto LABEL_100;
              }
            }

            v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
            v9 = 0;
            v106 = "integer overflow";
            goto LABEL_147;
          }

          v10 = v29;
LABEL_100:
          v64 = realloc(*v8, v10);
          if (!v64)
          {
            goto LABEL_488;
          }

          *v8 = v64;
        }

        if (!sub_29AB524E4(v7, v64 + v312, v16))
        {
          v105 = (off_2A1B71BE0)(&off_2A1B71BE0, v74, v75, v76, v77, v78, v79, v80);
          v9 = 0;
          v106 = "outofdata";
          goto LABEL_147;
        }

        v13 = 0;
        v312 += v16;
      }

LABEL_135:
      sub_29AB4FF24(v7);
      sub_29AB4FF24(v7);
    }
  }

  return v9;
}

uint64_t sub_29AB523AC(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 56);
  v4 = (a1 + 57);
  v6 = *(a1 + 192);
  v5 = *(a1 + 200);
  while (1)
  {
    if (v6 >= v5)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = (*(a1 + 16))(*(a1 + 40), v3, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v8)
        {
          v5 = &v3[v8];
          v7 = *v3;
        }

        else
        {
          v7 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v5 = v4;
        }

        *(a1 + 192) = v4;
        *(a1 + 200) = v5;
        v6 = v4;
      }
    }

    else
    {
      *(a1 + 192) = v6 + 1;
      v7 = *v6++;
    }

    if (v7 != byte_29B6C37DF[v2])
    {
      break;
    }

    if (++v2 == 8)
    {
      return 1;
    }
  }

  v10 = off_2A1B71BE0();
  result = 0;
  *v10 = "bad png sig";
  return result;
}

BOOL sub_29AB524E4(uint64_t a1, char *__dst, int a3)
{
  if (*(a1 + 16))
  {
    v5 = *(a1 + 192);
    v6 = *(a1 + 200);
    v7 = v6 - v5;
    v8 = (a3 - (v6 - v5));
    if (a3 > v6 - v5)
    {
      memcpy(__dst, v5, v7);
      result = (*(a1 + 16))(*(a1 + 40), &__dst[v7], v8) == v8;
      *(a1 + 192) = *(a1 + 200);
      return result;
    }
  }

  else
  {
    v5 = *(a1 + 192);
    v6 = *(a1 + 200);
  }

  if (v5 + a3 > v6)
  {
    return 0;
  }

  v10 = a3;
  memcpy(__dst, v5, a3);
  *(a1 + 192) += v10;
  return 1;
}

void *sub_29AB52594(void *result, unsigned __int16 *a2, int a3)
{
  v3 = *(*result + 4) * **result;
  v4 = result[3];
  if (a3 == 2)
  {
    for (; v3; --v3)
    {
      if (*v4 == *a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = -1;
      }

      v4[1] = v5;
      v4 += 2;
    }
  }

  else if (v3)
  {
    v6 = v4 + 2;
    do
    {
      if (*(v6 - 2) == *a2 && *(v6 - 1) == a2[1] && *v6 == a2[2])
      {
        v6[1] = 0;
      }

      v6 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_29AB52620(void *result, unsigned __int8 *a2, int a3)
{
  v3 = *(*result + 4) * **result;
  v4 = result[3];
  if (a3 == 2)
  {
    for (; v3; --v3)
    {
      if (*v4 == *a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = -1;
      }

      v4[1] = v5;
      v4 += 2;
    }
  }

  else if (v3)
  {
    v6 = v4 + 1;
    do
    {
      if (*(v6 - 1) == *a2 && *v6 == a2[1] && v6[1] == a2[2])
      {
        v6[2] = 0;
      }

      v6 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_29AB526AC(void *result)
{
  v1 = *(*result + 4) * **result;
  v2 = result[3];
  if (*(*result + 12) == 3)
  {
    for (; v1; --v1)
    {
      v3 = *v2;
      *v2 = v2[2];
      v2[2] = v3;
      v2 += 3;
    }
  }

  else
  {
    for (; v1; --v1)
    {
      v4 = *v2;
      *v2 = v2[2];
      v2[2] = v4;
      v2 += 4;
    }
  }

  return result;
}

uint64_t sub_29AB52710(_DWORD *a1, unsigned __int8 *a2, int a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  bzero(a1, 0x400uLL);
  if (a3 >= 1)
  {
    v13 = a3;
    v14 = a2;
    do
    {
      v15 = *v14++;
      ++*(v47 + v15);
      --v13;
    }

    while (v13);
  }

  v16 = 1;
  while (*(v47 + v16) <= 1 << v16)
  {
    if (++v16 == 16)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 15;
      for (i = 1026; ; i += 2)
      {
        v49[v17 + 1] = v19;
        v22 = (a1 + i);
        *v22 = v19;
        v6 = *(v47 + v17 + 1);
        v22[50] = v18;
        v23 = v6 + v19;
        v7 = (1 << (v17 + 1));
        if (v6 && v23 > v7)
        {
          break;
        }

        v8 = &a1[v17];
        v8[265] = v23 << v20;
        v19 = 2 * v23;
        v18 += v6;
        ++v17;
        --v20;
        if (v17 == 15)
        {
          a1[280] = 0x10000;
          if (a3 >= 1)
          {
            v25 = 0;
            v26 = a3;
            do
            {
              v27 = a2[v25];
              if (a2[v25])
              {
                v28 = v49[v27];
                v29 = *(a1 + v27 + 562) + (v28 - *(a1 + v27 + 512));
                *(a1 + v29 + 1156) = v27;
                *(a1 + v29 + 722) = v25;
                if (v27 <= 9)
                {
                  v30 = __rbit32(v28) >> 16 >> (16 - v27);
                  if (v30 <= 0x1FF)
                  {
                    v31 = 0;
                    v32 = v25 | (v27 << 9);
                    v33 = 1 << v27;
                    v34 = (1 << v27) + v30;
                    if (v34 >= 0x200)
                    {
                      v35 = 1;
                    }

                    else
                    {
                      v35 = 2;
                    }

                    if (v34 <= 0x200)
                    {
                      v36 = 512;
                    }

                    else
                    {
                      v36 = (1 << v27) + v30;
                    }

                    v37 = v35 + ((((__PAIR128__(v36, v34) - 0x200) >> 64) - v34) >> v27);
                    v38 = (v37 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v39 = vdupq_n_s64(v37 - 1);
                    do
                    {
                      v40 = (v31 << v27) + v30;
                      v41 = vdupq_n_s64(v31);
                      v42 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_29B430070)));
                      if (vuzp1_s8(vuzp1_s16(v42, 6), 6).u8[0])
                      {
                        *(a1 + v40) = v32;
                      }

                      if (vuzp1_s8(vuzp1_s16(v42, 6), 6).i8[1])
                      {
                        *(a1 + v40 + v33) = v32;
                      }

                      if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_29B433E10)))), 6).i8[2])
                      {
                        *(&a1[v33] + v40) = v32;
                        *(a1 + v40 + (3 << v27)) = v32;
                      }

                      v43 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_29B433E00)));
                      if (vuzp1_s8(6, vuzp1_s16(v43, 6)).i32[1])
                      {
                        *(&a1[2 * v33] + v40) = v32;
                      }

                      if (vuzp1_s8(6, vuzp1_s16(v43, 6)).i8[5])
                      {
                        *(a1 + v40 + (5 << v27)) = v32;
                      }

                      if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_29B433DF0))))).i8[6])
                      {
                        *(a1 + v40 + (6 << v27)) = v32;
                        *(a1 + v40 + (7 << v27)) = v32;
                      }

                      v31 += 8;
                    }

                    while (v38 != v31);
                  }
                }

                v49[v27] = v28 + 1;
              }

              ++v25;
            }

            while (v25 != v26);
          }

          return 1;
        }
      }

      break;
    }
  }

  v45 = off_2A1B71BE0(&off_2A1B71BE0, v6, v7, v8, v9, v10, v11, v12, *&v47[0]);
  result = 0;
  *v45 = v46;
  return result;
}

uint64_t sub_29AB52AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 32) = a2;
  if (*(a1 + 56))
  {
    v9 = *(a1 + 40);
    v10 = a2 - v9;
    if (!__CFADD__(a2 - v9, a3))
    {
      v11 = *(a1 + 48) - v9;
      if (v10 + a3 <= v11)
      {
        v12 = *(a1 + 48) - v9;
LABEL_9:
        v17 = v12;
        v18 = realloc(v9, v12);
        if (v18)
        {
          *(a1 + 32) = &v18[v10];
          *(a1 + 40) = v18;
          *(a1 + 48) = &v18[v17];
          return 1;
        }
      }

      else
      {
        while ((v11 & 0x80000000) == 0)
        {
          v12 = 2 * v11;
          v13 = v10 + a3 > 2 * v11;
          v11 *= 2;
          if (!v13)
          {
            goto LABEL_9;
          }
        }
      }
    }

    v14 = (off_2A1B71BE0)(&off_2A1B71BE0, a2, a3, a4, a5, a6, a7, a8);
    result = 0;
    v16 = "outofmem";
  }

  else
  {
    v14 = (off_2A1B71BE0)(&off_2A1B71BE0, a2, a3, a4, a5, a6, a7, a8);
    result = 0;
    v16 = "output buffer limit";
  }

  *v14 = v16;
  return result;
}

uint64_t sub_29AB52BA8(void *a1, unsigned __int8 *a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, signed int a7, int a8)
{
  v16 = a7 == 16;
  v17 = *(*a1 + 8);
  v18 = sub_29AB5037C(a5, a6, a4 << (a7 == 16), 0);
  a1[3] = v18;
  if (!v18)
  {
    goto LABEL_111;
  }

  if (!sub_29AB50270(v17, a5, a7, 7) || (v109 = a4, (a6 & 0x80000000) != 0) || (v33 = v17 * a5, v34 = (v33 * a7 + 7) >> 3, a6) && 0x7FFFFFFF / a6 < v34 || (v34 ^ 0x7FFFFFFF) < v34 * a6)
  {
    v35 = (off_2A1B71BE0)(&off_2A1B71BE0, v26, v27, v28, v29, v30, v31, v32);
    result = 0;
    v37 = "too large";
LABEL_112:
    *v35 = v37;
    return result;
  }

  if (a6 + a6 * v34 > a3)
  {
    v35 = (off_2A1B71BE0)(&off_2A1B71BE0, v26, v27, v28, v29, v30, v31, v32);
    result = 0;
    v37 = "not enough pixels";
    goto LABEL_112;
  }

  v106 = malloc(2 * v34);
  if (!v106)
  {
LABEL_111:
    v35 = (off_2A1B71BE0)(&off_2A1B71BE0, v19, v20, v21, v22, v23, v24, v25);
    result = 0;
    v37 = "outofmem";
    goto LABEL_112;
  }

  v100 = a8;
  v38 = (v33 * a7 + 7) >> 3;
  if (a6)
  {
    v39 = 0;
    v40 = 0;
    v108 = (a5 * v109) << v16;
    if (a7 < 8)
    {
      v41 = 1;
    }

    else
    {
      v41 = (v17 << v16);
    }

    if (a7 >= 8)
    {
      v42 = a5;
    }

    else
    {
      v42 = (v33 * a7 + 7) >> 3;
    }

    v43 = v42 * v41;
    v44 = v41;
    v45 = v43;
    v103 = a6;
    v104 = v43;
    v99 = v41 + 1;
    v46 = 1;
    v105 = v41;
    v102 = v43;
    v101 = v17;
    while (1)
    {
      v47 = (v40 & 1) != 0 ? v38 : 0;
      v49 = a2 + 1;
      v48 = *a2;
      if (v48 > 4)
      {
        break;
      }

      if (!v40)
      {
        v48 = byte_29B6C3BA4[*a2];
      }

      v50 = &v106[v38 * (v46 & 1)];
      v51 = &v106[v47];
      v22 = a1[3];
      v107 = v46;
      if (v48 > 2)
      {
        switch(v48)
        {
          case 3:
            if (v44 >= 1)
            {
              v67 = 0;
              do
              {
                *(v51 + v67) = a2[v67 + 1] + (v50[v67] >> 1);
                ++v67;
              }

              while (v41 != v67);
            }

            v68 = v45;
            v69 = v99;
            v70 = v51;
            if (v41 < v43)
            {
              do
              {
                *(v70 + v44) = a2[v69] + ((*v70 + v50[v44]) >> 1);
                v70 = (v70 + 1);
                ++v69;
                ++v50;
                --v68;
              }

              while (v44 != v68);
            }

            break;
          case 5:
            v98 = v39;
            v74 = a1[3];
            memcpy(&v106[v47], a2 + 1, v44);
            v22 = v74;
            v39 = v98;
            v17 = v101;
            v45 = v102;
            v43 = v104;
            v41 = v105;
            if (v105 < v104)
            {
              v75 = v102;
              v76 = v99;
              v77 = v51;
              do
              {
                *(v77 + v44) = a2[v76] + (*v77 >> 1);
                v77 = (v77 + 1);
                ++v76;
                --v75;
              }

              while (v44 != v75);
            }

            break;
          case 4:
            if (v41 >= 1)
            {
              for (i = 0; i != v41; ++i)
              {
                *(v51 + i) = v50[i] + a2[i + 1];
              }
            }

            v55 = v45;
            v56 = v99;
            v57 = v51;
            if (v44 < v45)
            {
              do
              {
                v58 = *v57;
                v59 = v50[v44];
                v61 = *v50++;
                v60 = v61;
                v62 = 3 * v61 - (v59 + v58);
                if (v58 >= v59)
                {
                  v63 = v59;
                }

                else
                {
                  v63 = *v57;
                }

                if (v58 <= v59)
                {
                  v58 = v59;
                }

                if (v58 <= v62)
                {
                  v64 = v63;
                }

                else
                {
                  v64 = v60;
                }

                if (v62 > v63)
                {
                  LOBYTE(v58) = v64;
                }

                *(v57 + v44) = a2[v56] + v58;
                v57 = (v57 + 1);
                ++v56;
                --v55;
              }

              while (v44 != v55);
            }

            break;
        }
      }

      else
      {
        v52 = v39;
        if (v48)
        {
          if (v48 == 1)
          {
            v97 = a1[3];
            memcpy(&v106[v47], a2 + 1, v44);
            v22 = v97;
            v45 = v102;
            v43 = v104;
            v41 = v105;
            v39 = v52;
            v17 = v101;
            if (v44 < v102)
            {
              v71 = v102;
              v72 = v99;
              v73 = v51;
              do
              {
                *(v73 + v44) = *v73 + a2[v72];
                v73 = (v73 + 1);
                ++v72;
                --v71;
              }

              while (v44 != v71);
            }
          }

          else
          {
            v43 = v104;
            v41 = v105;
            v17 = v101;
            if (v45 >= 1)
            {
              v53 = 0;
              do
              {
                *(v51 + v53) = v50[v53] + a2[v53 + 1];
                ++v53;
              }

              while (v104 != v53);
            }
          }
        }

        else
        {
          v65 = a2 + 1;
          v66 = a1[3];
          memcpy(&v106[v47], v65, v45);
          v22 = v66;
          v45 = v102;
          v43 = v104;
          v41 = v105;
          v39 = v52;
          v17 = v101;
        }
      }

      v78 = v39;
      v79 = (v22 + (v108 * v40));
      if (a7 > 7)
      {
        if (a7 == 8)
        {
          v81 = v78;
          if (v17 == v109)
          {
            memcpy(v79, v51, v33);
          }

          else
          {
            sub_29AB532B4(v79, v51, a5, v17);
          }

          v43 = v104;
          v41 = v105;
          v45 = v102;
          LODWORD(v78) = v81;
        }

        else if (a7 == 16)
        {
          if (v17 == v109)
          {
            if (v33)
            {
              v82 = v33;
              do
              {
                v83 = *v51++;
                *v79++ = bswap32(v83) >> 16;
                --v82;
              }

              while (v82);
            }
          }

          else if (v17 == 1)
          {
            if (a5)
            {
              v94 = a5;
              do
              {
                v95 = *v51++;
                *v79 = bswap32(v95) >> 16;
                v79[1] = -1;
                v79 += 2;
                --v94;
              }

              while (v94);
            }
          }

          else
          {
            for (j = a5; j; --j)
            {
              *v79 = bswap32(*v51) >> 16;
              v79[1] = bswap32(v51[1]) >> 16;
              v79[2] = bswap32(v51[2]) >> 16;
              v79[3] = -1;
              v79 += 4;
              v51 += 3;
            }
          }
        }
      }

      else
      {
        if (v100)
        {
          v80 = 1;
        }

        else
        {
          v80 = byte_29B6C37D6[a7];
        }

        if (a7 == 4)
        {
          if (v33)
          {
            v87 = 0;
            v88 = 0;
            do
            {
              if ((v87 & 1) == 0)
              {
                v89 = *v51;
                v51 = (v51 + 1);
                v88 = v89;
              }

              *(v22 + v78 + v87) = (v88 >> 4) * v80;
              v88 *= 16;
              ++v87;
            }

            while (v33 != v87);
          }
        }

        else if (a7 == 2)
        {
          if (v33)
          {
            v84 = 0;
            v85 = 0;
            do
            {
              if ((v84 & 3) == 0)
              {
                v86 = *v51;
                v51 = (v51 + 1);
                v85 = v86;
              }

              *(v22 + v78 + v84) = (v85 >> 6) * v80;
              v85 *= 4;
              ++v84;
            }

            while (v33 != v84);
          }
        }

        else if (v33)
        {
          v90 = 0;
          v91 = 0;
          do
          {
            if ((v90 & 7) == 0)
            {
              v92 = *v51;
              v51 = (v51 + 1);
              v91 = v92;
            }

            *(v22 + v78 + v90) = v80 & (v91 >> 7);
            v91 *= 2;
            ++v90;
          }

          while (v33 != v90);
        }

        if (v17 != v109)
        {
          v93 = v78;
          sub_29AB532B4(v79, v79, a5, v17);
          LODWORD(v78) = v93;
          v45 = v102;
          v43 = v104;
          v41 = v105;
        }
      }

      a2 = &v49[v45];
      ++v40;
      v46 = v107 + 1;
      v39 = v78 + v108;
      v38 = (v33 * a7 + 7) >> 3;
      if (v40 == v103)
      {
        goto LABEL_113;
      }
    }

    *(off_2A1B71BE0)(&off_2A1B71BE0, v41, v45, v43, v22, v23, v24, v25) = "invalid filter";
    free(v106);
    return 0;
  }

  else
  {
LABEL_113:
    free(v106);
    return 1;
  }
}

uint64_t sub_29AB532B4(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = (a3 - 1);
  if (a4 == 1)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v5 = (result + 2 * v4 + 1);
      do
      {
        *v5 = -1;
        *(v5 - 1) = *(a2 + v4--);
        v5 -= 2;
      }

      while (v4 != -1);
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    v6 = v4 + 1;
    v7 = (result + 4 * v4 + 1);
    v8 = (3 * (a3 - 1) + a2 + 2);
    do
    {
      v7[2] = -1;
      v7[1] = *v8;
      *v7 = *(v8 - 1);
      *(v7 - 1) = *(v8 - 2);
      v7 -= 4;
      v8 -= 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_29AB53344(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v13 = *(a1 + 192);
  v12 = *(a1 + 200);
  if (v13 >= v12)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v16 = (a1 + 56);
    v17 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v17)
    {
      v12 = &v16[v17];
      v15 = *v16;
    }

    else
    {
      v15 = 0;
      *(a1 + 48) = 0;
      v12 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v14 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v12;
  }

  else
  {
    v14 = v13 + 1;
    *(a1 + 192) = v13 + 1;
    v15 = *v13;
  }

  if (v15 != 71)
  {
    goto LABEL_52;
  }

  if (v14 >= v12)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v20 = (a1 + 56);
    v21 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v21)
    {
      v12 = &v20[v21];
      v19 = *v20;
    }

    else
    {
      v19 = 0;
      *(a1 + 48) = 0;
      v12 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v18 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v12;
  }

  else
  {
    v18 = v14 + 1;
    *(a1 + 192) = v14 + 1;
    v19 = *v14;
  }

  if (v19 != 73)
  {
    goto LABEL_52;
  }

  if (v18 >= v12)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v24 = (a1 + 56);
    v25 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v25)
    {
      v12 = &v24[v25];
      v23 = *v24;
    }

    else
    {
      v23 = 0;
      *(a1 + 48) = 0;
      v12 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v22 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v12;
  }

  else
  {
    v22 = v18 + 1;
    *(a1 + 192) = v18 + 1;
    v23 = *v18;
  }

  if (v23 != 70)
  {
    goto LABEL_52;
  }

  if (v22 >= v12)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v28 = (a1 + 56);
    v29 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v29)
    {
      v12 = &v28[v29];
      v27 = *v28;
    }

    else
    {
      v27 = 0;
      *(a1 + 48) = 0;
      v12 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v26 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v12;
  }

  else
  {
    v26 = v22 + 1;
    *(a1 + 192) = v22 + 1;
    v27 = *v22;
  }

  if (v27 != 56)
  {
    goto LABEL_52;
  }

  if (v26 >= v12)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v32 = (a1 + 56);
    v33 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v33)
    {
      v12 = &v32[v33];
      v31 = *v32;
    }

    else
    {
      v31 = 0;
      *(a1 + 48) = 0;
      v12 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v30 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v12;
  }

  else
  {
    v30 = v26 + 1;
    *(a1 + 192) = v26 + 1;
    v31 = *v26;
  }

  if (v31 != 55 && v31 != 57)
  {
    goto LABEL_52;
  }

  if (v30 < v12)
  {
    *(a1 + 192) = v30 + 1;
    v34 = *v30;
    goto LABEL_49;
  }

  if (!*(a1 + 48))
  {
LABEL_52:
    v42 = (off_2A1B71BE0)(&off_2A1B71BE0, a2, a3, a4, a5, a6, a7, a8);
    result = 0;
    *v42 = "not GIF";
    return result;
  }

  v35 = (a1 + 56);
  v36 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
  *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
  if (v36)
  {
    v37 = &v35[v36];
    v34 = *v35;
  }

  else
  {
    v34 = 0;
    *(a1 + 48) = 0;
    v37 = (a1 + 57);
    *(a1 + 56) = 0;
  }

  *(a1 + 192) = a1 + 57;
  *(a1 + 200) = v37;
LABEL_49:
  if (v34 != 97)
  {
    goto LABEL_52;
  }

  v38 = (off_2A1B71BE0)(&off_2A1B71BE0, a2, a3, a4, a5, a6, a7, a8);
  *v38 = "";
  *a2 = sub_29AB538DC(a1);
  a2[1] = sub_29AB538DC(a1);
  v40 = *(a1 + 192);
  v39 = *(a1 + 200);
  if (v40 >= v39)
  {
    v41 = *(a1 + 48);
    if (v41)
    {
      v44 = (a1 + 56);
      v45 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v45)
      {
        v39 = &v44[v45];
        v41 = *v44;
      }

      else
      {
        v41 = 0;
        *(a1 + 48) = 0;
        v39 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v40 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v39;
    }
  }

  else
  {
    *(a1 + 192) = v40 + 1;
    v41 = *v40++;
  }

  a2[8] = v41;
  if (v40 >= v39)
  {
    v46 = *(a1 + 48);
    if (v46)
    {
      v47 = (a1 + 56);
      v48 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v48)
      {
        v39 = &v47[v48];
        v46 = *v47;
      }

      else
      {
        v46 = 0;
        *(a1 + 48) = 0;
        v39 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v40 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v39;
    }
  }

  else
  {
    *(a1 + 192) = v40 + 1;
    v46 = *v40++;
  }

  a2[9] = v46;
  if (v40 >= v39)
  {
    v49 = *(a1 + 48);
    if (v49)
    {
      v50 = (a1 + 56);
      v51 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v51)
      {
        v52 = &v50[v51];
        v49 = *v50;
      }

      else
      {
        v49 = 0;
        *(a1 + 48) = 0;
        v52 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v52;
    }
  }

  else
  {
    *(a1 + 192) = v40 + 1;
    v49 = *v40;
  }

  a2[10] = v49;
  a2[11] = -1;
  if (*a2 < 16777217 && a2[1] < 16777217)
  {
    if (a3)
    {
      *a3 = 4;
    }

    if (!v8)
    {
      v53 = a2[8];
      if ((v53 & 0x80) != 0)
      {
        sub_29AB53A08(a1, (a2 + 13), 2 << (v53 & 7), 0xFFFFFFFF);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    *v38 = "too large";
  }

  return result;
}

uint64_t sub_29AB538DC(uint64_t a1)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  if (v3 >= v2)
  {
    if (*(a1 + 48))
    {
      v5 = (a1 + 56);
      v6 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v6)
      {
        v2 = &v5[v6];
        v4 = *v5;
      }

      else
      {
        v4 = 0;
        *(a1 + 48) = 0;
        v2 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v3 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v4 = *v3++;
  }

  if (v3 >= v2)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = (a1 + 56);
      v9 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v9)
      {
        v10 = &v8[v9];
        v7 = *v8;
      }

      else
      {
        v7 = 0;
        *(a1 + 48) = 0;
        v10 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v10;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v7 = *v3;
  }

  return v4 | (v7 << 8);
}

uint64_t sub_29AB53A08(uint64_t result, uint64_t a2, int a3, unsigned int a4)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = (result + 56);
    v6 = result + 57;
    v7 = (a2 + 3);
    v8 = a4;
    v9 = a3;
    do
    {
      v10 = *(v4 + 192);
      if (v10 >= *(v4 + 200))
      {
        LODWORD(v10) = *(v4 + 48);
        if (v10)
        {
          result = (*(v4 + 16))(*(v4 + 40), v5, *(v4 + 52));
          *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
          if (result)
          {
            v11 = &v5[result];
            LOBYTE(v10) = *v5;
          }

          else
          {
            LOBYTE(v10) = 0;
            *(v4 + 48) = 0;
            *(v4 + 56) = 0;
            v11 = v6;
          }

          *(v4 + 192) = v6;
          *(v4 + 200) = v11;
        }
      }

      else
      {
        *(v4 + 192) = v10 + 1;
        LOBYTE(v10) = *v10;
      }

      *(v7 - 1) = v10;
      v12 = *(v4 + 192);
      if (v12 >= *(v4 + 200))
      {
        LODWORD(v12) = *(v4 + 48);
        if (v12)
        {
          result = (*(v4 + 16))(*(v4 + 40), v5, *(v4 + 52));
          *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
          if (result)
          {
            v13 = &v5[result];
            LOBYTE(v12) = *v5;
          }

          else
          {
            LOBYTE(v12) = 0;
            *(v4 + 48) = 0;
            *(v4 + 56) = 0;
            v13 = v6;
          }

          *(v4 + 192) = v6;
          *(v4 + 200) = v13;
        }
      }

      else
      {
        *(v4 + 192) = v12 + 1;
        LOBYTE(v12) = *v12;
      }

      *(v7 - 2) = v12;
      v14 = *(v4 + 192);
      if (v14 >= *(v4 + 200))
      {
        LODWORD(v14) = *(v4 + 48);
        if (v14)
        {
          result = (*(v4 + 16))(*(v4 + 40), v5, *(v4 + 52));
          *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
          if (result)
          {
            v15 = &v5[result];
            LOBYTE(v14) = *v5;
          }

          else
          {
            LOBYTE(v14) = 0;
            *(v4 + 48) = 0;
            *(v4 + 56) = 0;
            v15 = v6;
          }

          *(v4 + 192) = v6;
          *(v4 + 200) = v15;
        }
      }

      else
      {
        *(v4 + 192) = v14 + 1;
        LOBYTE(v14) = *v14;
      }

      *(v7 - 3) = v14;
      v17 = v8-- != 0;
      *v7 = v17 << 31 >> 31;
      v7 += 4;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_29AB53BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 192);
  v10 = *(a1 + 200);
  if (v11 >= v10)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_26;
    }

    v14 = (a1 + 56);
    v15 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v15)
    {
      v10 = &v14[v15];
      v13 = *v14;
    }

    else
    {
      v13 = 0;
      *(a1 + 48) = 0;
      v10 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v12 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v10;
  }

  else
  {
    v12 = v11 + 1;
    *(a1 + 192) = v11 + 1;
    v13 = *v11;
  }

  if (v13 != 66)
  {
    goto LABEL_26;
  }

  if (v12 < v10)
  {
    *(a1 + 192) = v12 + 1;
    v16 = *v12;
    goto LABEL_16;
  }

  if (!*(a1 + 48))
  {
LABEL_26:
    v35 = (off_2A1B71BE0)(&off_2A1B71BE0, a2, a3, a4, a5, a6, a7, a8);
    result = 0;
    v36 = "not BMP";
    goto LABEL_27;
  }

  v17 = (a1 + 56);
  v18 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
  *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
  if (v18)
  {
    v19 = &v17[v18];
    v16 = *v17;
  }

  else
  {
    v16 = 0;
    *(a1 + 48) = 0;
    v19 = (a1 + 57);
    *(a1 + 56) = 0;
  }

  *(a1 + 192) = a1 + 57;
  *(a1 + 200) = v19;
LABEL_16:
  if (v16 != 77)
  {
    goto LABEL_26;
  }

  sub_29AB538DC(a1);
  sub_29AB538DC(a1);
  sub_29AB538DC(a1);
  sub_29AB538DC(a1);
  v20 = sub_29AB538DC(a1);
  *(a2 + 4) = v20 | (sub_29AB538DC(a1) << 16);
  v21 = sub_29AB538DC(a1);
  v22 = sub_29AB538DC(a1);
  *(a2 + 12) = 0;
  v30 = v21 | (v22 << 16);
  *(a2 + 8) = v30;
  *(a2 + 20) = 0;
  *(a2 + 32) = 14;
  if ((*(a2 + 4) & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

  if (v30 <= 55)
  {
    if (v30 == 12)
    {
      *a1 = sub_29AB538DC(a1);
      v33 = sub_29AB538DC(a1);
LABEL_23:
      *(a1 + 4) = v33;
      if (sub_29AB538DC(a1) == 1)
      {
        *a2 = sub_29AB538DC(a1);
        if (v30 == 12)
        {
          return 1;
        }

        v37 = sub_29AB538DC(a1);
        v38 = v37 | (sub_29AB538DC(a1) << 16);
        if ((v38 - 1) <= 1)
        {
          v35 = (off_2A1B71BE0)(&off_2A1B71BE0, v23, v24, v25, v26, v27, v28, v29);
          result = 0;
          v36 = "BMP RLE";
          goto LABEL_27;
        }

        if (v38 >= 4)
        {
          v35 = (off_2A1B71BE0)(&off_2A1B71BE0, v23, v24, v25, v26, v27, v28, v29);
          result = 0;
          v36 = "BMP JPEG/PNG";
          goto LABEL_27;
        }

        if (v38 != 3 || *a2 == 16 || *a2 == 32)
        {
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          if (v30 > 107)
          {
            *(a2 + 12) = sub_29AB540EC(a1);
            *(a2 + 16) = sub_29AB540EC(a1);
            *(a2 + 20) = sub_29AB540EC(a1);
            *(a2 + 24) = sub_29AB540EC(a1);
            if (v38 != 3)
            {
              sub_29AB54120(a2, v38);
            }

            sub_29AB540EC(a1);
            v42 = 12;
            do
            {
              sub_29AB538DC(a1);
              sub_29AB538DC(a1);
              --v42;
            }

            while (v42);
            if (v30 != 108)
            {
              sub_29AB540EC(a1);
              sub_29AB540EC(a1);
              sub_29AB540EC(a1);
              sub_29AB540EC(a1);
            }

            return 1;
          }

          if (v30 != 40)
          {
            sub_29AB540EC(a1);
            sub_29AB540EC(a1);
            sub_29AB540EC(a1);
            sub_29AB540EC(a1);
          }

          v39 = *a2;
          if (*a2 != 32 && v39 != 16)
          {
            return 1;
          }

          if (!v38)
          {
            if (v39 == 32)
            {
              *(a2 + 12) = xmmword_29B6C2CD0;
              *(a2 + 28) = 0;
            }

            else if (v39 == 16)
            {
              *(a2 + 12) = 0x3E000007C00;
              *(a2 + 20) = 31;
            }

            else
            {
              *(a2 + 12) = 0;
              *(a2 + 20) = 0;
            }

            return 1;
          }

          if (v38 == 3)
          {
            *(a2 + 12) = sub_29AB540EC(a1);
            *(a2 + 16) = sub_29AB540EC(a1);
            v40 = sub_29AB540EC(a1);
            *(a2 + 20) = v40;
            *(a2 + 32) += 12;
            v41 = *(a2 + 16);
            if (*(a2 + 12) != v41 || v41 != v40)
            {
              return 1;
            }
          }
        }
      }

LABEL_55:
      v35 = (off_2A1B71BE0)(&off_2A1B71BE0, v23, v24, v25, v26, v27, v28, v29);
      result = 0;
      v36 = "bad BMP";
      goto LABEL_27;
    }

    if (v30 == 40)
    {
LABEL_22:
      v31 = sub_29AB538DC(a1);
      *a1 = v31 | (sub_29AB538DC(a1) << 16);
      v32 = sub_29AB538DC(a1);
      v33 = v32 | (sub_29AB538DC(a1) << 16);
      goto LABEL_23;
    }
  }

  else if (v30 == 56 || v30 == 108 || v30 == 124)
  {
    goto LABEL_22;
  }

  v35 = (off_2A1B71BE0)(&off_2A1B71BE0, v23, v24, v25, v26, v27, v28, v29);
  result = 0;
  v36 = "unknown BMP";
LABEL_27:
  *v35 = v36;
  return result;
}