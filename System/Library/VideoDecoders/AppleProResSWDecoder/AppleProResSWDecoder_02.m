double from_422_to_2vuy<4,2,(AlphaOutputMethod)0,false>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t a5)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  if (v6 < 2)
  {
    v24 = a2 + 1;
    v25 = a2 + 2;
    v26 = a2 + 3;
    v27 = a2 + 4;
    v28 = a2 + 5;
    v29 = a2 + 6;
    v30 = a2 + 7;
    v31 = &a1[v5];
    v33 = a4 - v6;
    if (!a4)
    {
      return *a5.i64;
    }

LABEL_13:
    if (v6 == 1)
    {
      a5 = vqmovn_high_s16(vqmovn_s16(*v25), *v26);
      v34.i64[0] = 0x8080808080808080;
      v34.i64[1] = 0x8080808080808080;
      v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v34);
      v54.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v35, vdupq_laneq_s64(v35, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
      *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
      v54.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
      vst2_s8(v31, v54);
    }

    if (v33 < 2)
    {
      v38 = a1;
      if (v33 != 1)
      {
        return *a5.i64;
      }
    }

    else
    {
      a5.i16[0] = -32640;
      a5.i8[2] = 0x80;
      a5.i8[3] = 0x80;
      a5.i8[4] = 0x80;
      a5.i8[5] = 0x80;
      a5.i8[6] = 0x80;
      a5.i8[7] = 0x80;
      a5.i8[8] = 0x80;
      a5.i8[9] = 0x80;
      a5.i8[10] = 0x80;
      a5.i8[11] = 0x80;
      a5.i8[12] = 0x80;
      a5.i8[13] = 0x80;
      a5.i8[14] = 0x80;
      a5.i8[15] = 0x80;
      v36.i64[0] = 0x101010101010101;
      v36.i64[1] = 0x101010101010101;
      v37.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v37.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v38 = a1;
      do
      {
        v39 = *a2++;
        v40 = v39;
        v41 = *v24++;
        v42 = vqmovn_high_s16(vqmovn_s16(v40), v41);
        v43 = *v27++;
        v44 = v43;
        v45 = *v28++;
        v46 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), a5);
        v47 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v42, vrev64q_s32(v42)), a5), v36), v37);
        v48 = vminq_u8(vmaxq_u8(vzip1q_s8(v46, vdupq_laneq_s64(v46, 1)), v36), v37);
        vst2_s8(v38, *(&v47 - 8));
        v38 += v5;
        *&a1[a3] = vzip2q_s8(v48, v47);
        v49 = v33 - 2;
        a1 = v38;
        v50 = v33 > 3;
        v33 -= 2;
      }

      while (v50);
      if (v49 != 1)
      {
        return *a5.i64;
      }
    }

    a5 = vqmovn_high_s16(vqmovn_s16(*a2), *v24);
    v51.i64[0] = 0x8080808080808080;
    v51.i64[1] = 0x8080808080808080;
    v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v27), *v28), v51);
    v55.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v52, vdupq_laneq_s64(v52, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
    *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
    v55.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
    vst2_s8(v38, v55);
    return *a5.i64;
  }

  a5.i16[0] = -32640;
  a5.i8[2] = 0x80;
  a5.i8[3] = 0x80;
  a5.i8[4] = 0x80;
  a5.i8[5] = 0x80;
  a5.i8[6] = 0x80;
  a5.i8[7] = 0x80;
  a5.i8[8] = 0x80;
  a5.i8[9] = 0x80;
  a5.i8[10] = 0x80;
  a5.i8[11] = 0x80;
  a5.i8[12] = 0x80;
  a5.i8[13] = 0x80;
  a5.i8[14] = 0x80;
  a5.i8[15] = 0x80;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v10 = a4;
  v11 = a2;
  do
  {
    v12 = v11[1];
    ++v11;
    v13 = vqmovn_high_s16(vqmovn_s16(*a2), v12);
    v14 = vuzp1q_s32(v13, vrev64q_s32(v13));
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), a5);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(v14, a5), v8), v9);
    v17 = vminq_u8(vmaxq_u8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v8), v9);
    v18 = a1;
    vst2_s8(v18, *(&v16 - 8));
    v7 = a3 + v5;
    v19 = &v18[v7];
    *&a1[a3] = vzip2q_s8(v17, v16);
    a1 += v5;
    v20 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), a5);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v20, vrev64q_s32(v20)), a5), v8), v9);
    v23 = vminq_u8(vmaxq_u8(vzip1q_s8(v21, vdupq_laneq_s64(v21, 1)), v8), v9);
    vst2_s8(a1, *(&v22 - 8));
    *v19 = vzip2q_s8(v23, v22);
    v10 -= 2;
    a2 = v11;
  }

  while (v10 > 3);
  v24 = v11 + 1;
  v25 = v11 + 2;
  v26 = v11 + 3;
  v27 = v11 + 4;
  v28 = v11 + 5;
  v29 = v11 + 6;
  v30 = v11 + 7;
  v31 = &a1[v5];
  v6 = v10 - 2;
  if (a4 <= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = a4;
  }

  v33 = v10 - v32 + 2;
  a2 = v11;
  if (v33 + v6)
  {
    goto LABEL_13;
  }

  return *a5.i64;
}

double from_422_to_2vuy<4,2,(AlphaOutputMethod)0,true>(char *a1, int16x8_t *a2, int a3, int a4, int8x16_t a5)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  if (v6 < 2)
  {
    v24 = a2 + 1;
    v25 = a2 + 2;
    v26 = a2 + 3;
    v27 = a2 + 4;
    v28 = a2 + 5;
    v29 = a2 + 6;
    v30 = a2 + 7;
    v31 = &a1[v5];
    v33 = a4 - v6;
    if (!a4)
    {
      return *a5.i64;
    }

LABEL_13:
    if (v6 == 1)
    {
      a5 = vqmovn_high_s16(vqmovn_s16(*v25), *v26);
      v34.i64[0] = 0x8080808080808080;
      v34.i64[1] = 0x8080808080808080;
      v35 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v29), *v30), v34);
      v54.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v35, vdupq_laneq_s64(v35, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
      *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
      v54.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
      vst2_s8(v31, v54);
    }

    if (v33 < 2)
    {
      v38 = a1;
      if (v33 != 1)
      {
        return *a5.i64;
      }
    }

    else
    {
      a5.i16[0] = -32640;
      a5.i8[2] = 0x80;
      a5.i8[3] = 0x80;
      a5.i8[4] = 0x80;
      a5.i8[5] = 0x80;
      a5.i8[6] = 0x80;
      a5.i8[7] = 0x80;
      a5.i8[8] = 0x80;
      a5.i8[9] = 0x80;
      a5.i8[10] = 0x80;
      a5.i8[11] = 0x80;
      a5.i8[12] = 0x80;
      a5.i8[13] = 0x80;
      a5.i8[14] = 0x80;
      a5.i8[15] = 0x80;
      v36.i64[0] = 0x101010101010101;
      v36.i64[1] = 0x101010101010101;
      v37.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v37.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v38 = a1;
      do
      {
        v39 = *a2++;
        v40 = v39;
        v41 = *v24++;
        v42 = vqmovn_high_s16(vqmovn_s16(v40), v41);
        v43 = *v27++;
        v44 = v43;
        v45 = *v28++;
        v46 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), a5);
        v47 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v42, vrev64q_s32(v42)), a5), v36), v37);
        v48 = vminq_u8(vmaxq_u8(vzip1q_s8(v46, vdupq_laneq_s64(v46, 1)), v36), v37);
        vst2_s8(v38, *(&v47 - 8));
        v38 += v5;
        *&a1[a3] = vzip2q_s8(v48, v47);
        v49 = v33 - 2;
        a1 = v38;
        v50 = v33 > 3;
        v33 -= 2;
      }

      while (v50);
      if (v49 != 1)
      {
        return *a5.i64;
      }
    }

    a5 = vqmovn_high_s16(vqmovn_s16(*a2), *v24);
    v51.i64[0] = 0x8080808080808080;
    v51.i64[1] = 0x8080808080808080;
    v52 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v27), *v28), v51);
    v55.val[0] = vmin_u8(vmax_u8(*&vzip1q_s8(v52, vdupq_laneq_s64(v52, 1)), 0x101010101010101), 0xFEFEFEFEFEFEFEFELL);
    *a5.i8 = vmax_u8(veor_s8(*&vuzp1q_s32(a5, vrev64q_s32(a5)), 0x8080808080808080), 0x101010101010101);
    v55.val[1] = vmin_u8(*a5.i8, 0xFEFEFEFEFEFEFEFELL);
    vst2_s8(v38, v55);
    return *a5.i64;
  }

  a5.i16[0] = -32640;
  a5.i8[2] = 0x80;
  a5.i8[3] = 0x80;
  a5.i8[4] = 0x80;
  a5.i8[5] = 0x80;
  a5.i8[6] = 0x80;
  a5.i8[7] = 0x80;
  a5.i8[8] = 0x80;
  a5.i8[9] = 0x80;
  a5.i8[10] = 0x80;
  a5.i8[11] = 0x80;
  a5.i8[12] = 0x80;
  a5.i8[13] = 0x80;
  a5.i8[14] = 0x80;
  a5.i8[15] = 0x80;
  v8.i64[0] = 0x101010101010101;
  v8.i64[1] = 0x101010101010101;
  v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v10 = a4;
  v11 = a2;
  do
  {
    v12 = v11[1];
    ++v11;
    v13 = vqmovn_high_s16(vqmovn_s16(*a2), v12);
    v14 = vuzp1q_s32(v13, vrev64q_s32(v13));
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), a5);
    v16 = vminq_u8(vmaxq_u8(veorq_s8(v14, a5), v8), v9);
    v17 = vminq_u8(vmaxq_u8(vzip1q_s8(v15, vdupq_laneq_s64(v15, 1)), v8), v9);
    v18 = a1;
    vst2_s8(v18, *(&v16 - 8));
    v7 = a3 + v5;
    v19 = &v18[v7];
    *&a1[a3] = vzip2q_s8(v17, v16);
    a1 += v5;
    v20 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), a5);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vuzp1q_s32(v20, vrev64q_s32(v20)), a5), v8), v9);
    v23 = vminq_u8(vmaxq_u8(vzip1q_s8(v21, vdupq_laneq_s64(v21, 1)), v8), v9);
    vst2_s8(a1, *(&v22 - 8));
    *v19 = vzip2q_s8(v23, v22);
    v10 -= 2;
    a2 = v11;
  }

  while (v10 > 3);
  v24 = v11 + 1;
  v25 = v11 + 2;
  v26 = v11 + 3;
  v27 = v11 + 4;
  v28 = v11 + 5;
  v29 = v11 + 6;
  v30 = v11 + 7;
  v31 = &a1[v5];
  v6 = v10 - 2;
  if (a4 <= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = a4;
  }

  v33 = v10 - v32 + 2;
  a2 = v11;
  if (v33 + v6)
  {
    goto LABEL_13;
  }

  return *a5.i64;
}

void *from_422_to_2vuy<2,4,(AlphaOutputMethod)0,false>(void *result, int16x8_t *a2, int a3, int a4)
{
  v4 = (result + 4 * a3);
  if (a4 == 8)
  {
    v5 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v6.i64[0] = 0x8080808080808080;
    v6.i64[1] = 0x8080808080808080;
    v7 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v6);
    v8.i64[0] = 0x101010101010101;
    v8.i64[1] = 0x101010101010101;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v5, vdupq_laneq_s64(v5, 1)), v6), v8), v9);
    v11 = vminq_u8(vmaxq_u8(vzip1q_s8(v7, vdupq_laneq_s64(v7, 1)), v8), v9);
    v12 = vzip1q_s8(v11, v10);
    *result = v12.i64[0];
    *(result + a3) = v12.i64[1];
    v13 = (result + 2 * a3);
    v14 = vzip2q_s8(v11, v10);
    *v13 = v14.i64[0];
    *(v13 + a3) = v14.i64[1];
    v15 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v6);
    v17 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v15, vdupq_laneq_s64(v15, 1)), v6), v8), v9);
    v18 = vminq_u8(vmaxq_u8(vzip1q_s8(v16, vdupq_laneq_s64(v16, 1)), v8), v9);
    v19 = vzip1q_s8(v18, v17);
    *v4 = v19.i64[0];
    *(v4 + a3) = v19.i64[1];
    v4 = (v4 + 2 * a3);
    v20 = vzip2q_s8(v18, v17);
LABEL_3:
    *v4 = v20.i64[0];
    *(v4 + a3) = v20.i64[1];
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v36 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v37.i64[0] = 0x8080808080808080;
      v37.i64[1] = 0x8080808080808080;
      v38 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v37);
      v39 = vzip1q_s8(v38, vdupq_laneq_s64(v38, 1));
      v40 = veorq_s8(vzip1q_s16(v36, vdupq_laneq_s64(v36, 1)), v37);
      v37.i64[0] = 0x101010101010101;
      v37.i64[1] = 0x101010101010101;
      v41.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v41.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v42 = vminq_u8(vmaxq_u8(v40, v37), v41);
      v43 = vminq_u8(vmaxq_u8(v39, v37), v41);
      v44 = vzip1q_s8(v43, v42);
      if (a4 < 3)
      {
        *result = v44.i64[0];
        if (a4 == 2)
        {
          *(result + a3) = v44.i64[1];
        }
      }

      else
      {
        *result = v44.i64[0];
        *(result + a3) = v44.i64[1];
        v4 = (result + 2 * a3);
        v20 = vzip2q_s8(v43, v42);
        if (a4 != 3)
        {
          goto LABEL_3;
        }

        *v4 = v20.i64[0];
      }
    }
  }

  else
  {
    v21 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v22.i64[0] = 0x8080808080808080;
    v22.i64[1] = 0x8080808080808080;
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v22);
    v24.i64[0] = 0x101010101010101;
    v24.i64[1] = 0x101010101010101;
    v25.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v25.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v26 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v21, vdupq_laneq_s64(v21, 1)), v22), v24), v25);
    v27 = vminq_u8(vmaxq_u8(vzip1q_s8(v23, vdupq_laneq_s64(v23, 1)), v24), v25);
    v28 = vzip1q_s8(v27, v26);
    *result = v28.i64[0];
    *(result + a3) = v28.i64[1];
    v29 = (result + 2 * a3);
    v30 = vzip2q_s8(v27, v26);
    *v29 = v30.i64[0];
    *(v29 + a3) = v30.i64[1];
    v31 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v32 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v22);
    v33 = vzip1q_s8(v32, vdupq_laneq_s64(v32, 1));
    v34 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v31, vdupq_laneq_s64(v31, 1)), v22), v24), v25);
    v35 = vminq_u8(vmaxq_u8(v33, v24), v25);
    v20 = vzip1q_s8(v35, v34);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        goto LABEL_3;
      }

      *v4 = v20.i64[0];
    }

    else
    {
      *v4 = v20.i64[0];
      *(v4 + a3) = v20.i64[1];
      v4 = (v4 + 2 * a3);
      v20 = vzip2q_s8(v35, v34);
      if (a4 != 7)
      {
        goto LABEL_3;
      }

      *v4 = v20.i64[0];
    }
  }

  return result;
}

void *from_422_to_2vuy<2,4,(AlphaOutputMethod)0,true>(void *result, int16x8_t *a2, int a3, int a4)
{
  v4 = (result + 4 * a3);
  if (a4 == 8)
  {
    v5 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v6.i64[0] = 0x8080808080808080;
    v6.i64[1] = 0x8080808080808080;
    v7 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v6);
    v8.i64[0] = 0x101010101010101;
    v8.i64[1] = 0x101010101010101;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v5, vdupq_laneq_s64(v5, 1)), v6), v8), v9);
    v11 = vminq_u8(vmaxq_u8(vzip1q_s8(v7, vdupq_laneq_s64(v7, 1)), v8), v9);
    v12 = vzip1q_s8(v11, v10);
    *result = v12.i64[0];
    *(result + a3) = v12.i64[1];
    v13 = (result + 2 * a3);
    v14 = vzip2q_s8(v11, v10);
    *v13 = v14.i64[0];
    *(v13 + a3) = v14.i64[1];
    v15 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v6);
    v17 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v15, vdupq_laneq_s64(v15, 1)), v6), v8), v9);
    v18 = vminq_u8(vmaxq_u8(vzip1q_s8(v16, vdupq_laneq_s64(v16, 1)), v8), v9);
    v19 = vzip1q_s8(v18, v17);
    *v4 = v19.i64[0];
    *(v4 + a3) = v19.i64[1];
    v4 = (v4 + 2 * a3);
    v20 = vzip2q_s8(v18, v17);
LABEL_3:
    *v4 = v20.i64[0];
    *(v4 + a3) = v20.i64[1];
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v36 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v37.i64[0] = 0x8080808080808080;
      v37.i64[1] = 0x8080808080808080;
      v38 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v37);
      v39 = vzip1q_s8(v38, vdupq_laneq_s64(v38, 1));
      v40 = veorq_s8(vzip1q_s16(v36, vdupq_laneq_s64(v36, 1)), v37);
      v37.i64[0] = 0x101010101010101;
      v37.i64[1] = 0x101010101010101;
      v41.i64[0] = 0xFEFEFEFEFEFEFEFELL;
      v41.i64[1] = 0xFEFEFEFEFEFEFEFELL;
      v42 = vminq_u8(vmaxq_u8(v40, v37), v41);
      v43 = vminq_u8(vmaxq_u8(v39, v37), v41);
      v44 = vzip1q_s8(v43, v42);
      if (a4 < 3)
      {
        *result = v44.i64[0];
        if (a4 == 2)
        {
          *(result + a3) = v44.i64[1];
        }
      }

      else
      {
        *result = v44.i64[0];
        *(result + a3) = v44.i64[1];
        v4 = (result + 2 * a3);
        v20 = vzip2q_s8(v43, v42);
        if (a4 != 3)
        {
          goto LABEL_3;
        }

        *v4 = v20.i64[0];
      }
    }
  }

  else
  {
    v21 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v22.i64[0] = 0x8080808080808080;
    v22.i64[1] = 0x8080808080808080;
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v22);
    v24.i64[0] = 0x101010101010101;
    v24.i64[1] = 0x101010101010101;
    v25.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v25.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v26 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v21, vdupq_laneq_s64(v21, 1)), v22), v24), v25);
    v27 = vminq_u8(vmaxq_u8(vzip1q_s8(v23, vdupq_laneq_s64(v23, 1)), v24), v25);
    v28 = vzip1q_s8(v27, v26);
    *result = v28.i64[0];
    *(result + a3) = v28.i64[1];
    v29 = (result + 2 * a3);
    v30 = vzip2q_s8(v27, v26);
    *v29 = v30.i64[0];
    *(v29 + a3) = v30.i64[1];
    v31 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v32 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v22);
    v33 = vzip1q_s8(v32, vdupq_laneq_s64(v32, 1));
    v34 = vminq_u8(vmaxq_u8(veorq_s8(vzip1q_s16(v31, vdupq_laneq_s64(v31, 1)), v22), v24), v25);
    v35 = vminq_u8(vmaxq_u8(v33, v24), v25);
    v20 = vzip1q_s8(v35, v34);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        goto LABEL_3;
      }

      *v4 = v20.i64[0];
    }

    else
    {
      *v4 = v20.i64[0];
      *(v4 + a3) = v20.i64[1];
      v4 = (v4 + 2 * a3);
      v20 = vzip2q_s8(v35, v34);
      if (a4 != 7)
      {
        goto LABEL_3;
      }

      *v4 = v20.i64[0];
    }
  }

  return result;
}

double from_422_to_2vuy<2,2,(AlphaOutputMethod)0,false>(void *a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16))));
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v9);
  *a8.i8 = vmovn_s64(v10);
  v11 = vzip1q_s8(a8, vuzp2q_s32(v10, v8));
  v12 = veorq_s8(v8, v9);
  v9.i64[0] = 0x101010101010101;
  v9.i64[1] = 0x101010101010101;
  v13.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v13.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v14 = vminq_u8(vmaxq_u8(v12, v9), v13);
  v15 = vminq_u8(vmaxq_u8(v11, v9), v13);
  if (a4 == 4)
  {
    v16 = vzip1q_s8(v15, v14);
    *a1 = v16.i64[0];
    *(a1 + a3) = v16.i64[1];
    v17 = (a1 + 2 * a3);
    v14 = vzip2q_s8(v15, v14);
    *v17 = v14.i64[0];
    *(v17 + a3) = v14.i64[1];
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      v14.i64[0] = vzip1q_s8(v15, v14).u64[0];
      *a1 = v14.i64[0];
    }
  }

  else
  {
    v18 = vzip1q_s8(v15, v14);
    *a1 = v18.i64[0];
    *(a1 + a3) = v18.i64[1];
    if (a4 == 3)
    {
      v14.i64[0] = vzip2q_s8(v15, v14).u64[0];
      *(a1 + 2 * a3) = v14.i64[0];
    }
  }

  return *v14.i64;
}

double from_422_to_2vuy<2,2,(AlphaOutputMethod)0,true>(void *a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16))));
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v9);
  *a8.i8 = vmovn_s64(v10);
  v11 = vzip1q_s8(a8, vuzp2q_s32(v10, v8));
  v12 = veorq_s8(v8, v9);
  v9.i64[0] = 0x101010101010101;
  v9.i64[1] = 0x101010101010101;
  v13.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v13.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v14 = vminq_u8(vmaxq_u8(v12, v9), v13);
  v15 = vminq_u8(vmaxq_u8(v11, v9), v13);
  if (a4 == 4)
  {
    v16 = vzip1q_s8(v15, v14);
    *a1 = v16.i64[0];
    *(a1 + a3) = v16.i64[1];
    v17 = (a1 + 2 * a3);
    v14 = vzip2q_s8(v15, v14);
    *v17 = v14.i64[0];
    *(v17 + a3) = v14.i64[1];
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      v14.i64[0] = vzip1q_s8(v15, v14).u64[0];
      *a1 = v14.i64[0];
    }
  }

  else
  {
    v18 = vzip1q_s8(v15, v14);
    *a1 = v18.i64[0];
    *(a1 + a3) = v18.i64[1];
    if (a4 == 3)
    {
      v14.i64[0] = vzip2q_s8(v15, v14).u64[0];
      *(a1 + 2 * a3) = v14.i64[0];
    }
  }

  return *v14.i64;
}

int8x8_t from_422_to_2vuy<1,2,(AlphaOutputMethod)0,false>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  v4 = a2 + 10;
  v5 = a2 + 2;
  if (a4 > 0)
  {
    v6.i16[0] = a2[8];
    v6.i16[1] = *a2;
    v6.i16[2] = *v4;
    v6.i16[3] = *v5;
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    v4 = a2 + 11;
    a1 = (a1 + a3);
    v5 = a2 + 3;
    if (a4 != 1)
    {
      v8.i16[0] = a2[9];
      v8.i16[1] = a2[1];
      v8.i16[2] = *v4;
      v8.i16[3] = *v5;
      v9 = veor_s8(vmax_s16(vmin_s16(v8, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v9, v9);
      *a1 = result.i32[0];
      v4 = a2 + 12;
      a1 = (a1 + a3);
      v5 = a2 + 4;
    }
  }

  if (a4 <= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10 - 2;
  if (v11)
  {
    v12.i16[0] = *v4;
    v12.i16[1] = *v5;
    v12.i16[2] = v4[2];
    v12.i16[3] = v5[2];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v12, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (v11 != 1)
    {
      v13.i16[0] = v4[1];
      v13.i16[1] = v5[1];
      v13.i16[2] = v4[3];
      v13.i16[3] = v5[3];
      v14 = veor_s8(vmax_s16(vmin_s16(v13, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v14, v14);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

int8x8_t from_422_to_2vuy<1,2,(AlphaOutputMethod)0,true>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  v4 = a2 + 10;
  v5 = a2 + 2;
  if (a4 > 0)
  {
    v6.i16[0] = a2[8];
    v6.i16[1] = *a2;
    v6.i16[2] = *v4;
    v6.i16[3] = *v5;
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    v4 = a2 + 11;
    a1 = (a1 + a3);
    v5 = a2 + 3;
    if (a4 != 1)
    {
      v8.i16[0] = a2[9];
      v8.i16[1] = a2[1];
      v8.i16[2] = *v4;
      v8.i16[3] = *v5;
      v9 = veor_s8(vmax_s16(vmin_s16(v8, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v9, v9);
      *a1 = result.i32[0];
      v4 = a2 + 12;
      a1 = (a1 + a3);
      v5 = a2 + 4;
    }
  }

  if (a4 <= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10 - 2;
  if (v11)
  {
    v12.i16[0] = *v4;
    v12.i16[1] = *v5;
    v12.i16[2] = v4[2];
    v12.i16[3] = v5[2];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v12, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (v11 != 1)
    {
      v13.i16[0] = v4[1];
      v13.i16[1] = v5[1];
      v13.i16[2] = v4[3];
      v13.i16[3] = v5[3];
      v14 = veor_s8(vmax_s16(vmin_s16(v13, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v14, v14);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

int8x8_t from_422_to_2vuy<1,1,(AlphaOutputMethod)0,false>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v4, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      v7 = veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v7, v7);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

int8x8_t from_422_to_2vuy<1,1,(AlphaOutputMethod)0,true>(_DWORD *a1, __int16 *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4.i16[0] = a2[4];
    v4.i16[1] = *a2;
    v4.i16[2] = a2[5];
    v4.i16[3] = a2[1];
    result = 0x7E007E007E007ELL;
    *a1 = vuzp1_s8(veor_s8(vmax_s16(vmin_s16(v4, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080), 0x7E007E007E007ELL).u32[0];
    if (a4 != 1)
    {
      v6.i16[0] = a2[6];
      v6.i16[1] = a2[2];
      v6.i16[2] = a2[7];
      v6.i16[3] = a2[3];
      v7 = veor_s8(vmax_s16(vmin_s16(v6, 0x7E007E007E007ELL), 0x7E007E007E007ELL), 0x80008000800080);
      result = vuzp1_s8(v7, v7);
      *(a1 + a3) = result.i32[0];
    }
  }

  return result;
}

int16x8_t *from_422_to_y408<8,8,(AlphaOutputMethod)1,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v31 = a2 + 8;
    v32 = a2 + 32;
    v33 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  do
  {
    v10 = a2 + 1;
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v9);
    v13 = vzip1q_s8(v12, v12);
    v14 = vzip2q_s8(v12, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9);
    v16 = vzip1q_s8(*a5, v15);
    v17 = vzip2q_s8(*a5, v15);
    v18 = vzip1q_s8(v13, v14);
    v19 = vzip2q_s8(v13, v14);
    *result = vzip1q_s16(v16, v18);
    result[1] = vzip2q_s16(v16, v18);
    result[2] = vzip1q_s16(v17, v19);
    result[3] = vzip2q_s16(v17, v19);
    result = (result + a3);
    --v7;
    v20 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v9);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9);
    v25 = vzip1q_s8(v20, v24);
    v26 = vzip1q_s8(v22, v23);
    v27 = v11;
    vst2_s16(v27, v25);
    v27 += 8;
    v28 = vzip2q_s8(v20, v24);
    v29 = vzip2q_s8(v22, v23);
    i16 = v11[2].i16;
    vst2_s16(i16, v28);
    *v27 = vzip2q_s16(v25, v26);
    v11[3] = vzip2q_s16(v28, v29);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v31 = v10 + 8;
  v32 = v10 + 32;
  v33 = v10 + 40;
  a2 = v10;
  if (v7 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v7 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37 = result[2].i16;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = v34[-2].i16;
      v41 = *v31++;
      v42 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v43 = *v32++;
      v44 = v43;
      v45 = *v33++;
      v46 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), v36);
      v47 = vzip1q_s8(v46, v46);
      v48 = vzip2q_s8(v46, v46);
      v49 = veorq_s8(v42, v36);
      v50 = vzip1q_s8(*a5, v49);
      v51 = vzip2q_s8(*a5, v49);
      v52 = vzip1q_s8(v47, v48);
      vst2_s16(v40, v50);
      v53 = vzip2q_s8(v47, v48);
      v34[-1] = vzip2q_s16(v50, v52);
      vst2_s16(v37, v51);
      v37 = (v37 + a3);
      v34[1] = vzip2q_s16(v51, v53);
      a5 = (a5 + a6);
      --v35;
      v34 = v37;
    }

    while (v35 > 1);
  }

  return result;
}

int16x8_t *from_422_to_y408<8,8,(AlphaOutputMethod)1,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v31 = a2 + 8;
    v32 = a2 + 32;
    v33 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  do
  {
    v10 = a2 + 1;
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v9);
    v13 = vzip1q_s8(v12, v12);
    v14 = vzip2q_s8(v12, v12);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9);
    v16 = vzip1q_s8(*a5, v15);
    v17 = vzip2q_s8(*a5, v15);
    v18 = vzip1q_s8(v13, v14);
    v19 = vzip2q_s8(v13, v14);
    *result = vzip1q_s16(v16, v18);
    result[1] = vzip2q_s16(v16, v18);
    result[2] = vzip1q_s16(v17, v19);
    result[3] = vzip2q_s16(v17, v19);
    result = (result + a3);
    --v7;
    v20 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v9);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9);
    v25 = vzip1q_s8(v20, v24);
    v26 = vzip1q_s8(v22, v23);
    v27 = v11;
    vst2_s16(v27, v25);
    v27 += 8;
    v28 = vzip2q_s8(v20, v24);
    v29 = vzip2q_s8(v22, v23);
    i16 = v11[2].i16;
    vst2_s16(i16, v28);
    *v27 = vzip2q_s16(v25, v26);
    v11[3] = vzip2q_s16(v28, v29);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v31 = v10 + 8;
  v32 = v10 + 32;
  v33 = v10 + 40;
  a2 = v10;
  if (v7 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v7 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37 = result[2].i16;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = v34[-2].i16;
      v41 = *v31++;
      v42 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v43 = *v32++;
      v44 = v43;
      v45 = *v33++;
      v46 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), v36);
      v47 = vzip1q_s8(v46, v46);
      v48 = vzip2q_s8(v46, v46);
      v49 = veorq_s8(v42, v36);
      v50 = vzip1q_s8(*a5, v49);
      v51 = vzip2q_s8(*a5, v49);
      v52 = vzip1q_s8(v47, v48);
      vst2_s16(v40, v50);
      v53 = vzip2q_s8(v47, v48);
      v34[-1] = vzip2q_s16(v50, v52);
      vst2_s16(v37, v51);
      v37 = (v37 + a3);
      v34[1] = vzip2q_s16(v51, v53);
      a5 = (a5 + a6);
      --v35;
      v34 = v37;
    }

    while (v35 > 1);
  }

  return result;
}

int16x8_t *from_422_to_y408<8,4,(AlphaOutputMethod)1,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v32 = a2 + 4;
    v33 = a2 + 16;
    v34 = a2 + 20;
    if (v8 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 4 * a3);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v10);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10);
    v17 = vzip1q_s8(*a5, v16);
    v18 = vzip2q_s8(*a5, v16);
    v19 = vzip1q_s8(v14, v15);
    v20 = vzip2q_s8(v14, v15);
    *result = vzip1q_s16(v17, v19);
    result[1] = vzip2q_s16(v17, v19);
    result[2] = vzip1q_s16(v18, v20);
    result[3] = vzip2q_s16(v18, v20);
    result = (result + a3);
    --v8;
    v21 = *(a5 + (8 * a6));
    a5 = (a5 + v6);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v10);
    v23 = vzip1q_s8(v22, v22);
    v24 = vzip2q_s8(v22, v22);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10);
    v26 = vzip1q_s8(v21, v25);
    v27 = vzip1q_s8(v23, v24);
    v28 = v12;
    vst2_s16(v28, v26);
    v28 += 8;
    v29 = vzip2q_s8(v21, v25);
    v30 = vzip2q_s8(v23, v24);
    i16 = v12[2].i16;
    vst2_s16(i16, v29);
    *v28 = vzip2q_s16(v26, v27);
    v12[3] = vzip2q_s16(v29, v30);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v32 = v11 + 4;
  v33 = v11 + 16;
  v34 = v11 + 20;
  a2 = v11;
  if (v8 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v8 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38 = result[2].i16;
    do
    {
      v39 = *a2++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vqmovn_high_s16(vqmovn_s16(v40), v42);
      v44 = *v33++;
      v45 = v44;
      v46 = *v34++;
      v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v45), v46), v37);
      v48 = vzip1q_s8(v47, v47);
      v49 = vzip2q_s8(v47, v47);
      v50 = veorq_s8(v43, v37);
      v51 = vzip1q_s8(*a5, v50);
      v52 = vzip2q_s8(*a5, v50);
      v53 = vzip1q_s8(v48, v49);
      vst2_s16(v41, v51);
      v54 = vzip2q_s8(v48, v49);
      v35[-1] = vzip2q_s16(v51, v53);
      vst2_s16(v38, v52);
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v52, v54);
      a5 = (a5 + v6);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_422_to_y408<8,4,(AlphaOutputMethod)1,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v32 = a2 + 4;
    v33 = a2 + 16;
    v34 = a2 + 20;
    if (v8 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 4 * a3);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v10);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10);
    v17 = vzip1q_s8(*a5, v16);
    v18 = vzip2q_s8(*a5, v16);
    v19 = vzip1q_s8(v14, v15);
    v20 = vzip2q_s8(v14, v15);
    *result = vzip1q_s16(v17, v19);
    result[1] = vzip2q_s16(v17, v19);
    result[2] = vzip1q_s16(v18, v20);
    result[3] = vzip2q_s16(v18, v20);
    result = (result + a3);
    --v8;
    v21 = *(a5 + (8 * a6));
    a5 = (a5 + v6);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v10);
    v23 = vzip1q_s8(v22, v22);
    v24 = vzip2q_s8(v22, v22);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10);
    v26 = vzip1q_s8(v21, v25);
    v27 = vzip1q_s8(v23, v24);
    v28 = v12;
    vst2_s16(v28, v26);
    v28 += 8;
    v29 = vzip2q_s8(v21, v25);
    v30 = vzip2q_s8(v23, v24);
    i16 = v12[2].i16;
    vst2_s16(i16, v29);
    *v28 = vzip2q_s16(v26, v27);
    v12[3] = vzip2q_s16(v29, v30);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v32 = v11 + 4;
  v33 = v11 + 16;
  v34 = v11 + 20;
  a2 = v11;
  if (v8 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v8 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38 = result[2].i16;
    do
    {
      v39 = *a2++;
      v40 = v39;
      v41 = v35[-2].i16;
      v42 = *v32++;
      v43 = vqmovn_high_s16(vqmovn_s16(v40), v42);
      v44 = *v33++;
      v45 = v44;
      v46 = *v34++;
      v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v45), v46), v37);
      v48 = vzip1q_s8(v47, v47);
      v49 = vzip2q_s8(v47, v47);
      v50 = veorq_s8(v43, v37);
      v51 = vzip1q_s8(*a5, v50);
      v52 = vzip2q_s8(*a5, v50);
      v53 = vzip1q_s8(v48, v49);
      vst2_s16(v41, v51);
      v54 = vzip2q_s8(v48, v49);
      v35[-1] = vzip2q_s16(v51, v53);
      vst2_s16(v38, v52);
      v38 = (v38 + a3);
      v35[1] = vzip2q_s16(v52, v54);
      a5 = (a5 + v6);
      --v36;
      v35 = v38;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t from_422_to_y408<2,4,(AlphaOutputMethod)1,false>(__int16 *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int16x8_t result)
{
  v7 = &a1[2 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11 = vzip1q_s16(v10, vdupq_laneq_s64(v10, 1));
    v10.i64[0] = 0x8080808080808080;
    v10.i64[1] = 0x8080808080808080;
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v10);
    v13 = vzip1q_s8(v12, v12);
    v14 = vzip2q_s8(v12, v12);
    v12.i64[0] = 0xFF000000FFLL;
    v12.i64[1] = 0xFF000000FFLL;
    v15 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v12)), vandq_s8(*(a5 + v9), v12))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v12)), vandq_s8(*(a5 + v9 + v9 + v9), v12)));
    v16 = veorq_s8(v11, v10);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    v19 = vzip1q_s8(v13, v14);
    v20 = vzip2q_s8(v13, v14);
    vst2_s16(a1, v17);
    v21 = (a1 + a3);
    *v21 = vzip2q_s16(v17, v19);
    v22 = (v21->i16 + a3);
    vst2_s16(v22, v18);
    v23 = (v22 + a3);
    *v23 = vzip2q_s16(v18, v20);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v10);
    v26 = vzip1q_s8(v25, v25);
    v27 = vzip2q_s8(v25, v25);
    v28 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v12)), vandq_s8(*(v8 + v9), v12))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v12)), vandq_s8(*(v8 + v9 + v9 + v9), v12)));
    v29 = veorq_s8(vzip1q_s16(v24, vdupq_laneq_s64(v24, 1)), v10);
    v30 = vzip1q_s8(v28, v29);
    v31 = vzip2q_s8(v28, v29);
    v32 = vzip1q_s8(v26, v27);
    v33 = vzip2q_s8(v26, v27);
    vst2_s16(v7, v30);
    v34 = (v7 + a3);
    *v34 = vzip2q_s16(v30, v32);
    v35 = (v34->i16 + a3);
    vst2_s16(v35, v31);
    v36 = (v35 + a3);
    result = vzip2q_s16(v31, v33);
    *v36 = result;
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v61 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v62 = vzip1q_s16(v61, vdupq_laneq_s64(v61, 1));
      v63.i64[0] = 0x8080808080808080;
      v63.i64[1] = 0x8080808080808080;
      v64 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v63);
      result = vzip1q_s8(v64, v64);
      v65 = vzip2q_s8(v64, v64);
      v66.i64[0] = 0xFF000000FFLL;
      v66.i64[1] = 0xFF000000FFLL;
      v67 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v66)), vandq_s8(*(a5 + v9), v66))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v66)), vandq_s8(*(a5 + v9 + v9 + v9), v66)));
      v68 = veorq_s8(v62, v63);
      v69 = vzip1q_s8(v67, v68);
      v70 = vzip1q_s8(result, v65);
      vst2_s16(a1, v69);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(v69, v70);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v58 = vzip2q_s8(result, v65);
        result = vzip2q_s8(v67, v68);
        *(a1 + a3) = vzip2q_s16(v69, v70);
        v7 = (a1 + a3 + a3);
        vst2_s16(v7, result);
        if (a4 == 4)
        {
LABEL_11:
          result = vzip2q_s16(result, v58);
          *(v7 + a3) = result;
        }
      }
    }
  }

  else
  {
    v37 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v38 = vzip1q_s16(v37, vdupq_laneq_s64(v37, 1));
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v39 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v37);
    v40 = vzip1q_s8(v39, v39);
    v41 = vzip2q_s8(v39, v39);
    v39.i64[0] = 0xFF000000FFLL;
    v39.i64[1] = 0xFF000000FFLL;
    v42 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v39)), vandq_s8(*(a5 + v9), v39))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v39)), vandq_s8(*(a5 + v9 + v9 + v9), v39)));
    v43 = veorq_s8(v38, v37);
    v44 = vzip1q_s8(v42, v43);
    v45 = vzip2q_s8(v42, v43);
    v46 = vzip1q_s8(v40, v41);
    v47 = vzip2q_s8(v40, v41);
    vst2_s16(a1, v44);
    v48 = (a1 + a3);
    *v48 = vzip2q_s16(v44, v46);
    v49 = (v48->i16 + a3);
    vst2_s16(v49, v45);
    v50 = (v49 + a3);
    *v50 = vzip2q_s16(v45, v47);
    v51 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v52 = vzip1q_s16(v51, vdupq_laneq_s64(v51, 1));
    v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v37);
    v54 = vzip1q_s8(v53, v53);
    v55 = vzip2q_s8(v53, v53);
    v56 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v39)), vandq_s8(*(v8 + v9), v39))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v39)), vandq_s8(*(v8 + v9 + v9 + v9), v39)));
    v57 = veorq_s8(v52, v37);
    result = vzip1q_s8(v56, v57);
    v58 = vzip1q_s8(v54, v55);
    vst2_s16(v7, result);
    if (a4 >= 7)
    {
      v71.val[1] = vzip2q_s8(v54, v55).u64[0];
      v71.val[0] = vzip2q_s8(v56, v57).u64[0];
      v59 = (v7 + a3);
      result = vzip2q_s16(result, v58);
      *v59 = result;
      v60 = (v59->i16 + a3);
      vst2_s16(v60, v71);
      return result;
    }

    if (a4 == 6)
    {
      goto LABEL_11;
    }
  }

  return result;
}

int16x8_t from_422_to_y408<2,4,(AlphaOutputMethod)1,true>(__int16 *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int16x8_t result)
{
  v7 = &a1[2 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11 = vzip1q_s16(v10, vdupq_laneq_s64(v10, 1));
    v10.i64[0] = 0x8080808080808080;
    v10.i64[1] = 0x8080808080808080;
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v10);
    v13 = vzip1q_s8(v12, v12);
    v14 = vzip2q_s8(v12, v12);
    v12.i64[0] = 0xFF000000FFLL;
    v12.i64[1] = 0xFF000000FFLL;
    v15 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v12)), vandq_s8(*(a5 + v9), v12))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v12)), vandq_s8(*(a5 + v9 + v9 + v9), v12)));
    v16 = veorq_s8(v11, v10);
    v17 = vzip1q_s8(v15, v16);
    v18 = vzip2q_s8(v15, v16);
    v19 = vzip1q_s8(v13, v14);
    v20 = vzip2q_s8(v13, v14);
    vst2_s16(a1, v17);
    v21 = (a1 + a3);
    *v21 = vzip2q_s16(v17, v19);
    v22 = (v21->i16 + a3);
    vst2_s16(v22, v18);
    v23 = (v22 + a3);
    *v23 = vzip2q_s16(v18, v20);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v10);
    v26 = vzip1q_s8(v25, v25);
    v27 = vzip2q_s8(v25, v25);
    v28 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v12)), vandq_s8(*(v8 + v9), v12))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v12)), vandq_s8(*(v8 + v9 + v9 + v9), v12)));
    v29 = veorq_s8(vzip1q_s16(v24, vdupq_laneq_s64(v24, 1)), v10);
    v30 = vzip1q_s8(v28, v29);
    v31 = vzip2q_s8(v28, v29);
    v32 = vzip1q_s8(v26, v27);
    v33 = vzip2q_s8(v26, v27);
    vst2_s16(v7, v30);
    v34 = (v7 + a3);
    *v34 = vzip2q_s16(v30, v32);
    v35 = (v34->i16 + a3);
    vst2_s16(v35, v31);
    v36 = (v35 + a3);
    result = vzip2q_s16(v31, v33);
    *v36 = result;
    return result;
  }

  if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v61 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v62 = vzip1q_s16(v61, vdupq_laneq_s64(v61, 1));
      v63.i64[0] = 0x8080808080808080;
      v63.i64[1] = 0x8080808080808080;
      v64 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v63);
      result = vzip1q_s8(v64, v64);
      v65 = vzip2q_s8(v64, v64);
      v66.i64[0] = 0xFF000000FFLL;
      v66.i64[1] = 0xFF000000FFLL;
      v67 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v66)), vandq_s8(*(a5 + v9), v66))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v66)), vandq_s8(*(a5 + v9 + v9 + v9), v66)));
      v68 = veorq_s8(v62, v63);
      v69 = vzip1q_s8(v67, v68);
      v70 = vzip1q_s8(result, v65);
      vst2_s16(a1, v69);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(v69, v70);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v58 = vzip2q_s8(result, v65);
        result = vzip2q_s8(v67, v68);
        *(a1 + a3) = vzip2q_s16(v69, v70);
        v7 = (a1 + a3 + a3);
        vst2_s16(v7, result);
        if (a4 == 4)
        {
LABEL_11:
          result = vzip2q_s16(result, v58);
          *(v7 + a3) = result;
        }
      }
    }
  }

  else
  {
    v37 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v38 = vzip1q_s16(v37, vdupq_laneq_s64(v37, 1));
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v39 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v37);
    v40 = vzip1q_s8(v39, v39);
    v41 = vzip2q_s8(v39, v39);
    v39.i64[0] = 0xFF000000FFLL;
    v39.i64[1] = 0xFF000000FFLL;
    v42 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v39)), vandq_s8(*(a5 + v9), v39))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v39)), vandq_s8(*(a5 + v9 + v9 + v9), v39)));
    v43 = veorq_s8(v38, v37);
    v44 = vzip1q_s8(v42, v43);
    v45 = vzip2q_s8(v42, v43);
    v46 = vzip1q_s8(v40, v41);
    v47 = vzip2q_s8(v40, v41);
    vst2_s16(a1, v44);
    v48 = (a1 + a3);
    *v48 = vzip2q_s16(v44, v46);
    v49 = (v48->i16 + a3);
    vst2_s16(v49, v45);
    v50 = (v49 + a3);
    *v50 = vzip2q_s16(v45, v47);
    v51 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v52 = vzip1q_s16(v51, vdupq_laneq_s64(v51, 1));
    v53 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v37);
    v54 = vzip1q_s8(v53, v53);
    v55 = vzip2q_s8(v53, v53);
    v56 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v39)), vandq_s8(*(v8 + v9), v39))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v39)), vandq_s8(*(v8 + v9 + v9 + v9), v39)));
    v57 = veorq_s8(v52, v37);
    result = vzip1q_s8(v56, v57);
    v58 = vzip1q_s8(v54, v55);
    vst2_s16(v7, result);
    if (a4 >= 7)
    {
      v71.val[1] = vzip2q_s8(v54, v55).u64[0];
      v71.val[0] = vzip2q_s8(v56, v57).u64[0];
      v59 = (v7 + a3);
      result = vzip2q_s16(result, v58);
      *v59 = result;
      v60 = (v59->i16 + a3);
      vst2_s16(v60, v71);
      return result;
    }

    if (a4 == 6)
    {
      goto LABEL_11;
    }
  }

  return result;
}

void from_422_to_y408<2,2,(AlphaOutputMethod)1,false>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v7);
  v9 = vuzp1q_s32(v8, vrev64q_s32(v8));
  v10 = vzip1q_s8(v9, v9);
  v11 = vzip2q_s8(v9, v9);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v12)), vandq_s8(*(a5 + v6), v12))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v12)), vandq_s8(*(a5 + v6 + v6 + v6), v12)));
  v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v7);
  v15 = vzip1q_s8(v13, v14);
  v16 = vzip2q_s8(v13, v14);
  v17 = vzip1q_s8(v10, v11);
  v18 = vzip2q_s8(v10, v11);
  if (a4 == 4)
  {
    v19 = a3;
    vst2_s16(a1, v15);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v15, v17);
    v21 = (v20->i16 + a3);
    vst2_s16(v21, v16);
    v22 = (v21 + v19);
    *v22 = vzip2q_s16(v16, v18);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v15);
    }
  }

  else
  {
    v23 = a3;
    vst2_s16(a1, v15);
    v24 = (a1 + v23);
    *v24 = vzip2q_s16(v15, v17);
    if (a4 == 3)
    {
      v25 = (v24->i16 + a3);
      vst2_s16(v25, v16);
    }
  }
}

void from_422_to_y408<2,2,(AlphaOutputMethod)1,true>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v7);
  v9 = vuzp1q_s32(v8, vrev64q_s32(v8));
  v10 = vzip1q_s8(v9, v9);
  v11 = vzip2q_s8(v9, v9);
  v12.i64[0] = 0xFF000000FFLL;
  v12.i64[1] = 0xFF000000FFLL;
  v13 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v12)), vandq_s8(*(a5 + v6), v12))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v12)), vandq_s8(*(a5 + v6 + v6 + v6), v12)));
  v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v7);
  v15 = vzip1q_s8(v13, v14);
  v16 = vzip2q_s8(v13, v14);
  v17 = vzip1q_s8(v10, v11);
  v18 = vzip2q_s8(v10, v11);
  if (a4 == 4)
  {
    v19 = a3;
    vst2_s16(a1, v15);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v15, v17);
    v21 = (v20->i16 + a3);
    vst2_s16(v21, v16);
    v22 = (v21 + v19);
    *v22 = vzip2q_s16(v16, v18);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v15);
    }
  }

  else
  {
    v23 = a3;
    vst2_s16(a1, v15);
    v24 = (a1 + v23);
    *v24 = vzip2q_s16(v15, v17);
    if (a4 == 3)
    {
      v25 = (v24->i16 + a3);
      vst2_s16(v25, v16);
    }
  }
}

int16x8_t *from_422_to_y408<8,8,(AlphaOutputMethod)2,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6 * 2);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v8);
    v12 = vzip1q_s8(v11, v11);
    v13 = vzip2q_s8(v11, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8);
    v15 = vzip1q_s8(v9, v14);
    v16 = vzip2q_s8(v9, v14);
    v17 = vzip1q_s8(v12, v13);
    v18 = vzip2q_s8(v12, v13);
    *result = vzip1q_s16(v15, v17);
    result[1] = vzip2q_s16(v15, v17);
    result[2] = vzip1q_s16(v16, v18);
    result[3] = vzip2q_s16(v16, v18);
    v19 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v8);
    v20 = vzip1q_s8(v19, v19);
    v21 = vzip2q_s8(v19, v19);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8);
    v23 = vzip1q_s8(v9, v22);
    v24 = vzip2q_s8(v9, v22);
    v25 = vzip1q_s8(v20, v21);
    v26 = vzip2q_s8(v20, v21);
    v27 = &result->i16[v6];
    vst2_s16(v27, v23);
    v27 += 8;
    v28 = &result[2].i16[v6];
    vst2_s16(v28, v24);
    v29 = a2 + 1;
    result = (result + a3);
    --v5;
    *v27 = vzip2q_s16(v23, v25);
    v10[3] = vzip2q_s16(v24, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v30 = v29 + 8;
  v31 = v29 + 32;
  v32 = v29 + 40;
  a2 = v29;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = *v30++;
      v41 = v40;
      v42 = v33[-2].i16;
      v43 = *v31++;
      v44 = v43;
      v45 = *v32++;
      v46 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), v35);
      v48 = vzip1q_s8(v47, v47);
      v49 = vzip2q_s8(v47, v47);
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = vzip1q_s8(v48, v49);
      vst2_s16(v42, v51);
      v54 = vzip2q_s8(v48, v49);
      v33[-1] = vzip2q_s16(v51, v53);
      vst2_s16(i16, v52);
      i16 = (i16 + a3);
      v33[1] = vzip2q_s16(v52, v54);
      --v34;
      v33 = i16;
    }

    while (v34 > 1);
  }

  return result;
}

int16x8_t *from_422_to_y408<8,8,(AlphaOutputMethod)2,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v30 = a2 + 8;
    v31 = a2 + 32;
    v32 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6 * 2);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v8);
    v12 = vzip1q_s8(v11, v11);
    v13 = vzip2q_s8(v11, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8);
    v15 = vzip1q_s8(v9, v14);
    v16 = vzip2q_s8(v9, v14);
    v17 = vzip1q_s8(v12, v13);
    v18 = vzip2q_s8(v12, v13);
    *result = vzip1q_s16(v15, v17);
    result[1] = vzip2q_s16(v15, v17);
    result[2] = vzip1q_s16(v16, v18);
    result[3] = vzip2q_s16(v16, v18);
    v19 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v8);
    v20 = vzip1q_s8(v19, v19);
    v21 = vzip2q_s8(v19, v19);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8);
    v23 = vzip1q_s8(v9, v22);
    v24 = vzip2q_s8(v9, v22);
    v25 = vzip1q_s8(v20, v21);
    v26 = vzip2q_s8(v20, v21);
    v27 = &result->i16[v6];
    vst2_s16(v27, v23);
    v27 += 8;
    v28 = &result[2].i16[v6];
    vst2_s16(v28, v24);
    v29 = a2 + 1;
    result = (result + a3);
    --v5;
    *v27 = vzip2q_s16(v23, v25);
    v10[3] = vzip2q_s16(v24, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v30 = v29 + 8;
  v31 = v29 + 32;
  v32 = v29 + 40;
  a2 = v29;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = *v30++;
      v41 = v40;
      v42 = v33[-2].i16;
      v43 = *v31++;
      v44 = v43;
      v45 = *v32++;
      v46 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), v35);
      v48 = vzip1q_s8(v47, v47);
      v49 = vzip2q_s8(v47, v47);
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = vzip1q_s8(v48, v49);
      vst2_s16(v42, v51);
      v54 = vzip2q_s8(v48, v49);
      v33[-1] = vzip2q_s16(v51, v53);
      vst2_s16(i16, v52);
      i16 = (i16 + a3);
      v33[1] = vzip2q_s16(v52, v54);
      --v34;
      v33 = i16;
    }

    while (v34 > 1);
  }

  return result;
}

int16x8_t *from_422_to_y408<8,4,(AlphaOutputMethod)2,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v30 = a2 + 4;
    v31 = a2 + 16;
    v32 = a2 + 20;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 2 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6 * 2);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v8);
    v12 = vzip1q_s8(v11, v11);
    v13 = vzip2q_s8(v11, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8);
    v15 = vzip1q_s8(v9, v14);
    v16 = vzip2q_s8(v9, v14);
    v17 = vzip1q_s8(v12, v13);
    v18 = vzip2q_s8(v12, v13);
    *result = vzip1q_s16(v15, v17);
    result[1] = vzip2q_s16(v15, v17);
    result[2] = vzip1q_s16(v16, v18);
    result[3] = vzip2q_s16(v16, v18);
    v19 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v8);
    v20 = vzip1q_s8(v19, v19);
    v21 = vzip2q_s8(v19, v19);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8);
    v23 = vzip1q_s8(v9, v22);
    v24 = vzip2q_s8(v9, v22);
    v25 = vzip1q_s8(v20, v21);
    v26 = vzip2q_s8(v20, v21);
    v27 = &result->i16[v6];
    vst2_s16(v27, v23);
    v27 += 8;
    v28 = &result[2].i16[v6];
    vst2_s16(v28, v24);
    v29 = a2 + 1;
    result = (result + a3);
    --v5;
    *v27 = vzip2q_s16(v23, v25);
    v10[3] = vzip2q_s16(v24, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v30 = v29 + 4;
  v31 = v29 + 16;
  v32 = v29 + 20;
  a2 = v29;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = *v30++;
      v41 = v40;
      v42 = v33[-2].i16;
      v43 = *v31++;
      v44 = v43;
      v45 = *v32++;
      v46 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), v35);
      v48 = vzip1q_s8(v47, v47);
      v49 = vzip2q_s8(v47, v47);
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = vzip1q_s8(v48, v49);
      vst2_s16(v42, v51);
      v54 = vzip2q_s8(v48, v49);
      v33[-1] = vzip2q_s16(v51, v53);
      vst2_s16(i16, v52);
      i16 = (i16 + a3);
      v33[1] = vzip2q_s16(v52, v54);
      --v34;
      v33 = i16;
    }

    while (v34 > 1);
  }

  return result;
}

int16x8_t *from_422_to_y408<8,4,(AlphaOutputMethod)2,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v30 = a2 + 4;
    v31 = a2 + 16;
    v32 = a2 + 20;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 2 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  do
  {
    v10 = (result + v6 * 2);
    v11 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v8);
    v12 = vzip1q_s8(v11, v11);
    v13 = vzip2q_s8(v11, v11);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8);
    v15 = vzip1q_s8(v9, v14);
    v16 = vzip2q_s8(v9, v14);
    v17 = vzip1q_s8(v12, v13);
    v18 = vzip2q_s8(v12, v13);
    *result = vzip1q_s16(v15, v17);
    result[1] = vzip2q_s16(v15, v17);
    result[2] = vzip1q_s16(v16, v18);
    result[3] = vzip2q_s16(v16, v18);
    v19 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v8);
    v20 = vzip1q_s8(v19, v19);
    v21 = vzip2q_s8(v19, v19);
    v22 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8);
    v23 = vzip1q_s8(v9, v22);
    v24 = vzip2q_s8(v9, v22);
    v25 = vzip1q_s8(v20, v21);
    v26 = vzip2q_s8(v20, v21);
    v27 = &result->i16[v6];
    vst2_s16(v27, v23);
    v27 += 8;
    v28 = &result[2].i16[v6];
    vst2_s16(v28, v24);
    v29 = a2 + 1;
    result = (result + a3);
    --v5;
    *v27 = vzip2q_s16(v23, v25);
    v10[3] = vzip2q_s16(v24, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v30 = v29 + 4;
  v31 = v29 + 16;
  v32 = v29 + 20;
  a2 = v29;
  if (v5 >= 1)
  {
LABEL_10:
    v33 = result + 2;
    v34 = v5 + 1;
    v35.i64[0] = 0x8080808080808080;
    v35.i64[1] = 0x8080808080808080;
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v38 = *a2++;
      v39 = v38;
      v40 = *v30++;
      v41 = v40;
      v42 = v33[-2].i16;
      v43 = *v31++;
      v44 = v43;
      v45 = *v32++;
      v46 = vqmovn_high_s16(vqmovn_s16(v39), v41);
      v47 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v44), v45), v35);
      v48 = vzip1q_s8(v47, v47);
      v49 = vzip2q_s8(v47, v47);
      v50 = veorq_s8(v46, v35);
      v51 = vzip1q_s8(v36, v50);
      v52 = vzip2q_s8(v36, v50);
      v53 = vzip1q_s8(v48, v49);
      vst2_s16(v42, v51);
      v54 = vzip2q_s8(v48, v49);
      v33[-1] = vzip2q_s16(v51, v53);
      vst2_s16(i16, v52);
      i16 = (i16 + a3);
      v33[1] = vzip2q_s16(v52, v54);
      --v34;
      v33 = i16;
    }

    while (v34 > 1);
  }

  return result;
}

int8x16_t from_422_to_y408<4,8,(AlphaOutputMethod)2,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v32 = a2 + 4;
    v33 = a2 + 8;
    v34 = a2 + 12;
    v35 = a2 + 16;
    v36 = a2 + 20;
    v37 = a2 + 24;
    v38 = a2 + 28;
    v39 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40 = vqmovn_high_s16(vqmovn_s16(*v33), *v34);
      *v40.i8 = vmovn_s64(v40);
      v41.i64[0] = 0x8080808080808080;
      v41.i64[1] = 0x8080808080808080;
      v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v37), *v38), v41);
      v43 = veorq_s8(v40, v41);
      v41.i64[0] = -1;
      v41.i64[1] = -1;
      v44 = vzip1q_s8(v41, v43);
      v45 = vzip1q_s8(vzip1q_s8(v42, v42), vzip2q_s8(v42, v42));
      v46 = vzip1q_s16(v44, v45);
      result = vzip2q_s16(v44, v45);
      *v39 = v46;
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v47 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v48.i64[0] = -1;
    v48.i64[1] = -1;
    do
    {
      v49 = v7;
      v50 = vqmovn_high_s16(vqmovn_s16(a2[v47]), v32[v47]);
      v51 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v35[v47]), v36[v47]), result);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = veorq_s8(vuzp1q_s32(v50, vrev64q_s32(v50)), result);
      v55 = vzip1q_s8(v48, v54);
      v56 = vzip1q_s8(v52, v53);
      *a1 = vzip1q_s16(v55, v56);
      a1[1] = vzip2q_s16(v55, v56);
      v57 = vzip2q_s8(v48, v54);
      v58 = vzip2q_s8(v52, v53);
      v59 = (a1->i16 + a3);
      vst2_s16(v59, v57);
      v59 += 8;
      *v59 = vzip2q_s16(v57, v58);
      a1 = (a1 + 2 * a3);
      v7 = v49 - 2;
      ++v47;
    }

    while (v49 > 3);
    a2 = (a2 + v47 * 16);
    v32 = (v32 + v47 * 16);
    v35 = (v35 + v47 * 16);
    v36 = (v36 + v47 * 16);
    if (v49 != 3)
    {
      return result;
    }

LABEL_18:
    v60 = vqmovn_high_s16(vqmovn_s16(*a2), *v32);
    *v60.i8 = vmovn_s64(v60);
    v61.i64[0] = 0x8080808080808080;
    v61.i64[1] = 0x8080808080808080;
    v62 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v35), *v36), v61);
    v63 = veorq_s8(v60, v61);
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v64 = vzip1q_s8(v61, v63);
    v65 = vzip1q_s8(vzip1q_s8(v62, v62), vzip2q_s8(v62, v62));
    v66 = vzip1q_s16(v64, v65);
    result = vzip2q_s16(v64, v65);
    *a1 = v66;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 8;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i16[v5 / 2];
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[4]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), result);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), result);
    v17 = vzip1q_s8(v8, v16);
    v18 = vzip1q_s8(v14, v15);
    *a1 = vzip1q_s16(v17, v18);
    a1[1] = vzip2q_s16(v17, v18);
    v19 = vzip2q_s8(v8, v16);
    v20 = vzip2q_s8(v14, v15);
    v21 = (a1->i16 + a3);
    vst2_s16(v21, v19);
    v21 += 8;
    *v21 = vzip2q_s16(v19, v20);
    v22 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), result);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = veorq_s8(vuzp1q_s32(v23, vrev64q_s32(v23)), result);
    v28 = vzip1q_s8(v8, v27);
    v29 = vzip1q_s8(v25, v26);
    vst2_s16(v11, v28);
    v11 += 8;
    *v11 = vzip2q_s16(v28, v29);
    v30 = vzip2q_s8(v8, v27);
    v31 = vzip2q_s8(v25, v26);
    vst2_s16(v22, v30);
    v22 += 8;
    v7 -= 2;
    *v22 = vzip2q_s16(v30, v31);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v32 = v10 + 4;
  v33 = v10 + 8;
  v34 = v10 + 12;
  v35 = v10 + 16;
  v36 = v10 + 20;
  v37 = v10 + 24;
  v38 = v10 + 28;
  v39 = &a1->i8[v5];
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_y408<4,8,(AlphaOutputMethod)2,true>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v32 = a2 + 4;
    v33 = a2 + 8;
    v34 = a2 + 12;
    v35 = a2 + 16;
    v36 = a2 + 20;
    v37 = a2 + 24;
    v38 = a2 + 28;
    v39 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40 = vqmovn_high_s16(vqmovn_s16(*v33), *v34);
      *v40.i8 = vmovn_s64(v40);
      v41.i64[0] = 0x8080808080808080;
      v41.i64[1] = 0x8080808080808080;
      v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v37), *v38), v41);
      v43 = veorq_s8(v40, v41);
      v41.i64[0] = -1;
      v41.i64[1] = -1;
      v44 = vzip1q_s8(v41, v43);
      v45 = vzip1q_s8(vzip1q_s8(v42, v42), vzip2q_s8(v42, v42));
      v46 = vzip1q_s16(v44, v45);
      result = vzip2q_s16(v44, v45);
      *v39 = v46;
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v47 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v48.i64[0] = -1;
    v48.i64[1] = -1;
    do
    {
      v49 = v7;
      v50 = vqmovn_high_s16(vqmovn_s16(a2[v47]), v32[v47]);
      v51 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v35[v47]), v36[v47]), result);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = veorq_s8(vuzp1q_s32(v50, vrev64q_s32(v50)), result);
      v55 = vzip1q_s8(v48, v54);
      v56 = vzip1q_s8(v52, v53);
      *a1 = vzip1q_s16(v55, v56);
      a1[1] = vzip2q_s16(v55, v56);
      v57 = vzip2q_s8(v48, v54);
      v58 = vzip2q_s8(v52, v53);
      v59 = (a1->i16 + a3);
      vst2_s16(v59, v57);
      v59 += 8;
      *v59 = vzip2q_s16(v57, v58);
      a1 = (a1 + 2 * a3);
      v7 = v49 - 2;
      ++v47;
    }

    while (v49 > 3);
    a2 = (a2 + v47 * 16);
    v32 = (v32 + v47 * 16);
    v35 = (v35 + v47 * 16);
    v36 = (v36 + v47 * 16);
    if (v49 != 3)
    {
      return result;
    }

LABEL_18:
    v60 = vqmovn_high_s16(vqmovn_s16(*a2), *v32);
    *v60.i8 = vmovn_s64(v60);
    v61.i64[0] = 0x8080808080808080;
    v61.i64[1] = 0x8080808080808080;
    v62 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v35), *v36), v61);
    v63 = veorq_s8(v60, v61);
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v64 = vzip1q_s8(v61, v63);
    v65 = vzip1q_s8(vzip1q_s8(v62, v62), vzip2q_s8(v62, v62));
    v66 = vzip1q_s16(v64, v65);
    result = vzip2q_s16(v64, v65);
    *a1 = v66;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 8;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i16[v5 / 2];
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[4]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), result);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), result);
    v17 = vzip1q_s8(v8, v16);
    v18 = vzip1q_s8(v14, v15);
    *a1 = vzip1q_s16(v17, v18);
    a1[1] = vzip2q_s16(v17, v18);
    v19 = vzip2q_s8(v8, v16);
    v20 = vzip2q_s8(v14, v15);
    v21 = (a1->i16 + a3);
    vst2_s16(v21, v19);
    v21 += 8;
    *v21 = vzip2q_s16(v19, v20);
    v22 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), result);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = veorq_s8(vuzp1q_s32(v23, vrev64q_s32(v23)), result);
    v28 = vzip1q_s8(v8, v27);
    v29 = vzip1q_s8(v25, v26);
    vst2_s16(v11, v28);
    v11 += 8;
    *v11 = vzip2q_s16(v28, v29);
    v30 = vzip2q_s8(v8, v27);
    v31 = vzip2q_s8(v25, v26);
    vst2_s16(v22, v30);
    v22 += 8;
    v7 -= 2;
    *v22 = vzip2q_s16(v30, v31);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v32 = v10 + 4;
  v33 = v10 + 8;
  v34 = v10 + 12;
  v35 = v10 + 16;
  v36 = v10 + 20;
  v37 = v10 + 24;
  v38 = v10 + 28;
  v39 = &a1->i8[v5];
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_y408<4,4,(AlphaOutputMethod)2,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v32 = a2 + 2;
    v33 = a2 + 4;
    v34 = a2 + 6;
    v35 = a2 + 8;
    v36 = a2 + 10;
    v37 = a2 + 12;
    v38 = a2 + 14;
    v39 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40 = vqmovn_high_s16(vqmovn_s16(*v33), *v34);
      *v40.i8 = vmovn_s64(v40);
      v41.i64[0] = 0x8080808080808080;
      v41.i64[1] = 0x8080808080808080;
      v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v37), *v38), v41);
      v43 = veorq_s8(v40, v41);
      v41.i64[0] = -1;
      v41.i64[1] = -1;
      v44 = vzip1q_s8(v41, v43);
      v45 = vzip1q_s8(vzip1q_s8(v42, v42), vzip2q_s8(v42, v42));
      v46 = vzip1q_s16(v44, v45);
      result = vzip2q_s16(v44, v45);
      *v39 = v46;
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v47 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v48.i64[0] = -1;
    v48.i64[1] = -1;
    do
    {
      v49 = v7;
      v50 = vqmovn_high_s16(vqmovn_s16(a2[v47]), v32[v47]);
      v51 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v35[v47]), v36[v47]), result);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = veorq_s8(vuzp1q_s32(v50, vrev64q_s32(v50)), result);
      v55 = vzip1q_s8(v48, v54);
      v56 = vzip1q_s8(v52, v53);
      *a1 = vzip1q_s16(v55, v56);
      a1[1] = vzip2q_s16(v55, v56);
      v57 = vzip2q_s8(v48, v54);
      v58 = vzip2q_s8(v52, v53);
      v59 = (a1->i16 + a3);
      vst2_s16(v59, v57);
      v59 += 8;
      *v59 = vzip2q_s16(v57, v58);
      a1 = (a1 + 2 * a3);
      v7 = v49 - 2;
      ++v47;
    }

    while (v49 > 3);
    a2 = (a2 + v47 * 16);
    v32 = (v32 + v47 * 16);
    v35 = (v35 + v47 * 16);
    v36 = (v36 + v47 * 16);
    if (v49 != 3)
    {
      return result;
    }

LABEL_18:
    v60 = vqmovn_high_s16(vqmovn_s16(*a2), *v32);
    *v60.i8 = vmovn_s64(v60);
    v61.i64[0] = 0x8080808080808080;
    v61.i64[1] = 0x8080808080808080;
    v62 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v35), *v36), v61);
    v63 = veorq_s8(v60, v61);
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v64 = vzip1q_s8(v61, v63);
    v65 = vzip1q_s8(vzip1q_s8(v62, v62), vzip2q_s8(v62, v62));
    v66 = vzip1q_s16(v64, v65);
    result = vzip2q_s16(v64, v65);
    *a1 = v66;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 4;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i16[v5 / 2];
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[2]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[10]), result);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), result);
    v17 = vzip1q_s8(v8, v16);
    v18 = vzip1q_s8(v14, v15);
    *a1 = vzip1q_s16(v17, v18);
    a1[1] = vzip2q_s16(v17, v18);
    v19 = vzip2q_s8(v8, v16);
    v20 = vzip2q_s8(v14, v15);
    v21 = (a1->i16 + a3);
    vst2_s16(v21, v19);
    v21 += 8;
    *v21 = vzip2q_s16(v19, v20);
    v22 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[14]), result);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = veorq_s8(vuzp1q_s32(v23, vrev64q_s32(v23)), result);
    v28 = vzip1q_s8(v8, v27);
    v29 = vzip1q_s8(v25, v26);
    vst2_s16(v11, v28);
    v11 += 8;
    *v11 = vzip2q_s16(v28, v29);
    v30 = vzip2q_s8(v8, v27);
    v31 = vzip2q_s8(v25, v26);
    vst2_s16(v22, v30);
    v22 += 8;
    v7 -= 2;
    *v22 = vzip2q_s16(v30, v31);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v32 = v10 + 2;
  v33 = v10 + 4;
  v34 = v10 + 6;
  v35 = v10 + 8;
  v36 = v10 + 10;
  v37 = v10 + 12;
  v38 = v10 + 14;
  v39 = &a1->i8[v5];
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_y408<4,4,(AlphaOutputMethod)2,true>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v32 = a2 + 2;
    v33 = a2 + 4;
    v34 = a2 + 6;
    v35 = a2 + 8;
    v36 = a2 + 10;
    v37 = a2 + 12;
    v38 = a2 + 14;
    v39 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40 = vqmovn_high_s16(vqmovn_s16(*v33), *v34);
      *v40.i8 = vmovn_s64(v40);
      v41.i64[0] = 0x8080808080808080;
      v41.i64[1] = 0x8080808080808080;
      v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v37), *v38), v41);
      v43 = veorq_s8(v40, v41);
      v41.i64[0] = -1;
      v41.i64[1] = -1;
      v44 = vzip1q_s8(v41, v43);
      v45 = vzip1q_s8(vzip1q_s8(v42, v42), vzip2q_s8(v42, v42));
      v46 = vzip1q_s16(v44, v45);
      result = vzip2q_s16(v44, v45);
      *v39 = v46;
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v47 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v48.i64[0] = -1;
    v48.i64[1] = -1;
    do
    {
      v49 = v7;
      v50 = vqmovn_high_s16(vqmovn_s16(a2[v47]), v32[v47]);
      v51 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v35[v47]), v36[v47]), result);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = veorq_s8(vuzp1q_s32(v50, vrev64q_s32(v50)), result);
      v55 = vzip1q_s8(v48, v54);
      v56 = vzip1q_s8(v52, v53);
      *a1 = vzip1q_s16(v55, v56);
      a1[1] = vzip2q_s16(v55, v56);
      v57 = vzip2q_s8(v48, v54);
      v58 = vzip2q_s8(v52, v53);
      v59 = (a1->i16 + a3);
      vst2_s16(v59, v57);
      v59 += 8;
      *v59 = vzip2q_s16(v57, v58);
      a1 = (a1 + 2 * a3);
      v7 = v49 - 2;
      ++v47;
    }

    while (v49 > 3);
    a2 = (a2 + v47 * 16);
    v32 = (v32 + v47 * 16);
    v35 = (v35 + v47 * 16);
    v36 = (v36 + v47 * 16);
    if (v49 != 3)
    {
      return result;
    }

LABEL_18:
    v60 = vqmovn_high_s16(vqmovn_s16(*a2), *v32);
    *v60.i8 = vmovn_s64(v60);
    v61.i64[0] = 0x8080808080808080;
    v61.i64[1] = 0x8080808080808080;
    v62 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v35), *v36), v61);
    v63 = veorq_s8(v60, v61);
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v64 = vzip1q_s8(v61, v63);
    v65 = vzip1q_s8(vzip1q_s8(v62, v62), vzip2q_s8(v62, v62));
    v66 = vzip1q_s16(v64, v65);
    result = vzip2q_s16(v64, v65);
    *a1 = v66;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v6 = a4 - 4;
  do
  {
    v9 = v6;
    v10 = a2 + 1;
    v11 = &a1->i16[v5 / 2];
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), a2[2]);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[10]), result);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), result);
    v17 = vzip1q_s8(v8, v16);
    v18 = vzip1q_s8(v14, v15);
    *a1 = vzip1q_s16(v17, v18);
    a1[1] = vzip2q_s16(v17, v18);
    v19 = vzip2q_s8(v8, v16);
    v20 = vzip2q_s8(v14, v15);
    v21 = (a1->i16 + a3);
    vst2_s16(v21, v19);
    v21 += 8;
    *v21 = vzip2q_s16(v19, v20);
    v22 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[14]), result);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = veorq_s8(vuzp1q_s32(v23, vrev64q_s32(v23)), result);
    v28 = vzip1q_s8(v8, v27);
    v29 = vzip1q_s8(v25, v26);
    vst2_s16(v11, v28);
    v11 += 8;
    *v11 = vzip2q_s16(v28, v29);
    v30 = vzip2q_s8(v8, v27);
    v31 = vzip2q_s8(v25, v26);
    vst2_s16(v22, v30);
    v22 += 8;
    v7 -= 2;
    *v22 = vzip2q_s16(v30, v31);
    v6 = v9 - 2;
    ++a2;
  }

  while (v9 > 3);
  v32 = v10 + 2;
  v33 = v10 + 4;
  v34 = v10 + 6;
  v35 = v10 + 8;
  v36 = v10 + 10;
  v37 = v10 + 12;
  v38 = v10 + 14;
  v39 = &a1->i8[v5];
  a2 = v10;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_y408<4,2,(AlphaOutputMethod)2,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v32 = a2 + 1;
    v33 = a2 + 2;
    v34 = a2 + 3;
    v35 = a2 + 4;
    v36 = a2 + 5;
    v37 = a2 + 6;
    v38 = a2 + 7;
    v39 = &a1->i8[v5];
    if (!a4)
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40 = vqmovn_high_s16(vqmovn_s16(*v33), *v34);
      *v40.i8 = vmovn_s64(v40);
      v41.i64[0] = 0x8080808080808080;
      v41.i64[1] = 0x8080808080808080;
      v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v37), *v38), v41);
      v43 = veorq_s8(v40, v41);
      v41.i64[0] = -1;
      v41.i64[1] = -1;
      v44 = vzip1q_s8(v41, v43);
      v45 = vzip1q_s8(vzip1q_s8(v42, v42), vzip2q_s8(v42, v42));
      v46 = vzip1q_s16(v44, v45);
      result = vzip2q_s16(v44, v45);
      *v39 = v46;
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v47 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v48.i64[0] = -1;
    v48.i64[1] = -1;
    do
    {
      v49 = v7;
      v50 = vqmovn_high_s16(vqmovn_s16(a2[v47]), v32[v47]);
      v51 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v35[v47]), v36[v47]), result);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = veorq_s8(vuzp1q_s32(v50, vrev64q_s32(v50)), result);
      v55 = vzip1q_s8(v48, v54);
      v56 = vzip1q_s8(v52, v53);
      *a1 = vzip1q_s16(v55, v56);
      a1[1] = vzip2q_s16(v55, v56);
      v57 = vzip2q_s8(v48, v54);
      v58 = vzip2q_s8(v52, v53);
      v59 = (a1->i16 + a3);
      vst2_s16(v59, v57);
      v59 += 8;
      *v59 = vzip2q_s16(v57, v58);
      a1 = (a1 + v5);
      v7 = v49 - 2;
      ++v47;
    }

    while (v49 > 3);
    a2 = (a2 + v47 * 16);
    v32 = (v32 + v47 * 16);
    v35 = (v35 + v47 * 16);
    v36 = (v36 + v47 * 16);
    if (v49 != 3)
    {
      return result;
    }

LABEL_18:
    v60 = vqmovn_high_s16(vqmovn_s16(*a2), *v32);
    *v60.i8 = vmovn_s64(v60);
    v61.i64[0] = 0x8080808080808080;
    v61.i64[1] = 0x8080808080808080;
    v62 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v35), *v36), v61);
    v63 = veorq_s8(v60, v61);
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v64 = vzip1q_s8(v61, v63);
    v65 = vzip1q_s8(vzip1q_s8(v62, v62), vzip2q_s8(v62, v62));
    v66 = vzip1q_s16(v64, v65);
    result = vzip2q_s16(v64, v65);
    *a1 = v66;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = a2;
  do
  {
    v10 = v9[1];
    ++v9;
    v11 = vqmovn_high_s16(vqmovn_s16(*a2), v10);
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), result);
    v13 = vzip1q_s8(v12, v12);
    v14 = vzip2q_s8(v12, v12);
    v15 = veorq_s8(vuzp1q_s32(v11, vrev64q_s32(v11)), result);
    v16 = vzip1q_s8(v8, v15);
    v17 = vzip1q_s8(v13, v14);
    *a1 = vzip1q_s16(v16, v17);
    a1[1] = vzip2q_s16(v16, v17);
    v18 = vzip2q_s8(v8, v15);
    v19 = vzip2q_s8(v13, v14);
    v20 = (a1->i16 + a3);
    vst2_s16(v20, v18);
    v20 += 8;
    v21 = (a1->i16 + a3 + v5);
    a1 = (a1 + v5);
    *v20 = vzip2q_s16(v18, v19);
    v22 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), result);
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26 = veorq_s8(vuzp1q_s32(v22, vrev64q_s32(v22)), result);
    v27 = vzip1q_s8(v8, v26);
    v28 = vzip1q_s8(v24, v25);
    v29 = a1;
    vst2_s16(v29, v27);
    v29 += 8;
    *v29 = vzip2q_s16(v27, v28);
    v30 = vzip2q_s8(v8, v26);
    v31 = vzip2q_s8(v24, v25);
    vst2_s16(v21, v30);
    v21 += 8;
    v7 -= 2;
    *v21 = vzip2q_s16(v30, v31);
    a4 -= 2;
    a2 = v9;
  }

  while (a4 > 3);
  v32 = v9 + 1;
  v33 = v9 + 2;
  v34 = v9 + 3;
  v35 = v9 + 4;
  v36 = v9 + 5;
  v37 = v9 + 6;
  v38 = v9 + 7;
  v6 = a4 - 2;
  v39 = &a1->i8[v5];
  a2 = v9;
  if (v7 + a4 - 2)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_y408<4,2,(AlphaOutputMethod)2,true>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v32 = a2 + 1;
    v33 = a2 + 2;
    v34 = a2 + 3;
    v35 = a2 + 4;
    v36 = a2 + 5;
    v37 = a2 + 6;
    v38 = a2 + 7;
    v39 = &a1->i8[v5];
    if (!a4)
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v40 = vqmovn_high_s16(vqmovn_s16(*v33), *v34);
      *v40.i8 = vmovn_s64(v40);
      v41.i64[0] = 0x8080808080808080;
      v41.i64[1] = 0x8080808080808080;
      v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v37), *v38), v41);
      v43 = veorq_s8(v40, v41);
      v41.i64[0] = -1;
      v41.i64[1] = -1;
      v44 = vzip1q_s8(v41, v43);
      v45 = vzip1q_s8(vzip1q_s8(v42, v42), vzip2q_s8(v42, v42));
      v46 = vzip1q_s16(v44, v45);
      result = vzip2q_s16(v44, v45);
      *v39 = v46;
      v39[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v47 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v48.i64[0] = -1;
    v48.i64[1] = -1;
    do
    {
      v49 = v7;
      v50 = vqmovn_high_s16(vqmovn_s16(a2[v47]), v32[v47]);
      v51 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v35[v47]), v36[v47]), result);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = veorq_s8(vuzp1q_s32(v50, vrev64q_s32(v50)), result);
      v55 = vzip1q_s8(v48, v54);
      v56 = vzip1q_s8(v52, v53);
      *a1 = vzip1q_s16(v55, v56);
      a1[1] = vzip2q_s16(v55, v56);
      v57 = vzip2q_s8(v48, v54);
      v58 = vzip2q_s8(v52, v53);
      v59 = (a1->i16 + a3);
      vst2_s16(v59, v57);
      v59 += 8;
      *v59 = vzip2q_s16(v57, v58);
      a1 = (a1 + v5);
      v7 = v49 - 2;
      ++v47;
    }

    while (v49 > 3);
    a2 = (a2 + v47 * 16);
    v32 = (v32 + v47 * 16);
    v35 = (v35 + v47 * 16);
    v36 = (v36 + v47 * 16);
    if (v49 != 3)
    {
      return result;
    }

LABEL_18:
    v60 = vqmovn_high_s16(vqmovn_s16(*a2), *v32);
    *v60.i8 = vmovn_s64(v60);
    v61.i64[0] = 0x8080808080808080;
    v61.i64[1] = 0x8080808080808080;
    v62 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v35), *v36), v61);
    v63 = veorq_s8(v60, v61);
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v64 = vzip1q_s8(v61, v63);
    v65 = vzip1q_s8(vzip1q_s8(v62, v62), vzip2q_s8(v62, v62));
    v66 = vzip1q_s16(v64, v65);
    result = vzip2q_s16(v64, v65);
    *a1 = v66;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = a2;
  do
  {
    v10 = v9[1];
    ++v9;
    v11 = vqmovn_high_s16(vqmovn_s16(*a2), v10);
    v12 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), result);
    v13 = vzip1q_s8(v12, v12);
    v14 = vzip2q_s8(v12, v12);
    v15 = veorq_s8(vuzp1q_s32(v11, vrev64q_s32(v11)), result);
    v16 = vzip1q_s8(v8, v15);
    v17 = vzip1q_s8(v13, v14);
    *a1 = vzip1q_s16(v16, v17);
    a1[1] = vzip2q_s16(v16, v17);
    v18 = vzip2q_s8(v8, v15);
    v19 = vzip2q_s8(v13, v14);
    v20 = (a1->i16 + a3);
    vst2_s16(v20, v18);
    v20 += 8;
    v21 = (a1->i16 + a3 + v5);
    a1 = (a1 + v5);
    *v20 = vzip2q_s16(v18, v19);
    v22 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), result);
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26 = veorq_s8(vuzp1q_s32(v22, vrev64q_s32(v22)), result);
    v27 = vzip1q_s8(v8, v26);
    v28 = vzip1q_s8(v24, v25);
    v29 = a1;
    vst2_s16(v29, v27);
    v29 += 8;
    *v29 = vzip2q_s16(v27, v28);
    v30 = vzip2q_s8(v8, v26);
    v31 = vzip2q_s8(v24, v25);
    vst2_s16(v21, v30);
    v21 += 8;
    v7 -= 2;
    *v21 = vzip2q_s16(v30, v31);
    a4 -= 2;
    a2 = v9;
  }

  while (a4 > 3);
  v32 = v9 + 1;
  v33 = v9 + 2;
  v34 = v9 + 3;
  v35 = v9 + 4;
  v36 = v9 + 5;
  v37 = v9 + 6;
  v38 = v9 + 7;
  v6 = a4 - 2;
  v39 = &a1->i8[v5];
  a2 = v9;
  if (v7 + a4 - 2)
  {
    goto LABEL_10;
  }

  return result;
}

int16x8_t from_422_to_y408<2,4,(AlphaOutputMethod)2,false>(__int16 *a1, int16x8_t *a2, int a3, int a4, int16x8_t result)
{
  v5 = &a1[2 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7.i64[0] = 0x8080808080808080;
    v7.i64[1] = 0x8080808080808080;
    v8 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v7);
    v9 = vzip1q_s8(v8, v8);
    v10 = vzip2q_s8(v8, v8);
    v11 = veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v7);
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    v13 = vzip1q_s8(v12, v11);
    v14 = vzip2q_s8(v12, v11);
    v15 = vzip1q_s8(v9, v10);
    v16 = vzip2q_s8(v9, v10);
    vst2_s16(a1, v13);
    v17 = (a1 + a3);
    *v17 = vzip2q_s16(v13, v15);
    v18 = (v17->i16 + a3);
    vst2_s16(v18, v14);
    v19 = (v18 + a3);
    *v19 = vzip2q_s16(v14, v16);
    v20 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v7);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = veorq_s8(vzip1q_s16(v20, vdupq_laneq_s64(v20, 1)), v7);
    v25 = vzip1q_s8(v12, v24);
    v26 = vzip2q_s8(v12, v24);
    v27 = vzip1q_s8(v22, v23);
    v28 = vzip2q_s8(v22, v23);
    vst2_s16(v5, v25);
    v29 = (v5 + a3);
    *v29 = vzip2q_s16(v25, v27);
    v30 = (v29->i16 + a3);
    vst2_s16(v30, v26);
    v31 = (v30 + a3);
    result = vzip2q_s16(v26, v28);
    *v31 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v54 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v55.i64[0] = 0x8080808080808080;
      v55.i64[1] = 0x8080808080808080;
      v56 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v55);
      v57 = vzip1q_s8(v56, v56);
      v58 = vzip2q_s8(v56, v56);
      v59 = veorq_s8(vzip1q_s16(v54, vdupq_laneq_s64(v54, 1)), v55);
      v60.i64[0] = -1;
      v60.i64[1] = -1;
      result = vzip1q_s8(v60, v59);
      v61 = vzip1q_s8(v57, v58);
      vst2_s16(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(result, v61);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v62 = vzip2q_s8(v57, v58);
        v63 = vzip2q_s8(v60, v59);
        result = vzip2q_s16(result, v61);
        *(a1 + a3) = result;
        v64 = (a1 + a3 + a3);
        vst2_s16(v64, v63);
        if (a4 == 4)
        {
          result = vzip2q_s16(v63, v62);
          *(v64 + a3) = result;
        }
      }
    }
  }

  else
  {
    v32 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v33.i64[0] = 0x8080808080808080;
    v33.i64[1] = 0x8080808080808080;
    v34 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v33);
    v35 = vzip1q_s8(v34, v34);
    v36 = vzip2q_s8(v34, v34);
    v37 = veorq_s8(vzip1q_s16(v32, vdupq_laneq_s64(v32, 1)), v33);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v38 = vzip1q_s8(result, v37);
    v39 = vzip2q_s8(result, v37);
    v40 = vzip1q_s8(v35, v36);
    v41 = vzip2q_s8(v35, v36);
    vst2_s16(a1, v38);
    v42 = (a1 + a3);
    *v42 = vzip2q_s16(v38, v40);
    v43 = (v42->i16 + a3);
    vst2_s16(v43, v39);
    v44 = (v43 + a3);
    *v44 = vzip2q_s16(v39, v41);
    v45 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v46 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v33);
    v47 = vzip1q_s8(v46, v46);
    v48 = vzip2q_s8(v46, v46);
    v49 = veorq_s8(vzip1q_s16(v45, vdupq_laneq_s64(v45, 1)), v33);
    v50 = vzip1q_s8(result, v49);
    v51 = vzip1q_s8(v47, v48);
    vst2_s16(v5, v50);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s16(v50, v51);
        *(v5 + a3) = result;
      }
    }

    else
    {
      v65.val[1] = vzip2q_s8(v47, v48).u64[0];
      v65.val[0] = vzip2q_s8(result, v49).u64[0];
      v52 = (v5 + a3);
      result = vzip2q_s16(v50, v51);
      *v52 = result;
      v53 = (v52->i16 + a3);
      vst2_s16(v53, v65);
    }
  }

  return result;
}

int16x8_t from_422_to_y408<2,4,(AlphaOutputMethod)2,true>(__int16 *a1, int16x8_t *a2, int a3, int a4, int16x8_t result)
{
  v5 = &a1[2 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7.i64[0] = 0x8080808080808080;
    v7.i64[1] = 0x8080808080808080;
    v8 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v7);
    v9 = vzip1q_s8(v8, v8);
    v10 = vzip2q_s8(v8, v8);
    v11 = veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v7);
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    v13 = vzip1q_s8(v12, v11);
    v14 = vzip2q_s8(v12, v11);
    v15 = vzip1q_s8(v9, v10);
    v16 = vzip2q_s8(v9, v10);
    vst2_s16(a1, v13);
    v17 = (a1 + a3);
    *v17 = vzip2q_s16(v13, v15);
    v18 = (v17->i16 + a3);
    vst2_s16(v18, v14);
    v19 = (v18 + a3);
    *v19 = vzip2q_s16(v14, v16);
    v20 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v7);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = veorq_s8(vzip1q_s16(v20, vdupq_laneq_s64(v20, 1)), v7);
    v25 = vzip1q_s8(v12, v24);
    v26 = vzip2q_s8(v12, v24);
    v27 = vzip1q_s8(v22, v23);
    v28 = vzip2q_s8(v22, v23);
    vst2_s16(v5, v25);
    v29 = (v5 + a3);
    *v29 = vzip2q_s16(v25, v27);
    v30 = (v29->i16 + a3);
    vst2_s16(v30, v26);
    v31 = (v30 + a3);
    result = vzip2q_s16(v26, v28);
    *v31 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v54 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v55.i64[0] = 0x8080808080808080;
      v55.i64[1] = 0x8080808080808080;
      v56 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v55);
      v57 = vzip1q_s8(v56, v56);
      v58 = vzip2q_s8(v56, v56);
      v59 = veorq_s8(vzip1q_s16(v54, vdupq_laneq_s64(v54, 1)), v55);
      v60.i64[0] = -1;
      v60.i64[1] = -1;
      result = vzip1q_s8(v60, v59);
      v61 = vzip1q_s8(v57, v58);
      vst2_s16(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(result, v61);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v62 = vzip2q_s8(v57, v58);
        v63 = vzip2q_s8(v60, v59);
        result = vzip2q_s16(result, v61);
        *(a1 + a3) = result;
        v64 = (a1 + a3 + a3);
        vst2_s16(v64, v63);
        if (a4 == 4)
        {
          result = vzip2q_s16(v63, v62);
          *(v64 + a3) = result;
        }
      }
    }
  }

  else
  {
    v32 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v33.i64[0] = 0x8080808080808080;
    v33.i64[1] = 0x8080808080808080;
    v34 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v33);
    v35 = vzip1q_s8(v34, v34);
    v36 = vzip2q_s8(v34, v34);
    v37 = veorq_s8(vzip1q_s16(v32, vdupq_laneq_s64(v32, 1)), v33);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v38 = vzip1q_s8(result, v37);
    v39 = vzip2q_s8(result, v37);
    v40 = vzip1q_s8(v35, v36);
    v41 = vzip2q_s8(v35, v36);
    vst2_s16(a1, v38);
    v42 = (a1 + a3);
    *v42 = vzip2q_s16(v38, v40);
    v43 = (v42->i16 + a3);
    vst2_s16(v43, v39);
    v44 = (v43 + a3);
    *v44 = vzip2q_s16(v39, v41);
    v45 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v46 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v33);
    v47 = vzip1q_s8(v46, v46);
    v48 = vzip2q_s8(v46, v46);
    v49 = veorq_s8(vzip1q_s16(v45, vdupq_laneq_s64(v45, 1)), v33);
    v50 = vzip1q_s8(result, v49);
    v51 = vzip1q_s8(v47, v48);
    vst2_s16(v5, v50);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s16(v50, v51);
        *(v5 + a3) = result;
      }
    }

    else
    {
      v65.val[1] = vzip2q_s8(v47, v48).u64[0];
      v65.val[0] = vzip2q_s8(result, v49).u64[0];
      v52 = (v5 + a3);
      result = vzip2q_s16(v50, v51);
      *v52 = result;
      v53 = (v52->i16 + a3);
      vst2_s16(v53, v65);
    }
  }

  return result;
}

void from_422_to_y408<2,2,(AlphaOutputMethod)2,false>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v4);
  v6 = vuzp1q_s32(v5, vrev64q_s32(v5));
  v7 = vzip1q_s8(v6, v6);
  v8 = vzip2q_s8(v6, v6);
  v9 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4);
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  v10 = vzip1q_s8(v6, v9);
  v11 = vzip2q_s8(v6, v9);
  v12 = vzip1q_s8(v7, v8);
  v13 = vzip2q_s8(v7, v8);
  if (a4 == 4)
  {
    v14 = a3;
    vst2_s16(a1, v10);
    v15 = (a1 + v14);
    *v15 = vzip2q_s16(v10, v12);
    v16 = (v15->i16 + a3);
    vst2_s16(v16, v11);
    v17 = (v16 + v14);
    *v17 = vzip2q_s16(v11, v13);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v10);
    }
  }

  else
  {
    v18 = a3;
    vst2_s16(a1, v10);
    v19 = (a1 + v18);
    *v19 = vzip2q_s16(v10, v12);
    if (a4 == 3)
    {
      v20 = (v19->i16 + a3);
      vst2_s16(v20, v11);
    }
  }
}

void from_422_to_y408<2,2,(AlphaOutputMethod)2,true>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v4);
  v6 = vuzp1q_s32(v5, vrev64q_s32(v5));
  v7 = vzip1q_s8(v6, v6);
  v8 = vzip2q_s8(v6, v6);
  v9 = veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4);
  v6.i64[0] = -1;
  v6.i64[1] = -1;
  v10 = vzip1q_s8(v6, v9);
  v11 = vzip2q_s8(v6, v9);
  v12 = vzip1q_s8(v7, v8);
  v13 = vzip2q_s8(v7, v8);
  if (a4 == 4)
  {
    v14 = a3;
    vst2_s16(a1, v10);
    v15 = (a1 + v14);
    *v15 = vzip2q_s16(v10, v12);
    v16 = (v15->i16 + a3);
    vst2_s16(v16, v11);
    v17 = (v16 + v14);
    *v17 = vzip2q_s16(v11, v13);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v10);
    }
  }

  else
  {
    v18 = a3;
    vst2_s16(a1, v10);
    v19 = (a1 + v18);
    *v19 = vzip2q_s16(v10, v12);
    if (a4 == 3)
    {
      v20 = (v19->i16 + a3);
      vst2_s16(v20, v11);
    }
  }
}

int16x8_t *from_422_to_r408<8,8,(AlphaOutputMethod)1,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v32 = a2 + 8;
    v33 = a2 + 32;
    v34 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x1010101010101010;
  v10.i64[1] = 0x1010101010101010;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 8 * a3);
    v13 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v9);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v17 = vzip1q_s8(*a5, v13);
    v18 = vzip2q_s8(*a5, v13);
    v19 = vzip1q_s8(v15, v16);
    v20 = vzip2q_s8(v15, v16);
    *result = vzip1q_s16(v17, v19);
    result[1] = vzip2q_s16(v17, v19);
    result[2] = vzip1q_s16(v18, v20);
    result[3] = vzip2q_s16(v18, v20);
    result = (result + a3);
    --v7;
    v21 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v22 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v9);
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26 = vzip1q_s8(v21, v22);
    v27 = vzip1q_s8(v24, v25);
    v28 = v12;
    vst2_s16(v28, v26);
    v28 += 8;
    v29 = vzip2q_s8(v21, v22);
    v30 = vzip2q_s8(v24, v25);
    i16 = v12[2].i16;
    vst2_s16(i16, v29);
    *v28 = vzip2q_s16(v26, v27);
    v12[3] = vzip2q_s16(v29, v30);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v32 = v11 + 8;
  v33 = v11 + 32;
  v34 = v11 + 40;
  a2 = v11;
  if (v7 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x1010101010101010;
    v38.i64[1] = 0x1010101010101010;
    v39 = result[2].i16;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v35[-2].i16;
      v43 = *v32++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v33++;
      v46 = v45;
      v47 = *v34++;
      v48 = vqsubq_u8(veorq_s8(v44, v37), v38);
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v46), v47), v37);
      v50 = vzip1q_s8(v49, v49);
      v51 = vzip2q_s8(v49, v49);
      v52 = vzip1q_s8(*a5, v48);
      v53 = vzip2q_s8(*a5, v48);
      v54 = vzip1q_s8(v50, v51);
      vst2_s16(v42, v52);
      v55 = vzip2q_s8(v50, v51);
      v35[-1] = vzip2q_s16(v52, v54);
      vst2_s16(v39, v53);
      v39 = (v39 + a3);
      v35[1] = vzip2q_s16(v53, v55);
      a5 = (a5 + a6);
      --v36;
      v35 = v39;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_422_to_r408<8,8,(AlphaOutputMethod)1,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v32 = a2 + 8;
    v33 = a2 + 32;
    v34 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x1010101010101010;
  v10.i64[1] = 0x1010101010101010;
  do
  {
    v11 = a2 + 1;
    v12 = (result + 8 * a3);
    v13 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v9);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v17 = vzip1q_s8(*a5, v13);
    v18 = vzip2q_s8(*a5, v13);
    v19 = vzip1q_s8(v15, v16);
    v20 = vzip2q_s8(v15, v16);
    *result = vzip1q_s16(v17, v19);
    result[1] = vzip2q_s16(v17, v19);
    result[2] = vzip1q_s16(v18, v20);
    result[3] = vzip2q_s16(v18, v20);
    result = (result + a3);
    --v7;
    v21 = *(a5 + 8 * a6);
    a5 = (a5 + a6);
    v22 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v9);
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26 = vzip1q_s8(v21, v22);
    v27 = vzip1q_s8(v24, v25);
    v28 = v12;
    vst2_s16(v28, v26);
    v28 += 8;
    v29 = vzip2q_s8(v21, v22);
    v30 = vzip2q_s8(v24, v25);
    i16 = v12[2].i16;
    vst2_s16(i16, v29);
    *v28 = vzip2q_s16(v26, v27);
    v12[3] = vzip2q_s16(v29, v30);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v32 = v11 + 8;
  v33 = v11 + 32;
  v34 = v11 + 40;
  a2 = v11;
  if (v7 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v7 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x1010101010101010;
    v38.i64[1] = 0x1010101010101010;
    v39 = result[2].i16;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v35[-2].i16;
      v43 = *v32++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v33++;
      v46 = v45;
      v47 = *v34++;
      v48 = vqsubq_u8(veorq_s8(v44, v37), v38);
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v46), v47), v37);
      v50 = vzip1q_s8(v49, v49);
      v51 = vzip2q_s8(v49, v49);
      v52 = vzip1q_s8(*a5, v48);
      v53 = vzip2q_s8(*a5, v48);
      v54 = vzip1q_s8(v50, v51);
      vst2_s16(v42, v52);
      v55 = vzip2q_s8(v50, v51);
      v35[-1] = vzip2q_s16(v52, v54);
      vst2_s16(v39, v53);
      v39 = (v39 + a3);
      v35[1] = vzip2q_s16(v53, v55);
      a5 = (a5 + a6);
      --v36;
      v35 = v39;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_422_to_r408<8,4,(AlphaOutputMethod)1,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v33 = a2 + 4;
    v34 = a2 + 16;
    v35 = a2 + 20;
    if (v8 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  v11.i64[0] = 0x1010101010101010;
  v11.i64[1] = 0x1010101010101010;
  do
  {
    v12 = a2 + 1;
    v13 = (result + 4 * a3);
    v14 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10), v11);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v10);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(*a5, v14);
    v19 = vzip2q_s8(*a5, v14);
    v20 = vzip1q_s8(v16, v17);
    v21 = vzip2q_s8(v16, v17);
    *result = vzip1q_s16(v18, v20);
    result[1] = vzip2q_s16(v18, v20);
    result[2] = vzip1q_s16(v19, v21);
    result[3] = vzip2q_s16(v19, v21);
    result = (result + a3);
    --v8;
    v22 = *(a5 + (8 * a6));
    a5 = (a5 + v6);
    v23 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10), v11);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v10);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = vzip1q_s8(v22, v23);
    v28 = vzip1q_s8(v25, v26);
    v29 = v13;
    vst2_s16(v29, v27);
    v29 += 8;
    v30 = vzip2q_s8(v22, v23);
    v31 = vzip2q_s8(v25, v26);
    i16 = v13[2].i16;
    vst2_s16(i16, v30);
    *v29 = vzip2q_s16(v27, v28);
    v13[3] = vzip2q_s16(v30, v31);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v33 = v12 + 4;
  v34 = v12 + 16;
  v35 = v12 + 20;
  a2 = v12;
  if (v8 >= 1)
  {
LABEL_10:
    v36 = result + 2;
    v37 = v8 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x1010101010101010;
    v39.i64[1] = 0x1010101010101010;
    v40 = result[2].i16;
    do
    {
      v41 = *a2++;
      v42 = v41;
      v43 = v36[-2].i16;
      v44 = *v33++;
      v45 = vqmovn_high_s16(vqmovn_s16(v42), v44);
      v46 = *v34++;
      v47 = v46;
      v48 = *v35++;
      v49 = vqsubq_u8(veorq_s8(v45, v38), v39);
      v50 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v47), v48), v38);
      v51 = vzip1q_s8(v50, v50);
      v52 = vzip2q_s8(v50, v50);
      v53 = vzip1q_s8(*a5, v49);
      v54 = vzip2q_s8(*a5, v49);
      v55 = vzip1q_s8(v51, v52);
      vst2_s16(v43, v53);
      v56 = vzip2q_s8(v51, v52);
      v36[-1] = vzip2q_s16(v53, v55);
      vst2_s16(v40, v54);
      v40 = (v40 + a3);
      v36[1] = vzip2q_s16(v54, v56);
      a5 = (a5 + v6);
      --v37;
      v36 = v40;
    }

    while (v37 > 1);
  }

  return result;
}

int16x8_t *from_422_to_r408<8,4,(AlphaOutputMethod)1,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (2 * a6);
  if (a4 <= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4 - 4;
  }

  v8 = a4 - v7;
  if (!v7)
  {
    v33 = a2 + 4;
    v34 = a2 + 16;
    v35 = a2 + 20;
    if (v8 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = a4 - 3;
  v10.i64[0] = 0x8080808080808080;
  v10.i64[1] = 0x8080808080808080;
  v11.i64[0] = 0x1010101010101010;
  v11.i64[1] = 0x1010101010101010;
  do
  {
    v12 = a2 + 1;
    v13 = (result + 4 * a3);
    v14 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v10), v11);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v10);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(*a5, v14);
    v19 = vzip2q_s8(*a5, v14);
    v20 = vzip1q_s8(v16, v17);
    v21 = vzip2q_s8(v16, v17);
    *result = vzip1q_s16(v18, v20);
    result[1] = vzip2q_s16(v18, v20);
    result[2] = vzip1q_s16(v19, v21);
    result[3] = vzip2q_s16(v19, v21);
    result = (result + a3);
    --v8;
    v22 = *(a5 + (8 * a6));
    a5 = (a5 + v6);
    v23 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v10), v11);
    v24 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v10);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = vzip1q_s8(v22, v23);
    v28 = vzip1q_s8(v25, v26);
    v29 = v13;
    vst2_s16(v29, v27);
    v29 += 8;
    v30 = vzip2q_s8(v22, v23);
    v31 = vzip2q_s8(v25, v26);
    i16 = v13[2].i16;
    vst2_s16(i16, v30);
    *v29 = vzip2q_s16(v27, v28);
    v13[3] = vzip2q_s16(v30, v31);
    --v9;
    ++a2;
  }

  while (v9 > 1);
  v33 = v12 + 4;
  v34 = v12 + 16;
  v35 = v12 + 20;
  a2 = v12;
  if (v8 >= 1)
  {
LABEL_10:
    v36 = result + 2;
    v37 = v8 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x1010101010101010;
    v39.i64[1] = 0x1010101010101010;
    v40 = result[2].i16;
    do
    {
      v41 = *a2++;
      v42 = v41;
      v43 = v36[-2].i16;
      v44 = *v33++;
      v45 = vqmovn_high_s16(vqmovn_s16(v42), v44);
      v46 = *v34++;
      v47 = v46;
      v48 = *v35++;
      v49 = vqsubq_u8(veorq_s8(v45, v38), v39);
      v50 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v47), v48), v38);
      v51 = vzip1q_s8(v50, v50);
      v52 = vzip2q_s8(v50, v50);
      v53 = vzip1q_s8(*a5, v49);
      v54 = vzip2q_s8(*a5, v49);
      v55 = vzip1q_s8(v51, v52);
      vst2_s16(v43, v53);
      v56 = vzip2q_s8(v51, v52);
      v36[-1] = vzip2q_s16(v53, v55);
      vst2_s16(v40, v54);
      v40 = (v40 + a3);
      v36[1] = vzip2q_s16(v54, v56);
      a5 = (a5 + v6);
      --v37;
      v36 = v40;
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t from_422_to_r408<2,4,(AlphaOutputMethod)1,false>(__int16 *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int8x16_t result)
{
  v7 = &a1[2 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11.i64[0] = 0x8080808080808080;
    v11.i64[1] = 0x8080808080808080;
    v12.i64[0] = 0x1010101010101010;
    v12.i64[1] = 0x1010101010101010;
    v13 = vqsubq_u8(veorq_s8(vzip1q_s16(v10, vdupq_laneq_s64(v10, 1)), v11), v12);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v11);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    v17 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v14)), vandq_s8(*(a5 + v9), v14))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v14)), vandq_s8(*(a5 + v9 + v9 + v9), v14)));
    v18 = vzip1q_s8(v17, v13);
    v19 = vzip2q_s8(v17, v13);
    v20 = vzip1q_s8(v15, v16);
    v21 = vzip2q_s8(v15, v16);
    vst2_s16(a1, v18);
    v22 = (a1 + a3);
    *v22 = vzip2q_s16(v18, v20);
    v23 = (v22->i16 + a3);
    vst2_s16(v23, v19);
    v24 = (v23 + a3);
    *v24 = vzip2q_s16(v19, v21);
    v25 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v26 = vqsubq_u8(veorq_s8(vzip1q_s16(v25, vdupq_laneq_s64(v25, 1)), v11), v12);
    v27 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v11);
    v28 = vzip1q_s8(v27, v27);
    v29 = vzip2q_s8(v27, v27);
    v30 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v14)), vandq_s8(*(v8 + v9), v14))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v14)), vandq_s8(*(v8 + v9 + v9 + v9), v14)));
    v31 = vzip1q_s8(v30, v26);
    v32 = vzip2q_s8(v30, v26);
    v33 = vzip1q_s8(v28, v29);
    v34 = vzip2q_s8(v28, v29);
    vst2_s16(v7, v31);
    v35 = (v7 + a3);
    *v35 = vzip2q_s16(v31, v33);
    v36 = (v35->i16 + a3);
    vst2_s16(v36, v32);
    v37 = (v36 + a3);
    result = vzip2q_s16(v32, v34);
    *v37 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v62 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v63.i64[0] = 0x8080808080808080;
      v63.i64[1] = 0x8080808080808080;
      v64.i64[0] = 0x1010101010101010;
      v64.i64[1] = 0x1010101010101010;
      result = vqsubq_u8(veorq_s8(vzip1q_s16(v62, vdupq_laneq_s64(v62, 1)), v63), v64);
      v65 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v63);
      v66 = vzip1q_s8(v65, v65);
      v67 = vzip2q_s8(v65, v65);
      v68.i64[0] = 0xFF000000FFLL;
      v68.i64[1] = 0xFF000000FFLL;
      v69 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v68)), vandq_s8(*(a5 + v9), v68))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v68)), vandq_s8(*(a5 + v9 + v9 + v9), v68)));
      v70 = vzip1q_s8(v69, result);
      v71 = vzip1q_s8(v66, v67);
      vst2_s16(a1, v70);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(v70, v71);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v72 = vzip2q_s8(v66, v67);
        v73 = vzip2q_s8(v69, result);
        result = vzip2q_s16(v70, v71);
        *(a1 + a3) = result;
        v74 = (a1 + a3 + a3);
        vst2_s16(v74, v73);
        if (a4 == 4)
        {
          result = vzip2q_s16(v73, v72);
          *(v74 + a3) = result;
        }
      }
    }
  }

  else
  {
    v38 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v39.i64[0] = 0x8080808080808080;
    v39.i64[1] = 0x8080808080808080;
    v40.i64[0] = 0x1010101010101010;
    v40.i64[1] = 0x1010101010101010;
    v41 = vqsubq_u8(veorq_s8(vzip1q_s16(v38, vdupq_laneq_s64(v38, 1)), v39), v40);
    v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v39);
    v43 = vzip1q_s8(v42, v42);
    v44 = vzip2q_s8(v42, v42);
    v42.i64[0] = 0xFF000000FFLL;
    v42.i64[1] = 0xFF000000FFLL;
    v45 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v42)), vandq_s8(*(a5 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v42)), vandq_s8(*(a5 + v9 + v9 + v9), v42)));
    v46 = vzip1q_s8(v45, v41);
    v47 = vzip2q_s8(v45, v41);
    v48 = vzip1q_s8(v43, v44);
    v49 = vzip2q_s8(v43, v44);
    vst2_s16(a1, v46);
    v50 = (a1 + a3);
    *v50 = vzip2q_s16(v46, v48);
    v51 = (v50->i16 + a3);
    vst2_s16(v51, v47);
    v52 = (v51 + a3);
    *v52 = vzip2q_s16(v47, v49);
    v53 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v54 = vqsubq_u8(veorq_s8(vzip1q_s16(v53, vdupq_laneq_s64(v53, 1)), v39), v40);
    v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v39);
    v56 = vzip1q_s8(v55, v55);
    v57 = vzip2q_s8(v55, v55);
    result = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v42)), vandq_s8(*(v8 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v42)), vandq_s8(*(v8 + v9 + v9 + v9), v42)));
    v58 = vzip1q_s8(result, v54);
    v59 = vzip1q_s8(v56, v57);
    vst2_s16(v7, v58);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s16(v58, v59);
        *(v7 + a3) = result;
      }
    }

    else
    {
      v75.val[1] = vzip2q_s8(v56, v57).u64[0];
      v75.val[0] = vzip2q_s8(result, v54).u64[0];
      v60 = (v7 + a3);
      result = vzip2q_s16(v58, v59);
      *v60 = result;
      v61 = (v60->i16 + a3);
      vst2_s16(v61, v75);
    }
  }

  return result;
}

int8x16_t from_422_to_r408<2,4,(AlphaOutputMethod)1,true>(__int16 *a1, int16x8_t *a2, int a3, int a4, int8x16_t *a5, int a6, int8x16_t result)
{
  v7 = &a1[2 * a3];
  v8 = (a5 + (8 * a6));
  v9 = (2 * a6);
  if (a4 == 8)
  {
    v10 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v11.i64[0] = 0x8080808080808080;
    v11.i64[1] = 0x8080808080808080;
    v12.i64[0] = 0x1010101010101010;
    v12.i64[1] = 0x1010101010101010;
    v13 = vqsubq_u8(veorq_s8(vzip1q_s16(v10, vdupq_laneq_s64(v10, 1)), v11), v12);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v11);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    v17 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v14)), vandq_s8(*(a5 + v9), v14))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v14)), vandq_s8(*(a5 + v9 + v9 + v9), v14)));
    v18 = vzip1q_s8(v17, v13);
    v19 = vzip2q_s8(v17, v13);
    v20 = vzip1q_s8(v15, v16);
    v21 = vzip2q_s8(v15, v16);
    vst2_s16(a1, v18);
    v22 = (a1 + a3);
    *v22 = vzip2q_s16(v18, v20);
    v23 = (v22->i16 + a3);
    vst2_s16(v23, v19);
    v24 = (v23 + a3);
    *v24 = vzip2q_s16(v19, v21);
    v25 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v26 = vqsubq_u8(veorq_s8(vzip1q_s16(v25, vdupq_laneq_s64(v25, 1)), v11), v12);
    v27 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v11);
    v28 = vzip1q_s8(v27, v27);
    v29 = vzip2q_s8(v27, v27);
    v30 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v14)), vandq_s8(*(v8 + v9), v14))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v14)), vandq_s8(*(v8 + v9 + v9 + v9), v14)));
    v31 = vzip1q_s8(v30, v26);
    v32 = vzip2q_s8(v30, v26);
    v33 = vzip1q_s8(v28, v29);
    v34 = vzip2q_s8(v28, v29);
    vst2_s16(v7, v31);
    v35 = (v7 + a3);
    *v35 = vzip2q_s16(v31, v33);
    v36 = (v35->i16 + a3);
    vst2_s16(v36, v32);
    v37 = (v36 + a3);
    result = vzip2q_s16(v32, v34);
    *v37 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v62 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v63.i64[0] = 0x8080808080808080;
      v63.i64[1] = 0x8080808080808080;
      v64.i64[0] = 0x1010101010101010;
      v64.i64[1] = 0x1010101010101010;
      result = vqsubq_u8(veorq_s8(vzip1q_s16(v62, vdupq_laneq_s64(v62, 1)), v63), v64);
      v65 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v63);
      v66 = vzip1q_s8(v65, v65);
      v67 = vzip2q_s8(v65, v65);
      v68.i64[0] = 0xFF000000FFLL;
      v68.i64[1] = 0xFF000000FFLL;
      v69 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v68)), vandq_s8(*(a5 + v9), v68))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v68)), vandq_s8(*(a5 + v9 + v9 + v9), v68)));
      v70 = vzip1q_s8(v69, result);
      v71 = vzip1q_s8(v66, v67);
      vst2_s16(a1, v70);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(v70, v71);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v72 = vzip2q_s8(v66, v67);
        v73 = vzip2q_s8(v69, result);
        result = vzip2q_s16(v70, v71);
        *(a1 + a3) = result;
        v74 = (a1 + a3 + a3);
        vst2_s16(v74, v73);
        if (a4 == 4)
        {
          result = vzip2q_s16(v73, v72);
          *(v74 + a3) = result;
        }
      }
    }
  }

  else
  {
    v38 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v39.i64[0] = 0x8080808080808080;
    v39.i64[1] = 0x8080808080808080;
    v40.i64[0] = 0x1010101010101010;
    v40.i64[1] = 0x1010101010101010;
    v41 = vqsubq_u8(veorq_s8(vzip1q_s16(v38, vdupq_laneq_s64(v38, 1)), v39), v40);
    v42 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v39);
    v43 = vzip1q_s8(v42, v42);
    v44 = vzip2q_s8(v42, v42);
    v42.i64[0] = 0xFF000000FFLL;
    v42.i64[1] = 0xFF000000FFLL;
    v45 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v42)), vandq_s8(*(a5 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v9 + v9), v42)), vandq_s8(*(a5 + v9 + v9 + v9), v42)));
    v46 = vzip1q_s8(v45, v41);
    v47 = vzip2q_s8(v45, v41);
    v48 = vzip1q_s8(v43, v44);
    v49 = vzip2q_s8(v43, v44);
    vst2_s16(a1, v46);
    v50 = (a1 + a3);
    *v50 = vzip2q_s16(v46, v48);
    v51 = (v50->i16 + a3);
    vst2_s16(v51, v47);
    v52 = (v51 + a3);
    *v52 = vzip2q_s16(v47, v49);
    v53 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v54 = vqsubq_u8(veorq_s8(vzip1q_s16(v53, vdupq_laneq_s64(v53, 1)), v39), v40);
    v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v39);
    v56 = vzip1q_s8(v55, v55);
    v57 = vzip2q_s8(v55, v55);
    result = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*v8, v42)), vandq_s8(*(v8 + v9), v42))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(v8 + v9 + v9), v42)), vandq_s8(*(v8 + v9 + v9 + v9), v42)));
    v58 = vzip1q_s8(result, v54);
    v59 = vzip1q_s8(v56, v57);
    vst2_s16(v7, v58);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s16(v58, v59);
        *(v7 + a3) = result;
      }
    }

    else
    {
      v75.val[1] = vzip2q_s8(v56, v57).u64[0];
      v75.val[0] = vzip2q_s8(result, v54).u64[0];
      v60 = (v7 + a3);
      result = vzip2q_s16(v58, v59);
      *v60 = result;
      v61 = (v60->i16 + a3);
      vst2_s16(v61, v75);
    }
  }

  return result;
}

void from_422_to_r408<2,2,(AlphaOutputMethod)1,false>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v7), v8);
  v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v7);
  v11 = vuzp1q_s32(v10, vrev64q_s32(v10));
  v12 = vzip1q_s8(v11, v11);
  v13 = vzip2q_s8(v11, v11);
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v14)), vandq_s8(*(a5 + v6), v14))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v14)), vandq_s8(*(a5 + v6 + v6 + v6), v14)));
  v16 = vzip1q_s8(v15, v9);
  v17 = vzip2q_s8(v15, v9);
  v18 = vzip1q_s8(v12, v13);
  v19 = vzip2q_s8(v12, v13);
  if (a4 == 4)
  {
    v20 = a3;
    vst2_s16(a1, v16);
    v21 = (a1 + v20);
    *v21 = vzip2q_s16(v16, v18);
    v22 = (v21->i16 + a3);
    vst2_s16(v22, v17);
    v23 = (v22 + v20);
    *v23 = vzip2q_s16(v17, v19);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v16);
    }
  }

  else
  {
    v24 = a3;
    vst2_s16(a1, v16);
    v25 = (a1 + v24);
    *v25 = vzip2q_s16(v16, v18);
    if (a4 == 3)
    {
      v26 = (v25->i16 + a3);
      vst2_s16(v26, v17);
    }
  }
}

void from_422_to_r408<2,2,(AlphaOutputMethod)1,true>(__int16 *a1, uint64_t a2, int a3, int a4, int8x16_t *a5, int a6)
{
  v6 = (4 * a6);
  v7.i64[0] = 0x8080808080808080;
  v7.i64[1] = 0x8080808080808080;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v7), v8);
  v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v7);
  v11 = vuzp1q_s32(v10, vrev64q_s32(v10));
  v12 = vzip1q_s8(v11, v11);
  v13 = vzip2q_s8(v11, v11);
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v15 = vqmovun_high_s16(vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vandq_s8(*a5, v14)), vandq_s8(*(a5 + v6), v14))), vqmovn_high_s32(vqmovn_s32(vandq_s8(*(a5 + v6 + v6), v14)), vandq_s8(*(a5 + v6 + v6 + v6), v14)));
  v16 = vzip1q_s8(v15, v9);
  v17 = vzip2q_s8(v15, v9);
  v18 = vzip1q_s8(v12, v13);
  v19 = vzip2q_s8(v12, v13);
  if (a4 == 4)
  {
    v20 = a3;
    vst2_s16(a1, v16);
    v21 = (a1 + v20);
    *v21 = vzip2q_s16(v16, v18);
    v22 = (v21->i16 + a3);
    vst2_s16(v22, v17);
    v23 = (v22 + v20);
    *v23 = vzip2q_s16(v17, v19);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v16);
    }
  }

  else
  {
    v24 = a3;
    vst2_s16(a1, v16);
    v25 = (a1 + v24);
    *v25 = vzip2q_s16(v16, v18);
    if (a4 == 3)
    {
      v26 = (v25->i16 + a3);
      vst2_s16(v26, v17);
    }
  }
}

int16x8_t *from_422_to_r408<8,8,(AlphaOutputMethod)2,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v31 = a2 + 8;
    v32 = a2 + 32;
    v33 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6 * 2);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v8);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = vzip1q_s8(v10, v12);
    v17 = vzip2q_s8(v10, v12);
    v18 = vzip1q_s8(v14, v15);
    v19 = vzip2q_s8(v14, v15);
    *result = vzip1q_s16(v16, v18);
    result[1] = vzip2q_s16(v16, v18);
    result[2] = vzip1q_s16(v17, v19);
    result[3] = vzip2q_s16(v17, v19);
    v20 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v8);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = vzip1q_s8(v10, v20);
    v25 = vzip2q_s8(v10, v20);
    v26 = vzip1q_s8(v22, v23);
    v27 = vzip2q_s8(v22, v23);
    v28 = &result->i16[v6];
    vst2_s16(v28, v24);
    v28 += 8;
    v29 = &result[2].i16[v6];
    vst2_s16(v29, v25);
    v30 = a2 + 1;
    result = (result + a3);
    --v5;
    *v28 = vzip2q_s16(v24, v26);
    v11[3] = vzip2q_s16(v25, v27);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v31 = v30 + 8;
  v32 = v30 + 32;
  v33 = v30 + 40;
  a2 = v30;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v34[-2].i16;
      v43 = *v31++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v32++;
      v46 = v45;
      v47 = *v33++;
      v48 = vqsubq_u8(veorq_s8(v44, v36), v37);
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v46), v47), v36);
      v50 = vzip1q_s8(v49, v49);
      v51 = vzip2q_s8(v49, v49);
      v52 = vzip1q_s8(v38, v48);
      v53 = vzip2q_s8(v38, v48);
      v54 = vzip1q_s8(v50, v51);
      vst2_s16(v42, v52);
      v55 = vzip2q_s8(v50, v51);
      v34[-1] = vzip2q_s16(v52, v54);
      vst2_s16(i16, v53);
      i16 = (i16 + a3);
      v34[1] = vzip2q_s16(v53, v55);
      --v35;
      v34 = i16;
    }

    while (v35 > 1);
  }

  return result;
}

int16x8_t *from_422_to_r408<8,8,(AlphaOutputMethod)2,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v31 = a2 + 8;
    v32 = a2 + 32;
    v33 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 4 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6 * 2);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v8);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = vzip1q_s8(v10, v12);
    v17 = vzip2q_s8(v10, v12);
    v18 = vzip1q_s8(v14, v15);
    v19 = vzip2q_s8(v14, v15);
    *result = vzip1q_s16(v16, v18);
    result[1] = vzip2q_s16(v16, v18);
    result[2] = vzip1q_s16(v17, v19);
    result[3] = vzip2q_s16(v17, v19);
    v20 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v8);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = vzip1q_s8(v10, v20);
    v25 = vzip2q_s8(v10, v20);
    v26 = vzip1q_s8(v22, v23);
    v27 = vzip2q_s8(v22, v23);
    v28 = &result->i16[v6];
    vst2_s16(v28, v24);
    v28 += 8;
    v29 = &result[2].i16[v6];
    vst2_s16(v29, v25);
    v30 = a2 + 1;
    result = (result + a3);
    --v5;
    *v28 = vzip2q_s16(v24, v26);
    v11[3] = vzip2q_s16(v25, v27);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v31 = v30 + 8;
  v32 = v30 + 32;
  v33 = v30 + 40;
  a2 = v30;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v34[-2].i16;
      v43 = *v31++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v32++;
      v46 = v45;
      v47 = *v33++;
      v48 = vqsubq_u8(veorq_s8(v44, v36), v37);
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v46), v47), v36);
      v50 = vzip1q_s8(v49, v49);
      v51 = vzip2q_s8(v49, v49);
      v52 = vzip1q_s8(v38, v48);
      v53 = vzip2q_s8(v38, v48);
      v54 = vzip1q_s8(v50, v51);
      vst2_s16(v42, v52);
      v55 = vzip2q_s8(v50, v51);
      v34[-1] = vzip2q_s16(v52, v54);
      vst2_s16(i16, v53);
      i16 = (i16 + a3);
      v34[1] = vzip2q_s16(v53, v55);
      --v35;
      v34 = i16;
    }

    while (v35 > 1);
  }

  return result;
}

int16x8_t *from_422_to_r408<8,4,(AlphaOutputMethod)2,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v31 = a2 + 4;
    v32 = a2 + 16;
    v33 = a2 + 20;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 2 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6 * 2);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v8);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = vzip1q_s8(v10, v12);
    v17 = vzip2q_s8(v10, v12);
    v18 = vzip1q_s8(v14, v15);
    v19 = vzip2q_s8(v14, v15);
    *result = vzip1q_s16(v16, v18);
    result[1] = vzip2q_s16(v16, v18);
    result[2] = vzip1q_s16(v17, v19);
    result[3] = vzip2q_s16(v17, v19);
    v20 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8), v9);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v8);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = vzip1q_s8(v10, v20);
    v25 = vzip2q_s8(v10, v20);
    v26 = vzip1q_s8(v22, v23);
    v27 = vzip2q_s8(v22, v23);
    v28 = &result->i16[v6];
    vst2_s16(v28, v24);
    v28 += 8;
    v29 = &result[2].i16[v6];
    vst2_s16(v29, v25);
    v30 = a2 + 1;
    result = (result + a3);
    --v5;
    *v28 = vzip2q_s16(v24, v26);
    v11[3] = vzip2q_s16(v25, v27);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v31 = v30 + 4;
  v32 = v30 + 16;
  v33 = v30 + 20;
  a2 = v30;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v34[-2].i16;
      v43 = *v31++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v32++;
      v46 = v45;
      v47 = *v33++;
      v48 = vqsubq_u8(veorq_s8(v44, v36), v37);
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v46), v47), v36);
      v50 = vzip1q_s8(v49, v49);
      v51 = vzip2q_s8(v49, v49);
      v52 = vzip1q_s8(v38, v48);
      v53 = vzip2q_s8(v38, v48);
      v54 = vzip1q_s8(v50, v51);
      vst2_s16(v42, v52);
      v55 = vzip2q_s8(v50, v51);
      v34[-1] = vzip2q_s16(v52, v54);
      vst2_s16(i16, v53);
      i16 = (i16 + a3);
      v34[1] = vzip2q_s16(v53, v55);
      --v35;
      v34 = i16;
    }

    while (v35 > 1);
  }

  return result;
}

int16x8_t *from_422_to_r408<8,4,(AlphaOutputMethod)2,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 4;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v31 = a2 + 4;
    v32 = a2 + 16;
    v33 = a2 + 20;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 2 * a3;
  v7 = a4 - 3;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x1010101010101010;
  v9.i64[1] = 0x1010101010101010;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  do
  {
    v11 = (result + v6 * 2);
    v12 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[4]), v8), v9);
    v13 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), v8);
    v14 = vzip1q_s8(v13, v13);
    v15 = vzip2q_s8(v13, v13);
    v16 = vzip1q_s8(v10, v12);
    v17 = vzip2q_s8(v10, v12);
    v18 = vzip1q_s8(v14, v15);
    v19 = vzip2q_s8(v14, v15);
    *result = vzip1q_s16(v16, v18);
    result[1] = vzip2q_s16(v16, v18);
    result[2] = vzip1q_s16(v17, v19);
    result[3] = vzip2q_s16(v17, v19);
    v20 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]), v8), v9);
    v21 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), v8);
    v22 = vzip1q_s8(v21, v21);
    v23 = vzip2q_s8(v21, v21);
    v24 = vzip1q_s8(v10, v20);
    v25 = vzip2q_s8(v10, v20);
    v26 = vzip1q_s8(v22, v23);
    v27 = vzip2q_s8(v22, v23);
    v28 = &result->i16[v6];
    vst2_s16(v28, v24);
    v28 += 8;
    v29 = &result[2].i16[v6];
    vst2_s16(v29, v25);
    v30 = a2 + 1;
    result = (result + a3);
    --v5;
    *v28 = vzip2q_s16(v24, v26);
    v11[3] = vzip2q_s16(v25, v27);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v31 = v30 + 4;
  v32 = v30 + 16;
  v33 = v30 + 20;
  a2 = v30;
  if (v5 >= 1)
  {
LABEL_10:
    v34 = result + 2;
    v35 = v5 + 1;
    v36.i64[0] = 0x8080808080808080;
    v36.i64[1] = 0x8080808080808080;
    v37.i64[0] = 0x1010101010101010;
    v37.i64[1] = 0x1010101010101010;
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    i16 = result[2].i16;
    do
    {
      v40 = *a2++;
      v41 = v40;
      v42 = v34[-2].i16;
      v43 = *v31++;
      v44 = vqmovn_high_s16(vqmovn_s16(v41), v43);
      v45 = *v32++;
      v46 = v45;
      v47 = *v33++;
      v48 = vqsubq_u8(veorq_s8(v44, v36), v37);
      v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v46), v47), v36);
      v50 = vzip1q_s8(v49, v49);
      v51 = vzip2q_s8(v49, v49);
      v52 = vzip1q_s8(v38, v48);
      v53 = vzip2q_s8(v38, v48);
      v54 = vzip1q_s8(v50, v51);
      vst2_s16(v42, v52);
      v55 = vzip2q_s8(v50, v51);
      v34[-1] = vzip2q_s16(v52, v54);
      vst2_s16(i16, v53);
      i16 = (i16 + a3);
      v34[1] = vzip2q_s16(v53, v55);
      --v35;
      v34 = i16;
    }

    while (v35 > 1);
  }

  return result;
}

int8x16_t from_422_to_r408<4,8,(AlphaOutputMethod)2,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v33 = a2 + 4;
    v34 = a2 + 8;
    v35 = a2 + 12;
    v36 = a2 + 16;
    v37 = a2 + 20;
    v38 = a2 + 24;
    v39 = a2 + 28;
    v40 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v41 = vqmovn_high_s16(vqmovn_s16(*v34), *v35);
      v42.i64[0] = 0x8080808080808080;
      v42.i64[1] = 0x8080808080808080;
      v43.i64[0] = 0x1010101010101010;
      v43.i64[1] = 0x1010101010101010;
      v44 = vqsubq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), v42), v43);
      v45 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v38), *v39), v42);
      v43.i64[0] = -1;
      v43.i64[1] = -1;
      v46 = vzip1q_s8(v43, v44);
      v47 = vzip1q_s8(vzip1q_s8(v45, v45), vzip2q_s8(v45, v45));
      v48 = vzip1q_s16(v46, v47);
      result = vzip2q_s16(v46, v47);
      *v40 = v48;
      v40[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v49 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v50.i64[0] = 0x1010101010101010;
    v50.i64[1] = 0x1010101010101010;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    do
    {
      v52 = v7;
      v53 = vqmovn_high_s16(vqmovn_s16(a2[v49]), v33[v49]);
      v54 = vqsubq_u8(veorq_s8(vuzp1q_s32(v53, vrev64q_s32(v53)), result), v50);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v36[v49]), v37[v49]), result);
      v56 = vzip1q_s8(v55, v55);
      v57 = vzip2q_s8(v55, v55);
      v58 = vzip1q_s8(v51, v54);
      v59 = vzip1q_s8(v56, v57);
      *a1 = vzip1q_s16(v58, v59);
      a1[1] = vzip2q_s16(v58, v59);
      v60 = vzip2q_s8(v51, v54);
      v61 = vzip2q_s8(v56, v57);
      v62 = (a1->i16 + a3);
      vst2_s16(v62, v60);
      v62 += 8;
      *v62 = vzip2q_s16(v60, v61);
      a1 = (a1 + 2 * a3);
      v7 = v52 - 2;
      ++v49;
    }

    while (v52 > 3);
    a2 = (a2 + v49 * 16);
    v33 = (v33 + v49 * 16);
    v36 = (v36 + v49 * 16);
    v37 = (v37 + v49 * 16);
    if (v52 != 3)
    {
      return result;
    }

LABEL_18:
    v63 = vqmovn_high_s16(vqmovn_s16(*a2), *v33);
    v64.i64[0] = 0x8080808080808080;
    v64.i64[1] = 0x8080808080808080;
    v65.i64[0] = 0x1010101010101010;
    v65.i64[1] = 0x1010101010101010;
    v66 = vqsubq_u8(veorq_s8(vuzp1q_s32(v63, vrev64q_s32(v63)), v64), v65);
    v67 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v36), *v37), v64);
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v68 = vzip1q_s8(v65, v66);
    v69 = vzip1q_s8(vzip1q_s8(v67, v67), vzip2q_s8(v67, v67));
    v70 = vzip1q_s16(v68, v69);
    result = vzip2q_s16(v68, v69);
    *a1 = v70;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v6 = a4 - 8;
  do
  {
    v10 = v6;
    v11 = a2 + 1;
    v12 = &a1->i16[v5 / 2];
    v13 = vqmovn_high_s16(vqmovn_s16(*a2), a2[4]);
    v14 = vqsubq_u8(veorq_s8(vuzp1q_s32(v13, vrev64q_s32(v13)), result), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), result);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(v9, v14);
    v19 = vzip1q_s8(v16, v17);
    *a1 = vzip1q_s16(v18, v19);
    a1[1] = vzip2q_s16(v18, v19);
    v20 = vzip2q_s8(v9, v14);
    v21 = vzip2q_s8(v16, v17);
    v22 = (a1->i16 + a3);
    vst2_s16(v22, v20);
    v22 += 8;
    *v22 = vzip2q_s16(v20, v21);
    v23 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]);
    v25 = vqsubq_u8(veorq_s8(vuzp1q_s32(v24, vrev64q_s32(v24)), result), v8);
    v26 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), result);
    v27 = vzip1q_s8(v26, v26);
    v28 = vzip2q_s8(v26, v26);
    v29 = vzip1q_s8(v9, v25);
    v30 = vzip1q_s8(v27, v28);
    vst2_s16(v12, v29);
    v12 += 8;
    *v12 = vzip2q_s16(v29, v30);
    v31 = vzip2q_s8(v9, v25);
    v32 = vzip2q_s8(v27, v28);
    vst2_s16(v23, v31);
    v23 += 8;
    v7 -= 2;
    *v23 = vzip2q_s16(v31, v32);
    v6 = v10 - 2;
    ++a2;
  }

  while (v10 > 3);
  v33 = v11 + 4;
  v34 = v11 + 8;
  v35 = v11 + 12;
  v36 = v11 + 16;
  v37 = v11 + 20;
  v38 = v11 + 24;
  v39 = v11 + 28;
  v40 = &a1->i8[v5];
  a2 = v11;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_r408<4,8,(AlphaOutputMethod)2,true>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 8 * a3;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v33 = a2 + 4;
    v34 = a2 + 8;
    v35 = a2 + 12;
    v36 = a2 + 16;
    v37 = a2 + 20;
    v38 = a2 + 24;
    v39 = a2 + 28;
    v40 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v41 = vqmovn_high_s16(vqmovn_s16(*v34), *v35);
      v42.i64[0] = 0x8080808080808080;
      v42.i64[1] = 0x8080808080808080;
      v43.i64[0] = 0x1010101010101010;
      v43.i64[1] = 0x1010101010101010;
      v44 = vqsubq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), v42), v43);
      v45 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v38), *v39), v42);
      v43.i64[0] = -1;
      v43.i64[1] = -1;
      v46 = vzip1q_s8(v43, v44);
      v47 = vzip1q_s8(vzip1q_s8(v45, v45), vzip2q_s8(v45, v45));
      v48 = vzip1q_s16(v46, v47);
      result = vzip2q_s16(v46, v47);
      *v40 = v48;
      v40[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v49 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v50.i64[0] = 0x1010101010101010;
    v50.i64[1] = 0x1010101010101010;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    do
    {
      v52 = v7;
      v53 = vqmovn_high_s16(vqmovn_s16(a2[v49]), v33[v49]);
      v54 = vqsubq_u8(veorq_s8(vuzp1q_s32(v53, vrev64q_s32(v53)), result), v50);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v36[v49]), v37[v49]), result);
      v56 = vzip1q_s8(v55, v55);
      v57 = vzip2q_s8(v55, v55);
      v58 = vzip1q_s8(v51, v54);
      v59 = vzip1q_s8(v56, v57);
      *a1 = vzip1q_s16(v58, v59);
      a1[1] = vzip2q_s16(v58, v59);
      v60 = vzip2q_s8(v51, v54);
      v61 = vzip2q_s8(v56, v57);
      v62 = (a1->i16 + a3);
      vst2_s16(v62, v60);
      v62 += 8;
      *v62 = vzip2q_s16(v60, v61);
      a1 = (a1 + 2 * a3);
      v7 = v52 - 2;
      ++v49;
    }

    while (v52 > 3);
    a2 = (a2 + v49 * 16);
    v33 = (v33 + v49 * 16);
    v36 = (v36 + v49 * 16);
    v37 = (v37 + v49 * 16);
    if (v52 != 3)
    {
      return result;
    }

LABEL_18:
    v63 = vqmovn_high_s16(vqmovn_s16(*a2), *v33);
    v64.i64[0] = 0x8080808080808080;
    v64.i64[1] = 0x8080808080808080;
    v65.i64[0] = 0x1010101010101010;
    v65.i64[1] = 0x1010101010101010;
    v66 = vqsubq_u8(veorq_s8(vuzp1q_s32(v63, vrev64q_s32(v63)), v64), v65);
    v67 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v36), *v37), v64);
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v68 = vzip1q_s8(v65, v66);
    v69 = vzip1q_s8(vzip1q_s8(v67, v67), vzip2q_s8(v67, v67));
    v70 = vzip1q_s16(v68, v69);
    result = vzip2q_s16(v68, v69);
    *a1 = v70;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v6 = a4 - 8;
  do
  {
    v10 = v6;
    v11 = a2 + 1;
    v12 = &a1->i16[v5 / 2];
    v13 = vqmovn_high_s16(vqmovn_s16(*a2), a2[4]);
    v14 = vqsubq_u8(veorq_s8(vuzp1q_s32(v13, vrev64q_s32(v13)), result), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[20]), result);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(v9, v14);
    v19 = vzip1q_s8(v16, v17);
    *a1 = vzip1q_s16(v18, v19);
    a1[1] = vzip2q_s16(v18, v19);
    v20 = vzip2q_s8(v9, v14);
    v21 = vzip2q_s8(v16, v17);
    v22 = (a1->i16 + a3);
    vst2_s16(v22, v20);
    v22 += 8;
    *v22 = vzip2q_s16(v20, v21);
    v23 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[8]), a2[12]);
    v25 = vqsubq_u8(veorq_s8(vuzp1q_s32(v24, vrev64q_s32(v24)), result), v8);
    v26 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[24]), a2[28]), result);
    v27 = vzip1q_s8(v26, v26);
    v28 = vzip2q_s8(v26, v26);
    v29 = vzip1q_s8(v9, v25);
    v30 = vzip1q_s8(v27, v28);
    vst2_s16(v12, v29);
    v12 += 8;
    *v12 = vzip2q_s16(v29, v30);
    v31 = vzip2q_s8(v9, v25);
    v32 = vzip2q_s8(v27, v28);
    vst2_s16(v23, v31);
    v23 += 8;
    v7 -= 2;
    *v23 = vzip2q_s16(v31, v32);
    v6 = v10 - 2;
    ++a2;
  }

  while (v10 > 3);
  v33 = v11 + 4;
  v34 = v11 + 8;
  v35 = v11 + 12;
  v36 = v11 + 16;
  v37 = v11 + 20;
  v38 = v11 + 24;
  v39 = v11 + 28;
  v40 = &a1->i8[v5];
  a2 = v11;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_r408<4,4,(AlphaOutputMethod)2,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v33 = a2 + 2;
    v34 = a2 + 4;
    v35 = a2 + 6;
    v36 = a2 + 8;
    v37 = a2 + 10;
    v38 = a2 + 12;
    v39 = a2 + 14;
    v40 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v41 = vqmovn_high_s16(vqmovn_s16(*v34), *v35);
      v42.i64[0] = 0x8080808080808080;
      v42.i64[1] = 0x8080808080808080;
      v43.i64[0] = 0x1010101010101010;
      v43.i64[1] = 0x1010101010101010;
      v44 = vqsubq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), v42), v43);
      v45 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v38), *v39), v42);
      v43.i64[0] = -1;
      v43.i64[1] = -1;
      v46 = vzip1q_s8(v43, v44);
      v47 = vzip1q_s8(vzip1q_s8(v45, v45), vzip2q_s8(v45, v45));
      v48 = vzip1q_s16(v46, v47);
      result = vzip2q_s16(v46, v47);
      *v40 = v48;
      v40[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v49 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v50.i64[0] = 0x1010101010101010;
    v50.i64[1] = 0x1010101010101010;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    do
    {
      v52 = v7;
      v53 = vqmovn_high_s16(vqmovn_s16(a2[v49]), v33[v49]);
      v54 = vqsubq_u8(veorq_s8(vuzp1q_s32(v53, vrev64q_s32(v53)), result), v50);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v36[v49]), v37[v49]), result);
      v56 = vzip1q_s8(v55, v55);
      v57 = vzip2q_s8(v55, v55);
      v58 = vzip1q_s8(v51, v54);
      v59 = vzip1q_s8(v56, v57);
      *a1 = vzip1q_s16(v58, v59);
      a1[1] = vzip2q_s16(v58, v59);
      v60 = vzip2q_s8(v51, v54);
      v61 = vzip2q_s8(v56, v57);
      v62 = (a1->i16 + a3);
      vst2_s16(v62, v60);
      v62 += 8;
      *v62 = vzip2q_s16(v60, v61);
      a1 = (a1 + 2 * a3);
      v7 = v52 - 2;
      ++v49;
    }

    while (v52 > 3);
    a2 = (a2 + v49 * 16);
    v33 = (v33 + v49 * 16);
    v36 = (v36 + v49 * 16);
    v37 = (v37 + v49 * 16);
    if (v52 != 3)
    {
      return result;
    }

LABEL_18:
    v63 = vqmovn_high_s16(vqmovn_s16(*a2), *v33);
    v64.i64[0] = 0x8080808080808080;
    v64.i64[1] = 0x8080808080808080;
    v65.i64[0] = 0x1010101010101010;
    v65.i64[1] = 0x1010101010101010;
    v66 = vqsubq_u8(veorq_s8(vuzp1q_s32(v63, vrev64q_s32(v63)), v64), v65);
    v67 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v36), *v37), v64);
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v68 = vzip1q_s8(v65, v66);
    v69 = vzip1q_s8(vzip1q_s8(v67, v67), vzip2q_s8(v67, v67));
    v70 = vzip1q_s16(v68, v69);
    result = vzip2q_s16(v68, v69);
    *a1 = v70;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v6 = a4 - 4;
  do
  {
    v10 = v6;
    v11 = a2 + 1;
    v12 = &a1->i16[v5 / 2];
    v13 = vqmovn_high_s16(vqmovn_s16(*a2), a2[2]);
    v14 = vqsubq_u8(veorq_s8(vuzp1q_s32(v13, vrev64q_s32(v13)), result), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[10]), result);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(v9, v14);
    v19 = vzip1q_s8(v16, v17);
    *a1 = vzip1q_s16(v18, v19);
    a1[1] = vzip2q_s16(v18, v19);
    v20 = vzip2q_s8(v9, v14);
    v21 = vzip2q_s8(v16, v17);
    v22 = (a1->i16 + a3);
    vst2_s16(v22, v20);
    v22 += 8;
    *v22 = vzip2q_s16(v20, v21);
    v23 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]);
    v25 = vqsubq_u8(veorq_s8(vuzp1q_s32(v24, vrev64q_s32(v24)), result), v8);
    v26 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[14]), result);
    v27 = vzip1q_s8(v26, v26);
    v28 = vzip2q_s8(v26, v26);
    v29 = vzip1q_s8(v9, v25);
    v30 = vzip1q_s8(v27, v28);
    vst2_s16(v12, v29);
    v12 += 8;
    *v12 = vzip2q_s16(v29, v30);
    v31 = vzip2q_s8(v9, v25);
    v32 = vzip2q_s8(v27, v28);
    vst2_s16(v23, v31);
    v23 += 8;
    v7 -= 2;
    *v23 = vzip2q_s16(v31, v32);
    v6 = v10 - 2;
    ++a2;
  }

  while (v10 > 3);
  v33 = v11 + 2;
  v34 = v11 + 4;
  v35 = v11 + 6;
  v36 = v11 + 8;
  v37 = v11 + 10;
  v38 = v11 + 12;
  v39 = v11 + 14;
  v40 = &a1->i8[v5];
  a2 = v11;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_r408<4,4,(AlphaOutputMethod)2,true>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 4 * a3;
  if (a4 <= 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 4;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v33 = a2 + 2;
    v34 = a2 + 4;
    v35 = a2 + 6;
    v36 = a2 + 8;
    v37 = a2 + 10;
    v38 = a2 + 12;
    v39 = a2 + 14;
    v40 = &a1->i8[v5];
    if (!(v7 + v6))
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v41 = vqmovn_high_s16(vqmovn_s16(*v34), *v35);
      v42.i64[0] = 0x8080808080808080;
      v42.i64[1] = 0x8080808080808080;
      v43.i64[0] = 0x1010101010101010;
      v43.i64[1] = 0x1010101010101010;
      v44 = vqsubq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), v42), v43);
      v45 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v38), *v39), v42);
      v43.i64[0] = -1;
      v43.i64[1] = -1;
      v46 = vzip1q_s8(v43, v44);
      v47 = vzip1q_s8(vzip1q_s8(v45, v45), vzip2q_s8(v45, v45));
      v48 = vzip1q_s16(v46, v47);
      result = vzip2q_s16(v46, v47);
      *v40 = v48;
      v40[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v49 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v50.i64[0] = 0x1010101010101010;
    v50.i64[1] = 0x1010101010101010;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    do
    {
      v52 = v7;
      v53 = vqmovn_high_s16(vqmovn_s16(a2[v49]), v33[v49]);
      v54 = vqsubq_u8(veorq_s8(vuzp1q_s32(v53, vrev64q_s32(v53)), result), v50);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v36[v49]), v37[v49]), result);
      v56 = vzip1q_s8(v55, v55);
      v57 = vzip2q_s8(v55, v55);
      v58 = vzip1q_s8(v51, v54);
      v59 = vzip1q_s8(v56, v57);
      *a1 = vzip1q_s16(v58, v59);
      a1[1] = vzip2q_s16(v58, v59);
      v60 = vzip2q_s8(v51, v54);
      v61 = vzip2q_s8(v56, v57);
      v62 = (a1->i16 + a3);
      vst2_s16(v62, v60);
      v62 += 8;
      *v62 = vzip2q_s16(v60, v61);
      a1 = (a1 + 2 * a3);
      v7 = v52 - 2;
      ++v49;
    }

    while (v52 > 3);
    a2 = (a2 + v49 * 16);
    v33 = (v33 + v49 * 16);
    v36 = (v36 + v49 * 16);
    v37 = (v37 + v49 * 16);
    if (v52 != 3)
    {
      return result;
    }

LABEL_18:
    v63 = vqmovn_high_s16(vqmovn_s16(*a2), *v33);
    v64.i64[0] = 0x8080808080808080;
    v64.i64[1] = 0x8080808080808080;
    v65.i64[0] = 0x1010101010101010;
    v65.i64[1] = 0x1010101010101010;
    v66 = vqsubq_u8(veorq_s8(vuzp1q_s32(v63, vrev64q_s32(v63)), v64), v65);
    v67 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v36), *v37), v64);
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v68 = vzip1q_s8(v65, v66);
    v69 = vzip1q_s8(vzip1q_s8(v67, v67), vzip2q_s8(v67, v67));
    v70 = vzip1q_s16(v68, v69);
    result = vzip2q_s16(v68, v69);
    *a1 = v70;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v6 = a4 - 4;
  do
  {
    v10 = v6;
    v11 = a2 + 1;
    v12 = &a1->i16[v5 / 2];
    v13 = vqmovn_high_s16(vqmovn_s16(*a2), a2[2]);
    v14 = vqsubq_u8(veorq_s8(vuzp1q_s32(v13, vrev64q_s32(v13)), result), v8);
    v15 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[8]), a2[10]), result);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(v9, v14);
    v19 = vzip1q_s8(v16, v17);
    *a1 = vzip1q_s16(v18, v19);
    a1[1] = vzip2q_s16(v18, v19);
    v20 = vzip2q_s8(v9, v14);
    v21 = vzip2q_s8(v16, v17);
    v22 = (a1->i16 + a3);
    vst2_s16(v22, v20);
    v22 += 8;
    *v22 = vzip2q_s16(v20, v21);
    v23 = (a1->i16 + a3 + v5);
    a1 = (a1 + 2 * a3);
    v24 = vqmovn_high_s16(vqmovn_s16(a2[4]), a2[6]);
    v25 = vqsubq_u8(veorq_s8(vuzp1q_s32(v24, vrev64q_s32(v24)), result), v8);
    v26 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[12]), a2[14]), result);
    v27 = vzip1q_s8(v26, v26);
    v28 = vzip2q_s8(v26, v26);
    v29 = vzip1q_s8(v9, v25);
    v30 = vzip1q_s8(v27, v28);
    vst2_s16(v12, v29);
    v12 += 8;
    *v12 = vzip2q_s16(v29, v30);
    v31 = vzip2q_s8(v9, v25);
    v32 = vzip2q_s8(v27, v28);
    vst2_s16(v23, v31);
    v23 += 8;
    v7 -= 2;
    *v23 = vzip2q_s16(v31, v32);
    v6 = v10 - 2;
    ++a2;
  }

  while (v10 > 3);
  v33 = v11 + 2;
  v34 = v11 + 4;
  v35 = v11 + 6;
  v36 = v11 + 8;
  v37 = v11 + 10;
  v38 = v11 + 12;
  v39 = v11 + 14;
  v40 = &a1->i8[v5];
  a2 = v11;
  if (v7 + v6)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_r408<4,2,(AlphaOutputMethod)2,false>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v33 = a2 + 1;
    v34 = a2 + 2;
    v35 = a2 + 3;
    v36 = a2 + 4;
    v37 = a2 + 5;
    v38 = a2 + 6;
    v39 = a2 + 7;
    v40 = &a1->i8[v5];
    if (!a4)
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v41 = vqmovn_high_s16(vqmovn_s16(*v34), *v35);
      v42.i64[0] = 0x8080808080808080;
      v42.i64[1] = 0x8080808080808080;
      v43.i64[0] = 0x1010101010101010;
      v43.i64[1] = 0x1010101010101010;
      v44 = vqsubq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), v42), v43);
      v45 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v38), *v39), v42);
      v43.i64[0] = -1;
      v43.i64[1] = -1;
      v46 = vzip1q_s8(v43, v44);
      v47 = vzip1q_s8(vzip1q_s8(v45, v45), vzip2q_s8(v45, v45));
      v48 = vzip1q_s16(v46, v47);
      result = vzip2q_s16(v46, v47);
      *v40 = v48;
      v40[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v49 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v50.i64[0] = 0x1010101010101010;
    v50.i64[1] = 0x1010101010101010;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    do
    {
      v52 = v7;
      v53 = vqmovn_high_s16(vqmovn_s16(a2[v49]), v33[v49]);
      v54 = vqsubq_u8(veorq_s8(vuzp1q_s32(v53, vrev64q_s32(v53)), result), v50);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v36[v49]), v37[v49]), result);
      v56 = vzip1q_s8(v55, v55);
      v57 = vzip2q_s8(v55, v55);
      v58 = vzip1q_s8(v51, v54);
      v59 = vzip1q_s8(v56, v57);
      *a1 = vzip1q_s16(v58, v59);
      a1[1] = vzip2q_s16(v58, v59);
      v60 = vzip2q_s8(v51, v54);
      v61 = vzip2q_s8(v56, v57);
      v62 = (a1->i16 + a3);
      vst2_s16(v62, v60);
      v62 += 8;
      *v62 = vzip2q_s16(v60, v61);
      a1 = (a1 + v5);
      v7 = v52 - 2;
      ++v49;
    }

    while (v52 > 3);
    a2 = (a2 + v49 * 16);
    v33 = (v33 + v49 * 16);
    v36 = (v36 + v49 * 16);
    v37 = (v37 + v49 * 16);
    if (v52 != 3)
    {
      return result;
    }

LABEL_18:
    v63 = vqmovn_high_s16(vqmovn_s16(*a2), *v33);
    v64.i64[0] = 0x8080808080808080;
    v64.i64[1] = 0x8080808080808080;
    v65.i64[0] = 0x1010101010101010;
    v65.i64[1] = 0x1010101010101010;
    v66 = vqsubq_u8(veorq_s8(vuzp1q_s32(v63, vrev64q_s32(v63)), v64), v65);
    v67 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v36), *v37), v64);
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v68 = vzip1q_s8(v65, v66);
    v69 = vzip1q_s8(vzip1q_s8(v67, v67), vzip2q_s8(v67, v67));
    v70 = vzip1q_s16(v68, v69);
    result = vzip2q_s16(v68, v69);
    *a1 = v70;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = a2;
  do
  {
    v11 = v10[1];
    ++v10;
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), v11);
    v13 = vqsubq_u8(veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), result), v8);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), result);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v17 = vzip1q_s8(v9, v13);
    v18 = vzip1q_s8(v15, v16);
    *a1 = vzip1q_s16(v17, v18);
    a1[1] = vzip2q_s16(v17, v18);
    v19 = (a1->i16 + a3);
    v20 = (a1->i16 + a3 + v5);
    a1 = (a1 + v5);
    v21 = vzip2q_s8(v9, v13);
    v22 = vzip2q_s8(v15, v16);
    vst2_s16(v19, v21);
    v19 += 8;
    *v19 = vzip2q_s16(v21, v22);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v24 = vqsubq_u8(veorq_s8(vuzp1q_s32(v23, vrev64q_s32(v23)), result), v8);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), result);
    v26 = vzip1q_s8(v25, v25);
    v27 = vzip2q_s8(v25, v25);
    v28 = vzip1q_s8(v9, v24);
    v29 = vzip1q_s8(v26, v27);
    v30 = a1;
    vst2_s16(v30, v28);
    v30 += 8;
    *v30 = vzip2q_s16(v28, v29);
    v31 = vzip2q_s8(v9, v24);
    v32 = vzip2q_s8(v26, v27);
    vst2_s16(v20, v31);
    v20 += 8;
    v7 -= 2;
    *v20 = vzip2q_s16(v31, v32);
    a4 -= 2;
    a2 = v10;
  }

  while (a4 > 3);
  v33 = v10 + 1;
  v34 = v10 + 2;
  v35 = v10 + 3;
  v36 = v10 + 4;
  v37 = v10 + 5;
  v38 = v10 + 6;
  v39 = v10 + 7;
  v6 = a4 - 2;
  v40 = &a1->i8[v5];
  a2 = v10;
  if (v7 + a4 - 2)
  {
    goto LABEL_10;
  }

  return result;
}

int8x16_t from_422_to_r408<4,2,(AlphaOutputMethod)2,true>(int16x8_t *a1, int16x8_t *a2, int a3, int a4, int8x16_t result)
{
  v5 = 2 * a3;
  if (a4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 2;
  }

  v7 = a4 - v6;
  if (v6 < 2)
  {
    v33 = a2 + 1;
    v34 = a2 + 2;
    v35 = a2 + 3;
    v36 = a2 + 4;
    v37 = a2 + 5;
    v38 = a2 + 6;
    v39 = a2 + 7;
    v40 = &a1->i8[v5];
    if (!a4)
    {
      return result;
    }

LABEL_10:
    if (v6 == 1)
    {
      v41 = vqmovn_high_s16(vqmovn_s16(*v34), *v35);
      v42.i64[0] = 0x8080808080808080;
      v42.i64[1] = 0x8080808080808080;
      v43.i64[0] = 0x1010101010101010;
      v43.i64[1] = 0x1010101010101010;
      v44 = vqsubq_u8(veorq_s8(vuzp1q_s32(v41, vrev64q_s32(v41)), v42), v43);
      v45 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v38), *v39), v42);
      v43.i64[0] = -1;
      v43.i64[1] = -1;
      v46 = vzip1q_s8(v43, v44);
      v47 = vzip1q_s8(vzip1q_s8(v45, v45), vzip2q_s8(v45, v45));
      v48 = vzip1q_s16(v46, v47);
      result = vzip2q_s16(v46, v47);
      *v40 = v48;
      v40[1] = result;
      if (v7 < 2)
      {
LABEL_12:
        if (v7 != 1)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    else if (v7 < 2)
    {
      goto LABEL_12;
    }

    v49 = 0;
    result.i16[0] = -32640;
    result.i8[2] = 0x80;
    result.i8[3] = 0x80;
    result.i8[4] = 0x80;
    result.i8[5] = 0x80;
    result.i8[6] = 0x80;
    result.i8[7] = 0x80;
    result.i8[8] = 0x80;
    result.i8[9] = 0x80;
    result.i8[10] = 0x80;
    result.i8[11] = 0x80;
    result.i8[12] = 0x80;
    result.i8[13] = 0x80;
    result.i8[14] = 0x80;
    result.i8[15] = 0x80;
    v50.i64[0] = 0x1010101010101010;
    v50.i64[1] = 0x1010101010101010;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    do
    {
      v52 = v7;
      v53 = vqmovn_high_s16(vqmovn_s16(a2[v49]), v33[v49]);
      v54 = vqsubq_u8(veorq_s8(vuzp1q_s32(v53, vrev64q_s32(v53)), result), v50);
      v55 = veorq_s8(vqmovn_high_s16(vqmovn_s16(v36[v49]), v37[v49]), result);
      v56 = vzip1q_s8(v55, v55);
      v57 = vzip2q_s8(v55, v55);
      v58 = vzip1q_s8(v51, v54);
      v59 = vzip1q_s8(v56, v57);
      *a1 = vzip1q_s16(v58, v59);
      a1[1] = vzip2q_s16(v58, v59);
      v60 = vzip2q_s8(v51, v54);
      v61 = vzip2q_s8(v56, v57);
      v62 = (a1->i16 + a3);
      vst2_s16(v62, v60);
      v62 += 8;
      *v62 = vzip2q_s16(v60, v61);
      a1 = (a1 + v5);
      v7 = v52 - 2;
      ++v49;
    }

    while (v52 > 3);
    a2 = (a2 + v49 * 16);
    v33 = (v33 + v49 * 16);
    v36 = (v36 + v49 * 16);
    v37 = (v37 + v49 * 16);
    if (v52 != 3)
    {
      return result;
    }

LABEL_18:
    v63 = vqmovn_high_s16(vqmovn_s16(*a2), *v33);
    v64.i64[0] = 0x8080808080808080;
    v64.i64[1] = 0x8080808080808080;
    v65.i64[0] = 0x1010101010101010;
    v65.i64[1] = 0x1010101010101010;
    v66 = vqsubq_u8(veorq_s8(vuzp1q_s32(v63, vrev64q_s32(v63)), v64), v65);
    v67 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*v36), *v37), v64);
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v68 = vzip1q_s8(v65, v66);
    v69 = vzip1q_s8(vzip1q_s8(v67, v67), vzip2q_s8(v67, v67));
    v70 = vzip1q_s16(v68, v69);
    result = vzip2q_s16(v68, v69);
    *a1 = v70;
    a1[1] = result;
    return result;
  }

  result.i16[0] = -32640;
  result.i8[2] = 0x80;
  result.i8[3] = 0x80;
  result.i8[4] = 0x80;
  result.i8[5] = 0x80;
  result.i8[6] = 0x80;
  result.i8[7] = 0x80;
  result.i8[8] = 0x80;
  result.i8[9] = 0x80;
  result.i8[10] = 0x80;
  result.i8[11] = 0x80;
  result.i8[12] = 0x80;
  result.i8[13] = 0x80;
  result.i8[14] = 0x80;
  result.i8[15] = 0x80;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = a2;
  do
  {
    v11 = v10[1];
    ++v10;
    v12 = vqmovn_high_s16(vqmovn_s16(*a2), v11);
    v13 = vqsubq_u8(veorq_s8(vuzp1q_s32(v12, vrev64q_s32(v12)), result), v8);
    v14 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), result);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v17 = vzip1q_s8(v9, v13);
    v18 = vzip1q_s8(v15, v16);
    *a1 = vzip1q_s16(v17, v18);
    a1[1] = vzip2q_s16(v17, v18);
    v19 = (a1->i16 + a3);
    v20 = (a1->i16 + a3 + v5);
    a1 = (a1 + v5);
    v21 = vzip2q_s8(v9, v13);
    v22 = vzip2q_s8(v15, v16);
    vst2_s16(v19, v21);
    v19 += 8;
    *v19 = vzip2q_s16(v21, v22);
    v23 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v24 = vqsubq_u8(veorq_s8(vuzp1q_s32(v23, vrev64q_s32(v23)), result), v8);
    v25 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), result);
    v26 = vzip1q_s8(v25, v25);
    v27 = vzip2q_s8(v25, v25);
    v28 = vzip1q_s8(v9, v24);
    v29 = vzip1q_s8(v26, v27);
    v30 = a1;
    vst2_s16(v30, v28);
    v30 += 8;
    *v30 = vzip2q_s16(v28, v29);
    v31 = vzip2q_s8(v9, v24);
    v32 = vzip2q_s8(v26, v27);
    vst2_s16(v20, v31);
    v20 += 8;
    v7 -= 2;
    *v20 = vzip2q_s16(v31, v32);
    a4 -= 2;
    a2 = v10;
  }

  while (a4 > 3);
  v33 = v10 + 1;
  v34 = v10 + 2;
  v35 = v10 + 3;
  v36 = v10 + 4;
  v37 = v10 + 5;
  v38 = v10 + 6;
  v39 = v10 + 7;
  v6 = a4 - 2;
  v40 = &a1->i8[v5];
  a2 = v10;
  if (v7 + a4 - 2)
  {
    goto LABEL_10;
  }

  return result;
}

int16x8_t from_422_to_r408<2,4,(AlphaOutputMethod)2,false>(__int16 *a1, int16x8_t *a2, int a3, int a4, int16x8_t result)
{
  v5 = &a1[2 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7.i64[0] = 0x8080808080808080;
    v7.i64[1] = 0x8080808080808080;
    v8.i64[0] = 0x1010101010101010;
    v8.i64[1] = 0x1010101010101010;
    v9 = vqsubq_u8(veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v7), v8);
    v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v7);
    v11 = vzip1q_s8(v10, v10);
    v12 = vzip2q_s8(v10, v10);
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = vzip1q_s8(v13, v9);
    v15 = vzip2q_s8(v13, v9);
    v16 = vzip1q_s8(v11, v12);
    v17 = vzip2q_s8(v11, v12);
    vst2_s16(a1, v14);
    v18 = (a1 + a3);
    *v18 = vzip2q_s16(v14, v16);
    v19 = (v18->i16 + a3);
    vst2_s16(v19, v15);
    v20 = (v19 + a3);
    *v20 = vzip2q_s16(v15, v17);
    v21 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v22 = vqsubq_u8(veorq_s8(vzip1q_s16(v21, vdupq_laneq_s64(v21, 1)), v7), v8);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v7);
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26 = vzip1q_s8(v13, v22);
    v27 = vzip2q_s8(v13, v22);
    v28 = vzip1q_s8(v24, v25);
    v29 = vzip2q_s8(v24, v25);
    vst2_s16(v5, v26);
    v30 = (v5 + a3);
    *v30 = vzip2q_s16(v26, v28);
    v31 = (v30->i16 + a3);
    vst2_s16(v31, v27);
    v32 = (v31 + a3);
    result = vzip2q_s16(v27, v29);
    *v32 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v56 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v57.i64[0] = 0x8080808080808080;
      v57.i64[1] = 0x8080808080808080;
      v58.i64[0] = 0x1010101010101010;
      v58.i64[1] = 0x1010101010101010;
      v59 = vqsubq_u8(veorq_s8(vzip1q_s16(v56, vdupq_laneq_s64(v56, 1)), v57), v58);
      v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v57);
      v61 = vzip1q_s8(v60, v60);
      v62 = vzip2q_s8(v60, v60);
      v63.i64[0] = -1;
      v63.i64[1] = -1;
      result = vzip1q_s8(v63, v59);
      v64 = vzip1q_s8(v61, v62);
      vst2_s16(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(result, v64);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v65 = vzip2q_s8(v61, v62);
        v66 = vzip2q_s8(v63, v59);
        result = vzip2q_s16(result, v64);
        *(a1 + a3) = result;
        v67 = (a1 + a3 + a3);
        vst2_s16(v67, v66);
        if (a4 == 4)
        {
          result = vzip2q_s16(v66, v65);
          *(v67 + a3) = result;
        }
      }
    }
  }

  else
  {
    v33 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v34.i64[0] = 0x8080808080808080;
    v34.i64[1] = 0x8080808080808080;
    v35.i64[0] = 0x1010101010101010;
    v35.i64[1] = 0x1010101010101010;
    v36 = vqsubq_u8(veorq_s8(vzip1q_s16(v33, vdupq_laneq_s64(v33, 1)), v34), v35);
    v37 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v34);
    v38 = vzip1q_s8(v37, v37);
    v39 = vzip2q_s8(v37, v37);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v40 = vzip1q_s8(result, v36);
    v41 = vzip2q_s8(result, v36);
    v42 = vzip1q_s8(v38, v39);
    v43 = vzip2q_s8(v38, v39);
    vst2_s16(a1, v40);
    v44 = (a1 + a3);
    *v44 = vzip2q_s16(v40, v42);
    v45 = (v44->i16 + a3);
    vst2_s16(v45, v41);
    v46 = (v45 + a3);
    *v46 = vzip2q_s16(v41, v43);
    v47 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v48 = vqsubq_u8(veorq_s8(vzip1q_s16(v47, vdupq_laneq_s64(v47, 1)), v34), v35);
    v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v34);
    v50 = vzip1q_s8(v49, v49);
    v51 = vzip2q_s8(v49, v49);
    v52 = vzip1q_s8(result, v48);
    v53 = vzip1q_s8(v50, v51);
    vst2_s16(v5, v52);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s16(v52, v53);
        *(v5 + a3) = result;
      }
    }

    else
    {
      v68.val[1] = vzip2q_s8(v50, v51).u64[0];
      v68.val[0] = vzip2q_s8(result, v48).u64[0];
      v54 = (v5 + a3);
      result = vzip2q_s16(v52, v53);
      *v54 = result;
      v55 = (v54->i16 + a3);
      vst2_s16(v55, v68);
    }
  }

  return result;
}

int16x8_t from_422_to_r408<2,4,(AlphaOutputMethod)2,true>(__int16 *a1, int16x8_t *a2, int a3, int a4, int16x8_t result)
{
  v5 = &a1[2 * a3];
  if (a4 == 8)
  {
    v6 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v7.i64[0] = 0x8080808080808080;
    v7.i64[1] = 0x8080808080808080;
    v8.i64[0] = 0x1010101010101010;
    v8.i64[1] = 0x1010101010101010;
    v9 = vqsubq_u8(veorq_s8(vzip1q_s16(v6, vdupq_laneq_s64(v6, 1)), v7), v8);
    v10 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v7);
    v11 = vzip1q_s8(v10, v10);
    v12 = vzip2q_s8(v10, v10);
    v13.i64[0] = -1;
    v13.i64[1] = -1;
    v14 = vzip1q_s8(v13, v9);
    v15 = vzip2q_s8(v13, v9);
    v16 = vzip1q_s8(v11, v12);
    v17 = vzip2q_s8(v11, v12);
    vst2_s16(a1, v14);
    v18 = (a1 + a3);
    *v18 = vzip2q_s16(v14, v16);
    v19 = (v18->i16 + a3);
    vst2_s16(v19, v15);
    v20 = (v19 + a3);
    *v20 = vzip2q_s16(v15, v17);
    v21 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v22 = vqsubq_u8(veorq_s8(vzip1q_s16(v21, vdupq_laneq_s64(v21, 1)), v7), v8);
    v23 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v7);
    v24 = vzip1q_s8(v23, v23);
    v25 = vzip2q_s8(v23, v23);
    v26 = vzip1q_s8(v13, v22);
    v27 = vzip2q_s8(v13, v22);
    v28 = vzip1q_s8(v24, v25);
    v29 = vzip2q_s8(v24, v25);
    vst2_s16(v5, v26);
    v30 = (v5 + a3);
    *v30 = vzip2q_s16(v26, v28);
    v31 = (v30->i16 + a3);
    vst2_s16(v31, v27);
    v32 = (v31 + a3);
    result = vzip2q_s16(v27, v29);
    *v32 = result;
  }

  else if (a4 < 5)
  {
    if (a4 >= 1)
    {
      v56 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
      v57.i64[0] = 0x8080808080808080;
      v57.i64[1] = 0x8080808080808080;
      v58.i64[0] = 0x1010101010101010;
      v58.i64[1] = 0x1010101010101010;
      v59 = vqsubq_u8(veorq_s8(vzip1q_s16(v56, vdupq_laneq_s64(v56, 1)), v57), v58);
      v60 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v57);
      v61 = vzip1q_s8(v60, v60);
      v62 = vzip2q_s8(v60, v60);
      v63.i64[0] = -1;
      v63.i64[1] = -1;
      result = vzip1q_s8(v63, v59);
      v64 = vzip1q_s8(v61, v62);
      vst2_s16(a1, result);
      if (a4 < 3)
      {
        if (a4 == 2)
        {
          result = vzip2q_s16(result, v64);
          *(a1 + a3) = result;
        }
      }

      else
      {
        v65 = vzip2q_s8(v61, v62);
        v66 = vzip2q_s8(v63, v59);
        result = vzip2q_s16(result, v64);
        *(a1 + a3) = result;
        v67 = (a1 + a3 + a3);
        vst2_s16(v67, v66);
        if (a4 == 4)
        {
          result = vzip2q_s16(v66, v65);
          *(v67 + a3) = result;
        }
      }
    }
  }

  else
  {
    v33 = vqmovn_high_s16(vqmovn_s16(*a2), a2[1]);
    v34.i64[0] = 0x8080808080808080;
    v34.i64[1] = 0x8080808080808080;
    v35.i64[0] = 0x1010101010101010;
    v35.i64[1] = 0x1010101010101010;
    v36 = vqsubq_u8(veorq_s8(vzip1q_s16(v33, vdupq_laneq_s64(v33, 1)), v34), v35);
    v37 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[4]), a2[5]), v34);
    v38 = vzip1q_s8(v37, v37);
    v39 = vzip2q_s8(v37, v37);
    result.i64[0] = -1;
    result.i64[1] = -1;
    v40 = vzip1q_s8(result, v36);
    v41 = vzip2q_s8(result, v36);
    v42 = vzip1q_s8(v38, v39);
    v43 = vzip2q_s8(v38, v39);
    vst2_s16(a1, v40);
    v44 = (a1 + a3);
    *v44 = vzip2q_s16(v40, v42);
    v45 = (v44->i16 + a3);
    vst2_s16(v45, v41);
    v46 = (v45 + a3);
    *v46 = vzip2q_s16(v41, v43);
    v47 = vqmovn_high_s16(vqmovn_s16(a2[2]), a2[3]);
    v48 = vqsubq_u8(veorq_s8(vzip1q_s16(v47, vdupq_laneq_s64(v47, 1)), v34), v35);
    v49 = veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[6]), a2[7]), v34);
    v50 = vzip1q_s8(v49, v49);
    v51 = vzip2q_s8(v49, v49);
    v52 = vzip1q_s8(result, v48);
    v53 = vzip1q_s8(v50, v51);
    vst2_s16(v5, v52);
    if (a4 < 7)
    {
      if (a4 == 6)
      {
        result = vzip2q_s16(v52, v53);
        *(v5 + a3) = result;
      }
    }

    else
    {
      v68.val[1] = vzip2q_s8(v50, v51).u64[0];
      v68.val[0] = vzip2q_s8(result, v48).u64[0];
      v54 = (v5 + a3);
      result = vzip2q_s16(v52, v53);
      *v54 = result;
      v55 = (v54->i16 + a3);
      vst2_s16(v55, v68);
    }
  }

  return result;
}

void from_422_to_r408<2,2,(AlphaOutputMethod)2,false>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5.i64[0] = 0x1010101010101010;
  v5.i64[1] = 0x1010101010101010;
  v6 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4), v5);
  v7 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v4);
  v8 = vuzp1q_s32(v7, vrev64q_s32(v7));
  v9 = vzip1q_s8(v8, v8);
  v10 = vzip2q_s8(v8, v8);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v11 = vzip1q_s8(v8, v6);
  v12 = vzip2q_s8(v8, v6);
  v13 = vzip1q_s8(v9, v10);
  v14 = vzip2q_s8(v9, v10);
  if (a4 == 4)
  {
    v15 = a3;
    vst2_s16(a1, v11);
    v16 = (a1 + v15);
    *v16 = vzip2q_s16(v11, v13);
    v17 = (v16->i16 + a3);
    vst2_s16(v17, v12);
    v18 = (v17 + v15);
    *v18 = vzip2q_s16(v12, v14);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v11);
    }
  }

  else
  {
    v19 = a3;
    vst2_s16(a1, v11);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v11, v13);
    if (a4 == 3)
    {
      v21 = (v20->i16 + a3);
      vst2_s16(v21, v12);
    }
  }
}

void from_422_to_r408<2,2,(AlphaOutputMethod)2,true>(__int16 *a1, uint64_t a2, int a3, int a4)
{
  v4.i64[0] = 0x8080808080808080;
  v4.i64[1] = 0x8080808080808080;
  v5.i64[0] = 0x1010101010101010;
  v5.i64[1] = 0x1010101010101010;
  v6 = vqsubq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(vuzp1q_s32(*a2, vrev64q_s32(*a2))), vuzp1q_s32(*(a2 + 16), vrev64q_s32(*(a2 + 16)))), v4), v5);
  v7 = veorq_s8(vqmovn_high_s16(vqmovn_s16(*(a2 + 32)), *(a2 + 48)), v4);
  v8 = vuzp1q_s32(v7, vrev64q_s32(v7));
  v9 = vzip1q_s8(v8, v8);
  v10 = vzip2q_s8(v8, v8);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v11 = vzip1q_s8(v8, v6);
  v12 = vzip2q_s8(v8, v6);
  v13 = vzip1q_s8(v9, v10);
  v14 = vzip2q_s8(v9, v10);
  if (a4 == 4)
  {
    v15 = a3;
    vst2_s16(a1, v11);
    v16 = (a1 + v15);
    *v16 = vzip2q_s16(v11, v13);
    v17 = (v16->i16 + a3);
    vst2_s16(v17, v12);
    v18 = (v17 + v15);
    *v18 = vzip2q_s16(v12, v14);
  }

  else if (a4 < 2)
  {
    if (a4 == 1)
    {
      vst2_s16(a1, v11);
    }
  }

  else
  {
    v19 = a3;
    vst2_s16(a1, v11);
    v20 = (a1 + v19);
    *v20 = vzip2q_s16(v11, v13);
    if (a4 == 3)
    {
      v21 = (v20->i16 + a3);
      vst2_s16(v21, v12);
    }
  }
}

int8x16_t *from_422_to_v408<8,8,(AlphaOutputMethod)1,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v33 = a2 + 8;
    v34 = a2 + 32;
    v35 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x101010101010101;
  v10.i64[1] = 0x101010101010101;
  v11.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v12 = a2 + 1;
    v13 = (result + 8 * a3);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10), v11);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v9), v10), v11);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(v14, *a5);
    v19 = vzip2q_s8(v14, *a5);
    v20 = vzip1q_s8(v16, v17);
    v21 = vzip2q_s8(v16, v17);
    *result = vzip1q_s8(v20, v18);
    result[1] = vzip2q_s8(v20, v18);
    result[2] = vzip1q_s8(v21, v19);
    result[3] = vzip2q_s8(v21, v19);
    result = (result + a3);
    v22 = *(a5 + 8 * a6);
    --v7;
    a5 = (a5 + a6);
    v23 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10), v11);
    v24 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v9), v10), v11);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = vzip1q_s8(v23, v22);
    v28 = vzip1q_s8(v25, v26);
    v29 = v13;
    vst2_s8(v29, *(&v27 - 8));
    v29 += 16;
    v30 = vzip2q_s8(v23, v22);
    v31 = vzip2q_s8(v25, v26);
    i8 = v13[2].i8;
    vst2_s8(i8, *(&v30 - 8));
    *v29 = vzip2q_s8(v28, v27);
    v13[3] = vzip2q_s8(v31, v30);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v33 = v12 + 8;
  v34 = v12 + 32;
  v35 = v12 + 40;
  a2 = v12;
  if (v7 >= 1)
  {
LABEL_10:
    v36 = result + 2;
    v37 = v7 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v40.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v41 = result[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = v36[-2].i8;
      v45 = *v33++;
      v46 = vqmovn_high_s16(vqmovn_s16(v43), v45);
      v47 = *v34++;
      v48 = v47;
      v49 = *v35++;
      v50 = vminq_u8(vmaxq_u8(veorq_s8(v46, v38), v39), v40);
      v51 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v38), v39), v40);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = vzip1q_s8(v50, *a5);
      v55 = vzip2q_s8(v50, *a5);
      v56 = vzip1q_s8(v52, v53);
      vst2_s8(v44, *(&v54 - 8));
      v57 = vzip2q_s8(v52, v53);
      v36[-1] = vzip2q_s8(v56, v54);
      vst2_s8(v41, *(&v55 - 8));
      v41 += a3;
      v36[1] = vzip2q_s8(v57, v55);
      a5 = (a5 + a6);
      --v37;
      v36 = v41;
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t *from_422_to_v408<8,8,(AlphaOutputMethod)1,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4, int8x16_t *a5, unsigned int a6)
{
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v33 = a2 + 8;
    v34 = a2 + 32;
    v35 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = a4 - 7;
  v9.i64[0] = 0x8080808080808080;
  v9.i64[1] = 0x8080808080808080;
  v10.i64[0] = 0x101010101010101;
  v10.i64[1] = 0x101010101010101;
  v11.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  do
  {
    v12 = a2 + 1;
    v13 = (result + 8 * a3);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v9), v10), v11);
    v15 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v9), v10), v11);
    v16 = vzip1q_s8(v15, v15);
    v17 = vzip2q_s8(v15, v15);
    v18 = vzip1q_s8(v14, *a5);
    v19 = vzip2q_s8(v14, *a5);
    v20 = vzip1q_s8(v16, v17);
    v21 = vzip2q_s8(v16, v17);
    *result = vzip1q_s8(v20, v18);
    result[1] = vzip2q_s8(v20, v18);
    result[2] = vzip1q_s8(v21, v19);
    result[3] = vzip2q_s8(v21, v19);
    result = (result + a3);
    v22 = *(a5 + 8 * a6);
    --v7;
    a5 = (a5 + a6);
    v23 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v9), v10), v11);
    v24 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v9), v10), v11);
    v25 = vzip1q_s8(v24, v24);
    v26 = vzip2q_s8(v24, v24);
    v27 = vzip1q_s8(v23, v22);
    v28 = vzip1q_s8(v25, v26);
    v29 = v13;
    vst2_s8(v29, *(&v27 - 8));
    v29 += 16;
    v30 = vzip2q_s8(v23, v22);
    v31 = vzip2q_s8(v25, v26);
    i8 = v13[2].i8;
    vst2_s8(i8, *(&v30 - 8));
    *v29 = vzip2q_s8(v28, v27);
    v13[3] = vzip2q_s8(v31, v30);
    --v8;
    ++a2;
  }

  while (v8 > 1);
  v33 = v12 + 8;
  v34 = v12 + 32;
  v35 = v12 + 40;
  a2 = v12;
  if (v7 >= 1)
  {
LABEL_10:
    v36 = result + 2;
    v37 = v7 + 1;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v40.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v41 = result[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = v36[-2].i8;
      v45 = *v33++;
      v46 = vqmovn_high_s16(vqmovn_s16(v43), v45);
      v47 = *v34++;
      v48 = v47;
      v49 = *v35++;
      v50 = vminq_u8(vmaxq_u8(veorq_s8(v46, v38), v39), v40);
      v51 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v38), v39), v40);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = vzip1q_s8(v50, *a5);
      v55 = vzip2q_s8(v50, *a5);
      v56 = vzip1q_s8(v52, v53);
      vst2_s8(v44, *(&v54 - 8));
      v57 = vzip2q_s8(v52, v53);
      v36[-1] = vzip2q_s8(v56, v54);
      vst2_s8(v41, *(&v55 - 8));
      v41 += a3;
      v36[1] = vzip2q_s8(v57, v55);
      a5 = (a5 + a6);
      --v37;
      v36 = v41;
    }

    while (v37 > 1);
  }

  return result;
}

int8x16_t *from_422_to_v408<8,8,(AlphaOutputMethod)2,false>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v32 = a2 + 8;
    v33 = a2 + 32;
    v34 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x101010101010101;
  v9.i64[1] = 0x101010101010101;
  v10.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v10.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
  v11.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
  do
  {
    v12 = (result + v6);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9), v10);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v8), v9), v10);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v17 = vzip1q_s8(v13, v11);
    v18 = vzip2q_s8(v13, v11);
    v19 = vzip1q_s8(v15, v16);
    v20 = vzip2q_s8(v15, v16);
    *result = vzip1q_s8(v19, v17);
    result[1] = vzip2q_s8(v19, v17);
    result[2] = vzip1q_s8(v20, v18);
    result[3] = vzip2q_s8(v20, v18);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9), v10);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v8), v9), v10);
    v23 = vzip1q_s8(v22, v22);
    v24 = vzip2q_s8(v22, v22);
    v25 = vzip1q_s8(v21, v11);
    v26 = vzip2q_s8(v21, v11);
    v27 = vzip1q_s8(v23, v24);
    v28 = vzip2q_s8(v23, v24);
    v29 = &result->i8[v6];
    vst2_s8(v29, *(&v25 - 8));
    v29 += 16;
    v30 = &result[2].i8[v6];
    vst2_s8(v30, *(&v26 - 8));
    v31 = a2 + 1;
    result = (result + a3);
    --v5;
    *v29 = vzip2q_s8(v27, v25);
    v12[3] = vzip2q_s8(v28, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v32 = v31 + 8;
  v33 = v31 + 32;
  v34 = v31 + 40;
  a2 = v31;
  if (v5 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v5 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v39.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v39.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
    v40.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
    i8 = result[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = v35[-2].i8;
      v45 = *v32++;
      v46 = v45;
      v47 = *v33++;
      v48 = v47;
      v49 = *v34++;
      v50 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v43), v46), v37), v38), v39);
      v51 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v37), v38), v39);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = vzip1q_s8(v50, v40);
      v55 = vzip2q_s8(v50, v40);
      v56 = vzip1q_s8(v52, v53);
      vst2_s8(v44, *(&v54 - 8));
      v57 = vzip2q_s8(v52, v53);
      v35[-1] = vzip2q_s8(v56, v54);
      vst2_s8(i8, *(&v55 - 8));
      i8 += a3;
      v35[1] = vzip2q_s8(v57, v55);
      --v36;
      v35 = i8;
    }

    while (v36 > 1);
  }

  return result;
}

int8x16_t *from_422_to_v408<8,8,(AlphaOutputMethod)2,true>(int8x16_t *result, int16x8_t *a2, int a3, int a4)
{
  if (a4 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 8;
  }

  v5 = a4 - v4;
  if (!v4)
  {
    v32 = a2 + 8;
    v33 = a2 + 32;
    v34 = a2 + 40;
    if (v5 < 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = 8 * a3;
  v7 = a4 - 7;
  v8.i64[0] = 0x8080808080808080;
  v8.i64[1] = 0x8080808080808080;
  v9.i64[0] = 0x101010101010101;
  v9.i64[1] = 0x101010101010101;
  v10.i64[0] = 0xFEFEFEFEFEFEFEFELL;
  v10.i64[1] = 0xFEFEFEFEFEFEFEFELL;
  v11.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
  v11.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
  do
  {
    v12 = (result + v6);
    v13 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(*a2), a2[8]), v8), v9), v10);
    v14 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[32]), a2[40]), v8), v9), v10);
    v15 = vzip1q_s8(v14, v14);
    v16 = vzip2q_s8(v14, v14);
    v17 = vzip1q_s8(v13, v11);
    v18 = vzip2q_s8(v13, v11);
    v19 = vzip1q_s8(v15, v16);
    v20 = vzip2q_s8(v15, v16);
    *result = vzip1q_s8(v19, v17);
    result[1] = vzip2q_s8(v19, v17);
    result[2] = vzip1q_s8(v20, v18);
    result[3] = vzip2q_s8(v20, v18);
    v21 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[16]), a2[24]), v8), v9), v10);
    v22 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(a2[48]), a2[56]), v8), v9), v10);
    v23 = vzip1q_s8(v22, v22);
    v24 = vzip2q_s8(v22, v22);
    v25 = vzip1q_s8(v21, v11);
    v26 = vzip2q_s8(v21, v11);
    v27 = vzip1q_s8(v23, v24);
    v28 = vzip2q_s8(v23, v24);
    v29 = &result->i8[v6];
    vst2_s8(v29, *(&v25 - 8));
    v29 += 16;
    v30 = &result[2].i8[v6];
    vst2_s8(v30, *(&v26 - 8));
    v31 = a2 + 1;
    result = (result + a3);
    --v5;
    *v29 = vzip2q_s8(v27, v25);
    v12[3] = vzip2q_s8(v28, v26);
    --v7;
    ++a2;
  }

  while (v7 > 1);
  v32 = v31 + 8;
  v33 = v31 + 32;
  v34 = v31 + 40;
  a2 = v31;
  if (v5 >= 1)
  {
LABEL_10:
    v35 = result + 2;
    v36 = v5 + 1;
    v37.i64[0] = 0x8080808080808080;
    v37.i64[1] = 0x8080808080808080;
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v39.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v39.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v40.i64[0] = 0xEBEBEBEBEBEBEBEBLL;
    v40.i64[1] = 0xEBEBEBEBEBEBEBEBLL;
    i8 = result[2].i8;
    do
    {
      v42 = *a2++;
      v43 = v42;
      v44 = v35[-2].i8;
      v45 = *v32++;
      v46 = v45;
      v47 = *v33++;
      v48 = v47;
      v49 = *v34++;
      v50 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v43), v46), v37), v38), v39);
      v51 = vminq_u8(vmaxq_u8(veorq_s8(vqmovn_high_s16(vqmovn_s16(v48), v49), v37), v38), v39);
      v52 = vzip1q_s8(v51, v51);
      v53 = vzip2q_s8(v51, v51);
      v54 = vzip1q_s8(v50, v40);
      v55 = vzip2q_s8(v50, v40);
      v56 = vzip1q_s8(v52, v53);
      vst2_s8(v44, *(&v54 - 8));
      v57 = vzip2q_s8(v52, v53);
      v35[-1] = vzip2q_s8(v56, v54);
      vst2_s8(i8, *(&v55 - 8));
      i8 += a3;
      v35[1] = vzip2q_s8(v57, v55);
      --v36;
      v35 = i8;
    }

    while (v36 > 1);
  }

  return result;
}

int16x8_t *from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71708, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v57 = result;
    v49 = a3;
    v53 = a2;
    v45 = a4;
    from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
    a4 = v45;
    a3 = v49;
    a2 = v53;
    result = v57;
    if (atomic_load_explicit(&qword_280A71708, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71710, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v59 = result;
      v51 = a3;
      v55 = a2;
      v47 = a4;
      from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
      a4 = v47;
      a3 = v51;
      a2 = v55;
      result = v59;
      if (atomic_load_explicit(&qword_280A71718, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v58 = result;
  v50 = a3;
  v54 = a2;
  v46 = a4;
  from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
  a4 = v46;
  a3 = v50;
  a2 = v54;
  result = v58;
  if ((atomic_load_explicit(&qword_280A71710, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71718, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v60 = result;
  v52 = a3;
  v56 = a2;
  v48 = a4;
  from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,false>();
  a4 = v48;
  a3 = v52;
  a2 = v56;
  result = v60;
LABEL_5:
  v4 = xmmword_280A71AA0;
  v5 = *algn_280A71AB0;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v27 = a2 + 8;
    v28 = a2 + 32;
    v29 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a2 + 56;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  do
  {
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-56], v4), v5), 6uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-48], v4), v5), 6uLL), v10);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-24], v4), v5), 6uLL), v10);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-16], v4), v5), 6uLL), v10);
    v16 = vzip1q_s16(v14, v15);
    v17 = vzip2q_s16(v14, v15);
    *result = vzip1q_s16(v16, v12);
    result[1] = vzip2q_s16(v16, v12);
    result[2] = vzip1q_s16(v17, v13);
    result[3] = vzip2q_s16(v17, v13);
    result = (result + a3);
    --v7;
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-40], v4), v5), 6uLL), v10);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-32], v4), v5), 6uLL), v10);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-8], v4), v5), 6uLL), v10);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*v8, v4), v5), 6uLL), v10);
    v22 = vzip1q_s16(v20, v21);
    v23 = v11;
    vst2_s16(v23, *(&v18 - 8));
    v23 += 8;
    v24 = v8 + 1;
    v25 = vzip2q_s16(v20, v21);
    i16 = v11[2].i16;
    vst2_s16(i16, *(&v19 - 8));
    *v23 = vzip2q_s16(v22, v18);
    v11[3] = vzip2q_s16(v25, v19);
    --v9;
    v8 = v24;
  }

  while (v9 > 1);
  a2 = v24 - 56;
  v27 = v24 - 48;
  v28 = v24 - 24;
  v29 = v24 - 16;
  if (v7 >= 1)
  {
LABEL_14:
    v30 = v7 + 1;
    v31 = result + 2;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    v33 = result[2].i16;
    do
    {
      v34 = v31[-2].i16;
      v35 = *a2++;
      v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v35, v4), v5), 6uLL), v32);
      v37 = *v27++;
      v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v37, v4), v5), 6uLL), v32);
      v39 = *v28++;
      v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v39, v4), v5), 6uLL), v32);
      v41 = *v29++;
      v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v41, v4), v5), 6uLL), v32);
      v43 = vzip1q_s16(v40, v42);
      vst2_s16(v34, *(&v36 - 8));
      v44 = vzip2q_s16(v40, v42);
      v31[-1] = vzip2q_s16(v43, v36);
      vst2_s16(v33, *(&v38 - 8));
      v33 = (v33 + a3);
      v31[1] = vzip2q_s16(v44, v38);
      --v30;
      v31 = v33;
    }

    while (v30 > 1);
  }

  return result;
}

int16x8_t *from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71720, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71728, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v57 = result;
    v49 = a3;
    v53 = a2;
    v45 = a4;
    from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
    a4 = v45;
    a3 = v49;
    a2 = v53;
    result = v57;
    if (atomic_load_explicit(&qword_280A71728, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71730, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v59 = result;
      v51 = a3;
      v55 = a2;
      v47 = a4;
      from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
      a4 = v47;
      a3 = v51;
      a2 = v55;
      result = v59;
      if (atomic_load_explicit(&qword_280A71738, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v58 = result;
  v50 = a3;
  v54 = a2;
  v46 = a4;
  from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
  a4 = v46;
  a3 = v50;
  a2 = v54;
  result = v58;
  if ((atomic_load_explicit(&qword_280A71730, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71738, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v60 = result;
  v52 = a3;
  v56 = a2;
  v48 = a4;
  from_422_to_v216_10bits_A<8,8,(AlphaOutputMethod)0,true>();
  a4 = v48;
  a3 = v52;
  a2 = v56;
  result = v60;
LABEL_5:
  v4 = xmmword_280A71AE0;
  v5 = *algn_280A71AF0;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v27 = a2 + 8;
    v28 = a2 + 32;
    v29 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a2 + 56;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  do
  {
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-56], v4), v5), 6uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-48], v4), v5), 6uLL), v10);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-24], v4), v5), 6uLL), v10);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-16], v4), v5), 6uLL), v10);
    v16 = vzip1q_s16(v14, v15);
    v17 = vzip2q_s16(v14, v15);
    *result = vzip1q_s16(v16, v12);
    result[1] = vzip2q_s16(v16, v12);
    result[2] = vzip1q_s16(v17, v13);
    result[3] = vzip2q_s16(v17, v13);
    result = (result + a3);
    --v7;
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-40], v4), v5), 6uLL), v10);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-32], v4), v5), 6uLL), v10);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-8], v4), v5), 6uLL), v10);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*v8, v4), v5), 6uLL), v10);
    v22 = vzip1q_s16(v20, v21);
    v23 = v11;
    vst2_s16(v23, *(&v18 - 8));
    v23 += 8;
    v24 = v8 + 1;
    v25 = vzip2q_s16(v20, v21);
    i16 = v11[2].i16;
    vst2_s16(i16, *(&v19 - 8));
    *v23 = vzip2q_s16(v22, v18);
    v11[3] = vzip2q_s16(v25, v19);
    --v9;
    v8 = v24;
  }

  while (v9 > 1);
  a2 = v24 - 56;
  v27 = v24 - 48;
  v28 = v24 - 24;
  v29 = v24 - 16;
  if (v7 >= 1)
  {
LABEL_14:
    v30 = v7 + 1;
    v31 = result + 2;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    v33 = result[2].i16;
    do
    {
      v34 = v31[-2].i16;
      v35 = *a2++;
      v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v35, v4), v5), 6uLL), v32);
      v37 = *v27++;
      v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v37, v4), v5), 6uLL), v32);
      v39 = *v28++;
      v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v39, v4), v5), 6uLL), v32);
      v41 = *v29++;
      v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v41, v4), v5), 6uLL), v32);
      v43 = vzip1q_s16(v40, v42);
      vst2_s16(v34, *(&v36 - 8));
      v44 = vzip2q_s16(v40, v42);
      v31[-1] = vzip2q_s16(v43, v36);
      vst2_s16(v33, *(&v38 - 8));
      v33 = (v33 + a3);
      v31[1] = vzip2q_s16(v44, v38);
      --v30;
      v31 = v33;
    }

    while (v30 > 1);
  }

  return result;
}

int16x8_t *from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71740, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71748, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v57 = result;
    v49 = a3;
    v53 = a2;
    v45 = a4;
    from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
    a4 = v45;
    a3 = v49;
    a2 = v53;
    result = v57;
    if (atomic_load_explicit(&qword_280A71748, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71750, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v59 = result;
      v51 = a3;
      v55 = a2;
      v47 = a4;
      from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
      a4 = v47;
      a3 = v51;
      a2 = v55;
      result = v59;
      if (atomic_load_explicit(&qword_280A71758, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v58 = result;
  v50 = a3;
  v54 = a2;
  v46 = a4;
  from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
  a4 = v46;
  a3 = v50;
  a2 = v54;
  result = v58;
  if ((atomic_load_explicit(&qword_280A71750, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71758, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v60 = result;
  v52 = a3;
  v56 = a2;
  v48 = a4;
  from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,false>();
  a4 = v48;
  a3 = v52;
  a2 = v56;
  result = v60;
LABEL_5:
  v4 = xmmword_280A71B00;
  v5 = *algn_280A71B10;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v27 = a2 + 8;
    v28 = a2 + 32;
    v29 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a2 + 56;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  do
  {
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-56], v4), v5), 6uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-48], v4), v5), 6uLL), v10);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-24], v4), v5), 6uLL), v10);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-16], v4), v5), 6uLL), v10);
    v16 = vzip1q_s16(v14, v15);
    v17 = vzip2q_s16(v14, v15);
    *result = vzip1q_s16(v16, v12);
    result[1] = vzip2q_s16(v16, v12);
    result[2] = vzip1q_s16(v17, v13);
    result[3] = vzip2q_s16(v17, v13);
    result = (result + a3);
    --v7;
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-40], v4), v5), 6uLL), v10);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-32], v4), v5), 6uLL), v10);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-8], v4), v5), 6uLL), v10);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*v8, v4), v5), 6uLL), v10);
    v22 = vzip1q_s16(v20, v21);
    v23 = v11;
    vst2_s16(v23, *(&v18 - 8));
    v23 += 8;
    v24 = v8 + 1;
    v25 = vzip2q_s16(v20, v21);
    i16 = v11[2].i16;
    vst2_s16(i16, *(&v19 - 8));
    *v23 = vzip2q_s16(v22, v18);
    v11[3] = vzip2q_s16(v25, v19);
    --v9;
    v8 = v24;
  }

  while (v9 > 1);
  a2 = v24 - 56;
  v27 = v24 - 48;
  v28 = v24 - 24;
  v29 = v24 - 16;
  if (v7 >= 1)
  {
LABEL_14:
    v30 = v7 + 1;
    v31 = result + 2;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    v33 = result[2].i16;
    do
    {
      v34 = v31[-2].i16;
      v35 = *a2++;
      v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v35, v4), v5), 6uLL), v32);
      v37 = *v27++;
      v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v37, v4), v5), 6uLL), v32);
      v39 = *v28++;
      v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v39, v4), v5), 6uLL), v32);
      v41 = *v29++;
      v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v41, v4), v5), 6uLL), v32);
      v43 = vzip1q_s16(v40, v42);
      vst2_s16(v34, *(&v36 - 8));
      v44 = vzip2q_s16(v40, v42);
      v31[-1] = vzip2q_s16(v43, v36);
      vst2_s16(v33, *(&v38 - 8));
      v33 = (v33 + a3);
      v31[1] = vzip2q_s16(v44, v38);
      --v30;
      v31 = v33;
    }

    while (v30 > 1);
  }

  return result;
}

int16x8_t *from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71760, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71768, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v57 = result;
    v49 = a3;
    v53 = a2;
    v45 = a4;
    from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
    a4 = v45;
    a3 = v49;
    a2 = v53;
    result = v57;
    if (atomic_load_explicit(&qword_280A71768, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71770, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v59 = result;
      v51 = a3;
      v55 = a2;
      v47 = a4;
      from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
      a4 = v47;
      a3 = v51;
      a2 = v55;
      result = v59;
      if (atomic_load_explicit(&qword_280A71778, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v58 = result;
  v50 = a3;
  v54 = a2;
  v46 = a4;
  from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
  a4 = v46;
  a3 = v50;
  a2 = v54;
  result = v58;
  if ((atomic_load_explicit(&qword_280A71770, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71778, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v60 = result;
  v52 = a3;
  v56 = a2;
  v48 = a4;
  from_422_to_v216_10bits_B<8,8,(AlphaOutputMethod)0,true>();
  a4 = v48;
  a3 = v52;
  a2 = v56;
  result = v60;
LABEL_5:
  v4 = xmmword_280A71B40;
  v5 = *algn_280A71B50;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v27 = a2 + 8;
    v28 = a2 + 32;
    v29 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a2 + 56;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  do
  {
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-56], v4), v5), 6uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-48], v4), v5), 6uLL), v10);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-24], v4), v5), 6uLL), v10);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-16], v4), v5), 6uLL), v10);
    v16 = vzip1q_s16(v14, v15);
    v17 = vzip2q_s16(v14, v15);
    *result = vzip1q_s16(v16, v12);
    result[1] = vzip2q_s16(v16, v12);
    result[2] = vzip1q_s16(v17, v13);
    result[3] = vzip2q_s16(v17, v13);
    result = (result + a3);
    --v7;
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-40], v4), v5), 6uLL), v10);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-32], v4), v5), 6uLL), v10);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-8], v4), v5), 6uLL), v10);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*v8, v4), v5), 6uLL), v10);
    v22 = vzip1q_s16(v20, v21);
    v23 = v11;
    vst2_s16(v23, *(&v18 - 8));
    v23 += 8;
    v24 = v8 + 1;
    v25 = vzip2q_s16(v20, v21);
    i16 = v11[2].i16;
    vst2_s16(i16, *(&v19 - 8));
    *v23 = vzip2q_s16(v22, v18);
    v11[3] = vzip2q_s16(v25, v19);
    --v9;
    v8 = v24;
  }

  while (v9 > 1);
  a2 = v24 - 56;
  v27 = v24 - 48;
  v28 = v24 - 24;
  v29 = v24 - 16;
  if (v7 >= 1)
  {
LABEL_14:
    v30 = v7 + 1;
    v31 = result + 2;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    v33 = result[2].i16;
    do
    {
      v34 = v31[-2].i16;
      v35 = *a2++;
      v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v35, v4), v5), 6uLL), v32);
      v37 = *v27++;
      v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v37, v4), v5), 6uLL), v32);
      v39 = *v28++;
      v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v39, v4), v5), 6uLL), v32);
      v41 = *v29++;
      v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v41, v4), v5), 6uLL), v32);
      v43 = vzip1q_s16(v40, v42);
      vst2_s16(v34, *(&v36 - 8));
      v44 = vzip2q_s16(v40, v42);
      v31[-1] = vzip2q_s16(v43, v36);
      vst2_s16(v33, *(&v38 - 8));
      v33 = (v33 + a3);
      v31[1] = vzip2q_s16(v44, v38);
      --v30;
      v31 = v33;
    }

    while (v30 > 1);
  }

  return result;
}

int16x8_t *from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A71780, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A71788, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v57 = result;
    v49 = a3;
    v53 = a2;
    v45 = a4;
    from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
    a4 = v45;
    a3 = v49;
    a2 = v53;
    result = v57;
    if (atomic_load_explicit(&qword_280A71788, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A71790, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v59 = result;
      v51 = a3;
      v55 = a2;
      v47 = a4;
      from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
      a4 = v47;
      a3 = v51;
      a2 = v55;
      result = v59;
      if (atomic_load_explicit(&qword_280A71798, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v58 = result;
  v50 = a3;
  v54 = a2;
  v46 = a4;
  from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
  a4 = v46;
  a3 = v50;
  a2 = v54;
  result = v58;
  if ((atomic_load_explicit(&qword_280A71790, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A71798, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v60 = result;
  v52 = a3;
  v56 = a2;
  v48 = a4;
  from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,false>();
  a4 = v48;
  a3 = v52;
  a2 = v56;
  result = v60;
LABEL_5:
  v4 = xmmword_280A71B80;
  v5 = *algn_280A71B90;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v27 = a2 + 8;
    v28 = a2 + 32;
    v29 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a2 + 56;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  do
  {
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-56], v4), v5), 4uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-48], v4), v5), 4uLL), v10);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-24], v4), v5), 4uLL), v10);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-16], v4), v5), 4uLL), v10);
    v16 = vzip1q_s16(v14, v15);
    v17 = vzip2q_s16(v14, v15);
    *result = vzip1q_s16(v16, v12);
    result[1] = vzip2q_s16(v16, v12);
    result[2] = vzip1q_s16(v17, v13);
    result[3] = vzip2q_s16(v17, v13);
    result = (result + a3);
    --v7;
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-40], v4), v5), 4uLL), v10);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-32], v4), v5), 4uLL), v10);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-8], v4), v5), 4uLL), v10);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*v8, v4), v5), 4uLL), v10);
    v22 = vzip1q_s16(v20, v21);
    v23 = v11;
    vst2_s16(v23, *(&v18 - 8));
    v23 += 8;
    v24 = v8 + 1;
    v25 = vzip2q_s16(v20, v21);
    i16 = v11[2].i16;
    vst2_s16(i16, *(&v19 - 8));
    *v23 = vzip2q_s16(v22, v18);
    v11[3] = vzip2q_s16(v25, v19);
    --v9;
    v8 = v24;
  }

  while (v9 > 1);
  a2 = v24 - 56;
  v27 = v24 - 48;
  v28 = v24 - 24;
  v29 = v24 - 16;
  if (v7 >= 1)
  {
LABEL_14:
    v30 = v7 + 1;
    v31 = result + 2;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    v33 = result[2].i16;
    do
    {
      v34 = v31[-2].i16;
      v35 = *a2++;
      v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v35, v4), v5), 4uLL), v32);
      v37 = *v27++;
      v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v37, v4), v5), 4uLL), v32);
      v39 = *v28++;
      v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v39, v4), v5), 4uLL), v32);
      v41 = *v29++;
      v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v41, v4), v5), 4uLL), v32);
      v43 = vzip1q_s16(v40, v42);
      vst2_s16(v34, *(&v36 - 8));
      v44 = vzip2q_s16(v40, v42);
      v31[-1] = vzip2q_s16(v43, v36);
      vst2_s16(v33, *(&v38 - 8));
      v33 = (v33 + a3);
      v31[1] = vzip2q_s16(v44, v38);
      --v30;
      v31 = v33;
    }

    while (v30 > 1);
  }

  return result;
}

int16x8_t *from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  if (atomic_load_explicit(&qword_280A717A0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280A717A8, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v57 = result;
    v49 = a3;
    v53 = a2;
    v45 = a4;
    from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
    a4 = v45;
    a3 = v49;
    a2 = v53;
    result = v57;
    if (atomic_load_explicit(&qword_280A717A8, memory_order_acquire))
    {
LABEL_3:
      if (atomic_load_explicit(&qword_280A717B0, memory_order_acquire))
      {
        goto LABEL_4;
      }

LABEL_19:
      v59 = result;
      v51 = a3;
      v55 = a2;
      v47 = a4;
      from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
      a4 = v47;
      a3 = v51;
      a2 = v55;
      result = v59;
      if (atomic_load_explicit(&qword_280A717B8, memory_order_acquire))
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  v58 = result;
  v50 = a3;
  v54 = a2;
  v46 = a4;
  from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
  a4 = v46;
  a3 = v50;
  a2 = v54;
  result = v58;
  if ((atomic_load_explicit(&qword_280A717B0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (atomic_load_explicit(&qword_280A717B8, memory_order_acquire))
  {
    goto LABEL_5;
  }

LABEL_20:
  v60 = result;
  v52 = a3;
  v56 = a2;
  v48 = a4;
  from_422_to_v216_12bits<8,8,(AlphaOutputMethod)0,true>();
  a4 = v48;
  a3 = v52;
  a2 = v56;
  result = v60;
LABEL_5:
  v4 = xmmword_280A71BC0;
  v5 = *algn_280A71BD0;
  if (a4 <= 8)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4 - 8;
  }

  v7 = a4 - v6;
  if (!v6)
  {
    v27 = a2 + 8;
    v28 = a2 + 32;
    v29 = a2 + 40;
    if (v7 < 1)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = a2 + 56;
  v9 = a4 - 7;
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  do
  {
    v11 = (result + 8 * a3);
    v12 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-56], v4), v5), 4uLL), v10);
    v13 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-48], v4), v5), 4uLL), v10);
    v14 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-24], v4), v5), 4uLL), v10);
    v15 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-16], v4), v5), 4uLL), v10);
    v16 = vzip1q_s16(v14, v15);
    v17 = vzip2q_s16(v14, v15);
    *result = vzip1q_s16(v16, v12);
    result[1] = vzip2q_s16(v16, v12);
    result[2] = vzip1q_s16(v17, v13);
    result[3] = vzip2q_s16(v17, v13);
    result = (result + a3);
    --v7;
    v18 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-40], v4), v5), 4uLL), v10);
    v19 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-32], v4), v5), 4uLL), v10);
    v20 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v8[-8], v4), v5), 4uLL), v10);
    v21 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(*v8, v4), v5), 4uLL), v10);
    v22 = vzip1q_s16(v20, v21);
    v23 = v11;
    vst2_s16(v23, *(&v18 - 8));
    v23 += 8;
    v24 = v8 + 1;
    v25 = vzip2q_s16(v20, v21);
    i16 = v11[2].i16;
    vst2_s16(i16, *(&v19 - 8));
    *v23 = vzip2q_s16(v22, v18);
    v11[3] = vzip2q_s16(v25, v19);
    --v9;
    v8 = v24;
  }

  while (v9 > 1);
  a2 = v24 - 56;
  v27 = v24 - 48;
  v28 = v24 - 24;
  v29 = v24 - 16;
  if (v7 >= 1)
  {
LABEL_14:
    v30 = v7 + 1;
    v31 = result + 2;
    v32.i64[0] = 0x8000800080008000;
    v32.i64[1] = 0x8000800080008000;
    v33 = result[2].i16;
    do
    {
      v34 = v31[-2].i16;
      v35 = *a2++;
      v36 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v35, v4), v5), 4uLL), v32);
      v37 = *v27++;
      v38 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v37, v4), v5), 4uLL), v32);
      v39 = *v28++;
      v40 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v39, v4), v5), 4uLL), v32);
      v41 = *v29++;
      v42 = veorq_s8(vshlq_n_s16(vminq_s16(vmaxq_s16(v41, v4), v5), 4uLL), v32);
      v43 = vzip1q_s16(v40, v42);
      vst2_s16(v34, *(&v36 - 8));
      v44 = vzip2q_s16(v40, v42);
      v31[-1] = vzip2q_s16(v43, v36);
      vst2_s16(v33, *(&v38 - 8));
      v33 = (v33 + a3);
      v31[1] = vzip2q_s16(v44, v38);
      --v30;
      v31 = v33;
    }

    while (v30 > 1);
  }

  return result;
}

uint64_t from_422_to_v216<4,8,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(uint64_t result, uint64_t a2, int a3, int a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  v9 = 0;
  v10 = a4 & ~(a4 >> 31);
  while (1)
  {
    v11 = (a2 + v9);
    if (!v10)
    {
      break;
    }

    v12.i16[0] = v11[128];
    v12.i16[1] = *v11;
    v12.i16[2] = v11[160];
    v12.i16[3] = v11[1];
    *result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[129];
    v12.i16[1] = v11[2];
    v12.i16[2] = v11[161];
    v12.i16[3] = v11[3];
    *(result + 8) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[130];
    v12.i16[1] = v11[32];
    v12.i16[2] = v11[162];
    v12.i16[3] = v11[33];
    *(result + 16) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[131];
    v12.i16[1] = v11[34];
    v12.i16[2] = v11[163];
    v12.i16[3] = v11[35];
    a8 = COERCE_DOUBLE(veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000));
    *(result + 24) = a8;
    result += a3;
    v9 += 8;
    --v10;
    if (v9 == 64)
    {
      v13 = a2 + v9;
      v14 = (a2 + v9 + 64);
      v15 = (v13 + 320);
      goto LABEL_6;
    }
  }

  v14 = (v11 + 32);
  v15 = v11 + 160;
LABEL_6:
  v16 = v15 + 32;
  if (a4 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 - 8;
  v19 = result + 16;
  v20 = 64;
  do
  {
    if (!v18)
    {
      break;
    }

    LOWORD(a8) = *(v16 - 32);
    WORD1(a8) = *v16;
    a9.i32[0] = *v14;
    v21 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(*&a8, a9), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v22 = vrev32_s16(v21);
    v23 = vuzp1_s16(v21, v22);
    *(v19 - 16) = v23;
    v23.i16[0] = *(v16 - 31);
    v23.i16[1] = v16[1];
    v22.i32[0] = v14[1];
    v24 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v23, v22), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v25 = vrev32_s16(v24);
    v26 = vuzp1_s16(v24, v25);
    *(v19 - 8) = v26;
    v26.i16[0] = *(v16 - 30);
    v26.i16[1] = v16[2];
    v25.i32[0] = v14[16];
    v27 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v26, v25), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v28 = vrev32_s16(v27);
    v29 = vuzp1_s16(v27, v28);
    *v19 = v29;
    v29.i16[0] = *(v16 - 29);
    v29.i16[1] = v16[3];
    v28.i32[0] = v14[17];
    v30 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v29, v28), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a9 = vrev32_s16(v30);
    v16 += 4;
    a8 = COERCE_DOUBLE(vuzp1_s16(v30, a9));
    *(v19 + 8) = a8;
    --v18;
    v19 += a3;
    v14 += 2;
    v20 -= 8;
  }

  while (v20);
  return result;
}

uint64_t from_422_to_v216<4,8,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(uint64_t result, uint64_t a2, int a3, int a4, double a5, double a6, double a7, double a8, int32x2_t a9)
{
  v9 = 0;
  v10 = a4 & ~(a4 >> 31);
  while (1)
  {
    v11 = (a2 + v9);
    if (!v10)
    {
      break;
    }

    v12.i16[0] = v11[128];
    v12.i16[1] = *v11;
    v12.i16[2] = v11[160];
    v12.i16[3] = v11[1];
    *result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[129];
    v12.i16[1] = v11[2];
    v12.i16[2] = v11[161];
    v12.i16[3] = v11[3];
    *(result + 8) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[130];
    v12.i16[1] = v11[32];
    v12.i16[2] = v11[162];
    v12.i16[3] = v11[33];
    *(result + 16) = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v12.i16[0] = v11[131];
    v12.i16[1] = v11[34];
    v12.i16[2] = v11[163];
    v12.i16[3] = v11[35];
    a8 = COERCE_DOUBLE(veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v12, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000));
    *(result + 24) = a8;
    result += a3;
    v9 += 8;
    --v10;
    if (v9 == 64)
    {
      v13 = a2 + v9;
      v14 = (a2 + v9 + 64);
      v15 = (v13 + 320);
      goto LABEL_6;
    }
  }

  v14 = (v11 + 32);
  v15 = v11 + 160;
LABEL_6:
  v16 = v15 + 32;
  if (a4 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = a4;
  }

  v18 = v17 - 8;
  v19 = result + 16;
  v20 = 64;
  do
  {
    if (!v18)
    {
      break;
    }

    LOWORD(a8) = *(v16 - 32);
    WORD1(a8) = *v16;
    a9.i32[0] = *v14;
    v21 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(*&a8, a9), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v22 = vrev32_s16(v21);
    v23 = vuzp1_s16(v21, v22);
    *(v19 - 16) = v23;
    v23.i16[0] = *(v16 - 31);
    v23.i16[1] = v16[1];
    v22.i32[0] = v14[1];
    v24 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v23, v22), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v25 = vrev32_s16(v24);
    v26 = vuzp1_s16(v24, v25);
    *(v19 - 8) = v26;
    v26.i16[0] = *(v16 - 30);
    v26.i16[1] = v16[2];
    v25.i32[0] = v14[16];
    v27 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v26, v25), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v28 = vrev32_s16(v27);
    v29 = vuzp1_s16(v27, v28);
    *v19 = v29;
    v29.i16[0] = *(v16 - 29);
    v29.i16[1] = v16[3];
    v28.i32[0] = v14[17];
    v30 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v29, v28), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a9 = vrev32_s16(v30);
    v16 += 4;
    a8 = COERCE_DOUBLE(vuzp1_s16(v30, a9));
    *(v19 + 8) = a8;
    --v18;
    v19 += a3;
    v14 += 2;
    v20 -= 8;
  }

  while (v20);
  return result;
}

int32x2_t from_422_to_v216<4,4,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = a4 & ~(a4 >> 31);
  result = 0xF000F000F000F000;
  v7.i32[1] = -268374016;
  while (1)
  {
    v8 = (a2 + v4);
    if (!v5)
    {
      break;
    }

    v9.i16[0] = v8[64];
    v9.i16[1] = *v8;
    v9.i16[2] = v8[80];
    v9.i16[3] = v8[1];
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[65];
    v9.i16[1] = v8[2];
    v9.i16[2] = v8[81];
    v9.i16[3] = v8[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[66];
    v9.i16[1] = v8[16];
    v9.i16[2] = v8[82];
    v9.i16[3] = v8[17];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[67];
    v9.i16[1] = v8[18];
    v9.i16[2] = v8[83];
    v9.i16[3] = v8[19];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v4 += 8;
    --v5;
    if (v4 == 32)
    {
      v10 = a2 + v4;
      v11 = (a2 + v4 + 32);
      v12 = (v10 + 160);
      if (a4 <= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = a4;
      }

      v14 = v13 - 4;
      if (!v14)
      {
        return result;
      }

LABEL_13:
      result.i16[0] = *v12;
      result.i16[1] = v12[16];
      v7.i32[0] = *v11;
      v16 = vzip1_s32(result, v7);
      result = 0xF000F000F000F000;
      v17 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v16, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v18 = vrev32_s16(v17);
      v19 = vuzp1_s16(v17, v18);
      *a1 = v19;
      v19.i16[0] = v12[1];
      v19.i16[1] = v12[17];
      v18.i32[0] = v11[1];
      v20 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v19, v18), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v21 = vrev32_s16(v20);
      v22 = vuzp1_s16(v20, v21);
      a1[1] = v22;
      v22.i16[0] = v12[2];
      v22.i16[1] = v12[18];
      v21.i32[0] = v11[8];
      v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v22, v21), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v24 = vrev32_s16(v23);
      v25 = vuzp1_s16(v23, v24);
      a1[2] = v25;
      v25.i16[0] = v12[3];
      v25.i16[1] = v12[19];
      v24.i32[0] = v11[9];
      v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v27 = vrev32_s16(v26);
      v28 = vuzp1_s16(v26, v27);
      a1[3] = v28;
      if (v14 != 1)
      {
        v29 = (a1 + a3);
        v28.i16[0] = v12[4];
        v28.i16[1] = v12[20];
        v27.i32[0] = v11[2];
        v30 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v28, v27), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v31 = vrev32_s16(v30);
        v32 = vuzp1_s16(v30, v31);
        *v29 = v32;
        v32.i16[0] = v12[5];
        v32.i16[1] = v12[21];
        v31.i32[0] = v11[3];
        v33 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v32, v31), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v34 = vrev32_s16(v33);
        v35 = vuzp1_s16(v33, v34);
        v29[1] = v35;
        v35.i16[0] = v12[6];
        v35.i16[1] = v12[22];
        v34.i32[0] = v11[10];
        v36 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v35, v34), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v37 = vrev32_s16(v36);
        v38 = vuzp1_s16(v36, v37);
        v29[2] = v38;
        v38.i16[0] = v12[7];
        v38.i16[1] = v12[23];
        v37.i32[0] = v11[11];
        v39 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v38, v37), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v40 = vrev32_s16(v39);
        result = vuzp1_s16(v39, v40);
        v29[3] = result;
        if (v14 != 2)
        {
          result.i16[0] = v12[8];
          result.i16[1] = v12[24];
          v41 = (v29 + a3);
          v40.i32[0] = v11[4];
          v42 = vzip1_s32(result, v40);
          result = 0xF000F000F000F000;
          v43 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v42, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v44 = vrev32_s16(v43);
          v45 = vuzp1_s16(v43, v44);
          *v41 = v45;
          v45.i16[0] = v12[9];
          v45.i16[1] = v12[25];
          v44.i32[0] = v11[5];
          v46 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v45, v44), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v47 = vrev32_s16(v46);
          v48 = vuzp1_s16(v46, v47);
          v41[1] = v48;
          v48.i16[0] = v12[10];
          v48.i16[1] = v12[26];
          v47.i32[0] = v11[12];
          v49 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v48, v47), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v50 = vrev32_s16(v49);
          v51 = vuzp1_s16(v49, v50);
          v41[2] = v51;
          v51.i16[0] = v12[11];
          v51.i16[1] = v12[27];
          v50.i32[0] = v11[13];
          v52 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v51, v50), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v53 = vrev32_s16(v52);
          v54 = vuzp1_s16(v52, v53);
          v41[3] = v54;
          if (v14 != 3)
          {
            v55 = (v41 + a3);
            v54.i16[0] = v12[12];
            v54.i16[1] = v12[28];
            v53.i32[0] = v11[6];
            v56 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v54, v53), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v57 = vrev32_s16(v56);
            v58 = vuzp1_s16(v56, v57);
            *v55 = v58;
            v58.i16[0] = v12[13];
            v58.i16[1] = v12[29];
            v57.i32[0] = v11[7];
            v59 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v58, v57), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v60 = vrev32_s16(v59);
            v61 = vuzp1_s16(v59, v60);
            v55[1] = v61;
            v61.i16[0] = v12[14];
            v61.i16[1] = v12[30];
            v60.i32[0] = v11[14];
            v62 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v61, v60), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v63 = vrev32_s16(v62);
            v64 = vuzp1_s16(v62, v63);
            v55[2] = v64;
            v64.i16[0] = v12[15];
            v64.i16[1] = v12[31];
            v63.i32[0] = v11[15];
            v65 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v64, v63), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            result = vuzp1_s16(v65, vrev32_s16(v65));
            v55[3] = result;
          }
        }
      }

      return result;
    }
  }

  v11 = (v8 + 16);
  v12 = v8 + 80;
  if (a4 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = a4;
  }

  v14 = v15 - 4;
  if (v14)
  {
    goto LABEL_13;
  }

  return result;
}

int32x2_t from_422_to_v216<4,4,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = a4 & ~(a4 >> 31);
  result = 0xF000F000F000F000;
  v7.i32[1] = -268374016;
  while (1)
  {
    v8 = (a2 + v4);
    if (!v5)
    {
      break;
    }

    v9.i16[0] = v8[64];
    v9.i16[1] = *v8;
    v9.i16[2] = v8[80];
    v9.i16[3] = v8[1];
    *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[65];
    v9.i16[1] = v8[2];
    v9.i16[2] = v8[81];
    v9.i16[3] = v8[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[66];
    v9.i16[1] = v8[16];
    v9.i16[2] = v8[82];
    v9.i16[3] = v8[17];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v9.i16[0] = v8[67];
    v9.i16[1] = v8[18];
    v9.i16[2] = v8[83];
    v9.i16[3] = v8[19];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v9, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    a1 = (a1 + a3);
    v4 += 8;
    --v5;
    if (v4 == 32)
    {
      v10 = a2 + v4;
      v11 = (a2 + v4 + 32);
      v12 = (v10 + 160);
      if (a4 <= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = a4;
      }

      v14 = v13 - 4;
      if (!v14)
      {
        return result;
      }

LABEL_13:
      result.i16[0] = *v12;
      result.i16[1] = v12[16];
      v7.i32[0] = *v11;
      v16 = vzip1_s32(result, v7);
      result = 0xF000F000F000F000;
      v17 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v16, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v18 = vrev32_s16(v17);
      v19 = vuzp1_s16(v17, v18);
      *a1 = v19;
      v19.i16[0] = v12[1];
      v19.i16[1] = v12[17];
      v18.i32[0] = v11[1];
      v20 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v19, v18), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v21 = vrev32_s16(v20);
      v22 = vuzp1_s16(v20, v21);
      a1[1] = v22;
      v22.i16[0] = v12[2];
      v22.i16[1] = v12[18];
      v21.i32[0] = v11[8];
      v23 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v22, v21), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v24 = vrev32_s16(v23);
      v25 = vuzp1_s16(v23, v24);
      a1[2] = v25;
      v25.i16[0] = v12[3];
      v25.i16[1] = v12[19];
      v24.i32[0] = v11[9];
      v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v25, v24), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v27 = vrev32_s16(v26);
      v28 = vuzp1_s16(v26, v27);
      a1[3] = v28;
      if (v14 != 1)
      {
        v29 = (a1 + a3);
        v28.i16[0] = v12[4];
        v28.i16[1] = v12[20];
        v27.i32[0] = v11[2];
        v30 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v28, v27), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v31 = vrev32_s16(v30);
        v32 = vuzp1_s16(v30, v31);
        *v29 = v32;
        v32.i16[0] = v12[5];
        v32.i16[1] = v12[21];
        v31.i32[0] = v11[3];
        v33 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v32, v31), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v34 = vrev32_s16(v33);
        v35 = vuzp1_s16(v33, v34);
        v29[1] = v35;
        v35.i16[0] = v12[6];
        v35.i16[1] = v12[22];
        v34.i32[0] = v11[10];
        v36 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v35, v34), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v37 = vrev32_s16(v36);
        v38 = vuzp1_s16(v36, v37);
        v29[2] = v38;
        v38.i16[0] = v12[7];
        v38.i16[1] = v12[23];
        v37.i32[0] = v11[11];
        v39 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v38, v37), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v40 = vrev32_s16(v39);
        result = vuzp1_s16(v39, v40);
        v29[3] = result;
        if (v14 != 2)
        {
          result.i16[0] = v12[8];
          result.i16[1] = v12[24];
          v41 = (v29 + a3);
          v40.i32[0] = v11[4];
          v42 = vzip1_s32(result, v40);
          result = 0xF000F000F000F000;
          v43 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v42, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v44 = vrev32_s16(v43);
          v45 = vuzp1_s16(v43, v44);
          *v41 = v45;
          v45.i16[0] = v12[9];
          v45.i16[1] = v12[25];
          v44.i32[0] = v11[5];
          v46 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v45, v44), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v47 = vrev32_s16(v46);
          v48 = vuzp1_s16(v46, v47);
          v41[1] = v48;
          v48.i16[0] = v12[10];
          v48.i16[1] = v12[26];
          v47.i32[0] = v11[12];
          v49 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v48, v47), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v50 = vrev32_s16(v49);
          v51 = vuzp1_s16(v49, v50);
          v41[2] = v51;
          v51.i16[0] = v12[11];
          v51.i16[1] = v12[27];
          v50.i32[0] = v11[13];
          v52 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v51, v50), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v53 = vrev32_s16(v52);
          v54 = vuzp1_s16(v52, v53);
          v41[3] = v54;
          if (v14 != 3)
          {
            v55 = (v41 + a3);
            v54.i16[0] = v12[12];
            v54.i16[1] = v12[28];
            v53.i32[0] = v11[6];
            v56 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v54, v53), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v57 = vrev32_s16(v56);
            v58 = vuzp1_s16(v56, v57);
            *v55 = v58;
            v58.i16[0] = v12[13];
            v58.i16[1] = v12[29];
            v57.i32[0] = v11[7];
            v59 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v58, v57), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v60 = vrev32_s16(v59);
            v61 = vuzp1_s16(v59, v60);
            v55[1] = v61;
            v61.i16[0] = v12[14];
            v61.i16[1] = v12[30];
            v60.i32[0] = v11[14];
            v62 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v61, v60), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            v63 = vrev32_s16(v62);
            v64 = vuzp1_s16(v62, v63);
            v55[2] = v64;
            v64.i16[0] = v12[15];
            v64.i16[1] = v12[31];
            v63.i32[0] = v11[15];
            v65 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v64, v63), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
            result = vuzp1_s16(v65, vrev32_s16(v65));
            v55[3] = result;
          }
        }
      }

      return result;
    }
  }

  v11 = (v8 + 16);
  v12 = v8 + 80;
  if (a4 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = a4;
  }

  v14 = v15 - 4;
  if (v14)
  {
    goto LABEL_13;
  }

  return result;
}

int32x2_t from_422_to_v216<4,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 8;
  if (a4 > 0)
  {
    v8.i16[0] = a2[32];
    v8.i16[1] = *a2;
    v8.i16[2] = *v6;
    v8.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v9 = vmin_s16(v8, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v9, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[33];
    v10.i16[1] = a2[2];
    v10.i16[2] = a2[41];
    v10.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[34];
    v10.i16[1] = *v7;
    v10.i16[2] = a2[42];
    v10.i16[3] = a2[9];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[35];
    v10.i16[1] = a2[10];
    v10.i16[2] = a2[43];
    v10.i16[3] = a2[11];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = a2 + 44;
    a1 = (a1 + a3);
    v7 = a2 + 12;
    if (a4 != 1)
    {
      v11.i16[0] = a2[36];
      v11.i16[1] = a2[4];
      v11.i16[2] = *v6;
      v11.i16[3] = a2[5];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[37];
      v11.i16[1] = a2[6];
      v11.i16[2] = a2[45];
      v11.i16[3] = a2[7];
      a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[38];
      v11.i16[1] = *v7;
      v11.i16[2] = a2[46];
      v11.i16[3] = a2[13];
      a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[39];
      v11.i16[1] = a2[14];
      v11.i16[2] = a2[47];
      v11.i16[3] = a2[15];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[3] = result;
      v6 = a2 + 48;
      a1 = (a1 + a3);
      v7 = a2 + 16;
    }
  }

  if (a4 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4;
  }

  v13 = v12 - 2;
  if (v13)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v7;
    v14 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v15 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v14, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v16 = vrev32_s16(v15);
    v17 = vuzp1_s16(v15, v16);
    *a1 = v17;
    v17.i16[0] = v6[1];
    v17.i16[1] = v6[9];
    v16.i32[0] = *(v7 + 1);
    v18 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v17, v16), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v19 = vrev32_s16(v18);
    v20 = vuzp1_s16(v18, v19);
    a1[1] = v20;
    v20.i16[0] = v6[2];
    v20.i16[1] = v6[10];
    v19.i32[0] = *(v7 + 4);
    v21 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v20, v19), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v22 = vrev32_s16(v21);
    v23 = vuzp1_s16(v21, v22);
    a1[2] = v23;
    v23.i16[0] = v6[3];
    v23.i16[1] = v6[11];
    v22.i32[0] = *(v7 + 5);
    v24 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v23, v22), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v25 = vrev32_s16(v24);
    v26 = vuzp1_s16(v24, v25);
    a1[3] = v26;
    if (v13 != 1)
    {
      v27 = (a1 + a3);
      v26.i16[0] = v6[4];
      v26.i16[1] = v6[12];
      v25.i32[0] = *(v7 + 2);
      v28 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v26, v25), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v29 = vrev32_s16(v28);
      v30 = vuzp1_s16(v28, v29);
      *v27 = v30;
      v30.i16[0] = v6[5];
      v30.i16[1] = v6[13];
      v29.i32[0] = *(v7 + 3);
      v31 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v30, v29), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v32 = vrev32_s16(v31);
      v33 = vuzp1_s16(v31, v32);
      v27[1] = v33;
      v33.i16[0] = v6[6];
      v33.i16[1] = v6[14];
      v32.i32[0] = *(v7 + 6);
      v34 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v33, v32), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v35 = vrev32_s16(v34);
      v36 = vuzp1_s16(v34, v35);
      v27[2] = v36;
      v36.i16[0] = v6[7];
      v36.i16[1] = v6[15];
      v35.i32[0] = *(v7 + 7);
      v37 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v36, v35), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v37, vrev32_s16(v37));
      v27[3] = result;
    }
  }

  return result;
}

int32x2_t from_422_to_v216<4,2,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 8;
  if (a4 > 0)
  {
    v8.i16[0] = a2[32];
    v8.i16[1] = *a2;
    v8.i16[2] = *v6;
    v8.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v9 = vmin_s16(v8, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v9, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[33];
    v10.i16[1] = a2[2];
    v10.i16[2] = a2[41];
    v10.i16[3] = a2[3];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[34];
    v10.i16[1] = *v7;
    v10.i16[2] = a2[42];
    v10.i16[3] = a2[9];
    a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[35];
    v10.i16[1] = a2[10];
    v10.i16[2] = a2[43];
    v10.i16[3] = a2[11];
    a1[3] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = a2 + 44;
    a1 = (a1 + a3);
    v7 = a2 + 12;
    if (a4 != 1)
    {
      v11.i16[0] = a2[36];
      v11.i16[1] = a2[4];
      v11.i16[2] = *v6;
      v11.i16[3] = a2[5];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[37];
      v11.i16[1] = a2[6];
      v11.i16[2] = a2[45];
      v11.i16[3] = a2[7];
      a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[38];
      v11.i16[1] = *v7;
      v11.i16[2] = a2[46];
      v11.i16[3] = a2[13];
      a1[2] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[39];
      v11.i16[1] = a2[14];
      v11.i16[2] = a2[47];
      v11.i16[3] = a2[15];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[3] = result;
      v6 = a2 + 48;
      a1 = (a1 + a3);
      v7 = a2 + 16;
    }
  }

  if (a4 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4;
  }

  v13 = v12 - 2;
  if (v13)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v7;
    v14 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v15 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v14, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v16 = vrev32_s16(v15);
    v17 = vuzp1_s16(v15, v16);
    *a1 = v17;
    v17.i16[0] = v6[1];
    v17.i16[1] = v6[9];
    v16.i32[0] = *(v7 + 1);
    v18 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v17, v16), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v19 = vrev32_s16(v18);
    v20 = vuzp1_s16(v18, v19);
    a1[1] = v20;
    v20.i16[0] = v6[2];
    v20.i16[1] = v6[10];
    v19.i32[0] = *(v7 + 4);
    v21 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v20, v19), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v22 = vrev32_s16(v21);
    v23 = vuzp1_s16(v21, v22);
    a1[2] = v23;
    v23.i16[0] = v6[3];
    v23.i16[1] = v6[11];
    v22.i32[0] = *(v7 + 5);
    v24 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v23, v22), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v25 = vrev32_s16(v24);
    v26 = vuzp1_s16(v24, v25);
    a1[3] = v26;
    if (v13 != 1)
    {
      v27 = (a1 + a3);
      v26.i16[0] = v6[4];
      v26.i16[1] = v6[12];
      v25.i32[0] = *(v7 + 2);
      v28 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v26, v25), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v29 = vrev32_s16(v28);
      v30 = vuzp1_s16(v28, v29);
      *v27 = v30;
      v30.i16[0] = v6[5];
      v30.i16[1] = v6[13];
      v29.i32[0] = *(v7 + 3);
      v31 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v30, v29), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v32 = vrev32_s16(v31);
      v33 = vuzp1_s16(v31, v32);
      v27[1] = v33;
      v33.i16[0] = v6[6];
      v33.i16[1] = v6[14];
      v32.i32[0] = *(v7 + 6);
      v34 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v33, v32), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v35 = vrev32_s16(v34);
      v36 = vuzp1_s16(v34, v35);
      v27[2] = v36;
      v36.i16[0] = v6[7];
      v36.i16[1] = v6[15];
      v35.i32[0] = *(v7 + 7);
      v37 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v36, v35), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v37, vrev32_s16(v37));
      v27[3] = result;
    }
  }

  return result;
}

int32x2_t from_422_to_v216<2,4,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 8;
  if (a4 > 0)
  {
    v8.i16[0] = a2[32];
    v8.i16[1] = *a2;
    v8.i16[2] = *v6;
    v8.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v9 = vmin_s16(v8, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v9, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[33];
    v10.i16[1] = *v7;
    v10.i16[2] = a2[41];
    v10.i16[3] = a2[9];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = a2 + 42;
    a1 = (a1 + a3);
    v7 = a2 + 10;
    if (a4 != 1)
    {
      v11.i16[0] = a2[34];
      v11.i16[1] = a2[2];
      v11.i16[2] = *v6;
      v11.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[35];
      v11.i16[1] = *v7;
      v11.i16[2] = a2[43];
      v11.i16[3] = a2[11];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      v6 = a2 + 44;
      a1 = (a1 + a3);
      v7 = a2 + 12;
      if (a4 != 2)
      {
        v12.i16[0] = a2[36];
        v12.i16[1] = a2[4];
        v12.i16[2] = *v6;
        v12.i16[3] = a2[5];
        result = 0xF000F000F000F000;
        v13 = vmin_s16(v12, 0xF000F000F000F000);
        *&a6 = -3.28697467e231;
        *a1 = veor_s8(vshl_n_s16(vmax_s16(v13, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v14.i16[0] = a2[37];
        v14.i16[1] = *v7;
        v14.i16[2] = a2[45];
        v14.i16[3] = a2[13];
        a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v14, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v6 = a2 + 46;
        a1 = (a1 + a3);
        v7 = a2 + 14;
        if (a4 != 3)
        {
          v15.i16[0] = a2[38];
          v15.i16[1] = a2[6];
          v15.i16[2] = *v6;
          v15.i16[3] = a2[7];
          *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v15.i16[0] = a2[39];
          v15.i16[1] = *v7;
          v15.i16[2] = a2[47];
          v15.i16[3] = a2[15];
          result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          a1[1] = result;
          v6 = a2 + 48;
          a1 = (a1 + a3);
          v7 = a2 + 16;
        }
      }
    }
  }

  if (a4 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = a4;
  }

  v17 = v16 - 4;
  if (v17)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v7;
    v18 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v19 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v18, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v20 = vrev32_s16(v19);
    v21 = vuzp1_s16(v19, v20);
    *a1 = v21;
    v21.i16[0] = v6[1];
    v21.i16[1] = v6[9];
    v20.i32[0] = *(v7 + 4);
    v22 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v21, v20), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v23 = vrev32_s16(v22);
    v24 = vuzp1_s16(v22, v23);
    a1[1] = v24;
    if (v17 != 1)
    {
      v24.i16[0] = v6[2];
      v24.i16[1] = v6[10];
      v25 = (a1 + a3);
      v23.i32[0] = *(v7 + 1);
      v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v24, v23), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v27 = vrev32_s16(v26);
      v28 = vuzp1_s16(v26, v27);
      *v25 = v28;
      v28.i16[0] = v6[3];
      v28.i16[1] = v6[11];
      v27.i32[0] = *(v7 + 5);
      v29 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v28, v27), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v30 = vrev32_s16(v29);
      result = vuzp1_s16(v29, v30);
      v25[1] = result;
      if (v17 != 2)
      {
        v31 = (v25 + a3);
        result.i16[0] = v6[4];
        result.i16[1] = v6[12];
        v30.i32[0] = *(v7 + 2);
        v32 = vzip1_s32(result, v30);
        result = 0xF000F000F000F000;
        v33 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v32, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v34 = vrev32_s16(v33);
        v35 = vuzp1_s16(v33, v34);
        *v31 = v35;
        v35.i16[0] = v6[5];
        v35.i16[1] = v6[13];
        v34.i32[0] = *(v7 + 6);
        v36 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v35, v34), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v37 = vrev32_s16(v36);
        v38 = vuzp1_s16(v36, v37);
        v31[1] = v38;
        if (v17 != 3)
        {
          v39 = (v31 + a3);
          v38.i16[0] = v6[6];
          v38.i16[1] = v6[14];
          v37.i32[0] = *(v7 + 3);
          v40 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v38, v37), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v41 = vrev32_s16(v40);
          v42 = vuzp1_s16(v40, v41);
          *v39 = v42;
          v42.i16[0] = v6[7];
          v42.i16[1] = v6[15];
          v41.i32[0] = *(v7 + 7);
          v43 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v42, v41), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          result = vuzp1_s16(v43, vrev32_s16(v43));
          v39[1] = result;
        }
      }
    }
  }

  return result;
}

int32x2_t from_422_to_v216<2,4,(AlphaOutputMethod)0,true,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 40;
  v7 = a2 + 8;
  if (a4 > 0)
  {
    v8.i16[0] = a2[32];
    v8.i16[1] = *a2;
    v8.i16[2] = *v6;
    v8.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v9 = vmin_s16(v8, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v9, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[33];
    v10.i16[1] = *v7;
    v10.i16[2] = a2[41];
    v10.i16[3] = a2[9];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = a2 + 42;
    a1 = (a1 + a3);
    v7 = a2 + 10;
    if (a4 != 1)
    {
      v11.i16[0] = a2[34];
      v11.i16[1] = a2[2];
      v11.i16[2] = *v6;
      v11.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[35];
      v11.i16[1] = *v7;
      v11.i16[2] = a2[43];
      v11.i16[3] = a2[11];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      v6 = a2 + 44;
      a1 = (a1 + a3);
      v7 = a2 + 12;
      if (a4 != 2)
      {
        v12.i16[0] = a2[36];
        v12.i16[1] = a2[4];
        v12.i16[2] = *v6;
        v12.i16[3] = a2[5];
        result = 0xF000F000F000F000;
        v13 = vmin_s16(v12, 0xF000F000F000F000);
        *&a6 = -3.28697467e231;
        *a1 = veor_s8(vshl_n_s16(vmax_s16(v13, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v14.i16[0] = a2[37];
        v14.i16[1] = *v7;
        v14.i16[2] = a2[45];
        v14.i16[3] = a2[13];
        a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v14, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v6 = a2 + 46;
        a1 = (a1 + a3);
        v7 = a2 + 14;
        if (a4 != 3)
        {
          v15.i16[0] = a2[38];
          v15.i16[1] = a2[6];
          v15.i16[2] = *v6;
          v15.i16[3] = a2[7];
          *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v15.i16[0] = a2[39];
          v15.i16[1] = *v7;
          v15.i16[2] = a2[47];
          v15.i16[3] = a2[15];
          result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v15, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          a1[1] = result;
          v6 = a2 + 48;
          a1 = (a1 + a3);
          v7 = a2 + 16;
        }
      }
    }
  }

  if (a4 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = a4;
  }

  v17 = v16 - 4;
  if (v17)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[8];
    a6.i32[0] = *v7;
    v18 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v19 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v18, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v20 = vrev32_s16(v19);
    v21 = vuzp1_s16(v19, v20);
    *a1 = v21;
    v21.i16[0] = v6[1];
    v21.i16[1] = v6[9];
    v20.i32[0] = *(v7 + 4);
    v22 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v21, v20), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v23 = vrev32_s16(v22);
    v24 = vuzp1_s16(v22, v23);
    a1[1] = v24;
    if (v17 != 1)
    {
      v24.i16[0] = v6[2];
      v24.i16[1] = v6[10];
      v25 = (a1 + a3);
      v23.i32[0] = *(v7 + 1);
      v26 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v24, v23), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v27 = vrev32_s16(v26);
      v28 = vuzp1_s16(v26, v27);
      *v25 = v28;
      v28.i16[0] = v6[3];
      v28.i16[1] = v6[11];
      v27.i32[0] = *(v7 + 5);
      v29 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v28, v27), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v30 = vrev32_s16(v29);
      result = vuzp1_s16(v29, v30);
      v25[1] = result;
      if (v17 != 2)
      {
        v31 = (v25 + a3);
        result.i16[0] = v6[4];
        result.i16[1] = v6[12];
        v30.i32[0] = *(v7 + 2);
        v32 = vzip1_s32(result, v30);
        result = 0xF000F000F000F000;
        v33 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v32, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v34 = vrev32_s16(v33);
        v35 = vuzp1_s16(v33, v34);
        *v31 = v35;
        v35.i16[0] = v6[5];
        v35.i16[1] = v6[13];
        v34.i32[0] = *(v7 + 6);
        v36 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v35, v34), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
        v37 = vrev32_s16(v36);
        v38 = vuzp1_s16(v36, v37);
        v31[1] = v38;
        if (v17 != 3)
        {
          v39 = (v31 + a3);
          v38.i16[0] = v6[6];
          v38.i16[1] = v6[14];
          v37.i32[0] = *(v7 + 3);
          v40 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v38, v37), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          v41 = vrev32_s16(v40);
          v42 = vuzp1_s16(v40, v41);
          *v39 = v42;
          v42.i16[0] = v6[7];
          v42.i16[1] = v6[15];
          v41.i32[0] = *(v7 + 7);
          v43 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v42, v41), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
          result = vuzp1_s16(v43, vrev32_s16(v43));
          v39[1] = result;
        }
      }
    }
  }

  return result;
}

int32x2_t from_422_to_v216<2,2,(AlphaOutputMethod)0,false,(PixelOutputStoreType)0>(int8x8_t *a1, __int16 *a2, int a3, int a4, int32x2_t result, int32x2_t a6)
{
  v6 = a2 + 20;
  v7 = a2 + 4;
  if (a4 > 0)
  {
    v8.i16[0] = a2[16];
    v8.i16[1] = *a2;
    v8.i16[2] = *v6;
    v8.i16[3] = a2[1];
    result = 0xF000F000F000F000;
    v9 = vmin_s16(v8, 0xF000F000F000F000);
    *&a6 = -3.28697467e231;
    *a1 = veor_s8(vshl_n_s16(vmax_s16(v9, 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v10.i16[0] = a2[17];
    v10.i16[1] = *v7;
    v10.i16[2] = a2[21];
    v10.i16[3] = a2[5];
    a1[1] = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v10, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v6 = a2 + 22;
    a1 = (a1 + a3);
    v7 = a2 + 6;
    if (a4 != 1)
    {
      v11.i16[0] = a2[18];
      v11.i16[1] = a2[2];
      v11.i16[2] = *v6;
      v11.i16[3] = a2[3];
      *a1 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v11.i16[0] = a2[19];
      v11.i16[1] = *v7;
      v11.i16[2] = a2[23];
      v11.i16[3] = a2[7];
      result = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v11, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      a1[1] = result;
      v6 = a2 + 24;
      a1 = (a1 + a3);
      v7 = a2 + 8;
    }
  }

  if (a4 <= 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4;
  }

  v13 = v12 - 2;
  if (v13)
  {
    result.i16[0] = *v6;
    result.i16[1] = v6[4];
    a6.i32[0] = *v7;
    v14 = vzip1_s32(result, a6);
    result = 0xF000F000F000F000;
    v15 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(v14, 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v16 = vrev32_s16(v15);
    v17 = vuzp1_s16(v15, v16);
    *a1 = v17;
    v17.i16[0] = v6[1];
    v17.i16[1] = v6[5];
    v16.i32[0] = *(v7 + 2);
    v18 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v17, v16), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
    v19 = vrev32_s16(v18);
    v20 = vuzp1_s16(v18, v19);
    a1[1] = v20;
    if (v13 != 1)
    {
      v21 = (a1 + a3);
      v20.i16[0] = v6[2];
      v20.i16[1] = v6[6];
      v19.i32[0] = *(v7 + 1);
      v22 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v20, v19), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      v23 = vrev32_s16(v22);
      v24 = vuzp1_s16(v22, v23);
      *v21 = v24;
      v24.i16[0] = v6[3];
      v24.i16[1] = v6[7];
      v23.i32[0] = *(v7 + 3);
      v25 = veor_s8(vshl_n_s16(vmax_s16(vmin_s16(vzip1_s32(v24, v23), 0xF000F000F000F000), 0xF000F000F000F000), 3uLL), 0x8000800080008000);
      result = vuzp1_s16(v25, vrev32_s16(v25));
      v21[1] = result;
    }
  }

  return result;
}