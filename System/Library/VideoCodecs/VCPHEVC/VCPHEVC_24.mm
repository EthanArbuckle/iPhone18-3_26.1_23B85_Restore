int16x4_t *sub_2774F5D20(int16x4_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 17) >> 5);
    a3->i16[0] = 0;
    v10 = 2 * a2;
    v11 = -2;
    v12.i64[0] = 0xFC00FC00FC00FC00;
    v12.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v13 = (v8 + v10);
      v14 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v8[1], v9), v12);
      v16 = vminq_u16(vsqaddq_u16(*(&v8[1] + v10), v9), v12);
      *v8 = vminq_u16(vsqaddq_u16(*v8, v9), v12);
      *v13 = v14;
      v8[1] = v15;
      v13[1] = v16;
      v8 = (v8 + 4 * a2);
      v11 += 2;
    }

    while (v11 < 0xE);
    if (a4)
    {
      v17 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v17 += 16;
      }

      while (v17 < 0xF0);
    }
  }

  else
  {
    result = sub_2774F5EE0(a3, a5);
    v18 = 0;
    v19 = 1;
    v20.i64[0] = 0xFC00FC00FC00FC00;
    v20.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v21 = v19;
      v22 = &v8[v18];
      v23 = -4;
      v24 = &v6[v18];
      do
      {
        v25 = *(v22 + 2 * a2);
        v26 = *v22;
        v27 = *(v22 + 4 * a2);
        v28 = *(v22 + 6 * a2);
        v29 = v24[2];
        v30 = v24[4];
        v31 = v24[6];
        v32 = vtrn1q_s16(*v24, v29);
        v33 = vtrn2q_s16(*v24, v29);
        v34 = vtrn1q_s16(v30, v31);
        v35 = vtrn2q_s16(v30, v31);
        v36 = vtrn1q_s32(v32, v34);
        v37 = vtrn2q_s32(v32, v34);
        v38 = vtrn1q_s32(v33, v35);
        v39 = vtrn2q_s32(v33, v35);
        if (a4)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v41 = vdupq_n_s16(v40);
        *v24 = vandq_s8(v36, v41);
        v24[2] = vandq_s8(v38, v41);
        v24[4] = vandq_s8(v37, v41);
        v24[6] = vandq_s8(v39, v41);
        *v22 = vminq_u16(vsqaddq_u16(v26, v36), v20);
        *(v22 + 2 * a2) = vminq_u16(vsqaddq_u16(v25, v38), v20);
        *(v22 + 4 * a2) = vminq_u16(vsqaddq_u16(v27, v37), v20);
        *(v22 + 6 * a2) = vminq_u16(vsqaddq_u16(v28, v39), v20);
        v22 = (v22 + 8 * a2);
        v24 += 8;
        v23 += 4;
      }

      while (v23 < 0xC);
      v19 = 0;
      v18 = 1;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F5EE0(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 17) >> 5);
    v4 = -32;
    do
    {
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 += 32;
    }

    while (v4 < 0xE0);
    return result;
  }

  if (a2 <= 16)
  {
    sub_2774EEE18(result, 0x10u, &unk_27753CB30);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F55F0(v2, 0x10u, &unk_27753CC10);
      v8 += 4;
      v2 += 16;
    }

    while (v8 < 0xC);
    return result;
  }

  if (a2 >= 0x31)
  {
    v6 = -4;
    v7 = result;
    do
    {
      sub_2774EF08C(v7, 0x10u, &unk_27753CB80, aYk2, aZwpf9);
      v6 += 4;
      ++v7;
    }

    while (v6 < 0xC);
  }

  else
  {
    sub_2774EEEDC(result, 0x10u, &unk_27753CB30, aZwpf);
    sub_2774EEEDC(v2 + 1, 0x10u, &unk_27753CB30, aZwpf);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 >= 0x51)
  {
    v10 = -4;
    do
    {
      result = sub_2774F5864(v2, 0x10u, &unk_27753CC18, aYk2, aZwpf9);
      v10 += 4;
      v2 += 16;
    }

    while (v10 < 0xC);
  }

  else
  {
    v9 = -4;
    do
    {
      result = sub_2774F56D0(v2, 0x10u, &unk_27753CC10, aZwpf);
      v9 += 4;
      v2 += 16;
    }

    while (v9 < 0xC);
  }

  return result;
}

uint16x8_t *sub_2774F60C0(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 17) >> 5);
    a3->i16[0] = 0;
    v10 = *(result + 14 * a2);
    v11.i64[0] = 0xFC00FC00FC00FC00;
    v11.i64[1] = 0xFC00FC00FC00FC00;
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v9), v11);
    v13 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v9), v11);
    v14 = vminq_u16(vsqaddq_u16(*(result + 6 * a2), v9), v11);
    v15 = vminq_u16(vsqaddq_u16(*(result + 8 * a2), v9), v11);
    v16 = vminq_u16(vsqaddq_u16(*(result + 10 * a2), v9), v11);
    v17 = vminq_u16(vsqaddq_u16(*(result + 12 * a2), v9), v11);
    *result = vminq_u16(vsqaddq_u16(*result, v9), v11);
    *(result + 2 * a2) = v12;
    *(result + 4 * a2) = v13;
    *(result + 6 * a2) = v14;
    *(result + 8 * a2) = v15;
    *(result + 10 * a2) = v16;
    *(result + 12 * a2) = v17;
    *(result + 14 * a2) = vminq_u16(vsqaddq_u16(v10, v9), v11);
    if (a4)
    {
      v18 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v18 += 16;
      }

      while (v18 < 0x30);
    }
  }

  else
  {
    result = sub_2774F62A4(a3, a5);
    v19 = 1;
    v20.i64[0] = 0xFC00FC00FC00FC00;
    v20.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v21 = v19;
      v22 = *v8;
      v23 = *(v8 + 2 * a2);
      v24 = *(v8 + 4 * a2);
      v25 = *(v8 + 6 * a2);
      v26 = v6[1];
      v27 = v6[2];
      v28 = v6[3];
      v29 = vtrn1q_s16(*v6, v26);
      v30 = vtrn2q_s16(*v6, v26);
      v31 = vtrn1q_s16(v27, v28);
      v32 = vtrn2q_s16(v27, v28);
      v33 = vtrn1q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v31);
      v35 = vtrn1q_s32(v30, v32);
      v36 = vtrn2q_s32(v30, v32);
      if (a4)
      {
        v37 = -1;
      }

      else
      {
        v37 = 0;
      }

      v38 = vdupq_n_s16(v37);
      *v6 = vandq_s8(v33, v38);
      v6[1] = vandq_s8(v35, v38);
      v6[2] = vandq_s8(v34, v38);
      v6[3] = vandq_s8(v36, v38);
      *v8 = vminq_u16(vsqaddq_u16(v22, v33), v20);
      *(v8 + 2 * a2) = vminq_u16(vsqaddq_u16(v23, v35), v20);
      *(v8 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v20);
      *(v8 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v20);
      v8 = (v8 + 8 * a2);
      v6 += 4;
      v19 = 0;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F62A4(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 17) >> 5);
    v4 = 1;
    do
    {
      v5 = v4;
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 = 0;
    }

    while ((v5 & 1) != 0);
  }

  else if (a2 > 16)
  {
    sub_2774EEEDC(result, 8u, &unk_27753CA00, aYk2);
    sub_2774EEEDC(v2 + 1, 8u, &unk_27753CA00, aYk2);
    sub_2774F56D0(v2, 8u, &unk_27753CA00, aYk2);

    return sub_2774F56D0(&v2[8], 8u, &unk_27753CA00, aYk2);
  }

  else
  {
    sub_2774EEE18(result, 8u, &unk_27753CA00);
    sub_2774F55F0(v2, 8u, &unk_27753CA00);

    return sub_2774F55F0(v2 + 8, 8u, &unk_27753CA00);
  }

  return result;
}

void sub_2774F63D0(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v5 = a4;
  if (a5 != 1)
  {
    sub_2774F64CC(a3, a5);
    v17 = (a1 + 2 * a2);
    v18.i64[0] = *a1;
    v18.i64[1] = *v17;
    v19 = (a1 + 6 * a2);
    v20.i64[0] = *(a1 + 4 * a2);
    v20.i64[1] = *v19;
    v21.i64[0] = 0xFC00FC00FC00FC00;
    v21.i64[1] = 0xFC00FC00FC00FC00;
    v22 = vminq_u16(vsqaddq_u16(v18, *a3), v21);
    v23 = vminq_u16(vsqaddq_u16(v20, a3[1]), v21);
    *a1 = v22.i64[0];
    *v17 = v22.i64[1];
    *(a1 + 4 * a2) = v23.i64[0];
    *v19 = v23.i64[1];
    if (v5)
    {
      return;
    }

    v9 = 0uLL;
    goto LABEL_6;
  }

  v9 = vdupq_n_s16((a3->i16[0] + 17) >> 5);
  a3->i16[0] = 0;
  v10 = (a1 + 2 * a2);
  v11.i64[0] = *a1;
  v11.i64[1] = *v10;
  v12 = (a1 + 6 * a2);
  v13.i64[0] = *(a1 + 4 * a2);
  v13.i64[1] = *v12;
  v14.i64[0] = 0xFC00FC00FC00FC00;
  v14.i64[1] = 0xFC00FC00FC00FC00;
  v15 = vminq_u16(vsqaddq_u16(v11, v9), v14);
  v16 = vminq_u16(vsqaddq_u16(v13, v9), v14);
  *a1 = v15.i64[0];
  *v10 = v15.i64[1];
  *(a1 + 4 * a2) = v16.i64[0];
  *v12 = v16.i64[1];
  if (a4)
  {
LABEL_6:
    *a3 = v9;
    a3[1] = v9;
  }
}

int32x4_t sub_2774F64CC(int32x4_t *a1, int a2)
{
  if (a2 == 1)
  {
    result = vdupq_n_s16((a1->i16[0] + 17) >> 5);
    *a1 = result;
    a1[1] = result;
  }

  else
  {
    v3 = a1->u64[1];
    v4 = *a1[1].i8;
    v5 = a1[1].u64[1];
    v6 = vsubl_s16(*a1->i8, v4);
    v7 = vshlq_n_s32(vaddl_s16(v4, *a1->i8), 6uLL);
    v8 = vshlq_n_s32(v6, 6uLL);
    v9 = vmlal_s16(vmull_s16(v5, 0x24002400240024), v3, 0x53005300530053);
    v10 = vmlsl_s16(vmull_s16(v3, 0x24002400240024), v5, 0x53005300530053);
    v11 = vqrshrn_n_s32(vaddq_s32(v9, v7), 7uLL);
    *v7.i8 = vqrshrn_n_s32(vsubq_s32(v7, v9), 7uLL);
    v12 = vqrshrn_n_s32(vaddq_s32(v10, v8), 7uLL);
    *v8.i8 = vqrshrn_n_s32(vsubq_s32(v8, v10), 7uLL);
    *v10.i8 = vtrn1_s16(v11, v12);
    v13 = vtrn2_s16(v11, v12);
    v14 = vtrn1_s16(*v8.i8, *v7.i8);
    *v8.i8 = vtrn2_s16(*v8.i8, *v7.i8);
    *v7.i8 = vzip1_s32(*v10.i8, v14);
    v15 = vzip2_s32(*v10.i8, v14);
    *v10.i8 = vzip1_s32(v13, *v8.i8);
    *v8.i8 = vzip2_s32(v13, *v8.i8);
    v16 = vshlq_n_s32(vaddl_s16(*v7.i8, v15), 6uLL);
    v17 = vshlq_n_s32(vsubl_s16(*v7.i8, v15), 6uLL);
    v18 = vmlal_s16(vmull_s16(*v8.i8, 0x24002400240024), *v10.i8, 0x53005300530053);
    v19 = vmlsl_s16(vmull_s16(*v10.i8, 0x24002400240024), *v8.i8, 0x53005300530053);
    result = vaddq_s32(v16, v18);
    v20.val[0] = vqrshrn_n_s32(result, 0xAuLL);
    v20.val[3] = vqrshrn_n_s32(vsubq_s32(v16, v18), 0xAuLL);
    v20.val[1] = vqrshrn_n_s32(vaddq_s32(v17, v19), 0xAuLL);
    v20.val[2] = vqrshrn_n_s32(vsubq_s32(v17, v19), 0xAuLL);
    vst4_s16(a1->i16, v20);
  }

  return result;
}

double sub_2774F65A4(uint64_t *a1, uint64_t a2, int16x4_t *a3, char a4)
{
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = vaddl_s16(v5, *a3);
  v8 = vaddl_s16(v6, v5);
  v9 = vsubl_s16(*a3, v6);
  v10.i64[0] = 0x1D0000001DLL;
  v10.i64[1] = 0x1D0000001DLL;
  v11.i64[0] = 0x3700000037;
  v11.i64[1] = 0x3700000037;
  v12 = vmlaq_s32(vmlal_s16(vmulq_s32(v7, v10), v4, 0x4A004A004A004ALL), v8, v11);
  v13 = vmlaq_s32(vmlsl_s16(vmulq_s32(v7, v11), v4, 0x4A004A004A004ALL), v9, v10);
  v14.i64[0] = 0x1C0000001CLL;
  v14.i64[1] = 0x1C0000001CLL;
  v15 = vmlaq_s32(vmlal_s16(vmulq_s32(v9, v11), v4, 0x4A004A004A004ALL), v8, v14);
  v16.i64[0] = 0x4A0000004ALL;
  v16.i64[1] = 0x4A0000004ALL;
  v17 = vmulq_s32(vaddw_s16(vsubl_s16(*a3, v5), v6), v16);
  v18 = vqrshrn_n_s32(v12, 7uLL);
  v19 = vqrshrn_n_s32(v15, 7uLL);
  *v17.i8 = vqrshrn_n_s32(v17, 7uLL);
  *v13.i8 = vqrshrn_n_s32(v13, 7uLL);
  *v8.i8 = vtrn1_s16(v18, v19);
  v20 = vtrn2_s16(v18, v19);
  v21 = vtrn1_s16(*v17.i8, *v13.i8);
  *v17.i8 = vtrn2_s16(*v17.i8, *v13.i8);
  *v13.i8 = vzip1_s32(*v8.i8, v21);
  v22 = vzip2_s32(*v8.i8, v21);
  *v8.i8 = vzip1_s32(v20, *v17.i8);
  *v17.i8 = vzip2_s32(v20, *v17.i8);
  v23 = vaddl_s16(*v13.i8, v22);
  v24 = vaddl_s16(v22, *v17.i8);
  v25 = vsubl_s16(*v13.i8, *v17.i8);
  v26 = vmlaq_s32(vmlal_s16(vmulq_s32(v24, v11), *v8.i8, 0x4A004A004A004ALL), v23, v10);
  v27 = vmlaq_s32(vmlsl_s16(vmulq_s32(v25, v10), *v8.i8, 0x4A004A004A004ALL), v23, v11);
  v28 = vmulq_s32(vaddw_s16(vsubl_s16(*v13.i8, v22), *v17.i8), v16);
  v29 = vqrshrn_n_s32(v26, 0xAuLL);
  *v13.i8 = vqrshrn_n_s32(vmlaq_s32(vmlal_s16(vmulq_s32(v25, v11), *v8.i8, 0x4A004A004A004ALL), v24, v14), 0xAuLL);
  *v8.i8 = vqrshrn_n_s32(v28, 0xAuLL);
  *v24.i8 = vqrshrn_n_s32(v27, 0xAuLL);
  vst4_s16(a3, *(&v8 - 1));
  v30 = (a1 + 2 * a2);
  v28.i64[0] = *a1;
  v28.i64[1] = *v30;
  v31 = (a1 + 6 * a2);
  v16.i64[0] = *(a1 + 4 * a2);
  v16.i64[1] = *v31;
  v32 = *a3[2].i8;
  v23.i64[0] = 0xFC00FC00FC00FC00;
  v23.i64[1] = 0xFC00FC00FC00FC00;
  v33 = vminq_u16(vsqaddq_u16(v28, *a3->i8), v23);
  *a1 = v33.i64[0];
  *v30 = v33.i64[1];
  v34 = vminq_u16(vsqaddq_u16(v16, v32), v23);
  *(a1 + 4 * a2) = v34.i64[0];
  *v31 = v34.i64[1];
  if ((a4 & 1) == 0)
  {
    v34.i64[0] = 0;
    *a3->i8 = 0u;
    *a3[2].i8 = 0u;
  }

  return *v34.i64;
}

void sub_2774F66D4(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v6 = 0;
  v13[257] = *MEMORY[0x277D85DE8];
  v7 = a3 + 2;
  v8 = a1 + 2;
  do
  {
    v9 = vsubq_s16(v8[-1], v7[-1]);
    v10 = vsubq_s16(*v8, *v7);
    v11 = &a5[v6];
    v12 = vsubq_s16(v8[1], v7[1]);
    *v11 = vsubq_s16(v8[-2], v7[-2]);
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v6 += 8;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while ((v6 * 8) != 2048);
  sub_2774F077C(v13, a5, 6);
  sub_2774F09B8(a5, v13);
}

void sub_2774F6798(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v13[65] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = -2;
  v9 = a5;
  do
  {
    v10 = vsubq_s16(a1[1], a3[1]);
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = vsubq_s16(*(&a1[1] + v6), *(&a3[1] + v7));
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v10;
    v9[2] = v11;
    v9[3] = v12;
    v9 += 4;
    v8 += 2;
    a1 = (a1 + v6 + v6);
    a3 = (a3 + v7 + v7);
  }

  while (v8 < 0xE);
  sub_2774F15E8(v13, a5, 5);
  sub_2774F1738(a5, v13);
}

void sub_2774F6860(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v18[17] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = 1;
  v9 = a5;
  do
  {
    v10 = v8;
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = (a1 + v6 + v6);
    v13 = (a3 + v7 + v7);
    v14 = vsubq_s16(*v12, *v13);
    v15 = (v12 + v6);
    v16 = (v13 + v7);
    v17 = vsubq_s16(*v15, *v16);
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v11;
    v9[2] = v14;
    v9[3] = v17;
    v9 += 4;
    a1 = (v15 + v6);
    a3 = (v16 + v7);
    v8 = 0;
  }

  while ((v10 & 1) != 0);
  sub_2774F19A4(v18, a5, 4);
  sub_2774F1A4C(a5, v18);
}

int16x4_t sub_2774F6948(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v5 = vsub_s16(*a1, *a3);
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  v8 = vsub_s16(*(a1 + 6 * a2), *(a3 + 6 * a4));
  *a5 = v5;
  a5[1] = v6;
  a5[2] = v7;
  a5[3] = v8;
  v9 = vtrn1_s16(v5, v6);
  v10 = vtrn2_s16(v5, v6);
  v11 = vtrn1_s16(v7, v8);
  v12 = vtrn2_s16(v7, v8);
  v13 = vzip1_s32(v9, v11);
  v14 = vzip2_s32(v9, v11);
  v15 = vzip1_s32(v10, v12);
  v16 = vzip2_s32(v10, v12);
  v17 = vadd_s16(v16, v13);
  v18 = vsub_s16(v13, v16);
  v19 = vadd_s16(v14, v15);
  v20 = vsub_s16(v15, v14);
  v22[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v19, v17), 6uLL), 3uLL));
  v22[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v20, 0x24002400240024), v18, 0x53005300530053), 3uLL));
  v22[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v17, v19), 6uLL), 3uLL));
  v22[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v18, 0x24002400240024), v20, 0x53005300530053), 3uLL));
  return sub_2774F1C40(a5, v22);
}

int16x4_t sub_2774F6A70(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = *(a1 + 6 * a2);
  v8 = *(a3 + 6 * a4);
  v9 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v6;
  a5[2] = v9;
  a5[3] = vsub_s16(v7, v8);
  sub_2774F1D8C(v11, a5, 3);
  return sub_2774F1E30(a5, v11);
}

int16x8_t sub_2774F6B34(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a3 + 2;
  v7 = a1 + 2;
  do
  {
    result = vsubq_s16(v7[-2], v6[-2]);
    v9 = vsubq_s16(v7[-1], v6[-1]);
    v10 = vsubq_s16(*v7, *v6);
    v11 = (a5 + v5);
    v12 = vsubq_s16(v7[1], v6[1]);
    *v11 = result;
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v5 += 64;
    v6 = (v6 + 2 * a4);
    v7 = (v7 + 2 * a2);
  }

  while (v5 != 2048);
  return result;
}

int16x8_t *sub_2774F6B8C(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = -2;
  do
  {
    v8 = vsubq_s16(result[1], a3[1]);
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = vsubq_s16(*(&result[1] + v5), *(&a3[1] + v6));
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
    a5 += 4;
    v7 += 2;
    result = (result + v5 + v5);
    a3 = (a3 + v6 + v6);
  }

  while (v7 < 0xE);
  return result;
}

int16x8_t *sub_2774F6BE4(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = (result + v5 + v5);
    v11 = (a3 + v6 + v6);
    v12 = vsubq_s16(*v10, *v11);
    v13 = (v10 + v5);
    v14 = (v11 + v6);
    v15 = vsubq_s16(*v13, *v14);
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v9;
    a5[2] = v12;
    a5[3] = v15;
    a5 += 4;
    result = (v13 + v5);
    a3 = (v14 + v6);
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

int16x4_t sub_2774F6C5C(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v5 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v6 = *(a1 + 6 * a2);
  v7 = *(a3 + 6 * a4);
  v8 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v5;
  result = vsub_s16(v6, v7);
  a5[2] = v8;
  a5[3] = result;
  return result;
}

uint64_t sub_2774F6CB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F6D48;
  }

  else
  {
    v4 = sub_2774F6CDC;
  }

  return v4();
}

uint16x8_t *sub_2774F6CDC(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xF800F800F800F800;
  v5.i64[1] = 0xF800F800F800F800;
  do
  {
    v6 = (a3 + v3);
    v7 = *(a3 + v3);
    v8 = *(a3 + v3 + 16);
    v9 = *(a3 + v3 + 32);
    v10 = *(a3 + v3 + 48);
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    v6[3] = 0uLL;
    v11 = vminq_u16(vsqaddq_u16(v4[-1], v8), v5);
    v12 = vminq_u16(vsqaddq_u16(*v4, v9), v5);
    v13 = vminq_u16(vsqaddq_u16(v4[1], v10), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], v7), v5);
    v4[-1] = v11;
    *v4 = v12;
    v4[1] = v13;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint16x8_t *sub_2774F6D48(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xF800F800F800F800;
  v5.i64[1] = 0xF800F800F800F800;
  do
  {
    v6 = vminq_u16(vsqaddq_u16(v4[-1], *(a3 + v3 + 16)), v5);
    v7 = vminq_u16(vsqaddq_u16(*v4, *(a3 + v3 + 32)), v5);
    v8 = vminq_u16(vsqaddq_u16(v4[1], *(a3 + v3 + 48)), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], *(a3 + v3)), v5);
    v4[-1] = v6;
    *v4 = v7;
    v4[1] = v8;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint64_t sub_2774F6DA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F6E40;
  }

  else
  {
    v4 = sub_2774F6DD0;
  }

  return v4();
}

uint16x8_t *sub_2774F6DD0(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xF800F800F800F800;
  v5.i64[1] = 0xF800F800F800F800;
  do
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = (result + v3);
    v11 = vminq_u16(vsqaddq_u16(result[1], v7), v5);
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v8), v5);
    v13 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), v9), v5);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v5);
    result[1] = v11;
    *v10 = v12;
    v10[1] = v13;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint16x8_t *sub_2774F6E40(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xF800F800F800F800;
  v5.i64[1] = 0xF800F800F800F800;
  do
  {
    v6 = (result + v3);
    v7 = vminq_u16(vsqaddq_u16(result[1], a3[1]), v5);
    v8 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[2]), v5);
    v9 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), a3[3]), v5);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v5);
    result[1] = v7;
    *v6 = v8;
    v6[1] = v9;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint64_t sub_2774F6EA4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F6F54;
  }

  else
  {
    v4 = sub_2774F6ECC;
  }

  return v4();
}

uint16x8_t *sub_2774F6ECC(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xF800F800F800F800;
  v4.i64[1] = 0xF800F800F800F800;
  do
  {
    v5 = v3;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v7), v4);
    v11 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v8), v4);
    v12 = vsqaddq_u16(*(result + 6 * a2), v9);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v4);
    *(result + 2 * a2) = v10;
    *(result + 4 * a2) = v11;
    *(result + 6 * a2) = vminq_u16(v12, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint16x8_t *sub_2774F6F54(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xF800F800F800F800;
  v4.i64[1] = 0xF800F800F800F800;
  do
  {
    v5 = v3;
    v6 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[1]), v4);
    v7 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), a3[2]), v4);
    v8 = vsqaddq_u16(*(result + 6 * a2), a3[3]);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v4);
    *(result + 2 * a2) = v6;
    *(result + 4 * a2) = v7;
    *(result + 6 * a2) = vminq_u16(v8, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

double sub_2774F6FD0(uint64_t *a1, uint64_t a2, int16x8_t *a3, char a4)
{
  v4 = (a1 + 2 * a2);
  v5.i64[0] = *a1;
  v5.i64[1] = *v4;
  v6 = (a1 + 6 * a2);
  v7.i64[0] = *(a1 + 4 * a2);
  v7.i64[1] = *v6;
  v8 = a3[1];
  v9.i64[0] = 0xF800F800F800F800;
  v9.i64[1] = 0xF800F800F800F800;
  v10 = vminq_u16(vsqaddq_u16(v5, *a3), v9);
  *a1 = v10.i64[0];
  *v4 = v10.i64[1];
  v11 = vminq_u16(vsqaddq_u16(v7, v8), v9);
  *(a1 + 4 * a2) = v11.i64[0];
  *v6 = v11.i64[1];
  if ((a4 & 1) == 0)
  {
    v11.i64[0] = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *v11.i64;
}

int16x8_t *sub_2774F7028(int16x8_t *result)
{
  v1 = -16;
  do
  {
    v2 = vrshrq_n_s16(result[1], 1uLL);
    *result = vrshrq_n_s16(*result, 1uLL);
    result[1] = v2;
    result += 2;
    v1 += 16;
  }

  while (v1 < 0x30);
  return result;
}

int16x8_t sub_2774F704C(int16x8_t *a1)
{
  result = vrshrq_n_s16(*a1, 2uLL);
  v2 = vrshrq_n_s16(a1[1], 2uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

int16x8_t sub_2774F7060(int16x8_t *a1)
{
  result = vshlq_n_s16(*a1, 2uLL);
  v2 = vshlq_n_s16(a1[1], 2uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint16x8_t *sub_2774F7074(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 9) >> 4);
    a3->i16[0] = 0;
    v10 = result + 2;
    v11 = 32;
    v12.i64[0] = 0xF800F800F800F800;
    v12.i64[1] = 0xF800F800F800F800;
    do
    {
      v13 = vminq_u16(vsqaddq_u16(v10[-1], v9), v12);
      v14 = vminq_u16(vsqaddq_u16(*v10, v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v10[1], v9), v12);
      v10[-2] = vminq_u16(vsqaddq_u16(v10[-2], v9), v12);
      v10[-1] = v13;
      *v10 = v14;
      v10[1] = v15;
      v10 = (v10 + 2 * a2);
      --v11;
    }

    while (v11);
    if (a4)
    {
      v16 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v16 += 16;
      }

      while (v16 < 0x3F0);
    }
  }

  else
  {
    result = sub_2774F7220(a3, a5);
    v17 = 0;
    v18.i64[0] = 0xF800F800F800F800;
    v18.i64[1] = 0xF800F800F800F800;
    do
    {
      v19 = &v8[v17];
      v20 = -4;
      v21 = &v6[v17];
      do
      {
        v22 = *(v19 + 2 * a2);
        v23 = *v19;
        v24 = *(v19 + 4 * a2);
        v25 = *(v19 + 6 * a2);
        v26 = v21[4];
        v27 = v21[8];
        v28 = v21[12];
        v29 = vtrn1q_s16(*v21, v26);
        v30 = vtrn2q_s16(*v21, v26);
        v31 = vtrn1q_s16(v27, v28);
        v32 = vtrn2q_s16(v27, v28);
        v33 = vtrn1q_s32(v29, v31);
        v34 = vtrn2q_s32(v29, v31);
        v35 = vtrn1q_s32(v30, v32);
        v36 = vtrn2q_s32(v30, v32);
        if (a4)
        {
          v37 = -1;
        }

        else
        {
          v37 = 0;
        }

        v38 = vdupq_n_s16(v37);
        *v21 = vandq_s8(v33, v38);
        v21[4] = vandq_s8(v35, v38);
        v21[8] = vandq_s8(v34, v38);
        v21[12] = vandq_s8(v36, v38);
        *v19 = vminq_u16(vsqaddq_u16(v23, v33), v18);
        *(v19 + 2 * a2) = vminq_u16(vsqaddq_u16(v22, v35), v18);
        *(v19 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v18);
        *(v19 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v18);
        v19 = (v19 + 8 * a2);
        v21 += 16;
        v20 += 4;
      }

      while (v20 < 0x1C);
    }

    while (v17++ < 3);
  }

  return result;
}

void *sub_2774F7220(int16x4_t *a1, int a2)
{
  v2 = a1;
  if (a2 <= 16)
  {
    sub_2774EEE18(a1, 0x20u, &unk_27753CC20);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F741C(v2, 0x20u, &unk_27753CC30);
      v8 += 4;
      v2 += 32;
    }

    while (v8 < 0x1C);
    return result;
  }

  if (a2 > 0x30)
  {
    if (a2 >= 0xA1)
    {
      v6 = -4;
      v7 = a1;
      do
      {
        sub_2774EF29C(v7);
        v6 += 4;
        ++v7;
      }

      while (v6 < 0x1C);
    }

    else
    {
      v4 = -4;
      v5 = a1;
      do
      {
        sub_2774EF08C(v5, 0x20u, &unk_27753CC60, aZwpf, aZzxurnic6);
        v4 += 4;
        ++v5;
      }

      while (v4 < 0xC);
    }
  }

  else
  {
    sub_2774EEEDC(a1, 0x20u, &unk_27753CC40, aZzxu);
    sub_2774EEEDC(v2 + 1, 0x20u, &unk_27753CC40, aZzxu);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 > 0x50)
  {
    if (a2 >= 0xE1)
    {
      v12 = -4;
      do
      {
        result = sub_2774F7894(v2);
        v12 += 4;
        v2 += 32;
      }

      while (v12 < 0x1C);
    }

    else
    {
      v11 = -4;
      do
      {
        result = sub_2774F7690(v2, 0x20u, &unk_27753CC70, aZwpf, aZzxurnic6);
        v11 += 4;
        v2 += 32;
      }

      while (v11 < 0x1C);
    }
  }

  else
  {
    v10 = -4;
    do
    {
      result = sub_2774F74FC(v2, 0x20u, &unk_27753CC50, aZzxu);
      v10 += 4;
      v2 += 32;
    }

    while (v10 < 0x1C);
  }

  return result;
}

int16x4_t *sub_2774F741C(int16x4_t *result, unsigned int a2, uint64_t a3)
{
  v3 = a2 - 1;
  v4 = (&unk_27753CA30 + 4 * a2);
  v5 = *(result + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 6 * a2);
  v8 = vtrn1_s16(*result, v5);
  v9 = vtrn1_s16(v6, v7);
  v10 = vshll_n_s16(vzip1_s32(v8, v9), 6uLL);
  v11 = a2 >> 2;
  v12 = vtrn2_s16(*result, v5);
  v13 = vtrn2_s16(v6, v7);
  v14 = vzip2_s32(v12, v13);
  v15 = vzip1_s32(v12, v13);
  v16 = vzip2_s32(v8, v9);
  v17 = (a3 + 1);
  do
  {
    v18 = *v4++;
    v19 = vmlal_laneq_s16(v10, v16, v18, 4);
    v20 = vmlsl_laneq_s16(v10, v16, v18, 4);
    v21 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 1), v15, *v18.i8, 0);
    v22 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 3), v15, *v18.i8, 2);
    v23 = *(v17 - 1);
    v18.i32[0] = *v17;
    v17 += 2;
    result[v23] = vqrshrn_n_s32(vaddq_s32(v21, v19), 9uLL);
    result[v18.u32[0]] = vqrshrn_n_s32(vaddq_s32(v22, v20), 9uLL);
    *(result + 2 * (4 * (v3 - v23))) = vqrshrn_n_s32(vsubq_s32(v19, v21), 9uLL);
    *(result + 2 * (4 * (v3 - v18.i32[0]))) = vqrshrn_n_s32(vsubq_s32(v20, v22), 9uLL);
    --v11;
  }

  while (v11);
  return result;
}

int16x8_t *sub_2774F74FC(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4)
{
  v4 = a2 - 1;
  v5 = (&unk_27753CA30 + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 2 * a2);
  v8 = *(result + 6 * a2);
  v9 = vtrn1q_s16(*result, v7);
  v10 = vtrn2q_s16(*result, v7);
  v11 = vtrn1q_s16(v6, v8);
  v12 = vtrn2q_s16(v6, v8);
  v13 = vtrn1q_s32(v9, v11);
  v14 = vtrn2q_s32(v9, v11);
  v15 = vtrn1q_s32(v10, v12);
  v16 = vtrn2q_s32(v10, v12);
  v17 = vshll_n_s16(*v13.i8, 6uLL);
  v18 = a2 >> 3;
  v19 = (a3 + 3);
  do
  {
    v20 = *v5++;
    v21 = vmlal_high_laneq_s16(v17, v13, v20, 4);
    v22 = vmlsl_high_laneq_s16(v17, v13, v20, 4);
    v23 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 0), v14, *v20.i8, 1);
    v24 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 2), v14, *v20.i8, 3);
    v25 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *a4, 1), *v15.i8, *a4, 0), v15, *a4, 2), v16, *a4, 3);
    v26 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[1], 1), *v15.i8, a4[1], 0), v15, a4[1], 2), v16, a4[1], 3);
    v27 = a4[3];
    v28 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[2], 1), *v15.i8, a4[2], 0), v15, a4[2], 2), v16, a4[2], 3);
    v29 = vaddq_s32(v23, v21);
    v30 = vsubq_s32(v21, v23);
    v31 = *(v19 - 3);
    v32 = *(v19 - 2);
    v33 = *(v19 - 1);
    v20.i32[0] = *v19;
    v19 += 4;
    *&result->i8[8 * v31] = vqrshrn_n_s32(vaddq_s32(v25, v29), 9uLL);
    v34 = vaddq_s32(v24, v22);
    v35 = vsubq_s32(v22, v24);
    *&result->i8[8 * v32] = vqrshrn_n_s32(vaddq_s32(v26, v30), 9uLL);
    v36 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, v27, 1), *v15.i8, v27, 0), v15, v27, 2), v16, v27, 3);
    *&result->i8[8 * v33] = vqrshrn_n_s32(vaddq_s32(v28, v34), 9uLL);
    *&result->i8[8 * v20.u32[0]] = vqrshrn_n_s32(vaddq_s32(v36, v35), 9uLL);
    *&result->i8[8 * (v4 - v31)] = vqrshrn_n_s32(vsubq_s32(v29, v25), 9uLL);
    *&result->i8[8 * (v4 - v32)] = vqrshrn_n_s32(vsubq_s32(v30, v26), 9uLL);
    *&result->i8[8 * (v4 - v33)] = vqrshrn_n_s32(vsubq_s32(v34, v28), 9uLL);
    *&result->i8[8 * (v4 - v20.i32[0])] = vqrshrn_n_s32(vsubq_s32(v35, v36), 9uLL);
    a4 += 4;
    --v18;
  }

  while (v18);
  return result;
}

int16x8_t *sub_2774F7690(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4, int16x4_t *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = (result + 2 * a2);
  v6 = (result + 4 * a2);
  v7 = (result + 6 * a2);
  v8 = result[1];
  v9 = v5[1];
  v10 = v6[1];
  v11 = v7[1];
  v12 = vtrn1q_s16(*result, *v5);
  v13 = vtrn2q_s16(*result, *v5);
  v14 = vtrn1q_s16(*v6, *v7);
  v15 = vtrn2q_s16(*v6, *v7);
  v16 = vtrn1q_s32(v12, v14);
  v17 = vtrn2q_s32(v12, v14);
  v18 = vtrn1q_s32(v13, v15);
  v19 = vtrn2q_s32(v13, v15);
  v20 = vtrn1q_s16(v8, v9);
  v21 = vtrn2q_s16(v8, v9);
  v22 = vtrn1q_s16(v10, v11);
  v23 = vtrn2q_s16(v10, v11);
  v24 = vtrn1q_s32(v20, v22);
  v25 = vtrn2q_s32(v20, v22);
  v26 = vtrn1q_s32(v21, v23);
  v27 = vtrn2q_s32(v21, v23);
  v28 = a2 >> 1;
  v29 = (&unk_27753CA30 + 2 * v28);
  v30 = vshll_n_s16(*v16.i8, 6uLL);
  v31 = a2 >> 4;
  v32 = v51;
  do
  {
    v33 = *v29++;
    v34 = vmlal_laneq_s16(v30, *v24.i8, v33, 4);
    v35 = vmlsl_laneq_s16(v30, *v24.i8, v33, 4);
    v36 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 1), v16, *v33.i8, 0);
    v37 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 3), v16, *v33.i8, 2);
    v38 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, *a4, 0), v17, *a4, 1), *v25.i8, *a4, 2), v25, *a4, 3);
    v39 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[1], 0), v17, a4[1], 1), *v25.i8, a4[1], 2), v25, a4[1], 3);
    v40 = a4[3];
    v41 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[2], 0), v17, a4[2], 1), *v25.i8, a4[2], 2), v25, a4[2], 3);
    v42 = vaddq_s32(v36, v34);
    v43 = vsubq_s32(v34, v36);
    v44 = vaddq_s32(v37, v35);
    v45 = vsubq_s32(v35, v37);
    *v32 = vaddq_s32(v38, v42);
    v32[1] = vaddq_s32(v39, v43);
    v46 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, v40, 0), v17, v40, 1), *v25.i8, v40, 2), v25, v40, 3);
    v32[2] = vaddq_s32(v41, v44);
    v32[3] = vaddq_s32(v46, v45);
    v32[4] = vsubq_s32(v42, v38);
    v32[5] = vsubq_s32(v43, v39);
    v32[6] = vsubq_s32(v44, v41);
    v32[7] = vsubq_s32(v45, v46);
    v32 += 8;
    a4 += 4;
    --v31;
  }

  while (v31);
  v47 = 0;
  do
  {
    v48 = v51[v47];
    v49 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v19.i8, *a5, 1), *v18.i8, *a5, 0), v18, *a5, 2), v19, *a5, 3), *v26.i8, *a5->i8, 4), *v27.i8, *a5->i8, 5), v26, *a5->i8, 6), v27, *a5->i8, 7);
    v50 = 4 * (~*(a3 + v47) + a2);
    *&result->i8[8 * *(a3 + v47)] = vqrshrn_n_s32(vaddq_s32(v49, v48), 9uLL);
    *&result->i8[2 * v50] = vqrshrn_n_s32(vsubq_s32(v48, v49), 9uLL);
    ++v47;
    a5 = (a5 + 2 * v28);
  }

  while (v28 != v47);
  return result;
}

int16x4_t *sub_2774F7894(int16x4_t *result)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = &result[16];
  v2 = -8;
  do
  {
    v3 = v1[-8];
    v4 = v1[-4];
    v5 = v1[4];
    v6 = vtrn1q_s16(v3, v4);
    v7 = vtrn2q_s16(v3, v4);
    v8 = vtrn1q_s16(*v1, v5);
    v9 = vtrn2q_s16(*v1, v5);
    v1[-8] = vtrn1q_s32(v6, v8);
    v1[-4] = vtrn1q_s32(v7, v9);
    *v1 = vtrn2q_s32(v6, v8);
    v1[4] = vtrn2q_s32(v7, v9);
    v2 += 8;
    ++v1;
  }

  while (v2 < 0x18);
  v10 = 0;
  v11 = result[1];
  v12 = result[2];
  v13 = result[3];
  v15 = result[4];
  v14 = result[5];
  v17 = result[6];
  v16 = result[7];
  v18 = vshll_n_s16(*result, 6uLL);
  v19 = vmlal_s16(v18, v15, 0x40004000400040);
  v20 = vmlsl_s16(v18, v15, 0x40004000400040);
  v21 = vmlal_s16(vmull_s16(v17, 0x24002400240024), v12, 0x53005300530053);
  v22 = vmlal_s16(vmull_s16(v17, 0x52005200520052), v12, 0x24002400240024);
  v23 = vaddq_s32(v21, v19);
  v24 = vsubq_s32(v19, v21);
  v25 = vaddq_s32(v22, v20);
  v26 = vsubq_s32(v20, v22);
  v27 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x4B004B004B004BLL), v11, 0x59005900590059), v14, 0x32003200320032), v16, 0x12001200120012);
  v28 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x31003100310031), v11, 0x12001200120012), v14, 0x4B004B004B004BLL), v16, 0x58005800580058);
  v29 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x11001100110011), v11, 0x4B004B004B004BLL), v14, 0x58005800580058), v16, 0x31003100310031);
  v66[0] = vaddq_s32(v27, v23);
  v66[1] = vaddq_s32(v28, v24);
  v30 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x58005800580058), v11, 0x32003200320032), v14, 0x12001200120012), v16, 0x4B004B004B004BLL);
  v66[2] = vaddq_s32(v29, v25);
  v66[3] = vaddq_s32(v30, v26);
  v66[4] = vsubq_s32(v23, v27);
  v66[5] = vsubq_s32(v24, v28);
  v66[6] = vsubq_s32(v25, v29);
  v66[7] = vsubq_s32(v26, v30);
  v31 = result[16];
  v32 = result[17];
  v33 = result[18];
  v34 = result[19];
  v35 = result[20];
  v36 = result[21];
  v37 = result[22];
  v38 = result[23];
  do
  {
    v39 = &v66[v10 / 8];
    v40 = v66[v10 / 8];
    v41 = *&aZwpf9[v10];
    v42 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v32, *v41.i8, 1), v31, *v41.i8, 0), v33, *v41.i8, 2), v34, *v41.i8, 3), v35, v41, 4), v36, v41, 5), v37, v41, 6), v38, v41, 7);
    *v39 = vaddq_s32(v42, v40);
    v39[8] = vsubq_s32(v40, v42);
    v10 += 8;
  }

  while (v10 != 64);
  v43 = 0;
  v44 = result[8];
  v45 = result[9];
  v46 = result[24];
  v47 = result[25];
  v48 = result[10];
  v49 = result[11];
  v50 = result[26];
  v51 = result[27];
  v52 = result[12];
  v53 = result[13];
  v54 = result[28];
  v55 = result[29];
  v56 = aZzxurnic6;
  v57 = result[14];
  v58 = result[15];
  v59 = result[30];
  v60 = result[31];
  do
  {
    v62 = *v56;
    v61 = *(v56 + 1);
    v56 += 16;
    v63 = v66[byte_27753CF00[v43]];
    v64 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v46, *v62.i8, 1), v44, *v62.i8, 0), v45, *v62.i8, 2), v47, *v62.i8, 3), v48, v62, 4), v50, v62, 5), v49, v62, 6), v51, v62, 7), v52, *v61.i8, 0), v54, *v61.i8, 1), v53, *v61.i8, 2), v55, *v61.i8, 3), v57, v61, 4), v59, v61, 5), v58, v61, 6), v60, v61, 7);
    v65 = 124 - 4 * *(&unk_27753CC20 + v43 + 80);
    result[*(&unk_27753CC20 + v43 + 80)] = vqrshrn_n_s32(vaddq_s32(v64, v63), 9uLL);
    *(result + 2 * v65) = vqrshrn_n_s32(vsubq_s32(v63, v64), 9uLL);
    ++v43;
  }

  while (v43 != 16);
  return result;
}

int16x4_t *sub_2774F7B4C(int16x4_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 9) >> 4);
    a3->i16[0] = 0;
    v10 = 2 * a2;
    v11 = -2;
    v12.i64[0] = 0xF800F800F800F800;
    v12.i64[1] = 0xF800F800F800F800;
    do
    {
      v13 = (v8 + v10);
      v14 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v8[1], v9), v12);
      v16 = vminq_u16(vsqaddq_u16(*(&v8[1] + v10), v9), v12);
      *v8 = vminq_u16(vsqaddq_u16(*v8, v9), v12);
      *v13 = v14;
      v8[1] = v15;
      v13[1] = v16;
      v8 = (v8 + 4 * a2);
      v11 += 2;
    }

    while (v11 < 0xE);
    if (a4)
    {
      v17 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v17 += 16;
      }

      while (v17 < 0xF0);
    }
  }

  else
  {
    result = sub_2774F7D0C(a3, a5);
    v18 = 0;
    v19 = 1;
    v20.i64[0] = 0xF800F800F800F800;
    v20.i64[1] = 0xF800F800F800F800;
    do
    {
      v21 = v19;
      v22 = &v8[v18];
      v23 = -4;
      v24 = &v6[v18];
      do
      {
        v25 = *(v22 + 2 * a2);
        v26 = *v22;
        v27 = *(v22 + 4 * a2);
        v28 = *(v22 + 6 * a2);
        v29 = v24[2];
        v30 = v24[4];
        v31 = v24[6];
        v32 = vtrn1q_s16(*v24, v29);
        v33 = vtrn2q_s16(*v24, v29);
        v34 = vtrn1q_s16(v30, v31);
        v35 = vtrn2q_s16(v30, v31);
        v36 = vtrn1q_s32(v32, v34);
        v37 = vtrn2q_s32(v32, v34);
        v38 = vtrn1q_s32(v33, v35);
        v39 = vtrn2q_s32(v33, v35);
        if (a4)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v41 = vdupq_n_s16(v40);
        *v24 = vandq_s8(v36, v41);
        v24[2] = vandq_s8(v38, v41);
        v24[4] = vandq_s8(v37, v41);
        v24[6] = vandq_s8(v39, v41);
        *v22 = vminq_u16(vsqaddq_u16(v26, v36), v20);
        *(v22 + 2 * a2) = vminq_u16(vsqaddq_u16(v25, v38), v20);
        *(v22 + 4 * a2) = vminq_u16(vsqaddq_u16(v27, v37), v20);
        *(v22 + 6 * a2) = vminq_u16(vsqaddq_u16(v28, v39), v20);
        v22 = (v22 + 8 * a2);
        v24 += 8;
        v23 += 4;
      }

      while (v23 < 0xC);
      v19 = 0;
      v18 = 1;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F7D0C(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 9) >> 4);
    v4 = -32;
    do
    {
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 += 32;
    }

    while (v4 < 0xE0);
    return result;
  }

  if (a2 <= 16)
  {
    sub_2774EEE18(result, 0x10u, &unk_27753CB30);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F741C(v2, 0x10u, &unk_27753CC10);
      v8 += 4;
      v2 += 16;
    }

    while (v8 < 0xC);
    return result;
  }

  if (a2 >= 0x31)
  {
    v6 = -4;
    v7 = result;
    do
    {
      sub_2774EF08C(v7, 0x10u, &unk_27753CB80, aYk2, aZwpf9);
      v6 += 4;
      ++v7;
    }

    while (v6 < 0xC);
  }

  else
  {
    sub_2774EEEDC(result, 0x10u, &unk_27753CB30, aZwpf);
    sub_2774EEEDC(v2 + 1, 0x10u, &unk_27753CB30, aZwpf);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 >= 0x51)
  {
    v10 = -4;
    do
    {
      result = sub_2774F7690(v2, 0x10u, &unk_27753CC18, aYk2, aZwpf9);
      v10 += 4;
      v2 += 16;
    }

    while (v10 < 0xC);
  }

  else
  {
    v9 = -4;
    do
    {
      result = sub_2774F74FC(v2, 0x10u, &unk_27753CC10, aZwpf);
      v9 += 4;
      v2 += 16;
    }

    while (v9 < 0xC);
  }

  return result;
}

uint16x8_t *sub_2774F7EEC(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 9) >> 4);
    a3->i16[0] = 0;
    v10 = *(result + 14 * a2);
    v11.i64[0] = 0xF800F800F800F800;
    v11.i64[1] = 0xF800F800F800F800;
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v9), v11);
    v13 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v9), v11);
    v14 = vminq_u16(vsqaddq_u16(*(result + 6 * a2), v9), v11);
    v15 = vminq_u16(vsqaddq_u16(*(result + 8 * a2), v9), v11);
    v16 = vminq_u16(vsqaddq_u16(*(result + 10 * a2), v9), v11);
    v17 = vminq_u16(vsqaddq_u16(*(result + 12 * a2), v9), v11);
    *result = vminq_u16(vsqaddq_u16(*result, v9), v11);
    *(result + 2 * a2) = v12;
    *(result + 4 * a2) = v13;
    *(result + 6 * a2) = v14;
    *(result + 8 * a2) = v15;
    *(result + 10 * a2) = v16;
    *(result + 12 * a2) = v17;
    *(result + 14 * a2) = vminq_u16(vsqaddq_u16(v10, v9), v11);
    if (a4)
    {
      v18 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v18 += 16;
      }

      while (v18 < 0x30);
    }
  }

  else
  {
    result = sub_2774F80D0(a3, a5);
    v19 = 1;
    v20.i64[0] = 0xF800F800F800F800;
    v20.i64[1] = 0xF800F800F800F800;
    do
    {
      v21 = v19;
      v22 = *v8;
      v23 = *(v8 + 2 * a2);
      v24 = *(v8 + 4 * a2);
      v25 = *(v8 + 6 * a2);
      v26 = v6[1];
      v27 = v6[2];
      v28 = v6[3];
      v29 = vtrn1q_s16(*v6, v26);
      v30 = vtrn2q_s16(*v6, v26);
      v31 = vtrn1q_s16(v27, v28);
      v32 = vtrn2q_s16(v27, v28);
      v33 = vtrn1q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v31);
      v35 = vtrn1q_s32(v30, v32);
      v36 = vtrn2q_s32(v30, v32);
      if (a4)
      {
        v37 = -1;
      }

      else
      {
        v37 = 0;
      }

      v38 = vdupq_n_s16(v37);
      *v6 = vandq_s8(v33, v38);
      v6[1] = vandq_s8(v35, v38);
      v6[2] = vandq_s8(v34, v38);
      v6[3] = vandq_s8(v36, v38);
      *v8 = vminq_u16(vsqaddq_u16(v22, v33), v20);
      *(v8 + 2 * a2) = vminq_u16(vsqaddq_u16(v23, v35), v20);
      *(v8 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v20);
      *(v8 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v20);
      v8 = (v8 + 8 * a2);
      v6 += 4;
      v19 = 0;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F80D0(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 9) >> 4);
    v4 = 1;
    do
    {
      v5 = v4;
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 = 0;
    }

    while ((v5 & 1) != 0);
  }

  else if (a2 > 16)
  {
    sub_2774EEEDC(result, 8u, &unk_27753CA00, aYk2);
    sub_2774EEEDC(v2 + 1, 8u, &unk_27753CA00, aYk2);
    sub_2774F74FC(v2, 8u, &unk_27753CA00, aYk2);

    return sub_2774F74FC(&v2[8], 8u, &unk_27753CA00, aYk2);
  }

  else
  {
    sub_2774EEE18(result, 8u, &unk_27753CA00);
    sub_2774F741C(v2, 8u, &unk_27753CA00);

    return sub_2774F741C(v2 + 8, 8u, &unk_27753CA00);
  }

  return result;
}

void sub_2774F81FC(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v5 = a4;
  if (a5 != 1)
  {
    sub_2774F82F8(a3, a5);
    v17 = (a1 + 2 * a2);
    v18.i64[0] = *a1;
    v18.i64[1] = *v17;
    v19 = (a1 + 6 * a2);
    v20.i64[0] = *(a1 + 4 * a2);
    v20.i64[1] = *v19;
    v21.i64[0] = 0xF800F800F800F800;
    v21.i64[1] = 0xF800F800F800F800;
    v22 = vminq_u16(vsqaddq_u16(v18, *a3), v21);
    v23 = vminq_u16(vsqaddq_u16(v20, a3[1]), v21);
    *a1 = v22.i64[0];
    *v17 = v22.i64[1];
    *(a1 + 4 * a2) = v23.i64[0];
    *v19 = v23.i64[1];
    if (v5)
    {
      return;
    }

    v9 = 0uLL;
    goto LABEL_6;
  }

  v9 = vdupq_n_s16((a3->i16[0] + 9) >> 4);
  a3->i16[0] = 0;
  v10 = (a1 + 2 * a2);
  v11.i64[0] = *a1;
  v11.i64[1] = *v10;
  v12 = (a1 + 6 * a2);
  v13.i64[0] = *(a1 + 4 * a2);
  v13.i64[1] = *v12;
  v14.i64[0] = 0xF800F800F800F800;
  v14.i64[1] = 0xF800F800F800F800;
  v15 = vminq_u16(vsqaddq_u16(v11, v9), v14);
  v16 = vminq_u16(vsqaddq_u16(v13, v9), v14);
  *a1 = v15.i64[0];
  *v10 = v15.i64[1];
  *(a1 + 4 * a2) = v16.i64[0];
  *v12 = v16.i64[1];
  if (a4)
  {
LABEL_6:
    *a3 = v9;
    a3[1] = v9;
  }
}

int32x4_t sub_2774F82F8(int32x4_t *a1, int a2)
{
  if (a2 == 1)
  {
    result = vdupq_n_s16((a1->i16[0] + 9) >> 4);
    *a1 = result;
    a1[1] = result;
  }

  else
  {
    v3 = a1->u64[1];
    v4 = *a1[1].i8;
    v5 = a1[1].u64[1];
    v6 = vsubl_s16(*a1->i8, v4);
    v7 = vshlq_n_s32(vaddl_s16(v4, *a1->i8), 6uLL);
    v8 = vshlq_n_s32(v6, 6uLL);
    v9 = vmlal_s16(vmull_s16(v5, 0x24002400240024), v3, 0x53005300530053);
    v10 = vmlsl_s16(vmull_s16(v3, 0x24002400240024), v5, 0x53005300530053);
    v11 = vqrshrn_n_s32(vaddq_s32(v9, v7), 7uLL);
    *v7.i8 = vqrshrn_n_s32(vsubq_s32(v7, v9), 7uLL);
    v12 = vqrshrn_n_s32(vaddq_s32(v10, v8), 7uLL);
    *v8.i8 = vqrshrn_n_s32(vsubq_s32(v8, v10), 7uLL);
    *v10.i8 = vtrn1_s16(v11, v12);
    v13 = vtrn2_s16(v11, v12);
    v14 = vtrn1_s16(*v8.i8, *v7.i8);
    *v8.i8 = vtrn2_s16(*v8.i8, *v7.i8);
    *v7.i8 = vzip1_s32(*v10.i8, v14);
    v15 = vzip2_s32(*v10.i8, v14);
    *v10.i8 = vzip1_s32(v13, *v8.i8);
    *v8.i8 = vzip2_s32(v13, *v8.i8);
    v16 = vshlq_n_s32(vaddl_s16(*v7.i8, v15), 6uLL);
    v17 = vshlq_n_s32(vsubl_s16(*v7.i8, v15), 6uLL);
    v18 = vmlal_s16(vmull_s16(*v8.i8, 0x24002400240024), *v10.i8, 0x53005300530053);
    v19 = vmlsl_s16(vmull_s16(*v10.i8, 0x24002400240024), *v8.i8, 0x53005300530053);
    result = vaddq_s32(v16, v18);
    v20.val[0] = vqrshrn_n_s32(result, 9uLL);
    v20.val[3] = vqrshrn_n_s32(vsubq_s32(v16, v18), 9uLL);
    v20.val[1] = vqrshrn_n_s32(vaddq_s32(v17, v19), 9uLL);
    v20.val[2] = vqrshrn_n_s32(vsubq_s32(v17, v19), 9uLL);
    vst4_s16(a1->i16, v20);
  }

  return result;
}

double sub_2774F83D0(uint64_t *a1, uint64_t a2, int16x4_t *a3, char a4)
{
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = vaddl_s16(v5, *a3);
  v8 = vaddl_s16(v6, v5);
  v9 = vsubl_s16(*a3, v6);
  v10.i64[0] = 0x1D0000001DLL;
  v10.i64[1] = 0x1D0000001DLL;
  v11.i64[0] = 0x3700000037;
  v11.i64[1] = 0x3700000037;
  v12 = vmlaq_s32(vmlal_s16(vmulq_s32(v7, v10), v4, 0x4A004A004A004ALL), v8, v11);
  v13 = vmlaq_s32(vmlsl_s16(vmulq_s32(v7, v11), v4, 0x4A004A004A004ALL), v9, v10);
  v14.i64[0] = 0x1C0000001CLL;
  v14.i64[1] = 0x1C0000001CLL;
  v15 = vmlaq_s32(vmlal_s16(vmulq_s32(v9, v11), v4, 0x4A004A004A004ALL), v8, v14);
  v16.i64[0] = 0x4A0000004ALL;
  v16.i64[1] = 0x4A0000004ALL;
  v17 = vmulq_s32(vaddw_s16(vsubl_s16(*a3, v5), v6), v16);
  v18 = vqrshrn_n_s32(v12, 7uLL);
  v19 = vqrshrn_n_s32(v15, 7uLL);
  *v17.i8 = vqrshrn_n_s32(v17, 7uLL);
  *v13.i8 = vqrshrn_n_s32(v13, 7uLL);
  *v8.i8 = vtrn1_s16(v18, v19);
  v20 = vtrn2_s16(v18, v19);
  v21 = vtrn1_s16(*v17.i8, *v13.i8);
  *v17.i8 = vtrn2_s16(*v17.i8, *v13.i8);
  *v13.i8 = vzip1_s32(*v8.i8, v21);
  v22 = vzip2_s32(*v8.i8, v21);
  *v8.i8 = vzip1_s32(v20, *v17.i8);
  *v17.i8 = vzip2_s32(v20, *v17.i8);
  v23 = vaddl_s16(*v13.i8, v22);
  v24 = vaddl_s16(v22, *v17.i8);
  v25 = vsubl_s16(*v13.i8, *v17.i8);
  v26 = vmlaq_s32(vmlal_s16(vmulq_s32(v24, v11), *v8.i8, 0x4A004A004A004ALL), v23, v10);
  v27 = vmlaq_s32(vmlsl_s16(vmulq_s32(v25, v10), *v8.i8, 0x4A004A004A004ALL), v23, v11);
  v28 = vmulq_s32(vaddw_s16(vsubl_s16(*v13.i8, v22), *v17.i8), v16);
  v29 = vqrshrn_n_s32(v26, 9uLL);
  *v13.i8 = vqrshrn_n_s32(vmlaq_s32(vmlal_s16(vmulq_s32(v25, v11), *v8.i8, 0x4A004A004A004ALL), v24, v14), 9uLL);
  *v8.i8 = vqrshrn_n_s32(v28, 9uLL);
  *v24.i8 = vqrshrn_n_s32(v27, 9uLL);
  vst4_s16(a3, *(&v8 - 1));
  v30 = (a1 + 2 * a2);
  v28.i64[0] = *a1;
  v28.i64[1] = *v30;
  v31 = (a1 + 6 * a2);
  v16.i64[0] = *(a1 + 4 * a2);
  v16.i64[1] = *v31;
  v32 = *a3[2].i8;
  v23.i64[0] = 0xF800F800F800F800;
  v23.i64[1] = 0xF800F800F800F800;
  v33 = vminq_u16(vsqaddq_u16(v28, *a3->i8), v23);
  *a1 = v33.i64[0];
  *v30 = v33.i64[1];
  v34 = vminq_u16(vsqaddq_u16(v16, v32), v23);
  *(a1 + 4 * a2) = v34.i64[0];
  *v31 = v34.i64[1];
  if ((a4 & 1) == 0)
  {
    v34.i64[0] = 0;
    *a3->i8 = 0u;
    *a3[2].i8 = 0u;
  }

  return *v34.i64;
}

void sub_2774F8500(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v6 = 0;
  v13[257] = *MEMORY[0x277D85DE8];
  v7 = a3 + 2;
  v8 = a1 + 2;
  do
  {
    v9 = vsubq_s16(v8[-1], v7[-1]);
    v10 = vsubq_s16(*v8, *v7);
    v11 = &a5[v6];
    v12 = vsubq_s16(v8[1], v7[1]);
    *v11 = vsubq_s16(v8[-2], v7[-2]);
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v6 += 8;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while ((v6 * 8) != 2048);
  sub_2774F077C(v13, a5, 7);
  sub_2774F09B8(a5, v13);
}

void sub_2774F85C4(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v13[65] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = -2;
  v9 = a5;
  do
  {
    v10 = vsubq_s16(a1[1], a3[1]);
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = vsubq_s16(*(&a1[1] + v6), *(&a3[1] + v7));
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v10;
    v9[2] = v11;
    v9[3] = v12;
    v9 += 4;
    v8 += 2;
    a1 = (a1 + v6 + v6);
    a3 = (a3 + v7 + v7);
  }

  while (v8 < 0xE);
  sub_2774F15E8(v13, a5, 6);
  sub_2774F1738(a5, v13);
}

void sub_2774F868C(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v18[17] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = 1;
  v9 = a5;
  do
  {
    v10 = v8;
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = (a1 + v6 + v6);
    v13 = (a3 + v7 + v7);
    v14 = vsubq_s16(*v12, *v13);
    v15 = (v12 + v6);
    v16 = (v13 + v7);
    v17 = vsubq_s16(*v15, *v16);
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v11;
    v9[2] = v14;
    v9[3] = v17;
    v9 += 4;
    a1 = (v15 + v6);
    a3 = (v16 + v7);
    v8 = 0;
  }

  while ((v10 & 1) != 0);
  sub_2774F19A4(v18, a5, 5);
  sub_2774F1A4C(a5, v18);
}

int16x4_t sub_2774F8774(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v5 = vsub_s16(*a1, *a3);
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  v8 = vsub_s16(*(a1 + 6 * a2), *(a3 + 6 * a4));
  *a5 = v5;
  a5[1] = v6;
  a5[2] = v7;
  a5[3] = v8;
  v9 = vtrn1_s16(v5, v6);
  v10 = vtrn2_s16(v5, v6);
  v11 = vtrn1_s16(v7, v8);
  v12 = vtrn2_s16(v7, v8);
  v13 = vzip1_s32(v9, v11);
  v14 = vzip2_s32(v9, v11);
  v15 = vzip1_s32(v10, v12);
  v16 = vzip2_s32(v10, v12);
  v17 = vadd_s16(v16, v13);
  v18 = vsub_s16(v13, v16);
  v19 = vadd_s16(v14, v15);
  v20 = vsub_s16(v15, v14);
  v22[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v19, v17), 6uLL), 4uLL));
  v22[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v20, 0x24002400240024), v18, 0x53005300530053), 4uLL));
  v22[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v17, v19), 6uLL), 4uLL));
  v22[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v18, 0x24002400240024), v20, 0x53005300530053), 4uLL));
  return sub_2774F1C40(a5, v22);
}

int16x4_t sub_2774F889C(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = *(a1 + 6 * a2);
  v8 = *(a3 + 6 * a4);
  v9 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v6;
  a5[2] = v9;
  a5[3] = vsub_s16(v7, v8);
  sub_2774F1D8C(v11, a5, 4);
  return sub_2774F1E30(a5, v11);
}

int16x8_t sub_2774F8960(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a3 + 2;
  v7 = a1 + 2;
  do
  {
    result = vsubq_s16(v7[-2], v6[-2]);
    v9 = vsubq_s16(v7[-1], v6[-1]);
    v10 = vsubq_s16(*v7, *v6);
    v11 = (a5 + v5);
    v12 = vsubq_s16(v7[1], v6[1]);
    *v11 = result;
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v5 += 64;
    v6 = (v6 + 2 * a4);
    v7 = (v7 + 2 * a2);
  }

  while (v5 != 2048);
  return result;
}

int16x8_t *sub_2774F89B8(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = -2;
  do
  {
    v8 = vsubq_s16(result[1], a3[1]);
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = vsubq_s16(*(&result[1] + v5), *(&a3[1] + v6));
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
    a5 += 4;
    v7 += 2;
    result = (result + v5 + v5);
    a3 = (a3 + v6 + v6);
  }

  while (v7 < 0xE);
  return result;
}

int16x8_t *sub_2774F8A10(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = (result + v5 + v5);
    v11 = (a3 + v6 + v6);
    v12 = vsubq_s16(*v10, *v11);
    v13 = (v10 + v5);
    v14 = (v11 + v6);
    v15 = vsubq_s16(*v13, *v14);
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v9;
    a5[2] = v12;
    a5[3] = v15;
    a5 += 4;
    result = (v13 + v5);
    a3 = (v14 + v6);
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

int16x4_t sub_2774F8A88(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v5 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v6 = *(a1 + 6 * a2);
  v7 = *(a3 + 6 * a4);
  v8 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v5;
  result = vsub_s16(v6, v7);
  a5[2] = v8;
  a5[3] = result;
  return result;
}

uint64_t sub_2774F8AE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F8B74;
  }

  else
  {
    v4 = sub_2774F8B08;
  }

  return v4();
}

uint16x8_t *sub_2774F8B08(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xF000F000F000F000;
  v5.i64[1] = 0xF000F000F000F000;
  do
  {
    v6 = (a3 + v3);
    v7 = *(a3 + v3);
    v8 = *(a3 + v3 + 16);
    v9 = *(a3 + v3 + 32);
    v10 = *(a3 + v3 + 48);
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    v6[3] = 0uLL;
    v11 = vminq_u16(vsqaddq_u16(v4[-1], v8), v5);
    v12 = vminq_u16(vsqaddq_u16(*v4, v9), v5);
    v13 = vminq_u16(vsqaddq_u16(v4[1], v10), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], v7), v5);
    v4[-1] = v11;
    *v4 = v12;
    v4[1] = v13;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint16x8_t *sub_2774F8B74(uint16x8_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 2;
  v5.i64[0] = 0xF000F000F000F000;
  v5.i64[1] = 0xF000F000F000F000;
  do
  {
    v6 = vminq_u16(vsqaddq_u16(v4[-1], *(a3 + v3 + 16)), v5);
    v7 = vminq_u16(vsqaddq_u16(*v4, *(a3 + v3 + 32)), v5);
    v8 = vminq_u16(vsqaddq_u16(v4[1], *(a3 + v3 + 48)), v5);
    v4[-2] = vminq_u16(vsqaddq_u16(v4[-2], *(a3 + v3)), v5);
    v4[-1] = v6;
    *v4 = v7;
    v4[1] = v8;
    v3 += 64;
    v4 = (v4 + 2 * a2);
  }

  while (v3 != 2048);
  return result;
}

uint64_t sub_2774F8BD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F8C6C;
  }

  else
  {
    v4 = sub_2774F8BFC;
  }

  return v4();
}

uint16x8_t *sub_2774F8BFC(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xF000F000F000F000;
  v5.i64[1] = 0xF000F000F000F000;
  do
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = (result + v3);
    v11 = vminq_u16(vsqaddq_u16(result[1], v7), v5);
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v8), v5);
    v13 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), v9), v5);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v5);
    result[1] = v11;
    *v10 = v12;
    v10[1] = v13;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint16x8_t *sub_2774F8C6C(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 2 * a2;
  v4 = -2;
  v5.i64[0] = 0xF000F000F000F000;
  v5.i64[1] = 0xF000F000F000F000;
  do
  {
    v6 = (result + v3);
    v7 = vminq_u16(vsqaddq_u16(result[1], a3[1]), v5);
    v8 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[2]), v5);
    v9 = vminq_u16(vsqaddq_u16(*(&result[1] + v3), a3[3]), v5);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v5);
    result[1] = v7;
    *v6 = v8;
    v6[1] = v9;
    result = (result + 4 * a2);
    v4 += 2;
    a3 += 4;
  }

  while (v4 < 0xE);
  return result;
}

uint64_t sub_2774F8CD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = sub_2774F8D80;
  }

  else
  {
    v4 = sub_2774F8CF8;
  }

  return v4();
}

uint16x8_t *sub_2774F8CF8(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xF000F000F000F000;
  v4.i64[1] = 0xF000F000F000F000;
  do
  {
    v5 = v3;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *a3 = 0uLL;
    a3[1] = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    v10 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v7), v4);
    v11 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v8), v4);
    v12 = vsqaddq_u16(*(result + 6 * a2), v9);
    *result = vminq_u16(vsqaddq_u16(*result, v6), v4);
    *(result + 2 * a2) = v10;
    *(result + 4 * a2) = v11;
    *(result + 6 * a2) = vminq_u16(v12, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

uint16x8_t *sub_2774F8D80(uint16x8_t *result, uint64_t a2, int16x8_t *a3)
{
  v3 = 1;
  v4.i64[0] = 0xF000F000F000F000;
  v4.i64[1] = 0xF000F000F000F000;
  do
  {
    v5 = v3;
    v6 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), a3[1]), v4);
    v7 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), a3[2]), v4);
    v8 = vsqaddq_u16(*(result + 6 * a2), a3[3]);
    *result = vminq_u16(vsqaddq_u16(*result, *a3), v4);
    *(result + 2 * a2) = v6;
    *(result + 4 * a2) = v7;
    *(result + 6 * a2) = vminq_u16(v8, v4);
    result = (result + 8 * a2);
    a3 += 4;
    v3 = 0;
  }

  while ((v5 & 1) != 0);
  return result;
}

double sub_2774F8DFC(uint64_t *a1, uint64_t a2, int16x8_t *a3, char a4)
{
  v4 = (a1 + 2 * a2);
  v5.i64[0] = *a1;
  v5.i64[1] = *v4;
  v6 = (a1 + 6 * a2);
  v7.i64[0] = *(a1 + 4 * a2);
  v7.i64[1] = *v6;
  v8 = a3[1];
  v9.i64[0] = 0xF000F000F000F000;
  v9.i64[1] = 0xF000F000F000F000;
  v10 = vminq_u16(vsqaddq_u16(v5, *a3), v9);
  *a1 = v10.i64[0];
  *v4 = v10.i64[1];
  v11 = vminq_u16(vsqaddq_u16(v7, v8), v9);
  *(a1 + 4 * a2) = v11.i64[0];
  *v6 = v11.i64[1];
  if ((a4 & 1) == 0)
  {
    v11.i64[0] = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *v11.i64;
}

uint64_t sub_2774F8E54(uint64_t result)
{
  v1 = -16;
  do
  {
    result += 32;
    v1 += 16;
  }

  while (v1 < 0x30);
  return result;
}

int16x8_t sub_2774F8E6C(int16x8_t *a1)
{
  result = vrshrq_n_s16(*a1, 1uLL);
  v2 = vrshrq_n_s16(a1[1], 1uLL);
  *a1 = result;
  a1[1] = v2;
  return result;
}

int16x8_t sub_2774F8E80(int16x8_t *a1)
{
  result = vaddq_s16(*a1, *a1);
  v2 = vaddq_s16(a1[1], a1[1]);
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint16x8_t *sub_2774F8E94(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 5) >> 3);
    a3->i16[0] = 0;
    v10 = result + 2;
    v11 = 32;
    v12.i64[0] = 0xF000F000F000F000;
    v12.i64[1] = 0xF000F000F000F000;
    do
    {
      v13 = vminq_u16(vsqaddq_u16(v10[-1], v9), v12);
      v14 = vminq_u16(vsqaddq_u16(*v10, v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v10[1], v9), v12);
      v10[-2] = vminq_u16(vsqaddq_u16(v10[-2], v9), v12);
      v10[-1] = v13;
      *v10 = v14;
      v10[1] = v15;
      v10 = (v10 + 2 * a2);
      --v11;
    }

    while (v11);
    if (a4)
    {
      v16 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v16 += 16;
      }

      while (v16 < 0x3F0);
    }
  }

  else
  {
    result = sub_2774F9040(a3, a5);
    v17 = 0;
    v18.i64[0] = 0xF000F000F000F000;
    v18.i64[1] = 0xF000F000F000F000;
    do
    {
      v19 = &v8[v17];
      v20 = -4;
      v21 = &v6[v17];
      do
      {
        v22 = *(v19 + 2 * a2);
        v23 = *v19;
        v24 = *(v19 + 4 * a2);
        v25 = *(v19 + 6 * a2);
        v26 = v21[4];
        v27 = v21[8];
        v28 = v21[12];
        v29 = vtrn1q_s16(*v21, v26);
        v30 = vtrn2q_s16(*v21, v26);
        v31 = vtrn1q_s16(v27, v28);
        v32 = vtrn2q_s16(v27, v28);
        v33 = vtrn1q_s32(v29, v31);
        v34 = vtrn2q_s32(v29, v31);
        v35 = vtrn1q_s32(v30, v32);
        v36 = vtrn2q_s32(v30, v32);
        if (a4)
        {
          v37 = -1;
        }

        else
        {
          v37 = 0;
        }

        v38 = vdupq_n_s16(v37);
        *v21 = vandq_s8(v33, v38);
        v21[4] = vandq_s8(v35, v38);
        v21[8] = vandq_s8(v34, v38);
        v21[12] = vandq_s8(v36, v38);
        *v19 = vminq_u16(vsqaddq_u16(v23, v33), v18);
        *(v19 + 2 * a2) = vminq_u16(vsqaddq_u16(v22, v35), v18);
        *(v19 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v18);
        *(v19 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v18);
        v19 = (v19 + 8 * a2);
        v21 += 16;
        v20 += 4;
      }

      while (v20 < 0x1C);
    }

    while (v17++ < 3);
  }

  return result;
}

void *sub_2774F9040(int16x4_t *a1, int a2)
{
  v2 = a1;
  if (a2 <= 16)
  {
    sub_2774EEE18(a1, 0x20u, &unk_27753CC20);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F923C(v2, 0x20u, &unk_27753CC30);
      v8 += 4;
      v2 += 32;
    }

    while (v8 < 0x1C);
    return result;
  }

  if (a2 > 0x30)
  {
    if (a2 >= 0xA1)
    {
      v6 = -4;
      v7 = a1;
      do
      {
        sub_2774EF29C(v7);
        v6 += 4;
        ++v7;
      }

      while (v6 < 0x1C);
    }

    else
    {
      v4 = -4;
      v5 = a1;
      do
      {
        sub_2774EF08C(v5, 0x20u, &unk_27753CC60, aZwpf, aZzxurnic6);
        v4 += 4;
        ++v5;
      }

      while (v4 < 0xC);
    }
  }

  else
  {
    sub_2774EEEDC(a1, 0x20u, &unk_27753CC40, aZzxu);
    sub_2774EEEDC(v2 + 1, 0x20u, &unk_27753CC40, aZzxu);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 > 0x50)
  {
    if (a2 >= 0xE1)
    {
      v12 = -4;
      do
      {
        result = sub_2774F96B4(v2);
        v12 += 4;
        v2 += 32;
      }

      while (v12 < 0x1C);
    }

    else
    {
      v11 = -4;
      do
      {
        result = sub_2774F94B0(v2, 0x20u, &unk_27753CC70, aZwpf, aZzxurnic6);
        v11 += 4;
        v2 += 32;
      }

      while (v11 < 0x1C);
    }
  }

  else
  {
    v10 = -4;
    do
    {
      result = sub_2774F931C(v2, 0x20u, &unk_27753CC50, aZzxu);
      v10 += 4;
      v2 += 32;
    }

    while (v10 < 0x1C);
  }

  return result;
}

int16x4_t *sub_2774F923C(int16x4_t *result, unsigned int a2, uint64_t a3)
{
  v3 = a2 - 1;
  v4 = (&unk_27753CA30 + 4 * a2);
  v5 = *(result + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 6 * a2);
  v8 = vtrn1_s16(*result, v5);
  v9 = vtrn1_s16(v6, v7);
  v10 = vshll_n_s16(vzip1_s32(v8, v9), 6uLL);
  v11 = a2 >> 2;
  v12 = vtrn2_s16(*result, v5);
  v13 = vtrn2_s16(v6, v7);
  v14 = vzip2_s32(v12, v13);
  v15 = vzip1_s32(v12, v13);
  v16 = vzip2_s32(v8, v9);
  v17 = (a3 + 1);
  do
  {
    v18 = *v4++;
    v19 = vmlal_laneq_s16(v10, v16, v18, 4);
    v20 = vmlsl_laneq_s16(v10, v16, v18, 4);
    v21 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 1), v15, *v18.i8, 0);
    v22 = vmlal_lane_s16(vmull_lane_s16(v14, *v18.i8, 3), v15, *v18.i8, 2);
    v23 = *(v17 - 1);
    v18.i32[0] = *v17;
    v17 += 2;
    result[v23] = vqrshrn_n_s32(vaddq_s32(v21, v19), 8uLL);
    result[v18.u32[0]] = vqrshrn_n_s32(vaddq_s32(v22, v20), 8uLL);
    *(result + 2 * (4 * (v3 - v23))) = vqrshrn_n_s32(vsubq_s32(v19, v21), 8uLL);
    *(result + 2 * (4 * (v3 - v18.i32[0]))) = vqrshrn_n_s32(vsubq_s32(v20, v22), 8uLL);
    --v11;
  }

  while (v11);
  return result;
}

int16x8_t *sub_2774F931C(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4)
{
  v4 = a2 - 1;
  v5 = (&unk_27753CA30 + 2 * a2);
  v6 = *(result + 4 * a2);
  v7 = *(result + 2 * a2);
  v8 = *(result + 6 * a2);
  v9 = vtrn1q_s16(*result, v7);
  v10 = vtrn2q_s16(*result, v7);
  v11 = vtrn1q_s16(v6, v8);
  v12 = vtrn2q_s16(v6, v8);
  v13 = vtrn1q_s32(v9, v11);
  v14 = vtrn2q_s32(v9, v11);
  v15 = vtrn1q_s32(v10, v12);
  v16 = vtrn2q_s32(v10, v12);
  v17 = vshll_n_s16(*v13.i8, 6uLL);
  v18 = a2 >> 3;
  v19 = (a3 + 3);
  do
  {
    v20 = *v5++;
    v21 = vmlal_high_laneq_s16(v17, v13, v20, 4);
    v22 = vmlsl_high_laneq_s16(v17, v13, v20, 4);
    v23 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 0), v14, *v20.i8, 1);
    v24 = vmlal_high_lane_s16(vmull_lane_s16(*v14.i8, *v20.i8, 2), v14, *v20.i8, 3);
    v25 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *a4, 1), *v15.i8, *a4, 0), v15, *a4, 2), v16, *a4, 3);
    v26 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[1], 1), *v15.i8, a4[1], 0), v15, a4[1], 2), v16, a4[1], 3);
    v27 = a4[3];
    v28 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, a4[2], 1), *v15.i8, a4[2], 0), v15, a4[2], 2), v16, a4[2], 3);
    v29 = vaddq_s32(v23, v21);
    v30 = vsubq_s32(v21, v23);
    v31 = *(v19 - 3);
    v32 = *(v19 - 2);
    v33 = *(v19 - 1);
    v20.i32[0] = *v19;
    v19 += 4;
    *&result->i8[8 * v31] = vqrshrn_n_s32(vaddq_s32(v25, v29), 8uLL);
    v34 = vaddq_s32(v24, v22);
    v35 = vsubq_s32(v22, v24);
    *&result->i8[8 * v32] = vqrshrn_n_s32(vaddq_s32(v26, v30), 8uLL);
    v36 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v16.i8, v27, 1), *v15.i8, v27, 0), v15, v27, 2), v16, v27, 3);
    *&result->i8[8 * v33] = vqrshrn_n_s32(vaddq_s32(v28, v34), 8uLL);
    *&result->i8[8 * v20.u32[0]] = vqrshrn_n_s32(vaddq_s32(v36, v35), 8uLL);
    *&result->i8[8 * (v4 - v31)] = vqrshrn_n_s32(vsubq_s32(v29, v25), 8uLL);
    *&result->i8[8 * (v4 - v32)] = vqrshrn_n_s32(vsubq_s32(v30, v26), 8uLL);
    *&result->i8[8 * (v4 - v33)] = vqrshrn_n_s32(vsubq_s32(v34, v28), 8uLL);
    *&result->i8[8 * (v4 - v20.i32[0])] = vqrshrn_n_s32(vsubq_s32(v35, v36), 8uLL);
    a4 += 4;
    --v18;
  }

  while (v18);
  return result;
}

int16x8_t *sub_2774F94B0(int16x8_t *result, unsigned int a2, uint64_t a3, int16x4_t *a4, int16x4_t *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = (result + 2 * a2);
  v6 = (result + 4 * a2);
  v7 = (result + 6 * a2);
  v8 = result[1];
  v9 = v5[1];
  v10 = v6[1];
  v11 = v7[1];
  v12 = vtrn1q_s16(*result, *v5);
  v13 = vtrn2q_s16(*result, *v5);
  v14 = vtrn1q_s16(*v6, *v7);
  v15 = vtrn2q_s16(*v6, *v7);
  v16 = vtrn1q_s32(v12, v14);
  v17 = vtrn2q_s32(v12, v14);
  v18 = vtrn1q_s32(v13, v15);
  v19 = vtrn2q_s32(v13, v15);
  v20 = vtrn1q_s16(v8, v9);
  v21 = vtrn2q_s16(v8, v9);
  v22 = vtrn1q_s16(v10, v11);
  v23 = vtrn2q_s16(v10, v11);
  v24 = vtrn1q_s32(v20, v22);
  v25 = vtrn2q_s32(v20, v22);
  v26 = vtrn1q_s32(v21, v23);
  v27 = vtrn2q_s32(v21, v23);
  v28 = a2 >> 1;
  v29 = (&unk_27753CA30 + 2 * v28);
  v30 = vshll_n_s16(*v16.i8, 6uLL);
  v31 = a2 >> 4;
  v32 = v51;
  do
  {
    v33 = *v29++;
    v34 = vmlal_laneq_s16(v30, *v24.i8, v33, 4);
    v35 = vmlsl_laneq_s16(v30, *v24.i8, v33, 4);
    v36 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 1), v16, *v33.i8, 0);
    v37 = vmlal_high_lane_s16(vmull_high_lane_s16(v24, *v33.i8, 3), v16, *v33.i8, 2);
    v38 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, *a4, 0), v17, *a4, 1), *v25.i8, *a4, 2), v25, *a4, 3);
    v39 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[1], 0), v17, a4[1], 1), *v25.i8, a4[1], 2), v25, a4[1], 3);
    v40 = a4[3];
    v41 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, a4[2], 0), v17, a4[2], 1), *v25.i8, a4[2], 2), v25, a4[2], 3);
    v42 = vaddq_s32(v36, v34);
    v43 = vsubq_s32(v34, v36);
    v44 = vaddq_s32(v37, v35);
    v45 = vsubq_s32(v35, v37);
    *v32 = vaddq_s32(v38, v42);
    v32[1] = vaddq_s32(v39, v43);
    v46 = vmlal_high_lane_s16(vmlal_lane_s16(vmlal_high_lane_s16(vmull_lane_s16(*v17.i8, v40, 0), v17, v40, 1), *v25.i8, v40, 2), v25, v40, 3);
    v32[2] = vaddq_s32(v41, v44);
    v32[3] = vaddq_s32(v46, v45);
    v32[4] = vsubq_s32(v42, v38);
    v32[5] = vsubq_s32(v43, v39);
    v32[6] = vsubq_s32(v44, v41);
    v32[7] = vsubq_s32(v45, v46);
    v32 += 8;
    a4 += 4;
    --v31;
  }

  while (v31);
  v47 = 0;
  do
  {
    v48 = v51[v47];
    v49 = vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v19.i8, *a5, 1), *v18.i8, *a5, 0), v18, *a5, 2), v19, *a5, 3), *v26.i8, *a5->i8, 4), *v27.i8, *a5->i8, 5), v26, *a5->i8, 6), v27, *a5->i8, 7);
    v50 = 4 * (~*(a3 + v47) + a2);
    *&result->i8[8 * *(a3 + v47)] = vqrshrn_n_s32(vaddq_s32(v49, v48), 8uLL);
    *&result->i8[2 * v50] = vqrshrn_n_s32(vsubq_s32(v48, v49), 8uLL);
    ++v47;
    a5 = (a5 + 2 * v28);
  }

  while (v28 != v47);
  return result;
}

int16x4_t *sub_2774F96B4(int16x4_t *result)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = &result[16];
  v2 = -8;
  do
  {
    v3 = v1[-8];
    v4 = v1[-4];
    v5 = v1[4];
    v6 = vtrn1q_s16(v3, v4);
    v7 = vtrn2q_s16(v3, v4);
    v8 = vtrn1q_s16(*v1, v5);
    v9 = vtrn2q_s16(*v1, v5);
    v1[-8] = vtrn1q_s32(v6, v8);
    v1[-4] = vtrn1q_s32(v7, v9);
    *v1 = vtrn2q_s32(v6, v8);
    v1[4] = vtrn2q_s32(v7, v9);
    v2 += 8;
    ++v1;
  }

  while (v2 < 0x18);
  v10 = 0;
  v11 = result[1];
  v12 = result[2];
  v13 = result[3];
  v15 = result[4];
  v14 = result[5];
  v17 = result[6];
  v16 = result[7];
  v18 = vshll_n_s16(*result, 6uLL);
  v19 = vmlal_s16(v18, v15, 0x40004000400040);
  v20 = vmlsl_s16(v18, v15, 0x40004000400040);
  v21 = vmlal_s16(vmull_s16(v17, 0x24002400240024), v12, 0x53005300530053);
  v22 = vmlal_s16(vmull_s16(v17, 0x52005200520052), v12, 0x24002400240024);
  v23 = vaddq_s32(v21, v19);
  v24 = vsubq_s32(v19, v21);
  v25 = vaddq_s32(v22, v20);
  v26 = vsubq_s32(v20, v22);
  v27 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x4B004B004B004BLL), v11, 0x59005900590059), v14, 0x32003200320032), v16, 0x12001200120012);
  v28 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x31003100310031), v11, 0x12001200120012), v14, 0x4B004B004B004BLL), v16, 0x58005800580058);
  v29 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x11001100110011), v11, 0x4B004B004B004BLL), v14, 0x58005800580058), v16, 0x31003100310031);
  v66[0] = vaddq_s32(v27, v23);
  v66[1] = vaddq_s32(v28, v24);
  v30 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v13, 0x58005800580058), v11, 0x32003200320032), v14, 0x12001200120012), v16, 0x4B004B004B004BLL);
  v66[2] = vaddq_s32(v29, v25);
  v66[3] = vaddq_s32(v30, v26);
  v66[4] = vsubq_s32(v23, v27);
  v66[5] = vsubq_s32(v24, v28);
  v66[6] = vsubq_s32(v25, v29);
  v66[7] = vsubq_s32(v26, v30);
  v31 = result[16];
  v32 = result[17];
  v33 = result[18];
  v34 = result[19];
  v35 = result[20];
  v36 = result[21];
  v37 = result[22];
  v38 = result[23];
  do
  {
    v39 = &v66[v10 / 8];
    v40 = v66[v10 / 8];
    v41 = *&aZwpf9[v10];
    v42 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v32, *v41.i8, 1), v31, *v41.i8, 0), v33, *v41.i8, 2), v34, *v41.i8, 3), v35, v41, 4), v36, v41, 5), v37, v41, 6), v38, v41, 7);
    *v39 = vaddq_s32(v42, v40);
    v39[8] = vsubq_s32(v40, v42);
    v10 += 8;
  }

  while (v10 != 64);
  v43 = 0;
  v44 = result[8];
  v45 = result[9];
  v46 = result[24];
  v47 = result[25];
  v48 = result[10];
  v49 = result[11];
  v50 = result[26];
  v51 = result[27];
  v52 = result[12];
  v53 = result[13];
  v54 = result[28];
  v55 = result[29];
  v56 = aZzxurnic6;
  v57 = result[14];
  v58 = result[15];
  v59 = result[30];
  v60 = result[31];
  do
  {
    v62 = *v56;
    v61 = *(v56 + 1);
    v56 += 16;
    v63 = v66[byte_27753CF00[v43]];
    v64 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v46, *v62.i8, 1), v44, *v62.i8, 0), v45, *v62.i8, 2), v47, *v62.i8, 3), v48, v62, 4), v50, v62, 5), v49, v62, 6), v51, v62, 7), v52, *v61.i8, 0), v54, *v61.i8, 1), v53, *v61.i8, 2), v55, *v61.i8, 3), v57, v61, 4), v59, v61, 5), v58, v61, 6), v60, v61, 7);
    v65 = 124 - 4 * *(&unk_27753CC20 + v43 + 80);
    result[*(&unk_27753CC20 + v43 + 80)] = vqrshrn_n_s32(vaddq_s32(v64, v63), 8uLL);
    *(result + 2 * v65) = vqrshrn_n_s32(vsubq_s32(v63, v64), 8uLL);
    ++v43;
  }

  while (v43 != 16);
  return result;
}

int16x4_t *sub_2774F996C(int16x4_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 5) >> 3);
    a3->i16[0] = 0;
    v10 = 2 * a2;
    v11 = -2;
    v12.i64[0] = 0xF000F000F000F000;
    v12.i64[1] = 0xF000F000F000F000;
    do
    {
      v13 = (v8 + v10);
      v14 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), v9), v12);
      v15 = vminq_u16(vsqaddq_u16(v8[1], v9), v12);
      v16 = vminq_u16(vsqaddq_u16(*(&v8[1] + v10), v9), v12);
      *v8 = vminq_u16(vsqaddq_u16(*v8, v9), v12);
      *v13 = v14;
      v8[1] = v15;
      v13[1] = v16;
      v8 = (v8 + 4 * a2);
      v11 += 2;
    }

    while (v11 < 0xE);
    if (a4)
    {
      v17 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v17 += 16;
      }

      while (v17 < 0xF0);
    }
  }

  else
  {
    result = sub_2774F9B2C(a3, a5);
    v18 = 0;
    v19 = 1;
    v20.i64[0] = 0xF000F000F000F000;
    v20.i64[1] = 0xF000F000F000F000;
    do
    {
      v21 = v19;
      v22 = &v8[v18];
      v23 = -4;
      v24 = &v6[v18];
      do
      {
        v25 = *(v22 + 2 * a2);
        v26 = *v22;
        v27 = *(v22 + 4 * a2);
        v28 = *(v22 + 6 * a2);
        v29 = v24[2];
        v30 = v24[4];
        v31 = v24[6];
        v32 = vtrn1q_s16(*v24, v29);
        v33 = vtrn2q_s16(*v24, v29);
        v34 = vtrn1q_s16(v30, v31);
        v35 = vtrn2q_s16(v30, v31);
        v36 = vtrn1q_s32(v32, v34);
        v37 = vtrn2q_s32(v32, v34);
        v38 = vtrn1q_s32(v33, v35);
        v39 = vtrn2q_s32(v33, v35);
        if (a4)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        v41 = vdupq_n_s16(v40);
        *v24 = vandq_s8(v36, v41);
        v24[2] = vandq_s8(v38, v41);
        v24[4] = vandq_s8(v37, v41);
        v24[6] = vandq_s8(v39, v41);
        *v22 = vminq_u16(vsqaddq_u16(v26, v36), v20);
        *(v22 + 2 * a2) = vminq_u16(vsqaddq_u16(v25, v38), v20);
        *(v22 + 4 * a2) = vminq_u16(vsqaddq_u16(v27, v37), v20);
        *(v22 + 6 * a2) = vminq_u16(vsqaddq_u16(v28, v39), v20);
        v22 = (v22 + 8 * a2);
        v24 += 8;
        v23 += 4;
      }

      while (v23 < 0xC);
      v19 = 0;
      v18 = 1;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F9B2C(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 5) >> 3);
    v4 = -32;
    do
    {
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 += 32;
    }

    while (v4 < 0xE0);
    return result;
  }

  if (a2 <= 16)
  {
    sub_2774EEE18(result, 0x10u, &unk_27753CB30);
LABEL_12:
    v8 = -4;
    do
    {
      result = sub_2774F923C(v2, 0x10u, &unk_27753CC10);
      v8 += 4;
      v2 += 16;
    }

    while (v8 < 0xC);
    return result;
  }

  if (a2 >= 0x31)
  {
    v6 = -4;
    v7 = result;
    do
    {
      sub_2774EF08C(v7, 0x10u, &unk_27753CB80, aYk2, aZwpf9);
      v6 += 4;
      ++v7;
    }

    while (v6 < 0xC);
  }

  else
  {
    sub_2774EEEDC(result, 0x10u, &unk_27753CB30, aZwpf);
    sub_2774EEEDC(v2 + 1, 0x10u, &unk_27753CB30, aZwpf);
  }

  if (a2 <= 32)
  {
    goto LABEL_12;
  }

  if (a2 >= 0x51)
  {
    v10 = -4;
    do
    {
      result = sub_2774F94B0(v2, 0x10u, &unk_27753CC18, aYk2, aZwpf9);
      v10 += 4;
      v2 += 16;
    }

    while (v10 < 0xC);
  }

  else
  {
    v9 = -4;
    do
    {
      result = sub_2774F931C(v2, 0x10u, &unk_27753CC10, aZwpf);
      v9 += 4;
      v2 += 16;
    }

    while (v9 < 0xC);
  }

  return result;
}

uint16x8_t *sub_2774F9D0C(uint16x8_t *result, uint64_t a2, int16x4_t *a3, int a4, int a5)
{
  v6 = a3;
  v8 = result;
  if (a5 == 1)
  {
    v9 = vdupq_n_s16((a3->i16[0] + 5) >> 3);
    a3->i16[0] = 0;
    v10 = *(result + 14 * a2);
    v11.i64[0] = 0xF000F000F000F000;
    v11.i64[1] = 0xF000F000F000F000;
    v12 = vminq_u16(vsqaddq_u16(*(result + 2 * a2), v9), v11);
    v13 = vminq_u16(vsqaddq_u16(*(result + 4 * a2), v9), v11);
    v14 = vminq_u16(vsqaddq_u16(*(result + 6 * a2), v9), v11);
    v15 = vminq_u16(vsqaddq_u16(*(result + 8 * a2), v9), v11);
    v16 = vminq_u16(vsqaddq_u16(*(result + 10 * a2), v9), v11);
    v17 = vminq_u16(vsqaddq_u16(*(result + 12 * a2), v9), v11);
    *result = vminq_u16(vsqaddq_u16(*result, v9), v11);
    *(result + 2 * a2) = v12;
    *(result + 4 * a2) = v13;
    *(result + 6 * a2) = v14;
    *(result + 8 * a2) = v15;
    *(result + 10 * a2) = v16;
    *(result + 12 * a2) = v17;
    *(result + 14 * a2) = vminq_u16(vsqaddq_u16(v10, v9), v11);
    if (a4)
    {
      v18 = -16;
      do
      {
        *v6 = v9;
        v6[1] = v9;
        v6 += 2;
        v18 += 16;
      }

      while (v18 < 0x30);
    }
  }

  else
  {
    result = sub_2774F9EF0(a3, a5);
    v19 = 1;
    v20.i64[0] = 0xF000F000F000F000;
    v20.i64[1] = 0xF000F000F000F000;
    do
    {
      v21 = v19;
      v22 = *v8;
      v23 = *(v8 + 2 * a2);
      v24 = *(v8 + 4 * a2);
      v25 = *(v8 + 6 * a2);
      v26 = v6[1];
      v27 = v6[2];
      v28 = v6[3];
      v29 = vtrn1q_s16(*v6, v26);
      v30 = vtrn2q_s16(*v6, v26);
      v31 = vtrn1q_s16(v27, v28);
      v32 = vtrn2q_s16(v27, v28);
      v33 = vtrn1q_s32(v29, v31);
      v34 = vtrn2q_s32(v29, v31);
      v35 = vtrn1q_s32(v30, v32);
      v36 = vtrn2q_s32(v30, v32);
      if (a4)
      {
        v37 = -1;
      }

      else
      {
        v37 = 0;
      }

      v38 = vdupq_n_s16(v37);
      *v6 = vandq_s8(v33, v38);
      v6[1] = vandq_s8(v35, v38);
      v6[2] = vandq_s8(v34, v38);
      v6[3] = vandq_s8(v36, v38);
      *v8 = vminq_u16(vsqaddq_u16(v22, v33), v20);
      *(v8 + 2 * a2) = vminq_u16(vsqaddq_u16(v23, v35), v20);
      *(v8 + 4 * a2) = vminq_u16(vsqaddq_u16(v24, v34), v20);
      *(v8 + 6 * a2) = vminq_u16(vsqaddq_u16(v25, v36), v20);
      v8 = (v8 + 8 * a2);
      v6 += 4;
      v19 = 0;
    }

    while ((v21 & 1) != 0);
  }

  return result;
}

int16x4_t *sub_2774F9EF0(int16x4_t *result, int a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = vdupq_n_s16((result->i16[0] + 5) >> 3);
    v4 = 1;
    do
    {
      v5 = v4;
      *v2->i8 = v3;
      *v2[2].i8 = v3;
      *v2[4].i8 = v3;
      *v2[6].i8 = v3;
      v2 += 8;
      v4 = 0;
    }

    while ((v5 & 1) != 0);
  }

  else if (a2 > 16)
  {
    sub_2774EEEDC(result, 8u, &unk_27753CA00, aYk2);
    sub_2774EEEDC(v2 + 1, 8u, &unk_27753CA00, aYk2);
    sub_2774F931C(v2, 8u, &unk_27753CA00, aYk2);

    return sub_2774F931C(&v2[8], 8u, &unk_27753CA00, aYk2);
  }

  else
  {
    sub_2774EEE18(result, 8u, &unk_27753CA00);
    sub_2774F923C(v2, 8u, &unk_27753CA00);

    return sub_2774F923C(v2 + 8, 8u, &unk_27753CA00);
  }

  return result;
}

void sub_2774FA01C(uint64_t *a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v5 = a4;
  if (a5 != 1)
  {
    sub_2774FA118(a3, a5);
    v17 = (a1 + 2 * a2);
    v18.i64[0] = *a1;
    v18.i64[1] = *v17;
    v19 = (a1 + 6 * a2);
    v20.i64[0] = *(a1 + 4 * a2);
    v20.i64[1] = *v19;
    v21.i64[0] = 0xF000F000F000F000;
    v21.i64[1] = 0xF000F000F000F000;
    v22 = vminq_u16(vsqaddq_u16(v18, *a3), v21);
    v23 = vminq_u16(vsqaddq_u16(v20, a3[1]), v21);
    *a1 = v22.i64[0];
    *v17 = v22.i64[1];
    *(a1 + 4 * a2) = v23.i64[0];
    *v19 = v23.i64[1];
    if (v5)
    {
      return;
    }

    v9 = 0uLL;
    goto LABEL_6;
  }

  v9 = vdupq_n_s16((a3->i16[0] + 5) >> 3);
  a3->i16[0] = 0;
  v10 = (a1 + 2 * a2);
  v11.i64[0] = *a1;
  v11.i64[1] = *v10;
  v12 = (a1 + 6 * a2);
  v13.i64[0] = *(a1 + 4 * a2);
  v13.i64[1] = *v12;
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = vminq_u16(vsqaddq_u16(v11, v9), v14);
  v16 = vminq_u16(vsqaddq_u16(v13, v9), v14);
  *a1 = v15.i64[0];
  *v10 = v15.i64[1];
  *(a1 + 4 * a2) = v16.i64[0];
  *v12 = v16.i64[1];
  if (a4)
  {
LABEL_6:
    *a3 = v9;
    a3[1] = v9;
  }
}

int32x4_t sub_2774FA118(int32x4_t *a1, int a2)
{
  if (a2 == 1)
  {
    result = vdupq_n_s16((a1->i16[0] + 5) >> 3);
    *a1 = result;
    a1[1] = result;
  }

  else
  {
    v3 = a1->u64[1];
    v4 = *a1[1].i8;
    v5 = a1[1].u64[1];
    v6 = vsubl_s16(*a1->i8, v4);
    v7 = vshlq_n_s32(vaddl_s16(v4, *a1->i8), 6uLL);
    v8 = vshlq_n_s32(v6, 6uLL);
    v9 = vmlal_s16(vmull_s16(v5, 0x24002400240024), v3, 0x53005300530053);
    v10 = vmlsl_s16(vmull_s16(v3, 0x24002400240024), v5, 0x53005300530053);
    v11 = vqrshrn_n_s32(vaddq_s32(v9, v7), 7uLL);
    *v7.i8 = vqrshrn_n_s32(vsubq_s32(v7, v9), 7uLL);
    v12 = vqrshrn_n_s32(vaddq_s32(v10, v8), 7uLL);
    *v8.i8 = vqrshrn_n_s32(vsubq_s32(v8, v10), 7uLL);
    *v10.i8 = vtrn1_s16(v11, v12);
    v13 = vtrn2_s16(v11, v12);
    v14 = vtrn1_s16(*v8.i8, *v7.i8);
    *v8.i8 = vtrn2_s16(*v8.i8, *v7.i8);
    *v7.i8 = vzip1_s32(*v10.i8, v14);
    v15 = vzip2_s32(*v10.i8, v14);
    *v10.i8 = vzip1_s32(v13, *v8.i8);
    *v8.i8 = vzip2_s32(v13, *v8.i8);
    v16 = vshlq_n_s32(vaddl_s16(*v7.i8, v15), 6uLL);
    v17 = vshlq_n_s32(vsubl_s16(*v7.i8, v15), 6uLL);
    v18 = vmlal_s16(vmull_s16(*v8.i8, 0x24002400240024), *v10.i8, 0x53005300530053);
    v19 = vmlsl_s16(vmull_s16(*v10.i8, 0x24002400240024), *v8.i8, 0x53005300530053);
    result = vaddq_s32(v16, v18);
    v20.val[0] = vqrshrn_n_s32(result, 8uLL);
    v20.val[3] = vqrshrn_n_s32(vsubq_s32(v16, v18), 8uLL);
    v20.val[1] = vqrshrn_n_s32(vaddq_s32(v17, v19), 8uLL);
    v20.val[2] = vqrshrn_n_s32(vsubq_s32(v17, v19), 8uLL);
    vst4_s16(a1->i16, v20);
  }

  return result;
}

double sub_2774FA1F0(uint64_t *a1, uint64_t a2, int16x4_t *a3, char a4)
{
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = vaddl_s16(v5, *a3);
  v8 = vaddl_s16(v6, v5);
  v9 = vsubl_s16(*a3, v6);
  v10.i64[0] = 0x1D0000001DLL;
  v10.i64[1] = 0x1D0000001DLL;
  v11.i64[0] = 0x3700000037;
  v11.i64[1] = 0x3700000037;
  v12 = vmlaq_s32(vmlal_s16(vmulq_s32(v7, v10), v4, 0x4A004A004A004ALL), v8, v11);
  v13 = vmlaq_s32(vmlsl_s16(vmulq_s32(v7, v11), v4, 0x4A004A004A004ALL), v9, v10);
  v14.i64[0] = 0x1C0000001CLL;
  v14.i64[1] = 0x1C0000001CLL;
  v15 = vmlaq_s32(vmlal_s16(vmulq_s32(v9, v11), v4, 0x4A004A004A004ALL), v8, v14);
  v16.i64[0] = 0x4A0000004ALL;
  v16.i64[1] = 0x4A0000004ALL;
  v17 = vmulq_s32(vaddw_s16(vsubl_s16(*a3, v5), v6), v16);
  v18 = vqrshrn_n_s32(v12, 7uLL);
  v19 = vqrshrn_n_s32(v15, 7uLL);
  *v17.i8 = vqrshrn_n_s32(v17, 7uLL);
  *v13.i8 = vqrshrn_n_s32(v13, 7uLL);
  *v8.i8 = vtrn1_s16(v18, v19);
  v20 = vtrn2_s16(v18, v19);
  v21 = vtrn1_s16(*v17.i8, *v13.i8);
  *v17.i8 = vtrn2_s16(*v17.i8, *v13.i8);
  *v13.i8 = vzip1_s32(*v8.i8, v21);
  v22 = vzip2_s32(*v8.i8, v21);
  *v8.i8 = vzip1_s32(v20, *v17.i8);
  *v17.i8 = vzip2_s32(v20, *v17.i8);
  v23 = vaddl_s16(*v13.i8, v22);
  v24 = vaddl_s16(v22, *v17.i8);
  v25 = vsubl_s16(*v13.i8, *v17.i8);
  v26 = vmlaq_s32(vmlal_s16(vmulq_s32(v24, v11), *v8.i8, 0x4A004A004A004ALL), v23, v10);
  v27 = vmlaq_s32(vmlsl_s16(vmulq_s32(v25, v10), *v8.i8, 0x4A004A004A004ALL), v23, v11);
  v28 = vmulq_s32(vaddw_s16(vsubl_s16(*v13.i8, v22), *v17.i8), v16);
  v29 = vqrshrn_n_s32(v26, 8uLL);
  *v13.i8 = vqrshrn_n_s32(vmlaq_s32(vmlal_s16(vmulq_s32(v25, v11), *v8.i8, 0x4A004A004A004ALL), v24, v14), 8uLL);
  *v8.i8 = vqrshrn_n_s32(v28, 8uLL);
  *v24.i8 = vqrshrn_n_s32(v27, 8uLL);
  vst4_s16(a3, *(&v8 - 1));
  v30 = (a1 + 2 * a2);
  v28.i64[0] = *a1;
  v28.i64[1] = *v30;
  v31 = (a1 + 6 * a2);
  v16.i64[0] = *(a1 + 4 * a2);
  v16.i64[1] = *v31;
  v32 = *a3[2].i8;
  v23.i64[0] = 0xF000F000F000F000;
  v23.i64[1] = 0xF000F000F000F000;
  v33 = vminq_u16(vsqaddq_u16(v28, *a3->i8), v23);
  *a1 = v33.i64[0];
  *v30 = v33.i64[1];
  v34 = vminq_u16(vsqaddq_u16(v16, v32), v23);
  *(a1 + 4 * a2) = v34.i64[0];
  *v31 = v34.i64[1];
  if ((a4 & 1) == 0)
  {
    v34.i64[0] = 0;
    *a3->i8 = 0u;
    *a3[2].i8 = 0u;
  }

  return *v34.i64;
}

void sub_2774FA320(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v6 = 0;
  v13[257] = *MEMORY[0x277D85DE8];
  v7 = a3 + 2;
  v8 = a1 + 2;
  do
  {
    v9 = vsubq_s16(v8[-1], v7[-1]);
    v10 = vsubq_s16(*v8, *v7);
    v11 = &a5[v6];
    v12 = vsubq_s16(v8[1], v7[1]);
    *v11 = vsubq_s16(v8[-2], v7[-2]);
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v6 += 8;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while ((v6 * 8) != 2048);
  sub_2774F077C(v13, a5, 8);
  sub_2774F09B8(a5, v13);
}

void sub_2774FA3E4(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v13[65] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = -2;
  v9 = a5;
  do
  {
    v10 = vsubq_s16(a1[1], a3[1]);
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = vsubq_s16(*(&a1[1] + v6), *(&a3[1] + v7));
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v10;
    v9[2] = v11;
    v9[3] = v12;
    v9 += 4;
    v8 += 2;
    a1 = (a1 + v6 + v6);
    a3 = (a3 + v7 + v7);
  }

  while (v8 < 0xE);
  sub_2774F15E8(v13, a5, 7);
  sub_2774F1738(a5, v13);
}

void sub_2774FA4AC(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x4_t *a5)
{
  v18[17] = *MEMORY[0x277D85DE8];
  v6 = 2 * a2;
  v7 = 2 * a4;
  v8 = 1;
  v9 = a5;
  do
  {
    v10 = v8;
    v11 = vsubq_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v12 = (a1 + v6 + v6);
    v13 = (a3 + v7 + v7);
    v14 = vsubq_s16(*v12, *v13);
    v15 = (v12 + v6);
    v16 = (v13 + v7);
    v17 = vsubq_s16(*v15, *v16);
    *v9 = vsubq_s16(*a1, *a3);
    v9[1] = v11;
    v9[2] = v14;
    v9[3] = v17;
    v9 += 4;
    a1 = (v15 + v6);
    a3 = (v16 + v7);
    v8 = 0;
  }

  while ((v10 & 1) != 0);
  sub_2774F19A4(v18, a5, 6);
  sub_2774F1A4C(a5, v18);
}

int16x4_t sub_2774FA594(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v5 = vsub_s16(*a1, *a3);
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  v8 = vsub_s16(*(a1 + 6 * a2), *(a3 + 6 * a4));
  *a5 = v5;
  a5[1] = v6;
  a5[2] = v7;
  a5[3] = v8;
  v9 = vtrn1_s16(v5, v6);
  v10 = vtrn2_s16(v5, v6);
  v11 = vtrn1_s16(v7, v8);
  v12 = vtrn2_s16(v7, v8);
  v13 = vzip1_s32(v9, v11);
  v14 = vzip2_s32(v9, v11);
  v15 = vzip1_s32(v10, v12);
  v16 = vzip2_s32(v10, v12);
  v17 = vadd_s16(v16, v13);
  v18 = vsub_s16(v13, v16);
  v19 = vadd_s16(v14, v15);
  v20 = vsub_s16(v15, v14);
  v22[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v19, v17), 6uLL), 5uLL));
  v22[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v20, 0x24002400240024), v18, 0x53005300530053), 5uLL));
  v22[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v17, v19), 6uLL), 5uLL));
  v22[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v18, 0x24002400240024), v20, 0x53005300530053), 5uLL));
  return sub_2774F1C40(a5, v22);
}

int16x4_t sub_2774FA6BC(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v6 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v7 = *(a1 + 6 * a2);
  v8 = *(a3 + 6 * a4);
  v9 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v6;
  a5[2] = v9;
  a5[3] = vsub_s16(v7, v8);
  sub_2774F1D8C(v11, a5, 5);
  return sub_2774F1E30(a5, v11);
}

int16x8_t sub_2774FA780(int16x8_t *a1, uint64_t a2, int16x8_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a3 + 2;
  v7 = a1 + 2;
  do
  {
    result = vsubq_s16(v7[-2], v6[-2]);
    v9 = vsubq_s16(v7[-1], v6[-1]);
    v10 = vsubq_s16(*v7, *v6);
    v11 = (a5 + v5);
    v12 = vsubq_s16(v7[1], v6[1]);
    *v11 = result;
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = v12;
    v5 += 64;
    v6 = (v6 + 2 * a4);
    v7 = (v7 + 2 * a2);
  }

  while (v5 != 2048);
  return result;
}

int16x8_t *sub_2774FA7D8(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = -2;
  do
  {
    v8 = vsubq_s16(result[1], a3[1]);
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = vsubq_s16(*(&result[1] + v5), *(&a3[1] + v6));
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v8;
    a5[2] = v9;
    a5[3] = v10;
    a5 += 4;
    v7 += 2;
    result = (result + v5 + v5);
    a3 = (a3 + v6 + v6);
  }

  while (v7 < 0xE);
  return result;
}

int16x8_t *sub_2774FA830(int16x8_t *result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5)
{
  v5 = 2 * a2;
  v6 = 2 * a4;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = vsubq_s16(*(result + 2 * a2), *(a3 + 2 * a4));
    v10 = (result + v5 + v5);
    v11 = (a3 + v6 + v6);
    v12 = vsubq_s16(*v10, *v11);
    v13 = (v10 + v5);
    v14 = (v11 + v6);
    v15 = vsubq_s16(*v13, *v14);
    *a5 = vsubq_s16(*result, *a3);
    a5[1] = v9;
    a5[2] = v12;
    a5[3] = v15;
    a5 += 4;
    result = (v13 + v5);
    a3 = (v14 + v6);
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

int16x4_t sub_2774FA8A8(int16x4_t *a1, uint64_t a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5)
{
  v5 = vsub_s16(*(a1 + 2 * a2), *(a3 + 2 * a4));
  v6 = *(a1 + 6 * a2);
  v7 = *(a3 + 6 * a4);
  v8 = vsub_s16(*(a1 + 4 * a2), *(a3 + 4 * a4));
  *a5 = vsub_s16(*a1, *a3);
  a5[1] = v5;
  result = vsub_s16(v6, v7);
  a5[2] = v8;
  a5[3] = result;
  return result;
}

uint8x8_t *sub_2774FA900(uint8x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = result + 2;
  v6 = a3 - 512;
  v7 = 16;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  do
  {
    v10 = *(v6 + 512);
    v9 = *(v6 + 528);
    v12 = *a4;
    v11 = a4[1];
    if (a5)
    {
      v13 = *(v6 + 16);
      v14 = vdupq_laneq_s32(vsubw_s16(v8, *a5), 2);
      v15 = vshlq_s32(vmovl_s16(*v6), v14);
      v16 = vshlq_s32(vmovl_high_s16(*v6), v14);
      v17 = vshlq_s32(vmovl_s16(*v13.i8), v14);
      v18 = vshlq_s32(vmovl_high_s16(v13), v14);
      v19 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v20 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v10 = vaddq_s16(v10, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v19), 3uLL), vmulq_s32(v16, v19), 3uLL));
      v9 = vaddq_s16(v9, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v19), 3uLL), vmulq_s32(v18, v19), 3uLL));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v20), 3uLL), vmulq_s32(v16, v20), 3uLL));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v20), 3uLL), vmulq_s32(v18, v20), 3uLL));
      *v6 = 0uLL;
      *(v6 + 16) = 0uLL;
    }

    *(v6 + 512) = 0uLL;
    *(v6 + 528) = 0uLL;
    v21 = vzip1q_s16(v10, v12);
    v22 = vzip2q_s16(v10, v12);
    v23 = vzip1q_s16(v9, v11);
    v24 = vzip2q_s16(v9, v11);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v25 = *v5[-2].i8;
    v26 = vmovl_u8(*v25.i8);
    v27 = vqaddq_s16(vmovl_high_u8(v25), v22);
    v28 = vqaddq_s16(vmovl_u8(*v5), v23);
    v29 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v26, v21)), v27);
    v30 = vqmovun_high_s16(vqmovun_s16(v28), vqaddq_s16(vmovl_high_u8(*v5->i8), v24));
    *v5[-2].i8 = v29;
    *v5->i8 = v30;
    v5 = (v5 + a2);
    v6 += 32;
    --v7;
  }

  while (v7);
  return result;
}

uint8x8_t *sub_2774FAA18(uint8x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 128;
  v6 = -2;
  v7.i64[0] = 0x800000008;
  v7.i64[1] = 0x800000008;
  do
  {
    v9 = *(v5 + 128);
    v8 = *(v5 + 144);
    v11 = *a4;
    v10 = a4[1];
    if (a5)
    {
      v12 = *(v5 + 16);
      v13 = vdupq_laneq_s32(vsubw_s16(v7, *a5), 2);
      v14 = vshlq_s32(vmovl_s16(*v5), v13);
      v15 = vshlq_s32(vmovl_high_s16(*v5), v13);
      v16 = vshlq_s32(vmovl_s16(*v12.i8), v13);
      v17 = vshlq_s32(vmovl_high_s16(v12), v13);
      v18 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v19 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v9 = vaddq_s16(v9, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v14, v18), 3uLL), vmulq_s32(v15, v18), 3uLL));
      v8 = vaddq_s16(v8, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v18), 3uLL), vmulq_s32(v17, v18), 3uLL));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v14, v19), 3uLL), vmulq_s32(v15, v19), 3uLL));
      v10 = vaddq_s16(v10, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v19), 3uLL), vmulq_s32(v17, v19), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 128) = 0uLL;
    *(v5 + 144) = 0uLL;
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v20 = *&result->i8[a2];
    *result->i8 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*result), vzip1q_s16(v9, v11))), vqaddq_s16(vmovl_high_u8(*result->i8), vzip2q_s16(v9, v11)));
    *&result->i8[a2] = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*v20.i8), vzip1q_s16(v8, v10))), vqaddq_s16(vmovl_high_u8(v20), vzip2q_s16(v8, v10)));
    result = (result + 2 * a2);
    v6 += 2;
    v5 += 32;
  }

  while (v6 < 6);
  return result;
}

int8x8_t sub_2774FAB40(uint8x8_t *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5)
{
  v6 = *a3;
  v5 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  if (a5)
  {
    v9 = a3[-2];
    v10 = a3[-1];
    v11.i64[0] = 0x800000008;
    v11.i64[1] = 0x800000008;
    v12 = vdupq_laneq_s32(vsubw_s16(v11, *a5), 2);
    v13 = vshlq_s32(vmovl_s16(*v9.i8), v12);
    v14 = vshlq_s32(vmovl_high_s16(v9), v12);
    v15 = vshlq_s32(vmovl_s16(*v10.i8), v12);
    v16 = vshlq_s32(vmovl_high_s16(v10), v12);
    v17 = vmovl_s16(vdup_lane_s16(*a5, 0));
    v18 = vmovl_s16(vdup_lane_s16(*a5, 1));
    v6 = vaddq_s16(v6, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v17), 3uLL), vmulq_s32(v14, v17), 3uLL));
    v5 = vaddq_s16(v5, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v17), 3uLL), vmulq_s32(v16, v17), 3uLL));
    v8 = vaddq_s16(v8, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v18), 3uLL), vmulq_s32(v14, v18), 3uLL));
    v7 = vaddq_s16(v7, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v18), 3uLL), vmulq_s32(v16, v18), 3uLL));
    a3[-2] = 0u;
    a3[-1] = 0u;
  }

  *a3 = 0u;
  a3[1] = 0u;
  v19 = vzip1q_s16(v6, v8);
  *a4 = 0u;
  a4[1] = 0u;
  v20 = vqaddq_s16(vmovl_u8(*(a1 + a2)), vzip2q_s16(v6, v8));
  v21 = vqaddq_s16(vmovl_u8(*(a1 + 2 * a2)), vzip1q_s16(v5, v7));
  v22 = vqaddq_s16(vmovl_u8(*(a1 + 3 * a2)), vzip2q_s16(v5, v7));
  *a1 = vqmovun_s16(vqaddq_s16(vmovl_u8(*a1), v19));
  *(a1 + a2) = vqmovun_s16(v20);
  *(a1 + 2 * a2) = vqmovun_s16(v21);
  result = vqmovun_s16(v22);
  *(a1 + 3 * a2) = result;
  return result;
}

int16x8_t sub_2774FAC60(uint8x16_t *a1, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v8 = a3;
  v10 = a1;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v36 = 0;
        v37 = a3 + 16;
        do
        {
          v38 = -8;
          v39 = v37;
          do
          {
            v40 = v39[-8];
            v41 = v39[-4];
            v42 = v39[4];
            v43 = vtrn1q_s16(v40, v41);
            v44 = vtrn2q_s16(v40, v41);
            v45 = vtrn1q_s16(*v39, v42);
            v46 = vtrn2q_s16(*v39, v42);
            v39[-8] = vtrn1q_s32(v43, v45);
            v39[-4] = vtrn1q_s32(v44, v46);
            *v39 = vtrn2q_s32(v43, v45);
            v39[4] = vtrn2q_s32(v44, v46);
            v38 += 8;
            ++v39;
          }

          while (v38 < 0x18);
          v37 += 32;
          v47 = v36 >= 0x1C;
          v36 += 4;
        }

        while (!v47);
      }
    }

    else
    {
      sub_2774EEC1C(a3, *a6 & 0x7FFF);
    }

    v48 = *(a6 + 1);
    if (v48 < 1)
    {
      if (v48 < 0)
      {
        v49 = 0;
        v50 = v7 + 16;
        do
        {
          v51 = -8;
          v52 = v50;
          do
          {
            v53 = v52[-8];
            v54 = v52[-4];
            v55 = v52[4];
            v56 = vtrn1q_s16(v53, v54);
            v57 = vtrn2q_s16(v53, v54);
            v58 = vtrn1q_s16(*v52, v55);
            v59 = vtrn2q_s16(*v52, v55);
            v52[-8] = vtrn1q_s32(v56, v58);
            v52[-4] = vtrn1q_s32(v57, v59);
            *v52 = vtrn2q_s32(v56, v58);
            v52[4] = vtrn2q_s32(v57, v59);
            v51 += 8;
            ++v52;
          }

          while (v51 < 0x18);
          v50 += 32;
          v47 = v49 >= 0x1C;
          v49 += 4;
        }

        while (!v47);
      }
    }

    else
    {
      sub_2774EEC1C(v7, v48);
    }

    v60 = 0;
    v61 = 4 * a2;
    v62 = v10->i64 + 3 * a2;
    v63 = v10->i64 + 2 * a2;
    v64 = v10->i64 + a2;
    result = 0uLL;
    v65.i64[0] = 0x800000008;
    v65.i64[1] = 0x800000008;
    do
    {
      v66 = -8;
      v67 = -2048;
      do
      {
        v68 = &v8[v67 / 8];
        v69 = *v8[v67 / 8 + 256].i8;
        v70 = *v8[v67 / 8 + 264].i8;
        v71 = *v8[v67 / 8 + 272].i8;
        v72 = *v8[v67 / 8 + 280].i8;
        v73 = &v7[v67 / 8];
        v74 = *v7[v67 / 8 + 256].i8;
        v75 = *v7[v67 / 8 + 264].i8;
        v76 = *v7[v67 / 8 + 272].i8;
        v77 = vtrn1q_s16(v69, v70);
        v78 = vtrn2q_s16(v69, v70);
        v79 = vtrn1q_s16(v71, v72);
        v80 = vtrn2q_s16(v71, v72);
        v81 = *v7[v67 / 8 + 280].i8;
        v68[128] = 0uLL;
        v68[132] = 0uLL;
        v68[136] = 0uLL;
        v68[140] = 0uLL;
        *v73[256].i8 = 0uLL;
        *v73[264].i8 = 0uLL;
        *v73[272].i8 = 0uLL;
        *v73[280].i8 = 0uLL;
        v82 = vtrn1q_s32(v77, v79);
        v83 = vtrn2q_s32(v77, v79);
        v84 = vtrn1q_s32(v78, v80);
        v85 = vtrn2q_s32(v78, v80);
        v86 = vtrn1q_s16(v74, v75);
        v87 = vtrn2q_s16(v74, v75);
        v88 = vtrn1q_s16(v76, v81);
        v89 = vtrn2q_s16(v76, v81);
        v90 = vtrn1q_s32(v86, v88);
        v91 = vtrn2q_s32(v86, v88);
        v92 = vtrn1q_s32(v87, v89);
        v93 = vtrn2q_s32(v87, v89);
        if (a5)
        {
          v94 = *a5;
          v95 = *v68;
          v96 = v68[4];
          *v68 = 0uLL;
          v68[4] = 0uLL;
          v97 = vdupq_laneq_s32(vsubw_s16(v65, v94), 2);
          v98 = vshlq_s32(vmovl_s16(*v95.i8), v97);
          v99 = vshlq_s32(vmovl_high_s16(v95), v97);
          v100 = vshlq_s32(vmovl_s16(*v96.i8), v97);
          v101 = vshlq_s32(vmovl_high_s16(v96), v97);
          v102 = vmovl_s16(vdup_lane_s16(v94, 0));
          v103 = vmovl_s16(vdup_lane_s16(v94, 1));
          v82 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v98, v102), 3uLL), vmulq_s32(v99, v102), 3uLL), v82);
          v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v98, v103), 3uLL), vmulq_s32(v99, v103), 3uLL), v90);
          v84 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v100, v102), 3uLL), vmulq_s32(v101, v102), 3uLL), v84);
          v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v100, v103), 3uLL), vmulq_s32(v101, v103), 3uLL), v92);
          *v103.i8 = *a5;
          v104 = v68[8];
          v105 = v68[12];
          v68[8] = 0uLL;
          v68[12] = 0uLL;
          v106 = vdupq_laneq_s32(vsubw_s16(v65, *v103.i8), 2);
          v107 = vshlq_s32(vmovl_s16(*v104.i8), v106);
          v108 = vshlq_s32(vmovl_high_s16(v104), v106);
          v109 = vshlq_s32(vmovl_s16(*v105.i8), v106);
          v110 = vshlq_s32(vmovl_high_s16(v105), v106);
          v111 = vmovl_s16(vdup_lane_s16(*v103.i8, 0));
          v112 = vmovl_s16(vdup_lane_s16(*v103.i8, 1));
          v83 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v107, v111), 3uLL), vmulq_s32(v108, v111), 3uLL), v83);
          v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v107, v112), 3uLL), vmulq_s32(v108, v112), 3uLL), v91);
          v85 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v109, v111), 3uLL), vmulq_s32(v110, v111), 3uLL), v85);
          v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v109, v112), 3uLL), vmulq_s32(v110, v112), 3uLL), v93);
        }

        v113 = vzip1q_s16(v82, v90);
        v114 = vzip2q_s16(v82, v90);
        v115 = vzip1q_s16(v84, v92);
        v116 = vzip2q_s16(v84, v92);
        v117 = vzip1q_s16(v83, v91);
        v118 = vzip2q_s16(v83, v91);
        v119 = vzip1q_s16(v85, v93);
        v120 = vzip2q_s16(v85, v93);
        v121 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v113, vmovl_u8(*v10[v67 / 0x10 + 128].i8))), vqaddq_s16(v114, vmovl_high_u8(v10[v67 / 0x10 + 128])));
        v122 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v115, vmovl_u8(*(v64 + v67 + 2048)))), vqaddq_s16(v116, vmovl_high_u8(*(v64 + v67 + 2048))));
        v123 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v117, vmovl_u8(*(v63 + v67 + 2048)))), vqaddq_s16(v118, vmovl_high_u8(*(v63 + v67 + 2048))));
        v124 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v119, vmovl_u8(*(v62 + v67 + 2048)))), vqaddq_s16(v120, vmovl_high_u8(*(v62 + v67 + 2048))));
        v10[v67 / 0x10 + 128] = v121;
        *(v64 + v67 + 2048) = v122;
        *(v63 + v67 + 2048) = v123;
        *(v62 + v67 + 2048) = v124;
        v66 += 8;
        v67 += 16;
      }

      while (v66 < 0x18);
      v10 = (v10 + v61);
      v8 += 32;
      v7 += 32;
      v62 += v61;
      v63 += v61;
      v64 += v61;
      v47 = v60 >= 0x1C;
      v60 += 4;
    }

    while (!v47);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    result = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 6uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    if (a5)
    {
      v16 = 0;
      v17 = a3 - 256;
      v18.i64[0] = 0x800000008;
      v18.i64[1] = 0x800000008;
      do
      {
        v19 = 0;
        v20 = 1;
        do
        {
          v21 = *v17[2].i8;
          v22 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
          v23 = vshlq_s32(vmovl_s16(*v17), v22);
          v24 = vshlq_s32(vmovl_high_s16(*v17->i8), v22);
          v25 = vshlq_s32(vmovl_s16(*v21.i8), v22);
          v26 = vshlq_s32(vmovl_high_s16(v21), v22);
          v27 = vmovl_s16(vdup_lane_s16(*a5, 0));
          v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v27), 3uLL), vmulq_s32(v24, v27), 3uLL);
          v29 = vmovl_s16(vdup_lane_s16(*a5, 1));
          v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v27), 3uLL), vmulq_s32(v26, v27), 3uLL);
          v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v29), 3uLL), vmulq_s32(v24, v29), 3uLL);
          v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
          v33 = v20;
          *v17->i8 = 0uLL;
          *v17[2].i8 = 0uLL;
          v17 += 4;
          v34 = &v10[v19];
          v35 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(v34[2]), vaddq_s16(vzip1q_s16(v30, v32), result))), vqaddq_s16(vmovl_high_u8(*v34[2].i8), vaddq_s16(vzip2q_s16(v30, v32), result)));
          *v34->i8 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*v34), vaddq_s16(vzip1q_s16(v28, v31), result))), vqaddq_s16(vmovl_high_u8(*v34->i8), vaddq_s16(vzip2q_s16(v28, v31), result)));
          *v34[2].i8 = v35;
          v19 = 2;
          v20 = 0;
        }

        while ((v33 & 1) != 0);
        ++v16;
        v10 = (v10 + a2);
      }

      while (v16 != 32);
    }

    else
    {
      v125 = vnegq_s16(result);
      v126 = vqmovun_high_s16(vqmovun_s16(result), result);
      v127 = vqmovun_high_s16(vqmovun_s16(v125), v125);
      v128 = a1 + 2;
      v129 = 32;
      do
      {
        v130 = vqsubq_u8(vqaddq_u8(v128[-1], v126), v127);
        v128[-2] = vqsubq_u8(vqaddq_u8(v128[-2], v126), v127);
        v128[-1] = v130;
        result = vqsubq_u8(vqaddq_u8(*v128, v126), v127);
        v131 = vqsubq_u8(vqaddq_u8(v128[1], v126), v127);
        *v128 = result;
        v128[1] = v131;
        v128 = (v128 + a2);
        --v129;
      }

      while (v129);
    }
  }

  return result;
}

int16x8_t sub_2774FB240(uint8x8_t *a1, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v34 = 0;
        v35 = a3;
        do
        {
          v36 = 0;
          v37 = 1;
          do
          {
            v38 = v37;
            v39 = &v35[v36];
            v40 = v39[2];
            v41 = v39[4];
            v42 = v39[6];
            v43 = vtrn1q_s16(*v39, v40);
            v44 = vtrn2q_s16(*v39, v40);
            v45 = vtrn1q_s16(v41, v42);
            v46 = vtrn2q_s16(v41, v42);
            *v39 = vtrn1q_s32(v43, v45);
            v39[2] = vtrn1q_s32(v44, v46);
            v39[4] = vtrn2q_s32(v43, v45);
            v39[6] = vtrn2q_s32(v44, v46);
            v36 = 2;
            v37 = 0;
          }

          while ((v38 & 1) != 0);
          v35 += 16;
          v47 = v34 >= 0xC;
          v34 += 4;
        }

        while (!v47);
      }
    }

    else
    {
      sub_2774EFEA4(a3, *a6 & 0x7FFF);
    }

    v48 = *(a6 + 1);
    if (v48 < 1)
    {
      if (v48 < 0)
      {
        v49 = 0;
        v50 = v7;
        do
        {
          v51 = 0;
          v52 = 1;
          do
          {
            v53 = v52;
            v54 = &v50[v51];
            v55 = v54[2];
            v56 = v54[4];
            v57 = v54[6];
            v58 = vtrn1q_s16(*v54, v55);
            v59 = vtrn2q_s16(*v54, v55);
            v60 = vtrn1q_s16(v56, v57);
            v61 = vtrn2q_s16(v56, v57);
            *v54 = vtrn1q_s32(v58, v60);
            v54[2] = vtrn1q_s32(v59, v61);
            v54[4] = vtrn2q_s32(v58, v60);
            v54[6] = vtrn2q_s32(v59, v61);
            v51 = 8;
            v52 = 0;
          }

          while ((v53 & 1) != 0);
          v50 += 64;
          v47 = v49 >= 0xC;
          v49 += 4;
        }

        while (!v47);
      }
    }

    else
    {
      sub_2774EFEA4(v7, v48);
    }

    v62 = 2 * a2;
    v63 = &a3[-64];
    v64 = a1 + 2;
    result = 0uLL;
    v65.i64[0] = 0x800000008;
    v65.i64[1] = 0x800000008;
    v66 = -4;
    v67 = 3 * a2;
    do
    {
      v68 = v63[32];
      v69 = v63[34];
      v70 = v63[36];
      v71 = v63[38];
      v72 = *v7;
      v73 = *(v7 + 2);
      v74 = *(v7 + 4);
      v75 = vtrn1q_s16(v68, v69);
      v76 = vtrn2q_s16(v68, v69);
      v77 = vtrn1q_s16(v70, v71);
      v78 = vtrn2q_s16(v70, v71);
      v79 = *(v7 + 6);
      v63[32] = 0uLL;
      v63[34] = 0uLL;
      v63[36] = 0uLL;
      v63[38] = 0uLL;
      *v7 = 0uLL;
      *(v7 + 2) = 0uLL;
      v80 = vtrn1q_s32(v75, v77);
      v81 = vtrn2q_s32(v75, v77);
      v82 = vtrn1q_s32(v76, v78);
      v83 = vtrn2q_s32(v76, v78);
      v84 = vtrn1q_s16(v72, v73);
      v85 = vtrn2q_s16(v72, v73);
      v86 = vtrn1q_s16(v74, v79);
      v87 = vtrn2q_s16(v74, v79);
      v88 = vtrn1q_s32(v84, v86);
      v89 = vtrn2q_s32(v84, v86);
      *(v7 + 4) = 0uLL;
      v90 = vtrn1q_s32(v85, v87);
      v91 = vtrn2q_s32(v85, v87);
      *(v7 + 6) = 0uLL;
      if (a5)
      {
        v92 = *a5;
        v93 = *v63;
        v94 = v63[2];
        *v63 = 0uLL;
        v63[2] = 0uLL;
        v95 = vdupq_laneq_s32(vsubw_s16(v65, v92), 2);
        v96 = vshlq_s32(vmovl_s16(*v93.i8), v95);
        v97 = vshlq_s32(vmovl_high_s16(v93), v95);
        v98 = vshlq_s32(vmovl_s16(*v94.i8), v95);
        v99 = vshlq_s32(vmovl_high_s16(v94), v95);
        v100 = vmovl_s16(vdup_lane_s16(v92, 0));
        v101 = vmovl_s16(vdup_lane_s16(v92, 1));
        v80 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v96, v100), 3uLL), vmulq_s32(v97, v100), 3uLL), v80);
        v88 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v96, v101), 3uLL), vmulq_s32(v97, v101), 3uLL), v88);
        v82 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v98, v100), 3uLL), vmulq_s32(v99, v100), 3uLL), v82);
        v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v98, v101), 3uLL), vmulq_s32(v99, v101), 3uLL), v90);
        *v101.i8 = *a5;
        v102 = v63[4];
        v103 = v63[6];
        v63[4] = 0uLL;
        v63[6] = 0uLL;
        v104 = vdupq_laneq_s32(vsubw_s16(v65, *v101.i8), 2);
        v105 = vshlq_s32(vmovl_s16(*v102.i8), v104);
        v106 = vshlq_s32(vmovl_high_s16(v102), v104);
        v107 = vshlq_s32(vmovl_s16(*v103.i8), v104);
        v108 = vshlq_s32(vmovl_high_s16(v103), v104);
        v109 = vmovl_s16(vdup_lane_s16(*v101.i8, 0));
        v110 = vmovl_s16(vdup_lane_s16(*v101.i8, 1));
        v81 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v105, v109), 3uLL), vmulq_s32(v106, v109), 3uLL), v81);
        v89 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v105, v110), 3uLL), vmulq_s32(v106, v110), 3uLL), v89);
        v83 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v107, v109), 3uLL), vmulq_s32(v108, v109), 3uLL), v83);
        v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v107, v110), 3uLL), vmulq_s32(v108, v110), 3uLL), v91);
      }

      v111 = vzip1q_s16(v80, v88);
      v112 = vzip2q_s16(v80, v88);
      v113 = vzip1q_s16(v82, v90);
      v114 = vzip2q_s16(v82, v90);
      v115 = vzip1q_s16(v81, v89);
      v116 = vzip2q_s16(v81, v89);
      v117 = vzip1q_s16(v83, v91);
      v118 = vzip2q_s16(v83, v91);
      v119 = *&v64[-2].i8[v67];
      v120 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v111, vmovl_u8(v64[-2]))), vqaddq_s16(v112, vmovl_high_u8(*v64[-2].i8)));
      v121 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v113, vmovl_u8(*(&v64[-2] + a2)))), vqaddq_s16(v114, vmovl_high_u8(*&v64[-2].i8[a2])));
      v122 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v115, vmovl_u8(*(&v64[-2] + v62)))), vqaddq_s16(v116, vmovl_high_u8(*&v64[-2].i8[v62])));
      *v64[-2].i8 = v120;
      *&v64[-2].i8[a2] = v121;
      *&v64[-2].i8[v62] = v122;
      *&v64[-2].i8[v67] = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v117, vmovl_u8(*v119.i8))), vqaddq_s16(v118, vmovl_high_u8(v119)));
      v123 = v63[33];
      v124 = v63[35];
      v125 = v63[37];
      v126 = v63[39];
      v127 = *(v7 + 1);
      v128 = *(v7 + 3);
      v129 = *(v7 + 5);
      v130 = *(v7 + 7);
      v63[33] = 0uLL;
      v63[35] = 0uLL;
      v63[37] = 0uLL;
      v63[39] = 0uLL;
      *(v7 + 1) = 0uLL;
      v131 = vtrn1q_s16(v123, v124);
      *(v7 + 3) = 0uLL;
      v132 = vtrn2q_s16(v123, v124);
      *(v7 + 5) = 0uLL;
      v133 = vtrn1q_s16(v125, v126);
      v134 = vtrn2q_s16(v125, v126);
      *(v7 + 7) = 0uLL;
      v135 = vtrn1q_s32(v131, v133);
      v136 = vtrn2q_s32(v131, v133);
      v137 = vtrn1q_s32(v132, v134);
      v138 = vtrn2q_s32(v132, v134);
      v139 = vtrn1q_s16(v127, v128);
      v140 = vtrn2q_s16(v127, v128);
      v141 = vtrn1q_s16(v129, v130);
      v142 = vtrn2q_s16(v129, v130);
      v143 = vtrn1q_s32(v139, v141);
      v144 = vtrn2q_s32(v139, v141);
      v145 = vtrn1q_s32(v140, v142);
      v146 = vtrn2q_s32(v140, v142);
      if (a5)
      {
        v147 = *a5;
        v148 = v63[1];
        v149 = v63[3];
        v63[1] = 0uLL;
        v63[3] = 0uLL;
        v150 = vdupq_laneq_s32(vsubw_s16(v65, v147), 2);
        v151 = vshlq_s32(vmovl_s16(*v148.i8), v150);
        v152 = vshlq_s32(vmovl_high_s16(v148), v150);
        v153 = vshlq_s32(vmovl_s16(*v149.i8), v150);
        v154 = vshlq_s32(vmovl_high_s16(v149), v150);
        v155 = vmovl_s16(vdup_lane_s16(v147, 0));
        v156 = vmovl_s16(vdup_lane_s16(v147, 1));
        v135 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v155), 3uLL), vmulq_s32(v152, v155), 3uLL), v135);
        v143 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v156), 3uLL), vmulq_s32(v152, v156), 3uLL), v143);
        v137 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v155), 3uLL), vmulq_s32(v154, v155), 3uLL), v137);
        v145 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v156), 3uLL), vmulq_s32(v154, v156), 3uLL), v145);
        *v156.i8 = *a5;
        v157 = v63[5];
        v158 = v63[7];
        v63[5] = 0uLL;
        v63[7] = 0uLL;
        v159 = vdupq_laneq_s32(vsubw_s16(v65, *v156.i8), 2);
        v160 = vshlq_s32(vmovl_s16(*v157.i8), v159);
        v161 = vshlq_s32(vmovl_high_s16(v157), v159);
        v162 = vshlq_s32(vmovl_s16(*v158.i8), v159);
        v163 = vshlq_s32(vmovl_high_s16(v158), v159);
        v164 = vmovl_s16(vdup_lane_s16(*v156.i8, 0));
        v165 = vmovl_s16(vdup_lane_s16(*v156.i8, 1));
        v136 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v164), 3uLL), vmulq_s32(v161, v164), 3uLL), v136);
        v144 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v165), 3uLL), vmulq_s32(v161, v165), 3uLL), v144);
        v138 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v164), 3uLL), vmulq_s32(v163, v164), 3uLL), v138);
        v146 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v165), 3uLL), vmulq_s32(v163, v165), 3uLL), v146);
      }

      v166 = vzip1q_s16(v135, v143);
      v167 = vzip2q_s16(v135, v143);
      v168 = vzip1q_s16(v137, v145);
      v169 = vzip2q_s16(v137, v145);
      v170 = vzip1q_s16(v136, v144);
      v171 = vzip2q_s16(v136, v144);
      v172 = vzip1q_s16(v138, v146);
      v173 = vzip2q_s16(v138, v146);
      v174 = *&v64->i8[a2];
      v175 = vqaddq_s16(v168, vmovl_u8(*v174.i8));
      v176 = vqaddq_s16(v169, vmovl_high_u8(v174));
      v177 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v166, vmovl_u8(*v64))), vqaddq_s16(v167, vmovl_high_u8(*v64->i8)));
      v178 = vqmovun_high_s16(vqmovun_s16(v175), v176);
      v179 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v170, vmovl_u8(*(v64 + 2 * a2)))), vqaddq_s16(v171, vmovl_high_u8(*&v64->i8[2 * a2])));
      v180 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v172, vmovl_u8(*(v64 + 3 * a2)))), vqaddq_s16(v173, vmovl_high_u8(*&v64->i8[3 * a2])));
      *v64->i8 = v177;
      *&v64->i8[a2] = v178;
      *&v64->i8[2 * a2] = v179;
      *&v64->i8[3 * a2] = v180;
      v63 += 8;
      v66 += 4;
      v64 = (v64 + 4 * a2);
      v7 += 64;
    }

    while (v66 < 0xC);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    result = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 6uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    if (a5)
    {
      v16 = a1 + 2;
      v17 = 0x1FFFFFFFFFFFFFC0;
      v18.i64[0] = 0x800000008;
      v18.i64[1] = 0x800000008;
      do
      {
        v19 = &a3[v17];
        v20 = *a3[v17].i8;
        v21 = *a3[v17 + 2].i8;
        v22 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
        v23 = vshlq_s32(vmovl_s16(*v20.i8), v22);
        v24 = vshlq_s32(vmovl_high_s16(v20), v22);
        v25 = vshlq_s32(vmovl_s16(*v21.i8), v22);
        v26 = vshlq_s32(vmovl_high_s16(v21), v22);
        v27 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v27), 3uLL), vmulq_s32(v24, v27), 3uLL);
        v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v27), 3uLL), vmulq_s32(v26, v27), 3uLL);
        v30 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v30), 3uLL), vmulq_s32(v24, v30), 3uLL);
        v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v30), 3uLL), vmulq_s32(v26, v30), 3uLL);
        *v19->i8 = 0uLL;
        *v19[2].i8 = 0uLL;
        v33 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*v16), vaddq_s16(vzip1q_s16(v29, v32), result))), vqaddq_s16(vmovl_high_u8(*v16->i8), vaddq_s16(vzip2q_s16(v29, v32), result)));
        *v16[-2].i8 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(v16[-2]), vaddq_s16(vzip1q_s16(v28, v31), result))), vqaddq_s16(vmovl_high_u8(*v16[-2].i8), vaddq_s16(vzip2q_s16(v28, v31), result)));
        *v16->i8 = v33;
        v16 = (v16 + a2);
        v17 += 4;
      }

      while ((v17 * 8));
    }

    else
    {
      v181 = vnegq_s16(result);
      v182 = vqmovun_high_s16(vqmovun_s16(result), result);
      v183 = vqmovun_high_s16(vqmovun_s16(v181), v181);
      v184 = &a1[2];
      v185 = 16;
      do
      {
        result = vqsubq_u8(vqaddq_u8(v184[-1], v182), v183);
        v186 = vqsubq_u8(vqaddq_u8(*v184, v182), v183);
        v184[-1] = result;
        *v184 = v186;
        v184 = (v184 + a2);
        --v185;
      }

      while (v185);
    }
  }

  return result;
}

int16x8_t sub_2774FBA1C(uint8x8_t *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5, int *a6)
{
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v32 = 1;
        v33 = a3;
        do
        {
          v34 = v32;
          v35 = v33[1];
          v36 = v33[2];
          v37 = v33[3];
          v38 = vtrn1q_s16(*v33, v35);
          v39 = vtrn2q_s16(*v33, v35);
          v40 = vtrn1q_s16(v36, v37);
          v41 = vtrn2q_s16(v36, v37);
          *v33 = vtrn1q_s32(v38, v40);
          v33[1] = vtrn1q_s32(v39, v41);
          v33[2] = vtrn2q_s32(v38, v40);
          v33[3] = vtrn2q_s32(v39, v41);
          v33 += 4;
          v32 = 0;
        }

        while ((v34 & 1) != 0);
      }
    }

    else
    {
      sub_2774F0258(a3, *a6 & 0x7FFF);
    }

    v42 = *(a6 + 1);
    if (v42 < 1)
    {
      if (v42 < 0)
      {
        v43 = 1;
        v44 = a4;
        do
        {
          v45 = v43;
          v46 = v44[1];
          v47 = v44[2];
          v48 = v44[3];
          v49 = vtrn1q_s16(*v44, v46);
          v50 = vtrn2q_s16(*v44, v46);
          v51 = vtrn1q_s16(v47, v48);
          v52 = vtrn2q_s16(v47, v48);
          *v44 = vtrn1q_s32(v49, v51);
          v44[1] = vtrn1q_s32(v50, v52);
          v44[2] = vtrn2q_s32(v49, v51);
          v44[3] = vtrn2q_s32(v50, v52);
          v44 += 4;
          v43 = 0;
        }

        while ((v45 & 1) != 0);
      }
    }

    else
    {
      sub_2774F0258(a4, v42);
    }

    v53 = a3[1];
    v54 = a3[2];
    v55 = a3[3];
    v56 = *a4;
    v57 = a4[1];
    v58 = vtrn1q_s16(*a3, v53);
    v59 = vtrn2q_s16(*a3, v53);
    v60 = vtrn1q_s16(v54, v55);
    v61 = vtrn2q_s16(v54, v55);
    v62 = a4[2];
    v63 = a4[3];
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    v64 = vtrn1q_s32(v58, v60);
    v65 = vtrn2q_s32(v58, v60);
    v66 = vtrn1q_s32(v59, v61);
    v67 = vtrn2q_s32(v59, v61);
    v68 = vtrn1q_s16(v56, v57);
    v69 = vtrn2q_s16(v56, v57);
    v70 = vtrn1q_s16(v62, v63);
    v71 = vtrn2q_s16(v62, v63);
    v72 = vtrn1q_s32(v68, v70);
    v73 = vtrn2q_s32(v68, v70);
    v74 = vtrn1q_s32(v69, v71);
    v75 = vtrn2q_s32(v69, v71);
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    if (a5)
    {
      v76 = a3[-8];
      v77 = a3[-7];
      v78.i64[0] = 0x800000008;
      v78.i64[1] = 0x800000008;
      v79 = vdupq_laneq_s32(vsubw_s16(v78, *a5), 2);
      v80 = vshlq_s32(vmovl_s16(*v76.i8), v79);
      v81 = vshlq_s32(vmovl_high_s16(v76), v79);
      v82 = vshlq_s32(vmovl_s16(*v77.i8), v79);
      v83 = vshlq_s32(vmovl_high_s16(v77), v79);
      v84 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v85 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-8] = 0uLL;
      a3[-7] = 0uLL;
      v64 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v80, v84), 3uLL), vmulq_s32(v81, v84), 3uLL), v64);
      v72 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v80, v85), 3uLL), vmulq_s32(v81, v85), 3uLL), v72);
      v66 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v82, v84), 3uLL), vmulq_s32(v83, v84), 3uLL), v66);
      v74 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v82, v85), 3uLL), vmulq_s32(v83, v85), 3uLL), v74);
      v86 = a3[-6];
      v87 = a3[-5];
      v88 = vdupq_laneq_s32(vsubw_s16(v78, *a5), 2);
      v89 = vshlq_s32(vmovl_s16(*v86.i8), v88);
      v90 = vshlq_s32(vmovl_high_s16(v86), v88);
      v91 = vshlq_s32(vmovl_s16(*v87.i8), v88);
      v92 = vshlq_s32(vmovl_high_s16(v87), v88);
      v93 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v94 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-6] = 0uLL;
      a3[-5] = 0uLL;
      v65 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v89, v93), 3uLL), vmulq_s32(v90, v93), 3uLL), v65);
      v73 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v89, v94), 3uLL), vmulq_s32(v90, v94), 3uLL), v73);
      v67 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v91, v93), 3uLL), vmulq_s32(v92, v93), 3uLL), v67);
      v75 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v91, v94), 3uLL), vmulq_s32(v92, v94), 3uLL), v75);
    }

    v95 = vzip1q_s16(v64, v72);
    v96 = vzip2q_s16(v64, v72);
    v97 = vzip1q_s16(v66, v74);
    v98 = vzip2q_s16(v66, v74);
    v99 = vzip1q_s16(v65, v73);
    v100 = vzip2q_s16(v65, v73);
    v101 = vzip1q_s16(v67, v75);
    v102 = vzip2q_s16(v67, v75);
    v103 = *&a1->i8[a2];
    v104 = *&a1->i8[3 * a2];
    v105 = vqaddq_s16(v97, vmovl_u8(*v103.i8));
    v106 = vqaddq_s16(v98, vmovl_high_u8(v103));
    v107 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v95, vmovl_u8(*a1))), vqaddq_s16(v96, vmovl_high_u8(*a1->i8)));
    v108 = vqmovun_high_s16(vqmovun_s16(v105), v106);
    v109 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v99, vmovl_u8(*(a1 + 2 * a2)))), vqaddq_s16(v100, vmovl_high_u8(*&a1->i8[2 * a2])));
    *a1->i8 = v107;
    *&a1->i8[a2] = v108;
    *&a1->i8[2 * a2] = v109;
    *&a1->i8[3 * a2] = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(v101, vmovl_u8(*v104.i8))), vqaddq_s16(v102, vmovl_high_u8(v104)));
    v110 = a3[4];
    v111 = a3[5];
    v112 = a3[6];
    v113 = a3[7];
    v114 = a4[4];
    v115 = a4[5];
    v116 = a4[6];
    v117 = a4[7];
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    v118 = vtrn1q_s16(v110, v111);
    v119 = vtrn2q_s16(v110, v111);
    v120 = vtrn1q_s16(v112, v113);
    v121 = vtrn2q_s16(v112, v113);
    v122 = vtrn1q_s32(v118, v120);
    v123 = vtrn2q_s32(v118, v120);
    v124 = vtrn1q_s32(v119, v121);
    v125 = vtrn2q_s32(v119, v121);
    v126 = vtrn1q_s16(v114, v115);
    v127 = vtrn2q_s16(v114, v115);
    v128 = vtrn1q_s16(v116, v117);
    v129 = vtrn2q_s16(v116, v117);
    v130 = vtrn1q_s32(v126, v128);
    v131 = vtrn2q_s32(v126, v128);
    v132 = vtrn1q_s32(v127, v129);
    a4[6] = 0uLL;
    a4[7] = 0uLL;
    v133 = vtrn2q_s32(v127, v129);
    a4[4] = 0uLL;
    a4[5] = 0uLL;
    if (a5)
    {
      v134 = a3[-4];
      v135 = a3[-3];
      v136.i64[0] = 0x800000008;
      v136.i64[1] = 0x800000008;
      v137 = vdupq_laneq_s32(vsubw_s16(v136, *a5), 2);
      v138 = vshlq_s32(vmovl_s16(*v134.i8), v137);
      v139 = vshlq_s32(vmovl_high_s16(v134), v137);
      v140 = vshlq_s32(vmovl_s16(*v135.i8), v137);
      v141 = vshlq_s32(vmovl_high_s16(v135), v137);
      v142 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v143 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-4] = 0u;
      a3[-3] = 0u;
      v122 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v138, v142), 3uLL), vmulq_s32(v139, v142), 3uLL), v122);
      v130 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v138, v143), 3uLL), vmulq_s32(v139, v143), 3uLL), v130);
      v124 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v140, v142), 3uLL), vmulq_s32(v141, v142), 3uLL), v124);
      v132 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v140, v143), 3uLL), vmulq_s32(v141, v143), 3uLL), v132);
      v144 = a3[-2];
      v145 = a3[-1];
      v146 = vdupq_laneq_s32(vsubw_s16(v136, *a5), 2);
      v147 = vshlq_s32(vmovl_s16(*v144.i8), v146);
      v148 = vshlq_s32(vmovl_high_s16(v144), v146);
      v149 = vshlq_s32(vmovl_s16(*v145.i8), v146);
      v150 = vshlq_s32(vmovl_high_s16(v145), v146);
      v151 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v152 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-2] = 0u;
      a3[-1] = 0u;
      v123 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v147, v151), 3uLL), vmulq_s32(v148, v151), 3uLL), v123);
      v131 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v147, v152), 3uLL), vmulq_s32(v148, v152), 3uLL), v131);
      v125 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v149, v151), 3uLL), vmulq_s32(v150, v151), 3uLL), v125);
      v133 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v149, v152), 3uLL), vmulq_s32(v150, v152), 3uLL), v133);
    }

    v153 = (a1 + 4 * a2);
    v154 = *&v153->i8[3 * a2];
    v155 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vzip1q_s16(v122, v130), vmovl_u8(*v153))), vqaddq_s16(vzip2q_s16(v122, v130), vmovl_high_u8(*v153->i8)));
    v156 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vzip1q_s16(v124, v132), vmovl_u8(*(v153 + a2)))), vqaddq_s16(vzip2q_s16(v124, v132), vmovl_high_u8(*&v153->i8[a2])));
    v157 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vzip1q_s16(v123, v131), vmovl_u8(*(v153 + 2 * a2)))), vqaddq_s16(vzip2q_s16(v123, v131), vmovl_high_u8(*&v153->i8[2 * a2])));
    *v153->i8 = v155;
    *&v153->i8[a2] = v156;
    result = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vzip1q_s16(v125, v133), vmovl_u8(*v154.i8))), vqaddq_s16(vzip2q_s16(v125, v133), vmovl_high_u8(v154)));
    *&v153->i8[2 * a2] = v157;
    *&v153->i8[3 * a2] = result;
  }

  else
  {
    v13 = vld1q_dup_s16(a3->i16);
    v14 = vld1q_dup_s16(a4->i16);
    result = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 6uLL);
    a3->i16[0] = 0;
    a4->i16[0] = 0;
    if (a5)
    {
      v16 = a3 - 8;
      v17 = -2;
      v18.i64[0] = 0x800000008;
      v18.i64[1] = 0x800000008;
      do
      {
        v19 = v16[1];
        v20 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
        v21 = vshlq_s32(vmovl_s16(*v16->i8), v20);
        v22 = vshlq_s32(vmovl_high_s16(*v16), v20);
        v23 = vshlq_s32(vmovl_s16(*v19.i8), v20);
        v24 = vshlq_s32(vmovl_high_s16(v19), v20);
        v25 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v26 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v21, v25), 3uLL), vmulq_s32(v22, v25), 3uLL);
        v27 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v25), 3uLL), vmulq_s32(v24, v25), 3uLL);
        v28 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v21, v28), 3uLL), vmulq_s32(v22, v28), 3uLL);
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v28), 3uLL), vmulq_s32(v24, v28), 3uLL);
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16 += 2;
        v31 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*(a1 + a2)), vaddq_s16(vzip1q_s16(v27, v30), result))), vqaddq_s16(vmovl_high_u8(*&a1->i8[a2]), vaddq_s16(vzip2q_s16(v27, v30), result)));
        *a1->i8 = vqmovun_high_s16(vqmovun_s16(vqaddq_s16(vmovl_u8(*a1), vaddq_s16(vzip1q_s16(v26, v29), result))), vqaddq_s16(vmovl_high_u8(*a1->i8), vaddq_s16(vzip2q_s16(v26, v29), result)));
        *&a1->i8[a2] = v31;
        a1 = (a1 + 2 * a2);
        v17 += 2;
      }

      while (v17 < 6);
    }

    else
    {
      v158 = vnegq_s16(result);
      v159 = vqmovun_high_s16(vqmovun_s16(result), result);
      v160 = vqmovun_high_s16(vqmovun_s16(v158), v158);
      v161 = -2;
      do
      {
        result = vqsubq_u8(vqaddq_u8(*a1->i8, v159), v160);
        v162 = vqsubq_u8(vqaddq_u8(*&a1->i8[a2], v159), v160);
        *a1->i8 = result;
        *&a1->i8[a2] = v162;
        a1 = (a1 + 2 * a2);
        v161 += 2;
      }

      while (v161 < 6);
    }
  }

  return result;
}

int8x8_t sub_2774FC128(uint8x8_t *a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x4_t *a5, __int16 *a6)
{
  v12 = *a6;
  if (v12 >= 1)
  {
    sub_2774F0480(a3, v12);
  }

  v13 = a6[1];
  if (v13 >= 1)
  {
    sub_2774F0480(a4, v13);
  }

  return sub_2774FAB40(a1, a2, a3, a4, a5);
}

void sub_2774FC1B8(int16x4_t *a1)
{
  v2[65] = *MEMORY[0x277D85DE8];
  sub_2774F15E8(v2, a1, 3);
  sub_2774F1738(a1, v2);
}

void sub_2774FC228(int16x4_t *a1)
{
  v2[17] = *MEMORY[0x277D85DE8];
  sub_2774F19A4(v2, a1, 2);
  sub_2774F1A4C(a1, v2);
}

int16x4_t sub_2774FC298(int16x4_t *a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = vtrn1_s16(*a1, v1);
  v5 = vtrn2_s16(*a1, v1);
  v6 = vtrn1_s16(v2, v3);
  v7 = vtrn2_s16(v2, v3);
  v8 = vzip1_s32(v4, v6);
  v9 = vzip2_s32(v4, v6);
  v10 = vzip1_s32(v5, v7);
  v11 = vzip2_s32(v5, v7);
  v12 = vadd_s16(v11, v8);
  v13 = vsub_s16(v8, v11);
  v14 = vadd_s16(v9, v10);
  v15 = vsub_s16(v10, v9);
  v17[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v14, v12), 6uLL), 1uLL));
  v17[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v15, 0x24002400240024), v13, 0x53005300530053), 1uLL));
  v17[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v12, v14), 6uLL), 1uLL));
  v17[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v13, 0x24002400240024), v15, 0x53005300530053), 1uLL));
  return sub_2774F1C40(a1, v17);
}

uint16x8_t sub_2774FC370(const char *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  do
  {
    v12 = vld2q_s8(a1);
    a1 += a2;
    v13 = vld2q_s8(a3);
    a3 += a4;
    v7 = (a5 + v6);
    v8 = (a6 + v6);
    v9 = vsubl_u8(*v12.val[0].i8, *v13.val[0].i8);
    v10 = vsubl_high_u8(v12.val[0], v13.val[0]);
    result = vsubl_high_u8(v12.val[1], v13.val[1]);
    *v7 = v9;
    v7[1] = v10;
    *v8 = vsubl_u8(*v12.val[1].i8, *v13.val[1].i8);
    v8[1] = result;
    v6 += 32;
  }

  while (v6 != 512);
  return result;
}

uint16x8_t sub_2774FC3AC(const char *a1, uint64_t a2, const char *a3, uint64_t a4, uint16x8_t *a5, uint16x8_t *a6)
{
  v8 = -2;
  do
  {
    v9 = &a1[a2];
    v13 = vld2_s8(a1);
    v6 = 2 * a2;
    a1 += v6;
    v14 = vld2_s8(v9);
    v10 = &a3[a4];
    v15 = vld2_s8(a3);
    v7 = 2 * a4;
    a3 += v7;
    v16 = vld2_s8(v10);
    v11 = vsubl_u8(v13.val[0], v15.val[0]);
    result = vsubl_u8(v13.val[1], v15.val[1]);
    *a5 = v11;
    a5[1] = vsubl_u8(v14.val[0], v16.val[0]);
    a5 += 2;
    *a6 = result;
    a6[1] = vsubl_u8(v14.val[1], v16.val[1]);
    a6 += 2;
    v8 += 2;
  }

  while (v8 < 6);
  return result;
}

uint16x8_t sub_2774FC3F8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint16x8_t *a5, uint16x8_t *a6)
{
  v6.i64[0] = *(a1 + 2 * a2);
  v7.i64[0] = *a1;
  v8.i64[0] = *(a3 + 2 * a4);
  v9.i64[0] = *a3;
  v7.i64[1] = *(a1 + a2);
  v6.i64[1] = *(a1 + 3 * a2);
  v9.i64[1] = *(a3 + a4);
  v8.i64[1] = *(a3 + 3 * a4);
  v10 = vuzp1q_s8(v7, v6);
  v11 = vuzp2q_s8(v7, v6);
  v12 = vuzp1q_s8(v9, v8);
  v13 = vuzp2q_s8(v9, v8);
  *a5 = vsubl_u8(*v10.i8, *v12.i8);
  a5[1] = vsubl_high_u8(v10, v12);
  result = vsubl_high_u8(v11, v13);
  *a6 = vsubl_u8(*v11.i8, *v13.i8);
  a6[1] = result;
  return result;
}

uint16x8_t *sub_2774FC464(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 512;
  v6 = result + 2;
  v7.i64[0] = 0xFF00FF00FF00FFLL;
  v7.i64[1] = 0xFF00FF00FF00FFLL;
  v8.i64[0] = 0x800000008;
  v8.i64[1] = 0x800000008;
  v9 = 16;
  do
  {
    v11 = *(v5 + 512);
    v10 = *(v5 + 528);
    v13 = *a4;
    v12 = a4[1];
    if (a5)
    {
      v14 = *(v5 + 16);
      v15 = vdupq_laneq_s32(vsubw_s16(v8, *a5), 2);
      v16 = vshlq_s32(vmovl_s16(*v5), v15);
      v17 = vshlq_s32(vmovl_high_s16(*v5), v15);
      v18 = vshlq_s32(vmovl_s16(*v14.i8), v15);
      v19 = vshlq_s32(vmovl_high_s16(v14), v15);
      v20 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v21 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v20), 3uLL), vmulq_s32(v17, v20), 3uLL));
      v10 = vaddq_s16(v10, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v20), 3uLL), vmulq_s32(v19, v20), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v21), 3uLL), vmulq_s32(v17, v21), 3uLL));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v21), 3uLL), vmulq_s32(v19, v21), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 512) = 0uLL;
    *(v5 + 528) = 0uLL;
    v22 = vzip1q_s16(v11, v13);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v23 = vminq_u16(vsqaddq_u16(v6[-1], vzip2q_s16(v11, v13)), v7);
    v24 = vminq_u16(vsqaddq_u16(*v6, vzip1q_s16(v10, v12)), v7);
    v25 = vminq_u16(vsqaddq_u16(v6[1], vzip2q_s16(v10, v12)), v7);
    v6[-2] = vminq_u16(vsqaddq_u16(v6[-2], v22), v7);
    v6[-1] = v23;
    *v6 = v24;
    v6[1] = v25;
    v5 += 32;
    v6 = (v6 + 2 * a2);
    --v9;
  }

  while (v9);
  return result;
}

uint16x8_t *sub_2774FC57C(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 128;
  v6 = 2 * a2;
  v7.i64[0] = 0xFF00FF00FF00FFLL;
  v7.i64[1] = 0xFF00FF00FF00FFLL;
  v8 = result + 1;
  v9.i64[0] = 0x800000008;
  v9.i64[1] = 0x800000008;
  v10 = -2;
  do
  {
    v12 = *(v5 + 128);
    v11 = *(v5 + 144);
    v14 = *a4;
    v13 = a4[1];
    if (a5)
    {
      v15 = *(v5 + 16);
      v16 = vdupq_laneq_s32(vsubw_s16(v9, *a5), 2);
      v17 = vshlq_s32(vmovl_s16(*v5), v16);
      v18 = vshlq_s32(vmovl_high_s16(*v5), v16);
      v19 = vshlq_s32(vmovl_s16(*v15.i8), v16);
      v20 = vshlq_s32(vmovl_high_s16(v15), v16);
      v21 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v22 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v21), 3uLL), vmulq_s32(v18, v21), 3uLL));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v21), 3uLL), vmulq_s32(v20, v21), 3uLL));
      v14 = vaddq_s16(v14, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v22), 3uLL), vmulq_s32(v18, v22), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v22), 3uLL), vmulq_s32(v20, v22), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 128) = 0uLL;
    *(v5 + 144) = 0uLL;
    v23 = vzip1q_s16(v12, v14);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v24 = (v8 + v6);
    v25 = vminq_u16(vsqaddq_u16(*v8, vzip2q_s16(v12, v14)), v7);
    v26 = vminq_u16(vsqaddq_u16(*(&v8[-1] + v6), vzip1q_s16(v11, v13)), v7);
    v27 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), vzip2q_s16(v11, v13)), v7);
    v8[-1] = vminq_u16(vsqaddq_u16(v8[-1], v23), v7);
    *v8 = v25;
    v10 += 2;
    v24[-1] = v26;
    *v24 = v27;
    v5 += 32;
    v8 = (v8 + 4 * a2);
  }

  while (v10 < 6);
  return result;
}

uint16x8_t sub_2774FC6A4(uint16x8_t *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5)
{
  v6 = *a3;
  v5 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  if (a5)
  {
    v9 = a3[-2];
    v10 = a3[-1];
    v11.i64[0] = 0x800000008;
    v11.i64[1] = 0x800000008;
    v12 = vdupq_laneq_s32(vsubw_s16(v11, *a5), 2);
    v13 = vshlq_s32(vmovl_s16(*v9.i8), v12);
    v14 = vshlq_s32(vmovl_high_s16(v9), v12);
    v15 = vshlq_s32(vmovl_s16(*v10.i8), v12);
    v16 = vshlq_s32(vmovl_high_s16(v10), v12);
    v17 = vmovl_s16(vdup_lane_s16(*a5, 0));
    v18 = vmovl_s16(vdup_lane_s16(*a5, 1));
    v6 = vaddq_s16(v6, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v17), 3uLL), vmulq_s32(v14, v17), 3uLL));
    v5 = vaddq_s16(v5, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v17), 3uLL), vmulq_s32(v16, v17), 3uLL));
    v8 = vaddq_s16(v8, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v18), 3uLL), vmulq_s32(v14, v18), 3uLL));
    v7 = vaddq_s16(v7, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v18), 3uLL), vmulq_s32(v16, v18), 3uLL));
    a3[-2] = 0u;
    a3[-1] = 0u;
  }

  *a3 = 0u;
  a3[1] = 0u;
  v19 = vzip1q_s16(v6, v8);
  v20 = vzip2q_s16(v6, v8);
  v21 = vzip1q_s16(v5, v7);
  v22 = vzip2q_s16(v5, v7);
  *a4 = 0u;
  a4[1] = 0u;
  v23 = *(a1 + 6 * a2);
  v24 = vsqaddq_u16(*a1, v19);
  v19.i64[0] = 0xFF00FF00FF00FFLL;
  v19.i64[1] = 0xFF00FF00FF00FFLL;
  v25 = vminq_u16(vsqaddq_u16(*(a1 + 2 * a2), v20), v19);
  v26 = vminq_u16(vsqaddq_u16(*(a1 + 4 * a2), v21), v19);
  *a1 = vminq_u16(v24, v19);
  *(a1 + 2 * a2) = v25;
  result = vminq_u16(vsqaddq_u16(v23, v22), v19);
  *(a1 + 4 * a2) = v26;
  *(a1 + 6 * a2) = result;
  return result;
}

uint16x8_t *sub_2774FC7C0(uint16x8_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v8 = a3;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v43 = 0;
        v44 = a3 + 16;
        do
        {
          v45 = -8;
          v46 = v44;
          do
          {
            v47 = v46[-8];
            v48 = v46[-4];
            v49 = v46[4];
            v50 = vtrn1q_s16(v47, v48);
            v51 = vtrn2q_s16(v47, v48);
            v52 = vtrn1q_s16(*v46, v49);
            v53 = vtrn2q_s16(*v46, v49);
            v46[-8] = vtrn1q_s32(v50, v52);
            v46[-4] = vtrn1q_s32(v51, v53);
            *v46 = vtrn2q_s32(v50, v52);
            v46[4] = vtrn2q_s32(v51, v53);
            v45 += 8;
            ++v46;
          }

          while (v45 < 0x18);
          v44 += 32;
          v54 = v43 >= 0x1C;
          v43 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774EEC1C(a3, *a6 & 0x7FFF);
    }

    v55 = *(a6 + 1);
    if (v55 < 1)
    {
      if (v55 < 0)
      {
        v56 = 0;
        v57 = v7 + 16;
        do
        {
          v58 = -8;
          v59 = v57;
          do
          {
            v60 = v59[-8];
            v61 = v59[-4];
            v62 = v59[4];
            v63 = vtrn1q_s16(v60, v61);
            v64 = vtrn2q_s16(v60, v61);
            v65 = vtrn1q_s16(*v59, v62);
            v66 = vtrn2q_s16(*v59, v62);
            v59[-8] = vtrn1q_s32(v63, v65);
            v59[-4] = vtrn1q_s32(v64, v66);
            *v59 = vtrn2q_s32(v63, v65);
            v59[4] = vtrn2q_s32(v64, v66);
            v58 += 8;
            ++v59;
          }

          while (v58 < 0x18);
          v57 += 32;
          v54 = v56 >= 0x1C;
          v56 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774EEC1C(v7, v55);
    }

    v67 = 0;
    v68 = 6 * a2 + 16;
    v69 = 2 * a2;
    v70 = 4 * a2 + 16;
    v71.i64[0] = 0xFF00FF00FF00FFLL;
    v71.i64[1] = 0xFF00FF00FF00FFLL;
    v72.i64[0] = 0x800000008;
    v72.i64[1] = 0x800000008;
    do
    {
      v73 = 0;
      v74 = -8;
      v75 = v10;
      do
      {
        v76 = &v8[v73];
        v77 = *v8[v73].i8;
        v78 = *v8[v73 + 8].i8;
        v79 = *v8[v73 + 16].i8;
        v80 = *v8[v73 + 24].i8;
        v81 = &v7[v73];
        v82 = *v7[v73].i8;
        v83 = *v7[v73 + 8].i8;
        v84 = *v7[v73 + 16].i8;
        v85 = vtrn1q_s16(v77, v78);
        v86 = vtrn2q_s16(v77, v78);
        v87 = vtrn1q_s16(v79, v80);
        v88 = vtrn2q_s16(v79, v80);
        v89 = *v7[v73 + 24].i8;
        *v76 = 0uLL;
        v76[4] = 0uLL;
        v76[8] = 0uLL;
        v76[12] = 0uLL;
        *v81->i8 = 0uLL;
        *v81[8].i8 = 0uLL;
        *v81[16].i8 = 0uLL;
        *v81[24].i8 = 0uLL;
        v90 = vtrn1q_s32(v85, v87);
        v91 = vtrn2q_s32(v85, v87);
        v92 = vtrn1q_s32(v86, v88);
        v93 = vtrn2q_s32(v86, v88);
        v94 = vtrn1q_s16(v82, v83);
        v95 = vtrn2q_s16(v82, v83);
        v96 = vtrn1q_s16(v84, v89);
        v97 = vtrn2q_s16(v84, v89);
        v98 = vtrn1q_s32(v94, v96);
        v99 = vtrn2q_s32(v94, v96);
        v100 = vtrn1q_s32(v95, v97);
        v101 = vtrn2q_s32(v95, v97);
        if (a5)
        {
          v102 = *a5;
          v103 = v76[-128];
          v104 = v76[-124];
          v76[-128] = 0uLL;
          v76[-124] = 0uLL;
          v105 = vdupq_laneq_s32(vsubw_s16(v72, v102), 2);
          v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
          v107 = vshlq_s32(vmovl_high_s16(v103), v105);
          v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
          v109 = vshlq_s32(vmovl_high_s16(v104), v105);
          v110 = vmovl_s16(vdup_lane_s16(v102, 0));
          v111 = vmovl_s16(vdup_lane_s16(v102, 1));
          v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
          v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
          v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
          v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
          v112 = v76 - 120;
          *v111.i8 = *a5;
          v113 = v76[-120];
          v114 = v76 - 116;
          v115 = *v114;
          *v112 = 0uLL;
          *v114 = 0uLL;
          v116 = vdupq_laneq_s32(vsubw_s16(v72, *v111.i8), 2);
          v117 = vshlq_s32(vmovl_s16(*v113.i8), v116);
          v118 = vshlq_s32(vmovl_high_s16(v113), v116);
          v119 = vshlq_s32(vmovl_s16(*v115.i8), v116);
          v120 = vshlq_s32(vmovl_high_s16(v115), v116);
          v121 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
          v122 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
          v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v121), 3uLL), vmulq_s32(v118, v121), 3uLL), v91);
          v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v122), 3uLL), vmulq_s32(v118, v122), 3uLL), v99);
          v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v121), 3uLL), vmulq_s32(v120, v121), 3uLL), v93);
          v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v122), 3uLL), vmulq_s32(v120, v122), 3uLL), v101);
        }

        v123 = vzip1q_s16(v90, v98);
        v124 = vzip2q_s16(v90, v98);
        v125 = vzip1q_s16(v92, v100);
        v126 = vzip2q_s16(v92, v100);
        v127 = vzip1q_s16(v91, v99);
        v128 = vzip2q_s16(v91, v99);
        v129 = (v75 + v69);
        v130 = (v75 + v70);
        result = (v75 + v68);
        v131 = vminq_u16(vsqaddq_u16(*(v75 + 2 * a2), v125), v71);
        v132 = vminq_u16(vsqaddq_u16(*(v75 + 4 * a2), v127), v71);
        v133 = vminq_u16(vsqaddq_u16(*(v75 + 6 * a2), vzip1q_s16(v93, v101)), v71);
        v134 = vminq_u16(vsqaddq_u16(v75[1], v124), v71);
        v135 = vminq_u16(vsqaddq_u16(*(&v75[1] + v69), v126), v71);
        v136 = vminq_u16(vsqaddq_u16(*(v75 + v70), v128), v71);
        v137 = vsqaddq_u16(*(v75 + v68), vzip2q_s16(v93, v101));
        *v75 = vminq_u16(vsqaddq_u16(*v75, v123), v71);
        *v129 = v131;
        v130[-1] = v132;
        result[-1] = v133;
        v75[1] = v134;
        v129[1] = v135;
        *v130 = v136;
        *result = vminq_u16(v137, v71);
        v74 += 8;
        v73 += 2;
        v75 += 2;
      }

      while (v74 < 0x18);
      v10 = (v10 + 8 * a2);
      v8 += 32;
      v7 += 32;
      v54 = v67 >= 0x1C;
      v67 += 4;
    }

    while (!v54);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 6uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    if (a5)
    {
      v16 = 0;
      v17 = a3 - 256;
      v18.i64[0] = 0x800000008;
      v18.i64[1] = 0x800000008;
      v19.i64[0] = 0xFF00FF00FF00FFLL;
      v19.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = *v17[2].i8;
          v23 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
          v24 = vshlq_s32(vmovl_s16(*v17), v23);
          v25 = vshlq_s32(vmovl_high_s16(*v17->i8), v23);
          v26 = vshlq_s32(vmovl_s16(*v22.i8), v23);
          v27 = vshlq_s32(vmovl_high_s16(v22), v23);
          v28 = vmovl_s16(vdup_lane_s16(*a5, 0));
          v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v28), 3uLL), vmulq_s32(v25, v28), 3uLL);
          v30 = vmovl_s16(vdup_lane_s16(*a5, 1));
          v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v28), 3uLL), vmulq_s32(v27, v28), 3uLL);
          v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v30), 3uLL), vmulq_s32(v25, v30), 3uLL);
          v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v30), 3uLL), vmulq_s32(v27, v30), 3uLL);
          v34 = v21;
          *v17->i8 = 0uLL;
          *v17[2].i8 = 0uLL;
          v17 += 4;
          v35 = vaddq_s16(vzip1q_s16(v29, v32), v15);
          v36 = vaddq_s16(vzip2q_s16(v29, v32), v15);
          v37 = vaddq_s16(vzip1q_s16(v31, v33), v15);
          v38 = &v10[v20];
          v39 = vaddq_s16(vzip2q_s16(v31, v33), v15);
          v40 = vminq_u16(vsqaddq_u16(v38[1], v36), v19);
          v41 = vminq_u16(vsqaddq_u16(v38[2], v37), v19);
          v42 = vsqaddq_u16(v38[3], v39);
          *v38 = vminq_u16(vsqaddq_u16(*v38, v35), v19);
          v38[1] = v40;
          v38[2] = v41;
          v38[3] = vminq_u16(v42, v19);
          v20 = 4;
          v21 = 0;
        }

        while ((v34 & 1) != 0);
        ++v16;
        v10 = (v10 + 2 * a2);
      }

      while (v16 != 32);
    }

    else
    {
      v138 = result + 4;
      v139 = 32;
      v140.i64[0] = 0xFF00FF00FF00FFLL;
      v140.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v141 = vminq_u16(vsqaddq_u16(v138[-3], v15), v140);
        v142 = vminq_u16(vsqaddq_u16(v138[-2], v15), v140);
        v143 = vminq_u16(vsqaddq_u16(v138[-1], v15), v140);
        v138[-4] = vminq_u16(vsqaddq_u16(v138[-4], v15), v140);
        v138[-3] = v141;
        v138[-2] = v142;
        v138[-1] = v143;
        v144 = vminq_u16(vsqaddq_u16(v138[1], v15), v140);
        v145 = vminq_u16(vsqaddq_u16(v138[2], v15), v140);
        v146 = vminq_u16(vsqaddq_u16(v138[3], v15), v140);
        *v138 = vminq_u16(vsqaddq_u16(*v138, v15), v140);
        v138[1] = v144;
        v138[2] = v145;
        v138[3] = v146;
        v138 = (v138 + 2 * a2);
        --v139;
      }

      while (v139);
    }
  }

  return result;
}

int16x4_t *sub_2774FCDC4(int16x4_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v42 = 0;
        v43 = a3;
        do
        {
          v44 = 0;
          v45 = 1;
          do
          {
            v46 = v45;
            v47 = &v43[v44];
            v48 = v47[2];
            v49 = v47[4];
            v50 = v47[6];
            v51 = vtrn1q_s16(*v47, v48);
            v52 = vtrn2q_s16(*v47, v48);
            v53 = vtrn1q_s16(v49, v50);
            v54 = vtrn2q_s16(v49, v50);
            *v47 = vtrn1q_s32(v51, v53);
            v47[2] = vtrn1q_s32(v52, v54);
            v47[4] = vtrn2q_s32(v51, v53);
            v47[6] = vtrn2q_s32(v52, v54);
            v44 = 2;
            v45 = 0;
          }

          while ((v46 & 1) != 0);
          v43 += 16;
          v55 = v42 >= 0xC;
          v42 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774EFEA4(a3, *a6 & 0x7FFF);
    }

    v56 = *(a6 + 1);
    if (v56 < 1)
    {
      if (v56 < 0)
      {
        v57 = 0;
        v58 = v7;
        do
        {
          v59 = 0;
          v60 = 1;
          do
          {
            v61 = v60;
            v62 = &v58[v59];
            v63 = v62[2];
            v64 = v62[4];
            v65 = v62[6];
            v66 = vtrn1q_s16(*v62, v63);
            v67 = vtrn2q_s16(*v62, v63);
            v68 = vtrn1q_s16(v64, v65);
            v69 = vtrn2q_s16(v64, v65);
            *v62 = vtrn1q_s32(v66, v68);
            v62[2] = vtrn1q_s32(v67, v69);
            v62[4] = vtrn2q_s32(v66, v68);
            v62[6] = vtrn2q_s32(v67, v69);
            v59 = 8;
            v60 = 0;
          }

          while ((v61 & 1) != 0);
          v58 += 64;
          v55 = v57 >= 0xC;
          v57 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774EFEA4(v7, v56);
    }

    v70 = 4 * a2;
    v71 = 6 * a2;
    v72 = &a3[-64];
    v73 = &v10[6];
    v74 = 2 * a2;
    v75 = -4;
    v76.i64[0] = 0xFF00FF00FF00FFLL;
    v76.i64[1] = 0xFF00FF00FF00FFLL;
    v77.i64[0] = 0x800000008;
    v77.i64[1] = 0x800000008;
    do
    {
      v78 = v72[32];
      v79 = v72[34];
      v80 = v72[36];
      v81 = v72[38];
      v82 = *v7;
      v83 = *(v7 + 2);
      v84 = *(v7 + 4);
      v85 = vtrn1q_s16(v78, v79);
      v86 = vtrn2q_s16(v78, v79);
      v87 = vtrn1q_s16(v80, v81);
      v88 = vtrn2q_s16(v80, v81);
      v89 = *(v7 + 6);
      v72[32] = 0uLL;
      v72[34] = 0uLL;
      v72[36] = 0uLL;
      v72[38] = 0uLL;
      *v7 = 0uLL;
      *(v7 + 2) = 0uLL;
      v90 = vtrn1q_s32(v85, v87);
      v91 = vtrn2q_s32(v85, v87);
      v92 = vtrn1q_s32(v86, v88);
      v93 = vtrn2q_s32(v86, v88);
      v94 = vtrn1q_s16(v82, v83);
      v95 = vtrn2q_s16(v82, v83);
      v96 = vtrn1q_s16(v84, v89);
      v97 = vtrn2q_s16(v84, v89);
      v98 = vtrn1q_s32(v94, v96);
      v99 = vtrn2q_s32(v94, v96);
      *(v7 + 4) = 0uLL;
      v100 = vtrn1q_s32(v95, v97);
      v101 = vtrn2q_s32(v95, v97);
      *(v7 + 6) = 0uLL;
      if (a5)
      {
        v102 = *a5;
        v103 = *v72;
        v104 = v72[2];
        *v72 = 0uLL;
        v72[2] = 0uLL;
        v105 = vdupq_laneq_s32(vsubw_s16(v77, v102), 2);
        v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
        v107 = vshlq_s32(vmovl_high_s16(v103), v105);
        v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
        v109 = vshlq_s32(vmovl_high_s16(v104), v105);
        v110 = vmovl_s16(vdup_lane_s16(v102, 0));
        v111 = vmovl_s16(vdup_lane_s16(v102, 1));
        v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
        v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
        v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
        v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
        *v111.i8 = *a5;
        v112 = v72[4];
        v113 = v72[6];
        v72[4] = 0uLL;
        v72[6] = 0uLL;
        v114 = vdupq_laneq_s32(vsubw_s16(v77, *v111.i8), 2);
        v115 = vshlq_s32(vmovl_s16(*v112.i8), v114);
        v116 = vshlq_s32(vmovl_high_s16(v112), v114);
        v117 = vshlq_s32(vmovl_s16(*v113.i8), v114);
        v118 = vshlq_s32(vmovl_high_s16(v113), v114);
        v119 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
        v120 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
        v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v119), 3uLL), vmulq_s32(v116, v119), 3uLL), v91);
        v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v120), 3uLL), vmulq_s32(v116, v120), 3uLL), v99);
        v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v119), 3uLL), vmulq_s32(v118, v119), 3uLL), v93);
        v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v120), 3uLL), vmulq_s32(v118, v120), 3uLL), v101);
      }

      v121 = vzip1q_s16(v90, v98);
      v122 = vzip2q_s16(v90, v98);
      v123 = vzip1q_s16(v92, v100);
      v124 = vzip2q_s16(v92, v100);
      v125 = vzip1q_s16(v91, v99);
      v126 = vzip2q_s16(v91, v99);
      v127 = (v73 + v74);
      v128 = (v73 + v70);
      v129 = (v73 + v71);
      v130 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v74), v123), v76);
      v131 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v70), v125), v76);
      v132 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v71), vzip1q_s16(v93, v101)), v76);
      v133 = vminq_u16(vsqaddq_u16(v73[-2], v122), v76);
      v134 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v74), v124), v76);
      v135 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v70), v126), v76);
      v136 = vsqaddq_u16(*(&v73[-2] + v71), vzip2q_s16(v93, v101));
      v73[-3] = vminq_u16(vsqaddq_u16(v73[-3], v121), v76);
      v127[-3] = v130;
      v128[-3] = v131;
      v129[-3] = v132;
      v73[-2] = v133;
      v127[-2] = v134;
      v128[-2] = v135;
      v129[-2] = vminq_u16(v136, v76);
      v137 = v72[33];
      v138 = v72[35];
      v139 = v72[37];
      v140 = v72[39];
      v141 = *(v7 + 1);
      v142 = *(v7 + 3);
      v143 = *(v7 + 5);
      v144 = vtrn1q_s16(v137, v138);
      v145 = vtrn2q_s16(v137, v138);
      v146 = vtrn1q_s16(v139, v140);
      v147 = vtrn2q_s16(v139, v140);
      v148 = *(v7 + 7);
      v72[33] = 0uLL;
      v72[35] = 0uLL;
      v72[37] = 0uLL;
      v72[39] = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 3) = 0uLL;
      *(v7 + 5) = 0uLL;
      *(v7 + 7) = 0uLL;
      v149 = vtrn1q_s32(v144, v146);
      v150 = vtrn2q_s32(v144, v146);
      v151 = vtrn1q_s32(v145, v147);
      v152 = vtrn2q_s32(v145, v147);
      v153 = vtrn1q_s16(v141, v142);
      v154 = vtrn2q_s16(v141, v142);
      v155 = vtrn1q_s16(v143, v148);
      v156 = vtrn2q_s16(v143, v148);
      v157 = vtrn1q_s32(v153, v155);
      v158 = vtrn2q_s32(v153, v155);
      v159 = vtrn1q_s32(v154, v156);
      v160 = vtrn2q_s32(v154, v156);
      if (a5)
      {
        v161 = *a5;
        v162 = v72[1];
        v163 = v72[3];
        v72[1] = 0uLL;
        v72[3] = 0uLL;
        v164 = vdupq_laneq_s32(vsubw_s16(v77, v161), 2);
        v165 = vshlq_s32(vmovl_s16(*v162.i8), v164);
        v166 = vshlq_s32(vmovl_high_s16(v162), v164);
        v167 = vshlq_s32(vmovl_s16(*v163.i8), v164);
        v168 = vshlq_s32(vmovl_high_s16(v163), v164);
        v169 = vmovl_s16(vdup_lane_s16(v161, 0));
        v170 = vmovl_s16(vdup_lane_s16(v161, 1));
        v149 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v169), 3uLL), vmulq_s32(v166, v169), 3uLL), v149);
        v157 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v170), 3uLL), vmulq_s32(v166, v170), 3uLL), v157);
        v151 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v169), 3uLL), vmulq_s32(v168, v169), 3uLL), v151);
        v159 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v170), 3uLL), vmulq_s32(v168, v170), 3uLL), v159);
        *v170.i8 = *a5;
        v171 = v72[5];
        v172 = v72[7];
        v72[5] = 0uLL;
        v72[7] = 0uLL;
        v173 = vdupq_laneq_s32(vsubw_s16(v77, *v170.i8), 2);
        v174 = vshlq_s32(vmovl_s16(*v171.i8), v173);
        v175 = vshlq_s32(vmovl_high_s16(v171), v173);
        v176 = vshlq_s32(vmovl_s16(*v172.i8), v173);
        v177 = vshlq_s32(vmovl_high_s16(v172), v173);
        v178 = vmovl_s16(vdup_lane_s16(*v170.i8, 0));
        v179 = vmovl_s16(vdup_lane_s16(*v170.i8, 1));
        v150 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v178), 3uLL), vmulq_s32(v175, v178), 3uLL), v150);
        v158 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v179), 3uLL), vmulq_s32(v175, v179), 3uLL), v158);
        v152 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v178), 3uLL), vmulq_s32(v177, v178), 3uLL), v152);
        v160 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v179), 3uLL), vmulq_s32(v177, v179), 3uLL), v160);
      }

      v180 = vzip1q_s16(v149, v157);
      v181 = vzip2q_s16(v149, v157);
      v182 = vzip1q_s16(v151, v159);
      v183 = vzip2q_s16(v151, v159);
      v184 = vzip1q_s16(v150, v158);
      v185 = vzip2q_s16(v150, v158);
      v186 = vminq_u16(vsqaddq_u16(v127[-1], v182), v76);
      v187 = vminq_u16(vsqaddq_u16(v128[-1], v184), v76);
      v188 = vminq_u16(vsqaddq_u16(v129[-1], vzip1q_s16(v152, v160)), v76);
      v189 = vminq_u16(vsqaddq_u16(*v73, v181), v76);
      v190 = vminq_u16(vsqaddq_u16(*v127, v183), v76);
      v191 = vminq_u16(vsqaddq_u16(*v128, v185), v76);
      v192 = vsqaddq_u16(*v129, vzip2q_s16(v152, v160));
      v73[-1] = vminq_u16(vsqaddq_u16(v73[-1], v180), v76);
      v127[-1] = v186;
      v128[-1] = v187;
      v129[-1] = v188;
      *v73 = v189;
      *v127 = v190;
      *v128 = v191;
      *v129 = vminq_u16(v192, v76);
      v72 += 8;
      v75 += 4;
      v73 = (v73 + 8 * a2);
      v7 += 64;
    }

    while (v75 < 0xC);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 6uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    v16 = &result[4];
    v17 = 2 * a2;
    if (a5)
    {
      v18 = 0x1FFFFFFFFFFFFFC0;
      v19.i64[0] = 0x800000008;
      v19.i64[1] = 0x800000008;
      v20.i64[0] = 0xFF00FF00FF00FFLL;
      v20.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v21 = &a3[v18];
        v22 = *a3[v18].i8;
        v23 = *a3[v18 + 2].i8;
        v24 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v25 = vshlq_s32(vmovl_s16(*v22.i8), v24);
        v26 = vshlq_s32(vmovl_high_s16(v22), v24);
        v27 = vshlq_s32(vmovl_s16(*v23.i8), v24);
        v28 = vshlq_s32(vmovl_high_s16(v23), v24);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v29), 3uLL), vmulq_s32(v28, v29), 3uLL);
        v32 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v32), 3uLL), vmulq_s32(v26, v32), 3uLL);
        v34 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v32), 3uLL), vmulq_s32(v28, v32), 3uLL);
        *v21->i8 = 0uLL;
        *v21[2].i8 = 0uLL;
        v35 = vaddq_s16(vzip1q_s16(v30, v33), v15);
        v36 = vaddq_s16(vzip2q_s16(v30, v33), v15);
        v37 = vaddq_s16(vzip1q_s16(v31, v34), v15);
        v38 = vaddq_s16(vzip2q_s16(v31, v34), v15);
        v39 = vminq_u16(vsqaddq_u16(v16[-1], v36), v20);
        v40 = vminq_u16(vsqaddq_u16(*v16, v37), v20);
        v41 = vsqaddq_u16(v16[1], v38);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v35), v20);
        v16[-1] = v39;
        *v16 = v40;
        v16[1] = vminq_u16(v41, v20);
        v16 = (v16 + v17);
        v18 += 4;
      }

      while ((v18 * 8));
    }

    else
    {
      v193 = 16;
      v194.i64[0] = 0xFF00FF00FF00FFLL;
      v194.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v195 = vminq_u16(vsqaddq_u16(v16[-1], v15), v194);
        v196 = vminq_u16(vsqaddq_u16(*v16, v15), v194);
        v197 = vminq_u16(vsqaddq_u16(v16[1], v15), v194);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v15), v194);
        v16[-1] = v195;
        *v16 = v196;
        v16[1] = v197;
        v16 = (v16 + v17);
        --v193;
      }

      while (v193);
    }
  }

  return result;
}

int16x4_t *sub_2774FD590(int16x4_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5, int *a6)
{
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v41 = 1;
        v42 = a3;
        do
        {
          v43 = v41;
          v44 = v42[1];
          v45 = v42[2];
          v46 = v42[3];
          v47 = vtrn1q_s16(*v42, v44);
          v48 = vtrn2q_s16(*v42, v44);
          v49 = vtrn1q_s16(v45, v46);
          v50 = vtrn2q_s16(v45, v46);
          *v42 = vtrn1q_s32(v47, v49);
          v42[1] = vtrn1q_s32(v48, v50);
          v42[2] = vtrn2q_s32(v47, v49);
          v42[3] = vtrn2q_s32(v48, v50);
          v42 += 4;
          v41 = 0;
        }

        while ((v43 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F0258(a3, *a6 & 0x7FFF);
    }

    v51 = *(a6 + 1);
    if (v51 < 1)
    {
      if (v51 < 0)
      {
        v52 = 1;
        v53 = a4;
        do
        {
          v54 = v52;
          v55 = v53[1];
          v56 = v53[2];
          v57 = v53[3];
          v58 = vtrn1q_s16(*v53, v55);
          v59 = vtrn2q_s16(*v53, v55);
          v60 = vtrn1q_s16(v56, v57);
          v61 = vtrn2q_s16(v56, v57);
          *v53 = vtrn1q_s32(v58, v60);
          v53[1] = vtrn1q_s32(v59, v61);
          v53[2] = vtrn2q_s32(v58, v60);
          v53[3] = vtrn2q_s32(v59, v61);
          v53 += 4;
          v52 = 0;
        }

        while ((v54 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F0258(a4, v51);
    }

    v62 = (v10 + 2 * a2);
    v63 = (v10 + 4 * a2);
    v64 = (v10 + 6 * a2);
    v65 = a3[1];
    v66 = a3[2];
    v67 = a3[3];
    v68 = *a4;
    v69 = a4[1];
    v70 = vtrn1q_s16(*a3, v65);
    v71 = vtrn2q_s16(*a3, v65);
    v72 = vtrn1q_s16(v66, v67);
    v73 = vtrn2q_s16(v66, v67);
    v74 = a4[2];
    v75 = a4[3];
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    v76 = vtrn1q_s32(v70, v72);
    v77 = vtrn2q_s32(v70, v72);
    v78 = vtrn1q_s32(v71, v73);
    v79 = vtrn2q_s32(v71, v73);
    v80 = vtrn1q_s16(v68, v69);
    v81 = vtrn2q_s16(v68, v69);
    v82 = vtrn1q_s16(v74, v75);
    v83 = vtrn2q_s16(v74, v75);
    v84 = vtrn1q_s32(v80, v82);
    v85 = vtrn2q_s32(v80, v82);
    v86 = vtrn1q_s32(v81, v83);
    v87 = vtrn2q_s32(v81, v83);
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    if (a5)
    {
      v88 = a3[-8];
      v89 = a3[-7];
      v90.i64[0] = 0x800000008;
      v90.i64[1] = 0x800000008;
      v91 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v92 = vshlq_s32(vmovl_s16(*v88.i8), v91);
      v93 = vshlq_s32(vmovl_high_s16(v88), v91);
      v94 = vshlq_s32(vmovl_s16(*v89.i8), v91);
      v95 = vshlq_s32(vmovl_high_s16(v89), v91);
      v96 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v97 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-8] = 0uLL;
      a3[-7] = 0uLL;
      v76 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v96), 3uLL), vmulq_s32(v93, v96), 3uLL), v76);
      v84 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v97), 3uLL), vmulq_s32(v93, v97), 3uLL), v84);
      v78 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v96), 3uLL), vmulq_s32(v95, v96), 3uLL), v78);
      v86 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v97), 3uLL), vmulq_s32(v95, v97), 3uLL), v86);
      v98 = a3[-6];
      v99 = a3[-5];
      v100 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v101 = vshlq_s32(vmovl_s16(*v98.i8), v100);
      v102 = vshlq_s32(vmovl_high_s16(v98), v100);
      v103 = vshlq_s32(vmovl_s16(*v99.i8), v100);
      v104 = vshlq_s32(vmovl_high_s16(v99), v100);
      v105 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v106 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-6] = 0uLL;
      a3[-5] = 0uLL;
      v77 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v105), 3uLL), vmulq_s32(v102, v105), 3uLL), v77);
      v85 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v106), 3uLL), vmulq_s32(v102, v106), 3uLL), v85);
      v79 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v105), 3uLL), vmulq_s32(v104, v105), 3uLL), v79);
      v87 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v106), 3uLL), vmulq_s32(v104, v106), 3uLL), v87);
    }

    v107 = vzip1q_s16(v76, v84);
    v108 = vzip2q_s16(v76, v84);
    v109 = vzip1q_s16(v78, v86);
    v110 = vzip2q_s16(v78, v86);
    v111 = vzip1q_s16(v77, v85);
    v112 = vzip2q_s16(v77, v85);
    v113 = vzip1q_s16(v79, v87);
    v114 = vzip2q_s16(v79, v87);
    v115.i64[0] = 0xFF00FF00FF00FFLL;
    v115.i64[1] = 0xFF00FF00FF00FFLL;
    v116 = vminq_u16(vsqaddq_u16(*v62, v109), v115);
    v117 = vminq_u16(vsqaddq_u16(*v63, v111), v115);
    v118 = vminq_u16(vsqaddq_u16(*v64, v113), v115);
    v119 = vminq_u16(vsqaddq_u16(v10[1], v108), v115);
    v120 = vminq_u16(vsqaddq_u16(v62[1], v110), v115);
    v121 = vminq_u16(vsqaddq_u16(v63[1], v112), v115);
    v122 = vsqaddq_u16(v64[1], v114);
    *v10 = vminq_u16(vsqaddq_u16(*v10, v107), v115);
    *v62 = v116;
    *v63 = v117;
    *v64 = v118;
    v10[1] = v119;
    v62[1] = v120;
    v63[1] = v121;
    v64[1] = vminq_u16(v122, v115);
    v123 = a3[4];
    v124 = a3[5];
    v125 = a3[6];
    v126 = a3[7];
    v127 = a4[4];
    v128 = a4[5];
    v129 = vtrn1q_s16(v123, v124);
    v130 = vtrn2q_s16(v123, v124);
    v131 = vtrn1q_s16(v125, v126);
    v132 = vtrn2q_s16(v125, v126);
    v133 = a4[6];
    v134 = a4[7];
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    v135 = vtrn1q_s32(v129, v131);
    v136 = vtrn2q_s32(v129, v131);
    v137 = vtrn1q_s32(v130, v132);
    v138 = vtrn2q_s32(v130, v132);
    v139 = vtrn1q_s16(v127, v128);
    v140 = vtrn2q_s16(v127, v128);
    v141 = vtrn1q_s16(v133, v134);
    v142 = vtrn2q_s16(v133, v134);
    v143 = vtrn1q_s32(v139, v141);
    v144 = vtrn2q_s32(v139, v141);
    v145 = vtrn1q_s32(v140, v142);
    v146 = vtrn2q_s32(v140, v142);
    a4[6] = 0uLL;
    a4[7] = 0uLL;
    a4[4] = 0uLL;
    a4[5] = 0uLL;
    if (a5)
    {
      v147 = a3[-4];
      v148 = a3[-3];
      v149.i64[0] = 0x800000008;
      v149.i64[1] = 0x800000008;
      v150 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v151 = vshlq_s32(vmovl_s16(*v147.i8), v150);
      v152 = vshlq_s32(vmovl_high_s16(v147), v150);
      v153 = vshlq_s32(vmovl_s16(*v148.i8), v150);
      v154 = vshlq_s32(vmovl_high_s16(v148), v150);
      v155 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v156 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-4] = 0u;
      a3[-3] = 0u;
      v135 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v155), 3uLL), vmulq_s32(v152, v155), 3uLL), v135);
      v143 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v156), 3uLL), vmulq_s32(v152, v156), 3uLL), v143);
      v137 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v155), 3uLL), vmulq_s32(v154, v155), 3uLL), v137);
      v145 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v156), 3uLL), vmulq_s32(v154, v156), 3uLL), v145);
      v157 = a3[-2];
      v158 = a3[-1];
      v159 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v160 = vshlq_s32(vmovl_s16(*v157.i8), v159);
      v161 = vshlq_s32(vmovl_high_s16(v157), v159);
      v162 = vshlq_s32(vmovl_s16(*v158.i8), v159);
      v163 = vshlq_s32(vmovl_high_s16(v158), v159);
      v164 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v165 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-2] = 0u;
      a3[-1] = 0u;
      v136 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v164), 3uLL), vmulq_s32(v161, v164), 3uLL), v136);
      v144 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v165), 3uLL), vmulq_s32(v161, v165), 3uLL), v144);
      v138 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v164), 3uLL), vmulq_s32(v163, v164), 3uLL), v138);
      v146 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v165), 3uLL), vmulq_s32(v163, v165), 3uLL), v146);
    }

    v166 = (v10 + 8 * a2);
    v167 = (v166 + 6 * a2);
    v168 = (v166 + 4 * a2);
    v169 = (v166 + 2 * a2);
    v170 = vzip1q_s16(v135, v143);
    v171 = vzip2q_s16(v135, v143);
    v172 = vzip1q_s16(v137, v145);
    v173 = vzip2q_s16(v137, v145);
    v174 = vzip1q_s16(v136, v144);
    v175 = vzip2q_s16(v136, v144);
    v176 = vzip1q_s16(v138, v146);
    v177 = vzip2q_s16(v138, v146);
    v178 = vminq_u16(vsqaddq_u16(*v169, v172), v115);
    v179 = vminq_u16(vsqaddq_u16(*v168, v174), v115);
    v180 = vminq_u16(vsqaddq_u16(*v167, v176), v115);
    v181 = vminq_u16(vsqaddq_u16(v166[1], v171), v115);
    v182 = vminq_u16(vsqaddq_u16(v169[1], v173), v115);
    v183 = vminq_u16(vsqaddq_u16(v168[1], v175), v115);
    v184 = vsqaddq_u16(v167[1], v177);
    *v166 = vminq_u16(vsqaddq_u16(*v166, v170), v115);
    *v169 = v178;
    *v168 = v179;
    *v167 = v180;
    v166[1] = v181;
    v169[1] = v182;
    v168[1] = v183;
    v167[1] = vminq_u16(v184, v115);
  }

  else
  {
    v13 = vld1q_dup_s16(a3->i16);
    v14 = vld1q_dup_s16(a4->i16);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 6uLL);
    a3->i16[0] = 0;
    a4->i16[0] = 0;
    if (a5)
    {
      v16 = a3 - 8;
      v17 = 2 * a2;
      v18 = -2;
      v19.i64[0] = 0x800000008;
      v19.i64[1] = 0x800000008;
      v20.i64[0] = 0xFF00FF00FF00FFLL;
      v20.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v21 = v16[1];
        v22 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v23 = vshlq_s32(vmovl_s16(*v16->i8), v22);
        v24 = vshlq_s32(vmovl_high_s16(*v16), v22);
        v25 = vshlq_s32(vmovl_s16(*v21.i8), v22);
        v26 = vshlq_s32(vmovl_high_s16(v21), v22);
        v27 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v27), 3uLL), vmulq_s32(v24, v27), 3uLL);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v27), 3uLL), vmulq_s32(v26, v27), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v29), 3uLL), vmulq_s32(v24, v29), 3uLL);
        v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16 += 2;
        v33 = vaddq_s16(vzip1q_s16(v28, v31), v15);
        v34 = vzip2q_s16(v28, v31);
        v35 = vaddq_s16(vzip1q_s16(v30, v32), v15);
        v36 = (v10 + v17);
        v37 = vaddq_s16(vzip2q_s16(v30, v32), v15);
        v38 = vminq_u16(vsqaddq_u16(v10[1], vaddq_s16(v34, v15)), v20);
        v39 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v35), v20);
        v40 = vminq_u16(vsqaddq_u16(*(&v10[1] + v17), v37), v20);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v33), v20);
        v10[1] = v38;
        *v36 = v39;
        v36[1] = v40;
        v10 = (v10 + 4 * a2);
        v18 += 2;
      }

      while (v18 < 6);
    }

    else
    {
      v185 = 2 * a2;
      v186 = -2;
      v187.i64[0] = 0xFF00FF00FF00FFLL;
      v187.i64[1] = 0xFF00FF00FF00FFLL;
      do
      {
        v188 = (v10 + v185);
        v189 = vminq_u16(vsqaddq_u16(v10[1], v15), v187);
        v190 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v15), v187);
        v191 = vminq_u16(vsqaddq_u16(*(&v10[1] + v185), v15), v187);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v15), v187);
        v10[1] = v189;
        *v188 = v190;
        v188[1] = v191;
        v10 = (v10 + 4 * a2);
        v186 += 2;
      }

      while (v186 < 6);
    }
  }

  return result;
}

double sub_2774FDCA0(uint16x8_t *a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x4_t *a5, __int16 *a6)
{
  v12 = *a6;
  if (v12 >= 1)
  {
    sub_2774F0480(a3, v12);
  }

  v13 = a6[1];
  if (v13 >= 1)
  {
    sub_2774F0480(a4, v13);
  }

  *&result = sub_2774FC6A4(a1, a2, a3, a4, a5).u64[0];
  return result;
}

uint16x8_t *sub_2774FDD30(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 512;
  v6 = result + 2;
  v7.i64[0] = 0xFE00FE00FE00FE00;
  v7.i64[1] = 0xFE00FE00FE00FE00;
  v8.i64[0] = 0x900000009;
  v8.i64[1] = 0x900000009;
  v9 = 16;
  do
  {
    v11 = *(v5 + 512);
    v10 = *(v5 + 528);
    v13 = *a4;
    v12 = a4[1];
    if (a5)
    {
      v14 = *(v5 + 16);
      v15 = vdupq_laneq_s32(vsubw_s16(v8, *a5), 2);
      v16 = vshlq_s32(vmovl_s16(*v5), v15);
      v17 = vshlq_s32(vmovl_high_s16(*v5), v15);
      v18 = vshlq_s32(vmovl_s16(*v14.i8), v15);
      v19 = vshlq_s32(vmovl_high_s16(v14), v15);
      v20 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v21 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v20), 3uLL), vmulq_s32(v17, v20), 3uLL));
      v10 = vaddq_s16(v10, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v20), 3uLL), vmulq_s32(v19, v20), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v21), 3uLL), vmulq_s32(v17, v21), 3uLL));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v21), 3uLL), vmulq_s32(v19, v21), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 512) = 0uLL;
    *(v5 + 528) = 0uLL;
    v22 = vzip1q_s16(v11, v13);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v23 = vminq_u16(vsqaddq_u16(v6[-1], vzip2q_s16(v11, v13)), v7);
    v24 = vminq_u16(vsqaddq_u16(*v6, vzip1q_s16(v10, v12)), v7);
    v25 = vminq_u16(vsqaddq_u16(v6[1], vzip2q_s16(v10, v12)), v7);
    v6[-2] = vminq_u16(vsqaddq_u16(v6[-2], v22), v7);
    v6[-1] = v23;
    *v6 = v24;
    v6[1] = v25;
    v5 += 32;
    v6 = (v6 + 2 * a2);
    --v9;
  }

  while (v9);
  return result;
}

uint16x8_t *sub_2774FDE48(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 128;
  v6 = 2 * a2;
  v7.i64[0] = 0xFE00FE00FE00FE00;
  v7.i64[1] = 0xFE00FE00FE00FE00;
  v8 = result + 1;
  v9.i64[0] = 0x900000009;
  v9.i64[1] = 0x900000009;
  v10 = -2;
  do
  {
    v12 = *(v5 + 128);
    v11 = *(v5 + 144);
    v14 = *a4;
    v13 = a4[1];
    if (a5)
    {
      v15 = *(v5 + 16);
      v16 = vdupq_laneq_s32(vsubw_s16(v9, *a5), 2);
      v17 = vshlq_s32(vmovl_s16(*v5), v16);
      v18 = vshlq_s32(vmovl_high_s16(*v5), v16);
      v19 = vshlq_s32(vmovl_s16(*v15.i8), v16);
      v20 = vshlq_s32(vmovl_high_s16(v15), v16);
      v21 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v22 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v21), 3uLL), vmulq_s32(v18, v21), 3uLL));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v21), 3uLL), vmulq_s32(v20, v21), 3uLL));
      v14 = vaddq_s16(v14, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v22), 3uLL), vmulq_s32(v18, v22), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v22), 3uLL), vmulq_s32(v20, v22), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 128) = 0uLL;
    *(v5 + 144) = 0uLL;
    v23 = vzip1q_s16(v12, v14);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v24 = (v8 + v6);
    v25 = vminq_u16(vsqaddq_u16(*v8, vzip2q_s16(v12, v14)), v7);
    v26 = vminq_u16(vsqaddq_u16(*(&v8[-1] + v6), vzip1q_s16(v11, v13)), v7);
    v27 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), vzip2q_s16(v11, v13)), v7);
    v8[-1] = vminq_u16(vsqaddq_u16(v8[-1], v23), v7);
    *v8 = v25;
    v10 += 2;
    v24[-1] = v26;
    *v24 = v27;
    v5 += 32;
    v8 = (v8 + 4 * a2);
  }

  while (v10 < 6);
  return result;
}

uint16x8_t sub_2774FDF70(uint16x8_t *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5)
{
  v6 = *a3;
  v5 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  if (a5)
  {
    v9 = a3[-2];
    v10 = a3[-1];
    v11.i64[0] = 0x900000009;
    v11.i64[1] = 0x900000009;
    v12 = vdupq_laneq_s32(vsubw_s16(v11, *a5), 2);
    v13 = vshlq_s32(vmovl_s16(*v9.i8), v12);
    v14 = vshlq_s32(vmovl_high_s16(v9), v12);
    v15 = vshlq_s32(vmovl_s16(*v10.i8), v12);
    v16 = vshlq_s32(vmovl_high_s16(v10), v12);
    v17 = vmovl_s16(vdup_lane_s16(*a5, 0));
    v18 = vmovl_s16(vdup_lane_s16(*a5, 1));
    v6 = vaddq_s16(v6, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v17), 3uLL), vmulq_s32(v14, v17), 3uLL));
    v5 = vaddq_s16(v5, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v17), 3uLL), vmulq_s32(v16, v17), 3uLL));
    v8 = vaddq_s16(v8, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v18), 3uLL), vmulq_s32(v14, v18), 3uLL));
    v7 = vaddq_s16(v7, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v18), 3uLL), vmulq_s32(v16, v18), 3uLL));
    a3[-2] = 0u;
    a3[-1] = 0u;
  }

  *a3 = 0u;
  a3[1] = 0u;
  v19 = vzip1q_s16(v6, v8);
  v20 = vzip2q_s16(v6, v8);
  v21 = vzip1q_s16(v5, v7);
  v22 = vzip2q_s16(v5, v7);
  *a4 = 0u;
  a4[1] = 0u;
  v23 = *(a1 + 6 * a2);
  v24 = vsqaddq_u16(*a1, v19);
  v19.i64[0] = 0xFE00FE00FE00FE00;
  v19.i64[1] = 0xFE00FE00FE00FE00;
  v25 = vminq_u16(vsqaddq_u16(*(a1 + 2 * a2), v20), v19);
  v26 = vminq_u16(vsqaddq_u16(*(a1 + 4 * a2), v21), v19);
  *a1 = vminq_u16(v24, v19);
  *(a1 + 2 * a2) = v25;
  result = vminq_u16(vsqaddq_u16(v23, v22), v19);
  *(a1 + 4 * a2) = v26;
  *(a1 + 6 * a2) = result;
  return result;
}

uint16x8_t *sub_2774FE08C(uint16x8_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v8 = a3;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v43 = 0;
        v44 = a3 + 16;
        do
        {
          v45 = -8;
          v46 = v44;
          do
          {
            v47 = v46[-8];
            v48 = v46[-4];
            v49 = v46[4];
            v50 = vtrn1q_s16(v47, v48);
            v51 = vtrn2q_s16(v47, v48);
            v52 = vtrn1q_s16(*v46, v49);
            v53 = vtrn2q_s16(*v46, v49);
            v46[-8] = vtrn1q_s32(v50, v52);
            v46[-4] = vtrn1q_s32(v51, v53);
            *v46 = vtrn2q_s32(v50, v52);
            v46[4] = vtrn2q_s32(v51, v53);
            v45 += 8;
            ++v46;
          }

          while (v45 < 0x18);
          v44 += 32;
          v54 = v43 >= 0x1C;
          v43 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F35C8(a3, *a6 & 0x7FFF);
    }

    v55 = *(a6 + 1);
    if (v55 < 1)
    {
      if (v55 < 0)
      {
        v56 = 0;
        v57 = v7 + 16;
        do
        {
          v58 = -8;
          v59 = v57;
          do
          {
            v60 = v59[-8];
            v61 = v59[-4];
            v62 = v59[4];
            v63 = vtrn1q_s16(v60, v61);
            v64 = vtrn2q_s16(v60, v61);
            v65 = vtrn1q_s16(*v59, v62);
            v66 = vtrn2q_s16(*v59, v62);
            v59[-8] = vtrn1q_s32(v63, v65);
            v59[-4] = vtrn1q_s32(v64, v66);
            *v59 = vtrn2q_s32(v63, v65);
            v59[4] = vtrn2q_s32(v64, v66);
            v58 += 8;
            ++v59;
          }

          while (v58 < 0x18);
          v57 += 32;
          v54 = v56 >= 0x1C;
          v56 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F35C8(v7, v55);
    }

    v67 = 0;
    v68 = 6 * a2 + 16;
    v69 = 2 * a2;
    v70 = 4 * a2 + 16;
    v71.i64[0] = 0xFE00FE00FE00FE00;
    v71.i64[1] = 0xFE00FE00FE00FE00;
    v72.i64[0] = 0x900000009;
    v72.i64[1] = 0x900000009;
    do
    {
      v73 = 0;
      v74 = -8;
      v75 = v10;
      do
      {
        v76 = &v8[v73];
        v77 = *v8[v73].i8;
        v78 = *v8[v73 + 8].i8;
        v79 = *v8[v73 + 16].i8;
        v80 = *v8[v73 + 24].i8;
        v81 = &v7[v73];
        v82 = *v7[v73].i8;
        v83 = *v7[v73 + 8].i8;
        v84 = *v7[v73 + 16].i8;
        v85 = vtrn1q_s16(v77, v78);
        v86 = vtrn2q_s16(v77, v78);
        v87 = vtrn1q_s16(v79, v80);
        v88 = vtrn2q_s16(v79, v80);
        v89 = *v7[v73 + 24].i8;
        *v76 = 0uLL;
        v76[4] = 0uLL;
        v76[8] = 0uLL;
        v76[12] = 0uLL;
        *v81->i8 = 0uLL;
        *v81[8].i8 = 0uLL;
        *v81[16].i8 = 0uLL;
        *v81[24].i8 = 0uLL;
        v90 = vtrn1q_s32(v85, v87);
        v91 = vtrn2q_s32(v85, v87);
        v92 = vtrn1q_s32(v86, v88);
        v93 = vtrn2q_s32(v86, v88);
        v94 = vtrn1q_s16(v82, v83);
        v95 = vtrn2q_s16(v82, v83);
        v96 = vtrn1q_s16(v84, v89);
        v97 = vtrn2q_s16(v84, v89);
        v98 = vtrn1q_s32(v94, v96);
        v99 = vtrn2q_s32(v94, v96);
        v100 = vtrn1q_s32(v95, v97);
        v101 = vtrn2q_s32(v95, v97);
        if (a5)
        {
          v102 = *a5;
          v103 = v76[-128];
          v104 = v76[-124];
          v76[-128] = 0uLL;
          v76[-124] = 0uLL;
          v105 = vdupq_laneq_s32(vsubw_s16(v72, v102), 2);
          v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
          v107 = vshlq_s32(vmovl_high_s16(v103), v105);
          v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
          v109 = vshlq_s32(vmovl_high_s16(v104), v105);
          v110 = vmovl_s16(vdup_lane_s16(v102, 0));
          v111 = vmovl_s16(vdup_lane_s16(v102, 1));
          v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
          v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
          v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
          v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
          v112 = v76 - 120;
          *v111.i8 = *a5;
          v113 = v76[-120];
          v114 = v76 - 116;
          v115 = *v114;
          *v112 = 0uLL;
          *v114 = 0uLL;
          v116 = vdupq_laneq_s32(vsubw_s16(v72, *v111.i8), 2);
          v117 = vshlq_s32(vmovl_s16(*v113.i8), v116);
          v118 = vshlq_s32(vmovl_high_s16(v113), v116);
          v119 = vshlq_s32(vmovl_s16(*v115.i8), v116);
          v120 = vshlq_s32(vmovl_high_s16(v115), v116);
          v121 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
          v122 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
          v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v121), 3uLL), vmulq_s32(v118, v121), 3uLL), v91);
          v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v122), 3uLL), vmulq_s32(v118, v122), 3uLL), v99);
          v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v121), 3uLL), vmulq_s32(v120, v121), 3uLL), v93);
          v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v122), 3uLL), vmulq_s32(v120, v122), 3uLL), v101);
        }

        v123 = vzip1q_s16(v90, v98);
        v124 = vzip2q_s16(v90, v98);
        v125 = vzip1q_s16(v92, v100);
        v126 = vzip2q_s16(v92, v100);
        v127 = vzip1q_s16(v91, v99);
        v128 = vzip2q_s16(v91, v99);
        v129 = (v75 + v69);
        v130 = (v75 + v70);
        result = (v75 + v68);
        v131 = vminq_u16(vsqaddq_u16(*(v75 + 2 * a2), v125), v71);
        v132 = vminq_u16(vsqaddq_u16(*(v75 + 4 * a2), v127), v71);
        v133 = vminq_u16(vsqaddq_u16(*(v75 + 6 * a2), vzip1q_s16(v93, v101)), v71);
        v134 = vminq_u16(vsqaddq_u16(v75[1], v124), v71);
        v135 = vminq_u16(vsqaddq_u16(*(&v75[1] + v69), v126), v71);
        v136 = vminq_u16(vsqaddq_u16(*(v75 + v70), v128), v71);
        v137 = vsqaddq_u16(*(v75 + v68), vzip2q_s16(v93, v101));
        *v75 = vminq_u16(vsqaddq_u16(*v75, v123), v71);
        *v129 = v131;
        v130[-1] = v132;
        result[-1] = v133;
        v75[1] = v134;
        v129[1] = v135;
        *v130 = v136;
        *result = vminq_u16(v137, v71);
        v74 += 8;
        v73 += 2;
        v75 += 2;
      }

      while (v74 < 0x18);
      v10 = (v10 + 8 * a2);
      v8 += 32;
      v7 += 32;
      v54 = v67 >= 0x1C;
      v67 += 4;
    }

    while (!v54);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 5uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    if (a5)
    {
      v16 = 0;
      v17 = a3 - 256;
      v18.i64[0] = 0x900000009;
      v18.i64[1] = 0x900000009;
      v19.i64[0] = 0xFE00FE00FE00FE00;
      v19.i64[1] = 0xFE00FE00FE00FE00;
      do
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = *v17[2].i8;
          v23 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
          v24 = vshlq_s32(vmovl_s16(*v17), v23);
          v25 = vshlq_s32(vmovl_high_s16(*v17->i8), v23);
          v26 = vshlq_s32(vmovl_s16(*v22.i8), v23);
          v27 = vshlq_s32(vmovl_high_s16(v22), v23);
          v28 = vmovl_s16(vdup_lane_s16(*a5, 0));
          v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v28), 3uLL), vmulq_s32(v25, v28), 3uLL);
          v30 = vmovl_s16(vdup_lane_s16(*a5, 1));
          v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v28), 3uLL), vmulq_s32(v27, v28), 3uLL);
          v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v30), 3uLL), vmulq_s32(v25, v30), 3uLL);
          v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v30), 3uLL), vmulq_s32(v27, v30), 3uLL);
          v34 = v21;
          *v17->i8 = 0uLL;
          *v17[2].i8 = 0uLL;
          v17 += 4;
          v35 = vaddq_s16(vzip1q_s16(v29, v32), v15);
          v36 = vaddq_s16(vzip2q_s16(v29, v32), v15);
          v37 = vaddq_s16(vzip1q_s16(v31, v33), v15);
          v38 = &v10[v20];
          v39 = vaddq_s16(vzip2q_s16(v31, v33), v15);
          v40 = vminq_u16(vsqaddq_u16(v38[1], v36), v19);
          v41 = vminq_u16(vsqaddq_u16(v38[2], v37), v19);
          v42 = vsqaddq_u16(v38[3], v39);
          *v38 = vminq_u16(vsqaddq_u16(*v38, v35), v19);
          v38[1] = v40;
          v38[2] = v41;
          v38[3] = vminq_u16(v42, v19);
          v20 = 4;
          v21 = 0;
        }

        while ((v34 & 1) != 0);
        ++v16;
        v10 = (v10 + 2 * a2);
      }

      while (v16 != 32);
    }

    else
    {
      v138 = result + 4;
      v139 = 32;
      v140.i64[0] = 0xFE00FE00FE00FE00;
      v140.i64[1] = 0xFE00FE00FE00FE00;
      do
      {
        v141 = vminq_u16(vsqaddq_u16(v138[-3], v15), v140);
        v142 = vminq_u16(vsqaddq_u16(v138[-2], v15), v140);
        v143 = vminq_u16(vsqaddq_u16(v138[-1], v15), v140);
        v138[-4] = vminq_u16(vsqaddq_u16(v138[-4], v15), v140);
        v138[-3] = v141;
        v138[-2] = v142;
        v138[-1] = v143;
        v144 = vminq_u16(vsqaddq_u16(v138[1], v15), v140);
        v145 = vminq_u16(vsqaddq_u16(v138[2], v15), v140);
        v146 = vminq_u16(vsqaddq_u16(v138[3], v15), v140);
        *v138 = vminq_u16(vsqaddq_u16(*v138, v15), v140);
        v138[1] = v144;
        v138[2] = v145;
        v138[3] = v146;
        v138 = (v138 + 2 * a2);
        --v139;
      }

      while (v139);
    }
  }

  return result;
}

int16x4_t *sub_2774FE690(int16x4_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v42 = 0;
        v43 = a3;
        do
        {
          v44 = 0;
          v45 = 1;
          do
          {
            v46 = v45;
            v47 = &v43[v44];
            v48 = v47[2];
            v49 = v47[4];
            v50 = v47[6];
            v51 = vtrn1q_s16(*v47, v48);
            v52 = vtrn2q_s16(*v47, v48);
            v53 = vtrn1q_s16(v49, v50);
            v54 = vtrn2q_s16(v49, v50);
            *v47 = vtrn1q_s32(v51, v53);
            v47[2] = vtrn1q_s32(v52, v54);
            v47[4] = vtrn2q_s32(v51, v53);
            v47[6] = vtrn2q_s32(v52, v54);
            v44 = 2;
            v45 = 0;
          }

          while ((v46 & 1) != 0);
          v43 += 16;
          v55 = v42 >= 0xC;
          v42 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F40B4(a3, *a6 & 0x7FFF);
    }

    v56 = *(a6 + 1);
    if (v56 < 1)
    {
      if (v56 < 0)
      {
        v57 = 0;
        v58 = v7;
        do
        {
          v59 = 0;
          v60 = 1;
          do
          {
            v61 = v60;
            v62 = &v58[v59];
            v63 = v62[2];
            v64 = v62[4];
            v65 = v62[6];
            v66 = vtrn1q_s16(*v62, v63);
            v67 = vtrn2q_s16(*v62, v63);
            v68 = vtrn1q_s16(v64, v65);
            v69 = vtrn2q_s16(v64, v65);
            *v62 = vtrn1q_s32(v66, v68);
            v62[2] = vtrn1q_s32(v67, v69);
            v62[4] = vtrn2q_s32(v66, v68);
            v62[6] = vtrn2q_s32(v67, v69);
            v59 = 8;
            v60 = 0;
          }

          while ((v61 & 1) != 0);
          v58 += 64;
          v55 = v57 >= 0xC;
          v57 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F40B4(v7, v56);
    }

    v70 = 4 * a2;
    v71 = 6 * a2;
    v72 = &a3[-64];
    v73 = &v10[6];
    v74 = 2 * a2;
    v75 = -4;
    v76.i64[0] = 0xFE00FE00FE00FE00;
    v76.i64[1] = 0xFE00FE00FE00FE00;
    v77.i64[0] = 0x900000009;
    v77.i64[1] = 0x900000009;
    do
    {
      v78 = v72[32];
      v79 = v72[34];
      v80 = v72[36];
      v81 = v72[38];
      v82 = *v7;
      v83 = *(v7 + 2);
      v84 = *(v7 + 4);
      v85 = vtrn1q_s16(v78, v79);
      v86 = vtrn2q_s16(v78, v79);
      v87 = vtrn1q_s16(v80, v81);
      v88 = vtrn2q_s16(v80, v81);
      v89 = *(v7 + 6);
      v72[32] = 0uLL;
      v72[34] = 0uLL;
      v72[36] = 0uLL;
      v72[38] = 0uLL;
      *v7 = 0uLL;
      *(v7 + 2) = 0uLL;
      v90 = vtrn1q_s32(v85, v87);
      v91 = vtrn2q_s32(v85, v87);
      v92 = vtrn1q_s32(v86, v88);
      v93 = vtrn2q_s32(v86, v88);
      v94 = vtrn1q_s16(v82, v83);
      v95 = vtrn2q_s16(v82, v83);
      v96 = vtrn1q_s16(v84, v89);
      v97 = vtrn2q_s16(v84, v89);
      v98 = vtrn1q_s32(v94, v96);
      v99 = vtrn2q_s32(v94, v96);
      *(v7 + 4) = 0uLL;
      v100 = vtrn1q_s32(v95, v97);
      v101 = vtrn2q_s32(v95, v97);
      *(v7 + 6) = 0uLL;
      if (a5)
      {
        v102 = *a5;
        v103 = *v72;
        v104 = v72[2];
        *v72 = 0uLL;
        v72[2] = 0uLL;
        v105 = vdupq_laneq_s32(vsubw_s16(v77, v102), 2);
        v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
        v107 = vshlq_s32(vmovl_high_s16(v103), v105);
        v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
        v109 = vshlq_s32(vmovl_high_s16(v104), v105);
        v110 = vmovl_s16(vdup_lane_s16(v102, 0));
        v111 = vmovl_s16(vdup_lane_s16(v102, 1));
        v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
        v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
        v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
        v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
        *v111.i8 = *a5;
        v112 = v72[4];
        v113 = v72[6];
        v72[4] = 0uLL;
        v72[6] = 0uLL;
        v114 = vdupq_laneq_s32(vsubw_s16(v77, *v111.i8), 2);
        v115 = vshlq_s32(vmovl_s16(*v112.i8), v114);
        v116 = vshlq_s32(vmovl_high_s16(v112), v114);
        v117 = vshlq_s32(vmovl_s16(*v113.i8), v114);
        v118 = vshlq_s32(vmovl_high_s16(v113), v114);
        v119 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
        v120 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
        v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v119), 3uLL), vmulq_s32(v116, v119), 3uLL), v91);
        v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v120), 3uLL), vmulq_s32(v116, v120), 3uLL), v99);
        v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v119), 3uLL), vmulq_s32(v118, v119), 3uLL), v93);
        v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v120), 3uLL), vmulq_s32(v118, v120), 3uLL), v101);
      }

      v121 = vzip1q_s16(v90, v98);
      v122 = vzip2q_s16(v90, v98);
      v123 = vzip1q_s16(v92, v100);
      v124 = vzip2q_s16(v92, v100);
      v125 = vzip1q_s16(v91, v99);
      v126 = vzip2q_s16(v91, v99);
      v127 = (v73 + v74);
      v128 = (v73 + v70);
      v129 = (v73 + v71);
      v130 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v74), v123), v76);
      v131 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v70), v125), v76);
      v132 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v71), vzip1q_s16(v93, v101)), v76);
      v133 = vminq_u16(vsqaddq_u16(v73[-2], v122), v76);
      v134 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v74), v124), v76);
      v135 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v70), v126), v76);
      v136 = vsqaddq_u16(*(&v73[-2] + v71), vzip2q_s16(v93, v101));
      v73[-3] = vminq_u16(vsqaddq_u16(v73[-3], v121), v76);
      v127[-3] = v130;
      v128[-3] = v131;
      v129[-3] = v132;
      v73[-2] = v133;
      v127[-2] = v134;
      v128[-2] = v135;
      v129[-2] = vminq_u16(v136, v76);
      v137 = v72[33];
      v138 = v72[35];
      v139 = v72[37];
      v140 = v72[39];
      v141 = *(v7 + 1);
      v142 = *(v7 + 3);
      v143 = *(v7 + 5);
      v144 = vtrn1q_s16(v137, v138);
      v145 = vtrn2q_s16(v137, v138);
      v146 = vtrn1q_s16(v139, v140);
      v147 = vtrn2q_s16(v139, v140);
      v148 = *(v7 + 7);
      v72[33] = 0uLL;
      v72[35] = 0uLL;
      v72[37] = 0uLL;
      v72[39] = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 3) = 0uLL;
      *(v7 + 5) = 0uLL;
      *(v7 + 7) = 0uLL;
      v149 = vtrn1q_s32(v144, v146);
      v150 = vtrn2q_s32(v144, v146);
      v151 = vtrn1q_s32(v145, v147);
      v152 = vtrn2q_s32(v145, v147);
      v153 = vtrn1q_s16(v141, v142);
      v154 = vtrn2q_s16(v141, v142);
      v155 = vtrn1q_s16(v143, v148);
      v156 = vtrn2q_s16(v143, v148);
      v157 = vtrn1q_s32(v153, v155);
      v158 = vtrn2q_s32(v153, v155);
      v159 = vtrn1q_s32(v154, v156);
      v160 = vtrn2q_s32(v154, v156);
      if (a5)
      {
        v161 = *a5;
        v162 = v72[1];
        v163 = v72[3];
        v72[1] = 0uLL;
        v72[3] = 0uLL;
        v164 = vdupq_laneq_s32(vsubw_s16(v77, v161), 2);
        v165 = vshlq_s32(vmovl_s16(*v162.i8), v164);
        v166 = vshlq_s32(vmovl_high_s16(v162), v164);
        v167 = vshlq_s32(vmovl_s16(*v163.i8), v164);
        v168 = vshlq_s32(vmovl_high_s16(v163), v164);
        v169 = vmovl_s16(vdup_lane_s16(v161, 0));
        v170 = vmovl_s16(vdup_lane_s16(v161, 1));
        v149 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v169), 3uLL), vmulq_s32(v166, v169), 3uLL), v149);
        v157 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v170), 3uLL), vmulq_s32(v166, v170), 3uLL), v157);
        v151 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v169), 3uLL), vmulq_s32(v168, v169), 3uLL), v151);
        v159 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v170), 3uLL), vmulq_s32(v168, v170), 3uLL), v159);
        *v170.i8 = *a5;
        v171 = v72[5];
        v172 = v72[7];
        v72[5] = 0uLL;
        v72[7] = 0uLL;
        v173 = vdupq_laneq_s32(vsubw_s16(v77, *v170.i8), 2);
        v174 = vshlq_s32(vmovl_s16(*v171.i8), v173);
        v175 = vshlq_s32(vmovl_high_s16(v171), v173);
        v176 = vshlq_s32(vmovl_s16(*v172.i8), v173);
        v177 = vshlq_s32(vmovl_high_s16(v172), v173);
        v178 = vmovl_s16(vdup_lane_s16(*v170.i8, 0));
        v179 = vmovl_s16(vdup_lane_s16(*v170.i8, 1));
        v150 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v178), 3uLL), vmulq_s32(v175, v178), 3uLL), v150);
        v158 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v179), 3uLL), vmulq_s32(v175, v179), 3uLL), v158);
        v152 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v178), 3uLL), vmulq_s32(v177, v178), 3uLL), v152);
        v160 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v179), 3uLL), vmulq_s32(v177, v179), 3uLL), v160);
      }

      v180 = vzip1q_s16(v149, v157);
      v181 = vzip2q_s16(v149, v157);
      v182 = vzip1q_s16(v151, v159);
      v183 = vzip2q_s16(v151, v159);
      v184 = vzip1q_s16(v150, v158);
      v185 = vzip2q_s16(v150, v158);
      v186 = vminq_u16(vsqaddq_u16(v127[-1], v182), v76);
      v187 = vminq_u16(vsqaddq_u16(v128[-1], v184), v76);
      v188 = vminq_u16(vsqaddq_u16(v129[-1], vzip1q_s16(v152, v160)), v76);
      v189 = vminq_u16(vsqaddq_u16(*v73, v181), v76);
      v190 = vminq_u16(vsqaddq_u16(*v127, v183), v76);
      v191 = vminq_u16(vsqaddq_u16(*v128, v185), v76);
      v192 = vsqaddq_u16(*v129, vzip2q_s16(v152, v160));
      v73[-1] = vminq_u16(vsqaddq_u16(v73[-1], v180), v76);
      v127[-1] = v186;
      v128[-1] = v187;
      v129[-1] = v188;
      *v73 = v189;
      *v127 = v190;
      *v128 = v191;
      *v129 = vminq_u16(v192, v76);
      v72 += 8;
      v75 += 4;
      v73 = (v73 + 8 * a2);
      v7 += 64;
    }

    while (v75 < 0xC);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 5uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    v16 = &result[4];
    v17 = 2 * a2;
    if (a5)
    {
      v18 = 0x1FFFFFFFFFFFFFC0;
      v19.i64[0] = 0x900000009;
      v19.i64[1] = 0x900000009;
      v20.i64[0] = 0xFE00FE00FE00FE00;
      v20.i64[1] = 0xFE00FE00FE00FE00;
      do
      {
        v21 = &a3[v18];
        v22 = *a3[v18].i8;
        v23 = *a3[v18 + 2].i8;
        v24 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v25 = vshlq_s32(vmovl_s16(*v22.i8), v24);
        v26 = vshlq_s32(vmovl_high_s16(v22), v24);
        v27 = vshlq_s32(vmovl_s16(*v23.i8), v24);
        v28 = vshlq_s32(vmovl_high_s16(v23), v24);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v29), 3uLL), vmulq_s32(v28, v29), 3uLL);
        v32 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v32), 3uLL), vmulq_s32(v26, v32), 3uLL);
        v34 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v32), 3uLL), vmulq_s32(v28, v32), 3uLL);
        *v21->i8 = 0uLL;
        *v21[2].i8 = 0uLL;
        v35 = vaddq_s16(vzip1q_s16(v30, v33), v15);
        v36 = vaddq_s16(vzip2q_s16(v30, v33), v15);
        v37 = vaddq_s16(vzip1q_s16(v31, v34), v15);
        v38 = vaddq_s16(vzip2q_s16(v31, v34), v15);
        v39 = vminq_u16(vsqaddq_u16(v16[-1], v36), v20);
        v40 = vminq_u16(vsqaddq_u16(*v16, v37), v20);
        v41 = vsqaddq_u16(v16[1], v38);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v35), v20);
        v16[-1] = v39;
        *v16 = v40;
        v16[1] = vminq_u16(v41, v20);
        v16 = (v16 + v17);
        v18 += 4;
      }

      while ((v18 * 8));
    }

    else
    {
      v193 = 16;
      v194.i64[0] = 0xFE00FE00FE00FE00;
      v194.i64[1] = 0xFE00FE00FE00FE00;
      do
      {
        v195 = vminq_u16(vsqaddq_u16(v16[-1], v15), v194);
        v196 = vminq_u16(vsqaddq_u16(*v16, v15), v194);
        v197 = vminq_u16(vsqaddq_u16(v16[1], v15), v194);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v15), v194);
        v16[-1] = v195;
        *v16 = v196;
        v16[1] = v197;
        v16 = (v16 + v17);
        --v193;
      }

      while (v193);
    }
  }

  return result;
}

int16x4_t *sub_2774FEE5C(int16x4_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5, int *a6)
{
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v41 = 1;
        v42 = a3;
        do
        {
          v43 = v41;
          v44 = v42[1];
          v45 = v42[2];
          v46 = v42[3];
          v47 = vtrn1q_s16(*v42, v44);
          v48 = vtrn2q_s16(*v42, v44);
          v49 = vtrn1q_s16(v45, v46);
          v50 = vtrn2q_s16(v45, v46);
          *v42 = vtrn1q_s32(v47, v49);
          v42[1] = vtrn1q_s32(v48, v50);
          v42[2] = vtrn2q_s32(v47, v49);
          v42[3] = vtrn2q_s32(v48, v50);
          v42 += 4;
          v41 = 0;
        }

        while ((v43 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F4478(a3, *a6 & 0x7FFF);
    }

    v51 = *(a6 + 1);
    if (v51 < 1)
    {
      if (v51 < 0)
      {
        v52 = 1;
        v53 = a4;
        do
        {
          v54 = v52;
          v55 = v53[1];
          v56 = v53[2];
          v57 = v53[3];
          v58 = vtrn1q_s16(*v53, v55);
          v59 = vtrn2q_s16(*v53, v55);
          v60 = vtrn1q_s16(v56, v57);
          v61 = vtrn2q_s16(v56, v57);
          *v53 = vtrn1q_s32(v58, v60);
          v53[1] = vtrn1q_s32(v59, v61);
          v53[2] = vtrn2q_s32(v58, v60);
          v53[3] = vtrn2q_s32(v59, v61);
          v53 += 4;
          v52 = 0;
        }

        while ((v54 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F4478(a4, v51);
    }

    v62 = (v10 + 2 * a2);
    v63 = (v10 + 4 * a2);
    v64 = (v10 + 6 * a2);
    v65 = a3[1];
    v66 = a3[2];
    v67 = a3[3];
    v68 = *a4;
    v69 = a4[1];
    v70 = vtrn1q_s16(*a3, v65);
    v71 = vtrn2q_s16(*a3, v65);
    v72 = vtrn1q_s16(v66, v67);
    v73 = vtrn2q_s16(v66, v67);
    v74 = a4[2];
    v75 = a4[3];
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    v76 = vtrn1q_s32(v70, v72);
    v77 = vtrn2q_s32(v70, v72);
    v78 = vtrn1q_s32(v71, v73);
    v79 = vtrn2q_s32(v71, v73);
    v80 = vtrn1q_s16(v68, v69);
    v81 = vtrn2q_s16(v68, v69);
    v82 = vtrn1q_s16(v74, v75);
    v83 = vtrn2q_s16(v74, v75);
    v84 = vtrn1q_s32(v80, v82);
    v85 = vtrn2q_s32(v80, v82);
    v86 = vtrn1q_s32(v81, v83);
    v87 = vtrn2q_s32(v81, v83);
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    if (a5)
    {
      v88 = a3[-8];
      v89 = a3[-7];
      v90.i64[0] = 0x900000009;
      v90.i64[1] = 0x900000009;
      v91 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v92 = vshlq_s32(vmovl_s16(*v88.i8), v91);
      v93 = vshlq_s32(vmovl_high_s16(v88), v91);
      v94 = vshlq_s32(vmovl_s16(*v89.i8), v91);
      v95 = vshlq_s32(vmovl_high_s16(v89), v91);
      v96 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v97 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-8] = 0uLL;
      a3[-7] = 0uLL;
      v76 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v96), 3uLL), vmulq_s32(v93, v96), 3uLL), v76);
      v84 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v97), 3uLL), vmulq_s32(v93, v97), 3uLL), v84);
      v78 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v96), 3uLL), vmulq_s32(v95, v96), 3uLL), v78);
      v86 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v97), 3uLL), vmulq_s32(v95, v97), 3uLL), v86);
      v98 = a3[-6];
      v99 = a3[-5];
      v100 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v101 = vshlq_s32(vmovl_s16(*v98.i8), v100);
      v102 = vshlq_s32(vmovl_high_s16(v98), v100);
      v103 = vshlq_s32(vmovl_s16(*v99.i8), v100);
      v104 = vshlq_s32(vmovl_high_s16(v99), v100);
      v105 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v106 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-6] = 0uLL;
      a3[-5] = 0uLL;
      v77 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v105), 3uLL), vmulq_s32(v102, v105), 3uLL), v77);
      v85 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v106), 3uLL), vmulq_s32(v102, v106), 3uLL), v85);
      v79 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v105), 3uLL), vmulq_s32(v104, v105), 3uLL), v79);
      v87 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v106), 3uLL), vmulq_s32(v104, v106), 3uLL), v87);
    }

    v107 = vzip1q_s16(v76, v84);
    v108 = vzip2q_s16(v76, v84);
    v109 = vzip1q_s16(v78, v86);
    v110 = vzip2q_s16(v78, v86);
    v111 = vzip1q_s16(v77, v85);
    v112 = vzip2q_s16(v77, v85);
    v113 = vzip1q_s16(v79, v87);
    v114 = vzip2q_s16(v79, v87);
    v115.i64[0] = 0xFE00FE00FE00FE00;
    v115.i64[1] = 0xFE00FE00FE00FE00;
    v116 = vminq_u16(vsqaddq_u16(*v62, v109), v115);
    v117 = vminq_u16(vsqaddq_u16(*v63, v111), v115);
    v118 = vminq_u16(vsqaddq_u16(*v64, v113), v115);
    v119 = vminq_u16(vsqaddq_u16(v10[1], v108), v115);
    v120 = vminq_u16(vsqaddq_u16(v62[1], v110), v115);
    v121 = vminq_u16(vsqaddq_u16(v63[1], v112), v115);
    v122 = vsqaddq_u16(v64[1], v114);
    *v10 = vminq_u16(vsqaddq_u16(*v10, v107), v115);
    *v62 = v116;
    *v63 = v117;
    *v64 = v118;
    v10[1] = v119;
    v62[1] = v120;
    v63[1] = v121;
    v64[1] = vminq_u16(v122, v115);
    v123 = a3[4];
    v124 = a3[5];
    v125 = a3[6];
    v126 = a3[7];
    v127 = a4[4];
    v128 = a4[5];
    v129 = vtrn1q_s16(v123, v124);
    v130 = vtrn2q_s16(v123, v124);
    v131 = vtrn1q_s16(v125, v126);
    v132 = vtrn2q_s16(v125, v126);
    v133 = a4[6];
    v134 = a4[7];
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    v135 = vtrn1q_s32(v129, v131);
    v136 = vtrn2q_s32(v129, v131);
    v137 = vtrn1q_s32(v130, v132);
    v138 = vtrn2q_s32(v130, v132);
    v139 = vtrn1q_s16(v127, v128);
    v140 = vtrn2q_s16(v127, v128);
    v141 = vtrn1q_s16(v133, v134);
    v142 = vtrn2q_s16(v133, v134);
    v143 = vtrn1q_s32(v139, v141);
    v144 = vtrn2q_s32(v139, v141);
    v145 = vtrn1q_s32(v140, v142);
    v146 = vtrn2q_s32(v140, v142);
    a4[6] = 0uLL;
    a4[7] = 0uLL;
    a4[4] = 0uLL;
    a4[5] = 0uLL;
    if (a5)
    {
      v147 = a3[-4];
      v148 = a3[-3];
      v149.i64[0] = 0x900000009;
      v149.i64[1] = 0x900000009;
      v150 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v151 = vshlq_s32(vmovl_s16(*v147.i8), v150);
      v152 = vshlq_s32(vmovl_high_s16(v147), v150);
      v153 = vshlq_s32(vmovl_s16(*v148.i8), v150);
      v154 = vshlq_s32(vmovl_high_s16(v148), v150);
      v155 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v156 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-4] = 0u;
      a3[-3] = 0u;
      v135 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v155), 3uLL), vmulq_s32(v152, v155), 3uLL), v135);
      v143 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v156), 3uLL), vmulq_s32(v152, v156), 3uLL), v143);
      v137 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v155), 3uLL), vmulq_s32(v154, v155), 3uLL), v137);
      v145 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v156), 3uLL), vmulq_s32(v154, v156), 3uLL), v145);
      v157 = a3[-2];
      v158 = a3[-1];
      v159 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v160 = vshlq_s32(vmovl_s16(*v157.i8), v159);
      v161 = vshlq_s32(vmovl_high_s16(v157), v159);
      v162 = vshlq_s32(vmovl_s16(*v158.i8), v159);
      v163 = vshlq_s32(vmovl_high_s16(v158), v159);
      v164 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v165 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-2] = 0u;
      a3[-1] = 0u;
      v136 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v164), 3uLL), vmulq_s32(v161, v164), 3uLL), v136);
      v144 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v165), 3uLL), vmulq_s32(v161, v165), 3uLL), v144);
      v138 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v164), 3uLL), vmulq_s32(v163, v164), 3uLL), v138);
      v146 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v165), 3uLL), vmulq_s32(v163, v165), 3uLL), v146);
    }

    v166 = (v10 + 8 * a2);
    v167 = (v166 + 6 * a2);
    v168 = (v166 + 4 * a2);
    v169 = (v166 + 2 * a2);
    v170 = vzip1q_s16(v135, v143);
    v171 = vzip2q_s16(v135, v143);
    v172 = vzip1q_s16(v137, v145);
    v173 = vzip2q_s16(v137, v145);
    v174 = vzip1q_s16(v136, v144);
    v175 = vzip2q_s16(v136, v144);
    v176 = vzip1q_s16(v138, v146);
    v177 = vzip2q_s16(v138, v146);
    v178 = vminq_u16(vsqaddq_u16(*v169, v172), v115);
    v179 = vminq_u16(vsqaddq_u16(*v168, v174), v115);
    v180 = vminq_u16(vsqaddq_u16(*v167, v176), v115);
    v181 = vminq_u16(vsqaddq_u16(v166[1], v171), v115);
    v182 = vminq_u16(vsqaddq_u16(v169[1], v173), v115);
    v183 = vminq_u16(vsqaddq_u16(v168[1], v175), v115);
    v184 = vsqaddq_u16(v167[1], v177);
    *v166 = vminq_u16(vsqaddq_u16(*v166, v170), v115);
    *v169 = v178;
    *v168 = v179;
    *v167 = v180;
    v166[1] = v181;
    v169[1] = v182;
    v168[1] = v183;
    v167[1] = vminq_u16(v184, v115);
  }

  else
  {
    v13 = vld1q_dup_s16(a3->i16);
    v14 = vld1q_dup_s16(a4->i16);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 5uLL);
    a3->i16[0] = 0;
    a4->i16[0] = 0;
    if (a5)
    {
      v16 = a3 - 8;
      v17 = 2 * a2;
      v18 = -2;
      v19.i64[0] = 0x900000009;
      v19.i64[1] = 0x900000009;
      v20.i64[0] = 0xFE00FE00FE00FE00;
      v20.i64[1] = 0xFE00FE00FE00FE00;
      do
      {
        v21 = v16[1];
        v22 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v23 = vshlq_s32(vmovl_s16(*v16->i8), v22);
        v24 = vshlq_s32(vmovl_high_s16(*v16), v22);
        v25 = vshlq_s32(vmovl_s16(*v21.i8), v22);
        v26 = vshlq_s32(vmovl_high_s16(v21), v22);
        v27 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v27), 3uLL), vmulq_s32(v24, v27), 3uLL);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v27), 3uLL), vmulq_s32(v26, v27), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v29), 3uLL), vmulq_s32(v24, v29), 3uLL);
        v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16 += 2;
        v33 = vaddq_s16(vzip1q_s16(v28, v31), v15);
        v34 = vzip2q_s16(v28, v31);
        v35 = vaddq_s16(vzip1q_s16(v30, v32), v15);
        v36 = (v10 + v17);
        v37 = vaddq_s16(vzip2q_s16(v30, v32), v15);
        v38 = vminq_u16(vsqaddq_u16(v10[1], vaddq_s16(v34, v15)), v20);
        v39 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v35), v20);
        v40 = vminq_u16(vsqaddq_u16(*(&v10[1] + v17), v37), v20);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v33), v20);
        v10[1] = v38;
        *v36 = v39;
        v36[1] = v40;
        v10 = (v10 + 4 * a2);
        v18 += 2;
      }

      while (v18 < 6);
    }

    else
    {
      v185 = 2 * a2;
      v186 = -2;
      v187.i64[0] = 0xFE00FE00FE00FE00;
      v187.i64[1] = 0xFE00FE00FE00FE00;
      do
      {
        v188 = (v10 + v185);
        v189 = vminq_u16(vsqaddq_u16(v10[1], v15), v187);
        v190 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v15), v187);
        v191 = vminq_u16(vsqaddq_u16(*(&v10[1] + v185), v15), v187);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v15), v187);
        v10[1] = v189;
        *v188 = v190;
        v188[1] = v191;
        v10 = (v10 + 4 * a2);
        v186 += 2;
      }

      while (v186 < 6);
    }
  }

  return result;
}

double sub_2774FF56C(uint16x8_t *a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x4_t *a5, __int16 *a6)
{
  v12 = *a6;
  if (v12 >= 1)
  {
    sub_2774F46A0(a3, v12);
  }

  v13 = a6[1];
  if (v13 >= 1)
  {
    sub_2774F46A0(a4, v13);
  }

  *&result = sub_2774FDF70(a1, a2, a3, a4, a5).u64[0];
  return result;
}

void sub_2774FF5FC(int16x4_t *a1)
{
  v2[65] = *MEMORY[0x277D85DE8];
  sub_2774F15E8(v2, a1, 4);
  sub_2774F1738(a1, v2);
}

void sub_2774FF66C(int16x4_t *a1)
{
  v2[17] = *MEMORY[0x277D85DE8];
  sub_2774F19A4(v2, a1, 3);
  sub_2774F1A4C(a1, v2);
}

int16x4_t sub_2774FF6DC(int16x4_t *a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = vtrn1_s16(*a1, v1);
  v5 = vtrn2_s16(*a1, v1);
  v6 = vtrn1_s16(v2, v3);
  v7 = vtrn2_s16(v2, v3);
  v8 = vzip1_s32(v4, v6);
  v9 = vzip2_s32(v4, v6);
  v10 = vzip1_s32(v5, v7);
  v11 = vzip2_s32(v5, v7);
  v12 = vadd_s16(v11, v8);
  v13 = vsub_s16(v8, v11);
  v14 = vadd_s16(v9, v10);
  v15 = vsub_s16(v10, v9);
  v17[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v14, v12), 6uLL), 2uLL));
  v17[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v15, 0x24002400240024), v13, 0x53005300530053), 2uLL));
  v17[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v12, v14), 6uLL), 2uLL));
  v17[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v13, 0x24002400240024), v15, 0x53005300530053), 2uLL));
  return sub_2774F1C40(a1, v17);
}

uint16x8_t *sub_2774FF7B4(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 512;
  v6 = result + 2;
  v7.i64[0] = 0xFC00FC00FC00FC00;
  v7.i64[1] = 0xFC00FC00FC00FC00;
  v8.i64[0] = 0xA0000000ALL;
  v8.i64[1] = 0xA0000000ALL;
  v9 = 16;
  do
  {
    v11 = *(v5 + 512);
    v10 = *(v5 + 528);
    v13 = *a4;
    v12 = a4[1];
    if (a5)
    {
      v14 = *(v5 + 16);
      v15 = vdupq_laneq_s32(vsubw_s16(v8, *a5), 2);
      v16 = vshlq_s32(vmovl_s16(*v5), v15);
      v17 = vshlq_s32(vmovl_high_s16(*v5), v15);
      v18 = vshlq_s32(vmovl_s16(*v14.i8), v15);
      v19 = vshlq_s32(vmovl_high_s16(v14), v15);
      v20 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v21 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v20), 3uLL), vmulq_s32(v17, v20), 3uLL));
      v10 = vaddq_s16(v10, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v20), 3uLL), vmulq_s32(v19, v20), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v21), 3uLL), vmulq_s32(v17, v21), 3uLL));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v21), 3uLL), vmulq_s32(v19, v21), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 512) = 0uLL;
    *(v5 + 528) = 0uLL;
    v22 = vzip1q_s16(v11, v13);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v23 = vminq_u16(vsqaddq_u16(v6[-1], vzip2q_s16(v11, v13)), v7);
    v24 = vminq_u16(vsqaddq_u16(*v6, vzip1q_s16(v10, v12)), v7);
    v25 = vminq_u16(vsqaddq_u16(v6[1], vzip2q_s16(v10, v12)), v7);
    v6[-2] = vminq_u16(vsqaddq_u16(v6[-2], v22), v7);
    v6[-1] = v23;
    *v6 = v24;
    v6[1] = v25;
    v5 += 32;
    v6 = (v6 + 2 * a2);
    --v9;
  }

  while (v9);
  return result;
}

uint16x8_t *sub_2774FF8CC(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 128;
  v6 = 2 * a2;
  v7.i64[0] = 0xFC00FC00FC00FC00;
  v7.i64[1] = 0xFC00FC00FC00FC00;
  v8 = result + 1;
  v9.i64[0] = 0xA0000000ALL;
  v9.i64[1] = 0xA0000000ALL;
  v10 = -2;
  do
  {
    v12 = *(v5 + 128);
    v11 = *(v5 + 144);
    v14 = *a4;
    v13 = a4[1];
    if (a5)
    {
      v15 = *(v5 + 16);
      v16 = vdupq_laneq_s32(vsubw_s16(v9, *a5), 2);
      v17 = vshlq_s32(vmovl_s16(*v5), v16);
      v18 = vshlq_s32(vmovl_high_s16(*v5), v16);
      v19 = vshlq_s32(vmovl_s16(*v15.i8), v16);
      v20 = vshlq_s32(vmovl_high_s16(v15), v16);
      v21 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v22 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v21), 3uLL), vmulq_s32(v18, v21), 3uLL));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v21), 3uLL), vmulq_s32(v20, v21), 3uLL));
      v14 = vaddq_s16(v14, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v22), 3uLL), vmulq_s32(v18, v22), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v22), 3uLL), vmulq_s32(v20, v22), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 128) = 0uLL;
    *(v5 + 144) = 0uLL;
    v23 = vzip1q_s16(v12, v14);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v24 = (v8 + v6);
    v25 = vminq_u16(vsqaddq_u16(*v8, vzip2q_s16(v12, v14)), v7);
    v26 = vminq_u16(vsqaddq_u16(*(&v8[-1] + v6), vzip1q_s16(v11, v13)), v7);
    v27 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), vzip2q_s16(v11, v13)), v7);
    v8[-1] = vminq_u16(vsqaddq_u16(v8[-1], v23), v7);
    *v8 = v25;
    v10 += 2;
    v24[-1] = v26;
    *v24 = v27;
    v5 += 32;
    v8 = (v8 + 4 * a2);
  }

  while (v10 < 6);
  return result;
}

uint16x8_t sub_2774FF9F4(uint16x8_t *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5)
{
  v6 = *a3;
  v5 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  if (a5)
  {
    v9 = a3[-2];
    v10 = a3[-1];
    v11.i64[0] = 0xA0000000ALL;
    v11.i64[1] = 0xA0000000ALL;
    v12 = vdupq_laneq_s32(vsubw_s16(v11, *a5), 2);
    v13 = vshlq_s32(vmovl_s16(*v9.i8), v12);
    v14 = vshlq_s32(vmovl_high_s16(v9), v12);
    v15 = vshlq_s32(vmovl_s16(*v10.i8), v12);
    v16 = vshlq_s32(vmovl_high_s16(v10), v12);
    v17 = vmovl_s16(vdup_lane_s16(*a5, 0));
    v18 = vmovl_s16(vdup_lane_s16(*a5, 1));
    v6 = vaddq_s16(v6, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v17), 3uLL), vmulq_s32(v14, v17), 3uLL));
    v5 = vaddq_s16(v5, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v17), 3uLL), vmulq_s32(v16, v17), 3uLL));
    v8 = vaddq_s16(v8, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v18), 3uLL), vmulq_s32(v14, v18), 3uLL));
    v7 = vaddq_s16(v7, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v18), 3uLL), vmulq_s32(v16, v18), 3uLL));
    a3[-2] = 0u;
    a3[-1] = 0u;
  }

  *a3 = 0u;
  a3[1] = 0u;
  v19 = vzip1q_s16(v6, v8);
  v20 = vzip2q_s16(v6, v8);
  v21 = vzip1q_s16(v5, v7);
  v22 = vzip2q_s16(v5, v7);
  *a4 = 0u;
  a4[1] = 0u;
  v23 = *(a1 + 6 * a2);
  v24 = vsqaddq_u16(*a1, v19);
  v19.i64[0] = 0xFC00FC00FC00FC00;
  v19.i64[1] = 0xFC00FC00FC00FC00;
  v25 = vminq_u16(vsqaddq_u16(*(a1 + 2 * a2), v20), v19);
  v26 = vminq_u16(vsqaddq_u16(*(a1 + 4 * a2), v21), v19);
  *a1 = vminq_u16(v24, v19);
  *(a1 + 2 * a2) = v25;
  result = vminq_u16(vsqaddq_u16(v23, v22), v19);
  *(a1 + 4 * a2) = v26;
  *(a1 + 6 * a2) = result;
  return result;
}

uint16x8_t *sub_2774FFB10(uint16x8_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v8 = a3;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v43 = 0;
        v44 = a3 + 16;
        do
        {
          v45 = -8;
          v46 = v44;
          do
          {
            v47 = v46[-8];
            v48 = v46[-4];
            v49 = v46[4];
            v50 = vtrn1q_s16(v47, v48);
            v51 = vtrn2q_s16(v47, v48);
            v52 = vtrn1q_s16(*v46, v49);
            v53 = vtrn2q_s16(*v46, v49);
            v46[-8] = vtrn1q_s32(v50, v52);
            v46[-4] = vtrn1q_s32(v51, v53);
            *v46 = vtrn2q_s32(v50, v52);
            v46[4] = vtrn2q_s32(v51, v53);
            v45 += 8;
            ++v46;
          }

          while (v45 < 0x18);
          v44 += 32;
          v54 = v43 >= 0x1C;
          v43 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F53F4(a3, *a6 & 0x7FFF);
    }

    v55 = *(a6 + 1);
    if (v55 < 1)
    {
      if (v55 < 0)
      {
        v56 = 0;
        v57 = v7 + 16;
        do
        {
          v58 = -8;
          v59 = v57;
          do
          {
            v60 = v59[-8];
            v61 = v59[-4];
            v62 = v59[4];
            v63 = vtrn1q_s16(v60, v61);
            v64 = vtrn2q_s16(v60, v61);
            v65 = vtrn1q_s16(*v59, v62);
            v66 = vtrn2q_s16(*v59, v62);
            v59[-8] = vtrn1q_s32(v63, v65);
            v59[-4] = vtrn1q_s32(v64, v66);
            *v59 = vtrn2q_s32(v63, v65);
            v59[4] = vtrn2q_s32(v64, v66);
            v58 += 8;
            ++v59;
          }

          while (v58 < 0x18);
          v57 += 32;
          v54 = v56 >= 0x1C;
          v56 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F53F4(v7, v55);
    }

    v67 = 0;
    v68 = 6 * a2 + 16;
    v69 = 2 * a2;
    v70 = 4 * a2 + 16;
    v71.i64[0] = 0xFC00FC00FC00FC00;
    v71.i64[1] = 0xFC00FC00FC00FC00;
    v72.i64[0] = 0xA0000000ALL;
    v72.i64[1] = 0xA0000000ALL;
    do
    {
      v73 = 0;
      v74 = -8;
      v75 = v10;
      do
      {
        v76 = &v8[v73];
        v77 = *v8[v73].i8;
        v78 = *v8[v73 + 8].i8;
        v79 = *v8[v73 + 16].i8;
        v80 = *v8[v73 + 24].i8;
        v81 = &v7[v73];
        v82 = *v7[v73].i8;
        v83 = *v7[v73 + 8].i8;
        v84 = *v7[v73 + 16].i8;
        v85 = vtrn1q_s16(v77, v78);
        v86 = vtrn2q_s16(v77, v78);
        v87 = vtrn1q_s16(v79, v80);
        v88 = vtrn2q_s16(v79, v80);
        v89 = *v7[v73 + 24].i8;
        *v76 = 0uLL;
        v76[4] = 0uLL;
        v76[8] = 0uLL;
        v76[12] = 0uLL;
        *v81->i8 = 0uLL;
        *v81[8].i8 = 0uLL;
        *v81[16].i8 = 0uLL;
        *v81[24].i8 = 0uLL;
        v90 = vtrn1q_s32(v85, v87);
        v91 = vtrn2q_s32(v85, v87);
        v92 = vtrn1q_s32(v86, v88);
        v93 = vtrn2q_s32(v86, v88);
        v94 = vtrn1q_s16(v82, v83);
        v95 = vtrn2q_s16(v82, v83);
        v96 = vtrn1q_s16(v84, v89);
        v97 = vtrn2q_s16(v84, v89);
        v98 = vtrn1q_s32(v94, v96);
        v99 = vtrn2q_s32(v94, v96);
        v100 = vtrn1q_s32(v95, v97);
        v101 = vtrn2q_s32(v95, v97);
        if (a5)
        {
          v102 = *a5;
          v103 = v76[-128];
          v104 = v76[-124];
          v76[-128] = 0uLL;
          v76[-124] = 0uLL;
          v105 = vdupq_laneq_s32(vsubw_s16(v72, v102), 2);
          v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
          v107 = vshlq_s32(vmovl_high_s16(v103), v105);
          v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
          v109 = vshlq_s32(vmovl_high_s16(v104), v105);
          v110 = vmovl_s16(vdup_lane_s16(v102, 0));
          v111 = vmovl_s16(vdup_lane_s16(v102, 1));
          v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
          v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
          v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
          v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
          v112 = v76 - 120;
          *v111.i8 = *a5;
          v113 = v76[-120];
          v114 = v76 - 116;
          v115 = *v114;
          *v112 = 0uLL;
          *v114 = 0uLL;
          v116 = vdupq_laneq_s32(vsubw_s16(v72, *v111.i8), 2);
          v117 = vshlq_s32(vmovl_s16(*v113.i8), v116);
          v118 = vshlq_s32(vmovl_high_s16(v113), v116);
          v119 = vshlq_s32(vmovl_s16(*v115.i8), v116);
          v120 = vshlq_s32(vmovl_high_s16(v115), v116);
          v121 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
          v122 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
          v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v121), 3uLL), vmulq_s32(v118, v121), 3uLL), v91);
          v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v122), 3uLL), vmulq_s32(v118, v122), 3uLL), v99);
          v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v121), 3uLL), vmulq_s32(v120, v121), 3uLL), v93);
          v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v122), 3uLL), vmulq_s32(v120, v122), 3uLL), v101);
        }

        v123 = vzip1q_s16(v90, v98);
        v124 = vzip2q_s16(v90, v98);
        v125 = vzip1q_s16(v92, v100);
        v126 = vzip2q_s16(v92, v100);
        v127 = vzip1q_s16(v91, v99);
        v128 = vzip2q_s16(v91, v99);
        v129 = (v75 + v69);
        v130 = (v75 + v70);
        result = (v75 + v68);
        v131 = vminq_u16(vsqaddq_u16(*(v75 + 2 * a2), v125), v71);
        v132 = vminq_u16(vsqaddq_u16(*(v75 + 4 * a2), v127), v71);
        v133 = vminq_u16(vsqaddq_u16(*(v75 + 6 * a2), vzip1q_s16(v93, v101)), v71);
        v134 = vminq_u16(vsqaddq_u16(v75[1], v124), v71);
        v135 = vminq_u16(vsqaddq_u16(*(&v75[1] + v69), v126), v71);
        v136 = vminq_u16(vsqaddq_u16(*(v75 + v70), v128), v71);
        v137 = vsqaddq_u16(*(v75 + v68), vzip2q_s16(v93, v101));
        *v75 = vminq_u16(vsqaddq_u16(*v75, v123), v71);
        *v129 = v131;
        v130[-1] = v132;
        result[-1] = v133;
        v75[1] = v134;
        v129[1] = v135;
        *v130 = v136;
        *result = vminq_u16(v137, v71);
        v74 += 8;
        v73 += 2;
        v75 += 2;
      }

      while (v74 < 0x18);
      v10 = (v10 + 8 * a2);
      v8 += 32;
      v7 += 32;
      v54 = v67 >= 0x1C;
      v67 += 4;
    }

    while (!v54);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 4uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    if (a5)
    {
      v16 = 0;
      v17 = a3 - 256;
      v18.i64[0] = 0xA0000000ALL;
      v18.i64[1] = 0xA0000000ALL;
      v19.i64[0] = 0xFC00FC00FC00FC00;
      v19.i64[1] = 0xFC00FC00FC00FC00;
      do
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = *v17[2].i8;
          v23 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
          v24 = vshlq_s32(vmovl_s16(*v17), v23);
          v25 = vshlq_s32(vmovl_high_s16(*v17->i8), v23);
          v26 = vshlq_s32(vmovl_s16(*v22.i8), v23);
          v27 = vshlq_s32(vmovl_high_s16(v22), v23);
          v28 = vmovl_s16(vdup_lane_s16(*a5, 0));
          v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v28), 3uLL), vmulq_s32(v25, v28), 3uLL);
          v30 = vmovl_s16(vdup_lane_s16(*a5, 1));
          v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v28), 3uLL), vmulq_s32(v27, v28), 3uLL);
          v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v30), 3uLL), vmulq_s32(v25, v30), 3uLL);
          v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v30), 3uLL), vmulq_s32(v27, v30), 3uLL);
          v34 = v21;
          *v17->i8 = 0uLL;
          *v17[2].i8 = 0uLL;
          v17 += 4;
          v35 = vaddq_s16(vzip1q_s16(v29, v32), v15);
          v36 = vaddq_s16(vzip2q_s16(v29, v32), v15);
          v37 = vaddq_s16(vzip1q_s16(v31, v33), v15);
          v38 = &v10[v20];
          v39 = vaddq_s16(vzip2q_s16(v31, v33), v15);
          v40 = vminq_u16(vsqaddq_u16(v38[1], v36), v19);
          v41 = vminq_u16(vsqaddq_u16(v38[2], v37), v19);
          v42 = vsqaddq_u16(v38[3], v39);
          *v38 = vminq_u16(vsqaddq_u16(*v38, v35), v19);
          v38[1] = v40;
          v38[2] = v41;
          v38[3] = vminq_u16(v42, v19);
          v20 = 4;
          v21 = 0;
        }

        while ((v34 & 1) != 0);
        ++v16;
        v10 = (v10 + 2 * a2);
      }

      while (v16 != 32);
    }

    else
    {
      v138 = result + 4;
      v139 = 32;
      v140.i64[0] = 0xFC00FC00FC00FC00;
      v140.i64[1] = 0xFC00FC00FC00FC00;
      do
      {
        v141 = vminq_u16(vsqaddq_u16(v138[-3], v15), v140);
        v142 = vminq_u16(vsqaddq_u16(v138[-2], v15), v140);
        v143 = vminq_u16(vsqaddq_u16(v138[-1], v15), v140);
        v138[-4] = vminq_u16(vsqaddq_u16(v138[-4], v15), v140);
        v138[-3] = v141;
        v138[-2] = v142;
        v138[-1] = v143;
        v144 = vminq_u16(vsqaddq_u16(v138[1], v15), v140);
        v145 = vminq_u16(vsqaddq_u16(v138[2], v15), v140);
        v146 = vminq_u16(vsqaddq_u16(v138[3], v15), v140);
        *v138 = vminq_u16(vsqaddq_u16(*v138, v15), v140);
        v138[1] = v144;
        v138[2] = v145;
        v138[3] = v146;
        v138 = (v138 + 2 * a2);
        --v139;
      }

      while (v139);
    }
  }

  return result;
}

int16x4_t *sub_277500114(int16x4_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v42 = 0;
        v43 = a3;
        do
        {
          v44 = 0;
          v45 = 1;
          do
          {
            v46 = v45;
            v47 = &v43[v44];
            v48 = v47[2];
            v49 = v47[4];
            v50 = v47[6];
            v51 = vtrn1q_s16(*v47, v48);
            v52 = vtrn2q_s16(*v47, v48);
            v53 = vtrn1q_s16(v49, v50);
            v54 = vtrn2q_s16(v49, v50);
            *v47 = vtrn1q_s32(v51, v53);
            v47[2] = vtrn1q_s32(v52, v54);
            v47[4] = vtrn2q_s32(v51, v53);
            v47[6] = vtrn2q_s32(v52, v54);
            v44 = 2;
            v45 = 0;
          }

          while ((v46 & 1) != 0);
          v43 += 16;
          v55 = v42 >= 0xC;
          v42 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F5EE0(a3, *a6 & 0x7FFF);
    }

    v56 = *(a6 + 1);
    if (v56 < 1)
    {
      if (v56 < 0)
      {
        v57 = 0;
        v58 = v7;
        do
        {
          v59 = 0;
          v60 = 1;
          do
          {
            v61 = v60;
            v62 = &v58[v59];
            v63 = v62[2];
            v64 = v62[4];
            v65 = v62[6];
            v66 = vtrn1q_s16(*v62, v63);
            v67 = vtrn2q_s16(*v62, v63);
            v68 = vtrn1q_s16(v64, v65);
            v69 = vtrn2q_s16(v64, v65);
            *v62 = vtrn1q_s32(v66, v68);
            v62[2] = vtrn1q_s32(v67, v69);
            v62[4] = vtrn2q_s32(v66, v68);
            v62[6] = vtrn2q_s32(v67, v69);
            v59 = 8;
            v60 = 0;
          }

          while ((v61 & 1) != 0);
          v58 += 64;
          v55 = v57 >= 0xC;
          v57 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F5EE0(v7, v56);
    }

    v70 = 4 * a2;
    v71 = 6 * a2;
    v72 = &a3[-64];
    v73 = &v10[6];
    v74 = 2 * a2;
    v75 = -4;
    v76.i64[0] = 0xFC00FC00FC00FC00;
    v76.i64[1] = 0xFC00FC00FC00FC00;
    v77.i64[0] = 0xA0000000ALL;
    v77.i64[1] = 0xA0000000ALL;
    do
    {
      v78 = v72[32];
      v79 = v72[34];
      v80 = v72[36];
      v81 = v72[38];
      v82 = *v7;
      v83 = *(v7 + 2);
      v84 = *(v7 + 4);
      v85 = vtrn1q_s16(v78, v79);
      v86 = vtrn2q_s16(v78, v79);
      v87 = vtrn1q_s16(v80, v81);
      v88 = vtrn2q_s16(v80, v81);
      v89 = *(v7 + 6);
      v72[32] = 0uLL;
      v72[34] = 0uLL;
      v72[36] = 0uLL;
      v72[38] = 0uLL;
      *v7 = 0uLL;
      *(v7 + 2) = 0uLL;
      v90 = vtrn1q_s32(v85, v87);
      v91 = vtrn2q_s32(v85, v87);
      v92 = vtrn1q_s32(v86, v88);
      v93 = vtrn2q_s32(v86, v88);
      v94 = vtrn1q_s16(v82, v83);
      v95 = vtrn2q_s16(v82, v83);
      v96 = vtrn1q_s16(v84, v89);
      v97 = vtrn2q_s16(v84, v89);
      v98 = vtrn1q_s32(v94, v96);
      v99 = vtrn2q_s32(v94, v96);
      *(v7 + 4) = 0uLL;
      v100 = vtrn1q_s32(v95, v97);
      v101 = vtrn2q_s32(v95, v97);
      *(v7 + 6) = 0uLL;
      if (a5)
      {
        v102 = *a5;
        v103 = *v72;
        v104 = v72[2];
        *v72 = 0uLL;
        v72[2] = 0uLL;
        v105 = vdupq_laneq_s32(vsubw_s16(v77, v102), 2);
        v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
        v107 = vshlq_s32(vmovl_high_s16(v103), v105);
        v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
        v109 = vshlq_s32(vmovl_high_s16(v104), v105);
        v110 = vmovl_s16(vdup_lane_s16(v102, 0));
        v111 = vmovl_s16(vdup_lane_s16(v102, 1));
        v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
        v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
        v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
        v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
        *v111.i8 = *a5;
        v112 = v72[4];
        v113 = v72[6];
        v72[4] = 0uLL;
        v72[6] = 0uLL;
        v114 = vdupq_laneq_s32(vsubw_s16(v77, *v111.i8), 2);
        v115 = vshlq_s32(vmovl_s16(*v112.i8), v114);
        v116 = vshlq_s32(vmovl_high_s16(v112), v114);
        v117 = vshlq_s32(vmovl_s16(*v113.i8), v114);
        v118 = vshlq_s32(vmovl_high_s16(v113), v114);
        v119 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
        v120 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
        v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v119), 3uLL), vmulq_s32(v116, v119), 3uLL), v91);
        v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v120), 3uLL), vmulq_s32(v116, v120), 3uLL), v99);
        v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v119), 3uLL), vmulq_s32(v118, v119), 3uLL), v93);
        v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v120), 3uLL), vmulq_s32(v118, v120), 3uLL), v101);
      }

      v121 = vzip1q_s16(v90, v98);
      v122 = vzip2q_s16(v90, v98);
      v123 = vzip1q_s16(v92, v100);
      v124 = vzip2q_s16(v92, v100);
      v125 = vzip1q_s16(v91, v99);
      v126 = vzip2q_s16(v91, v99);
      v127 = (v73 + v74);
      v128 = (v73 + v70);
      v129 = (v73 + v71);
      v130 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v74), v123), v76);
      v131 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v70), v125), v76);
      v132 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v71), vzip1q_s16(v93, v101)), v76);
      v133 = vminq_u16(vsqaddq_u16(v73[-2], v122), v76);
      v134 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v74), v124), v76);
      v135 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v70), v126), v76);
      v136 = vsqaddq_u16(*(&v73[-2] + v71), vzip2q_s16(v93, v101));
      v73[-3] = vminq_u16(vsqaddq_u16(v73[-3], v121), v76);
      v127[-3] = v130;
      v128[-3] = v131;
      v129[-3] = v132;
      v73[-2] = v133;
      v127[-2] = v134;
      v128[-2] = v135;
      v129[-2] = vminq_u16(v136, v76);
      v137 = v72[33];
      v138 = v72[35];
      v139 = v72[37];
      v140 = v72[39];
      v141 = *(v7 + 1);
      v142 = *(v7 + 3);
      v143 = *(v7 + 5);
      v144 = vtrn1q_s16(v137, v138);
      v145 = vtrn2q_s16(v137, v138);
      v146 = vtrn1q_s16(v139, v140);
      v147 = vtrn2q_s16(v139, v140);
      v148 = *(v7 + 7);
      v72[33] = 0uLL;
      v72[35] = 0uLL;
      v72[37] = 0uLL;
      v72[39] = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 3) = 0uLL;
      *(v7 + 5) = 0uLL;
      *(v7 + 7) = 0uLL;
      v149 = vtrn1q_s32(v144, v146);
      v150 = vtrn2q_s32(v144, v146);
      v151 = vtrn1q_s32(v145, v147);
      v152 = vtrn2q_s32(v145, v147);
      v153 = vtrn1q_s16(v141, v142);
      v154 = vtrn2q_s16(v141, v142);
      v155 = vtrn1q_s16(v143, v148);
      v156 = vtrn2q_s16(v143, v148);
      v157 = vtrn1q_s32(v153, v155);
      v158 = vtrn2q_s32(v153, v155);
      v159 = vtrn1q_s32(v154, v156);
      v160 = vtrn2q_s32(v154, v156);
      if (a5)
      {
        v161 = *a5;
        v162 = v72[1];
        v163 = v72[3];
        v72[1] = 0uLL;
        v72[3] = 0uLL;
        v164 = vdupq_laneq_s32(vsubw_s16(v77, v161), 2);
        v165 = vshlq_s32(vmovl_s16(*v162.i8), v164);
        v166 = vshlq_s32(vmovl_high_s16(v162), v164);
        v167 = vshlq_s32(vmovl_s16(*v163.i8), v164);
        v168 = vshlq_s32(vmovl_high_s16(v163), v164);
        v169 = vmovl_s16(vdup_lane_s16(v161, 0));
        v170 = vmovl_s16(vdup_lane_s16(v161, 1));
        v149 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v169), 3uLL), vmulq_s32(v166, v169), 3uLL), v149);
        v157 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v170), 3uLL), vmulq_s32(v166, v170), 3uLL), v157);
        v151 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v169), 3uLL), vmulq_s32(v168, v169), 3uLL), v151);
        v159 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v170), 3uLL), vmulq_s32(v168, v170), 3uLL), v159);
        *v170.i8 = *a5;
        v171 = v72[5];
        v172 = v72[7];
        v72[5] = 0uLL;
        v72[7] = 0uLL;
        v173 = vdupq_laneq_s32(vsubw_s16(v77, *v170.i8), 2);
        v174 = vshlq_s32(vmovl_s16(*v171.i8), v173);
        v175 = vshlq_s32(vmovl_high_s16(v171), v173);
        v176 = vshlq_s32(vmovl_s16(*v172.i8), v173);
        v177 = vshlq_s32(vmovl_high_s16(v172), v173);
        v178 = vmovl_s16(vdup_lane_s16(*v170.i8, 0));
        v179 = vmovl_s16(vdup_lane_s16(*v170.i8, 1));
        v150 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v178), 3uLL), vmulq_s32(v175, v178), 3uLL), v150);
        v158 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v179), 3uLL), vmulq_s32(v175, v179), 3uLL), v158);
        v152 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v178), 3uLL), vmulq_s32(v177, v178), 3uLL), v152);
        v160 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v179), 3uLL), vmulq_s32(v177, v179), 3uLL), v160);
      }

      v180 = vzip1q_s16(v149, v157);
      v181 = vzip2q_s16(v149, v157);
      v182 = vzip1q_s16(v151, v159);
      v183 = vzip2q_s16(v151, v159);
      v184 = vzip1q_s16(v150, v158);
      v185 = vzip2q_s16(v150, v158);
      v186 = vminq_u16(vsqaddq_u16(v127[-1], v182), v76);
      v187 = vminq_u16(vsqaddq_u16(v128[-1], v184), v76);
      v188 = vminq_u16(vsqaddq_u16(v129[-1], vzip1q_s16(v152, v160)), v76);
      v189 = vminq_u16(vsqaddq_u16(*v73, v181), v76);
      v190 = vminq_u16(vsqaddq_u16(*v127, v183), v76);
      v191 = vminq_u16(vsqaddq_u16(*v128, v185), v76);
      v192 = vsqaddq_u16(*v129, vzip2q_s16(v152, v160));
      v73[-1] = vminq_u16(vsqaddq_u16(v73[-1], v180), v76);
      v127[-1] = v186;
      v128[-1] = v187;
      v129[-1] = v188;
      *v73 = v189;
      *v127 = v190;
      *v128 = v191;
      *v129 = vminq_u16(v192, v76);
      v72 += 8;
      v75 += 4;
      v73 = (v73 + 8 * a2);
      v7 += 64;
    }

    while (v75 < 0xC);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 4uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    v16 = &result[4];
    v17 = 2 * a2;
    if (a5)
    {
      v18 = 0x1FFFFFFFFFFFFFC0;
      v19.i64[0] = 0xA0000000ALL;
      v19.i64[1] = 0xA0000000ALL;
      v20.i64[0] = 0xFC00FC00FC00FC00;
      v20.i64[1] = 0xFC00FC00FC00FC00;
      do
      {
        v21 = &a3[v18];
        v22 = *a3[v18].i8;
        v23 = *a3[v18 + 2].i8;
        v24 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v25 = vshlq_s32(vmovl_s16(*v22.i8), v24);
        v26 = vshlq_s32(vmovl_high_s16(v22), v24);
        v27 = vshlq_s32(vmovl_s16(*v23.i8), v24);
        v28 = vshlq_s32(vmovl_high_s16(v23), v24);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v29), 3uLL), vmulq_s32(v28, v29), 3uLL);
        v32 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v32), 3uLL), vmulq_s32(v26, v32), 3uLL);
        v34 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v32), 3uLL), vmulq_s32(v28, v32), 3uLL);
        *v21->i8 = 0uLL;
        *v21[2].i8 = 0uLL;
        v35 = vaddq_s16(vzip1q_s16(v30, v33), v15);
        v36 = vaddq_s16(vzip2q_s16(v30, v33), v15);
        v37 = vaddq_s16(vzip1q_s16(v31, v34), v15);
        v38 = vaddq_s16(vzip2q_s16(v31, v34), v15);
        v39 = vminq_u16(vsqaddq_u16(v16[-1], v36), v20);
        v40 = vminq_u16(vsqaddq_u16(*v16, v37), v20);
        v41 = vsqaddq_u16(v16[1], v38);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v35), v20);
        v16[-1] = v39;
        *v16 = v40;
        v16[1] = vminq_u16(v41, v20);
        v16 = (v16 + v17);
        v18 += 4;
      }

      while ((v18 * 8));
    }

    else
    {
      v193 = 16;
      v194.i64[0] = 0xFC00FC00FC00FC00;
      v194.i64[1] = 0xFC00FC00FC00FC00;
      do
      {
        v195 = vminq_u16(vsqaddq_u16(v16[-1], v15), v194);
        v196 = vminq_u16(vsqaddq_u16(*v16, v15), v194);
        v197 = vminq_u16(vsqaddq_u16(v16[1], v15), v194);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v15), v194);
        v16[-1] = v195;
        *v16 = v196;
        v16[1] = v197;
        v16 = (v16 + v17);
        --v193;
      }

      while (v193);
    }
  }

  return result;
}

int16x4_t *sub_2775008E0(int16x4_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5, int *a6)
{
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v41 = 1;
        v42 = a3;
        do
        {
          v43 = v41;
          v44 = v42[1];
          v45 = v42[2];
          v46 = v42[3];
          v47 = vtrn1q_s16(*v42, v44);
          v48 = vtrn2q_s16(*v42, v44);
          v49 = vtrn1q_s16(v45, v46);
          v50 = vtrn2q_s16(v45, v46);
          *v42 = vtrn1q_s32(v47, v49);
          v42[1] = vtrn1q_s32(v48, v50);
          v42[2] = vtrn2q_s32(v47, v49);
          v42[3] = vtrn2q_s32(v48, v50);
          v42 += 4;
          v41 = 0;
        }

        while ((v43 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F62A4(a3, *a6 & 0x7FFF);
    }

    v51 = *(a6 + 1);
    if (v51 < 1)
    {
      if (v51 < 0)
      {
        v52 = 1;
        v53 = a4;
        do
        {
          v54 = v52;
          v55 = v53[1];
          v56 = v53[2];
          v57 = v53[3];
          v58 = vtrn1q_s16(*v53, v55);
          v59 = vtrn2q_s16(*v53, v55);
          v60 = vtrn1q_s16(v56, v57);
          v61 = vtrn2q_s16(v56, v57);
          *v53 = vtrn1q_s32(v58, v60);
          v53[1] = vtrn1q_s32(v59, v61);
          v53[2] = vtrn2q_s32(v58, v60);
          v53[3] = vtrn2q_s32(v59, v61);
          v53 += 4;
          v52 = 0;
        }

        while ((v54 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F62A4(a4, v51);
    }

    v62 = (v10 + 2 * a2);
    v63 = (v10 + 4 * a2);
    v64 = (v10 + 6 * a2);
    v65 = a3[1];
    v66 = a3[2];
    v67 = a3[3];
    v68 = *a4;
    v69 = a4[1];
    v70 = vtrn1q_s16(*a3, v65);
    v71 = vtrn2q_s16(*a3, v65);
    v72 = vtrn1q_s16(v66, v67);
    v73 = vtrn2q_s16(v66, v67);
    v74 = a4[2];
    v75 = a4[3];
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    v76 = vtrn1q_s32(v70, v72);
    v77 = vtrn2q_s32(v70, v72);
    v78 = vtrn1q_s32(v71, v73);
    v79 = vtrn2q_s32(v71, v73);
    v80 = vtrn1q_s16(v68, v69);
    v81 = vtrn2q_s16(v68, v69);
    v82 = vtrn1q_s16(v74, v75);
    v83 = vtrn2q_s16(v74, v75);
    v84 = vtrn1q_s32(v80, v82);
    v85 = vtrn2q_s32(v80, v82);
    v86 = vtrn1q_s32(v81, v83);
    v87 = vtrn2q_s32(v81, v83);
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    if (a5)
    {
      v88 = a3[-8];
      v89 = a3[-7];
      v90.i64[0] = 0xA0000000ALL;
      v90.i64[1] = 0xA0000000ALL;
      v91 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v92 = vshlq_s32(vmovl_s16(*v88.i8), v91);
      v93 = vshlq_s32(vmovl_high_s16(v88), v91);
      v94 = vshlq_s32(vmovl_s16(*v89.i8), v91);
      v95 = vshlq_s32(vmovl_high_s16(v89), v91);
      v96 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v97 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-8] = 0uLL;
      a3[-7] = 0uLL;
      v76 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v96), 3uLL), vmulq_s32(v93, v96), 3uLL), v76);
      v84 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v97), 3uLL), vmulq_s32(v93, v97), 3uLL), v84);
      v78 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v96), 3uLL), vmulq_s32(v95, v96), 3uLL), v78);
      v86 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v97), 3uLL), vmulq_s32(v95, v97), 3uLL), v86);
      v98 = a3[-6];
      v99 = a3[-5];
      v100 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v101 = vshlq_s32(vmovl_s16(*v98.i8), v100);
      v102 = vshlq_s32(vmovl_high_s16(v98), v100);
      v103 = vshlq_s32(vmovl_s16(*v99.i8), v100);
      v104 = vshlq_s32(vmovl_high_s16(v99), v100);
      v105 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v106 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-6] = 0uLL;
      a3[-5] = 0uLL;
      v77 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v105), 3uLL), vmulq_s32(v102, v105), 3uLL), v77);
      v85 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v106), 3uLL), vmulq_s32(v102, v106), 3uLL), v85);
      v79 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v105), 3uLL), vmulq_s32(v104, v105), 3uLL), v79);
      v87 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v106), 3uLL), vmulq_s32(v104, v106), 3uLL), v87);
    }

    v107 = vzip1q_s16(v76, v84);
    v108 = vzip2q_s16(v76, v84);
    v109 = vzip1q_s16(v78, v86);
    v110 = vzip2q_s16(v78, v86);
    v111 = vzip1q_s16(v77, v85);
    v112 = vzip2q_s16(v77, v85);
    v113 = vzip1q_s16(v79, v87);
    v114 = vzip2q_s16(v79, v87);
    v115.i64[0] = 0xFC00FC00FC00FC00;
    v115.i64[1] = 0xFC00FC00FC00FC00;
    v116 = vminq_u16(vsqaddq_u16(*v62, v109), v115);
    v117 = vminq_u16(vsqaddq_u16(*v63, v111), v115);
    v118 = vminq_u16(vsqaddq_u16(*v64, v113), v115);
    v119 = vminq_u16(vsqaddq_u16(v10[1], v108), v115);
    v120 = vminq_u16(vsqaddq_u16(v62[1], v110), v115);
    v121 = vminq_u16(vsqaddq_u16(v63[1], v112), v115);
    v122 = vsqaddq_u16(v64[1], v114);
    *v10 = vminq_u16(vsqaddq_u16(*v10, v107), v115);
    *v62 = v116;
    *v63 = v117;
    *v64 = v118;
    v10[1] = v119;
    v62[1] = v120;
    v63[1] = v121;
    v64[1] = vminq_u16(v122, v115);
    v123 = a3[4];
    v124 = a3[5];
    v125 = a3[6];
    v126 = a3[7];
    v127 = a4[4];
    v128 = a4[5];
    v129 = vtrn1q_s16(v123, v124);
    v130 = vtrn2q_s16(v123, v124);
    v131 = vtrn1q_s16(v125, v126);
    v132 = vtrn2q_s16(v125, v126);
    v133 = a4[6];
    v134 = a4[7];
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    v135 = vtrn1q_s32(v129, v131);
    v136 = vtrn2q_s32(v129, v131);
    v137 = vtrn1q_s32(v130, v132);
    v138 = vtrn2q_s32(v130, v132);
    v139 = vtrn1q_s16(v127, v128);
    v140 = vtrn2q_s16(v127, v128);
    v141 = vtrn1q_s16(v133, v134);
    v142 = vtrn2q_s16(v133, v134);
    v143 = vtrn1q_s32(v139, v141);
    v144 = vtrn2q_s32(v139, v141);
    v145 = vtrn1q_s32(v140, v142);
    v146 = vtrn2q_s32(v140, v142);
    a4[6] = 0uLL;
    a4[7] = 0uLL;
    a4[4] = 0uLL;
    a4[5] = 0uLL;
    if (a5)
    {
      v147 = a3[-4];
      v148 = a3[-3];
      v149.i64[0] = 0xA0000000ALL;
      v149.i64[1] = 0xA0000000ALL;
      v150 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v151 = vshlq_s32(vmovl_s16(*v147.i8), v150);
      v152 = vshlq_s32(vmovl_high_s16(v147), v150);
      v153 = vshlq_s32(vmovl_s16(*v148.i8), v150);
      v154 = vshlq_s32(vmovl_high_s16(v148), v150);
      v155 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v156 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-4] = 0u;
      a3[-3] = 0u;
      v135 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v155), 3uLL), vmulq_s32(v152, v155), 3uLL), v135);
      v143 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v156), 3uLL), vmulq_s32(v152, v156), 3uLL), v143);
      v137 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v155), 3uLL), vmulq_s32(v154, v155), 3uLL), v137);
      v145 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v156), 3uLL), vmulq_s32(v154, v156), 3uLL), v145);
      v157 = a3[-2];
      v158 = a3[-1];
      v159 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v160 = vshlq_s32(vmovl_s16(*v157.i8), v159);
      v161 = vshlq_s32(vmovl_high_s16(v157), v159);
      v162 = vshlq_s32(vmovl_s16(*v158.i8), v159);
      v163 = vshlq_s32(vmovl_high_s16(v158), v159);
      v164 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v165 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-2] = 0u;
      a3[-1] = 0u;
      v136 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v164), 3uLL), vmulq_s32(v161, v164), 3uLL), v136);
      v144 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v165), 3uLL), vmulq_s32(v161, v165), 3uLL), v144);
      v138 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v164), 3uLL), vmulq_s32(v163, v164), 3uLL), v138);
      v146 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v165), 3uLL), vmulq_s32(v163, v165), 3uLL), v146);
    }

    v166 = (v10 + 8 * a2);
    v167 = (v166 + 6 * a2);
    v168 = (v166 + 4 * a2);
    v169 = (v166 + 2 * a2);
    v170 = vzip1q_s16(v135, v143);
    v171 = vzip2q_s16(v135, v143);
    v172 = vzip1q_s16(v137, v145);
    v173 = vzip2q_s16(v137, v145);
    v174 = vzip1q_s16(v136, v144);
    v175 = vzip2q_s16(v136, v144);
    v176 = vzip1q_s16(v138, v146);
    v177 = vzip2q_s16(v138, v146);
    v178 = vminq_u16(vsqaddq_u16(*v169, v172), v115);
    v179 = vminq_u16(vsqaddq_u16(*v168, v174), v115);
    v180 = vminq_u16(vsqaddq_u16(*v167, v176), v115);
    v181 = vminq_u16(vsqaddq_u16(v166[1], v171), v115);
    v182 = vminq_u16(vsqaddq_u16(v169[1], v173), v115);
    v183 = vminq_u16(vsqaddq_u16(v168[1], v175), v115);
    v184 = vsqaddq_u16(v167[1], v177);
    *v166 = vminq_u16(vsqaddq_u16(*v166, v170), v115);
    *v169 = v178;
    *v168 = v179;
    *v167 = v180;
    v166[1] = v181;
    v169[1] = v182;
    v168[1] = v183;
    v167[1] = vminq_u16(v184, v115);
  }

  else
  {
    v13 = vld1q_dup_s16(a3->i16);
    v14 = vld1q_dup_s16(a4->i16);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 4uLL);
    a3->i16[0] = 0;
    a4->i16[0] = 0;
    if (a5)
    {
      v16 = a3 - 8;
      v17 = 2 * a2;
      v18 = -2;
      v19.i64[0] = 0xA0000000ALL;
      v19.i64[1] = 0xA0000000ALL;
      v20.i64[0] = 0xFC00FC00FC00FC00;
      v20.i64[1] = 0xFC00FC00FC00FC00;
      do
      {
        v21 = v16[1];
        v22 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v23 = vshlq_s32(vmovl_s16(*v16->i8), v22);
        v24 = vshlq_s32(vmovl_high_s16(*v16), v22);
        v25 = vshlq_s32(vmovl_s16(*v21.i8), v22);
        v26 = vshlq_s32(vmovl_high_s16(v21), v22);
        v27 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v27), 3uLL), vmulq_s32(v24, v27), 3uLL);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v27), 3uLL), vmulq_s32(v26, v27), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v29), 3uLL), vmulq_s32(v24, v29), 3uLL);
        v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16 += 2;
        v33 = vaddq_s16(vzip1q_s16(v28, v31), v15);
        v34 = vzip2q_s16(v28, v31);
        v35 = vaddq_s16(vzip1q_s16(v30, v32), v15);
        v36 = (v10 + v17);
        v37 = vaddq_s16(vzip2q_s16(v30, v32), v15);
        v38 = vminq_u16(vsqaddq_u16(v10[1], vaddq_s16(v34, v15)), v20);
        v39 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v35), v20);
        v40 = vminq_u16(vsqaddq_u16(*(&v10[1] + v17), v37), v20);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v33), v20);
        v10[1] = v38;
        *v36 = v39;
        v36[1] = v40;
        v10 = (v10 + 4 * a2);
        v18 += 2;
      }

      while (v18 < 6);
    }

    else
    {
      v185 = 2 * a2;
      v186 = -2;
      v187.i64[0] = 0xFC00FC00FC00FC00;
      v187.i64[1] = 0xFC00FC00FC00FC00;
      do
      {
        v188 = (v10 + v185);
        v189 = vminq_u16(vsqaddq_u16(v10[1], v15), v187);
        v190 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v15), v187);
        v191 = vminq_u16(vsqaddq_u16(*(&v10[1] + v185), v15), v187);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v15), v187);
        v10[1] = v189;
        *v188 = v190;
        v188[1] = v191;
        v10 = (v10 + 4 * a2);
        v186 += 2;
      }

      while (v186 < 6);
    }
  }

  return result;
}

double sub_277500FF0(uint16x8_t *a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x4_t *a5, __int16 *a6)
{
  v12 = *a6;
  if (v12 >= 1)
  {
    sub_2774F64CC(a3, v12);
  }

  v13 = a6[1];
  if (v13 >= 1)
  {
    sub_2774F64CC(a4, v13);
  }

  *&result = sub_2774FF9F4(a1, a2, a3, a4, a5).u64[0];
  return result;
}

void sub_277501080(int16x4_t *a1)
{
  v2[65] = *MEMORY[0x277D85DE8];
  sub_2774F15E8(v2, a1, 5);
  sub_2774F1738(a1, v2);
}

void sub_2775010F0(int16x4_t *a1)
{
  v2[17] = *MEMORY[0x277D85DE8];
  sub_2774F19A4(v2, a1, 4);
  sub_2774F1A4C(a1, v2);
}

int16x4_t sub_277501160(int16x4_t *a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = vtrn1_s16(*a1, v1);
  v5 = vtrn2_s16(*a1, v1);
  v6 = vtrn1_s16(v2, v3);
  v7 = vtrn2_s16(v2, v3);
  v8 = vzip1_s32(v4, v6);
  v9 = vzip2_s32(v4, v6);
  v10 = vzip1_s32(v5, v7);
  v11 = vzip2_s32(v5, v7);
  v12 = vadd_s16(v11, v8);
  v13 = vsub_s16(v8, v11);
  v14 = vadd_s16(v9, v10);
  v15 = vsub_s16(v10, v9);
  v17[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v14, v12), 6uLL), 3uLL));
  v17[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v15, 0x24002400240024), v13, 0x53005300530053), 3uLL));
  v17[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v12, v14), 6uLL), 3uLL));
  v17[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v13, 0x24002400240024), v15, 0x53005300530053), 3uLL));
  return sub_2774F1C40(a1, v17);
}

uint16x8_t *sub_277501238(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 512;
  v6 = result + 2;
  v7.i64[0] = 0xF800F800F800F800;
  v7.i64[1] = 0xF800F800F800F800;
  v8.i64[0] = 0xB0000000BLL;
  v8.i64[1] = 0xB0000000BLL;
  v9 = 16;
  do
  {
    v11 = *(v5 + 512);
    v10 = *(v5 + 528);
    v13 = *a4;
    v12 = a4[1];
    if (a5)
    {
      v14 = *(v5 + 16);
      v15 = vdupq_laneq_s32(vsubw_s16(v8, *a5), 2);
      v16 = vshlq_s32(vmovl_s16(*v5), v15);
      v17 = vshlq_s32(vmovl_high_s16(*v5), v15);
      v18 = vshlq_s32(vmovl_s16(*v14.i8), v15);
      v19 = vshlq_s32(vmovl_high_s16(v14), v15);
      v20 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v21 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v20), 3uLL), vmulq_s32(v17, v20), 3uLL));
      v10 = vaddq_s16(v10, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v20), 3uLL), vmulq_s32(v19, v20), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v21), 3uLL), vmulq_s32(v17, v21), 3uLL));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v21), 3uLL), vmulq_s32(v19, v21), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 512) = 0uLL;
    *(v5 + 528) = 0uLL;
    v22 = vzip1q_s16(v11, v13);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v23 = vminq_u16(vsqaddq_u16(v6[-1], vzip2q_s16(v11, v13)), v7);
    v24 = vminq_u16(vsqaddq_u16(*v6, vzip1q_s16(v10, v12)), v7);
    v25 = vminq_u16(vsqaddq_u16(v6[1], vzip2q_s16(v10, v12)), v7);
    v6[-2] = vminq_u16(vsqaddq_u16(v6[-2], v22), v7);
    v6[-1] = v23;
    *v6 = v24;
    v6[1] = v25;
    v5 += 32;
    v6 = (v6 + 2 * a2);
    --v9;
  }

  while (v9);
  return result;
}

uint16x8_t *sub_277501350(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 128;
  v6 = 2 * a2;
  v7.i64[0] = 0xF800F800F800F800;
  v7.i64[1] = 0xF800F800F800F800;
  v8 = result + 1;
  v9.i64[0] = 0xB0000000BLL;
  v9.i64[1] = 0xB0000000BLL;
  v10 = -2;
  do
  {
    v12 = *(v5 + 128);
    v11 = *(v5 + 144);
    v14 = *a4;
    v13 = a4[1];
    if (a5)
    {
      v15 = *(v5 + 16);
      v16 = vdupq_laneq_s32(vsubw_s16(v9, *a5), 2);
      v17 = vshlq_s32(vmovl_s16(*v5), v16);
      v18 = vshlq_s32(vmovl_high_s16(*v5), v16);
      v19 = vshlq_s32(vmovl_s16(*v15.i8), v16);
      v20 = vshlq_s32(vmovl_high_s16(v15), v16);
      v21 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v22 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v21), 3uLL), vmulq_s32(v18, v21), 3uLL));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v21), 3uLL), vmulq_s32(v20, v21), 3uLL));
      v14 = vaddq_s16(v14, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v22), 3uLL), vmulq_s32(v18, v22), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v22), 3uLL), vmulq_s32(v20, v22), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 128) = 0uLL;
    *(v5 + 144) = 0uLL;
    v23 = vzip1q_s16(v12, v14);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v24 = (v8 + v6);
    v25 = vminq_u16(vsqaddq_u16(*v8, vzip2q_s16(v12, v14)), v7);
    v26 = vminq_u16(vsqaddq_u16(*(&v8[-1] + v6), vzip1q_s16(v11, v13)), v7);
    v27 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), vzip2q_s16(v11, v13)), v7);
    v8[-1] = vminq_u16(vsqaddq_u16(v8[-1], v23), v7);
    *v8 = v25;
    v10 += 2;
    v24[-1] = v26;
    *v24 = v27;
    v5 += 32;
    v8 = (v8 + 4 * a2);
  }

  while (v10 < 6);
  return result;
}

uint16x8_t sub_277501478(uint16x8_t *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5)
{
  v6 = *a3;
  v5 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  if (a5)
  {
    v9 = a3[-2];
    v10 = a3[-1];
    v11.i64[0] = 0xB0000000BLL;
    v11.i64[1] = 0xB0000000BLL;
    v12 = vdupq_laneq_s32(vsubw_s16(v11, *a5), 2);
    v13 = vshlq_s32(vmovl_s16(*v9.i8), v12);
    v14 = vshlq_s32(vmovl_high_s16(v9), v12);
    v15 = vshlq_s32(vmovl_s16(*v10.i8), v12);
    v16 = vshlq_s32(vmovl_high_s16(v10), v12);
    v17 = vmovl_s16(vdup_lane_s16(*a5, 0));
    v18 = vmovl_s16(vdup_lane_s16(*a5, 1));
    v6 = vaddq_s16(v6, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v17), 3uLL), vmulq_s32(v14, v17), 3uLL));
    v5 = vaddq_s16(v5, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v17), 3uLL), vmulq_s32(v16, v17), 3uLL));
    v8 = vaddq_s16(v8, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v18), 3uLL), vmulq_s32(v14, v18), 3uLL));
    v7 = vaddq_s16(v7, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v18), 3uLL), vmulq_s32(v16, v18), 3uLL));
    a3[-2] = 0u;
    a3[-1] = 0u;
  }

  *a3 = 0u;
  a3[1] = 0u;
  v19 = vzip1q_s16(v6, v8);
  v20 = vzip2q_s16(v6, v8);
  v21 = vzip1q_s16(v5, v7);
  v22 = vzip2q_s16(v5, v7);
  *a4 = 0u;
  a4[1] = 0u;
  v23 = *(a1 + 6 * a2);
  v24 = vsqaddq_u16(*a1, v19);
  v19.i64[0] = 0xF800F800F800F800;
  v19.i64[1] = 0xF800F800F800F800;
  v25 = vminq_u16(vsqaddq_u16(*(a1 + 2 * a2), v20), v19);
  v26 = vminq_u16(vsqaddq_u16(*(a1 + 4 * a2), v21), v19);
  *a1 = vminq_u16(v24, v19);
  *(a1 + 2 * a2) = v25;
  result = vminq_u16(vsqaddq_u16(v23, v22), v19);
  *(a1 + 4 * a2) = v26;
  *(a1 + 6 * a2) = result;
  return result;
}

uint16x8_t *sub_277501594(uint16x8_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v8 = a3;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v43 = 0;
        v44 = a3 + 16;
        do
        {
          v45 = -8;
          v46 = v44;
          do
          {
            v47 = v46[-8];
            v48 = v46[-4];
            v49 = v46[4];
            v50 = vtrn1q_s16(v47, v48);
            v51 = vtrn2q_s16(v47, v48);
            v52 = vtrn1q_s16(*v46, v49);
            v53 = vtrn2q_s16(*v46, v49);
            v46[-8] = vtrn1q_s32(v50, v52);
            v46[-4] = vtrn1q_s32(v51, v53);
            *v46 = vtrn2q_s32(v50, v52);
            v46[4] = vtrn2q_s32(v51, v53);
            v45 += 8;
            ++v46;
          }

          while (v45 < 0x18);
          v44 += 32;
          v54 = v43 >= 0x1C;
          v43 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F7220(a3, *a6 & 0x7FFF);
    }

    v55 = *(a6 + 1);
    if (v55 < 1)
    {
      if (v55 < 0)
      {
        v56 = 0;
        v57 = v7 + 16;
        do
        {
          v58 = -8;
          v59 = v57;
          do
          {
            v60 = v59[-8];
            v61 = v59[-4];
            v62 = v59[4];
            v63 = vtrn1q_s16(v60, v61);
            v64 = vtrn2q_s16(v60, v61);
            v65 = vtrn1q_s16(*v59, v62);
            v66 = vtrn2q_s16(*v59, v62);
            v59[-8] = vtrn1q_s32(v63, v65);
            v59[-4] = vtrn1q_s32(v64, v66);
            *v59 = vtrn2q_s32(v63, v65);
            v59[4] = vtrn2q_s32(v64, v66);
            v58 += 8;
            ++v59;
          }

          while (v58 < 0x18);
          v57 += 32;
          v54 = v56 >= 0x1C;
          v56 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F7220(v7, v55);
    }

    v67 = 0;
    v68 = 6 * a2 + 16;
    v69 = 2 * a2;
    v70 = 4 * a2 + 16;
    v71.i64[0] = 0xF800F800F800F800;
    v71.i64[1] = 0xF800F800F800F800;
    v72.i64[0] = 0xB0000000BLL;
    v72.i64[1] = 0xB0000000BLL;
    do
    {
      v73 = 0;
      v74 = -8;
      v75 = v10;
      do
      {
        v76 = &v8[v73];
        v77 = *v8[v73].i8;
        v78 = *v8[v73 + 8].i8;
        v79 = *v8[v73 + 16].i8;
        v80 = *v8[v73 + 24].i8;
        v81 = &v7[v73];
        v82 = *v7[v73].i8;
        v83 = *v7[v73 + 8].i8;
        v84 = *v7[v73 + 16].i8;
        v85 = vtrn1q_s16(v77, v78);
        v86 = vtrn2q_s16(v77, v78);
        v87 = vtrn1q_s16(v79, v80);
        v88 = vtrn2q_s16(v79, v80);
        v89 = *v7[v73 + 24].i8;
        *v76 = 0uLL;
        v76[4] = 0uLL;
        v76[8] = 0uLL;
        v76[12] = 0uLL;
        *v81->i8 = 0uLL;
        *v81[8].i8 = 0uLL;
        *v81[16].i8 = 0uLL;
        *v81[24].i8 = 0uLL;
        v90 = vtrn1q_s32(v85, v87);
        v91 = vtrn2q_s32(v85, v87);
        v92 = vtrn1q_s32(v86, v88);
        v93 = vtrn2q_s32(v86, v88);
        v94 = vtrn1q_s16(v82, v83);
        v95 = vtrn2q_s16(v82, v83);
        v96 = vtrn1q_s16(v84, v89);
        v97 = vtrn2q_s16(v84, v89);
        v98 = vtrn1q_s32(v94, v96);
        v99 = vtrn2q_s32(v94, v96);
        v100 = vtrn1q_s32(v95, v97);
        v101 = vtrn2q_s32(v95, v97);
        if (a5)
        {
          v102 = *a5;
          v103 = v76[-128];
          v104 = v76[-124];
          v76[-128] = 0uLL;
          v76[-124] = 0uLL;
          v105 = vdupq_laneq_s32(vsubw_s16(v72, v102), 2);
          v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
          v107 = vshlq_s32(vmovl_high_s16(v103), v105);
          v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
          v109 = vshlq_s32(vmovl_high_s16(v104), v105);
          v110 = vmovl_s16(vdup_lane_s16(v102, 0));
          v111 = vmovl_s16(vdup_lane_s16(v102, 1));
          v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
          v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
          v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
          v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
          v112 = v76 - 120;
          *v111.i8 = *a5;
          v113 = v76[-120];
          v114 = v76 - 116;
          v115 = *v114;
          *v112 = 0uLL;
          *v114 = 0uLL;
          v116 = vdupq_laneq_s32(vsubw_s16(v72, *v111.i8), 2);
          v117 = vshlq_s32(vmovl_s16(*v113.i8), v116);
          v118 = vshlq_s32(vmovl_high_s16(v113), v116);
          v119 = vshlq_s32(vmovl_s16(*v115.i8), v116);
          v120 = vshlq_s32(vmovl_high_s16(v115), v116);
          v121 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
          v122 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
          v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v121), 3uLL), vmulq_s32(v118, v121), 3uLL), v91);
          v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v122), 3uLL), vmulq_s32(v118, v122), 3uLL), v99);
          v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v121), 3uLL), vmulq_s32(v120, v121), 3uLL), v93);
          v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v122), 3uLL), vmulq_s32(v120, v122), 3uLL), v101);
        }

        v123 = vzip1q_s16(v90, v98);
        v124 = vzip2q_s16(v90, v98);
        v125 = vzip1q_s16(v92, v100);
        v126 = vzip2q_s16(v92, v100);
        v127 = vzip1q_s16(v91, v99);
        v128 = vzip2q_s16(v91, v99);
        v129 = (v75 + v69);
        v130 = (v75 + v70);
        result = (v75 + v68);
        v131 = vminq_u16(vsqaddq_u16(*(v75 + 2 * a2), v125), v71);
        v132 = vminq_u16(vsqaddq_u16(*(v75 + 4 * a2), v127), v71);
        v133 = vminq_u16(vsqaddq_u16(*(v75 + 6 * a2), vzip1q_s16(v93, v101)), v71);
        v134 = vminq_u16(vsqaddq_u16(v75[1], v124), v71);
        v135 = vminq_u16(vsqaddq_u16(*(&v75[1] + v69), v126), v71);
        v136 = vminq_u16(vsqaddq_u16(*(v75 + v70), v128), v71);
        v137 = vsqaddq_u16(*(v75 + v68), vzip2q_s16(v93, v101));
        *v75 = vminq_u16(vsqaddq_u16(*v75, v123), v71);
        *v129 = v131;
        v130[-1] = v132;
        result[-1] = v133;
        v75[1] = v134;
        v129[1] = v135;
        *v130 = v136;
        *result = vminq_u16(v137, v71);
        v74 += 8;
        v73 += 2;
        v75 += 2;
      }

      while (v74 < 0x18);
      v10 = (v10 + 8 * a2);
      v8 += 32;
      v7 += 32;
      v54 = v67 >= 0x1C;
      v67 += 4;
    }

    while (!v54);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 3uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    if (a5)
    {
      v16 = 0;
      v17 = a3 - 256;
      v18.i64[0] = 0xB0000000BLL;
      v18.i64[1] = 0xB0000000BLL;
      v19.i64[0] = 0xF800F800F800F800;
      v19.i64[1] = 0xF800F800F800F800;
      do
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = *v17[2].i8;
          v23 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
          v24 = vshlq_s32(vmovl_s16(*v17), v23);
          v25 = vshlq_s32(vmovl_high_s16(*v17->i8), v23);
          v26 = vshlq_s32(vmovl_s16(*v22.i8), v23);
          v27 = vshlq_s32(vmovl_high_s16(v22), v23);
          v28 = vmovl_s16(vdup_lane_s16(*a5, 0));
          v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v28), 3uLL), vmulq_s32(v25, v28), 3uLL);
          v30 = vmovl_s16(vdup_lane_s16(*a5, 1));
          v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v28), 3uLL), vmulq_s32(v27, v28), 3uLL);
          v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v30), 3uLL), vmulq_s32(v25, v30), 3uLL);
          v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v30), 3uLL), vmulq_s32(v27, v30), 3uLL);
          v34 = v21;
          *v17->i8 = 0uLL;
          *v17[2].i8 = 0uLL;
          v17 += 4;
          v35 = vaddq_s16(vzip1q_s16(v29, v32), v15);
          v36 = vaddq_s16(vzip2q_s16(v29, v32), v15);
          v37 = vaddq_s16(vzip1q_s16(v31, v33), v15);
          v38 = &v10[v20];
          v39 = vaddq_s16(vzip2q_s16(v31, v33), v15);
          v40 = vminq_u16(vsqaddq_u16(v38[1], v36), v19);
          v41 = vminq_u16(vsqaddq_u16(v38[2], v37), v19);
          v42 = vsqaddq_u16(v38[3], v39);
          *v38 = vminq_u16(vsqaddq_u16(*v38, v35), v19);
          v38[1] = v40;
          v38[2] = v41;
          v38[3] = vminq_u16(v42, v19);
          v20 = 4;
          v21 = 0;
        }

        while ((v34 & 1) != 0);
        ++v16;
        v10 = (v10 + 2 * a2);
      }

      while (v16 != 32);
    }

    else
    {
      v138 = result + 4;
      v139 = 32;
      v140.i64[0] = 0xF800F800F800F800;
      v140.i64[1] = 0xF800F800F800F800;
      do
      {
        v141 = vminq_u16(vsqaddq_u16(v138[-3], v15), v140);
        v142 = vminq_u16(vsqaddq_u16(v138[-2], v15), v140);
        v143 = vminq_u16(vsqaddq_u16(v138[-1], v15), v140);
        v138[-4] = vminq_u16(vsqaddq_u16(v138[-4], v15), v140);
        v138[-3] = v141;
        v138[-2] = v142;
        v138[-1] = v143;
        v144 = vminq_u16(vsqaddq_u16(v138[1], v15), v140);
        v145 = vminq_u16(vsqaddq_u16(v138[2], v15), v140);
        v146 = vminq_u16(vsqaddq_u16(v138[3], v15), v140);
        *v138 = vminq_u16(vsqaddq_u16(*v138, v15), v140);
        v138[1] = v144;
        v138[2] = v145;
        v138[3] = v146;
        v138 = (v138 + 2 * a2);
        --v139;
      }

      while (v139);
    }
  }

  return result;
}

int16x4_t *sub_277501B98(int16x4_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v42 = 0;
        v43 = a3;
        do
        {
          v44 = 0;
          v45 = 1;
          do
          {
            v46 = v45;
            v47 = &v43[v44];
            v48 = v47[2];
            v49 = v47[4];
            v50 = v47[6];
            v51 = vtrn1q_s16(*v47, v48);
            v52 = vtrn2q_s16(*v47, v48);
            v53 = vtrn1q_s16(v49, v50);
            v54 = vtrn2q_s16(v49, v50);
            *v47 = vtrn1q_s32(v51, v53);
            v47[2] = vtrn1q_s32(v52, v54);
            v47[4] = vtrn2q_s32(v51, v53);
            v47[6] = vtrn2q_s32(v52, v54);
            v44 = 2;
            v45 = 0;
          }

          while ((v46 & 1) != 0);
          v43 += 16;
          v55 = v42 >= 0xC;
          v42 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F7D0C(a3, *a6 & 0x7FFF);
    }

    v56 = *(a6 + 1);
    if (v56 < 1)
    {
      if (v56 < 0)
      {
        v57 = 0;
        v58 = v7;
        do
        {
          v59 = 0;
          v60 = 1;
          do
          {
            v61 = v60;
            v62 = &v58[v59];
            v63 = v62[2];
            v64 = v62[4];
            v65 = v62[6];
            v66 = vtrn1q_s16(*v62, v63);
            v67 = vtrn2q_s16(*v62, v63);
            v68 = vtrn1q_s16(v64, v65);
            v69 = vtrn2q_s16(v64, v65);
            *v62 = vtrn1q_s32(v66, v68);
            v62[2] = vtrn1q_s32(v67, v69);
            v62[4] = vtrn2q_s32(v66, v68);
            v62[6] = vtrn2q_s32(v67, v69);
            v59 = 8;
            v60 = 0;
          }

          while ((v61 & 1) != 0);
          v58 += 64;
          v55 = v57 >= 0xC;
          v57 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F7D0C(v7, v56);
    }

    v70 = 4 * a2;
    v71 = 6 * a2;
    v72 = &a3[-64];
    v73 = &v10[6];
    v74 = 2 * a2;
    v75 = -4;
    v76.i64[0] = 0xF800F800F800F800;
    v76.i64[1] = 0xF800F800F800F800;
    v77.i64[0] = 0xB0000000BLL;
    v77.i64[1] = 0xB0000000BLL;
    do
    {
      v78 = v72[32];
      v79 = v72[34];
      v80 = v72[36];
      v81 = v72[38];
      v82 = *v7;
      v83 = *(v7 + 2);
      v84 = *(v7 + 4);
      v85 = vtrn1q_s16(v78, v79);
      v86 = vtrn2q_s16(v78, v79);
      v87 = vtrn1q_s16(v80, v81);
      v88 = vtrn2q_s16(v80, v81);
      v89 = *(v7 + 6);
      v72[32] = 0uLL;
      v72[34] = 0uLL;
      v72[36] = 0uLL;
      v72[38] = 0uLL;
      *v7 = 0uLL;
      *(v7 + 2) = 0uLL;
      v90 = vtrn1q_s32(v85, v87);
      v91 = vtrn2q_s32(v85, v87);
      v92 = vtrn1q_s32(v86, v88);
      v93 = vtrn2q_s32(v86, v88);
      v94 = vtrn1q_s16(v82, v83);
      v95 = vtrn2q_s16(v82, v83);
      v96 = vtrn1q_s16(v84, v89);
      v97 = vtrn2q_s16(v84, v89);
      v98 = vtrn1q_s32(v94, v96);
      v99 = vtrn2q_s32(v94, v96);
      *(v7 + 4) = 0uLL;
      v100 = vtrn1q_s32(v95, v97);
      v101 = vtrn2q_s32(v95, v97);
      *(v7 + 6) = 0uLL;
      if (a5)
      {
        v102 = *a5;
        v103 = *v72;
        v104 = v72[2];
        *v72 = 0uLL;
        v72[2] = 0uLL;
        v105 = vdupq_laneq_s32(vsubw_s16(v77, v102), 2);
        v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
        v107 = vshlq_s32(vmovl_high_s16(v103), v105);
        v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
        v109 = vshlq_s32(vmovl_high_s16(v104), v105);
        v110 = vmovl_s16(vdup_lane_s16(v102, 0));
        v111 = vmovl_s16(vdup_lane_s16(v102, 1));
        v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
        v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
        v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
        v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
        *v111.i8 = *a5;
        v112 = v72[4];
        v113 = v72[6];
        v72[4] = 0uLL;
        v72[6] = 0uLL;
        v114 = vdupq_laneq_s32(vsubw_s16(v77, *v111.i8), 2);
        v115 = vshlq_s32(vmovl_s16(*v112.i8), v114);
        v116 = vshlq_s32(vmovl_high_s16(v112), v114);
        v117 = vshlq_s32(vmovl_s16(*v113.i8), v114);
        v118 = vshlq_s32(vmovl_high_s16(v113), v114);
        v119 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
        v120 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
        v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v119), 3uLL), vmulq_s32(v116, v119), 3uLL), v91);
        v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v120), 3uLL), vmulq_s32(v116, v120), 3uLL), v99);
        v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v119), 3uLL), vmulq_s32(v118, v119), 3uLL), v93);
        v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v120), 3uLL), vmulq_s32(v118, v120), 3uLL), v101);
      }

      v121 = vzip1q_s16(v90, v98);
      v122 = vzip2q_s16(v90, v98);
      v123 = vzip1q_s16(v92, v100);
      v124 = vzip2q_s16(v92, v100);
      v125 = vzip1q_s16(v91, v99);
      v126 = vzip2q_s16(v91, v99);
      v127 = (v73 + v74);
      v128 = (v73 + v70);
      v129 = (v73 + v71);
      v130 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v74), v123), v76);
      v131 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v70), v125), v76);
      v132 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v71), vzip1q_s16(v93, v101)), v76);
      v133 = vminq_u16(vsqaddq_u16(v73[-2], v122), v76);
      v134 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v74), v124), v76);
      v135 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v70), v126), v76);
      v136 = vsqaddq_u16(*(&v73[-2] + v71), vzip2q_s16(v93, v101));
      v73[-3] = vminq_u16(vsqaddq_u16(v73[-3], v121), v76);
      v127[-3] = v130;
      v128[-3] = v131;
      v129[-3] = v132;
      v73[-2] = v133;
      v127[-2] = v134;
      v128[-2] = v135;
      v129[-2] = vminq_u16(v136, v76);
      v137 = v72[33];
      v138 = v72[35];
      v139 = v72[37];
      v140 = v72[39];
      v141 = *(v7 + 1);
      v142 = *(v7 + 3);
      v143 = *(v7 + 5);
      v144 = vtrn1q_s16(v137, v138);
      v145 = vtrn2q_s16(v137, v138);
      v146 = vtrn1q_s16(v139, v140);
      v147 = vtrn2q_s16(v139, v140);
      v148 = *(v7 + 7);
      v72[33] = 0uLL;
      v72[35] = 0uLL;
      v72[37] = 0uLL;
      v72[39] = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 3) = 0uLL;
      *(v7 + 5) = 0uLL;
      *(v7 + 7) = 0uLL;
      v149 = vtrn1q_s32(v144, v146);
      v150 = vtrn2q_s32(v144, v146);
      v151 = vtrn1q_s32(v145, v147);
      v152 = vtrn2q_s32(v145, v147);
      v153 = vtrn1q_s16(v141, v142);
      v154 = vtrn2q_s16(v141, v142);
      v155 = vtrn1q_s16(v143, v148);
      v156 = vtrn2q_s16(v143, v148);
      v157 = vtrn1q_s32(v153, v155);
      v158 = vtrn2q_s32(v153, v155);
      v159 = vtrn1q_s32(v154, v156);
      v160 = vtrn2q_s32(v154, v156);
      if (a5)
      {
        v161 = *a5;
        v162 = v72[1];
        v163 = v72[3];
        v72[1] = 0uLL;
        v72[3] = 0uLL;
        v164 = vdupq_laneq_s32(vsubw_s16(v77, v161), 2);
        v165 = vshlq_s32(vmovl_s16(*v162.i8), v164);
        v166 = vshlq_s32(vmovl_high_s16(v162), v164);
        v167 = vshlq_s32(vmovl_s16(*v163.i8), v164);
        v168 = vshlq_s32(vmovl_high_s16(v163), v164);
        v169 = vmovl_s16(vdup_lane_s16(v161, 0));
        v170 = vmovl_s16(vdup_lane_s16(v161, 1));
        v149 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v169), 3uLL), vmulq_s32(v166, v169), 3uLL), v149);
        v157 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v170), 3uLL), vmulq_s32(v166, v170), 3uLL), v157);
        v151 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v169), 3uLL), vmulq_s32(v168, v169), 3uLL), v151);
        v159 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v170), 3uLL), vmulq_s32(v168, v170), 3uLL), v159);
        *v170.i8 = *a5;
        v171 = v72[5];
        v172 = v72[7];
        v72[5] = 0uLL;
        v72[7] = 0uLL;
        v173 = vdupq_laneq_s32(vsubw_s16(v77, *v170.i8), 2);
        v174 = vshlq_s32(vmovl_s16(*v171.i8), v173);
        v175 = vshlq_s32(vmovl_high_s16(v171), v173);
        v176 = vshlq_s32(vmovl_s16(*v172.i8), v173);
        v177 = vshlq_s32(vmovl_high_s16(v172), v173);
        v178 = vmovl_s16(vdup_lane_s16(*v170.i8, 0));
        v179 = vmovl_s16(vdup_lane_s16(*v170.i8, 1));
        v150 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v178), 3uLL), vmulq_s32(v175, v178), 3uLL), v150);
        v158 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v179), 3uLL), vmulq_s32(v175, v179), 3uLL), v158);
        v152 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v178), 3uLL), vmulq_s32(v177, v178), 3uLL), v152);
        v160 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v179), 3uLL), vmulq_s32(v177, v179), 3uLL), v160);
      }

      v180 = vzip1q_s16(v149, v157);
      v181 = vzip2q_s16(v149, v157);
      v182 = vzip1q_s16(v151, v159);
      v183 = vzip2q_s16(v151, v159);
      v184 = vzip1q_s16(v150, v158);
      v185 = vzip2q_s16(v150, v158);
      v186 = vminq_u16(vsqaddq_u16(v127[-1], v182), v76);
      v187 = vminq_u16(vsqaddq_u16(v128[-1], v184), v76);
      v188 = vminq_u16(vsqaddq_u16(v129[-1], vzip1q_s16(v152, v160)), v76);
      v189 = vminq_u16(vsqaddq_u16(*v73, v181), v76);
      v190 = vminq_u16(vsqaddq_u16(*v127, v183), v76);
      v191 = vminq_u16(vsqaddq_u16(*v128, v185), v76);
      v192 = vsqaddq_u16(*v129, vzip2q_s16(v152, v160));
      v73[-1] = vminq_u16(vsqaddq_u16(v73[-1], v180), v76);
      v127[-1] = v186;
      v128[-1] = v187;
      v129[-1] = v188;
      *v73 = v189;
      *v127 = v190;
      *v128 = v191;
      *v129 = vminq_u16(v192, v76);
      v72 += 8;
      v75 += 4;
      v73 = (v73 + 8 * a2);
      v7 += 64;
    }

    while (v75 < 0xC);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 3uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    v16 = &result[4];
    v17 = 2 * a2;
    if (a5)
    {
      v18 = 0x1FFFFFFFFFFFFFC0;
      v19.i64[0] = 0xB0000000BLL;
      v19.i64[1] = 0xB0000000BLL;
      v20.i64[0] = 0xF800F800F800F800;
      v20.i64[1] = 0xF800F800F800F800;
      do
      {
        v21 = &a3[v18];
        v22 = *a3[v18].i8;
        v23 = *a3[v18 + 2].i8;
        v24 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v25 = vshlq_s32(vmovl_s16(*v22.i8), v24);
        v26 = vshlq_s32(vmovl_high_s16(v22), v24);
        v27 = vshlq_s32(vmovl_s16(*v23.i8), v24);
        v28 = vshlq_s32(vmovl_high_s16(v23), v24);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v29), 3uLL), vmulq_s32(v28, v29), 3uLL);
        v32 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v32), 3uLL), vmulq_s32(v26, v32), 3uLL);
        v34 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v32), 3uLL), vmulq_s32(v28, v32), 3uLL);
        *v21->i8 = 0uLL;
        *v21[2].i8 = 0uLL;
        v35 = vaddq_s16(vzip1q_s16(v30, v33), v15);
        v36 = vaddq_s16(vzip2q_s16(v30, v33), v15);
        v37 = vaddq_s16(vzip1q_s16(v31, v34), v15);
        v38 = vaddq_s16(vzip2q_s16(v31, v34), v15);
        v39 = vminq_u16(vsqaddq_u16(v16[-1], v36), v20);
        v40 = vminq_u16(vsqaddq_u16(*v16, v37), v20);
        v41 = vsqaddq_u16(v16[1], v38);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v35), v20);
        v16[-1] = v39;
        *v16 = v40;
        v16[1] = vminq_u16(v41, v20);
        v16 = (v16 + v17);
        v18 += 4;
      }

      while ((v18 * 8));
    }

    else
    {
      v193 = 16;
      v194.i64[0] = 0xF800F800F800F800;
      v194.i64[1] = 0xF800F800F800F800;
      do
      {
        v195 = vminq_u16(vsqaddq_u16(v16[-1], v15), v194);
        v196 = vminq_u16(vsqaddq_u16(*v16, v15), v194);
        v197 = vminq_u16(vsqaddq_u16(v16[1], v15), v194);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v15), v194);
        v16[-1] = v195;
        *v16 = v196;
        v16[1] = v197;
        v16 = (v16 + v17);
        --v193;
      }

      while (v193);
    }
  }

  return result;
}

int16x4_t *sub_277502364(int16x4_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5, int *a6)
{
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v41 = 1;
        v42 = a3;
        do
        {
          v43 = v41;
          v44 = v42[1];
          v45 = v42[2];
          v46 = v42[3];
          v47 = vtrn1q_s16(*v42, v44);
          v48 = vtrn2q_s16(*v42, v44);
          v49 = vtrn1q_s16(v45, v46);
          v50 = vtrn2q_s16(v45, v46);
          *v42 = vtrn1q_s32(v47, v49);
          v42[1] = vtrn1q_s32(v48, v50);
          v42[2] = vtrn2q_s32(v47, v49);
          v42[3] = vtrn2q_s32(v48, v50);
          v42 += 4;
          v41 = 0;
        }

        while ((v43 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F80D0(a3, *a6 & 0x7FFF);
    }

    v51 = *(a6 + 1);
    if (v51 < 1)
    {
      if (v51 < 0)
      {
        v52 = 1;
        v53 = a4;
        do
        {
          v54 = v52;
          v55 = v53[1];
          v56 = v53[2];
          v57 = v53[3];
          v58 = vtrn1q_s16(*v53, v55);
          v59 = vtrn2q_s16(*v53, v55);
          v60 = vtrn1q_s16(v56, v57);
          v61 = vtrn2q_s16(v56, v57);
          *v53 = vtrn1q_s32(v58, v60);
          v53[1] = vtrn1q_s32(v59, v61);
          v53[2] = vtrn2q_s32(v58, v60);
          v53[3] = vtrn2q_s32(v59, v61);
          v53 += 4;
          v52 = 0;
        }

        while ((v54 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F80D0(a4, v51);
    }

    v62 = (v10 + 2 * a2);
    v63 = (v10 + 4 * a2);
    v64 = (v10 + 6 * a2);
    v65 = a3[1];
    v66 = a3[2];
    v67 = a3[3];
    v68 = *a4;
    v69 = a4[1];
    v70 = vtrn1q_s16(*a3, v65);
    v71 = vtrn2q_s16(*a3, v65);
    v72 = vtrn1q_s16(v66, v67);
    v73 = vtrn2q_s16(v66, v67);
    v74 = a4[2];
    v75 = a4[3];
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    v76 = vtrn1q_s32(v70, v72);
    v77 = vtrn2q_s32(v70, v72);
    v78 = vtrn1q_s32(v71, v73);
    v79 = vtrn2q_s32(v71, v73);
    v80 = vtrn1q_s16(v68, v69);
    v81 = vtrn2q_s16(v68, v69);
    v82 = vtrn1q_s16(v74, v75);
    v83 = vtrn2q_s16(v74, v75);
    v84 = vtrn1q_s32(v80, v82);
    v85 = vtrn2q_s32(v80, v82);
    v86 = vtrn1q_s32(v81, v83);
    v87 = vtrn2q_s32(v81, v83);
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    if (a5)
    {
      v88 = a3[-8];
      v89 = a3[-7];
      v90.i64[0] = 0xB0000000BLL;
      v90.i64[1] = 0xB0000000BLL;
      v91 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v92 = vshlq_s32(vmovl_s16(*v88.i8), v91);
      v93 = vshlq_s32(vmovl_high_s16(v88), v91);
      v94 = vshlq_s32(vmovl_s16(*v89.i8), v91);
      v95 = vshlq_s32(vmovl_high_s16(v89), v91);
      v96 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v97 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-8] = 0uLL;
      a3[-7] = 0uLL;
      v76 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v96), 3uLL), vmulq_s32(v93, v96), 3uLL), v76);
      v84 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v97), 3uLL), vmulq_s32(v93, v97), 3uLL), v84);
      v78 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v96), 3uLL), vmulq_s32(v95, v96), 3uLL), v78);
      v86 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v97), 3uLL), vmulq_s32(v95, v97), 3uLL), v86);
      v98 = a3[-6];
      v99 = a3[-5];
      v100 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v101 = vshlq_s32(vmovl_s16(*v98.i8), v100);
      v102 = vshlq_s32(vmovl_high_s16(v98), v100);
      v103 = vshlq_s32(vmovl_s16(*v99.i8), v100);
      v104 = vshlq_s32(vmovl_high_s16(v99), v100);
      v105 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v106 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-6] = 0uLL;
      a3[-5] = 0uLL;
      v77 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v105), 3uLL), vmulq_s32(v102, v105), 3uLL), v77);
      v85 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v106), 3uLL), vmulq_s32(v102, v106), 3uLL), v85);
      v79 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v105), 3uLL), vmulq_s32(v104, v105), 3uLL), v79);
      v87 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v106), 3uLL), vmulq_s32(v104, v106), 3uLL), v87);
    }

    v107 = vzip1q_s16(v76, v84);
    v108 = vzip2q_s16(v76, v84);
    v109 = vzip1q_s16(v78, v86);
    v110 = vzip2q_s16(v78, v86);
    v111 = vzip1q_s16(v77, v85);
    v112 = vzip2q_s16(v77, v85);
    v113 = vzip1q_s16(v79, v87);
    v114 = vzip2q_s16(v79, v87);
    v115.i64[0] = 0xF800F800F800F800;
    v115.i64[1] = 0xF800F800F800F800;
    v116 = vminq_u16(vsqaddq_u16(*v62, v109), v115);
    v117 = vminq_u16(vsqaddq_u16(*v63, v111), v115);
    v118 = vminq_u16(vsqaddq_u16(*v64, v113), v115);
    v119 = vminq_u16(vsqaddq_u16(v10[1], v108), v115);
    v120 = vminq_u16(vsqaddq_u16(v62[1], v110), v115);
    v121 = vminq_u16(vsqaddq_u16(v63[1], v112), v115);
    v122 = vsqaddq_u16(v64[1], v114);
    *v10 = vminq_u16(vsqaddq_u16(*v10, v107), v115);
    *v62 = v116;
    *v63 = v117;
    *v64 = v118;
    v10[1] = v119;
    v62[1] = v120;
    v63[1] = v121;
    v64[1] = vminq_u16(v122, v115);
    v123 = a3[4];
    v124 = a3[5];
    v125 = a3[6];
    v126 = a3[7];
    v127 = a4[4];
    v128 = a4[5];
    v129 = vtrn1q_s16(v123, v124);
    v130 = vtrn2q_s16(v123, v124);
    v131 = vtrn1q_s16(v125, v126);
    v132 = vtrn2q_s16(v125, v126);
    v133 = a4[6];
    v134 = a4[7];
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    v135 = vtrn1q_s32(v129, v131);
    v136 = vtrn2q_s32(v129, v131);
    v137 = vtrn1q_s32(v130, v132);
    v138 = vtrn2q_s32(v130, v132);
    v139 = vtrn1q_s16(v127, v128);
    v140 = vtrn2q_s16(v127, v128);
    v141 = vtrn1q_s16(v133, v134);
    v142 = vtrn2q_s16(v133, v134);
    v143 = vtrn1q_s32(v139, v141);
    v144 = vtrn2q_s32(v139, v141);
    v145 = vtrn1q_s32(v140, v142);
    v146 = vtrn2q_s32(v140, v142);
    a4[6] = 0uLL;
    a4[7] = 0uLL;
    a4[4] = 0uLL;
    a4[5] = 0uLL;
    if (a5)
    {
      v147 = a3[-4];
      v148 = a3[-3];
      v149.i64[0] = 0xB0000000BLL;
      v149.i64[1] = 0xB0000000BLL;
      v150 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v151 = vshlq_s32(vmovl_s16(*v147.i8), v150);
      v152 = vshlq_s32(vmovl_high_s16(v147), v150);
      v153 = vshlq_s32(vmovl_s16(*v148.i8), v150);
      v154 = vshlq_s32(vmovl_high_s16(v148), v150);
      v155 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v156 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-4] = 0u;
      a3[-3] = 0u;
      v135 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v155), 3uLL), vmulq_s32(v152, v155), 3uLL), v135);
      v143 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v156), 3uLL), vmulq_s32(v152, v156), 3uLL), v143);
      v137 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v155), 3uLL), vmulq_s32(v154, v155), 3uLL), v137);
      v145 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v156), 3uLL), vmulq_s32(v154, v156), 3uLL), v145);
      v157 = a3[-2];
      v158 = a3[-1];
      v159 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v160 = vshlq_s32(vmovl_s16(*v157.i8), v159);
      v161 = vshlq_s32(vmovl_high_s16(v157), v159);
      v162 = vshlq_s32(vmovl_s16(*v158.i8), v159);
      v163 = vshlq_s32(vmovl_high_s16(v158), v159);
      v164 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v165 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-2] = 0u;
      a3[-1] = 0u;
      v136 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v164), 3uLL), vmulq_s32(v161, v164), 3uLL), v136);
      v144 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v165), 3uLL), vmulq_s32(v161, v165), 3uLL), v144);
      v138 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v164), 3uLL), vmulq_s32(v163, v164), 3uLL), v138);
      v146 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v165), 3uLL), vmulq_s32(v163, v165), 3uLL), v146);
    }

    v166 = (v10 + 8 * a2);
    v167 = (v166 + 6 * a2);
    v168 = (v166 + 4 * a2);
    v169 = (v166 + 2 * a2);
    v170 = vzip1q_s16(v135, v143);
    v171 = vzip2q_s16(v135, v143);
    v172 = vzip1q_s16(v137, v145);
    v173 = vzip2q_s16(v137, v145);
    v174 = vzip1q_s16(v136, v144);
    v175 = vzip2q_s16(v136, v144);
    v176 = vzip1q_s16(v138, v146);
    v177 = vzip2q_s16(v138, v146);
    v178 = vminq_u16(vsqaddq_u16(*v169, v172), v115);
    v179 = vminq_u16(vsqaddq_u16(*v168, v174), v115);
    v180 = vminq_u16(vsqaddq_u16(*v167, v176), v115);
    v181 = vminq_u16(vsqaddq_u16(v166[1], v171), v115);
    v182 = vminq_u16(vsqaddq_u16(v169[1], v173), v115);
    v183 = vminq_u16(vsqaddq_u16(v168[1], v175), v115);
    v184 = vsqaddq_u16(v167[1], v177);
    *v166 = vminq_u16(vsqaddq_u16(*v166, v170), v115);
    *v169 = v178;
    *v168 = v179;
    *v167 = v180;
    v166[1] = v181;
    v169[1] = v182;
    v168[1] = v183;
    v167[1] = vminq_u16(v184, v115);
  }

  else
  {
    v13 = vld1q_dup_s16(a3->i16);
    v14 = vld1q_dup_s16(a4->i16);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 3uLL);
    a3->i16[0] = 0;
    a4->i16[0] = 0;
    if (a5)
    {
      v16 = a3 - 8;
      v17 = 2 * a2;
      v18 = -2;
      v19.i64[0] = 0xB0000000BLL;
      v19.i64[1] = 0xB0000000BLL;
      v20.i64[0] = 0xF800F800F800F800;
      v20.i64[1] = 0xF800F800F800F800;
      do
      {
        v21 = v16[1];
        v22 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v23 = vshlq_s32(vmovl_s16(*v16->i8), v22);
        v24 = vshlq_s32(vmovl_high_s16(*v16), v22);
        v25 = vshlq_s32(vmovl_s16(*v21.i8), v22);
        v26 = vshlq_s32(vmovl_high_s16(v21), v22);
        v27 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v27), 3uLL), vmulq_s32(v24, v27), 3uLL);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v27), 3uLL), vmulq_s32(v26, v27), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v29), 3uLL), vmulq_s32(v24, v29), 3uLL);
        v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16 += 2;
        v33 = vaddq_s16(vzip1q_s16(v28, v31), v15);
        v34 = vzip2q_s16(v28, v31);
        v35 = vaddq_s16(vzip1q_s16(v30, v32), v15);
        v36 = (v10 + v17);
        v37 = vaddq_s16(vzip2q_s16(v30, v32), v15);
        v38 = vminq_u16(vsqaddq_u16(v10[1], vaddq_s16(v34, v15)), v20);
        v39 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v35), v20);
        v40 = vminq_u16(vsqaddq_u16(*(&v10[1] + v17), v37), v20);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v33), v20);
        v10[1] = v38;
        *v36 = v39;
        v36[1] = v40;
        v10 = (v10 + 4 * a2);
        v18 += 2;
      }

      while (v18 < 6);
    }

    else
    {
      v185 = 2 * a2;
      v186 = -2;
      v187.i64[0] = 0xF800F800F800F800;
      v187.i64[1] = 0xF800F800F800F800;
      do
      {
        v188 = (v10 + v185);
        v189 = vminq_u16(vsqaddq_u16(v10[1], v15), v187);
        v190 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v15), v187);
        v191 = vminq_u16(vsqaddq_u16(*(&v10[1] + v185), v15), v187);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v15), v187);
        v10[1] = v189;
        *v188 = v190;
        v188[1] = v191;
        v10 = (v10 + 4 * a2);
        v186 += 2;
      }

      while (v186 < 6);
    }
  }

  return result;
}

double sub_277502A74(uint16x8_t *a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x4_t *a5, __int16 *a6)
{
  v12 = *a6;
  if (v12 >= 1)
  {
    sub_2774F82F8(a3, v12);
  }

  v13 = a6[1];
  if (v13 >= 1)
  {
    sub_2774F82F8(a4, v13);
  }

  *&result = sub_277501478(a1, a2, a3, a4, a5).u64[0];
  return result;
}

void sub_277502B04(int16x4_t *a1)
{
  v2[65] = *MEMORY[0x277D85DE8];
  sub_2774F15E8(v2, a1, 6);
  sub_2774F1738(a1, v2);
}

void sub_277502B74(int16x4_t *a1)
{
  v2[17] = *MEMORY[0x277D85DE8];
  sub_2774F19A4(v2, a1, 5);
  sub_2774F1A4C(a1, v2);
}

int16x4_t sub_277502BE4(int16x4_t *a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = vtrn1_s16(*a1, v1);
  v5 = vtrn2_s16(*a1, v1);
  v6 = vtrn1_s16(v2, v3);
  v7 = vtrn2_s16(v2, v3);
  v8 = vzip1_s32(v4, v6);
  v9 = vzip2_s32(v4, v6);
  v10 = vzip1_s32(v5, v7);
  v11 = vzip2_s32(v5, v7);
  v12 = vadd_s16(v11, v8);
  v13 = vsub_s16(v8, v11);
  v14 = vadd_s16(v9, v10);
  v15 = vsub_s16(v10, v9);
  v17[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v14, v12), 6uLL), 4uLL));
  v17[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v15, 0x24002400240024), v13, 0x53005300530053), 4uLL));
  v17[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v12, v14), 6uLL), 4uLL));
  v17[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v13, 0x24002400240024), v15, 0x53005300530053), 4uLL));
  return sub_2774F1C40(a1, v17);
}

uint16x8_t *sub_277502CBC(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 512;
  v6 = result + 2;
  v7.i64[0] = 0xF000F000F000F000;
  v7.i64[1] = 0xF000F000F000F000;
  v8.i64[0] = 0xC0000000CLL;
  v8.i64[1] = 0xC0000000CLL;
  v9 = 16;
  do
  {
    v11 = *(v5 + 512);
    v10 = *(v5 + 528);
    v13 = *a4;
    v12 = a4[1];
    if (a5)
    {
      v14 = *(v5 + 16);
      v15 = vdupq_laneq_s32(vsubw_s16(v8, *a5), 2);
      v16 = vshlq_s32(vmovl_s16(*v5), v15);
      v17 = vshlq_s32(vmovl_high_s16(*v5), v15);
      v18 = vshlq_s32(vmovl_s16(*v14.i8), v15);
      v19 = vshlq_s32(vmovl_high_s16(v14), v15);
      v20 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v21 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v20), 3uLL), vmulq_s32(v17, v20), 3uLL));
      v10 = vaddq_s16(v10, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v20), 3uLL), vmulq_s32(v19, v20), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v16, v21), 3uLL), vmulq_s32(v17, v21), 3uLL));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v18, v21), 3uLL), vmulq_s32(v19, v21), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 512) = 0uLL;
    *(v5 + 528) = 0uLL;
    v22 = vzip1q_s16(v11, v13);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v23 = vminq_u16(vsqaddq_u16(v6[-1], vzip2q_s16(v11, v13)), v7);
    v24 = vminq_u16(vsqaddq_u16(*v6, vzip1q_s16(v10, v12)), v7);
    v25 = vminq_u16(vsqaddq_u16(v6[1], vzip2q_s16(v10, v12)), v7);
    v6[-2] = vminq_u16(vsqaddq_u16(v6[-2], v22), v7);
    v6[-1] = v23;
    *v6 = v24;
    v6[1] = v25;
    v5 += 32;
    v6 = (v6 + 2 * a2);
    --v9;
  }

  while (v9);
  return result;
}

uint16x8_t *sub_277502DD4(uint16x8_t *result, uint64_t a2, uint64_t a3, int16x8_t *a4, int16x4_t *a5)
{
  v5 = a3 - 128;
  v6 = 2 * a2;
  v7.i64[0] = 0xF000F000F000F000;
  v7.i64[1] = 0xF000F000F000F000;
  v8 = result + 1;
  v9.i64[0] = 0xC0000000CLL;
  v9.i64[1] = 0xC0000000CLL;
  v10 = -2;
  do
  {
    v12 = *(v5 + 128);
    v11 = *(v5 + 144);
    v14 = *a4;
    v13 = a4[1];
    if (a5)
    {
      v15 = *(v5 + 16);
      v16 = vdupq_laneq_s32(vsubw_s16(v9, *a5), 2);
      v17 = vshlq_s32(vmovl_s16(*v5), v16);
      v18 = vshlq_s32(vmovl_high_s16(*v5), v16);
      v19 = vshlq_s32(vmovl_s16(*v15.i8), v16);
      v20 = vshlq_s32(vmovl_high_s16(v15), v16);
      v21 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v22 = vmovl_s16(vdup_lane_s16(*a5, 1));
      v12 = vaddq_s16(v12, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v21), 3uLL), vmulq_s32(v18, v21), 3uLL));
      v11 = vaddq_s16(v11, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v21), 3uLL), vmulq_s32(v20, v21), 3uLL));
      v14 = vaddq_s16(v14, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v17, v22), 3uLL), vmulq_s32(v18, v22), 3uLL));
      v13 = vaddq_s16(v13, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v19, v22), 3uLL), vmulq_s32(v20, v22), 3uLL));
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
    }

    *(v5 + 128) = 0uLL;
    *(v5 + 144) = 0uLL;
    v23 = vzip1q_s16(v12, v14);
    *a4 = 0uLL;
    a4[1] = 0uLL;
    a4 += 2;
    v24 = (v8 + v6);
    v25 = vminq_u16(vsqaddq_u16(*v8, vzip2q_s16(v12, v14)), v7);
    v26 = vminq_u16(vsqaddq_u16(*(&v8[-1] + v6), vzip1q_s16(v11, v13)), v7);
    v27 = vminq_u16(vsqaddq_u16(*(v8 + 2 * a2), vzip2q_s16(v11, v13)), v7);
    v8[-1] = vminq_u16(vsqaddq_u16(v8[-1], v23), v7);
    *v8 = v25;
    v10 += 2;
    v24[-1] = v26;
    *v24 = v27;
    v5 += 32;
    v8 = (v8 + 4 * a2);
  }

  while (v10 < 6);
  return result;
}

uint16x8_t sub_277502EFC(uint16x8_t *a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5)
{
  v6 = *a3;
  v5 = a3[1];
  v8 = *a4;
  v7 = a4[1];
  if (a5)
  {
    v9 = a3[-2];
    v10 = a3[-1];
    v11.i64[0] = 0xC0000000CLL;
    v11.i64[1] = 0xC0000000CLL;
    v12 = vdupq_laneq_s32(vsubw_s16(v11, *a5), 2);
    v13 = vshlq_s32(vmovl_s16(*v9.i8), v12);
    v14 = vshlq_s32(vmovl_high_s16(v9), v12);
    v15 = vshlq_s32(vmovl_s16(*v10.i8), v12);
    v16 = vshlq_s32(vmovl_high_s16(v10), v12);
    v17 = vmovl_s16(vdup_lane_s16(*a5, 0));
    v18 = vmovl_s16(vdup_lane_s16(*a5, 1));
    v6 = vaddq_s16(v6, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v17), 3uLL), vmulq_s32(v14, v17), 3uLL));
    v5 = vaddq_s16(v5, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v17), 3uLL), vmulq_s32(v16, v17), 3uLL));
    v8 = vaddq_s16(v8, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v13, v18), 3uLL), vmulq_s32(v14, v18), 3uLL));
    v7 = vaddq_s16(v7, vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v15, v18), 3uLL), vmulq_s32(v16, v18), 3uLL));
    a3[-2] = 0u;
    a3[-1] = 0u;
  }

  *a3 = 0u;
  a3[1] = 0u;
  v19 = vzip1q_s16(v6, v8);
  v20 = vzip2q_s16(v6, v8);
  v21 = vzip1q_s16(v5, v7);
  v22 = vzip2q_s16(v5, v7);
  *a4 = 0u;
  a4[1] = 0u;
  v23 = *(a1 + 6 * a2);
  v24 = vsqaddq_u16(*a1, v19);
  v19.i64[0] = 0xF000F000F000F000;
  v19.i64[1] = 0xF000F000F000F000;
  v25 = vminq_u16(vsqaddq_u16(*(a1 + 2 * a2), v20), v19);
  v26 = vminq_u16(vsqaddq_u16(*(a1 + 4 * a2), v21), v19);
  *a1 = vminq_u16(v24, v19);
  *(a1 + 2 * a2) = v25;
  result = vminq_u16(vsqaddq_u16(v23, v22), v19);
  *(a1 + 4 * a2) = v26;
  *(a1 + 6 * a2) = result;
  return result;
}

uint16x8_t *sub_277503018(uint16x8_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v8 = a3;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v43 = 0;
        v44 = a3 + 16;
        do
        {
          v45 = -8;
          v46 = v44;
          do
          {
            v47 = v46[-8];
            v48 = v46[-4];
            v49 = v46[4];
            v50 = vtrn1q_s16(v47, v48);
            v51 = vtrn2q_s16(v47, v48);
            v52 = vtrn1q_s16(*v46, v49);
            v53 = vtrn2q_s16(*v46, v49);
            v46[-8] = vtrn1q_s32(v50, v52);
            v46[-4] = vtrn1q_s32(v51, v53);
            *v46 = vtrn2q_s32(v50, v52);
            v46[4] = vtrn2q_s32(v51, v53);
            v45 += 8;
            ++v46;
          }

          while (v45 < 0x18);
          v44 += 32;
          v54 = v43 >= 0x1C;
          v43 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F9040(a3, *a6 & 0x7FFF);
    }

    v55 = *(a6 + 1);
    if (v55 < 1)
    {
      if (v55 < 0)
      {
        v56 = 0;
        v57 = v7 + 16;
        do
        {
          v58 = -8;
          v59 = v57;
          do
          {
            v60 = v59[-8];
            v61 = v59[-4];
            v62 = v59[4];
            v63 = vtrn1q_s16(v60, v61);
            v64 = vtrn2q_s16(v60, v61);
            v65 = vtrn1q_s16(*v59, v62);
            v66 = vtrn2q_s16(*v59, v62);
            v59[-8] = vtrn1q_s32(v63, v65);
            v59[-4] = vtrn1q_s32(v64, v66);
            *v59 = vtrn2q_s32(v63, v65);
            v59[4] = vtrn2q_s32(v64, v66);
            v58 += 8;
            ++v59;
          }

          while (v58 < 0x18);
          v57 += 32;
          v54 = v56 >= 0x1C;
          v56 += 4;
        }

        while (!v54);
      }
    }

    else
    {
      sub_2774F9040(v7, v55);
    }

    v67 = 0;
    v68 = 6 * a2 + 16;
    v69 = 2 * a2;
    v70 = 4 * a2 + 16;
    v71.i64[0] = 0xF000F000F000F000;
    v71.i64[1] = 0xF000F000F000F000;
    v72.i64[0] = 0xC0000000CLL;
    v72.i64[1] = 0xC0000000CLL;
    do
    {
      v73 = 0;
      v74 = -8;
      v75 = v10;
      do
      {
        v76 = &v8[v73];
        v77 = *v8[v73].i8;
        v78 = *v8[v73 + 8].i8;
        v79 = *v8[v73 + 16].i8;
        v80 = *v8[v73 + 24].i8;
        v81 = &v7[v73];
        v82 = *v7[v73].i8;
        v83 = *v7[v73 + 8].i8;
        v84 = *v7[v73 + 16].i8;
        v85 = vtrn1q_s16(v77, v78);
        v86 = vtrn2q_s16(v77, v78);
        v87 = vtrn1q_s16(v79, v80);
        v88 = vtrn2q_s16(v79, v80);
        v89 = *v7[v73 + 24].i8;
        *v76 = 0uLL;
        v76[4] = 0uLL;
        v76[8] = 0uLL;
        v76[12] = 0uLL;
        *v81->i8 = 0uLL;
        *v81[8].i8 = 0uLL;
        *v81[16].i8 = 0uLL;
        *v81[24].i8 = 0uLL;
        v90 = vtrn1q_s32(v85, v87);
        v91 = vtrn2q_s32(v85, v87);
        v92 = vtrn1q_s32(v86, v88);
        v93 = vtrn2q_s32(v86, v88);
        v94 = vtrn1q_s16(v82, v83);
        v95 = vtrn2q_s16(v82, v83);
        v96 = vtrn1q_s16(v84, v89);
        v97 = vtrn2q_s16(v84, v89);
        v98 = vtrn1q_s32(v94, v96);
        v99 = vtrn2q_s32(v94, v96);
        v100 = vtrn1q_s32(v95, v97);
        v101 = vtrn2q_s32(v95, v97);
        if (a5)
        {
          v102 = *a5;
          v103 = v76[-128];
          v104 = v76[-124];
          v76[-128] = 0uLL;
          v76[-124] = 0uLL;
          v105 = vdupq_laneq_s32(vsubw_s16(v72, v102), 2);
          v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
          v107 = vshlq_s32(vmovl_high_s16(v103), v105);
          v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
          v109 = vshlq_s32(vmovl_high_s16(v104), v105);
          v110 = vmovl_s16(vdup_lane_s16(v102, 0));
          v111 = vmovl_s16(vdup_lane_s16(v102, 1));
          v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
          v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
          v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
          v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
          v112 = v76 - 120;
          *v111.i8 = *a5;
          v113 = v76[-120];
          v114 = v76 - 116;
          v115 = *v114;
          *v112 = 0uLL;
          *v114 = 0uLL;
          v116 = vdupq_laneq_s32(vsubw_s16(v72, *v111.i8), 2);
          v117 = vshlq_s32(vmovl_s16(*v113.i8), v116);
          v118 = vshlq_s32(vmovl_high_s16(v113), v116);
          v119 = vshlq_s32(vmovl_s16(*v115.i8), v116);
          v120 = vshlq_s32(vmovl_high_s16(v115), v116);
          v121 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
          v122 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
          v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v121), 3uLL), vmulq_s32(v118, v121), 3uLL), v91);
          v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v122), 3uLL), vmulq_s32(v118, v122), 3uLL), v99);
          v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v121), 3uLL), vmulq_s32(v120, v121), 3uLL), v93);
          v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v119, v122), 3uLL), vmulq_s32(v120, v122), 3uLL), v101);
        }

        v123 = vzip1q_s16(v90, v98);
        v124 = vzip2q_s16(v90, v98);
        v125 = vzip1q_s16(v92, v100);
        v126 = vzip2q_s16(v92, v100);
        v127 = vzip1q_s16(v91, v99);
        v128 = vzip2q_s16(v91, v99);
        v129 = (v75 + v69);
        v130 = (v75 + v70);
        result = (v75 + v68);
        v131 = vminq_u16(vsqaddq_u16(*(v75 + 2 * a2), v125), v71);
        v132 = vminq_u16(vsqaddq_u16(*(v75 + 4 * a2), v127), v71);
        v133 = vminq_u16(vsqaddq_u16(*(v75 + 6 * a2), vzip1q_s16(v93, v101)), v71);
        v134 = vminq_u16(vsqaddq_u16(v75[1], v124), v71);
        v135 = vminq_u16(vsqaddq_u16(*(&v75[1] + v69), v126), v71);
        v136 = vminq_u16(vsqaddq_u16(*(v75 + v70), v128), v71);
        v137 = vsqaddq_u16(*(v75 + v68), vzip2q_s16(v93, v101));
        *v75 = vminq_u16(vsqaddq_u16(*v75, v123), v71);
        *v129 = v131;
        v130[-1] = v132;
        result[-1] = v133;
        v75[1] = v134;
        v129[1] = v135;
        *v130 = v136;
        *result = vminq_u16(v137, v71);
        v74 += 8;
        v73 += 2;
        v75 += 2;
      }

      while (v74 < 0x18);
      v10 = (v10 + 8 * a2);
      v8 += 32;
      v7 += 32;
      v54 = v67 >= 0x1C;
      v67 += 4;
    }

    while (!v54);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 2uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    if (a5)
    {
      v16 = 0;
      v17 = a3 - 256;
      v18.i64[0] = 0xC0000000CLL;
      v18.i64[1] = 0xC0000000CLL;
      v19.i64[0] = 0xF000F000F000F000;
      v19.i64[1] = 0xF000F000F000F000;
      do
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = *v17[2].i8;
          v23 = vdupq_laneq_s32(vsubw_s16(v18, *a5), 2);
          v24 = vshlq_s32(vmovl_s16(*v17), v23);
          v25 = vshlq_s32(vmovl_high_s16(*v17->i8), v23);
          v26 = vshlq_s32(vmovl_s16(*v22.i8), v23);
          v27 = vshlq_s32(vmovl_high_s16(v22), v23);
          v28 = vmovl_s16(vdup_lane_s16(*a5, 0));
          v29 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v28), 3uLL), vmulq_s32(v25, v28), 3uLL);
          v30 = vmovl_s16(vdup_lane_s16(*a5, 1));
          v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v28), 3uLL), vmulq_s32(v27, v28), 3uLL);
          v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v24, v30), 3uLL), vmulq_s32(v25, v30), 3uLL);
          v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v26, v30), 3uLL), vmulq_s32(v27, v30), 3uLL);
          v34 = v21;
          *v17->i8 = 0uLL;
          *v17[2].i8 = 0uLL;
          v17 += 4;
          v35 = vaddq_s16(vzip1q_s16(v29, v32), v15);
          v36 = vaddq_s16(vzip2q_s16(v29, v32), v15);
          v37 = vaddq_s16(vzip1q_s16(v31, v33), v15);
          v38 = &v10[v20];
          v39 = vaddq_s16(vzip2q_s16(v31, v33), v15);
          v40 = vminq_u16(vsqaddq_u16(v38[1], v36), v19);
          v41 = vminq_u16(vsqaddq_u16(v38[2], v37), v19);
          v42 = vsqaddq_u16(v38[3], v39);
          *v38 = vminq_u16(vsqaddq_u16(*v38, v35), v19);
          v38[1] = v40;
          v38[2] = v41;
          v38[3] = vminq_u16(v42, v19);
          v20 = 4;
          v21 = 0;
        }

        while ((v34 & 1) != 0);
        ++v16;
        v10 = (v10 + 2 * a2);
      }

      while (v16 != 32);
    }

    else
    {
      v138 = result + 4;
      v139 = 32;
      v140.i64[0] = 0xF000F000F000F000;
      v140.i64[1] = 0xF000F000F000F000;
      do
      {
        v141 = vminq_u16(vsqaddq_u16(v138[-3], v15), v140);
        v142 = vminq_u16(vsqaddq_u16(v138[-2], v15), v140);
        v143 = vminq_u16(vsqaddq_u16(v138[-1], v15), v140);
        v138[-4] = vminq_u16(vsqaddq_u16(v138[-4], v15), v140);
        v138[-3] = v141;
        v138[-2] = v142;
        v138[-1] = v143;
        v144 = vminq_u16(vsqaddq_u16(v138[1], v15), v140);
        v145 = vminq_u16(vsqaddq_u16(v138[2], v15), v140);
        v146 = vminq_u16(vsqaddq_u16(v138[3], v15), v140);
        *v138 = vminq_u16(vsqaddq_u16(*v138, v15), v140);
        v138[1] = v144;
        v138[2] = v145;
        v138[3] = v146;
        v138 = (v138 + 2 * a2);
        --v139;
      }

      while (v139);
    }
  }

  return result;
}

int16x4_t *sub_27750361C(int16x4_t *result, uint64_t a2, int16x4_t *a3, const __int16 *a4, int16x4_t *a5, int *a6)
{
  v7 = a4;
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v42 = 0;
        v43 = a3;
        do
        {
          v44 = 0;
          v45 = 1;
          do
          {
            v46 = v45;
            v47 = &v43[v44];
            v48 = v47[2];
            v49 = v47[4];
            v50 = v47[6];
            v51 = vtrn1q_s16(*v47, v48);
            v52 = vtrn2q_s16(*v47, v48);
            v53 = vtrn1q_s16(v49, v50);
            v54 = vtrn2q_s16(v49, v50);
            *v47 = vtrn1q_s32(v51, v53);
            v47[2] = vtrn1q_s32(v52, v54);
            v47[4] = vtrn2q_s32(v51, v53);
            v47[6] = vtrn2q_s32(v52, v54);
            v44 = 2;
            v45 = 0;
          }

          while ((v46 & 1) != 0);
          v43 += 16;
          v55 = v42 >= 0xC;
          v42 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F9B2C(a3, *a6 & 0x7FFF);
    }

    v56 = *(a6 + 1);
    if (v56 < 1)
    {
      if (v56 < 0)
      {
        v57 = 0;
        v58 = v7;
        do
        {
          v59 = 0;
          v60 = 1;
          do
          {
            v61 = v60;
            v62 = &v58[v59];
            v63 = v62[2];
            v64 = v62[4];
            v65 = v62[6];
            v66 = vtrn1q_s16(*v62, v63);
            v67 = vtrn2q_s16(*v62, v63);
            v68 = vtrn1q_s16(v64, v65);
            v69 = vtrn2q_s16(v64, v65);
            *v62 = vtrn1q_s32(v66, v68);
            v62[2] = vtrn1q_s32(v67, v69);
            v62[4] = vtrn2q_s32(v66, v68);
            v62[6] = vtrn2q_s32(v67, v69);
            v59 = 8;
            v60 = 0;
          }

          while ((v61 & 1) != 0);
          v58 += 64;
          v55 = v57 >= 0xC;
          v57 += 4;
        }

        while (!v55);
      }
    }

    else
    {
      result = sub_2774F9B2C(v7, v56);
    }

    v70 = 4 * a2;
    v71 = 6 * a2;
    v72 = &a3[-64];
    v73 = &v10[6];
    v74 = 2 * a2;
    v75 = -4;
    v76.i64[0] = 0xF000F000F000F000;
    v76.i64[1] = 0xF000F000F000F000;
    v77.i64[0] = 0xC0000000CLL;
    v77.i64[1] = 0xC0000000CLL;
    do
    {
      v78 = v72[32];
      v79 = v72[34];
      v80 = v72[36];
      v81 = v72[38];
      v82 = *v7;
      v83 = *(v7 + 2);
      v84 = *(v7 + 4);
      v85 = vtrn1q_s16(v78, v79);
      v86 = vtrn2q_s16(v78, v79);
      v87 = vtrn1q_s16(v80, v81);
      v88 = vtrn2q_s16(v80, v81);
      v89 = *(v7 + 6);
      v72[32] = 0uLL;
      v72[34] = 0uLL;
      v72[36] = 0uLL;
      v72[38] = 0uLL;
      *v7 = 0uLL;
      *(v7 + 2) = 0uLL;
      v90 = vtrn1q_s32(v85, v87);
      v91 = vtrn2q_s32(v85, v87);
      v92 = vtrn1q_s32(v86, v88);
      v93 = vtrn2q_s32(v86, v88);
      v94 = vtrn1q_s16(v82, v83);
      v95 = vtrn2q_s16(v82, v83);
      v96 = vtrn1q_s16(v84, v89);
      v97 = vtrn2q_s16(v84, v89);
      v98 = vtrn1q_s32(v94, v96);
      v99 = vtrn2q_s32(v94, v96);
      *(v7 + 4) = 0uLL;
      v100 = vtrn1q_s32(v95, v97);
      v101 = vtrn2q_s32(v95, v97);
      *(v7 + 6) = 0uLL;
      if (a5)
      {
        v102 = *a5;
        v103 = *v72;
        v104 = v72[2];
        *v72 = 0uLL;
        v72[2] = 0uLL;
        v105 = vdupq_laneq_s32(vsubw_s16(v77, v102), 2);
        v106 = vshlq_s32(vmovl_s16(*v103.i8), v105);
        v107 = vshlq_s32(vmovl_high_s16(v103), v105);
        v108 = vshlq_s32(vmovl_s16(*v104.i8), v105);
        v109 = vshlq_s32(vmovl_high_s16(v104), v105);
        v110 = vmovl_s16(vdup_lane_s16(v102, 0));
        v111 = vmovl_s16(vdup_lane_s16(v102, 1));
        v90 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v110), 3uLL), vmulq_s32(v107, v110), 3uLL), v90);
        v98 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v106, v111), 3uLL), vmulq_s32(v107, v111), 3uLL), v98);
        v92 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v110), 3uLL), vmulq_s32(v109, v110), 3uLL), v92);
        v100 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v108, v111), 3uLL), vmulq_s32(v109, v111), 3uLL), v100);
        *v111.i8 = *a5;
        v112 = v72[4];
        v113 = v72[6];
        v72[4] = 0uLL;
        v72[6] = 0uLL;
        v114 = vdupq_laneq_s32(vsubw_s16(v77, *v111.i8), 2);
        v115 = vshlq_s32(vmovl_s16(*v112.i8), v114);
        v116 = vshlq_s32(vmovl_high_s16(v112), v114);
        v117 = vshlq_s32(vmovl_s16(*v113.i8), v114);
        v118 = vshlq_s32(vmovl_high_s16(v113), v114);
        v119 = vmovl_s16(vdup_lane_s16(*v111.i8, 0));
        v120 = vmovl_s16(vdup_lane_s16(*v111.i8, 1));
        v91 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v119), 3uLL), vmulq_s32(v116, v119), 3uLL), v91);
        v99 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v115, v120), 3uLL), vmulq_s32(v116, v120), 3uLL), v99);
        v93 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v119), 3uLL), vmulq_s32(v118, v119), 3uLL), v93);
        v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v117, v120), 3uLL), vmulq_s32(v118, v120), 3uLL), v101);
      }

      v121 = vzip1q_s16(v90, v98);
      v122 = vzip2q_s16(v90, v98);
      v123 = vzip1q_s16(v92, v100);
      v124 = vzip2q_s16(v92, v100);
      v125 = vzip1q_s16(v91, v99);
      v126 = vzip2q_s16(v91, v99);
      v127 = (v73 + v74);
      v128 = (v73 + v70);
      v129 = (v73 + v71);
      v130 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v74), v123), v76);
      v131 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v70), v125), v76);
      v132 = vminq_u16(vsqaddq_u16(*(&v73[-3] + v71), vzip1q_s16(v93, v101)), v76);
      v133 = vminq_u16(vsqaddq_u16(v73[-2], v122), v76);
      v134 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v74), v124), v76);
      v135 = vminq_u16(vsqaddq_u16(*(&v73[-2] + v70), v126), v76);
      v136 = vsqaddq_u16(*(&v73[-2] + v71), vzip2q_s16(v93, v101));
      v73[-3] = vminq_u16(vsqaddq_u16(v73[-3], v121), v76);
      v127[-3] = v130;
      v128[-3] = v131;
      v129[-3] = v132;
      v73[-2] = v133;
      v127[-2] = v134;
      v128[-2] = v135;
      v129[-2] = vminq_u16(v136, v76);
      v137 = v72[33];
      v138 = v72[35];
      v139 = v72[37];
      v140 = v72[39];
      v141 = *(v7 + 1);
      v142 = *(v7 + 3);
      v143 = *(v7 + 5);
      v144 = vtrn1q_s16(v137, v138);
      v145 = vtrn2q_s16(v137, v138);
      v146 = vtrn1q_s16(v139, v140);
      v147 = vtrn2q_s16(v139, v140);
      v148 = *(v7 + 7);
      v72[33] = 0uLL;
      v72[35] = 0uLL;
      v72[37] = 0uLL;
      v72[39] = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 3) = 0uLL;
      *(v7 + 5) = 0uLL;
      *(v7 + 7) = 0uLL;
      v149 = vtrn1q_s32(v144, v146);
      v150 = vtrn2q_s32(v144, v146);
      v151 = vtrn1q_s32(v145, v147);
      v152 = vtrn2q_s32(v145, v147);
      v153 = vtrn1q_s16(v141, v142);
      v154 = vtrn2q_s16(v141, v142);
      v155 = vtrn1q_s16(v143, v148);
      v156 = vtrn2q_s16(v143, v148);
      v157 = vtrn1q_s32(v153, v155);
      v158 = vtrn2q_s32(v153, v155);
      v159 = vtrn1q_s32(v154, v156);
      v160 = vtrn2q_s32(v154, v156);
      if (a5)
      {
        v161 = *a5;
        v162 = v72[1];
        v163 = v72[3];
        v72[1] = 0uLL;
        v72[3] = 0uLL;
        v164 = vdupq_laneq_s32(vsubw_s16(v77, v161), 2);
        v165 = vshlq_s32(vmovl_s16(*v162.i8), v164);
        v166 = vshlq_s32(vmovl_high_s16(v162), v164);
        v167 = vshlq_s32(vmovl_s16(*v163.i8), v164);
        v168 = vshlq_s32(vmovl_high_s16(v163), v164);
        v169 = vmovl_s16(vdup_lane_s16(v161, 0));
        v170 = vmovl_s16(vdup_lane_s16(v161, 1));
        v149 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v169), 3uLL), vmulq_s32(v166, v169), 3uLL), v149);
        v157 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v165, v170), 3uLL), vmulq_s32(v166, v170), 3uLL), v157);
        v151 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v169), 3uLL), vmulq_s32(v168, v169), 3uLL), v151);
        v159 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v167, v170), 3uLL), vmulq_s32(v168, v170), 3uLL), v159);
        *v170.i8 = *a5;
        v171 = v72[5];
        v172 = v72[7];
        v72[5] = 0uLL;
        v72[7] = 0uLL;
        v173 = vdupq_laneq_s32(vsubw_s16(v77, *v170.i8), 2);
        v174 = vshlq_s32(vmovl_s16(*v171.i8), v173);
        v175 = vshlq_s32(vmovl_high_s16(v171), v173);
        v176 = vshlq_s32(vmovl_s16(*v172.i8), v173);
        v177 = vshlq_s32(vmovl_high_s16(v172), v173);
        v178 = vmovl_s16(vdup_lane_s16(*v170.i8, 0));
        v179 = vmovl_s16(vdup_lane_s16(*v170.i8, 1));
        v150 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v178), 3uLL), vmulq_s32(v175, v178), 3uLL), v150);
        v158 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v174, v179), 3uLL), vmulq_s32(v175, v179), 3uLL), v158);
        v152 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v178), 3uLL), vmulq_s32(v177, v178), 3uLL), v152);
        v160 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v176, v179), 3uLL), vmulq_s32(v177, v179), 3uLL), v160);
      }

      v180 = vzip1q_s16(v149, v157);
      v181 = vzip2q_s16(v149, v157);
      v182 = vzip1q_s16(v151, v159);
      v183 = vzip2q_s16(v151, v159);
      v184 = vzip1q_s16(v150, v158);
      v185 = vzip2q_s16(v150, v158);
      v186 = vminq_u16(vsqaddq_u16(v127[-1], v182), v76);
      v187 = vminq_u16(vsqaddq_u16(v128[-1], v184), v76);
      v188 = vminq_u16(vsqaddq_u16(v129[-1], vzip1q_s16(v152, v160)), v76);
      v189 = vminq_u16(vsqaddq_u16(*v73, v181), v76);
      v190 = vminq_u16(vsqaddq_u16(*v127, v183), v76);
      v191 = vminq_u16(vsqaddq_u16(*v128, v185), v76);
      v192 = vsqaddq_u16(*v129, vzip2q_s16(v152, v160));
      v73[-1] = vminq_u16(vsqaddq_u16(v73[-1], v180), v76);
      v127[-1] = v186;
      v128[-1] = v187;
      v129[-1] = v188;
      *v73 = v189;
      *v127 = v190;
      *v128 = v191;
      *v129 = vminq_u16(v192, v76);
      v72 += 8;
      v75 += 4;
      v73 = (v73 + 8 * a2);
      v7 += 64;
    }

    while (v75 < 0xC);
  }

  else
  {
    v13 = vld1q_dup_s16(a3);
    v14 = vld1q_dup_s16(a4);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 2uLL);
    a3->i16[0] = 0;
    *a4 = 0;
    v16 = &result[4];
    v17 = 2 * a2;
    if (a5)
    {
      v18 = 0x1FFFFFFFFFFFFFC0;
      v19.i64[0] = 0xC0000000CLL;
      v19.i64[1] = 0xC0000000CLL;
      v20.i64[0] = 0xF000F000F000F000;
      v20.i64[1] = 0xF000F000F000F000;
      do
      {
        v21 = &a3[v18];
        v22 = *a3[v18].i8;
        v23 = *a3[v18 + 2].i8;
        v24 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v25 = vshlq_s32(vmovl_s16(*v22.i8), v24);
        v26 = vshlq_s32(vmovl_high_s16(v22), v24);
        v27 = vshlq_s32(vmovl_s16(*v23.i8), v24);
        v28 = vshlq_s32(vmovl_high_s16(v23), v24);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v29), 3uLL), vmulq_s32(v28, v29), 3uLL);
        v32 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v33 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v32), 3uLL), vmulq_s32(v26, v32), 3uLL);
        v34 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v27, v32), 3uLL), vmulq_s32(v28, v32), 3uLL);
        *v21->i8 = 0uLL;
        *v21[2].i8 = 0uLL;
        v35 = vaddq_s16(vzip1q_s16(v30, v33), v15);
        v36 = vaddq_s16(vzip2q_s16(v30, v33), v15);
        v37 = vaddq_s16(vzip1q_s16(v31, v34), v15);
        v38 = vaddq_s16(vzip2q_s16(v31, v34), v15);
        v39 = vminq_u16(vsqaddq_u16(v16[-1], v36), v20);
        v40 = vminq_u16(vsqaddq_u16(*v16, v37), v20);
        v41 = vsqaddq_u16(v16[1], v38);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v35), v20);
        v16[-1] = v39;
        *v16 = v40;
        v16[1] = vminq_u16(v41, v20);
        v16 = (v16 + v17);
        v18 += 4;
      }

      while ((v18 * 8));
    }

    else
    {
      v193 = 16;
      v194.i64[0] = 0xF000F000F000F000;
      v194.i64[1] = 0xF000F000F000F000;
      do
      {
        v195 = vminq_u16(vsqaddq_u16(v16[-1], v15), v194);
        v196 = vminq_u16(vsqaddq_u16(*v16, v15), v194);
        v197 = vminq_u16(vsqaddq_u16(v16[1], v15), v194);
        v16[-2] = vminq_u16(vsqaddq_u16(v16[-2], v15), v194);
        v16[-1] = v195;
        *v16 = v196;
        v16[1] = v197;
        v16 = (v16 + v17);
        --v193;
      }

      while (v193);
    }
  }

  return result;
}

int16x4_t *sub_277503DE8(int16x4_t *result, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x4_t *a5, int *a6)
{
  v10 = result;
  v11 = *a6;
  if ((*a6 & 0xFFFEFFFE) != 0)
  {
    if (v11 < 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v41 = 1;
        v42 = a3;
        do
        {
          v43 = v41;
          v44 = v42[1];
          v45 = v42[2];
          v46 = v42[3];
          v47 = vtrn1q_s16(*v42, v44);
          v48 = vtrn2q_s16(*v42, v44);
          v49 = vtrn1q_s16(v45, v46);
          v50 = vtrn2q_s16(v45, v46);
          *v42 = vtrn1q_s32(v47, v49);
          v42[1] = vtrn1q_s32(v48, v50);
          v42[2] = vtrn2q_s32(v47, v49);
          v42[3] = vtrn2q_s32(v48, v50);
          v42 += 4;
          v41 = 0;
        }

        while ((v43 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F9EF0(a3, *a6 & 0x7FFF);
    }

    v51 = *(a6 + 1);
    if (v51 < 1)
    {
      if (v51 < 0)
      {
        v52 = 1;
        v53 = a4;
        do
        {
          v54 = v52;
          v55 = v53[1];
          v56 = v53[2];
          v57 = v53[3];
          v58 = vtrn1q_s16(*v53, v55);
          v59 = vtrn2q_s16(*v53, v55);
          v60 = vtrn1q_s16(v56, v57);
          v61 = vtrn2q_s16(v56, v57);
          *v53 = vtrn1q_s32(v58, v60);
          v53[1] = vtrn1q_s32(v59, v61);
          v53[2] = vtrn2q_s32(v58, v60);
          v53[3] = vtrn2q_s32(v59, v61);
          v53 += 4;
          v52 = 0;
        }

        while ((v54 & 1) != 0);
      }
    }

    else
    {
      result = sub_2774F9EF0(a4, v51);
    }

    v62 = (v10 + 2 * a2);
    v63 = (v10 + 4 * a2);
    v64 = (v10 + 6 * a2);
    v65 = a3[1];
    v66 = a3[2];
    v67 = a3[3];
    v68 = *a4;
    v69 = a4[1];
    v70 = vtrn1q_s16(*a3, v65);
    v71 = vtrn2q_s16(*a3, v65);
    v72 = vtrn1q_s16(v66, v67);
    v73 = vtrn2q_s16(v66, v67);
    v74 = a4[2];
    v75 = a4[3];
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    v76 = vtrn1q_s32(v70, v72);
    v77 = vtrn2q_s32(v70, v72);
    v78 = vtrn1q_s32(v71, v73);
    v79 = vtrn2q_s32(v71, v73);
    v80 = vtrn1q_s16(v68, v69);
    v81 = vtrn2q_s16(v68, v69);
    v82 = vtrn1q_s16(v74, v75);
    v83 = vtrn2q_s16(v74, v75);
    v84 = vtrn1q_s32(v80, v82);
    v85 = vtrn2q_s32(v80, v82);
    v86 = vtrn1q_s32(v81, v83);
    v87 = vtrn2q_s32(v81, v83);
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    if (a5)
    {
      v88 = a3[-8];
      v89 = a3[-7];
      v90.i64[0] = 0xC0000000CLL;
      v90.i64[1] = 0xC0000000CLL;
      v91 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v92 = vshlq_s32(vmovl_s16(*v88.i8), v91);
      v93 = vshlq_s32(vmovl_high_s16(v88), v91);
      v94 = vshlq_s32(vmovl_s16(*v89.i8), v91);
      v95 = vshlq_s32(vmovl_high_s16(v89), v91);
      v96 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v97 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-8] = 0uLL;
      a3[-7] = 0uLL;
      v76 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v96), 3uLL), vmulq_s32(v93, v96), 3uLL), v76);
      v84 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v92, v97), 3uLL), vmulq_s32(v93, v97), 3uLL), v84);
      v78 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v96), 3uLL), vmulq_s32(v95, v96), 3uLL), v78);
      v86 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v94, v97), 3uLL), vmulq_s32(v95, v97), 3uLL), v86);
      v98 = a3[-6];
      v99 = a3[-5];
      v100 = vdupq_laneq_s32(vsubw_s16(v90, *a5), 2);
      v101 = vshlq_s32(vmovl_s16(*v98.i8), v100);
      v102 = vshlq_s32(vmovl_high_s16(v98), v100);
      v103 = vshlq_s32(vmovl_s16(*v99.i8), v100);
      v104 = vshlq_s32(vmovl_high_s16(v99), v100);
      v105 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v106 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-6] = 0uLL;
      a3[-5] = 0uLL;
      v77 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v105), 3uLL), vmulq_s32(v102, v105), 3uLL), v77);
      v85 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v101, v106), 3uLL), vmulq_s32(v102, v106), 3uLL), v85);
      v79 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v105), 3uLL), vmulq_s32(v104, v105), 3uLL), v79);
      v87 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v103, v106), 3uLL), vmulq_s32(v104, v106), 3uLL), v87);
    }

    v107 = vzip1q_s16(v76, v84);
    v108 = vzip2q_s16(v76, v84);
    v109 = vzip1q_s16(v78, v86);
    v110 = vzip2q_s16(v78, v86);
    v111 = vzip1q_s16(v77, v85);
    v112 = vzip2q_s16(v77, v85);
    v113 = vzip1q_s16(v79, v87);
    v114 = vzip2q_s16(v79, v87);
    v115.i64[0] = 0xF000F000F000F000;
    v115.i64[1] = 0xF000F000F000F000;
    v116 = vminq_u16(vsqaddq_u16(*v62, v109), v115);
    v117 = vminq_u16(vsqaddq_u16(*v63, v111), v115);
    v118 = vminq_u16(vsqaddq_u16(*v64, v113), v115);
    v119 = vminq_u16(vsqaddq_u16(v10[1], v108), v115);
    v120 = vminq_u16(vsqaddq_u16(v62[1], v110), v115);
    v121 = vminq_u16(vsqaddq_u16(v63[1], v112), v115);
    v122 = vsqaddq_u16(v64[1], v114);
    *v10 = vminq_u16(vsqaddq_u16(*v10, v107), v115);
    *v62 = v116;
    *v63 = v117;
    *v64 = v118;
    v10[1] = v119;
    v62[1] = v120;
    v63[1] = v121;
    v64[1] = vminq_u16(v122, v115);
    v123 = a3[4];
    v124 = a3[5];
    v125 = a3[6];
    v126 = a3[7];
    v127 = a4[4];
    v128 = a4[5];
    v129 = vtrn1q_s16(v123, v124);
    v130 = vtrn2q_s16(v123, v124);
    v131 = vtrn1q_s16(v125, v126);
    v132 = vtrn2q_s16(v125, v126);
    v133 = a4[6];
    v134 = a4[7];
    a3[4] = 0uLL;
    a3[5] = 0uLL;
    a3[6] = 0uLL;
    a3[7] = 0uLL;
    v135 = vtrn1q_s32(v129, v131);
    v136 = vtrn2q_s32(v129, v131);
    v137 = vtrn1q_s32(v130, v132);
    v138 = vtrn2q_s32(v130, v132);
    v139 = vtrn1q_s16(v127, v128);
    v140 = vtrn2q_s16(v127, v128);
    v141 = vtrn1q_s16(v133, v134);
    v142 = vtrn2q_s16(v133, v134);
    v143 = vtrn1q_s32(v139, v141);
    v144 = vtrn2q_s32(v139, v141);
    v145 = vtrn1q_s32(v140, v142);
    v146 = vtrn2q_s32(v140, v142);
    a4[6] = 0uLL;
    a4[7] = 0uLL;
    a4[4] = 0uLL;
    a4[5] = 0uLL;
    if (a5)
    {
      v147 = a3[-4];
      v148 = a3[-3];
      v149.i64[0] = 0xC0000000CLL;
      v149.i64[1] = 0xC0000000CLL;
      v150 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v151 = vshlq_s32(vmovl_s16(*v147.i8), v150);
      v152 = vshlq_s32(vmovl_high_s16(v147), v150);
      v153 = vshlq_s32(vmovl_s16(*v148.i8), v150);
      v154 = vshlq_s32(vmovl_high_s16(v148), v150);
      v155 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v156 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-4] = 0u;
      a3[-3] = 0u;
      v135 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v155), 3uLL), vmulq_s32(v152, v155), 3uLL), v135);
      v143 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v151, v156), 3uLL), vmulq_s32(v152, v156), 3uLL), v143);
      v137 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v155), 3uLL), vmulq_s32(v154, v155), 3uLL), v137);
      v145 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v153, v156), 3uLL), vmulq_s32(v154, v156), 3uLL), v145);
      v157 = a3[-2];
      v158 = a3[-1];
      v159 = vdupq_laneq_s32(vsubw_s16(v149, *a5), 2);
      v160 = vshlq_s32(vmovl_s16(*v157.i8), v159);
      v161 = vshlq_s32(vmovl_high_s16(v157), v159);
      v162 = vshlq_s32(vmovl_s16(*v158.i8), v159);
      v163 = vshlq_s32(vmovl_high_s16(v158), v159);
      v164 = vmovl_s16(vdup_lane_s16(*a5, 0));
      v165 = vmovl_s16(vdup_lane_s16(*a5, 1));
      a3[-2] = 0u;
      a3[-1] = 0u;
      v136 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v164), 3uLL), vmulq_s32(v161, v164), 3uLL), v136);
      v144 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v160, v165), 3uLL), vmulq_s32(v161, v165), 3uLL), v144);
      v138 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v164), 3uLL), vmulq_s32(v163, v164), 3uLL), v138);
      v146 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v162, v165), 3uLL), vmulq_s32(v163, v165), 3uLL), v146);
    }

    v166 = (v10 + 8 * a2);
    v167 = (v166 + 6 * a2);
    v168 = (v166 + 4 * a2);
    v169 = (v166 + 2 * a2);
    v170 = vzip1q_s16(v135, v143);
    v171 = vzip2q_s16(v135, v143);
    v172 = vzip1q_s16(v137, v145);
    v173 = vzip2q_s16(v137, v145);
    v174 = vzip1q_s16(v136, v144);
    v175 = vzip2q_s16(v136, v144);
    v176 = vzip1q_s16(v138, v146);
    v177 = vzip2q_s16(v138, v146);
    v178 = vminq_u16(vsqaddq_u16(*v169, v172), v115);
    v179 = vminq_u16(vsqaddq_u16(*v168, v174), v115);
    v180 = vminq_u16(vsqaddq_u16(*v167, v176), v115);
    v181 = vminq_u16(vsqaddq_u16(v166[1], v171), v115);
    v182 = vminq_u16(vsqaddq_u16(v169[1], v173), v115);
    v183 = vminq_u16(vsqaddq_u16(v168[1], v175), v115);
    v184 = vsqaddq_u16(v167[1], v177);
    *v166 = vminq_u16(vsqaddq_u16(*v166, v170), v115);
    *v169 = v178;
    *v168 = v179;
    *v167 = v180;
    v166[1] = v181;
    v169[1] = v182;
    v168[1] = v183;
    v167[1] = vminq_u16(v184, v115);
  }

  else
  {
    v13 = vld1q_dup_s16(a3->i16);
    v14 = vld1q_dup_s16(a4->i16);
    v15 = vrshrq_n_s16(vrshrq_n_s16(vzip1q_s16(v13, v14), 1uLL), 2uLL);
    a3->i16[0] = 0;
    a4->i16[0] = 0;
    if (a5)
    {
      v16 = a3 - 8;
      v17 = 2 * a2;
      v18 = -2;
      v19.i64[0] = 0xC0000000CLL;
      v19.i64[1] = 0xC0000000CLL;
      v20.i64[0] = 0xF000F000F000F000;
      v20.i64[1] = 0xF000F000F000F000;
      do
      {
        v21 = v16[1];
        v22 = vdupq_laneq_s32(vsubw_s16(v19, *a5), 2);
        v23 = vshlq_s32(vmovl_s16(*v16->i8), v22);
        v24 = vshlq_s32(vmovl_high_s16(*v16), v22);
        v25 = vshlq_s32(vmovl_s16(*v21.i8), v22);
        v26 = vshlq_s32(vmovl_high_s16(v21), v22);
        v27 = vmovl_s16(vdup_lane_s16(*a5, 0));
        v28 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v27), 3uLL), vmulq_s32(v24, v27), 3uLL);
        v29 = vmovl_s16(vdup_lane_s16(*a5, 1));
        v30 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v27), 3uLL), vmulq_s32(v26, v27), 3uLL);
        v31 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v23, v29), 3uLL), vmulq_s32(v24, v29), 3uLL);
        v32 = vshrn_high_n_s32(vshrn_n_s32(vmulq_s32(v25, v29), 3uLL), vmulq_s32(v26, v29), 3uLL);
        *v16 = 0uLL;
        v16[1] = 0uLL;
        v16 += 2;
        v33 = vaddq_s16(vzip1q_s16(v28, v31), v15);
        v34 = vzip2q_s16(v28, v31);
        v35 = vaddq_s16(vzip1q_s16(v30, v32), v15);
        v36 = (v10 + v17);
        v37 = vaddq_s16(vzip2q_s16(v30, v32), v15);
        v38 = vminq_u16(vsqaddq_u16(v10[1], vaddq_s16(v34, v15)), v20);
        v39 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v35), v20);
        v40 = vminq_u16(vsqaddq_u16(*(&v10[1] + v17), v37), v20);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v33), v20);
        v10[1] = v38;
        *v36 = v39;
        v36[1] = v40;
        v10 = (v10 + 4 * a2);
        v18 += 2;
      }

      while (v18 < 6);
    }

    else
    {
      v185 = 2 * a2;
      v186 = -2;
      v187.i64[0] = 0xF000F000F000F000;
      v187.i64[1] = 0xF000F000F000F000;
      do
      {
        v188 = (v10 + v185);
        v189 = vminq_u16(vsqaddq_u16(v10[1], v15), v187);
        v190 = vminq_u16(vsqaddq_u16(*(v10 + 2 * a2), v15), v187);
        v191 = vminq_u16(vsqaddq_u16(*(&v10[1] + v185), v15), v187);
        *v10 = vminq_u16(vsqaddq_u16(*v10, v15), v187);
        v10[1] = v189;
        *v188 = v190;
        v188[1] = v191;
        v10 = (v10 + 4 * a2);
        v186 += 2;
      }

      while (v186 < 6);
    }
  }

  return result;
}

double sub_2775044F8(uint16x8_t *a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4, int16x4_t *a5, __int16 *a6)
{
  v12 = *a6;
  if (v12 >= 1)
  {
    sub_2774FA118(a3, v12);
  }

  v13 = a6[1];
  if (v13 >= 1)
  {
    sub_2774FA118(a4, v13);
  }

  *&result = sub_277502EFC(a1, a2, a3, a4, a5).u64[0];
  return result;
}

void sub_277504588(int16x4_t *a1)
{
  v2[65] = *MEMORY[0x277D85DE8];
  sub_2774F15E8(v2, a1, 7);
  sub_2774F1738(a1, v2);
}

void sub_2775045F8(int16x4_t *a1)
{
  v2[17] = *MEMORY[0x277D85DE8];
  sub_2774F19A4(v2, a1, 6);
  sub_2774F1A4C(a1, v2);
}

int16x4_t sub_277504668(int16x4_t *a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = vtrn1_s16(*a1, v1);
  v5 = vtrn2_s16(*a1, v1);
  v6 = vtrn1_s16(v2, v3);
  v7 = vtrn2_s16(v2, v3);
  v8 = vzip1_s32(v4, v6);
  v9 = vzip2_s32(v4, v6);
  v10 = vzip1_s32(v5, v7);
  v11 = vzip2_s32(v5, v7);
  v12 = vadd_s16(v11, v8);
  v13 = vsub_s16(v8, v11);
  v14 = vadd_s16(v9, v10);
  v15 = vsub_s16(v10, v9);
  v17[0] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vaddl_s16(v14, v12), 6uLL), 5uLL));
  v17[1] = vqmovn_s32(vrshrq_n_s32(vmlal_s16(vmull_s16(v15, 0x24002400240024), v13, 0x53005300530053), 5uLL));
  v17[2] = vqmovn_s32(vrshrq_n_s32(vshlq_n_s32(vsubl_s16(v12, v14), 6uLL), 5uLL));
  v17[3] = vqmovn_s32(vrshrq_n_s32(vmlsl_s16(vmull_s16(v13, 0x24002400240024), v15, 0x53005300530053), 5uLL));
  return sub_2774F1C40(a1, v17);
}

uint64_t sub_277504740(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 16 * a2;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = a1 + 12 * a2;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = a1 + 8 * a2;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = a1 + 4 * a2;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = a4;
  do
  {
    if (a3 >= 1)
    {
      v18 = 0;
      for (i = 0; i < a3; i += 4)
      {
        v20 = *(a1 + v18);
        v21 = *(v14 + v18);
        v22 = *(v11 + v18);
        v23 = *(v7 + v18);
        v5 = vaddq_s32(vaddq_s32(vaddq_s32(v20, v5), vaddq_s32(v21, v22)), v23);
        v16 = vmlal_u32(v16, *v20.i8, *v20.i8);
        v15 = vmlal_high_u32(v15, v20, v20);
        v13 = vmlal_u32(v13, *v21.i8, *v21.i8);
        v12 = vmlal_high_u32(v12, v21, v21);
        v10 = vmlal_u32(v10, *v22.i8, *v22.i8);
        v9 = vmlal_high_u32(v9, v22, v22);
        v8 = vmlal_u32(v8, *v23.i8, *v23.i8);
        v6 = vmlal_high_u32(v6, v23, v23);
        v18 += 16;
      }
    }

    a1 += v4;
    v7 += v4;
    v11 += v4;
    v14 += v4;
    v24 = __OFSUB__(v17, 4);
    v17 -= 4;
  }

  while (!((v17 < 0) ^ v24 | (v17 == 0)));
  v25 = vaddlvq_u32(v5);
  return vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v8, v6), vaddq_s64(v9, v10)), vaddq_s64(vaddq_s64(v12, v13), v15)), v16)) - (v25 * v25 + ((a4 * a3) >> 1)) / (a4 * a3);
}

uint64_t sub_277504844(int32x4_t *a1, uint64_t a2, int a3, int a4)
{
  v4 = a3 & 0xFFFFFFF8;
  if ((a4 & 0xFFFFFFFE) < 1)
  {
    v9 = 0uLL;
    v10 = a1;
  }

  else
  {
    v5 = 0;
    v6 = 8 * a2;
    v7 = a1 + 1;
    v8 = a1[1].i64 + 4 * a2;
    v9 = 0uLL;
    v10 = a1;
    do
    {
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v7;
        v13 = v8;
        do
        {
          v9 = vaddq_s32(vaddq_s32(vaddq_s32(v12[-1], v9), vaddq_s32(*v12, v13[-1])), *v13);
          v11 += 8;
          v13 += 2;
          v12 += 2;
        }

        while (v11 < v4);
      }

      v5 += 2;
      v10 = (v10 + v6);
      v8 += v6;
      v7 = (v7 + v6);
    }

    while (v5 < (a4 & 0xFFFFFFFE));
  }

  if ((a4 & 1) != 0 && v4 >= 1)
  {
    v14 = 0;
    v15 = v10 + 1;
    do
    {
      v9 = vaddq_s32(vaddq_s32(v15[-1], v9), *v15);
      v14 += 8;
      v15 += 2;
    }

    while (v14 < v4);
  }

  if ((a3 & 4) != 0)
  {
    if (a4 < 1)
    {
      return vaddvq_s32(v9);
    }

    v16 = v4 | 4;
    v17 = a4;
    v18 = (a1 + 4 * v4);
    do
    {
      v9 = vaddq_s32(*v18, v9);
      v18 = (v18 + 4 * a2);
      --v17;
    }

    while (v17);
  }

  else
  {
    v16 = a3 & 0xFFFFFFF8;
  }

  if ((a3 & 3) != 0 && a4 >= 1)
  {
    v19 = (a1 + 4 * v16);
    do
    {
      v9 = vaddq_s32(vandq_s8(*v19, *(&unk_27753CF10 + 4 * (a3 & 3 ^ 3u))), v9);
      v19 = (v19 + 4 * a2);
      --a4;
    }

    while (a4);
  }

  return vaddvq_s32(v9);
}

uint64_t sub_27750498C(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = result + 1;
    v7 = a5 + 8 * result + 16;
    v8 = a3;
    v9 = v7;
    do
    {
      if (result >= 1)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (v10)
          {
            v12 = *(v11 - 1);
          }

          else
          {
            v12 = 0;
          }

          *v11++ = v12 + *(v8 + v10);
          v10 += 4;
        }

        while (4 * result != v10);
      }

      ++v5;
      v9 += v6;
      v8 += 4 * result;
    }

    while (v5 != a2);
    if (a2 == 1)
    {
      v13 = (result + 15) >> 4;
      if (v13 >= 1)
      {
        v13 = 1;
      }
    }

    else
    {
      for (i = 1; i != a2; ++i)
      {
        v15 = v7;
        v16 = result;
        if (result >= 1)
        {
          do
          {
            v15[v6] += *v15;
            ++v15;
            --v16;
          }

          while (v16);
        }

        v7 += 8 * v6;
      }

      if (((a2 + 15) >> 4) >= (result + 15) >> 4)
      {
        v13 = (result + 15) >> 4;
      }

      else
      {
        v13 = (a2 + 15) >> 4;
      }
    }

    LODWORD(v17) = 0;
    for (j = 0; j != a2; ++j)
    {
      if (result >= 1)
      {
        v19 = (j - v13) & ~((j - v13) >> 31);
        v20 = j + v13;
        if (j + v13 >= a2)
        {
          v20 = a2;
        }

        v21 = v20 - v19;
        v22 = v19 * v6;
        v17 = v17;
        v23 = -v13;
        v24 = v13;
        v25 = result;
        do
        {
          v26 = v23 & ~(v23 >> 31);
          if (v24 >= result)
          {
            v27 = result;
          }

          else
          {
            v27 = v24;
          }

          v28 = v27 - v26;
          v29 = (a5 + 8 * (v26 + v22));
          v30 = ((*(a3 + 4 * v17) + 32) >> 6) - (((v29[v28 + v21 * v6] + *v29 - (v29[v28] + v29[v21 * v6]) + ((v28 * v21) >> 1)) / (v28 * v21) + 32) >> 6);
          if (v30 < 0)
          {
            v30 = -v30;
          }

          *(a4 + 4 * v17++) = v30;
          ++v24;
          ++v23;
          --v25;
        }

        while (v25);
      }
    }
  }

  return result;
}

unint64_t sub_277504B70(uint64_t a1, uint64_t a2, int a3, int a4, int32x2_t *a5, _DWORD *a6, void *a7)
{
  if (a4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a3 >> 3;
    v10 = 16 * a2;
    v11 = 8 * v9;
    v12 = 4 * v9;
    v13 = a1 + 15 * a2;
    v14 = a1 + 14 * a2;
    v15 = a1 + 13 * a2;
    v16 = a1 + 12 * a2;
    v17 = a1 + 11 * a2;
    v18 = a1 + 10 * a2;
    v19 = a1 + 9 * a2;
    v20 = a1 + 8 * a2;
    do
    {
      if (a3 >= 1)
      {
        v21 = 0;
        v22 = a5;
        do
        {
          v23 = 0;
          v24 = 0uLL;
          v25 = 0uLL;
          if (a4 - v8 >= 16)
          {
            v26 = *(v20 + v21);
            v27 = *(v19 + v21);
            v28 = *(v18 + v21);
            v29 = *(v17 + v21);
            v30 = *(v16 + v21);
            v31 = *(v15 + v21);
            v32 = *(v14 + v21);
            v33 = *(v13 + v21);
            v24 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_u8(*v27.i8, *v27.i8)), vmull_u8(*v26.i8, *v26.i8)), vmull_u8(*v28.i8, *v28.i8)), vmull_u8(*v29.i8, *v29.i8)), vmull_u8(*v30.i8, *v30.i8)), vmull_u8(*v31.i8, *v31.i8)), vmull_u8(*v32.i8, *v32.i8)), vmull_u8(*v33.i8, *v33.i8));
            v25 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_high_u8(v27, v27)), vmull_high_u8(v26, v26)), vmull_high_u8(v28, v28)), vmull_high_u8(v29, v29)), vmull_high_u8(v30, v30)), vmull_high_u8(v31, v31)), vmull_high_u8(v32, v32)), vmull_high_u8(v33, v33));
            v23 = *(v22 + v12);
          }

          v34 = *(a1 + v21);
          v35 = (a1 + v21 + a2);
          v36 = *v35;
          v37 = (v35 + a2);
          v38 = *v37;
          v39 = (v37 + a2);
          v40 = *v39;
          v41 = (v39 + a2);
          v42 = *v41;
          v43 = (v41 + a2);
          v44 = *v43;
          v45 = (v43 + a2);
          v46 = *v45;
          v47 = *(v45 + a2);
          v48 = *v22;
          if (v21 <= a3 - 16)
          {
            v49 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_high_u8(v36, v36)), vmull_high_u8(v34, v34)), vmull_high_u8(v38, v38)), vmull_high_u8(v40, v40)), vmull_high_u8(v42, v42)), vmull_high_u8(v44, v44)), vmull_high_u8(v46, v46)), vmull_high_u8(v47, v47));
          }

          else
          {
            v48.i32[1] = 0;
            v23.i32[1] = 0;
            v25 = 0uLL;
            v49 = 0uLL;
          }

          v50 = vaddq_s32(vaddq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_u8(*v36.i8, *v36.i8)), vmull_u8(*v34.i8, *v34.i8)), vmull_u8(*v38.i8, *v38.i8)), vmull_u8(*v40.i8, *v40.i8)), vmull_u8(*v42.i8, *v42.i8)), vmull_u8(*v44.i8, *v44.i8)), vmull_u8(*v46.i8, *v46.i8)), vmull_u8(*v47.i8, *v47.i8)), v24), vaddq_s32(v25, v49));
          v51 = vadd_s32(v48, v23);
          v51.i32[0] = vpadd_s32(v51, v51).u32[0];
          *a6++ = v51.i32[0];
          v50.i64[0] = vaddlvq_u32(v50);
          *a7++ = v50.i64[0];
          v7 += (v50.i64[0] - ((v51.i32[0] * v51.i32[0]) >> 8) + 128) >> 8;
          v21 += 16;
          ++v22;
        }

        while (v21 < a3);
      }

      a1 += v10;
      a5 = (a5 + v11);
      v8 += 16;
      v13 += v10;
      v14 += v10;
      v15 += v10;
      v16 += v10;
      v17 += v10;
      v18 += v10;
      v19 += v10;
      v20 += v10;
    }

    while (v8 < a4);
  }

  return (v7 + ((a4 * a3) >> 9)) / ((a4 * a3) >> 8);
}

unint64_t sub_277504E48(uint64_t a1, uint64_t a2, int a3, int a4, int32x2_t *a5, _DWORD *a6, void *a7)
{
  if (a4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a3 >> 3;
    v10 = 16 * a2;
    v11 = 8 * v9;
    v12 = 4 * v9;
    v13 = a1 + 15 * a2;
    v14 = a1 + 14 * a2;
    v15 = a1 + 13 * a2;
    v16 = a1 + 12 * a2;
    v17 = a1 + 11 * a2;
    v18 = a1 + 10 * a2;
    v19 = a1 + 9 * a2;
    v20 = a1 + 8 * a2;
    do
    {
      if (a3 >= 1)
      {
        v21 = 0;
        v22 = a5;
        do
        {
          v23 = 0;
          v24 = 0uLL;
          v25 = 0uLL;
          if (a4 - v8 >= 16)
          {
            v26 = *(v20 + v21);
            v27 = *(v19 + v21);
            v28 = *(v18 + v21);
            v29 = *(v17 + v21);
            v30 = *(v16 + v21);
            v31 = *(v15 + v21);
            v32 = *(v14 + v21);
            v33 = *(v13 + v21);
            v24 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_u8(*v27.i8, *v27.i8)), vmull_u8(*v26.i8, *v26.i8)), vmull_u8(*v28.i8, *v28.i8)), vmull_u8(*v29.i8, *v29.i8)), vmull_u8(*v30.i8, *v30.i8)), vmull_u8(*v31.i8, *v31.i8)), vmull_u8(*v32.i8, *v32.i8)), vmull_u8(*v33.i8, *v33.i8));
            v25 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_high_u8(v27, v27)), vmull_high_u8(v26, v26)), vmull_high_u8(v28, v28)), vmull_high_u8(v29, v29)), vmull_high_u8(v30, v30)), vmull_high_u8(v31, v31)), vmull_high_u8(v32, v32)), vmull_high_u8(v33, v33));
            v23 = *(v22 + v12);
          }

          v34 = *(a1 + v21);
          v35 = (a1 + v21 + a2);
          v36 = *v35;
          v37 = (v35 + a2);
          v38 = *v37;
          v39 = (v37 + a2);
          v40 = *v39;
          v41 = (v39 + a2);
          v42 = *v41;
          v43 = (v41 + a2);
          v44 = *v43;
          v45 = (v43 + a2);
          v46 = *v45;
          v47 = *(v45 + a2);
          v48 = *v22;
          if (v21 <= a3 - 16)
          {
            v49 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_high_u8(v36, v36)), vmull_high_u8(v34, v34)), vmull_high_u8(v38, v38)), vmull_high_u8(v40, v40)), vmull_high_u8(v42, v42)), vmull_high_u8(v44, v44)), vmull_high_u8(v46, v46)), vmull_high_u8(v47, v47));
          }

          else
          {
            v48.i32[1] = 0;
            v23.i32[1] = 0;
            v25 = 0uLL;
            v49 = 0uLL;
          }

          v50 = vaddq_s32(vaddq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_u8(*v36.i8, *v36.i8)), vmull_u8(*v34.i8, *v34.i8)), vmull_u8(*v38.i8, *v38.i8)), vmull_u8(*v40.i8, *v40.i8)), vmull_u8(*v42.i8, *v42.i8)), vmull_u8(*v44.i8, *v44.i8)), vmull_u8(*v46.i8, *v46.i8)), vmull_u8(*v47.i8, *v47.i8)), v24), vaddq_s32(v25, v49));
          v51 = vadd_s32(v48, v23);
          v51.i32[0] = vpadd_s32(v51, v51).u32[0];
          *a6++ = v51.i32[0];
          v50.i64[0] = vaddlvq_u32(v50);
          *a7++ = v50.i64[0];
          v7 += (v50.i64[0] - ((v51.i32[0] * v51.i32[0]) >> 8) + 128) >> 8;
          v21 += 16;
          ++v22;
        }

        while (v21 < a3);
      }

      a1 += v10;
      a5 = (a5 + v11);
      v8 += 16;
      v13 += v10;
      v14 += v10;
      v15 += v10;
      v16 += v10;
      v17 += v10;
      v18 += v10;
      v19 += v10;
      v20 += v10;
    }

    while (v8 < a4);
  }

  return (v7 + ((a4 * a3) >> 9)) / ((a4 * a3) >> 8);
}

unint64_t sub_277505120(int16x4_t *a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t *a6, int64x2_t *a7)
{
  if (a4 < 1)
  {
    v9 = 0uLL;
  }

  else
  {
    v7 = 0;
    v8 = 2 * a2;
    v9 = 0uLL;
    do
    {
      if (a3 >= 1)
      {
        v10 = 0;
        v11 = a1;
        do
        {
          v12 = (v11 + v8 + v8);
          v13 = *v12;
          v14 = v12[1];
          v15 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(v11[2], v11[2]), *v11[2].i8, *v11[2].i8), *(&v11[2] + v8), *(&v11[2] + v8)), *&v11[2].i8[v8], *&v11[2].i8[v8]), *v14.i8, *v14.i8), v14, v14);
          v16 = (v12 + v8);
          v17 = v16[1];
          v18 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v11, *v11), *v11->i8, *v11->i8), *(v11 + 2 * a2), *(v11 + 2 * a2)), *&v11->i8[2 * a2], *&v11->i8[2 * a2]), *v13.i8, *v13.i8), v13, v13), *v16->i8, *v16->i8), *v16, *v16);
          v19 = &v16->i8[v8];
          v20 = *(v19 + 1);
          v21 = vmlal_s16(vmlal_high_s16(vmlal_s16(v15, *v17.i8, *v17.i8), v17, v17), *v20.i8, *v20.i8);
          v22 = vmlal_high_s16(vmlal_s16(v18, *v19, *v19), *v19, *v19);
          v23 = &v19[v8];
          v24 = *(v23 + 1);
          v25 = vmlal_high_s16(vmlal_s16(v22, *v23, *v23), *v23, *v23);
          v26 = &v23[v8];
          v27 = vmlal_high_s16(vmlal_s16(v25, *v26, *v26), *v26->i8, *v26->i8);
          v28 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(vmlal_high_s16(v21, v20, v20), *v24.i8, *v24.i8), v24, v24), v26[2], v26[2]), *v26[2].i8, *v26[2].i8);
          v29 = (v26 + v8);
          v30 = vmlal_high_s16(vmlal_s16(v27, *v29, *v29), *v29->i8, *v29->i8);
          v31 = vmlal_high_s16(vmlal_s16(v28, v29[2], v29[2]), *v29[2].i8, *v29[2].i8);
          v13.i64[0] = *a5;
          *a6 = *a5;
          v32 = vpaddlq_u32(vpaddq_s32(v30, v31));
          v33 = vsubq_s64(v32, vshrq_n_u64(vmull_u32(*v13.i8, *v13.i8), 6uLL));
          if (v10 >= a3 - 15)
          {
            v34 = 1;
          }

          else
          {
            v34 = 2;
          }

          a6 = (a6 + 4 * v34);
          *a7 = v32;
          v9 = vrsraq_n_u64(v9, v33, 6uLL);
          a5 = (a5 + 4 * v34);
          a7 = (a7 + 8 * v34);
          v10 += 16;
          v11 += 4;
        }

        while (v10 < a3);
      }

      a1 += 2 * a2;
      v7 += 8;
    }

    while (v7 < a4);
  }

  return (v9.i64[1] + ((a4 * a3) >> 7) + v9.i64[0]) / ((a4 * a3) >> 6);
}

unint64_t sub_277505294(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t *a6, int64x2_t *a7)
{
  if (a4 < 1)
  {
    v8 = 0uLL;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
    do
    {
      if (a3 >= 1)
      {
        for (i = 0; i < a3; i += 16)
        {
          v10 = (a1 + i + a2);
          v11 = *v10;
          v12 = *(a1 + i);
          v13 = *(v10 + a2);
          v14 = (v10 + a2 + a2);
          v15 = *v14;
          v16 = (v14 + a2);
          v17 = *v16;
          v18 = (v16 + a2);
          v19 = *v18;
          v20 = (v18 + a2);
          v21 = *(v20 + a2);
          v22 = *v20;
          v23 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_u8(*v11.i8, *v11.i8)), vmull_u8(*v12.i8, *v12.i8)), vmull_u8(*v13.i8, *v13.i8)), vmull_u8(*v15.i8, *v15.i8)), vmull_u8(*v17.i8, *v17.i8));
          v24 = vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(vmull_high_u8(v11, v11)), vmull_high_u8(v12, v12)), vmull_high_u8(v13, v13)), vmull_high_u8(v15, v15)), vmull_high_u8(v17, v17)), vmull_high_u8(v19, v19)), vmull_high_u8(v22, v22)), vmull_high_u8(v21, v21));
          v12.i64[0] = *a5;
          *a6 = *a5;
          v25 = vpaddlq_u32(vpaddq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(v23, vmull_u8(*v19.i8, *v19.i8)), vmull_u8(*v22.i8, *v22.i8)), vmull_u8(*v21.i8, *v21.i8)), v24));
          v26 = vsubq_s64(v25, vshrq_n_u64(vmull_u32(*v12.i8, *v12.i8), 6uLL));
          if (i >= a3 - 15)
          {
            v27 = 1;
          }

          else
          {
            v27 = 2;
          }

          *a7 = v25;
          a6 = (a6 + 4 * v27);
          v8 = vrsraq_n_u64(v8, v26, 6uLL);
          a5 = (a5 + 4 * v27);
          a7 = (a7 + 8 * v27);
        }
      }

      a1 += 8 * a2;
      v7 += 8;
    }

    while (v7 < a4);
  }

  return (v8.i64[1] + ((a4 * a3) >> 7) + v8.i64[0]) / ((a4 * a3) >> 6);
}

uint64_t sub_2775053FC(int16x8_t *a1, uint64_t a2, int a3, int a4, _DWORD *a5, unsigned int *a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 2 * a2;
  do
  {
    if (a3 >= 1)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v11 = (v10 + v8);
        v12 = *v10++;
        v13 = *v11;
        v14 = (v11 + v8);
        v15 = *v14;
        v16 = (v14 + v8);
        v17 = *v16;
        v18 = *(v16 + 2 * a2);
        v19 = (v16 + v8 + v8);
        v20 = *(v19 + 2 * a2 + 2 * a2);
        v21 = *(v19 + 2 * a2);
        v22 = vpaddq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v13, v12), v15), v17), vaddq_s16(vaddq_s16(*v19, v18), vaddq_s16(v21, v20)));
        v23 = vpaddq_s16(v22, v22);
        v24 = vrshrq_n_u16(vqtbl1q_s8(v23, xmmword_27750D4B0), 4uLL);
        v25 = vpaddq_s16(v23, v23);
        v26 = vrshrq_n_u16(vqtbl1q_s8(v23, xmmword_27750D4C0), 4uLL);
        v27 = vabaq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabdq_u16(v13, v24), v12, v24), v15, v24), v17, v24), v18, v26), *v19, v26);
        *a5++ = vpaddlq_u16(v25).u32[0];
        v28 = vaddlvq_u16(vabaq_u16(vabaq_u16(v27, v21, v26), v20, v26));
        *a6++ = v28;
        v7 = v28 + v7;
        v9 += 8;
      }

      while (v9 < a3);
    }

    a1 += a2;
    v6 += 8;
  }

  while (v6 < a4);
  return v7;
}

uint64_t sub_277505508(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    if (a3 >= 1)
    {
      for (i = 0; i < a3; i += 8)
      {
        v9 = *(a1 + i);
        v10 = (a1 + i + a2);
        v11 = *v10;
        v12 = *(v10 + a2);
        v13 = (v10 + a2 + a2);
        v14 = *v13;
        v15 = (v13 + a2);
        v16 = *v15;
        v17 = *(v15 + a2);
        v18 = (v15 + a2 + a2);
        v19 = *(v18 + a2);
        v20 = vpaddq_s16(vaddw_u8(vaddw_u8(vaddl_u8(v11, v9), v12), v14), vaddw_u8(vaddw_u8(vaddl_u8(v17, v16), *v18), v19));
        v21 = vpaddq_s16(v20, v20);
        v22 = vrshrq_n_u16(vqtbl1q_s8(v21, xmmword_27750D4B0), 4uLL);
        v23 = vabaq_u16(vabdq_u16(vmovl_u8(v11), v22), vmovl_u8(v9), v22);
        v24 = vpaddq_s16(v21, v21);
        v25 = vmovl_u8(*v18);
        v26 = vrshrq_n_u16(vqtbl1q_s8(v21, xmmword_27750D4C0), 4uLL);
        *a5++ = vpaddlq_u16(v24).u32[0];
        v24.i32[0] = vaddlvq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabaq_u16(vabaq_u16(v23, vmovl_u8(v12), v22), vmovl_u8(v14), v22), vmovl_u8(v16), v26), vmovl_u8(v17), v26), v25, v26), vmovl_u8(v19), v26));
        *a6++ = v24.i32[0];
        v7 = (v24.i32[0] + v7);
      }
    }

    a1 += 8 * a2;
    v6 += 8;
  }

  while (v6 < a4);
  return v7;
}

uint64_t sub_277505630(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 4 * a2;
  v8 = a7 + 3 * a6;
  v9 = a7 + 2 * a6;
  v10 = 4 * a4;
  v11 = 4 * a6;
  v12 = a7 + a6;
  v13 = a5 + 3 * a4;
  v14 = a5 + a4;
  v15 = a3 + 3 * a2;
  v16 = a3 + a2;
  v17 = a5 + 2 * a4;
  v18 = a3 + 2 * a2;
  do
  {
    v19 = -8;
    do
    {
      *(a7 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(a3 + v19 + 8), 1uLL), *(a5 + v19 + 8)));
      *(v12 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v16 + v19 + 8), 1uLL), *(v14 + v19 + 8)));
      *(v9 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v18 + v19 + 8), 1uLL), *(v17 + v19 + 8)));
      *(v8 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v15 + v19 + 8), 1uLL), *(v13 + v19 + 8)));
      v19 += 8;
    }

    while (v19 < 0x38);
    a3 += v7;
    a5 += v10;
    a7 += v11;
    v8 += v11;
    v9 += v11;
    v12 += v11;
    v13 += v10;
    v17 += v10;
    v14 += v10;
    v15 += v7;
    v18 += v7;
    v16 += v7;
    v20 = __OFSUB__(result, 4);
    result = (result - 4);
  }

  while (!((result < 0) ^ v20 | (result == 0)));
  return result;
}

uint64_t sub_277505750(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 4 * a2;
  v8 = a7 + 3 * a6;
  v9 = a7 + 2 * a6;
  v10 = 4 * a4;
  v11 = 4 * a6;
  v12 = a7 + a6;
  v13 = a5 + 3 * a4;
  v14 = a5 + a4;
  v15 = a3 + 3 * a2;
  v16 = a3 + a2;
  v17 = a5 + 2 * a4;
  v18 = a3 + 2 * a2;
  do
  {
    v19 = -8;
    do
    {
      *(a7 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(a3 + v19 + 8), 1uLL), *(a5 + v19 + 8)));
      *(v12 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v16 + v19 + 8), 1uLL), *(v14 + v19 + 8)));
      *(v9 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v18 + v19 + 8), 1uLL), *(v17 + v19 + 8)));
      *(v8 + v19 + 8) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v15 + v19 + 8), 1uLL), *(v13 + v19 + 8)));
      v19 += 8;
    }

    while (v19 < 0x18);
    a3 += v7;
    a5 += v10;
    a7 += v11;
    v8 += v11;
    v9 += v11;
    v12 += v11;
    v13 += v10;
    v17 += v10;
    v14 += v10;
    v15 += v7;
    v18 += v7;
    v16 += v7;
    v20 = __OFSUB__(result, 4);
    result = (result - 4);
  }

  while (!((result < 0) ^ v20 | (result == 0)));
  return result;
}

uint64_t sub_277505870(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  do
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = a3 + v7;
      v10 = a5 + v7;
      v11 = *(a3 + v7);
      v12 = *(a5 + v7);
      v13 = (a7 + v7);
      *v13 = vqmovun_s16(vsubw_u8(vshll_n_u8(v11, 1uLL), v12));
      *(v13 + a6) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v9 + a2), 1uLL), *(v10 + a4)));
      *(v13 + 2 * a6) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(v9 + 2 * a2), 1uLL), *(v10 + 2 * a4)));
      v14 = vshll_n_u8(*(v9 + 3 * a2), 1uLL);
      LOBYTE(v9) = v8;
      *(v13 + 3 * a6) = vqmovun_s16(vsubw_u8(v14, *(v10 + 3 * a4)));
      v7 = 8;
      v8 = 0;
    }

    while ((v9 & 1) != 0);
    a3 += 4 * a2;
    a5 += 4 * a4;
    a7 += 4 * a6;
    v15 = __OFSUB__(result, 4);
    result = (result - 4);
  }

  while (!((result < 0) ^ v15 | (result == 0)));
  return result;
}

int8x8_t sub_277505938(int a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, int8x8_t *a7)
{
  v7 = a1 + 4;
  do
  {
    *a7 = vqmovun_s16(vsubw_u8(vshll_n_u8(*a3, 1uLL), *a5));
    *(a7 + a6) = vqmovun_s16(vsubw_u8(vshll_n_u8(*(a3 + a2), 1uLL), *(a5 + a4)));
    v8 = (a3 + a2 + a2);
    v9 = (a5 + a4 + a4);
    v10 = (a7 + a6 + a6);
    *v10 = vqmovun_s16(vsubw_u8(vshll_n_u8(*v8, 1uLL), *v9));
    v11 = (v8 + a2);
    v12 = (v9 + a4);
    v13 = (v10 + a6);
    v7 -= 4;
    result = vqmovun_s16(vsubw_u8(vshll_n_u8(*v11, 1uLL), *v12));
    *v13 = result;
    a3 = (v11 + a2);
    a5 = (v12 + a4);
    a7 = (v13 + a6);
  }

  while (v7 > 4);
  return result;
}

uint8x16_t sub_2775059DC(int a1, uint64_t a2, uint8x16_t *a3, uint64_t a4, uint8x16_t *a5, uint64_t a6, uint8x16_t *a7)
{
  v7 = a1 + 1;
  v8 = a3 + 2;
  v9 = a5 + 2;
  v10 = a7 + 2;
  do
  {
    v10[-2] = vrhaddq_u8(v8[-2], v9[-2]);
    v10[-1] = vrhaddq_u8(v8[-1], v9[-1]);
    *v10 = vrhaddq_u8(*v8, *v9);
    --v7;
    result = vrhaddq_u8(v8[1], v9[1]);
    v10[1] = result;
    v8 = (v8 + a2);
    v9 = (v9 + a4);
    v10 = (v10 + a6);
  }

  while (v7 > 1);
  return result;
}

uint8x16_t sub_277505A48(int a1, uint64_t a2, uint8x16_t *a3, uint64_t a4, uint8x16_t *a5, uint64_t a6, uint8x16_t *a7)
{
  v7 = a1 + 2;
  do
  {
    *a7 = vrhaddq_u8(*a3, *a5);
    a7[1] = vrhaddq_u8(a3[1], a5[1]);
    v8 = (a7 + a6);
    *v8 = vrhaddq_u8(*(a3 + a2), *(a5 + a4));
    v7 -= 2;
    result = vrhaddq_u8(*(&a3[1] + a2), *(&a5[1] + a4));
    v8[1] = result;
    a3 = (a3 + a2 + a2);
    a5 = (a5 + a4 + a4);
    a7 = (a7 + a6 + a6);
  }

  while (v7 > 2);
  return result;
}

uint8x16_t sub_277505AB4(int a1, uint64_t a2, uint8x16_t *a3, uint64_t a4, uint8x16_t *a5, uint64_t a6, uint8x16_t *a7)
{
  v7 = a1 + 4;
  do
  {
    *a7 = vrhaddq_u8(*a3, *a5);
    *(a7 + a6) = vrhaddq_u8(*(a3 + a2), *(a5 + a4));
    v8 = (a3 + a2 + a2);
    v9 = (a5 + a4 + a4);
    v10 = (a7 + a6 + a6);
    *v10 = vrhaddq_u8(*v8, *v9);
    v11 = (v8 + a2);
    v12 = (v9 + a4);
    v13 = (v10 + a6);
    v7 -= 4;
    result = vrhaddq_u8(*v11, *v12);
    *v13 = result;
    a3 = (v11 + a2);
    a5 = (v12 + a4);
    a7 = (v13 + a6);
  }

  while (v7 > 4);
  return result;
}

uint8x8_t sub_277505B38(int a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint8x8_t *a5, uint64_t a6, uint8x8_t *a7)
{
  v7 = a1 + 4;
  do
  {
    *a7 = vrhadd_u8(*a3, *a5);
    *(a7 + a6) = vrhadd_u8(*(a3 + a2), *(a5 + a4));
    v8 = (a3 + a2 + a2);
    v9 = (a5 + a4 + a4);
    v10 = (a7 + a6 + a6);
    *v10 = vrhadd_u8(*v8, *v9);
    v11 = (v8 + a2);
    v12 = (v9 + a4);
    v13 = (v10 + a6);
    v7 -= 4;
    result = vrhadd_u8(*v11, *v12);
    *v13 = result;
    a3 = (v11 + a2);
    a5 = (v12 + a4);
    a7 = (v13 + a6);
  }

  while (v7 > 4);
  return result;
}

uint8x16_t sub_277505BBC(int a1, uint64_t a2, __int32 *a3, uint64_t a4, __int32 *a5, uint64_t a6, _DWORD *a7)
{
  v7 = a1 + 4;
  do
  {
    v8.i32[0] = *a3;
    v9 = (a3 + a2);
    v8.i32[1] = *v9;
    v10 = (v9 + a2);
    v8.i32[2] = *v10;
    v11 = (v10 + a2);
    v8.i32[3] = *v11;
    a3 = (v11 + a2);
    v12.i32[0] = *a5;
    v13 = (a5 + a4);
    v12.i32[1] = *v13;
    v14 = (v13 + a4);
    v12.i32[2] = *v14;
    v15 = (v14 + a4);
    v12.i32[3] = *v15;
    a5 = (v15 + a4);
    result = vrhaddq_u8(v8, v12);
    *a7 = result.i32[0];
    *(a7 + a6) = result.i32[1];
    v17 = (a7 + a6 + a6);
    *v17 = result.i32[2];
    v18 = (v17 + a6);
    v7 -= 4;
    *v18 = result.i32[3];
    a7 = (v18 + a6);
  }

  while (v7 > 4);
  return result;
}

uint64_t sub_277505C1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 8 * a2;
  v8 = 8 * a4;
  v9 = 8 * a6;
  v10 = a7 + 4 * a6;
  v11 = a7 + 6 * a6;
  v12 = a5 + 6 * a4;
  v13 = a7 + 2 * a6;
  v14 = a5 + 4 * a4;
  v15 = a5 + 2 * a4;
  v16 = a3 + 6 * a2;
  v17 = a3 + 4 * a2;
  v18.i64[0] = 0xFC00FC00FC00FC00;
  v18.i64[1] = 0xFC00FC00FC00FC00;
  v19 = a3 + 2 * a2;
  do
  {
    v20 = 0;
    v21 = -8;
    do
    {
      *(a7 + v20) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(a3 + v20), *(a3 + v20)), *(a5 + v20)), 0), v18);
      *(v13 + v20) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(v19 + v20), *(v19 + v20)), *(v15 + v20)), 0), v18);
      v22 = vmaxq_s16(vsubq_s16(vaddq_s16(*(v16 + v20), *(v16 + v20)), *(v12 + v20)), 0);
      *(v10 + v20) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(v17 + v20), *(v17 + v20)), *(v14 + v20)), 0), v18);
      *(v11 + v20) = vminq_s16(v22, v18);
      v21 += 8;
      v20 += 16;
    }

    while (v21 < 0x38);
    a3 += v7;
    a5 += v8;
    a7 += v9;
    v11 += v9;
    v10 += v9;
    v13 += v9;
    v12 += v8;
    v14 += v8;
    v15 += v8;
    v16 += v7;
    v17 += v7;
    v19 += v7;
    v23 = __OFSUB__(result, 4);
    result = (result - 4);
  }

  while (!((result < 0) ^ v23 | (result == 0)));
  return result;
}

uint64_t sub_277505D1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 8 * a2;
  v8 = 8 * a4;
  v9 = 8 * a6;
  v10 = a7 + 4 * a6;
  v11 = a7 + 6 * a6;
  v12 = a5 + 6 * a4;
  v13 = a7 + 2 * a6;
  v14 = a5 + 4 * a4;
  v15 = a5 + 2 * a4;
  v16 = a3 + 6 * a2;
  v17 = a3 + 4 * a2;
  v18.i64[0] = 0xFC00FC00FC00FC00;
  v18.i64[1] = 0xFC00FC00FC00FC00;
  v19 = a3 + 2 * a2;
  do
  {
    v20 = 0;
    v21 = -8;
    do
    {
      *(a7 + v20) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(a3 + v20), *(a3 + v20)), *(a5 + v20)), 0), v18);
      *(v13 + v20) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(v19 + v20), *(v19 + v20)), *(v15 + v20)), 0), v18);
      v22 = vmaxq_s16(vsubq_s16(vaddq_s16(*(v16 + v20), *(v16 + v20)), *(v12 + v20)), 0);
      *(v10 + v20) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(v17 + v20), *(v17 + v20)), *(v14 + v20)), 0), v18);
      *(v11 + v20) = vminq_s16(v22, v18);
      v21 += 8;
      v20 += 16;
    }

    while (v21 < 0x18);
    a3 += v7;
    a5 += v8;
    a7 += v9;
    v11 += v9;
    v10 += v9;
    v13 += v9;
    v12 += v8;
    v14 += v8;
    v15 += v8;
    v16 += v7;
    v17 += v7;
    v19 += v7;
    v23 = __OFSUB__(result, 4);
    result = (result - 4);
  }

  while (!((result < 0) ^ v23 | (result == 0)));
  return result;
}

uint64_t sub_277505E1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 8 * a2;
  v8 = 4 * a2;
  v9 = 4 * a4;
  v10 = 6 * a2;
  v11 = 6 * a4;
  v12 = 4 * a6;
  v13 = 6 * a6;
  v14 = 8 * a4;
  v15 = 8 * a6;
  v16.i64[0] = 0xFC00FC00FC00FC00;
  v16.i64[1] = 0xFC00FC00FC00FC00;
  v17 = 2 * a2;
  v18 = 2 * a4;
  v19 = 2 * a6;
  do
  {
    v20 = 0;
    v21 = 1;
    do
    {
      v22 = (a3 + 2 * v20);
      v23 = (a5 + 2 * v20);
      v24 = (a7 + 2 * v20);
      *v24 = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*v22, *v22), *v23), 0), v16);
      *(v24 + v19) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(v22 + v17), *(v22 + v17)), *(v23 + v18)), 0), v16);
      v25 = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(v22 + v8), *(v22 + v8)), *(v23 + v9)), 0), v16);
      v26 = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(v22 + v10), *(v22 + v10)), *(v23 + v11)), 0), v16);
      LOBYTE(v22) = v21;
      *(v24 + v12) = v25;
      *(v24 + v13) = v26;
      v20 = 8;
      v21 = 0;
    }

    while ((v22 & 1) != 0);
    a3 += v7;
    a5 += v14;
    a7 += v15;
    v27 = __OFSUB__(result, 4);
    result = (result - 4);
  }

  while (!((result < 0) ^ v27 | (result == 0)));
  return result;
}

uint64_t sub_277505F14(uint64_t result, uint64_t a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6, int16x8_t *a7)
{
  v7 = 2 * a2;
  v8.i64[0] = 0xFC00FC00FC00FC00;
  v8.i64[1] = 0xFC00FC00FC00FC00;
  v9 = result + 4;
  v10 = 2 * a4;
  v11 = 2 * a6;
  do
  {
    *a7 = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*a3, *a3), *a5), 0), v8);
    *(a7 + 2 * a6) = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*(a3 + 2 * a2), *(a3 + 2 * a2)), *(a5 + 2 * a4)), 0), v8);
    v12 = (a3 + v7 + v7);
    v13 = (a5 + v10 + v10);
    v14 = vminq_s16(vmaxq_s16(vsubq_s16(vaddq_s16(*v12, *v12), *v13), 0), v8);
    v15 = (v12 + v7);
    v16 = (v13 + v10);
    v17 = vmaxq_s16(vsubq_s16(vaddq_s16(*v15, *v15), *v16), 0);
    v18 = (a7 + v11 + v11);
    *v18 = v14;
    v19 = (v18 + v11);
    v9 -= 4;
    *v19 = vminq_s16(v17, v8);
    a3 = (v15 + v7);
    a5 = (v16 + v10);
    a7 = (v19 + v11);
  }

  while (v9 > 4);
  return result;
}

uint16x8_t sub_277505FDC(int a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x8_t *a7)
{
  v7 = a1 + 1;
  v8 = a3 + 4;
  v9 = a5 + 4;
  v10 = a7 + 4;
  do
  {
    v10[-4] = vrhaddq_u16(v8[-4], v9[-4]);
    v10[-3] = vrhaddq_u16(v8[-3], v9[-3]);
    v10[-2] = vrhaddq_u16(v8[-2], v9[-2]);
    v10[-1] = vrhaddq_u16(v8[-1], v9[-1]);
    *v10 = vrhaddq_u16(*v8, *v9);
    v10[1] = vrhaddq_u16(v8[1], v9[1]);
    v10[2] = vrhaddq_u16(v8[2], v9[2]);
    --v7;
    result = vrhaddq_u16(v8[3], v9[3]);
    v10[3] = result;
    v8 = (v8 + 2 * a2);
    v9 = (v9 + 2 * a4);
    v10 = (v10 + 2 * a6);
  }

  while (v7 > 1);
  return result;
}

uint16x8_t sub_277506094(int a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x8_t *a7)
{
  v7 = a1 + 1;
  v8 = a3 + 2;
  v9 = a5 + 2;
  v10 = a7 + 2;
  do
  {
    v10[-2] = vrhaddq_u16(v8[-2], v9[-2]);
    v10[-1] = vrhaddq_u16(v8[-1], v9[-1]);
    *v10 = vrhaddq_u16(*v8, *v9);
    --v7;
    result = vrhaddq_u16(v8[1], v9[1]);
    v10[1] = result;
    v8 = (v8 + 2 * a2);
    v9 = (v9 + 2 * a4);
    v10 = (v10 + 2 * a6);
  }

  while (v7 > 1);
  return result;
}

uint16x8_t sub_27750610C(int a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x8_t *a7)
{
  v7 = 2 * a2;
  v8 = a1 + 2;
  v9 = 2 * a4;
  v10 = 2 * a6;
  do
  {
    *a7 = vrhaddq_u16(*a3, *a5);
    a7[1] = vrhaddq_u16(a3[1], a5[1]);
    v11 = (a7 + v10);
    *v11 = vrhaddq_u16(*(a3 + 2 * a2), *(a5 + 2 * a4));
    v8 -= 2;
    result = vrhaddq_u16(*(&a3[1] + v7), *(&a5[1] + v9));
    v11[1] = result;
    a3 = (a3 + v7 + v7);
    a5 = (a5 + v9 + v9);
    a7 = (a7 + v10 + v10);
  }

  while (v8 > 2);
  return result;
}

uint16x8_t sub_277506184(int a1, uint64_t a2, uint16x8_t *a3, uint64_t a4, uint16x8_t *a5, uint64_t a6, uint16x8_t *a7)
{
  v7 = 2 * a2;
  v8 = a1 + 4;
  v9 = 2 * a4;
  v10 = 2 * a6;
  do
  {
    *a7 = vrhaddq_u16(*a3, *a5);
    *(a7 + 2 * a6) = vrhaddq_u16(*(a3 + 2 * a2), *(a5 + 2 * a4));
    v11 = (a3 + v7 + v7);
    v12 = (a5 + v9 + v9);
    v13 = (a7 + v10 + v10);
    *v13 = vrhaddq_u16(*v11, *v12);
    v14 = (v11 + v7);
    v15 = (v12 + v9);
    v16 = (v13 + v10);
    v8 -= 4;
    result = vrhaddq_u16(*v14, *v15);
    *v16 = result;
    a3 = (v14 + v7);
    a5 = (v15 + v9);
    a7 = (v16 + v10);
  }

  while (v8 > 4);
  return result;
}

uint16x4_t sub_277506214(int a1, uint64_t a2, uint16x4_t *a3, uint64_t a4, uint16x4_t *a5, uint64_t a6, uint16x4_t *a7)
{
  v7 = 2 * a2;
  v8 = a1 + 4;
  v9 = 2 * a4;
  v10 = 2 * a6;
  do
  {
    *a7 = vrhadd_u16(*a3, *a5);
    *(a7 + 2 * a6) = vrhadd_u16(*(a3 + 2 * a2), *(a5 + 2 * a4));
    v11 = (a3 + v7 + v7);
    v12 = (a5 + v9 + v9);
    v13 = (a7 + v10 + v10);
    *v13 = vrhadd_u16(*v11, *v12);
    v14 = (v11 + v7);
    v15 = (v12 + v9);
    v16 = (v13 + v10);
    v8 -= 4;
    result = vrhadd_u16(*v14, *v15);
    *v16 = result;
    a3 = (v14 + v7);
    a5 = (v15 + v9);
    a7 = (v16 + v10);
  }

  while (v8 > 4);
  return result;
}

unint64_t sub_2775062A4(int a1, unsigned int a2, int8x16_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  v8 = vqtbl1q_s8(*a3, xmmword_27750D790);
  v9 = vdupq_n_s32(a2);
  v10 = vdupq_n_s32(-a1);
  v11 = 8 * a5;
  v12 = 8 * a7;
  v13 = a6 + 6 * a7;
  v14 = a6 + 4 * a7;
  v15 = a6 + 2 * a7;
  v16 = a4 + 6 * a5;
  v17 = a4 + 4 * a5;
  v18 = a4 + 2 * a5;
  do
  {
    v19 = 0;
    result = -4;
    do
    {
      v21 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_s16(*(a4 + 8 * v19), *v8.i8), v9), v10)), vrshlq_s32(vmulq_s32(vmull_s16(*(v18 + 8 * v19), *&vextq_s8(v8, v8, 8uLL)), v9), v10));
      *(a6 + 8 * v19) = v21.i64[0];
      *(v15 + 8 * v19) = v21.i64[1];
      v22 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_lane_s16(*(v17 + 8 * v19), *v8.i8, 1), v9), v10)), vrshlq_s32(vmulq_s32(vmull_lane_s16(*(v16 + 8 * v19), *v8.i8, 1), v9), v10));
      *(v14 + 8 * v19) = v22.i64[0];
      *(v13 + 8 * v19) = v22.i64[1];
      v23 = &a3->i8[v19 + 2];
      v24 = vld1_dup_s8(v23);
      v8 = vmovl_u8(v24);
      result += 4;
      ++v19;
    }

    while (result < 0x1C);
    a3 = (a3 + v19);
    a4 += v11;
    a6 += v12;
    v13 += v12;
    v14 += v12;
    v15 += v12;
    v16 += v11;
    v17 += v11;
    v18 += v11;
    v25 = v7 >= 0x1C;
    v7 += 4;
  }

  while (!v25);
  return result;
}

uint64_t sub_2775063B4(uint64_t result, unsigned int a2, uint64_t a3, int16x4_t *a4, uint64_t a5, int16x8_t *a6, uint64_t a7)
{
  v7 = 0;
  v8 = *(a3 + 1);
  v9 = vqtbl1q_s8(v8, xmmword_27750D7A0);
  v9.i8[0] = *a3;
  v10 = vdupq_n_s32(a2);
  v11 = vdupq_n_s32(-result);
  v12 = a4 + 2;
  v13 = a6 + 1;
  do
  {
    v13[-1] = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_s16(v12[-2], *v9.i8), v10), v11)), vrshlq_s32(vmulq_s32(vmull_high_s16(*v12[-2].i8, v9), v10), v11));
    v14 = vqtbl1q_s8(v8, xmmword_27750D7B0);
    *v13 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_s16(*v12, *v14.i8), v10), v11)), vrshlq_s32(vmulq_s32(vmull_high_s16(*v12->i8, v14), v10), v11));
    a3 += v7 & 8;
    v8 = *(a3 + 1);
    v9 = vqtbl1q_s8(v8, xmmword_27750D7A0);
    v12 = (v12 + 2 * a5);
    v13 = (v13 + 2 * a7);
    v7 += 8;
  }

  while (v7 != 128);
  return result;
}

uint64_t sub_27750646C(uint64_t result, unsigned int a2, uint64_t a3, int16x4_t *a4, uint64_t a5, int16x8_t *a6, uint64_t a7)
{
  v7 = vdupq_n_s32(a2);
  v8 = vdupq_n_s32(-result);
  v9 = (a3 + 9);
  v10 = -2;
  do
  {
    v11 = vmovl_u8(v9[-1]);
    *a6 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_s16(*a4, *v11.i8), v7), v8)), vrshlq_s32(vmulq_s32(vmull_high_s16(*a4->i8, v11), v7), v8));
    v12 = *v9;
    v9 += 2;
    v13 = vmovl_u8(v12);
    *(a6 + 2 * a7) = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_s16(*(a4 + 2 * a5), *v13.i8), v7), v8)), vrshlq_s32(vmulq_s32(vmull_high_s16(*&a4->i8[2 * a5], v13), v7), v8));
    a4 = (a4 + 4 * a5);
    a6 = (a6 + 4 * a7);
    v10 += 2;
  }

  while (v10 < 6);
  return result;
}

int16x8_t sub_277506508(int a1, unsigned int a2, uint64_t a3, int16x4_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = vmovl_u8(*(a3 + 1));
  v8 = vmovl_u8(*(a3 + 9));
  v9 = vdupq_n_s32(a2);
  v10 = vdupq_n_s32(-a1);
  v11 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_s16(*a4, *v7.i8), v9), v10)), vrshlq_s32(vmulq_s32(vmull_s16(*(a4 + 2 * a5), *&vextq_s8(v7, v7, 8uLL)), v9), v10));
  *a6 = v11.i64[0];
  *(a6 + 2 * a7) = v11.i64[1];
  result = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmulq_s32(vmull_s16(*(a4 + 4 * a5), *v8.i8), v9), v10)), vrshlq_s32(vmulq_s32(vmull_s16(*(a4 + 4 * a5 + 2 * a5), *&vextq_s8(v8, v8, 8uLL)), v9), v10));
  *(a6 + 4 * a7) = result.i64[0];
  *(a6 + 6 * a7) = result.i64[1];
  return result;
}

BOOL sub_2775065A8(unsigned int a1, unsigned int a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int32x4_t *a8, uint64_t a9)
{
  v9 = 0;
  v10 = vdupq_lane_s32(*a3, 1);
  v11 = vdupq_n_s32(a1);
  v12 = vdupq_n_s32(-a2);
  v13 = vdupq_n_s32(a2);
  v14 = 8 * a7;
  v15 = 8 * a5;
  v16 = vdupq_n_s32(8 - a2);
  v17 = vqtbl1q_s8(*a3->i8, xmmword_27750D7C0);
  v18 = a6 + 4 * a7;
  v19 = a6 + 6 * a7;
  v20 = a6 + 2 * a7;
  v21 = a4 + 6 * a5;
  v22 = 0uLL;
  v23 = a4 + 4 * a5;
  v24 = a4 + 2 * a5;
  do
  {
    v25 = 0;
    v26 = 0;
    v27 = a8;
    do
    {
      v28 = vmovl_s16(*(a4 + v25));
      v29 = vmovl_s16(*(v24 + v25));
      v30 = vmulq_s32(vabsq_s32(v28), v17);
      v31 = vmulq_s32(vabsq_s32(v29), v10);
      v32 = vshlq_s32(vaddq_s32(v30, v11), v12);
      v33 = vshlq_s32(vaddq_s32(v31, v11), v12);
      v34 = vcltzq_s32(v28);
      v35 = vcltzq_s32(v29);
      v36 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(veorq_s8(v32, v34), v34)), vsubq_s32(veorq_s8(v33, v35), v35));
      *v27 = vshlq_s32(vsubq_s32(v30, vshlq_s32(v32, v13)), v16);
      *(v27 + 4 * a9) = vshlq_s32(vsubq_s32(v31, vshlq_s32(v33, v13)), v16);
      *(a6 + v25) = v36.i64[0];
      *(v20 + v25) = v36.i64[1];
      v37 = vmovl_s16(*(v23 + v25));
      v38 = vmovl_s16(*(v21 + v25));
      v39 = vmulq_s32(vabsq_s32(v37), v10);
      v40 = vmulq_s32(vabsq_s32(v38), v10);
      v41 = vshlq_s32(vaddq_s32(v39, v11), v12);
      v42 = vshlq_s32(vaddq_s32(v40, v11), v12);
      v43 = vcltzq_s32(v37);
      v44 = vcltzq_s32(v38);
      *(v27 + 8 * a9) = vshlq_s32(vsubq_s32(v39, vshlq_s32(v41, v13)), v16);
      *(v27 + 12 * a9) = vshlq_s32(vsubq_s32(v40, vshlq_s32(v42, v13)), v16);
      v45 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(veorq_s8(v41, v43), v43)), vsubq_s32(veorq_s8(v42, v44), v44));
      *(v18 + v25) = v45.i64[0];
      *(v19 + v25) = v45.i64[1];
      v46 = (&a3[1] + v26);
      v17 = vld1q_dup_f32(v46);
      v47 = v26 + 4;
      v25 += 8;
      v22 = vorrq_s8(vorrq_s8(v36, v22), v45);
      ++v27;
      v10 = v17;
      v48 = v26 >= 0x1C;
      v26 += 4;
    }

    while (!v48);
    a3 = (a3 + v47);
    a6 += v14;
    a4 += v15;
    a8 += a9;
    v19 += v14;
    v18 += v14;
    v20 += v14;
    v21 += v15;
    v23 += v15;
    v24 += v15;
    v10 = v17;
    v48 = v9 >= 0x1C;
    v9 += 4;
  }

  while (!v48);
  v11.i16[0] = vmaxvq_u16(v22);
  return v11.i32[0] != 0;
}

BOOL sub_2775067B0(unsigned int a1, unsigned int a2, int8x16_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v10 = vdupq_n_s32(a1);
  v11 = vdupq_n_s32(-a2);
  v12 = vdupq_n_s32(a2);
  v13 = vdupq_n_s32(8 - a2);
  v14 = 4 * a7;
  v15 = 4 * a5;
  v16 = 8 * a9;
  v17 = a6 + 2 * a7;
  v18 = vqtbl1q_s8(*a3, xmmword_27750D7D0);
  v19 = vqtbl1q_s8(*a3, xmmword_27750D7E0);
  v20 = a8 + 4 * a9;
  v21 = a4 + 2 * a5;
  v22 = 0uLL;
  do
  {
    v23 = 0;
    v24 = 0;
    v25 = -4;
    do
    {
      v26 = vmovl_s16(*(a4 + v24));
      v27 = vmovl_s16(*(v21 + v24));
      v28 = vmulq_s32(vabsq_s32(v26), v18);
      v29 = vmulq_s32(vabsq_s32(v27), v19);
      v30 = vshlq_s32(vaddq_s32(v28, v10), v11);
      v31 = vshlq_s32(vaddq_s32(v29, v10), v11);
      v32 = vcltzq_s32(v26);
      v33 = vcltzq_s32(v27);
      v34 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(veorq_s8(v30, v32), v32)), vsubq_s32(veorq_s8(v31, v33), v33));
      *(a8 + v23) = vshlq_s32(vsubq_s32(v28, vshlq_s32(v30, v12)), v13);
      v35 = vshlq_s32(vsubq_s32(v29, vshlq_s32(v31, v12)), v13);
      *(v20 + v23) = v35;
      *(a6 + v24) = v34.i64[0];
      *(v17 + v24) = v34.i64[1];
      v22 = vorrq_s8(v34, v22);
      v35.i64[0] = *(&a3->i64[v24 / 8 + 1] + 4);
      v25 += 4;
      v19 = vzip1q_s32(v35, v35);
      v24 += 8;
      v23 += 16;
      v18 = v19;
    }

    while (v25 < 0xC);
    a3 = (a3 + v24);
    a6 += v14;
    a4 += v15;
    a8 += v16;
    v17 += v14;
    v20 += v16;
    v21 += v15;
    v18 = v19;
    v36 = v9 >= 0xE;
    v9 += 2;
  }

  while (!v36);
  v10.i16[0] = vmaxvq_u16(v22);
  return v10.i32[0] != 0;
}

BOOL sub_277506904(unsigned int a1, unsigned int a2, uint64_t a3, int16x4_t *a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int32x4_t *a8, uint64_t a9)
{
  v9 = vdupq_n_s32(a1);
  v10 = vdupq_n_s32(-a2);
  v11 = vdupq_n_s32(a2);
  v12 = 8;
  v13 = vdupq_n_s32(8 - a2);
  v14 = (a3 + 20);
  v15 = a4 + 1;
  v16 = a8 + 1;
  v17 = 0uLL;
  do
  {
    v18 = vmovl_s16(v15[-1]);
    v19 = vmovl_s16(*v15);
    v20 = vmulq_s32(vabsq_s32(v18), v14[-1]);
    v21 = vmulq_s32(vabsq_s32(v19), *v14);
    v22 = vshlq_s32(vaddq_s32(v20, v9), v10);
    v23 = vshlq_s32(vaddq_s32(v21, v9), v10);
    v24 = vcltzq_s32(v18);
    v25 = vcltzq_s32(v19);
    v26 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(veorq_s8(v22, v24), v24)), vsubq_s32(veorq_s8(v23, v25), v25));
    v16[-1] = vshlq_s32(vsubq_s32(v20, vshlq_s32(v22, v11)), v13);
    *v16 = vshlq_s32(vsubq_s32(v21, vshlq_s32(v23, v11)), v13);
    *a6 = v26;
    v14 += 2;
    v17 = vorrq_s8(v26, v17);
    v15 = (v15 + 2 * a5);
    a6 = (a6 + 2 * a7);
    v16 = (v16 + 4 * a9);
    --v12;
  }

  while (v12);
  v9.i16[0] = vmaxvq_u16(v17);
  return v9.i32[0] != 0;
}

BOOL sub_2775069E0(unsigned int a1, unsigned int a2, uint64_t a3, int16x4_t *a4, uint64_t a5, void *a6, uint64_t a7, int32x4_t *a8, uint64_t a9)
{
  v9 = vdupq_n_s32(a1);
  v10 = vdupq_n_s32(-a2);
  v11 = vdupq_n_s32(a2);
  v12 = vdupq_n_s32(8 - a2);
  v13 = (a3 + 20);
  v14 = 1;
  v15 = 0uLL;
  do
  {
    v16 = v14;
    v17 = vmovl_s16(*a4);
    v18 = vmovl_s16(*(a4 + 2 * a5));
    v19 = vmulq_s32(vabsq_s32(v17), v13[-1]);
    v20 = vmulq_s32(vabsq_s32(v18), *v13);
    v21 = vshlq_s32(vaddq_s32(v19, v9), v10);
    v22 = vshlq_s32(vaddq_s32(v20, v9), v10);
    v23 = vcltzq_s32(v17);
    v24 = vcltzq_s32(v18);
    v25 = vqmovn_high_s32(vqmovn_s32(vsubq_s32(veorq_s8(v21, v23), v23)), vsubq_s32(veorq_s8(v22, v24), v24));
    *a8 = vshlq_s32(vsubq_s32(v19, vshlq_s32(v21, v11)), v12);
    *(a8 + 4 * a9) = vshlq_s32(vsubq_s32(v20, vshlq_s32(v22, v11)), v12);
    *a6 = v25.i64[0];
    *(a6 + 2 * a7) = v25.i64[1];
    a4 = (a4 + 4 * a5);
    v15 = vorrq_s8(v25, v15);
    a6 = (a6 + 4 * a7);
    a8 = (a8 + 8 * a9);
    v13 += 2;
    v14 = 0;
  }

  while ((v16 & 1) != 0);
  v9.i16[0] = vmaxvq_u16(v15);
  return v9.i32[0] != 0;
}

uint64_t sub_277506AD8(uint64_t result, __int32 a2, int16x4_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6, double a7, int16x4_t a8)
{
  v8 = 0;
  v9 = vdupq_n_s32(-result);
  a8.i32[0] = a2;
  do
  {
    v10 = -2;
    v11 = a5;
    v12 = a3;
    do
    {
      v13 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*(v12 + 2 * a4), a8, 0), v9)), vrshlq_s32(vmull_high_lane_s16(*&v12->i8[2 * a4], a8, 0), v9));
      *v11 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*v12, a8, 0), v9)), vrshlq_s32(vmull_high_lane_s16(*v12->i8, a8, 0), v9));
      *(v11 + 2 * a6) = v13;
      v12 = (v12 + 4 * a4);
      v11 = (v11 + 4 * a6);
      v10 += 2;
    }

    while (v10 < 0x1E);
    a3 += 2;
    ++a5;
    v14 = v8 >= 0x18;
    v8 += 8;
  }

  while (!v14);
  return result;
}

uint64_t sub_277506B74(uint64_t result, __int32 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, int16x4_t a8)
{
  v8 = 0;
  v9 = vdupq_n_s32(-result);
  a8.i32[0] = a2;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = (a3 + 2 * v8);
    v13 = -2;
    v14 = (a5 + 2 * v8);
    do
    {
      v15 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*(v12 + 2 * a4), a8, 0), v9)), vrshlq_s32(vmull_high_lane_s16(*&v12->i8[2 * a4], a8, 0), v9));
      *v14 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*v12, a8, 0), v9)), vrshlq_s32(vmull_high_lane_s16(*v12->i8, a8, 0), v9));
      *(v14 + 2 * a6) = v15;
      v12 = (v12 + 4 * a4);
      v14 = (v14 + 4 * a6);
      v13 += 2;
    }

    while (v13 < 0xE);
    v10 = 0;
    v8 = 8;
  }

  while ((v11 & 1) != 0);
  return result;
}

uint64_t sub_277506C0C(uint64_t result, __int32 a2, int16x4_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6, double a7, int16x4_t a8)
{
  v8 = vdupq_n_s32(-result);
  a8.i32[0] = a2;
  v9 = -2;
  do
  {
    v10 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*(a3 + 2 * a4), a8, 0), v8)), vrshlq_s32(vmull_high_lane_s16(*&a3->i8[2 * a4], a8, 0), v8));
    *a5 = vqmovn_high_s32(vqmovn_s32(vrshlq_s32(vmull_lane_s16(*a3, a8, 0), v8)), vrshlq_s32(vmull_high_lane_s16(*a3->i8, a8, 0), v8));
    *(a5 + 2 * a6) = v10;
    a3 = (a3 + 4 * a4);
    a5 = (a5 + 4 * a6);
    v9 += 2;
  }

  while (v9 < 6);
  return result;
}

uint64_t sub_277506C84(uint64_t result, __int32 a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5, uint64_t a6, double a7, int16x4_t a8)
{
  v8 = vdupq_n_s32(-result);
  a8.i32[0] = a2;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = vqmovn_s32(vrshlq_s32(vmull_lane_s16(*(a3 + 2 * a4), a8, 0), v8));
    *a5 = vqmovn_s32(vrshlq_s32(vmull_lane_s16(*a3, a8, 0), v8));
    *(a5 + 2 * a6) = v11;
    a3 = (a3 + 4 * a4);
    a5 = (a5 + 4 * a6);
    v9 = 0;
  }

  while ((v10 & 1) != 0);
  return result;
}

uint64_t sub_277506CE4(unsigned int a1, unsigned int a2, __int32 a3, int16x8_t *a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int32x4_t *a8, double a9, double a10, double a11, double a12, uint16x4_t a13, uint64_t a14)
{
  v21 = 0;
  v22 = -8;
  do
  {
    v21 |= sub_277506D9C(32, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a8, a14);
    v22 += 8;
    a8 += 2;
    ++a6;
    ++a4;
  }

  while (v22 < 0x18);
  return v21 & 1;
}

BOOL sub_277506D9C(int a1, unsigned int a2, unsigned int a3, __int32 a4, int16x8_t *a5, uint64_t a6, int8x16_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint16x4_t a13, int32x4_t *a14, uint64_t a15)
{
  v15 = vdupq_n_s32(a2);
  v16 = vdupq_n_s32(-a3);
  v17 = vdupq_n_s32(a3);
  v18 = vdupq_n_s32(8 - a3);
  a13.i32[0] = a4;
  v19 = a14 + 1;
  v20 = 0uLL;
  do
  {
    v21 = vcltzq_s16(*a5);
    v22 = vabsq_s16(*a5);
    v23 = vmull_lane_u16(*v22.i8, a13, 0);
    v24 = vmull_high_lane_u16(v22, a13, 0);
    v25 = vmlal_high_lane_u16(v15, v22, a13, 0);
    v26 = vshlq_s32(vmlal_lane_u16(v15, *v22.i8, a13, 0), v16);
    v27 = vshlq_s32(v25, v16);
    v28 = vsubq_s16(veorq_s8(vqmovn_high_s32(vqmovn_s32(v26), v27), v21), v21);
    *a7 = v28;
    v19[-1] = vshlq_s32(vsubq_s32(v23, vshlq_s32(v26, v17)), v18);
    *v19 = vshlq_s32(vsubq_s32(v24, vshlq_s32(v27, v17)), v18);
    v20 = vorrq_s8(v28, v20);
    a5 = (a5 + 2 * a6);
    a7 = (a7 + 2 * a8);
    v19 = (v19 + 4 * a15);
    --a1;
  }

  while (a1);
  return vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) != 0;
}

BOOL sub_277506E7C(int a1, unsigned int a2, int8x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int32x4_t *a8, int32x4_t a9, int16x8_t a10, uint64_t a11)
{
  v12 = 0;
  v13 = vdupq_n_s32(-a2);
  v14 = vdupq_n_s32(a2);
  v15 = vdupq_n_s32(8 - a2);
  v16 = a8 + 1;
  v17 = 0uLL;
  v18.i64[0] = 0x200000002;
  v18.i64[1] = 0x200000002;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = v16;
    do
    {
      v22 = *a3++;
      *v11.i8 = vtst_s8(v22, v22);
      v23 = *(a4 + v19);
      v24 = vabsq_s16(v23);
      v25 = vmull_s16(*v24.i8, *a10.i8);
      v26 = vmull_high_s16(v24, a10);
      v27 = vshlq_s32(vmlal_s16(a9, *v24.i8, *a10.i8), v13);
      v28 = vandq_s8(vorrq_s8(vqtbl1q_s8(v11, xmmword_27750D7F0), vcgtq_u32(v27, v18)), v27);
      v29 = vshlq_s32(vsubq_s32(v25, vshlq_s32(v28, v14)), v15);
      v30 = vshlq_s32(vaddq_s32(v26, a9), v13);
      v31 = vandq_s8(vorrq_s8(vqtbl1q_s8(v11, xmmword_27750D800), vcgtq_u32(v30, v18)), v30);
      v21[-1] = v29;
      *v21 = vshlq_s32(vsubq_s32(v26, vshlq_s32(v31, v14)), v15);
      v32 = vqmovn_high_s32(vqmovn_s32(v28), v31);
      v33 = vcltzq_s16(v23);
      v11 = vsubq_s16(veorq_s8(v32, v33), v33);
      v17 = vorrq_s8(v11, v17);
      *(a6 + v19) = v11;
      v20 += 8;
      v19 += 16;
      v21 += 2;
    }

    while (v20 < a1);
    ++v12;
    a6 += 2 * a7;
    v16 = (v16 + 4 * a11);
    a4 += 2 * a5;
  }

  while (v12 != a1);
  a9.i16[0] = vmaxvq_u16(v17);
  return a9.i32[0] != 0;
}

uint64_t sub_277506F94(unsigned int a1, unsigned int a2, __int32 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint16x4_t a13, uint64_t a14)
{
  v21 = 0;
  v22 = 0;
  v23 = 1;
  do
  {
    v24 = v23;
    v25 = sub_277506D9C(16, a1, a2, a3, (a4 + 2 * v21), a5, (a6 + 2 * v21), a7, a9, a10, a11, a12, a13, (a8 + 4 * v21), a14);
    v23 = 0;
    v22 |= v25;
    v21 = 8;
  }

  while ((v24 & 1) != 0);
  return v22 & 1;
}

BOOL sub_2775070B8(unsigned int a1, unsigned int a2, __int32 a3, int16x4_t *a4, uint64_t a5, void *a6, uint64_t a7, int32x4_t *a8, double a9, double a10, double a11, double a12, uint16x4_t a13, uint64_t a14)
{
  v14 = vdupq_n_s32(a1);
  v15 = vdupq_n_s32(-a2);
  v16 = vdupq_n_s32(a2);
  v17 = vdupq_n_s32(8 - a2);
  a13.i32[0] = a3;
  v18 = 0;
  v19 = 4;
  do
  {
    v20 = vcltz_s16(*a4);
    v21 = vabs_s16(*a4);
    v22 = vmull_lane_u16(v21, a13, 0);
    v23 = vshlq_s32(vmlal_lane_u16(v14, v21, a13, 0), v15);
    v24 = vshlq_s32(vsubq_s32(v22, vshlq_s32(v23, v16)), v17);
    *v23.i8 = vsub_s16(veor_s8(vqmovn_s32(v23), v20), v20);
    *a6 = v23.i64[0];
    *a8 = v24;
    v18 = vorr_s8(*v23.i8, v18);
    a4 = (a4 + 2 * a5);
    a6 = (a6 + 2 * a7);
    a8 = (a8 + 4 * a14);
    --v19;
  }

  while (v19);
  return *&v18 != 0;
}

BOOL sub_277507154(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, int32x4_t *a8, double a9, double a10, int16x4_t a11, uint64_t a12, int8x16_t *a13)
{
  v13 = vdupq_n_s32(a1);
  v14 = vdupq_n_s16(a3);
  a11.i32[0] = a3;
  v15 = vtstq_s8(*a13, *a13);
  v16 = 2 * a5;
  v17 = vdupq_n_s32(-a2);
  v18 = vdupq_n_s32(a2);
  v19 = vdupq_n_s32(8 - a2);
  v20 = 1;
  v21 = 0uLL;
  v22 = &xmmword_27753CF30;
  v23.i64[0] = 0x200000002;
  v23.i64[1] = 0x200000002;
  do
  {
    v24 = v20;
    v25 = *v22;
    v26 = v22[1];
    v22 += 2;
    v28.i64[0] = *a4;
    v27 = (a4 + v16);
    v28.i64[1] = *v27;
    a4 = (v27 + v16);
    v29 = vabsq_s16(v28);
    v30 = vmull_lane_s16(*v29.i8, a11, 0);
    v31 = vmull_high_s16(v29, v14);
    v32 = vshlq_s32(vmlal_lane_s16(v13, *v29.i8, a11, 0), v17);
    v33 = vandq_s8(vorrq_s8(vqtbl1q_s8(v15, v25), vcgtq_u32(v32, v23)), v32);
    *a8 = vshlq_s32(vsubq_s32(v30, vshlq_s32(v33, v18)), v19);
    v34 = vshlq_s32(vaddq_s32(v31, v13), v17);
    v35 = vandq_s8(vorrq_s8(vqtbl1q_s8(v15, v26), vcgtq_u32(v34, v23)), v34);
    *(a8 + 4 * a12) = vshlq_s32(vsubq_s32(v31, vshlq_s32(v35, v18)), v19);
    v36 = vqmovn_high_s32(vqmovn_s32(v33), v35);
    v37 = vcltzq_s16(v28);
    v38 = vsubq_s16(veorq_s8(v36, v37), v37);
    v21 = vorrq_s8(v38, v21);
    *a6 = v38.i64[0];
    *(a6 + 2 * a7) = v38.i64[1];
    a6 = (a6 + 4 * a7);
    a8 = (a8 + 8 * a12);
    v20 = 0;
  }

  while ((v24 & 1) != 0);
  v13.i16[0] = vmaxvq_u16(v21);
  return v13.i32[0] != 0;
}

double sub_277507264(unsigned int a1, unsigned int a2, unsigned int a3, int16x8_t *a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int32x4_t *a8, int32x4_t *a9, uint64_t a10, int8x16_t *a11, uint64_t a12)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_277507360(32, a2, a12 + 336, a4, a5, a6, a7, a8, vdupq_n_s32(a1), vdupq_n_s16(a3), a9, a10, v18);
  v12 = vqmovn_high_u16(vqmovn_u16(v18[0]), v18[1]);
  v20.val[0] = vtstq_s8(v12, v12);
  v13 = vqmovn_high_u16(vqmovn_u16(v18[2]), v18[3]);
  v20.val[1] = vtstq_s8(v13, v13);
  v14 = vqmovn_high_u16(vqmovn_u16(v18[4]), v18[5]);
  v20.val[2] = vtstq_s8(v14, v14);
  v15 = vqmovn_high_u16(vqmovn_u16(v18[6]), v18[7]);
  v20.val[3] = vtstq_s8(v15, v15);
  v16 = vpaddq_s8(vpaddq_s8(vandq_s8(vqtbl4q_s8(v20, *a11), xmmword_27750D810), vandq_s8(vqtbl4q_s8(v20, a11[1]), xmmword_27750D810)), vpaddq_s8(vandq_s8(vqtbl4q_s8(v20, a11[2]), xmmword_27750D810), vandq_s8(vqtbl4q_s8(v20, a11[3]), xmmword_27750D810)));
  *&result = vpaddq_s8(v16, v16).u64[0];
  return result;
}

uint64_t sub_277507360(uint64_t result, unsigned int a2, uint64_t a3, int16x8_t *a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int32x4_t *a8, int32x4_t a9, int16x8_t a10, int32x4_t *a11, uint64_t a12, _DWORD *a13)
{
  v14 = 0;
  v16 = vdupq_n_s32(-a2);
  v17 = vdupq_n_s32(a2);
  v18 = vdupq_n_s32(8 - a2);
  v19 = 8 * a7;
  v20 = 4 * a12;
  v21 = 2 * a7;
  v22 = a8 + 1;
  v23 = 16 * a12;
  v24.i64[0] = 0x200000002;
  v24.i64[1] = 0x200000002;
  v25 = a11 + 1;
  do
  {
    v26 = 0;
    v27 = v25;
    v28 = v22;
    v29 = a6;
    v30 = a4;
    do
    {
      v31 = (a3 + v26);
      v32 = 4;
      v33 = 0uLL;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v37 = v30;
      do
      {
        *v13.i8 = vtst_s8(*v31, *v31);
        v38 = *v37;
        v39 = vabsq_s16(*v37);
        v40 = vmull_s16(*v39.i8, *a10.i8);
        v41 = vmull_high_s16(v39, a10);
        v34[-1] = v40;
        *v34 = v41;
        v42 = vshlq_s32(vmlal_s16(a9, *v39.i8, *a10.i8), v16);
        v43 = vshlq_s32(vaddq_s32(v41, a9), v16);
        v44 = vandq_s8(vorrq_s8(vqtbl1q_s8(v13, xmmword_27750D7F0), vcgtq_u32(v42, v24)), v42);
        v45 = vandq_s8(vorrq_s8(vqtbl1q_s8(v13, xmmword_27750D800), vcgtq_u32(v43, v24)), v43);
        v46 = vsubq_s32(v40, vshlq_s32(v44, v17));
        v47 = vshlq_s32(vsubq_s32(v41, vshlq_s32(v45, v17)), v18);
        v48 = vqmovn_high_s32(vqmovn_s32(v44), v45);
        v49 = vcltzq_s16(v38);
        v13 = vsubq_s16(veorq_s8(v48, v49), v49);
        v31 = (v31 + result);
        v37 = (v37 + 2 * a5);
        v35[-1] = vshlq_s32(v46, v18);
        *v35 = v47;
        v33 = vorrq_s8(v13, v33);
        *v36 = v13;
        v36 = (v36 + v21);
        v35 = (v35 + v20);
        v34 = (v34 + v20);
        --v32;
      }

      while (v32);
      v50 = vpmaxq_u16(v33, v33);
      *a13++ = vpmaxq_u16(v50, v50).u32[0];
      v26 += 8;
      ++v30;
      ++v29;
      v28 += 2;
      v27 += 2;
    }

    while (v26 < result);
    a4 = (a4 + 8 * a5);
    a6 = (a6 + v19);
    a3 += (4 * result);
    v14 += 4;
    v22 = (v22 + v23);
    v25 = (v25 + v23);
  }

  while (v14 < result);
  return result;
}

uint64_t sub_277507508(unsigned int a1, unsigned int a2, unsigned int a3, int16x8_t *a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int32x4_t *a8, int32x4_t *a9, uint64_t a10, int8x16_t *a11, uint64_t a12)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_277507360(16, a2, a12 + 80, a4, a5, a6, a7, a8, vdupq_n_s32(a1), vdupq_n_s16(a3), a9, a10, v17);
  v12 = vqmovn_high_u16(vqmovn_u16(v17[0]), v17[1]);
  v13 = vandq_s8(vqtbl1q_s8(vtstq_s8(v12, v12), *a11), xmmword_27750D810);
  v14 = vpaddq_s8(v13, v13);
  v15 = vpaddq_s8(v14, v14);
  return vpaddq_s8(v15, v15).u16[0];
}

uint64_t sub_2775075B4(unsigned int a1, unsigned int a2, unsigned int a3, int16x8_t *a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int32x4_t *a8, int32x4_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_277507360(8, a2, a12 + 16, a4, a5, a6, a7, a8, vdupq_n_s32(a1), vdupq_n_s16(a3), a9, a10, &v13);
  return (v13 != 0) | (2 * (*(&v13 + *(a11 + 1)) != 0)) | (4 * (*(&v13 + *(a11 + 2)) != 0)) | (8 * (v14 != 0));
}

BOOL sub_277507670(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, int32x4_t *a8, double a9, double a10, int16x4_t a11, int32x4_t *a12, uint64_t a13, uint64_t a14, int8x16_t *a15)
{
  v16 = vdupq_n_s32(a1);
  v17 = vdupq_n_s16(a3);
  a11.i32[0] = a3;
  v18 = vtstq_s8(*a15, *a15);
  v19 = 2 * a5;
  v20 = vdupq_n_s32(-a2);
  v21 = vdupq_n_s32(a2);
  v22 = vdupq_n_s32(8 - a2);
  v23 = 8 * a13;
  v24 = 1;
  v25 = 0uLL;
  v26 = &xmmword_27753CF30;
  v27.i64[0] = 0x200000002;
  v27.i64[1] = 0x200000002;
  do
  {
    v28 = v24;
    v29 = *v26;
    v30 = v26[1];
    v26 += 2;
    v32.i64[0] = *a4;
    v31 = (a4 + v19);
    v32.i64[1] = *v31;
    a4 = (v31 + v19);
    v33 = vabsq_s16(v32);
    v34 = vmull_lane_s16(*v33.i8, a11, 0);
    v35 = vmull_high_s16(v33, v17);
    *a12 = v34;
    *(a12 + 4 * a13) = v35;
    v36 = vshlq_s32(vmlal_lane_s16(v16, *v33.i8, a11, 0), v20);
    v37 = vandq_s8(vorrq_s8(vqtbl1q_s8(v18, v29), vcgtq_u32(v36, v27)), v36);
    *a8 = vshlq_s32(vsubq_s32(v34, vshlq_s32(v37, v21)), v22);
    v38 = vshlq_s32(vaddq_s32(v35, v16), v20);
    v39 = vandq_s8(vorrq_s8(vqtbl1q_s8(v18, v30), vcgtq_u32(v38, v27)), v38);
    *(a8 + 4 * a13) = vshlq_s32(vsubq_s32(v35, vshlq_s32(v39, v21)), v22);
    v40 = vqmovn_high_s32(vqmovn_s32(v37), v39);
    v41 = vcltzq_s16(v32);
    v42 = vsubq_s16(veorq_s8(v40, v41), v41);
    v25 = vorrq_s8(v42, v25);
    *a6 = v42.i64[0];
    v43 = (a6 + 2 * a7);
    a6 = (a6 + 4 * a7);
    *v43 = v42.i64[1];
    a8 = (a8 + v23);
    a12 = (a12 + v23);
    v24 = 0;
  }

  while ((v28 & 1) != 0);
  v16.i16[0] = vmaxvq_u16(v25);
  return v16.i32[0] != 0;
}

uint64_t sub_277507790(uint64_t a1, uint64_t a2, int a3)
{
  v55[2] = *MEMORY[0x277D85DE8];
  if (a3 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 1 << a3;
  if (a3 == 31)
  {
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    v9 = 0;
    if (v4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 1 << a3;
    }

    v11 = 0uLL;
    v7 = 0uLL;
    v12 = 0uLL;
    v13.i64[0] = 0x1010101010101010;
    v13.i64[1] = 0x1010101010101010;
    v14.i64[0] = 0x101010101010101;
    v14.i64[1] = 0x101010101010101;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = a2;
    v6 = 0uLL;
    do
    {
      v19 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = xmmword_27750D340;
      v24 = 0uLL;
      do
      {
        v25 = *(v18 + v19);
        v21 = vmlal_u8(v21, *v25.i8, *v23.i8);
        v24 = vmlal_u8(v24, *v25.i8, *v11.i8);
        v6 = vaddw_u8(v6, *v25.i8);
        v20 = vmlal_high_u8(v20, v25, v23);
        v22 = vmlal_high_u8(v22, v25, v11);
        v7 = vaddw_high_u8(v7, v25);
        v23 = vaddq_s8(v23, v13);
        v19 += 16;
      }

      while (v19 < v4);
      v15 = vaddw_high_u16(vaddw_u16(v15, *v21.i8), v21);
      v12 = vaddw_high_u16(vaddw_u16(v12, *v20.i8), v20);
      v17 = vaddw_high_u16(vaddw_u16(v17, *v24.i8), v24);
      v16 = vaddw_high_u16(vaddw_u16(v16, *v22.i8), v22);
      v11 = vaddq_s8(v11, v14);
      v18 += a1;
      ++v9;
    }

    while (v9 != v10);
    v5 = vaddq_s32(v12, v15);
    v8 = vaddq_s32(v16, v17);
  }

  v26 = 0;
  v27 = vaddvq_s32(v5);
  v28 = vaddvq_s32(v8);
  v29 = vaddvq_s32(vaddw_high_u16(vaddw_u16(vpaddlq_u16(v6), *v7.i8), v7));
  v30 = (&unk_27753CFDC + 36 * (a3 - 2) + 8);
  do
  {
    v55[v26++ - 1] = *(v30 - 2) * v27 + *(v30 - 1) * v28 + *v30 * v29;
    v30 += 3;
  }

  while (v26 != 3);
  v31 = 0uLL;
  if (a3 != 31)
  {
    v32 = 0;
    v33 = vdupq_n_s64(v54);
    v34 = vaddq_s64(v33, v33);
    v35 = vshlq_n_s64(v33, 2uLL);
    v36 = vshlq_n_s64(v33, 3uLL);
    v37 = vdupq_lane_s64(v55[1], 0);
    v38 = 0uLL;
    v39.i64[0] = 0;
    v39.i64[1] = v54;
    v40 = v55;
    v41 = vld1q_dup_f64(v40);
    v42 = v4;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v43 = 0uLL;
    do
    {
      v44 = 0;
      v45 = vaddq_s64(v37, v39);
      do
      {
        v46 = vaddq_s64(v45, v34);
        v47 = vaddq_s64(v46, v35);
        v48 = vaddq_s64(v45, v36);
        v49 = vuzp1q_s16(vshrn_high_n_s64(vshrn_n_s64(v45, 0x18uLL), v46, 0x18uLL), vshrn_high_n_s64(vshrn_n_s64(vaddq_s64(v45, v35), 0x18uLL), v47, 0x18uLL));
        v50 = vshrn_high_n_s64(vshrn_n_s64(vaddq_s64(v48, v35), 0x18uLL), vaddq_s64(v47, v36), 0x18uLL);
        v51 = *(a2 + v44);
        v52 = vsubq_s16(vmovl_u8(*v51.i8), v49);
        v53 = vsubq_s16(vmovl_high_u8(v51), vuzp1q_s16(vshrn_high_n_s64(vshrn_n_s64(v48, 0x18uLL), vaddq_s64(v46, v36), 0x18uLL), v50));
        v38 = vmlal_high_s16(vmlal_s16(v38, *v52.i8, *v52.i8), v52, v52);
        v43 = vmlal_high_s16(vmlal_s16(v43, *v53.i8, *v53.i8), v53, v53);
        v44 += 16;
        v45 = vaddq_s64(v48, v36);
      }

      while (v44 < v42);
      v37 = vaddq_s64(v41, v37);
      a2 += a1;
      ++v32;
    }

    while (v32 != v4);
    v31 = vaddq_s32(v38, v43);
  }

  return vaddvq_s32(v31) >> (2 * a3);
}

uint64_t sub_277507A38(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  LODWORD(v4) = 0;
  v5 = (&unk_27753CF70 + 32 * a2);
  v6 = *v5;
  v7 = v5[1];
  do
  {
    v8 = 0;
    v4 = v4;
    v9 = 1;
    do
    {
      v10 = v4;
      v11 = (a1 + 2 * v8);
      v12 = vpaddq_s16(vpaddq_s16(vorrq_s8(vbicq_s8(v7, vceqzq_s16(vzip1q_s64(v11[8], v11[12]))), vbicq_s8(v6, vceqzq_s16(vzip1q_s64(*v11, v11[4])))), vorrq_s8(vbicq_s8(v7, vceqzq_s16(vzip2q_s64(v11[8], v11[12]))), vbicq_s8(v6, vceqzq_s16(vzip2q_s64(*v11, v11[4]))))), vpaddq_s16(vorrq_s8(vbicq_s8(v7, vceqzq_s16(vzip1q_s64(v11[9], v11[13]))), vbicq_s8(v6, vceqzq_s16(vzip1q_s64(v11[1], v11[5])))), vorrq_s8(vbicq_s8(v7, vceqzq_s16(vzip2q_s64(v11[9], v11[13]))), vbicq_s8(v6, vceqzq_s16(vzip2q_s64(v11[1], v11[5]))))));
      v12.i64[0] = vpaddq_s16(v12, v12).u64[0];
      v13 = byte_27753DDD0[v10 + 1];
      v14 = byte_27753DDD0[v10 + 2];
      v15 = byte_27753DDD0[v10 + 3];
      *(a4 + 2 * byte_27753DDD0[v10]) = v12.i16[0];
      v16 = v9;
      *(a4 + 2 * v13) = v12.i16[1];
      *(a4 + 2 * v14) = v12.i16[2];
      *(a4 + 2 * v15) = v12.i16[3];
      v4 = v10 + 4;
      v8 = 16;
      v9 = 0;
    }

    while ((v16 & 1) != 0);
    a1 += 256;
  }

  while (v10 < 60);
  v17 = 15;
  while (1)
  {
    v18 = *(a4 + 8 * v17);
    if (v18)
    {
      break;
    }

    if (--v17 == -1)
    {
      result = 0;
      goto LABEL_10;
    }
  }

  result = ((v17 << 6) | 0x3F) - __clz(v18);
LABEL_10:
  v20 = byte_27753D120[result >> 4];
  v21 = byte_27753D160[result & 0xF];
  *a3 = v21 & 3 | (4 * (v20 & 7));
  a3[1] = ((v20 >> 1) & 0x7C) + (v21 >> 2);
  return result;
}

uint64_t sub_277507BBC(int64x2_t *a1, int a2, unsigned int *a3, uint64_t a4)
{
  v4 = 0;
  v5 = (&unk_27753CF70 + 32 * a2);
  v6 = *v5;
  v7 = v5[1];
  do
  {
    i64 = a1[4].i64;
    v17 = vld4q_f64(i64);
    v17.val[0] = vpaddq_s16(vpaddq_s16(vorrq_s8(vbicq_s8(v7, vceqzq_s16(v17.val[0])), vbicq_s8(v6, vceqzq_s16(vzip1q_s64(*a1, a1[2])))), vorrq_s8(vbicq_s8(v7, vceqzq_s16(v17.val[1])), vbicq_s8(v6, vceqzq_s16(vzip2q_s64(*a1, a1[2]))))), vpaddq_s16(vorrq_s8(vbicq_s8(v7, vceqzq_s16(v17.val[2])), vbicq_s8(v6, vceqzq_s16(vzip1q_s64(a1[1], a1[3])))), vorrq_s8(vbicq_s8(v7, vceqzq_s16(v17.val[3])), vbicq_s8(v6, vceqzq_s16(vzip2q_s64(a1[1], a1[3]))))));
    *&v17.val[0].f64[0] = vpaddq_s16(v17.val[0], v17.val[0]).u64[0];
    v9 = byte_27753DDA0[v4 + 1];
    v10 = byte_27753DDA0[v4 + 2];
    v11 = byte_27753DDA0[v4 + 3];
    *(a4 + 2 * byte_27753DDA0[v4]) = LOWORD(v17.val[0].f64[0]);
    *(a4 + 2 * v9) = WORD1(v17.val[0].f64[0]);
    *(a4 + 2 * v10) = WORD2(v17.val[0].f64[0]);
    *(a4 + 2 * v11) = HIWORD(v17.val[0].f64[0]);
    a1 += 8;
    v12 = v4 >= 0xC;
    v4 += 4;
  }

  while (!v12);
  v13 = 3;
  while (1)
  {
    v14 = *(a4 + 8 * v13);
    if (v14)
    {
      break;
    }

    if (--v13 == -1)
    {
      result = 0;
      goto LABEL_9;
    }
  }

  result = ((v13 << 6) | 0x3F) - __clz(v14);
LABEL_9:
  v16 = byte_27753D180[result & 0xF] + 4 * byte_27753D180[result >> 4];
  *a3 = v16 & 0xF;
  a3[1] = v16 >> 4;
  return result;
}

uint64_t sub_277507D00(uint64_t a1, unsigned int a2, int *a3, float64_t *a4)
{
  v4 = (a1 + 32);
  v13 = vld2q_f64(v4);
  v5 = (a1 + 64);
  v14 = vld2q_f64(v5);
  v6 = (a1 + 96);
  v15 = vld2q_f64(v6);
  v7 = *(a1 + 16);
  v8 = (&unk_27753CF70 + 32 * a2);
  v9 = v8[1];
  v10 = vzip2q_s64(*a1, v7);
  v11 = vorrq_s8(vbicq_s8(v9, vceqzq_s16(v13.val[0])), vbicq_s8(*v8, vceqzq_s16(vzip1q_s64(*a1, v7))));
  v13.val[0] = vorrq_s8(vbicq_s8(v9, vceqzq_s16(v13.val[1])), vbicq_s8(*v8, vceqzq_s16(v10)));
  v13.val[1] = vorrq_s8(vbicq_s8(v9, vceqzq_s16(v15.val[0])), vbicq_s8(*v8, vceqzq_s16(v14.val[0])));
  v14.val[0] = vbicq_s8(*v8, vceqzq_s16(v14.val[1]));
  v14.val[1] = vbicq_s8(v9, vceqzq_s16(v15.val[1]));
  v14.val[0] = vorrq_s8(v14.val[1], v14.val[0]);
  LODWORD(v14.val[1].f64[0]) = 1;
  LODWORD(v15.val[0].f64[0]) = a2;
  v14.val[1] = vdupq_lane_s32(*&vceqq_s32(v15.val[0], v14.val[1]), 0);
  v13.val[0] = vpaddq_s16(vpaddq_s16(v11, vbslq_s8(v14.val[1], v13.val[0], v13.val[1])), vpaddq_s16(vbslq_s8(v14.val[1], v13.val[1], v13.val[0]), v14.val[0]));
  *&v13.val[0].f64[0] = vpaddq_s16(v13.val[0], v13.val[0]).u64[0];
  *a4 = v13.val[0].f64[0];
  result = 63 - __clz(*&v13.val[0].f64[0]);
  LODWORD(v8) = byte_27753D160[64 * a2 + 16 + (result & 0xF)] + byte_27753CFD0[4 * a2 + (result >> 4)];
  *a3 = v8 & 7;
  a3[1] = v8 >> 3;
  return result;
}

uint64_t sub_277507E10(int16x8_t *a1, unsigned int a2, int *a3, _WORD *a4)
{
  v4 = vaddlvq_u16(vorrq_s8(vbicq_s8(xmmword_27753CF70[2 * a2 + 1], vceqzq_s16(a1[1])), vbicq_s8(xmmword_27753CF70[2 * a2], vceqzq_s16(*a1))));
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = v4;
  result = __clz(v4) ^ 0x1FLL;
  v6 = byte_27753D160[64 * a2 + result];
  *a3 = v6 & 3;
  a3[1] = v6 >> 2;
  return result;
}

float sub_277507E80(int a1, uint64_t a2, uint64_t a3, _DWORD *a4, float *a5)
{
  if (a1 < 1)
  {
    v8 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    v5 = 0;
    v6 = 4 * a2;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = a3 + 2 * a2;
    do
    {
      v10 = 0;
      for (i = 0; i < a1; i += 8)
      {
        v12 = vabsq_s16(*(a3 + v10));
        v13 = vabsq_s16(*(v9 + v10));
        v8 = vaddq_s8(v8, vceqzq_s8(vqmovn_high_s16(vqmovn_s16(v12), v13)));
        v7 = vpadalq_u16(vpadalq_u16(v7, v12), v13);
        v10 += 16;
      }

      v5 += 2;
      a3 += v6;
      v9 += v6;
    }

    while (v5 < a1);
  }

  *a4 = a1 * a1 + vaddlvq_s8(v8);
  result = COERCE_FLOAT(vaddvq_s32(v7));
  *a5 = result;
  return result;
}

float sub_277507F20(int a1, uint64_t a2, uint64_t a3, _DWORD *a4, float *a5)
{
  if (a1 < 1)
  {
    v10 = 0uLL;
    v9 = 0uLL;
  }

  else
  {
    v5 = 0;
    v6 = 8 * a2;
    v7 = a3 + 6 * a2;
    v8 = a3 + 4 * a2;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = a3 + 2 * a2;
    do
    {
      v12 = 0;
      for (i = 0; i < a1; i += 4)
      {
        v14.i64[0] = *(a3 + v12);
        v14.i64[1] = *(v11 + v12);
        v15.i64[0] = *(v8 + v12);
        v15.i64[1] = *(v7 + v12);
        v16 = vabsq_s16(v14);
        v17 = vabsq_s16(v15);
        v10 = vaddq_s8(v10, vceqzq_s8(vqmovn_high_s16(vqmovn_s16(v16), v17)));
        v9 = vpadalq_u16(vpadalq_u16(v9, v16), v17);
        v12 += 8;
      }

      v5 += 4;
      a3 += v6;
      v7 += v6;
      v8 += v6;
      v11 += v6;
    }

    while (v5 < a1);
  }

  *a4 = a1 * a1 + vaddvq_s8(v10);
  result = COERCE_FLOAT(vaddvq_s32(v9));
  *a5 = result;
  return result;
}

unsigned __int8 *sub_277507FE4(unsigned __int8 *result, int a2, int a3, int a4, int a5, int __c, int a7)
{
  if (((a3 | a2) & 0x80000000) == 0)
  {
    v7 = a2 - *(result + 1);
    v8 = a3 - *(result + 2);
    v9 = *result;
    if (v7 <= v9 && v8 <= v9)
    {
      v11 = *&result[8 * a7 + 136];
      v12 = a5 <= 0 ? *&result[8 * a7 + 136] : (v11 + 1);
      if (a4)
      {
        v14 = *v12 >> 2;
        v15 = a4;
        v16 = *(v11 + 8 * a5 + 8);
        if (a5)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = (v16 + v14 * (v8 >> v17) + (v7 >> v17));
        v19 = a4;
        do
        {
          --v19;
          result = memset(v18, __c, v15);
          v18 += v14;
        }

        while (v19);
      }
    }
  }

  return result;
}

uint64_t sub_2775080A0(uint64_t result, int a2)
{
  if ((*(result + 163) & 1) == 0)
  {
    if (a2 < 0)
    {
      v7 = *(result + 176);
      if (v7)
      {
        v8 = (result + 178);
        v9 = *(result + 176);
        do
        {
          v10 = *v8++;
          LOWORD(a2) = a2 + v10 + 1;
          --v9;
        }

        while (v9);
        v11 = *(result + 176);
      }

      else
      {
        v11 = 0;
      }

      *(result + 2 * v11 + 178) = ~a2;
      *(result + 242) &= ~(1 << v11);
      *(result + 176) = v7 + 1;
    }

    else
    {
      v2 = *(result + 177);
      if (v2)
      {
        v3 = (result + 210);
        v4 = *(result + 177);
        do
        {
          v5 = *v3++;
          LOWORD(a2) = a2 + ~v5;
          --v4;
        }

        while (v4);
        v6 = *(result + 177);
      }

      else
      {
        v6 = 0;
      }

      *(result + 2 * v6 + 210) = a2 - 1;
      *(result + 244) &= ~(1 << v6);
      *(result + 177) = v2 + 1;
    }
  }

  return result;
}

uint64_t sub_277508164(uint64_t result, int a2)
{
  if ((*(result + 163) & 1) == 0)
  {
    if (a2 < 0)
    {
      v7 = *(result + 176);
      if (v7)
      {
        v8 = (result + 178);
        v9 = *(result + 176);
        do
        {
          v10 = *v8++;
          LOWORD(a2) = a2 + v10 + 1;
          --v9;
        }

        while (v9);
        v11 = *(result + 176);
      }

      else
      {
        v11 = 0;
      }

      *(result + 2 * v11 + 178) = ~a2;
      *(result + 242) |= 1 << v11;
      *(result + 176) = v7 + 1;
    }

    else
    {
      v2 = *(result + 177);
      if (v2)
      {
        v3 = (result + 210);
        v4 = *(result + 177);
        do
        {
          v5 = *v3++;
          LOWORD(a2) = a2 + ~v5;
          --v4;
        }

        while (v4);
        v6 = *(result + 177);
      }

      else
      {
        v6 = 0;
      }

      *(result + 2 * v6 + 210) = a2 - 1;
      *(result + 244) |= 1 << v6;
      *(result + 177) = v2 + 1;
    }
  }

  return result;
}

uint64_t sub_277508228(uint64_t result, int a2)
{
  if ((*(result + 163) & 1) == 0)
  {
    if (a2 < 0)
    {
      v7 = *(result + 176);
      if (v7)
      {
        v8 = 0;
        v9 = result + 178;
        do
        {
          if (a2)
          {
            v10 = *(v9 + 2 * v8);
            v11 = a2 + v10;
            a2 += v10 + 1;
            if (v11 == -1)
            {
              *(v9 + 2 * v8) = v10 + *(v9 + 2 * (v8 + 1)) + 1;
              v12 = *(result + 242);
              *(result + 176) = --v7;
              *(result + 242) = v12 & ~(1 << v8) | (((2 << v8) & v12 & ~(1 << v8)) >> 1);
            }

            ++v8;
          }

          else
          {
            *(v9 + 2 * v8) = *(v9 + 2 * (v8 + 1));
            *(result + 242) = *(result + 242) & ~(1 << v8) | (((2 << v8) & *(result + 242) & ~(1 << v8)) >> 1);
            ++v8;
          }
        }

        while (v8 < v7);
      }
    }

    else
    {
      v2 = *(result + 177);
      if (v2)
      {
        v3 = 0;
        v4 = result + 210;
        do
        {
          if (a2)
          {
            v5 = *(v4 + 2 * v3);
            a2 += ~v5;
            if (!a2)
            {
              *(v4 + 2 * v3) = v5 + *(v4 + 2 * (v3 + 1)) + 1;
              v6 = *(result + 244);
              *(result + 177) = --v2;
              *(result + 244) = v6 & ~(1 << v3) | (((2 << v3) & v6 & ~(1 << v3)) >> 1);
            }

            ++v3;
          }

          else
          {
            *(v4 + 2 * v3) = *(v4 + 2 * (v3 + 1));
            *(result + 244) = *(result + 244) & ~(1 << v3) | (((2 << v3) & *(result + 244) & ~(1 << v3)) >> 1);
            ++v3;
          }
        }

        while (v3 < v2);
      }
    }
  }

  return result;
}

void sub_27750838C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 163) == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 170) + 1 - 2 * *(a1 + 168) * (*(a1 + 170) + 1);
    v6 = *(a1 + 172);
    v7 = *(a1 + 174);
    v8 = (a2 + 128);
    v9 = a1 + 64;
    v10 = *(a2 + 162) + 1;
    do
    {
      if ((v6 | v7))
      {
        v11 = v6 & 1;
        v12 = v5 + *v8;
        if (v12 < 0)
        {
          v14 = a1 + 4 * v4;
          *v14 = v12;
          *(v14 + 2) = v11;
          ++v4;
        }

        else
        {
          v13 = v9 + 4 * v3;
          *v13 = v12;
          *(v13 + 2) = v11;
          ++v3;
        }
      }

      v6 >>= 1;
      v7 >>= 1;
      ++v8;
      --v10;
    }

    while (v10);
    *(a1 + 160) = v4;
    *(a1 + 161) = v3;
    v42 = sub_277508B30;
    sub_2775085CC(a1, (a1 + 4 * v4), &v42);
    v15 = (v9 + 4 * *(a1 + 161));
    v42 = sub_2775086C8;
    sub_2775085CC(a1 + 64, v15, &v42);
    LODWORD(v16) = *(a1 + 160);
    if (!*(a1 + 160))
    {
      goto LABEL_19;
    }

LABEL_17:
    v32 = (a1 + 128);
    v33 = v16;
    v34 = a1;
    do
    {
      v35 = *v34;
      v34 += 2;
      *v32++ = v35;
      --v33;
    }

    while (v33);
    goto LABEL_19;
  }

  v17 = *(a1 + 242);
  v18 = ~*(a1 + 178);
  *a1 = ~*(a1 + 178);
  *(a1 + 2) = v17 & 1;
  v16 = *(a1 + 176);
  if (v16 >= 2)
  {
    v19 = v16 - 1;
    v20 = (a1 + 6);
    v21 = (a1 + 180);
    do
    {
      v22 = (v17 >> 1) & 1;
      v17 = v17 >> 1;
      v23 = *v21++;
      v18 += ~v23;
      *(v20 - 1) = v18;
      *v20 = v22;
      v20 += 4;
      --v19;
    }

    while (v19);
  }

  v24 = *(a1 + 244);
  v25 = *(a1 + 210) + 1;
  *(a1 + 64) = *(a1 + 210) + 1;
  *(a1 + 66) = v24 & 1;
  v26 = *(a1 + 177);
  if (v26 >= 2)
  {
    v27 = v26 - 1;
    v28 = (a1 + 70);
    v29 = (a1 + 212);
    do
    {
      v30 = (v24 >> 1) & 1;
      v24 = v24 >> 1;
      v31 = *v29++;
      v25 += v31 + 1;
      *(v28 - 1) = v25;
      *v28 = v30;
      v28 += 4;
      --v27;
    }

    while (v27);
  }

  *(a1 + 160) = v16;
  *(a1 + 161) = v26;
  if (v16)
  {
    goto LABEL_17;
  }

LABEL_19:
  v36 = *(a1 + 161);
  if (v36)
  {
    v37 = (a1 + 64);
    v38 = (a1 + 2 * v16 + 128);
    v39 = *(a1 + 161);
    do
    {
      v40 = *v37;
      v37 += 2;
      *v38++ = v40;
      --v39;
    }

    while (v39);
  }

  v41 = v36 + v16;
  *(a1 + 162) = v41;
  if (v41 <= 0xFu)
  {
    bzero((a1 + ((2 * v41) | 0x80u)), (32 - 2 * v41) & 0xFE);
  }
}

void sub_2775085CC(uint64_t a1, int *a2, uint64_t (**a3)(int *, int *))
{
  v6 = (a2 - a1) >> 2;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = (a2 - a1) >> 2;
    while (1)
    {
      v9 = operator new(4 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_2775086DC(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_2775086B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2775086DC(uint64_t result, int *a2, uint64_t (**a3)(int *, int *), unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        v10 = *v8;
        *v8 = *v9;
        *v9 = v10;
      }
    }

    else if (a4 > 128)
    {
      v19 = a5;
      v20 = a4 >> 1;
      v21 = (result + 4 * (a4 >> 1));
      v22 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_27750893C(result, v21, a3, v22, a5);
        v23 = &v19[4 * v20];
        result = sub_27750893C(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v23);
        v24 = &v19[4 * a4];
        v25 = v23;
        while (v25 != v24)
        {
          result = (*a3)(v25, v19);
          if (result)
          {
            v26 = v25;
          }

          else
          {
            v26 = v19;
          }

          if (result)
          {
            v27 = 0;
          }

          else
          {
            v27 = 4;
          }

          v19 += v27;
          if (result)
          {
            v28 = 4;
          }

          else
          {
            v28 = 0;
          }

          v25 = (v25 + v28);
          *v8++ = *v26;
          if (v19 == v23)
          {
            while (v25 != v24)
            {
              v30 = *v25++;
              *v8++ = v30;
            }

            return result;
          }
        }

        while (v19 != v23)
        {
          v29 = *v19;
          v19 += 4;
          *v8++ = v29;
        }
      }

      else
      {
        sub_2775086DC(result, v21, a3, v22, a5, a6);
        sub_2775086DC(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v19, a6);

        return sub_2773FFCC0(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v19, a6);
      }
    }

    else if (result != a2)
    {
      v12 = (result + 4);
      if ((result + 4) != a2)
      {
        v13 = 0;
        v14 = result;
        do
        {
          v15 = v14;
          v14 = v12;
          result = (*a3)(v12, v15);
          if (result)
          {
            v31 = *v14;
            v16 = v13;
            while (1)
            {
              *(v8 + v16 + 4) = *(v8 + v16);
              if (!v16)
              {
                break;
              }

              v16 -= 4;
              result = (*a3)(&v31, (v8 + v16));
              if ((result & 1) == 0)
              {
                v17 = (v8 + v16 + 4);
                goto LABEL_16;
              }
            }

            v17 = v8;
LABEL_16:
            *v17 = v31;
          }

          v12 = v14 + 1;
          v13 += 4;
        }

        while (v14 + 1 != a2);
      }
    }
  }

  return result;
}

int *sub_27750893C(int *result, int *a2, uint64_t (**a3)(int *, int *), unint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_9:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = a2 - 1;
      result = (*a3)(a2 - 1, result);
      if (result)
      {
        v11 = v10;
      }

      else
      {
        v11 = v7;
      }

      *v5++ = *v11;
      if (!result)
      {
        v7 = v10;
      }

      goto LABEL_9;
    }

    if (a4 > 8)
    {
      v19 = &result[a4 >> 1];
      sub_2775086DC(result, v19, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_2775086DC(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v20 = &v7[a4 >> 1];
      while (v20 != a2)
      {
        result = (*a3)(v20, v7);
        if (result)
        {
          v21 = v20;
        }

        else
        {
          v21 = v7;
        }

        if (result)
        {
          v22 = 4;
        }

        else
        {
          v22 = 0;
        }

        v20 = (v20 + v22);
        if (result)
        {
          v23 = 0;
        }

        else
        {
          v23 = 4;
        }

        v7 = (v7 + v23);
        *v5++ = *v21;
        if (v7 == v19)
        {
          while (v20 != a2)
          {
            v25 = *v20++;
            *v5++ = v25;
          }

          return result;
        }
      }

      while (v7 != v19)
      {
        v24 = *v7++;
        *v5++ = v24;
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = a5;
        do
        {
          v15 = v14++;
          result = (*a3)(v12, v15);
          v16 = v14;
          if (result)
          {
            v15[1] = *v15;
            v16 = v5;
            if (v15 != v5)
            {
              v17 = v13;
              while (1)
              {
                v16 = (v5 + v17);
                result = (*a3)(v12, (v5 + v17 - 4));
                if (!result)
                {
                  break;
                }

                *(v5 + v17) = *(v5 + v17 - 4);
                v17 -= 4;
                if (!v17)
                {
                  v16 = v5;
                  break;
                }
              }
            }
          }

          v18 = *v12++;
          *v16 = v18;
          v13 += 4;
        }

        while (v12 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_277508B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 65)
  {
    if (a4 < 1)
    {
      *(a1 + 163) = 0;
    }

    else
    {
      v9 = sub_2773FB848(a2, 1);
      *(a1 + 163) = v9 != 0;
      if (v9)
      {
        if (*(a3 + 288) == a4)
        {
          v10 = sub_2773FB90C(a2);
        }

        else
        {
          v10 = 0;
        }

        *(a1 + 164) = v10;
        *(a1 + 168) = sub_2773FB848(a2, 1) != 0;
        *(a1 + 170) = sub_2773FB9A4(a2);
        v18 = *(a1 + 164);
        if (!__CFADD__(~v18, a4))
        {
          if (dword_280B9A880 >= 3)
          {
            fprintf(*MEMORY[0x277D85DF8], "delta_idx_minus1_ (%d) must be between 0-%d\n", *(a1 + 164), a4 - 1);
            syslog(27, "delta_idx_minus1_ (%d) must be between 0-%d\n");
          }

          return 4294954387;
        }

        v17 = *(a3 + 296) + 248 * (~v18 + a4);
        *(a1 + 172) = 0;
        v19 = -1;
        do
        {
          ++v19;
          v20 = sub_2773FB848(a2, 1);
          *(a1 + 172) |= (v20 != 0) << v19;
          if (!v20)
          {
            *(a1 + 174) |= (sub_2773FB848(a2, 1) != 0) << v19;
          }
        }

        while (v19 < *(v17 + 162));
LABEL_28:
        sub_27750838C(a1, v17);
        if ((*(a1 + 163) & 1) == 0)
        {
          if (*(a1 + 176))
          {
            v21 = 0;
            v22 = a1 + 178;
            while ((*(v22 + 2 * v21) & 0x80000000) == 0)
            {
              if (*(a1 + 176) == ++v21)
              {
                goto LABEL_33;
              }
            }

            if (dword_280B9A880 <= 2)
            {
              return 4294954387;
            }

            v26 = (v22 + 2 * v21);
            v5 = "delta_poc_s0_minus1_[i] of %lld is out of range (%lld, %lld)\n";
            fprintf(*MEMORY[0x277D85DF8], "delta_poc_s0_minus1_[i] of %lld is out of range (%lld, %lld)\n");
LABEL_47:
            v28 = 0;
            v29 = 0x7FFFLL;
            v27 = *v26;
            goto LABEL_4;
          }

LABEL_33:
          if (*(a1 + 177))
          {
            v23 = 0;
            v24 = a1 + 210;
            while ((*(v24 + 2 * v23) & 0x80000000) == 0)
            {
              result = 0;
              if (*(a1 + 177) == ++v23)
              {
                return result;
              }
            }

            if (dword_280B9A880 < 3)
            {
              return 4294954387;
            }

            v26 = (v24 + 2 * v23);
            v5 = "delta_poc_s1_minus1_[i] of %lld is out of range (%lld, %lld)\n";
            fprintf(*MEMORY[0x277D85DF8], "delta_poc_s1_minus1_[i] of %lld is out of range (%lld, %lld)\n");
            goto LABEL_47;
          }
        }

        return 0;
      }
    }

    *(a1 + 176) = sub_2773FB90C(a2);
    v11 = sub_2773FB90C(a2);
    v12 = v11;
    *(a1 + 177) = v11;
    v13 = *(a3 + *(a3 + 1) + 226);
    v14 = *(a1 + 176);
    if (v14 + v11 > v13)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Number of ref pics exceeds limit: %d + %d > %d\n", v14, v11, v13);
        syslog(27, "Number of ref pics exceeds limit: %d + %d > %d\n");
      }

      return 4294954387;
    }

    *(a1 + 242) = 0;
    if (v14)
    {
      v15 = 0;
      do
      {
        *(a1 + 178 + 2 * v15) = sub_2773FB9A4(a2);
        *(a1 + 242) |= (sub_2773FB848(a2, 1) != 0) << v15++;
      }

      while (v15 < *(a1 + 176));
      v12 = *(a1 + 177);
    }

    *(a1 + 244) = 0;
    if (v12)
    {
      v16 = 0;
      do
      {
        *(a1 + 210 + 2 * v16) = sub_2773FB9A4(a2);
        *(a1 + 244) |= (sub_2773FB848(a2, 1) != 0) << v16++;
      }

      while (v16 < *(a1 + 177));
    }

    v17 = 0;
    goto LABEL_28;
  }

  if (dword_280B9A880 >= 3)
  {
    v5 = "idx %d > kMaxID %d\n";
    fprintf(*MEMORY[0x277D85DF8], "idx %d > kMaxID %d\n", a4, 64);
    v27 = a4;
    v28 = 64;
LABEL_4:
    syslog(27, v5, v27, v28, v29);
  }

  return 4294954387;
}

uint64_t sub_277508F10(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    sub_2773FB780(a2, *(a1 + 163), 1);
  }

  if (*(a1 + 163) != 1)
  {
    v19 = *(a1 + 176) + 1;
    v20 = __clz(v19);
    sub_2773FB780(a2, (v19 - (0x80000000 >> v20)) | (0x80000000 >> v20), (2 * v20) ^ 0x3F);
    v21 = *(a1 + 177) + 1;
    v22 = __clz(v21);
    sub_2773FB780(a2, (v21 - (0x80000000 >> v22)) | (0x80000000 >> v22), (2 * v22) ^ 0x3F);
    if (*(a1 + 176))
    {
      v23 = 0;
      v24 = *(a1 + 242);
      do
      {
        v25 = *(a1 + 178 + 2 * v23) + 1;
        v26 = __clz(v25);
        sub_2773FB780(a2, (v25 - (0x80000000 >> v26)) | (0x80000000 >> v26), (2 * v26) ^ 0x3F);
        sub_2773FB780(a2, v24 & 1, 1);
        ++v23;
        v24 >>= 1;
      }

      while (v23 < *(a1 + 176));
    }

    if (*(a1 + 177))
    {
      v27 = 0;
      v28 = *(a1 + 244);
      do
      {
        v29 = *(a1 + 210 + 2 * v27) + 1;
        v30 = __clz(v29);
        sub_2773FB780(a2, (v29 - (0x80000000 >> v30)) | (0x80000000 >> v30), (2 * v30) ^ 0x3F);
        sub_2773FB780(a2, v28 & 1, 1);
        ++v27;
        v28 >>= 1;
      }

      while (v27 < *(a1 + 177));
    }

    return 0;
  }

  if (*(a3 + 288) == a4)
  {
    v8 = *(a1 + 164) + 1;
    v9 = __clz(v8);
    sub_2773FB780(a2, (v8 - (0x80000000 >> v9)) | (0x80000000 >> v9), 63 - 2 * v9);
  }

  sub_2773FB780(a2, *(a1 + 168), 1);
  v10 = *(a1 + 170) + 1;
  v11 = __clz(v10);
  sub_2773FB780(a2, (v10 - (0x80000000 >> v11)) | (0x80000000 >> v11), (2 * v11) ^ 0x3F);
  result = 4294954387;
  v13 = ~*(a1 + 164) + a4;
  if (v13 >= 0 && v13 < a4)
  {
    v14 = *(a3 + 296);
    v15 = *(a1 + 172);
    v16 = *(a1 + 174);
    v17 = v14 + 248 * v13;
    v18 = -1;
    do
    {
      sub_2773FB780(a2, v15 & 1, 1);
      if ((v15 & 1) == 0)
      {
        sub_2773FB780(a2, v16 & 1, 1);
      }

      v15 >>= 1;
      v16 >>= 1;
      ++v18;
    }

    while (v18 < *(v17 + 162));
    return 0;
  }

  return result;
}

uint64_t sub_277509174(uint64_t a1, int a2, int a3, int a4)
{
  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0xFFFFFFFFLL;
  v6 = 0x7FFFFFFF;
  do
  {
    v7 = *(a1 + 4 * v4);
    if (a4 >= 1 && v7 < 0)
    {
      v8 = -v7 > a3;
      v9 = v6 > -v7;
      if (v8 && v9)
      {
        v5 = v4;
      }

      else
      {
        v5 = v5;
      }

      if (v8 && v9)
      {
        v6 = -v7;
      }
    }

    else if (!a4)
    {
      v10 = v7 > a3;
      v11 = v7 < v6;
      v12 = !v10 || !v11;
      v13 = v10 && v11 ? v4 : v5;
      v14 = v12 ? v6 : *(a1 + 4 * v4);
      v5 = v7 >= 1 ? v13 : v5;
      if (v7 >= 1)
      {
        v6 = v14;
      }
    }

    ++v4;
  }

  while (a2 != v4);
  return v5;
}

uint64_t sub_277509208(uint64_t a1, int a2, int a3, int a4)
{
  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0xFFFFFFFFLL;
  do
  {
    v7 = *(a1 + 4 * v4);
    if (a4 >= 1 && v7 < 0)
    {
      v8 = -v7 < a3;
      v9 = v5 < -v7;
      if (v8 && v9)
      {
        v6 = v4;
      }

      else
      {
        v6 = v6;
      }

      if (v8 && v9)
      {
        v5 = -v7;
      }
    }

    else if (!a4)
    {
      v10 = v7 < a3;
      v11 = v7 > v5;
      v12 = !v10 || !v11;
      v13 = v10 && v11 ? v4 : v6;
      v14 = v12 ? v5 : *(a1 + 4 * v4);
      v6 = v7 >= 1 ? v13 : v6;
      if (v7 >= 1)
      {
        v5 = v14;
      }
    }

    ++v4;
  }

  while (a2 != v4);
  return v6;
}

size_t sub_27750929C(size_t result, FILE *__stream, uint64_t a3, int a4)
{
  v7 = result;
  v8 = dword_280B9A880;
  if (dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "  short_term_ref_pic_set(%d) {\n", a4);
    v8 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "    %-42s : %lld\n", "inter_ref_pic_set_prediction_flag", *(v7 + 163));
      v8 = dword_280B9A880;
    }
  }

  if (*(v7 + 163) == 1)
  {
    if (v8 >= 6)
    {
      result = fprintf(__stream, "    %-42s : %lld\n", "delta_idx_minus1", *(v7 + 164));
      v8 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "delta_rps_sign", *(v7 + 168));
        v8 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "abs_delta_rps_minus1", *(v7 + 170));
          v8 = dword_280B9A880;
        }
      }
    }

    v9 = 0;
    v10 = *(a3 + 296) + 248 * (~*(v7 + 164) + a4);
    do
    {
      if (v8 >= 6)
      {
        result = fprintf(__stream, "      %-40s : %lld\n", "used_by_curr_pic_flag", (*(v7 + 172) >> v9) & 1);
        v8 = dword_280B9A880;
        if (((*(v7 + 172) >> v9) & 1) == 0 && dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "      %-40s : %lld\n", "use_delta_flag", (*(v7 + 174) >> v9) & 1);
          v8 = dword_280B9A880;
        }
      }
    }

    while (v9++ < *(v10 + 162));
  }

  else
  {
    if (v8 >= 6)
    {
      result = fprintf(__stream, "    %-42s : %lld\n", "num_negative_pics", *(v7 + 176));
      v8 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "num_positive_pics", *(v7 + 177));
        v8 = dword_280B9A880;
      }
    }

    if (*(v7 + 176))
    {
      v12 = 0;
      do
      {
        if (v8 >= 6)
        {
          result = fprintf(__stream, "      %-40s : %lld\n", "delta_poc_s0_minus1", *(v7 + 178 + 2 * v12));
          v8 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "      %-40s : %lld\n", "used_by_curr_pic_s0_flag", (*(v7 + 242) >> v12) & 1);
            v8 = dword_280B9A880;
          }
        }

        ++v12;
      }

      while (v12 < *(v7 + 176));
    }

    if (*(v7 + 177))
    {
      v13 = 0;
      do
      {
        if (v8 >= 6)
        {
          result = fprintf(__stream, "      %-40s : %lld\n", "delta_poc_s1_minus1", *(v7 + 210 + 2 * v13));
          v8 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "      %-40s : %lld\n", "used_by_curr_pic_s1_flag", (*(v7 + 244) >> v13) & 1);
            v8 = dword_280B9A880;
          }
        }

        ++v13;
      }

      while (v13 < *(v7 + 177));
    }
  }

  if (v8 >= 6)
  {

    return fwrite("  }\n", 4uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t sub_277509614(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 324))
  {
    v6 = sub_2773FB90C(a3);
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  v7 = sub_2773FB90C(a3);
  a1[1] = v7;
  LODWORD(v8) = *a1;
  v9 = *(a2 + 324);
  if (*a1 > v9)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "num_long_term_sps (%d) > %d\n", *a1, v9);
      syslog(27, "num_long_term_sps (%d) > %d\n");
    }

    return 4294954387;
  }

  if (v8 + v7 >= 0x11)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "# LT ref pics (%d + %d = %d) > kMaxDpbSize (%u)\n", v8, v7, v8 + v7, 16);
      syslog(27, "# LT ref pics (%d + %d = %d) > kMaxDpbSize (%u)\n");
    }

    return 4294954387;
  }

  a1[46] = 0;
  if (!(v7 + v8))
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 30;
  while (v11 >= v8)
  {
    *(a1 + v11 + 12) = sub_2773FB848(a3, *(a2 + 224) + 4);
    LOWORD(v16) = sub_2773FB848(a3, 1) != 0;
LABEL_20:
    *(a1 + 92) |= v16 << v11;
    v18 = sub_2773FB848(a3, 1);
    *(a1 + 93) |= (v18 != 0) << v11;
    if (v18)
    {
      v18 = sub_2773FB90C(a3);
    }

    a1[v13 - 16] = v18;
    v8 = *a1;
    if (v11 == v8 || v11 == 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v12;
    }

    v12 = v18 + v20;
    a1[v13] = v18 + v20;
    ++v11;
    ++v13;
    if (v11 >= a1[1] + v8)
    {
      return 0;
    }
  }

  v14 = *(a2 + 324);
  if (v14 < 2)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2773FB848(a3, 32 - __clz(v14 - 1));
  }

  *(a1 + v11 + 8) = v15;
  v17 = *(a2 + 324);
  if (v17 > v15)
  {
    *(a1 + v11 + 12) = *(a2 + 328 + 2 * v15);
    v16 = (*(a2 + 392) >> v15) & 1;
    goto LABEL_20;
  }

  if (dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Parsed invalid long term reference index %d (max %d)\n", v15, v17);
    syslog(27, "Parsed invalid long term reference index %d (max %d)\n");
  }

  return 4294954387;
}

uint64_t sub_2775098C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0;
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 172) = 0;
  *(a1 + 188) = 0;
  *(a1 + 180) = 0;
  *(a1 + 196) = 0;
  *(a1 + 4) = 0;
  *(a1 + 11) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 214) = 0u;
  *(a1 + 200) = a3;
  *(a1 + 201) = 0;
  *(a1 + 204) = 0;
  *(a1 + 212) = 0;
  *(a1 + 230) = 0u;
  *(a1 + 246) = 0u;
  *(a1 + 262) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 372) = 0u;
  *(a1 + 388) = 0u;
  v5 = 416;
  *(a1 + 402) = 0;
  *(a1 + 1976) = 0;
  *(a1 + 168) = 0;
  do
  {
    v6 = 0;
    if (v4)
    {
      v7 = 65;
    }

    else
    {
      v7 = 17;
    }

    v8 = v5;
    do
    {
      if (v4)
      {
        v9 = &unk_27750DBE0 + ((v6 > 2) | ((v6 > 2) << 6));
      }

      else
      {
        v9 = &unk_27750DBCF;
      }

      memcpy((a1 + v8), v9, v7);
      ++v6;
      v8 += 65;
    }

    while (v6 != 6);
    ++v4;
    v5 += 390;
  }

  while (v4 != 4);
  *(a1 + 2064) = 0;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0;
  *(a1 + 2037) = 0;
  *(a1 + 1984) = 0;
  *(a1 + 1988) = 0;
  *(a1 + 1990) = 33685509;
  *(a1 + 1994) = 2;
  *(a1 + 2024) = 0;
  *(a1 + 2028) = 0;
  *(a1 + 1995) = 0;
  *(a1 + 2001) = 0;
  *(a1 + 2020) = 0;
  *(a1 + 2012) = 0;
  *(a1 + 2116) = 0;
  *(a1 + 2108) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2132) = 0u;
  *(a1 + 2088) = 0;
  *(a1 + 2096) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2148) = 1;
  *(a1 + 2152) = a2;
  return a1;
}

uint64_t sub_277509AC4(unsigned __int8 *a1)
{
  v2 = *(a1 + 269);
  v3 = *a1;
  v4 = (v2 + 1536);
  v5 = (v2 + 16 * v3);
  if (v3 > 0xF)
  {
    v5 = v4;
  }

  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "No VPS found for ID %d\n", *a1);
      syslog(27, "No VPS found for ID %d\n", *a1);
    }

    goto LABEL_23;
  }

  v8 = 0;
  v9 = a1[1];
  v10 = a1 + 226;
  v11 = v7 + 203;
  do
  {
    v12 = *(v11 + v8);
    if (v10[v8] > v12)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "sps_max_dec_pic_buffering[%d] (%d) out of range [0, %d]\n", v8, v10[v8], v12);
        syslog(27, "sps_max_dec_pic_buffering[%d] (%d) out of range [0, %d]\n", v8, v10[v8], *(v11 + v8));
      }

      goto LABEL_23;
    }

    ++v8;
  }

  while (v9 + 1 != v8);
  if (*(v7 + 280) == 1 && (a1[2008] & 1) == 0)
  {
    *(a1 + 503) = *(v7 + 284);
    *(a1 + 504) = *(v7 + 288);
    a1[2020] = *(v7 + 292);
  }

  if (v9 >= 7)
  {
    if (dword_280B9A880 < 3)
    {
      goto LABEL_23;
    }

    v14 = 6;
    v15 = "sps_max_sub_layers_minus1_ of %lld is out of range (%lld, %lld)\n";
    fprintf(*MEMORY[0x277D85DF8], "sps_max_sub_layers_minus1_ of %lld is out of range (%lld, %lld)\n", v9, 0, 6);
    v16 = 0;
    v17 = a1[1];
    goto LABEL_22;
  }

  v13 = *(v7 + 200);
  if (v9 > v13)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "sps_max_sub_layers_minus1_ of %lld is out of range (%lld, %lld)\n", v9, 0, v13);
      syslog(27, "sps_max_sub_layers_minus1_ of %lld is out of range (%lld, %lld)\n");
    }

    goto LABEL_23;
  }

  v20 = a1[201];
  if (v20 >= 4)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "chroma_format_idc_ of %lld is out of range (%lld, %lld)\n", v20, 0, 3);
      syslog(27, "chroma_format_idc_ of %lld is out of range (%lld, %lld)\n");
    }
  }

  else
  {
    v21 = *(a1 + 51);
    if (v21 <= 0)
    {
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "pic_width_in_luma_samples_ of %lld is out of range (%lld, %lld)\n", v21, 1, 0x7FFFFFFFLL);
        syslog(27, "pic_width_in_luma_samples_ of %lld is out of range (%lld, %lld)\n");
      }
    }

    else
    {
      v22 = *(a1 + 52);
      if (v22 <= 0)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "pic_height_in_luma_samples_ of %lld is out of range (%lld, %lld)\n", v22, 1, 0x7FFFFFFFLL);
          syslog(27, "pic_height_in_luma_samples_ of %lld is out of range (%lld, %lld)\n");
        }
      }

      else
      {
        if ((v22 * v21) >> 31)
        {
          if (dword_280B9A880 < 3)
          {
            goto LABEL_23;
          }

          v24 = *MEMORY[0x277D85DF8];
          v25 = "static_cast<size_t>(pic_width_in_luma_samples_)*pic_height_in_luma_samples_ <= INT32_MAX failed!\n";
          v26 = "static_cast<size_t>(pic_width_in_luma_samples_)*pic_height_in_luma_samples_ <= INT32_MAX failed!\n";
          v27 = 97;
          goto LABEL_41;
        }

        v23 = a1[2112];
        if (((v22 | v21) & ~(-1 << v23)) != 0)
        {
          if (dword_280B9A880 < 3)
          {
            goto LABEL_23;
          }

          v24 = *MEMORY[0x277D85DF8];
          v25 = "width_remainder == 0 && height_remainder == 0 failed!\n";
          v26 = "width_remainder == 0 && height_remainder == 0 failed!\n";
          v27 = 54;
          goto LABEL_41;
        }

        if (a1[212] == 1)
        {
          v28 = &unk_27753D090 + 2 * v20;
          v29 = *v28;
          v30 = *(a1 + 107);
          v31 = v21 / v29;
          v32 = *(a1 + 108);
          if (v30 > (v31 + ~v32))
          {
            if (dword_280B9A880 < 3)
            {
              goto LABEL_23;
            }

            v15 = "conf_win_left_offset_ of %lld is out of range (%lld, %lld)\n";
            fprintf(*MEMORY[0x277D85DF8], "conf_win_left_offset_ of %lld is out of range (%lld, %lld)\n", v30, 0, ~v32 + v31);
            v16 = 0;
            v17 = *(a1 + 107);
            v33 = *(a1 + 51) / v29;
            v34 = *(a1 + 108);
LABEL_49:
            v14 = ~v34 + v33;
LABEL_22:
            syslog(27, v15, v17, v16, v14);
            goto LABEL_23;
          }

          v35 = v28[1];
          v36 = *(a1 + 109);
          v37 = v22 / v35;
          v38 = *(a1 + 110);
          if (v36 > (v37 + ~v38))
          {
            if (dword_280B9A880 < 3)
            {
              goto LABEL_23;
            }

            v15 = "conf_win_top_offset_ of %lld is out of range (%lld, %lld)\n";
            fprintf(*MEMORY[0x277D85DF8], "conf_win_top_offset_ of %lld is out of range (%lld, %lld)\n", v36, 0, ~v38 + v37);
            v16 = 0;
            v17 = *(a1 + 109);
            v33 = *(a1 + 52) / v35;
            v34 = *(a1 + 110);
            goto LABEL_49;
          }
        }

        v39 = a1[222];
        if (v39 >= 7)
        {
          if (dword_280B9A880 >= 3)
          {
            fprintf(*MEMORY[0x277D85DF8], "bit_depth_luma_minus8_ of %lld is out of range (%lld, %lld)\n", v39, 0, 6);
            syslog(27, "bit_depth_luma_minus8_ of %lld is out of range (%lld, %lld)\n");
          }
        }

        else
        {
          v40 = a1[223];
          if (v40 >= 7)
          {
            if (dword_280B9A880 >= 3)
            {
              fprintf(*MEMORY[0x277D85DF8], "bit_depth_chroma_minus8_ of %lld is out of range (%lld, %lld)\n", v40, 0, 6);
              syslog(27, "bit_depth_chroma_minus8_ of %lld is out of range (%lld, %lld)\n");
            }
          }

          else
          {
            v41 = a1[224];
            if (v41 <= 0xC)
            {
              v42 = 0;
              v43 = a1 + 240;
              v44 = (v9 + 1);
              do
              {
                v45 = a1[v42 + 233];
                v46 = a1[v42 + 226];
                if (v45 > v46)
                {
                  if (dword_280B9A880 >= 3)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "sps_max_num_reorder_pics_[idx] of %lld is out of range (%lld, %lld)\n", v45, 0, v46);
                    syslog(27, "sps_max_num_reorder_pics_[idx] of %lld is out of range (%lld, %lld)\n");
                  }

                  goto LABEL_23;
                }

                v47 = *&v43[4 * v42];
                if (v47 >= 0xFFFFFFFE)
                {
                  if (dword_280B9A880 >= 3)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "sps_max_latency_increase_plus1_[idx] of %lld is out of range (%lld, %lld)\n", v47, 0, 4294967293);
                    syslog(27, "sps_max_latency_increase_plus1_[idx] of %lld is out of range (%lld, %lld)\n");
                  }

                  goto LABEL_23;
                }

                if (v42)
                {
                  v48 = a1[v42 + 225];
                  v49 = a1[v42 + 232];
                }

                else
                {
                  v48 = 0;
                  v49 = 0;
                }

                v50 = *(v7 + v42 + 203);
                if (v48 > v46 || v46 > v50)
                {
                  if (dword_280B9A880 >= 3)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "sps_max_dec_pic_buffering_minus1_[idx] of %lld is out of range (%lld, %lld)\n", v46, v48, v50);
                    syslog(27, "sps_max_dec_pic_buffering_minus1_[idx] of %lld is out of range (%lld, %lld)\n");
                  }

                  goto LABEL_23;
                }

                v52 = *(v7 + v42 + 210);
                if (v49 > v45 || v45 > v52)
                {
                  if (dword_280B9A880 >= 3)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "sps_max_num_reorder_pics_[idx] of %lld is out of range (%lld, %lld)\n", v45, v49, v52);
                    syslog(27, "sps_max_num_reorder_pics_[idx] of %lld is out of range (%lld, %lld)\n");
                  }

                  goto LABEL_23;
                }

                v54 = *(v7 + 220 + 4 * v42);
                if (v54 - 1 < (v47 - 1))
                {
                  if (dword_280B9A880 >= 3)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "sps_max_latency_increase_plus1_[idx] of %lld is out of range (%lld, %lld)\n", v47, 1, v54);
                    syslog(27, "sps_max_latency_increase_plus1_[idx] of %lld is out of range (%lld, %lld)\n");
                  }

                  goto LABEL_23;
                }

                ++v42;
              }

              while (v44 != v42);
              if (a1[320] == 1)
              {
                v55 = *(a1 + 81);
                if (v55)
                {
                  v56 = 0;
                  v57 = (16 << v41);
                  while (1)
                  {
                    v58 = *&a1[2 * v56 + 328];
                    if (v57 - 1 < v58)
                    {
                      break;
                    }

                    if (v55 == ++v56)
                    {
                      goto LABEL_74;
                    }
                  }

                  if (dword_280B9A880 >= 3)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "lt_ref_pic_poc_lsb_sps_[idx] of %lld is out of range (%lld, %lld)\n", v58, 0, v57 - 1);
                    syslog(27, "lt_ref_pic_poc_lsb_sps_[idx] of %lld is out of range (%lld, %lld)\n");
                  }

                  goto LABEL_23;
                }
              }

LABEL_74:
              if ((v23 - 3) >= 4u)
              {
                if (dword_280B9A880 >= 3)
                {
                  fprintf(*MEMORY[0x277D85DF8], "log2MinCbSize_ of %lld is out of range (%lld, %lld)\n", v23, 3, 6);
                  syslog(27, "log2MinCbSize_ of %lld is out of range (%lld, %lld)\n");
                }

                goto LABEL_23;
              }

              v59 = a1[2113];
              if ((v59 - 3) >= 4u)
              {
                if (dword_280B9A880 >= 3)
                {
                  fprintf(*MEMORY[0x277D85DF8], "log2CtbSize_ of %lld is out of range (%lld, %lld)\n", v59, 3, 6);
                  syslog(27, "log2CtbSize_ of %lld is out of range (%lld, %lld)\n");
                }

                goto LABEL_23;
              }

              v60 = a1[2115];
              if (v59 >= 5)
              {
                v61 = 5;
              }

              else
              {
                v61 = a1[2113];
              }

              if (v60 > v61 || v60 <= 1)
              {
                if (dword_280B9A880 < 3)
                {
                  goto LABEL_23;
                }

                v16 = 2;
                v15 = "log2MaxTrafoSize_ of %lld is out of range (%lld, %lld)\n";
                fprintf(*MEMORY[0x277D85DF8], "log2MaxTrafoSize_ of %lld is out of range (%lld, %lld)\n", v60, 2, v61);
                v17 = a1[2115];
                if (a1[2113] >= 5u)
                {
                  v14 = 5;
                }

                else
                {
                  v14 = a1[2113];
                }

                goto LABEL_22;
              }

              v62 = a1[2114];
              if (v62 > v60 || v62 <= 1)
              {
                if (dword_280B9A880 >= 3)
                {
                  fprintf(*MEMORY[0x277D85DF8], "log2MinTrafoSize_ of %lld is out of range (%lld, %lld)\n", v62, 2, v60);
                  syslog(27, "log2MinTrafoSize_ of %lld is out of range (%lld, %lld)\n");
                }

                goto LABEL_23;
              }

              if (a1[278] != 1)
              {
                goto LABEL_93;
              }

              if (v23 >= 5)
              {
                v63 = 5;
              }

              else
              {
                v63 = v23;
              }

              if (a1[279] >= a1[2096])
              {
                if (dword_280B9A880 < 3)
                {
                  goto LABEL_23;
                }

                v24 = *MEMORY[0x277D85DF8];
                v25 = "pcm.pcm_sample_bit_depth_luma_minus1_ + 1 <= bitDepth_y_ failed!\n";
                v26 = "pcm.pcm_sample_bit_depth_luma_minus1_ + 1 <= bitDepth_y_ failed!\n";
                v27 = 65;
              }

              else
              {
                if (a1[280] < a1[2098])
                {
                  v64 = a1[286];
                  if (v64 > v61 || v64 < v63)
                  {
                    if (dword_280B9A880 >= 3)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "pcm.log2MinIPCMCUSize_ of %lld is out of range (%lld, %lld)\n", v64, v63, v61);
                      syslog(27, "pcm.log2MinIPCMCUSize_ of %lld is out of range (%lld, %lld)\n");
                    }

                    goto LABEL_23;
                  }

                  v65 = a1[287];
                  if (v65 > v61 || v65 < v63)
                  {
                    if (dword_280B9A880 >= 3)
                    {
                      fprintf(*MEMORY[0x277D85DF8], "pcm.log2MaxIPCMCUSize_ of %lld is out of range (%lld, %lld)\n", v65, v63, v61);
                      syslog(27, "pcm.log2MaxIPCMCUSize_ of %lld is out of range (%lld, %lld)\n");
                    }

                    goto LABEL_23;
                  }

LABEL_93:
                  if ((a1[405] & 1) == 0 && a1[409] != 1)
                  {
                    v18 = 0;
                    if (v6)
                    {
                      goto LABEL_24;
                    }

                    return v18;
                  }

                  if (dword_280B9A880 < 3)
                  {
                    goto LABEL_23;
                  }

                  v24 = *MEMORY[0x277D85DF8];
                  v25 = "Range Extension feature not supported\n";
                  v26 = "Range Extension feature not supported\n";
                  v27 = 38;
                  goto LABEL_41;
                }

                if (dword_280B9A880 < 3)
                {
                  goto LABEL_23;
                }

                v24 = *MEMORY[0x277D85DF8];
                v25 = "pcm.pcm_sample_bit_depth_chroma_minus1_ + 1 <= bitDepth_c_ failed!\n";
                v26 = "pcm.pcm_sample_bit_depth_chroma_minus1_ + 1 <= bitDepth_c_ failed!\n";
                v27 = 67;
              }

LABEL_41:
              fwrite(v26, v27, 1uLL, v24);
              syslog(27, v25);
              goto LABEL_23;
            }

            if (dword_280B9A880 >= 3)
            {
              fprintf(*MEMORY[0x277D85DF8], "log2_max_pic_order_cnt_lsb_minus4_ of %lld is out of range (%lld, %lld)\n", v41, 0, 12);
              syslog(27, "log2_max_pic_order_cnt_lsb_minus4_ of %lld is out of range (%lld, %lld)\n");
            }
          }
        }
      }
    }
  }

LABEL_23:
  v18 = 4294954387;
  if (v6)
  {
LABEL_24:
    sub_2773CC26C(v6);
  }

  return v18;
}

void sub_27750A60C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2773CC26C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27750A628(unsigned __int8 *a1, FILE *__stream)
{
  if (dword_280B9A880 >= 6)
  {
    fprintf(__stream, "=========== Sequence Parameter Set ID: %d ===========\n", a1[200]);
    if (dword_280B9A880 >= 6)
    {
      fprintf(__stream, "  %-44s : %lld\n", "sps_video_parameter_set_id", *a1);
      if (dword_280B9A880 >= 6)
      {
        fprintf(__stream, "  %-44s : %lld\n", "sps_max_sub_layers_minus1", a1[1]);
        if (dword_280B9A880 >= 6)
        {
          fprintf(__stream, "  %-44s : %lld\n", "sps_temporal_id_nesting_flag", a1[2]);
        }
      }
    }
  }

  result = sub_277466830((a1 + 4), a1[1], __stream);
  v5 = dword_280B9A880;
  if (dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "sps_seq_parameter_set_id", a1[200]);
    v5 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "chroma_format_idc", a1[201]);
      v5 = dword_280B9A880;
      if (a1[201] == 3 && dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "separate_colour_plane_flag", a1[202]);
        v5 = dword_280B9A880;
      }

      if (v5 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "pic_width_in_luma_samples", *(a1 + 51));
        v5 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "pic_height_in_luma_samples", *(a1 + 52));
          v5 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "  %-44s : %lld\n", "conformance_window_flag", a1[212]);
            v5 = dword_280B9A880;
          }
        }
      }
    }
  }

  if (a1[212] == 1)
  {
    if (v5 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "conf_win_left_offset", *(a1 + 107));
    v5 = dword_280B9A880;
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "conf_win_right_offset", *(a1 + 108));
    v5 = dword_280B9A880;
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "conf_win_top_offset", *(a1 + 109));
    v5 = dword_280B9A880;
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "conf_win_bottom_offset", *(a1 + 110));
    v5 = dword_280B9A880;
  }

  if (v5 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "bit_depth_luma_minus8", a1[222]);
    v5 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "bit_depth_chroma_minus8", a1[223]);
      v5 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "log2_max_pic_order_cnt_lsb_minus4", a1[224]);
        v5 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "sps_sub_layer_ordering_info_present_flag", a1[225]);
          v5 = dword_280B9A880;
        }
      }
    }
  }

LABEL_26:
  if (a1[225])
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[1];
  }

  do
  {
    if (v5 >= 6)
    {
      result = fprintf(__stream, "    %-42s : %lld\n", "sps_max_dec_pic_buffering_minus1", a1[v6 + 226]);
      v5 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "sps_max_num_reorder_pics", a1[v6 + 233]);
        v5 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "sps_max_latency_increase_plus1", *&a1[4 * v6 + 240]);
          v5 = dword_280B9A880;
        }
      }
    }
  }

  while (v6++ < a1[1]);
  if (v5 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "log2_min_coding_block_size_minus3", a1[268]);
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "log2_diff_max_min_coding_block_size", a1[269]);
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "log2_min_transform_block_size_minus2", a1[270]);
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "log2_diff_max_min_transform_block_size", a1[271]);
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "  %-44s : %lld\n", "max_transform_hierarchy_depth_inter", a1[272]);
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "  %-44s : %lld\n", "max_transform_hierarchy_depth_intra", a1[273]);
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, "  %-44s : %lld\n", "scaling_list_enabled_flag", a1[274]);
              }
            }
          }
        }
      }
    }
  }

  if (a1[274] == 1)
  {
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "sps_scaling_list_data_present_flag", a1[275]);
    }

    if (a1[275] == 1)
    {
      result = sub_2773FCD80((a1 + 416), __stream);
    }
  }

  v8 = dword_280B9A880;
  if (dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "amp_enabled_flag", a1[276]);
    v8 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "sample_adaptive_offset_enabled_flag", a1[277]);
      v8 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "pcm_enabled_flag", a1[278]);
        v8 = dword_280B9A880;
      }
    }
  }

  if (a1[278] == 1)
  {
    if (v8 < 6)
    {
      goto LABEL_61;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "pcm.pcm_sample_bit_depth_luma_minus1", a1[279]);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_61;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "pcm.pcm_sample_bit_depth_chroma_minus1", a1[280]);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_61;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "pcm.log2_min_pcm_luma_coding_block_size_minus3", a1[281]);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_61;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "pcm.log2_diff_max_min_pcm_luma_coding_block_size", a1[282]);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_61;
    }

    result = fprintf(__stream, "  %-44s : %lld\n", "pcm.pcm_loop_filter_disabled_flag", a1[283]);
    v8 = dword_280B9A880;
  }

  if (v8 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "num_short_term_ref_pic_sets", *(a1 + 72));
  }

LABEL_61:
  if (*(a1 + 72))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      result = sub_27750929C(*(a1 + 37) + v9, __stream, a1, v10++);
      v9 += 248;
    }

    while (v10 < *(a1 + 72));
  }

  v11 = dword_280B9A880;
  if (dword_280B9A880 > 5)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "long_term_ref_pics_present_flag", a1[320]);
    v11 = dword_280B9A880;
  }

  if (a1[320] == 1)
  {
    if (v11 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "num_long_term_ref_pics_sps", *(a1 + 81));
      v11 = dword_280B9A880;
    }

    if (*(a1 + 81))
    {
      v12 = 0;
      do
      {
        if (v11 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "lt_ref_pic_poc_lsb_sps", *&a1[2 * v12 + 328]);
          v11 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "    %-42s : %lld\n", "used_by_curr_pic_lt_sps_flag", (*(a1 + 98) >> v12) & 1);
            v11 = dword_280B9A880;
          }
        }

        ++v12;
      }

      while (v12 < *(a1 + 81));
    }
  }

  if (v11 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "sps_temporal_mvp_enable_flag", a1[396]);
    v11 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "sps_strong_intra_smoothing_enable_flag", a1[397]);
      v11 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "vui_parameters_present_flag", a1[398]);
        v11 = dword_280B9A880;
      }
    }
  }

  if (a1[398] == 1)
  {
    if (v11 >= 6)
    {
      result = fwrite("  VUI {\n", 8uLL, 1uLL, __stream);
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "sar_width", *(a1 + 992));
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "sar_height", *(a1 + 993));
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "    %-42s : %lld\n", "overscan_info_present_flag", a1[1988]);
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "    %-42s : %lld\n", "overscan_appropriate_flag", a1[1989]);
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, "    %-42s : %lld\n", "video_format", a1[1990]);
                if (dword_280B9A880 >= 6)
                {
                  result = fprintf(__stream, "    %-42s : %lld\n", "video_full_range_flag", a1[1991]);
                  if (dword_280B9A880 >= 6)
                  {
                    result = fprintf(__stream, "    %-42s : %lld\n", "colour_primaries", a1[1992]);
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(__stream, "    %-42s : %lld\n", "transfer_characteristics", a1[1993]);
                      if (dword_280B9A880 >= 6)
                      {
                        result = fprintf(__stream, "    %-42s : %lld\n", "matrix_coeffs", a1[1994]);
                        if (dword_280B9A880 >= 6)
                        {
                          result = fprintf(__stream, "    %-42s : %lld\n", "chroma_sample_loc_type_top_field", a1[1995]);
                          if (dword_280B9A880 >= 6)
                          {
                            result = fprintf(__stream, "    %-42s : %lld\n", "chroma_sample_loc_type_bottom_field", a1[1996]);
                            if (dword_280B9A880 >= 6)
                            {
                              result = fprintf(__stream, "    %-42s : %lld\n", "neutral_chroma_indication_flag", a1[1997]);
                              if (dword_280B9A880 >= 6)
                              {
                                result = fprintf(__stream, "    %-42s : %lld\n", "field_seq_flag", a1[1998]);
                                if (dword_280B9A880 >= 6)
                                {
                                  result = fprintf(__stream, "    %-42s : %lld\n", "frame_field_info_present_flag", a1[1999]);
                                  if (dword_280B9A880 >= 6)
                                  {
                                    result = fprintf(__stream, "    %-42s : %lld\n", "def_disp_win_left_offset", *(a1 + 1000));
                                    if (dword_280B9A880 >= 6)
                                    {
                                      result = fprintf(__stream, "    %-42s : %lld\n", "def_disp_win_right_offset", *(a1 + 1001));
                                      if (dword_280B9A880 >= 6)
                                      {
                                        result = fprintf(__stream, "    %-42s : %lld\n", "def_disp_win_top_offset", *(a1 + 1002));
                                        if (dword_280B9A880 >= 6)
                                        {
                                          result = fprintf(__stream, "    %-42s : %lld\n", "def_disp_win_bottom_offset", *(a1 + 1003));
                                          if (dword_280B9A880 >= 6)
                                          {
                                            result = fprintf(__stream, "    %-42s : %lld\n", "vui_timing_info_present_flag", a1[2008]);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (a1[2008] == 1)
    {
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "      %-40s : %lld\n", "vui_num_units_in_tick", *(a1 + 503));
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "      %-40s : %lld\n", "vui_time_scale", *(a1 + 504));
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "      %-40s : %lld\n", "vui_poc_proportional_to_timing_flag", a1[2020]);
            v13 = dword_280B9A880;
            if (a1[2020] == 1 && dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "      %-40s : %lld\n", "vui_num_ticks_poc_diff_one_minus1", *(a1 + 506));
              v13 = dword_280B9A880;
            }

            if (v13 >= 6)
            {
              result = fprintf(__stream, "      %-40s : %lld\n", "vui_hrd_parameters_present_flag", a1[2028]);
            }
          }
        }
      }

      if (a1[2028] == 1)
      {
        v14 = *MEMORY[0x277D85DF8];
        if (dword_280B9A880 >= 6)
        {
          result = fwrite("      ------ HDR parameters ------\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(v14, "      %-40s : %lld\n", "nal_hrd_parameters_present_flag", a1[2032]);
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(v14, "      %-40s : %lld\n", "vcl_hrd_parameters_present_flag", a1[2033]);
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(v14, "      %-40s : %lld\n", "sub_pic_hrd_params_present_flag", a1[2034]);
                if (dword_280B9A880 >= 6)
                {
                  result = fprintf(v14, "      %-40s : %lld\n", "tick_divisor_minus2", a1[2035]);
                  if (dword_280B9A880 >= 6)
                  {
                    result = fprintf(v14, "      %-40s : %lld\n", "du_cpb_removal_delay_increment_length_minus1", a1[2036]);
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(v14, "      %-40s : %lld\n", "sub_pic_cpb_params_in_pic_timing_sei_flag", a1[2037]);
                      if (dword_280B9A880 >= 6)
                      {
                        result = fprintf(v14, "      %-40s : %lld\n", "dpb_output_delay_du_length_minus1", a1[2038]);
                        if (dword_280B9A880 >= 6)
                        {
                          result = fprintf(v14, "      %-40s : %lld\n", "bit_rate_scale", a1[2039]);
                          if (dword_280B9A880 >= 6)
                          {
                            result = fprintf(v14, "      %-40s : %lld\n", "cpb_size_scale", a1[2040]);
                            if (dword_280B9A880 >= 6)
                            {
                              result = fprintf(v14, "      %-40s : %lld\n", "cpb_size_du_scale", a1[2041]);
                              if (dword_280B9A880 >= 6)
                              {
                                result = fprintf(v14, "      %-40s : %lld\n", "initial_cpb_removal_delay_length_minus1", a1[2042]);
                                if (dword_280B9A880 >= 6)
                                {
                                  result = fprintf(v14, "      %-40s : %lld\n", "au_cpb_removal_delay_length_minus1", a1[2043]);
                                  if (dword_280B9A880 >= 6)
                                  {
                                    result = fprintf(v14, "      %-40s : %lld\n", "dpb_output_delay_length_minus1", a1[2044]);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v30 = v14;
        v15 = *(a1 + 256);
        if (*(a1 + 257) != v15)
        {
          v16 = 0;
          do
          {
            if (dword_280B9A880 <= 5)
            {
              v17 = (v15 + 56 * v16);
              v18 = *MEMORY[0x277D85DF8];
            }

            else
            {
              result = fprintf(v30, "      ------ HDR parameters sublabyer %d ------\n", v16);
              v17 = (*(a1 + 256) + 56 * v16);
              v18 = *MEMORY[0x277D85DF8];
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(v18, "      %-40s : %lld\n", "fixed_pic_rate_general_flag", *v17);
                if (dword_280B9A880 >= 6)
                {
                  result = fprintf(v18, "      %-40s : %lld\n", "fixed_pic_rate_within_cvs_flag", v17[1]);
                  if (dword_280B9A880 >= 6)
                  {
                    result = fprintf(v18, "      %-40s : %lld\n", "elemental_duration_in_tc_minus1", *(v17 + 1));
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(v18, "      %-40s : %lld\n", "low_delay_hrd_flag", v17[4]);
                      if (dword_280B9A880 >= 6)
                      {
                        result = fprintf(v18, "      %-40s : %lld\n", "cpb_cnt_minus1", *(v17 + 3));
                      }
                    }
                  }
                }
              }
            }

            v19 = *(v17 + 1);
            v20 = *(v17 + 2);
            if (v20 != v19)
            {
              if (dword_280B9A880 >= 6)
              {
                result = fwrite("      ------ HDR parameters sublabyer nal ------\n", 0x31uLL, 1uLL, v18);
                v19 = *(v17 + 1);
                v20 = *(v17 + 2);
              }

              if (v20 != v19)
              {
                v21 = 0;
                v22 = 0;
                v23 = dword_280B9A880;
                do
                {
                  if (v23 >= 6)
                  {
                    result = fprintf(v18, "      %-40s : %lld\n", "nal_cpb_layers_[i].bit_rate_value_minus1", *(v19 + v21));
                    v23 = dword_280B9A880;
                    v19 = *(v17 + 1);
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(v18, "      %-40s : %lld\n", "nal_cpb_layers_[i].cpb_size_value_minus1", *(v19 + v21 + 4));
                      v23 = dword_280B9A880;
                      v19 = *(v17 + 1);
                      if (dword_280B9A880 >= 6)
                      {
                        result = fprintf(v18, "      %-40s : %lld\n", "nal_cpb_layers_[i].cpb_size_du_value_minus1", *(v19 + v21 + 8));
                        v23 = dword_280B9A880;
                        v19 = *(v17 + 1);
                        if (dword_280B9A880 >= 6)
                        {
                          result = fprintf(v18, "      %-40s : %lld\n", "nal_cpb_layers_[i].bit_rate_du_value_minus1", *(v19 + v21 + 12));
                          v23 = dword_280B9A880;
                          v19 = *(v17 + 1);
                          if (dword_280B9A880 >= 6)
                          {
                            result = fprintf(v18, "      %-40s : %lld\n", "nal_cpb_layers_[i].cbr_flag", *(v19 + v21 + 16));
                            v23 = dword_280B9A880;
                            v19 = *(v17 + 1);
                          }
                        }
                      }
                    }
                  }

                  ++v22;
                  v21 += 20;
                }

                while (0xCCCCCCCCCCCCCCCDLL * ((*(v17 + 2) - v19) >> 2) > v22);
              }
            }

            v24 = *(v17 + 4);
            v25 = *(v17 + 5);
            if (v25 != v24)
            {
              if (dword_280B9A880 >= 6)
              {
                result = fwrite("      ------ HDR parameters sublabyer vcl ------\n", 0x31uLL, 1uLL, v18);
                v24 = *(v17 + 4);
                v25 = *(v17 + 5);
              }

              if (v25 != v24)
              {
                v26 = 0;
                v27 = 0;
                v28 = dword_280B9A880;
                do
                {
                  if (v28 >= 6)
                  {
                    result = fprintf(v18, "      %-40s : %lld\n", "vcl_cpb_layers_[i].bit_rate_value_minus1", *(v24 + v26));
                    v28 = dword_280B9A880;
                    v24 = *(v17 + 4);
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(v18, "      %-40s : %lld\n", "vcl_cpb_layers_[i].cpb_size_value_minus1", *(v24 + v26 + 4));
                      v28 = dword_280B9A880;
                      v24 = *(v17 + 4);
                      if (dword_280B9A880 >= 6)
                      {
                        result = fprintf(v18, "      %-40s : %lld\n", "vcl_cpb_layers_[i].cpb_size_du_value_minus1", *(v24 + v26 + 8));
                        v28 = dword_280B9A880;
                        v24 = *(v17 + 4);
                        if (dword_280B9A880 >= 6)
                        {
                          result = fprintf(v18, "      %-40s : %lld\n", "vcl_cpb_layers_[i].bit_rate_du_value_minus1", *(v24 + v26 + 12));
                          v28 = dword_280B9A880;
                          v24 = *(v17 + 4);
                          if (dword_280B9A880 >= 6)
                          {
                            result = fprintf(v18, "      %-40s : %lld\n", "vcl_cpb_layers_[i].cbr_flag", *(v24 + v26 + 16));
                            v28 = dword_280B9A880;
                            v24 = *(v17 + 4);
                          }
                        }
                      }
                    }
                  }

                  ++v27;
                  v26 += 20;
                }

                while (0xCCCCCCCCCCCCCCCDLL * ((*(v17 + 5) - v24) >> 2) > v27);
              }
            }

            ++v16;
            v15 = *(a1 + 256);
          }

          while (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 257) - v15) >> 3) > v16);
        }
      }
    }

    v29 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "    %-42s : %lld\n", "bitstream_restriction_flag", a1[2072]);
      v29 = dword_280B9A880;
    }

    if (a1[2072] == 1)
    {
      if (v29 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "tiles_fixed_structure_flag", a1[2073]);
      if (dword_280B9A880 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "motion_vectors_over_pic_boundaries_flag", a1[2074]);
      if (dword_280B9A880 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "restricted_ref_pic_lists_flag", a1[2075]);
      if (dword_280B9A880 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "min_spatial_segmentation_idc", *(a1 + 519));
      if (dword_280B9A880 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "max_bytes_per_pic_denom", *(a1 + 520));
      if (dword_280B9A880 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "max_bits_per_min_cu_denom", *(a1 + 521));
      if (dword_280B9A880 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "log2_max_mv_length_horizontal", *(a1 + 522));
      if (dword_280B9A880 < 6)
      {
        return result;
      }

      result = fprintf(__stream, "      %-40s : %lld\n", "log2_max_mv_length_vertical", *(a1 + 523));
      v29 = dword_280B9A880;
    }

    if (v29 < 6)
    {
      return result;
    }

    result = fwrite("  }\n", 4uLL, 1uLL, __stream);
    v11 = dword_280B9A880;
  }

  if (v11 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "sps_extension_present_flag", a1[399]);
    if (a1[399] == 1 && dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "sps_range_extension_flag", a1[400]);
      if (a1[400] == 1 && dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "rext.transform_skip_rotation_enabled_flag", a1[401]);
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "rext.transform_skip_context_enabled_flag", a1[402]);
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "    %-42s : %lld\n", "rext.implicit_rdpcm_enabled_flag", a1[403]);
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "    %-42s : %lld\n", "rext.explicit_rdpcm_enabled_flag", a1[404]);
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, "    %-42s : %lld\n", "rext.extended_precision_processing_flag", a1[405]);
                if (dword_280B9A880 >= 6)
                {
                  result = fprintf(__stream, "    %-42s : %lld\n", "rext.intra_smoothing_disabled_flag", a1[406]);
                  if (dword_280B9A880 >= 6)
                  {
                    result = fprintf(__stream, "    %-42s : %lld\n", "rext.high_precision_offsets_enabled_flag", a1[407]);
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(__stream, "    %-42s : %lld\n", "rext.persistent_rice_adaptation_enabled_flag", a1[408]);
                      if (dword_280B9A880 >= 6)
                      {
                        return fprintf(__stream, "    %-42s : %lld\n", "rext.cabac_bypass_alignment_enabled_flag", a1[409]);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_27750BE08(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 2);
  if (a1 + 19 >= a2)
  {
    v13 = (a1 + 2);
LABEL_13:
    v15 = &v13->u16[1];
    if (v13->u64 + 2 < a2)
    {
      v16 = bswap32(v13->u16[0]) >> 16;
      v17 = v15;
      while (1)
      {
        v18 = *v17;
        v17 = (v17 + 1);
        v19 = v18 & 0xFF0000FF | (v16 << 8);
        if (v19 < 2)
        {
          break;
        }

        v15 = v17;
        LOWORD(v16) = v19;
        if (v17 >= a2)
        {
          return a2;
        }
      }

      return v15 - 1;
    }
  }

  else
  {
    v3 = (a1 + 4);
    while (1)
    {
      v4 = *v2;
      v4.i8[0] = vminvq_u8(*v2);
      if (!v4.i32[0])
      {
        v5 = 0;
        v6 = v3;
        do
        {
          v7 = v5;
          v8 = v6;
          v9 = v2->u8[v5++];
          ++v6;
        }

        while (v9);
        if (v7 <= 0xF)
        {
          break;
        }
      }

LABEL_10:
      v13 = v2 + 1;
      v14 = &v2[2].i8[1];
      v3 += 16;
      ++v2;
      if (v14 >= a2)
      {
        goto LABEL_13;
      }
    }

    v10 = v2->u8[v5];
    while (1)
    {
      v11 = *v8++;
      v12 = v11 & 0xFF0000FF | (v10 << 8);
      if (v12 < 2)
      {
        return (v2 + v7);
      }

      ++v7;
      v10 = v12;
      if (v7 == 16)
      {
        goto LABEL_10;
      }
    }
  }

  return a2;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7928]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2, const std::nothrow_t *a3)
{
    ;
  }
}

void operator new()
{
    ;
  }
}