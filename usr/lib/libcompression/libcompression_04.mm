__int16 *convert_rows_to_bayer16(__int16 *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a3 >> 1;
  v5 = a3 & 0xFFFFFFFFFFFFFFFELL;
  v6 = 6 * (a3 >> 1);
  v7 = a4 >> 1;
  v8 = 0;
  if (a3 >= 0x10)
  {
    v9 = (((a3 - 16) >> 1) & 0x7FFFFFFFFFFFFFF8) + 8;
    v10 = result;
    do
    {
      v21.val[1] = *(a2 + v8);
      v22.val[0] = *(a2 + v5 + v8);
      v22.val[1] = *(a2 + 4 * v4 + v8);
      v21.val[0] = *(a2 + v6 + v8);
      v11 = &v10[v7];
      vst2q_s16(v10, v21);
      v10 += 16;
      vst2q_s16(v11, v22);
      v12 = v8 + 32;
      v8 += 16;
    }

    while (v12 <= a3);
  }

  else
  {
    v9 = 0;
  }

  v13 = v8 | 2;
  if ((v8 | 2uLL) <= a3)
  {
    v14 = 0;
    v15 = a2 + 4 * v4 + 2 * v9;
    v16 = a2 + v5 + 2 * v9;
    v17 = &result[v8 + 1];
    v18 = a2 + v6 + 2 * v9;
    v19 = a2 + 2 * v9;
    do
    {
      *(v17 - 1) = *(v18 + v14);
      *v17 = *(v19 + v14);
      v20 = &v17[v7];
      *(v20 - 1) = *(v16 + v14);
      *v20 = *(v15 + v14);
      v14 += 2;
      v17 += 2;
    }

    while (v13 + v14 <= a3);
  }

  return result;
}

uint16x8_t *convert_row_RGB888toGUV(uint16x8_t *result, uint64_t a2, unint64_t a3, double a4, __n128 a5, double a6, double a7, __n128 a8)
{
  v8 = a3 - 8;
  if (a3 >= 8)
  {
    v10 = 0;
    v11 = (a2 + 16);
    a5.n128_u64[1] = -1;
    v9 = 24 * (v8 >> 3) + 24;
    v12 = result;
    do
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 3;
      a8.n128_u64[0] = v14;
      v15 = v13;
      v16 = vqtbl2q_s8(*(&a8 - 1), xmmword_29864E360);
      v17 = vextq_s8(v16, v16, 8uLL).u64[0];
      *&v13 = vqtbl2q_s8(*a8.n128_u64, xmmword_29864E370).u64[0];
      a8 = vmovl_u8(veor_s8(vsub_s8(*v16.i8, v17), 0x8080808080808080));
      *(v12 + 2 * a3) = a8;
      *(v12 + 4 * a3) = vmovl_u8(veor_s8(vsub_s8(*&v13, vhadd_u8(*v16.i8, v17)), 0x8080808080808080));
      v18 = v10 + 16;
      *v12++ = vmovl_high_u8(v16);
      v10 += 8;
    }

    while (v18 <= a3);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v19 = a3 - v10;
  if (a3 > v10)
  {
    if (a3 <= 7)
    {
      v26 = &result[v10 / 8];
      v27 = (v9 + a2 + 1);
      do
      {
        v28 = v27[1];
        v29 = *(v27 - 1);
        v30 = *v27;
        v27 += 3;
        v26->i16[0] = v30;
        v26->i16[a3] = (v29 - v30) ^ 0x80;
        v26->i16[2 * a3] = (v28 - ((v30 + v29) >> 1)) ^ 0x80;
        v26 = (v26 + 2);
        --v19;
      }

      while (v19);
    }

    else
    {
      v20 = (a2 + 3 * v8);
      v21 = 2 * v8;
      v22 = *v20;
      a5.n128_u64[0] = *(v20 + 2);
      v23 = *v20;
      v24 = vqtbl2q_s8(*(&a5 - 1), xmmword_29864E360);
      v25 = vextq_s8(v24, v24, 8uLL).u64[0];
      *(result + 2 * a3 + v21) = vmovl_u8(veor_s8(vsub_s8(*v24.i8, v25), 0x8080808080808080));
      *(result + 4 * a3 + v21) = vmovl_u8(veor_s8(vsub_s8(*&vqtbl2q_s8(*a5.n128_u64, xmmword_29864E370), vhadd_u8(*v24.i8, v25)), 0x8080808080808080));
      *(result + v21) = vmovl_high_u8(v24);
    }
  }

  return result;
}

int8x8_t *convert_row_GUVtoRGB888(int8x8_t *result, int16x8_t *a2, unint64_t a3)
{
  v4 = 0;
  v5 = a3 - 8;
  if (a3 >= 8)
  {
    v6 = 24 * (v5 >> 3) + 24;
    v7 = result + 2;
    v8 = a2;
    do
    {
      *v9.i8 = vmovn_s16(*v8);
      v10 = veor_s8(vadd_s8(vmovn_s16(*(v8 + 2 * a3)), *v9.i8), 0x8080808080808080);
      *&v3 = veor_s8(vadd_s8(vhadd_u8(*v9.i8, v10), vmovn_s16(*(v8 + 4 * a3))), 0x8080808080808080);
      v11 = vmovn_hight_s16(v10, *v8);
      v9.i64[1] = v3;
      *v12.i8 = vqtbl1_s8(v9, 0xF07FF0E06FF0D05);
      v12.u64[1] = v10;
      v13 = v4 + 16;
      *v7[-2].i8 = vqtbl2q_s8(*&v3, xmmword_29864E380);
      *v7 = vqtbl1_s8(v12, 0x7060F04030E0100);
      v7 += 3;
      v4 += 8;
      ++v8;
    }

    while (v13 <= a3);
  }

  else
  {
    v6 = 0;
  }

  v14 = a3 - v4;
  if (a3 > v4)
  {
    if (a3 <= 7)
    {
      v20 = &a2[v4 / 8];
      v21 = result + v6 + 1;
      do
      {
        v22 = v20->i16[0];
        v23 = v20->i16[2 * a3];
        v24 = v20->i16[0];
        v25 = (v20->i16[a3] + v20->i16[0]) ^ 0xFF80;
        *(v21 - 1) = (v20->i16[a3] + v20->i16[0]) ^ 0x80;
        *v21 = v22;
        v21[1] = (v23 + ((v24 + v25) >> 1)) ^ 0x80;
        v20 = (v20 + 2);
        v21 += 3;
        --v14;
      }

      while (v14);
    }

    else
    {
      v15 = (result + 3 * v5);
      v16 = 2 * v5;
      v17 = *(a2 + v16);
      *v18.i8 = vmovn_s16(v17);
      v26.val[0] = *(a2 + 4 * a3 + v16);
      v19 = veor_s8(vadd_s8(vmovn_s16(*(a2 + 2 * a3 + v16)), *v18.i8), 0x8080808080808080);
      *v26.val[0].i8 = veor_s8(vadd_s8(vhadd_u8(*v18.i8, v19), vmovn_s16(v26.val[0])), 0x8080808080808080);
      v26.val[1] = vmovn_hight_s16(v19, v17);
      *v15->i8 = vqtbl2q_s8(v26, xmmword_29864E380);
      v18.i64[1] = v26.val[0].i64[0];
      *v17.i8 = vqtbl1_s8(v18, 0xF07FF0E06FF0D05);
      v17.u64[1] = v19;
      v15[2] = vqtbl1_s8(v17, 0x7060F04030E0100);
    }
  }

  return result;
}

unsigned __int128 *convert_row_RGBA8888toGUVA(unsigned __int128 *result, uint64_t a2, unint64_t a3, int8x16_t a4)
{
  v4 = a3 - 8;
  if (a3 >= 8)
  {
    v7 = 0;
    v5 = 0;
    a4.i16[0] = -32640;
    a4.i8[2] = 0x80;
    a4.i8[3] = 0x80;
    a4.i8[4] = 0x80;
    a4.i8[5] = 0x80;
    a4.i8[6] = 0x80;
    a4.i8[7] = 0x80;
    v8 = result;
    do
    {
      v9 = (a2 + v5);
      v24 = vld2q_s8(v9);
      v10 = vmovn_s16(v24.val[0]);
      v11 = vmovn_s16(v24.val[1]);
      *(v8 + 2 * a3) = vmovl_u8(veor_s8(vsub_s8(v10, v11), *a4.i8));
      *(v8 + 4 * a3) = vmovl_u8(veor_s8(vsub_s8(*&vuzp2q_s8(v24.val[0], a4), vhadd_u8(v10, v11)), *a4.i8));
      *v8 = *&v24.val[1] & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *(v8 + 6 * a3) = vmovl_u8(*&vuzp2q_s8(v24.val[1], a4));
      v5 += 32;
      v6 = v7 + 8;
      ++v8;
      v12 = v7 + 16;
      v7 += 8;
    }

    while (v12 <= a3);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v13 = a3 - v6;
  if (a3 > v6)
  {
    if (a3 <= 7)
    {
      v18 = result + v6;
      v19 = (v5 + a2 + 1);
      do
      {
        v20 = v19[1];
        v21 = *(v19 - 1);
        v22 = *v19;
        *v18 = v22;
        v18[a3] = (v21 - v22) ^ 0x80;
        v18[2 * a3] = (v20 - ((v22 + v21) >> 1)) ^ 0x80;
        v18[3 * a3] = v19[2];
        ++v18;
        v19 += 4;
        --v13;
      }

      while (v13);
    }

    else
    {
      v14 = (a2 + 4 * v4);
      v23 = vld2q_s8(v14);
      v15 = 2 * v4;
      v16 = vmovn_s16(v23.val[0]);
      v17 = vmovn_s16(v23.val[1]);
      *(result + 2 * a3 + v15) = vmovl_u8(veor_s8(vsub_s8(v16, v17), 0x8080808080808080));
      *(result + 4 * a3 + v15) = vmovl_u8(veor_s8(vsub_s8(*&vuzp2q_s8(v23.val[0], v23.val[0]), vhadd_u8(v16, v17)), 0x8080808080808080));
      *(result + v15) = *&v23.val[1] & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      *(result + 6 * a3 + v15) = vmovl_u8(*&vuzp2q_s8(v23.val[1], v23.val[0]));
    }
  }

  return result;
}

uint64_t convert_row_GUVAtoRGBA8888(uint64_t result, int16x8_t *a2, unint64_t a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v6 = a3 - 8;
  if (a3 >= 8)
  {
    v9 = 0;
    v8 = 0;
    v10 = a2;
    do
    {
      v11 = (result + v8);
      *a6.i8 = vmovn_s16(*v10);
      v12 = *(v10 + 2 * a3);
      v13 = *(v10 + 6 * a3);
      *v12.i8 = veor_s8(vadd_s8(vmovn_s16(v12), *a6.i8), 0x8080808080808080);
      *a6.i8 = veor_s8(vadd_s8(vhadd_u8(*a6.i8, *v12.i8), vmovn_s16(*(v10 + 4 * a3))), 0x8080808080808080);
      a6 = vzip1q_s8(v12, a6);
      a5 = vzip1q_s16(*v10, v13);
      v14 = vuzp1q_s8(a5, vzip2q_s16(*v10, v13));
      vst2q_s8(v11, *a6.i8);
      v8 += 32;
      v7 = v9 + 8;
      ++v10;
      v15 = v9 + 16;
      v9 += 8;
    }

    while (v15 <= a3);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v16 = a3 - v7;
  if (a3 > v7)
  {
    if (a3 <= 7)
    {
      v21 = &a2->i16[v7];
      v22 = (v8 + result + 1);
      do
      {
        v23 = *v21;
        v24 = *v21;
        v25 = v21[2 * a3];
        v26 = (v21[a3] + *v21) ^ 0xFF80;
        *(v22 - 1) = (v21[a3] + *v21) ^ 0x80;
        *v22 = v23;
        v22[1] = (v25 + ((v24 + v26) >> 1)) ^ 0x80;
        v22[2] = v21[3 * a3];
        ++v21;
        v22 += 4;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 2 * v6;
      v18 = *(a2 + 2 * v6);
      v19 = (result + 4 * v6);
      *a5.i8 = vmovn_s16(v18);
      v20 = *(a2 + 2 * a3 + v17);
      *v20.i8 = veor_s8(vadd_s8(vmovn_s16(v20), *a5.i8), 0x8080808080808080);
      *a5.i8 = veor_s8(vadd_s8(vhadd_u8(*a5.i8, *v20.i8), vmovn_s16(*(a2 + 4 * a3 + v17))), 0x8080808080808080);
      v27.val[0] = vzip1q_s8(v20, a5);
      v27.val[1] = vuzp1q_s8(vzip1q_s16(v18, *(a2 + 6 * a3 + v17)), vzip2q_s16(v18, *(a2 + 6 * a3 + v17)));
      vst2q_s8(v19, v27);
    }
  }

  return result;
}

uint16x8_t *convert_row_8to16(uint16x8_t *result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v4 = 0;
    v5 = result;
    do
    {
      *v5++ = vmovl_u8(*(a2 + v4));
      v3 = v4 + 8;
      v6 = v4 + 16;
      v4 += 8;
    }

    while (v6 <= a3);
  }

  else
  {
    v3 = 0;
  }

  v7 = a3 - v3;
  if (a3 > v3)
  {
    if (a3 <= 7)
    {
      v8 = &result->i16[v3];
      v9 = (a2 + v3);
      do
      {
        v10 = *v9++;
        *v8++ = v10;
        --v7;
      }

      while (v7);
    }

    else
    {
      *(result + 2 * a3 - 16) = vmovl_u8(*(a2 + a3 - 8));
    }
  }

  return result;
}

uint64_t convert_row_16to8(uint64_t result, int16x8_t *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = *v5++;
      *(result + v4) = vmovn_s16(v6);
      v3 = v4 + 8;
      v7 = v4 + 16;
      v4 += 8;
    }

    while (v7 <= a3);
  }

  else
  {
    v3 = 0;
  }

  v8 = a3 - v3;
  if (a3 > v3)
  {
    if (a3 <= 7)
    {
      v9 = (result + v3);
      v10 = &a2->i8[2 * v3];
      do
      {
        v11 = *v10;
        v10 += 2;
        *v9++ = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      *(result + a3 - 8) = vmovn_s16(*(a2 + 2 * a3 - 16));
    }
  }

  return result;
}

uint16x8_t *convert_row_RG88toRG(uint16x8_t *result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v5 = 0;
    v4 = 0;
    v6 = result;
    do
    {
      v7 = (a2 + v4);
      v15 = vld2_s8(v7);
      *v6 = vmovl_u8(v15.val[0]);
      *(v6 + 2 * a3) = vmovl_u8(v15.val[1]);
      v4 += 16;
      v3 = v5 + 8;
      ++v6;
      v8 = v5 + 16;
      v5 += 8;
    }

    while (v8 <= a3);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v9 = a3 - v3;
  if (a3 > v3)
  {
    if (a3 <= 7)
    {
      v12 = &result->i16[v3];
      v13 = (v4 + a2 + 1);
      do
      {
        *v12 = *(v13 - 1);
        v14 = *v13;
        v13 += 2;
        v12[a3] = v14;
        ++v12;
        --v9;
      }

      while (v9);
    }

    else
    {
      v10 = (a2 + 2 * a3 - 16);
      v16 = vld2_s8(v10);
      v11 = 2 * a3 - 16;
      *(result + v11) = vmovl_u8(v16.val[0]);
      *(result + 2 * a3 + v11) = vmovl_u8(v16.val[1]);
    }
  }

  return result;
}

uint64_t convert_row_RGtoRG88(uint64_t result, int16x8_t *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v5 = 0;
    v3 = 0;
    v6 = a2;
    do
    {
      v7 = *(v6 + 2 * a3);
      v8 = *v6++;
      *(result + v3) = vuzp1q_s8(vzip1q_s16(v8, v7), vzip2q_s16(v8, v7));
      v3 += 16;
      v4 = v5 + 8;
      v9 = v5 + 16;
      v5 += 8;
    }

    while (v9 <= a3);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = a3 - v4;
  if (a3 > v4)
  {
    if (a3 <= 7)
    {
      v11 = &a2->i8[2 * v4];
      v12 = (v3 + result + 1);
      do
      {
        *(v12 - 1) = *v11;
        *v12 = v11[2 * a3];
        v12 += 2;
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    else
    {
      *(result + 2 * a3 - 16) = vuzp1q_s8(vzip1q_s16(*(a2 + 2 * a3 - 16), *(a2 + 2 * a3 + 2 * a3 - 16)), vzip2q_s16(*(a2 + 2 * a3 - 16), *(a2 + 2 * a3 + 2 * a3 - 16)));
    }
  }

  return result;
}

int16x8_t *convert_row_RGtoPlanarRG(int16x8_t *result, const __int16 *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v3 = 0;
    v4 = ((2 * a3 - 16) & 0xFFFFFFFFFFFFFFF0) + 16;
    v5 = a2;
    v6 = result;
    do
    {
      v14 = vld2q_s16(v5);
      v5 += 16;
      *v6 = v14.val[0];
      *(v6 + 2 * a3) = v14.val[1];
      v7 = v3 + 16;
      v3 += 8;
      ++v6;
    }

    while (v7 <= a3);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v8 = a3 - v3;
  if (a3 > v3)
  {
    if (a3 <= 7)
    {
      v11 = &result[v3 / 8];
      v12 = &a2[v4 + 1];
      do
      {
        v11->i16[0] = *(v12 - 1);
        v13 = *v12;
        v12 += 2;
        v11->i16[a3] = v13;
        v11 = (v11 + 2);
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = &a2[2 * a3 - 16];
      v15 = vld2q_s16(v9);
      v10 = 2 * a3 - 16;
      *(result + v10) = v15.val[0];
      *(result + 2 * a3 + v10) = v15.val[1];
    }
  }

  return result;
}

__int16 *convert_row_PlanarRGtoRG(__int16 *result, int16x8_t *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    v4 = 0;
    v3 = ((2 * a3 - 16) & 0xFFFFFFFFFFFFFFF0) + 16;
    v5 = result;
    v6 = a2;
    do
    {
      v13.val[0] = *v6;
      v13.val[1] = *(v6 + 2 * a3);
      vst2q_s16(v5, v13);
      v5 += 16;
      v7 = v4 + 16;
      v4 += 8;
      ++v6;
    }

    while (v7 <= a3);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v8 = a3 - v4;
  if (a3 > v4)
  {
    if (a3 <= 7)
    {
      v11 = &a2[v4 / 8];
      v12 = &result[v3 + 1];
      do
      {
        *(v12 - 1) = v11->i16[0];
        *v12 = v11->i16[a3];
        v12 += 2;
        v11 = (v11 + 2);
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = 2 * a3 - 16;
      v14.val[0] = *(a2 + v9);
      v14.val[1] = *(a2 + 2 * a3 + v9);
      v10 = &result[2 * a3 - 16];
      vst2q_s16(v10, v14);
    }
  }

  return result;
}

void BrotliCompareAndPushToQueueLiteral(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unint64_t a5, uint64_t a6, unint64_t *a7)
{
  if (a3 != a4)
  {
    v40[130] = v12;
    v40[131] = v11;
    v40[132] = v10;
    v40[133] = v9;
    v40[144] = v7;
    v40[145] = v8;
    v17 = a4 <= a3 ? a3 : a4;
    v18 = a4 >= a3 ? a3 : a4;
    v19 = *(a2 + 4 * v18);
    v20 = *(a2 + 4 * v17);
    v21 = v19;
    v22 = v19 > 0xFF ? log2(v19) : kBrotliLog2Table[v19];
    v23 = v20 + v19;
    v24 = v20 > 0xFF ? log2(v20) : kBrotliLog2Table[v20];
    v25 = v24 * v20 + v21 * v22;
    v26 = v23 > 0xFF ? log2(v23) : kBrotliLog2Table[v23];
    v27 = a1 + 1040 * v18;
    v28 = (v25 - v23 * v26) * 0.5 - *(v27 + 1032);
    v29 = a1 + 1040 * v17;
    v30 = *(v29 + 1032);
    v31 = v28 - v30;
    if (!*(v27 + 1024))
    {
      goto LABEL_27;
    }

    v32 = *(v29 + 1024);
    v30 = *(v27 + 1032);
    if (!v32)
    {
      goto LABEL_27;
    }

    if (*a7)
    {
      v33 = *(a6 + 16) >= 0.0 ? *(a6 + 16) : 0.0;
    }

    else
    {
      v33 = 1.0e99;
    }

    memcpy(v40, v27, 0x410uLL);
    v34 = 0;
    v40[128] += v32;
    do
    {
      *&v40[v34] = vaddq_s32(*&v40[v34], *(v29 + v34 * 8));
      v34 += 2;
    }

    while (v34 != 128);
    BrotliPopulationCostLiteral(v40);
    if (v30 < v33 - v31)
    {
LABEL_27:
      v35 = v31 + v30;
      v36 = *a7;
      if (*a7)
      {
        v37 = *(a6 + 16);
        if (v37 == v35)
        {
          if (*(a6 + 4) - *a6 > v17 - v18)
          {
            goto LABEL_30;
          }
        }

        else if (v37 > v35)
        {
LABEL_30:
          if (v36 < a5)
          {
            v38 = a6 + 24 * v36;
            *v38 = *a6;
            *(v38 + 16) = *(a6 + 16);
            ++*a7;
          }

          *a6 = v18;
          *(a6 + 4) = v17;
          *(a6 + 8) = v30;
          *(a6 + 16) = v35;
          return;
        }
      }

      if (v36 < a5)
      {
        v39 = a6 + 24 * v36;
        *v39 = v18;
        *(v39 + 4) = v17;
        *(v39 + 8) = v30;
        *(v39 + 16) = v35;
        *a7 = v36 + 1;
      }
    }
  }
}

uint64_t BrotliHistogramCombineLiteral(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, unsigned int *a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v58 = 0;
  if (!a6)
  {
    return 0;
  }

  v12 = 0;
  v13 = a6 - 1;
  v55 = a6;
  v14 = a4 + 1;
  do
  {
    v57 = v12 + 1;
    if (v12 + 1 < a6)
    {
      v16 = v14;
      v17 = v13;
      do
      {
        v18 = *v16++;
        BrotliCompareAndPushToQueueLiteral(a1, a2, a4[v12], v18, a9, a5, &v58);
        --v17;
      }

      while (v17);
    }

    --v13;
    ++v14;
    ++v12;
    a6 = v55;
  }

  while (v57 != v55);
  if (v55 != 1)
  {
    v20 = 0.0;
    v21 = 1;
    v22 = a4;
    while (1)
    {
      if (*(a5 + 2) >= v20)
      {
        v20 = 1.0e99;
        v21 = a8;
        v19 = a6;
      }

      else
      {
        v23 = 0;
        v25 = *a5;
        v24 = a5[1];
        v26 = a1 + 1040 * *a5;
        v27 = a1 + 1040 * v24;
        *(v26 + 1024) += *(v27 + 1024);
        do
        {
          *(v26 + v23) += *(v27 + v23);
          v23 += 4;
        }

        while (v23 != 1024);
        v28 = *(a2 + 4 * v24);
        v29 = *(a2 + 4 * v25);
        *(v26 + 1032) = *(a5 + 1);
        *(a2 + 4 * v25) = v29 + v28;
        v30 = a3;
        for (i = a7; i; --i)
        {
          if (*v30 == v24)
          {
            *v30 = v25;
          }

          ++v30;
        }

        v19 = a6 - 1;
        if (a6 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = a6;
        }

        v33 = 4 * a6 - 4;
        v34 = v22;
        while (*v34 != v24)
        {
          v33 -= 4;
          ++v34;
          if (!--v32)
          {
            goto LABEL_27;
          }
        }

        memmove(v34, v34 + 1, v33);
LABEL_27:
        v35 = v58;
        if (v58)
        {
          v36 = 0;
          v37 = a5;
          while (2)
          {
            v38 = *v37;
            if (*v37 == v25)
            {
              goto LABEL_43;
            }

            v39 = *(v37 + 1);
            v40 = v39 == v24 || v38 == v24;
            if (v40 || v39 == v25)
            {
              goto LABEL_43;
            }

            v42 = *(a5 + 2);
            v43 = v37[2];
            if (v42 == v43)
            {
              if (a5[1] - *a5 <= v39 - v38)
              {
                goto LABEL_41;
              }

LABEL_39:
              v44 = *a5;
              v45 = *(a5 + 2);
              v46 = *(v37 + 2);
              *a5 = *v37;
              *(a5 + 2) = v46;
            }

            else
            {
              if (v42 > v43)
              {
                goto LABEL_39;
              }

LABEL_41:
              v44 = *v37;
              v45 = *(v37 + 2);
            }

            v47 = &a5[6 * v36];
            *(v47 + 2) = v45;
            *v47 = v44;
            ++v36;
LABEL_43:
            v37 += 3;
            if (!--v35)
            {
              goto LABEL_46;
            }

            continue;
          }
        }

        v36 = 0;
LABEL_46:
        v58 = v36;
        if (!v19)
        {
          return v19;
        }

        v48 = v22;
        v49 = v19;
        do
        {
          v50 = *v48++;
          BrotliCompareAndPushToQueueLiteral(a1, a2, v25, v50, a9, a5, &v58);
          --v49;
        }

        while (v49);
        a6 = v19;
        v22 = a4;
      }

      if (v19 <= v21)
      {
        return v19;
      }
    }
  }

  return 1;
}

double BrotliHistogramBitCostDistanceLiteral(void *__src, uint64_t a2)
{
  if (!__src[128])
  {
    return 0.0;
  }

  memcpy(v6, __src, sizeof(v6));
  v3 = 0;
  v6[128] += *(a2 + 1024);
  do
  {
    *&v6[v3] = vaddq_s32(*&v6[v3], *(a2 + v3 * 8));
    v3 += 2;
  }

  while (v3 != 128);
  BrotliPopulationCostLiteral(v6);
  return v4 - *(a2 + 1032);
}

void BrotliHistogramRemapLiteral(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = a6;
  v10 = a2;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v12 = &v6[i];
      v13 = v12 - 1;
      if (!i)
      {
        v13 = v6;
      }

      v14 = *v13;
      v15 = BrotliHistogramBitCostDistanceLiteral((a1 + 1040 * i), a5 + 1040 * *v13);
      if (a4)
      {
        v16 = v15;
        v17 = a3;
        v18 = a4;
        do
        {
          v19 = BrotliHistogramBitCostDistanceLiteral((a1 + 1040 * i), a5 + 1040 * *v17);
          if (v19 < v16)
          {
            v14 = *v17;
            v16 = v19;
          }

          ++v17;
          --v18;
        }

        while (v18);
      }

      *v12 = v14;
      v10 = a2;
      v6 = a6;
    }
  }

  for (; a4; --a4)
  {
    v20 = *a3++;
    bzero((a5 + 1040 * v20), 0x408uLL);
    *(a5 + 1040 * v20 + 1032) = 0x7FF0000000000000;
  }

  if (v10)
  {
    v21 = 0;
    v22 = a1;
    do
    {
      v23 = 0;
      v24 = a5 + 1040 * v6[v21];
      *(v24 + 1024) += *(a1 + 1040 * v21 + 1024);
      do
      {
        *(v24 + v23) += *(v22 + v23);
        v23 += 4;
      }

      while (v23 != 1024);
      ++v21;
      v22 += 1040;
    }

    while (v21 != v10);
  }
}

uint64_t BrotliHistogramReindexLiteral(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a4;
    v8 = 4 * a4;
    v9 = BrotliAllocate(a1);
    if (*(a1 + 24))
    {
      return 0;
    }

    v10 = v9;
    memset(v9, 255, v8);
    v11 = 0;
    v12 = a3;
    v13 = v5;
    do
    {
      v15 = *v12++;
      v14 = v15;
      if (*(v10 + 4 * v15) == -1)
      {
        *(v10 + 4 * v14) = v11++;
      }

      --v13;
    }

    while (v13);
    v16 = v11 ? BrotliAllocate(a1) : 0;
    if (*(a1 + 24))
    {
      return 0;
    }

    v18 = 0;
    do
    {
      v19 = *a3;
      v20 = *(v10 + 4 * v19);
      if (v20 == v18)
      {
        memcpy((v16 + 1040 * v18++), (a2 + 1040 * v19), 0x410uLL);
        v20 = *(v10 + 4 * *a3);
      }

      *a3++ = v20;
      --v5;
    }

    while (v5);
    BrotliFree(a1, v10);
    if (v18)
    {
      v21 = 0;
      v17 = v18;
      do
      {
        memcpy((a2 + v21), (v16 + v21), 0x410uLL);
        v21 += 1040;
      }

      while (1040 * v18 != v21);
    }

    else
    {
      v17 = 0;
    }

LABEL_23:
    BrotliFree(a1, v16);
    return v17;
  }

  if (!*(a1 + 24))
  {
    BrotliFree(a1, 0);
    v17 = 0;
    v16 = 0;
    goto LABEL_23;
  }

  return 0;
}

uint64_t BrotliClusterHistogramsLiteral(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v10 = a1;
  if (a3)
  {
    v11 = BrotliAllocate(a1);
    v12 = BrotliAllocate(v10);
    result = BrotliAllocate(v10);
    if (*(v10 + 24))
    {
      return result;
    }

    v14 = result;
    v40 = (v10 + 24);
    v39 = v10;
    memset_pattern16(v11, &unk_29864E3A0, 4 * a3);
    v15 = 0;
    v16 = a5;
    v17 = a2;
    do
    {
      memcpy(v16, v17, 0x410uLL);
      BrotliPopulationCostLiteral(v17);
      v16[129] = v18;
      a7[v15] = v15;
      ++v15;
      v17 += 1040;
      v16 += 130;
    }

    while (a3 != v15);
    v19 = 0;
    v20 = 0;
    v21 = vdupq_n_s64(4uLL);
    v22 = a3;
    v42 = v21;
    do
    {
      v23 = 0;
      v24 = v22 - 64;
      if (v22 >= 0x40)
      {
        v22 = 64;
      }

      if (v22 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v22;
      }

      v26 = (v25 + 3) & 0xFC;
      if (a3 - v19 >= 0x40)
      {
        v27 = 64;
      }

      else
      {
        v27 = a3 - v19;
      }

      v28 = vdupq_n_s64(v25 - 1);
      v29 = &v12[v20 + 2];
      v30 = xmmword_29862D9D0;
      v31 = xmmword_29862D9C0;
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v32, *v28.i8).u8[0])
        {
          *(v29 - 2) = v19 + v23;
        }

        if (vuzp1_s16(v32, *&v28).i8[2])
        {
          *(v29 - 1) = v19 + v23 + 1;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v31))).i32[1])
        {
          *v29 = v19 + v23 + 2;
          v29[1] = v19 + v23 + 3;
        }

        v23 += 4;
        v31 = vaddq_s64(v31, v21);
        v30 = vaddq_s64(v30, v21);
        v29 += 4;
      }

      while (v26 != v23);
      result = BrotliHistogramCombineLiteral(a5, v11, &a7[v19], &v12[v20], v14, v27, v27, a4, 0x800uLL);
      v21 = v42;
      v20 += result;
      v19 += 64;
      v22 = v24;
    }

    while (v19 < a3);
    v10 = v39;
  }

  else
  {
    result = BrotliAllocate(a1);
    if (*(v10 + 24))
    {
      return result;
    }

    v14 = result;
    v40 = (v10 + 24);
    v11 = 0;
    v12 = 0;
    v20 = 0;
  }

  if (v20 << 6 >= (v20 >> 1) * v20)
  {
    v33 = (v20 >> 1) * v20;
  }

  else
  {
    v33 = v20 << 6;
  }

  if (v33 < 0x800)
  {
    v37 = v14;
  }

  else
  {
    v34 = 2048;
    do
    {
      v35 = v34;
      v34 *= 2;
    }

    while (v35 <= v33);
    v36 = BrotliAllocate(v10);
    v37 = v36;
    if (!*(v10 + 24))
    {
      memcpy(v36, v14, 0xC000uLL);
    }

    result = BrotliFree(v10, v14);
  }

  if (!*v40)
  {
    v38 = BrotliHistogramCombineLiteral(a5, v11, a7, v12, v37, v20, a3, a4, v33);
    BrotliFree(v10, v37);
    BrotliFree(v10, v11);
    BrotliHistogramRemapLiteral(a2, a3, v12, v38, a5, a7);
    BrotliFree(v10, v12);
    result = BrotliHistogramReindexLiteral(v10, a5, a7, a3);
    *a6 = result;
  }

  return result;
}

void BrotliCompareAndPushToQueueCommand(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unint64_t a5, uint64_t a6, unint64_t *a7)
{
  if (a3 != a4)
  {
    v40[354] = v12;
    v40[355] = v11;
    v40[356] = v10;
    v40[357] = v9;
    v40[368] = v7;
    v40[369] = v8;
    v17 = a4 <= a3 ? a3 : a4;
    v18 = a4 >= a3 ? a3 : a4;
    v19 = *(a2 + 4 * v18);
    v20 = *(a2 + 4 * v17);
    v21 = v19;
    v22 = v19 > 0xFF ? log2(v19) : kBrotliLog2Table[v19];
    v23 = v20 + v19;
    v24 = v20 > 0xFF ? log2(v20) : kBrotliLog2Table[v20];
    v25 = v24 * v20 + v21 * v22;
    v26 = v23 > 0xFF ? log2(v23) : kBrotliLog2Table[v23];
    v27 = a1 + 2832 * v18;
    v28 = (v25 - v23 * v26) * 0.5 - *(v27 + 2824);
    v29 = a1 + 2832 * v17;
    v30 = *(v29 + 2824);
    v31 = v28 - v30;
    if (!*(v27 + 2816))
    {
      goto LABEL_27;
    }

    v32 = *(v29 + 2816);
    v30 = *(v27 + 2824);
    if (!v32)
    {
      goto LABEL_27;
    }

    if (*a7)
    {
      v33 = *(a6 + 16) >= 0.0 ? *(a6 + 16) : 0.0;
    }

    else
    {
      v33 = 1.0e99;
    }

    memcpy(v40, v27, 0xB10uLL);
    v34 = 0;
    v40[352] += v32;
    do
    {
      *&v40[v34] = vaddq_s32(*&v40[v34], *(v29 + v34 * 8));
      v34 += 2;
    }

    while (v34 != 352);
    BrotliPopulationCostCommand(v40);
    if (v30 < v33 - v31)
    {
LABEL_27:
      v35 = v31 + v30;
      v36 = *a7;
      if (*a7)
      {
        v37 = *(a6 + 16);
        if (v37 == v35)
        {
          if (*(a6 + 4) - *a6 > v17 - v18)
          {
            goto LABEL_30;
          }
        }

        else if (v37 > v35)
        {
LABEL_30:
          if (v36 < a5)
          {
            v38 = a6 + 24 * v36;
            *v38 = *a6;
            *(v38 + 16) = *(a6 + 16);
            ++*a7;
          }

          *a6 = v18;
          *(a6 + 4) = v17;
          *(a6 + 8) = v30;
          *(a6 + 16) = v35;
          return;
        }
      }

      if (v36 < a5)
      {
        v39 = a6 + 24 * v36;
        *v39 = v18;
        *(v39 + 4) = v17;
        *(v39 + 8) = v30;
        *(v39 + 16) = v35;
        *a7 = v36 + 1;
      }
    }
  }
}

uint64_t BrotliHistogramCombineCommand(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, unsigned int *a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v58 = 0;
  if (!a6)
  {
    return 0;
  }

  v12 = 0;
  v13 = a6 - 1;
  v55 = a6;
  v14 = a4 + 1;
  do
  {
    v57 = v12 + 1;
    if (v12 + 1 < a6)
    {
      v16 = v14;
      v17 = v13;
      do
      {
        v18 = *v16++;
        BrotliCompareAndPushToQueueCommand(a1, a2, a4[v12], v18, a9, a5, &v58);
        --v17;
      }

      while (v17);
    }

    --v13;
    ++v14;
    ++v12;
    a6 = v55;
  }

  while (v57 != v55);
  if (v55 != 1)
  {
    v20 = 0.0;
    v21 = 1;
    v22 = a4;
    while (1)
    {
      if (*(a5 + 2) >= v20)
      {
        v20 = 1.0e99;
        v21 = a8;
        v19 = a6;
      }

      else
      {
        v23 = 0;
        v25 = *a5;
        v24 = a5[1];
        v26 = a1 + 2832 * *a5;
        v27 = a1 + 2832 * v24;
        *(v26 + 2816) += *(v27 + 2816);
        do
        {
          *(v26 + v23) += *(v27 + v23);
          v23 += 4;
        }

        while (v23 != 2816);
        v28 = *(a2 + 4 * v24);
        v29 = *(a2 + 4 * v25);
        *(v26 + 2824) = *(a5 + 1);
        *(a2 + 4 * v25) = v29 + v28;
        v30 = a3;
        for (i = a7; i; --i)
        {
          if (*v30 == v24)
          {
            *v30 = v25;
          }

          ++v30;
        }

        v19 = a6 - 1;
        if (a6 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = a6;
        }

        v33 = 4 * a6 - 4;
        v34 = v22;
        while (*v34 != v24)
        {
          v33 -= 4;
          ++v34;
          if (!--v32)
          {
            goto LABEL_27;
          }
        }

        memmove(v34, v34 + 1, v33);
LABEL_27:
        v35 = v58;
        if (v58)
        {
          v36 = 0;
          v37 = a5;
          while (2)
          {
            v38 = *v37;
            if (*v37 == v25)
            {
              goto LABEL_43;
            }

            v39 = *(v37 + 1);
            v40 = v39 == v24 || v38 == v24;
            if (v40 || v39 == v25)
            {
              goto LABEL_43;
            }

            v42 = *(a5 + 2);
            v43 = v37[2];
            if (v42 == v43)
            {
              if (a5[1] - *a5 <= v39 - v38)
              {
                goto LABEL_41;
              }

LABEL_39:
              v44 = *a5;
              v45 = *(a5 + 2);
              v46 = *(v37 + 2);
              *a5 = *v37;
              *(a5 + 2) = v46;
            }

            else
            {
              if (v42 > v43)
              {
                goto LABEL_39;
              }

LABEL_41:
              v44 = *v37;
              v45 = *(v37 + 2);
            }

            v47 = &a5[6 * v36];
            *(v47 + 2) = v45;
            *v47 = v44;
            ++v36;
LABEL_43:
            v37 += 3;
            if (!--v35)
            {
              goto LABEL_46;
            }

            continue;
          }
        }

        v36 = 0;
LABEL_46:
        v58 = v36;
        if (!v19)
        {
          return v19;
        }

        v48 = v22;
        v49 = v19;
        do
        {
          v50 = *v48++;
          BrotliCompareAndPushToQueueCommand(a1, a2, v25, v50, a9, a5, &v58);
          --v49;
        }

        while (v49);
        a6 = v19;
        v22 = a4;
      }

      if (v19 <= v21)
      {
        return v19;
      }
    }
  }

  return 1;
}

double BrotliHistogramBitCostDistanceCommand(void *__src, uint64_t a2)
{
  if (!__src[352])
  {
    return 0.0;
  }

  memcpy(v6, __src, sizeof(v6));
  v3 = 0;
  v6[352] += *(a2 + 2816);
  do
  {
    *&v6[v3] = vaddq_s32(*&v6[v3], *(a2 + v3 * 8));
    v3 += 2;
  }

  while (v3 != 352);
  BrotliPopulationCostCommand(v6);
  return v4 - *(a2 + 2824);
}

void BrotliHistogramRemapCommand(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = a6;
  v10 = a2;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v12 = &v6[i];
      v13 = v12 - 1;
      if (!i)
      {
        v13 = v6;
      }

      v14 = *v13;
      v15 = BrotliHistogramBitCostDistanceCommand((a1 + 2832 * i), a5 + 2832 * *v13);
      if (a4)
      {
        v16 = v15;
        v17 = a3;
        v18 = a4;
        do
        {
          v19 = BrotliHistogramBitCostDistanceCommand((a1 + 2832 * i), a5 + 2832 * *v17);
          if (v19 < v16)
          {
            v14 = *v17;
            v16 = v19;
          }

          ++v17;
          --v18;
        }

        while (v18);
      }

      *v12 = v14;
      v10 = a2;
      v6 = a6;
    }
  }

  for (; a4; --a4)
  {
    v20 = *a3++;
    bzero((a5 + 2832 * v20), 0xB08uLL);
    *(a5 + 2832 * v20 + 2824) = 0x7FF0000000000000;
  }

  if (v10)
  {
    v21 = 0;
    v22 = a1;
    do
    {
      v23 = 0;
      v24 = a5 + 2832 * v6[v21];
      *(v24 + 2816) += *(a1 + 2832 * v21 + 2816);
      do
      {
        *(v24 + v23) += *(v22 + v23);
        v23 += 4;
      }

      while (v23 != 2816);
      ++v21;
      v22 += 2832;
    }

    while (v21 != v10);
  }
}

uint64_t BrotliHistogramReindexCommand(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a4;
    v8 = 4 * a4;
    v9 = BrotliAllocate(a1);
    if (*(a1 + 24))
    {
      return 0;
    }

    v10 = v9;
    memset(v9, 255, v8);
    v11 = 0;
    v12 = a3;
    v13 = v5;
    do
    {
      v15 = *v12++;
      v14 = v15;
      if (*(v10 + 4 * v15) == -1)
      {
        *(v10 + 4 * v14) = v11++;
      }

      --v13;
    }

    while (v13);
    v16 = v11 ? BrotliAllocate(a1) : 0;
    if (*(a1 + 24))
    {
      return 0;
    }

    v18 = 0;
    do
    {
      v19 = *a3;
      v20 = *(v10 + 4 * v19);
      if (v20 == v18)
      {
        memcpy((v16 + 2832 * v18++), (a2 + 2832 * v19), 0xB10uLL);
        v20 = *(v10 + 4 * *a3);
      }

      *a3++ = v20;
      --v5;
    }

    while (v5);
    BrotliFree(a1, v10);
    if (v18)
    {
      v21 = 0;
      v17 = v18;
      do
      {
        memcpy((a2 + v21), (v16 + v21), 0xB10uLL);
        v21 += 2832;
      }

      while (2832 * v18 != v21);
    }

    else
    {
      v17 = 0;
    }

LABEL_23:
    BrotliFree(a1, v16);
    return v17;
  }

  if (!*(a1 + 24))
  {
    BrotliFree(a1, 0);
    v17 = 0;
    v16 = 0;
    goto LABEL_23;
  }

  return 0;
}

uint64_t BrotliClusterHistogramsCommand(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v10 = a1;
  if (a3)
  {
    v11 = BrotliAllocate(a1);
    v12 = BrotliAllocate(v10);
    result = BrotliAllocate(v10);
    if (*(v10 + 24))
    {
      return result;
    }

    v14 = result;
    v40 = (v10 + 24);
    v39 = v10;
    memset_pattern16(v11, &unk_29864E3A0, 4 * a3);
    v15 = 0;
    v16 = a5;
    v17 = a2;
    do
    {
      memcpy(v16, v17, 0xB10uLL);
      BrotliPopulationCostCommand(v17);
      v16[353] = v18;
      a7[v15] = v15;
      ++v15;
      v17 += 2832;
      v16 += 354;
    }

    while (a3 != v15);
    v19 = 0;
    v20 = 0;
    v21 = vdupq_n_s64(4uLL);
    v22 = a3;
    v42 = v21;
    do
    {
      v23 = 0;
      v24 = v22 - 64;
      if (v22 >= 0x40)
      {
        v22 = 64;
      }

      if (v22 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v22;
      }

      v26 = (v25 + 3) & 0xFC;
      if (a3 - v19 >= 0x40)
      {
        v27 = 64;
      }

      else
      {
        v27 = a3 - v19;
      }

      v28 = vdupq_n_s64(v25 - 1);
      v29 = &v12[v20 + 2];
      v30 = xmmword_29862D9D0;
      v31 = xmmword_29862D9C0;
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v32, *v28.i8).u8[0])
        {
          *(v29 - 2) = v19 + v23;
        }

        if (vuzp1_s16(v32, *&v28).i8[2])
        {
          *(v29 - 1) = v19 + v23 + 1;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v31))).i32[1])
        {
          *v29 = v19 + v23 + 2;
          v29[1] = v19 + v23 + 3;
        }

        v23 += 4;
        v31 = vaddq_s64(v31, v21);
        v30 = vaddq_s64(v30, v21);
        v29 += 4;
      }

      while (v26 != v23);
      result = BrotliHistogramCombineCommand(a5, v11, &a7[v19], &v12[v20], v14, v27, v27, a4, 0x800uLL);
      v21 = v42;
      v20 += result;
      v19 += 64;
      v22 = v24;
    }

    while (v19 < a3);
    v10 = v39;
  }

  else
  {
    result = BrotliAllocate(a1);
    if (*(v10 + 24))
    {
      return result;
    }

    v14 = result;
    v40 = (v10 + 24);
    v11 = 0;
    v12 = 0;
    v20 = 0;
  }

  if (v20 << 6 >= (v20 >> 1) * v20)
  {
    v33 = (v20 >> 1) * v20;
  }

  else
  {
    v33 = v20 << 6;
  }

  if (v33 < 0x800)
  {
    v37 = v14;
  }

  else
  {
    v34 = 2048;
    do
    {
      v35 = v34;
      v34 *= 2;
    }

    while (v35 <= v33);
    v36 = BrotliAllocate(v10);
    v37 = v36;
    if (!*(v10 + 24))
    {
      memcpy(v36, v14, 0xC000uLL);
    }

    result = BrotliFree(v10, v14);
  }

  if (!*v40)
  {
    v38 = BrotliHistogramCombineCommand(a5, v11, a7, v12, v37, v20, a3, a4, v33);
    BrotliFree(v10, v37);
    BrotliFree(v10, v11);
    BrotliHistogramRemapCommand(a2, a3, v12, v38, a5, a7);
    BrotliFree(v10, v12);
    result = BrotliHistogramReindexCommand(v10, a5, a7, a3);
    *a6 = result;
  }

  return result;
}

void BrotliCompareAndPushToQueueDistance(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unint64_t a5, uint64_t a6, unint64_t *a7)
{
  if (a3 != a4)
  {
    v40[274] = v12;
    v40[275] = v11;
    v40[276] = v10;
    v40[277] = v9;
    v40[288] = v7;
    v40[289] = v8;
    v17 = a4 <= a3 ? a3 : a4;
    v18 = a4 >= a3 ? a3 : a4;
    v19 = *(a2 + 4 * v18);
    v20 = *(a2 + 4 * v17);
    v21 = v19;
    v22 = v19 > 0xFF ? log2(v19) : kBrotliLog2Table[v19];
    v23 = v20 + v19;
    v24 = v20 > 0xFF ? log2(v20) : kBrotliLog2Table[v20];
    v25 = v24 * v20 + v21 * v22;
    v26 = v23 > 0xFF ? log2(v23) : kBrotliLog2Table[v23];
    v27 = a1 + 2192 * v18;
    v28 = (v25 - v23 * v26) * 0.5 - *(v27 + 2184);
    v29 = a1 + 2192 * v17;
    v30 = *(v29 + 2184);
    v31 = v28 - v30;
    if (!*(v27 + 2176))
    {
      goto LABEL_27;
    }

    v32 = *(v29 + 2176);
    v30 = *(v27 + 2184);
    if (!v32)
    {
      goto LABEL_27;
    }

    if (*a7)
    {
      v33 = *(a6 + 16) >= 0.0 ? *(a6 + 16) : 0.0;
    }

    else
    {
      v33 = 1.0e99;
    }

    memcpy(v40, v27, 0x890uLL);
    v34 = 0;
    v40[272] += v32;
    do
    {
      *&v40[v34] = vaddq_s32(*&v40[v34], *(v29 + v34 * 8));
      v34 += 2;
    }

    while (v34 != 272);
    BrotliPopulationCostDistance(v40);
    if (v30 < v33 - v31)
    {
LABEL_27:
      v35 = v31 + v30;
      v36 = *a7;
      if (*a7)
      {
        v37 = *(a6 + 16);
        if (v37 == v35)
        {
          if (*(a6 + 4) - *a6 > v17 - v18)
          {
            goto LABEL_30;
          }
        }

        else if (v37 > v35)
        {
LABEL_30:
          if (v36 < a5)
          {
            v38 = a6 + 24 * v36;
            *v38 = *a6;
            *(v38 + 16) = *(a6 + 16);
            ++*a7;
          }

          *a6 = v18;
          *(a6 + 4) = v17;
          *(a6 + 8) = v30;
          *(a6 + 16) = v35;
          return;
        }
      }

      if (v36 < a5)
      {
        v39 = a6 + 24 * v36;
        *v39 = v18;
        *(v39 + 4) = v17;
        *(v39 + 8) = v30;
        *(v39 + 16) = v35;
        *a7 = v36 + 1;
      }
    }
  }
}

uint64_t BrotliHistogramCombineDistance(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, unsigned int *a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v58 = 0;
  if (!a6)
  {
    return 0;
  }

  v12 = 0;
  v13 = a6 - 1;
  v55 = a6;
  v14 = a4 + 1;
  do
  {
    v57 = v12 + 1;
    if (v12 + 1 < a6)
    {
      v16 = v14;
      v17 = v13;
      do
      {
        v18 = *v16++;
        BrotliCompareAndPushToQueueDistance(a1, a2, a4[v12], v18, a9, a5, &v58);
        --v17;
      }

      while (v17);
    }

    --v13;
    ++v14;
    ++v12;
    a6 = v55;
  }

  while (v57 != v55);
  if (v55 != 1)
  {
    v20 = 0.0;
    v21 = 1;
    v22 = a4;
    while (1)
    {
      if (*(a5 + 2) >= v20)
      {
        v20 = 1.0e99;
        v21 = a8;
        v19 = a6;
      }

      else
      {
        v23 = 0;
        v25 = *a5;
        v24 = a5[1];
        v26 = a1 + 2192 * *a5;
        v27 = a1 + 2192 * v24;
        *(v26 + 2176) += *(v27 + 2176);
        do
        {
          *(v26 + v23) += *(v27 + v23);
          v23 += 4;
        }

        while (v23 != 2176);
        v28 = *(a2 + 4 * v24);
        v29 = *(a2 + 4 * v25);
        *(v26 + 2184) = *(a5 + 1);
        *(a2 + 4 * v25) = v29 + v28;
        v30 = a3;
        for (i = a7; i; --i)
        {
          if (*v30 == v24)
          {
            *v30 = v25;
          }

          ++v30;
        }

        v19 = a6 - 1;
        if (a6 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = a6;
        }

        v33 = 4 * a6 - 4;
        v34 = v22;
        while (*v34 != v24)
        {
          v33 -= 4;
          ++v34;
          if (!--v32)
          {
            goto LABEL_27;
          }
        }

        memmove(v34, v34 + 1, v33);
LABEL_27:
        v35 = v58;
        if (v58)
        {
          v36 = 0;
          v37 = a5;
          while (2)
          {
            v38 = *v37;
            if (*v37 == v25)
            {
              goto LABEL_43;
            }

            v39 = *(v37 + 1);
            v40 = v39 == v24 || v38 == v24;
            if (v40 || v39 == v25)
            {
              goto LABEL_43;
            }

            v42 = *(a5 + 2);
            v43 = v37[2];
            if (v42 == v43)
            {
              if (a5[1] - *a5 <= v39 - v38)
              {
                goto LABEL_41;
              }

LABEL_39:
              v44 = *a5;
              v45 = *(a5 + 2);
              v46 = *(v37 + 2);
              *a5 = *v37;
              *(a5 + 2) = v46;
            }

            else
            {
              if (v42 > v43)
              {
                goto LABEL_39;
              }

LABEL_41:
              v44 = *v37;
              v45 = *(v37 + 2);
            }

            v47 = &a5[6 * v36];
            *(v47 + 2) = v45;
            *v47 = v44;
            ++v36;
LABEL_43:
            v37 += 3;
            if (!--v35)
            {
              goto LABEL_46;
            }

            continue;
          }
        }

        v36 = 0;
LABEL_46:
        v58 = v36;
        if (!v19)
        {
          return v19;
        }

        v48 = v22;
        v49 = v19;
        do
        {
          v50 = *v48++;
          BrotliCompareAndPushToQueueDistance(a1, a2, v25, v50, a9, a5, &v58);
          --v49;
        }

        while (v49);
        a6 = v19;
        v22 = a4;
      }

      if (v19 <= v21)
      {
        return v19;
      }
    }
  }

  return 1;
}

double BrotliHistogramBitCostDistanceDistance(void *__src, uint64_t a2)
{
  if (!__src[272])
  {
    return 0.0;
  }

  memcpy(v6, __src, sizeof(v6));
  v3 = 0;
  v6[272] += *(a2 + 2176);
  do
  {
    *&v6[v3] = vaddq_s32(*&v6[v3], *(a2 + v3 * 8));
    v3 += 2;
  }

  while (v3 != 272);
  BrotliPopulationCostDistance(v6);
  return v4 - *(a2 + 2184);
}

void BrotliHistogramRemapDistance(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = a6;
  v10 = a2;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v12 = &v6[i];
      v13 = v12 - 1;
      if (!i)
      {
        v13 = v6;
      }

      v14 = *v13;
      v15 = BrotliHistogramBitCostDistanceDistance((a1 + 2192 * i), a5 + 2192 * *v13);
      if (a4)
      {
        v16 = v15;
        v17 = a3;
        v18 = a4;
        do
        {
          v19 = BrotliHistogramBitCostDistanceDistance((a1 + 2192 * i), a5 + 2192 * *v17);
          if (v19 < v16)
          {
            v14 = *v17;
            v16 = v19;
          }

          ++v17;
          --v18;
        }

        while (v18);
      }

      *v12 = v14;
      v10 = a2;
      v6 = a6;
    }
  }

  for (; a4; --a4)
  {
    v20 = *a3++;
    bzero((a5 + 2192 * v20), 0x888uLL);
    *(a5 + 2192 * v20 + 2184) = 0x7FF0000000000000;
  }

  if (v10)
  {
    v21 = 0;
    v22 = a1;
    do
    {
      v23 = 0;
      v24 = a5 + 2192 * v6[v21];
      *(v24 + 2176) += *(a1 + 2192 * v21 + 2176);
      do
      {
        *(v24 + v23) += *(v22 + v23);
        v23 += 4;
      }

      while (v23 != 2176);
      ++v21;
      v22 += 2192;
    }

    while (v21 != v10);
  }
}

uint64_t BrotliHistogramReindexDistance(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a4;
    v8 = 4 * a4;
    v9 = BrotliAllocate(a1);
    if (*(a1 + 24))
    {
      return 0;
    }

    v10 = v9;
    memset(v9, 255, v8);
    v11 = 0;
    v12 = a3;
    v13 = v5;
    do
    {
      v15 = *v12++;
      v14 = v15;
      if (*(v10 + 4 * v15) == -1)
      {
        *(v10 + 4 * v14) = v11++;
      }

      --v13;
    }

    while (v13);
    v16 = v11 ? BrotliAllocate(a1) : 0;
    if (*(a1 + 24))
    {
      return 0;
    }

    v18 = 0;
    do
    {
      v19 = *a3;
      v20 = *(v10 + 4 * v19);
      if (v20 == v18)
      {
        memcpy((v16 + 2192 * v18++), (a2 + 2192 * v19), 0x890uLL);
        v20 = *(v10 + 4 * *a3);
      }

      *a3++ = v20;
      --v5;
    }

    while (v5);
    BrotliFree(a1, v10);
    if (v18)
    {
      v21 = 0;
      v17 = v18;
      do
      {
        memcpy((a2 + v21), (v16 + v21), 0x890uLL);
        v21 += 2192;
      }

      while (2192 * v18 != v21);
    }

    else
    {
      v17 = 0;
    }

LABEL_23:
    BrotliFree(a1, v16);
    return v17;
  }

  if (!*(a1 + 24))
  {
    BrotliFree(a1, 0);
    v17 = 0;
    v16 = 0;
    goto LABEL_23;
  }

  return 0;
}

uint64_t BrotliClusterHistogramsDistance(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, unsigned int *a7)
{
  v10 = a1;
  if (a3)
  {
    v11 = BrotliAllocate(a1);
    v12 = BrotliAllocate(v10);
    result = BrotliAllocate(v10);
    if (*(v10 + 24))
    {
      return result;
    }

    v14 = result;
    v40 = (v10 + 24);
    v39 = v10;
    memset_pattern16(v11, &unk_29864E3A0, 4 * a3);
    v15 = 0;
    v16 = a5;
    v17 = a2;
    do
    {
      memcpy(v16, v17, 0x890uLL);
      BrotliPopulationCostDistance(v17);
      v16[273] = v18;
      a7[v15] = v15;
      ++v15;
      v17 += 2192;
      v16 += 274;
    }

    while (a3 != v15);
    v19 = 0;
    v20 = 0;
    v21 = vdupq_n_s64(4uLL);
    v22 = a3;
    v42 = v21;
    do
    {
      v23 = 0;
      v24 = v22 - 64;
      if (v22 >= 0x40)
      {
        v22 = 64;
      }

      if (v22 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v22;
      }

      v26 = (v25 + 3) & 0xFC;
      if (a3 - v19 >= 0x40)
      {
        v27 = 64;
      }

      else
      {
        v27 = a3 - v19;
      }

      v28 = vdupq_n_s64(v25 - 1);
      v29 = &v12[v20 + 2];
      v30 = xmmword_29862D9D0;
      v31 = xmmword_29862D9C0;
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v28, v30));
        if (vuzp1_s16(v32, *v28.i8).u8[0])
        {
          *(v29 - 2) = v19 + v23;
        }

        if (vuzp1_s16(v32, *&v28).i8[2])
        {
          *(v29 - 1) = v19 + v23 + 1;
        }

        if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v31))).i32[1])
        {
          *v29 = v19 + v23 + 2;
          v29[1] = v19 + v23 + 3;
        }

        v23 += 4;
        v31 = vaddq_s64(v31, v21);
        v30 = vaddq_s64(v30, v21);
        v29 += 4;
      }

      while (v26 != v23);
      result = BrotliHistogramCombineDistance(a5, v11, &a7[v19], &v12[v20], v14, v27, v27, a4, 0x800uLL);
      v21 = v42;
      v20 += result;
      v19 += 64;
      v22 = v24;
    }

    while (v19 < a3);
    v10 = v39;
  }

  else
  {
    result = BrotliAllocate(a1);
    if (*(v10 + 24))
    {
      return result;
    }

    v14 = result;
    v40 = (v10 + 24);
    v11 = 0;
    v12 = 0;
    v20 = 0;
  }

  if (v20 << 6 >= (v20 >> 1) * v20)
  {
    v33 = (v20 >> 1) * v20;
  }

  else
  {
    v33 = v20 << 6;
  }

  if (v33 < 0x800)
  {
    v37 = v14;
  }

  else
  {
    v34 = 2048;
    do
    {
      v35 = v34;
      v34 *= 2;
    }

    while (v35 <= v33);
    v36 = BrotliAllocate(v10);
    v37 = v36;
    if (!*(v10 + 24))
    {
      memcpy(v36, v14, 0xC000uLL);
    }

    result = BrotliFree(v10, v14);
  }

  if (!*v40)
  {
    v38 = BrotliHistogramCombineDistance(a5, v11, a7, v12, v37, v20, a3, a4, v33);
    BrotliFree(v10, v37);
    BrotliFree(v10, v11);
    BrotliHistogramRemapDistance(a2, a3, v12, v38, a5, a7);
    BrotliFree(v10, v12);
    result = BrotliHistogramReindexDistance(v10, a5, a7, a3);
    *a6 = result;
  }

  return result;
}

uint64_t lzbitmap_fast_decode(uint64_t a1, uint64_t a2, int8x16_t *a3, unsigned int a4, int8x16_t a5)
{
  v6 = a2;
  if (!a2)
  {
    return v6;
  }

  v8 = 0;
  v9 = -a2;
  v10 = 8;
  v11 = &lzbitmap_fast_unpack_dist;
  v12 = xmmword_29864DC80;
  v5.i32[0] = -1;
  v13.i64[0] = -1;
  v13.i64[1] = -1;
  v14.i64[0] = 0x800000008;
  v14.i64[1] = 0x800000008;
  v15 = 1;
  v16 = a3->u64 + a4;
  do
  {
    v17 = &a3->u8[5];
    if (a3->u64 + 5 > v16)
    {
      return 0;
    }

    v18 = (a3->i64 + 4);
    v19 = a3->u32[0];
    v20 = v19 >> 16;
    v21 = a3->i32[0];
    if (v21 == 0xFFFF && !v18->i8[0])
    {
      if (v19 < 0x10000)
      {
        break;
      }

      if (&v17[v20] <= v16)
      {
        v87 = v16;
        if (v20 + v8 <= v6)
        {
          v83 = HIWORD(a3->i32[0]);
        }

        else
        {
          v83 = v6 - v8;
        }

        v84 = v10;
        v85 = v11;
        v88 = v5;
        v89 = v12;
        memcpy((a1 + v8), v17, v83);
        v14.i64[0] = 0x800000008;
        v14.i64[1] = 0x800000008;
        v13.i64[0] = -1;
        v13.i64[1] = -1;
        v5 = v88;
        v12 = v89;
        v11 = v85;
        v10 = v84;
        v8 = v8 + v83;
        a3 = &v17[v83];
        v16 = v87;
        continue;
      }

      return 0;
    }

    a5.i32[0] = a3->i32[0];
    *a5.i8 = vcnt_s8(*a5.i8);
    a5.i16[0] = vaddlv_u8(*a5.i8);
    v22 = (v18 + a5.u32[0]);
    if (v8 + 128 > v6 || a3[11].u64 + 4 > v16)
    {
      a5.i32[0] = HIWORD(a3->i32[0]);
      *a5.i8 = vcnt_s8(*a5.i8);
      a5.i16[0] = vaddlv_u8(*a5.i8);
      a3 = (v22 + (2 * a5.i32[0]));
      if (a3 > v16)
      {
        return 0;
      }

      v72 = 1;
      while (1)
      {
        v73 = v8;
        if ((v72 & v20) != 0)
        {
          v74 = v22->u16[0];
          v22 = (v22 + 2);
          v10 = v74;
        }

        if ((v72 & v21) != 0)
        {
          v76 = v18->u8[0];
          v18 = (v18 + 1);
          v75 = v76;
        }

        else
        {
          v75 = 0;
        }

        a5.i32[0] = v75;
        *a5.i8 = vcnt_s8(*a5.i8);
        a5.i16[0] = vaddlv_u8(*a5.i8);
        if (a3->u64 + a5.u32[0] > v16 || v8 < v10 && v75 != 255)
        {
          return 0;
        }

        v77 = 0;
        v78 = v8 - v10;
        v79 = v9 + v8;
        while (1)
        {
          LODWORD(v8) = v73 + v77;
          if (v77 == 8)
          {
            break;
          }

          v80 = 1 << v77;
          v81 = v77 + 1;
          v82 = (a1 + (v78 + v77));
          if ((v80 & v75) != 0)
          {
            v82 = a3;
            a3 = (a3 + 1);
          }

          *(a1 + v8) = v82->i8[0];
          v77 = v81;
          if (!(v79 + v81))
          {
            return v6;
          }
        }

        v72 *= 2;
        if (v72 >= 0x10000)
        {
          v8 = (v73 + 8);
          goto LABEL_56;
        }
      }
    }

    v23 = vcntq_s8(vdupq_n_s16(v20));
    v24 = vaddq_s8(v23, v23).u16[0];
    a5 = vorrq_s8(vandq_s8(vdupq_n_s16(v10), vcltzq_s8(v11[BYTE2(v19)])), vqtbl1q_s8(*v22, v11[BYTE2(v19)]));
    v25 = *(v22 + v24);
    a3 = (v22 + ((v24 + HIBYTE(v24)) & 0x3E));
    v26 = vorrq_s8(vandq_s8(vdupq_laneq_s16(a5, 7), vcltzq_s8(*(v11 + ((v19 >> 20) & 0xFF0)))), vqtbl1q_s8(v25, *(v11 + ((v19 >> 20) & 0xFF0))));
    v10 = v26.u16[7];
    if (v6 <= v8)
    {
      continue;
    }

    v27 = 0;
    *v28.i8 = lzbitmap_unpack_perm_table[v19];
    v25.i32[0] = v19;
    v29 = vcnt_s8(*v25.i8);
    v29.i16[0] = vaddlv_u8(v29);
    v28.u64[1] = vqadd_u8(lzbitmap_unpack_perm_table[BYTE1(v19)], vdup_lane_s8(v29, 0));
    v30 = vqtbl1q_s8(*v18, v28);
    v31 = vextq_s8(v26, v26, 8uLL).u64[0];
    v32 = vextq_s8(v30, v30, 8uLL).u64[0];
    v33 = vzip2_s8(v32, *a5.i8);
    *v25.i8 = vzip1_s8(v32, *a5.i8);
    v34 = vextq_s8(a5, a5, 8uLL).u64[0];
    v35 = vzip2_s8(*v30.i8, *a5.i8);
    v36 = vzip1_s8(*v30.i8, *a5.i8);
    do
    {
      if (v27 > 1)
      {
        v37 = *v26.i8;
        v38 = *v25.i8;
        if (v27 != 2)
        {
          v37 = v31;
          v38 = v33;
        }
      }

      else
      {
        v37 = *a5.i8;
        v38 = v36;
        if (v27)
        {
          v37 = v34;
          v38 = v35;
        }
      }

      v39 = vdupq_n_s32(v8);
      v40 = vaddq_s32(v39, v12);
      v41 = vceq_s16((*&v38 & 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL);
      v42 = vmovl_s16(vbic_s8(vmovn_s32(vcgtq_u32(vmovl_u16(v37), v40)), v41));
      v42.i32[0] = vmaxvq_u32(v42);
      v43 = v42.i32[0];
      if (v42.i32[0] < 0)
      {
        return 0;
      }

      v44 = vuzp1_s8(v38, *a5.i8);
      v91 = v44.i32[0];
      v44.i16[2] = v44.i16[1];
      v45 = vandq_s8(vandq_s8(vsubw_u16(v40, v37), vmovl_s16(vmvn_s8(v41))), vdupq_lane_s32(*&vcgtq_s32(v42, v5), 0));
      v46 = v44.u16[1];
      v44.i32[0] = v44.u16[0];
      v47 = vcnt_s8(v44);
      v47.i16[0] = vaddlv_u8(v47);
      v48 = lzbitmap_unpack_perm_table[BYTE1(v91)];
      v49 = v47.i32[0];
      *v50.i8 = lzbitmap_unpack_perm_table[v91];
      v47.i32[0] = v91;
      v51 = vcnt_s8(v47);
      v51.i16[0] = vaddlv_u8(v51);
      v50.u64[1] = vqadd_u8(v48, vdup_lane_s8(v51, 0));
      *v52.i8 = lzbitmap_unpack_perm_table[v46];
      v53 = vqtbl1q_s8(*a3, v50);
      v48.i32[0] = v46;
      v54 = vcnt_s8(v48);
      v54.i16[0] = vaddlv_u8(v54);
      v55 = vdup_lane_s8(v54, 0);
      v56 = vceqq_s8(v50, v13);
      v52.u64[1] = vqadd_u8(lzbitmap_unpack_perm_table[HIBYTE(v46)], v55);
      v57 = vqtbl1q_s8(*(a3 + v49), v52);
      v58 = vceqq_s8(v52, v13);
      if ((vminvq_u32(vcgeq_u32(v39, vaddq_s32(v45, v14))) & 0x80000000) != 0)
      {
        v68.i64[0] = *(a1 + v45.u32[0]);
        v69.i64[0] = *(a1 + v45.u32[2]);
        v68.i64[1] = *(a1 + v45.u32[1]);
        v69.i64[1] = *(a1 + v45.u32[3]);
        v67 = vorrq_s8(vandq_s8(v69, v58), v57);
        v70 = (a1 + v8);
        *v70 = vorrq_s8(vandq_s8(v68, v56), v53);
        v70[1] = v67;
        v8 = (v8 + 32);
        goto LABEL_29;
      }

      v59 = 0;
      v60 = vextq_s8(v57, v57, 8uLL).u64[0];
      v61 = vextq_s8(v58, v58, 8uLL).u64[0];
      v62 = vextq_s8(v53, v53, 8uLL).u64[0];
      v63 = vextq_s8(v56, v56, 8uLL).u64[0];
      while (1)
      {
        v90 = v45;
        v64 = *(a1 + *(&v90 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))));
        if (v59 > 1)
        {
          break;
        }

        if (v59)
        {
          v65 = *&v63;
        }

        else
        {
          v65 = *v56.i64;
        }

        if (v59)
        {
          v66 = *&v62;
        }

        else
        {
          v66 = *v53.i64;
        }

LABEL_26:
        *(a1 + v8) = vorr_s8(vand_s8(v64, *&v65), *&v66);
        LODWORD(v8) = v8 + 8;
        ++v59;
      }

      v65 = *v58.i64;
      v66 = *v57.i64;
      if (v59 == 2)
      {
        goto LABEL_26;
      }

      *v67.i8 = vorr_s8(vand_s8(v64, v61), v60);
      *(a1 + v8) = v67.i64[0];
      v8 = (v8 + 8);
LABEL_29:
      v15 &= ~(v43 >> 31);
      v67.i32[0] = v46;
      v71 = vcnt_s8(*v67.i8);
      v71.i16[0] = vaddlv_u8(v71);
      a3 = (a3 + v71.i32[0] + v49);
      if (v27 > 2)
      {
        break;
      }

      ++v27;
    }

    while (v8 < v6);
LABEL_56:
    ;
  }

  while (v8 < v6);
  v6 = v8;
  if (!v15)
  {
    return 0;
  }

  return v6;
}

uint64_t read_expected(int a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = read(a1, (a2 + v6), v3 - v6);
      if (v7 <= 0)
      {
        break;
      }

      v6 += v7;
      if (v6 >= v3)
      {
        return v3;
      }
    }

    if (v7)
    {
      return -1;
    }

    else
    {
      return v6;
    }
  }

  return v3;
}

uint64_t write_expected(int __fd, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = write(__fd, (a2 + v6), v3 - v6);
      if (v7 <= 0)
      {
        break;
      }

      v6 += v7;
      if (v6 >= v3)
      {
        return v3;
      }
    }

    return -1;
  }

  return v3;
}

uint64_t parse_size(const char *a1)
{
  __endptr = 0;
  if ((*a1 - 48) > 9)
  {
    return -1;
  }

  v1 = strtoll(a1, &__endptr, 10);
  v2 = *__endptr;
  v3 = -1;
  if (v2 <= 0x66)
  {
    if (!*__endptr || v2 == 98)
    {
      return v1;
    }
  }

  else
  {
    switch(v2)
    {
      case 'g':
        v1 <<= 30;
        return v1;
      case 'm':
        v1 <<= 20;
        return v1;
      case 'k':
        v1 <<= 10;
        return v1;
    }
  }

  return v3;
}

double get_real_time()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t get_default_nthreads()
{
  v2 = 0;
  v1 = 4;
  if (sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0))
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

__n128 lzma1_model_reset(__n128 *a1, void *__b)
{
  memset_pattern16(__b, &unk_29864E500, 0x7580uLL);
  result.n128_u64[0] = 0x100000001;
  result.n128_u64[1] = 0x100000001;
  *a1 = result;
  a1[1].n128_u64[0] = __b;
  a1[1].n128_u8[13] = 0;
  return result;
}

uint64_t BrotliInitZopfliNodes(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result + 12;
    do
    {
      *(v2 - 12) = 1;
      *(v2 - 4) = 0x7EFFC99E00000000;
      v2 += 16;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t BrotliZopfliCreateCommands(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v45 = result;
  v8 = *(a3 + 12);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = (1 << *(a6 + 8)) - 16;
    v12 = *(a6 + 16) + a2;
    v13 = a7 + 8;
    do
    {
      v14 = (a3 + 16 * v9 + 16 * v8);
      v15 = *v14;
      v16 = v14[2];
      v8 = v14[3];
      v17 = v16 & 0x7FFFFFF;
      if (v10)
      {
        v18 = v16 & 0x7FFFFFF;
      }

      else
      {
        v18 = *a5 + v17;
        *a5 = 0;
      }

      v19 = v15 & 0x1FFFFFF;
      v20 = v9 + v17;
      v21 = v14[1];
      v22 = (v15 & 0x1FFFFFF) - (v15 >> 25) + 9;
      v23 = v12 + v20;
      if (v12 + v20 >= v11)
      {
        v23 = v11;
      }

      v24 = v16 >> 27;
      if (v24)
      {
        v25 = v24 - 1;
      }

      else
      {
        v25 = (v21 + 15);
      }

      *(v13 - 8) = v18;
      *(v13 - 4) = v19 | ((v22 - v15) << 25);
      v26 = *(a6 + 68);
      v27 = v26 + 16;
      if (v26 + 16 <= v25)
      {
        v30 = *(a6 + 64);
        v31 = v25 - v26 + (4 << v30) - 16;
        v32 = (__clz(v31) ^ 0x1F) - 1;
        result = v32 - v30;
        v29 = ((v31 & ~(-1 << v30)) + v27 + ((((v31 >> v32) & 1 | (2 * (v32 - v30))) + 65534) << v30)) | ((v32 - v30) << 10);
        v28 = (v31 - (((v31 >> v32) & 1 | 2) << v32)) >> v30;
      }

      else
      {
        LODWORD(v28) = 0;
        v29 = v25;
      }

      *(v13 + 6) = v29;
      *v13 = v28;
      if (v18 > 5)
      {
        if (v18 > 0x81)
        {
          if (v18 > 0x841)
          {
            if (v18 >> 1 >= 0xC21)
            {
              if (v18 < 0x5842)
              {
                LOWORD(v33) = 22;
              }

              else
              {
                LOWORD(v33) = 23;
              }
            }

            else
            {
              LOWORD(v33) = 21;
            }
          }

          else
          {
            v33 = (__clz(v18 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v34 = (__clz(v18 - 2) ^ 0x1F) - 1;
          v33 = ((v18 - 2) >> v34) + 2 * v34 + 2;
        }
      }

      else
      {
        LOWORD(v33) = v18;
      }

      if (v22 > 9)
      {
        v36 = (__clz(v22 - 70) ^ 0x1F) + 12;
        if (v22 > 0x845)
        {
          LOWORD(v36) = 23;
        }

        v37 = (__clz(v22 - 6) ^ 0x1F) - 1;
        v38 = ((v22 - 6) >> v37) + 2 * v37 + 4;
        if (v22 <= 0x85)
        {
          v35 = v38;
        }

        else
        {
          v35 = v36;
        }
      }

      else
      {
        v35 = v22 - 2;
      }

      v39 = v29 & 0x3FF;
      v40 = v35 & 7 | (8 * (v33 & 7));
      if (v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = v33 > 7u;
      }

      if (v41 || v35 > 0xFu)
      {
        v43 = 3 * (v33 >> 3) + ((v35 & 0xFFF8) >> 3);
        v44 = ((((0x520D40u >> (2 * v43)) & 0xC0) + (v43 << 6)) | v40) + 64;
      }

      else if ((v35 & 0xFFF8) != 0)
      {
        LOWORD(v44) = v40 | 0x40;
      }

      else
      {
        LOWORD(v44) = v35 & 7 | (8 * (v33 & 7));
      }

      *(v13 + 4) = v44;
      if (v23 >= v21 && v25)
      {
        *(a4 + 12) = *(a4 + 8);
        *(a4 + 4) = *a4;
        *a4 = v21;
      }

      *a8 += v18;
      v9 = v20 + v19;
      --v10;
      v13 += 16;
    }

    while (v8 != 0xFFFFFFFFLL);
  }

  *a5 += v45 - v9;
  return result;
}

uint64_t BrotliZopfliComputeShortestPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  v10 = MEMORY[0x2A1C7C4A8]();
  v168 = v13;
  v14 = v12;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v11;
  v22 = v10;
  v180 = *MEMORY[0x29EDCA608];
  v169 = *(v12 + 16);
  v23 = *(v12 + 8);
  if (*(v12 + 4) >= 11)
  {
    v24 = 325;
  }

  else
  {
    v24 = 150;
  }

  memset(v175, 0, 512);
  if (v11 >= 0x7F)
  {
    v25 = v11 - 127;
  }

  else
  {
    v25 = 0;
  }

  *a10 = 0;
  a10[3] = 0;
  InitZopfliCostModel(v10, v175, v12 + 64, v11);
  result = 0;
  if (!*(v22 + 24))
  {
    v161 = v24;
    v160 = v22;
    v172 = v20;
    ZopfliCostModelSetFromLiteralCosts(v175);
    v174 = 0;
    v27 = v21;
    v28 = v169;
    if (v21 >= 4)
    {
      v29 = 0;
      v170 = (1 << v23) - 16;
      memset(v173, 0, sizeof(v173));
      *v171 = v21;
      *v164 = v14;
      do
      {
        v30 = v29 + v172;
        if (v29 + v172 >= v170)
        {
          v31 = v170;
        }

        else
        {
          v31 = v29 + v172;
        }

        v32 = v30 + v28;
        if (v32 >= v170)
        {
          v32 = v170;
        }

        v162 = v32;
        v33 = v27 - v29;
        v34 = 16;
        if (*(v14 + 4) == 11)
        {
          v34 = 64;
        }

        v35 = v30 >= v34;
        v36 = v30 - v34;
        if (!v35)
        {
          v36 = 0;
        }

        v37 = v30 - 1;
        v163 = v30 & v16;
        if (v30 - 1 <= v36)
        {
          v39 = v178;
          v40 = 1;
        }

        else
        {
          v38 = (v18 + (v30 & v16));
          v39 = v178;
          v40 = 1;
          do
          {
            if (v30 - v37 > v31)
            {
              break;
            }

            v41 = (v18 + (v37 & v16));
            if (*v38 == *v41 && v38[1] == v41[1])
            {
              if (v33 < 8)
              {
                v46 = 0;
                v47 = (v18 + (v30 & v16));
LABEL_36:
                if ((v33 & 7) != 0)
                {
                  v48 = v33 & 7 | v46;
                  v49 = v33 & 7;
                  while (v41[v46] == *v47)
                  {
                    ++v47;
                    ++v46;
                    if (!--v49)
                    {
                      v46 = v48;
                      break;
                    }
                  }
                }
              }

              else
              {
                v42 = 0;
                v43 = v33 >> 3;
                while (1)
                {
                  v44 = *&v38[v42];
                  v45 = *&v41[v42];
                  if (v44 != v45)
                  {
                    break;
                  }

                  v42 += 8;
                  if (!--v43)
                  {
                    v46 = v33 & 0xFFFFFFFFFFFFFFF8;
                    v47 = &v38[v33 & 0xFFFFFFFFFFFFFFF8];
                    goto LABEL_36;
                  }
                }

                v46 = v42 + (__clz(__rbit64(v45 ^ v44)) >> 3);
              }

              if (v46 > v40)
              {
                *v39 = v30 - v37;
                *(v39++ + 1) = 32 * v46;
                v40 = v46;
              }
            }

            if (--v37 <= v36)
            {
              break;
            }
          }

          while (v40 < 3);
        }

        if (v40 < v33)
        {
          v50 = v18 + v163;
          v51 = (506832829 * *(v18 + v163)) >> 15;
          v52 = *(a9 + 72);
          v54 = *(a9 + 48);
          v53 = *(a9 + 56);
          v55 = *(v53 + 4 * v51);
          if (v33 >= 0x80)
          {
            v56 = 128;
          }

          else
          {
            v56 = v33;
          }

          v165 = v56;
          v166 = *(a9 + 48);
          if (v33 >= 0x80)
          {
            *(v53 + 4 * v51) = v30;
          }

          v57 = 2 * (v54 & v30);
          v58 = v57 | 1;
          if (v30 != v55)
          {
            v139 = 0;
            v140 = 0;
            v141 = 64;
            do
            {
              if (v30 - v55 > v31 || v141 == 0)
              {
                break;
              }

              v143 = v55 & v16;
              if (v140 >= v139)
              {
                v144 = v139;
              }

              else
              {
                v144 = v140;
              }

              v145 = v50 + v144;
              v146 = v18 + v143;
              v147 = (v18 + v143 + v144);
              v148 = v33 - v144;
              if (v33 - v144 < 8)
              {
                v151 = 0;
LABEL_187:
                v156 = v148 & 7;
                if (v156)
                {
                  v157 = v151 | v156;
                  while (*(v145 + v151) == *v147)
                  {
                    ++v147;
                    ++v151;
                    if (!--v156)
                    {
                      v151 = v157;
                      break;
                    }
                  }
                }
              }

              else
              {
                v149 = 0;
                v150 = v148 >> 3;
                v151 = v148 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v152 = *&v147[v149];
                  v153 = *(v145 + v149);
                  if (v152 != v153)
                  {
                    break;
                  }

                  v149 += 8;
                  if (!--v150)
                  {
                    v147 += v148 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_187;
                  }
                }

                v151 = v149 + (__clz(__rbit64(v153 ^ v152)) >> 3);
              }

              v154 = v151 + v144;
              if (v39 && v154 > v40)
              {
                *v39 = v30 - v55;
                *(v39++ + 1) = 32 * v154;
                v40 = v154;
              }

              if (v154 >= v165)
              {
                if (v33 < 0x80)
                {
                  goto LABEL_52;
                }

                v158 = (v52 + 8 * (v55 & v166));
                *(v52 + 4 * v57) = *v158;
                v59 = v158[1];
                goto LABEL_51;
              }

              if (*(v50 + v154) <= *(v146 + v154))
              {
                if (v33 >= 0x80)
                {
                  *(v52 + 4 * v58) = v55;
                }

                v58 = 2 * (v55 & v166);
                v139 = v154;
                v155 = v58;
              }

              else
              {
                if (v33 >= 0x80)
                {
                  *(v52 + 4 * v57) = v55;
                }

                v57 = (2 * (v55 & v166)) | 1;
                v140 = v154;
                v155 = v57;
              }

              v55 = *(v52 + 4 * v155);
              --v141;
            }

            while (v30 != v55);
          }

          if (v33 >= 0x80)
          {
            v59 = *(a9 + 64);
            *(v52 + 4 * v57) = v59;
LABEL_51:
            *(v52 + 4 * v58) = v59;
          }
        }

LABEL_52:
        memset_pattern16(__b, &unk_29864E5A0, 0x98uLL);
        if (v40 + 1 > 4)
        {
          v60 = v40 + 1;
        }

        else
        {
          v60 = 4;
        }

        if (BrotliFindAllStaticDictionaryMatches((*v164 + 88), (v18 + v163), v60, v33, __b) && (v33 >= 0x25 ? (v61 = 37) : (v61 = v33), v60 <= v61))
        {
          v63 = v61 + 1;
          v64 = 32 * v60;
          v62 = *v164;
          do
          {
            v65 = __b[v60];
            if (v65 <= 0xFFFFFFE)
            {
              v66 = v162 + 1 + (v65 >> 5);
              if (v66 <= *(*v164 + 80))
              {
                v67 = v65 & 0x1F;
                if (v60 == v67)
                {
                  LODWORD(v67) = 0;
                }

                *v39 = v66;
                *(v39++ + 1) = v64 + v67;
              }
            }

            ++v60;
            v64 += 32;
          }

          while (v63 != v60);
        }

        else
        {
          v62 = *v164;
        }

        if (v39 == v178)
        {
          v69 = 0;
          v68 = *v171;
        }

        else
        {
          v68 = *v171;
          if (v161 >= *(v39 - 1) >> 5)
          {
            v69 = v39 - v178;
          }

          else
          {
            v178[0] = *(v39 - 1);
            v69 = 1;
          }
        }

        updated = UpdateNodes(v68, v172, v29, v18, v16, v62, v170, v168, v69, v178, v175, v173, a10);
        if (updated >= 0x4000)
        {
          v71 = updated;
        }

        else
        {
          v71 = 0;
        }

        if (v69 == 1)
        {
          v72 = HIDWORD(v178[0]) >> 5;
          if (v72 <= v71)
          {
            v72 = v71;
          }

          if (v161 < HIDWORD(v178[0]) >> 5)
          {
            v71 = v72;
          }
        }

        if (v71 < 2)
        {
          v27 = *v171;
        }

        else
        {
          v167 = v71;
          v73 = v25 + v172;
          if (v71 + v30 < v25 + v172)
          {
            v73 = v71 + v30;
          }

          v74 = v73 - 63;
          if (v30 + 64 > v73)
          {
            v74 = v30 + 1;
          }

          if (v30 + 513 <= v74)
          {
            v75 = v30 + 1;
            if (v30 + 1 < v74)
            {
              v76 = *(a9 + 48);
              v77 = *(a9 + 56);
              v78 = *(a9 + 72);
              do
              {
                v79 = (v18 + (v75 & v16));
                v80 = (506832829 * *v79) >> 15;
                v81 = *(v77 + 4 * v80);
                v82 = 2 * (v76 & v75);
                v83 = v82 | 1;
                *(v77 + 4 * v80) = v75;
                if (v75 != v81)
                {
                  v85 = 0;
                  v86 = 0;
                  v87 = 64;
                  do
                  {
                    if (v75 - v81 > v76 - 15 || v87 == 0)
                    {
                      break;
                    }

                    v89 = v81 & v16;
                    if (v86 >= v85)
                    {
                      v90 = v85;
                    }

                    else
                    {
                      v90 = v86;
                    }

                    v91 = v79 + v90;
                    v92 = v18 + v89;
                    v93 = (v18 + v89 + v90);
                    v94 = 128 - v90;
                    if (128 - v90 < 8)
                    {
                      v97 = 0;
LABEL_114:
                      v103 = v94 & 7;
                      if (v103)
                      {
                        v104 = v97 | v103;
                        while (v91[v97] == *v93)
                        {
                          ++v93;
                          ++v97;
                          if (!--v103)
                          {
                            v97 = v104;
                            break;
                          }
                        }
                      }
                    }

                    else
                    {
                      v95 = 0;
                      v96 = v94 >> 3;
                      v97 = v94 & 0xFFFFFFFFFFFFFFF8;
                      while (1)
                      {
                        v98 = *&v93[v95];
                        v99 = *&v91[v95];
                        if (v98 != v99)
                        {
                          break;
                        }

                        v95 += 8;
                        if (!--v96)
                        {
                          v93 += v94 & 0xFFFFFFFFFFFFFFF8;
                          goto LABEL_114;
                        }
                      }

                      v97 = v95 + (__clz(__rbit64(v99 ^ v98)) >> 3);
                    }

                    v100 = v97 + v90;
                    if (v100 >= 0x80)
                    {
                      v105 = (v78 + 8 * (v81 & v76));
                      *(v78 + 4 * v82) = *v105;
                      v84 = v105[1];
                      goto LABEL_91;
                    }

                    v101 = *(v92 + v100);
                    v102 = 2 * (v81 & v76);
                    if (*(v79 + v100) <= v101)
                    {
                      *(v78 + 4 * v83) = v81;
                      v83 = 2 * (v81 & v76);
                      v85 = v100;
                    }

                    else
                    {
                      *(v78 + 4 * v82) = v81;
                      v82 = v102 | 1;
                      v86 = v100;
                      v102 |= 1uLL;
                    }

                    v81 = *(v78 + 4 * v102);
                    --v87;
                  }

                  while (v75 != v81);
                }

                v84 = *(a9 + 64);
                *(v78 + 4 * v82) = v84;
LABEL_91:
                *(v78 + 4 * v83) = v84;
                v75 += 8;
              }

              while (v75 < v74);
            }
          }

          if (v74 < v73)
          {
            v106 = *(a9 + 48);
            v107 = *(a9 + 56);
            v108 = *(a9 + 72);
            do
            {
              v109 = (v18 + (v74 & v16));
              v110 = (506832829 * *v109) >> 15;
              v111 = *(v107 + 4 * v110);
              v112 = 2 * (v106 & v74);
              v113 = v112 | 1;
              *(v107 + 4 * v110) = v74;
              if (v74 != v111)
              {
                v115 = 0;
                v116 = 0;
                v117 = 64;
                do
                {
                  if (v74 - v111 > v106 - 15 || v117 == 0)
                  {
                    break;
                  }

                  v119 = v111 & v16;
                  if (v116 >= v115)
                  {
                    v120 = v115;
                  }

                  else
                  {
                    v120 = v116;
                  }

                  v121 = v109 + v120;
                  v122 = v18 + v119;
                  v123 = (v18 + v119 + v120);
                  v124 = 128 - v120;
                  if (128 - v120 < 8)
                  {
                    v127 = 0;
LABEL_148:
                    v133 = v124 & 7;
                    if (v133)
                    {
                      v134 = v127 | v133;
                      while (v121[v127] == *v123)
                      {
                        ++v123;
                        ++v127;
                        if (!--v133)
                        {
                          v127 = v134;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v125 = 0;
                    v126 = v124 >> 3;
                    v127 = v124 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v128 = *&v123[v125];
                      v129 = *&v121[v125];
                      if (v128 != v129)
                      {
                        break;
                      }

                      v125 += 8;
                      if (!--v126)
                      {
                        v123 += v124 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_148;
                      }
                    }

                    v127 = v125 + (__clz(__rbit64(v129 ^ v128)) >> 3);
                  }

                  v130 = v127 + v120;
                  if (v130 >= 0x80)
                  {
                    v135 = (v108 + 8 * (v111 & v106));
                    *(v108 + 4 * v112) = *v135;
                    v114 = v135[1];
                    goto LABEL_125;
                  }

                  v131 = *(v122 + v130);
                  v132 = 2 * (v111 & v106);
                  if (*(v109 + v130) <= v131)
                  {
                    *(v108 + 4 * v113) = v111;
                    v113 = 2 * (v111 & v106);
                    v115 = v130;
                  }

                  else
                  {
                    *(v108 + 4 * v112) = v111;
                    v112 = v132 | 1;
                    v116 = v130;
                    v132 |= 1uLL;
                  }

                  v111 = *(v108 + 4 * v132);
                  --v117;
                }

                while (v74 != v111);
              }

              v114 = *(a9 + 64);
              *(v108 + 4 * v112) = v114;
LABEL_125:
              *(v108 + 4 * v113) = v114;
              ++v74;
            }

            while (v74 < v73);
          }

          v136 = v167 - 1;
          v137 = v29 + 4;
          v27 = *v171;
          do
          {
            v29 = v137 - 3;
            if (v137 >= v27)
            {
              break;
            }

            EvaluateNode((v169 + v172), v137 - 3, v170, v168, v175, v173, a10);
            v27 = *v171;
            ++v137;
            --v136;
          }

          while (v136);
        }

        v14 = *v164;
        v28 = v169;
        v138 = v29 + 4;
        ++v29;
      }

      while (v138 < v27);
    }

    v159 = v27;
    BrotliFree(v160, v177);
    BrotliFree(v160, v176);
    return ComputeShortestPathFromNodes(v159, a10);
  }

  return result;
}

uint64_t InitZopfliCostModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 2848) = a4;
  if (a4 == -2)
  {
    v7 = 0;
  }

  else
  {
    v7 = BrotliAllocate(a1);
  }

  *(a2 + 2832) = v7;
  v8 = *(a3 + 12);
  if (v8)
  {
    result = BrotliAllocate(a1);
    v8 = *(a3 + 12);
  }

  else
  {
    result = 0;
  }

  *(a2 + 2816) = result;
  *(a2 + 2824) = v8;
  return result;
}

float ZopfliCostModelSetFromLiteralCosts(uint64_t a1)
{
  v2 = *(a1 + 2832);
  v3 = *(a1 + 2816);
  v4 = *(a1 + 2848);
  v5 = (v2 + 1);
  BrotliEstimateBitCostsForLiterals();
  *v2 = 0;
  if (v4)
  {
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = v7 + *v5;
      v9 = v6 + v8;
      *v5++ = v6 + v8;
      v7 = v8 - ((v6 + v8) - v6);
      v6 = v9;
      --v4;
    }

    while (v4);
  }

  for (i = 0; i != 704; ++i)
  {
    if (i > 0xF4)
    {
      v11 = log2((i + 11));
    }

    else
    {
      v11 = kBrotliLog2Table[i + 11];
    }

    v12 = v11;
    *(a1 + 4 * i) = v12;
  }

  v13 = *(a1 + 2824);
  if (v13)
  {
    v14 = 20;
    do
    {
      if (v14 > 0xFFuLL)
      {
        v15 = log2(v14);
      }

      else
      {
        v15 = kBrotliLog2Table[v14];
      }

      v16 = v15;
      *v3++ = v16;
      ++v14;
      --v13;
    }

    while (v13);
  }

  result = 3.45943165;
  *(a1 + 2840) = 3.45943165;
  return result;
}

unint64_t UpdateNodes(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *__src, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a3;
  v16 = *(a6 + 16);
  v17 = a3 + a2;
  v106 = (a3 + a2) & a5;
  if (v16 + a3 + a2 >= a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = v16 + a3 + a2;
  }

  v107 = a1 - a3;
  v100 = *(a6 + 4);
  if (v100 <= 10)
  {
    v19 = 150;
  }

  else
  {
    v19 = 325;
  }

  EvaluateNode((v16 + a2), a3, a7, __src, a11, a12, a13);
  v20 = a13 + 16 * v15;
  if (v15 + 2 <= a1)
  {
    v22 = a4;
    v23 = a12;
    v24 = a12 + 32 * (-*(a12 + 256) & 7);
    v25 = (*(v24 + 28) + *(a11 + 2840)) + (*(*(a11 + 2832) + 4 * v15) - *(*(a11 + 2832) + 4 * *v24));
    v26 = (v20 + 44);
    v21 = 2;
    v27 = 4;
    v28 = 10;
    do
    {
      if (*v26 > v25)
      {
        break;
      }

      if (++v21 == v28)
      {
        v25 = v25 + 1.0;
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      v27 <<= v21 == v28;
      v28 += v29;
      v26 += 4;
    }

    while (v15 + v21 <= a1);
  }

  else
  {
    v21 = 2;
    v22 = a4;
    v23 = a12;
  }

  result = 0;
  v31 = 0;
  v32 = v21 - 1;
  if (v18 >= v17)
  {
    v33 = v17;
  }

  else
  {
    v33 = v18;
  }

  v103 = v33;
  v98 = (v22 + v106);
  v96 = v22 + v106 + (v107 & 0xFFFFFFFFFFFFFFF8);
  v97 = v20 + 28;
  v105 = v20 + 12;
  v99 = v15;
  while (1)
  {
    v34 = *(v23 + 256);
    v35 = 8;
    if (v34 < 8)
    {
      v35 = *(v23 + 256);
    }

    if (v31 >= v35)
    {
      return result;
    }

    v36 = v23 + 32 * ((v31 - v34) & 7);
    v37 = v15 - *v36;
    v102 = v31;
    if (v37 > 5)
    {
      if (v37 > 0x81)
      {
        if (v37 < 0x5842)
        {
          v40 = 22;
        }

        else
        {
          v40 = 23;
        }

        if (v37 >> 1 >= 0xC21)
        {
          v41 = v40;
        }

        else
        {
          v41 = 21;
        }

        v42 = (__clz(v37 - 66) ^ 0x1F) + 10;
        if (v37 <= 0x841)
        {
          LOWORD(v38) = v42;
        }

        else
        {
          LOWORD(v38) = v41;
        }
      }

      else
      {
        v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
        LODWORD(v38) = ((v37 - 2) >> v39) + 2 * v39 + 2;
      }
    }

    else
    {
      v38 = v15 - *v36;
    }

    v43 = (*(v36 + 24) + kBrotliInsExtra[v38]) + (*(*(a11 + 2832) + 4 * v15) - **(a11 + 2832));
    if (v32 < v107)
    {
      v44 = 0;
      v45 = v36 + 8;
      while (1)
      {
        if (v32 + v106 > a5)
        {
          goto LABEL_92;
        }

        v46 = kDistanceCacheOffset[v44] + *(v45 + 4 * kDistanceCacheIndex[v44]);
        v47 = v17 - v46;
        v48 = v103 < v46 || v47 >= v17;
        v49 = v47 & a5;
        v50 = v49 + v32;
        v51 = v48 || v50 > a5;
        if (!v51 && *(a4 + v32 + v106) == *(a4 + v50))
        {
          v52 = a4 + v49;
          if (v107 < 8)
          {
            v57 = 0;
            v58 = v98;
LABEL_87:
            v73 = v107 & 7;
            if ((v107 & 7) != 0)
            {
              v74 = v107 & 7 | v57;
              while (*(v52 + v57) == *v58)
              {
                ++v58;
                ++v57;
                if (!--v73)
                {
                  v57 = v74;
                  break;
                }
              }
            }
          }

          else
          {
            v53 = 0;
            v54 = v107 >> 3;
            while (1)
            {
              v55 = *&v98[v53];
              v56 = *(v52 + v53);
              if (v55 != v56)
              {
                break;
              }

              v53 += 8;
              if (!--v54)
              {
                v58 = v96;
                v57 = v107 & 0xFFFFFFFFFFFFFFF8;
                goto LABEL_87;
              }
            }

            v57 = v53 + (__clz(__rbit64(v56 ^ v55)) >> 3);
          }

          if (v32 + 1 <= v57)
          {
            break;
          }
        }

LABEL_46:
        if (v44 <= 0xE)
        {
          ++v44;
          if (v32 < v107)
          {
            continue;
          }
        }

        goto LABEL_92;
      }

      v59 = v43 + *(*(a11 + 2816) + 4 * v44);
      v61 = v38 < 8u && v44 == 0;
      v62 = (v97 + 16 * v32);
      v63 = !v61;
      v64 = v32;
      while (2)
      {
        v65 = v64 + 1;
        if (v64 + 1 <= 9)
        {
          LOWORD(v66) = v64 - 1;
          goto LABEL_70;
        }

        if (v65 <= 0x85)
        {
          v67 = (__clz(v64 - 5) ^ 0x1F) - 1;
          v66 = ((v64 - 5) >> v67) + 2 * v67 + 4;
          goto LABEL_70;
        }

        if (v65 > 0x845)
        {
          LOWORD(v66) = 23;
          v68 = (8 * (v38 & 7)) | 7;
        }

        else
        {
          v66 = (__clz(v64 - 69) ^ 0x1F) + 12;
LABEL_70:
          v68 = v66 & 7 | (8 * (v38 & 7));
          if (v66 > 0xFu)
          {
            v69 = 1;
          }

          else
          {
            v69 = v63;
          }

          if ((v69 & 1) == 0)
          {
            if ((v66 & 0xFFF8) != 0)
            {
              LOWORD(v68) = v68 | 0x40;
            }

LABEL_78:
            if ((v68 & 0xFF80) != 0)
            {
              v70 = v59;
            }

            else
            {
              v70 = v43;
            }

            v71 = *(a11 + 4 * v68) + (v70 + kBrotliCopyExtra[v66]);
            if (v71 < *v62)
            {
              *(v62 - 3) = (v64 + 1) | 0x12000000;
              *(v62 - 2) = v46;
              *(v62 - 1) = ((v44 << 27) + 0x8000000) | v37;
              *v62 = v71;
              if (result <= v65)
              {
                result = v64 + 1;
              }
            }

            v32 = v64 + 1;
            v72 = v64 + 2;
            v62 += 4;
            ++v64;
            if (v72 > v57)
            {
              goto LABEL_46;
            }

            continue;
          }
        }

        break;
      }

      v68 = ((((0x520D40u >> (2 * (3 * (v38 >> 3) + ((v66 & 0xFFF8) >> 3)))) & 0xC0) + ((3 * (v38 >> 3) + ((v66 & 0xFFF8) >> 3)) << 6)) | v68) + 64;
      goto LABEL_78;
    }

LABEL_92:
    if (v102 <= 1 && a9)
    {
      v75 = 0;
      v76 = v21;
      do
      {
        v77 = *(a10 + 8 * v75);
        v78 = v77 + 15;
        v79 = *(a6 + 68);
        v80 = v79 + 16;
        if (v79 + 16 <= v78)
        {
          v81 = *(a6 + 64);
          v82 = v77 + ~v79 + (4 << v81);
          v83 = __clz(v82);
          v78 = ((v82 & ~(-1 << v81)) + v80 + ((((v82 >> ((v83 ^ 0x1F) - 1)) & 1 | (2 * ((v83 ^ 0x1F) - 1 - v81))) - 2) << v81)) | (((v83 ^ 0x1F) - 1 - v81) << 10);
        }

        v84 = v77 >> 37;
        if ((v77 >> 37 > v19 || v18 < v77) && v76 < v84)
        {
          v76 = v77 >> 37;
        }

        if (v76 <= v77 >> 37)
        {
          v87 = *(*(a11 + 2816) + 4 * (v78 & 0x3FF)) + (v43 + (v78 >> 10));
          if ((v77 & 0x1F00000000) != 0)
          {
            v88 = HIDWORD(v77) & 0x1F;
          }

          else
          {
            v88 = v77 >> 37;
          }

          v89 = v84 + 1;
          v90 = (v105 + 16 * v76);
          v91 = (v76 << 25) + 301989888;
          do
          {
            if (v18 >= v77)
            {
              v92 = v76;
            }

            else
            {
              v92 = v88;
            }

            if (v92 > 9)
            {
              v93 = (__clz(v92 - 70) ^ 0x1F) + 12;
              if (v92 > 0x845)
              {
                LOWORD(v93) = 23;
              }

              v94 = (__clz(v92 - 6) ^ 0x1F) - 1;
              if (v92 <= 0x85)
              {
                LOWORD(v93) = ((v92 - 6) >> v94) + 2 * v94 + 4;
              }
            }

            else
            {
              LOWORD(v93) = v92 - 2;
            }

            v95 = *(a11 + 4 * (((((0x520D40u >> (2 * (3 * (v38 >> 3) + ((v93 & 0xFFF8) >> 3)))) & 0xC0) + ((3 * (v38 >> 3) + ((v93 & 0xFFF8) >> 3)) << 6)) | v93 & 7 | (8 * (v38 & 7))) + 64)) + (v87 + kBrotliCopyExtra[v93]);
            if (v95 < *v90)
            {
              *(v90 - 3) = (v91 - (v92 << 25)) | v76;
              *(v90 - 2) = v77;
              *(v90 - 1) = v37;
              *v90 = v95;
              if (result <= v76)
              {
                result = v76;
              }
            }

            ++v76;
            v90 += 4;
            v91 += 0x2000000;
          }

          while (v89 != v76);
          v76 = v89;
        }

        ++v75;
      }

      while (v75 != a9);
    }

    if (v100 >= 11)
    {
      v31 = v102 + 1;
      v32 = v21 - 1;
      v15 = v99;
      v23 = a12;
      if (v102 < 4)
      {
        continue;
      }
    }

    return result;
  }
}

void *EvaluateNode(void *result, unint64_t a2, unint64_t a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (a7 + 16 * a2);
  v9 = v8 + 3;
  v10 = *(v8 + 3);
  if (a2)
  {
    v11 = v8[1];
    v12 = *v8 & 0x1FFFFFF;
    v13 = v8[2];
    if (v11 > a3 || v11 + v12 > result + a2)
    {
      goto LABEL_10;
    }

    v15 = v11 + 15;
    if (v13 >> 27)
    {
      v15 = (v13 >> 27) - 1;
    }

    if (!v15)
    {
LABEL_10:
      v16 = *(a7 + 16 * (a2 - ((v13 & 0x7FFFFFF) + v12)) + 12);
    }

    else
    {
      v16 = a2;
    }
  }

  else
  {
    v16 = 0;
  }

  *v9 = v16;
  v17 = *(*(a5 + 2832) + 4 * a2) - **(a5 + 2832);
  if (v10 <= v17)
  {
    *&v37 = 0;
    v36 = a2;
    *(&v37 + 2) = v10 - v17;
    *(&v37 + 3) = v10;
    v18 = 0;
    if (!v16)
    {
      goto LABEL_17;
    }

    do
    {
      v19 = v18;
      v20 = (a7 + 16 * v16);
      v22 = v20[1];
      v21 = v20[2];
      v23 = *v20;
      v18 = v19 + 1;
      *(&v36 + v19 + 2) = v22;
      if (v19 > 2)
      {
        break;
      }

      v16 = *(a7 + 16 * (v16 - ((v23 & 0x1FFFFFF) + (v21 & 0x7FFFFFFu))) + 12);
    }

    while (v16);
    if (v19 <= 2)
    {
LABEL_17:
      result = memcpy(&v36 + 4 * v18 + 8, __src, 16 - 4 * v18);
    }

    v24 = *(a6 + 256);
    v25 = v24 + 1;
    *(a6 + 256) = v24 + 1;
    v26 = ~v24 & 7;
    if ((v24 + 1) < 8)
    {
      v27 = v24 + 1;
    }

    else
    {
      v27 = 8;
    }

    v28 = v37;
    v29 = (a6 + 32 * v26);
    *v29 = v36;
    v29[1] = v28;
    if (v25 >= 2)
    {
      v30 = v27 - 1;
      do
      {
        v31 = (a6 + 32 * (v26 & 7));
        v32 = (a6 + 32 * ((v26 + 1) & 7));
        if (v31[6] > v32[6])
        {
          v34 = *v31;
          v33 = *(v31 + 1);
          v35 = *(v32 + 1);
          *v31 = *v32;
          *(v31 + 1) = v35;
          *v32 = v34;
          *(v32 + 1) = v33;
        }

        LOBYTE(v26) = v26 + 1;
        --v30;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t ComputeShortestPathFromNodes(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 16 * a1);
  if ((v2[2] & 0x7FFFFFF) == 0)
  {
    do
    {
      if (*v2 != 1)
      {
        break;
      }

      --a1;
      v3 = *(v2 - 2);
      v2 -= 4;
    }

    while ((v3 & 0x7FFFFFF) == 0);
  }

  v2[3] = -1;
  for (i = 0; a1; *(a2 + 16 * a1 + 12) = v5)
  {
    v5 = (*(a2 + 16 * a1 + 8) & 0x7FFFFFF) + (*(a2 + 16 * a1) & 0x1FFFFFFu);
    ++i;
    a1 -= v5;
  }

  return i;
}

uint64_t BrotliCreateZopfliBackwardReferences(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13)
{
  v18 = result;
  v19 = a2 + 1;
  if (a2 == -1)
  {
    if (*(result + 24))
    {
      return result;
    }

    v20 = 0;
  }

  else
  {
    result = BrotliAllocate(result);
    if (*(v18 + 24))
    {
      return result;
    }

    v20 = result;
    v21 = result + 12;
    do
    {
      *(v21 - 12) = 1;
      *(v21 - 4) = 0x7EFFC99E00000000;
      v21 += 16;
      --v19;
    }

    while (v19);
  }

  result = BrotliZopfliComputeShortestPath(v18, a2, a3, a4, a5, a6, a7, a9, a8, v20);
  *a12 += result;
  if (!*(v18 + 24))
  {
    BrotliZopfliCreateCommands(a2, a3, v20, a9, a10, a7, a11, a13);

    return BrotliFree(v18, v20);
  }

  return result;
}

void BrotliCreateHqZopfliBackwardReferences(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10, uint64_t a11, uint64_t *a12, void *a13)
{
  v13 = MEMORY[0x2A1C7C4A8]();
  v233 = v16;
  v237 = v17;
  v19 = v18;
  v240 = v20;
  v21 = v14;
  v22 = v13;
  v285 = *MEMORY[0x29EDCA608];
  v225 = v13;
  v238 = v15;
  v239 = v19;
  v241 = v14;
  if (!v14)
  {
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    v258 = 0u;
    v259 = 0u;
    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    v223 = (v13 + 24);
    if (*(v13 + 24))
    {
      return;
    }

    v222 = 0;
    v235 = 0;
    __src = 0;
    goto LABEL_201;
  }

  v221 = *(v15 + 16);
  v23 = *(v15 + 8);
  v24 = 4 * v14;
  v25 = BrotliAllocate(v13);
  v26 = v24;
  v21 = v241;
  v235 = v25;
  v272 = 0u;
  v273 = 0u;
  if (v241 >= 0x7F)
  {
    v27 = v241 - 127;
  }

  else
  {
    v27 = 0;
  }

  v270 = 0uLL;
  v271 = 0uLL;
  v268 = 0uLL;
  v269 = 0uLL;
  v266 = 0uLL;
  v267 = 0uLL;
  v264 = 0uLL;
  v265 = 0uLL;
  v262 = 0uLL;
  v263 = 0uLL;
  v260 = 0uLL;
  v261 = 0uLL;
  v258 = 0uLL;
  v259 = 0uLL;
  v256 = 0uLL;
  v257 = 0uLL;
  v254 = 0uLL;
  v255 = 0uLL;
  v252 = 0uLL;
  v253 = 0uLL;
  v250 = 0uLL;
  v251 = 0uLL;
  v248 = 0uLL;
  v249 = 0uLL;
  v246 = 0uLL;
  v247 = 0uLL;
  v244 = 0uLL;
  v245 = 0uLL;
  v242 = 0uLL;
  v243 = 0uLL;
  if (v26)
  {
    v28 = v26;
    v29 = BrotliAllocate(v22);
    v26 = v28;
    v21 = v241;
    __src = v29;
  }

  else
  {
    __src = 0;
  }

  v223 = (v22 + 24);
  v30 = v237;
  v15 = v238;
  if (*(v22 + 24))
  {
    return;
  }

  if (v21 < 4)
  {
    v222 = 0;
LABEL_201:
    v164 = a12;
    v163 = a13;
    v165 = a10;
    v220 = *a13;
    v166 = *a10;
    v279 = *a9;
    v226 = v166;
    v228 = *a12;
    v167 = v21 + 1;
    if (v21 == -1)
    {
      v168 = 0;
    }

    else
    {
      v169 = BrotliAllocate(v225);
      v21 = v241;
      v15 = v238;
      v168 = v169;
    }

    if (!*v223)
    {
      InitZopfliCostModel(v225, &v242, v15 + 64, v21);
      if (!*(v225 + 24))
      {
        v170 = a11;
        v171 = 1;
        v224 = v167;
        do
        {
          v172 = v171;
          if (v167)
          {
            v173 = v168 + 3;
            v174 = v167;
            do
            {
              *(v173 - 3) = 1;
              *(v173 - 1) = 0x7EFFC99E00000000;
              v173 += 4;
              --v174;
            }

            while (v174);
          }

          v230 = v172;
          if (v172)
          {
            ZopfliCostModelSetFromLiteralCosts(&v242);
            v175 = v237;
            v176 = v238;
          }

          else
          {
            v177 = *v164;
            bzero(v284, 0x400uLL);
            bzero(v282, 0xB00uLL);
            bzero(v281, 0x880uLL);
            if (v177 != v228)
            {
              v178 = 0;
              v179 = v240 - v226;
              do
              {
                v180 = (v170 + 16 * v178);
                v181 = *v180;
                v182 = v180[1];
                v183 = *(v180 + 7);
                v184 = *(v180 + 6);
                ++*(v282 + v184);
                if (v184 >= 0x80)
                {
                  ++v281[v183 & 0x3FF];
                }

                if (v181)
                {
                  v185 = v179;
                  v186 = v181;
                  do
                  {
                    ++v284[*(v19 + (v185++ & v237))];
                    --v186;
                  }

                  while (v186);
                }

                v179 += v181 + (v182 & 0x1FFFFFF);
                ++v178;
              }

              while (v178 != v177 - v228);
            }

            SetCost(v284, 256, 1, v280);
            SetCost(v282, 704, 0, &v242);
            SetCost(v281, v275, 0, v274);
            v187 = 0;
            v188 = 1.7e38;
            do
            {
              if (v188 >= *(&v242 + v187))
              {
                v188 = *(&v242 + v187);
              }

              v187 += 4;
            }

            while (v187 != 2816);
            v277 = v188;
            v189 = v276;
            v190 = v278;
            *v276 = 0;
            v175 = v237;
            v176 = v238;
            if (v190)
            {
              v191 = (v189 + 1);
              v192 = 0.0;
              v193 = v240;
              v194 = 0.0;
              do
              {
                v195 = v194 + v280[*(v19 + (v193 & v237))];
                v196 = v192 + v195;
                *v191++ = v192 + v195;
                v194 = v195 - ((v192 + v195) - v192);
                ++v193;
                v192 = v196;
                --v190;
              }

              while (v190);
            }
          }

          *v164 = v228;
          *v163 = v220;
          *v165 = v226;
          *a9 = v279;
          v197 = *(v176 + 16);
          v198 = *(v176 + 8);
          v199 = 325;
          if (*(v176 + 4) < 11)
          {
            v199 = 150;
          }

          v234 = v199;
          *v168 = 0;
          v168[3] = 0;
          v283 = 0;
          v200 = v241;
          if (v222)
          {
            v201 = 0;
            v202 = 0;
            v203 = (1 << v198) - 16;
            memset(v282, 0, sizeof(v282));
            do
            {
              updated = UpdateNodes(v200, v240, v201, v239, v175, v176, v203, a9, *(v235 + 4 * v201), &__src[2 * v202], &v242, v282, v168);
              if (updated >= 0x4000)
              {
                v205 = updated;
              }

              else
              {
                v205 = 0;
              }

              v206 = *(v235 + 4 * v201);
              v202 += v206;
              if (v206 == 1)
              {
                v207 = __src[2 * v202 - 1];
                v208 = v207 >> 5;
                if (v207 >> 5 <= v205)
                {
                  v208 = v205;
                }

                if (v234 < v207 >> 5)
                {
                  v205 = v208;
                }
              }

              if (v205 >= 2)
              {
                v209 = v205 - 1;
                v210 = v201 + 4;
                v211 = (v235 + 4 + 4 * v201);
                v200 = v241;
                do
                {
                  v201 = v210 - 3;
                  if (v210 >= v200)
                  {
                    break;
                  }

                  EvaluateNode((v197 + v240), v210 - 3, v203, a9, &v242, v282, v168);
                  v200 = v241;
                  v212 = *v211++;
                  v202 += v212;
                  ++v210;
                  --v209;
                }

                while (v209);
              }

              else
              {
                v200 = v241;
              }

              v213 = v201 + 4;
              ++v201;
              v175 = v237;
              v176 = v238;
            }

            while (v213 < v200);
          }

          v214 = v176;
          v215 = v200;
          v165 = a10;
          v164 = a12;
          *a12 += ComputeShortestPathFromNodes(v200, v168);
          v216 = v215;
          v170 = a11;
          v163 = a13;
          BrotliZopfliCreateCommands(v216, v240, v168, a9, a10, v214, a11, a13);
          v171 = 0;
          v19 = v239;
          v167 = v224;
        }

        while ((v230 & 1) != 0);
        BrotliFree(v225, v276);
        v276 = 0;
        BrotliFree(v225, v274);
        v274 = 0;
        BrotliFree(v225, v168);
        BrotliFree(v225, __src);
        BrotliFree(v225, v235);
      }
    }

    return;
  }

  v232 = 0;
  v31 = 0;
  v217 = v27 + v240;
  v218 = (1 << v23) - 16;
  while (1)
  {
    v32 = v31 + v240;
    if (v31 + v240 >= v218)
    {
      v33 = v218;
    }

    else
    {
      v33 = v31 + v240;
    }

    if (v32 + v221 >= v218)
    {
      v34 = v218;
    }

    else
    {
      v34 = v32 + v221;
    }

    if (v26 < v232 + 128)
    {
      v35 = v31;
      v36 = v26;
      if (!v26)
      {
        v26 = v232 + 128;
      }

      do
      {
        v37 = v26;
        v26 *= 2;
      }

      while (v37 < v232 + 128);
      v38 = BrotliAllocate(v225);
      v39 = v38;
      if (*(v225 + 24))
      {
        v40 = 1;
      }

      else
      {
        v40 = v36 == 0;
      }

      if (!v40)
      {
        memcpy(v38, __src, 8 * v36);
      }

      BrotliFree(v225, __src);
      __src = v39;
      v26 = v37;
      v30 = v237;
      v15 = v238;
      v21 = v241;
      v31 = v35;
    }

    if (*v223)
    {
      break;
    }

    v219 = v34;
    v227 = v26;
    v229 = v31;
    v41 = v21 - v31;
    v42 = 16;
    if (*(v15 + 4) == 11)
    {
      v42 = 64;
    }

    v84 = v32 >= v42;
    v43 = v32 - v42;
    if (!v84)
    {
      v43 = 0;
    }

    v44 = v32 - 1;
    v231 = v32 & v30;
    if (v32 - 1 <= v43)
    {
      v46 = &__src[2 * v232];
      v47 = 1;
    }

    else
    {
      v45 = (v19 + (v32 & v30));
      v46 = &__src[2 * v232];
      v47 = 1;
      do
      {
        if (v32 - v44 > v33)
        {
          break;
        }

        v48 = (v239 + (v44 & v30));
        if (*v45 == *v48 && v45[1] == v48[1])
        {
          if (v41 < 8)
          {
            v53 = 0;
            v54 = v45;
LABEL_51:
            if ((v41 & 7) != 0)
            {
              v55 = v41 & 7 | v53;
              v56 = v41 & 7;
              while (v48[v53] == *v54)
              {
                ++v54;
                ++v53;
                if (!--v56)
                {
                  v53 = v55;
                  break;
                }
              }
            }
          }

          else
          {
            v49 = 0;
            v50 = v41 >> 3;
            while (1)
            {
              v51 = *&v45[v49];
              v52 = *&v48[v49];
              if (v51 != v52)
              {
                break;
              }

              v49 += 8;
              if (!--v50)
              {
                v53 = v41 & 0xFFFFFFFFFFFFFFF8;
                v54 = &v45[v41 & 0xFFFFFFFFFFFFFFF8];
                goto LABEL_51;
              }
            }

            v53 = v49 + (__clz(__rbit64(v52 ^ v51)) >> 3);
          }

          if (v53 > v47)
          {
            *v46 = v32 - v44;
            *(v46 + 1) = 32 * v53;
            v46 += 8;
            v47 = v53;
          }
        }

        if (--v44 <= v43)
        {
          break;
        }
      }

      while (v47 < 3);
    }

    if (v47 < v41)
    {
      v57 = v239 + v231;
      v58 = (506832829 * *(v239 + v231)) >> 15;
      v59 = *(v233 + 72);
      v61 = *(v233 + 48);
      v60 = *(v233 + 56);
      v62 = *(v60 + 4 * v58);
      if (v41 >= 0x80)
      {
        v63 = 128;
      }

      else
      {
        v63 = v41;
      }

      if (v41 >= 0x80)
      {
        *(v60 + 4 * v58) = v32;
      }

      v64 = 2 * (v61 & v32);
      v65 = v64 | 1;
      if (v32 != v62)
      {
        v115 = 0;
        v116 = 0;
        v117 = 64;
        do
        {
          if (v32 - v62 > v33 || v117 == 0)
          {
            break;
          }

          if (v116 >= v115)
          {
            v119 = v115;
          }

          else
          {
            v119 = v116;
          }

          v120 = v57 + v119;
          v121 = v239 + (v62 & v30);
          v122 = (v121 + v119);
          v123 = v41 - v119;
          if (v41 - v119 < 8)
          {
            v126 = 0;
LABEL_162:
            v131 = v123 & 7;
            if (v131)
            {
              v132 = v126 | v131;
              while (*(v120 + v126) == *v122)
              {
                ++v122;
                ++v126;
                if (!--v131)
                {
                  v126 = v132;
                  break;
                }
              }
            }
          }

          else
          {
            v124 = 0;
            v125 = v123 >> 3;
            v126 = v123 & 0xFFFFFFFFFFFFFFF8;
            while (1)
            {
              v127 = *&v122[v124];
              v128 = *(v120 + v124);
              if (v127 != v128)
              {
                break;
              }

              v124 += 8;
              if (!--v125)
              {
                v122 += v123 & 0xFFFFFFFFFFFFFFF8;
                goto LABEL_162;
              }
            }

            v126 = v124 + (__clz(__rbit64(v128 ^ v127)) >> 3);
          }

          v129 = v126 + v119;
          if (v46 && v129 > v47)
          {
            *v46 = v32 - v62;
            *(v46 + 1) = 32 * v129;
            v46 += 8;
            v47 = v129;
          }

          if (v129 >= v63)
          {
            if (v41 < 0x80)
            {
              goto LABEL_67;
            }

            v162 = (v59 + 8 * (v62 & v61));
            *(v59 + 4 * v64) = *v162;
            v66 = v162[1];
            goto LABEL_66;
          }

          if (*(v57 + v129) <= *(v121 + v129))
          {
            if (v41 >= 0x80)
            {
              *(v59 + 4 * v65) = v62;
            }

            v65 = 2 * (v62 & v61);
            v115 = v129;
            v130 = v65;
          }

          else
          {
            if (v41 >= 0x80)
            {
              *(v59 + 4 * v64) = v62;
            }

            v64 = (2 * (v62 & v61)) | 1;
            v116 = v129;
            v130 = v64;
          }

          v62 = *(v59 + 4 * v130);
          --v117;
        }

        while (v32 != v62);
      }

      if (v41 >= 0x80)
      {
        v66 = *(v233 + 64);
        *(v59 + 4 * v64) = v66;
LABEL_66:
        *(v59 + 4 * v65) = v66;
      }
    }

LABEL_67:
    memset_pattern16(v282, &unk_29864E5A0, 0x98uLL);
    if (v47 + 1 > 4)
    {
      v67 = v47 + 1;
    }

    else
    {
      v67 = 4;
    }

    if (BrotliFindAllStaticDictionaryMatches((v238 + 88), (v239 + v231), v67, v41, v282))
    {
      if (v41 >= 0x25)
      {
        v68 = 37;
      }

      else
      {
        v68 = v41;
      }

      v69 = v229;
      v70 = &__src[2 * v232];
      if (v67 <= v68)
      {
        v71 = v68 + 1;
        v72 = 32 * v67;
        v30 = v237;
        v15 = v238;
        do
        {
          v73 = *(v282 + v67);
          if (v73 <= 0xFFFFFFE)
          {
            v74 = v219 + 1 + (v73 >> 5);
            if (v74 <= *(v238 + 80))
            {
              v75 = v73 & 0x1F;
              if (v67 == v75)
              {
                LODWORD(v75) = 0;
              }

              *v46 = v74;
              *(v46 + 1) = v72 + v75;
              v46 += 8;
            }
          }

          ++v67;
          v72 += 32;
        }

        while (v71 != v67);
      }

      else
      {
        v30 = v237;
        v15 = v238;
      }
    }

    else
    {
      v30 = v237;
      v15 = v238;
      v69 = v229;
      v70 = &__src[2 * v232];
    }

    v76 = (v46 - v70) >> 3;
    v77 = (v235 + 4 * v69);
    *v77 = v76;
    if (v46 == v70)
    {
      v19 = v239;
    }

    else
    {
      v78 = v76 + v232;
      v79 = &__src[2 * v76 + 2 * v232];
      v80 = *(v79 - 1);
      v19 = v239;
      if (v80 >> 6 < 0xA3)
      {
        v232 = v78;
      }

      else
      {
        *v70 = *(v79 - 1);
        *v77 = 1;
        v81 = v32 + 1;
        v82 = v32 + (v80 >> 5);
        if (v82 >= v217)
        {
          v82 = v217;
        }

        if (v32 + 64 > v82)
        {
          v83 = v32 + 1;
        }

        else
        {
          v83 = v82 - 63;
        }

        v84 = v32 + 513 > v83 || v81 >= v83;
        if (!v84)
        {
          v133 = *(v233 + 48);
          v134 = *(v233 + 56);
          v135 = *(v233 + 72);
          do
          {
            v136 = (v19 + (v81 & v30));
            v137 = (506832829 * *v136) >> 15;
            v138 = *(v134 + 4 * v137);
            v139 = 2 * (v133 & v81);
            v140 = v139 | 1;
            *(v134 + 4 * v137) = v81;
            if (v81 != v138)
            {
              v142 = 0;
              v143 = 0;
              v144 = 64;
              do
              {
                if (v81 - v138 > v133 - 15 || v144 == 0)
                {
                  break;
                }

                if (v143 >= v142)
                {
                  v146 = v142;
                }

                else
                {
                  v146 = v143;
                }

                v147 = v136 + v146;
                v148 = v19 + (v138 & v30);
                v149 = (v148 + v146);
                v150 = 128 - v146;
                if (128 - v146 < 8)
                {
                  v153 = 0;
LABEL_192:
                  v159 = v150 & 7;
                  if (v159)
                  {
                    v160 = v153 | v159;
                    while (v147[v153] == *v149)
                    {
                      ++v149;
                      ++v153;
                      if (!--v159)
                      {
                        v153 = v160;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v151 = 0;
                  v152 = v150 >> 3;
                  v153 = v150 & 0xFFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    v154 = *&v149[v151];
                    v155 = *&v147[v151];
                    if (v154 != v155)
                    {
                      break;
                    }

                    v151 += 8;
                    if (!--v152)
                    {
                      v149 += v150 & 0xFFFFFFFFFFFFFFF8;
                      v19 = v239;
                      goto LABEL_192;
                    }
                  }

                  v153 = v151 + (__clz(__rbit64(v155 ^ v154)) >> 3);
                  v19 = v239;
                }

                v156 = v153 + v146;
                if (v156 >= 0x80)
                {
                  v161 = (v135 + 8 * (v138 & v133));
                  *(v135 + 4 * v139) = *v161;
                  v141 = v161[1];
                  goto LABEL_169;
                }

                v157 = *(v148 + v156);
                v158 = 2 * (v138 & v133);
                if (*(v136 + v156) <= v157)
                {
                  *(v135 + 4 * v140) = v138;
                  v140 = 2 * (v138 & v133);
                  v142 = v156;
                }

                else
                {
                  *(v135 + 4 * v139) = v138;
                  v139 = v158 | 1;
                  v143 = v156;
                  v158 |= 1uLL;
                }

                v138 = *(v135 + 4 * v158);
                --v144;
              }

              while (v81 != v138);
            }

            v141 = *(v233 + 64);
            *(v135 + 4 * v139) = v141;
LABEL_169:
            *(v135 + 4 * v140) = v141;
            v81 += 8;
          }

          while (v81 < v83);
        }

        if (v83 < v82)
        {
          v85 = *(v233 + 48);
          v86 = *(v233 + 56);
          v87 = *(v233 + 72);
          do
          {
            v88 = (v19 + (v83 & v30));
            v89 = (506832829 * *v88) >> 15;
            v90 = *(v86 + 4 * v89);
            v91 = 2 * (v85 & v83);
            v92 = v91 | 1;
            *(v86 + 4 * v89) = v83;
            if (v83 != v90)
            {
              v94 = 0;
              v95 = 0;
              v96 = 64;
              do
              {
                if (v83 - v90 > v85 - 15 || v96 == 0)
                {
                  break;
                }

                if (v95 >= v94)
                {
                  v98 = v94;
                }

                else
                {
                  v98 = v95;
                }

                v99 = v88 + v98;
                v100 = v19 + (v90 & v30);
                v101 = (v100 + v98);
                v102 = 128 - v98;
                if (128 - v98 < 8)
                {
                  v105 = 0;
LABEL_123:
                  v111 = v102 & 7;
                  if (v111)
                  {
                    v112 = v105 | v111;
                    while (v99[v105] == *v101)
                    {
                      ++v101;
                      ++v105;
                      if (!--v111)
                      {
                        v105 = v112;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v103 = 0;
                  v104 = v102 >> 3;
                  v105 = v102 & 0xFFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    v106 = *&v101[v103];
                    v107 = *&v99[v103];
                    if (v106 != v107)
                    {
                      break;
                    }

                    v103 += 8;
                    if (!--v104)
                    {
                      v101 += v102 & 0xFFFFFFFFFFFFFFF8;
                      goto LABEL_123;
                    }
                  }

                  v105 = v103 + (__clz(__rbit64(v107 ^ v106)) >> 3);
                }

                v108 = v105 + v98;
                if (v108 >= 0x80)
                {
                  v113 = (v87 + 8 * (v90 & v85));
                  *(v87 + 4 * v91) = *v113;
                  v93 = v113[1];
                  goto LABEL_100;
                }

                v109 = *(v100 + v108);
                v110 = 2 * (v90 & v85);
                if (*(v88 + v108) <= v109)
                {
                  *(v87 + 4 * v92) = v90;
                  v92 = 2 * (v90 & v85);
                  v94 = v108;
                }

                else
                {
                  *(v87 + 4 * v91) = v90;
                  v91 = v110 | 1;
                  v95 = v108;
                  v110 |= 1uLL;
                }

                v90 = *(v87 + 4 * v110);
                --v96;
              }

              while (v83 != v90);
            }

            v93 = *(v233 + 64);
            *(v87 + 4 * v91) = v93;
LABEL_100:
            *(v87 + 4 * v92) = v93;
            ++v83;
          }

          while (v83 < v82);
        }

        v114 = (v80 >> 5) - 1;
        ++v232;
        bzero(v77 + 1, 4 * v114);
        v30 = v237;
        v15 = v238;
        v69 = v114 + v229;
      }
    }

    v31 = v69 + 1;
    v21 = v241;
    v26 = v227;
    if (v69 + 4 >= v241)
    {
      v222 = 1;
      goto LABEL_201;
    }
  }
}

void SetCost(unsigned int *a1, uint64_t a2, int a3, float *a4)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  if (!a2)
  {
    goto LABEL_5;
  }

  v9 = a1;
  v10 = a2;
  do
  {
    v11 = *v9++;
    v8 += v11;
    --v10;
  }

  while (v10);
  if (v8 > 0xFF)
  {
    v12 = log2(v8);
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    v12 = kBrotliLog2Table[v8];
    if (a3)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (!*v13++)
      {
        ++v8;
      }

      --v14;
    }

    while (v14);
  }

LABEL_13:
  if (v8 > 0xFF)
  {
    v16 = log2(v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v16 = kBrotliLog2Table[v8];
    if (!v6)
    {
      return;
    }
  }

  v17 = v12;
  v18 = v16;
  v19 = v18 + 2.0;
  do
  {
    v21 = *v7++;
    v20 = v21;
    if (v21)
    {
      if (v20 > 0xFF)
      {
        v22 = log2(v20);
      }

      else
      {
        v22 = kBrotliLog2Table[v20];
      }

      v23 = v22;
      v24 = v17 - v23;
      *a4 = v24;
      if (v24 < 1.0)
      {
        *a4 = 1.0;
      }
    }

    else
    {
      *a4 = v19;
    }

    ++a4;
    --v6;
  }

  while (v6);
}

uint64_t lzbitmap_init_encode_state(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a2 <= 2 && a1)
  {
    v3 = dword_29864E610[a2];
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 80) = v3;
    *(a1 + 84) = a2;
    if (a2)
    {
      v4 = 18;
    }

    else
    {
      v4 = 15;
    }

    v5 = 2 << v4;
    *(a1 + 88) = v4;
    *(a1 + 92) = (2 << v4) + 16;
    v6 = ((v3 & 1) << 14) + 0x4000;
    *(a1 + 96) = v6;
    *(a1 + 100) = 0x30000000002;
    v7 = (v3 >> 2) & 1 | 0xC;
    v8 = v6 >> 2;
    *(a1 + 108) = v7;
    *(a1 + 112) = v6 >> 2;
    v9 = (v6 >> 2) | 3;
    *(a1 + 116) = v9;
    v10 = (a1 + 199) & 0xFFFFFFFFFFFFFFC0;
    v11 = (v10 + (v5 + 79)) & 0xFFFFFFFFFFFFFFC0;
    *a1 = v10;
    *(a1 + 8) = v11;
    v12 = v11 + (v6 >> 2) + 66;
    v13 = (v12 + (v6 >> 2)) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 16) = v12 & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 24) = v13;
    *(a1 + 32) = (v13 + 3135) & 0xFFFFFFFFFFFFFFC0;
    return (v5 + v8 + v9 + 5080);
  }

  return v2;
}

uint64_t lzbitmap_encode(int *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  result = lzbitmap_init_encode_state(a5, a6);
  if (result)
  {
    result = 0;
    *(a5 + 56) = a4;
    *(a5 + 40) = a3;
    *(a5 + 48) = a1 + a2 - 31;
    if (a1)
    {
      if (a2 >= 0x23)
      {
        v12 = (a1 + 1);
        *a1 = (*(a5 + 80) << 24) | 0x4D425A;
        v13 = *a5;
        v14 = *(a5 + 92);
        *&v15 = 0x8000800080008;
        *(&v15 + 1) = 0x8000800080008;
        v24[0] = v15;
        v24[1] = v15;
        if (v14 >= 0x20)
        {
          v17 = 0;
          do
          {
            v18 = (v13 + v17);
            *v18 = v15;
            v18[1] = v15;
            v16 = v17 + 32;
            v19 = v17 + 64;
            v17 += 32;
          }

          while (v19 <= v14);
        }

        else
        {
          v16 = 0;
        }

        memcpy((v13 + v16), v24, v14 - v16);
        if (a4)
        {
          v20 = 0;
          v21 = *(a5 + 96);
          while (1)
          {
            v22 = a4 - v20 >= v21 ? v21 : a4 - v20;
            result = lzbitmap_process_block(a5, v12, v20, v22);
            if (!result)
            {
              break;
            }

            v12 = result;
            v21 = *(a5 + 96);
            v20 += v21;
            if (v20 >= a4)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v23 = lzbitmap_process_block(a5, v12, 0, 0);
          if (v23)
          {
            return (v23 - a1);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

char *lzbitmap_process_block(uint64_t *a1, uint64_t a2, unsigned int a3, size_t __n)
{
  v4 = 0;
  v388 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a2;
    v6 = a1;
    v7 = a1[6];
    v8 = (a2 + 6);
    if (a2 + 6 <= v7)
    {
      v9 = __n;
      v10 = a3;
      if (__n < 0x91)
      {
        goto LABEL_174;
      }

      v344 = (a2 + 15);
      if (a2 + 15 > v7)
      {
        goto LABEL_174;
      }

      v11 = *(a1 + 26);
      if (v11)
      {
        v12 = 0;
        v13 = a1[3];
        v14 = xmmword_29864E5D0;
        v15 = xmmword_29864E5E0;
        v16.i64[0] = 0x800000008;
        v16.i64[1] = 0x800000008;
        do
        {
          *v13 = v15;
          v13[1] = v14;
          v13 += 2;
          v12 += 8;
          v15 = vaddq_s32(v15, v16);
          v14 = vaddq_s32(v14, v16);
        }

        while (v12 < v11);
      }

      v17 = *(a1 + 21);
      v327 = __n;
      v325 = (a2 + 6);
      switch(v17)
      {
        case 2:
          v34 = a1[5];
          v36 = a1[2];
          v35 = a1[3];
          v338 = a1[1];
          v37 = *(a1 + 14) - 16;
          if (v9 + v10 < v37)
          {
            v37 = v9 + v10;
          }

          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v386 = 0u;
          v387 = 0u;
          v324 = v37;
          if (v10 + 128 > v37)
          {
            v38 = 0;
            v39 = 0;
            v40 = 8;
            v41 = v10;
LABEL_77:
            v196 = ((v9 + 63) & 0xFFFFFFC0) + v10;
            if (v344 + v39 + v196 - v41 > v6[6])
            {
              goto LABEL_107;
            }

            for (; v41 < v196; v41 += 8)
            {
              v197 = 0;
              v198 = 0;
              v199 = (v41 - v10) >> 3;
              v36[v199] = 0;
              do
              {
                if (v41 + v198 < *(v6 + 14))
                {
                  v200 = *(v34 + v41 + v198);
                  if (v200 != *(v34 + v41 - v40 + v198))
                  {
                    *(v344 + v39) = v200;
                    v197 = (v36[v199] | (1 << v198));
                    v36[v199] |= 1 << v198;
                    ++v39;
                  }
                }

                ++v198;
              }

              while (v198 != 8);
              v35[v197] += 0x10000;
            }

            v111 = v39;
            *(v6 + 30) = v39;
            *(v6 + 31) = v38;
LABEL_116:
            v257 = v344 + v111;
            break;
          }

          v39 = 0;
          v38 = 0;
          v322 = v5 + 143;
          v112 = 8;
          v113 = vdupq_n_s32(0x9E3779B1);
          v114.i64[0] = 0x202020202020202;
          v114.i64[1] = 0x202020202020202;
          v115.i64[0] = 0x8000800080008;
          v115.i64[1] = 0x8000800080008;
          v41 = v10;
          v331 = v35;
          v334 = v34;
          v329 = v36;
          while (v322 + v39 <= v6[6])
          {
            v116 = 0;
            v117 = &v346;
            v118 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
            do
            {
              v390 = *(v34 + v41 + v116);
              *v117 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_29864DCF0), v113), v118);
              v117[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_29864DD00), v113), v118);
              v117[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_29864DD10), v113), v118);
              v117[3] = vshlq_u32(vmulq_s32(vqtbl2q_s8(v390, xmmword_29864DD20), v113), v118);
              v117 += 4;
              v49 = v116 >= 0x70;
              v116 += 16;
            }

            while (!v49);
            if (!v41)
            {
              *v36 = 255;
              v35[255] += 0x10000;
              *v344 = *v34;
              v39 = 8;
              v41 = 8;
            }

            for (i = v41 == 8; i != 16; ++i)
            {
              v120 = v41;
              v121 = (v34 + v41);
              v122 = *v121;
              v123 = (v41 - v10) >> 3;
              v124 = (&v346 + 2 * i);
              if (v121->i64[0] == *(v121->i64 - v112))
              {
                v36[v123] = 0;
                *v35 += 0x10000;
                v125 = *v6;
                *(v125 + 2 * v124[1]) = (v120 + 1) | (*(*v6 + 2 * v124[1]) << 16);
                *(v125 + 2 * v124[2]) = (v120 + 2) | (*(v125 + 2 * v124[2]) << 16);
                *(v125 + 2 * v124[3]) = (v120 + 3) | (*(v125 + 2 * v124[3]) << 16);
                *(v125 + 2 * v124[5]) = (v120 + 5) | (*(v125 + 2 * v124[5]) << 16);
                *(v125 + 2 * v124[6]) = (v120 + 6) | (*(v125 + 2 * v124[6]) << 16);
                *(v125 + 2 * v124[7]) = (v120 + 7) | (*(v125 + 2 * v124[7]) << 16);
                *(v125 + 2 * v124[4]) = (v120 + 4) | (*(v125 + 2 * v124[4]) << 16);
                *(v125 + 2 * *v124) = v120 | (*(v125 + 2 * *v124) << 16);
              }

              else
              {
                v342 = v39;
                v126 = *v6;
                v127 = 2 * *v124;
                v128 = *(*v6 + v127);
                v129 = 2 * v124[4];
                v130 = *(*v6 + v129);
                v131 = 2 * v124[2];
                v132 = *(*v6 + v131);
                v133 = 2 * v124[3];
                v134 = *(*v6 + v133);
                v135 = 2 * v124[1];
                v136 = *(*v6 + v135);
                v137 = 2 * v124[5];
                v138 = *(*v6 + v137);
                v139 = 2 * v124[6];
                v140 = *(*v6 + v139);
                v141 = 2 * v124[7];
                v142 = *(*v6 + v141);
                *(v126 + v135) = (v120 + 1) | (v136 << 16);
                *(v126 + v131) = (v120 + 2) | (*(v126 + v131) << 16);
                *(v126 + v133) = (v120 + 3) | (*(v126 + v133) << 16);
                *(v126 + v137) = (v120 + 5) | (*(v126 + v137) << 16);
                *(v126 + v139) = (v120 + 6) | (*(v126 + v139) << 16);
                *(v126 + v141) = (v120 + 7) | (*(v126 + v141) << 16);
                *(v126 + v129) = (v120 + 4) | (*(v126 + v129) << 16);
                *(v126 + v127) = v120 | (*(v126 + v127) << 16);
                v382.i16[0] = v120 - v128;
                v382.i16[1] = v120 + 4 - v130;
                v382.i16[2] = v120 + 2 - v132;
                v382.i16[3] = v120 + 3 - v134;
                v382.i16[4] = v120 + 1 - v136;
                v382.i16[5] = v120 + 5 - v138;
                v382.i16[6] = v120 + 6 - v140;
                v382.i16[7] = v120 + 7 - v142;
                v143 = *(v121 - (v120 - v128));
                v144 = *(v121 - v382.u16[1]);
                v145 = *(v121 - v382.u16[2]);
                v146 = *(v121 - v382.u16[3]);
                v147 = *(v121 - v382.u16[4]);
                v148 = *(v121 - v382.u16[5]);
                v149 = *(v121 - v382.u16[6]);
                v150 = *(v121 - v382.u16[7]);
                v383.i16[0] = v120 - HIWORD(v128);
                v151 = *(v121 - (v120 - HIWORD(v128)));
                v383.i16[1] = v120 + 4 - HIWORD(v130);
                v152 = *(v121 - v383.u16[1]);
                v383.i16[2] = v120 + 2 - HIWORD(v132);
                v153 = *(v121 - v383.u16[2]);
                v383.i16[3] = v120 + 3 - HIWORD(v134);
                v154 = *(v121 - v383.u16[3]);
                v383.i16[4] = v120 + 1 - HIWORD(v136);
                v155 = *(v121 - v383.u16[4]);
                v383.i16[5] = v120 + 5 - HIWORD(v138);
                v156 = *(v121 - v383.u16[5]);
                v383.i16[6] = v120 + 6 - HIWORD(v140);
                v157 = *(v121 - v383.u16[6]);
                v383.i16[7] = v120 + 7 - HIWORD(v142);
                v158 = vceqzq_s8(vuzp2q_s8(v382, v383));
                v159 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v143, v122)))));
                v160 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v144, v122)))));
                v161 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v145, v122)))));
                v162 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v146, v122)))));
                v163 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v147, v122)))));
                v164 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v148, v122)))));
                v165 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v149, v122)))));
                v166.i64[0] = vzip2q_s32(v159, v160).u64[0];
                v167.i64[0] = vzip2q_s32(v163, v164).u64[0];
                v166.i64[1] = __PAIR64__(v162.u32[2], v161.u32[2]);
                v167.i32[2] = v165.i32[2];
                v168 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v150, v122)))));
                v167.i32[3] = v168.i32[2];
                v159.i64[0] = vzip1q_s32(v159, v160).u64[0];
                v164.i64[0] = vzip1q_s32(v163, v164).u64[0];
                v159.i64[1] = __PAIR64__(v162.u32[0], v161.u32[0]);
                v164.i64[1] = __PAIR64__(v168.u32[0], v165.u32[0]);
                v169 = vuzp1q_s16(v159, v164);
                v170 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v151, v122)))));
                v171 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v152, v122)))));
                v172 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v153, v122)))));
                v173 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v154, v122)))));
                v174 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v155, v122)))));
                v175 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v156, v122)))));
                v176 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v157, v122)))));
                v177 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(*(v121 - v383.u16[7]), v122)))));
                v164.i64[0] = vzip2q_s32(v170, v171).u64[0];
                v163.i64[0] = vzip2q_s32(v174, v175).u64[0];
                v164.i64[1] = __PAIR64__(v173.u32[2], v172.u32[2]);
                v163.i64[1] = __PAIR64__(v177.u32[2], v176.u32[2]);
                v171.i64[0] = vzip1q_s32(v170, v171).u64[0];
                v175.i64[0] = vzip1q_s32(v174, v175).u64[0];
                v385 = 0;
                v384 = v112;
                v386 = vsubq_s8(vbicq_s8(v114, v158), v158);
                v380 = 0;
                v381 = 0;
                v171.i64[1] = __PAIR64__(v173.u32[0], v172.u32[0]);
                v175.i64[1] = __PAIR64__(v177.u32[0], v176.u32[0]);
                v178 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(*(v121 - v112), v122)))));
                LOBYTE(v126) = v178.i8[0];
                v179 = v178.i16[0] & 0xFF00 | (v178.i16[4] << 8);
                v380 = (v178.i16[0] | (v178.i16[4] << 8));
                v379 = vorrq_s8(vshlq_n_s16(vuzp1q_s16(v164, v163), 8uLL), vorrq_s8(vuzp1q_s16(v171, v175), vcgtq_u16(v115, v383)));
                v378 = vorrq_s8(vorrq_s8(vshlq_n_s16(vuzp1q_s16(v166, v167), 8uLL), v169), vcgtq_u16(v115, v382));
                v180 = vcntq_s8(v378);
                v181 = vcntq_s8(v379);
                v182 = vaddq_s8(vshlq_n_s8(vaddq_s8(vuzp1q_s8(v180, v181), v386), 2uLL), vuzp2q_s8(v180, v181));
                v345 = v182;
                v183 = vceqzq_s16(v379);
                v184 = vminvq_u16(vbicq_s8(vtstq_s16(v378, v378), v183));
                v183.i32[0] = v126;
                *v183.i8 = vcnt_s8(*v183.i8);
                v183.i16[0] = vaddlv_u8(*v183.i8);
                LODWORD(v126) = v183.i32[0];
                v183.i32[0] = v179;
                *v183.i8 = vcnt_s8(*v183.i8);
                v183.i16[0] = vaddlv_u8(*v183.i8);
                v185 = v183.i32[0] + 4 * v126;
                if ((v184 & 0x8000) != 0)
                {
                  v191 = vminvq_s16(vminq_s16(vzip1q_s8(xmmword_29864C400, v182), vzip2q_s8(xmmword_29864C400, v182)));
                  v188 = v191;
                  if (v185 <= v191 >> 8)
                  {
                    v188 = 16;
                  }

                  v10 = a3;
                  v189 = v342;
                  v6 = a1;
                  v35 = v331;
                  v34 = v334;
                  v36 = v329;
                }

                else
                {
                  v186 = 0;
                  v187 = 0;
                  v188 = 16;
                  v10 = a3;
                  v189 = v342;
                  v6 = a1;
                  v35 = v331;
                  v34 = v334;
                  v36 = v329;
                  do
                  {
                    v190 = v345.u8[v186] - v187;
                    if (v185 > v190)
                    {
                      v187 = 4 * (v378.i16[v186] == 0);
                      v185 = v190;
                      v188 = v186;
                    }

                    ++v186;
                  }

                  while (v186 != 16);
                }

                v112 = v382.u16[v188];
                v192 = v378.u8[2 * v188];
                *(v338 + v38) = v112;
                v193 = v386.u8[v188];
                v38 += v193;
                *(v344 + v189) = vqtbl1_s8(v122, lzbitmap_pack_perm_table[*&v192]);
                v194 = v192.i32[0] | (v193 << 8);
                v195 = vcnt_s8(v192);
                v195.i16[0] = vaddlv_u8(v195);
                v36[v123] = v194;
                v39 = v189 + v195.i32[0];
                v35[v194] += 0x10000;
              }

              v41 = v120 + 8;
            }

            if (v120 + 136 > v324)
            {
              v40 = v112;
              v9 = v327;
              v5 = a2;
              goto LABEL_77;
            }
          }

          v257 = 0;
          v9 = v327;
          v5 = a2;
          break;
        case 1:
          v26 = a1[5];
          v27 = a1[2];
          v28 = a1[3];
          v337 = a1[1];
          if (__n + a3 >= *(a1 + 14) - 16)
          {
            v29 = *(a1 + 14) - 16;
          }

          else
          {
            v29 = __n + a3;
          }

          v30 = 0uLL;
          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v321 = 8;
          v383 = 0uLL;
          v333 = v29;
          if (a3 + 128 > v29)
          {
            v31 = 0;
            v32 = 0;
            v33 = a3;
LABEL_45:
            v106 = ((v9 + 63) & 0xFFFFFFC0) + v10;
            if (v344 + v32 + v106 - v33 > v6[6])
            {
              goto LABEL_107;
            }

            for (; v33 < v106; v33 += 8)
            {
              v107 = 0;
              v108 = 0;
              v109 = (v33 - v10) >> 3;
              v27[v109] = 0;
              do
              {
                if (v33 + v108 < *(v6 + 14))
                {
                  v110 = *(v26 + v33 + v108);
                  if (v110 != *(v26 + v33 - v321 + v108))
                  {
                    *(v344 + v32++) = v110;
                    v107 = (v27[v109] | (1 << v108));
                    v27[v109] |= 1 << v108;
                  }
                }

                ++v108;
              }

              while (v108 != 8);
              v28[v107] += 0x10000;
            }

            v111 = v32;
            *(v6 + 30) = v32;
            *(v6 + 31) = v31;
            goto LABEL_116;
          }

          v32 = 0;
          v31 = 0;
          v330 = a2 + 143;
          v328 = -a3;
          v42 = vdupq_n_s32(0x9E3779B1);
          v43.i64[0] = 0xFF00FF00FF00FFLL;
          v43.i64[1] = 0xFF00FF00FF00FFLL;
          v44.i64[0] = 0x8000800080008;
          v44.i64[1] = 0x8000800080008;
          v33 = a3;
          v45 = 8;
          while (v330 + v32 <= v6[6])
          {
            v46 = 0;
            v47 = &v346;
            v48 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
            do
            {
              v391 = *(v26 + v33 + v46);
              *v47 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_29864DCF0), v42), v48);
              v47[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_29864DD00), v42), v48);
              v47[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_29864DD10), v42), v48);
              v47[3] = vshlq_u32(vmulq_s32(vqtbl2q_s8(v391, xmmword_29864DD20), v42), v48);
              v47 += 4;
              v49 = v46 >= 0x70;
              v46 += 16;
            }

            while (!v49);
            if (!v33)
            {
              *v27 = 255;
              v28[255] += 0x10000;
              *v344 = *v26;
              v32 = 8;
              v33 = 8;
            }

            v50 = v328 + v33;
            v51 = (&v347 + 2 * (v33 == 8));
            if (v33 == 8)
            {
              v52 = -15;
            }

            else
            {
              v52 = -16;
            }

            do
            {
              v53 = (v26 + v33);
              v54 = *v53;
              if (v53->i64[0] == *(v53->i64 - v45))
              {
                v27[v50 >> 3] = 0;
                *v28 += 0x10000;
                v55 = *v6;
                *(*v6 + 2 * *(v51 - 3)) = v33 + 1;
                *(v55 + 2 * *(v51 - 2)) = v33 + 2;
                *(v55 + 2 * *(v51 - 1)) = v33 + 3;
                *(v55 + 2 * v51[1]) = v33 + 5;
                *(v55 + 2 * v51[2]) = v33 + 6;
                *(v55 + 2 * v51[3]) = v33 + 7;
                *(v55 + 2 * *v51) = v33 + 4;
                *(v55 + 2 * *(v51 - 4)) = v33;
              }

              else
              {
                v56 = *v6;
                v58 = *(v51 - 4);
                v57 = *(v51 - 3);
                v59 = *(*v6 + 2 * v58);
                v60 = *v51;
                v61 = v51[1];
                v62 = v31;
                v63 = *(v56 + 2 * v60);
                v64 = v28;
                v65 = v26;
                v66 = v27;
                v67 = *(v51 - 2);
                v68 = *(v51 - 1);
                v69 = *(v56 + 2 * v67);
                v70 = *(v56 + 2 * v68);
                v71 = *(v56 + 2 * v57);
                v72 = *(v56 + 2 * v61);
                v341 = v45;
                v73 = v51[2];
                v74 = v51[3];
                v75 = *(v56 + 2 * v73);
                v76 = *(v56 + 2 * v74);
                *(v56 + 2 * v57) = v33 + 1;
                *(v56 + 2 * v67) = v33 + 2;
                *(v56 + 2 * v68) = v33 + 3;
                *(v56 + 2 * v61) = v33 + 5;
                *(v56 + 2 * v73) = v33 + 6;
                *(v56 + 2 * v74) = v33 + 7;
                *(v56 + 2 * v60) = v33 + 4;
                *(v56 + 2 * v58) = v33;
                v378.i16[0] = v33 - v59;
                v27 = v66;
                v26 = v65;
                v28 = v64;
                v378.i16[1] = v33 + 4 - v63;
                v378.i16[2] = v33 + 2 - v69;
                v378.i16[3] = v33 + 3 - v70;
                v378.i16[4] = v33 + 1 - v71;
                v378.i16[5] = v33 + 5 - v72;
                v378.i16[6] = v33 + 6 - v75;
                v378.i16[7] = v33 + 7 - v76;
                v77 = *(v53 - (v33 - v59));
                v78 = *(v53 - v378.u16[1]);
                v79 = *(v53 - v378.u16[2]);
                v80 = *(v53 - v378.u16[3]);
                v81 = *(v53 - v378.u16[4]);
                v82 = *(v53 - v378.u16[5]);
                v379 = v341;
                v83 = vmovn_s16(vcgtq_u16(v378, v43));
                v84 = vand_s8(v83, 0x202020202020202);
                v85 = vmvn_s8(v83);
                v86 = vextq_s8(v30, v30, 8uLL).u64[0];
                *v30.i8 = vsub_s8(v84, v85);
                v87 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v77, v54)))));
                v88 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v78, v54)))));
                v89 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v79, v54)))));
                v90 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v80, v54)))));
                v91 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v81, v54)))));
                v92 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(v82, v54)))));
                v93 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(*(v53 - v378.u16[6]), v54)))));
                v94 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(*(v53 - v378.u16[7]), v54)))));
                v95.i64[0] = vzip2q_s32(v87, v88).u64[0];
                v96.i64[0] = vzip2q_s32(v91, v92).u64[0];
                v95.i64[1] = __PAIR64__(v90.u32[2], v89.u32[2]);
                v96.i64[1] = __PAIR64__(v94.u32[2], v93.u32[2]);
                v87.i64[0] = vzip1q_s32(v87, v88).u64[0];
                v88.i64[0] = vzip1q_s32(v91, v92).u64[0];
                v87.i64[1] = __PAIR64__(v90.u32[0], v89.u32[0]);
                v88.i64[1] = __PAIR64__(v94.u32[0], v93.u32[0]);
                v97 = vorrq_s8(vshlq_n_s16(vuzp1q_s16(v95, v96), 8uLL), vorrq_s8(vuzp1q_s16(v87, v88), vcgtq_u16(v44, v378)));
                v98 = vcntq_s8(v97);
                v30.i64[1] = v86;
                v387 = 0uLL;
                v6 = a1;
                v99 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(*(v53 - v341), v54)))));
                LOBYTE(v56) = v99.i8[0];
                v100 = v99.i16[0] & 0xFF00 | (v99.i16[4] << 8);
                *&v387 = (v99.i16[0] | (v99.i16[4] << 8));
                v386 = v97;
                v99.i64[0] = vuzp2q_s8(v98, xmmword_29864DCF0).u64[0];
                *v97.i8 = vadd_s8(vshl_n_s8(vadd_s8(vmovn_s16(v98), *v30.i8), 2uLL), *v99.i8);
                v99.i32[0] = v56;
                *v99.i8 = vcnt_s8(*v99.i8);
                v99.i16[0] = vaddlv_u8(*v99.i8);
                LODWORD(v56) = v99.i32[0];
                v99.i32[0] = v100;
                *v99.i8 = vcnt_s8(*v99.i8);
                v99.i16[0] = vaddlv_u8(*v99.i8);
                v101 = vminvq_s16(vzip1q_s8(xmmword_29864E600, v97));
                if (v99.i32[0] + 4 * v56 <= v101 >> 8)
                {
                  v102 = 8;
                }

                else
                {
                  v102 = v101;
                }

                v45 = v378.u16[v102];
                v103 = v386.u8[2 * v102];
                *(v337 + v62) = v45;
                v382 = v30;
                v104 = v382.u8[v102];
                *(v344 + v32) = vqtbl1_s8(v54, lzbitmap_pack_perm_table[*&v103]);
                v27[v50 >> 3] = v103.i16[0] | (v104 << 8);
                v64[v103.i32[0] | (v104 << 8)] += 0x10000;
                v31 = v62 + v104;
                v105 = vcnt_s8(v103);
                v105.i16[0] = vaddlv_u8(v105);
                v32 += v105.i32[0];
              }

              v33 += 8;
              v50 += 8;
              v51 += 8;
              v49 = __CFADD__(v52++, 1);
            }

            while (!v49);
            v9 = v327;
            v5 = a2;
            if (v33 + 128 > v333)
            {
              v321 = v45;
              v10 = a3;
              goto LABEL_45;
            }
          }

          v257 = 0;
          v10 = a3;
          break;
        case 0:
          v18 = a1[5];
          v19 = a1[2];
          v20 = a1[3];
          v340 = a1[1];
          if (__n + a3 >= *(a1 + 14) - 16)
          {
            v21 = *(a1 + 14) - 16;
          }

          else
          {
            v21 = __n + a3;
          }

          v22 = 0uLL;
          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v323 = 8;
          v383 = 0uLL;
          v336 = v21;
          if (a3 + 128 <= v21)
          {
            v24 = 0;
            v23 = 0;
            v335 = a2 + 143;
            v332 = -a3;
            v201 = vdupq_n_s32(0x9E3779B1);
            v202.i64[0] = 0xFF00FF00FF00FFLL;
            v202.i64[1] = 0xFF00FF00FF00FFLL;
            v203.i64[0] = 0x8000800080008;
            v203.i64[1] = 0x8000800080008;
            v25 = a3;
            v204 = 8;
            while (v335 + v24 <= v6[6])
            {
              v205 = 0;
              v206 = &v346;
              v207 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
              do
              {
                v392 = *(v18 + v25 + v205);
                *v206 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v392.val[0], xmmword_29864DCF0), v201), v207);
                v206[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v392.val[0], xmmword_29864DD00), v201), v207);
                v208 = vshlq_u32(vmulq_s32(vqtbl2q_s8(v392, xmmword_29864DD20), v201), v207);
                v206[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v392.val[0], xmmword_29864DD10), v201), v207);
                v206[3] = v208;
                v206 += 4;
                v49 = v205 >= 0x70;
                v205 += 16;
              }

              while (!v49);
              if (!v25)
              {
                *v19 = 255;
                v20[255] += 0x10000;
                *v344 = *v18;
                v24 = 8;
                v25 = 8;
              }

              v209 = v332 + v25;
              v210 = (&v347 + 2 * (v25 == 8));
              if (v25 == 8)
              {
                v211 = -15;
              }

              else
              {
                v211 = -16;
              }

              do
              {
                v212 = (v18 + v25);
                v213 = *v212;
                if (v212->i64[0] == *(v212->i64 - v204))
                {
                  v19[v209 >> 3] = 0;
                  *v20 += 0x10000;
                  v214 = *v6;
                  *(*v6 + 2 * *(v210 - 3)) = v25 + 1;
                  *(v214 + 2 * *(v210 - 2)) = v25 + 2;
                  *(v214 + 2 * *(v210 - 1)) = v25 + 3;
                  *(v214 + 2 * v210[1]) = v25 + 5;
                  *(v214 + 2 * v210[2]) = v25 + 6;
                  *(v214 + 2 * v210[3]) = v25 + 7;
                  *(v214 + 2 * *v210) = v25 + 4;
                  *(v214 + 2 * *(v210 - 4)) = v25;
                }

                else
                {
                  v215 = *v6;
                  v217 = *(v210 - 4);
                  v216 = *(v210 - 3);
                  v218 = *(*v6 + 2 * v217);
                  v219 = v20;
                  v220 = v18;
                  v221 = v23;
                  v222 = v19;
                  v224 = *v210;
                  v223 = v210[1];
                  v225 = *(v215 + 2 * v224);
                  v226 = *(v210 - 2);
                  v227 = *(v210 - 1);
                  v228 = *(v215 + 2 * v226);
                  v229 = *(v215 + 2 * v227);
                  v230 = *(v215 + 2 * v216);
                  v231 = *(v215 + 2 * v223);
                  v232 = v24;
                  v234 = v210[2];
                  v233 = v210[3];
                  v235 = *(v215 + 2 * v234);
                  v236 = *(v215 + 2 * v233);
                  *(v215 + 2 * v216) = v25 + 1;
                  *(v215 + 2 * v226) = v25 + 2;
                  *(v215 + 2 * v227) = v25 + 3;
                  *(v215 + 2 * v223) = v25 + 5;
                  *(v215 + 2 * v234) = v25 + 6;
                  *(v215 + 2 * v233) = v25 + 7;
                  *(v215 + 2 * v224) = v25 + 4;
                  *(v215 + 2 * v217) = v25;
                  v378.i16[0] = v25 - v218;
                  v19 = v222;
                  v237 = v221;
                  v18 = v220;
                  v20 = v219;
                  v378.i16[1] = v25 + 4 - v225;
                  v378.i16[2] = v25 + 2 - v228;
                  v378.i16[3] = v25 + 3 - v229;
                  v378.i16[4] = v25 + 1 - v230;
                  v378.i16[5] = v25 + 5 - v231;
                  v378.i16[6] = v25 + 6 - v235;
                  v378.i16[7] = v25 + 7 - v236;
                  v208.i64[0] = *(v212->i64 - (v25 - v218));
                  v238 = *&v212->i8[-v378.u16[5]];
                  v239 = *&v212->i8[-v378.u16[4]];
                  v240 = *&v212->i8[-v378.u16[3]];
                  v241.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[6]], *v213.i8)))));
                  v241.i64[1] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[7]], *v213.i8)))));
                  v379 = v204;
                  v242 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v238, *v213.i8)))));
                  v243.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v239, *v213.i8)))));
                  v243.i64[1] = v242;
                  v244 = vmovn_s16(vcgtq_u16(v378, v202));
                  *v243.i8 = vqtbl1_s8(v243, 0xFFFF0800FFFFFFFFLL);
                  v243.i16[3] = vqtbl1_s8(v241, 0x800FFFFFFFFFFFFLL).i16[3];
                  v6 = a1;
                  v245.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[2]], *v213.i8)))));
                  v245.i64[1] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v240, *v213.i8)))));
                  v208.i16[0] = vzip1_s8(vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*v208.i8, *v213.i8))))), vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[1]], *v213.i8)))))).u16[0];
                  v246 = vextq_s8(v22, v22, 8uLL).u64[0];
                  v208.i16[1] = vqtbl1_s8(v245, -4160684033).i16[1];
                  v208.i32[1] = v243.i32[1];
                  *v22.i8 = vsub_s8(vand_s8(v244, 0x202020202020202), vmvn_s8(v244));
                  v247 = vorr_s8(*v208.i8, vmovn_s16(vcgtq_u16(v203, v378)));
                  *v208.i8 = vadd_s8(vcnt_s8(v247), *v22.i8);
                  v22.i64[1] = v246;
                  v382 = v22;
                  v386.i64[1] = 0;
                  v386.i8[8] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v204], *v213.i8)))));
                  *v386.i8 = v247;
                  v248 = vzip1q_s8(xmmword_29864E600, v208);
                  v208.i32[0] = v386.u8[8];
                  v249 = vcnt_s8(*v208.i8);
                  v249.i16[0] = vaddlv_u8(v249);
                  v250 = vminvq_s16(v248);
                  if (v249.i32[0] <= v250 >> 8)
                  {
                    v251 = 8;
                  }

                  else
                  {
                    v251 = v250;
                  }

                  v204 = v378.u16[v251];
                  v252 = v386.u8[v251];
                  v253 = v382.u8[v251];
                  *(v340 + v237) = v204;
                  v254 = vqtbl1_s8(v213, lzbitmap_pack_perm_table[v252]);
                  *(v344 + v232) = v254;
                  v19[v209 >> 3] = v252 | (v253 << 8);
                  v219[v252 | (v253 << 8)] += 0x10000;
                  v23 = v237 + v253;
                  v254.i32[0] = v252;
                  v255 = vcnt_s8(v254);
                  v255.i16[0] = vaddlv_u8(v255);
                  v24 = v255.i32[0] + v232;
                }

                v25 += 8;
                v209 += 8;
                v210 += 8;
                v49 = __CFADD__(v211++, 1);
              }

              while (!v49);
              v9 = v327;
              v5 = a2;
              v10 = a3;
              if (v25 + 128 > v336)
              {
                v323 = v204;
                goto LABEL_106;
              }
            }

            goto LABEL_107;
          }

          v23 = 0;
          v24 = 0;
          v25 = a3;
LABEL_106:
          v256 = ((v9 + 63) & 0xFFFFFFC0) + v10;
          if (v344 + v24 + v256 - v25 > v6[6])
          {
LABEL_107:
            v257 = 0;
            break;
          }

          for (; v25 < v256; v25 += 8)
          {
            v258 = 0;
            v259 = 0;
            v260 = (v25 - v10) >> 3;
            v19[v260] = 0;
            do
            {
              if (v25 + v259 < *(v6 + 14))
              {
                v261 = *(v18 + v25 + v259);
                if (v261 != *(v18 + v25 - v323 + v259))
                {
                  *(v344 + v24++) = v261;
                  v258 = (v19[v260] | (1 << v259));
                  v19[v260] |= 1 << v259;
                }
              }

              ++v259;
            }

            while (v259 != 8);
            v20[v258] += 0x10000;
          }

          v111 = v24;
          *(v6 + 30) = v24;
          *(v6 + 31) = v23;
          goto LABEL_116;
        default:
LABEL_174:
          v4 = &v8[v9];
          if (v4 <= v6[6])
          {
            memcpy(v8, (v6[5] + v10), v9);
          }

          else
          {
            v4 = 0;
          }

LABEL_177:
          *v5 = (v4 - v5) | (v9 << 24);
          *(v5 + 4) = v9 >> 8;
          return v4;
      }

      v8 = v325;
      if (v257)
      {
        v262 = *(v6 + 31);
        v263 = &v257[v262];
        if (&v257[v262] <= v6[6])
        {
          memcpy(v257, v6[1], v262);
          v264 = 0;
          v265 = 0;
          do
          {
            v266 = 0;
            v267 = vdupq_n_s32(65537 * v265 + 16777472);
            v268 = v6[4] + 2 * v264;
            do
            {
              v269 = (v268 + v266);
              *v269 = v267;
              v269[1] = v267;
              v266 += 32;
            }

            while (v266 < 0x1E1);
            ++v265;
            v264 += 256;
          }

          while (v265 <= *(v6 + 25));
          v270 = ((v9 + 63) >> 3) & 0x1FFFFFF8;
          v271 = v6[3];
          v273 = *(v6 + 26);
          v272 = *(v6 + 27);
          v274 = 0;
          if (!v273)
          {
            goto LABEL_147;
          }

          v275 = v6[3];
          do
          {
            v276 = *v275++;
            *(v271 + 4 * v274) = v276;
            if ((v276 & 0xFFFF0000) != 0)
            {
              ++v274;
            }

            --v273;
          }

          while (v273);
          if (v274 > v272)
          {
            v277 = 0;
            v10 = a3;
            do
            {
              v278 = v277;
              v279 = *(v271 + 4 * v277);
              v280 = v274 - 1;
              v281 = *(v271 + 4 * (v274 - 1));
              if (v279 > v281)
              {
                *(v271 + 4 * v277) = v281;
                *(v271 + 4 * v280) = v279;
                v281 = v279;
              }

              v282 = (v277 + v274) >> 1;
              v283 = *(v271 + 4 * v282);
              if (v283 > v281)
              {
                *(v271 + 4 * v282) = v281;
                *(v271 + 4 * v280) = v283;
                v283 = *(v271 + 4 * v282);
              }

              v284 = *(v271 + 4 * v277);
              if (v283 > v284)
              {
                *(v271 + 4 * v278) = v283;
                *(v271 + 4 * v282) = v284;
                v284 = *(v271 + 4 * v278);
              }

              v285 = v278 - 1;
              v286 = v274;
              while (1)
              {
                do
                {
                  v287 = *(v271 + 4 * ++v285);
                }

                while (v287 > v284);
                v288 = v286 + 1;
                do
                {
                  v289 = v288 - 2;
                  v290 = *(v271 + 4 * (v288 - 2));
                  --v288;
                }

                while (v290 < v284);
                v286 = v288 - 1;
                if (v285 >= v288 - 1)
                {
                  break;
                }

                *(v271 + 4 * v289) = v287;
                *(v271 + 4 * v285) = v290;
              }

              if (v288 < v272)
              {
                v277 = v288;
              }

              else
              {
                v274 = v288;
                v277 = v278;
              }
            }

            while (v272 != v288);
          }

          else
          {
LABEL_147:
            bzero((v271 + 4 * v274), 4 * (v272 - v274));
            v10 = a3;
          }

          *(v6 + 60) = 0;
          v291 = (v6 + 60);
          *(v6 + 68) = 0;
          *(v6 + 19) = 0;
          LODWORD(v292) = ((v9 + 63) >> 3) & 0x1FFFFFF8;
          v8 = v325;
          if (*(v6 + 27))
          {
            v293 = 0;
            v294 = 0;
            v295 = v6[3];
            LODWORD(v292) = ((v9 + 63) >> 3) & 0x1FFFFFF8;
            do
            {
              if (*(v295 + 4 * v294) < 0x10000u)
              {
                break;
              }

              v296 = *(v295 + 4 * v294);
              *(v291 + ((v293 >> 3) & 0x1FFFFFFE)) |= v296 << (v293 & 0xE);
              *(v6[4] + 2 * v296) = v294 + *(v6 + 25) + 1;
              v8 = v325;
              LODWORD(v292) = v292 - *(v295 + 4 * v294++ + 2);
              v293 += 10;
            }

            while (v294 < *(v6 + 27));
          }

          *(v6 + 32) = v292;
          v297 = v6[6];
          if (&v263[v292] <= v297)
          {
            if (v270)
            {
              v298 = 0;
              v299 = v6[4];
              v300 = ((v9 + 63) >> 3) & 0x1FFFFFF8;
              v302 = v6[1];
              v301 = v6[2];
              do
              {
                v303 = *(v299 + 2 * *v301);
                *v302++ = v303;
                v304 = *v301;
                v301 += 2;
                v263[v298] = v304;
                v298 += v303 >> 8;
                --v300;
              }

              while (v300);
              v292 = *(v6 + 32);
              v297 = v6[6];
              v8 = v325;
            }

            else
            {
              v292 = v292;
            }

            v305 = &v263[v292];
            if (&v263[v292 + (v270 >> 1)] <= v297)
            {
              if ((v6[10] & 4) != 0)
              {
                v306 = v6[1];
              }

              else
              {
                v306 = v6[2];
                v270 = lzbitmap_encode_rle_unsafe(v306, v6[1], v270);
              }

              if (v270 >= 0x20)
              {
                v308 = 32;
                v309 = v306;
                v310 = v305;
                do
                {
                  v389 = vld2q_s8(v309);
                  v309 += 32;
                  *v310++ = vorrq_s8(vshlq_n_s8(v389.val[1], 4uLL), v389.val[0]);
                  v308 += 32;
                }

                while (v308 <= v270);
                v307 = v270 & 0xFFFFFFE0;
              }

              else
              {
                v307 = 0;
              }

              bzero(&v305->i8[v307 >> 1], (v270 + 1 - v307) >> 1);
              if (v307 < v270)
              {
                v311 = v270 - v307;
                v312 = 4 * v307;
                v313 = (v306 + v307);
                do
                {
                  v314 = *v313++;
                  *(v305->i32 + ((v312 >> 3) & 0x1FFFFFFE)) |= v314 << (v312 & 0xC);
                  v312 += 4;
                  --v311;
                }

                while (v311);
              }

              v315 = &v305->i8[(v270 + 1) >> 1];
              v6 = a1;
              v4 = v315 + 17;
              v10 = a3;
              v8 = v325;
              if ((v315 + 17) <= a1[6])
              {
                v316 = *v291;
                v315[16] = *(v291 + 16);
                *v315 = v316;
                v317 = (*(a1 + 30) + 15);
                v318 = (*(a1 + 31) + v317);
                v319 = (*(a1 + 32) + v318);
                *(v5 + 6) = v317 + (v318 << 24) + (v319 << 48);
                *(v5 + 14) = BYTE2(v319);
                if (&v4[-v5] < v9 + 6)
                {
                  goto LABEL_177;
                }
              }
            }
          }
        }
      }

      goto LABEL_174;
    }
  }

  return v4;
}

uint64_t lzvn_stream_init(uint64_t a1, int a2, int a3, int a4)
{
  if (a2 == 1)
  {
    return lzvnStreamDecodeInit(a1, a3, a4);
  }

  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  return lzvnStreamEncodeInit(a1, a3, a4);
}

uint64_t lzvn_stream_process(uint64_t a1, char a2)
{
  v2 = **(a1 + 32);
  if (v2 == 1)
  {
    return lzvnStreamDecode(a1, a2);
  }

  if (v2)
  {
    return 0xFFFFFFFFLL;
  }

  return lzvnStreamEncode(a1, a2);
}

uint64_t lzvn_stream_get_state_size(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1 == 1)
  {
    return lzvnStreamDecodeStateSize();
  }

  if (*v1)
  {
    return 0;
  }

  return lzvnStreamEncodeStateSize(v1[1]);
}

uint64_t lzma_decode_buffer()
{
  if (lzma_stream_buffer_decode())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_encode_buffer()
{
  if (lzma_easy_buffer_encode())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t lzbitmap_encode_rle_unsafe(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + a3) = xmmword_29864E620;
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (a2 + v3);
      v6 = *v5;
      v7 = *(v5 + 1);
      *(a1 + v4) = *v5;
      v8 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v6, v7), xmmword_29864E5F0))));
      LODWORD(v5) = __clz(__rbit32(((v8.i32[0] | (v8.i32[2] << 8)) >> 1) & (((v8.i32[0] | (v8.i32[2] << 8)) & 0xFFFCu) >> 2) & (v8.i32[0] | (v8.i32[2] << 8)) | 0x2000)) + 1;
      v3 += v5;
      v4 += v5;
      if ((((v8.i32[0] | (v8.i32[2] << 8)) >> 1) & (((v8.i32[0] | (v8.i32[2] << 8)) & 0xFFFCu) >> 2) & (v8.i32[0] | (v8.i32[2] << 8))) != 0)
      {
        v9 = v4 + 1;
        *(a1 + v4) = 15;
        v3 += 3;
        do
        {
          v10 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_29864E5F0, vceqq_s8(*(a2 + v3 - 1), *(a2 + v3))))));
          v11 = __clz(__rbit32(v10.i16[0] | (v10.i16[4] << 8) | 0xFFFF8000));
          v4 = v9 + 1;
          *(a1 + v9) = v11;
          v3 += v11;
          ++v9;
        }

        while (v11 == 15);
      }
    }

    while (v3 < a3);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v4 + a3 - v3;
}

uint64_t lzbitmap_decode_rle_unsafe(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 15 || a2 == 0)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v6.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v7 = *&a3[v4];
    *(a1 + v5) = v7;
    v8 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v6), xmmword_29864E5F0))));
    v9 = __clz(__rbit32((v8.i16[0] | (v8.i16[4] << 8)) | 0x10000));
    v5 += v9;
    v4 += v9;
    if (v8.i16[0] | (v8.i16[4] << 8))
    {
      v10 = v4 + 1;
      v11 = &a3[v4 - 1];
      v12 = vld1q_dup_s8(v11);
      *(a1 + v5) = v12;
      v5 += 3;
      do
      {
        v4 = v10 + 1;
        v13 = a3[v10];
        *(a1 + v5) = v12;
        v5 += v13;
        v14 = v13 < 0xF || v5 >= a2;
        v10 = v4;
      }

      while (!v14);
    }
  }

  while (v5 < a2);
  return a2;
}

_DWORD *BrotliInitEncoderDictionary(uint64_t a1)
{
  *a1 = BrotliGetDictionary();
  result = BrotliGetTransforms();
  v3 = result[6];
  *(a1 + 32) = &kStaticDictionaryHashLengths;
  *(a1 + 40) = &kStaticDictionaryBuckets;
  *(a1 + 48) = &kStaticDictionaryWords;
  *(a1 + 8) = v3;
  *(a1 + 12) = 10;
  *(a1 + 16) = 0x71B520ADA2D3200;
  *(a1 + 24) = &kStaticDictionaryHashWords;
  return result;
}

uint64_t lzvnEncodeInitState(uint64_t result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 8);
  if (v4 <= -65535)
  {
    v4 = -65535;
  }

  v5 = (*result + v4);
  v6 = vld1q_dup_f32(v5);
  if (a2 == 2305)
  {
    v7 = 11;
  }

  else
  {
    v7 = 14;
  }

  *(result + 72) = v7;
  *(result + 128) = a3;
  v8 = vdupq_n_s32(v4);
  v9 = 1;
  do
  {
    v10 = (*(result + 128) + v3);
    *v10 = v8;
    v10[1] = v6;
    LODWORD(v10) = v9 >> v7;
    v3 += 32;
    ++v9;
  }

  while (!v10);
  return result;
}

uint64_t smb_encode_scratch_size(int a1)
{
  v1 = 0x10000;
  v2 = 172392;
  if (a1 != 3104)
  {
    v2 = 0;
  }

  if (a1 != 3088)
  {
    v1 = v2;
  }

  if (a1 == 3072)
  {
    return 0x8000;
  }

  else
  {
    return v1;
  }
}

uint64_t smb_decode_scratch_size(int a1)
{
  if (a1 == 3104)
  {
    return 5632;
  }

  else
  {
    return 0;
  }
}

uint64_t smb_encode_buffer(_WORD *a1, unint64_t a2, _BYTE *a3, unint64_t a4, void *a5, int a6)
{
  v6 = -16777216;
  if (a4 > 0xFFFFFFFFFF000000)
  {
    return 0;
  }

  if (a2 < 0xFFFFFFFFFF000000)
  {
    v6 = a2;
  }

  v8 = a6 & 0xFFFFFFF0;
  if ((a6 & 0xFFFFFFF0) == 0xC00)
  {
    return smb_lznt1_encode_buffer(a1, v6, a3, a4, a5);
  }

  if (v8 == 3104)
  {
    return smb_lz77h_encode_buffer(a1, v6, a3, a4, a5);
  }

  if (v8 != 3088)
  {
    return 0;
  }

  return smb_lz77_encode_buffer(a1, v6, a3, a4, a5);
}

uint64_t smb_decode_buffer(char *a1, unint64_t a2, char *a3, unint64_t a4, char *a5, int a6)
{
  v6 = a6 & 0xFFFFFFF0;
  if ((a6 & 0xFFFFFFF0) == 0xC20)
  {
    return smb_lz77h_decode_buffer(a1, a2, a3, a4, a5);
  }

  if (v6 == 3088)
  {
    return smb_lz77_decode_buffer(a1, a2, a3, a4);
  }

  if (v6 == 3072)
  {
    return smb_lznt1_decode_buffer(a1, a2, a3, a4);
  }

  return 0;
}

uint64_t lzbitmap_fast_decode_buffer(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t a5)
{
  if ((a4 | a2) >> 32)
  {
    return 0;
  }

  else
  {
    return lzbitmap_fast_decode(a1, a2, a3, a4, a5);
  }
}

uint64_t lzbitmap_fast_encode_buffer(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  if (HIDWORD(a4))
  {
    return 0;
  }

  if (a2 >= 0xFFFFFFFF)
  {
    LODWORD(a2) = -1;
  }

  return lzbitmap_fast_encode(a1, a2, a3, a4, a5, a6);
}

uint64_t lzbitmap_decode_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, int8x16_t a7)
{
  if ((a4 | a2) >> 32)
  {
    return 0;
  }

  else
  {
    return lzbitmap_decode(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t lzbitmap_encode_buffer(int *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  if (HIDWORD(a4))
  {
    return 0;
  }

  if (a2 >= 0xFFFFFFFF)
  {
    LODWORD(a2) = -1;
  }

  return lzbitmap_encode(a1, a2, a3, a4, a5, a6);
}

unint64_t BrotliStoreHuffmanTree(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v41 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  BrotliWriteHuffmanTree(a1, a2, &v33, v40, v39);
  v8 = v33;
  if (v33)
  {
    v9 = v40;
    do
    {
      v10 = *v9++;
      ++*(v34 + v10);
      --v8;
    }

    while (v8);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (!*(v34 + v13))
  {
LABEL_8:
    if (++v13 == 18)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    v12 = 1;
    v11 = v13;
    goto LABEL_8;
  }

  v12 = 2;
LABEL_11:
  v14 = 18;
  BrotliCreateHuffmanTree(v34, 18, 5, a3, v37);
  result = BrotliConvertBitDepthsToSymbols(v37, 18, v36);
  if (v12 >= 2)
  {
    v16 = 0x11u;
    while (!*(v37 + BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kStorageOrder[v16]))
    {
      if (--v16 == -1)
      {
        v14 = 0;
        goto LABEL_17;
      }
    }

    v14 = v16 + 1;
  }

LABEL_17:
  v17 = 2;
  if (!BYTE3(v37[0]))
  {
    v17 = 3;
  }

  if (BYTE1(v37[0]) | BYTE2(v37[0]))
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = *a4;
  *(a5 + (*a4 >> 3)) = (v18 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
  v20 = v19 + 2;
  *a4 = v20;
  v21 = v14 - v18;
  if (v14 > v18)
  {
    v22 = &BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kStorageOrder[v18];
    do
    {
      v23 = *v22++;
      v24 = *(v37 + v23);
      v25 = BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kHuffmanBitLengthHuffmanCodeBitLengths[v24];
      result = v20 & 7;
      *(a5 + (v20 >> 3)) = (BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kHuffmanBitLengthHuffmanCodeSymbols[v24] << (v20 & 7)) | *(a5 + (v20 >> 3));
      v20 += v25;
      --v21;
    }

    while (v21);
    *a4 = v20;
  }

  if (v12 == 1)
  {
    *(v37 + v11) = 0;
  }

  v26 = v33;
  if (v33)
  {
    v27 = v39;
    v28 = v40;
    while (1)
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *(v37 + v30);
      result = *(a5 + (v20 >> 3));
      *(a5 + (v20 >> 3)) = (v36[v30] << (v20 & 7)) | result;
      v20 += v31;
      if (v30 == 16)
      {
        break;
      }

      if (v29 == 17)
      {
        v32 = 3;
LABEL_34:
        result = v20 & 7;
        *(a5 + (v20 >> 3)) = (*v27 << (v20 & 7)) | *(a5 + (v20 >> 3));
        v20 += v32;
      }

      ++v27;
      if (!--v26)
      {
        *a4 = v20;
        return result;
      }
    }

    v32 = 2;
    goto LABEL_34;
  }

  return result;
}

uint64_t BrotliBuildAndStoreHuffmanTreeFast(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v91 = *MEMORY[0x29EDCA608];
  v89 = 0u;
  v90 = 0u;
  if (!a3)
  {
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0;
  v16 = 8;
  do
  {
    v17 = *(a2 + 4 * v15);
    if (v17)
    {
      if (v14 <= 3)
      {
        *(&v89 + v14) = v15;
      }

      ++v14;
      a3 -= v17;
    }

    ++v15;
    v16 += 16;
  }

  while (a3);
  v18 = v14 - 1;
  if (v14 <= 1)
  {
LABEL_9:
    v19 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v19 += 4;
    *a7 = v19;
    v20 = v89;
    *(a8 + (v19 >> 3)) = (v89 << (v19 & 7)) | *(a8 + (v19 >> 3));
    *a7 = v19 + a4;
    a5[v20] = 0;
    *(a6 + 2 * v20) = 0;
    return result;
  }

  v88 = result;
  bzero(a5, v15);
  result = BrotliAllocate(v88);
  if (!*(v88 + 24))
  {
    v21 = result;
    v87 = a6;
    v22 = 1;
    do
    {
      if (v15)
      {
        v23 = v15 - 1;
        v24 = v21;
        do
        {
          v25 = *(a2 + 4 * v23);
          if (v25)
          {
            if (v25 < v22)
            {
              v25 = v22;
            }

            *v24 = v25;
            *(v24 + 4) = -1;
            *(v24 + 6) = v23;
            v24 += 8;
          }

          --v23;
        }

        while (v23 != -1);
      }

      else
      {
        v24 = v21;
      }

      v26 = ((v24 - v21) >> 3);
      if (v26 > 0xC)
      {
        v32 = 2 * (v26 < 0x39);
        do
        {
          v33 = kBrotliShellGaps[v32];
          if (v33 < v26)
          {
            v34 = 0;
            v35 = kBrotliShellGaps[v32];
            do
            {
              v36 = *(v21 + 8 * v35);
              v37 = v35;
              if (v35 >= v33)
              {
                v38 = v34;
                v39 = v35;
                while (*(v21 + v38) > v36)
                {
                  v37 = v39 - v33;
                  *(v21 + 8 * v39) = *(v21 + v38);
                  v38 -= 8 * v33;
                  v39 = v37;
                  if (v37 < v33)
                  {
                    goto LABEL_38;
                  }
                }

                v37 = v39;
              }

LABEL_38:
              *(v21 + 8 * v37) = v36;
              ++v35;
              v34 += 8;
            }

            while (v35 != v26);
          }

          ++v32;
        }

        while (v32 != 6);
      }

      else if (v26 >= 2)
      {
        v27 = 0;
        for (i = 1; i != v26; ++i)
        {
          v29 = *(v21 + 8 * i);
          v30 = v27;
          v31 = i;
          do
          {
            if (*(v21 + v30) <= v29)
            {
              break;
            }

            *(v21 + 8 * v31) = *(v21 + v30);
            v30 -= 8;
            --v31;
          }

          while (v31);
          *(v21 + 8 * v31) = v29;
          v27 += 8;
        }
      }

      v40 = (v24 - v21) >> 3;
      *v24 = -1;
      *(v24 + 8) = -1;
      if (v40 >= 2)
      {
        v41 = 0;
        v42 = v40 + 1;
        v43 = (v24 + 16);
        v44 = v40 + 1;
        do
        {
          v45 = *(v21 + 8 * v41);
          v46 = *(v21 + 8 * v42);
          v47 = v45 > v46;
          if (v45 > v46)
          {
            v48 = v41;
          }

          else
          {
            v48 = v41 + 1;
          }

          if (v47)
          {
            v49 = v42 + 1;
          }

          else
          {
            v49 = v42;
          }

          if (v47)
          {
            v50 = v42;
          }

          else
          {
            v50 = v41;
          }

          v51 = *(v21 + 8 * v48);
          v52 = *(v21 + 8 * v49);
          v53 = v51 > v52;
          if (v51 > v52)
          {
            v41 = v48;
          }

          else
          {
            v41 = v48 + 1;
          }

          if (v53)
          {
            v42 = v49 + 1;
          }

          else
          {
            v42 = v49;
          }

          if (v53)
          {
            v48 = v49;
          }

          *(v43 - 2) = *(v21 + 8 * v48) + *(v21 + 8 * v50);
          *(v43 - 2) = v50;
          *(v43 - 1) = v48;
          *v43++ = -1;
          --v44;
        }

        while (v44 > 2);
      }

      v22 *= 2;
    }

    while (!BrotliSetDepth(2 * v40 - 1, v21, a5, 14));
    BrotliFree(v88, v21);
    result = BrotliConvertBitDepthsToSymbols(a5, v15, v87);
    if (v14 <= 4)
    {
      v54 = 0;
      v55 = *a7;
      *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
      *a7 = v55 + 2;
      *(a8 + ((v55 + 2) >> 3)) = (v18 << ((v55 + 2) & 7)) | *(a8 + ((v55 + 2) >> 3));
      v56 = v55 + 4;
      *a7 = v56;
      v57 = &v89 + 8;
      do
      {
        v58 = v54 + 1;
        if (v54 + 1 < v14)
        {
          v59 = *(&v89 + v54);
          v60 = v57;
          v61 = v18;
          do
          {
            v62 = *v60;
            result = a5[v59];
            if (a5[*v60] < result)
            {
              *v60 = v59;
              *(&v89 + v54) = v62;
              v59 = v62;
            }

            ++v60;
            --v61;
          }

          while (v61);
        }

        --v18;
        v57 += 8;
        ++v54;
      }

      while (v58 != v14);
      v63 = v89;
      v64 = v56 >> 3;
      v65 = v89 << (v56 & 7);
      v66 = v56 + a4;
      v67 = (v56 + a4) >> 3;
      v68 = v66 & 7;
      v69 = v66 + a4;
      if (v14 == 3)
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        v83 = v90;
        *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        *a7 = v69;
        *(a8 + (v69 >> 3)) = (v83 << (v69 & 7)) | *(a8 + (v69 >> 3));
        v69 += a4;
      }

      else
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        if (v14 == 2)
        {
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        }

        else
        {
          v84 = v90;
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
          *a7 = v69;
          *(a8 + (v69 >> 3)) = (v84 << (v69 & 7)) | *(a8 + (v69 >> 3));
          v85 = v69 + a4;
          *a7 = v85;
          *(a8 + (v85 >> 3)) = (*(&v90 + 1) << (v85 & 7)) | *(a8 + (v85 >> 3));
          v86 = v85 + a4;
          *a7 = v86;
          *(a8 + (v86 >> 3)) = ((a5[v63] == 1) << (v86 & 7)) | *(a8 + (v86 >> 3));
          v69 = v86 + 1;
        }
      }

      *a7 = v69;
      return result;
    }

    v70 = *a7;
    *(a8 + (*a7 >> 3)) = (0xFF55555554 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v71 = v70 + 40;
    *a7 = v71;
    if (!v15)
    {
      return result;
    }

    v72 = 0;
    result = 8;
    do
    {
      v73 = a5[v72];
      if (v72 + 1 >= v15)
      {
        ++v72;
        v75 = 1;
        if (!v73)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v74 = v72 - v15 + 1;
        v75 = 1;
        while (a5[v72 + v75] == v73)
        {
          ++v75;
          if (__CFADD__(v74++, 1))
          {
            v75 = v15 - v72;
            break;
          }
        }

        v72 += v75;
        if (!v73)
        {
LABEL_90:
          v80 = kZeroRepsDepth[v75];
          *(a8 + (v71 >> 3)) = (kZeroRepsBits[v75] << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v80;
          goto LABEL_93;
        }
      }

      if (result != v73)
      {
        v77 = kCodeLengthDepth[v73];
        *(a8 + (v71 >> 3)) = (kCodeLengthBits[v73] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v77;
        *a7 = v71;
        --v75;
      }

      if (v75 > 2)
      {
        v81 = v75 - 3;
        v82 = kNonZeroRepsDepth[v75 - 3];
        *(a8 + (v71 >> 3)) = (kNonZeroRepsBits[v81] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v82;
      }

      else
      {
        if (!v75)
        {
          result = v73;
          continue;
        }

        v78 = kCodeLengthDepth[v73];
        v79 = kCodeLengthBits[v73];
        do
        {
          *(a8 + (v71 >> 3)) = (v79 << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v78;
          --v75;
        }

        while (v75);
      }

      result = v73;
LABEL_93:
      *a7 = v71;
    }

    while (v72 < v15);
  }

  return result;
}

uint64_t BrotliStoreMetaBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, unsigned int *a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t *a14, uint64_t a15)
{
  v15 = a8;
  LODWORD(v92) = a6;
  v19 = a14;
  v148 = *MEMORY[0x29EDCA608];
  v20 = a9[19];
  v95 = a9[18];
  StoreCompressedMetaBlockHeader(a8, a4, a14, a15);
  result = BrotliAllocate(a1);
  if (!*(a1 + 24))
  {
    v22 = result;
    v23 = a13;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    memset(v106, 0, sizeof(v106));
    v105 = 0u;
    *v104 = 0u;
    memset(v98, 0, sizeof(v98));
    v96 = 0u;
    v97 = 0u;
    v25 = *(a13 + 16);
    v24 = *(a13 + 24);
    v26 = *a13;
    v27 = *(a13 + 8);
    v112[0] = 256;
    v112[1] = v26;
    v112[2] = v25;
    v112[3] = v24;
    v142 = 0;
    v112[4] = v27;
    v113 = xmmword_29867D840;
    v143 = 0;
    if (v27)
    {
      v28 = *v24;
    }

    else
    {
      v28 = 0;
    }

    v144 = v28;
    v145 = 0;
    v147 = 0;
    v146 = 0;
    v30 = *(a13 + 64);
    v29 = *(a13 + 72);
    v31 = *(a13 + 48);
    v32 = *(a13 + 56);
    v104[0] = 704;
    v104[1] = v31;
    *&v105 = v30;
    *(&v105 + 1) = v29;
    *&v106[0] = v32;
    *(v106 + 8) = xmmword_29867D840;
    v107 = 0;
    if (v32)
    {
      v33 = *v29;
    }

    else
    {
      v33 = 0;
    }

    v108 = v33;
    v109 = 0;
    v111 = 0;
    v110 = 0;
    v35 = *(a13 + 112);
    v34 = *(a13 + 120);
    v36 = *(a13 + 96);
    v37 = *(a13 + 104);
    *&v96 = v20;
    *(&v96 + 1) = v36;
    *&v97 = v35;
    *(&v97 + 1) = v34;
    *&v98[0] = v37;
    *(v98 + 8) = xmmword_29867D840;
    v99 = 0;
    if (v37)
    {
      v38 = *v34;
    }

    else
    {
      v38 = 0;
    }

    v100 = v38;
    v101 = 0;
    v103 = 0;
    v102 = 0;
    BuildAndStoreBlockSwitchEntropyCodes(v112, result, a14, a15);
    BuildAndStoreBlockSwitchEntropyCodes(v104, v22, a14, a15);
    BuildAndStoreBlockSwitchEntropyCodes(&v96, v22, a14, a15);
    v39 = *a14;
    v40 = a9[16];
    v41 = a9[17];
    *(a15 + (*a14 >> 3)) = (v40 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
    *a14 = v39 + 2;
    *(a15 + ((v39 + 2) >> 3)) = ((v41 >> v40) << ((v39 + 2) & 7)) | *(a15 + ((v39 + 2) >> 3));
    v42 = v39 + 6;
    *a14 = v42;
    if (*a13)
    {
      v43 = 0;
      do
      {
        *(a15 + (v42 >> 3)) = (a10 << (v42 & 7)) | *(a15 + (v42 >> 3));
        v42 += 2;
        *a14 = v42;
        ++v43;
      }

      while (v43 < *a13);
    }

    v44 = *(a13 + 152);
    if (v44)
    {
      result = EncodeContextMap(a1, *(a13 + 144), v44, *(a13 + 184), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      StoreTrivialContextMap(*(a13 + 184), 6uLL, v22, a14, a15);
    }

    v45 = *(a13 + 168);
    if (v45)
    {
      result = EncodeContextMap(a1, *(a13 + 160), v45, *(a13 + 216), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      StoreTrivialContextMap(*(a13 + 216), 2uLL, v22, a14, a15);
    }

    v85 = v15;
    v47 = *(a13 + 176);
    v46 = *(a13 + 184);
    if (v112[0] * v46)
    {
      v146 = BrotliAllocate(a1);
      result = BrotliAllocate(a1);
    }

    else
    {
      result = 0;
      v146 = 0;
    }

    v147 = result;
    v48 = *(a1 + 24);
    v91 = a1;
    if (v46 && !v48)
    {
      for (i = 0; i != v46; ++i)
      {
        result = BuildAndStoreHuffmanTree(v47, v112[0], 256, v22, (v146 + v112[0] * i), v147 + 2 * v112[0] * i, a14, a15);
        v47 += 1040;
      }

      a1 = v91;
      v48 = *(v91 + 24);
    }

    if (!v48)
    {
      v51 = *(a13 + 192);
      v50 = *(a13 + 200);
      if (v104[0] * v50)
      {
        v110 = BrotliAllocate(a1);
        result = BrotliAllocate(a1);
        v52 = *(a1 + 24);
      }

      else
      {
        v52 = 0;
        result = 0;
        v110 = 0;
      }

      v111 = result;
      if (v50 && !v52)
      {
        for (j = 0; j != v50; ++j)
        {
          result = BuildAndStoreHuffmanTree(v51, v104[0], 704, v22, (v110 + v104[0] * j), v111 + 2 * v104[0] * j, a14, a15);
          v51 += 2832;
        }

        a1 = v91;
        v52 = *(v91 + 24);
      }

      if (!v52)
      {
        result = BuildAndStoreEntropyCodesDistance(a1, &v96, *(a13 + 208), *(a13 + 216), v95, v22, a14, a15);
        if (!*(a1 + 24))
        {
          BrotliFree(a1, v22);
          if (a12)
          {
            v54 = 0;
            v92 = v92;
            v55 = a7;
            do
            {
              v90 = v54;
              v56 = (a11 + 16 * v54);
              v57 = *v56;
              v58 = v56[1];
              v86 = *(v56 + 7);
              v87 = v56[2];
              v88 = *(v56 + 6);
              StoreSymbol(v104, v88, v19, a15);
              LOWORD(v59) = v57;
              if (v57 >= 6)
              {
                if (v57 > 0x81)
                {
                  if (v57 > 0x841)
                  {
                    v61 = 22;
                    if (v57 >= 0x5842)
                    {
                      v61 = 23;
                    }

                    LOWORD(v59) = 21;
                    if (v57 >> 1 >= 0xC21)
                    {
                      LOWORD(v59) = v61;
                    }
                  }

                  else
                  {
                    LODWORD(v59) = (__clz(v57 - 66) ^ 0x1F) + 10;
                  }
                }

                else
                {
                  v60 = (__clz(v57 - 2) ^ 0x1F) - 1;
                  v59 = ((v57 - 2) >> v60) + 2 * v60 + 2;
                }
              }

              v89 = v58 & 0x1FFFFFF;
              v62 = (v58 & 0x1FFFFFF) + (HIBYTE(v58) & 0x80 | (v58 >> 25));
              if (v62 > 9)
              {
                v64 = a5;
                if (v62 > 0x85)
                {
                  LODWORD(v63) = (__clz(v62 - 70) ^ 0x1F) + 12;
                  if (v62 > 0x845)
                  {
                    LOWORD(v63) = 23;
                  }
                }

                else
                {
                  v65 = (__clz(v62 - 6) ^ 0x1F) - 1;
                  v63 = ((v62 - 6) >> v65) + 2 * v65 + 4;
                }
              }

              else
              {
                LOWORD(v63) = v58 + (HIBYTE(v58) & 0x80 | (v58 >> 25)) - 2;
                v64 = a5;
              }

              v66 = 4 * v59;
              v67 = *(&kBrotliInsExtra + v66);
              v68 = 4 * v63;
              v69 = ((v62 - *(&kBrotliCopyBase + v68)) << v67) | (v57 - *(&kBrotliInsBase + v66));
              v70 = (*(&kBrotliCopyExtra + v68) + v67);
              v71 = *v19;
              *(a15 + (*v19 >> 3)) = (v69 << (*v19 & 7)) | *(a15 + (*v19 >> 3));
              *v19 = v71 + v70;
              if (v23[19])
              {
                v72 = v64;
                v73 = v55;
                v74 = v23;
                v75 = v92;
                if (v57)
                {
                  do
                  {
                    v73 = v75;
                    v76 = _kBrotliContextLookupTable[512 * a10 + 256 + v55] | _kBrotliContextLookupTable[512 * a10 + v75];
                    v75 = *(a2 + (a3 & v72));
                    StoreSymbolWithContext(v112, v75, v76, v23[18], a14, a15, 6);
                    ++a3;
                    v55 = v73;
                    --v57;
                  }

                  while (v57);
                }
              }

              else
              {
                if (v57)
                {
                  do
                  {
                    StoreSymbol(v112, *(a2 + (a3++ & v64)), v19, a15);
                    --v57;
                  }

                  while (v57);
                }

                v73 = v55;
                v74 = v23;
                v75 = v92;
              }

              v92 = v75;
              a3 += v89;
              a1 = v91;
              v23 = v74;
              v19 = a14;
              if (v89)
              {
                v73 = *(a2 + ((a3 - 2) & a5));
                v92 = *(a2 + ((a3 - 1) & a5));
                if (v88 >= 0x80)
                {
                  if (v23[21])
                  {
                    v77 = v88 >> 6;
                    if ((v88 & 7u) >= 3)
                    {
                      v78 = 3;
                    }

                    else
                    {
                      v78 = v88 & 7;
                    }

                    if (v77 == 4 || v77 == 2 || v77 == 7)
                    {
                      v81 = v78;
                    }

                    else
                    {
                      v81 = 3;
                    }

                    v82 = v86;
                    StoreSymbolWithContext(&v96, v86 & 0x3FF, v81, v23[20], a14, a15, 2);
                  }

                  else
                  {
                    v82 = v86;
                    StoreSymbol(&v96, v86 & 0x3FF, a14, a15);
                  }

                  v83 = *a14;
                  *(a15 + (*a14 >> 3)) = (v87 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
                  *a14 = v83 + (v82 >> 10);
                }
              }

              v54 = v90 + 1;
              v55 = v73;
            }

            while (v90 + 1 != a12);
          }

          BrotliFree(a1, v102);
          v102 = 0;
          BrotliFree(a1, v103);
          v103 = 0;
          BrotliFree(a1, v110);
          v110 = 0;
          BrotliFree(a1, v111);
          v111 = 0;
          BrotliFree(a1, v146);
          v146 = 0;
          result = BrotliFree(a1, v147);
          if (v85)
          {
            v84 = *v19 + 7;
            *v19 = v84 & 0xFFFFFFF8;
            *(a15 + (v84 >> 3)) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t StoreCompressedMetaBlockHeader(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(a4 + (*a3 >> 3)) = (result << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  v5 = v4 + 1;
  *a3 = v4 + 1;
  if (result)
  {
    *(a4 + (v5 >> 3)) = *(a4 + (v5 >> 3));
    *a3 = v4 + 2;
    if (a2 == 1 || (v6 = __clz(a2 - 1) ^ 0x1F, v6 <= 0xE))
    {
      v7 = 4;
    }

    else
    {
      v7 = (v6 + 4) >> 2;
    }

    *(a4 + ((v4 + 2) >> 3)) = ((v7 - 4) << ((v4 + 2) & 7)) | *(a4 + ((v4 + 2) >> 3));
    v10 = v4 + 4;
    *a3 = v10;
    *(a4 + (v10 >> 3)) = ((a2 - 1) << (v10 & 7)) | *(a4 + (v10 >> 3));
    v11 = v10 + 4 * v7;
  }

  else
  {
    if (a2 == 1 || (v8 = __clz(a2 - 1) ^ 0x1F, v8 <= 0xE))
    {
      v9 = 4;
    }

    else
    {
      v9 = (v8 + 4) >> 2;
    }

    *(a4 + (v5 >> 3)) = ((v9 - 4) << (v5 & 7)) | *(a4 + (v5 >> 3));
    v12 = v4 + 3;
    *a3 = v12;
    *(a4 + (v12 >> 3)) = ((a2 - 1) << (v12 & 7)) | *(a4 + (v12 >> 3));
    v13 = v12 + 4 * v9;
    *a3 = v13;
    *(a4 + (v13 >> 3)) = *(a4 + (v13 >> 3));
    v11 = v13 + 1;
  }

  *a3 = v11;
  return result;
}

unint64_t BuildAndStoreBlockSwitchEntropyCodes(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  bzero(v40, 4 * (v9 + 2));
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v10[v11];
      if (v11)
      {
        if (v12 == v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14 + 2;
        }

        if (v13 + 1 == v14)
        {
          v15 = 1;
        }

        ++v40[v15];
      }

      v16 = v7[v11];
      if (v16 <= 0x2F0)
      {
        v17 = 14;
      }

      else
      {
        v17 = 20;
      }

      if (v16 <= 0x28)
      {
        v18 = 0;
      }

      else
      {
        v18 = 7;
      }

      if (v16 <= 0xB0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v20 = (&_kBrotliPrefixCodeRanges + 4 * v19 + 4);
      do
      {
        v21 = v19;
        if (v19 == 25)
        {
          break;
        }

        ++v19;
        v22 = *v20;
        v20 += 2;
      }

      while (v16 >= v22);
      ++*(v38 + v21);
      ++v11;
      v12 = v13;
      v13 = v14;
    }

    while (v11 != v8);
  }

  result = StoreVarLenUint8(v9 - 1, a3, a4);
  if (v9 >= 2)
  {
    BuildAndStoreHuffmanTree(v40, v9 + 2, v9 + 2, a2, (a1 + 56), a1 + 314, a3, a4);
    result = BuildAndStoreHuffmanTree(v38, 0x1AuLL, 26, a2, (a1 + 830), a1 + 856, a3, a4);
    v24 = *v7;
    v25 = *(a1 + 40);
    *(a1 + 40) = *v10;
    *(a1 + 48) = v25;
    v26 = 14;
    if (v24 > 0x2F0)
    {
      v26 = 20;
    }

    v27 = 7;
    if (v24 <= 0x28)
    {
      v27 = 0;
    }

    if (v24 <= 0xB0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = (&_kBrotliPrefixCodeRanges + 4 * v28 + 4);
    do
    {
      v30 = v28;
      if (v28 == 25)
      {
        break;
      }

      ++v28;
      v31 = *v29;
      v29 += 2;
    }

    while (v24 >= v31);
    v32 = (&_kBrotliPrefixCodeRanges + 4 * v30);
    v33 = *(v32 + 2);
    v34 = *(a1 + 830 + v30);
    v35 = *a3;
    v36 = v24 - *v32;
    *(a4 + (*a3 >> 3)) = (*(a1 + 856 + 2 * v30) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    *a3 = v35 + v34;
    *(a4 + ((v35 + v34) >> 3)) = (v36 << ((v35 + v34) & 7)) | *(a4 + ((v35 + v34) >> 3));
    *a3 = v35 + v34 + v33;
  }

  return result;
}

uint64_t StoreTrivialContextMap(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v26 = *MEMORY[0x29EDCA608];
  result = StoreVarLenUint8(a1 - 1, a4, a5);
  if (a1 >= 2)
  {
    v11 = a2 - 1;
    v12 = a2 - 1 + a1;
    bzero(v25, 4 * v12);
    v13 = *a4;
    *(a5 + (*a4 >> 3)) = (1 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
    *a4 = v13 + 1;
    *(a5 + ((v13 + 1) >> 3)) = ((a2 - 2) << ((v13 + 1) & 7)) | *(a5 + ((v13 + 1) >> 3));
    *a4 = v13 + 5;
    v25[a2 - 1] = a1;
    v25[0] = 1;
    if (v12 > a2)
    {
      memset_pattern16(&v25[a2], &unk_29864E3A0, 4 * a1 - 4);
    }

    BuildAndStoreHuffmanTree(v25, a2 - 1 + a1, a2 - 1 + a1, a3, v24, v23, a4, a5);
    v14 = 0;
    v15 = v24[v11];
    v16 = v23[v11];
    v17 = a2 - 1;
    v18 = *a4;
    do
    {
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = v24[v19];
      result = v18 & 7;
      *(a5 + (v18 >> 3)) = (v23[v19] << (v18 & 7)) | *(a5 + (v18 >> 3));
      v21 = v18 + v20;
      *a4 = v21;
      *(a5 + (v21 >> 3)) = (v16 << (v21 & 7)) | *(a5 + (v21 >> 3));
      v22 = v21 + v15;
      *a4 = v21 + v15;
      *(a5 + ((v21 + v15) >> 3)) = (~(-1 << (a2 - 1)) << ((v21 + v15) & 7)) | *(a5 + ((v21 + v15) >> 3));
      v18 = v22 + v11;
      *a4 = v22 + v11;
      --v14;
      ++v17;
    }

    while (-a1 != v14);
    *(a5 + (v18 >> 3)) = (1 << (v18 & 7)) | *(a5 + (v18 >> 3));
    *a4 = v22 + a2;
  }

  return result;
}

uint64_t EncodeContextMap(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *&v72[1087] = *MEMORY[0x29EDCA608];
  result = StoreVarLenUint8(a4 - 1, a6, a7);
  if (a4 == 1)
  {
    return result;
  }

  result = BrotliAllocate(a1);
  if (*(a1 + 24))
  {
    return result;
  }

  v15 = result;
  v16 = *a2;
  if (a3 >= 2)
  {
    v17 = a3 - 1;
    v18 = a2 + 1;
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 > v16)
      {
        v16 = v19;
      }

      --v17;
    }

    while (v17);
  }

  v21 = 0;
  v22 = xmmword_29867D850;
  v23 = xmmword_29867D860;
  v24 = xmmword_29867D870;
  v25 = xmmword_29867D880;
  v26 = xmmword_29862E060;
  v27 = xmmword_29862E070;
  v28 = xmmword_29862D9C0;
  v29 = vdupq_n_s64(v16);
  v30 = xmmword_29862D9D0;
  v31 = vdupq_n_s64(0x10uLL);
  do
  {
    v32 = vmovn_s64(vcgeq_u64(v29, v30));
    if (vuzp1_s8(vuzp1_s16(v32, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 - 1] = v21;
    }

    if (vuzp1_s8(vuzp1_s16(v32, *&v22), *&v22).i8[1])
    {
      v72[v21] = v21 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v28))), *&v22).i8[2])
    {
      v72[v21 + 1] = v21 | 2;
      v72[v21 + 2] = v21 | 3;
    }

    v33 = vmovn_s64(vcgeq_u64(v29, v27));
    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i32[1])
    {
      v72[v21 + 3] = v21 | 4;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i8[5])
    {
      v72[v21 + 4] = v21 | 5;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v26)))).i8[6])
    {
      v72[v21 + 5] = v21 | 6;
      v72[v21 + 6] = v21 | 7;
    }

    v34 = vmovn_s64(vcgeq_u64(v29, v25));
    if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 + 7] = v21 | 8;
    }

    if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
    {
      v72[v21 + 8] = v21 | 9;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v24))), *&v22).i8[2])
    {
      v72[v21 + 9] = v21 | 0xA;
      v72[v21 + 10] = v21 | 0xB;
    }

    v35 = vmovn_s64(vcgeq_u64(v29, v23));
    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
    {
      v72[v21 + 11] = v21 | 0xC;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
    {
      v72[v21 + 12] = v21 | 0xD;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v22)))).i8[6])
    {
      v72[v21 + 13] = v21 | 0xE;
      v72[v21 + 14] = v21 | 0xF;
    }

    v27 = vaddq_s64(v27, v31);
    v21 += 16;
    v28 = vaddq_s64(v28, v31);
    v30 = vaddq_s64(v30, v31);
    v26 = vaddq_s64(v26, v31);
    v25 = vaddq_s64(v25, v31);
    v24 = vaddq_s64(v24, v31);
    v23 = vaddq_s64(v23, v31);
    v22 = vaddq_s64(v22, v31);
  }

  while (((v16 + 16) & 0x1FFFFFFF0) != v21);
  v68 = a5;
  if (!a3)
  {
    goto LABEL_68;
  }

  v36 = 0;
  v37 = v16 + 1;
  LOBYTE(v38) = __src;
  do
  {
    if (v37)
    {
      v39 = 0;
      v38 = LOBYTE(a2[v36]);
      while (v72[v39 - 1] != v38)
      {
        if (v37 == ++v39)
        {
          *(v15 + 4 * v36) = v37;
          LOBYTE(v38) = v72[v37 - 1];
          v39 = v37;
          goto LABEL_43;
        }
      }

      *(v15 + 4 * v36) = v39;
      if (!v39)
      {
        goto LABEL_44;
      }

LABEL_43:
      memmove(v72, &__src, v39);
    }

    else
    {
      *(v15 + 4 * v36) = 0;
    }

LABEL_44:
    __src = v38;
    ++v36;
  }

  while (v36 != a3);
  v40 = 0;
  v41 = 0;
  do
  {
    if (a3 <= v41 + 1)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = a3;
    }

    v43 = (v15 + 4 * v41);
    while (*(v15 + 4 * v41))
    {
      ++v41;
      ++v43;
      if (v42 == v41)
      {
        v47 = 0;
LABEL_64:
        if (v47 > v40)
        {
          v40 = v47;
        }

        goto LABEL_66;
      }
    }

    if (a3 <= v41)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      while (!*v43++)
      {
        if (v41 - a3 == --v44)
        {
          v47 = a3 - v41;
          goto LABEL_64;
        }
      }

      v41 -= v44;
      v46 = -v44;
    }

    if (v46 > v40)
    {
      v40 = v46;
    }
  }

  while (v41 < a3);
LABEL_66:
  if (v40)
  {
    v48 = __clz(v40) ^ 0x1F;
  }

  else
  {
LABEL_68:
    v48 = 0;
  }

  if (v48 >= 6)
  {
    v49 = 6;
  }

  else
  {
    v49 = v48;
  }

  if (!a3)
  {
    bzero(&__src, 0x440uLL);
    v50 = 0;
LABEL_96:
    v58 = 1;
    goto LABEL_97;
  }

  v50 = 0;
  v51 = 0;
  v52 = 2 << v49;
  do
  {
    v53 = *(v15 + 4 * v51);
    if (v53)
    {
      *(v15 + 4 * v50) = v53 + v49;
      ++v51;
LABEL_76:
      ++v50;
      continue;
    }

    if (v51 + 1 >= a3)
    {
      v54 = 1;
      ++v51;
      goto LABEL_87;
    }

    v54 = a3 - v51;
    v55 = 1;
    while (!*(v15 + 4 * v51 + 4 * v55))
    {
      if (a3 - v51 == ++v55)
      {
        goto LABEL_86;
      }
    }

    v54 = v55;
LABEL_86:
    v51 += v54;
    if (v54)
    {
LABEL_87:
      while (1)
      {
        v56 = v54 - v52;
        if (v54 < v52)
        {
          break;
        }

        *(v15 + 4 * v50++) = v49 | (~(-1 << v49) << 9);
        v54 = v56 + 1;
        if (v56 == -1)
        {
          goto LABEL_77;
        }
      }

      v57 = __clz(v54);
      *(v15 + 4 * v50) = v57 ^ 0x1F | (((-1 << (v57 ^ 0x1F)) + v54) << 9);
      goto LABEL_76;
    }

LABEL_77:
    ;
  }

  while (v51 < a3);
  bzero(&__src, 0x440uLL);
  v58 = v50 == 0;
  if (!v50)
  {
    goto LABEL_96;
  }

  for (i = 0; i != v50; ++i)
  {
    v60 = *(v15 + 4 * i) & 0x1FF;
    ++*&v72[4 * v60 - 1];
  }

LABEL_97:
  v61 = *a6;
  *(a7 + (*a6 >> 3)) = ((v48 != 0) << (*a6 & 7)) | *(a7 + (*a6 >> 3));
  *a6 = v61 + 1;
  if (v48)
  {
    *(a7 + ((v61 + 1) >> 3)) = ((v49 - 1) << ((v61 + 1) & 7)) | *(a7 + ((v61 + 1) >> 3));
    *a6 = v61 + 5;
  }

  BuildAndStoreHuffmanTree(&__src, a4 + v49, a4 + v49, v68, v70, v69, a6, a7);
  v62 = *a6;
  if (!v58)
  {
    v63 = v15;
    do
    {
      v65 = *v63++;
      v64 = v65;
      v66 = v65 & 0x1FF;
      v67 = v70[v66];
      *(a7 + (v62 >> 3)) = (v69[v66] << (v62 & 7)) | *(a7 + (v62 >> 3));
      v62 += v67;
      *a6 = v62;
      if (v66 - 1 < v49)
      {
        *(a7 + (v62 >> 3)) = (v64 >> 9 << (v62 & 7)) | *(a7 + (v62 >> 3));
        v62 += v66;
        *a6 = v62;
      }

      --v50;
    }

    while (v50);
  }

  *(a7 + (v62 >> 3)) = (1 << (v62 & 7)) | *(a7 + (v62 >> 3));
  *a6 = v62 + 1;
  return BrotliFree(a1, v15);
}

unint64_t BuildAndStoreEntropyCodesDistance(uint64_t a1, size_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (*a2 * a4)
  {
    a2[117] = BrotliAllocate(a1);
    result = BrotliAllocate(a1);
  }

  else
  {
    result = 0;
    a2[117] = 0;
  }

  a2[118] = result;
  if (!*(a1 + 24) && a4)
  {
    v17 = 0;
    do
    {
      result = BuildAndStoreHuffmanTree(a3, *a2, a5, a6, (a2[117] + *a2 * v17), a2[118] + 2 * *a2 * v17, a7, a8);
      ++v17;
      a3 += 2192;
    }

    while (a4 != v17);
  }

  return result;
}

void *StoreSymbol(void *result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = result[115];
  if (!v4)
  {
    v5 = result[114] + 1;
    result[114] = v5;
    v6 = *(result[3] + 4 * v5);
    v7 = *(result[2] + v5);
    result[115] = v6;
    result[116] = *result * v7;
    v8 = result[5];
    if (v8 + 1 == v7)
    {
      v9 = 1;
    }

    else if (result[6] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 + 2;
    }

    result[5] = v7;
    result[6] = v8;
    v10 = *(result + v9 + 56);
    v11 = *(result + v9 + 157);
    v12 = *a3;
    *(a4 + (*a3 >> 3)) = (v11 << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    v13 = v12 + v10;
    *a3 = v13;
    v14 = 14;
    if (v6 > 0x2F0)
    {
      v14 = 20;
    }

    v15 = 7;
    if (v6 <= 0x28)
    {
      v15 = 0;
    }

    if (v6 <= 0xB0)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = (&_kBrotliPrefixCodeRanges + 4 * v16 + 4);
    do
    {
      v18 = v16;
      if (v16 == 25)
      {
        break;
      }

      ++v16;
      v19 = *v17;
      v17 += 2;
    }

    while (v6 >= v19);
    v20 = (&_kBrotliPrefixCodeRanges + 4 * v18);
    v21 = *(v20 + 2);
    v22 = v6 - *v20;
    v23 = *(result + v18 + 830);
    *(a4 + (v13 >> 3)) = (*(result + v18 + 428) << (v13 & 7)) | *(a4 + (v13 >> 3));
    v24 = v13 + v23;
    *a3 = v24;
    *(a4 + (v24 >> 3)) = (v22 << (v24 & 7)) | *(a4 + (v24 >> 3));
    *a3 = v24 + v21;
    v4 = result[115];
  }

  result[115] = v4 - 1;
  v25 = result[116] + a2;
  v26 = *(result[117] + v25);
  v27 = *a3;
  *(a4 + (*a3 >> 3)) = (*(result[118] + 2 * v25) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  *a3 = v27 + v26;
  return result;
}

void *StoreSymbolWithContext(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, char a7)
{
  v7 = result[115];
  if (!v7)
  {
    v8 = result[114] + 1;
    result[114] = v8;
    v9 = *(result[3] + 4 * v8);
    v10 = *(result[2] + v8);
    result[115] = v9;
    result[116] = v10 << a7;
    v11 = result[5];
    if (v11 + 1 == v10)
    {
      v12 = 1;
    }

    else if (result[6] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + 2;
    }

    result[5] = v10;
    result[6] = v11;
    v13 = *(result + v12 + 56);
    v14 = *(result + v12 + 157);
    v15 = *a5;
    *(a6 + (*a5 >> 3)) = (v14 << (*a5 & 7)) | *(a6 + (*a5 >> 3));
    v16 = v15 + v13;
    *a5 = v16;
    v17 = 14;
    if (v9 > 0x2F0)
    {
      v17 = 20;
    }

    v18 = 7;
    if (v9 <= 0x28)
    {
      v18 = 0;
    }

    if (v9 <= 0xB0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = (&_kBrotliPrefixCodeRanges + 4 * v19 + 4);
    do
    {
      v21 = v19;
      if (v19 == 25)
      {
        break;
      }

      ++v19;
      v22 = *v20;
      v20 += 2;
    }

    while (v9 >= v22);
    v23 = (&_kBrotliPrefixCodeRanges + 4 * v21);
    v24 = *(v23 + 2);
    v25 = v9 - *v23;
    v26 = *(result + v21 + 830);
    *(a6 + (v16 >> 3)) = (*(result + v21 + 428) << (v16 & 7)) | *(a6 + (v16 >> 3));
    v27 = v16 + v26;
    *a5 = v27;
    *(a6 + (v27 >> 3)) = (v25 << (v27 & 7)) | *(a6 + (v27 >> 3));
    *a5 = v27 + v24;
    v7 = result[115];
  }

  result[115] = v7 - 1;
  v28 = a2 + *result * *(a4 + 4 * result[116] + 4 * a3);
  v29 = *(result[117] + v28);
  v30 = *a5;
  *(a6 + (*a5 >> 3)) = (*(result[118] + 2 * v28) << (*a5 & 7)) | *(a6 + (*a5 >> 3));
  *a5 = v30 + v29;
  return result;
}