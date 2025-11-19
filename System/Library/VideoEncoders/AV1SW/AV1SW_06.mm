uint64_t sub_2779953CC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  v12 = a1;
  v13 = (a1 + 245616);
  v14 = byte_277C3F990[a5];
  v15 = byte_277C36D60[a5];
  v16 = v14 >> 1;
  v17 = v15 >> 1;
  v18 = *(a3 + 12);
  if (*(*(a1 + 270312) + 28) == 12)
  {
    v19 = *(a1 + 246152);
    if (v18 == v19)
    {
      v20 = (v14 >> 2) + 1;
    }

    else
    {
      v20 = v14 >> 1;
    }

    if (v18 == v19)
    {
      v14 = v16 + 1;
    }

    if (*(a3 + 4) == *(a1 + 246148))
    {
      v21 = (v15 >> 2) + 1;
    }

    else
    {
      v21 = v15 >> 1;
    }

    if (*(a3 + 4) == *(a1 + 246148))
    {
      v15 = v17 + 1;
    }
  }

  else
  {
    v21 = v15 >> 1;
    v20 = v14 >> 1;
  }

  v22 = v14 + a7;
  if (v22 <= v18 && a10 == 2 && (v15 + a6) <= *(a3 + 4))
  {
    if (*(a1 + 246152) > a7 && *(a1 + 246148) > a6)
    {
      v24 = byte_277C3F990[*(a1 + 246176)];
      v25 = (*(a1 + 246160) + 176 * (a7 / v24 + *(a1 + 246172) * (a6 / v24)));
      *(*(a1 + 246184) + 8 * (a7 + *(a1 + 246196) * a6)) = v25;
      *v25 = a5;
    }

    return 1;
  }

  if (a10 == 1)
  {
    return 0;
  }

  if (a5 == a9)
  {
    if ((*v13 & 0xFD) == 0)
    {
      a4[3] = (*a4 - ((a4[1] * a4[1]) >> a4[2])) << 8 >> a4[2];
    }

    if (v22 <= v18 && (v15 + a6) <= *(a3 + 4) && a4[3] < a8)
    {
      if (*(a1 + 246152) > a7 && *(a1 + 246148) > a6)
      {
        v26 = byte_277C3F990[*(a1 + 246176)];
        v27 = (*(a1 + 246160) + 176 * (a7 / v26 + *(a1 + 246172) * (a6 / v26)));
        *(*(a1 + 246184) + 8 * (a7 + *(a1 + 246196) * a6)) = v27;
        *v27 = 6;
      }

      return 1;
    }

    return 0;
  }

  if (a5 <= a9)
  {
    return 0;
  }

  if ((*v13 & 0xFD) == 0)
  {
    v30 = (*a4 - ((a4[1] * a4[1]) >> a4[2])) << 8 >> a4[2];
    a4[3] = v30;
    if (a5 > 9 || v30 > 16 * a8)
    {
      return 0;
    }
  }

  if (v22 <= v18)
  {
    v29 = v15 + a6;
    v28 = *(a3 + 4);
    if ((v15 + a6) <= v28 && a4[3] < a8)
    {
      v31 = a6;
      v32 = a7;
      v33 = a5;
LABEL_59:
      sub_277995850(a1, v31, v32, v33);
      return 1;
    }
  }

  else
  {
    v28 = *(a3 + 4);
    v29 = v15 + a6;
  }

  if (v29 <= v28 && v20 + a7 <= v18)
  {
    v34 = ((0x249u >> (a5 - 6)) & 1) != 0 ? *(&unk_277C31428 + qword_277BC0D28[(a5 - 6)] + 12) : 255;
    v35 = byte_277C3BCDE[4 * v34 + 2 * *(a2 + 2628) + *(a2 + 2632)];
    v36 = (a4[12] - ((a4[13] * a4[13]) >> a4[14])) << 8 >> a4[14];
    a4[15] = v36;
    v37 = (a4[16] - ((a4[17] * a4[17]) >> a4[18])) << 8 >> a4[18];
    a4[19] = v37;
    if (v36 < a8 && v37 < a8 && v35 != 255)
    {
      sub_277995850(a1, a6, a7, v34);
      v32 = v16 + a7;
      a1 = v12;
      v31 = a6;
LABEL_58:
      v33 = v34;
      goto LABEL_59;
    }
  }

  result = 0;
  if (v22 <= v18 && v21 + a6 <= v28)
  {
    if ((0x249u >> (a5 - 6)))
    {
      v34 = *(&unk_277C31428 + qword_277BC0D28[(a5 - 6)] + 6);
    }

    else
    {
      v34 = 255;
    }

    v38 = byte_277C3BCDE[4 * v34 + 2 * *(a2 + 2628) + *(a2 + 2632)];
    v39 = (a4[4] - ((a4[5] * a4[5]) >> a4[6])) << 8 >> a4[6];
    a4[7] = v39;
    v40 = (a4[8] - ((a4[9] * a4[9]) >> a4[10])) << 8 >> a4[10];
    a4[11] = v40;
    if (v39 >= a8)
    {
      return 0;
    }

    result = 0;
    if (v40 < a8 && v38 != 255)
    {
      sub_277995850(v12, a6, a7, v34);
      v31 = v17 + a6;
      a1 = v12;
      v32 = a7;
      goto LABEL_58;
    }
  }

  return result;
}

uint64_t sub_277995850(uint64_t result, int a2, int a3, char a4)
{
  if (*(result + 246152) > a3 && *(result + 246148) > a2)
  {
    v4 = byte_277C3F990[*(result + 246176)];
    v5 = (*(result + 246160) + 176 * (a3 / v4 + *(result + 246172) * (a2 / v4)));
    *(*(result + 246184) + 8 * (a3 + *(result + 246196) * a2)) = v5;
    *v5 = a4;
  }

  return result;
}

uint64_t sub_2779958B4(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -4;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8);
  *a5 = v14;
  return v14 - ((v13 * v13) >> 4);
}

uint64_t sub_27799593C(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -8;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8);
  *a5 = v14;
  return v14 - ((v13 * v13) >> 5);
}

uint64_t sub_2779959C4(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -4;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 5);
}

uint64_t sub_277995A34(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -8;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 6);
}

uint64_t sub_277995AA4(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 7);
}

uint64_t sub_277995B14(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v16;
  return v16 - ((v15 * v15) >> 7);
}

uint64_t sub_277995BA0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v16;
  return v16 - ((v15 * v15) >> 8);
}

uint64_t sub_277995C2C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v16;
  return v16 - ((v15 * v15) >> 9);
}

uint64_t sub_277995CB8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 9);
}

uint64_t sub_277995D40(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 10);
}

uint64_t sub_277995DC8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 11);
}

uint64_t sub_277995E50(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 11);
}

uint64_t sub_277995ED8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 12);
}

uint64_t sub_277995F60(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 128;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 13);
}

uint64_t sub_277995FE8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x78);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 13);
}

uint64_t sub_277996070(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 128;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x78);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 14);
}

uint64_t sub_2779960F8(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -4;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8) + 8;
  *a5 = v14 >> 4;
  v15 = (v14 >> 4) - (((((v13 << 30) + 0x80000000) >> 32) * (((v13 << 30) + 0x80000000) >> 32)) >> 4);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_2779961A0(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -8;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8) + 8;
  *a5 = v14 >> 4;
  v15 = (v14 >> 4) - (((((v13 << 30) + 0x80000000) >> 32) * (((v13 << 30) + 0x80000000) >> 32)) >> 5);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277996248(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -4;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 8) >> 4;
  v15 = ((v14 + 8) >> 4) - (((((v13 << 30) + 0x80000000) >> 32) * (((v13 << 30) + 0x80000000) >> 32)) >> 5);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_2779962D4(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -8;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 8) >> 4;
  v15 = ((v14 + 8) >> 4) - (((((v13 << 30) + 0x80000000) >> 32) * (((v13 << 30) + 0x80000000) >> 32)) >> 6);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277996360(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 8) >> 4;
  v15 = ((v14 + 8) >> 4) - (((((v13 << 30) + 0x80000000) >> 32) * (((v13 << 30) + 0x80000000) >> 32)) >> 7);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_2779963EC(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 8) >> 4;
  v17 = ((v16 + 8) >> 4) - (((((v15 << 30) + 0x80000000) >> 32) * (((v15 << 30) + 0x80000000) >> 32)) >> 7);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277996494(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 8) >> 4;
  v17 = ((v16 + 8) >> 4) - (((((v15 << 30) + 0x80000000) >> 32) * (((v15 << 30) + 0x80000000) >> 32)) >> 8);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_27799653C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 8) >> 4;
  v17 = ((v16 + 8) >> 4) - (((((v15 << 30) + 0x80000000) >> 32) * (((v15 << 30) + 0x80000000) >> 32)) >> 9);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_2779965E4(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 9);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277996688(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 10);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_27799672C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 11);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_2779967D0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 11);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277996874(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 12);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277996918(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 128;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 13);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_2779969BC(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x78);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 13);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277996A60(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 128;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x78);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 14);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277996B04(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -4;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8) + 128;
  *a5 = v14 >> 8;
  v15 = (v14 >> 8) - (((((v13 << 28) + 0x80000000) >> 32) * (((v13 << 28) + 0x80000000) >> 32)) >> 4);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277996BAC(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -8;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8) + 128;
  *a5 = v14 >> 8;
  v15 = (v14 >> 8) - (((((v13 << 28) + 0x80000000) >> 32) * (((v13 << 28) + 0x80000000) >> 32)) >> 5);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277996C54(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -4;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 128) >> 8;
  v15 = ((v14 + 128) >> 8) - (((((v13 << 28) + 0x80000000) >> 32) * (((v13 << 28) + 0x80000000) >> 32)) >> 5);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277996CE0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -8;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 128) >> 8;
  v15 = ((v14 + 128) >> 8) - (((((v13 << 28) + 0x80000000) >> 32) * (((v13 << 28) + 0x80000000) >> 32)) >> 6);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277996D6C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 128) >> 8;
  v15 = ((v14 + 128) >> 8) - (((((v13 << 28) + 0x80000000) >> 32) * (((v13 << 28) + 0x80000000) >> 32)) >> 7);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277996DF8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 128) >> 8;
  v17 = ((v16 + 128) >> 8) - (((((v15 << 28) + 0x80000000) >> 32) * (((v15 << 28) + 0x80000000) >> 32)) >> 7);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277996EA0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 128) >> 8;
  v17 = ((v16 + 128) >> 8) - (((((v15 << 28) + 0x80000000) >> 32) * (((v15 << 28) + 0x80000000) >> 32)) >> 8);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277996F48(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 128) >> 8;
  v17 = ((v16 + 128) >> 8) - (((((v15 << 28) + 0x80000000) >> 32) * (((v15 << 28) + 0x80000000) >> 32)) >> 9);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277996FF0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 128) >> 8;
  v16 = ((v15 + 128) >> 8) - (((((v14 << 28) + 0x80000000) >> 32) * (((v14 << 28) + 0x80000000) >> 32)) >> 9);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277997094(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 128) >> 8;
  v16 = ((v15 + 128) >> 8) - (((((v14 << 28) + 0x80000000) >> 32) * (((v14 << 28) + 0x80000000) >> 32)) >> 10);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277997138(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1;
  v7 = 2 * a3;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 32;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = 0;
      v15 = -8;
      do
      {
        v16 = vsubq_s16(*(v6 + v14), *(v7 + v14));
        v8 = vpadalq_s16(v8, v16);
        v11 = vmlal_s16(v11, *v16.i8, *v16.i8);
        v12 = vmlal_high_s16(v12, v16, v16);
        v15 += 8;
        v14 += 16;
      }

      while (v15 < 0x18);
      v6 += 2 * a2;
      v7 += 2 * a4;
      ++v13;
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 32;
  }

  while (v5 < 0x40);
  v17 = vaddvq_s32(v8);
  v18 = vaddvq_s64(v9);
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 11);
  return v19 & ~(v19 >> 63);
}

uint64_t sub_277997208(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1;
  v7 = 2 * a3;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = 0;
      v15 = -8;
      do
      {
        v16 = vsubq_s16(*(v6 + v14), *(v7 + v14));
        v8 = vpadalq_s16(v8, v16);
        v11 = vmlal_s16(v11, *v16.i8, *v16.i8);
        v12 = vmlal_high_s16(v12, v16, v16);
        v15 += 8;
        v14 += 16;
      }

      while (v15 < 0x38);
      v6 += 2 * a2;
      v7 += 2 * a4;
      ++v13;
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 16;
  }

  while (v5 < 0x20);
  v17 = vaddvq_s32(v8);
  v18 = vaddvq_s64(v9);
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 11);
  return v19 & ~(v19 >> 63);
}

uint64_t sub_2779972D8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1;
  v7 = 2 * a3;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = 0;
      v15 = -8;
      do
      {
        v16 = vsubq_s16(*(v6 + v14), *(v7 + v14));
        v8 = vpadalq_s16(v8, v16);
        v11 = vmlal_s16(v11, *v16.i8, *v16.i8);
        v12 = vmlal_high_s16(v12, v16, v16);
        v15 += 8;
        v14 += 16;
      }

      while (v15 < 0x38);
      v6 += 2 * a2;
      v7 += 2 * a4;
      ++v13;
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 16;
  }

  while (v5 < 0x40);
  v17 = vaddvq_s32(v8);
  v18 = vaddvq_s64(v9);
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 12);
  return v19 & ~(v19 >> 63);
}

uint64_t sub_2779973A8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1;
  v7 = 2 * a3;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = 0;
      v15 = -8;
      do
      {
        v16 = vsubq_s16(*(v6 + v14), *(v7 + v14));
        v8 = vpadalq_s16(v8, v16);
        v11 = vmlal_s16(v11, *v16.i8, *v16.i8);
        v12 = vmlal_high_s16(v12, v16, v16);
        v15 += 8;
        v14 += 16;
      }

      while (v15 < 0x38);
      v6 += 2 * a2;
      v7 += 2 * a4;
      ++v13;
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 16;
  }

  while (v5 < 0x80);
  v17 = vaddvq_s32(v8);
  v18 = vaddvq_s64(v9);
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 13);
  return v19 & ~(v19 >> 63);
}

uint64_t sub_277997478(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1;
  v7 = 2 * a3;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = 0;
      v15 = -8;
      do
      {
        v16 = vsubq_s16(*(v6 + v14), *(v7 + v14));
        v8 = vpadalq_s16(v8, v16);
        v11 = vmlal_s16(v11, *v16.i8, *v16.i8);
        v12 = vmlal_high_s16(v12, v16, v16);
        v15 += 8;
        v14 += 16;
      }

      while (v15 < 0x78);
      v6 += 2 * a2;
      v7 += 2 * a4;
      ++v13;
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 8;
  }

  while (v5 < 0x40);
  v17 = vaddvq_s32(v8);
  v18 = vaddvq_s64(v9);
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 13);
  return v19 & ~(v19 >> 63);
}

uint64_t sub_277997548(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 0;
  v6 = 2 * a1;
  v7 = 2 * a3;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = v5;
    do
    {
      v14 = 0;
      v15 = -8;
      do
      {
        v16 = vsubq_s16(*(v6 + v14), *(v7 + v14));
        v8 = vpadalq_s16(v8, v16);
        v11 = vmlal_s16(v11, *v16.i8, *v16.i8);
        v12 = vmlal_high_s16(v12, v16, v16);
        v15 += 8;
        v14 += 16;
      }

      while (v15 < 0x78);
      v6 += 2 * a2;
      v7 += 2 * a4;
      ++v13;
    }

    while (v13 < v10);
    if (v10 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v10;
    }

    v9 = vpadalq_s32(vpadalq_s32(v9, v11), v12);
    v10 += 8;
  }

  while (v5 < 0x80);
  v17 = vaddvq_s32(v8);
  v18 = vaddvq_s64(v9);
  *a5 = (v18 + 128) >> 8;
  v19 = ((v18 + 128) >> 8) - (((((v17 << 28) + 0x80000000) >> 32) * (((v17 << 28) + 0x80000000) >> 32)) >> 14);
  return v19 & ~(v19 >> 63);
}

uint64_t sub_277997618(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, int *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -16;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8);
  *a5 = v14;
  return v14 - ((v13 * v13) >> 6);
}

uint64_t sub_2779976A0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 8);
}

uint64_t sub_277997710(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 4;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v16;
  return v16 - ((v15 * v15) >> 6);
}

uint64_t sub_27799779C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v16;
  return v16 - ((v15 * v15) >> 10);
}

uint64_t sub_277997828(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 8);
}

uint64_t sub_2779978B0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = v15;
  return v15 - ((v14 * v14) >> 10);
}

uint64_t sub_277997938(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -16;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8) + 8;
  *a5 = v14 >> 4;
  v15 = (v14 >> 4) - (((((v13 << 30) + 0x80000000) >> 32) * (((v13 << 30) + 0x80000000) >> 32)) >> 6);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_2779979E0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 8) >> 4;
  v15 = ((v14 + 8) >> 4) - (((((v13 << 30) + 0x80000000) >> 32) * (((v13 << 30) + 0x80000000) >> 32)) >> 8);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277997A6C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 4;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 8) >> 4;
  v17 = ((v16 + 8) >> 4) - (((((v15 << 30) + 0x80000000) >> 32) * (((v15 << 30) + 0x80000000) >> 32)) >> 6);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277997B14(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 8) >> 4;
  v17 = ((v16 + 8) >> 4) - (((((v15 << 30) + 0x80000000) >> 32) * (((v15 << 30) + 0x80000000) >> 32)) >> 10);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277997BBC(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 8);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277997C60(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 8) >> 4;
  v16 = ((v15 + 8) >> 4) - (((((v14 << 30) + 0x80000000) >> 32) * (((v14 << 30) + 0x80000000) >> 32)) >> 10);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_277997D04(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -16;
  do
  {
    v10.i64[0] = *v5;
    v10.i64[1] = *(v5 + 2 * a2);
    v11.i64[0] = *v6;
    v11.i64[1] = *(v6 + 2 * a4);
    v12 = vsubq_s16(v10, v11);
    v7 = vaddq_s16(v12, v7);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v12.i8, *v12.i8), v12, v12);
    v6 = (v6 + 2 * (2 * a4));
    v5 = (v5 + 2 * (2 * a2));
    v9 += 2;
  }

  while (v9);
  v13 = vaddlvq_s16(v7);
  v14 = vaddvq_s32(v8) + 128;
  *a5 = v14 >> 8;
  v15 = (v14 >> 8) - (((((v13 << 28) + 0x80000000) >> 32) * (((v13 << 28) + 0x80000000) >> 32)) >> 6);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277997DAC(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v11 = vsubq_s16(*v5, *v6);
    v9 = vpadalq_s16(v9, v11);
    v7 = vmlal_s16(v7, *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(v8, v11, v11);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v10++, 1));
  v13 = vaddvq_s32(v9);
  v14 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v14 + 128) >> 8;
  v15 = ((v14 + 128) >> 8) - (((((v13 << 28) + 0x80000000) >> 32) * (((v13 << 28) + 0x80000000) >> 32)) >> 8);
  return v15 & ~(v15 >> 63);
}

uint64_t sub_277997E38(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 4;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 128) >> 8;
  v17 = ((v16 + 128) >> 8) - (((((v15 << 28) + 0x80000000) >> 32) * (((v15 << 28) + 0x80000000) >> 32)) >> 6);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277997EE0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 64;
  do
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = vsubq_s16(*(v5 + 2 * v11), *(v6 + 2 * v11));
      v9 = vpadalq_s16(v9, v14);
      v7 = vmlal_s16(v7, *v14.i8, *v14.i8);
      v8 = vmlal_high_s16(v8, v14, v14);
      v11 = 8;
      v12 = 0;
    }

    while ((v13 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v10;
  }

  while (v10);
  v15 = vaddvq_s32(v9);
  v16 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v16 + 128) >> 8;
  v17 = ((v16 + 128) >> 8) - (((((v15 << 28) + 0x80000000) >> 32) * (((v15 << 28) + 0x80000000) >> 32)) >> 10);
  return v17 & ~(v17 >> 63);
}

uint64_t sub_277997F88(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 8;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x18);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 128) >> 8;
  v16 = ((v15 + 128) >> 8) - (((((v14 << 28) + 0x80000000) >> 32) * (((v14 << 28) + 0x80000000) >> 32)) >> 8);
  return v16 & ~(v16 >> 63);
}

uint64_t sub_27799802C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 16;
  do
  {
    v11 = 0;
    v12 = -8;
    do
    {
      v13 = vsubq_s16(*(v5 + v11), *(v6 + v11));
      v9 = vpadalq_s16(v9, v13);
      v7 = vmlal_s16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_s16(v8, v13, v13);
      v12 += 8;
      v11 += 16;
    }

    while (v12 < 0x38);
    v6 += 2 * a4;
    v5 += 2 * a2;
    --v10;
  }

  while (v10);
  v14 = vaddvq_s32(v9);
  v15 = vaddlvq_u32(vaddq_s32(v8, v7));
  *a5 = (v15 + 128) >> 8;
  v16 = ((v15 + 128) >> 8) - (((((v14 << 28) + 0x80000000) >> 32) * (((v14 << 28) + 0x80000000) >> 32)) >> 10);
  return v16 & ~(v16 >> 63);
}

float sub_2779980D0(uint64_t a1, int a2, uint64_t a3, int a4, float *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 16;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = vabdq_u16(*(v5 + 2 * v10), *(v6 + 2 * v10));
      v7 = vmlal_u16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_u16(v8, v13, v13);
      v10 = 8;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v9;
  }

  while (v9);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v8, v7)));
  *a5 = result;
  return result;
}

uint64_t sub_277998140(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 16;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = vabdq_u16(*(v5 + 2 * v10), *(v6 + 2 * v10));
      v7 = vmlal_u16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_u16(v8, v13, v13);
      v10 = 8;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v9;
  }

  while (v9);
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 8) >> 4;
  *a5 = result;
  return result;
}

uint64_t sub_2779981B8(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 16;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = vabdq_u16(*(v5 + 2 * v10), *(v6 + 2 * v10));
      v7 = vmlal_u16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_u16(v8, v13, v13);
      v10 = 8;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v9;
  }

  while (v9);
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 128) >> 8;
  *a5 = result;
  return result;
}

float sub_277998230(uint64_t a1, int a2, uint64_t a3, int a4, float *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 8;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = vabdq_u16(*(v5 + 2 * v10), *(v6 + 2 * v10));
      v7 = vmlal_u16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_u16(v8, v13, v13);
      v10 = 8;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v9;
  }

  while (v9);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v8, v7)));
  *a5 = result;
  return result;
}

uint64_t sub_2779982A0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 8;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = vabdq_u16(*(v5 + 2 * v10), *(v6 + 2 * v10));
      v7 = vmlal_u16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_u16(v8, v13, v13);
      v10 = 8;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v9;
  }

  while (v9);
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 8) >> 4;
  *a5 = result;
  return result;
}

uint64_t sub_277998318(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = 2 * a1;
  v6 = 2 * a3;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 8;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = vabdq_u16(*(v5 + 2 * v10), *(v6 + 2 * v10));
      v7 = vmlal_u16(v7, *v13.i8, *v13.i8);
      v8 = vmlal_high_u16(v8, v13, v13);
      v10 = 8;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    v5 += 2 * a2;
    v6 += 2 * a4;
    --v9;
  }

  while (v9);
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 128) >> 8;
  *a5 = result;
  return result;
}

float sub_277998390(uint64_t a1, int a2, uint64_t a3, int a4, float *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -16;
  do
  {
    v10 = vabdq_u16(*v5, *v6);
    v7 = vmlal_u16(v7, *v10.i8, *v10.i8);
    v8 = vmlal_high_u16(v8, v10, v10);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v9++, 1));
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v8, v7)));
  *a5 = result;
  return result;
}

uint64_t sub_2779983E4(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -16;
  do
  {
    v10 = vabdq_u16(*v5, *v6);
    v7 = vmlal_u16(v7, *v10.i8, *v10.i8);
    v8 = vmlal_high_u16(v8, v10, v10);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v9++, 1));
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 8) >> 4;
  *a5 = result;
  return result;
}

uint64_t sub_277998440(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -16;
  do
  {
    v10 = vabdq_u16(*v5, *v6);
    v7 = vmlal_u16(v7, *v10.i8, *v10.i8);
    v8 = vmlal_high_u16(v8, v10, v10);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v9++, 1));
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 128) >> 8;
  *a5 = result;
  return result;
}

float sub_27799849C(uint64_t a1, int a2, uint64_t a3, int a4, float *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -8;
  do
  {
    v10 = vabdq_u16(*v5, *v6);
    v7 = vmlal_u16(v7, *v10.i8, *v10.i8);
    v8 = vmlal_high_u16(v8, v10, v10);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v9++, 1));
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v8, v7)));
  *a5 = result;
  return result;
}

uint64_t sub_2779984F0(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -8;
  do
  {
    v10 = vabdq_u16(*v5, *v6);
    v7 = vmlal_u16(v7, *v10.i8, *v10.i8);
    v8 = vmlal_high_u16(v8, v10, v10);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v9++, 1));
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 8) >> 4;
  *a5 = result;
  return result;
}

uint64_t sub_27799854C(uint64_t a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = (2 * a1);
  v6 = (2 * a3);
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = -8;
  do
  {
    v10 = vabdq_u16(*v5, *v6);
    v7 = vmlal_u16(v7, *v10.i8, *v10.i8);
    v8 = vmlal_high_u16(v8, v10, v10);
    v6 = (v6 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v9++, 1));
  result = (vaddvq_s32(vaddq_s32(v8, v7)) + 128) >> 8;
  *a5 = result;
  return result;
}

uint64_t sub_2779985A8()
{
  result = sub_2779D9D84();
  v1 = sub_277A7DE50;
  if ((result & 4) == 0)
  {
    v1 = sub_2779DA624;
  }

  off_280ABC828 = v1;
  if ((result & 4) != 0)
  {
    v2 = sub_277B2BE10;
  }

  else
  {
    v2 = sub_277A2963C;
  }

  v3 = sub_27799BA50;
  if ((result & 4) != 0)
  {
    v4 = sub_277A3AFBC;
  }

  else
  {
    v4 = sub_2779C7C00;
  }

  if ((result & 4) != 0)
  {
    v5 = sub_277A39EEC;
  }

  else
  {
    v5 = sub_2779C62A0;
  }

  if ((result & 4) != 0)
  {
    v6 = sub_277A3A630;
  }

  else
  {
    v6 = sub_2779C6BFC;
  }

  if ((result & 4) != 0)
  {
    v7 = sub_277A8427C;
  }

  else
  {
    v7 = sub_277A6FB68;
  }

  if ((result & 4) != 0)
  {
    v8 = sub_277A85464;
  }

  else
  {
    v8 = sub_277A711B8;
  }

  v9 = sub_2779D7808;
  if ((result & 2) == 0)
  {
    v9 = sub_2779FB6FC;
  }

  if ((result & 8) == 0)
  {
    v3 = v2;
  }

  off_280AB5FB0 = v3;
  if ((result & 8) != 0)
  {
    v10 = sub_277A8C97C;
  }

  else
  {
    v10 = v4;
  }

  qword_280AB5FB8 = v10;
  if ((result & 8) != 0)
  {
    v11 = sub_277A8BA4C;
  }

  else
  {
    v11 = v5;
  }

  qword_280AB5FC0 = v11;
  if ((result & 8) != 0)
  {
    v12 = sub_277A8C0E0;
  }

  else
  {
    v12 = v6;
  }

  off_280AB5FC8 = v12;
  if ((result & 8) != 0)
  {
    v13 = sub_277998F90;
  }

  else
  {
    v13 = v7;
  }

  off_280AB5FD0 = v13;
  if ((result & 8) != 0)
  {
    v14 = sub_27799ABBC;
  }

  else
  {
    v14 = v8;
  }

  off_280AB5FD8 = v14;
  off_280AB5FE0 = v9;
  v15 = sub_277B1C6E4;
  if ((result & 8) == 0)
  {
    v15 = sub_277AE5928;
  }

  off_280ABC820 = v15;
  return result;
}

uint64_t sub_277998798(int16x8_t *a1, unsigned int a2, int a3, int a4, float *a5, float *a6)
{
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  if (a4 >= 4)
  {
    v10 = 0;
    v11 = a1;
    do
    {
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      if (a3 >= 4)
      {
        v16 = 0;
        v17 = v11;
        do
        {
          v18 = vshld_n_s64(*v17, 0x10uLL);
          v19 = *(v17 + 2 * a2);
          v20 = vshld_n_s64(v19, 0x10uLL);
          v21 = *(v17 + 4 * a2);
          v22.i64[0] = vshld_n_s64(v21, 0x10uLL);
          v13 = vmlal_s16(vmlal_s16(vmlal_s16(v13, *v22.i8, vshld_n_s64(*(v17 + 6 * a2), 0x10uLL)), v18, v20), *v22.i8, v20);
          v22.u64[1] = v18;
          v12 = vmlal_s16(vmlal_s16(vmlal_s16(v12, v21, *v22.i8), *v17, v18), v19, v20);
          v14 = vpadalq_s16(vaddw_s16(v14, v20), v22);
          v15 = vmlal_s16(vmlal_s16(vmlal_s16(v15, *v22.i8, *v22.i8), v18, v18), v20, v20);
          v16 += 3;
          v17 = (v17 + 6);
        }

        while (v16 <= a3 - 4);
      }

      v8 = vpadalq_s32(v8, v12);
      v7 = vpadalq_s32(v7, v13);
      v9 = vpadalq_s32(v9, v14);
      v6 = vpadalq_s32(v6, v15);
      v10 += 3;
      v11 = (v11 + 6 * a2);
    }

    while (v10 <= (a4 - 4));
  }

  v23 = vaddvq_s64(v8);
  v24 = vaddvq_s64(v7);
  v25 = vaddvq_s64(v6);
  v26 = vaddvq_s64(v9);
  v27 = a4 % 3;
  if (a4 % 3 == 1)
  {
    v28 = ((a4 - 1) * a2);
    v29 = &a1->i16[v28];
    v30 = *v29;
    v31 = v26 + v30;
    v32 = (*v29 * *v29);
    v33 = v25 + v32;
    if (a3 > 7)
    {
      if (a3 < 0xA)
      {
        v42 = 0;
        v39 = 0uLL;
        v38 = 0uLL;
        v37 = 0uLL;
      }

      else
      {
        v34 = 0;
        v35 = &a1->i16[v28 + 1];
        v36 = a3 + 7;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        do
        {
          v40 = *(v35 - 2);
          v41 = *v35++;
          v39 = vmlal_high_s16(vmlal_s16(v39, *v40.i8, *v41.i8), v40, v41);
          v38 = vmlal_high_s16(vmlal_s16(v38, *v41.i8, *v41.i8), v41, v41);
          v37 = vpadalq_s16(v37, v41);
          v34 += 8;
          v36 -= 8;
        }

        while (v36 > 0x10);
        v42 = v34 & 0xFFFFFFF8;
      }

      v76 = *&v29[v42];
      v77 = vextq_s8(v76, 0, 2uLL);
      v76.i16[7] = 0;
      v23 += vaddvq_s64(vpaddlq_s32(vmlal_high_s16(vmlal_s16(v39, *v76.i8, *v77.i8), v76, v77)));
      v78 = vaddvq_s32(vpadalq_s16(v37, v77));
      v79 = vaddvq_s64(vpaddlq_s32(vmlal_high_s16(vmlal_s16(v38, *v77.i8, *v77.i8), v77, v77)));
      v31 += v78;
      v33 += v79;
      v30 += v78;
LABEL_30:
      v32 += v79;
      goto LABEL_31;
    }

    if (a3 >= 2)
    {
      v64 = (a3 - 1);
      v65 = &a1->i16[v28 + 1];
      do
      {
        v66 = *v65;
        v23 += v66 * *(v65 - 1);
        v31 += v66;
        v67 = (v66 * v66);
        v33 += v67;
        v30 += v66;
        v32 += v67;
        ++v65;
        --v64;
      }

      while (v64);
    }
  }

  else
  {
    v43 = ((a4 - 2) * a2);
    v44 = &a1->i16[v43];
    v45 = *v44;
    v46 = ((a4 - 1) * a2);
    v47 = &a1->i16[v46];
    v30 = *v47;
    v31 = v26 + v30 + v45;
    v32 = (v30 * v30);
    v33 = v25 + (v32 + v45 * v45);
    if (a3 > 7)
    {
      if (a3 < 0xA)
      {
        v63 = 0;
        v57 = 0uLL;
        v56 = 0uLL;
        v55 = 0uLL;
        v54 = 0uLL;
        v53 = 0uLL;
        v52 = 0uLL;
      }

      else
      {
        v48 = 0;
        v49 = &a1->i16[v46 + 1];
        v50 = &a1->i16[v43 + 1];
        v51 = a3 + 7;
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        do
        {
          v58 = *(v50 - 2);
          v59 = *v50++;
          v60 = v59;
          v61 = *(v49 - 2);
          v62 = *v49++;
          v54 = vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(v54, *v58.i8, *v60.i8), v58, v60), *v61.i8, *v62.i8), v61, v62);
          v55 = vmlal_high_s16(vmlal_s16(v55, *v58.i8, *v61.i8), v58, v61);
          v53 = vmlal_high_s16(vmlal_s16(v53, *v62.i8, *v62.i8), v62, v62);
          v52 = vmlal_high_s16(vmlal_s16(v52, *v60.i8, *v60.i8), v60, v60);
          v57 = vpadalq_s16(v57, v62);
          v56 = vpadalq_s16(vpadalq_s16(v56, v62), v60);
          v48 += 8;
          v51 -= 8;
        }

        while (v51 > 0x10);
        v63 = v48 & 0xFFFFFFF8;
      }

      v80 = v63;
      v81 = *&v44[v80];
      v82 = vextq_s8(v81, 0, 2uLL);
      v81.i16[7] = 0;
      v83 = *&v47[v80];
      v84 = vextq_s8(v83, 0, 2uLL);
      v83.i16[7] = 0;
      v23 += vaddvq_s64(vpaddlq_s32(vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmlal_s16(v54, *v81.i8, *v82.i8), v81, v82), *v83.i8, *v84.i8), v83, v84)));
      v24 += vaddvq_s64(vpaddlq_s32(vmlal_high_s16(vmlal_s16(v55, *v81.i8, *v83.i8), v81, v83)));
      v31 += vaddvq_s32(vpadalq_s16(vpadalq_s16(v56, v84), v82));
      v30 += vaddvq_s32(vpadalq_s16(v57, v84));
      v79 = vaddvq_s64(vpaddlq_s32(vmlal_high_s16(vmlal_s16(v53, *v84.i8, *v84.i8), v84, v84)));
      v33 += vaddvq_s64(vpaddlq_s32(vmlal_high_s16(vmlal_s16(v52, *v82.i8, *v82.i8), v82, v82))) + v79;
      goto LABEL_30;
    }

    if (a3 >= 2)
    {
      v68 = (a3 - 1);
      v69 = &a1->i16[v43 + 1];
      v70 = &a1->i16[v46 + 1];
      do
      {
        v71 = *(v69 - 1);
        v72 = *v69;
        v73 = *(v70 - 1);
        v74 = *v70;
        v24 += v73 * v71;
        v23 += v72 * v71 + (v74 * v73);
        v31 += v74 + v72;
        v75 = (v74 * v74);
        v33 += (v75 + v72 * v72);
        v30 += v74;
        v32 += v75;
        ++v69;
        ++v70;
        --v68;
      }

      while (v68);
    }
  }

LABEL_31:
  v85 = &a1->i16[a3];
  if (a3 % 3 == 1)
  {
    v86 = *(v85 - 1);
    v87 = v86;
    v88 = v31 + v86;
    v89 = (v86 * v86);
    v90 = v33 + v89;
    if (a4 >= 2)
    {
      v91 = 0;
      if (v27 == 1)
      {
        v92 = -2;
      }

      else
      {
        v92 = -3;
      }

      v93 = v92 + a4;
      v94 = &a1->i16[a3 - 1];
      do
      {
        v95 = *v94;
        v96 = v91 < v93;
        v97 = v91 + 1;
        v94 += a2;
        v98 = *v94;
        v24 += v98 * v95;
        v87 += v98;
        v99 = (v98 * v98);
        v89 += v99;
        if (!v96)
        {
          v99 = 0;
        }

        v90 += v99;
        if (!v96)
        {
          v98 = 0;
        }

        v88 += v98;
        v91 = v97;
      }

      while (a4 - 1 != v97);
    }
  }

  else
  {
    v100 = *(v85 - 2);
    v87 = *(v85 - 1);
    v88 = v31 + v87 + v100;
    v89 = (v87 * v87);
    v90 = v33 + (v89 + v100 * v100);
    if (a4 >= 2)
    {
      v101 = 0;
      if (v27 == 1)
      {
        v102 = -2;
      }

      else
      {
        v102 = -3;
      }

      v103 = v102 + a4;
      v104 = &a1->i16[a3 - 2];
      v105 = a2;
      do
      {
        v106 = v104[1];
        v107 = v104[a2];
        if (v27 == 1 || v101 < (a4 - 2))
        {
          v108 = *v104;
          v23 += v108 * v106;
          v24 += v108 * v107;
        }

        v109 = v101 < v103;
        v110 = v101 + 1;
        v111 = v104[v105 + 1];
        v87 += v111;
        v112 = (v111 * v111);
        v89 += v112;
        v113 = v88 + v111 + v107;
        v114 = v90 + (v112 + v107 * v107);
        if (v109)
        {
          v90 = v114;
        }

        if (v109)
        {
          v88 = v113;
        }

        v24 += v111 * v106;
        v104 = (v104 + v105 * 2);
        v101 = v110;
      }

      while (a4 - 1 != v110);
    }
  }

  if (a3 < 8)
  {
    if (a3 < 1)
    {
      v120 = 0;
      v121 = 0;
    }

    else
    {
      v121 = 0;
      v120 = 0;
      v122 = a1;
      v123 = a3;
      do
      {
        v124 = v122->i16[0];
        v122 = (v122 + 2);
        v120 += v124;
        v121 += (v124 * v124);
        --v123;
      }

      while (v123);
    }
  }

  else
  {
    v115 = 0;
    v116 = 0uLL;
    v117 = a1;
    v118 = 0uLL;
    do
    {
      v119 = *v117++;
      v118 = vpadalq_s16(v118, v119);
      v116 = vmlal_high_s16(vmlal_s16(v116, *v119.i8, *v119.i8), v119, v119);
      v115 += 8;
    }

    while (v115 < a3);
    v120 = vaddvq_s32(v118);
    v121 = vaddvq_s32(v116);
  }

  if (a4 < 1)
  {
    v126 = 0;
    v125 = 0;
  }

  else
  {
    v125 = 0;
    v126 = 0;
    v127 = a4;
    v128 = 2 * a2;
    do
    {
      v126 += a1->i16[0];
      v125 += (a1->i16[0] * a1->i16[0]);
      a1 = (a1 + v128);
      --v127;
    }

    while (v127);
  }

  v129 = v88 - v87;
  v130 = v88 - v30;
  v131 = ((a3 - 1) * a4);
  result = ((a4 - 1) * a3);
  v133 = result;
  v134 = (v90 - v89) - ((v129 * v129) / v131);
  v135 = (v90 - v32) - ((v130 * v130) / result);
  v136 = 1.0;
  v137 = 1.0;
  if (v134 > 0.0)
  {
    v138 = v88 - v126;
    v139 = (v90 - v125) - ((v138 * v138) / v131);
    v137 = 1.0;
    if (v139 > 0.0)
    {
      v140 = (v23 - ((v138 * v129) / v131)) / sqrtf(v134 * v139);
      if (v140 >= 0.0)
      {
        v137 = v140;
      }

      else
      {
        v137 = 0.0;
      }
    }
  }

  *a5 = v137;
  if (v135 > 0.0)
  {
    v141 = v88 - v120;
    v142 = (v90 - v121) - ((v141 * v141) / v133);
    if (v142 > 0.0)
    {
      v143 = (v24 - ((v141 * v130) / v133)) / sqrtf(v135 * v142);
      if (v143 >= 0.0)
      {
        v136 = v143;
      }

      else
      {
        v136 = 0.0;
      }
    }
  }

  *a6 = v136;
  return result;
}

int16x4_t *sub_277998F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, uint64_t a12)
{
  result = MEMORY[0x28223BE20]();
  v19 = v18;
  v523[4097] = *MEMORY[0x277D85DE8];
  v21 = *(v20 + 8);
  v22 = (*v20 + 2 * (a9 & 0xFu) * v21);
  if (v21 == 12)
  {
    v23 = 12;
  }

  else if (v22->u16[7] | v22->u16[0])
  {
    v23 = 8;
  }

  else if (v22->u16[6] | v22->u16[1])
  {
    v23 = 6;
  }

  else if (v22->u16[5] | v22->u16[2])
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v23 <= 6)
  {
    v24 = 6;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v17 + 8);
  v26 = (*v17 + 2 * (a11 & 0xFu) * v25);
  if (v25 == 12)
  {
    v27 = 12;
  }

  else if (v26->u16[7] | v26->u16[0])
  {
    v27 = 8;
  }

  else if (v26->u16[6] | v26->u16[1])
  {
    v27 = 6;
  }

  else if (v26->u16[5] | v26->u16[2])
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v27 <= 6)
  {
    v28 = 6;
  }

  else
  {
    v28 = v27;
  }

  v29 = v16 + v28 - 1;
  v30 = (v24 >> 1) - 1;
  v31 = (((v28 >> 1) - 1) * v13);
  v32 = -v31;
  v33 = (result - v31 - v30);
  v34 = *v26;
  if (v23 > 6)
  {
    _Q1.i64[0] = xmmword_277BC0DA0.i64[0];
    v44 = *xmmword_277BC0DB0.i8;
    v63 = vshrn_n_s16(*v22, 1uLL);
    v64 = 4 * v13;
    v65 = v13;
    _Q4 = vdupq_lane_s32(v63, 0);
    _Q5 = vdupq_lane_s32(v63, 1);
    v68 = 3 * v13 - v30 - v31;
    v69 = 2 * v13 - v31 - v30;
    v70 = v13 - v31 - v30;
    v71 = v32 - v30;
    v72 = v516;
    do
    {
      v73 = v19 + 8;
      v74 = result;
      v75 = v72;
      do
      {
        v76 = *&v74->i8[v71];
        v77 = *&v74->i8[v70];
        v78 = *&v74->i8[v69];
        v79 = *&v74->i8[v68];
        _Q19 = vqtbl1q_s8(v76, xmmword_277BC0DA0);
        _Q20 = vqtbl1q_s8(v76, xmmword_277BC0DB0);
        _Q7 = vqtbl1q_s8(v76, unk_277BC0DC0);
        __asm
        {
          USDOT           V21.4S, V19.16B, V4.16B
          USDOT           V21.4S, V20.16B, V5.16B
          USDOT           V19.4S, V20.16B, V4.16B
          USDOT           V19.4S, V7.16B, V5.16B
        }

        v87 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
        _Q19 = vqtbl1q_s8(v77, xmmword_277BC0DA0);
        _Q20 = vqtbl1q_s8(v77, xmmword_277BC0DB0);
        _Q16 = vqtbl1q_s8(v77, unk_277BC0DC0);
        __asm
        {
          USDOT           V21.4S, V19.16B, V4.16B
          USDOT           V21.4S, V20.16B, V5.16B
          USDOT           V19.4S, V20.16B, V4.16B
          USDOT           V19.4S, V16.16B, V5.16B
        }

        v95 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
        _Q19 = vqtbl1q_s8(v78, xmmword_277BC0DA0);
        _Q20 = vqtbl1q_s8(v78, xmmword_277BC0DB0);
        _Q17 = vqtbl1q_s8(v78, unk_277BC0DC0);
        __asm
        {
          USDOT           V21.4S, V19.16B, V4.16B
          USDOT           V21.4S, V20.16B, V5.16B
          USDOT           V19.4S, V20.16B, V4.16B
          USDOT           V19.4S, V17.16B, V5.16B
        }

        v103 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
        _Q19 = vqtbl1q_s8(v79, xmmword_277BC0DA0);
        _Q20 = vqtbl1q_s8(v79, xmmword_277BC0DB0);
        _Q18 = vqtbl1q_s8(v79, unk_277BC0DC0);
        __asm
        {
          USDOT           V21.4S, V19.16B, V4.16B
          USDOT           V21.4S, V20.16B, V5.16B
          USDOT           V19.4S, V20.16B, V4.16B
          USDOT           V19.4S, V18.16B, V5.16B
        }

        *v75 = v87;
        v75[16] = v95;
        v75[32] = v103;
        v75[48] = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
        ++v75;
        ++v74;
        v73 -= 8;
      }

      while (v73 > 8);
      v33 = (v33 + v64);
      v72 += 128;
      v111 = v29 - 4;
      result = (result + v64);
      v112 = v29 <= 8;
      v29 -= 4;
    }

    while (!v112);
    do
    {
      v113 = v19 + 8;
      v114 = v33;
      v115 = v72;
      do
      {
        v116 = *v114;
        v114 = (v114 + 8);
        _Q16 = vqtbl1q_s8(v116, xmmword_277BC0DA0);
        _Q17 = vqtbl1q_s8(v116, xmmword_277BC0DB0);
        _Q7 = vqtbl1q_s8(v116, unk_277BC0DC0);
        __asm
        {
          USDOT           V18.4S, V16.16B, V4.16B
          USDOT           V18.4S, V17.16B, V5.16B
          USDOT           V16.4S, V17.16B, V4.16B
          USDOT           V16.4S, V7.16B, V5.16B
        }

        *v115++ = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q16, 2uLL);
        v113 -= 8;
      }

      while (v113 > 8);
      v33 = (v33 + v65);
      v72 += 32;
      --v111;
    }

    while (v111);
  }

  else
  {
    v35 = vshrn_n_s16(*v22, 1uLL);
    _Q1 = vshrn_high_n_s16(vext_s8(v35, v35, 1uLL), *v22, 1uLL);
    if (v19 == 4)
    {
      v37 = v13;
      v38 = 4 * v13;
      v39 = v16 + v28 + 3;
      v40 = v32 - v30;
      v41 = 3 * v13 - (v31 + v30);
      v42 = 2 * v13 - v31 - v30;
      v43 = v37 - v31 - v30;
      v44 = 0x706050403020100;
      v45 = v516;
      do
      {
        v46 = result + v40;
        _Q4 = vqtbl1q_s8(*&result->i8[v40], xmmword_277BB7100);
        __asm { USMMLA          V16.4S, V4.16B, V1.16B }

        *_Q4.i8 = vshrn_n_s32(_Q16, 2uLL);
        _Q5 = vqtbl1q_s8(*&result->i8[v43], xmmword_277BB7100);
        __asm { USMMLA          V16.4S, V5.16B, V1.16B }

        *_Q5.i8 = vshrn_n_s32(_Q16, 2uLL);
        _Q6 = vqtbl1q_s8(*&result->i8[v42], xmmword_277BB7100);
        __asm { USMMLA          V16.4S, V6.16B, V1.16B }

        *_Q6.i8 = vshrn_n_s32(_Q16, 2uLL);
        _Q7 = vqtbl1q_s8(*&result->i8[v41], xmmword_277BB7100);
        __asm { USMMLA          V16.4S, V7.16B, V1.16B }

        *v45 = *_Q4.i8;
        v45[32] = *_Q5.i8;
        v45[64] = *_Q6.i8;
        v45[96] = vshrn_n_s32(_Q16, 2uLL);
        v45 += 128;
        v39 -= 4;
        result = (result + v38);
      }

      while (v39 > 8);
      v59 = &v46[v38];
      v60 = v39 - 4;
      do
      {
        _Q4 = vqtbl1q_s8(*v59, xmmword_277BB7100);
        __asm { USMMLA          V5.4S, V4.16B, V1.16B }

        *v45 = vshrn_n_s32(_Q5, 2uLL);
        v59 = (v59 + v37);
        v45 += 32;
        --v60;
      }

      while (v60);
    }

    else
    {
      v44 = *xmmword_277BC0D80.i8;
      v124 = 4 * v13;
      v125 = v13;
      v126 = 3 * v13 - (v31 + v30);
      v127 = 2 * v13 - v31 - v30;
      v128 = v13 - v31 - v30;
      v129 = v32 - v30;
      v130 = v516;
      do
      {
        v131 = v19 + 8;
        v132 = result;
        v133 = v130;
        do
        {
          v134 = *&v132->i8[v129];
          v135 = *&v132->i8[v128];
          v136 = *&v132->i8[v127];
          v137 = *&v132->i8[v126];
          _Q17 = vqtbl1q_s8(v134, xmmword_277BC0D80);
          _Q5 = vqtbl1q_s8(v134, unk_277BC0D90);
          __asm
          {
            USMMLA          V18.4S, V17.16B, V1.16B
            USMMLA          V17.4S, V5.16B, V1.16B
          }

          v142 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
          _Q17 = vqtbl1q_s8(v135, xmmword_277BC0D80);
          _Q6 = vqtbl1q_s8(v135, unk_277BC0D90);
          __asm
          {
            USMMLA          V18.4S, V17.16B, V1.16B
            USMMLA          V17.4S, V6.16B, V1.16B
          }

          v147 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
          _Q17 = vqtbl1q_s8(v136, xmmword_277BC0D80);
          _Q7 = vqtbl1q_s8(v136, unk_277BC0D90);
          __asm
          {
            USMMLA          V18.4S, V17.16B, V1.16B
            USMMLA          V17.4S, V7.16B, V1.16B
          }

          v152 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
          _Q17 = vqtbl1q_s8(v137, xmmword_277BC0D80);
          _Q16 = vqtbl1q_s8(v137, unk_277BC0D90);
          __asm
          {
            USMMLA          V18.4S, V17.16B, V1.16B
            USMMLA          V17.4S, V16.16B, V1.16B
          }

          *v133 = v142;
          v133[16] = v147;
          v133[32] = v152;
          v133[48] = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
          ++v133;
          ++v132;
          v131 -= 8;
        }

        while (v131 > 8);
        v33 = (v33 + v124);
        v130 += 128;
        v157 = v29 - 4;
        result = (result + v124);
        v112 = v29 <= 8;
        v29 -= 4;
      }

      while (!v112);
      do
      {
        v158 = v19 + 8;
        v159 = v33;
        v160 = v130;
        do
        {
          v161 = *v159;
          v159 = (v159 + 8);
          _Q6 = vqtbl1q_s8(v161, xmmword_277BC0D80);
          _Q5 = vqtbl1q_s8(v161, unk_277BC0D90);
          __asm
          {
            USMMLA          V7.4S, V6.16B, V1.16B
            USMMLA          V6.4S, V5.16B, V1.16B
          }

          *v160++ = vshrn_high_n_s32(vshrn_n_s32(_Q7, 2uLL), _Q6, 2uLL);
          v158 -= 8;
        }

        while (v158 > 8);
        v33 = (v33 + v125);
        v130 += 32;
        --v157;
      }

      while (v157);
    }
  }

  v166 = *a12;
  if (v27 > 6)
  {
    if (v166)
    {
      if (*(a12 + 36))
      {
        return sub_27799A734(v516, v14, v15, a12, v16, v19, v34, *_Q1.i8, v44);
      }

      else
      {
        v197 = *(a12 + 8);
        v198 = *(a12 + 16);
        if (v19 == 4)
        {
          v199 = v516[0];
          v200 = v517;
          v201 = v518;
          v202 = 2 * v15;
          v203 = v519;
          v204 = v523;
          v205 = v520;
          v206 = v521[0];
          v207 = v522;
          v208.i64[0] = 0xE800E800E800E800;
          v208.i64[1] = 0xE800E800E800E800;
          do
          {
            v209.i64[0] = 0x8000000080000;
            v209.i64[1] = 0x8000000080000;
            v210 = vmlal_lane_s16(v209, v199, *v34.i8, 0);
            v199 = v205;
            v211 = vmlal_lane_s16(v210, v200, *v34.i8, 1);
            v212.i64[0] = 0x8000000080000;
            v212.i64[1] = 0x8000000080000;
            v213 = vmlal_lane_s16(v212, v200, *v34.i8, 0);
            v200 = v206;
            v214.i64[0] = 0x8000000080000;
            v214.i64[1] = 0x8000000080000;
            v215 = vmlal_lane_s16(vmlal_lane_s16(v211, v201, *v34.i8, 2), v203, *v34.i8, 3);
            v216 = vmlal_lane_s16(vmlal_lane_s16(v213, v201, *v34.i8, 1), v203, *v34.i8, 2);
            v217 = vmlal_lane_s16(vmlal_lane_s16(v214, v201, *v34.i8, 0), v203, *v34.i8, 1);
            v218.i64[0] = 0x8000000080000;
            v218.i64[1] = 0x8000000080000;
            v219 = vmlal_lane_s16(v218, v203, *v34.i8, 0);
            v203 = *v204;
            v220 = vmlal_laneq_s16(v215, v205, v34, 4);
            v221 = vmlal_lane_s16(v216, v205, *v34.i8, 3);
            v222 = vmlal_lane_s16(v217, v205, *v34.i8, 2);
            v223 = vmlal_lane_s16(v219, v205, *v34.i8, 1);
            v205 = v204[32];
            v224 = vmlal_laneq_s16(v220, v206, v34, 5);
            v225 = vmlal_laneq_s16(v221, v206, v34, 4);
            v226 = vmlal_lane_s16(v222, v206, *v34.i8, 3);
            v227 = vmlal_lane_s16(v223, v206, *v34.i8, 2);
            v206 = v204[64];
            v228 = vmlal_laneq_s16(v224, v207, v34, 6);
            v229 = vmlal_laneq_s16(v225, v207, v34, 5);
            v230 = vmlal_laneq_s16(v226, v207, v34, 4);
            v231 = vmlal_lane_s16(v227, v207, *v34.i8, 3);
            v201 = v207;
            v207 = v204[96];
            v232.i64[0] = *v197;
            v233.i64[0] = *(v197 + 4 * v198);
            v232.i64[1] = *(v197 + 2 * v198);
            v233.i64[1] = *(v197 + 6 * v198);
            *v228.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v232, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v228, *v204, v34, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v229, *v204, v34, 6), v205, v34, 7), 7uLL)), v208), 4uLL);
            *v229.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v233, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v230, *v204, v34, 5), v205, v34, 6), v206, v34, 7), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v231, *v204, v34, 4), v205, v34, 5), v206, v34, 6), v207, v34, 7), 7uLL)), v208), 4uLL);
            *v14 = v228.i32[0];
            *(v14 + v15) = v228.i32[1];
            *(v14 + v202) = v229.i32[0];
            result = (v14 + v15 + v202);
            v14 += v15;
            result->i32[0] = v229.i32[1];
            v204 += 128;
            v197 += v198;
            v16 -= 4;
          }

          while (v16);
        }

        else
        {
          v354 = 0;
          v355 = 4 * v15;
          v356 = v516;
          v357 = 8 * v198;
          v358 = v197 + 6 * v198;
          v359 = v197 + 4 * v198;
          v360 = v197 + 2 * v198;
          result = (v14 + 3 * v15);
          v361 = v14 + 2 * v15;
          v362.i64[0] = 0xE800E800E800E800;
          v362.i64[1] = 0xE800E800E800E800;
          v363 = v14 + v15;
          do
          {
            v364 = 0;
            v365 = *v356->i8;
            v366 = *v356[32].i8;
            v367 = *v356[64].i8;
            v368 = *v356[96].i8;
            v369 = v197;
            v370 = *v356[128].i8;
            v371 = v360;
            v372 = v359;
            v373 = *v356[160].i8;
            v374 = v358;
            v375 = v523;
            v376 = v16;
            v377 = *v356[192].i8;
            do
            {
              v378.i64[0] = 0x8000000080000;
              v378.i64[1] = 0x8000000080000;
              v379 = vmlal_lane_s16(v378, *v365.i8, *v34.i8, 0);
              v380.i64[0] = 0x8000000080000;
              v380.i64[1] = 0x8000000080000;
              v381 = vmlal_high_lane_s16(v380, v365, *v34.i8, 0);
              v365 = v370;
              v382.i64[0] = 0x8000000080000;
              v382.i64[1] = 0x8000000080000;
              v383.i64[0] = 0x8000000080000;
              v383.i64[1] = 0x8000000080000;
              v384.i64[0] = 0x8000000080000;
              v384.i64[1] = 0x8000000080000;
              v385.i64[0] = 0x8000000080000;
              v385.i64[1] = 0x8000000080000;
              v386 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v382, *v366.i8, *v34.i8, 0), *v367.i8, *v34.i8, 1), *v368.i8, *v34.i8, 2);
              v387 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v383, v366, *v34.i8, 0), v367, *v34.i8, 1), v368, *v34.i8, 2);
              v388 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v379, *v366.i8, *v34.i8, 1), *v367.i8, *v34.i8, 2), *v368.i8, *v34.i8, 3);
              v389 = vmlal_lane_s16(vmlal_lane_s16(v384, *v367.i8, *v34.i8, 0), *v368.i8, *v34.i8, 1);
              v390 = vmlal_high_lane_s16(vmlal_high_lane_s16(v385, v367, *v34.i8, 0), v368, *v34.i8, 1);
              v391.i64[0] = 0x8000000080000;
              v391.i64[1] = 0x8000000080000;
              v392 = vmlal_lane_s16(v391, *v368.i8, *v34.i8, 0);
              v393.i64[0] = 0x8000000080000;
              v393.i64[1] = 0x8000000080000;
              v394 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v381, v366, *v34.i8, 1), v367, *v34.i8, 2), v368, *v34.i8, 3);
              v395 = vmlal_high_lane_s16(v393, v368, *v34.i8, 0);
              v368 = *&v375[v354];
              v396 = vmlal_laneq_s16(v388, *v370.i8, v34, 4);
              v397 = vmlal_lane_s16(v386, *v370.i8, *v34.i8, 3);
              v398 = vmlal_high_lane_s16(v387, v370, *v34.i8, 3);
              v399 = vmlal_high_laneq_s16(v394, v370, v34, 4);
              v400 = vmlal_lane_s16(v389, *v370.i8, *v34.i8, 2);
              v401 = vmlal_high_lane_s16(v390, v370, *v34.i8, 2);
              v402 = vmlal_lane_s16(v392, *v370.i8, *v34.i8, 1);
              v403 = vmlal_high_lane_s16(v395, v370, *v34.i8, 1);
              v370 = *&v375[v354 + 32];
              v404 = vmlal_laneq_s16(v396, *v373.i8, v34, 5);
              v405 = vmlal_laneq_s16(v397, *v373.i8, v34, 4);
              v406 = vmlal_high_laneq_s16(v398, v373, v34, 4);
              v407 = vmlal_lane_s16(v400, *v373.i8, *v34.i8, 3);
              v408 = vmlal_high_lane_s16(v401, v373, *v34.i8, 3);
              v409 = vmlal_high_laneq_s16(v399, v373, v34, 5);
              v410 = vmlal_lane_s16(v402, *v373.i8, *v34.i8, 2);
              v411 = vmlal_high_lane_s16(v403, v373, *v34.i8, 2);
              v366 = v373;
              v373 = *&v375[v354 + 64];
              v412 = vmlal_laneq_s16(v405, *v377.i8, v34, 5);
              v413 = vmlal_laneq_s16(v404, *v377.i8, v34, 6);
              v414 = vmlal_high_laneq_s16(v406, v377, v34, 5);
              v415 = vmlal_laneq_s16(v407, *v377.i8, v34, 4);
              v416 = vmlal_high_laneq_s16(v408, v377, v34, 4);
              v417 = vmlal_lane_s16(v410, *v377.i8, *v34.i8, 3);
              v418 = vmlal_high_lane_s16(v411, v377, *v34.i8, 3);
              v419 = vmlal_high_laneq_s16(v409, v377, v34, 6);
              v367 = v377;
              v377 = *&v375[v354 + 96];
              v420 = vhaddq_u16(*&v369[v354], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v413, *v368.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(v419, v368, v34, 7), 7uLL));
              v421 = vhaddq_u16(*&v371[v354 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v412, *v368.i8, v34, 6), *v370.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v414, v368, v34, 6), v370, v34, 7), 7uLL));
              v422 = vhaddq_u16(*&v374[v354 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v417, *v368.i8, v34, 4), *v370.i8, v34, 5), *v373.i8, v34, 6), *v377.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v418, v368, v34, 4), v370, v34, 5), v373, v34, 6), v377, v34, 7), 7uLL));
              *v412.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v372[v354 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v415, *v368.i8, v34, 5), *v370.i8, v34, 6), *v373.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v416, v368, v34, 5), v370, v34, 6), v373, v34, 7), 7uLL)), v362), 4uLL);
              *(v14 + v364) = vqrshrun_n_s16(vaddq_s16(v420, v362), 4uLL);
              *&v363[v364] = vqrshrun_n_s16(vaddq_s16(v421, v362), 4uLL);
              *&v361[v364] = v412.i64[0];
              v375 += 128;
              v374 += v357;
              *(result + v364) = vqrshrun_n_s16(vaddq_s16(v422, v362), 4uLL);
              v372 += v357;
              v371 += v357;
              v369 = (v369 + v357);
              v364 += v355;
              v376 -= 4;
            }

            while (v376);
            v356 += 2;
            v14 += 2;
            v354 += 2;
            ++result;
            v361 += 8;
            v363 += 8;
            v19 -= 8;
          }

          while (v19);
        }
      }
    }

    else
    {
      v261 = *(a12 + 8);
      v262 = *(a12 + 16);
      if (v19 == 4)
      {
        v263 = v516[0];
        v264 = v517;
        v265 = v518;
        v266 = v519;
        v267 = v523;
        v268 = v520;
        v269 = v521[0];
        v270 = v522;
        do
        {
          v271.i64[0] = 0x8000000080000;
          v271.i64[1] = 0x8000000080000;
          v272 = vmlal_lane_s16(v271, v263, *v34.i8, 0);
          v263 = v268;
          v273.i64[0] = 0x8000000080000;
          v273.i64[1] = 0x8000000080000;
          v274.i64[0] = 0x8000000080000;
          v274.i64[1] = 0x8000000080000;
          v275 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v272, v264, *v34.i8, 1), v265, *v34.i8, 2), v266, *v34.i8, 3);
          v276 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v273, v264, *v34.i8, 0), v265, *v34.i8, 1), v266, *v34.i8, 2);
          v277 = vmlal_lane_s16(vmlal_lane_s16(v274, v265, *v34.i8, 0), v266, *v34.i8, 1);
          v278.i64[0] = 0x8000000080000;
          v278.i64[1] = 0x8000000080000;
          v279 = vmlal_lane_s16(v278, v266, *v34.i8, 0);
          v266 = *v267;
          v280 = vmlal_laneq_s16(v275, v268, v34, 4);
          v281 = vmlal_lane_s16(v276, v268, *v34.i8, 3);
          v282 = vmlal_lane_s16(v277, v268, *v34.i8, 2);
          v283 = vmlal_lane_s16(v279, v268, *v34.i8, 1);
          v268 = v267[32];
          v284 = vmlal_laneq_s16(v280, v269, v34, 5);
          v285 = vmlal_laneq_s16(v281, v269, v34, 4);
          v286 = vmlal_lane_s16(v282, v269, *v34.i8, 3);
          v287 = vmlal_lane_s16(v283, v269, *v34.i8, 2);
          v264 = v269;
          v269 = v267[64];
          v288 = vmlal_laneq_s16(v284, v270, v34, 6);
          v289 = vmlal_laneq_s16(v285, v270, v34, 5);
          v290 = vmlal_laneq_s16(v286, v270, v34, 4);
          v291 = vmlal_lane_s16(v287, v270, *v34.i8, 3);
          v265 = v270;
          v270 = v267[96];
          *v289.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v289, *v267, v34, 6), v268, v34, 7), 7uLL);
          *v290.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v290, *v267, v34, 5), v268, v34, 6), v269, v34, 7), 7uLL);
          *v291.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v291, *v267, v34, 4), v268, v34, 5), v269, v34, 6), v270, v34, 7), 7uLL);
          *v261 = vqrshrun_n_s32(vmlal_laneq_s16(v288, *v267, v34, 7), 7uLL);
          *(v261 + 2 * v262) = *v289.i8;
          *(v261 + 4 * v262) = *v290.i8;
          *(v261 + 6 * v262) = *v291.i8;
          v267 += 128;
          v261 += v262;
          v16 -= 4;
        }

        while (v16);
      }

      else
      {
        v465 = 8 * v262;
        v466 = v261 + 6 * v262;
        v467 = v261 + 4 * v262;
        v468 = v516;
        v469 = v261 + 2 * v262;
        do
        {
          v470 = 0;
          v471 = *v468->i8;
          v472 = *v468[32].i8;
          v473 = *v468[64].i8;
          v474 = *v468[96].i8;
          v475 = *v468[128].i8;
          v476 = *v468[160].i8;
          v477 = 224;
          v478 = v16;
          v479 = *v468[192].i8;
          do
          {
            result = &v468[v477];
            v480.i64[0] = 0x8000000080000;
            v480.i64[1] = 0x8000000080000;
            v481 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v480, *v471.i8, *v34.i8, 0), *v472.i8, *v34.i8, 1), *v473.i8, *v34.i8, 2), *v474.i8, *v34.i8, 3);
            v482.i64[0] = 0x8000000080000;
            v482.i64[1] = 0x8000000080000;
            v483 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v482, v471, *v34.i8, 0), v472, *v34.i8, 1), v473, *v34.i8, 2), v474, *v34.i8, 3);
            v484.i64[0] = 0x8000000080000;
            v484.i64[1] = 0x8000000080000;
            v485 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v484, *v472.i8, *v34.i8, 0), *v473.i8, *v34.i8, 1), *v474.i8, *v34.i8, 2);
            v486.i64[0] = 0x8000000080000;
            v486.i64[1] = 0x8000000080000;
            v487 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v486, v472, *v34.i8, 0), v473, *v34.i8, 1), v474, *v34.i8, 2);
            v488.i64[0] = 0x8000000080000;
            v488.i64[1] = 0x8000000080000;
            v489 = vmlal_lane_s16(vmlal_lane_s16(v488, *v473.i8, *v34.i8, 0), *v474.i8, *v34.i8, 1);
            v490.i64[0] = 0x8000000080000;
            v490.i64[1] = 0x8000000080000;
            v491 = vmlal_high_lane_s16(vmlal_high_lane_s16(v490, v473, *v34.i8, 0), v474, *v34.i8, 1);
            v492.i64[0] = 0x8000000080000;
            v492.i64[1] = 0x8000000080000;
            v493 = vmlal_lane_s16(v492, *v474.i8, *v34.i8, 0);
            v494.i64[0] = 0x8000000080000;
            v494.i64[1] = 0x8000000080000;
            v495 = vmlal_high_lane_s16(v494, v474, *v34.i8, 0);
            v474 = *v468[v477].i8;
            v496 = vmlal_laneq_s16(v481, *v475.i8, v34, 4);
            v497 = vmlal_high_laneq_s16(v483, v475, v34, 4);
            v498 = vmlal_lane_s16(v485, *v475.i8, *v34.i8, 3);
            v499 = vmlal_high_lane_s16(v487, v475, *v34.i8, 3);
            v500 = vmlal_lane_s16(v489, *v475.i8, *v34.i8, 2);
            v501 = vmlal_high_lane_s16(v491, v475, *v34.i8, 2);
            v502 = vmlal_lane_s16(v493, *v475.i8, *v34.i8, 1);
            v503 = vmlal_high_lane_s16(v495, v475, *v34.i8, 1);
            v471 = v475;
            v475 = *v468[v477 + 32].i8;
            v504 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v496, *v476.i8, v34, 5), *v479.i8, v34, 6), *v474.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v497, v476, v34, 5), v479, v34, 6), v474, v34, 7), 7uLL);
            v505 = vmlal_laneq_s16(v498, *v476.i8, v34, 4);
            v506 = vmlal_high_laneq_s16(v499, v476, v34, 4);
            v507 = vmlal_lane_s16(v500, *v476.i8, *v34.i8, 3);
            v508 = vmlal_high_lane_s16(v501, v476, *v34.i8, 3);
            v509 = vmlal_lane_s16(v502, *v476.i8, *v34.i8, 2);
            v510 = vmlal_high_lane_s16(v503, v476, *v34.i8, 2);
            v472 = v476;
            v476 = *v468[v477 + 64].i8;
            v511 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v505, *v479.i8, v34, 5), *v474.i8, v34, 6), *v475.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v506, v479, v34, 5), v474, v34, 6), v475, v34, 7), 7uLL);
            v512 = vmlal_laneq_s16(v507, *v479.i8, v34, 4);
            v513 = vmlal_high_laneq_s16(v508, v479, v34, 4);
            v514 = vmlal_lane_s16(v509, *v479.i8, *v34.i8, 3);
            v515 = vmlal_high_lane_s16(v510, v479, *v34.i8, 3);
            v473 = v479;
            v479 = *v468[v477 + 96].i8;
            *&v261->i8[v470] = v504;
            *&v469[v470] = v511;
            *&v467[v470] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v512, *v474.i8, v34, 5), *v475.i8, v34, 6), *v476.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v513, v474, v34, 5), v475, v34, 6), v476, v34, 7), 7uLL);
            *&v466[v470] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v514, *v474.i8, v34, 4), *v475.i8, v34, 5), *v476.i8, v34, 6), *v479.i8, v34, 7), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v515, v474, v34, 4), v475, v34, 5), v476, v34, 6), v479, v34, 7), 7uLL);
            v477 += 128;
            v470 += v465;
            v478 -= 4;
          }

          while (v478);
          v468 += 2;
          v261 += 2;
          v466 += 16;
          v467 += 16;
          v469 += 16;
          v19 -= 8;
        }

        while (v19);
      }
    }
  }

  else if (v166)
  {
    if (*(a12 + 36))
    {
      return sub_27799A32C(v516, v14, v15, a12, v16, v19, v34, *_Q1.i8, v44);
    }

    else
    {
      v167 = *(a12 + 8);
      v168 = *(a12 + 16);
      if (v19 == 4)
      {
        v169 = v516[0];
        v170 = v517;
        v171 = v518;
        v172 = 2 * v15;
        v173 = v519;
        v174 = v521;
        v175 = v520;
        v176.i64[0] = 0xE800E800E800E800;
        v176.i64[1] = 0xE800E800E800E800;
        do
        {
          v177.i64[0] = 0x8000000080000;
          v177.i64[1] = 0x8000000080000;
          v178 = vmlal_lane_s16(v177, v169, *v34.i8, 1);
          v169 = v175;
          v179 = vmlal_lane_s16(v178, v170, *v34.i8, 2);
          v180.i64[0] = 0x8000000080000;
          v180.i64[1] = 0x8000000080000;
          v181 = vmlal_lane_s16(v180, v170, *v34.i8, 1);
          v170 = *v174;
          v182 = vmlal_lane_s16(v179, v171, *v34.i8, 3);
          v183 = vmlal_lane_s16(v181, v171, *v34.i8, 2);
          v184.i64[0] = 0x8000000080000;
          v184.i64[1] = 0x8000000080000;
          v185 = vmlal_lane_s16(v184, v171, *v34.i8, 1);
          v171 = v174[32];
          v186 = vmlal_laneq_s16(v182, v173, v34, 4);
          v187 = vmlal_lane_s16(v183, v173, *v34.i8, 3);
          v188 = vmlal_lane_s16(v185, v173, *v34.i8, 2);
          v189.i64[0] = 0x8000000080000;
          v189.i64[1] = 0x8000000080000;
          v190 = vmlal_lane_s16(v189, v173, *v34.i8, 1);
          v173 = v174[64];
          v191 = vmlal_laneq_s16(v186, v175, v34, 5);
          v192 = vmlal_laneq_s16(v187, v175, v34, 4);
          v193 = vmlal_lane_s16(v188, v175, *v34.i8, 3);
          v194 = vmlal_lane_s16(v190, v175, *v34.i8, 2);
          v175 = v174[96];
          v195.i64[0] = *v167;
          v196.i64[0] = *(v167 + 4 * v168);
          v195.i64[1] = *(v167 + 2 * v168);
          v196.i64[1] = *(v167 + 6 * v168);
          *v192.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v195, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v191, *v174, v34, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(v192, *v174, v34, 5), v171, v34, 6), 7uLL)), v176), 4uLL);
          *v191.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v196, vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v193, *v174, v34, 4), v171, v34, 5), v173, v34, 6), 7uLL), vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v194, *v174, *v34.i8, 3), v171, v34, 4), v173, v34, 5), v175, v34, 6), 7uLL)), v176), 4uLL);
          *v14 = v192.i32[0];
          *(v14 + v15) = v192.i32[1];
          *(v14 + v172) = v191.i32[0];
          result = (v14 + v15 + v172);
          v14 += v15;
          v174 += 128;
          v167 += v168;
          result->i32[0] = v191.i32[1];
          v16 -= 4;
        }

        while (v16);
      }

      else
      {
        v292 = 0;
        v293 = 4 * v15;
        v294 = v516;
        v295 = 8 * v168;
        v296 = v167 + 6 * v168;
        v297 = v167 + 4 * v168;
        v298 = v167 + 2 * v168;
        result = (v14 + 3 * v15);
        v299 = v14 + 2 * v15;
        v300.i64[0] = 0xE800E800E800E800;
        v300.i64[1] = 0xE800E800E800E800;
        v301 = v14 + v15;
        do
        {
          v302 = 0;
          v303 = *v294->i8;
          v304 = *v294[32].i8;
          v305 = v167;
          v306 = *v294[64].i8;
          v307 = v298;
          v308 = v297;
          v309 = *v294[96].i8;
          v310 = v296;
          v311 = v521;
          v312 = v16;
          v313 = *v294[128].i8;
          do
          {
            v314.i64[0] = 0x8000000080000;
            v314.i64[1] = 0x8000000080000;
            v315 = vmlal_lane_s16(v314, *v303.i8, *v34.i8, 1);
            v316.i64[0] = 0x8000000080000;
            v316.i64[1] = 0x8000000080000;
            v317 = vmlal_high_lane_s16(v316, v303, *v34.i8, 1);
            v303 = v313;
            v318 = vmlal_lane_s16(v315, *v304.i8, *v34.i8, 2);
            v319 = vmlal_high_lane_s16(v317, v304, *v34.i8, 2);
            v320.i64[0] = 0x8000000080000;
            v320.i64[1] = 0x8000000080000;
            v321 = vmlal_lane_s16(v320, *v304.i8, *v34.i8, 1);
            v322.i64[0] = 0x8000000080000;
            v322.i64[1] = 0x8000000080000;
            v323 = vmlal_high_lane_s16(v322, v304, *v34.i8, 1);
            v304 = *&v311[v292];
            v324 = vmlal_lane_s16(v318, *v306.i8, *v34.i8, 3);
            v325 = vmlal_lane_s16(v321, *v306.i8, *v34.i8, 2);
            v326 = vmlal_high_lane_s16(v323, v306, *v34.i8, 2);
            v327.i64[0] = 0x8000000080000;
            v327.i64[1] = 0x8000000080000;
            v328 = vmlal_lane_s16(v327, *v306.i8, *v34.i8, 1);
            v329 = vmlal_high_lane_s16(v319, v306, *v34.i8, 3);
            v330.i64[0] = 0x8000000080000;
            v330.i64[1] = 0x8000000080000;
            v331 = vmlal_high_lane_s16(v330, v306, *v34.i8, 1);
            v306 = *&v311[v292 + 32];
            v332 = vmlal_lane_s16(v325, *v309.i8, *v34.i8, 3);
            v333 = vmlal_high_lane_s16(v326, v309, *v34.i8, 3);
            v334 = vmlal_laneq_s16(v324, *v309.i8, v34, 4);
            v335 = vmlal_lane_s16(v328, *v309.i8, *v34.i8, 2);
            v336 = vmlal_high_lane_s16(v331, v309, *v34.i8, 2);
            v337.i64[0] = 0x8000000080000;
            v337.i64[1] = 0x8000000080000;
            v338 = vmlal_lane_s16(v337, *v309.i8, *v34.i8, 1);
            v339.i64[0] = 0x8000000080000;
            v339.i64[1] = 0x8000000080000;
            v340 = vmlal_high_laneq_s16(v329, v309, v34, 4);
            v341 = vmlal_high_lane_s16(v339, v309, *v34.i8, 1);
            v309 = *&v311[v292 + 64];
            v342 = vmlal_laneq_s16(v334, *v313.i8, v34, 5);
            v343 = vmlal_laneq_s16(v332, *v313.i8, v34, 4);
            v344 = vmlal_high_laneq_s16(v333, v313, v34, 4);
            v345 = vmlal_high_laneq_s16(v340, v313, v34, 5);
            v346 = vmlal_lane_s16(v335, *v313.i8, *v34.i8, 3);
            v347 = vmlal_high_lane_s16(v336, v313, *v34.i8, 3);
            v348 = vmlal_lane_s16(v338, *v313.i8, *v34.i8, 2);
            v349 = vmlal_high_lane_s16(v341, v313, *v34.i8, 2);
            v313 = *&v311[v292 + 96];
            v350 = vhaddq_u16(*&v305[v292], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(v342, *v304.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(v345, v304, v34, 6), 7uLL));
            v351 = vhaddq_u16(*&v307[v292 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v343, *v304.i8, v34, 5), *v306.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(v344, v304, v34, 5), v306, v34, 6), 7uLL));
            v352 = vaddq_s16(vhaddq_u16(*&v308[v292 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v346, *v304.i8, v34, 4), *v306.i8, v34, 5), *v309.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v347, v304, v34, 4), v306, v34, 5), v309, v34, 6), 7uLL)), v300);
            v353 = vaddq_s16(vhaddq_u16(*&v310[v292 * 8], vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v348, *v304.i8, *v34.i8, 3), *v306.i8, v34, 4), *v309.i8, v34, 5), *v313.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v349, v304, *v34.i8, 3), v306, v34, 4), v309, v34, 5), v313, v34, 6), 7uLL)), v300);
            *(v14 + v302) = vqrshrun_n_s16(vaddq_s16(v350, v300), 4uLL);
            *&v301[v302] = vqrshrun_n_s16(vaddq_s16(v351, v300), 4uLL);
            v311 += 128;
            *&v299[v302] = vqrshrun_n_s16(v352, 4uLL);
            v310 += v295;
            v308 += v295;
            v307 += v295;
            *(result + v302) = vqrshrun_n_s16(v353, 4uLL);
            v305 = (v305 + v295);
            v302 += v293;
            v312 -= 4;
          }

          while (v312);
          v294 += 2;
          v14 += 2;
          v292 += 2;
          ++result;
          v299 += 8;
          v301 += 8;
          v19 -= 8;
        }

        while (v19);
      }
    }
  }

  else
  {
    v234 = *(a12 + 8);
    v235 = *(a12 + 16);
    if (v19 == 4)
    {
      v236 = v516[0];
      v237 = v517;
      v238 = v518;
      v239 = v519;
      v240 = v520;
      v241 = v521;
      do
      {
        v242.i64[0] = 0x8000000080000;
        v242.i64[1] = 0x8000000080000;
        v243 = vmlal_lane_s16(v242, v236, *v34.i8, 1);
        v236 = v240;
        v244 = vmlal_lane_s16(v243, v237, *v34.i8, 2);
        v245.i64[0] = 0x8000000080000;
        v245.i64[1] = 0x8000000080000;
        v246 = vmlal_lane_s16(v245, v237, *v34.i8, 1);
        v237 = *v241;
        v247 = vmlal_lane_s16(v244, v238, *v34.i8, 3);
        v248 = vmlal_lane_s16(v246, v238, *v34.i8, 2);
        v249.i64[0] = 0x8000000080000;
        v249.i64[1] = 0x8000000080000;
        v250 = vmlal_lane_s16(v249, v238, *v34.i8, 1);
        v238 = v241[32];
        v251 = vmlal_laneq_s16(v247, v239, v34, 4);
        v252 = vmlal_lane_s16(v248, v239, *v34.i8, 3);
        v253 = vmlal_lane_s16(v250, v239, *v34.i8, 2);
        v254.i64[0] = 0x8000000080000;
        v254.i64[1] = 0x8000000080000;
        v255 = vmlal_lane_s16(v254, v239, *v34.i8, 1);
        v239 = v241[64];
        v256 = vmlal_laneq_s16(v251, v240, v34, 5);
        v257 = vmlal_laneq_s16(v252, v240, v34, 4);
        v258 = vmlal_lane_s16(v253, v240, *v34.i8, 3);
        v259 = vmlal_lane_s16(v255, v240, *v34.i8, 2);
        v240 = v241[96];
        *v257.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v257, *v241, v34, 5), v238, v34, 6), 7uLL);
        *v258.i8 = vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v258, *v241, v34, 4), v238, v34, 5), v239, v34, 6), 7uLL);
        v260 = vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v259, *v241, *v34.i8, 3), v238, v34, 4), v239, v34, 5);
        *v234 = vqrshrun_n_s32(vmlal_laneq_s16(v256, *v241, v34, 6), 7uLL);
        *(v234 + 2 * v235) = *v257.i8;
        *(v234 + 4 * v235) = *v258.i8;
        *(v234 + 6 * v235) = vqrshrun_n_s32(vmlal_laneq_s16(v260, v240, v34, 6), 7uLL);
        v241 += 128;
        v234 += v235;
        v16 -= 4;
      }

      while (v16);
    }

    else
    {
      v423 = 8 * v235;
      v424 = v234 + 6 * v235;
      v425 = v234 + 4 * v235;
      v426 = v516;
      v427 = v234 + 2 * v235;
      do
      {
        v428 = 0;
        v429 = *v426->i8;
        v430 = *v426[32].i8;
        v431 = *v426[64].i8;
        v432 = *v426[96].i8;
        v433 = 160;
        v434 = v16;
        v435 = *v426[128].i8;
        do
        {
          result = &v426[v433];
          v436.i64[0] = 0x8000000080000;
          v436.i64[1] = 0x8000000080000;
          v437 = vmlal_lane_s16(vmlal_lane_s16(v436, *v429.i8, *v34.i8, 1), *v430.i8, *v34.i8, 2);
          v438.i64[0] = 0x8000000080000;
          v438.i64[1] = 0x8000000080000;
          v439 = vmlal_high_lane_s16(vmlal_high_lane_s16(v438, v429, *v34.i8, 1), v430, *v34.i8, 2);
          v440.i64[0] = 0x8000000080000;
          v440.i64[1] = 0x8000000080000;
          v441 = vmlal_lane_s16(v440, *v430.i8, *v34.i8, 1);
          v442.i64[0] = 0x8000000080000;
          v442.i64[1] = 0x8000000080000;
          v443 = vmlal_high_lane_s16(v442, v430, *v34.i8, 1);
          v430 = *v426[v433].i8;
          v444 = vmlal_lane_s16(v437, *v431.i8, *v34.i8, 3);
          v445 = vmlal_high_lane_s16(v439, v431, *v34.i8, 3);
          v446 = vmlal_lane_s16(v441, *v431.i8, *v34.i8, 2);
          v447 = vmlal_high_lane_s16(v443, v431, *v34.i8, 2);
          v448.i64[0] = 0x8000000080000;
          v448.i64[1] = 0x8000000080000;
          v449 = vmlal_lane_s16(v448, *v431.i8, *v34.i8, 1);
          v450.i64[0] = 0x8000000080000;
          v450.i64[1] = 0x8000000080000;
          v451 = vmlal_high_lane_s16(v450, v431, *v34.i8, 1);
          v431 = *v426[v433 + 32].i8;
          v452 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v444, *v432.i8, v34, 4), *v435.i8, v34, 5), *v430.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v445, v432, v34, 4), v435, v34, 5), v430, v34, 6), 7uLL);
          v453 = vmlal_lane_s16(v446, *v432.i8, *v34.i8, 3);
          v454 = vmlal_high_lane_s16(v447, v432, *v34.i8, 3);
          v455 = vmlal_lane_s16(v449, *v432.i8, *v34.i8, 2);
          v456 = vmlal_high_lane_s16(v451, v432, *v34.i8, 2);
          v445.i64[0] = 0x8000000080000;
          v445.i64[1] = 0x8000000080000;
          v457 = vmlal_lane_s16(v445, *v432.i8, *v34.i8, 1);
          v458.i64[0] = 0x8000000080000;
          v458.i64[1] = 0x8000000080000;
          v459 = vmlal_high_lane_s16(v458, v432, *v34.i8, 1);
          v432 = *v426[v433 + 64].i8;
          v460 = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v453, *v435.i8, v34, 4), *v430.i8, v34, 5), *v431.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v454, v435, v34, 4), v430, v34, 5), v431, v34, 6), 7uLL);
          v461 = vmlal_lane_s16(v455, *v435.i8, *v34.i8, 3);
          v462 = vmlal_high_lane_s16(v456, v435, *v34.i8, 3);
          v463 = vmlal_lane_s16(v457, *v435.i8, *v34.i8, 2);
          v464 = vmlal_high_lane_s16(v459, v435, *v34.i8, 2);
          v429 = v435;
          v435 = *v426[v433 + 96].i8;
          *&v234->i8[v428] = v452;
          *&v427[v428] = v460;
          *&v425[v428] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v461, *v430.i8, v34, 4), *v431.i8, v34, 5), *v432.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v462, v430, v34, 4), v431, v34, 5), v432, v34, 6), 7uLL);
          *&v424[v428] = vqrshrun_high_n_s32(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v463, *v430.i8, *v34.i8, 3), *v431.i8, v34, 4), *v432.i8, v34, 5), *v435.i8, v34, 6), 7uLL), vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v464, v430, *v34.i8, 3), v431, v34, 4), v432, v34, 5), v435, v34, 6), 7uLL);
          v433 += 128;
          v428 += v423;
          v434 -= 4;
        }

        while (v434);
        v426 += 2;
        v234 += 2;
        v424 += 16;
        v425 += 16;
        v427 += 16;
        v19 -= 8;
      }

      while (v19);
    }
  }

  return result;
}

int16x4_t *sub_27799A32C(int16x4_t *result, _DWORD *a2, int a3, uint64_t a4, int a5, int a6, int16x8_t a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (a6 == 4)
  {
    v11 = *result;
    v12 = result[32];
    v13 = result[64];
    v14 = result[96];
    v15 = result + 160;
    a8.i32[0] = *(a4 + 40);
    a9.i32[0] = *(a4 + 44);
    v16 = result[128];
    v17 = 6 * v10;
    v18 = 8 * v10;
    v19 = 4 * v10;
    v20 = 2 * v10;
    v21.i64[0] = 0xE800E800E800E800;
    v21.i64[1] = 0xE800E800E800E800;
    do
    {
      v22.i64[0] = 0x8000000080000;
      v22.i64[1] = 0x8000000080000;
      v23 = vmlal_lane_s16(v22, v11, *a7.i8, 1);
      v11 = v16;
      v24.i64[0] = 0x8000000080000;
      v24.i64[1] = 0x8000000080000;
      v25 = vmlal_lane_s16(v23, v12, *a7.i8, 2);
      v26 = vmlal_lane_s16(v24, v12, *a7.i8, 1);
      v12 = *v15;
      v27 = vmlal_lane_s16(v26, v13, *a7.i8, 2);
      v28.i64[0] = 0x8000000080000;
      v28.i64[1] = 0x8000000080000;
      v29 = vmlal_lane_s16(v28, v13, *a7.i8, 1);
      v30 = vmlal_lane_s16(v25, v13, *a7.i8, 3);
      v13 = v15[32];
      v31 = vmlal_lane_s16(v27, v14, *a7.i8, 3);
      v32 = vmlal_lane_s16(v29, v14, *a7.i8, 2);
      v33.i64[0] = 0x8000000080000;
      v33.i64[1] = 0x8000000080000;
      v34 = vmlal_lane_s16(v33, v14, *a7.i8, 1);
      v35 = vmlal_laneq_s16(v30, v14, a7, 4);
      v14 = v15[64];
      v36 = vmlal_laneq_s16(v35, v16, a7, 5);
      v37 = vmlal_laneq_s16(v31, v16, a7, 4);
      v38 = vmlal_lane_s16(v32, v16, *a7.i8, 3);
      v39 = vmlal_lane_s16(v34, v16, *a7.i8, 2);
      v16 = v15[96];
      *v36.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v36, *v15, a7, 6), 7uLL), a9, 0), *v9, a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v37, *v15, a7, 5), v13, a7, 6), 7uLL), a9, 0), *(v9 + v20), a8, 0), 4uLL), v21), 4uLL);
      *v37.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v38, *v15, a7, 4), v13, a7, 5), v14, a7, 6), 7uLL), a9, 0), *(v9 + v19), a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v39, *v15, *a7.i8, 3), v13, a7, 4), v14, a7, 5), v16, a7, 6), 7uLL), a9, 0), *(v9 + v17), a8, 0), 4uLL), v21), 4uLL);
      *a2 = v36.i32[0];
      *(a2 + a3) = v36.i32[1];
      *(a2 + 2 * a3) = v37.i32[0];
      result = (a2 + a3 + (2 * a3));
      v15 += 128;
      v9 = (v9 + v18);
      a2 += a3;
      result->i32[0] = v37.i32[1];
      a5 -= 4;
    }

    while (a5);
  }

  else
  {
    v40 = 0;
    v41 = 4 * a3;
    a8.i32[0] = *(a4 + 40);
    a9.i32[0] = *(a4 + 44);
    v42 = 8 * v10;
    v43 = result + 160;
    v44 = v9 + 4 * v10;
    v45 = v9 + 6 * v10;
    v46 = v9 + 2 * v10;
    v47 = a2 + 3 * a3;
    v48 = a2 + 2 * a3;
    v49.i64[0] = 0xE800E800E800E800;
    v49.i64[1] = 0xE800E800E800E800;
    v50 = a2 + a3;
    do
    {
      v51 = 0;
      v52 = *result->i8;
      v53 = *result[32].i8;
      v54 = v9;
      v55 = *result[64].i8;
      v56 = v46;
      v57 = v44;
      v58 = *result[96].i8;
      v59 = v45;
      v60 = v43;
      v61 = a5;
      v62 = *result[128].i8;
      do
      {
        v63.i64[0] = 0x8000000080000;
        v63.i64[1] = 0x8000000080000;
        v64.i64[0] = 0x8000000080000;
        v64.i64[1] = 0x8000000080000;
        v65 = vmlal_lane_s16(v63, *v52.i8, *a7.i8, 1);
        v66 = vmlal_high_lane_s16(v64, v52, *a7.i8, 1);
        v52 = v62;
        v67 = vmlal_lane_s16(v65, *v53.i8, *a7.i8, 2);
        v68.i64[0] = 0x8000000080000;
        v68.i64[1] = 0x8000000080000;
        v69 = vmlal_high_lane_s16(v66, v53, *a7.i8, 2);
        v70 = vmlal_lane_s16(v68, *v53.i8, *a7.i8, 1);
        v71.i64[0] = 0x8000000080000;
        v71.i64[1] = 0x8000000080000;
        v72 = vmlal_high_lane_s16(v71, v53, *a7.i8, 1);
        v53 = *v60[v40].i8;
        v73 = vmlal_lane_s16(v70, *v55.i8, *a7.i8, 2);
        v74 = vmlal_lane_s16(v67, *v55.i8, *a7.i8, 3);
        v75 = vmlal_high_lane_s16(v72, v55, *a7.i8, 2);
        v76.i64[0] = 0x8000000080000;
        v76.i64[1] = 0x8000000080000;
        v77 = vmlal_lane_s16(v76, *v55.i8, *a7.i8, 1);
        v78.i64[0] = 0x8000000080000;
        v78.i64[1] = 0x8000000080000;
        v79 = vmlal_high_lane_s16(v78, v55, *a7.i8, 1);
        v80 = vmlal_high_lane_s16(v69, v55, *a7.i8, 3);
        v55 = *v60[v40 + 32].i8;
        v81 = vmlal_laneq_s16(v74, *v58.i8, a7, 4);
        v82 = vmlal_lane_s16(v73, *v58.i8, *a7.i8, 3);
        v83 = vmlal_high_lane_s16(v75, v58, *a7.i8, 3);
        v84 = vmlal_lane_s16(v77, *v58.i8, *a7.i8, 2);
        v85 = vmlal_high_laneq_s16(v80, v58, a7, 4);
        v86 = vmlal_high_lane_s16(v79, v58, *a7.i8, 2);
        v87.i64[0] = 0x8000000080000;
        v87.i64[1] = 0x8000000080000;
        v88 = vmlal_lane_s16(v87, *v58.i8, *a7.i8, 1);
        v89.i64[0] = 0x8000000080000;
        v89.i64[1] = 0x8000000080000;
        v90 = vmlal_high_lane_s16(v89, v58, *a7.i8, 1);
        v58 = *v60[v40 + 64].i8;
        v91 = vmlal_laneq_s16(v81, *v62.i8, a7, 5);
        v92 = vmlal_laneq_s16(v82, *v62.i8, a7, 4);
        v93 = vmlal_high_laneq_s16(v83, v62, a7, 4);
        v94 = vmlal_lane_s16(v84, *v62.i8, *a7.i8, 3);
        v95 = vmlal_high_lane_s16(v86, v62, *a7.i8, 3);
        v96 = vmlal_high_laneq_s16(v85, v62, a7, 5);
        v97 = vmlal_lane_s16(v88, *v62.i8, *a7.i8, 2);
        v98 = vmlal_high_lane_s16(v90, v62, *a7.i8, 2);
        v62 = *v60[v40 + 96].i8;
        v99 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v91, *v53.i8, a7, 6), 7uLL), a9, 0), v54[v40], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(v96, v53, a7, 6), 7uLL), a9, 0), *v54[v40].i8, a8, 0), 4uLL);
        v100 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v92, *v53.i8, a7, 5), *v55.i8, a7, 6), 7uLL), a9, 0), *&v56[v40 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v93, v53, a7, 5), v55, a7, 6), 7uLL), a9, 0), *&v56[v40 * 8], a8, 0), 4uLL);
        v101 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v94, *v53.i8, a7, 4), *v55.i8, a7, 5), *v58.i8, a7, 6), 7uLL), a9, 0), *&v57[v40 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v95, v53, a7, 4), v55, a7, 5), v58, a7, 6), 7uLL), a9, 0), *&v57[v40 * 8], a8, 0), 4uLL), v49);
        v102 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(v97, *v53.i8, *a7.i8, 3), *v55.i8, a7, 4), *v58.i8, a7, 5), *v62.i8, a7, 6), 7uLL), a9, 0), *&v59[v40 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(v98, v53, *a7.i8, 3), v55, a7, 4), v58, a7, 5), v62, a7, 6), 7uLL), a9, 0), *&v59[v40 * 8], a8, 0), 4uLL), v49);
        *(a2 + v51) = vqrshrun_n_s16(vaddq_s16(v99, v49), 4uLL);
        *&v50[v51] = vqrshrun_n_s16(vaddq_s16(v100, v49), 4uLL);
        v60 += 128;
        *&v48[v51] = vqrshrun_n_s16(v101, 4uLL);
        v59 += v42;
        v57 += v42;
        v56 += v42;
        *&v47[v51] = vqrshrun_n_s16(v102, 4uLL);
        v54 = (v54 + v42);
        v51 += v41;
        v61 -= 4;
      }

      while (v61);
      result += 2;
      a2 += 2;
      v40 += 2;
      v47 += 8;
      v48 += 8;
      v50 += 8;
      a6 -= 8;
    }

    while (a6);
  }

  return result;
}

int16x4_t *sub_27799A734(int16x4_t *result, _DWORD *a2, int a3, uint64_t a4, int a5, int a6, int16x8_t a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (a6 == 4)
  {
    v11 = *result;
    v12 = result[32];
    v13 = result[64];
    v14 = result[96];
    v15 = result + 224;
    a8.i32[0] = *(a4 + 40);
    a9.i32[0] = *(a4 + 44);
    v16 = result[128];
    v17 = result[160];
    v18 = result[192];
    v19 = 6 * v10;
    v20 = 8 * v10;
    v21 = 4 * v10;
    v22 = 2 * v10;
    v23.i64[0] = 0xE800E800E800E800;
    v23.i64[1] = 0xE800E800E800E800;
    do
    {
      v24.i64[0] = 0x8000000080000;
      v24.i64[1] = 0x8000000080000;
      v25 = vmlal_lane_s16(v24, v11, *a7.i8, 0);
      v11 = v16;
      v26.i64[0] = 0x8000000080000;
      v26.i64[1] = 0x8000000080000;
      v27.i64[0] = 0x8000000080000;
      v27.i64[1] = 0x8000000080000;
      v28 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v26, v12, *a7.i8, 0), v13, *a7.i8, 1), v14, *a7.i8, 2);
      v29 = vmlal_lane_s16(vmlal_lane_s16(v27, v13, *a7.i8, 0), v14, *a7.i8, 1);
      v30 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v25, v12, *a7.i8, 1), v13, *a7.i8, 2), v14, *a7.i8, 3);
      v31.i64[0] = 0x8000000080000;
      v31.i64[1] = 0x8000000080000;
      v32 = vmlal_lane_s16(v31, v14, *a7.i8, 0);
      v14 = *v15;
      v33 = vmlal_lane_s16(v28, v16, *a7.i8, 3);
      v34 = vmlal_lane_s16(v29, v16, *a7.i8, 2);
      v35 = vmlal_laneq_s16(v30, v16, a7, 4);
      v36 = vmlal_lane_s16(v32, v16, *a7.i8, 1);
      v16 = v15[32];
      v37 = vmlal_laneq_s16(v33, v17, a7, 4);
      v38 = vmlal_lane_s16(v34, v17, *a7.i8, 3);
      v39 = vmlal_laneq_s16(v35, v17, a7, 5);
      v40 = vmlal_lane_s16(v36, v17, *a7.i8, 2);
      v12 = v17;
      v17 = v15[64];
      v41 = vmlal_laneq_s16(v37, v18, a7, 5);
      v42 = vmlal_laneq_s16(v38, v18, a7, 4);
      v43 = vmlal_laneq_s16(v39, v18, a7, 6);
      v44 = vmlal_lane_s16(v40, v18, *a7.i8, 3);
      v13 = v18;
      v18 = v15[96];
      *v43.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v43, *v15, a7, 7), 7uLL), a9, 0), *v9, a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v41, *v15, a7, 6), v16, a7, 7), 7uLL), a9, 0), *(v9 + v22), a8, 0), 4uLL), v23), 4uLL);
      *v41.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v42, *v15, a7, 5), v16, a7, 6), v17, a7, 7), 7uLL), a9, 0), *(v9 + v21), a8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v44, *v15, a7, 4), v16, a7, 5), v17, a7, 6), v18, a7, 7), 7uLL), a9, 0), *(v9 + v19), a8, 0), 4uLL), v23), 4uLL);
      *a2 = v43.i32[0];
      *(a2 + a3) = v43.i32[1];
      *(a2 + 2 * a3) = v41.i32[0];
      result = (a2 + a3 + (2 * a3));
      a2 += a3;
      result->i32[0] = v41.i32[1];
      v15 += 128;
      v9 = (v9 + v20);
      a5 -= 4;
    }

    while (a5);
  }

  else
  {
    v45 = 0;
    v46 = 4 * a3;
    a8.i32[0] = *(a4 + 40);
    a9.i32[0] = *(a4 + 44);
    v47 = 8 * v10;
    v48 = result + 224;
    v49 = v9 + 4 * v10;
    v50 = v9 + 6 * v10;
    v51 = v9 + 2 * v10;
    v52 = a2 + 3 * a3;
    v53 = a2 + 2 * a3;
    v54.i64[0] = 0xE800E800E800E800;
    v54.i64[1] = 0xE800E800E800E800;
    v55 = a2 + a3;
    do
    {
      v56 = 0;
      v57 = *result->i8;
      v58 = *result[32].i8;
      v59 = *result[64].i8;
      v60 = *result[96].i8;
      v61 = v9;
      v62 = *result[128].i8;
      v63 = v51;
      v64 = v49;
      v65 = *result[160].i8;
      v66 = v50;
      v67 = v48;
      v68 = a5;
      v69 = *result[192].i8;
      do
      {
        v70.i64[0] = 0x8000000080000;
        v70.i64[1] = 0x8000000080000;
        v71.i64[0] = 0x8000000080000;
        v71.i64[1] = 0x8000000080000;
        v72 = vmlal_lane_s16(v70, *v57.i8, *a7.i8, 0);
        v73 = vmlal_high_lane_s16(v71, v57, *a7.i8, 0);
        v57 = v62;
        v74 = vmlal_lane_s16(v72, *v58.i8, *a7.i8, 1);
        v75.i64[0] = 0x8000000080000;
        v75.i64[1] = 0x8000000080000;
        v76 = vmlal_lane_s16(v75, *v58.i8, *a7.i8, 0);
        v77 = vmlal_high_lane_s16(v73, v58, *a7.i8, 1);
        v78.i64[0] = 0x8000000080000;
        v78.i64[1] = 0x8000000080000;
        v79 = vmlal_high_lane_s16(v78, v58, *a7.i8, 0);
        v58 = v65;
        v80.i64[0] = 0x8000000080000;
        v80.i64[1] = 0x8000000080000;
        v81.i64[0] = 0x8000000080000;
        v81.i64[1] = 0x8000000080000;
        v82 = vmlal_lane_s16(vmlal_lane_s16(v74, *v59.i8, *a7.i8, 2), *v60.i8, *a7.i8, 3);
        v83 = vmlal_lane_s16(vmlal_lane_s16(v76, *v59.i8, *a7.i8, 1), *v60.i8, *a7.i8, 2);
        v84 = vmlal_high_lane_s16(vmlal_high_lane_s16(v79, v59, *a7.i8, 1), v60, *a7.i8, 2);
        v85 = vmlal_lane_s16(vmlal_lane_s16(v80, *v59.i8, *a7.i8, 0), *v60.i8, *a7.i8, 1);
        v86 = vmlal_high_lane_s16(vmlal_high_lane_s16(v77, v59, *a7.i8, 2), v60, *a7.i8, 3);
        v87 = vmlal_high_lane_s16(vmlal_high_lane_s16(v81, v59, *a7.i8, 0), v60, *a7.i8, 1);
        v88.i64[0] = 0x8000000080000;
        v88.i64[1] = 0x8000000080000;
        v89 = vmlal_lane_s16(v88, *v60.i8, *a7.i8, 0);
        v90.i64[0] = 0x8000000080000;
        v90.i64[1] = 0x8000000080000;
        v91 = vmlal_high_lane_s16(v90, v60, *a7.i8, 0);
        v60 = *v67[v45].i8;
        v92 = vmlal_laneq_s16(v82, *v62.i8, a7, 4);
        v93 = vmlal_lane_s16(v83, *v62.i8, *a7.i8, 3);
        v94 = vmlal_high_lane_s16(v84, v62, *a7.i8, 3);
        v95 = vmlal_lane_s16(v85, *v62.i8, *a7.i8, 2);
        v96 = vmlal_high_lane_s16(v87, v62, *a7.i8, 2);
        v97 = vmlal_high_laneq_s16(v86, v62, a7, 4);
        v98 = vmlal_lane_s16(v89, *v62.i8, *a7.i8, 1);
        v99 = vmlal_high_lane_s16(v91, v62, *a7.i8, 1);
        v62 = *v67[v45 + 32].i8;
        v100 = vmlal_laneq_s16(v93, *v65.i8, a7, 4);
        v101 = vmlal_laneq_s16(v92, *v65.i8, a7, 5);
        v102 = vmlal_high_laneq_s16(v94, v65, a7, 4);
        v103 = vmlal_lane_s16(v95, *v65.i8, *a7.i8, 3);
        v104 = vmlal_high_lane_s16(v96, v65, *a7.i8, 3);
        v105 = vmlal_lane_s16(v98, *v65.i8, *a7.i8, 2);
        v106 = vmlal_high_lane_s16(v99, v65, *a7.i8, 2);
        v107 = vmlal_high_laneq_s16(v97, v65, a7, 5);
        v65 = *v67[v45 + 64].i8;
        v108 = vmlal_laneq_s16(v101, *v69.i8, a7, 6);
        v109 = vmlal_laneq_s16(v100, *v69.i8, a7, 5);
        v110 = vmlal_high_laneq_s16(v102, v69, a7, 5);
        v111 = vmlal_high_laneq_s16(v107, v69, a7, 6);
        v112 = vmlal_laneq_s16(v103, *v69.i8, a7, 4);
        v113 = vmlal_high_laneq_s16(v104, v69, a7, 4);
        v114 = vmlal_lane_s16(v105, *v69.i8, *a7.i8, 3);
        v115 = vmlal_high_lane_s16(v106, v69, *a7.i8, 3);
        v59 = v69;
        v69 = *v67[v45 + 96].i8;
        v116 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(v108, *v60.i8, a7, 7), 7uLL), a9, 0), v61[v45], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(v111, v60, a7, 7), 7uLL), a9, 0), *v61[v45].i8, a8, 0), 4uLL);
        v117 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(v109, *v60.i8, a7, 6), *v62.i8, a7, 7), 7uLL), a9, 0), *&v63[v45 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v110, v60, a7, 6), v62, a7, 7), 7uLL), a9, 0), *&v63[v45 * 8], a8, 0), 4uLL);
        v118 = vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v114, *v60.i8, a7, 4), *v62.i8, a7, 5), *v65.i8, a7, 6), *v69.i8, a7, 7), 7uLL), a9, 0), *&v66[v45 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v115, v60, a7, 4), v62, a7, 5), v65, a7, 6), v69, a7, 7), 7uLL), a9, 0), *&v66[v45 * 8], a8, 0), 4uLL);
        *v109.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(v112, *v60.i8, a7, 5), *v62.i8, a7, 6), *v65.i8, a7, 7), 7uLL), a9, 0), *&v64[v45 * 8], a8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vqrshrun_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(v113, v60, a7, 5), v62, a7, 6), v65, a7, 7), 7uLL), a9, 0), *&v64[v45 * 8], a8, 0), 4uLL), v54), 4uLL);
        *(a2 + v56) = vqrshrun_n_s16(vaddq_s16(v116, v54), 4uLL);
        *&v55[v56] = vqrshrun_n_s16(vaddq_s16(v117, v54), 4uLL);
        *&v53[v56] = v109.i64[0];
        v67 += 128;
        v66 += v47;
        *&v52[v56] = vqrshrun_n_s16(vaddq_s16(v118, v54), 4uLL);
        v64 += v47;
        v63 += v47;
        v61 = (v61 + v47);
        v56 += v46;
        v68 -= 4;
      }

      while (v68);
      result += 2;
      a2 += 2;
      v45 += 2;
      v52 += 8;
      v53 += 8;
      v55 += 8;
      a6 -= 8;
    }

    while (a6);
  }

  return result;
}

uint64_t sub_27799ABBC(uint64_t a1, int a2, _DWORD *a3, int a4, int a5, int a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, uint16x4_t a14, uint16x4_t a15, uint64_t a16)
{
  v22 = *(a7 + 8);
  v23 = (*a7 + 2 * (a8 & 0xFu) * v22);
  if (v22 == 12 || v23->u16[7] | v23->u16[0])
  {
    result = a1 - 3;
    if (*a16)
    {
      v25 = *(a16 + 8);
      v26 = *(a16 + 16);
      if (*(a16 + 36))
      {
        v237 = *(a16 + 40);
        v238 = *v23;
        v244 = *(a16 + 44);

        return sub_27799B80C(result, a2, v25, v26, a3, a4, a5, a6, v238, a10, a11, a12, a13, a14, a15, v237, v244);
      }

      else
      {
        v27 = 4 * a2;
        v28 = vshrn_n_s16(*v23, 1uLL);
        _Q3 = vdupq_lane_s32(v28, 0);
        v30 = 4 * a4;
        _Q4 = vdupq_lane_s32(v28, 1);
        v32 = a1 + 2 * a2 - 3;
        v33 = v32 + a2;
        v34 = a1 + a2 - 3;
        v35 = v25 + 6 * v26;
        v36 = 8 * v26;
        v37 = v25 + 4 * v26;
        v38 = v25 + 2 * v26;
        v39 = a3 + 3 * a4;
        v40 = a3 + 2 * a4;
        v41 = a3 + a4;
        v42.i64[0] = 0xE800E800E800E800;
        v42.i64[1] = 0xE800E800E800E800;
        do
        {
          v43 = 0;
          v44 = 0;
          do
          {
            v45 = *(result + v44);
            v46 = *(v34 + v44);
            v47 = *(v32 + v44);
            v48 = *(v33 + v44);
            _Q19 = vqtbl1q_s8(v45, xmmword_277BC0DA0);
            _Q20 = vqtbl1q_s8(v45, xmmword_277BC0DB0);
            _Q7 = vqtbl1q_s8(v45, unk_277BC0DC0);
            __asm
            {
              USDOT           V21.4S, V19.16B, V3.16B
              USDOT           V21.4S, V20.16B, V4.16B
              USDOT           V19.4S, V20.16B, V3.16B
              USDOT           V19.4S, V7.16B, V4.16B
            }

            v60 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
            _Q19 = vqtbl1q_s8(v46, xmmword_277BC0DA0);
            _Q20 = vqtbl1q_s8(v46, xmmword_277BC0DB0);
            _Q16 = vqtbl1q_s8(v46, unk_277BC0DC0);
            __asm
            {
              USDOT           V21.4S, V19.16B, V3.16B
              USDOT           V21.4S, V20.16B, V4.16B
              USDOT           V19.4S, V20.16B, V3.16B
              USDOT           V19.4S, V16.16B, V4.16B
            }

            v68 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
            _Q19 = vqtbl1q_s8(v47, xmmword_277BC0DA0);
            _Q20 = vqtbl1q_s8(v47, xmmword_277BC0DB0);
            _Q17 = vqtbl1q_s8(v47, unk_277BC0DC0);
            __asm
            {
              USDOT           V21.4S, V19.16B, V3.16B
              USDOT           V21.4S, V20.16B, V4.16B
              USDOT           V19.4S, V20.16B, V3.16B
              USDOT           V19.4S, V17.16B, V4.16B
            }

            v76 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL);
            _Q19 = vqtbl1q_s8(v48, xmmword_277BC0DA0);
            _Q20 = vqtbl1q_s8(v48, xmmword_277BC0DB0);
            _Q18 = vqtbl1q_s8(v48, unk_277BC0DC0);
            __asm
            {
              USDOT           V21.4S, V19.16B, V3.16B
              USDOT           V21.4S, V20.16B, V4.16B
              USDOT           V19.4S, V20.16B, V3.16B
              USDOT           V19.4S, V18.16B, V4.16B
            }

            v84 = vaddq_s16(vhaddq_u16(*(v35 + v43), vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q19, 2uLL)), v42);
            *v68.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v38 + v43), v68), v42), 4uLL);
            *v76.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v37 + v43), v76), v42), 4uLL);
            *&a3[v44 / 4] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*(v25 + v43), v60), v42), 4uLL);
            *&v41[v44] = v68.i64[0];
            *&v40[v44] = v76.i64[0];
            *&v39[v44] = vqrshrun_n_s16(v84, 4uLL);
            v44 += 8;
            v43 += 16;
          }

          while (a5 != v44);
          result += v27;
          a3 = (a3 + v30);
          v33 += v27;
          v32 += v27;
          v34 += v27;
          v35 += v36;
          v37 += v36;
          v38 += v36;
          v25 += v36;
          v39 += v30;
          v40 += v30;
          v41 += v30;
          a6 -= 4;
        }

        while (a6);
      }
    }

    else
    {
      v85 = *(a16 + 8);
      v86 = *(a16 + 16);
      v87 = vshrn_n_s16(*v23, 1uLL);
      _Q3 = vdupq_lane_s32(v87, 0);
      v89 = 4 * a2;
      _Q4 = vdupq_lane_s32(v87, 1);
      v91 = a1 + 2 * a2 - 3;
      v92 = v91 + a2;
      v93 = a1 + a2 - 3;
      v94 = v85 + 6 * v86;
      v95 = 8 * v86;
      v96 = v85 + 4 * v86;
      v97 = v85 + 2 * v86;
      do
      {
        v98 = 0;
        v99 = 0;
        do
        {
          v100 = *(result + v99);
          v101 = *(v93 + v99);
          v102 = *(v91 + v99);
          v103 = *(v92 + v99);
          _Q18 = vqtbl1q_s8(v100, xmmword_277BC0DA0);
          _Q19 = vqtbl1q_s8(v100, xmmword_277BC0DB0);
          _Q6 = vqtbl1q_s8(v100, unk_277BC0DC0);
          __asm
          {
            USDOT           V20.4S, V18.16B, V3.16B
            USDOT           V20.4S, V19.16B, V4.16B
            USDOT           V18.4S, V19.16B, V3.16B
            USDOT           V18.4S, V6.16B, V4.16B
          }

          v111 = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
          _Q18 = vqtbl1q_s8(v101, xmmword_277BC0DA0);
          _Q19 = vqtbl1q_s8(v101, xmmword_277BC0DB0);
          _Q7 = vqtbl1q_s8(v101, unk_277BC0DC0);
          __asm
          {
            USDOT           V20.4S, V18.16B, V3.16B
            USDOT           V20.4S, V19.16B, V4.16B
            USDOT           V18.4S, V19.16B, V3.16B
            USDOT           V18.4S, V7.16B, V4.16B
          }

          v119 = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
          _Q18 = vqtbl1q_s8(v102, xmmword_277BC0DA0);
          _Q19 = vqtbl1q_s8(v102, xmmword_277BC0DB0);
          _Q16 = vqtbl1q_s8(v102, unk_277BC0DC0);
          __asm
          {
            USDOT           V20.4S, V18.16B, V3.16B
            USDOT           V20.4S, V19.16B, V4.16B
            USDOT           V18.4S, V19.16B, V3.16B
            USDOT           V18.4S, V16.16B, V4.16B
          }

          v127 = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
          _Q18 = vqtbl1q_s8(v103, xmmword_277BC0DA0);
          _Q19 = vqtbl1q_s8(v103, xmmword_277BC0DB0);
          _Q17 = vqtbl1q_s8(v103, unk_277BC0DC0);
          __asm
          {
            USDOT           V20.4S, V18.16B, V3.16B
            USDOT           V20.4S, V19.16B, V4.16B
            USDOT           V18.4S, V19.16B, V3.16B
            USDOT           V18.4S, V17.16B, V4.16B
          }

          *(v85 + v98) = v111;
          *(v97 + v98) = v119;
          *(v96 + v98) = v127;
          *(v94 + v98) = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q18, 2uLL);
          v99 += 8;
          v98 += 16;
        }

        while (a5 != v99);
        result += v89;
        v92 += v89;
        v91 += v89;
        v93 += v89;
        v94 += v95;
        v96 += v95;
        v97 += v95;
        v85 += v95;
        a6 -= 4;
      }

      while (a6);
    }
  }

  else if (*a16)
  {
    if (*(a16 + 36))
    {
      v239 = (a1 - 2);
      v240 = *(a16 + 8);
      v241 = *(a16 + 16);
      v242 = *(a16 + 40);
      v243 = *v23;
      v245 = *(a16 + 44);

      return sub_27799B4C4(v239, a2, v240, v241, a3, a4, a5, a6, v243, a10, *&a11, a12, *&a13, v242, v245);
    }

    else
    {
      v135 = (a1 - 2);
      v136 = *(a16 + 8);
      v137 = *(a16 + 16);
      v138 = vshrn_n_s16(*v23, 1uLL);
      _Q0 = vshrn_high_n_s16(vext_s8(v138, v138, 1uLL), *v23, 1uLL);
      if (a5 == 4)
      {
        v140 = 6 * v137;
        v141 = 8 * v137;
        result = 4 * v137;
        v142 = 2 * v137;
        v143.i64[0] = 0xE800E800E800E800;
        v143.i64[1] = 0xE800E800E800E800;
        do
        {
          _Q4 = vqtbl1q_s8(*v135, xmmword_277BB7100);
          __asm { USMMLA          V16.4S, V4.16B, V0.16B }

          *_Q4.i8 = vshrn_n_s32(_Q16, 2uLL);
          _Q5 = vqtbl1q_s8(*(v135 + a2), xmmword_277BB7100);
          __asm { USMMLA          V16.4S, V5.16B, V0.16B }

          _Q5 = vqtbl1q_s8(*(v135 + 2 * a2), xmmword_277BB7100);
          __asm { USMMLA          V6.4S, V5.16B, V0.16B }

          *_Q5.i8 = vshrn_n_s32(_Q6, 2uLL);
          _Q6 = vqtbl1q_s8(*(v135 + 3 * a2), xmmword_277BB7100);
          v151.i64[0] = *v136;
          v152.i64[0] = *(v136 + result);
          v151.i64[1] = *(v136 + v142);
          __asm { USMMLA          V7.4S, V6.16B, V0.16B }

          v152.i64[1] = *(v136 + v140);
          *_Q4.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v151, vshrn_high_n_s32(*_Q4.i8, _Q16, 2uLL)), v143), 4uLL);
          *_Q5.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(v152, vshrn_high_n_s32(*_Q5.i8, _Q7, 2uLL)), v143), 4uLL);
          *a3 = _Q4.i32[0];
          *(a3 + a4) = _Q4.i32[1];
          *(a3 + 2 * a4) = _Q5.i32[0];
          *(a3 + a4 + (2 * a4)) = _Q5.i32[1];
          v135 = (v135 + 4 * a2);
          a3 += a4;
          v136 = (v136 + v141);
          a6 -= 4;
        }

        while (a6);
      }

      else
      {
        v167 = 4 * a2;
        v168 = 4 * a4;
        v169 = a1 + 2 * a2 - 2;
        v170 = v169 + a2;
        v171 = a1 + a2 - 2;
        v172 = v136 + 6 * v137;
        result = 8 * v137;
        v173 = v136 + 4 * v137;
        v174 = v136 + 2 * v137;
        v175 = a3 + 3 * a4;
        v176 = a3 + 2 * a4;
        v177 = a3 + a4;
        v178.i64[0] = 0xE800E800E800E800;
        v178.i64[1] = 0xE800E800E800E800;
        do
        {
          v179 = 0;
          v180 = 0;
          do
          {
            v181 = *(v135 + v180);
            v182 = *(v171 + v180);
            v183 = *(v169 + v180);
            v184 = *(v170 + v180);
            _Q17 = vqtbl1q_s8(v181, xmmword_277BC0D80);
            _Q5 = vqtbl1q_s8(v181, unk_277BC0D90);
            __asm
            {
              USMMLA          V18.4S, V17.16B, V0.16B
              USMMLA          V17.4S, V5.16B, V0.16B
            }

            v189 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
            _Q17 = vqtbl1q_s8(v182, xmmword_277BC0D80);
            _Q6 = vqtbl1q_s8(v182, unk_277BC0D90);
            __asm
            {
              USMMLA          V18.4S, V17.16B, V0.16B
              USMMLA          V17.4S, V6.16B, V0.16B
            }

            v194 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
            _Q17 = vqtbl1q_s8(v183, xmmword_277BC0D80);
            _Q7 = vqtbl1q_s8(v183, unk_277BC0D90);
            __asm
            {
              USMMLA          V18.4S, V17.16B, V0.16B
              USMMLA          V17.4S, V7.16B, V0.16B
            }

            v199 = vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL);
            _Q17 = vqtbl1q_s8(v184, xmmword_277BC0D80);
            _Q16 = vqtbl1q_s8(v184, unk_277BC0D90);
            __asm
            {
              USMMLA          V18.4S, V17.16B, V0.16B
              USMMLA          V17.4S, V16.16B, V0.16B
            }

            v204 = vaddq_s16(vhaddq_u16(*&v172[v179], vshrn_high_n_s32(vshrn_n_s32(_Q18, 2uLL), _Q17, 2uLL)), v178);
            *v194.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v174[v179], v194), v178), 4uLL);
            *v199.i8 = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v173[v179], v199), v178), 4uLL);
            *&a3[v180 / 4] = vqrshrun_n_s16(vaddq_s16(vhaddq_u16(*&v136[v179 / 8], v189), v178), 4uLL);
            *&v177[v180] = v194.i64[0];
            *&v176[v180] = v199.i64[0];
            *&v175[v180] = vqrshrun_n_s16(v204, 4uLL);
            v180 += 8;
            v179 += 16;
          }

          while (a5 != v180);
          v135 = (v135 + v167);
          a3 = (a3 + v168);
          v170 += v167;
          v169 += v167;
          v171 += v167;
          v172 += result;
          v173 += result;
          v174 += result;
          v136 = (v136 + result);
          v175 += v168;
          v176 += v168;
          v177 += v168;
          a6 -= 4;
        }

        while (a6);
      }
    }
  }

  else
  {
    v154 = (a1 - 2);
    v155 = *(a16 + 8);
    v156 = *(a16 + 16);
    v157 = vshrn_n_s16(*v23, 1uLL);
    _Q0 = vshrn_high_n_s16(vext_s8(v157, v157, 1uLL), *v23, 1uLL);
    if (a5 == 4)
    {
      result = 3 * a2;
      do
      {
        _Q3 = vqtbl1q_s8(*v154, xmmword_277BB7100);
        __asm { USMMLA          V7.4S, V3.16B, V0.16B }

        *_Q3.i8 = vshrn_n_s32(_Q7, 2uLL);
        _Q4 = vqtbl1q_s8(*(v154 + a2), xmmword_277BB7100);
        __asm { USMMLA          V7.4S, V4.16B, V0.16B }

        *_Q4.i8 = vshrn_n_s32(_Q7, 2uLL);
        _Q5 = vqtbl1q_s8(*(v154 + 2 * a2), xmmword_277BB7100);
        __asm { USMMLA          V7.4S, V5.16B, V0.16B }

        *_Q5.i8 = vshrn_n_s32(_Q7, 2uLL);
        _Q6 = vqtbl1q_s8(*(v154 + 3 * a2), xmmword_277BB7100);
        __asm { USMMLA          V7.4S, V6.16B, V0.16B }

        *v155 = _Q3.i64[0];
        *(v155 + 2 * v156) = _Q4.i64[0];
        *(v155 + 4 * v156) = _Q5.i64[0];
        *(v155 + 6 * v156) = vshrn_n_s32(_Q7, 2uLL);
        v154 = (v154 + 4 * a2);
        v155 += v156;
        a6 -= 4;
      }

      while (a6);
    }

    else
    {
      v205 = 4 * a2;
      v206 = a1 + 2 * a2 - 2;
      v207 = v206 + a2;
      v208 = a1 + a2 - 2;
      v209 = v155 + 6 * v156;
      v210 = 8 * v156;
      result = v155 + 4 * v156;
      v211 = v155 + 2 * v156;
      do
      {
        v212 = 0;
        v213 = 0;
        do
        {
          v214 = *(v154 + v213);
          v215 = *(v208 + v213);
          v216 = *(v206 + v213);
          v217 = *(v207 + v213);
          _Q16 = vqtbl1q_s8(v214, xmmword_277BC0D80);
          _Q4 = vqtbl1q_s8(v214, unk_277BC0D90);
          __asm
          {
            USMMLA          V17.4S, V16.16B, V0.16B
            USMMLA          V16.4S, V4.16B, V0.16B
          }

          v222 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
          _Q16 = vqtbl1q_s8(v215, xmmword_277BC0D80);
          _Q5 = vqtbl1q_s8(v215, unk_277BC0D90);
          __asm
          {
            USMMLA          V17.4S, V16.16B, V0.16B
            USMMLA          V16.4S, V5.16B, V0.16B
          }

          v227 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
          _Q16 = vqtbl1q_s8(v216, xmmword_277BC0D80);
          _Q6 = vqtbl1q_s8(v216, unk_277BC0D90);
          __asm
          {
            USMMLA          V17.4S, V16.16B, V0.16B
            USMMLA          V16.4S, V6.16B, V0.16B
          }

          v232 = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
          _Q16 = vqtbl1q_s8(v217, xmmword_277BC0D80);
          _Q7 = vqtbl1q_s8(v217, unk_277BC0D90);
          __asm
          {
            USMMLA          V17.4S, V16.16B, V0.16B
            USMMLA          V16.4S, V7.16B, V0.16B
          }

          *&v155[v212 / 8] = v222;
          *&v211[v212] = v227;
          *(result + v212) = v232;
          *&v209[v212] = vshrn_high_n_s32(vshrn_n_s32(_Q17, 2uLL), _Q16, 2uLL);
          v213 += 8;
          v212 += 16;
        }

        while (a5 != v213);
        v154 = (v154 + v205);
        v207 += v205;
        v206 += v205;
        v208 += v205;
        v209 += v210;
        result += v210;
        v211 += v210;
        v155 = (v155 + v210);
        a6 -= 4;
      }

      while (a6);
    }
  }

  return result;
}

int8x16_t *sub_27799B4C4(int8x16_t *result, int a2, uint16x4_t *a3, int a4, _DWORD *a5, int a6, int a7, int a8, int16x8_t a9, double a10, uint16x4_t a11, double a12, uint16x4_t a13, unsigned __int16 a14, unsigned __int16 a15)
{
  v15 = vshrn_n_s16(a9, 1uLL);
  _Q1 = vshrn_high_n_s16(vext_s8(v15, v15, 1uLL), a9, 1uLL);
  if (a7 == 4)
  {
    a9.i32[0] = a14;
    a11.i32[0] = a15;
    v17.i64[0] = 0xE800E800E800E800;
    v17.i64[1] = 0xE800E800E800E800;
    do
    {
      _Q6 = vqtbl1q_s8(*result, xmmword_277BB7100);
      _Q16 = vqtbl1q_s8(*(result + a2), xmmword_277BB7100);
      __asm
      {
        USMMLA          V18.4S, V6.16B, V1.16B
        USMMLA          V6.4S, V16.16B, V1.16B
      }

      _Q7 = vqtbl1q_s8(*(result + 2 * a2), xmmword_277BB7100);
      __asm { USMMLA          V16.4S, V7.16B, V1.16B }

      *_Q7.i8 = vshrn_n_s32(_Q18, 2uLL);
      _Q17 = vqtbl1q_s8(*(result + 3 * a2), xmmword_277BB7100);
      __asm { USMMLA          V18.4S, V17.16B, V1.16B }

      *_Q6.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q7.i8, a11, 0), *a3, *a9.i8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q6, 2uLL), a11, 0), *(a3 + 2 * a4), *a9.i8, 0), 4uLL), v17), 4uLL);
      *_Q7.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q16, 2uLL), a11, 0), *(a3 + 4 * a4), *a9.i8, 0), 4uLL), vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q18, 2uLL), a11, 0), *(a3 + 6 * a4), *a9.i8, 0), 4uLL), v17), 4uLL);
      *a5 = _Q6.i32[0];
      *(a5 + a6) = _Q6.i32[1];
      *(a5 + 2 * a6) = _Q7.i32[0];
      *(a5 + a6 + (2 * a6)) = _Q7.i32[1];
      result = (result + 4 * a2);
      a5 += a6;
      a3 += a4;
      a8 -= 4;
    }

    while (a8);
  }

  else
  {
    v30 = 4 * a2;
    a9.i32[0] = a14;
    a13.i32[0] = a15;
    v31 = 4 * a6;
    v32 = &result->i8[3 * a2];
    v33 = &result->i8[2 * a2];
    v34 = &result->i8[a2];
    v35 = a3 + 6 * a4;
    v36 = 8 * a4;
    v37 = a3 + 4 * a4;
    v38 = a3 + 2 * a4;
    v39 = a5 + 3 * a6;
    v40 = a5 + 2 * a6;
    v41 = a5 + a6;
    v42.i64[0] = 0xE800E800E800E800;
    v42.i64[1] = 0xE800E800E800E800;
    do
    {
      v44 = 0;
      v45 = 0;
      do
      {
        v46 = *(result + v45);
        v47 = *&v34[v45];
        v48 = *&v33[v45];
        v49 = *&v32[v45];
        _Q19 = vqtbl1q_s8(v46, unk_277BC0D80);
        _Q7 = vqtbl1q_s8(v46, unk_277BC0D90);
        __asm
        {
          USMMLA          V20.4S, V19.16B, V1.16B
          USMMLA          V19.4S, V7.16B, V1.16B
        }

        *_Q7.i8 = vshrn_n_s32(_Q20, 2uLL);
        _Q20 = vqtbl1q_s8(v47, unk_277BC0D80);
        _Q16 = vqtbl1q_s8(v47, unk_277BC0D90);
        __asm
        {
          USMMLA          V21.4S, V20.16B, V1.16B
          USMMLA          V20.4S, V16.16B, V1.16B
        }

        *_Q16.i8 = vshrn_n_s32(_Q21, 2uLL);
        _Q21 = vqtbl1q_s8(v48, unk_277BC0D80);
        _Q17 = vqtbl1q_s8(v48, unk_277BC0D90);
        __asm
        {
          USMMLA          V22.4S, V21.16B, V1.16B
          USMMLA          V21.4S, V17.16B, V1.16B
        }

        *_Q17.i8 = vshrn_n_s32(_Q22, 2uLL);
        _Q22 = vqtbl1q_s8(v49, unk_277BC0D80);
        _Q18 = vqtbl1q_s8(v49, unk_277BC0D90);
        __asm
        {
          USMMLA          V23.4S, V22.16B, V1.16B
          USMMLA          V22.4S, V18.16B, V1.16B
        }

        v66 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q23, 2uLL), a13, 0), *&v35[v44], *a9.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q22, 2uLL), a13, 0), *&v35[v44], *a9.i8, 0), 4uLL), v42);
        *_Q16.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q16.i8, a13, 0), *&v38[v44], *a9.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q20, 2uLL), a13, 0), *&v38[v44], *a9.i8, 0), 4uLL), v42), 4uLL);
        *_Q17.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q17.i8, a13, 0), *&v37[v44], *a9.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q21, 2uLL), a13, 0), *&v37[v44], *a9.i8, 0), 4uLL), v42), 4uLL);
        *&a5[v45 / 4] = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q7.i8, a13, 0), a3[v44 / 8], *a9.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q19, 2uLL), a13, 0), *a3[v44 / 8].i8, *a9.i8, 0), 4uLL), v42), 4uLL);
        *&v41[v45] = _Q16.i64[0];
        *&v40[v45] = _Q17.i64[0];
        *&v39[v45] = vqrshrun_n_s16(v66, 4uLL);
        v45 += 8;
        v44 += 16;
      }

      while (a7 != v45);
      result = (result + v30);
      a5 = (a5 + v31);
      v32 += v30;
      v33 += v30;
      v34 += v30;
      v35 += v36;
      v37 += v36;
      v38 += v36;
      a3 = (a3 + v36);
      v39 += v31;
      v40 += v31;
      v41 += v31;
      a8 -= 4;
    }

    while (a8);
  }

  return result;
}

uint64_t sub_27799B80C(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8, int16x8_t a9, double a10, double a11, double a12, double a13, uint16x4_t a14, uint16x4_t a15, unsigned __int16 a16, unsigned __int16 a17)
{
  v17 = 4 * a2;
  v18 = 4 * a6;
  v19 = 8 * a4;
  v20 = vshrn_n_s16(a9, 1uLL);
  _Q0 = vdupq_lane_s32(v20, 0);
  _Q4 = vdupq_lane_s32(v20, 1);
  a14.i32[0] = a16;
  a15.i32[0] = a17;
  v23 = result + 3 * a2;
  v24 = a3 + 6 * a4;
  v25 = result + 2 * a2;
  v26 = result + a2;
  v27 = a3 + 4 * a4;
  v28 = a3 + 2 * a4;
  v29 = a5 + 3 * a6;
  v30 = a5 + 2 * a6;
  v31 = a5 + a6;
  v32.i64[0] = 0xE800E800E800E800;
  v32.i64[1] = 0xE800E800E800E800;
  do
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *(result + v35);
      v37 = *(v26 + v35);
      v38 = *(v25 + v35);
      v39 = *(v23 + v35);
      _Q21 = vqtbl1q_s8(v36, unk_277BC0DA0);
      _Q22 = vqtbl1q_s8(v36, unk_277BC0DB0);
      _Q17 = vqtbl1q_s8(v36, unk_277BC0DC0);
      __asm
      {
        USDOT           V23.4S, V21.16B, V0.16B
        USDOT           V23.4S, V22.16B, V4.16B
        USDOT           V21.4S, V22.16B, V0.16B
        USDOT           V21.4S, V17.16B, V4.16B
      }

      *_Q17.i8 = vshrn_n_s32(_Q23, 2uLL);
      _Q22 = vqtbl1q_s8(v37, unk_277BC0DA0);
      _Q23 = vqtbl1q_s8(v37, unk_277BC0DB0);
      _Q18 = vqtbl1q_s8(v37, unk_277BC0DC0);
      __asm
      {
        USDOT           V24.4S, V22.16B, V0.16B
        USDOT           V24.4S, V23.16B, V4.16B
        USDOT           V22.4S, V23.16B, V0.16B
        USDOT           V22.4S, V18.16B, V4.16B
      }

      *_Q18.i8 = vshrn_n_s32(_Q24, 2uLL);
      _Q23 = vqtbl1q_s8(v38, unk_277BC0DA0);
      _Q24 = vqtbl1q_s8(v38, unk_277BC0DB0);
      _Q19 = vqtbl1q_s8(v38, unk_277BC0DC0);
      __asm
      {
        USDOT           V25.4S, V23.16B, V0.16B
        USDOT           V25.4S, V24.16B, V4.16B
        USDOT           V23.4S, V24.16B, V0.16B
        USDOT           V23.4S, V19.16B, V4.16B
      }

      *_Q19.i8 = vshrn_n_s32(_Q25, 2uLL);
      _Q24 = vqtbl1q_s8(v39, unk_277BC0DA0);
      _Q25 = vqtbl1q_s8(v39, unk_277BC0DB0);
      _Q20 = vqtbl1q_s8(v39, unk_277BC0DC0);
      __asm
      {
        USDOT           V26.4S, V24.16B, V0.16B
        USDOT           V26.4S, V25.16B, V4.16B
        USDOT           V24.4S, V25.16B, V0.16B
        USDOT           V24.4S, V20.16B, V4.16B
      }

      v72 = vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q26, 2uLL), a15, 0), *(v24 + v34), a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q24, 2uLL), a15, 0), *(v24 + v34), a14, 0), 4uLL), v32);
      *_Q18.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q18.i8, a15, 0), *(v28 + v34), a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q22, 2uLL), a15, 0), *(v28 + v34), a14, 0), 4uLL), v32), 4uLL);
      *_Q19.i8 = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q19.i8, a15, 0), *(v27 + v34), a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q23, 2uLL), a15, 0), *(v27 + v34), a14, 0), 4uLL), v32), 4uLL);
      *(a5 + v35) = vqrshrun_n_s16(vaddq_s16(vshrn_high_n_s32(vshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*_Q17.i8, a15, 0), *(a3 + v34), a14, 0), 4uLL), vmlal_high_lane_u16(vmull_lane_u16(vshrn_n_s32(_Q21, 2uLL), a15, 0), *(a3 + v34), a14, 0), 4uLL), v32), 4uLL);
      *(v31 + v35) = _Q18.i64[0];
      *(v30 + v35) = _Q19.i64[0];
      *(v29 + v35) = vqrshrun_n_s16(v72, 4uLL);
      v35 += 8;
      v34 += 16;
    }

    while (a7 != v35);
    result += v17;
    a5 += v18;
    v23 += v17;
    v25 += v17;
    v26 += v17;
    v24 += v19;
    v27 += v19;
    v28 += v19;
    a3 += v19;
    v29 += v18;
    v30 += v18;
    v31 += v18;
    a8 -= 4;
  }

  while (a8);
  return result;
}

unint64_t sub_27799BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  result = MEMORY[0x28223BE20]();
  v43 = v42;
  v44 = v40;
  v45 = v39;
  v46 = a11;
  STACK[0x10CB8] = *MEMORY[0x277D85DE8];
  if (v39 < 4 || v40 <= 3)
  {

    return sub_27797D4A0(result, v36, v37, v38, v39, v40, v43, v41, a9, a10, a11, a12, a13);
  }

  else
  {
    v47 = a11 + (v40 - 1) * a12;
    v48 = *(v41 + 8);
    v49 = v48 + (v47 >> 10);
    v50 = *(a13 + 8);
    v51 = *(a13 + 16);
    v52 = *(v43 + 8) >> 1;
    v53 = (((v48 >> 1) - 1) * v36);
    if (a10 == 2048)
    {
      v54 = *xmmword_277BC0DD0[0].i8;
      v55.i64[0] = xmmword_277BC0DD0[1].i64[0];
      v56 = vshrn_n_s16(*(*v43 + 2 * ((a9 >> 3) & 0x78)), 1uLL);
      _Q2 = vdupq_lane_s32(v56, 0);
      _Q3 = vdupq_lane_s32(v56, 1);
      v59 = 4 * v36;
      v60 = 3 * v36;
      v61 = 2 * v36;
      if (v45 == 4)
      {
        v62 = (v47 >> 10) + v48 + 4;
        v63 = v60 - (v52 + v53) + 1;
        v64 = v61 - v52 - v53;
        v65 = v36 - v52 - v53;
        v66 = 1 - (v52 + v53);
        v67 = &v243;
        do
        {
          v68 = *(result + v66);
          v69 = *(result + v65 + 1);
          v70 = *(result + v64 + 1);
          v71 = *(result + v63);
          _Q17 = vqtbl1q_s8(v68, xmmword_277BC0DD0[0]);
          _Q5 = vqtbl1q_s8(v68, xmmword_277BC0DD0[1]);
          __asm
          {
            USDOT           V18.4S, V17.16B, V2.16B
            USDOT           V18.4S, V5.16B, V3.16B
          }

          *_Q5.i8 = vshrn_n_s32(_Q18, 2uLL);
          _Q17 = vqtbl1q_s8(v69, xmmword_277BC0DD0[0]);
          _Q6 = vqtbl1q_s8(v69, xmmword_277BC0DD0[1]);
          __asm
          {
            USDOT           V18.4S, V17.16B, V2.16B
            USDOT           V18.4S, V6.16B, V3.16B
          }

          *_Q6.i8 = vshrn_n_s32(_Q18, 2uLL);
          _Q17 = vqtbl1q_s8(v70, xmmword_277BC0DD0[0]);
          _Q7 = vqtbl1q_s8(v70, xmmword_277BC0DD0[1]);
          __asm
          {
            USDOT           V18.4S, V17.16B, V2.16B
            USDOT           V18.4S, V7.16B, V3.16B
          }

          *_Q7.i8 = vshrn_n_s32(_Q18, 2uLL);
          _Q17 = vqtbl1q_s8(v71, xmmword_277BC0DD0[0]);
          _Q16 = vqtbl1q_s8(v71, xmmword_277BC0DD0[1]);
          __asm
          {
            USDOT           V18.4S, V17.16B, V2.16B
            USDOT           V18.4S, V16.16B, V3.16B
          }

          *v67 = *_Q5.i8;
          v67[32] = *_Q6.i8;
          v67[64] = *_Q7.i8;
          v67[96] = vshrn_n_s32(_Q18, 2uLL);
          v67 += 128;
          v62 -= 4;
          result += v59;
        }

        while (v62 > 4);
      }

      else
      {
        v113 = v60 - (v52 + v53) + result + 9;
        v114 = v61 - v52 - v53 + result + 9;
        v115 = v36 - v52 - v53 + result + 9;
        result = result - (v52 + v53) + 9;
        v116 = &v243;
        do
        {
          v117 = 0;
          v118 = v45;
          do
          {
            v119 = &v116[v117 / 8];
            v120 = *(result + v117 - 8);
            v121 = *(v115 + v117 - 8);
            v122 = *(v114 + v117 - 8);
            v123 = *(v113 + v117 - 8);
            v124 = *(result + v117);
            v125 = *(v115 + v117);
            v126 = *(v114 + v117);
            v127 = *(v113 + v117);
            _Q21 = vqtbl1q_s8(v120, xmmword_277BC0DD0[0]);
            _Q5 = vqtbl1q_s8(v120, xmmword_277BC0DD0[1]);
            _Q22 = vqtbl1q_s8(v124, xmmword_277BC0DD0[0]);
            _Q17 = vqtbl1q_s8(v124, xmmword_277BC0DD0[1]);
            __asm
            {
              USDOT           V23.4S, V21.16B, V2.16B
              USDOT           V23.4S, V5.16B, V3.16B
              USDOT           V5.4S, V22.16B, V2.16B
              USDOT           V5.4S, V17.16B, V3.16B
            }

            v136 = vshrn_high_n_s32(vshrn_n_s32(_Q23, 2uLL), _Q5, 2uLL);
            _Q5 = vqtbl1q_s8(v121, xmmword_277BC0DD0[0]);
            _Q6 = vqtbl1q_s8(v121, xmmword_277BC0DD0[1]);
            _Q21 = vqtbl1q_s8(v125, xmmword_277BC0DD0[0]);
            _Q18 = vqtbl1q_s8(v125, xmmword_277BC0DD0[1]);
            __asm
            {
              USDOT           V22.4S, V5.16B, V2.16B
              USDOT           V22.4S, V6.16B, V3.16B
              USDOT           V5.4S, V21.16B, V2.16B
              USDOT           V5.4S, V18.16B, V3.16B
            }

            v145 = vshrn_high_n_s32(vshrn_n_s32(_Q22, 2uLL), _Q5, 2uLL);
            _Q5 = vqtbl1q_s8(v122, xmmword_277BC0DD0[0]);
            _Q7 = vqtbl1q_s8(v122, xmmword_277BC0DD0[1]);
            _Q18 = vqtbl1q_s8(v126, xmmword_277BC0DD0[0]);
            _Q19 = vqtbl1q_s8(v126, xmmword_277BC0DD0[1]);
            __asm
            {
              USDOT           V21.4S, V5.16B, V2.16B
              USDOT           V21.4S, V7.16B, V3.16B
              USDOT           V5.4S, V18.16B, V2.16B
              USDOT           V5.4S, V19.16B, V3.16B
            }

            v154 = vshrn_high_n_s32(vshrn_n_s32(_Q21, 2uLL), _Q5, 2uLL);
            _Q5 = vqtbl1q_s8(v123, xmmword_277BC0DD0[0]);
            _Q16 = vqtbl1q_s8(v123, xmmword_277BC0DD0[1]);
            _Q18 = vqtbl1q_s8(v127, xmmword_277BC0DD0[0]);
            _Q19 = vqtbl1q_s8(v127, xmmword_277BC0DD0[1]);
            __asm
            {
              USDOT           V20.4S, V5.16B, V2.16B
              USDOT           V20.4S, V16.16B, V3.16B
              USDOT           V5.4S, V18.16B, V2.16B
              USDOT           V5.4S, V19.16B, V3.16B
            }

            *v119 = v136;
            v119[16] = v145;
            v119[32] = v154;
            v119[48] = vshrn_high_n_s32(vshrn_n_s32(_Q20, 2uLL), _Q5, 2uLL);
            v117 += 16;
            v118 -= 8;
          }

          while (v118);
          v116 += 128;
          v113 += v59;
          v114 += v59;
          v115 += v59;
          result += v59;
          _VF = __OFSUB__(v49, 4);
          v49 -= 4;
        }

        while (!((v49 < 0) ^ _VF | (v49 == 0)));
      }
    }

    else
    {
      result = result - v52 - v53 + 1;
      v92 = *v43;
      if (v45 == 4)
      {
        v93 = &v243;
        v54 = vdupq_n_s32(0x1001u).u64[0];
        do
        {
          v94 = 0;
          v95 = a9;
          do
          {
            v96 = (result + (v95 >> 10));
            v97 = *(v92 + 2 * ((v95 >> 3) & 0x78));
            *&_Q2 = *v96;
            v99 = (v96 + v36);
            v100 = *v99;
            v101 = (v99 + v36);
            *&_Q5 = *v101;
            *(&_Q2 + 1) = v100;
            *(&_Q5 + 1) = *(v101 + v36);
            _Q6 = vshrn_high_n_s16(vshrn_n_s16(v97, 1uLL), v97, 1uLL);
            __asm
            {
              USDOT           V1.4S, V2.16B, V6.16B
              USDOT           V2.4S, V5.16B, V6.16B
            }

            *(&STACK[0x10C30] + v94) = vshrn_n_s32(vpaddq_s32(_Q1, _Q2), 2uLL);
            v95 += a10;
            v94 += 8;
          }

          while (v94 != 32);
          v106 = vtrn1_s16(STACK[0x10C30], STACK[0x10C38]);
          v107 = vtrn2_s16(STACK[0x10C30], STACK[0x10C38]);
          v108 = vtrn1_s16(STACK[0x10C40], STACK[0x10C48]);
          v109 = vtrn2_s16(STACK[0x10C40], STACK[0x10C48]);
          v110 = vzip1_s32(v106, v108);
          v111 = vzip2_s32(v106, v108);
          v112 = vzip1_s32(v107, v109);
          *v55.i8 = vzip2_s32(v107, v109);
          *v93 = v110;
          v93[32] = v112;
          v93[64] = v111;
          v93[96] = *v55.i8;
          v93 += 128;
          result += 4 * v36;
          _VF = __OFSUB__(v49, 4);
          v49 -= 4;
        }

        while (!((v49 < 0) ^ _VF | (v49 == 0)));
      }

      else
      {
        v163 = &v243;
        v54 = vdupq_n_s32(0x1001u).u64[0];
        do
        {
          v164 = v45;
          v165 = v163;
          v166 = a9;
          do
          {
            for (i = 0; i != 128; i += 16)
            {
              v168 = (result + (v166 >> 10));
              v169 = *(v92 + 2 * ((v166 >> 3) & 0x78));
              *&_Q2 = *v168;
              v171 = (v168 + v36);
              v172 = *v171;
              v173 = (v171 + v36);
              *&_Q4 = *v173;
              v175 = (v173 + v36);
              v176 = *v175;
              v177 = (v175 + v36);
              *&_Q6 = *v177;
              v179 = (v177 + v36);
              v180 = *v179;
              v181 = (v179 + v36);
              *&_Q16 = *v181;
              *(&_Q2 + 1) = v172;
              *(&_Q4 + 1) = v176;
              *(&_Q6 + 1) = v180;
              *(&_Q16 + 1) = *(v181 + v36);
              _Q18 = vshrn_high_n_s16(vshrn_n_s16(v169, 1uLL), v169, 1uLL);
              __asm
              {
                USDOT           V1.4S, V2.16B, V18.16B
                USDOT           V2.4S, V4.16B, V18.16B
                USDOT           V3.4S, V6.16B, V18.16B
                USDOT           V4.4S, V16.16B, V18.16B
              }

              *(&STACK[0x10C30] + i) = vshrn_high_n_s32(vshrn_n_s32(vpaddq_s32(_Q1, _Q2), 2uLL), vpaddq_s32(_Q3, _Q4), 2uLL);
              v166 += a10;
            }

            v188 = vtrn1q_s16(*&STACK[0x10C30], *&STACK[0x10C40]);
            v189 = vtrn2q_s16(*&STACK[0x10C30], *&STACK[0x10C40]);
            v190 = vtrn1q_s16(*&STACK[0x10C50], *&STACK[0x10C60]);
            v191 = vtrn2q_s16(*&STACK[0x10C50], *&STACK[0x10C60]);
            v192 = vtrn1q_s16(*&STACK[0x10C70], *&STACK[0x10C80]);
            v193 = vtrn2q_s16(*&STACK[0x10C70], *&STACK[0x10C80]);
            v194 = vtrn1q_s16(*&STACK[0x10C90], *&STACK[0x10CA0]);
            v195 = vtrn2q_s16(*&STACK[0x10C90], *&STACK[0x10CA0]);
            v196 = vtrn1q_s32(v188, v190);
            v197 = vtrn2q_s32(v188, v190);
            v198 = vtrn1q_s32(v189, v191);
            v55 = vtrn2q_s32(v189, v191);
            v199 = vtrn1q_s32(v192, v194);
            v200 = vtrn2q_s32(v192, v194);
            v201 = vtrn1q_s32(v193, v195);
            v202 = vtrn2q_s32(v193, v195);
            v203 = vzip2q_s64(v196, v199);
            v196.i64[1] = v199.i64[0];
            v204 = vzip2q_s64(v198, v201);
            v198.i64[1] = v201.i64[0];
            v205 = vzip2q_s64(v197, v200);
            v197.i64[1] = v200.i64[0];
            v206 = vzip2q_s64(v55, v202);
            v55.i64[1] = v202.i64[0];
            *v165 = v196;
            v165[16] = v198;
            v165[32] = v197;
            v165[48] = v55;
            v165[64] = v203;
            v165[80] = v204;
            v165[96] = v205;
            v165[112] = v206;
            ++v165;
            v164 -= 8;
          }

          while (v164);
          v163 += 128;
          result += 8 * v36;
          _VF = __OFSUB__(v49, 8);
          v49 -= 8;
        }

        while (!((v49 < 0) ^ _VF | (v49 == 0)));
      }
    }

    v207 = *(a13 + 32);
    if (*(v41 + 10) == 2)
    {
      if (v207)
      {
        if (*a13)
        {
          v241 = *v41;
          if (*(a13 + 36))
          {
            return sub_27799C6E0(&v243, v37, v38, v50, v51, v45, v44, v241, v54, *v55.i8, *(a13 + 40), HIWORD(*(a13 + 40)), *(a13 + 44), a11, a12);
          }

          else
          {
            return sub_27799C8B8(&v243, v37, v38, v50, v51, v45, v44, v241, a11, a12);
          }
        }

        else
        {
          return sub_27799CA48(&v243, v50, v51, v45, v44, *v41, a11, a12);
        }
      }

      else
      {
        v208 = *v41;
        if (v45 == 4)
        {
          v216 = vdupq_n_s32(0xFFFC0400);
          do
          {
            v217 = *(v208 + 2 * ((v46 >> 3) & 0x78));
            v218 = (&v243 + 2 * ((v46 >> 3) & 0xFFFFFF80));
            *v217.i8 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v216, *v218, *v217.i8, 0), v218[32], *v217.i8, 1), v218[64], *v217.i8, 2), v218[96], *v217.i8, 3), v218[128], v217, 4), v218[160], v217, 5), v218[192], v217, 6), v218[224], v217, 7), 0xBuLL);
            v37->i32[0] = vqmovun_s16(v217).u32[0];
            v37 = (v37 + v38);
            v46 += a12;
            --v44;
          }

          while (v44);
        }

        else if (v45 == 8)
        {
          v209 = vdupq_n_s32(0xFFFC0400);
          do
          {
            v210 = (&v243 + 2 * ((v46 >> 3) & 0xFFFFFF80));
            v211 = *(v208 + 2 * ((v46 >> 3) & 0x78));
            *v37 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v210, *v211.i8, 0), v210[32], *v211.i8, 1), v210[64], *v211.i8, 2), v210[96], *v211.i8, 3), v210[128], v211, 4), v210[160], v211, 5), v210[192], v211, 6), v210[224], v211, 7), v209), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v210->i8, *v211.i8, 0), *v210[32].i8, *v211.i8, 1), *v210[64].i8, *v211.i8, 2), *v210[96].i8, *v211.i8, 3), *v210[128].i8, v211, 4), *v210[160].i8, v211, 5), *v210[192].i8, v211, 6), *v210[224].i8, v211, 7), v209), 0xBuLL));
            v37 = (v37 + v38);
            v46 += a12;
            --v44;
          }

          while (v44);
        }

        else
        {
          v222 = vdupq_n_s32(0xFFFC0400);
          do
          {
            v223 = 0;
            v224 = (&v243 + 2 * ((v46 >> 3) & 0xFFFFFF80));
            v225 = *(v208 + 2 * ((v46 >> 3) & 0x78));
            do
            {
              v226 = v224[64];
              v227 = v224[80];
              v228 = v224[96];
              v229 = v224[112];
              v230 = v224[1];
              v232 = v224[16];
              v231 = v224[17];
              v234 = v224[32];
              v233 = v224[33];
              v236 = v224[48];
              v235 = v224[49];
              *v37[v223].i8 = vqmovun_high_s16(vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v224->i8, *v225.i8, 0), *v232.i8, *v225.i8, 1), *v234.i8, *v225.i8, 2), *v236.i8, *v225.i8, 3), *v226.i8, v225, 4), *v227.i8, v225, 5), *v228.i8, v225, 6), *v229.i8, v225, 7), v222), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v224, *v225.i8, 0), v232, *v225.i8, 1), v234, *v225.i8, 2), v236, *v225.i8, 3), v226, v225, 4), v227, v225, 5), v228, v225, 6), v229, v225, 7), v222), 0xBuLL)), vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v230.i8, *v225.i8, 0), *v231.i8, *v225.i8, 1), *v233.i8, *v225.i8, 2), *v235.i8, *v225.i8, 3), *v224[65].i8, v225, 4), *v224[81].i8, v225, 5), *v224[97].i8, v225, 6), *v224[113].i8, v225, 7), v222), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v230, *v225.i8, 0), v231, *v225.i8, 1), v233, *v225.i8, 2), v235, *v225.i8, 3), v224[65], v225, 4), v224[81], v225, 5), v224[97], v225, 6), v224[113], v225, 7), v222), 0xBuLL));
              v223 += 2;
              v224 += 2;
            }

            while (v45 != (v223 * 8));
            v37 = (v37 + v38);
            v46 += a12;
            --v44;
          }

          while (v44);
        }
      }
    }

    else if (v207)
    {
      if (*a13)
      {
        v242 = *v41;
        if (*(a13 + 36))
        {
          return sub_27799CB9C(&a35, v37, v38, v50, v51, v45, v44, v242, v54, *v55.i8, *(a13 + 40), HIWORD(*(a13 + 40)), *(a13 + 44), a11, a12);
        }

        else
        {
          return sub_27799CD4C(&a35, v37, v38, v50, v51, v45, v44, v242, a11, a12);
        }
      }

      else
      {
        return sub_27799CEB4(&a35, v50, v51, v45, v44, *v41, a11, a12);
      }
    }

    else
    {
      v212 = *v41;
      if (v45 == 4)
      {
        v219 = vdupq_n_s32(0xFFFC0400);
        do
        {
          v220 = (&a35 + 2 * ((v46 >> 3) & 0xFFFFFF80));
          v221 = *(v212 + 2 * ((v46 >> 3) & 0x78));
          *v221.i8 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v219, *v220, *v221.i8, 1), v220[32], *v221.i8, 2), v220[64], *v221.i8, 3), v220[96], v221, 4), v220[128], v221, 5), v220[160], v221, 6), 0xBuLL);
          v37->i32[0] = vqmovun_s16(v221).u32[0];
          v37 = (v37 + v38);
          v46 += a12;
          --v44;
        }

        while (v44);
      }

      else if (v45 == 8)
      {
        v213 = vdupq_n_s32(0xFFFC0400);
        do
        {
          v214 = (&a35 + 2 * ((v46 >> 3) & 0xFFFFFF80));
          v215 = *(v212 + 2 * ((v46 >> 3) & 0x78));
          *v37 = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v214, *v215.i8, 1), v214[32], *v215.i8, 2), v214[64], *v215.i8, 3), v214[96], v215, 4), v214[128], v215, 5), v214[160], v215, 6), v213), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v214->i8, *v215.i8, 1), *v214[32].i8, *v215.i8, 2), *v214[64].i8, *v215.i8, 3), *v214[96].i8, v215, 4), *v214[128].i8, v215, 5), *v214[160].i8, v215, 6), v213), 0xBuLL));
          v37 = (v37 + v38);
          v46 += a12;
          --v44;
        }

        while (v44);
      }

      else
      {
        v237 = vdupq_n_s32(0xFFFC0400);
        do
        {
          v238 = 0;
          v239 = (&a35 + 2 * ((v46 >> 3) & 0xFFFFFF80));
          v240 = *(v212 + 2 * ((v46 >> 3) & 0x78));
          do
          {
            *v37[v238].i8 = vqmovun_high_s16(vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v239, *v240.i8, 1), v239[32], *v240.i8, 2), v239[64], *v240.i8, 3), v239[96], v240, 4), v239[128], v240, 5), v239[160], v240, 6), v237), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v239->i8, *v240.i8, 1), *v239[32].i8, *v240.i8, 2), *v239[64].i8, *v240.i8, 3), *v239[96].i8, v240, 4), *v239[128].i8, v240, 5), *v239[160].i8, v240, 6), v237), 0xBuLL)), vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(v239[2], *v240.i8, 1), v239[34], *v240.i8, 2), v239[66], *v240.i8, 3), v239[98], v240, 4), v239[130], v240, 5), v239[162], v240, 6), v237), 0xBuLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*v239[2].i8, *v240.i8, 1), *v239[34].i8, *v240.i8, 2), *v239[66].i8, *v240.i8, 3), *v239[98].i8, v240, 4), *v239[130].i8, v240, 5), *v239[162].i8, v240, 6), v237), 0xBuLL));
            v238 += 2;
            v239 += 4;
          }

          while (v45 != (v238 * 8));
          v37 = (v37 + v38);
          v46 += a12;
          --v44;
        }

        while (v44);
      }
    }
  }

  return result;
}

uint64_t sub_27799C6E0(uint64_t result, _DWORD *a2, int a3, int16x4_t *a4, int a5, int a6, int a7, uint64_t a8, int16x4_t a9, int16x4_t a10, __int16 a11, __int16 a12, __int16 a13, int a14, int a15)
{
  a9.i16[0] = a13;
  a10.i16[0] = a11;
  v16 = 2 * a5;
  if (a6 == 4)
  {
    v17 = vdupq_n_s32(0x80040u);
    v18 = vdupq_n_s32(0xFE8080u);
    do
    {
      v19 = *(a8 + 2 * ((a14 >> 3) & 0x78));
      v20 = (result + 2 * ((a14 >> 3) & 0xFFFFFF80));
      *v19.i8 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v18, vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v17, *v20, *v19.i8, 0), v20[32], *v19.i8, 1), v20[64], *v19.i8, 2), v20[96], *v19.i8, 3), v20[128], v19, 4), v20[160], v19, 5), v20[192], v19, 6), v20[224], v19, 7), 7uLL), a9, 0), *a4, a10, 0), 8uLL);
      *a2 = vqmovun_s16(v19).u32[0];
      a2 = (a2 + a3);
      a14 += a15;
      a4 = (a4 + v16);
      --a7;
    }

    while (a7);
  }

  else
  {
    v21 = vdupq_n_s32(0x80040u);
    v22 = vdupq_n_s32(0xFE8080u);
    do
    {
      v23 = 0;
      v24 = 0;
      v25 = result + 2 * ((a14 >> 3) & 0xFFFFFF80);
      v26 = *(a8 + 2 * ((a14 >> 3) & 0x78));
      do
      {
        v27 = *(v25 + v24);
        v28 = *(v25 + v24 + 256);
        v29 = *(v25 + v24 + 512);
        *&a2[v23] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmull_lane_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v21, *v27.i8, *v26.i8, 0), *v28.i8, *v26.i8, 1), *v29.i8, *v26.i8, 2), *(v25 + v24 + 768), *v26.i8, 3), *(v25 + v24 + 1024), v26, 4), *(v25 + v24 + 1280), v26, 5), *(v25 + v24 + 1536), v26, 6), *(v25 + v24 + 1792), v26, 7), 7uLL), a9, 0), a4[v24 / 8], a10, 0), v22), 8uLL), vaddq_s32(vmlal_high_lane_s16(vmull_lane_s16(vshrn_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v21, v27, *v26.i8, 0), v28, *v26.i8, 1), v29, *v26.i8, 2), *(v25 + v24 + 768), *v26.i8, 3), *(v25 + v24 + 1024), v26, 4), *(v25 + v24 + 1280), v26, 5), *(v25 + v24 + 1536), v26, 6), *(v25 + v24 + 1792), v26, 7), 7uLL), a9, 0), *a4[v24 / 8].i8, a10, 0), v22), 8uLL));
        v24 += 16;
        v23 += 2;
      }

      while (a6 != (v23 * 4));
      a2 = (a2 + a3);
      a14 += a15;
      a4 = (a4 + v16);
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_27799C8B8(uint64_t result, _DWORD *a2, int a3, int16x4_t *a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10)
{
  v11 = 2 * a5;
  if (a6 == 4)
  {
    v12 = vdupq_n_s32(0xFFF00040);
    do
    {
      v13 = (result + 2 * ((a9 >> 3) & 0xFFFFFF80));
      v14 = *(a8 + 2 * ((a9 >> 3) & 0x78));
      *v14.i8 = vhadd_s16(*a4, vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v12, *v13, *v14.i8, 0), v13[32], *v14.i8, 1), v13[64], *v14.i8, 2), v13[96], *v14.i8, 3), v13[128], v14, 4), v13[160], v14, 5), v13[192], v14, 6), v13[224], v14, 7), 7uLL));
      *a2 = vqrshrun_n_s16(v14, 4uLL).u32[0];
      a2 = (a2 + a3);
      a9 += a10;
      a4 = (a4 + v11);
      --a7;
    }

    while (a7);
  }

  else
  {
    v15 = vdupq_n_s32(0xFFF00040);
    do
    {
      v16 = 0;
      v17 = 0;
      v18 = result + 2 * ((a9 >> 3) & 0xFFFFFF80);
      v19 = *(a8 + 2 * ((a9 >> 3) & 0x78));
      do
      {
        v20 = *(v18 + v17);
        v21 = *(v18 + v17 + 256);
        *&a2[v16] = vqrshrun_n_s16(vhaddq_s16(*a4[v17 / 8].i8, vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v20.i8, *v19.i8, 0), *v21.i8, *v19.i8, 1), *(v18 + v17 + 512), *v19.i8, 2), *(v18 + v17 + 768), *v19.i8, 3), *(v18 + v17 + 1024), v19, 4), *(v18 + v17 + 1280), v19, 5), *(v18 + v17 + 1536), v19, 6), *(v18 + v17 + 1792), v19, 7), v15), 7uLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v20, *v19.i8, 0), v21, *v19.i8, 1), *(v18 + v17 + 512), *v19.i8, 2), *(v18 + v17 + 768), *v19.i8, 3), *(v18 + v17 + 1024), v19, 4), *(v18 + v17 + 1280), v19, 5), *(v18 + v17 + 1536), v19, 6), *(v18 + v17 + 1792), v19, 7), v15), 7uLL)), 4uLL);
        v17 += 16;
        v16 += 2;
      }

      while (a6 != (v16 * 4));
      a2 = (a2 + a3);
      a9 += a10;
      a4 = (a4 + v11);
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_27799CA48(uint64_t result, int16x4_t *a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v8 = 2 * a3;
  v9 = vdupq_n_s32(0x80040u);
  if (a4 == 4)
  {
    do
    {
      v10 = (result + 2 * ((a7 >> 3) & 0xFFFFFF80));
      v11 = *(a6 + 2 * ((a7 >> 3) & 0x78));
      *a2 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v9, *v10, *v11.i8, 0), v10[32], *v11.i8, 1), v10[64], *v11.i8, 2), v10[96], *v11.i8, 3), v10[128], v11, 4), v10[160], v11, 5), v10[192], v11, 6), v10[224], v11, 7), 7uLL);
      a7 += a8;
      a2 = (a2 + v8);
      --a5;
    }

    while (a5);
  }

  else
  {
    do
    {
      v12 = 0;
      v13 = result + 2 * ((a7 >> 3) & 0xFFFFFF80);
      v14 = *(a6 + 2 * ((a7 >> 3) & 0x78));
      v15 = a4;
      do
      {
        v16 = *(v13 + v12 + 256);
        *a2[v12 / 8].i8 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v13 + v12), *v14.i8, 0), *v16.i8, *v14.i8, 1), *(v13 + v12 + 512), *v14.i8, 2), *(v13 + v12 + 768), *v14.i8, 3), *(v13 + v12 + 1024), v14, 4), *(v13 + v12 + 1280), v14, 5), *(v13 + v12 + 1536), v14, 6), *(v13 + v12 + 1792), v14, 7), v9), 7uLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v13 + v12), *v14.i8, 0), v16, *v14.i8, 1), *(v13 + v12 + 512), *v14.i8, 2), *(v13 + v12 + 768), *v14.i8, 3), *(v13 + v12 + 1024), v14, 4), *(v13 + v12 + 1280), v14, 5), *(v13 + v12 + 1536), v14, 6), *(v13 + v12 + 1792), v14, 7), v9), 7uLL);
        v12 += 16;
        v15 -= 8;
      }

      while (v15);
      a7 += a8;
      a2 = (a2 + v8);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_27799CB9C(uint64_t result, _DWORD *a2, int a3, int16x4_t *a4, int a5, int a6, int a7, uint64_t a8, int16x4_t a9, int16x4_t a10, __int16 a11, __int16 a12, __int16 a13, int a14, int a15)
{
  a9.i16[0] = a13;
  a10.i16[0] = a11;
  v16 = 2 * a5;
  if (a6 == 4)
  {
    v17 = vdupq_n_s32(0x80040u);
    v18 = vdupq_n_s32(0xFE8080u);
    do
    {
      v19 = (result + 2 * ((a14 >> 3) & 0xFFFFFF80));
      v20 = *(a8 + 2 * ((a14 >> 3) & 0x78));
      *v20.i8 = vshrn_n_s32(vmlal_lane_s16(vmlal_lane_s16(v18, vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v17, *v19, *v20.i8, 1), v19[32], *v20.i8, 2), v19[64], *v20.i8, 3), v19[96], v20, 4), v19[128], v20, 5), v19[160], v20, 6), 7uLL), a9, 0), *a4, a10, 0), 8uLL);
      *a2 = vqmovun_s16(v20).u32[0];
      a2 = (a2 + a3);
      a14 += a15;
      a4 = (a4 + v16);
      --a7;
    }

    while (a7);
  }

  else
  {
    v21 = vdupq_n_s32(0x80040u);
    v22 = vdupq_n_s32(0xFE8080u);
    do
    {
      v23 = 0;
      v24 = 0;
      v26 = *(a8 + 2 * ((a14 >> 3) & 0x78));
      do
      {
        v25 = result + 2 * ((a14 >> 3) & 0xFFFFFF80);
        *&a2[v23] = vqmovun_s16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_lane_s16(vmull_lane_s16(vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v21, *(v25 + v24), *v26.i8, 1), *(v25 + v24 + 256), *v26.i8, 2), *(v25 + v24 + 512), *v26.i8, 3), *(v25 + v24 + 768), v26, 4), *(v25 + v24 + 1024), v26, 5), *(v25 + v24 + 1280), v26, 6), 7uLL), a9, 0), a4[v24 / 8], a10, 0), v22), 8uLL), vaddq_s32(vmlal_high_lane_s16(vmull_lane_s16(vshrn_n_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(v21, *(v25 + v24), *v26.i8, 1), *(v25 + v24 + 256), *v26.i8, 2), *(v25 + v24 + 512), *v26.i8, 3), *(v25 + v24 + 768), v26, 4), *(v25 + v24 + 1024), v26, 5), *(v25 + v24 + 1280), v26, 6), 7uLL), a9, 0), *a4[v24 / 8].i8, a10, 0), v22), 8uLL));
        v24 += 16;
        v23 += 2;
      }

      while (a6 != (v23 * 4));
      a2 = (a2 + a3);
      a14 += a15;
      a4 = (a4 + v16);
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_27799CD4C(uint64_t result, _DWORD *a2, int a3, int16x4_t *a4, int a5, int a6, int a7, uint64_t a8, int a9, int a10)
{
  v11 = 2 * a5;
  if (a6 == 4)
  {
    v12 = vdupq_n_s32(0xFFF00040);
    do
    {
      v13 = (result + 2 * ((a9 >> 3) & 0xFFFFFF80));
      v14 = *(a8 + 2 * ((a9 >> 3) & 0x78));
      *v14.i8 = vhadd_s16(*a4, vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v12, *v13, *v14.i8, 1), v13[32], *v14.i8, 2), v13[64], *v14.i8, 3), v13[96], v14, 4), v13[128], v14, 5), v13[160], v14, 6), 7uLL));
      *a2 = vqrshrun_n_s16(v14, 4uLL).u32[0];
      a2 = (a2 + a3);
      a9 += a10;
      a4 = (a4 + v11);
      --a7;
    }

    while (a7);
  }

  else
  {
    v15 = vdupq_n_s32(0xFFF00040);
    do
    {
      v16 = 0;
      v17 = 0;
      v19 = *(a8 + 2 * ((a9 >> 3) & 0x78));
      do
      {
        v18 = result + 2 * ((a9 >> 3) & 0xFFFFFF80);
        *&a2[v16] = vqrshrun_n_s16(vhaddq_s16(*a4[v17 / 8].i8, vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v18 + v17), *v19.i8, 1), *(v18 + v17 + 256), *v19.i8, 2), *(v18 + v17 + 512), *v19.i8, 3), *(v18 + v17 + 768), v19, 4), *(v18 + v17 + 1024), v19, 5), *(v18 + v17 + 1280), v19, 6), v15), 7uLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v18 + v17), *v19.i8, 1), *(v18 + v17 + 256), *v19.i8, 2), *(v18 + v17 + 512), *v19.i8, 3), *(v18 + v17 + 768), v19, 4), *(v18 + v17 + 1024), v19, 5), *(v18 + v17 + 1280), v19, 6), v15), 7uLL)), 4uLL);
        v17 += 16;
        v16 += 2;
      }

      while (a6 != (v16 * 4));
      a2 = (a2 + a3);
      a9 += a10;
      a4 = (a4 + v11);
      --a7;
    }

    while (a7);
  }

  return result;
}

uint64_t sub_27799CEB4(uint64_t result, int16x4_t *a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v8 = 2 * a3;
  v9 = vdupq_n_s32(0x80040u);
  if (a4 == 4)
  {
    do
    {
      v10 = (result + 2 * ((a7 >> 3) & 0xFFFFFF80));
      v11 = *(a6 + 2 * ((a7 >> 3) & 0x78));
      *a2 = vshrn_n_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(v9, *v10, *v11.i8, 1), v10[32], *v11.i8, 2), v10[64], *v11.i8, 3), v10[96], v11, 4), v10[128], v11, 5), v10[160], v11, 6), 7uLL);
      a7 += a8;
      a2 = (a2 + v8);
      --a5;
    }

    while (a5);
  }

  else
  {
    do
    {
      v12 = 0;
      v14 = *(a6 + 2 * ((a7 >> 3) & 0x78));
      v15 = a4;
      do
      {
        v13 = result + 2 * ((a7 >> 3) & 0xFFFFFF80);
        *a2[v12 / 8].i8 = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_laneq_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*(v13 + v12), *v14.i8, 1), *(v13 + v12 + 256), *v14.i8, 2), *(v13 + v12 + 512), *v14.i8, 3), *(v13 + v12 + 768), v14, 4), *(v13 + v12 + 1024), v14, 5), *(v13 + v12 + 1280), v14, 6), v9), 7uLL), vaddq_s32(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*(v13 + v12), *v14.i8, 1), *(v13 + v12 + 256), *v14.i8, 2), *(v13 + v12 + 512), *v14.i8, 3), *(v13 + v12 + 768), v14, 4), *(v13 + v12 + 1024), v14, 5), *(v13 + v12 + 1280), v14, 6), v9), 7uLL);
        v12 += 16;
        v15 -= 8;
      }

      while (v15);
      a7 += a8;
      a2 = (a2 + v8);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_27799CFE0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v4 = v19;
  sub_2779726D8(v19 >> 1, v7, 0x80u, 128, v5, v6, v8, v9, v10, v11);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * v3;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v4[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 256);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v4 += 256;
    ++v13;
    v14 += 2 * v2;
  }

  while (v13 != 128);
  return result;
}

uint64_t sub_27799D0E8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v4 = v19;
  sub_2779726D8(v19 >> 1, v7, 0x80u, 64, v5, v6, v8, v9, v10, v11);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * v3;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v4[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 256);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v4 += 256;
    ++v13;
    v14 += 2 * v2;
  }

  while (v13 != 64);
  return result;
}

uint64_t sub_27799D1F0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v4 = v19;
  sub_2779726D8(v19 >> 1, v7, 0x40u, 128, v5, v6, v8, v9, v10, v11);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * v3;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v4[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 128);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v4 += 128;
    ++v13;
    v14 += 2 * v2;
  }

  while (v13 != 128);
  return result;
}

uint64_t sub_27799D2F8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v4 = v19;
  sub_2779726D8(v19 >> 1, v7, 0x40u, 64, v5, v6, v8, v9, v10, v11);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * v3;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v4[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 128);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v4 += 128;
    ++v13;
    v14 += 2 * v2;
  }

  while (v13 != 64);
  return result;
}

uint64_t sub_27799D400()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v4 = v19;
  sub_2779726D8(v19 >> 1, v7, 0x40u, 32, v5, v6, v8, v9, v10, v11);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * v3;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v4[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 128);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v4 += 128;
    ++v13;
    v14 += 2 * v2;
  }

  while (v13 != 32);
  return result;
}

uint64_t sub_27799D508()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v4 = v19;
  sub_2779726D8(v19 >> 1, v7, 0x20u, 64, v5, v6, v8, v9, v10, v11);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * v3;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v4[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 64);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v4 += 64;
    ++v13;
    v14 += 2 * v2;
  }

  while (v13 != 64);
  return result;
}

uint64_t sub_27799D610(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x20u, 32, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 64);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 64;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 32);
  return result;
}

uint64_t sub_27799D6FC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x20u, 16, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 64);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 64;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 16);
  return result;
}

uint64_t sub_27799D7E8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x10u, 32, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 32);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 32;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 32);
  return result;
}

uint64_t sub_27799D8D4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x10u, 16, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 32);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 32;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 16);
  return result;
}

uint64_t sub_27799D9C0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x10u, 8, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 32);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 32;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 8);
  return result;
}

float sub_27799DAAC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = 0;
  v17 = *MEMORY[0x277D85DE8];
  a8.i32[0] = a6;
  a9.i32[0] = a7;
  v10 = (2 * a3);
  do
  {
    *&v16[v9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a5 + v9), a9, 0), *v10, a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(2 * a5 + v9), a9, 0), *v10->i8, a8, 0), 4uLL);
    v9 += 16;
    v10 = (v10 + 2 * a4);
  }

  while (v9 != 256);
  v11 = 0;
  v12 = 0.0;
  v13 = (2 * a1);
  do
  {
    v14 = vabdq_u16(*v13, *&v16[v11]);
    result = COERCE_FLOAT(vaddvq_s32(vaddw_high_u16(vaddw_u16(LODWORD(v12), *v14.i8), v14)));
    v12 = result;
    v11 += 16;
    v13 = (v13 + 2 * a2);
  }

  while (v11 != 256);
  return result;
}

float sub_27799DB98(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = 0;
  v17 = *MEMORY[0x277D85DE8];
  a8.i32[0] = a6;
  a9.i32[0] = a7;
  v10 = (2 * a3);
  do
  {
    *&v16[v9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a5 + v9), a9, 0), *v10, a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(2 * a5 + v9), a9, 0), *v10->i8, a8, 0), 4uLL);
    v9 += 16;
    v10 = (v10 + 2 * a4);
  }

  while (v9 != 128);
  v11 = 0;
  v12 = 0.0;
  v13 = (2 * a1);
  do
  {
    v14 = vabdq_u16(*v13, *&v16[v11]);
    result = COERCE_FLOAT(vaddvq_s32(vaddw_high_u16(vaddw_u16(LODWORD(v12), *v14.i8), v14)));
    v12 = result;
    v11 += 16;
    v13 = (v13 + 2 * a2);
  }

  while (v11 != 128);
  return result;
}

float sub_27799DC7C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = 0;
  v17 = *MEMORY[0x277D85DE8];
  a8.i32[0] = a6;
  a9.i32[0] = a7;
  v10 = (2 * a3);
  do
  {
    *&v16[v9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a5 + v9), a9, 0), *v10, a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(2 * a5 + v9), a9, 0), *v10->i8, a8, 0), 4uLL);
    v9 += 16;
    v10 = (v10 + 2 * a4);
  }

  while (v9 != 64);
  v11 = 0;
  v12 = 0.0;
  v13 = (2 * a1);
  do
  {
    v14 = vabdq_u16(*v13, *&v16[v11]);
    result = COERCE_FLOAT(vaddvq_s32(vaddw_high_u16(vaddw_u16(LODWORD(v12), *v14.i8), v14)));
    v12 = result;
    v11 += 16;
    v13 = (v13 + 2 * a2);
  }

  while (v11 != 64);
  return result;
}

float sub_27799DD60(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = 0;
  v16 = *MEMORY[0x277D85DE8];
  a8.i32[0] = a6;
  a9.i32[0] = a7;
  v10 = (2 * a3);
  do
  {
    *&v15[v9] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a5 + v9), a9, 0), *v10, a8, 0), 4uLL);
    v9 += 8;
    v10 = (v10 + 2 * a4);
  }

  while (v9 != 64);
  v11 = 0;
  v12 = 0.0;
  v13 = (2 * a1);
  do
  {
    result = COERCE_FLOAT(vaddvq_s32(vabal_u16(LODWORD(v12), *v13, *&v15[v11])));
    v12 = result;
    v11 += 8;
    v13 = (v13 + 2 * a2);
  }

  while (v11 != 64);
  return result;
}

float sub_27799DE30(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = 0;
  v16 = *MEMORY[0x277D85DE8];
  a8.i32[0] = a6;
  a9.i32[0] = a7;
  v10 = (2 * a3);
  do
  {
    *&v15[v9] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a5 + v9), a9, 0), *v10, a8, 0), 4uLL);
    v9 += 8;
    v10 = (v10 + 2 * a4);
  }

  while (v9 != 32);
  v11 = 0;
  v12 = 0.0;
  v13 = (2 * a1);
  do
  {
    result = COERCE_FLOAT(vaddvq_s32(vabal_u16(LODWORD(v12), *v13, *&v15[v11])));
    v12 = result;
    v11 += 8;
    v13 = (v13 + 2 * a2);
  }

  while (v11 != 32);
  return result;
}

float sub_27799DF00(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = 0;
  v16 = *MEMORY[0x277D85DE8];
  a8.i32[0] = a6;
  a9.i32[0] = a7;
  v10 = (2 * a3);
  do
  {
    *&v15[v9] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a5 + v9), a9, 0), *v10, a8, 0), 4uLL);
    v9 += 8;
    v10 = (v10 + 2 * a4);
  }

  while (v9 != 128);
  v11 = 0;
  v12 = 0.0;
  v13 = (2 * a1);
  do
  {
    result = COERCE_FLOAT(vaddvq_s32(vabal_u16(LODWORD(v12), *v13, *&v15[v11])));
    v12 = result;
    v11 += 8;
    v13 = (v13 + 2 * a2);
  }

  while (v11 != 128);
  return result;
}

uint64_t sub_27799DFD0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x10u, 4, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 32);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 32;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 4);
  return result;
}

float sub_27799E0BC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v9 = 0;
  v17 = *MEMORY[0x277D85DE8];
  a8.i32[0] = a6;
  a9.i32[0] = a7;
  v10 = (2 * a3);
  do
  {
    *&v16[v9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a5 + v9), a9, 0), *v10, a8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(2 * a5 + v9), a9, 0), *v10->i8, a8, 0), 4uLL);
    v9 += 16;
    v10 = (v10 + 2 * a4);
  }

  while (v9 != 512);
  v11 = 0;
  v12 = 0.0;
  v13 = (2 * a1);
  do
  {
    v14 = vabdq_u16(*v13, *&v16[v11]);
    result = COERCE_FLOAT(vaddvq_s32(vaddw_high_u16(vaddw_u16(LODWORD(v12), *v14.i8), v14)));
    v12 = result;
    v11 += 16;
    v13 = (v13 + 2 * a2);
  }

  while (v11 != 512);
  return result;
}

uint64_t sub_27799E1A8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x20u, 8, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 64);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 64;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 8);
  return result;
}

uint64_t sub_27799E294(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x10u, 64, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 32);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 32;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 64);
  return result;
}

uint64_t sub_27799E380(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, __int32 a6, __int32 a7, uint16x4_t a8, uint16x4_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = v19;
  sub_2779726D8(v19 >> 1, a5, 0x40u, 16, a3, a4, a6, a7, a8, a9);
  LODWORD(result) = 0;
  v13 = 0;
  v14 = 2 * a1;
  do
  {
    v15 = 0;
    v16 = 0uLL;
    v17 = result;
    do
    {
      v18 = vabdq_u16(*(v14 + v15), *&v11[v15]);
      v16 = vaddw_high_u16(v16, v18);
      v17 = vaddw_u16(v17, *v18.i8);
      v15 += 16;
    }

    while (v15 != 128);
    result = vaddvq_s32(vaddq_s32(v17, v16));
    v11 += 128;
    ++v13;
    v14 += 2 * a2;
  }

  while (v13 != 16);
  return result;
}

uint64_t sub_27799E46C(__int32 *a1, int a2, __int32 *a3, int a4)
{
  v4 = 0uLL;
  v5 = -2;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + a2);
    v7.i32[0] = *a3;
    v7.i32[1] = *(a3 + a4);
    v4 = vabal_u8(v4, v6, v7);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E4BC(__int32 *a1, int a2, __int32 *a3, int a4)
{
  v4 = 0uLL;
  v5 = -4;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + a2);
    v7.i32[0] = *a3;
    v7.i32[1] = *(a3 + a4);
    v4 = vabal_u8(v4, v6, v7);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E50C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -4;
  do
  {
    v4 = vabal_u8(v4, *a1, *a3);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E544(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -8;
  do
  {
    v4 = vabal_u8(v4, *a1, *a3);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E57C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -16;
  do
  {
    v4 = vabal_u8(v4, *a1, *a3);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E5B4(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -8;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E5F0(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -16;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E62C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -32;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799E668(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -16;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v7 = vpadalq_u8(v7, vabdq_u8(*v5, *v4));
    v4 = (v4 + a4);
    v5 = (v5 + a2);
  }

  while (!__CFADD__(v8++, 1));
  return vaddlvq_u16(vaddq_s16(v7, v6));
}

uint64_t sub_27799E6BC(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -32;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v7 = vpadalq_u8(v7, vabdq_u8(*v5, *v4));
    v4 = (v4 + a4);
    v5 = (v5 + a2);
  }

  while (!__CFADD__(v8++, 1));
  return vaddlvq_u16(vaddq_s16(v7, v6));
}

uint64_t sub_27799E710(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -64;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v7 = vpadalq_u8(v7, vabdq_u8(*v5, *v4));
    v4 = (v4 + a4);
    v5 = (v5 + a2);
  }

  while (!__CFADD__(v8++, 1));
  return vaddlvq_u16(vaddq_s16(v7, v6));
}

uint64_t sub_27799E764(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -32;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v7 = vpadalq_u8(v7, vabdq_u8(v4[-1], v5[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v4, *v5));
    v9 = vpadalq_u8(v9, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + a2);
    v5 = (v5 + a4);
  }

  while (!__CFADD__(v10++, 1));
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v9));
}

uint64_t sub_27799E7E4(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -64;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v7 = vpadalq_u8(v7, vabdq_u8(v4[-1], v5[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v4, *v5));
    v9 = vpadalq_u8(v9, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + a2);
    v5 = (v5 + a4);
  }

  while (!__CFADD__(v10++, 1));
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v9));
}

uint64_t sub_27799E864(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -128;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v7 = vpadalq_u8(v7, vabdq_u8(v4[-1], v5[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v4, *v5));
    v9 = vpadalq_u8(v9, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + a2);
    v5 = (v5 + a4);
  }

  while (!__CFADD__(v10++, 1));
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v9));
}

uint64_t sub_27799E8E4(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = a1 + 4;
  v7 = a3 + 4;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -64;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(v6[-4], v7[-4]));
    v5 = vpadalq_u8(v5, vabdq_u8(v6[-3], v7[-3]));
    v8 = vpadalq_u8(v8, vabdq_u8(v6[-2], v7[-2]));
    v9 = vpadalq_u8(v9, vabdq_u8(v6[-1], v7[-1]));
    v11 = vpadalq_u8(v11, vabdq_u8(*v6, *v7));
    v12 = vpadalq_u8(v12, vabdq_u8(v6[1], v7[1]));
    v13 = vpadalq_u8(v13, vabdq_u8(v6[2], v7[2]));
    v14 = vpadalq_u8(v14, vabdq_u8(v6[3], v7[3]));
    v6 = (v6 + a2);
    v7 = (v7 + a4);
  }

  while (!__CFADD__(v10++, 1));
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v5), v4), v8), v9), v11), v12), v13), v14));
}

uint64_t sub_27799E9B4(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = a1 + 4;
  v7 = a3 + 4;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -128;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(v6[-4], v7[-4]));
    v5 = vpadalq_u8(v5, vabdq_u8(v6[-3], v7[-3]));
    v8 = vpadalq_u8(v8, vabdq_u8(v6[-2], v7[-2]));
    v9 = vpadalq_u8(v9, vabdq_u8(v6[-1], v7[-1]));
    v11 = vpadalq_u8(v11, vabdq_u8(*v6, *v7));
    v12 = vpadalq_u8(v12, vabdq_u8(v6[1], v7[1]));
    v13 = vpadalq_u8(v13, vabdq_u8(v6[2], v7[2]));
    v14 = vpadalq_u8(v14, vabdq_u8(v6[3], v7[3]));
    v6 = (v6 + a2);
    v7 = (v7 + a4);
  }

  while (!__CFADD__(v10++, 1));
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v5), v4), v8), v9), v11), v12), v13), v14));
}

uint64_t sub_27799EA84(__int32 *a1, int a2, __int32 *a3, int a4)
{
  v4 = 0uLL;
  v5 = -8;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + a2);
    v7.i32[0] = *a3;
    v7.i32[1] = *(a3 + a4);
    v4 = vabal_u8(v4, v6, v7);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799EAD4(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -32;
  do
  {
    v4 = vabal_u8(v4, *a1, *a3);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799EB0C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -4;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799EB48(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -64;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v5++, 1));
  return vaddlvq_u16(v4);
}

uint64_t sub_27799EB84(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = -8;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v7 = vpadalq_u8(v7, vabdq_u8(*v5, *v4));
    v4 = (v4 + a4);
    v5 = (v5 + a2);
  }

  while (!__CFADD__(v8++, 1));
  return vaddlvq_u16(vaddq_s16(v7, v6));
}

uint64_t sub_27799EBD8(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = -16;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v7 = vpadalq_u8(v7, vabdq_u8(v4[-1], v5[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v4, *v5));
    v9 = vpadalq_u8(v9, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + a2);
    v5 = (v5 + a4);
  }

  while (!__CFADD__(v10++, 1));
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v9));
}

uint64_t sub_27799EC58(__int32 *a1, int a2, __int32 *a3, int a4)
{
  v4 = 0uLL;
  v5 = -2;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + 2 * a2);
    v7.i32[0] = *a3;
    v7.i32[1] = *(a3 + 2 * a4);
    v4 = vabal_u8(v4, v6, v7);
    a1 += a2;
    a3 += a4;
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799ECAC(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -4;
  do
  {
    v4 = vabal_u8(v4, *a1, *a3);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799ECF0(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -8;
  do
  {
    v4 = vabal_u8(v4, *a1, *a3);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799ED34(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -4;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799ED7C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -8;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799EDC4(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -16;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799EE0C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return 2 * vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799EE6C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return 2 * vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799EECC(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return 2 * vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799EF2C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v8 = vpadalq_u8(v8, vabdq_u8(v4[-1], v5[-1]));
    v9 = vpadalq_u8(v9, vabdq_u8(*v4, *v5));
    v10 = vpadalq_u8(v10, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return (2 * vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v8), v6), v9), v10)));
}

uint64_t sub_27799EFB8(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v8 = vpadalq_u8(v8, vabdq_u8(v4[-1], v5[-1]));
    v9 = vpadalq_u8(v9, vabdq_u8(*v4, *v5));
    v10 = vpadalq_u8(v10, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return (2 * vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v8), v6), v9), v10)));
}

uint64_t sub_27799F044(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v8 = vpadalq_u8(v8, vabdq_u8(v4[-1], v5[-1]));
    v9 = vpadalq_u8(v9, vabdq_u8(*v4, *v5));
    v10 = vpadalq_u8(v10, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return (2 * vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v8), v6), v9), v10)));
}

uint64_t sub_27799F0D0(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = a1 + 4;
  v7 = a3 + 4;
  v8 = -32;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(v6[-4], v7[-4]));
    v5 = vpadalq_u8(v5, vabdq_u8(v6[-3], v7[-3]));
    v9 = vpadalq_u8(v9, vabdq_u8(v6[-2], v7[-2]));
    v10 = vpadalq_u8(v10, vabdq_u8(v6[-1], v7[-1]));
    v11 = vpadalq_u8(v11, vabdq_u8(*v6, *v7));
    v12 = vpadalq_u8(v12, vabdq_u8(v6[1], v7[1]));
    v13 = vpadalq_u8(v13, vabdq_u8(v6[2], v7[2]));
    v14 = vpadalq_u8(v14, vabdq_u8(v6[3], v7[3]));
    v6 = (v6 + 2 * a2);
    v7 = (v7 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  return (2 * vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v5), v4), v9), v10), v11), v12), v13), v14)));
}

uint64_t sub_27799F1AC(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = a1 + 4;
  v7 = a3 + 4;
  v8 = -64;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(v6[-4], v7[-4]));
    v5 = vpadalq_u8(v5, vabdq_u8(v6[-3], v7[-3]));
    v9 = vpadalq_u8(v9, vabdq_u8(v6[-2], v7[-2]));
    v10 = vpadalq_u8(v10, vabdq_u8(v6[-1], v7[-1]));
    v11 = vpadalq_u8(v11, vabdq_u8(*v6, *v7));
    v12 = vpadalq_u8(v12, vabdq_u8(v6[1], v7[1]));
    v13 = vpadalq_u8(v13, vabdq_u8(v6[2], v7[2]));
    v14 = vpadalq_u8(v14, vabdq_u8(v6[3], v7[3]));
    v6 = (v6 + 2 * a2);
    v7 = (v7 + 2 * a4);
  }

  while (!__CFADD__(v8++, 1));
  return (2 * vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v5), v4), v9), v10), v11), v12), v13), v14)));
}

uint64_t sub_27799F288(__int32 *a1, int a2, __int32 *a3, int a4)
{
  v4 = 0uLL;
  v5 = -4;
  do
  {
    v6.i32[0] = *a1;
    v6.i32[1] = *(a1 + 2 * a2);
    v7.i32[0] = *a3;
    v7.i32[1] = *(a3 + 2 * a4);
    v4 = vabal_u8(v4, v6, v7);
    a1 += a2;
    a3 += a4;
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799F2DC(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -16;
  do
  {
    v4 = vabal_u8(v4, *a1, *a3);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799F320(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -2;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799F368(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = 0uLL;
  v5 = -32;
  do
  {
    v4 = vpadalq_u8(v4, vabdq_u8(*a1, *a3));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
  }

  while (!__CFADD__(v5++, 1));
  return 2 * vaddlvq_u16(v4);
}

uint64_t sub_27799F3B0(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a3 + 1;
  v5 = a1 + 1;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v5[-1], v4[-1]));
    v8 = vpadalq_u8(v8, vabdq_u8(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return 2 * vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799F410(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + 2;
  v5 = a3 + 2;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v4[-2], v5[-2]));
    v8 = vpadalq_u8(v8, vabdq_u8(v4[-1], v5[-1]));
    v9 = vpadalq_u8(v9, vabdq_u8(*v4, *v5));
    v10 = vpadalq_u8(v10, vabdq_u8(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return (2 * vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v8), v6), v9), v10)));
}

uint64_t sub_27799F49C(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v7.i32[0] = *a1;
    v7.i32[1] = *(a1 + a2);
    v8.i32[0] = *a3;
    v8.i32[1] = *(a3 + a4);
    v6 = vabal_u8(v6, v7, vrhadd_u8(v8, *(a5 + v5)));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v5 += 8;
  }

  while (v5 != 16);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F4F8(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v7.i32[0] = *a1;
    v7.i32[1] = *(a1 + a2);
    v8.i32[0] = *a3;
    v8.i32[1] = *(a3 + a4);
    v6 = vabal_u8(v6, v7, vrhadd_u8(v8, *(a5 + v5)));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v5 += 8;
  }

  while (v5 != 32);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F554(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vabal_u8(v6, *a1, vrhadd_u8(*a3, *(a5 + v5)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 8;
  }

  while (v5 != 32);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F598(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vabal_u8(v6, *a1, vrhadd_u8(*a3, *(a5 + v5)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 8;
  }

  while (v5 != 64);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F5DC(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vabal_u8(v6, *a1, vrhadd_u8(*a3, *(a5 + v5)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 8;
  }

  while (v5 != 128);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F620(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, vrhaddq_u8(*a3, *(a5 + v5))));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 16;
  }

  while (v5 != 128);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F668(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, vrhaddq_u8(*a3, *(a5 + v5))));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 16;
  }

  while (v5 != 256);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F6B0(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, vrhaddq_u8(*a3, *(a5 + v5))));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 16;
  }

  while (v5 != 512);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799F6F8(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = a3 + 1;
  v8 = 0uLL;
  v9 = a1 + 1;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-1], vrhaddq_u8(v7[-1], *(a5 + v5))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v7, *(a5 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + a4);
    v9 = (v9 + a2);
  }

  while (v5 != 512);
  return vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799F760(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = a3 + 1;
  v8 = 0uLL;
  v9 = a1 + 1;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-1], vrhaddq_u8(v7[-1], *(a5 + v5))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v7, *(a5 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + a4);
    v9 = (v9 + a2);
  }

  while (v5 != 1024);
  return vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799F7C8(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = a3 + 1;
  v8 = 0uLL;
  v9 = a1 + 1;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-1], vrhaddq_u8(v7[-1], *(a5 + v5))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v7, *(a5 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + a4);
    v9 = (v9 + a2);
  }

  while (v5 != 2048);
  return vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799F830(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = a3 + 2;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-2], vrhaddq_u8(v11[-2], *(a5 + v5))));
    v7 = vpadalq_u8(v7, vabdq_u8(v9[-1], vrhaddq_u8(v11[-1], *(a5 + v5 + 16))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v11, *(a5 + v5 + 32))));
    v10 = vpadalq_u8(v10, vabdq_u8(v9[1], vrhaddq_u8(v11[1], *(a5 + v5 + 48))));
    v5 += 64;
    v9 = (v9 + a2);
    v11 = (v11 + a4);
  }

  while (v5 != 2048);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v10));
}

uint64_t sub_27799F8D0(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = a3 + 2;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-2], vrhaddq_u8(v11[-2], *(a5 + v5))));
    v7 = vpadalq_u8(v7, vabdq_u8(v9[-1], vrhaddq_u8(v11[-1], *(a5 + v5 + 16))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v11, *(a5 + v5 + 32))));
    v10 = vpadalq_u8(v10, vabdq_u8(v9[1], vrhaddq_u8(v11[1], *(a5 + v5 + 48))));
    v5 += 64;
    v9 = (v9 + a2);
    v11 = (v11 + a4);
  }

  while (v5 != 4096);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v10));
}

uint64_t sub_27799F970(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = a3 + 2;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-2], vrhaddq_u8(v11[-2], *(a5 + v5))));
    v7 = vpadalq_u8(v7, vabdq_u8(v9[-1], vrhaddq_u8(v11[-1], *(a5 + v5 + 16))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v11, *(a5 + v5 + 32))));
    v10 = vpadalq_u8(v10, vabdq_u8(v9[1], vrhaddq_u8(v11[1], *(a5 + v5 + 48))));
    v5 += 64;
    v9 = (v9 + a2);
    v11 = (v11 + a4);
  }

  while (v5 != 0x2000);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v10));
}

uint64_t sub_27799FA10(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = a1 + 4;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v10[-4], vrhaddq_u8(v11[-4], *(a5 + v5))));
    v7 = vpadalq_u8(v7, vabdq_u8(v10[-3], vrhaddq_u8(v11[-3], *(a5 + v5 + 16))));
    v8 = vpadalq_u8(v8, vabdq_u8(v10[-2], vrhaddq_u8(v11[-2], *(a5 + v5 + 32))));
    v9 = vpadalq_u8(v9, vabdq_u8(v10[-1], vrhaddq_u8(v11[-1], *(a5 + v5 + 48))));
    v12 = vpadalq_u8(v12, vabdq_u8(*v10, vrhaddq_u8(*v11, *(a5 + v5 + 64))));
    v13 = vpadalq_u8(v13, vabdq_u8(v10[1], vrhaddq_u8(v11[1], *(a5 + v5 + 80))));
    v14 = vpadalq_u8(v14, vabdq_u8(v10[2], vrhaddq_u8(v11[2], *(a5 + v5 + 96))));
    v15 = vpadalq_u8(v15, vabdq_u8(v10[3], vrhaddq_u8(v11[3], *(a5 + v5 + 112))));
    v5 += 128;
    v10 = (v10 + a2);
    v11 = (v11 + a4);
  }

  while (v5 != 0x2000);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v9), v12), v13), v14), v15));
}

uint64_t sub_27799FB18(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = a1 + 4;
  v11 = a3 + 4;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v10[-4], vrhaddq_u8(v11[-4], *(a5 + v5))));
    v7 = vpadalq_u8(v7, vabdq_u8(v10[-3], vrhaddq_u8(v11[-3], *(a5 + v5 + 16))));
    v8 = vpadalq_u8(v8, vabdq_u8(v10[-2], vrhaddq_u8(v11[-2], *(a5 + v5 + 32))));
    v9 = vpadalq_u8(v9, vabdq_u8(v10[-1], vrhaddq_u8(v11[-1], *(a5 + v5 + 48))));
    v12 = vpadalq_u8(v12, vabdq_u8(*v10, vrhaddq_u8(*v11, *(a5 + v5 + 64))));
    v13 = vpadalq_u8(v13, vabdq_u8(v10[1], vrhaddq_u8(v11[1], *(a5 + v5 + 80))));
    v14 = vpadalq_u8(v14, vabdq_u8(v10[2], vrhaddq_u8(v11[2], *(a5 + v5 + 96))));
    v15 = vpadalq_u8(v15, vabdq_u8(v10[3], vrhaddq_u8(v11[3], *(a5 + v5 + 112))));
    v5 += 128;
    v10 = (v10 + a2);
    v11 = (v11 + a4);
  }

  while (v5 != 0x4000);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v9), v12), v13), v14), v15));
}

uint64_t sub_27799FC20(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v7.i32[0] = *a1;
    v7.i32[1] = *(a1 + a2);
    v8.i32[0] = *a3;
    v8.i32[1] = *(a3 + a4);
    v6 = vabal_u8(v6, v7, vrhadd_u8(v8, *(a5 + v5)));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v5 += 8;
  }

  while (v5 != 64);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799FC7C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vabal_u8(v6, *a1, vrhadd_u8(*a3, *(a5 + v5)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 8;
  }

  while (v5 != 256);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799FCC0(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, vrhaddq_u8(*a3, *(a5 + v5))));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 16;
  }

  while (v5 != 64);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799FD08(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(*a1, vrhaddq_u8(*a3, *(a5 + v5))));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v5 += 16;
  }

  while (v5 != 1024);
  return vaddlvq_u16(v6);
}

uint64_t sub_27799FD50(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = a3 + 1;
  v8 = 0uLL;
  v9 = a1 + 1;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-1], vrhaddq_u8(v7[-1], *(a5 + v5))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v7, *(a5 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + a4);
    v9 = (v9 + a2);
  }

  while (v5 != 256);
  return vaddlvq_u16(vaddq_s16(v8, v6));
}

uint64_t sub_27799FDB8(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = a1 + 2;
  v10 = 0uLL;
  v11 = a3 + 2;
  do
  {
    v6 = vpadalq_u8(v6, vabdq_u8(v9[-2], vrhaddq_u8(v11[-2], *(a5 + v5))));
    v7 = vpadalq_u8(v7, vabdq_u8(v9[-1], vrhaddq_u8(v11[-1], *(a5 + v5 + 16))));
    v8 = vpadalq_u8(v8, vabdq_u8(*v9, vrhaddq_u8(*v11, *(a5 + v5 + 32))));
    v10 = vpadalq_u8(v10, vabdq_u8(v9[1], vrhaddq_u8(v11[1], *(a5 + v5 + 48))));
    v5 += 64;
    v9 = (v9 + a2);
    v11 = (v11 + a4);
  }

  while (v5 != 1024);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v7), v6), v8), v10));
}

uint64_t sub_27799FE58(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v13.i32[0] = *a1;
    v13.i32[1] = *(a1 + a2);
    v14.i32[0] = *a3;
    v14.i32[1] = *(a3 + a4);
    v10 = vabal_u8(v10, v13, vrshrn_n_s16(vmlal_u8(vmull_u8(v14, v12), *(a5 + v9), v11), 4uLL));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v9 += 8;
  }

  while (v9 != 16);
  return vaddlvq_u16(v10);
}

uint64_t sub_27799FECC(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v13.i32[0] = *a1;
    v13.i32[1] = *(a1 + a2);
    v14.i32[0] = *a3;
    v14.i32[1] = *(a3 + a4);
    v10 = vabal_u8(v10, v13, vrshrn_n_s16(vmlal_u8(vmull_u8(v14, v12), *(a5 + v9), v11), 4uLL));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v9 += 8;
  }

  while (v9 != 32);
  return vaddlvq_u16(v10);
}

uint64_t sub_27799FF40(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v10 = vabal_u8(v10, *a1, vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, v12), *(a5 + v9), v11), 4uLL));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 8;
  }

  while (v9 != 32);
  return vaddlvq_u16(v10);
}

uint64_t sub_27799FF9C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v10 = vabal_u8(v10, *a1, vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, v12), *(a5 + v9), v11), 4uLL));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 8;
  }

  while (v9 != 64);
  return vaddlvq_u16(v10);
}

uint64_t sub_27799FFF8(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v10 = vabal_u8(v10, *a1, vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, v12), *(a5 + v9), v11), 4uLL));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 8;
  }

  while (v9 != 128);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A0054(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdupq_lane_s8(a8, 0);
  v12 = vdupq_lane_s8(a9, 0);
  do
  {
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, *v12.i8), *(a5 + v9), *v11.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*a3->i8, v12), *(a5 + v9), v11), 4uLL)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 16;
  }

  while (v9 != 128);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A00C0(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdupq_lane_s8(a8, 0);
  v12 = vdupq_lane_s8(a9, 0);
  do
  {
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, *v12.i8), *(a5 + v9), *v11.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*a3->i8, v12), *(a5 + v9), v11), 4uLL)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 16;
  }

  while (v9 != 256);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A012C(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdupq_lane_s8(a8, 0);
  v12 = vdupq_lane_s8(a9, 0);
  do
  {
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, *v12.i8), *(a5 + v9), *v11.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*a3->i8, v12), *(a5 + v9), v11), 4uLL)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 16;
  }

  while (v9 != 512);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A0198(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = a3 + 2;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13 = vdupq_lane_s8(a8, 0);
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  do
  {
    v12 = vpadalq_u8(v12, vabdq_u8(v11[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v10[-2], *v14.i8), *(a5 + v9), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10[-2].i8, v14), *(a5 + v9), v13), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, *v14.i8), *(a5 + v9 + 16), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10->i8, v14), *(a5 + v9 + 16), v13), 4uLL)));
    v9 += 32;
    v10 = (v10 + a4);
    v11 = (v11 + a2);
  }

  while (v9 != 512);
  return vaddlvq_u16(vaddq_s16(v15, v12));
}

uint64_t sub_2779A0238(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = a3 + 2;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13 = vdupq_lane_s8(a8, 0);
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  do
  {
    v12 = vpadalq_u8(v12, vabdq_u8(v11[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v10[-2], *v14.i8), *(a5 + v9), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10[-2].i8, v14), *(a5 + v9), v13), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, *v14.i8), *(a5 + v9 + 16), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10->i8, v14), *(a5 + v9 + 16), v13), 4uLL)));
    v9 += 32;
    v10 = (v10 + a4);
    v11 = (v11 + a2);
  }

  while (v9 != 1024);
  return vaddlvq_u16(vaddq_s16(v15, v12));
}

uint64_t sub_2779A02D8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = a3 + 2;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13 = vdupq_lane_s8(a8, 0);
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  do
  {
    v12 = vpadalq_u8(v12, vabdq_u8(v11[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v10[-2], *v14.i8), *(a5 + v9), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10[-2].i8, v14), *(a5 + v9), v13), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, *v14.i8), *(a5 + v9 + 16), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10->i8, v14), *(a5 + v9 + 16), v13), 4uLL)));
    v9 += 32;
    v10 = (v10 + a4);
    v11 = (v11 + a2);
  }

  while (v9 != 2048);
  return vaddlvq_u16(vaddq_s16(v15, v12));
}

uint64_t sub_2779A0378(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a7.i8[0] = *(a6 + 8);
  v10 = a1 + 2;
  v11 = a3 + 4;
  v12 = vdupq_lane_s8(a7, 0);
  v13 = 0uLL;
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v13 = vpadalq_u8(v13, vabdq_u8(v10[-2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-4], *v14.i8), *(a5 + v9), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-4].i8, v14), *(a5 + v9), v12), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(v10[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-2], *v14.i8), *(a5 + v9 + 16), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-2].i8, v14), *(a5 + v9 + 16), v12), 4uLL)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11, *v14.i8), *(a5 + v9 + 32), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11->i8, v14), *(a5 + v9 + 32), v12), 4uLL)));
    v17 = vpadalq_u8(v17, vabdq_u8(v10[1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[2], *v14.i8), *(a5 + v9 + 48), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[2].i8, v14), *(a5 + v9 + 48), v12), 4uLL)));
    v9 += 64;
    v10 = (v10 + a2);
    v11 = (v11 + a4);
  }

  while (v9 != 2048);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v15), v13), v16), v17));
}

uint64_t sub_2779A0478(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a7.i8[0] = *(a6 + 8);
  v10 = a1 + 2;
  v11 = a3 + 4;
  v12 = vdupq_lane_s8(a7, 0);
  v13 = 0uLL;
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v13 = vpadalq_u8(v13, vabdq_u8(v10[-2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-4], *v14.i8), *(a5 + v9), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-4].i8, v14), *(a5 + v9), v12), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(v10[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-2], *v14.i8), *(a5 + v9 + 16), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-2].i8, v14), *(a5 + v9 + 16), v12), 4uLL)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11, *v14.i8), *(a5 + v9 + 32), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11->i8, v14), *(a5 + v9 + 32), v12), 4uLL)));
    v17 = vpadalq_u8(v17, vabdq_u8(v10[1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[2], *v14.i8), *(a5 + v9 + 48), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[2].i8, v14), *(a5 + v9 + 48), v12), 4uLL)));
    v9 += 64;
    v10 = (v10 + a2);
    v11 = (v11 + a4);
  }

  while (v9 != 4096);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v15), v13), v16), v17));
}

uint64_t sub_2779A0578(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a7.i8[0] = *(a6 + 8);
  v10 = a1 + 2;
  v11 = a3 + 4;
  v12 = vdupq_lane_s8(a7, 0);
  v13 = 0uLL;
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v13 = vpadalq_u8(v13, vabdq_u8(v10[-2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-4], *v14.i8), *(a5 + v9), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-4].i8, v14), *(a5 + v9), v12), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(v10[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-2], *v14.i8), *(a5 + v9 + 16), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-2].i8, v14), *(a5 + v9 + 16), v12), 4uLL)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11, *v14.i8), *(a5 + v9 + 32), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11->i8, v14), *(a5 + v9 + 32), v12), 4uLL)));
    v17 = vpadalq_u8(v17, vabdq_u8(v10[1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[2], *v14.i8), *(a5 + v9 + 48), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[2].i8, v14), *(a5 + v9 + 48), v12), 4uLL)));
    v9 += 64;
    v10 = (v10 + a2);
    v11 = (v11 + a4);
  }

  while (v9 != 0x2000);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v15), v13), v16), v17));
}

uint64_t sub_2779A0678(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, int8x8_t a7, int8x8_t a8)
{
  v8 = 0;
  a7.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v9 = vdupq_lane_s8(a8, 0);
  v10 = vdupq_lane_s8(a7, 0);
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = a1 + 4;
  v14 = a3 + 8;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v11 = vpadalq_u8(v11, vabdq_u8(v13[-4], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-8], *v10.i8), *(a5 + v8), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-8].i8, v10), *(a5 + v8), v9), 4uLL)));
    v12 = vpadalq_u8(v12, vabdq_u8(v13[-3], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-6], *v10.i8), *(a5 + v8 + 16), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-6].i8, v10), *(a5 + v8 + 16), v9), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(v13[-2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-4], *v10.i8), *(a5 + v8 + 32), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-4].i8, v10), *(a5 + v8 + 32), v9), 4uLL)));
    v16 = vpadalq_u8(v16, vabdq_u8(v13[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-2], *v10.i8), *(a5 + v8 + 48), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-2].i8, v10), *(a5 + v8 + 48), v9), 4uLL)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v13, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, *v10.i8), *(a5 + v8 + 64), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14->i8, v10), *(a5 + v8 + 64), v9), 4uLL)));
    v18 = vpadalq_u8(v18, vabdq_u8(v13[1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[2], *v10.i8), *(a5 + v8 + 80), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[2].i8, v10), *(a5 + v8 + 80), v9), 4uLL)));
    v19 = vpadalq_u8(v19, vabdq_u8(v13[2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[4], *v10.i8), *(a5 + v8 + 96), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[4].i8, v10), *(a5 + v8 + 96), v9), 4uLL)));
    v20 = vpadalq_u8(v20, vabdq_u8(v13[3], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[6], *v10.i8), *(a5 + v8 + 112), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[6].i8, v10), *(a5 + v8 + 112), v9), 4uLL)));
    v8 += 128;
    v13 = (v13 + a2);
    v14 = (v14 + a4);
  }

  while (v8 != 0x2000);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v12), v11), v15), v16), v17), v18), v19), v20));
}

uint64_t sub_2779A0830(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, int8x8_t a7, int8x8_t a8)
{
  v8 = 0;
  a7.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v9 = vdupq_lane_s8(a8, 0);
  v10 = vdupq_lane_s8(a7, 0);
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = a1 + 4;
  v14 = a3 + 8;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v11 = vpadalq_u8(v11, vabdq_u8(v13[-4], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-8], *v10.i8), *(a5 + v8), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-8].i8, v10), *(a5 + v8), v9), 4uLL)));
    v12 = vpadalq_u8(v12, vabdq_u8(v13[-3], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-6], *v10.i8), *(a5 + v8 + 16), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-6].i8, v10), *(a5 + v8 + 16), v9), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(v13[-2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-4], *v10.i8), *(a5 + v8 + 32), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-4].i8, v10), *(a5 + v8 + 32), v9), 4uLL)));
    v16 = vpadalq_u8(v16, vabdq_u8(v13[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[-2], *v10.i8), *(a5 + v8 + 48), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[-2].i8, v10), *(a5 + v8 + 48), v9), 4uLL)));
    v17 = vpadalq_u8(v17, vabdq_u8(*v13, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v14, *v10.i8), *(a5 + v8 + 64), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14->i8, v10), *(a5 + v8 + 64), v9), 4uLL)));
    v18 = vpadalq_u8(v18, vabdq_u8(v13[1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[2], *v10.i8), *(a5 + v8 + 80), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[2].i8, v10), *(a5 + v8 + 80), v9), 4uLL)));
    v19 = vpadalq_u8(v19, vabdq_u8(v13[2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[4], *v10.i8), *(a5 + v8 + 96), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[4].i8, v10), *(a5 + v8 + 96), v9), 4uLL)));
    v20 = vpadalq_u8(v20, vabdq_u8(v13[3], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v14[6], *v10.i8), *(a5 + v8 + 112), *v9.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v14[6].i8, v10), *(a5 + v8 + 112), v9), 4uLL)));
    v8 += 128;
    v13 = (v13 + a2);
    v14 = (v14 + a4);
  }

  while (v8 != 0x4000);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v12), v11), v15), v16), v17), v18), v19), v20));
}

uint64_t sub_2779A09E8(__int32 *a1, int a2, __int32 *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v13.i32[0] = *a1;
    v13.i32[1] = *(a1 + a2);
    v14.i32[0] = *a3;
    v14.i32[1] = *(a3 + a4);
    v10 = vabal_u8(v10, v13, vrshrn_n_s16(vmlal_u8(vmull_u8(v14, v12), *(a5 + v9), v11), 4uLL));
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v9 += 8;
  }

  while (v9 != 64);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A0A5C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdup_lane_s8(a8, 0);
  v12 = vdup_lane_s8(a9, 0);
  do
  {
    v10 = vabal_u8(v10, *a1, vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, v12), *(a5 + v9), v11), 4uLL));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 8;
  }

  while (v9 != 256);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A0AB8(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdupq_lane_s8(a8, 0);
  v12 = vdupq_lane_s8(a9, 0);
  do
  {
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, *v12.i8), *(a5 + v9), *v11.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*a3->i8, v12), *(a5 + v9), v11), 4uLL)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 16;
  }

  while (v9 != 64);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A0B24(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = 0uLL;
  v11 = vdupq_lane_s8(a8, 0);
  v12 = vdupq_lane_s8(a9, 0);
  do
  {
    v10 = vpadalq_u8(v10, vabdq_u8(*a1, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*a3, *v12.i8), *(a5 + v9), *v11.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*a3->i8, v12), *(a5 + v9), v11), 4uLL)));
    a1 = (a1 + a2);
    a3 = (a3 + a4);
    v9 += 16;
  }

  while (v9 != 1024);
  return vaddlvq_u16(v10);
}

uint64_t sub_2779A0B90(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, double a7, int8x8_t a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a8.i8[0] = *(a6 + 8);
  v10 = a3 + 2;
  v11 = a1 + 1;
  v12 = 0uLL;
  v13 = vdupq_lane_s8(a8, 0);
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  do
  {
    v12 = vpadalq_u8(v12, vabdq_u8(v11[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v10[-2], *v14.i8), *(a5 + v9), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10[-2].i8, v14), *(a5 + v9), v13), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(*v11, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v10, *v14.i8), *(a5 + v9 + 16), *v13.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v10->i8, v14), *(a5 + v9 + 16), v13), 4uLL)));
    v9 += 32;
    v10 = (v10 + a4);
    v11 = (v11 + a2);
  }

  while (v9 != 256);
  return vaddlvq_u16(vaddq_s16(v15, v12));
}

uint64_t sub_2779A0C30(uint8x16_t *a1, int a2, uint8x8_t *a3, int a4, uint64_t a5, uint64_t a6, int8x8_t a7, double a8, int8x8_t a9)
{
  v9 = 0;
  a9.i8[0] = *(a6 + 4);
  a7.i8[0] = *(a6 + 8);
  v10 = a1 + 2;
  v11 = a3 + 4;
  v12 = vdupq_lane_s8(a7, 0);
  v13 = 0uLL;
  v14 = vdupq_lane_s8(a9, 0);
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  do
  {
    v13 = vpadalq_u8(v13, vabdq_u8(v10[-2], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-4], *v14.i8), *(a5 + v9), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-4].i8, v14), *(a5 + v9), v12), 4uLL)));
    v15 = vpadalq_u8(v15, vabdq_u8(v10[-1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[-2], *v14.i8), *(a5 + v9 + 16), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[-2].i8, v14), *(a5 + v9 + 16), v12), 4uLL)));
    v16 = vpadalq_u8(v16, vabdq_u8(*v10, vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(*v11, *v14.i8), *(a5 + v9 + 32), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11->i8, v14), *(a5 + v9 + 32), v12), 4uLL)));
    v17 = vpadalq_u8(v17, vabdq_u8(v10[1], vrshrn_high_n_s16(vrshrn_n_s16(vmlal_u8(vmull_u8(v11[2], *v14.i8), *(a5 + v9 + 48), *v12.i8), 4uLL), vmlal_high_u8(vmull_high_u8(*v11[2].i8, v14), *(a5 + v9 + 48), v12), 4uLL)));
    v9 += 64;
    v10 = (v10 + a2);
    v11 = (v11 + a4);
  }

  while (v9 != 1024);
  return vaddvq_s32(vpadalq_u16(vpadalq_u16(vpadalq_u16(vpaddlq_u16(v15), v13), v16), v17));
}

uint64_t sub_2779A0D30(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v8 = *a3;
  if (!*a3 || *v8 != 45)
  {
    return 0;
  }

  v9 = *a2;
  if (*a2 && (v10 = v8 + 1, !strcmp((v8 + 1), v9)))
  {
    v17 = *(a2 + 16);
    if (!v17)
    {
      v16 = 0;
      v18 = 1;
      goto LABEL_27;
    }

    v16 = a3[1];
    v18 = 2;
  }

  else
  {
    v11 = *(a2 + 8);
    if (!v11)
    {
      return 0;
    }

    v12 = strlen(*(a2 + 8));
    if (*(v8 + 1) != 45)
    {
      return 0;
    }

    v13 = v12;
    v10 = v8 + 2;
    if (strncmp((v8 + 2), v11, v12))
    {
      return 0;
    }

    v14 = *(v8 + v13 + 2);
    if (v14 != 61 && v14 != 0)
    {
      return 0;
    }

    if (v14 == 61)
    {
      v16 = v10 + v13 + 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 16);
    v18 = 1;
  }

  if (v17 == -1)
  {
LABEL_27:
    *a1 = a3;
    *(a1 + 8) = v10;
    *(a1 + 16) = v16;
    *(a1 + 24) = v18;
    *(a1 + 28) = 0;
    result = 1;
    *(a1 + 32) = a2;
    return result;
  }

  if (v16 || !v17)
  {
    if (v16 && !v17)
    {
      if (a4)
      {
        snprintf(a4, 0xC8uLL, "Error: option %s requires no argument.\n");
      }

      return 0;
    }

    goto LABEL_27;
  }

  if (a4)
  {
    snprintf(a4, 0xC8uLL, "Error: option %s requires argument.\n");
  }

  return 0;
}

unint64_t sub_2779A0E90(uint64_t a1, char *a2)
{
  __endptr = 0;
  result = strtoul(*(a1 + 16), &__endptr, 10);
  if (a2)
  {
    *a2 = 0;
  }

  if (!**(a1 + 16) || *__endptr)
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Invalid character '%c'\n");
    }

    return 0;
  }

  if (HIDWORD(result))
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Value %lu out of range for unsigned int\n");
    }

    return 0;
  }

  return result;
}

uint64_t sub_2779A0F3C(uint64_t a1, char *a2)
{
  __endptr = 0;
  result = strtol(*(a1 + 16), &__endptr, 10);
  if (a2)
  {
    *a2 = 0;
  }

  if (!**(a1 + 16) || *__endptr)
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Invalid character '%c'\n");
    }

    return 0;
  }

  if (result != result)
  {
    if (a2)
    {
      snprintf(a2, 0xC8uLL, "Option %s: Value %ld out of range for signed int\n");
    }

    return 0;
  }

  return result;
}

uint64_t sub_2779A0FE8(uint64_t a1, char *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  __endptr = 0;
  result = strtol(*(a1 + 16), &__endptr, 10);
  v5 = *(a1 + 16);
  if (*v5 && !*__endptr && (v9 = *(*(a1 + 32) + 32), *v9))
  {
    v10 = v9 + 2;
    while (result != *(v10 - 2))
    {
      v11 = *v10;
      v10 += 2;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = *(*(a1 + 32) + 32);
    v7 = *v6;
    if (*v6)
    {
      while (strcmp(v5, v7))
      {
        v8 = *(v6 + 16);
        v6 += 16;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      return *(v6 + 8);
    }

    else
    {
LABEL_8:
      if (a2)
      {
        snprintf(a2, 0xC8uLL, "Option %s: Invalid value '%s'\n", *(a1 + 8), v5);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2779A10CC(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 16);
  if (a3)
  {
    *a3 = 0;
  }

  if (*v5)
  {
    v6 = 0;
    __endptr = 0;
    while (1)
    {
      v7 = strtol(v5, &__endptr, 10);
      v8 = v7;
      if (v7 != v7)
      {
        break;
      }

      if (v6 == 64)
      {
        if (a3)
        {
          snprintf(a3, 0xC8uLL, "Option %s: List has more than %d entries\n");
        }

        return 0;
      }

      v5 = __endptr;
      if (*__endptr)
      {
        if (*__endptr != 44)
        {
          if (a3)
          {
            snprintf(a3, 0xC8uLL, "Option %s: Bad list separator '%c'\n");
          }

          return 0;
        }

        v5 = ++__endptr;
      }

      v9 = v6 + 1;
      *(a2 + 4 * v6++) = v8;
      if (!*v5)
      {
        return v9;
      }
    }

    if (a3)
    {
      snprintf(a3, 0xC8uLL, "Option %s: Value %ld out of range for signed int\n");
    }
  }

  return 0;
}

_DWORD *sub_2779A11D4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (result && a4 >= 1)
  {
    v9 = 0;
    v10 = -3 - a2;
    v11 = 3 - a2;
    v12 = a4;
    do
    {
      v13 = (a1 + *(a3 + 8 * v9 + 4) * a2 + *(a3 + 8 * v9));
      v14 = *v13;
      v15 = &v13[3 * a2];
      v16 = &v13[-3 * a2];
      v17 = &v13[-2 * a2];
      v18 = *v15;
      v19 = &v13[a2];
      v20 = &v13[2 * a2];
      v21 = 18;
      v22 = 273;
      for (i = 255; i != v21; v22 = v21 + i)
      {
        v24 = v22;
        v25 = v22;
        v26 = v22 / 2;
        v27 = v14 + v24 / 2;
        v28 = v14 - v25 / 2;
        if (v27 >= v18)
        {
          if (v28 <= v18)
          {
            v39 = v16[1];
            if (v27 < v39)
            {
              if (v27 >= *v16 || v27 >= *(v16 - 1))
              {
                goto LABEL_783;
              }

              if (v27 >= v17[2])
              {
                if (v27 >= *(v17 - 2) || v27 >= v13[v10] || v27 >= *(v13 - 3) || v27 >= *(v19 - 3) || v27 >= *(v20 - 2))
                {
                  goto LABEL_783;
                }

                goto LABEL_495;
              }

              if (v27 >= v13[v11])
              {
                if (v27 >= *(v17 - 2) || v27 >= v13[v10] || v27 >= *(v13 - 3) || v27 >= *(v19 - 3))
                {
                  goto LABEL_783;
                }

                goto LABEL_536;
              }

              if (v27 >= v13[3])
              {
                if (v27 >= *(v17 - 2) || v27 >= v13[v10] || v27 >= *(v13 - 3))
                {
                  goto LABEL_783;
                }

                goto LABEL_584;
              }

              if (v27 >= v19[3])
              {
                if (v27 >= *(v17 - 2) || v27 >= v13[v10])
                {
                  goto LABEL_783;
                }

                goto LABEL_634;
              }

              if (v27 < v20[2])
              {
                if (v27 < v15[1])
                {
                  goto LABEL_647;
                }

                goto LABEL_43;
              }

              if (v27 >= *(v17 - 2))
              {
                goto LABEL_783;
              }

LABEL_523:
              v40 = v13[v10];
              goto LABEL_635;
            }

            if (v28 <= v39 || v28 <= *v16 || v28 <= *(v16 - 1))
            {
LABEL_783:
              i = v26;
              goto LABEL_784;
            }

            if (v28 <= v17[2])
            {
              if (v28 <= *(v17 - 2) || v28 <= v13[v10] || v28 <= *(v13 - 3) || v28 <= *(v19 - 3) || v28 <= *(v20 - 2))
              {
                goto LABEL_783;
              }

              goto LABEL_645;
            }

            if (v28 <= v13[v11])
            {
              if (v28 <= *(v17 - 2) || v28 <= v13[v10] || v28 <= *(v13 - 3) || v28 <= *(v19 - 3))
              {
                goto LABEL_783;
              }

              goto LABEL_589;
            }

            if (v28 <= v13[3])
            {
              if (v28 <= *(v17 - 2) || v28 <= v13[v10] || v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }

              goto LABEL_532;
            }

            if (v28 > v19[3])
            {
              if (v28 > v20[2])
              {
                if (v28 > v15[1])
                {
                  goto LABEL_647;
                }

LABEL_80:
                v44 = *(v17 - 2);
                goto LABEL_646;
              }

              if (v28 <= *(v17 - 2))
              {
                goto LABEL_783;
              }

LABEL_578:
              v44 = v13[v10];
              goto LABEL_646;
            }

            if (v28 <= *(v17 - 2) || v28 <= v13[v10])
            {
              goto LABEL_783;
            }

LABEL_581:
            v44 = *(v13 - 3);
            goto LABEL_646;
          }

          v36 = v15[1];
          if (v27 < v36)
          {
            v37 = *v16;
            if (v27 < v37)
            {
              if (v27 >= v16[1] || v27 >= *(v16 - 1))
              {
                goto LABEL_783;
              }

              if (v27 < v17[2])
              {
                if (v27 < v13[v11])
                {
                  if (v27 >= v13[3])
                  {
                    if (v27 >= *(v17 - 2))
                    {
                      goto LABEL_783;
                    }

                    goto LABEL_425;
                  }

                  if (v27 < v19[3])
                  {
                    if (v27 < v20[2])
                    {
                      goto LABEL_647;
                    }

                    if (v27 >= *(v17 - 2))
                    {
                      goto LABEL_783;
                    }

                    goto LABEL_523;
                  }

LABEL_620:
                  if (v27 >= *(v17 - 2))
                  {
                    goto LABEL_783;
                  }

LABEL_621:
                  v78 = v13[v10];
                  goto LABEL_622;
                }

                if (v27 >= *(v17 - 2))
                {
                  goto LABEL_783;
                }

                goto LABEL_336;
              }

              if (v27 >= *(v17 - 2) || v27 >= v13[v10])
              {
                goto LABEL_783;
              }

              goto LABEL_257;
            }

            if (v28 <= v37 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2))
            {
              goto LABEL_783;
            }

            if (v28 <= v13[v10])
            {
              if (v28 <= v20[2] || v28 <= v19[3])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v13 - 3))
            {
              if (v28 <= v19[3])
              {
                goto LABEL_783;
              }
            }

            else if (v28 > *(v19 - 3))
            {
              if (v28 > *(v20 - 2))
              {
                if (v28 > *(v15 - 1))
                {
                  goto LABEL_647;
                }

                goto LABEL_439;
              }

LABEL_438:
              if (v28 <= v13[v11])
              {
                goto LABEL_783;
              }

LABEL_439:
              if (v28 <= v17[2])
              {
                goto LABEL_783;
              }

LABEL_440:
              v44 = v16[1];
              goto LABEL_646;
            }

            if (v28 <= v13[3])
            {
              goto LABEL_783;
            }

            goto LABEL_438;
          }

          if (v28 <= v36)
          {
            v46 = *v16;
            if (v27 < v46)
            {
              if (v27 >= v16[1] || v27 >= *(v16 - 1) || v27 >= *(v17 - 2))
              {
                goto LABEL_783;
              }

              if (v27 >= v17[2])
              {
                if (v27 >= v13[v10] || v27 >= *(v13 - 3) || v27 >= *(v19 - 3) || v27 >= *(v20 - 2))
                {
                  goto LABEL_783;
                }

                goto LABEL_495;
              }

              if (v27 >= v13[v11])
              {
                if (v27 >= v13[v10] || v27 >= *(v13 - 3) || v27 >= *(v19 - 3))
                {
                  goto LABEL_783;
                }

                goto LABEL_536;
              }

              if (v27 >= v13[3])
              {
                if (v27 >= v13[v10] || v27 >= *(v13 - 3))
                {
                  goto LABEL_783;
                }

                goto LABEL_584;
              }

              if (v27 >= v19[3])
              {
                if (v27 >= v13[v10])
                {
                  goto LABEL_783;
                }

                goto LABEL_634;
              }

              if (v27 < v20[2])
              {
                goto LABEL_647;
              }

              goto LABEL_523;
            }

            if (v28 <= v46 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2))
            {
              goto LABEL_783;
            }

            if (v28 <= v13[v10])
            {
              if (v28 <= v20[2] || v28 <= v19[3] || v28 <= v13[3] || v28 <= v13[v11] || v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v13 - 3))
            {
              if (v28 <= v19[3] || v28 <= v13[3] || v28 <= v13[v11] || v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v19 - 3))
            {
              if (v28 <= v13[3] || v28 <= v13[v11] || v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v20 - 2))
            {
              if (v28 <= v13[v11] || v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            else
            {
              if (v28 > *(v15 - 1))
              {
                goto LABEL_647;
              }

              if (v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            goto LABEL_440;
          }

          v42 = v20[2];
          if (v27 < v42)
          {
            v43 = *(v16 - 1);
            if (v27 < v43)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v17 - 2))
              {
                goto LABEL_783;
              }

              if (v27 < v17[2])
              {
                if (v27 < v13[v11])
                {
                  if (v27 >= v13[3])
                  {
                    goto LABEL_425;
                  }

                  if (v27 < v19[3])
                  {
                    goto LABEL_647;
                  }

                  goto LABEL_621;
                }

LABEL_336:
                if (v27 >= v13[v10])
                {
                  goto LABEL_783;
                }

                goto LABEL_337;
              }

              if (v27 >= v13[v10])
              {
                goto LABEL_783;
              }

LABEL_257:
              if (v27 >= *(v13 - 3))
              {
                goto LABEL_783;
              }

              goto LABEL_258;
            }

            if (v28 <= v43 || v28 <= *(v17 - 2) || v28 <= v13[v10])
            {
              goto LABEL_783;
            }

            if (v28 <= *(v13 - 3))
            {
              if (v28 <= v19[3] || v28 <= v13[3])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v19 - 3))
            {
              if (v28 <= v13[3])
              {
                goto LABEL_783;
              }
            }

            else if (v28 > *(v20 - 2))
            {
              if (v28 > *(v15 - 1))
              {
                goto LABEL_647;
              }

              goto LABEL_596;
            }

            if (v28 <= v13[v11])
            {
              goto LABEL_783;
            }

LABEL_596:
            if (v28 <= v17[2] || v28 <= v16[1])
            {
              goto LABEL_783;
            }

LABEL_598:
            v44 = *v16;
            goto LABEL_646;
          }

          if (v28 <= v42)
          {
            v54 = *(v16 - 1);
            if (v27 < v54)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v17 - 2) || v27 >= v13[v10])
              {
                goto LABEL_783;
              }

              if (v27 >= v17[2])
              {
                if (v27 >= *(v13 - 3) || v27 >= *(v19 - 3) || v27 >= *(v20 - 2))
                {
                  goto LABEL_783;
                }

                goto LABEL_495;
              }

              if (v27 >= v13[v11])
              {
                if (v27 >= *(v13 - 3) || v27 >= *(v19 - 3))
                {
                  goto LABEL_783;
                }

                goto LABEL_536;
              }

              if (v27 >= v13[3])
              {
                if (v27 >= *(v13 - 3))
                {
                  goto LABEL_783;
                }

                goto LABEL_584;
              }

              if (v27 < v19[3])
              {
                goto LABEL_647;
              }

              goto LABEL_634;
            }

            if (v28 <= v54 || v28 <= *(v17 - 2) || v28 <= v13[v10])
            {
              goto LABEL_783;
            }

            if (v28 <= *(v13 - 3))
            {
              if (v28 <= v19[3] || v28 <= v13[3] || v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v19 - 3))
            {
              if (v28 <= v13[3] || v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v20 - 2))
            {
              if (v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1])
              {
                goto LABEL_783;
              }
            }

            else
            {
              if (v28 > *(v15 - 1))
              {
                goto LABEL_647;
              }

              if (v28 <= v17[2] || v28 <= v16[1])
              {
                goto LABEL_783;
              }
            }

            goto LABEL_598;
          }

          v49 = v19[3];
          if (v27 < v49)
          {
            v50 = *(v17 - 2);
            if (v27 < v50)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= v13[v10])
              {
                goto LABEL_783;
              }

              if (v27 < v17[2])
              {
                if (v27 < v13[v11])
                {
                  if (v27 < v13[3])
                  {
                    goto LABEL_647;
                  }

                  goto LABEL_426;
                }

LABEL_337:
                if (v27 >= *(v13 - 3))
                {
                  goto LABEL_783;
                }

LABEL_338:
                v64 = *(v19 - 3);
                goto LABEL_339;
              }

              if (v27 >= *(v13 - 3))
              {
                goto LABEL_783;
              }

LABEL_258:
              v57 = *(v19 - 3);
              goto LABEL_259;
            }

            if (v28 <= v50 || v28 <= v13[v10] || v28 <= *(v13 - 3))
            {
              goto LABEL_783;
            }

            if (v28 <= *(v19 - 3))
            {
              if (v28 <= v13[3] || v28 <= v13[v11] || v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v20 - 2))
            {
              if (v28 <= v13[v11] || v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            else
            {
              if (v28 > *(v15 - 1))
              {
                goto LABEL_647;
              }

              if (v28 <= v17[2])
              {
                goto LABEL_783;
              }
            }

            if (v28 <= v16[1] || v28 <= *v16)
            {
              goto LABEL_783;
            }

            goto LABEL_700;
          }

          if (v28 <= v49)
          {
            v69 = *(v17 - 2);
            if (v27 < v69)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= v13[v10] || v27 >= *(v13 - 3))
              {
                goto LABEL_783;
              }

              if (v27 >= v17[2])
              {
                if (v27 >= *(v19 - 3) || v27 >= *(v20 - 2))
                {
                  goto LABEL_783;
                }

                goto LABEL_495;
              }

              if (v27 < v13[v11])
              {
                if (v27 < v13[3])
                {
                  goto LABEL_647;
                }

                goto LABEL_584;
              }

              goto LABEL_338;
            }

            if (v28 <= v69 || v28 <= v13[v10] || v28 <= *(v13 - 3))
            {
              goto LABEL_783;
            }

            if (v28 <= *(v19 - 3))
            {
              if (v28 <= v13[3] || v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16)
              {
                goto LABEL_783;
              }
            }

            else if (v28 <= *(v20 - 2))
            {
              if (v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16)
              {
                goto LABEL_783;
              }
            }

            else
            {
              if (v28 > *(v15 - 1))
              {
                goto LABEL_647;
              }

              if (v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16)
              {
                goto LABEL_783;
              }
            }

LABEL_700:
            v44 = *(v16 - 1);
            goto LABEL_646;
          }

          v59 = v13[3];
          if (v27 < v59)
          {
            v60 = *(v19 - 3);
            if (v27 < v60)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= v13[v10] || v27 >= *(v13 - 3))
              {
                goto LABEL_783;
              }

LABEL_574:
              if (v27 >= v17[2])
              {
                goto LABEL_392;
              }

              if (v27 < v13[v11])
              {
                goto LABEL_647;
              }

              goto LABEL_536;
            }

            if (v28 <= v60)
            {
              if (v27 >= v13[v11] || v27 >= v17[2] || v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1))
              {
                goto LABEL_783;
              }

              goto LABEL_620;
            }

            v77 = v13[v10];
            if (v27 < v77)
            {
              if (v27 >= v13[v11] || v27 >= v17[2] || v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1))
              {
                goto LABEL_783;
              }

              v78 = *(v17 - 2);
LABEL_622:
              if (v27 >= v78)
              {
                goto LABEL_783;
              }

LABEL_634:
              v40 = *(v13 - 3);
              goto LABEL_635;
            }

            if (v28 <= v77 || v28 <= *(v13 - 3))
            {
              goto LABEL_783;
            }

            if (v28 <= *(v20 - 2))
            {
              if (v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1])
              {
                goto LABEL_783;
              }
            }

            else
            {
              if (v28 > *(v15 - 1))
              {
                goto LABEL_647;
              }

              if (v28 <= v17[2] || v28 <= v16[1])
              {
                goto LABEL_783;
              }
            }

            if (v28 <= *v16 || v28 <= *(v16 - 1))
            {
              goto LABEL_783;
            }

            goto LABEL_80;
          }

          if (v28 <= v59)
          {
            v79 = v13[v10];
            if (v27 < v79)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= *(v13 - 3) || v27 >= *(v19 - 3))
              {
                goto LABEL_783;
              }

              goto LABEL_574;
            }

            if (v28 <= v79 || v28 <= *(v13 - 3) || v28 <= *(v19 - 3))
            {
              goto LABEL_783;
            }

            if (v28 <= *(v20 - 2))
            {
              if (v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16)
              {
                goto LABEL_783;
              }
            }

            else
            {
              if (v28 > *(v15 - 1))
              {
                goto LABEL_647;
              }

              if (v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16)
              {
                goto LABEL_783;
              }
            }

            if (v28 <= *(v16 - 1))
            {
              goto LABEL_783;
            }

            goto LABEL_80;
          }

          v73 = v13[v11];
          if (v27 >= v73)
          {
            if (v28 > v73)
            {
              v80 = v17[2];
              if (v27 < v80)
              {
                if (v28 <= *(v15 - 1))
                {
                  if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= v13[v10])
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_337;
                }

                v81 = *(v19 - 3);
                if (v27 < v81)
                {
                  if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= v13[v10])
                  {
                    goto LABEL_783;
                  }

                  v64 = *(v13 - 3);
LABEL_339:
                  if (v27 >= v64)
                  {
                    goto LABEL_783;
                  }

LABEL_536:
                  v40 = *(v20 - 2);
                  goto LABEL_635;
                }

                if (v28 <= v81)
                {
                  goto LABEL_783;
                }

LABEL_589:
                v44 = *(v20 - 2);
LABEL_646:
                if (v28 <= v44)
                {
                  goto LABEL_783;
                }

                goto LABEL_647;
              }

              if (v28 <= v80)
              {
                v86 = *(v19 - 3);
                if (v27 < v86)
                {
                  if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= v13[v10])
                  {
                    goto LABEL_783;
                  }

                  v57 = *(v13 - 3);
LABEL_259:
                  if (v27 >= v57)
                  {
                    goto LABEL_783;
                  }

LABEL_392:
                  v68 = *(v20 - 2);
LABEL_393:
                  if (v27 >= v68)
                  {
                    goto LABEL_783;
                  }

LABEL_495:
                  v40 = *(v15 - 1);
LABEL_635:
                  if (v27 >= v40)
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_647;
                }

                if (v28 <= v86)
                {
                  goto LABEL_783;
                }
              }

              else
              {
                v84 = v16[1];
                if (v27 < v84)
                {
                  v85 = *(v20 - 2);
                  if (v27 < v85)
                  {
                    if (v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= v13[v10] || v27 >= *(v13 - 3))
                    {
                      goto LABEL_783;
                    }

                    v68 = *(v19 - 3);
                    goto LABEL_393;
                  }

                  if (v28 <= v85)
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_645;
                }

                if (v28 > v84)
                {
                  v70 = *v16;
LABEL_778:
                  if (v28 > v70)
                  {
                    goto LABEL_647;
                  }

LABEL_645:
                  v44 = *(v15 - 1);
                  goto LABEL_646;
                }
              }

LABEL_457:
              if (v28 <= *(v20 - 2))
              {
                goto LABEL_783;
              }

              goto LABEL_645;
            }

            v83 = *(v13 - 3);
            if (v27 < v83)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= v13[v10] || v27 >= *(v19 - 3))
              {
                goto LABEL_783;
              }

              v75 = *(v20 - 2);
LABEL_684:
              if (v27 >= v75)
              {
                goto LABEL_783;
              }

              if (v27 >= v17[2])
              {
                goto LABEL_495;
              }

              goto LABEL_647;
            }

            if (v28 <= v83 || v28 <= *(v19 - 3) || v28 <= *(v20 - 2))
            {
              goto LABEL_783;
            }

            if (v28 <= *(v15 - 1))
            {
              if (v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1))
              {
                goto LABEL_783;
              }

              goto LABEL_105;
            }
          }

          else
          {
            v74 = *(v20 - 2);
            if (v27 < v74)
            {
              if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2) || v27 >= v13[v10] || v27 >= *(v13 - 3))
              {
                goto LABEL_783;
              }

              v75 = *(v19 - 3);
              goto LABEL_684;
            }

            if (v28 <= v74)
            {
              if (v27 >= v17[2] || v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2))
              {
                goto LABEL_783;
              }

LABEL_425:
              if (v27 >= v13[v10])
              {
                goto LABEL_783;
              }

LABEL_426:
              v71 = *(v13 - 3);
              goto LABEL_427;
            }

            v82 = *(v13 - 3);
            if (v27 < v82)
            {
              if (v27 >= v17[2] || v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2))
              {
                goto LABEL_783;
              }

              v71 = v13[v10];
LABEL_427:
              if (v27 >= v71)
              {
                goto LABEL_783;
              }

LABEL_584:
              v40 = *(v19 - 3);
              goto LABEL_635;
            }

            if (v28 <= v82 || v28 <= *(v19 - 3))
            {
              goto LABEL_783;
            }

            if (v28 <= *(v15 - 1))
            {
              if (v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1))
              {
                goto LABEL_783;
              }

              goto LABEL_105;
            }
          }
        }

        else
        {
          v29 = v15[1];
          if (v27 >= v29)
          {
            v38 = *v16;
            if (v28 <= v29)
            {
              if (v27 < v38)
              {
                if (v27 >= *(v16 - 1) || v27 >= *(v17 - 2))
                {
                  goto LABEL_783;
                }

                if (v27 >= v13[v10])
                {
                  if (v27 >= v20[2] || v27 >= v19[3])
                  {
                    goto LABEL_783;
                  }
                }

                else
                {
                  if (v27 < *(v13 - 3))
                  {
                    goto LABEL_67;
                  }

                  if (v27 >= v19[3])
                  {
                    goto LABEL_783;
                  }
                }

LABEL_349:
                if (v27 >= v13[3])
                {
                  goto LABEL_783;
                }

LABEL_350:
                if (v27 >= v13[v11])
                {
                  goto LABEL_783;
                }

LABEL_351:
                if (v27 >= v17[2])
                {
                  goto LABEL_783;
                }

                v40 = v16[1];
                goto LABEL_635;
              }

              if (v28 <= v38 || v28 <= v16[1] || v28 <= *(v16 - 1) || v28 <= *(v17 - 2))
              {
                goto LABEL_783;
              }

              if (v28 > v17[2])
              {
                if (v28 > v13[v11])
                {
                  if (v28 > v13[3])
                  {
                    if (v28 > v19[3])
                    {
                      if (v28 > v20[2])
                      {
                        goto LABEL_647;
                      }

                      goto LABEL_578;
                    }

                    goto LABEL_580;
                  }

LABEL_530:
                  if (v28 <= v13[v10] || v28 <= *(v13 - 3))
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_532;
                }

                if (v28 <= v13[v10])
                {
                  goto LABEL_783;
                }

LABEL_538:
                if (v28 <= *(v13 - 3) || v28 <= *(v19 - 3))
                {
                  goto LABEL_783;
                }

                goto LABEL_589;
              }

              if (v28 <= v13[v10] || v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }
            }

            else
            {
              if (v27 < v38)
              {
                if (v27 >= *(v16 - 1) || v27 >= *(v17 - 2))
                {
                  goto LABEL_783;
                }

                if (v27 >= v13[v10])
                {
                  if (v27 >= v20[2])
                  {
                    goto LABEL_783;
                  }
                }

                else if (v27 < *(v13 - 3))
                {
LABEL_67:
                  if (v27 >= *(v19 - 3))
                  {
                    goto LABEL_349;
                  }

                  if (v27 >= *(v20 - 2))
                  {
                    goto LABEL_350;
                  }

                  if (v27 < *(v15 - 1))
                  {
                    goto LABEL_647;
                  }

                  goto LABEL_351;
                }

                if (v27 >= v19[3])
                {
                  goto LABEL_783;
                }

                goto LABEL_349;
              }

              if (v28 <= v38 || v28 <= v16[1] || v28 <= *(v16 - 1))
              {
                goto LABEL_783;
              }

              if (v28 > v17[2])
              {
                if (v28 > v13[v11])
                {
                  if (v28 > v13[3])
                  {
                    if (v28 > v19[3])
                    {
                      if (v28 > v20[2])
                      {
                        goto LABEL_647;
                      }

LABEL_105:
                      if (v28 <= *(v17 - 2))
                      {
                        goto LABEL_783;
                      }

                      goto LABEL_578;
                    }

                    if (v28 <= *(v17 - 2))
                    {
                      goto LABEL_783;
                    }

LABEL_580:
                    if (v28 <= v13[v10])
                    {
                      goto LABEL_783;
                    }

                    goto LABEL_581;
                  }

                  if (v28 <= *(v17 - 2))
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_530;
                }

                if (v28 <= *(v17 - 2) || v28 <= v13[v10])
                {
                  goto LABEL_783;
                }

                goto LABEL_538;
              }

              if (v28 <= *(v17 - 2) || v28 <= v13[v10] || v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }
            }

            if (v28 <= *(v19 - 3))
            {
              goto LABEL_783;
            }

            goto LABEL_457;
          }

          v30 = v20[2];
          if (v27 >= v30)
          {
            v41 = *(v16 - 1);
            if (v28 <= v30)
            {
              if (v27 < v41)
              {
                if (v27 >= *(v17 - 2) || v27 >= v13[v10])
                {
                  goto LABEL_783;
                }

                if (v27 >= *(v13 - 3))
                {
                  if (v27 >= v19[3] || v27 >= v13[3])
                  {
                    goto LABEL_783;
                  }
                }

                else
                {
                  if (v27 < *(v19 - 3))
                  {
                    goto LABEL_112;
                  }

                  if (v27 >= v13[3])
                  {
                    goto LABEL_783;
                  }
                }

LABEL_445:
                if (v27 >= v13[v11])
                {
                  goto LABEL_783;
                }

LABEL_446:
                if (v27 >= v17[2] || v27 >= v16[1])
                {
                  goto LABEL_783;
                }

                v40 = *v16;
                goto LABEL_635;
              }

              if (v28 <= v41 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v17 - 2) || v28 <= v13[v10])
              {
                goto LABEL_783;
              }

              if (v28 > v17[2])
              {
                if (v28 > v13[v11])
                {
                  if (v28 <= v13[3])
                  {
                    goto LABEL_502;
                  }

                  if (v28 > v19[3])
                  {
                    goto LABEL_647;
                  }

                  goto LABEL_581;
                }

                goto LABEL_586;
              }
            }

            else
            {
              if (v27 < v41)
              {
                if (v27 >= *(v17 - 2) || v27 >= v13[v10])
                {
                  goto LABEL_783;
                }

                if (v27 >= *(v13 - 3))
                {
                  if (v27 >= v19[3])
                  {
                    goto LABEL_783;
                  }
                }

                else if (v27 < *(v19 - 3))
                {
LABEL_112:
                  if (v27 >= *(v20 - 2))
                  {
                    goto LABEL_445;
                  }

                  if (v27 < *(v15 - 1))
                  {
                    goto LABEL_647;
                  }

                  goto LABEL_446;
                }

                if (v27 >= v13[3])
                {
                  goto LABEL_783;
                }

                goto LABEL_445;
              }

              if (v28 <= v41 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v17 - 2))
              {
                goto LABEL_783;
              }

              if (v28 > v17[2])
              {
                if (v28 <= v13[v11])
                {
                  if (v28 <= v13[v10])
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_586;
                }

                if (v28 <= v13[3])
                {
                  goto LABEL_501;
                }

                if (v28 > v19[3])
                {
                  goto LABEL_647;
                }

                goto LABEL_401;
              }

              if (v28 <= v13[v10])
              {
                goto LABEL_783;
              }
            }

            if (v28 <= *(v13 - 3) || v28 <= *(v19 - 3))
            {
              goto LABEL_783;
            }

            goto LABEL_643;
          }

          v31 = v19[3];
          if (v27 >= v31)
          {
            v45 = *(v17 - 2);
            if (v28 <= v31)
            {
              if (v27 < v45)
              {
                if (v27 >= v13[v10] || v27 >= *(v13 - 3))
                {
                  goto LABEL_783;
                }

                if (v27 >= *(v19 - 3))
                {
                  if (v27 >= v13[3])
                  {
                    goto LABEL_783;
                  }
                }

                else
                {
LABEL_166:
                  if (v27 < *(v20 - 2))
                  {
                    if (v27 < *(v15 - 1))
                    {
                      goto LABEL_647;
                    }

                    goto LABEL_461;
                  }
                }

LABEL_460:
                if (v27 >= v13[v11])
                {
                  goto LABEL_783;
                }

LABEL_461:
                if (v27 >= v17[2] || v27 >= v16[1] || v27 >= *v16)
                {
                  goto LABEL_783;
                }

                v40 = *(v16 - 1);
                goto LABEL_635;
              }

              if (v28 <= v45 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= v13[v10] || v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }

              if (v28 > v17[2])
              {
                if (v28 > v13[v11])
                {
                  if (v28 > v13[3])
                  {
                    goto LABEL_647;
                  }

                  goto LABEL_532;
                }

                goto LABEL_587;
              }
            }

            else
            {
              if (v27 < v45)
              {
                if (v27 >= v13[v10] || v27 >= *(v13 - 3))
                {
                  goto LABEL_783;
                }

                if (v27 < *(v19 - 3))
                {
                  goto LABEL_166;
                }

                if (v27 >= v13[3])
                {
                  goto LABEL_783;
                }

                goto LABEL_460;
              }

              if (v28 <= v45 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= v13[v10])
              {
                goto LABEL_783;
              }

              if (v28 > v17[2])
              {
                if (v28 > v13[v11])
                {
                  if (v28 > v13[3])
                  {
                    goto LABEL_647;
                  }

                  goto LABEL_502;
                }

                goto LABEL_586;
              }

              if (v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }
            }

            v76 = *(v19 - 3);
LABEL_642:
            if (v28 <= v76)
            {
              goto LABEL_783;
            }

            goto LABEL_643;
          }

          v32 = v13[3];
          if (v27 >= v32)
          {
            if (v28 <= v32)
            {
              v53 = v13[v10];
              if (v27 < v53)
              {
                if (v27 >= *(v13 - 3) || v27 >= *(v19 - 3))
                {
                  goto LABEL_783;
                }

                if (v27 < *(v20 - 2))
                {
                  goto LABEL_223;
                }

                if (v27 >= v13[v11])
                {
                  goto LABEL_783;
                }

LABEL_554:
                if (v27 >= v17[2] || v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1))
                {
                  goto LABEL_783;
                }

LABEL_43:
                v40 = *(v17 - 2);
                goto LABEL_635;
              }

              if (v28 <= v53 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }

              v58 = *(v19 - 3);
              goto LABEL_312;
            }

            v47 = *(v19 - 3);
            if (v27 < v47)
            {
              v48 = v13[v10];
              if (v27 < v48)
              {
                if (v27 >= *(v13 - 3))
                {
                  goto LABEL_783;
                }

                if (v27 < *(v20 - 2))
                {
LABEL_223:
                  if (v27 < *(v15 - 1))
                  {
                    goto LABEL_647;
                  }
                }

                else if (v27 >= v13[v11])
                {
                  goto LABEL_783;
                }

                goto LABEL_554;
              }

              if (v28 <= v48 || v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1))
              {
                goto LABEL_783;
              }

              v65 = *(v17 - 2);
              goto LABEL_402;
            }

            if (v28 > v47)
            {
              if (v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= v13[v10])
              {
                goto LABEL_783;
              }

              v58 = *(v13 - 3);
LABEL_312:
              if (v28 <= v58)
              {
                goto LABEL_783;
              }

              if (v28 > v17[2])
              {
                if (v28 > v13[v11])
                {
                  goto LABEL_647;
                }

                goto LABEL_589;
              }

LABEL_643:
              v63 = *(v20 - 2);
LABEL_644:
              if (v28 <= v63)
              {
                goto LABEL_783;
              }

              goto LABEL_645;
            }

            if (v28 <= v13[v11] || v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2))
            {
              goto LABEL_783;
            }

LABEL_401:
            v65 = v13[v10];
LABEL_402:
            if (v28 <= v65)
            {
              goto LABEL_783;
            }

            goto LABEL_581;
          }

          v33 = v13[v11];
          if (v27 < v33)
          {
            v34 = v17[2];
            if (v27 < v34)
            {
              v35 = v16[1];
              if (v27 < v35)
              {
                if (v27 < *v16)
                {
                  goto LABEL_647;
                }

                goto LABEL_495;
              }

              v62 = *(v20 - 2);
              if (v28 <= v35)
              {
                if (v27 >= v62)
                {
                  goto LABEL_783;
                }

                goto LABEL_495;
              }

              if (v27 < v62)
              {
                goto LABEL_495;
              }

              if (v28 <= v62 || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= v13[v10] || v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }

              v63 = *(v19 - 3);
              goto LABEL_644;
            }

            if (v28 > v34)
            {
              if (v27 < *(v15 - 1))
              {
                v55 = *(v19 - 3);
                if (v27 < v55)
                {
                  goto LABEL_536;
                }

                if (v28 <= v55 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= v13[v10])
                {
                  goto LABEL_783;
                }

                v56 = *(v13 - 3);
                goto LABEL_588;
              }

              if (v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= v13[v10])
              {
                goto LABEL_783;
              }

LABEL_586:
              if (v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }

LABEL_587:
              v56 = *(v19 - 3);
LABEL_588:
              if (v28 <= v56)
              {
                goto LABEL_783;
              }

              goto LABEL_589;
            }

            v67 = *(v19 - 3);
            if (v27 < v67)
            {
              goto LABEL_392;
            }

            if (v28 <= v67 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= v13[v10])
            {
              goto LABEL_783;
            }

            v76 = *(v13 - 3);
            goto LABEL_642;
          }

          if (v28 > v33)
          {
            v51 = *(v20 - 2);
            if (v27 < v51)
            {
              v52 = *(v13 - 3);
              if (v27 < v52)
              {
                if (v27 >= *(v19 - 3))
                {
                  goto LABEL_783;
                }

                if (v27 < *(v15 - 1))
                {
                  goto LABEL_647;
                }

                if (v27 >= v17[2])
                {
                  goto LABEL_783;
                }

LABEL_300:
                if (v27 >= v16[1] || v27 >= *v16 || v27 >= *(v16 - 1) || v27 >= *(v17 - 2))
                {
                  goto LABEL_783;
                }

                goto LABEL_523;
              }

              if (v28 <= v52 || v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2))
              {
                goto LABEL_783;
              }

              v72 = v13[v10];
LABEL_503:
              if (v28 <= v72)
              {
                goto LABEL_783;
              }

LABEL_532:
              v44 = *(v19 - 3);
              goto LABEL_646;
            }

            if (v28 > v51)
            {
              if (v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= v13[v10] || v28 <= *(v13 - 3))
              {
                goto LABEL_783;
              }

              v66 = *(v19 - 3);
LABEL_422:
              if (v28 <= v66)
              {
                goto LABEL_783;
              }

              v70 = v17[2];
              goto LABEL_778;
            }

            if (v28 <= v17[2] || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2))
            {
              goto LABEL_783;
            }

LABEL_501:
            if (v28 <= v13[v10])
            {
              goto LABEL_783;
            }

LABEL_502:
            v72 = *(v13 - 3);
            goto LABEL_503;
          }

          v61 = *(v13 - 3);
          if (v27 >= v61)
          {
            if (v28 <= v61 || v28 <= v16[1] || v28 <= *v16 || v28 <= *(v16 - 1) || v28 <= *(v17 - 2) || v28 <= v13[v10] || v28 <= *(v19 - 3))
            {
              goto LABEL_783;
            }

            v66 = *(v20 - 2);
            goto LABEL_422;
          }

          if (v27 >= *(v19 - 3) || v27 >= *(v20 - 2))
          {
            goto LABEL_783;
          }

          if (v27 >= *(v15 - 1))
          {
            if (v27 >= v17[2])
            {
              goto LABEL_783;
            }

            goto LABEL_300;
          }
        }

LABEL_647:
        v21 = v26;
LABEL_784:
        if (v21 == i - 1)
        {
          break;
        }
      }

      result[v9++] = v21;
    }

    while (v9 != v12);
  }

  return result;
}