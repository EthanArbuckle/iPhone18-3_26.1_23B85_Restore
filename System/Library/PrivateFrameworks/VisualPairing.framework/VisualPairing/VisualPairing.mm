uint64_t col_loop2b(const char *a1, uint64_t a2, uint8x16_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  do
  {
    v11 = vld2q_s8(a1);
    a1 += 32;
    v12 = vld2q_s8(a7);
    a7 += 32;
    *a3++ = vhaddq_u8(vhaddq_u8(v11.val[0], v12.val[0]), vhaddq_u8(v11.val[1], v12.val[1]));
  }

  while (v8-- > 1);
  result = &a1[2 * a2 + -32 * a6];
  if (v7 > 1)
  {
    return row_loop2b(result);
  }

  return result;
}

uint64_t col_loop3@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, const char *a8@<X7>, uint64_t a9@<X8>)
{
  do
  {
    v18 = vld3_s8(a1);
    a1 += 24;
    v19 = vld3_s8(a7);
    a7 += 24;
    v20 = vld3_s8(a8);
    a8 += 24;
    *a3++ = vmovn_s16(vqdmulhq_s16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(v18.val[0], v18.val[1]), v18.val[2]), v19.val[0]), v19.val[1]), v19.val[2]), v20.val[0]), v20.val[1]), v20.val[2]), v12));
  }

  while (v11-- > 1);
  result = &a1[a9];
  v15 = &a7[a9];
  v16 = &a8[a9];
  v17 = a3 + v9;
  if (v10 > 1)
  {
    return row_loop3(result, a2, v17, a4, a5, a6, v15, v16);
  }

  return result;
}

uint64_t col_loop4@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, const char *a8@<X7>, const char *a9@<X8>)
{
  do
  {
    v18 = vld2q_s8(a1);
    a1 += 32;
    v19 = vld2q_s8(a7);
    a7 += 32;
    v20 = vld2q_s8(a8);
    a8 += 32;
    v21 = vld2q_s8(a9);
    a9 += 32;
    *a3++ = vrshrn_n_s16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v18.val[0]), v18.val[1]), v19.val[0]), v19.val[1]), v20.val[0]), v20.val[1]), v21.val[0]), v21.val[1]), 4uLL);
  }

  while (v12-- > 1);
  result = &a1[v9];
  v15 = &a7[v9];
  v16 = &a8[v9];
  v17 = a3 + v10;
  if (v11 > 1)
  {
    return row_loop4(result, a2, v17, a4, a5, a6, v15, v16);
  }

  return result;
}

uint64_t col_loop5@<X0>(uint8x16_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  do
  {
    v10 = *a1;
    v9 = (a1 + a2);
    v12 = *v9;
    v11 = (v9 + a2);
    v14 = *v11;
    v13 = (v11 + a2);
    v16 = *v13;
    v15 = (v13 + a2);
    v17 = *v15;
    a1 = (v15 + a4);
    v18 = vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(*v10.i8, *v12.i8), *v14.i8), *v16.i8), *v17.i8);
    v19 = vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v10, v12), v14), v16), v17);
    v20 = vandq_s8(v18, v8);
    v20.i16[0] = vaddvq_s16(v20);
    *a3 = vmovn_s16(vqdmulhq_s16(v20, v7)).u8[0];
    v21 = a3 + 1;
    v22 = vandq_s8(vextq_s8(v18, v19, 0xAuLL), v8);
    v22.i16[0] = vaddvq_s16(v22);
    *v21++ = vmovn_s16(vqdmulhq_s16(v22, v7)).u8[0];
    v23 = vandq_s8(vextq_s8(v19, v19, 4uLL), v8);
    v23.i16[0] = vaddvq_s16(v23);
    *v21 = vmovn_s16(vqdmulhq_s16(v23, v7)).u8[0];
    a3 = v21 + 1;
  }

  while (v6-- > 1);
  result = a1->i64 + a5;
  if (v5 > 1)
  {
    return row_loop5(result);
  }

  return result;
}

uint64_t col_loop6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const char *a6@<X6>, int8x8_t *a7@<X8>, int16x8_t a8@<Q7>)
{
  do
  {
    v9 = a6;
    v18 = vld3q_s8(v9);
    v10 = &v9[a2];
    v21 = vld3q_s8(v10);
    v11 = &v10[a2];
    v12 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v18.val[0]), v18.val[1]), v18.val[2]), v21.val[0]), v21.val[1]), v21.val[2]);
    v19 = vld3q_s8(v11);
    v13 = &v11[a2];
    v22 = vld3q_s8(v13);
    v14 = &v13[a2];
    v15 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(v12, v19.val[0]), v19.val[1]), v19.val[2]), v22.val[0]), v22.val[1]), v22.val[2]);
    v20 = vld3q_s8(v14);
    v16 = &v14[a2];
    v23 = vld3q_s8(v16);
    *a7++ = vmovn_s16(vqdmulhq_s16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(v15, v20.val[0]), v20.val[1]), v20.val[2]), v23.val[0]), v23.val[1]), v23.val[2]), a8));
    a6 += 48;
  }

  while (v8-- > 1);
  if (a5 > 1)
  {
    return row_loop6(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t convertUV_col_loop@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const char *a6@<X6>, int8x16_t *a7@<X7>, uint64_t a8@<X8>, int16x8_t a9@<Q0>, int16x8_t a10@<Q1>, int16x8_t a11@<Q2>)
{
  do
  {
    v12 = vld2q_s8(a6);
    a6 += 32;
    *a7++ = vqshrun_high_n_s16(vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vshll_n_u8(*v12.val[0].i8, 6uLL), a9), a11), vqdmulhq_s16(vshll_n_u8(*v12.val[1].i8, 6uLL), a10)), 6uLL), vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vshll_high_n_u8(v12.val[0], 6uLL), a9), a11), vqdmulhq_s16(vshll_high_n_u8(v12.val[1], 6uLL), a10)), 6uLL);
  }

  while (a8-- > 1);
  if (a5 > 1)
  {
    return convertUV_row_loop(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t convertUV_2x2_col_loop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int16x8_t a6, int16x8_t a7, int16x8_t a8, uint64_t a9, const char *a10, const char *a11)
{
  do
  {
    v14 = vld2q_s8(a10);
    a10 += 32;
    v15 = vld2q_s8(a11);
    a11 += 32;
    *v11++ = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpaddlq_u8(v14.val[1]), v15.val[1]), 3uLL), a7), a8), vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpaddlq_u8(v14.val[0]), v15.val[0]), 3uLL), a6)), 3uLL);
  }

  while (v12-- > 1);
  if (a5 > 1)
  {
    return convertUV_2x2_row_loop(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t convertUV_3x3_col_loop@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const __int16 *a6@<X6>, const __int16 *a7@<X7>, const __int16 *a8@<X8>, int16x8_t a9@<Q0>, int16x8_t a10@<Q1>, int16x8_t a11@<Q2>)
{
  do
  {
    v16 = vld3q_s16(a6);
    a6 += 24;
    v17 = vld3q_s16(a7);
    a7 += 24;
    v18 = vld3q_s16(a8);
    a8 += 24;
    v13 = vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(*v16.val[0].i8, *v16.val[1].i8), *v16.val[2].i8), *v17.val[0].i8), *v17.val[1].i8), *v17.val[2].i8), *v18.val[0].i8), *v18.val[1].i8), *v18.val[2].i8);
    v14 = vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v16.val[0], v16.val[1]), v16.val[2]), v17.val[0]), v17.val[1]), v17.val[2]), v18.val[0]), v18.val[1]), v18.val[2]);
    *v11++ = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vqshlq_n_u16(vuzp2q_s16(v13, v14), 3uLL), a10), a11), vqdmulhq_s16(vqshlq_n_u16(vuzp1q_s16(v13, v14), 3uLL), a9)), 3uLL);
  }

  while (v12-- > 1);
  if (a5 > 1)
  {
    return convertUV_3x3_row_loop(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t convertUV_4x4_col_loop@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, const char *a4@<X6>, const char *a5@<X7>, const char *a6@<X8>, int16x8_t a7@<Q0>, int16x8_t a8@<Q1>, int16x8_t a9@<Q2>)
{
  do
  {
    v19 = vld4q_s8(a4);
    a4 += 64;
    v12 = vpadalq_u8(vpaddlq_u8(v19.val[0]), v19.val[2]);
    v13 = vpadalq_u8(vpaddlq_u8(v19.val[1]), v19.val[3]);
    v20 = vld4q_s8(a5);
    a5 += 64;
    v14 = vpadalq_u8(vpadalq_u8(v12, v20.val[0]), v20.val[2]);
    v15 = vpadalq_u8(vpadalq_u8(v13, v20.val[1]), v20.val[3]);
    v21 = vld4q_s8(a6);
    a6 += 64;
    v16 = vpadalq_u8(vpadalq_u8(v14, v21.val[0]), v21.val[2]);
    v17 = vpadalq_u8(vpadalq_u8(v15, v21.val[1]), v21.val[3]);
    v22 = vld4q_s8(v9);
    v9 += 64;
    *v10++ = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpadalq_u8(v17, v22.val[1]), v22.val[3]), 2uLL), a8), a9), vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpadalq_u8(v16, v22.val[0]), v22.val[2]), 2uLL), a7)), 6uLL);
  }

  while (v11-- > 1);
  if (a3 > 1)
  {
    return convertUV_4x4_row_loop(a1, a2);
  }

  return a1;
}

uint64_t VPCreateWatermarkPixelBuffers(char *__s, size_t a2, int a3, int a4, CFIndex capacity, uint64_t a6, int *a7)
{
  v31 = a6;
  v9 = a2;
  v35 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  if (a2 == -1)
  {
    v9 = strlen(__s);
  }

  if (v9 > 0x6E)
  {
    v25 = -6743;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x277CBF128]);
    if (Mutable)
    {
      v12 = Mutable;
      poolOut = 0;
      v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v13)
      {
        p_src = &__src;
        v14 = *MEMORY[0x277CC4E30];
        CFDictionarySetInt64();
        v15 = *MEMORY[0x277CC4EC8];
        CFDictionarySetInt64();
        v16 = *MEMORY[0x277CC4DD8];
        CFDictionarySetInt64();
        v17 = *MEMORY[0x277CC4D60];
        CFDictionarySetInt64();
        CFDictionarySetValue(v13, *MEMORY[0x277CC4E18], *MEMORY[0x277CBED28]);
        v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v18)
        {
          v19 = v18;
          __src = __s;
          v29 = a7;
          CFDictionarySetValue(v13, *MEMORY[0x277CC4DE8], v18);
          v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v20)
          {
            v21 = v20;
            v22 = *MEMORY[0x277CC4E50];
            CFDictionarySetInt64();
            v23 = CVPixelBufferPoolCreate(0, v21, v13, &poolOut);
            v24 = poolOut;
            if (v23)
            {
              v25 = v23;
              if (poolOut)
              {
                CFRelease(poolOut);
                v24 = 0;
              }
            }

            else if (poolOut)
            {
              v25 = 0;
              poolOut = 0;
            }

            else
            {
              v25 = -6700;
            }

            CFRelease(v21);
          }

          else
          {
            v24 = 0;
            v25 = -6728;
          }

          CFRelease(v19);
          CFRelease(v13);
          if (v24)
          {
            memcpy(__dst, __src, v9);
            bzero(&__dst[v9], 110 - v9);
            startEmbed();
          }

          if (!v25)
          {
            v25 = -6700;
          }

          a7 = v29;
        }

        else
        {
          CFRelease(v13);
          v25 = -6728;
        }
      }

      else
      {
        v25 = -6728;
      }

      CFRelease(v12);
    }

    else
    {
      v25 = -6728;
    }
  }

  if (a7)
  {
    *a7 = v25;
  }

  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CachedGrayBlockConfig::CachedGrayBlockConfig(uint64_t result, __int16 a2, __int16 a3, int a4, int a5, __int16 a6, uint64_t a7)
{
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *result = &unk_288155F60;
  *(result + 8) = a7;
  *(result + 40) = 0;
  *(result + 42) = a6;
  *(result + 240) = 0;
  *(result + 248) = a3;
  *(result + 250) = a2;
  *(result + 252) = a4 * a3;
  *(result + 256) = a4;
  if (a5)
  {
    *(result + 252) = a5;
  }

  for (i = 0; i != 192; i += 48)
  {
    v8 = result + i;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0uLL;
    *(v8 + 72) = 0uLL;
    *(v8 + 88) = 0;
    *(v8 + 92) = a4;
  }

  *(result + 48) = 1;
  return result;
}

void CachedGrayBlockConfig::~CachedGrayBlockConfig(CachedGrayBlockConfig *this)
{
  *this = &unk_288155F60;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 8);
    if (v2)
    {
      MEMORY[0x2743C1740](v2, 0x1000C8077774924);
    }
  }

  for (i = 112; i != 256; i += 48)
  {
    v4 = *(this + i);
    if (v4)
    {
      MEMORY[0x2743C1740](v4, 0x1000C8077774924);
    }
  }

  BlockConfigBase::~BlockConfigBase(this);
}

{
  CachedGrayBlockConfig::~CachedGrayBlockConfig(this);

  JUMPOUT(0x2743C1750);
}

void BlockConfigBase::~BlockConfigBase(BlockConfigBase *this)
{
  *this = &unk_288155FF0;
  v2 = *(this + 8);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 3) + 8 * i);
      if (v4)
      {
        MEMORY[0x2743C1750](v4, 0x1000C403F306F5FLL);
        v2 = *(this + 8);
      }
    }
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x20C8093837F09);
  }
}

uint64_t CachedGrayBlockConfig::bumpSizeToScaleInd(CachedGrayBlockConfig *this, int a2)
{
  if ((a2 - 2) < 3)
  {
    return (a2 - 2) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CachedGrayBlockConfig::downsampleAndPadd(CachedGrayBlockConfig *this, int a2)
{
  if (*(this + 16) != 1)
  {
    return 5;
  }

  v3 = *(this + 30);
  if (!v3)
  {
    return 3;
  }

  if (a2 > 3)
  {
    return 2;
  }

  v6 = *(this + 20);
  v5 = *(this + 21);
  v7 = *(this + 7);
  v8 = this + 48 * a2 + 48;
  v9 = *(this + 22);
  v10 = *(this + 23);
  *(v8 + 11) = v10;
  if (a2 <= 1)
  {
    if (!a2)
    {
      result = 0;
      v11 = *(this + 125);
      v12 = *(this + 124);
      *(this + 20) = v11;
      *(this + 21) = v12;
      *(this + 18) = v11;
      *(this + 19) = v12;
      v13 = *(this + 126);
      *(this + 7) = v3;
      *(this + 8) = v3;
      v14 = *(this + 64);
      *(this + 22) = v13;
      *(this + 23) = v14;
      return result;
    }

    if (!*(v8 + 2))
    {
      *(v8 + 8) = v6 >> 1;
      *(v8 + 9) = v5 >> 1;
      v27 = 2 * *(this + 21);
      *(v8 + 6) = v27 + (v6 >> 1);
      *(v8 + 7) = v27 + (v5 >> 1);
      operator new[]();
    }

    if (!v7)
    {
      return 0;
    }

    v28 = *(v8 + 1);
    v29 = *(v8 + 10);
    v30 = (v6 >> 1);
    v31 = (v5 >> 5);
    v32 = v9;
    v33 = *(v8 + 10);
    result = v7;
    if (v10 == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  if (a2 == 2)
  {
    if (!*(v8 + 2))
    {
      *(v8 + 8) = v6 / 3;
      *(v8 + 9) = v5 / 3;
      v15 = *(this + 21);
      v16 = v5 / 3 + 2 * v15;
      *(v8 + 6) = v6 / 3 + 2 * v15;
      *(v8 + 7) = v16;
      *(v8 + 10) = v16 * v10;
      operator new[]();
    }

    if (!v7)
    {
      return 0;
    }

    if (v10 != 1)
    {
      downsample_3x3_YUV_3Hx24W_G(v7, v9, *(v8 + 1), *(v8 + 20), *(v8 + 16), (*(v8 + 9) >> 3));
      return 0;
    }

    v17 = *(v8 + 8);
    if (v17 < 1)
    {
      return 0;
    }

    v18 = 0;
    while (1)
    {
      v19 = v17 >= 0x64 ? 100 : v17;
      v20 = *(v8 + 1);
      v22 = *(v8 + 9);
      v21 = *(v8 + 10);
      v23 = *(v8 + 10);
      downsample_3x3_3Hx24W_N64();
      v24 = *(this + 1);
      if (v24)
      {
        v25 = *(v24 + 1);
        if (v25)
        {
          v25(*v24);
        }

        v26 = *(v24 + 2);
        if (v26)
        {
          if (*v26)
          {
            break;
          }
        }
      }

      result = 0;
      v17 -= v19;
      v18 += v19;
      if (v17 < 1)
      {
        return result;
      }
    }

    return 9;
  }

  else
  {
    v34 = this + 48 * (*(*this + 72))(this, 2) + 48;
    if (!*(v8 + 2))
    {
      if (!*(v34 + 1))
      {
        (*(*this + 80))(this, 1);
      }

      *(v8 + 8) = v6 >> 2;
      *(v8 + 9) = v5 >> 2;
      v35 = 2 * *(this + 21);
      v36 = v35 + (v6 >> 2);
      v37 = v35 + (v5 >> 2);
      *(v8 + 6) = v36;
      *(v8 + 7) = v37;
      *(v8 + 10) = *(v8 + 11) * v37;
      operator new[]();
    }

    result = *(v34 + 1);
    if (result)
    {
      v38 = *(v34 + 10);
      v28 = *(v8 + 1);
      v39 = *(v8 + 10);
      v30 = (v6 >> 2);
      v31 = (v5 >> 6);
      v32 = *(v34 + 10);
      v33 = *(v8 + 10);
      if (*(v8 + 11) == 1)
      {
LABEL_31:
        downsample_2x2_2Hx32W_N64();
        return 0;
      }

LABEL_38:
      downsample_2x2_YUV_2Hx32W_G(result, v32, v28, v33, v30, v31);
      return 0;
    }
  }

  return result;
}

uint64_t CachedGrayBlockConfig::UpdateImageData(CachedGrayBlockConfig *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  if (*(this + 16) != 1)
  {
    return 5;
  }

  v3 = 0;
  *(this + 30) = a2;
  v4 = this + 48;
  while (1)
  {
    v5 = *v4;
    v4 += 48;
    if (v5 == 1)
    {
      (*(*this + 80))(this, v3);
      v6 = *(this + 1);
      if (v6)
      {
        v7 = *(v6 + 1);
        if (v7)
        {
          v7(*v6);
        }

        v8 = *(v6 + 2);
        if (v8)
        {
          if (*v8)
          {
            break;
          }
        }
      }
    }

    if (++v3 == 4)
    {
      return 0;
    }
  }

  return 9;
}

uint64_t CachedGrayBlockConfig::AddBlock(CachedGrayBlockConfig *this, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    return 2;
  }

  if (*(this + 16) != 1)
  {
    return 5;
  }

  if (a3 * a2 >= *(this + 124) || a4 * a2 >= *(this + 125))
  {
    return 2;
  }

  v5 = (*(*this + 72))(this, a2);
  v6 = this + 48 * v5;
  v6[48] = 1;
  v7 = v6 + 48;
  if (!*(this + 30) || *(v7 + 2) || (result = (*(*this + 80))(this, v5), !result))
  {
    result = BlockConfigBase::resizeBlockConfigArray(this, *(this + 8) + 1);
    if (!result)
    {
      operator new();
    }
  }

  return result;
}

uint64_t BlockConfigBase::resizeBlockConfigArray(BlockConfigBase *this, unsigned int a2)
{
  if (*(this + 9) < a2)
  {
    operator new[]();
  }

  return 0;
}

uint64_t CachedGrayBlockConfig::ExtractBlock1stStage(uint64_t a1, unsigned int a2, void *a3, _WORD *a4, _DWORD *a5)
{
  if (*(a1 + 16) != 1)
  {
    return 5;
  }

  if (!a3)
  {
    return 3;
  }

  if (*(a1 + 32) <= a2)
  {
    return 2;
  }

  v9 = *(*(a1 + 24) + 8 * a2);
  v10 = (*(*a1 + 72))(a1, *v9);
  result = 0;
  v12 = a1 + 48 * v10;
  v13 = *(v12 + 88);
  v14 = *(v12 + 92);
  *a3 = *(v12 + 64) + (*(v9 + 1) + ((*(v12 + 76) - *(v12 + 84)) >> 1) + (*(v9 + 2) + ((*(v12 + 72) - *(v12 + 80)) >> 1) - 64) * v13 - 64) * v14;
  *a4 = v13;
  *a5 = v14;
  return result;
}

uint64_t CachedGrayBlockConfig::ExtractBlockReadStage(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  if (*(a1 + 16) != 1)
  {
    return 5;
  }

  if (!a3)
  {
    return 3;
  }

  if (*(a1 + 32) <= a2)
  {
    return 2;
  }

  v15 = *(*(a1 + 24) + 8 * a2);
  v16 = (*(*a1 + 72))(a1, *v15);
  result = 0;
  v18 = a1 + 48 * v16;
  *a3 = *(v18 + 64);
  *a4 = *(v18 + 72);
  v19 = *(v18 + 76);
  *a5 = v19;
  *a6 = *(v15 + 1) + ((v19 - *(v18 + 84)) >> 1);
  *a7 = *(v15 + 2) + ((*(v18 + 72) - *(v18 + 80)) >> 1);
  *a8 = *(v18 + 92);
  return result;
}

uint64_t BlockConfigBase::Initialize(BlockConfigBase *this)
{
  result = BlockConfigBase::resizeBlockConfigArray(this, 0xAu);
  if (!result)
  {
    *(this + 16) = 1;
  }

  return result;
}

uint64_t BlockConfigBase::GetBlockConfPtr(BlockConfigBase *this, unsigned int a2)
{
  if (*(this + 8) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(this + 3) + 8 * a2);
  }
}

char *CrossCorrInt8_32x32_G(char *result, const signed __int8 *a2, int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = 0;
  *a4 = 0;
  *a5 = 0;
  a3[8] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v6 = a2 + 97;
  do
  {
    v7 = v6;
    v8 = result;
    v9 = 32;
    do
    {
      v11 = *v8++;
      v10 = v11;
      v12 = a3[1];
      *a3 += *(v7 - 48) * v11;
      v13 = a3[2];
      a3[3] += *(v7 - 47) * v11;
      v14 = a3[7];
      a3[6] += *(v7 - 46) * v11;
      a3[1] = v12 + *v7 * v11;
      v15 = *++v7;
      v16 = a3[5];
      a3[4] += v15 * v10;
      a3[7] = v14 + v7[1] * v10;
      a3[2] = v13 + v7[47] * v10;
      a3[5] = v16 + v7[48] * v10;
      a3[8] += v7[49] * v10;
      v17 = *v7;
      *a4 += v10 * v10;
      *a5 += v17 * v17;
      --v9;
    }

    while (v9);
    ++v5;
    result += 32;
    v6 += 48;
  }

  while (v5 != 32);
  return result;
}

uint64_t CorrelateWithTemplate3x3_32x32(char *a1, const signed __int8 *a2, int *a3, unsigned int *a4)
{
  *v9 = 0;
  CrossCorrInt8_32x32_G(a1, a2, a3, &v9[1], v9);
  result = v9[0];
  if (v9[1])
  {
    v7 = v9[0] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *a3 = 0;
    *a4 = 0;
  }

  else
  {
    *a4 = a3[4] / ((v9[1] + 512) >> 10);
    result = SquareRoot::sqrt(result);
    for (i = 0; i != 9; ++i)
    {
      a3[i] = (21 * a3[i] / result) >> 3;
    }
  }

  return result;
}

uint64_t CRCCodec::CheckCRC(uint64_t result, int a2, unsigned int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  if (a3 > 2)
  {
    result = 0;
  }

  else
  {
    v3 = dword_272078C64[a3];
    if ((v3 + a2 < 0) ^ __OFADD__(v3, a2) | (v3 + a2 == 0))
    {
      v6 = a2;
    }

    else
    {
      v4 = 0;
      v5 = *(&off_279E32180 + a3);
      v6 = a2;
      do
      {
        v7 = *(v14 + (v3 - 1));
        v8 = v3 - 1;
        do
        {
          *(v14 + v8) = (v5[v8] * v7) ^ *(v14 + v8 - 1);
        }

        while (v8-- > 1);
        if (v4 >= a2)
        {
          v10 = *v5 * v7;
        }

        else
        {
          v10 = (*v5 * v7) ^ *(result + v4);
        }

        LOBYTE(v14[0]) = v10;
        ++v4;
      }

      while (v4 != v3 + a2);
    }

    v11 = (result + v6);
    LOBYTE(result) = 1;
    do
    {
      v12 = *v11++;
      result = (v12 == *(&v14[-1] + v3-- + 15)) & result;
    }

    while (v3);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CRCCodec::AppendEncodedCRC(uint64_t a1, int a2, unsigned int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  if (a3 <= 2)
  {
    v3 = dword_272078C64[a3];
    if ((v3 + a2 < 0) ^ __OFADD__(v3, a2) | (v3 + a2 == 0))
    {
      v6 = a2;
    }

    else
    {
      v4 = 0;
      v5 = *(&off_279E32180 + a3);
      v6 = a2;
      do
      {
        v7 = *(v14 + (v3 - 1));
        v8 = v3;
        v9 = v3;
        if (v4 >= a2)
        {
          do
          {
            *(v14 + v9 - 1) = (v5[v9 - 1] * v7) ^ *(v14 + v9 - 2);
            --v9;
          }

          while (v9 > 1);
          v10 = *v5 * v7;
        }

        else
        {
          do
          {
            *(v14 + v8 - 1) = (v5[v8 - 1] * v7) ^ *(v14 + v8 - 2);
            --v8;
          }

          while (v8 > 1);
          v10 = (*v5 * v7) ^ *(a1 + v4);
        }

        LOBYTE(v14[0]) = v10;
        ++v4;
      }

      while (v4 != v3 + a2);
    }

    v11 = (a1 + v6);
    do
    {
      *v11++ = *(&v14[-1] + v3-- + 15);
    }

    while (v3);
  }

  result = a3 < 3;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void Decode::~Decode(Decode *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8052888210);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C8077774924);
  }

  v4 = *(this + 15);
  if (v4)
  {
    MEMORY[0x2743C1740](v4, 0x1000C80BDFB0063);
  }

  v5 = *(this + 3);
  if (v5)
  {
    TailbiteConvCode924::~TailbiteConvCode924(v5);
    MEMORY[0x2743C1750]();
  }

  v6 = *(this + 4);
  if (v6)
  {
    TailbiteConvCode924::~TailbiteConvCode924(v6);
    MEMORY[0x2743C1750]();
  }

  v7 = *(this + 5);
  if (v7)
  {
    TailbiteConvCode924::~TailbiteConvCode924(v7);
    MEMORY[0x2743C1750]();
  }

  v8 = *(this + 6);
  if (v8)
  {
    TailbiteConvCode924::~TailbiteConvCode924(v8);
    MEMORY[0x2743C1750]();
  }

  if (*this)
  {
    MEMORY[0x2743C1750](*this, 0x1050C40C62AA19FLL);
  }

  v9 = *(this + 1);
  if (v9)
  {
    MEMORY[0x2743C1750](v9, 0x1050C40C62AA19FLL);
  }
}

uint64_t Decode::SetParamsExtensible(Decode *this, int a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = 0;
  *(this + 22) = 4;
  *v2 = 5;
  *(v2 + 8) = &Decode::I4optrampInterval;
  *(v2 + 16) = &Decode::R4optrampAmount;
  if (a2 <= 7)
  {
    switch(a2)
    {
      case 5:
        v5 = 0;
        *(this + 92) = 0x2000000005;
        *(this + 25) = 1;
        *(this + 10) = 0x100000018;
        v6 = &Decode::RKE32_24_V5_calc;
        v7 = &Decode::IKE32_24_V5_calc;
        v8 = 9;
        break;
      case 6:
        v5 = 0;
        *(this + 92) = 0x4000000006;
        *(this + 25) = 2;
        *(this + 10) = 0x100000018;
        v6 = &Decode::RKE64_24_V6_calc;
        v7 = &Decode::IKE64_24_V6_calc;
        v8 = 8;
        break;
      case 7:
        *(this + 92) = 0x2F00000007;
        *(this + 25) = 2;
        *(this + 10) = 0x100000018;
        v5 = *(this + 3);
LABEL_17:
        v6 = &Decode::RKE_IDENT_calc;
        v7 = &Decode::IKE_IDENT_calc;
        v8 = 1;
        break;
      default:
        return v4;
    }

    *(this + 7) = v5;
    *v3 = v8;
    *(v3 + 8) = v7;
    *(v3 + 16) = v6;
    v4 = 1;
    *(v3 + 2) = 100;
    return v4;
  }

  switch(a2)
  {
    case 8:
      *(this + 92) = 0x4000000008;
      *(this + 25) = 2;
      *(this + 10) = 0x200000020;
      v5 = *(this + 4);
      goto LABEL_17;
    case 9:
      *(this + 92) = 0x6200000009;
      *(this + 25) = 4;
      *(this + 10) = 0x200000020;
      v5 = *(this + 5);
      goto LABEL_17;
    case 10:
      *(this + 92) = 0x7D0000000ALL;
      *(this + 25) = 4;
      *(this + 10) = 0x100000018;
      v5 = *(this + 6);
      goto LABEL_17;
  }

  return v4;
}

uint64_t Decode::DoRealWork(Decode *this, __int16 *a2, BOOL *a3)
{
  *a3 = 0;
  *(this + 9) = a2;
  v3 = *(this + 14);
  if (*(v3 + 8) >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D85DE0];
    while (2)
    {
      v7 = 0;
      v8 = *(*(v3 + 8 * v5 + 16) + 16);
      do
      {
        v9 = *(v8 + v7);
        if (v9 < 0)
        {
          if (!__maskrune(*(v8 + v7), 0x40000uLL))
          {
            return 6;
          }
        }

        else if ((*(v6 + 4 * v9 + 60) & 0x40000) == 0)
        {
          return 6;
        }

        ++v7;
      }

      while (v7 != 4);
      ++v5;
      v3 = *(this + 14);
      v10 = *(v3 + 8);
      if (v5 < v10)
      {
        continue;
      }

      break;
    }

    if (v10 >= 1)
    {
      v11 = 0;
      v12 = *(*(v3 + 16) + 16) + 8;
      for (i = *(this + 9); ; i += 16)
      {
        v14 = 0;
        v15 = *(v12 + v11);
        do
        {
          if (v15 < 0)
          {
            *(i + v14) = -*(i + v14);
          }

          v15 *= 2;
          v14 += 2;
        }

        while (v14 != 16);
        if (++v11 == 128)
        {
          operator new[]();
        }
      }
    }
  }

  return 0;
}

uint64_t Decode::ExtractPayloadInfo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 100);
  *(a2 + 16) = *(result + 92);
  *(a2 + 20) = v2;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(result + 96);
    v6 = a2 + 24;
    do
    {
      v7 = v5;
      LOWORD(v5) = v5 - 32;
      if (v7 >= 32)
      {
        v8 = 32;
      }

      else
      {
        v8 = v7;
      }

      if (v7 < 1)
      {
        v11 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 32 * v3;
        do
        {
          v13 = *(*(result + 104) + v9 + v12);
          v14 = 1 << v9;
          if (!v13)
          {
            v14 = 0;
          }

          v11 += v14;
          v9 = ++v10;
        }

        while (v8 > v10);
      }

      *(v6 + 4 * v4++) = v11;
      v3 = v4;
    }

    while (*(result + 100) > v4);
  }

  return result;
}

uint64_t Demodulator::GenBitLut(Demodulator *this)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = 0x124095809200FFFLL;
  v1 = *(this + 1);
  *v1 = 0;
  v2 = 1;
  v3 = 8190;
  do
  {
    v4 = (v2 >> 6) & 1;
    v5 = *(v15 & 0xFFFFFFFFFFFFFFFDLL | (2 * v4));
    *(v1 + 2 * v2) = v5 >> 1;
    v6 = 2 * v5;
    if ((v5 & 0x800) != 0)
    {
      v6 ^= __const__ZN11Demodulator9GenBitLutEv_taps[v4];
    }

    *(v15 | (2 * v4)) = v6;
    ++v2;
    --v3;
  }

  while (v3);
  *(v1 + 16382) = 0;
  v7 = 8193;
  v8 = 8190;
  do
  {
    v9 = (v7 >> 6) & 1 | 2;
    v10 = (v15 | (2 * v9));
    v11 = *v10;
    *(v1 + 2 * v7) = *v10 >> 1;
    v12 = 2 * v11;
    if ((v11 & 0x800) != 0)
    {
      v12 ^= __const__ZN11Demodulator9GenBitLutEv_taps[v9];
    }

    *v10 = v12;
    ++v7;
    --v8;
  }

  while (v8);
  *(v1 + 32766) = 0;
  v13 = *MEMORY[0x277D85DE8];
  return 0x4000;
}

uint64_t Demodulator::Demodulate(Demodulator *this, __int16 *a2, __int16 *a3, unsigned int a4, int a5, char a6)
{
  if ((*(this + 16) & 1) == 0)
  {
    if (!*(this + 1))
    {
      operator new[]();
    }

    Demodulator::GenBitLut(this);
    *(this + 16) = 1;
  }

  if (a4 >= 1)
  {
    v12 = 0;
    v13 = *(this + 1);
    v14 = *(this + 5);
    v15 = *(this + 6);
    do
    {
      v16 = a5 - (a4 >> 1);
      v17 = a3;
      v18 = a4;
      do
      {
        v19 = *(v13 + 2 * (v16 & 0x7F | (((a6 - (a4 >> 1) + v12) & 0x7F) << 7)));
        v20 = v15 & v19;
        v22 = *v17++;
        v21 = v22;
        v23 = v14 <= v19;
        v24 = a2[v15 & v19];
        if (!v23)
        {
          v21 = -v21;
        }

        a2[v20] = v21 + v24;
        LOBYTE(v16) = v16 + 1;
        --v18;
      }

      while (v18);
      ++v12;
      a3 += a4;
    }

    while (v12 != a4);
  }

  return 0;
}

void Demodulator::~Demodulator(Demodulator *this)
{
  *this = &unk_288156038;
  v1 = *(this + 1);
  if (v1)
  {
    MEMORY[0x2743C1740](v1, 0x1000C80BDFB0063);
  }
}

{
  *this = &unk_288156038;
  v1 = *(this + 1);
  if (v1)
  {
    MEMORY[0x2743C1740](v1, 0x1000C80BDFB0063);
  }

  JUMPOUT(0x2743C1750);
}

void DetectStage::~DetectStage(DetectStage *this)
{
  *this = &unk_288156068;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8077774924);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C80BDFB0063);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x2743C1740](v4, 0x1000C80BDFB0063);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8077774924);
  }

  v6 = *(this + 7);
  if (v6)
  {
    MEMORY[0x2743C1740](v6, 0x1000C8077774924);
  }
}

{
  DetectStage::~DetectStage(this);

  JUMPOUT(0x2743C1750);
}

uint64_t DetectStage::DoFirstStage(uint64_t a1, unsigned __int8 *a2, unsigned int a3, _DWORD *a4, uint64_t a5, unsigned int *a6)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    operator new[]();
  }

  if (!*(a1 + 40))
  {
    operator new[]();
  }

  if (!*(a1 + 24))
  {
    operator new[]();
  }

  v9 = *(a1 + 56);
  if (!v9)
  {
    operator new[]();
  }

  if (!*(a1 + 48))
  {
    operator new[]();
  }

  *(a1 + 64) = v9;
  *(a1 + 72) = v9;
  *(a1 + 80) = v9;
  *(a1 + 20) = 0;
  if (*a4 == 1)
  {
    octaxis_O(a2, 128, 128, a3, v9);
  }

  else
  {
    octaxis_128x128_YUV422_G(a2, a3, v9);
  }

  fft2_i16_r128x128_G(*(a1 + 64), *(a1 + 32), *(a1 + 24), *(a1 + 40));
  FilterFMag_65x128_G(*(a1 + 40), *(a1 + 72));
  if (a6)
  {
    v10 = *(a6 + 1);
    if (v10)
    {
      v10(*a6);
    }

    v11 = *(a6 + 2);
    if (v11)
    {
      if (*v11)
      {
        goto LABEL_31;
      }
    }
  }

  bzero(*(a1 + 48), 0x8340uLL);
  v12 = *(a1 + 72);
  v13 = &LP_UL2x2SrcIndex[160 * *(a1 + 100)];
  v14 = &LP_Top1x2InterpKernelQ8 + 320 * *(a1 + 100);
  v15 = &LP_Bottom1x2InterpKernelQ8 + 320 * *(a1 + 100);
  v16 = (*(a1 + 48) + 320 * *(a1 + 100));
  v17 = *(a1 + 102);
  v46[0][0] = 0;
  LogPolarRemap_G(v12, v13, v14, v15, 0x80u, v16, v17, 0xA0u, v46);
  v18 = v46[0][0];
  if (a6)
  {
    v19 = *(a6 + 1);
    if (v19)
    {
      v19(*a6);
    }

    v20 = *(a6 + 2);
    if (v20)
    {
      if (*v20)
      {
        goto LABEL_31;
      }
    }
  }

  v21 = (4 * v18) | 2;
  v22 = 160 * v17;
  v23 = *(a1 + 96);
  v24 = (*(a1 + 48) + 320 * v23);
  v25 = *(a1 + 98);
  v26 = &IMF_pGridIndSearchRange + 2 * v23;
  v27 = (&IMF_pEqualPolynom2Q9Q10 + 4 * v23);
  v28 = *(a1 + 80);
  v29 = v21 / v22;
  if (v25 <= 0x68)
  {
    bzero(&v28[160 * *(a1 + 98)], 320 * (105 - v25));
  }

  ImpulseMatchedFilter_O(v24, v25, IMF_pRelativeGridIndices, v26, v28, v27, v29);
  if (!a6)
  {
    goto LABEL_32;
  }

  v30 = *(a6 + 1);
  if (v30)
  {
    v30(*a6);
  }

  v31 = *(a6 + 2);
  if (v31 && (*v31 & 1) != 0)
  {
LABEL_31:
    result = 9;
  }

  else
  {
LABEL_32:
    findKPeaks2x1Blocks8x16AndRefine(*(a1 + 80), (*(a1 + 98) + 6) >> 3, 0xAu, v49, v50, v48, 0xAu, 9u, 6u, *(a1 + 24));
    v34 = 0;
    v35 = 8 * *(a1 + 96);
    do
    {
      v49[v34++] += v35;
    }

    while (v34 != 10);
    v36 = 0;
    v37 = v46;
    do
    {
      DetectStage::CalculateXform(v37, v49[v36], v50[v36], &unk_2720919F8, v33);
      ++v36;
      v37 += 4;
    }

    while (v36 != 10);
    FMagCorrelation_G(v47, *(a1 + 40), 10, v46, CGridLuts::m_GridX, CGridLuts::m_GridY);
    v39 = 0;
    v40 = 1;
    v41 = v47[0];
    do
    {
      if (v47[v40] > v41)
      {
        v39 = v40;
        v41 = v47[v40];
      }

      ++v40;
    }

    while (v40 != 10);
    *(a1 + 20) = v47[v39];
    v42 = v50[v39];
    v43 = v49[v39];
    *(a5 + 16) = *&v46[v39][0];
    v44 = DetectStage::CalculateXform(a5, (840 - v43), v42, &IMF_pIMFLogSpaceToScaleQ13, v38);
    result = 0;
    *(a5 + 32) = v44;
    *(a5 + 36) = (v42 << 11) / 160 - 0x2000;
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DetectStage::CalculateXform(DetectStage *this, int (*a2)[4], unsigned int a3, uint64_t a4, const unsigned __int16 *a5)
{
  v5 = *(a4 + (((a2 >> 3) << 48) >> 47));
  v6 = v5 + ((IMF_pScaleFractQ16[a2 & 7] * v5 + 0x8000) >> 16);
  v7 = (a3 >> 3);
  v8 = LP_pSinPolarSpaceQ14[v7];
  LOWORD(v7) = LP_pCosPolarSpaceQ14[v7];
  v9 = IMF_p1mCosFractQ16[a3 & 7];
  v10 = IMF_pSinFractQ16[a3 & 7];
  v11 = -v7;
  v12 = v9 * v8 - v10 * v11 + 0x8000;
  v13 = v10 * v8;
  v14 = v6;
  v15 = ((v8 + HIWORD(v12)) * v14 + 64) >> 7;
  LODWORD(v7) = (((v13 + v9 * v11 + 0x8000) >> 16) - v7) * v14 + 64;
  *this = v15;
  *(this + 1) = -(v7 >> 7);
  *(this + 2) = v7 >> 7;
  *(this + 3) = v15;
  return v14;
}

unsigned __int8 *downsample_2x2_YUV_2Hx32W_G(unsigned __int8 *result, unsigned int a2, unsigned __int8 *a3, unsigned int a4, int a5, unsigned int a6)
{
  if (a5)
  {
    v6 = 0;
    v7 = result + 3;
    v8 = a4;
    v9 = a3 + 1;
    v10 = 2 * a2;
    v11 = &result[a2 + 3];
    do
    {
      v12 = v11;
      v13 = v7;
      result = v9;
      v14 = 16 * a6;
      if (a6)
      {
        do
        {
          v15 = *(v12 - 2) + *(v13 - 2);
          v17 = *v13;
          v13 += 4;
          v16 = v17;
          v18 = *v12;
          v12 += 4;
          *result = (((v18 + v16) >> 1) + (v15 >> 1)) >> 1;
          result += 2;
          --v14;
        }

        while (v14);
      }

      ++v6;
      v9 += v8;
      v7 += v10;
      v11 += v10;
    }

    while (v6 != a5);
  }

  return result;
}

unsigned __int8 *downsample_3x3_YUV_3Hx24W_G(unsigned __int8 *result, unsigned int a2, unsigned __int8 *a3, unsigned int a4, int a5, unsigned int a6)
{
  if (a5)
  {
    v6 = 0;
    v7 = a3 + 1;
    v8 = a2;
    v9 = a4;
    v10 = result + 5;
    v11 = &result[2 * a2 + 3];
    v12 = 3 * a2;
    do
    {
      result = v11;
      v13 = v10;
      v14 = v7;
      v15 = 8 * a6;
      if (a6)
      {
        do
        {
          *v14 = (7282 * (*(v13 - 2) + *(v13 - 4) + *v13 + v13[v8 - 4] + v13[v8 - 2] + v13[v8] + *(result - 2) + *result + result[2])) >> 16;
          v14 += 2;
          v13 += 6;
          result += 6;
          --v15;
        }

        while (v15);
      }

      ++v6;
      v7 += v9;
      v10 += v12;
      v11 += v12;
    }

    while (v6 != a5);
  }

  return result;
}

void EmbedKE::~EmbedKE(EmbedKE *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8077774924);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C8077774924);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x2743C1740](v4, 0x1000C8077774924);
  }

  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8077774924);
  }
}

void EmbedKE::encodePayloadIntoSignature(EmbedKE *this, unsigned __int8 *a2)
{
  for (i = 0; i != 1024; ++i)
  {
    *(*(this + 2) + i) = 0;
  }

  v4 = *(this + 2);
  *(v4 + 32) = xmmword_272091E44;
  *(v4 + 48) = unk_272091E54;
  *(v4 + 64) = xmmword_272091E64;
  *(v4 + 80) = unk_272091E74;
  *v4 = EmbedKE::kFixedPatternV10;
  *(v4 + 16) = unk_272091E34;
  *(v4 + 96) = 0;
  memcpy(*(this + 4), a2, *this);
  CRCCodec::AppendEncodedCRC(*(this + 4), *this, 1u);
  v5 = 0;
  v6[0] = 0;
  *(v6 + 6) = 0;
  TailbiteConvCode924::Init(&v5, (*this + 24), 9);
}

void sub_272061220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TailbiteConvCode924::~TailbiteConvCode924(va);
  _Unwind_Resume(a1);
}

uint64_t EmbedKE::createPM1PayloadTileFromSignature(EmbedKE *this)
{
  result = EmbedKE::decompressKEKey(this, "MOOF");
  if (!result)
  {
    for (i = 0; i != 1024; ++i)
    {
      *(*(this + 2) + i) ^= *(*(this + 3) + i);
    }

    for (j = 0; j != 0x4000; ++j)
    {
      *(*(this + 1) + j) = (EmbedKE::kBitLUT[j] > 0x3FFu) ^ (*(*(this + 2) + (EmbedKE::kBitLUT[j] & 0x3FF)) == 0);
    }

    for (k = 0; k != 0x4000; ++k)
    {
      *(*(this + 1) + k) = 2 * *(*(this + 1) + k) - 1;
    }

    return 0;
  }

  return result;
}

uint64_t EmbedKE::decompressKEKey(EmbedKE *this, const unsigned __int8 *a2)
{
  v4 = 0;
  v5 = MEMORY[0x277D85DE0];
  do
  {
    v6 = a2[v4];
    if (v6 < 0)
    {
      if (!__maskrune(a2[v4], 0x40000uLL))
      {
        return 5;
      }
    }

    else if ((*(v5 + 4 * v6 + 60) & 0x40000) == 0)
    {
      return 5;
    }

    ++v4;
  }

  while (v4 != 4);
  v7 = *(a2 + 1);
  if (v7 == 0x40000 || v7 == 1024)
  {
    v8 = 0;
    v9 = 0;
    v10 = a2 + 8;
    do
    {
      v11 = 0;
      v12 = *v10;
      do
      {
        *(*(this + 3) + v8 + v11) = (v12 & 0x80) != 0;
        v12 *= 2;
        ++v11;
      }

      while (v11 != 8);
      ++v10;
      ++v9;
      v8 += 8;
    }

    while (v9 != 128);
  }

  return 0;
}

void EmbedKE::InitWithPayload(EmbedKE *this, unsigned __int8 *a2, int a3)
{
  *this = a3;
  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C8077774924);
  }

  operator new[]();
}

uint64_t EmbedKE::OutputWmAsHFloats(EmbedKE *this, char *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, float a8, float a9, float a10, float a11, float a12, float _S5)
{
  if (!a2)
  {
    return 3;
  }

  if (a7 > a5)
  {
    return 0;
  }

  v14 = 0;
  __asm { FCVT            H5, S5 }

  if (a7 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = a7;
  }

  v21 = a10 / 255.0;
  v22 = a11 / 255.0;
  v23 = a12 / 255.0;
  do
  {
    if (a7 <= a6)
    {
      v24 = 0;
      v25 = 0;
      v26 = *(this + 1);
      do
      {
        v27 = 0;
        v28 = (*(v26 + (v25 & 0x7F | ((v14 & 0x7F) << 7))) * a9) + (a8 * EmbedKE::kGridTile128x128[v25 & 0x7F | ((v14 & 0x7F) << 7)]);
        do
        {
          v29 = v28 * EmbedKE::kBumpShapes[4 * a7 - 4 + v27];
          v30 = &EmbedKE::kBumpShapes[4 * a7 - 4];
          v31 = v24;
          v32 = v20;
          do
          {
            v33 = *v30++;
            v34 = &a2[2 * (v14 * a7 + v27) * a4 + 2 * v31];
            _S17 = v21 * (v29 * v33);
            __asm { FCVT            H17, S17 }

            *v34 = LOWORD(_S17);
            _S17 = v22 * (v29 * v33);
            __asm { FCVT            H17, S17 }

            *(v34 + 1) = LOWORD(_S17);
            _S16 = v23 * (v29 * v33);
            __asm { FCVT            H16, S16 }

            *(v34 + 2) = LOWORD(_S16);
            *(v34 + 3) = _H5;
            v31 += a3;
            --v32;
          }

          while (v32);
          ++v27;
        }

        while (v27 != v20);
        ++v25;
        v24 += a3 * a7;
      }

      while (v25 < a6 / a7);
    }

    ++v14;
  }

  while (v14 < a5 / a7);
  return 0;
}

uint64_t fft8_i16_col2(const signed __int8 *a1, __int16 *a2)
{
  v2 = 0;
  v60 = *MEMORY[0x277D85DE8];
  v3 = a1 + 1;
  do
  {
    *(&v52 + v2) = 4 * *(v3 - 1);
    *(&v44 + v2++) = 4 * *v3;
    v3 += 2048;
  }

  while (v2 != 8);
  v4 = v56 + v52;
  v5 = v48 + v44;
  v6 = v52 - v56;
  v7 = v44 - v48;
  v8 = v57 + v53;
  v9 = v49 + v45;
  v10 = v53 - v57;
  v11 = v45 - v49;
  v12 = v58 + v54;
  v13 = v50 + v46;
  v14 = v54 - v58;
  v15 = v46 - v50;
  v16 = v59 + v55;
  v17 = v51 + v47;
  v18 = v55 - v59;
  v19 = v47 - v51;
  v20 = v12 + v4;
  v21 = v13 + v5;
  v22 = v4 - v12;
  v23 = v5 - v13;
  v24 = v15 + v6;
  v25 = v7 - v14;
  v26 = v6 - v15;
  v27 = v14 + v7;
  LOWORD(v14) = v16 + v8;
  v28 = v17 + v9;
  v29 = v8 - v16;
  v30 = v9 - v17;
  v31 = v19 + v10;
  v32 = v11 - v18;
  v33 = v10 - v19;
  v34 = v18 + v11;
  v35 = 11585 * v31;
  v36 = -11585 * v32;
  v37 = v24 + ((4 * (11585 * v31 - -11585 * v32) + 0x8000) >> 16);
  v32 *= 11585;
  v31 *= -11585;
  v38 = v30 + v22;
  v39 = v26 + ((4 * (-11585 * v33 - -11585 * v34) + 0x8000) >> 16);
  v40 = v27 + ((4 * (-11585 * v33 - 11585 * v34) + 0x8000) >> 16);
  v41 = v22 - v30;
  v33 *= 11585;
  v34 *= 11585;
  result = v26 + ((4 * (v33 - v34) + 0x8000) >> 16);
  v61.val[0].i16[0] = v14 + v20;
  v61.val[0].i16[1] = v37;
  v61.val[0].i16[2] = v38;
  v61.val[0].i16[3] = v39;
  v61.val[0].i16[4] = v20 - v14;
  v61.val[0].i16[5] = v24 + ((4 * (v31 - v32) + 0x8000) >> 16);
  v61.val[0].i16[6] = v41;
  v61.val[0].i16[7] = v26 + ((4 * (v33 - v34) + 0x8000) >> 16);
  v61.val[1].i16[0] = v28 + v21;
  v61.val[1].i16[1] = v25 + ((4 * (v31 + v32) + 0x8000) >> 16);
  v61.val[1].i16[2] = v23 - v29;
  v61.val[1].i16[3] = v40;
  v61.val[1].i16[4] = v21 - v28;
  v61.val[1].i16[5] = v25 + ((4 * (v35 + v36) + 0x8000) >> 16);
  v61.val[1].i16[6] = v29 + v23;
  v61.val[1].i16[7] = v27 + ((4 * (v33 + v34) + 0x8000) >> 16);
  vst2q_s16(a2, v61);
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fft16_i16_col2(__int16 *a1, int a2, __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v84 = *MEMORY[0x277D85DE8];
  if (a2 - 8 >= 0)
  {
    v8 = -((a2 - 8) & 7);
  }

  else
  {
    v8 = (8 - a2) & 7;
  }

  v9 = v8;
  v10 = a2;
  v11 = &a1[2 * v8 + 1];
  v12 = &a1[2 * a2 + 1];
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    if (v5 <= 0)
    {
      v15 = -(-v5 & 0x7F);
    }

    else
    {
      v15 = v5 & 0x7F;
    }

    v16 = 2 * v15;
    v17 = pTwiddleTblQ14[2 * v15];
    v18 = pTwiddleTblQ14[v16 + 1];
    v83[0].i16[v7] = (v17 * v13 - v18 * v14 + 0x2000) >> 14;
    v82[0].i16[v7] = (v18 * v13 + v17 * v14 + 0x2000) >> 14;
    v19 = *(v11 - 1);
    v20 = *v11;
    if (v6 <= 0)
    {
      v21 = -(-v6 & 0x7F);
    }

    else
    {
      v21 = v6 & 0x7F;
    }

    v22 = 2 * v21;
    v23 = pTwiddleTblQ14[2 * v21];
    v24 = pTwiddleTblQ14[v22 + 1];
    v81[0].i16[v7] = (v23 * v19 - v24 * v20 + 0x2000) >> 14;
    v80[0].i16[v7++] = (v24 * v19 + v23 * v20 + 0x2000) >> 14;
    v6 += v9;
    v5 += a2;
    v11 += 16;
    v12 += 16;
  }

  while (v7 != 16);
  fft16(v83, v82, &v78, &v76);
  fft16(v81, v80, v75, v74);
  if (a2)
  {
    v25 = 0;
    v26 = &a3[256 * v9 + 2];
    v27 = &a3[256 * v10 + 2];
    v28 = 15;
    do
    {
      v29 = v75[v28];
      v30 = *&v79[v25 * 2 - 2];
      v31 = (v30 + v29);
      if (v31 < 0)
      {
        v32 = -((1 - (v30 + v29)) >> 1);
      }

      else
      {
        LOWORD(v32) = v31 >> 1;
      }

      *(v27 - 2) = v32;
      v33 = v74[v28];
      v34 = *&v77[v25 * 2 - 2];
      v35 = (v34 - v33);
      if (((v34 - v33) & 0x8000) != 0)
      {
        v36 = -(-v35 >> 1);
      }

      else
      {
        v36 = (v35 + 1) >> 1;
      }

      *(v27 - 1) = v36;
      v37 = (v34 + v33);
      if (v37 < 0)
      {
        v38 = -((1 - v37) >> 1);
      }

      else
      {
        LOWORD(v38) = v37 >> 1;
      }

      *v27 = v38;
      v39 = (v29 - v30);
      if (v39 < 0)
      {
        v40 = -((1 - v39) >> 1);
      }

      else
      {
        LOWORD(v40) = v39 >> 1;
      }

      v27[1] = v40;
      v41 = *&v79[v28 * 2 - 2];
      v42 = v75[v25];
      v43 = (v42 + v41);
      if (v43 < 0)
      {
        v44 = -((1 - (v42 + v41)) >> 1);
      }

      else
      {
        LOWORD(v44) = v43 >> 1;
      }

      *(v26 - 2) = v44;
      v45 = *&v77[v28 * 2 - 2];
      v46 = v74[v25];
      result = (v46 - v45);
      v48 = (v46 - v45);
      if (((v46 - v45) & 0x8000) != 0)
      {
        v49 = -(-v48 >> 1);
      }

      else
      {
        v49 = (v48 + 1) >> 1;
      }

      *(v26 - 1) = v49;
      v50 = (v46 + v45);
      if (v50 < 0)
      {
        v51 = -((1 - v50) >> 1);
      }

      else
      {
        LOWORD(v51) = v50 >> 1;
      }

      v52 = (v41 - v42);
      if (v52 < 0)
      {
        v53 = -((1 - v52) >> 1);
      }

      else
      {
        LOWORD(v53) = v52 >> 1;
      }

      ++v25;
      *v26 = v51;
      v26[1] = v53;
      v26 += 2048;
      v27 += 2048;
      --v28;
    }

    while (v25 != 8);
  }

  else
  {
    *a3 = v78;
    a3[1] = 0;
    a3[2] = v76;
    a3[3] = 0;
    v54 = v77;
    v55 = v79;
    v56 = a3 + 2051;
    for (i = 15; i != 7; --i)
    {
      v58 = v75[i];
      v60 = *v55++;
      v59 = v60;
      v61 = (v60 + v58);
      if (v61 < 0)
      {
        v62 = -((1 - v61) >> 1);
      }

      else
      {
        LOWORD(v62) = v61 >> 1;
      }

      *(v56 - 3) = v62;
      v63 = v74[i];
      v65 = *v54++;
      v64 = v65;
      v66 = (v65 - v63);
      v67 = -(-v66 >> 1);
      result = (v66 + 1) >> 1;
      if (((v65 - v63) & 0x8000) != 0)
      {
        v68 = v67;
      }

      else
      {
        v68 = result;
      }

      *(v56 - 2) = v68;
      v69 = (v64 + v63);
      if (v69 < 0)
      {
        v70 = -((1 - v69) >> 1);
      }

      else
      {
        LOWORD(v70) = v69 >> 1;
      }

      *(v56 - 1) = v70;
      v71 = (v58 - v59);
      if (v71 < 0)
      {
        v72 = -((1 - v71) >> 1);
      }

      else
      {
        LOWORD(v72) = v71 >> 1;
      }

      *v56 = v72;
      v56 += 2048;
    }
  }

  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fft16(int16x8_t *a1, int16x8_t *a2, __int16 *a3, __int16 *a4)
{
  v4 = 0;
  v105 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v106.val[0] = vaddq_s16(v5, *a1);
  v106.val[1] = vsubq_s16(*a1, v5);
  v6 = a2[1];
  v107.val[0] = vaddq_s16(v6, *a2);
  v107.val[1] = vsubq_s16(*a2, v6);
  v7 = v104;
  vst2q_s16(v7, v106);
  v8 = v103;
  vst2q_s16(v8, v107);
  v9 = 18;
  do
  {
    v10 = *&v103[v9 + 14];
    v11 = *&v103[v9 + 30];
    v12 = &a3[v4];
    *v12 = v11 + v10;
    v13 = *&v103[v9 - 18];
    v14 = *&v103[v9 - 2];
    v15 = &a4[v4];
    *v15 = v14 + v13;
    v12[1] = v10 - v11;
    v15[1] = v13 - v14;
    v16 = *&v103[v9 + 16];
    v17 = *&v103[v9];
    v12[2] = v17 + v16;
    v18 = *&v103[v9 - 16];
    v19 = *&v104[v9];
    v15[2] = v18 - v19;
    v12[3] = v16 - v17;
    v4 += 4;
    v9 += 4;
    v15[3] = v19 + v18;
  }

  while (v4 != 16);
  v20 = a3[11];
  v21 = a4[11];
  v22 = a3[3];
  v23 = v22 + ((4 * (-11585 * v20 - -11585 * v21) + 0x8000) >> 16);
  v102 = a4[3];
  v24 = v102 + ((4 * (-11585 * v21 - 11585 * v20) + 0x8000) >> 16);
  v99 = 11585 * v20;
  v100 = 11585 * v21;
  v101 = v22 + ((4 * (11585 * v20 - 11585 * v21) + 0x8000) >> 16);
  v25 = a3[15];
  v26 = a4[15];
  v27 = a3[7];
  v28 = v27 + ((4 * (-11585 * v25 - -11585 * v26) + 0x8000) >> 16);
  v29 = a4[7];
  v30 = v29 + ((4 * (-11585 * v26 - 11585 * v25) + 0x8000) >> 16);
  v25 *= 11585;
  v26 *= 11585;
  v96 = v29 + ((4 * (v26 + v25) + 0x8000) >> 16);
  v97 = v27 + ((4 * (v25 - v26) + 0x8000) >> 16);
  v31 = v28;
  v32 = 15137 * v30 + 6270 * v28 + 0x2000;
  v33 = v23 + (v32 >> 14);
  v34 = 6270 * v30 + 1073726687 * v31 + 0x2000;
  v95 = v24 + (v34 >> 14);
  v35 = v23 - (v32 >> 14);
  v36 = a3[1];
  v37 = a4[9];
  v38 = a3[5];
  v39 = a4[13];
  v40 = a4[5];
  v41 = a3[13];
  v42 = v24 - (v34 >> 14);
  v43 = -11585 * (v41 + v40);
  v44 = -11585 * (v38 - v39) + 0x2000;
  v45 = v36 - v37 + ((v44 - v43) >> 14);
  v46 = v36 - v37 - ((v44 - v43) >> 14);
  v47 = a4[1];
  v48 = a3[9];
  v49 = v43 + v44;
  v50 = v48 + v47 + (v49 >> 14);
  v51 = v39 + v38;
  v52 = v48 + v47 - (v49 >> 14);
  v53 = (v40 - v41);
  v54 = 11585 * v53 + 1073730239 * v51;
  v55 = a3[8];
  v56 = v53 + v51;
  v94 = v55 + *a3;
  v98 = *a3 - v55;
  v57 = *a4;
  v58 = v37 + v36;
  v59 = a4[8];
  v60 = v47 - v48;
  v61 = a4[10];
  v62 = a4[2];
  LOWORD(v36) = a4[4];
  LOWORD(v37) = a4[12];
  v63 = a4[14];
  v64 = a4[6];
  a3[3] = v33;
  LOWORD(v49) = a3[2];
  v65 = a3[10];
  v66 = a3[4];
  v67 = a3[12];
  v68 = a3[6];
  v69 = a3[14];
  a4[3] = v95;
  a3[11] = v35;
  a4[11] = v42;
  a3[6] = v45;
  a4[6] = v50;
  a3[14] = v46;
  a4[14] = v52;
  v70 = 11585 * v56 + 0x2000;
  a3[2] = v58 + (v70 >> 14);
  v54 += 0x2000;
  a4[2] = v60 + (v54 >> 14);
  a3[10] = v58 - (v70 >> 14);
  v71 = v59 + v57;
  v72 = v57 - v59;
  a4[10] = v60 - (v54 >> 14);
  v73 = 6270 * v96 + 1073726687 * v97 + 0x2000;
  a3[7] = v101 + (v73 >> 14);
  v74 = 1073726687 * v96 + 1073735554 * v97 + 0x2000;
  LOWORD(v70) = v102 + ((4 * (v100 + v99) + 0x8000) >> 16);
  a4[7] = v70 + (v74 >> 14);
  a3[15] = v101 - (v73 >> 14);
  v75 = 11585 * v65;
  LOWORD(v74) = v70 - (v74 >> 14);
  v76 = -11585 * v61;
  v77 = 11585 * v61;
  v65 *= -11585;
  a4[15] = v74;
  v78 = 11585 * v69;
  v79 = 11585 * v63;
  v63 *= -11585;
  v69 *= -11585;
  v80 = v79 + v69;
  v81 = v69 - v79;
  v82 = v78 - v63;
  v83 = (v68 + ((4 * v81 + 0x8000) >> 16));
  v84 = (v64 + ((4 * (v63 + v78) + 0x8000) >> 16));
  v85 = 1073735554 * v84 + 1073726687 * v83;
  v86 = 15137 * v84 + 1073735554 * v83;
  LOWORD(v84) = v68 + ((4 * v82 + 0x8000) >> 16);
  v86 += 0x2000;
  LOWORD(v82) = v49 + ((4 * (v65 - v77) + 0x8000) >> 16);
  a3[5] = v82 + (v86 >> 14);
  v87 = (v64 + ((4 * v80 + 0x8000) >> 16));
  v88 = 6270 * v87 + 15137 * v84;
  v89 = 15137 * v87 + 1073735554 * v84;
  v85 += 0x2000;
  v90 = v62 + ((4 * (v76 + v75) + 0x8000) >> 16);
  a4[5] = v90 + (v85 >> 14);
  a3[13] = v82 - (v86 >> 14);
  a4[13] = v90 - (v85 >> 14);
  LOWORD(v75) = v49 + ((4 * (v75 - v76) + 0x8000) >> 16);
  a3[1] = v75 + ((v88 + 0x2000) >> 14);
  v89 += 0x2000;
  v91 = v62 + ((4 * (v77 + v65) + 0x8000) >> 16);
  result = v91 + (v89 >> 14);
  a4[1] = v91 + (v89 >> 14);
  a3[9] = v75 - ((v88 + 0x2000) >> 14);
  a4[9] = v91 - (v89 >> 14);
  *a3 = v67 + v66 + v94;
  *a4 = v37 + v36 + v71;
  a3[8] = v94 - (v67 + v66);
  a4[8] = v71 - (v37 + v36);
  a3[4] = v36 - v37 + v98;
  a4[4] = v72 - (v66 - v67);
  a3[12] = v98 - (v36 - v37);
  a4[12] = v66 - v67 + v72;
  v93 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fft128_i16_col2(const signed __int8 *a1, __int16 *a2, __int16 *a3)
{
  for (i = 0; i != 256; i += 16)
  {
    fft8_i16_col2(a1, &a3[i]);
    a1 += 128;
  }

  for (j = 0; j != 5; ++j)
  {
    result = fft16_i16_col2(a3, j, a2);
  }

  return result;
}

uint64_t fft8_i16_row(const __int16 *a1, __int16 a2, int a3, __int16 *a4)
{
  v4 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v5 = &a1[((a2 << 8) + 2 * a3) + 1];
  do
  {
    *(&v39 + v4) = *(v5 - 1);
    v6 = *v5;
    v5 += 32;
    *(&v31 + v4) = v6;
    v4 += 2;
  }

  while (v4 != 16);
  v7 = v43 + v39;
  v8 = v39 - v43;
  v9 = v45 + v41;
  v10 = v33 - v37;
  v11 = v9 + v7;
  v12 = v37 + v33 + v35 + v31;
  result = (v7 - v9);
  v14 = v35 + v31 - (v37 + v33);
  v15 = v10 + v8;
  v16 = v31 - v35 - (v41 - v45);
  LOWORD(v10) = v8 - v10;
  LOWORD(v8) = v41 - v45 + v31 - v35;
  v17 = v46 + v42 + v44 + v40;
  v18 = v38 + v34 + v36 + v32;
  v19 = v44 + v40 - (v46 + v42);
  v20 = v36 + v32 - (v38 + v34);
  v21 = (v34 - v38 + v40 - v44);
  v22 = 11585 * v21;
  v23 = (v32 - v36 - (v42 - v46));
  v24 = -11585 * v23;
  v25 = v15 + ((4 * (11585 * v21 - -11585 * v23) + 0x8000) >> 16);
  v23 *= 11585;
  v21 *= -11585;
  v26 = (v40 - v44 - (v34 - v38));
  v27 = -11585 * v26;
  v28 = (v42 - v46 + v32 - v36);
  v26 *= 11585;
  v48.val[0].i16[0] = v17 + v11;
  v48.val[0].i16[1] = v25;
  v48.val[0].i16[2] = v20 + result;
  v48.val[0].i16[3] = v10 + ((4 * (v27 - -11585 * v28) + 0x8000) >> 16);
  v48.val[0].i16[4] = v11 - v17;
  v48.val[0].i16[5] = v15 + ((4 * (v21 - v23) + 0x8000) >> 16);
  v48.val[0].i16[6] = result - v20;
  v48.val[0].i16[7] = v10 + ((4 * (v26 - 11585 * v28) + 0x8000) >> 16);
  v48.val[1].i16[0] = v18 + v12;
  v48.val[1].i16[1] = v16 + ((4 * (v21 + v23) + 0x8000) >> 16);
  v48.val[1].i16[2] = v14 - v19;
  v48.val[1].i16[3] = v8 + ((4 * (v27 - 11585 * v28) + 0x8000) >> 16);
  v48.val[1].i16[4] = v12 - v18;
  v48.val[1].i16[5] = v16 + ((4 * (v22 + v24) + 0x8000) >> 16);
  v48.val[1].i16[6] = v19 + v14;
  v48.val[1].i16[7] = v8 + ((4 * (v26 + 11585 * v28) + 0x8000) >> 16);
  v29 = &a4[((16 * a3) | 1) - 1];
  vst2q_s16(v29, v48);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fft16_i16_row(const __int16 *a1, int a2, __int16 *a3, unsigned __int16 *a4)
{
  v7 = 0;
  v8 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v9 = &a1[2 * a2 + 1];
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    if (v7 <= 0)
    {
      v12 = -(-v7 & 0x7F);
    }

    else
    {
      v12 = v7 & 0x7F;
    }

    v13 = 2 * v12;
    v14 = pTwiddleTblQ14[2 * v12];
    v15 = pTwiddleTblQ14[v13 + 1];
    v27[0].i16[v8] = (v14 * v10 - v15 * v11 + 0x2000) >> 14;
    v26[0].i16[v8++] = (v15 * v10 + v14 * v11 + 0x2000) >> 14;
    v7 += a2;
    v9 += 16;
  }

  while (v8 != 16);
  result = fft16(v27, v26, v25, v24);
  v17 = 0;
  v18 = a2 + 64;
  do
  {
    if (v18 <= 0)
    {
      v19 = -(-v18 & 0x7F);
    }

    else
    {
      v19 = v18 & 0x7F;
    }

    v20 = v25[v17];
    a3[2 * v19] = v25[v17];
    v21 = v24[v17];
    a3[2 * v19 + 1] = v24[v17];
    if (v20 < 0)
    {
      v20 = -v20;
    }

    if (v21 < 0)
    {
      v21 = -v21;
    }

    if (v20 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v20 <= v21)
    {
      v20 = v21;
    }

    a4[v19] = ((62168 * v20 + 0x8000) >> 16) + ((25752 * v22 + 0x8000) >> 16);
    ++v17;
    v18 += 8;
  }

  while (v17 != 16);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t fft2_i16_r128x128_G(const signed __int8 *a1, __int16 *a2, unsigned __int8 *a3, unsigned __int16 *a4)
{
  result = 3;
  if (a1 && a2 && a3 && a4)
  {
    for (i = 0; i != 256; i += 4)
    {
      fft128_i16_col2(a1, &a2[i], a3);
      a1 += 2;
    }

    for (j = 0; j != 65; ++j)
    {
      v11 = 0;
      do
      {
        fft8_i16_row(a2, j, v11, a3);
        v12 = v11++;
      }

      while (v12 < 0xF);
      for (k = 0; k != 8; ++k)
      {
        fft16_i16_row(a3, k, &a2[256 * j], &a4[128 * j]);
      }
    }

    return 0;
  }

  return result;
}

uint64_t findMaxBlock8x16_G(unsigned __int16 *a1, __int16 a2, int a3, int a4)
{
  do
  {
    v4 = a3;
    a3 += a4;
  }

  while ((v4 & 0x8000) != 0);
  do
  {
    v5 = v4;
    v4 -= a4;
  }

  while (a4 <= v5);
  v6 = 0;
  LOWORD(v7) = 0;
  do
  {
    v8 = 0;
    v9 = (v6 + a2) * a4;
    do
    {
      v10 = &a1[v9 + (v5 + v8)];
      v13 = *v10;
      v12 = v10 + 1;
      v11 = v13;
      if (a4 - 1 == (v5 + v8))
      {
        v12 = &a1[v9];
      }

      v14 = *v12;
      v15 = a1[a4 + v9 + (v5 + v8)];
      if (v14 > v15)
      {
        LOWORD(v15) = v14;
      }

      v16 = (v15 + v11);
      if (v16 <= v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = v16;
      }

      ++v8;
    }

    while (v8 != 16);
    ++v6;
  }

  while (v6 != 8);
  return v7;
}

unsigned __int16 *findKPeaks2x1Blocks8x16AndRefine(unsigned __int16 *result, unsigned int a2, unsigned int a3, int *a4, int *a5, int *a6, unsigned int a7, unsigned int a8, unsigned __int16 a9, unsigned __int8 *a10)
{
  v132 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    v12 = result;
    v13 = a10;
    if (((a3 * a2) & 0xF) != 0)
    {
      v14 = ((2 * a3 * a2) & 0xFFE0) + 32;
    }

    else
    {
      v14 = 2 * a2 * a3;
    }

    if (v14 >= 2u)
    {
      bzero(a10, ((v14 + 0x1FFFFFFFELL) & 0x1FFFFFFFELL) + 2);
    }

    v15 = 0;
    v121 = 16 * a3;
    v108 = v14;
    v122 = v14 >> 1;
    v126 = a2;
    v16 = a2;
    v17 = 2 * (a3 & 0xFFF);
    v109 = a3;
    v18 = a3;
    v19 = 16 * a3;
    do
    {
      v20 = 0;
      v21 = v13;
      do
      {
        result = findMaxBlock8x16_G(v12, 8 * v20, (16 * v15), v19);
        *v21 = result;
        ++v20;
        v21 += v17;
      }

      while (v16 != v20);
      ++v15;
      v13 += 2;
    }

    while (v15 != v18);
    v23 = v108;
    v24 = v109;
    if (a7)
    {
      v26 = a4;
      v25 = a5;
      v27 = a6;
      v28 = a7;
      do
      {
        *v25++ = 0;
        *v26++ = 0;
        *v27++ = 0;
        --v28;
      }

      while (v28);
      v29 = 0;
      v30 = v122 & 0x7FF0;
      v31 = v121 - 1;
      v32 = 8 * v126;
      v106 = v30;
      v107 = a7 - 1;
      v105 = 8 * v126;
      v113 = 15 - a8;
      v104 = v109 - 1;
      v103 = v126 - 1;
      v33 = a10;
      while (1)
      {
        if (v23 >= 0x20u)
        {
          v35 = 0;
          v34 = 0;
          do
          {
            if (*&v33[2 * v35] > *&v33[2 * v34])
            {
              v34 = v35;
            }

            ++v35;
          }

          while (v30 != v35);
        }

        else
        {
          v34 = 0;
        }

        v36 = 0;
        v37 = v34 % v24;
        v38 = (v34 / v24 * v24) / v24;
        v120 = v37;
        v39 = (16 * v37);
        v117 = v38 << 16;
        v118 = v38;
        v123 = v38;
        v40 = *&v33[2 * v34];
        v125 = v39;
        while (1)
        {
          v41 = 0;
          v42 = (v39 + v36);
          v43 = 255;
          do
          {
            v44 = (8 * ((v34 / v24 * v24) / v24) + v41) * v121;
            v45 = v44 + v42;
            v46 = &v12[v44 + v42];
            v49 = *v46;
            v47 = v46 + 1;
            v48 = v49;
            v50 = &v12[v44];
            if (v31 != v42)
            {
              v50 = v47;
            }

            v51 = *v50;
            v52 = v12[v45 + v121];
            if (v51 <= v52)
            {
              LOWORD(v51) = v52;
            }

            if (v40 == (v51 + v48))
            {
              v43 = v41;
            }

            ++v41;
          }

          while (v41 != 8);
          if (v43 != 255)
          {
            break;
          }

          if (++v36 == 16)
          {
            v53 = 0;
            goto LABEL_35;
          }
        }

        v53 = (v36 + v39 + (8 * ((v34 / v24 * v24) / v24) + v43) * v121);
LABEL_35:
        v54 = v53 / v121 * v121;
        v55 = v53 % v121;
        v56 = v54 / v121;
        v57 = v56 * v121;
        v58 = &v12[v57 + v55];
        v61 = *v58;
        v59 = v58 + 1;
        v60 = v61;
        v62 = v12[v55 + (v56 + 1) * v121];
        if (v55 == v31)
        {
          v59 = &v12[v57];
        }

        v63 = *v59;
        if (v55 == v31)
        {
          v64 = 0;
        }

        else
        {
          v64 = v55 + 1;
        }

        if (v60 >= v63)
        {
          v64 = v55;
        }

        if (v60 >= v62)
        {
          v65 = v56;
        }

        else
        {
          v65 = v56 + 1;
        }

        v66 = v62 >= v63;
        if (v62 < v63)
        {
          v67 = v56 + 1;
        }

        else
        {
          v57 = v65 * v121;
          v67 = v65 + 1;
        }

        if (v66)
        {
          v68 = v55;
        }

        else
        {
          v68 = v64;
        }

        if (v66)
        {
          v69 = v65;
        }

        else
        {
          v69 = v56;
        }

        a6[v29] = v40;
        v70 = v68 - 1;
        if (!v68)
        {
          v70 = v121 - 1;
        }

        if (v31 == v68)
        {
          v71 = 0;
        }

        else
        {
          v71 = v68 + 1;
        }

        v72 = v69 - 1;
        if (!v69)
        {
          v72 = v32;
        }

        if (v32 == v69)
        {
          v67 = 0;
        }

        v73 = v12[v57 + v68];
        v131[0] = v12[v57 + v70];
        v131[1] = v73;
        v131[2] = v12[v57 + v71];
        v130[0] = v12[v68 + v72 * v121];
        v130[1] = v73;
        v130[2] = v12[v68 + v67 * v121];
        MedianIntQ16 = PeakRefine::getMedianIntQ16(v131, v22);
        result = PeakRefine::getMedianIntQ16(v130, v75);
        a5[v29] = ((8 * v121) & ((MedianIntQ16 + (v68 << 16) + 4096) >> 31)) + ((MedianIntQ16 + (v68 << 16) + 4096) >> 13);
        a4[v29] = ((result + (v69 << 16) + 4096) >> 13) & ~((result + (v69 << 16) + 4096) >> 31);
        if (v29 == v107)
        {
          break;
        }

        v116 = v29;
        v76 = v32;
        v77 = (v69 - a9) & ~((v69 - a9) >> 31);
        v114 = v69;
        v115 = v68;
        if ((v69 + a9) < v32)
        {
          v76 = (v69 + a9);
        }

        v78 = v68 + a8;
        v79 = v68 + a8 - v121;
        if ((v68 + a8) >= v121)
        {
          v80 = v121 - 1;
        }

        else
        {
          v80 = v68 + a8;
        }

        if (v78 < v121)
        {
          v79 = -1;
        }

        v81 = v68 >= a8;
        if (v68 < a8)
        {
          v82 = v121 - a8 + v68;
        }

        else
        {
          v82 = v68 - a8;
        }

        if (v81)
        {
          v83 = v80;
        }

        else
        {
          v83 = v121 - 1;
        }

        if (v81)
        {
          v84 = v79;
        }

        else
        {
          v84 = v78;
        }

        if (v77 <= v76)
        {
          v85 = v77 * v121;
          if (v82 <= v83)
          {
            v86 = v83;
          }

          else
          {
            v86 = v82;
          }

          v127 = 2 * (v86 - v82);
          v87 = (v76 - v77 + 1);
          do
          {
            if (v82 <= v83)
            {
              bzero(&v12[v82 + v85], v127 + 2);
            }

            if ((v84 & 0x80000000) == 0)
            {
              bzero(&v12[v85], 2 * (v84 + 1));
            }

            v85 += v121;
            --v87;
          }

          while (v87);
        }

        v88 = v114 & 7;
        if (v114 <= 0)
        {
          v88 = -(-v114 & 7);
        }

        v89 = v115 & 0xF;
        v128 = v88;
        v24 = v109;
        v33 = a10;
        if (v88 < a9 && v123 > 0)
        {
          v90 = 8 * v118 - 8;
          v91 = v125;
          if (v89 >= a8)
          {
            v93 = (v123 - 1) * v109;
            v94 = v120;
          }

          else
          {
            MaxBlock8x16_G = findMaxBlock8x16_G(v12, 8 * v118 - 8, (v125 - 16), v121);
            v90 = 8 * v118 - 8;
            v91 = v125;
            v93 = (v123 - 1) * v109;
            v94 = v120;
            *&a10[2 * ((v120 + v104) % v109) + 2 * v93] = MaxBlock8x16_G;
          }

          v95 = v90;
          *&a10[2 * (v94 % v109) + 2 * v93] = findMaxBlock8x16_G(v12, v90, v91, v121);
          if (v89 > (16 - a8))
          {
            *&a10[2 * ((v120 + 1) % v109) + 2 * v93] = findMaxBlock8x16_G(v12, v95, (v125 + 16), v121);
          }
        }

        v96 = v117 >> 13;
        v30 = v106;
        if (v89 < a8)
        {
          *&a10[2 * ((v120 + v104) % v109) + 2 * v123 * v109] = findMaxBlock8x16_G(v12, v117 >> 13, (v125 - 16), v121);
        }

        *&a10[2 * v34] = findMaxBlock8x16_G(v12, v96, v125, v121);
        if (v89 > v113)
        {
          *&a10[2 * ((v120 + 1) % v109) + 2 * v123 * v109] = findMaxBlock8x16_G(v12, v96, (v125 + 16), v121);
        }

        if (v128 > 8 - a9 && v123 < v103)
        {
          v97 = 8 * v118 + 8;
          v98 = v109 + v109 * v123;
          v129 = v115 & 0xF;
          if (v129 >= a8)
          {
            v101 = v120;
            v100 = v125;
          }

          else
          {
            v99 = findMaxBlock8x16_G(v12, 8 * v118 + 8, (v125 - 16), v121);
            v100 = v125;
            v101 = v120;
            *&a10[2 * ((v120 + v104) % v109) + 2 * v98] = v99;
          }

          *&a10[2 * (v101 % v109) + 2 * v98] = findMaxBlock8x16_G(v12, v97, v100, v121);
          if (v129 > v113)
          {
            *&a10[2 * ((v120 + 1) % v109) + 2 * v98] = findMaxBlock8x16_G(v12, v97, (v125 + 16), v121);
          }
        }

        v29 = v116 + 1;
        v23 = v108;
        v32 = v105;
      }
    }
  }

  v102 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PeakRefine::getMedianIntQ16(PeakRefine *this, int *a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *this;
  v5 = (v2 - *this) << 16;
  if (v2 >= *this)
  {
    v6 = v3 + v2 - 2 * v4;
    if (!v6)
    {
      v6 = 1;
    }

    v7 = v5 + (v6 >> 1);
  }

  else
  {
    v6 = v3 + v4 - 2 * v2;
    if (!v6)
    {
      v6 = 1;
    }

    v7 = v5 - (v6 >> 1);
  }

  return (v7 / v6);
}

uint64_t FMagCore_LinearTaylorQ10_Q7(unsigned int a1, unsigned int a2)
{
  if (a2)
  {
    if ((a2 & 0x8000) != 0)
    {
      v4 = -6;
    }

    else
    {
      v2 = 0;
      do
      {
        v3 = v2;
        a2 *= 2;
        ++v2;
      }

      while ((a2 & 0x8000) == 0);
      v4 = v3 - 5;
    }

    v6 = (a2 + 32) >> 6;
    if (a2 >> 5 > 0x55A)
    {
      v6 = (v6 + 1) >> 1;
    }

    v7 = (v4 - (a2 >> 5 > 0x55A));
    v8 = 2048 - (((v6 << 16) + 1040187392) >> 14);
    if (v7 <= -7)
    {
      v9 = a1 >> (-6 - v7);
    }

    else
    {
      v9 = a1 << (v7 + 6);
    }

    if (v9 >= 0xFFFF)
    {
      v9 = 0xFFFF;
    }

    v5 = (v9 * (v8 & 0xFFFC)) >> 16;
    if (v5 >= 0xFF)
    {
      LOBYTE(v5) = -1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t FilterFMag_65x128_G(const unsigned __int16 *a1, unsigned __int8 *a2)
{
  v3 = 0;
  v4 = a1 + 128;
  v5 = a1 + 0x2000;
  v32 = a1 + 255;
  v33 = a1 - 127;
  v36 = a1;
  v35 = a1 + 128;
  do
  {
    v6 = 0;
    v7 = v3 << 7;
    v8 = (v3 << 7) + 128;
    v9 = v32;
    v10 = v5;
    v34 = v4;
    do
    {
      if (v3)
      {
        if (v6 >= 0x7E)
        {
          v11 = 126;
        }

        else
        {
          v11 = v6;
        }

        v12 = &v33[128 * v3 + v11];
        v13 = v4 - 256;
        v14 = v6 - 1;
        if ((v6 - 1) >= 0x7F)
        {
          v14 = 127;
        }

        if (v6)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = &a1[v15 | ((v3 << 7) - 128)];
      }

      else
      {
        v17 = vmin_u32(vsub_s32(0x8000000081, vdup_n_s32(v6)), 0x7F0000007FLL);
        v12 = &v35[v17.u32[0]];
        v13 = &v35[v17.u32[1]];
        LOWORD(v14) = v6 - 1;
        if ((v6 - 1) >= 0x7F)
        {
          LOWORD(v14) = 127;
        }

        v16 = v9;
      }

      v18 = *v13;
      v19 = *v12;
      v20 = *v16;
      v21 = v6 + 1;
      if ((v6 + 1) >= 0x7F)
      {
        v22 = 127;
      }

      else
      {
        v22 = v6 + 1;
      }

      v23 = a1[v22 | v7];
      if (!v6)
      {
        LOWORD(v14) = 0;
      }

      v24 = v14;
      v25 = a1[v14 | v7];
      v26 = &v5[v22];
      v27 = &v5[v14];
      v28 = &a1[v22 | v8];
      v29 = &a1[v24 | v8];
      if (v3 == 64)
      {
        v28 = v26;
        v30 = v10;
      }

      else
      {
        v30 = v4;
      }

      if (v3 != 64)
      {
        v27 = v29;
      }

      result = FMagCore_LinearTaylorQ10_Q7(v36[v6], (v19 + v18 + v23 + v20 + v25 + *v30 + *v28 + *v27));
      a2[v6] = result;
      ++v4;
      ++v10;
      --v9;
      ++v6;
    }

    while (v21 != 128);
    ++v3;
    v4 = v34 + 128;
    v36 += 128;
    a2 += 128;
  }

  while (v3 != 65);
  return result;
}

uint64_t FMagCorrelation_G(uint64_t result, const unsigned __int16 *a2, int a3, const int (*a4)[4], const signed __int8 *a5, const signed __int8 *a6)
{
  if (a3 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a2 + 1;
    v61 = a3;
    v63 = a6;
    v64 = a5;
    do
    {
      v10 = 0;
      v11 = 0;
      *(v7 + 4 * v8) = 0;
      v12 = &(*a4)[4 * v8];
      do
      {
        v13 = a6[v11];
        v14 = a5[v11];
        v15 = (v12[2] * v14 + *v12 * v13 + 16) >> 5;
        v16 = (v12[3] * v14 + v12[1] * v13 + 16) >> 5;
        if (v15 >= 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = -v16;
        }

        if (v15 >= 0)
        {
          v18 = v15;
        }

        else
        {
          v18 = -v15;
        }

        if (v18 - 1998849 >= 0xFFE27FFF && (v17 - 1998849) >= 0xFFC27FFF)
        {
          v20 = 0;
          v21 = 0;
          v22 = v17 + 0x200000;
          v23 = v17 & 0x7FFF;
          v24 = ((v18 >> 8) & 0x1F80) + ((v17 + 0x200000) >> 15);
          v25 = (((v23 ^ 0x7FFF) * (v18 & 0x7FFF ^ 0x7FFF)) >> 15) * a2[v24];
          v26 = v24 + 128;
          v27 = (((v18 & 0x7FFF ^ 0x7FFF) * v23) >> 15) * v9[v24];
          v28 = (((v23 ^ 0x7FFF) * (v18 & 0x7FFF)) >> 15) * a2[v26];
          v29 = ((v23 * (v18 & 0x7FFF)) >> 15) * v9[v26];
          do
          {
            v30 = extentX[v20] + v22;
            v31 = extentY[v20] + v18;
            v32 = v30 >> 15;
            v33 = v30 & 0x7FFF;
            v34 = ((v31 >> 8) & 0x7FFF80) + v32;
            v35 = a2[v34];
            v36 = v9[v34];
            v37 = v31 & 0x7FFF;
            v34 += 128;
            v38 = a2[v34];
            v39 = v9[v34];
            v40 = (((v37 ^ 0x7FFF) * (v33 ^ 0x7FFFu)) >> 15) * v35;
            if (v40 >> 30)
            {
              v41 = 0x7FFF;
            }

            else
            {
              v41 = v40 >> 15;
            }

            v42 = (((v37 ^ 0x7FFFu) * v33) >> 15) * v36;
            if (v42 >> 30)
            {
              v43 = 0x7FFF;
            }

            else
            {
              v43 = v42 >> 15;
            }

            v44 = (((v33 ^ 0x7FFFu) * v37) >> 15) * v38;
            if (v44 >> 30)
            {
              v45 = 0x7FFF;
            }

            else
            {
              v45 = v44 >> 15;
            }

            v46 = ((v37 * v33) >> 15) * v39;
            if (v46 >> 30)
            {
              v47 = 0x7FFF;
            }

            else
            {
              v47 = v46 >> 15;
            }

            v21 += (v41 + v43 + v45 + v47);
            ++v20;
          }

          while (v20 != 8);
          v48 = v29 >> 30;
          v49 = v29 >> 15;
          v50 = v28 >> 30;
          v51 = v28 >> 15;
          v52 = v27 >> 30;
          v53 = v27 >> 15;
          v54 = v25 >> 15;
          v55 = v25 >> 30;
          if (v52)
          {
            LOWORD(v53) = 0x7FFF;
          }

          if (v50)
          {
            v56 = 0x7FFF;
          }

          else
          {
            v56 = v51;
          }

          if (v48)
          {
            v57 = 0x7FFF;
          }

          else
          {
            v57 = v49;
          }

          if (v55)
          {
            v58 = 0x7FFF;
          }

          else
          {
            v58 = v54;
          }

          v59 = v53 + v58 + v56 + v57;
          if (v21 >= 0xFFFF)
          {
            v60 = 0xFFFF;
          }

          else
          {
            v60 = v21;
          }

          result = FMagCore_LinearTaylorQ10_Q7(v59, v60);
          v10 = result + v10 - 127;
          *(v7 + 4 * v8) = v10;
          a6 = v63;
          a5 = v64;
        }

        ++v11;
      }

      while (v11 != 64);
      *(v7 + 4 * v8++) = v10 >> 4;
    }

    while (v8 != v61);
  }

  return result;
}

uint64_t GF256::runForwardGaussElimination(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = a3 + 1;
    v6 = 1;
    v7 = a3;
    do
    {
      v8 = v4 + v4 * a3;
      v9 = *(result + v8);
      if (*(result + v8))
      {
        goto LABEL_15;
      }

      v10 = v5 * v4;
      v11 = -1;
      v12 = v5 * v4;
      v13 = v4;
      do
      {
        if (*(result + v12))
        {
          v11 = v13;
        }

        ++v13;
        v12 += a3;
      }

      while (a2 != v13);
      if ((v11 & 0x80000000) != 0)
      {
        return result;
      }

      v14 = a3 - v4;
      if (a3 > v4)
      {
        v15 = v4 + v11 * a3;
        do
        {
          v16 = *(result + v10);
          *(result + v10) = *(result + v15);
          *(result + v15++) = v16;
          ++v10;
          --v14;
        }

        while (v14);
      }

      if (a4)
      {
        v17 = *(a4 + v4);
        *(a4 + v4) = *(a4 + v11);
        *(a4 + v11) = v17;
      }

      v9 = *(result + v8);
      if (*(result + v8))
      {
LABEL_15:
        v18 = v4 + 1;
        if (v4 + 1 < a2)
        {
          v19 = v7 + v4;
          v20 = v6;
          do
          {
            if (*(result + v4 + v20 * a3))
            {
              v21 = *(result + v4 + v20 * a3);
              v22 = GF256::m_HighMulTable[(16 * GF256::m_InvTable[v9]) & 0xF00 | v21] ^ GF256::m_LowMulTable[((GF256::m_InvTable[v9] & 0xF) << 8) | v21];
              if (a3 > v4)
              {
                v23 = v5 * v4;
                v24 = v19;
                v25 = a3 - v4;
                do
                {
                  *(result + v24++) ^= GF256::m_HighMulTable[v22 | (*(result + v23) >> 4 << 8)] ^ GF256::m_LowMulTable[v22 | ((*(result + v23) & 0xF) << 8)];
                  ++v23;
                  --v25;
                }

                while (v25);
              }

              if (a4)
              {
                *(a4 + v20) ^= GF256::m_HighMulTable[(16 * *(a4 + v4)) & 0xF00 | v22] ^ GF256::m_LowMulTable[((*(a4 + v4) & 0xF) << 8) & 0xFFFFFFFFFFFFFF00 | v22];
              }
            }

            ++v20;
            v19 += a3;
          }

          while (v20 != a2);
        }
      }

      else
      {
        v18 = v4 + 1;
      }

      ++v6;
      v7 += a3;
      v4 = v18;
    }

    while (v18 != a2);
  }

  return result;
}

uint64_t GF256::rankOfUpperTriangMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 1;
  v5 = a2 - 1;
  v6 = a3;
  while (1)
  {
    if (v3 == a3)
    {
      return a3;
    }

    v7 = 1;
    if (v3 + 1 < a2)
    {
      v8 = v6;
      v9 = v5;
      do
      {
        v7 &= *(a1 + v8) == 0;
        v8 += a3;
        --v9;
      }

      while (v9);
    }

    if (v3 == a2)
    {
      break;
    }

    v10 = v3;
    if (!*(a1 + (v4 * v3)))
    {
      v7 = 0;
    }

    --v5;
    v6 += v4;
    ++v3;
    if ((v7 & 1) == 0)
    {
      return v10;
    }
  }

  return a2;
}

uint64_t GF256::runBackSubstitution(uint64_t result, int a2, int a3, _BYTE *a4)
{
  v4 = (a2 - 1);
  if (a2 >= 1)
  {
    v5 = a3 + 1;
    v6 = a2;
    while (1)
    {
      v7 = v6--;
      v8 = GF256::m_InvTable[*(result + (v5 * v6))];
      a4[v6] = GF256::m_HighMulTable[(16 * v8) & 0xF00 | a4[v6]] ^ GF256::m_LowMulTable[((v8 & 0xF) << 8) | a4[v6]];
      *(result + (v5 * v6)) = 1;
      if (v7 < 2)
      {
        break;
      }

      v9 = v4;
      v10 = a4;
      v11 = v4;
      do
      {
        *v10++ ^= GF256::m_HighMulTable[(16 * a4[v6]) & 0xF00 | *(result + v9)] ^ GF256::m_LowMulTable[((a4[v6] & 0xF) << 8) | *(result + v9)];
        *(result + v9) = 0;
        v9 += a3;
        --v11;
      }

      while (v11);
      --v4;
    }
  }

  return result;
}

void DMEMmbedSession::DMEMmbedSession(DMEMmbedSession *this, unsigned int a2, unsigned __int8 *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  operator new[]();
}

void DMEMmbedSession::~DMEMmbedSession(EmbedKE **this)
{
  v2 = *this;
  if (v2)
  {
    EmbedKE::~EmbedKE(v2);
    MEMORY[0x2743C1750]();
  }

  v3 = this[1];
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C8077774924);
  }

  v4 = this[2];
  if (v4)
  {
    MEMORY[0x2743C1740](v4, 0x1000C8077774924);
  }

  v5 = this[3];
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8077774924);
  }
}

uint64_t addPacketIDToPayload(unsigned int a1, void *a2)
{
  if (a2)
  {
    v3 = 0;
    v4 = xmmword_272078BA0;
    v5 = (*(a2 + 2) + 1);
    v6 = vdupq_n_s64(5uLL);
    v7 = vdupq_n_s64(2uLL);
    while (1)
    {
      if (vmovn_s64(vcgtq_u64(v6, v4)).u8[0])
      {
        *(v5 - 1) = (a1 >> v3) & 1;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v4)).i32[1])
      {
        *v5 = (a1 >> (v3 + 1)) & 1;
      }

      v3 += 2;
      v4 = vaddq_s64(v4, v7);
      v5 += 2;
      if (v3 == 6)
      {
        RandomErasureEncoder::EncodePayloadIntoPacket(*(a2 + 1), 0x72, *(a2 + 3), 0xF, a1);
        v8 = *(a2 + 2);
        v9 = *(a2 + 3);
        if (v9)
        {
          for (i = 0; i != 15; ++i)
          {
            v11 = vdupq_n_s32(*(v9 + i));
            *&v8[8 * i + 5] = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v11, xmmword_2720AC220), vshlq_u32(v11, xmmword_2720AC210))), 0x101010101010101);
          }

          v8 = *(a2 + 2);
        }

        v12 = *a2;

        EmbedKE::InitWithPayload(v12, v8, 125);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t doGenWMAtScaleH(unsigned int a1, unsigned int a2, unsigned int a3, int a4, char *a5, void *a6, unsigned __int8 a7, float a8, float a9, float a10)
{
  result = addPacketIDToPayload(a1, a6);
  if (!result)
  {
    v20 = *a6;

    return EmbedKE::OutputWmAsHFloats(v20, a5, 4, a4, a3, a2, a7, a8, a9, 0.3, -0.5, 0.2, a10);
  }

  return result;
}

void HCImagePerspectiveReader::~HCImagePerspectiveReader(HCImagePerspectiveReader *this)
{
  if (this->var0)
  {
    var5 = this->var5;
    if (var5)
    {
      if (*(var5 + 1))
      {
        RandomErasureDecoder::~RandomErasureDecoder(*(var5 + 1));
        MEMORY[0x2743C1750]();
        var5 = this->var5;
      }

      *(var5 + 1) = 0;
      if (*var5)
      {
        (*(**var5 + 8))(*var5);
        var5 = this->var5;
      }

      *var5 = 0;
      v3 = *(var5 + 2);
      if (v3)
      {
        (*(*v3 + 24))(*(var5 + 2));
        var5 = this->var5;
      }

      *(var5 + 2) = 0;
      MEMORY[0x2743C1750]();
    }
  }
}

void HCImagePerspectiveReader::Reset(HCImagePerspectiveReader *this)
{
  this->var0 = 0;
  var5 = this->var5;
  if (var5)
  {
    if (*(var5 + 1))
    {
      RandomErasureDecoder::~RandomErasureDecoder(*(var5 + 1));
      MEMORY[0x2743C1750]();
      var5 = this->var5;
    }

    if (*var5)
    {
      (*(**var5 + 8))(*var5);
      var5 = this->var5;
    }

    v3 = *(var5 + 2);
    if (v3)
    {
      (*(*v3 + 24))(*(var5 + 2));
      var5 = this->var5;
    }

    *var5 = 0;
    *(var5 + 1) = 0;
    *(var5 + 2) = 0;
    operator new();
  }

  operator new();
}

void sub_27206440C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CMCKey::~CMCKey(va);
  _Unwind_Resume(a1);
}

void CMCKey::~CMCKey(CMCKey *this)
{
  *this = &unk_2881560C0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
}

{
  *this = &unk_2881560C0;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;

  JUMPOUT(0x2743C1750);
}

uint64_t HCImagePerspectiveReader::ProcessUVFrame(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6)
{
  if (*a1 != 1)
  {
    return 4;
  }

  if (!a2)
  {
    return 3;
  }

  if (a5 < 2 * a4)
  {
    return 2;
  }

  if (*(a1 + 4) != a3 || *(a1 + 8) != a4 || *(a1 + 12) != a5)
  {
    return 5;
  }

  if ((*(***(a1 + 24) + 56))(**(a1 + 24)))
  {
    return 7;
  }

  if (a6)
  {
    *(a6 + 4) = 0;
    *a6 = 0;
  }

  if (MultiBlockReader::ReadWatermark(*(*(a1 + 24) + 16), 0, 0))
  {
    return 7;
  }

  v9 = *(*(a1 + 24) + 16);
  v10 = *(v9 + 40);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v9 + 24);
  v12 = 136 * v10;
  v13 = -48;
  do
  {
    if (v11[4] == 3 && v11[10] == 10)
    {
      if (a6)
      {
        *(a6 + 4) = v11[3] * 0.00012207;
        *a6 = 1;
      }

      operator new[]();
    }

    result = 0;
    v13 -= 136;
    v11 += 34;
  }

  while (v12 + v13 != -48);
  return result;
}

BOOL CMCKey::Initialize(CMCKey *this, const unsigned __int8 *a2, unsigned int a3)
{
  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
  if (a3 <= 0x100)
  {
    operator new[]();
  }

  return a3 < 0x101;
}

uint64_t ImpulseMatchedFilter_O(const unsigned __int8 *a1, unsigned int a2, const __int16 *a3, const unsigned __int8 *a4, unsigned __int16 *a5, const unsigned __int16 *a6, int a7)
{
  if (a2)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = 0;
      v10 = a4[2 * v7];
      v11 = (2 * (v7 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v12 = a4[v11];
      v13 = (a6[v11] * a7 + 2) >> 2;
      v14 = v12 & 0xFC;
      v15 = 2 * a6[2 * v7];
      do
      {
        v16 = v9 + 320 * v7;
        if (v14 <= v10)
        {
          v17 = 0;
          v20 = v10;
        }

        else
        {
          v17 = 0;
          v18 = &a3[v10 + 2];
          v19 = v10;
          do
          {
            v17 += a1[v16 + *(v18 - 2)] + a1[v16 + *(v18 - 1)] + a1[v16 + *v18] + a1[v16 + v18[1]];
            v19 += 4;
            v18 += 4;
          }

          while (v19 < v14);
          v20 = v19;
        }

        if (v20 <= v12)
        {
          v21 = v12 + 1 - v20;
          v22 = &a3[v20];
          do
          {
            v23 = *v22++;
            v17 += a1[v16 + v23];
            --v21;
          }

          while (v21);
        }

        a5[160 * v7 + v9++] = (v13 + v15 * v17) >> 10;
      }

      while (v9 != 160);
      ++v7;
    }

    while (v7 != v8);
  }

  return 0;
}

uint64_t InvertLTBilinear36x36Stride48_G(uint64_t result, int a2, unsigned __int8 *a3, int *a4, int a5, int a6)
{
  v6 = 0;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  v11 = a5 + 512;
  v12 = a6 + 512;
  do
  {
    v13 = 0;
    v14 = v12;
    v15 = v11;
    do
    {
      v16 = (v15 >> 10) & 0x3FF;
      v17 = (v14 >> 20) * a2 + (v15 >> 20);
      v18 = (*(result + v17 + 1) - *(result + v17)) * v16 + (*(result + v17) << 10);
      a3[v13] = ((((*(result + v17 + a2 + 1) - *(result + v17 + a2)) * v16 - v18 + (*(result + v17 + a2) << 10)) >> 5) * ((v14 >> 10) & 0x3FF) + 32 * v18) >> 15;
      v15 += v10;
      v14 += v9;
      ++v13;
    }

    while (v13 != 36);
    v11 += v8;
    v12 += v7;
    ++v6;
    a3 += 48;
  }

  while (v6 != 36);
  return result;
}

uint64_t InvertLTBilinear36x36Stride48_YUV422_G(uint64_t result, int a2, unsigned __int8 *a3, int *a4, int a5, int a6)
{
  v6 = 0;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  v11 = a5 + 512;
  v12 = a6 + 512;
  do
  {
    v13 = 0;
    v14 = v12;
    v15 = v11;
    do
    {
      v16 = (v15 >> 10) & 0x3FF;
      v17 = (v14 >> 20) * a2 + 2 * (v15 >> 20);
      v18 = (*(result + v17 + 3) - *(result + v17 + 1)) * v16 + (*(result + v17 + 1) << 10);
      a3[v13] = ((((*(result + v17 + a2 + 3) - *(result + v17 + a2 + 1)) * v16 - v18 + (*(result + v17 + a2 + 1) << 10)) >> 5) * ((v14 >> 10) & 0x3FF) + 32 * v18) >> 15;
      v15 += v10;
      v14 += v9;
      ++v13;
    }

    while (v13 != 36);
    v11 += v8;
    v12 += v7;
    ++v6;
    a3 += 48;
  }

  while (v6 != 36);
  return result;
}

float inv_3x3_float_matrix(float *a1, float *a2)
{
  v2 = a2[4];
  v3 = a2[5];
  v5 = a2[7];
  v4 = a2[8];
  v6 = 1.0 / ((((((a2[2] * a2[3]) * v5) + ((*a2 * v2) * v4)) + ((a2[6] * a2[1]) * v3)) + 0.0) - (((v4 * (a2[3] * a2[1])) + ((*a2 * v3) * v5)) + ((v2 * a2[2]) * a2[6])));
  *a1 = ((v2 * v4) - (v3 * v5)) * v6;
  a1[1] = v6 * ((a2[2] * a2[7]) - (a2[1] * a2[8]));
  a1[2] = v6 * ((a2[1] * a2[5]) - (a2[2] * a2[4]));
  a1[3] = v6 * ((a2[5] * a2[6]) - (a2[3] * a2[8]));
  a1[4] = v6 * ((*a2 * a2[8]) - (a2[2] * a2[6]));
  a1[5] = v6 * ((a2[2] * a2[3]) - (*a2 * a2[5]));
  a1[6] = v6 * ((a2[3] * a2[7]) - (a2[4] * a2[6]));
  a1[7] = v6 * ((a2[1] * a2[6]) - (*a2 * a2[7]));
  result = v6 * ((*a2 * a2[4]) - (a2[1] * a2[3]));
  a1[8] = result;
  return result;
}

void Homography::Homography(Homography *this, float *a2)
{
  v2 = 1.0 / a2[8];
  v3 = vdupq_n_s32(0x49800000u);
  v4.i64[0] = 0x3F0000003F000000;
  v4.i64[1] = 0x3F0000003F000000;
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vcvtq_s32_f32(vrndmq_f32(vmlaq_f32(v4, v3, vmulq_n_f32(*a2, v2))));
  v7 = vcvtq_s32_f32(vrndmq_f32(vmlaq_f32(v5, v3, vmulq_n_f32(*(a2 + 4), v2))));
  *this = v6;
  *(this + 1) = v7;
}

uint64_t InvertPTBilinearX_16Hx16W(uint64_t result, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int16 a9, uint64_t a10)
{
  v41[2] = *MEMORY[0x277D85DE8];
  if (!*(a7 + 28))
  {
    v38 = result;
    if (a9)
    {
      v10 = a8;
      v13 = 0;
      v14 = a3 << 20;
      v15 = a4 << 20;
      v16 = a8;
      v34 = a6;
      v35 = a7;
      do
      {
        v37 = v13;
        result = (*a10)(v40, a7, v13);
        if (v10)
        {
          v17 = 0;
          v18 = (~v37 + v16) * v34;
          do
          {
            v19 = 0;
            v20 = 1;
            v21 = 1;
            do
            {
              v22 = 0;
              v23 = v21;
              v24 = v19 | (16 * v17);
              v25 = v40;
              v26 = 1;
              do
              {
                v27 = &v40[v22];
                v28 = v27[1] + *v25 * v24;
                v29 = v26;
                v30 = v27[3] + v27[2] * v24;
                v32 = v28 < v15 && (v28 | v30) >= 0;
                v20 &= v30 < v14 && v32;
                v25 = v41;
                v22 = 60;
                v26 = 0;
              }

              while ((v29 & 1) != 0);
              v21 = 0;
              v19 = 15;
            }

            while ((v23 & 1) != 0);
            if (v20)
            {
              result = (*(a10 + 16))(v38, a2, a5 + 16 * (v17 + v18), a6, v17, v40);
            }

            else
            {
              result = (*(a10 + 32))(a5 + 16 * (v17 + v18), a6);
            }

            ++v17;
          }

          while (v17 != v16);
        }

        v13 = v37 + 1;
        v10 = a8;
        a7 = v35;
      }

      while (v37 + 1 != a9);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t InvertPTBilinearY_16Hx16W(uint64_t result, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int16 a9, uint64_t a10)
{
  v43[2] = *MEMORY[0x277D85DE8];
  if (!*(a7 + 24))
  {
    v40 = result;
    if (a8)
    {
      v12 = 0;
      v13 = a3 << 20;
      v14 = a4 << 20;
      v36 = a6;
      v37 = a8;
      v38 = a7;
      do
      {
        v39 = v12;
        result = (*(a10 + 8))(v42, a7, v12);
        if (a9)
        {
          for (i = 0; i != a9; ++i)
          {
            v16 = 0;
            v17 = v42;
            v18 = 1;
            v19 = 1;
            do
            {
              v20 = 0;
              v21 = v18;
              v22 = *v17;
              v23 = &v42[v16];
              v24 = v23[1];
              v25 = v23[2];
              v26 = v23[3];
              v27 = 1;
              do
              {
                v28 = v27;
                v29 = v20 | (16 * i);
                v30 = v24 + v29 * v22;
                v31 = v26 + v29 * v25;
                v33 = v30 < v14 && (v30 | v31) >= 0;
                v19 &= v31 < v13 && v33;
                v20 = 15;
                v27 = 0;
              }

              while ((v28 & 1) != 0);
              v18 = 0;
              v17 = v43;
              v16 = 60;
            }

            while ((v21 & 1) != 0);
            v34 = (16 * (i + v39 * v36));
            if (v19)
            {
              result = (*(a10 + 24))(v40, a2, a5 + v34, a6, i, v42);
            }

            else
            {
              result = (*(a10 + 32))(a5 + v34, a6);
            }
          }
        }

        a7 = v38;
        v12 = v39 + 1;
      }

      while (v39 + 1 != v37);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void *setZero_16x16_G(void *result, unsigned int a2)
{
  v2 = 16;
  do
  {
    *result = 0;
    result[1] = 0;
    result = (result + a2);
    --v2;
  }

  while (v2);
  return result;
}

uint64_t calculateRowTransforms_16_G(uint64_t result, int *a2, int a3)
{
  v3 = (result + 8);
  v4 = 16 * a3;
  v5 = 16;
  do
  {
    if (a2[7] * v4 == -1048576)
    {
      v6 = 0;
    }

    else
    {
      v6 = vcvts_n_s32_f32(1.0 / vcvts_n_f32_s32(a2[7] * v4 + 0x100000, 0x14uLL), 0x14uLL);
    }

    *(v3 - 2) = (v6 * *a2 + 0x80000) >> 20;
    *(v3 - 1) = (v6 * (a2[2] + a2[1] * v4) + 0x80000) >> 20;
    *v3 = (v6 * a2[3] + 0x80000) >> 20;
    v3[1] = (v6 * (a2[5] + a2[4] * v4) + 0x80000) >> 20;
    v3 += 4;
    ++v4;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t calculateColTransforms_16_G(uint64_t result, int *a2, int a3)
{
  v3 = (result + 8);
  v4 = 16 * a3;
  v5 = 16;
  do
  {
    if (a2[6] * v4 == -1048576)
    {
      v6 = 0;
    }

    else
    {
      v6 = vcvts_n_s32_f32(1.0 / vcvts_n_f32_s32(a2[6] * v4 + 0x100000, 0x14uLL), 0x14uLL);
    }

    *(v3 - 2) = (v6 * a2[1] + 0x80000) >> 20;
    *(v3 - 1) = (v6 * (a2[2] + *a2 * v4) + 0x80000) >> 20;
    *v3 = (v6 * a2[4] + 0x80000) >> 20;
    v3[1] = (v6 * (a2[5] + a2[3] * v4) + 0x80000) >> 20;
    v3 += 4;
    ++v4;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t invertPTBilinearX_16x16_G(uint64_t result, int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v6 = 0;
  v7 = 16 * a5;
  v8 = a3 - a4 + 16 * a4;
  do
  {
    v9 = 0;
    v10 = (a6 + 16 * v6);
    v11 = *v10;
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[1] + *v10 * v7;
    v15 = v13 + v12 * v7;
    do
    {
      v16 = (v14 >> 10) & 0x3FF;
      v17 = (v15 >> 20) * a2 + (v14 >> 20);
      v18 = (*(result + v17 + 1) - *(result + v17)) * v16 + (*(result + v17) << 10);
      v19 = (((*(result + v17 + a2 + 1) - *(result + v17 + a2)) * v16 - v18 + (*(result + v17 + a2) << 10)) >> 5) * ((v15 >> 10) & 0x3FF) + 32 * v18;
      *(v8 + v9) = (v19 >> 15) & ~(v19 >> 31);
      v14 += v11;
      v15 += v12;
      ++v9;
    }

    while (v9 != 16);
    ++v6;
    v8 -= a4;
  }

  while (v6 != 16);
  return result;
}

uint64_t invertPTBilinearY_16x16_G(uint64_t result, int a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v6 = 0;
  v7 = 16 * a5;
  do
  {
    v8 = 0;
    v9 = (a6 + 16 * v6);
    v10 = *v9;
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[1] + *v9 * v7;
    v14 = v12 + v11 * v7;
    do
    {
      v15 = (v13 >> 10) & 0x3FF;
      v16 = (v14 >> 20) * a2 + (v13 >> 20);
      v17 = (*(result + v16 + 1) - *(result + v16)) * v15 + (*(result + v16) << 10);
      v18 = (((*(result + v16 + a2 + 1) - *(result + v16 + a2)) * v15 - v17 + (*(result + v16 + a2) << 10)) >> 5) * ((v14 >> 10) & 0x3FF) + 32 * v17;
      *(a3 + v8) = (v18 >> 15) & ~(v18 >> 31);
      v13 += v10;
      v14 += v11;
      ++v8;
    }

    while (v8 != 16);
    ++v6;
    a3 += a4;
  }

  while (v6 != 16);
  return result;
}

uint64_t LogPolarRemap_G(uint64_t result, const unsigned __int16 *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, unsigned int a5, unsigned __int8 *a6, unsigned int a7, unsigned int a8, unsigned int *a9)
{
  *a9 = 0;
  if (a7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 2 * a8;
    v12 = a4 + 1;
    v13 = a3 + 1;
    v14 = result + a5;
    v15 = a7;
    do
    {
      if (a8)
      {
        v16 = &a6[v9 & 0xFFFFFFFE];
        v17 = v13;
        v18 = v12;
        v19 = a2;
        v20 = a8;
        do
        {
          v21 = *v19++;
          v22 = (result + v21);
          v23 = (v14 + v21);
          v24 = *(v17 - 1);
          v26 = *v17;
          v17 += 2;
          v25 = v26;
          v27 = *(v18 - 1);
          v28 = *v18;
          v18 += 2;
          v29 = (v24 * *v22 + v25 * v22[1] + v27 * *v23 + v28 * v23[1]) >> 8;
          if (v29 >= 0xFF)
          {
            v29 = 255;
          }

          *v16 = v29;
          v16[a8] = v29;
          *a9 += v29;
          ++v16;
          --v20;
        }

        while (v20);
      }

      ++v10;
      v9 += 2 * a8;
      a2 = (a2 + v11);
      v12 += v11;
      v13 += v11;
    }

    while (v10 != v15);
  }

  return result;
}

void MultiBlockReader::~MultiBlockReader(MultiBlockReader *this)
{
  *this = &unk_2881560F0;
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    TranslationStage::~TranslationStage(v3);
    MEMORY[0x2743C1750]();
  }

  v4 = *(this + 23);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8052888210);
  }

  v6 = *(this + 3);
  if (v6)
  {
    MEMORY[0x2743C1740](v6 - 16, 0x1080C8099388928);
  }

  *(this + 9) = &unk_288156138;
  for (i = 88; i != 168; i += 8)
  {
    v8 = *(this + i);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }
}

{
  MultiBlockReader::~MultiBlockReader(this);

  JUMPOUT(0x2743C1750);
}

void CMCKeyChain::~CMCKeyChain(CMCKeyChain *this)
{
  *this = &unk_288156138;
  for (i = 16; i != 96; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

{
  *this = &unk_288156138;
  v2 = 16;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v2 += 8;
    if (v2 == 96)
    {

      JUMPOUT(0x2743C1750);
    }
  }
}

uint64_t MultiBlockReader::Initialize(MultiBlockReader *this, BlockConfigBase *a2)
{
  if (a2)
  {
    *(this + 8) = a2;
    operator new();
  }

  return 2;
}

uint64_t (***MultiBlockReader::SetReadStatsProvider(uint64_t a1, uint64_t a2))(void)
{
  *(a1 + 8) = a2;
  result = *(a1 + 168);
  if (result)
  {
    return (**result)(result);
  }

  return result;
}

uint64_t MultiBlockReader::SetReadStatsImportance(uint64_t a1, int a2)
{
  *(a1 + 16) = a2;
  result = *(a1 + 168);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t CMCKeyChain::AddKey(CMCKeyChain *this, CMCKey *a2)
{
  if (a2 && *(this + 2) != 10)
  {
    operator new();
  }

  return 0;
}

uint64_t MultiBlockReader::ReadWatermark(uint64_t a1, unsigned int *a2, int a3)
{
  if (!*(a1 + 80))
  {
    return 6;
  }

  v42 = 0;
  v6 = *(a1 + 40);
  if (v6 != (*(**(a1 + 64) + 48))(*(a1 + 64)))
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      MEMORY[0x2743C1740](v7 - 16, 0x1080C8099388928);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      MEMORY[0x2743C1740](v8, 0x1000C8052888210);
    }

    *(a1 + 40) = (*(**(a1 + 64) + 48))(*(a1 + 64));
    operator new[]();
  }

  LOWORD(v43) = 0;
  v41 = 0;
  if (!*(a1 + 40))
  {
    goto LABEL_30;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    *(*(a1 + 48) + 4 * v10) = v10;
    v11 = *(a1 + 24) + v9;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = -1;
    *(v11 + 24) = 0uLL;
    *(v11 + 40) = 0uLL;
    *(v11 + 56) = 0uLL;
    *(v11 + 72) = 0uLL;
    *(v11 + 88) = 0uLL;
    *(v11 + 104) = 0uLL;
    *(v11 + 120) = 0uLL;
    ++v10;
    v12 = *(a1 + 40);
    v9 += 136;
  }

  while (v10 < v12);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(a1 + 24);
      if (!(*(**(a1 + 64) + 40))(*(a1 + 64), v14))
      {
        return 4;
      }

      v16 = v15 + v13;
      *(v15 + v13 + 16) = 0;
      (*(**(a1 + 64) + 24))(*(a1 + 64), v14, &v42, &v43, &v41);
      result = DetectStage::DoFirstStage(*(a1 + 168), v42, v43, &v41, v15 + v13 + 72, a2);
      if (result)
      {
        return result;
      }

      if (a2)
      {
        v18 = *(a2 + 1);
        if (v18)
        {
          v18(*a2);
        }

        v19 = *(a2 + 2);
        if (v19)
        {
          if (*v19)
          {
            return 9;
          }
        }
      }

      v20 = *(a1 + 168);
      v21 = *(v20 + 20);
      *v16 = v21;
      if (v21 >= 91)
      {
        *(v16 + 16) = 1;
        *(v15 + v13 + 12) = *(v15 + v13 + 104);
        result = TranslationStage::GetBlockTranslationPD(*(a1 + 176), *(v20 + 32), (v16 + 72));
        if (result)
        {
          return result;
        }

        v22 = *(*(a1 + 176) + 8);
        *(v15 + v13 + 4) = v22;
        if (v22 <= -1769473)
        {
          *(v16 + 16) = 2;
          *(v15 + v13 + 8) = *(v15 + v13 + 108);
        }
      }

      if (a2)
      {
        v23 = *(a2 + 1);
        if (v23)
        {
          v23(*a2);
        }

        v24 = *(a2 + 2);
        if (v24)
        {
          if (*v24)
          {
            return 9;
          }
        }
      }

      ++v14;
      v13 += 136;
      if (v14 >= *(a1 + 40))
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    if ((*(**(a1 + 64) + 48))(*(a1 + 64)) >= 2)
    {
      v25 = 1;
      do
      {
        while (1)
        {
          v26 = (*(a1 + 48) + 4 * v25);
          v27 = *(v26 - 1);
          if (*(*(a1 + 24) + 136 * v27 + 4) <= *(*(a1 + 24) + 136 * *v26 + 4))
          {
            break;
          }

          *(v26 - 1) = *v26;
          *v26 = v27;
          v25 = 1;
          if ((*(**(a1 + 64) + 48))(*(a1 + 64)) <= 1)
          {
            goto LABEL_36;
          }
        }

        ++v25;
      }

      while (v25 < (*(**(a1 + 64) + 48))(*(a1 + 64)));
    }

LABEL_36:
    v28 = 56;
    if (a3)
    {
      v28 = 40;
    }

    v29 = *(a1 + v28);
    if (v29)
    {
      v30 = 0;
      v31 = 4 * v29;
      while (1)
      {
        if (a2)
        {
          v32 = *(a2 + 1);
          if (v32)
          {
            v32(*a2);
          }

          v33 = *(a2 + 2);
          if (v33)
          {
            if (*v33)
            {
              return 9;
            }
          }
        }

        v34 = *(*(a1 + 48) + v30);
        if (*(*(a1 + 24) + 136 * v34 + 16) != 2)
        {
          goto LABEL_55;
        }

        v39 = 0;
        v40 = 0;
        v38 = 0;
        v37 = 0;
        (*(**(a1 + 64) + 32))(*(a1 + 64), v34, &v40, &v39, &v38 + 4, &v38, &v37, &v39 + 4);
        v35 = 17 * v34;
        ReadStage::ReadWatermark(*(a1 + 184), v40, SHIDWORD(v38), v39, v38, v37, SHIDWORD(v39), (*(a1 + 24) + 8 * v35 + 72), *(a1 + 24) + 8 * v35 + 24, a2);
        v36 = *(a1 + 24) + 8 * v35;
        if (*(v36 + 36) != 1 || (*(v36 + 16) = 3, (a3 & 1) != 0))
        {
LABEL_55:
          v30 += 4;
          if (v31 != v30)
          {
            continue;
          }
        }

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t octaxis_128x128_YUV422_G(const unsigned __int8 *a1, unsigned int a2, signed __int8 *a3)
{
  v3 = 0;
  v4 = a1 + 1;
  v5 = -2 - a2;
  v6 = a2 - 2;
  v7 = 2 - a2;
  v8 = -a2;
  v9 = a1;
  v10 = &a1[a2];
  do
  {
    v11 = 0;
    v12 = v3 + 1;
    v13 = -1;
    v14 = a3;
    do
    {
      if (v3)
      {
        v15 = v9[v11 + 1];
        v16 = v4[v8 + v11];
        v17 = v15 >= v16;
        v18 = v15 != v16;
        if (!v17)
        {
          v18 = -1;
        }

        if (v3 == 127)
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v18 = 0;
        v15 = a1[v11 + 1];
      }

      v20 = v10[v11 + 1];
      v17 = v15 >= v20;
      v19 = v15 != v20;
      if (!v17)
      {
        v19 = -1;
      }

LABEL_11:
      v21 = v19 + v18;
      if (v11 == 254)
      {
        v22 = a1[(v3 * a2) + 255];
        v23 = 254;
      }

      else
      {
        v22 = v9[v11 + 1];
        v24 = v9[v11 + 3];
        v17 = v22 >= v24;
        v25 = v22 != v24;
        if (!v17)
        {
          v25 = -1;
        }

        v21 += v25;
        if (!v11)
        {
          v27 = 0;
          goto LABEL_19;
        }

        v23 = v11;
      }

      v26 = v4[v3 * a2 - 2 + v23];
      v17 = v22 >= v26;
      v27 = v22 != v26;
      if (!v17)
      {
        v27 = -1;
      }

LABEL_19:
      v28 = 0;
      if (v3)
      {
        if (v11 != 254)
        {
          v29 = v9[v11 + 1];
          v30 = v4[v7 + v11];
          v17 = v29 >= v30;
          v28 = v29 != v30;
          if (!v17)
          {
            v28 = -1;
          }
        }
      }

      v31 = 0;
      if (v3 != 127)
      {
        if (v11)
        {
          v32 = v9[v11 + 1];
          v33 = v4[v6 + v11];
          v17 = v32 >= v33;
          v31 = v32 != v33;
          if (!v17)
          {
            v31 = -1;
          }
        }
      }

      if (((v13 | (v3 - 1)) & 0x8000) != 0)
      {
        v36 = 0;
      }

      else
      {
        v34 = v9[v11 + 1];
        v35 = v4[v5 + v11];
        v17 = v34 >= v35;
        v36 = v34 != v35;
        if (!v17)
        {
          v36 = -1;
        }
      }

      v37 = 0;
      if (v3 != 127 && v11 != 254)
      {
        v38 = v9[v11 + 1];
        v39 = v10[v11 + 3];
        v17 = v38 >= v39;
        v40 = v38 != v39;
        if (v17)
        {
          v37 = v40;
        }

        else
        {
          v37 = -1;
        }
      }

      *v14++ = v27 + v21 + v28 + v31 + v36 + v37;
      v11 += 2;
      ++v13;
    }

    while (v11 != 256);
    a3 += 128;
    v5 += a2;
    v6 += a2;
    v9 += a2;
    v10 += a2;
    v7 += a2;
    v8 += a2;
    ++v3;
  }

  while (v12 != 128);
  return 0;
}

uint64_t octaxis_O(uint64_t result, int a2, int a3, unsigned int a4, signed __int8 *a5)
{
  *&v70[127] = *MEMORY[0x277D85DE8];
  v5 = (a2 - 1);
  v6 = a4;
  v7 = (result + a4);
  v8 = *result;
  v9 = *v7;
  v10 = v8 >= v9;
  v11 = v8 != v9;
  if (!v10)
  {
    v11 = -1;
  }

  v12 = -v11;
  v69 = -v11;
  if (a2 < 2)
  {
    v29 = 0;
  }

  else
  {
    v13 = v70;
    v14 = (result + 1);
    v15 = (result + 1 + v6);
    v16 = (a2 - 1);
    v17 = a5;
    do
    {
      v18 = *v15;
      v10 = v18 >= v8;
      v19 = v18 != v8;
      if (!v10)
      {
        v19 = -1;
      }

      v21 = *v14++;
      v20 = v21;
      v10 = v21 >= v8;
      v22 = v21 != v8;
      if (!v10)
      {
        v22 = -1;
      }

      *v17++ = v11 - (v19 + v22);
      v23 = *(v15 - 1);
      v10 = v20 >= v23;
      v24 = v20 != v23;
      if (!v10)
      {
        v24 = -1;
      }

      v25 = v24 + v22;
      *(v13 - 1) = v12 - v24;
      v26 = *v15++;
      v27 = v20 != v26;
      if (v20 < v26)
      {
        v28 = -1;
      }

      else
      {
        v28 = v27;
      }

      LOBYTE(v11) = v25 + v28;
      LOBYTE(v12) = v19 - v28;
      *v13++ = v12;
      v8 = v20;
      --v16;
    }

    while (v16);
    v29 = (a2 - 1);
  }

  a5[v29] = v11;
  v30 = a3 - 2;
  if (a3 <= 2)
  {
    v34 = v7;
  }

  else
  {
    v31 = v6 + result + 1;
    v32 = result + 2 * v6 + 1;
    v33 = 1;
    do
    {
      v34 = &v7[v6];
      v35 = *v7;
      v36 = v7[v6];
      v10 = v36 >= v35;
      v37 = v36 != v35;
      if (v10)
      {
        v38 = v37;
      }

      else
      {
        v38 = -1;
      }

      v39 = v69 - v38;
      v69 = v38;
      if (v5 < 1)
      {
        v55 = 0;
      }

      else
      {
        v40 = v70;
        v41 = (a2 - 1);
        v42 = a2;
        v43 = v32;
        v44 = v31;
        do
        {
          v45 = *v43;
          v10 = v45 >= v35;
          v46 = v45 != v35;
          if (!v10)
          {
            v46 = -1;
          }

          v48 = *v44++;
          v47 = v48;
          v10 = v48 >= v35;
          v49 = v48 != v35;
          if (!v10)
          {
            v49 = -1;
          }

          a5[v42] = v39 - (v46 + v49);
          v50 = v49 + *v40;
          v51 = *(v43 - 1);
          v10 = v47 >= v51;
          v52 = v47 != v51;
          if (!v10)
          {
            v52 = -1;
          }

          *(v40 - 1) = v38 - v52;
          v53 = *v43++;
          v54 = v47 != v53;
          if (v47 < v53)
          {
            v54 = -1;
          }

          v39 = v50 + v52 + v54;
          v38 = v46 - v54;
          *v40++ = v38;
          ++v42;
          v35 = v47;
          --v41;
        }

        while (v41);
        v55 = (a2 - 1);
      }

      a5 += a2;
      a5[v55] = v39;
      result = (v33 + 1);
      v31 += v6;
      v32 += v6;
      v7 = v34;
    }

    while (v33++ != v30);
  }

  v57 = v69;
  if (a2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v60 = *v34;
    v58 = v34 + 1;
    v59 = v60;
    v61 = v70;
    v62 = (a2 - 1);
    v63 = &a5[a2];
    do
    {
      v65 = *v58++;
      v64 = v65;
      v10 = v65 >= v59;
      v66 = v65 != v59;
      if (!v10)
      {
        v66 = -1;
      }

      *v63++ = v57 - v66;
      v67 = *v61++;
      v57 = v66 + v67;
      v59 = v64;
      --v62;
    }

    while (v62);
  }

  a5[a2 + v5] = v57;
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PhaseDeviation::Initialize(PhaseDeviation *this)
{
  if (!*(this + 4))
  {
    operator new[]();
  }

  v2 = *(this + 3);
  if (!v2)
  {
    operator new[]();
  }

  *(this + 13) = v2 + 128;
  *(this + 14) = v2 + 256;
  v3 = *(this + 5);
  if (!v3)
  {
    operator new[]();
  }

  *(this + 6) = v3 + 32;
  *(this + 7) = v3 + 64;
  *(this + 8) = v3 + 96;
  *(this + 11) = v3 + 128;
  *(this + 12) = v3 + 192;
  v4 = *(this + 9);
  if (!v4)
  {
    operator new[]();
  }

  *(this + 10) = v4 + 32;
  *(this + 15) = v4 + 64;
  *(this + 16) = v4 + 128;
  return 0;
}

uint64_t PhaseDeviation::doPhaseEstimation(PhaseDeviation *this, const __int16 *a2, const int (*a3)[4])
{
  v5 = 0;
  v6 = (*a3)[0];
  v7 = (*a3)[1];
  v8 = (*a3)[2];
  v9 = (*a3)[3];
  v10 = *(this + 4);
  v76 = v7;
  v77 = (*a3)[0];
  v74 = v9;
  v75 = v8;
  do
  {
    v11 = CGridLuts::m_GridY[v5];
    v12 = CGridLuts::m_GridX[v5];
    v13 = (v8 * v12 + v6 * v11 + 0x2000) >> 14;
    v14 = (v9 * v12 + v7 * v11 + 0x2000) >> 14;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = -v14;
    }

    if (v13 >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = -v13;
    }

    v17 = (v15 + 4096) >> 6;
    *(v10 + v5) = 0;
    if (v17 <= 0x7E && v16 <= 0xFFF)
    {
      v18 = 2 * (v15 & 0x3F);
      v19 = PhaseDeviation::m_Fract1DComplexPSF_Q6[v18];
      v20 = PhaseDeviation::m_Fract1DComplexPSF_Q6[v18 | 1];
      v21 = PhaseDeviation::m_Fract1DComplexPSF_Q6[128 - v18];
      v22 = PhaseDeviation::m_Fract1DComplexPSF_Q6[129 - v18];
      v23 = (2 * v16) & 0x7E;
      v24 = PhaseDeviation::m_Fract1DComplexPSF_Q6[v23];
      v25 = PhaseDeviation::m_Fract1DComplexPSF_Q6[(2 * (v16 & 0x3F)) | 1];
      v26 = PhaseDeviation::m_Fract1DComplexPSF_Q6[128 - v23];
      v27 = PhaseDeviation::m_Fract1DComplexPSF_Q6[129 - v23];
      v28 = (v27 * v22 + v26 * v21 + 2048) >> 12;
      v29 = (2 * v16) & 0x1F80;
      v30 = v17 + 1 + v29 + 128;
      v31 = a2[2 * v30];
      v32 = (v27 * v21 - v22 * v26 + 2048) >> 12;
      v33 = a2[(2 * (v30 & 0x3FFFFFFF)) | 1];
      v34 = (v24 * v21 - v25 * v22 + 2048) >> 12;
      v35 = (-(v25 * v21) - v22 * v24 + 2048) >> 12;
      v36 = v17 + 1 + v29;
      v37 = a2[2 * v36];
      v38 = a2[(2 * (v36 & 0x3FFFFFFF)) | 1];
      v39 = (v26 * v19 - v27 * v20 + 2048) >> 12;
      v40 = (v27 * v19 + v26 * v20 + 2048) >> 12;
      v41 = (v29 + 128) | v17;
      v42 = a2[2 * v41];
      v43 = a2[(2 * (v41 & 0x3FFFFFFF)) | 1];
      v44 = (v25 * v20 + v24 * v19 + 2048) >> 12;
      v45 = (v24 * v20 - v25 * v19 + 2048) >> 12;
      v46 = v17 | v29;
      v47 = a2[2 * v46];
      v48 = a2[(2 * (v46 & 0x3FFFFFFF)) | 1];
      v49 = (v28 * v31 + v34 * v37 + v39 * v42 + v44 * v47 - (v32 * v33 + v35 * v38 + v40 * v43 + v45 * v48));
      v50 = v28 * v33 + v32 * v31 + v35 * v37 + v34 * v38 + v40 * v42 + v39 * v43 + v45 * v47 + v44 * v48;
      if (v13 >= 0)
      {
        v51 = v50;
      }

      else
      {
        v51 = -v50;
      }

      if (v49 >= 0)
      {
        v52 = v49;
      }

      else
      {
        v52 = -v49;
      }

      if (v50 < 0)
      {
        v50 = -v50;
      }

      if (v50 >= v52)
      {
        v55 = PhaseDeviation::atanOver2PiQ16Octant18(v51, v49);
        v54 = -16384 - v55;
        if (v51 >= 1)
        {
          v54 = 0x4000 - v55;
        }
      }

      else
      {
        v53 = PhaseDeviation::atanOver2PiQ16Octant18(v49, v51);
        v54 = v53 ^ 0x8000;
        if (v49 > 0)
        {
          v54 = v53;
        }
      }

      *(*(this + 3) + 2 * v5) = v54;
      *(v10 + v5) = 1;
      v7 = v76;
      v6 = v77;
      v9 = v74;
      v8 = v75;
    }

    ++v5;
  }

  while (v5 != 64);
  v56 = 0;
  *(this + 4) = 0;
  do
  {
    *(*(this + 15) + v56) = 0;
    *(*(this + 16) + v56) = 0;
    *(*(this + 11) + v56) = 0;
    *(*(this + 12) + v56) = 0;
    v57 = *(this + 14);
    *(*(this + 13) + 2 * v56) = 0;
    *(v57 + 2 * v56) = 0;
    if (*(*(this + 4) + v56) == 1)
    {
      *(*(this + 15) + *(this + 4)) = CGridLuts::m_GridX[v56];
      *(*(this + 16) + *(this + 4)) = CGridLuts::m_GridY[v56];
      v58 = CGridLuts::m_anGridPhase[v56];
      *(*(this + 11) + *(this + 4)) = (*(*(this + 3) + 2 * v56) - v58 + 128) >> 8;
      *(*(this + 12) + *(this + 4)) = (v58 + *(*(this + 3) + 2 * v56) + 128) >> 8;
      v59 = *(this + 3);
      v60 = *(this + 4);
      v61 = *(this + 14);
      *(*(this + 13) + 2 * v60) = *(v59 + 2 * v56) - v58;
      *(v61 + 2 * v60) = *(v59 + 2 * v56) + v58;
      *(this + 4) = v60 + 1;
    }

    ++v56;
  }

  while (v56 != 64);
  v62 = 0;
  v63 = 0;
  *(this + 5) = 0;
  v64 = 2;
  v65 = &word_272077AA6;
  do
  {
    *(*(this + 5) + v63) = 0;
    *(*(this + 7) + v63) = 0;
    *(*(this + 6) + v63) = 0;
    *(*(this + 8) + v63) = 0;
    *(*(this + 9) + v63) = 0;
    *(*(this + 10) + v63) = 0;
    v66 = *(this + 4);
    if (*(v66 + v62) == 1 && *(v66 + v62 + 1) == 1)
    {
      v67 = (*(this + 3) + v64);
      v68 = *(v67 - 1);
      LOWORD(v67) = *v67;
      v69 = *(v65 - 1);
      v70 = *v65;
      v71 = v68 - v69 + 128;
      *(*(this + 5) + v63) = (v71 - (v67 - *v65)) >> 8;
      *(*(this + 6) + v63) = (v71 + v67 - v70) >> 8;
      LOWORD(v67) = v70 + v67;
      v72 = v68 + v69 + 128;
      *(*(this + 7) + v63) = (v72 - v67) >> 8;
      *(*(this + 8) + v63) = (v67 + v72) >> 8;
      *(*(this + 9) + v63) = 2 * CGridLuts::m_GridX[v62];
      *(*(this + 10) + v63) = 2 * CGridLuts::m_GridY[v62];
      ++*(this + 5);
    }

    ++v63;
    v62 += 2;
    v65 += 2;
    v64 += 4;
  }

  while (v63 != 32);
  return 0;
}

void PhaseDeviation::~PhaseDeviation(PhaseDeviation *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8077774924);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C80BDFB0063);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x2743C1740](v4, 0x1000C8077774924);
  }

  v5 = *(this + 9);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8077774924);
  }
}

uint64_t PhaseDeviation::Calc1DWith2DSparseRefinement(PhaseDeviation *this, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5)
{
  v7 = 0;
  v143 = *MEMORY[0x277D85DE8];
  v8 = *(this + 9);
  v9 = *(this + 5);
  v10 = *(this + 7);
  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  do
  {
    v12 = 0;
    v13 = vdupq_n_s8(v7);
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = vmulq_s8(*(v8 + v12), v13);
      v19 = vsubq_s8(*(v9 + v12), v18);
      v20 = vmovl_u8(*v19.i8);
      v21 = vmovl_high_u16(v20);
      v22 = vmovl_high_u8(v19);
      v23 = vmovl_high_u16(v22);
      v24 = vmovl_u16(*v20.i8);
      v25 = vmovl_u16(*v22.i8);
      v26 = vnegq_s32(v25);
      v27 = vsubw_high_u16(0, v22);
      v28 = vnegq_s32(v24);
      v29 = vsubw_high_u16(0, v20);
      v17 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v26, v11), v25), v25, v26), vbslq_s8(vcgtq_u32(vandq_s8(v27, v11), v23), v23, v27)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v17);
      v16 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v28, v11), v24), v24, v28), vbslq_s8(vcgtq_u32(vandq_s8(v29, v11), v21), v21, v29)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v16);
      v30 = vsubq_s8(*(v10 + v12), v18);
      v31 = vmovl_u8(*v30.i8);
      v32 = vmovl_high_u16(v31);
      v33 = vmovl_high_u8(v30);
      v34 = vmovl_high_u16(v33);
      v35 = vmovl_u16(*v31.i8);
      v36 = vmovl_u16(*v33.i8);
      v37 = vnegq_s32(v36);
      v38 = vsubw_high_u16(0, v33);
      v39 = vnegq_s32(v35);
      v40 = vsubw_high_u16(0, v31);
      v15 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v37, v11), v36), v36, v37), vbslq_s8(vcgtq_u32(vandq_s8(v38, v11), v34), v34, v38)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v15);
      v14 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v39, v11), v35), v35, v39), vbslq_s8(vcgtq_u32(vandq_s8(v40, v11), v32), v32, v40)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v14);
      v12 += 16;
    }

    while (v12 != 32);
    v142[v7] = vaddvq_s16(vaddq_s16(v16, v17));
    v141[v7++] = vaddvq_s16(vaddq_s16(v14, v15));
  }

  while (v7 != 128);
  v41 = 0;
  v42 = *(this + 10);
  v43 = *(this + 6);
  v44.i64[0] = 0xFF000000FFLL;
  v44.i64[1] = 0xFF000000FFLL;
  v45 = *(this + 8);
  do
  {
    v46 = 0;
    v47 = vdupq_n_s8(v41);
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    do
    {
      v52 = vmulq_s8(*(v42 + v46), v47);
      v53 = vsubq_s8(*(v43 + v46), v52);
      v54 = vmovl_u8(*v53.i8);
      v55 = vmovl_high_u16(v54);
      v56 = vmovl_high_u8(v53);
      v57 = vmovl_high_u16(v56);
      v58 = vmovl_u16(*v54.i8);
      v59 = vmovl_u16(*v56.i8);
      v60 = vnegq_s32(v59);
      v61 = vsubw_high_u16(0, v56);
      v62 = vnegq_s32(v58);
      v63 = vsubw_high_u16(0, v54);
      v51 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v60, v44), v59), v59, v60), vbslq_s8(vcgtq_u32(vandq_s8(v61, v44), v57), v57, v61)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v51);
      v50 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v62, v44), v58), v58, v62), vbslq_s8(vcgtq_u32(vandq_s8(v63, v44), v55), v55, v63)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v50);
      v64 = vsubq_s8(*(v45 + v46), v52);
      v65 = vmovl_u8(*v64.i8);
      v66 = vmovl_high_u16(v65);
      v67 = vmovl_high_u8(v64);
      v68 = vmovl_high_u16(v67);
      v69 = vmovl_u16(*v65.i8);
      v70 = vmovl_u16(*v67.i8);
      v71 = vnegq_s32(v70);
      v72 = vsubw_high_u16(0, v67);
      v73 = vnegq_s32(v69);
      v74 = vsubw_high_u16(0, v65);
      v49 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v71, v44), v70), v70, v71), vbslq_s8(vcgtq_u32(vandq_s8(v72, v44), v68), v68, v72)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v49);
      v48 = vaddq_s16((*&vuzp1q_s16(vbslq_s8(vcgtq_u32(vandq_s8(v73, v44), v69), v69, v73), vbslq_s8(vcgtq_u32(vandq_s8(v74, v44), v66), v66, v74)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)), v48);
      v46 += 16;
    }

    while (v46 != 32);
    v140[v41] = vaddvq_s16(vaddq_s16(v50, v51));
    v139[v41++] = vaddvq_s16(vaddq_s16(v48, v49));
  }

  while (v41 != 128);
  PhaseDeviation::partialSort(v142, v138, a3, a4, a5);
  PhaseDeviation::partialSort(v140, &v136, v75, v76, v77);
  v81 = 0;
  for (i = 0; i != 10; ++i)
  {
    v83 = &v134[v81];
    v84 = &v135[v81];
    v85 = 0x101010101010101 * *(v138 + i);
    *v84 = v85;
    *(v84 + 4) = v85;
    *v83 = v136;
    *(v83 + 4) = v137;
    v81 += 10;
  }

  PhaseDeviation::do2DSparsePD64_G(this, *(this + 11), v135, v134, v132, v78, v79, v80);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v133;
  v93 = -1;
  do
  {
    if (*(v92 - 2) < v93)
    {
      v91 = v135[v89];
      v90 = v134[v89];
      v93 = *(v92 - 2);
    }

    if (*(v92 - 1) < v93)
    {
      v91 = v135[v89] ^ 0xFFFFFF80;
      v90 = v134[v89];
      v93 = *(v92 - 1);
    }

    if (*v92 < v93)
    {
      v91 = v135[v89];
      v90 = v134[v89] ^ 0xFFFFFF80;
      v93 = *v92;
    }

    if (v92[1] < v93)
    {
      v91 = v135[v89] ^ 0xFFFFFF80;
      v90 = v134[v89] ^ 0xFFFFFF80;
      v93 = v92[1];
    }

    v92 += 4;
    ++v89;
  }

  while (v89 != 100);
  PhaseDeviation::partialSort(v141, v138, v86, v87, v88);
  PhaseDeviation::partialSort(v139, &v136, v94, v95, v96);
  v100 = 0;
  for (j = 0; j != 10; ++j)
  {
    v102 = &v134[v100];
    v103 = &v135[v100];
    v104 = 0x101010101010101 * *(v138 + j);
    *v103 = v104;
    *(v103 + 4) = v104;
    *v102 = v136;
    *(v102 + 4) = v137;
    v100 += 10;
  }

  PhaseDeviation::do2DSparsePD64_G(this, *(this + 12), v135, v134, v132, v97, v98, v99);
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = v133;
  v109 = -1;
  do
  {
    if (*(v108 - 2) < v109)
    {
      v107 = v135[v105];
      v106 = v134[v105];
      v109 = *(v108 - 2);
    }

    if (*(v108 - 1) < v109)
    {
      v107 = v135[v105] ^ 0xFFFFFF80;
      v106 = v134[v105];
      v109 = *(v108 - 1);
    }

    if (*v108 < v109)
    {
      v107 = v135[v105];
      v106 = v134[v105] ^ 0xFFFFFF80;
      v109 = *v108;
    }

    if (v108[1] < v109)
    {
      v107 = v135[v105] ^ 0xFFFFFF80;
      v106 = v134[v105] ^ 0xFFFFFF80;
      v109 = v108[1];
    }

    v108 += 4;
    ++v105;
  }

  while (v105 != 100);
  v110 = v109;
  v111 = v93 >= v109;
  v112 = 112;
  if (v111)
  {
    v113 = -76;
  }

  else
  {
    v112 = 104;
    v113 = 0;
  }

  if (!v111)
  {
    v110 = v93;
    v107 = v91;
  }

  v114 = *(this + v112);
  *(this + 4) = v113;
  if (!v111)
  {
    v106 = v90;
  }

  v115 = v107 << 8;
  *(this + 2) = v110 << 8;
  *this = v107 << 8;
  v116 = v106 << 8;
  *(this + 1) = v106 << 8;
  *(this + 20) = v114;
  if (a2)
  {
    v117 = 0;
    v118 = 256;
    do
    {
      v130 = v117;
      while (1)
      {
        v131 = v116 - v118;
        while (1)
        {
          v119 = PhaseDeviation::do2DSparsePrecisePD(this, v114, v115, v116);
          v120 = v115 - v118;
          v121 = PhaseDeviation::do2DSparsePrecisePD(this, v114, v115 - v118, v116);
          if (v121 >= v119)
          {
            v122 = v121;
            v120 = v115 + v118;
            v123 = PhaseDeviation::do2DSparsePrecisePD(this, v114, v115, v116 + v118);
            v124 = PhaseDeviation::do2DSparsePrecisePD(this, v114, v115, v131);
            v125 = PhaseDeviation::do2DSparsePrecisePD(this, v114, v115 + v118, v116);
            if (v125 >= v119)
            {
              break;
            }
          }

          *this = v120;
          v115 = v120;
        }

        if (v124 >= v119)
        {
          v131 = v116 + v118;
          if (v123 >= v119)
          {
            break;
          }
        }

        v116 = v131;
        *(this + 1) = v131;
      }

      v126 = PhaseDeviation::quadFitMinSearchQ15(v122, v119, v125);
      v127 = PhaseDeviation::quadFitMinSearchQ15(v124, v119, v123);
      v115 += (v126 * v118 + 0x4000) >> 15;
      *this = v115;
      v116 += (v127 * v118 + 0x4000) >> 15;
      *(this + 1) = v116;
      v118 >>= 1;
      v117 = v130 + 1;
    }

    while (v130 != 4);
    *(this + 2) = PhaseDeviation::do2DSparsePrecisePD(this, v114, v115, v116);
  }

  v128 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PhaseDeviation::partialSort(uint64_t this, unsigned __int16 *a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5)
{
  v5 = 0;
  v6 = xmmword_272078BA0;
  v7 = a2 + 1;
  v8 = vdupq_n_s64(0xAuLL);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v8, v6)).u8[0])
    {
      *(v7 - 1) = v5;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v6)).i32[1])
    {
      *v7 = v5 | 1;
    }

    v5 += 2;
    v6 = vaddq_s64(v6, v9);
    v7 += 2;
  }

  while (v5 != 10);
  v10 = 0;
  v11 = 1;
  do
  {
    while (1)
    {
      v12 = a2 + v11;
      v13 = *(a2 + v11 - 1);
      v14 = *(a2 + v11);
      if (*(this + 2 * v13) <= *(this + 2 * v14))
      {
        break;
      }

      *(v12 - 1) = v14;
      *v12 = v13;
      v10 = v11 < 9;
      if (v11 < 9)
      {
        ++v11;
      }

      else
      {
        v11 = 1;
      }
    }

    v15 = v11 < 9;
    v16 = (v11 < 9) | v10;
    if (v11 < 9)
    {
      ++v11;
    }

    else
    {
      v11 = 1;
    }

    v10 &= v15;
  }

  while ((v16 & 1) != 0);
  v17 = *(this + 2 * *(a2 + 9));
  for (i = 10; i != 128; ++i)
  {
    if (*(this + 2 * i) < v17)
    {
      v19 = 0;
      *(a2 + 9) = i;
      do
      {
        v20 = a2 + v19;
        v21 = *(a2 + v19 + 8);
        v22 = *(a2 + v19 + 9);
        if (*(this + 2 * v21) > *(this + 2 * v22))
        {
          v20[8] = v22;
          v20[9] = v21;
        }

        v23 = v19-- + 8;
      }

      while (v23);
      v17 = *(this + 2 * *(a2 + 9));
    }
  }

  return this;
}

uint64_t PhaseDeviation::do2DSparsePrecisePD(uint64_t this, unsigned __int16 *a2, __int16 a3, __int16 a4)
{
  v4 = *(this + 16);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = *(this + 120);
  v6 = *(this + 128);
  LODWORD(this) = 0;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v10 = *v6++;
    v9 = v10;
    v11 = *a2++;
    LOWORD(v12) = v11 - v9 * a4 - v7 * a3;
    if (v12 >= -v12)
    {
      v12 = -v12;
    }

    this = this + v12;
    --v4;
  }

  while (v4);
  return this;
}

uint64_t PhaseDeviation::quadFitMinSearchQ15(PhaseDeviation *this, int a2, unsigned int a3)
{
  v3 = this >> 1;
  if (this >> 1 == a3 >> 1)
  {
    return 0;
  }

  v5 = v3 - (a3 >> 1);
  v6 = a3 - a2 + this - a2;
  if (v5 >= 0)
  {
    v7 = v3 - (a3 >> 1);
  }

  else
  {
    v7 = (a3 >> 1) - v3;
  }

  if (v6 >= 0)
  {
    v8 = a3 - a2 + this - a2;
  }

  else
  {
    v8 = -v6;
  }

  if (v8 < 0x8000)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = v8;
    do
    {
      v8 = v10 >> 1;
      --v9;
      v11 = HIWORD(v10);
      v10 >>= 1;
    }

    while (v11);
  }

  if (v8 >> 14)
  {
    v12 = v8;
  }

  else
  {
    do
    {
      v12 = 2 * v8;
      ++v9;
      v13 = v8 >= 0x2000;
      v8 *= 2;
    }

    while (!v13);
  }

  v14 = v5 ^ v6;
  v15 = 92521 - ((1928 * v12 + 512) >> 10);
  v16 = 3;
  do
  {
    v15 = ((0x10000 - ((v15 * v12 + 0x4000) >> 15)) * v15 + 0x4000) >> 15;
    --v16;
  }

  while (v16);
  if (v7 < 0x8000)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = HIWORD(v7);
      v7 >>= 1;
      --v17;
    }

    while (v18);
  }

  v19 = ((1 << (v17 - v9 + 14)) + v7 * v15) >> (v17 - v9 + 15);
  if (v14 >= 0)
  {
    return v19;
  }

  else
  {
    return -v19;
  }
}

uint64_t PhaseDeviation::do2DSparsePD64_G(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, unsigned __int16 *a6, double a7, int16x4_t a8)
{
  v8 = 0;
  v9 = *(this + 16);
  do
  {
    if (v9 < 1)
    {
      v14 = 0;
    }

    else
    {
      v10 = a3[v8];
      v11 = a4[v8];
      v12 = *(this + 120);
      v13 = *(this + 128);
      v14 = 0;
      v15 = a2;
      v16 = v9;
      do
      {
        v18 = *v12++;
        v17 = v18;
        v19 = v10 * v18;
        v21 = *v15++;
        v20 = v21;
        v22 = *v13++;
        a8.i16[0] = v20;
        a8.i16[1] = v20 + v17 * ((v10 ^ 0x7F) + 1);
        v23.i32[0] = a8.i32[0];
        v23.i16[2] = v20 - v19;
        v23.i16[3] = v22 * ((v11 ^ 0x7F) + 1);
        v24 = vzip2_s16(v23, vext_s8(v23, v23, 4uLL));
        v25.i32[1] = v24.i32[1];
        v25.i16[0] = v22 * v11 + v19;
        v25.i16[1] = v22 * v11;
        v26.i32[0] = vsub_s16(a8, v25).u32[0];
        v26.i32[1] = vadd_s16(v23, v24).i32[1];
        a8 = vabs_s16(vshr_n_s16(vshl_n_s16(v26, 8uLL), 8uLL));
        v14 = vadd_s16(v14, a8);
        --v16;
      }

      while (v16);
    }

    *(a5 + 8 * v8++) = v14;
  }

  while (v8 != 112);
  return this;
}

uint64_t PhaseDeviation::atanOver2PiQ16Octant18(PhaseDeviation *this, int a2)
{
  if (this)
  {
    while (this > 0x8000 || this < -32768 || (a2 - 32769) < 0xFFFEFFFF)
    {
      LODWORD(this) = this >> 1;
      a2 >>= 1;
    }

    if (this < 0x4000)
    {
      while (this >= -16383 && (a2 + 0x3FFF) <= 0x7FFE)
      {
        v2 = 2 * this;
        a2 *= 2;
        v3 = this < 0x2000;
        LODWORD(this) = 2 * this;
        if (!v3)
        {
          goto LABEL_12;
        }
      }
    }

    v2 = this;
LABEL_12:
    v4 = 5215 * ((v2 * a2 + 0x4000) >> 15) + 0x4000;
    v5 = ((a2 * a2) >> 5) + ((a2 * a2) >> 2) + v2 * v2 + 0x4000;
    v6 = v5 >> 15;
    v7 = v5 >> 29;
    if (v7)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      do
      {
        v6 *= 2;
        LOBYTE(v7) = v7 + 1;
      }

      while (v6 < 0x4000);
    }

    v9 = v4 >> 15;
    v10 = 92521 - ((1928 * v6 + 512) >> 10);
    v11 = 3;
    do
    {
      v10 = ((0x10000 - ((v10 * v6 + 0x4000) >> 15)) * v10 + 0x4000) >> 15;
      --v11;
    }

    while (v11);
    return (2 * (((1 << (14 - v7)) + v10 * v9) >> (15 - v7)));
  }

  else
  {
    LOWORD(v8) = 0;
  }

  return v8;
}

uint64_t RandomErasureEncoder::EncodePayloadIntoPacket(RandomErasureEncoder *this, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  v5 = 3;
  if (this && a3)
  {
    if (a4 >= a2)
    {
      return 2;
    }

    else
    {
      if (a4)
      {
        v6 = 0;
        do
        {
          v7 = 0;
          v8 = this;
          v9 = a2;
          do
          {
            a5 = 214013 * a5 + 2531011;
            v10 = *v8;
            v8 = (v8 + 1);
            v7 ^= GF256::m_LowMulTable[BYTE2(a5) | ((v10 & 0xF) << 8)] ^ GF256::m_HighMulTable[(16 * v10) & 0xF00 | BYTE2(a5)];
            --v9;
          }

          while (v9);
          *(a3 + v6++) = v7;
        }

        while (v6 != a4);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t RandomErasureEncoder::BitsToBytes(uint8x8_t *this, unsigned __int8 *a2, _BYTE *a3, unsigned __int8 *a4)
{
  if ((a2 & 7) != 0)
  {
    return 2;
  }

  v4 = 3;
  if (this && a3)
  {
    if (a2)
    {
      v4 = a2 >> 3;
      do
      {
        v6 = *this++;
        v7 = vshl_u8(v6, 0x1020304050607);
        *a3++ = v7.i8[0] | v7.i8[4] | ((v7.i32[0] | v7.i32[1]) >> 16) | ((v7.i16[0] | v7.i16[2] | ((v7.i32[0] | v7.i32[1]) >> 16)) >> 8);
        --v4;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void RandomErasureDecoder::~RandomErasureDecoder(RandomErasureDecoder *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8077774924);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C8077774924);
  }
}

void RandomErasureDecoder::Init(RandomErasureDecoder *this, unsigned int a2)
{
  *this = a2;
  *(this + 2) = vcvtms_u32_f32((*(this + 8) + 1.0) * a2);
  operator new[]();
}

uint64_t RandomErasureDecoder::AddPacketToDecodeQueue(RandomErasureDecoder *this, int a2, unsigned __int8 *a3, int a4)
{
  v4 = *(this + 2);
  if (!v4 || !*(this + 3))
  {
    return 6;
  }

  if (!a3)
  {
    return 7;
  }

  v6 = *(this + 1) + a4;
  if (v6 > *(this + 2))
  {
    return 2;
  }

  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      v9 = *this;
      if (*this)
      {
        v10 = 0;
        do
        {
          a2 = 214013 * a2 + 2531011;
          *(v4 + v10 + v9 * (i + *(this + 1))) = BYTE2(a2);
          ++v10;
          v9 = *this;
        }

        while (v10 < *this);
      }

      *(*(this + 3) + (*(this + 1) + i)) = a3[i];
    }

    v6 = *(this + 1) + a4;
  }

  *(this + 1) = v6;
  if (!v6)
  {
    return 1;
  }

  GF256::runForwardGaussElimination(v4, v6, *this, *(this + 3));
  v12 = *this;
  v11 = *(this + 1);
  if (v11)
  {
    v13 = v12 * (v11 - 1);
    while (1)
    {
      if (v12)
      {
        v14 = v11;
        v15 = 1;
        v16 = v13;
        v17 = v12;
        do
        {
          v15 &= *(v4 + v16++) == 0;
          --v17;
        }

        while (v17);
        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      if (*(*(this + 3) + --v11))
      {
        return 3;
      }

      *(this + 1) = v11;
      v13 -= v12;
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    v14 = 0;
  }

  if (GF256::rankOfUpperTriangMatrix(v4, v11, v12) != v12)
  {
    return 1;
  }

  GF256::runBackSubstitution(v4, v14, v12, *(this + 3));
  return 0;
}

void ReadStage::~ReadStage(ReadStage *this)
{
  *this = &unk_288156198;
  v2 = *(this + 32);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C8077774924);
  }

  v3 = *(this + 37);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C80BDFB0063);
  }

  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x2743C1740](v4, 0x1000C80A86A77D5);
  }

  v5 = *(this + 31);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8077774924);
  }

  v6 = *(this + 30);
  if (v6)
  {
    MEMORY[0x2743C1740](v6, 0x1000C8077774924);
  }

  Decode::~Decode((this + 104));
  *(this + 9) = &unk_288156038;
  v7 = *(this + 10);
  if (v7)
  {
    MEMORY[0x2743C1740](v7, 0x1000C80BDFB0063);
  }
}

{
  ReadStage::~ReadStage(this);

  JUMPOUT(0x2743C1750);
}

uint64_t ReadStage::ReadWatermark(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, uint32x2_t *a8, uint64_t a9, unsigned int *a10)
{
  *(a1 + 12) = a7;
  *(a1 + 288) = a2;
  *(a1 + 276) = a4;
  *(a1 + 272) = a3;
  *(a1 + 280) = a5;
  *(a1 + 284) = a6;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  bzero(*(a1 + 296), 0x800uLL);
  for (i = 0; ; ++i)
  {
    v13 = 0;
    do
    {
      SubBlockData = ReadStage::ExtractSubBlockData(a1, a8, i, v13++, 1);
    }

    while ((SubBlockData & 1) != 0);
    if (v13 == 1)
    {
      break;
    }

    v15 = -1;
    do
    {
      v16 = ReadStage::ExtractSubBlockData(a1, a8, i, v15--, 1);
    }

    while ((v16 & 1) != 0);
    if (a10)
    {
      v17 = *(a10 + 1);
      if (v17)
      {
        v17(*a10);
      }

      v18 = *(a10 + 2);
      if (v18)
      {
        if (*v18)
        {
          return 9;
        }
      }
    }
  }

  for (j = -1; ; --j)
  {
    v20 = 0;
    do
    {
      v21 = ReadStage::ExtractSubBlockData(a1, a8, j, v20++, 1);
    }

    while ((v21 & 1) != 0);
    if (v20 == 1)
    {
      break;
    }

    v22 = -1;
    do
    {
      v23 = ReadStage::ExtractSubBlockData(a1, a8, j, v22--, 1);
    }

    while ((v23 & 1) != 0);
    if (a10)
    {
      v24 = *(a10 + 1);
      if (v24)
      {
        v24(*a10);
      }

      v25 = *(a10 + 2);
      if (v25)
      {
        if (*v25)
        {
          return 9;
        }
      }
    }
  }

  v54 = 0;
  Decode::DoRealWork((a1 + 104), *(a1 + 296), &v54);
  ++*(a9 + 8);
  if (a10)
  {
    v26 = *(a10 + 1);
    if (v26)
    {
      v26(*a10);
    }

    v27 = *(a10 + 2);
    if (v27)
    {
      if (*v27)
      {
        return 9;
      }
    }
  }

  v28 = v54;
  if (v54)
  {
    goto LABEL_61;
  }

  v29 = *(a1 + 64);
  if (v29 > 1)
  {
    v30 = 0;
    for (k = 1; k < v29; ++k)
    {
      v32 = *(a1 + 56);
      v33 = &v32[5 * k];
      v34 = -1;
      do
      {
        ++v34;
        v36 = *v32;
        v32 += 5;
        v35 = v36;
      }

      while (v34 < k && *v33 < v35);
      if (v34 < k)
      {
        v52 = *v33;
        v53 = v33[4];
        v38 = v30;
        do
        {
          v39 = *(a1 + 56) + v38;
          *(v39 + 20) = *v39;
          *(v39 + 36) = *(v39 + 16);
          ++v34;
          v38 -= 20;
        }

        while (k > v34);
        v40 = *(a1 + 56) + v38;
        *(v40 + 20) = v52;
        *(v40 + 36) = v53;
        v29 = *(a1 + 64);
      }

      v30 += 20;
    }
  }

  if (v29 >= 1)
  {
    v41 = 0;
    if (v29 >= 5)
    {
      v42 = 5;
    }

    else
    {
      v42 = v29;
    }

    v43 = 20 * v42;
    do
    {
      v44 = *(a1 + 56) + v41;
      v46 = *(v44 + 4);
      v45 = *(v44 + 8);
      *(a1 + 16) = *(v44 + 12);
      *(a1 + 48) = -1;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      *(a1 + 48) = 0xFFFFFFFF00000000;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      *(a1 + 48) = 0xFFFFFFFF00000001;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      *(a1 + 48) = 0xFFFFFFFFLL;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      if (a10)
      {
        v47 = *(a10 + 1);
        if (v47)
        {
          v47(*a10);
        }

        v48 = *(a10 + 2);
        if (v48)
        {
          if (*v48)
          {
            return 9;
          }
        }
      }

      *(a1 + 48) = 1;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      *(a1 + 48) = 0x1FFFFFFFFLL;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      *(a1 + 48) = 0x100000000;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      *(a1 + 48) = 0x100000001;
      ReadStage::ExtractSubBlockData(a1, a8, v45, v46, 0);
      v41 += 20;
    }

    while (v43 != v41);
  }

  if (a10)
  {
    v49 = *(a10 + 1);
    if (v49)
    {
      v49(*a10);
    }

    v50 = *(a10 + 2);
    if (v50)
    {
      if (*v50)
      {
        return 9;
      }
    }
  }

  Decode::DoRealWork((a1 + 104), *(a1 + 296), &v54);
  ++*(a9 + 8);
  v28 = v54;
  if (v54)
  {
LABEL_61:
    *(a9 + 12) = v28;
    Decode::ExtractPayloadInfo(a1 + 104, a9);
  }

  return 0;
}

uint64_t ReadStage::ExtractSubBlockData(uint64_t a1, uint32x2_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  result = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = &v59;
  v74 = 0;
  if (a3 - 5 < 0xFFFFFFF7 || a4 - 5 < 0xFFFFFFF7)
  {
    return result;
  }

  v11 = 32 * a4;
  v12 = 32 * a3;
  v58.i32[0] = v12;
  v58.i32[1] = 32 * a4;
  if (!a5)
  {
    v11 += 16 * *(a1 + 48);
    v12 += 16 * *(a1 + 52);
    v58 = __PAIR64__(v11, v12);
LABEL_11:
    v13 = *(a1 + 16);
LABEL_14:
    v59.i32[1] = v13.i32[0];
    goto LABEL_15;
  }

  if (!(a4 | a3))
  {
    v13 = vneg_s32(vand_s8(vshl_u32(a2[5], vdup_n_s32(8 - a2[6].i32[0])), 0xFF000000FFLL));
    goto LABEL_14;
  }

  v13 = *(a1 + 32);
  v59 = vrev64_s32(v13);
  if (a4 == -1)
  {
LABEL_13:
    v13 = *(a1 + 24);
    goto LABEL_14;
  }

  if (!a4)
  {
    if (a3 != -1)
    {
      if (!a3)
      {
        v59.i32[1] = 0;
        v13 = 0;
LABEL_15:
        v59.i32[0] = v13.i32[1];
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_16:
  result = ReadStage::InvertLTWithBoundaryCheck(a1, v11, v12, a2, v13.i32[0], v13.i32[1], 1);
  if (!result)
  {
    return result;
  }

  v14 = 0;
  v15 = 0;
  v16 = &a2[6];
  v17 = vld1_dup_f32(v16);
  v18 = vadd_s32(vrev64_s32(vshl_s32(a2[5], vneg_s32(v17))), v58);
  v60 = v18;
  do
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = ~(2 * (v18.i32[1] - 16)) & 0x1E;
    v23 = ((v18.i32[1] - 16) >> 4) & 7;
    do
    {
      if (v22 >= v21)
      {
        v24 = CGridLuts::m_packedGrid[v23 + 8 * ((v18.i8[0] + 112 + v15) & 0x7F)];
        v25 = v14 + v20;
        do
        {
          *(*(a1 + 256) + v25) = 16 * ((v24 >> v22) & 3) - 16;
          v22 -= 2;
          ++v25;
          ++v20;
        }

        while (v22 >= v21);
      }

      if (v23 == 7)
      {
        v23 = 0;
      }

      else
      {
        ++v23;
      }

      v21 = (2 * v20 - 32) & ~((2 * v20 - 32) >> 31);
      ++v19;
      v22 = 30;
    }

    while (v19 != 4);
    ++v15;
    v14 += 32;
  }

  while (v15 != 32);
  octaxis_O(*(a1 + 240), 48, 36, 0x30u, *(a1 + 248));
  v75 = 0;
  CorrelateWithTemplate3x3_32x32(*(a1 + 256), *(a1 + 248), v61, &v75);
  v26 = 0;
  *(a1 + 8) = v75;
  for (i = 6; i != 15; ++i)
  {
    if (v58.i32[i] > v26)
    {
      v26 = v58.u32[i];
    }
  }

  v69 = v26;
  if (v26 < 0x4E)
  {
    goto LABEL_71;
  }

  v28 = 0;
  for (j = 6; j != 15; ++j)
  {
    v30 = v58.i32[j];
    if (v30 < 0)
    {
      v58.i32[j] = 0;
    }

    else
    {
      v28 += v30;
    }
  }

  v31 = (v28 + 128) >> 8;
  if (v28 < 0x800000)
  {
    v31 = v28;
  }

  if (v31 < 1)
  {
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v32 = 8 * (v28 < 0x800000);
    v33 = ((v67 + v66 + v68 - (v61[0] + v61[1] + v62)) << v32) / v31;
    v34 = ((v68 - (v66 + v61[0]) + v62 + v65 - v63) << v32) / v31;
  }

  v70 = __PAIR64__(v33, v34);
  v35 = v34 + v59.i32[0];
  v36 = v33 + v59.i32[1];
  LODWORD(v71) = v34 + v59.i32[0];
  HIDWORD(v71) = v33 + v59.i32[1];
  if (a5)
  {
    v37 = *(a1 + 64);
    if (v37 <= 199)
    {
      v38 = (*(a1 + 56) + 20 * v37);
      *v38 = v69;
      v38[3] = HIDWORD(v71);
      v38[4] = v71;
      v38[1] = a4;
      v38[2] = a3;
      *(a1 + 64) = v37 + 1;
      v35 = v71;
      v36 = HIDWORD(v71);
    }
  }

  *(a1 + 32) = v36;
  *(a1 + 36) = v35;
  if (!a4)
  {
    *(a1 + 24) = v36;
    *(a1 + 28) = v35;
    if (!a3)
    {
      *(a1 + 16) = v36;
      *(a1 + 20) = v35;
    }
  }

  v39 = HIDWORD(v70);
  if (v70 < 0)
  {
    v39 = -HIDWORD(v70);
  }

  if (v39 <= 0x19)
  {
    v40 = v70;
    if (v70 < 0)
    {
      v40 = -v70;
    }

    if (v40 < 0x1A)
    {
      v51 = (v64 + 8) >> 4;
      v74 = v51;
      v52 = a1;
      v53 = 1;
LABEL_70:
      ReadStage::PostProcessSubBlock(v52, v51, v53);
      Demodulator::Demodulate((a1 + 72), *(a1 + 296), *(a1 + 264), 0x20u, v60.i32[1], v60.i8[0]);
      *(a1 + 40) = vadd_s32(*(a1 + 40), (v69 | 0x100000000));
      return 1;
    }
  }

  if (ReadStage::InvertLTWithBoundaryCheck(a1, v58.i32[1], v58.i32[0], a2, v36, v35, 0))
  {
    octaxis_O(*(a1 + 240), 48, 36, 0x30u, *(a1 + 248));
    v41 = 0;
    LODWORD(v42) = 0;
    v43 = 0;
    v44 = 0;
    v72 = 0;
    v45 = *(a1 + 256);
    v46 = *(a1 + 248) + 49;
    do
    {
      for (k = 0; k != 32; ++k)
      {
        v48 = *(v45 + k);
        v49 = *(v46 + k);
        v43 += v48 * v48;
        v42 = (v42 + v49 * v49);
        v44 += v49 * v48;
        v72 = v44;
      }

      ++v41;
      v46 += 48;
      v45 += 32;
    }

    while (v41 != 32);
    if (v43 < 1 || v42 <= 0)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      *(a1 + 8) = v44 / ((v43 + 512) >> 10);
      v54 = SquareRoot::sqrt(v42);
      v55 = (21 * v72 / v54) >> 3;
      v72 = v55;
      if (v55 > 71)
      {
        v73 = &v71;
        v51 = (v55 + 8) >> 4;
        v74 = v51;
        v52 = a1;
        v53 = 0;
        goto LABEL_70;
      }
    }

LABEL_71:
    v57 = v59.i32[0];
    v56 = v59.i32[1];
    *(a1 + 32) = v59.i32[1];
    *(a1 + 36) = v57;
    if (!a4)
    {
      *(a1 + 24) = v56;
      *(a1 + 28) = v57;
      if (!a3)
      {
        *(a1 + 16) = v56;
        *(a1 + 20) = v57;
      }
    }

    return 1;
  }

  result = 0;
  if (a5)
  {
    --*(a1 + 64);
  }

  return result;
}

uint64_t ReadStage::InvertLTWithBoundaryCheck(uint64_t a1, int a2, int a3, int *a4, int a5, int a6, int a7)
{
  if (a7)
  {
    v8 = 18;
  }

  else
  {
    v8 = 17;
  }

  v9 = a2 - v8;
  v10 = a3 - v8;
  v11 = a4[1];
  v12 = a4[3];
  v13 = v11 * v10 + (*(a1 + 280) << 20) + v12 * v9 + ((v11 * a6 + v12 * a5) >> 8);
  v14 = v13 + 36 * (v12 + v11);
  if (v12 < 0)
  {
    v15 = v13 + 36 * v12;
  }

  else
  {
    v15 = v13;
  }

  if (v12 < 0)
  {
    v16 = v13 + 36 * v11;
  }

  else
  {
    v16 = v13 + 36 * (v12 + v11);
  }

  if (v12 < 0)
  {
    v17 = v13;
  }

  else
  {
    v14 = v13 + 36 * v11;
    v17 = v13 + 36 * v12;
  }

  v18 = v11 >= 0;
  if (v11 < 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  if (v18)
  {
    v17 = v16;
  }

  if (v19 < 0)
  {
    return 0;
  }

  if (v17 < v19 || v17 >> 20 >= *(a1 + 272) - 1)
  {
    return 0;
  }

  v21 = *a4;
  v22 = a4[2];
  v23 = v21 * v10 + (*(a1 + 284) << 20) + v22 * v9 + ((v21 * a6 + v22 * a5) >> 8);
  v24 = v23 + 36 * (v22 + *a4);
  if (v22 < 0)
  {
    v25 = v23 + 36 * v22;
  }

  else
  {
    v25 = v23;
  }

  if (v22 < 0)
  {
    v26 = v23 + 36 * *a4;
  }

  else
  {
    v26 = v23 + 36 * (v22 + *a4);
  }

  if (v22 < 0)
  {
    v27 = v23;
  }

  else
  {
    v24 = v23 + 36 * *a4;
    v27 = v23 + 36 * v22;
  }

  if (v21 >= 0)
  {
    v24 = v25;
    v27 = v26;
  }

  if (v24 < 0)
  {
    return 0;
  }

  if (v27 < v24 || v27 >> 20 >= *(a1 + 276) - 1)
  {
    return 0;
  }

  v30 = *(a1 + 288);
  if (*(a1 + 12) == 1)
  {
    InvertLTBilinear36x36Stride48_G(*(a1 + 288), *(a1 + 272), *(a1 + 240), a4, v13, v23);
  }

  else
  {
    InvertLTBilinear36x36Stride48_YUV422_G(*(a1 + 288), 2 * (*(a1 + 272) & 0x7FFF), *(a1 + 240), a4, v13, v23);
  }

  return 1;
}

uint64_t ReadStage::PostProcessSubBlock(uint64_t this, int a2, int a3)
{
  v3 = 0;
  v4 = *(this + 8) * a2;
  if (a3)
  {
    v5 = 98;
  }

  else
  {
    v5 = 49;
  }

  v6 = *(this + 256);
  v7 = *(this + 264);
  v8 = *(this + 248) + v5;
  do
  {
    for (i = 0; i != 32; ++i)
    {
      *(v7 + 2 * i) = *(v8 + i) * a2 - ((v4 * *(v6 + i) + 512) >> 10);
    }

    ++v3;
    v7 += 64;
    v6 += 32;
    v8 += 48;
  }

  while (v3 != 32);
  return this;
}

uint64_t SquareRoot::sqrt(SquareRoot *this)
{
  v1 = this;
  if (this >= 0x10000)
  {
    if (this >> 24)
    {
      v2 = this >> 28;
      if (this >> 26)
      {
        v3 = 20;
      }

      else
      {
        v3 = 18;
      }

      if (this >> 26)
      {
        v4 = 6;
      }

      else
      {
        v4 = 5;
      }

      if (this >> 30)
      {
        v5 = 24;
      }

      else
      {
        v5 = 22;
      }

      if (this >> 30)
      {
        v6 = 8;
      }

      else
      {
        v6 = 7;
      }

      v7 = v2 == 0;
      if (v2)
      {
        v8 = v5;
      }

      else
      {
        v8 = v3;
      }

      v9 = table[this >> v8];
      if (v7)
      {
        v10 = v4;
      }

      else
      {
        v10 = v6;
      }

      v11 = this >> 10;
      v12 = (v9 << v10) + ((SquareRoot::approxRecip((v9 << v10)) * (this >> 10)) >> 10) + 1;
      v13 = ((SquareRoot::approxRecip((v12 >> 1)) * v11) >> 10) + (v12 >> 1);
    }

    else
    {
      if (this >> 18)
      {
        v15 = 12;
      }

      else
      {
        v15 = 10;
      }

      if (this >> 18)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      if (this >> 22)
      {
        v17 = 16;
      }

      else
      {
        v17 = 14;
      }

      if (this >> 22)
      {
        v18 = 4;
      }

      else
      {
        v18 = 3;
      }

      if (this >= 0x100000)
      {
        v15 = v17;
      }

      v19 = table[this >> v15];
      if (this >= 0x100000)
      {
        v16 = v18;
      }

      v13 = (v19 << v16) + ((SquareRoot::approxRecip((v19 << v16)) * (this >> 10)) >> 10);
    }

    v20 = (v13 + 1) >> 1;
    v21 = v20 * v20 > v1;
    return (v20 - v21);
  }

  if (this >= 256)
  {
    if (this < 0x1000)
    {
      if (this < 0x400)
      {
        v14 = table[this >> 2] >> 3;
      }

      else
      {
        v14 = table[this >> 4] >> 2;
      }
    }

    else if (this < 0x4000)
    {
      v14 = table[this >> 6] >> 1;
    }

    else
    {
      v14 = table[this >> 8];
    }

    v20 = v14 + 1;
    v21 = v20 * v20 > this;
    return (v20 - v21);
  }

  if ((this & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return table[this] >> 4;
  }
}

uint64_t SquareRoot::approxRecip(SquareRoot *this)
{
  if (this < 4096)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0;
    v2 = this;
    do
    {
      LODWORD(this) = (v2 + 2) >> 2;
      v1 += 2;
      v3 = v2 > 0x3FFD;
      v2 = this;
    }

    while (v3);
  }

  if (this < 716)
  {
    v4 = this;
  }

  else
  {
    do
    {
      v4 = (this + 1) >> 1;
      ++v1;
      v3 = this > 0x596;
      LODWORD(this) = v4;
    }

    while (v3);
  }

  v5 = v4 - 512;
  return ((((v5 * v5 + 64) >> 7) - 4 * v5 + (1 << v1 >> 1) - ((((v5 * v5 + 64) >> 7) * v5 + 256) >> 9) + 2048) >> v1);
}

void TailbiteConvCode::~TailbiteConvCode(TailbiteConvCode *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x2743C1740](v2, 0x1000C80BDFB0063);
  }

  v3 = *(this + 4);
  if (v3)
  {
    MEMORY[0x2743C1740](v3, 0x1000C80BDFB0063);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x2743C1740](v4, 0x1000C8052888210);
  }

  v5 = *(this + 10);
  if (v5)
  {
    MEMORY[0x2743C1740](v5, 0x1000C8052888210);
  }

  v6 = *(this + 7);
  if (v6)
  {
    MEMORY[0x2743C1740](v6, 0x1000C8052888210);
  }
}

uint64_t TailbiteConvCode::Init(TailbiteConvCode *this, unsigned int a2, int a3, unsigned int a4, unsigned __int16 *a5, unsigned __int16 *a6, char a7)
{
  if (a2 - 14 >= 0xFFFFFFF4 && !(a4 % a2))
  {
    *(this + 2) = 1 << a3;
    *(this + 3) = (1 << a3) >> 1;
    *this = a2;
    *(this + 1) = a3;
    *(this + 8) = a4;
    *(this + 9) = a4 / a2;
    *(this + 88) = a7;
    v8 = *(this + 3);
    if (v8)
    {
      MEMORY[0x2743C1740](v8, 0x1000C80BDFB0063);
    }

    *(this + 3) = 0;
    v9 = *(this + 4);
    if (v9)
    {
      MEMORY[0x2743C1740](v9, 0x1000C80BDFB0063);
    }

    *(this + 4) = 0;
    v10 = *(this + 5);
    if (v10)
    {
      MEMORY[0x2743C1740](v10, 0x1000C8052888210);
    }

    *(this + 5) = 0;
    v11 = *(this + 10);
    if (v11)
    {
      MEMORY[0x2743C1740](v11, 0x1000C8052888210);
    }

    *(this + 10) = 0;
    v12 = *(this + 7);
    if (v12)
    {
      MEMORY[0x2743C1740](v12, 0x1000C8052888210);
    }

    *(this + 7) = 0;
    operator new[]();
  }

  return 2;
}

uint64_t TailbiteConvCode::Encode(TailbiteConvCode *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (!*(this + 3))
  {
    return 4;
  }

  v3 = *(this + 1);
  v4 = *(this + 9);
  LOWORD(v5) = 0;
  if (v3 >= v4)
  {
    v6 = *(this + 9);
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    v7 = v4 - 1;
    do
    {
      LOWORD(v5) = a2[v7--] | (2 * v5);
      --v6;
    }

    while (v6);
  }

  if (*(this + 9))
  {
    v8 = 0;
    v9 = v3 - 1;
    v10 = *this;
    do
    {
      v5 = (a2[v8] << v9) | ((v5 & 0xFFFE) >> 1);
      if (v10 >= 1)
      {
        for (i = 0; i < v10; ++i)
        {
          v12 = *(this + 4);
          v13 = (*(*(this + 3) + 2 * i) & v5);
          v14 = v13 ^ ((v13 & 0xFF00) >> 8) ^ (((v13 ^ ((v13 & 0xFF00) >> 8)) & 0xFFF0u) >> 4);
          v15 = (v14 ^ ((v14 & 0xFFFC) >> 2) ^ ((v14 ^ ((v14 & 0xFFFC) >> 2)) >> 1)) & 1;
          if (v12)
          {
            if (*(v12 + 2 * (i + v10 * v8)))
            {
              v16 = 0;
              do
              {
                *a3++ = v15;
                ++v16;
                v10 = *this;
              }

              while (v16 < *(*(this + 4) + 2 * (i + *this * v8)));
            }
          }

          else
          {
            *a3++ = v15;
            v10 = *this;
          }
        }

        v4 = *(this + 9);
      }

      ++v8;
    }

    while (v8 < v4);
  }

  return 0;
}

uint64_t TailbiteConvCode::SoftMaxDecode(TailbiteConvCode *this, int *a2, unsigned __int8 *a3)
{
  if (!*(this + 3))
  {
    return 4;
  }

  v4 = *(this + 7);
  if (!v4)
  {
    return 4;
  }

  v6 = *this;
  if (*this > 9)
  {
    if (v6 > 11)
    {
      if (v6 == 12)
      {
        v7 = *(this + 1) - 7;
        if (v7 < 3)
        {
          v8 = off_288156248;
          goto LABEL_31;
        }
      }

      else if (v6 == 13)
      {
        v7 = *(this + 1) - 7;
        if (v7 < 3)
        {
          v8 = off_288156260;
          goto LABEL_31;
        }
      }
    }

    else if (v6 == 10)
    {
      v7 = *(this + 1) - 7;
      if (v7 < 3)
      {
        v8 = off_288156218;
        goto LABEL_31;
      }
    }

    else if (v6 == 11)
    {
      v7 = *(this + 1) - 7;
      if (v7 < 3)
      {
        v8 = off_288156230;
        goto LABEL_31;
      }
    }
  }

  else if (v6 > 7)
  {
    if (v6 == 8)
    {
      v7 = *(this + 1) - 7;
      if (v7 < 3)
      {
        v8 = off_2881561E8;
        goto LABEL_31;
      }
    }

    else if (v6 == 9)
    {
      v7 = *(this + 1) - 7;
      if (v7 < 3)
      {
        v8 = off_288156200;
        goto LABEL_31;
      }
    }
  }

  else if (v6 == 6)
  {
    v7 = *(this + 1) - 7;
    if (v7 < 3)
    {
      v8 = off_2881561B8;
      goto LABEL_31;
    }
  }

  else if (v6 == 7)
  {
    v7 = *(this + 1) - 7;
    if (v7 < 3)
    {
      v8 = off_2881561D0;
LABEL_31:
      v10 = v8[v7];
      goto LABEL_35;
    }
  }

  if (*(this + 88))
  {
    return 6;
  }

  v10 = TailbiteConvCode::forwardViterbiMax;
LABEL_35:
  v34 = 0;
  if (!a2)
  {
    return 3;
  }

  v11 = *(this + 10);
  v12 = *(this + 4);
  if (v11)
  {
    if (v12)
    {
      v13 = *(this + 8);
      if (!*(this + 8))
      {
        return 7;
      }

      v14 = 0;
      LODWORD(v15) = 0;
      do
      {
        LODWORD(v15) = v15 + *(v12 + v14);
        v14 += 2;
      }

      while (2 * v13 != v14);
      v16 = 0;
      if (!v15)
      {
        return 7;
      }

      goto LABEL_47;
    }
  }

  else if (v12)
  {
    return 4;
  }

  v12 = 0;
  LODWORD(v13) = *(this + 8);
  v16 = 1;
  LODWORD(v15) = v13;
  if (!*(this + 8))
  {
    return 7;
  }

LABEL_47:
  v17 = 0;
  v15 = v15;
  while (1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      v21 = a2[v18];
      v22 = v21 == 0;
      if (v21 < 0)
      {
        v21 = -v21;
      }

      v23 = v22;
      v20 &= v23;
      v19 += v21 >> v17;
      ++v18;
    }

    while (v15 != v18);
    if (v19 != 0x7FFFFFFF)
    {
      break;
    }

    v17 += v20 ^ 1;
    if (v20)
    {
      return 7;
    }
  }

  if (v20)
  {
    return 7;
  }

  if (v16)
  {
    *(this + 10) = a2;
    do
    {
      *a2++ >>= v17;
      --v15;
    }

    while (v15);
  }

  else if (v13)
  {
    v24 = 0;
    do
    {
      *(v11 + 4 * v24) = 0;
      v25 = *(v12 + 2 * v24);
      if (*(v12 + 2 * v24))
      {
        v26 = 0;
        do
        {
          v27 = *a2++;
          v26 += v27 >> v17;
          *(v11 + 4 * v24) = v26;
          --v25;
        }

        while (v25);
      }

      ++v24;
    }

    while (v24 != v13);
  }

  v28 = *(this + 5);
  if (!v28)
  {
    return 4;
  }

  v29 = *(this + 2);
  v30 = (v4 + 4 * v29);
  *(this + 8) = v30;
  *(this + 9) = v4;
  if (v29)
  {
    v31 = 0;
    do
    {
      v30[v31++] = -2147483647;
    }

    while (v31 < *(this + 2));
  }

  *v30 = 0;
  bzero(v28, 4 * (*(this + 12) * *(this + 13)));
  result = v10(this, *(this + 9), *(this + 10));
  if (!result)
  {
    result = TailbiteConvCode::subtractMax(this, &v34);
    if (!result)
    {
      result = v10(this, *(this + 9), *(this + 10));
      if (!result)
      {
        result = TailbiteConvCode::subtractMax(this, &v34);
        if (!result)
        {
          v32 = *(this + 5);
          *(this + 5) = v32 + 4 * *(this + 13) * *(this + 9);
          v33 = *(this + 10);
          result = (v10)(this);
          if (!result)
          {
            result = TailbiteConvCode::subtractMax(this, &v34);
            if (!result)
            {
              *(this + 5) = v32;
              if (!*(this + 4))
              {
                *(this + 10) = 0;
              }

              return TailbiteConvCode::backtrackBestPathTailbite(this, a3);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R6C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = *(this + 5);
  if (v3 && (v4 = *(this + 8)) != 0 && (v5 = *(this + 9)) != 0)
  {
    if (a3)
    {
      v60 = *(this + 9);
      if (*(this + 9))
      {
        v6 = 0;
        do
        {
          v7 = 0;
          v8 = *a3;
          v9 = a3[1];
          v10 = v9 + *a3;
          v12 = a3[2];
          v11 = a3[3];
          v13 = v10 + v12;
          v14 = v10 + v12 + v11;
          v15 = a3[4];
          v16 = a3[5];
          v17 = v14 + v15;
          v18 = v12 - v10;
          v19 = v12 - v10 + v11;
          v20 = v11 - (v10 + v12);
          v21 = v10 - v12;
          v22 = v10 - v12 + v11;
          v61[0] = v14 + v15 + v16;
          v61[1] = v19 + v15 - v16;
          v23 = v9 - v8;
          v24 = v9 - v8 - v12;
          v61[2] = v20 - v15 + v16;
          v61[3] = v22 - (v16 + v15);
          v25 = v8 - v9;
          v26 = v25 - v12;
          v27 = v25 - v12 - v11;
          v61[4] = v24 - v11 - (v16 + v15);
          v61[5] = v27 - v15 + v16;
          v28 = v25 + v12;
          v29 = v25 + v12 - v11;
          v30 = v23 + v12;
          v61[6] = v29 + v15 - v16;
          v61[7] = v16 + v15 + v30 - v11;
          v61[8] = v29 - (v16 + v15);
          v61[9] = v30 - v11 - v15 + v16;
          v61[10] = v24 - v11 + v15 - v16;
          v61[11] = v16 + v15 + v27;
          v61[12] = v16 + v15 + v20;
          v61[13] = v22 + v15 - v16;
          v61[14] = v14 - v15 + v16;
          v61[15] = v19 - (v16 + v15);
          v31 = v21 - v11;
          v61[16] = v21 - v11 + v15 - v16;
          v61[17] = v16 + v15 - v14;
          v32 = v18 - v11;
          v33 = v13 - v11;
          v61[18] = v18 - v11 - (v16 + v15);
          v61[19] = v33 - v15 + v16;
          v34 = v30 + v11;
          v35 = v28 + v11;
          v61[20] = v30 + v11 - v15 + v16;
          v61[21] = v35 - (v16 + v15);
          v36 = v26 + v11;
          v37 = v24 + v11;
          v61[22] = v16 + v15 + v36;
          v61[23] = v37 + v15 - v16;
          v38 = v5;
          v61[24] = v36 - v15 + v16;
          v61[25] = v37 - (v16 + v15);
          v61[26] = v16 + v15 + v34;
          v61[27] = v35 + v15 - v16;
          v61[28] = v32 + v15 - v16;
          v61[29] = v16 + v15 + v33;
          v61[30] = v31 - (v16 + v15);
          v61[31] = v16 - v17;
          v5 = v4;
          v39 = v4 + 8;
          v40 = (v3 + 8 * v6);
LABEL_8:
          v41 = 0;
          v42 = (v61 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
          v43 = (v39 + 4 * v7);
          v44 = (v38 + 256 + 4 * (v7 >> 1));
          do
          {
            v46 = *v42++;
            v45 = v46;
            v48 = *(v43 - 2);
            v47 = *(v43 - 1);
            v49 = v48 <= v47;
            if (v48 <= v47)
            {
              v48 = *(v43 - 1);
            }

            v50 = v48 + v45;
            if (__OFADD__(v48, v45))
            {
              v50 = ((v48 + v45) >> 31) ^ 0x80000000;
            }

            *(v44 - 64) = v50;
            v51 = __OFSUB__(v48, v45);
            v52 = v48 - v45;
            if (v51)
            {
              v52 = (v52 >> 31) ^ 0x80000000;
            }

            *v44 = v52;
            v53 = v43[1];
            if (*v43 <= v53)
            {
              v41 = ((4 * v41) | (2 * v49)) + 1;
            }

            else
            {
              v53 = *v43;
              v41 = (4 * v41) | (2 * v49);
            }

            v54 = v53 - v45;
            if (__OFSUB__(v53, v45))
            {
              v54 = ((v53 - v45) >> 31) ^ 0x80000000;
            }

            *(v44 - 63) = v54;
            v51 = __OFADD__(v53, v45);
            v55 = v53 + v45;
            if (v51)
            {
              v55 = (v55 >> 31) ^ 0x80000000;
            }

            v44[1] = v55;
            if ((~v7 & 0x3C) == 0)
            {
              *v40++ = v41;
              v56 = v7 >= 0x7C;
              v7 += 4;
              if (v56)
              {
                goto LABEL_31;
              }

              goto LABEL_8;
            }

            v43 += 4;
            v44 += 2;
            v56 = v7 >= 0x7C;
            v7 += 4;
          }

          while (!v56);
          if (v41)
          {
            *v40 = v41;
          }

LABEL_31:
          a3 += 6;
          ++v6;
          v4 = v38;
        }

        while (v6 != v60);
        v4 = v38;
      }

      v57 = 0;
      *(this + 8) = v4;
      *(this + 9) = v5;
    }

    else
    {
      v57 = 3;
    }
  }

  else
  {
    v57 = 4;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v57;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R7C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v58 = *(this + 5);
  if (v58 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    if (a3)
    {
      v57 = *(this + 9);
      if (*(this + 9))
      {
        v56 = this;
        v5 = 0;
        do
        {
          v59 = v3;
          v60 = v4;
          v6 = 0;
          v7 = *a3;
          v8 = a3[1];
          v9 = v8 + *a3;
          v11 = a3[2];
          v10 = a3[3];
          v12 = v9 + v11 + v10;
          v13 = a3[4];
          v14 = a3[5];
          v15 = a3[6];
          v16 = v11 - v9 + v10;
          v17 = v10 - (v9 + v11);
          v61[0] = v15 + v14 + v12 + v13;
          v61[1] = v16 - v14 + v15 + v13;
          v18 = v14 + v13 + v15;
          v19 = v8 - v7;
          v20 = v8 - v7 - v11;
          v61[2] = v14 + v17 - (v15 + v13);
          v61[3] = v9 - v11 + v10 - v18;
          v21 = v7 - v8;
          v22 = v21 - v11;
          v23 = v15 + v14 - v13;
          v61[4] = v20 - v10 - (v14 + v13) + v15;
          v61[5] = v23 + v21 - v11 - v10;
          v24 = v21 + v11;
          v25 = v19 + v11;
          v61[6] = v24 - v10 + v13 - (v15 + v14);
          v61[7] = v14 + v13 + v25 - v10 - v15;
          v61[8] = v24 - v10 - (v14 + v13) + v15;
          v61[9] = v23 + v25 - v10;
          v61[10] = v20 - v10 + v13 - (v15 + v14);
          v61[11] = v14 + v13 + v22 - v10 - v15;
          v26 = v15 + v14 + v13;
          v61[12] = v26 + v17;
          v61[13] = v9 - v11 + v10 - v14 + v15 + v13;
          v61[14] = v14 + v12 - (v15 + v13);
          v61[15] = v16 - v18;
          v27 = v9 - v11 - v10;
          v61[16] = v27 + v13 - (v15 + v14);
          v61[17] = v14 + v13 - v15 - v12;
          v28 = v11 - v9 - v10;
          v29 = v9 + v11 - v10;
          v61[18] = v28 - (v14 + v13) + v15;
          v61[19] = v23 + v29;
          v30 = v25 + v10;
          v31 = v14 + v25 + v10 - (v15 + v13);
          v32 = v24 + v10;
          v61[20] = v31;
          v61[21] = v24 + v10 - v18;
          v33 = v22 + v10;
          v34 = v26 + v22 + v10;
          v35 = v20 + v10;
          v61[22] = v34;
          v61[23] = v35 - v14 + v15 + v13;
          v61[24] = v14 + v33 - (v15 + v13);
          v61[25] = v35 - v18;
          v61[26] = v26 + v30;
          v61[27] = v32 - v14 + v15 + v13;
          v61[28] = v28 + v13 - (v15 + v14);
          v61[29] = v14 + v13 + v29 - v15;
          v61[30] = v27 - (v14 + v13) + v15;
          v61[31] = v15 + v14 - (v12 + v13);
          v4 = v59;
          v36 = (v58 + 8 * v5);
LABEL_8:
          v37 = 0;
          v38 = (v61 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
          v39 = (v59 + 8 + 4 * v6);
          v40 = (v60 + 256 + 4 * (v6 >> 1));
          do
          {
            v42 = *v38++;
            v41 = v42;
            v43 = *(v39 - 2);
            v44 = *(v39 - 1);
            v45 = v43 <= v44;
            if (v43 <= v44)
            {
              v43 = *(v39 - 1);
            }

            v46 = v43 + v41;
            if (__OFADD__(v43, v41))
            {
              v46 = ((v43 + v41) >> 31) ^ 0x80000000;
            }

            *(v40 - 64) = v46;
            v47 = __OFSUB__(v43, v41);
            v48 = v43 - v41;
            if (v47)
            {
              v48 = (v48 >> 31) ^ 0x80000000;
            }

            *v40 = v48;
            v49 = *v39;
            if (*v39 > v39[1])
            {
              v37 = (4 * v37) | (2 * v45);
            }

            else
            {
              v49 = v39[1];
              v37 = ((4 * v37) | (2 * v45)) + 1;
            }

            v50 = v49 - v41;
            if (__OFSUB__(v49, v41))
            {
              v50 = ((v49 - v41) >> 31) ^ 0x80000000;
            }

            *(v40 - 63) = v50;
            v47 = __OFADD__(v49, v41);
            v51 = v49 + v41;
            if (v47)
            {
              v51 = (v51 >> 31) ^ 0x80000000;
            }

            v40[1] = v51;
            if ((~v6 & 0x3C) == 0)
            {
              *v36++ = v37;
              v52 = v6 >= 0x7C;
              v6 += 4;
              if (v52)
              {
                goto LABEL_31;
              }

              goto LABEL_8;
            }

            v39 += 4;
            v40 += 2;
            v52 = v6 >= 0x7C;
            v6 += 4;
          }

          while (!v52);
          if (v37)
          {
            *v36 = v37;
          }

LABEL_31:
          a3 += 7;
          ++v5;
          v3 = v60;
        }

        while (v5 != v57);
        v3 = v60;
        this = v56;
      }

      v53 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v53 = 3;
    }
  }

  else
  {
    v53 = 4;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v53;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R8C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = *(this + 5);
  if (v52 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    if (a3)
    {
      v51 = *(this + 9);
      if (*(this + 9))
      {
        v50 = this;
        v5 = 0;
        do
        {
          v55 = v3;
          v56 = v5;
          v6 = 0;
          v8 = *a3;
          v7 = a3[1];
          v9 = v7 + *a3;
          v11 = a3[2];
          v10 = a3[3];
          v12 = v9 + v11 + v10;
          v14 = a3[4];
          v13 = a3[5];
          v15 = a3[6];
          v16 = a3[7];
          v53 = v11 - v9 + v10;
          v17 = v10 - (v9 + v11);
          v18 = v16 + v15 + v14;
          v19 = v9 - v11;
          v57[0] = v12 + v14 + v13 + v16 + v15;
          v57[1] = v15 + v14 + v53 - (v16 + v13);
          v20 = v13 + v14 + v15;
          v57[2] = v13 + v17 - v18;
          v57[3] = v9 - v11 + v10 - v20 + v16;
          v21 = v7 - v8;
          v54 = v7 - v8 - v11;
          v22 = v16 + v13 + v14;
          v23 = v8 - v7;
          v24 = v23 - v11;
          v25 = v16 + v15 - v14 + v13;
          v57[4] = v15 + v54 - v10 - v22;
          v57[5] = v25 + v23 - v11 - v10;
          v26 = v23 + v11;
          v57[6] = v23 + v11 - v10 - (v15 + v13) + v16 + v14;
          v57[7] = v13 + v14 + v21 + v11 - v10 - (v16 + v15);
          v57[8] = v15 + v23 + v11 - v10 - v22;
          v57[9] = v25 + v21 + v11 - v10;
          v57[10] = v54 - v10 - (v15 + v13) + v16 + v14;
          v57[11] = v13 + v14 + v23 - v11 - v10 - (v16 + v15);
          v57[12] = v18 + v13 + v17;
          v57[13] = v15 + v14 + v9 - v11 + v10 - (v16 + v13);
          v57[14] = v13 + v12 - v18;
          v57[15] = v53 - v20 + v16;
          v57[16] = v9 - v11 - v10 - (v15 + v13) + v16 + v14;
          v57[17] = v13 + v14 - (v15 + v16) - v12;
          v57[18] = v15 + v11 - v9 - v10 - v22;
          v57[19] = v25 + v9 + v11 - v10;
          v27 = v21 + v11 + v10;
          v57[20] = v13 + v27 - v18;
          v57[21] = v26 + v10 - v20 + v16;
          v57[22] = v18 + v13 + v24 + v10;
          v57[23] = v15 + v14 + v54 + v10 - (v16 + v13);
          v57[24] = v13 + v24 + v10 - v18;
          v57[25] = v54 + v10 - v20 + v16;
          v57[26] = v18 + v13 + v27;
          v57[27] = v15 + v14 + v26 + v10 - (v16 + v13);
          v57[28] = v11 - v9 - v10 - (v15 + v13) + v16 + v14;
          v57[29] = v13 + v14 + v9 + v11 - v10 - (v16 + v15);
          v28 = v13 - (v12 + v14);
          v29 = v4;
          v57[30] = v15 + v19 - v10 - v22;
          v57[31] = v28 + v16 + v15;
          v4 = v55;
          v30 = (v52 + 8 * v56);
LABEL_8:
          v31 = 0;
          v32 = (v57 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
          v33 = (v55 + 8 + 4 * v6);
          v34 = (v29 + 256 + 4 * (v6 >> 1));
          do
          {
            v36 = *v32++;
            v35 = v36;
            v37 = *(v33 - 2);
            v38 = *(v33 - 1);
            v39 = v37 <= v38;
            if (v37 <= v38)
            {
              v37 = *(v33 - 1);
            }

            v40 = v37 + v35;
            if (__OFADD__(v37, v35))
            {
              v40 = ((v37 + v35) >> 31) ^ 0x80000000;
            }

            *(v34 - 64) = v40;
            v41 = __OFSUB__(v37, v35);
            v42 = v37 - v35;
            if (v41)
            {
              v42 = (v42 >> 31) ^ 0x80000000;
            }

            *v34 = v42;
            v43 = *v33;
            if (*v33 > v33[1])
            {
              v31 = (4 * v31) | (2 * v39);
            }

            else
            {
              v43 = v33[1];
              v31 = ((4 * v31) | (2 * v39)) + 1;
            }

            v44 = v43 - v35;
            if (__OFSUB__(v43, v35))
            {
              v44 = ((v43 - v35) >> 31) ^ 0x80000000;
            }

            *(v34 - 63) = v44;
            v41 = __OFADD__(v43, v35);
            v45 = v43 + v35;
            if (v41)
            {
              v45 = (v45 >> 31) ^ 0x80000000;
            }

            v34[1] = v45;
            if ((~v6 & 0x3C) == 0)
            {
              *v30++ = v31;
              v46 = v6 >= 0x7C;
              v6 += 4;
              if (v46)
              {
                goto LABEL_31;
              }

              goto LABEL_8;
            }

            v33 += 4;
            v34 += 2;
            v46 = v6 >= 0x7C;
            v6 += 4;
          }

          while (!v46);
          if (v31)
          {
            *v30 = v31;
          }

LABEL_31:
          a3 += 8;
          v5 = v56 + 1;
          v3 = v29;
        }

        while (v56 + 1 != v51);
        v3 = v29;
        this = v50;
      }

      v47 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v47 = 3;
    }
  }

  else
  {
    v47 = 4;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R9C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v64 = *(this + 5);
  if (v64 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    if (a3)
    {
      v63 = *(this + 9);
      if (*(this + 9))
      {
        v62 = this;
        v5 = 0;
        do
        {
          v75 = v4;
          v78 = v3;
          v79 = v5;
          v6 = 0;
          v8 = *a3;
          v7 = a3[1];
          v9 = v7 + *a3;
          v11 = a3[2];
          v10 = a3[3];
          v70 = v9 + v11 + v10;
          v72 = v9 + v11;
          v13 = a3[6];
          v12 = a3[7];
          v15 = a3[4];
          v14 = a3[5];
          v16 = a3[8];
          v76 = v12 + v13 + v14;
          v77 = v70 + v15 + v16;
          v73 = v11 - v9;
          v69 = v11 - v9 + v10;
          v74 = v12 + v14 + v16;
          v66 = v13 + v15;
          v17 = v10 - (v9 + v11);
          v18 = v12 + v13 + v15;
          v67 = v9 - v11;
          v81[0] = v77 + v76;
          v81[1] = v13 + v15 + v69 - v74;
          v19 = v9 - v11 + v10;
          v20 = v14 + v15;
          v65 = v14 + v15 + v13;
          v81[2] = v16 + v14 + v17 - v18;
          v81[3] = v12 + v19 - (v16 + v65);
          v21 = v7 - v8;
          v22 = v8 - v7;
          v71 = v21 - v11;
          v23 = v21 - v11 - v10;
          v80 = v12 + v14 + v15;
          v68 = v22 - v11;
          v24 = v22 - v11 - v10;
          v25 = v12 + v13 - v15;
          v26 = v25 + v16 + v14;
          v81[4] = v13 + v23 - (v80 + v16);
          v81[5] = v26 + v24;
          v27 = v22 + v11;
          v28 = v21 + v11;
          v29 = v22 + v11 - v10;
          v30 = v12 + v15;
          v81[6] = v12 + v15 + v29 - (v16 + v13 + v14);
          v81[7] = v14 + v15 + v21 + v11 - v10 - (v12 + v13) + v16;
          v81[8] = v29 - v80 + v16 + v13;
          v81[9] = v14 + v21 + v11 - v10 - v16 + v25;
          v31 = v16 + v12;
          v32 = v16 + v12 + v15;
          v33 = v12 + v13 + v16;
          v81[10] = v23 - (v13 + v14) + v32;
          v81[11] = v20 + v24 - v33;
          v34 = v12 + v14;
          v81[12] = v17 - v16 + v18 + v14;
          v81[13] = v66 + v19 - (v12 + v14) + v16;
          v81[14] = v14 + v70 - (v18 + v16);
          v81[15] = v69 - v65 + v16 + v12;
          v35 = v67 - v10;
          v81[16] = v30 + v67 - v10 - (v16 + v13 + v14);
          v81[17] = v20 - (v13 + v12) - v70 + v16;
          v36 = v73 - v10;
          v37 = v72 - v10;
          v81[18] = v13 + v73 - v10 - (v80 + v16);
          v81[19] = v26 + v72 - v10;
          v38 = v27 + v10;
          v39 = v28 + v10;
          v81[20] = v16 + v14 + v28 + v10 - v18;
          v81[21] = v12 + v27 + v10 - (v16 + v65);
          v40 = v68 + v10;
          v41 = v71 + v10;
          v81[22] = v16 + v14 + v18 + v40;
          v81[23] = v66 + v41 - v74;
          v81[24] = v14 + v40 - (v18 + v16);
          v81[25] = v41 - v65 + v31;
          v81[26] = v39 - v16 + v18 + v14;
          v81[27] = v66 + v38 - v34 + v16;
          v4 = v78;
          v81[28] = v36 - (v13 + v14) + v32;
          v81[29] = v20 + v37 - v33;
          v81[30] = v35 - v80 + v16 + v13;
          v81[31] = v76 - v77;
          v42 = (v64 + 8 * v79);
LABEL_8:
          v43 = 0;
          v44 = (v81 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
          v45 = (v78 + 8 + 4 * v6);
          v46 = (v75 + 256 + 4 * (v6 >> 1));
          do
          {
            v48 = *v44++;
            v47 = v48;
            v49 = *(v45 - 2);
            v50 = *(v45 - 1);
            v51 = v49 <= v50;
            if (v49 <= v50)
            {
              v49 = *(v45 - 1);
            }

            v52 = v49 + v47;
            if (__OFADD__(v49, v47))
            {
              v52 = ((v49 + v47) >> 31) ^ 0x80000000;
            }

            *(v46 - 64) = v52;
            v53 = __OFSUB__(v49, v47);
            v54 = v49 - v47;
            if (v53)
            {
              v54 = (v54 >> 31) ^ 0x80000000;
            }

            *v46 = v54;
            v43 = (4 * v43) | (2 * v51);
            v55 = *v45;
            if (*v45 <= v45[1])
            {
              v55 = v45[1];
              ++v43;
            }

            v56 = v55 - v47;
            if (__OFSUB__(v55, v47))
            {
              v56 = ((v55 - v47) >> 31) ^ 0x80000000;
            }

            *(v46 - 63) = v56;
            v53 = __OFADD__(v55, v47);
            v57 = v55 + v47;
            if (v53)
            {
              v57 = (v57 >> 31) ^ 0x80000000;
            }

            v46[1] = v57;
            if ((~v6 & 0x3C) == 0)
            {
              *v42++ = v43;
              v58 = v6 >= 0x7C;
              v6 += 4;
              if (v58)
              {
                goto LABEL_30;
              }

              goto LABEL_8;
            }

            v45 += 4;
            v46 += 2;
            v58 = v6 >= 0x7C;
            v6 += 4;
          }

          while (!v58);
          if (v43)
          {
            *v42 = v43;
          }

LABEL_30:
          a3 += 9;
          v5 = v79 + 1;
          v3 = v75;
        }

        while (v79 + 1 != v63);
        v3 = v75;
        this = v62;
      }

      v59 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v59 = 3;
    }
  }

  else
  {
    v59 = 4;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v59;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R10C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v66 = *(this + 5);
  if (v66 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    v5 = a3;
    if (a3)
    {
      v65 = *(this + 9);
      if (*(this + 9))
      {
        v64 = this;
        v6 = 0;
        do
        {
          v79 = v4;
          v83 = v3;
          v84 = v6;
          v7 = 0;
          v8 = *v5;
          v9 = v5[1];
          v10 = v9 + *v5;
          v12 = v5[2];
          v11 = v5[3];
          v76 = v10 + v12 + v11;
          v77 = v10 + v12;
          v14 = v5[4];
          v13 = v5[5];
          v16 = v5[8];
          v15 = v5[9];
          v18 = v5[6];
          v17 = v5[7];
          v81 = v17 + v18 + v13;
          v82 = v15 + v16 + v76 + v14;
          v78 = v12 - v10;
          v74 = v12 - v10 + v11;
          v80 = v15 + v16 + v17 + v13;
          v19 = v11 - (v10 + v12);
          v20 = v17 + v18 + v14;
          v73 = v10 - v12;
          v85[0] = v82 + v81;
          v85[1] = v18 + v14 + v74 - v80;
          v21 = v10 - v12 + v11;
          v22 = v13 + v14;
          v70 = v13 + v14 + v18;
          v85[2] = v19 - v20 + v15 + v16 + v13;
          v85[3] = v17 + v21 - (v15 + v16 + v70);
          v23 = v9 - v8;
          v24 = v8 - v9;
          v75 = v23 - v12;
          v25 = v23 - v12 - v11;
          v26 = v17 + v13 + v14;
          v71 = v26;
          v69 = v26 + v16;
          v27 = v17 + v18 - v14 + v13;
          v72 = v24 - v12;
          v28 = v24 - v12 - v11;
          v85[4] = v25 - (v26 + v16) + v15 + v18;
          v85[5] = v27 + v16 + v28 - v15;
          v67 = v24 + v12;
          v29 = v23 + v12;
          v30 = v23 + v12 - v11;
          v31 = v16 + v13 + v14;
          v32 = v24 + v12 - v11;
          v33 = v18 + v13;
          v85[6] = v17 + v14 + v32 - (v16 + v18 + v13) + v15;
          v85[7] = v30 + v31 - (v17 + v18 + v15);
          v85[8] = v32 - v26 + v15 + v16 + v18;
          v85[9] = v27 + v30 - (v15 + v16);
          v34 = v15 + v16 + v14;
          v68 = v15 + v16 + v17 + v18;
          v85[10] = v34 + v17 + v25 - (v18 + v13);
          v85[11] = v13 + v14 + v28 - v68;
          v35 = v15 + v13;
          v36 = v15 + v17 + v13;
          v85[12] = v15 + v13 + v19 - v16 + v20;
          v85[13] = v16 + v18 + v14 + v21 - v36;
          v85[14] = v15 + v13 + v76 - (v20 + v16);
          v85[15] = v16 + v17 + v74 - (v15 + v70);
          v37 = v73 - v11;
          v85[16] = v17 + v14 + v73 - v11 - (v16 + v18 + v13) + v15;
          v85[17] = v31 - (v18 + v17 + v15) - v76;
          v38 = v78 - v11;
          v39 = v77 - v11;
          v85[18] = v78 - v11 - v69 + v15 + v18;
          v85[19] = v27 + v16 + v77 - v11 - v15;
          v40 = v29 + v11;
          v41 = v67 + v11;
          v85[20] = v29 + v11 - v20 + v15 + v16 + v13;
          v85[21] = v17 + v67 + v11 - (v15 + v16 + v70);
          v42 = v13 + v11 + v72;
          v43 = v75 + v11;
          v85[22] = v42 + v17 + v18 + v34;
          v85[23] = v18 + v14 + v43 - v80;
          v85[24] = v42 + v15 - (v20 + v16);
          v85[25] = v16 + v17 + v43 - (v15 + v70);
          v85[26] = v35 + v40 - v16 + v20;
          v85[27] = v16 + v18 + v14 + v41 - v36;
          v4 = v83;
          v85[28] = v34 + v17 + v38 - v33;
          v85[29] = v22 + v39 - v68;
          v85[30] = v37 - v71 + v15 + v16 + v18;
          v85[31] = v81 - v82;
          v44 = (v66 + 8 * v84);
LABEL_8:
          v45 = 0;
          v46 = (v85 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
          v47 = (v83 + 8 + 4 * v7);
          v48 = (v79 + 256 + 4 * (v7 >> 1));
          do
          {
            v50 = *v46++;
            v49 = v50;
            v51 = *(v47 - 2);
            v52 = *(v47 - 1);
            v53 = v51 <= v52;
            if (v51 <= v52)
            {
              v51 = *(v47 - 1);
            }

            v54 = v51 + v49;
            if (__OFADD__(v51, v49))
            {
              v54 = ((v51 + v49) >> 31) ^ 0x80000000;
            }

            *(v48 - 64) = v54;
            v55 = __OFSUB__(v51, v49);
            v56 = v51 - v49;
            if (v55)
            {
              v56 = (v56 >> 31) ^ 0x80000000;
            }

            *v48 = v56;
            v45 = (4 * v45) | (2 * v53);
            v57 = *v47;
            if (*v47 <= v47[1])
            {
              v57 = v47[1];
              ++v45;
            }

            v58 = v57 - v49;
            if (__OFSUB__(v57, v49))
            {
              v58 = ((v57 - v49) >> 31) ^ 0x80000000;
            }

            *(v48 - 63) = v58;
            v55 = __OFADD__(v57, v49);
            v59 = v57 + v49;
            if (v55)
            {
              v59 = (v59 >> 31) ^ 0x80000000;
            }

            v48[1] = v59;
            if ((~v7 & 0x3C) == 0)
            {
              *v44++ = v45;
              v60 = v7 >= 0x7C;
              v7 += 4;
              if (v60)
              {
                goto LABEL_30;
              }

              goto LABEL_8;
            }

            v47 += 4;
            v48 += 2;
            v60 = v7 >= 0x7C;
            v7 += 4;
          }

          while (!v60);
          if (v45)
          {
            *v44 = v45;
          }

LABEL_30:
          v5 += 10;
          v6 = v84 + 1;
          v3 = v79;
        }

        while (v84 + 1 != v65);
        v3 = v79;
        this = v64;
      }

      v61 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v61 = 3;
    }
  }

  else
  {
    v61 = 4;
  }

  v62 = *MEMORY[0x277D85DE8];
  return v61;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R11C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v91 = *MEMORY[0x277D85DE8];
  v65 = *(this + 5);
  if (v65 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    v5 = a3;
    if (a3)
    {
      v64 = *(this + 9);
      if (*(this + 9))
      {
        v63 = this;
        v6 = 0;
        do
        {
          v84 = v4;
          v87 = v3;
          v89 = v6;
          v7 = 0;
          v9 = *v5;
          v8 = v5[1];
          v10 = v8 + *v5;
          v12 = v5[2];
          v11 = v5[3];
          v81 = v10 + v12 + v11;
          v13 = v5[4];
          v14 = v5[5];
          v88 = v81 + v13;
          v16 = v5[8];
          v15 = v5[9];
          v17 = v5[10];
          v19 = v5[6];
          v18 = v5[7];
          v82 = v10 + v12;
          v83 = v12 - v10;
          v79 = v12 - v10 + v11;
          v85 = v17 + v19 + v13;
          v86 = v15 + v16 + v18 + v14;
          v90[0] = v19 + v14 + v16 + v18 + v17 + v15 + v81 + v13;
          v90[1] = v85 + v79 - v86;
          v73 = v14 + v11 - (v10 + v12);
          v20 = v18 + v19 + v13;
          v77 = v10 - v12;
          v71 = v10 - v12 + v11;
          v76 = v14 + v13 + v19;
          v90[2] = v15 + v16 + v73 - (v17 + v20);
          v90[3] = v18 + v71 - (v17 + v15 + v16 + v76);
          v21 = v8 - v9;
          v22 = v9 - v8;
          v80 = v21 - v12;
          v23 = v21 - v12 - v11;
          v24 = v18 + v14 + v13;
          v74 = v24 + v16;
          v25 = v18 + v19 - v13;
          v72 = v25 + v16 + v14;
          v78 = v22 - v12;
          v26 = v22 - v12 - v11;
          v90[4] = v23 - (v24 + v16) + v17 + v15 + v19;
          v90[5] = v72 + v26 - v15 + v17;
          v67 = v22 + v12;
          v68 = v21 + v12;
          v70 = v18 + v19;
          v66 = v16 + v14 + v13;
          v27 = v15 + v18 + v13;
          v28 = v17 + v16 + v19 + v14;
          v90[6] = v27 + v22 + v12 - v11 - v28;
          v90[7] = v21 + v12 - v11 + v66 - (v18 + v19 + v15 + v17);
          v75 = v17 + v24;
          v90[8] = v15 + v16 + v19 + v22 + v12 - v11 - (v17 + v24);
          v90[9] = v14 + v25 + v21 + v12 - v11 - (v17 + v15 + v16);
          v29 = v17 + v15 + v13;
          v30 = v16 + v18 + v29;
          v31 = v17 + v14 + v13;
          v69 = v15 + v16 + v18 + v19;
          v90[10] = v23 - (v19 + v14) + v30;
          v90[11] = v31 + v26 - v69;
          v32 = v17 + v15 + v18 + v14;
          v33 = v16 + v19 + v13;
          v90[12] = v15 + v20 + v73 - (v17 + v16);
          v90[13] = v33 + v71 - v32;
          v34 = v16 + v18;
          v90[14] = v81 - (v20 + v16) + v17 + v15 + v14;
          v90[15] = v16 + v18 + v79 - (v15 + v76) + v17;
          v35 = v77 - v11;
          v90[16] = v27 + v77 - v11 - v28;
          v90[17] = v66 - (v19 + v18 + v15 + v17 + v81);
          v36 = v83 - v11;
          v37 = v82 - v11;
          v90[18] = v83 - v11 - v74 + v17 + v15 + v19;
          v90[19] = v72 + v82 - v11 - v15 + v17;
          v38 = v68 + v11 + v14;
          v39 = v67 + v11;
          v90[20] = v15 + v16 + v38 - (v17 + v20);
          v90[21] = v18 + v67 + v11 - (v17 + v15 + v16 + v76);
          v40 = v19 + v14 + v16 + v18 + v29;
          v41 = v78 + v11;
          v42 = v80 + v11;
          v90[22] = v40 + v41;
          v90[23] = v85 + v42 - v86;
          v90[24] = v41 - (v20 + v16) + v17 + v15 + v14;
          v90[25] = v34 + v42 - (v15 + v76) + v17;
          v90[26] = v15 + v20 + v38 - (v17 + v16);
          v90[27] = v33 + v39 - v32;
          v90[28] = v36 - (v19 + v14) + v30;
          v90[29] = v31 + v37 - v69;
          v90[30] = v15 + v16 + v19 + v35 - v75;
          v90[31] = v14 + v70 - (v17 + v15 + v16) - v88;
          v4 = v87;
          v43 = (v65 + 8 * v89);
LABEL_8:
          v44 = 0;
          v45 = (v90 + (v7 & 0xFFFFFFFFFFFFFFFCLL));
          v46 = (v87 + 8 + 4 * v7);
          v47 = (v84 + 256 + 4 * (v7 >> 1));
          do
          {
            v49 = *v45++;
            v48 = v49;
            v50 = *(v46 - 2);
            v51 = *(v46 - 1);
            v52 = v50 <= v51;
            if (v50 <= v51)
            {
              v50 = *(v46 - 1);
            }

            v53 = v50 + v48;
            if (__OFADD__(v50, v48))
            {
              v53 = ((v50 + v48) >> 31) ^ 0x80000000;
            }

            *(v47 - 64) = v53;
            v54 = __OFSUB__(v50, v48);
            v55 = v50 - v48;
            if (v54)
            {
              v55 = (v55 >> 31) ^ 0x80000000;
            }

            *v47 = v55;
            v44 = (4 * v44) | (2 * v52);
            v56 = *v46;
            if (*v46 <= v46[1])
            {
              v56 = v46[1];
              ++v44;
            }

            v57 = v56 - v48;
            if (__OFSUB__(v56, v48))
            {
              v57 = ((v56 - v48) >> 31) ^ 0x80000000;
            }

            *(v47 - 63) = v57;
            v54 = __OFADD__(v56, v48);
            v58 = v56 + v48;
            if (v54)
            {
              v58 = (v58 >> 31) ^ 0x80000000;
            }

            v47[1] = v58;
            if ((~v7 & 0x3C) == 0)
            {
              *v43++ = v44;
              v59 = v7 >= 0x7C;
              v7 += 4;
              if (v59)
              {
                goto LABEL_30;
              }

              goto LABEL_8;
            }

            v46 += 4;
            v47 += 2;
            v59 = v7 >= 0x7C;
            v7 += 4;
          }

          while (!v59);
          if (v44)
          {
            *v43 = v44;
          }

LABEL_30:
          v5 += 11;
          v6 = v89 + 1;
          v3 = v84;
        }

        while (v89 + 1 != v64);
        v3 = v84;
        this = v63;
      }

      v60 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v60 = 3;
    }
  }

  else
  {
    v60 = 4;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v60;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R12C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v68 = *(this + 5);
  if (v68 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    if (a3)
    {
      v67 = *(this + 9);
      if (*(this + 9))
      {
        v66 = this;
        v5 = 0;
        do
        {
          v86 = v4;
          v87 = v3;
          v88 = v5;
          v6 = 0;
          v7 = *a3;
          v8 = a3[1];
          v9 = v8 + *a3;
          v11 = a3[2];
          v10 = a3[3];
          v81 = v9 + v11 + v10;
          v82 = v9 + v11;
          v13 = a3[4];
          v12 = a3[5];
          v14 = a3[8];
          v15 = a3[9];
          v16 = a3[10];
          v17 = a3[11];
          v18 = a3[6];
          v19 = a3[7];
          v84 = v14 + v12 + v19 + v18;
          v85 = v81 + v13;
          v83 = v11 - v9;
          v78 = v11 - v9 + v10;
          v89[0] = v84 + v16 + v15 + v17 + v81 + v13;
          v89[1] = v18 + v13 + v16 + v78 - (v15 + v14 + v19 + v12 + v17);
          v72 = v12 + v10 - (v9 + v11);
          v75 = v9 - v11;
          v70 = v9 - v11 + v10;
          v74 = v12 + v13 + v18;
          v20 = v16 + v15 + v14;
          v89[2] = v72 + v15 + v14 - (v19 + v18 + v13 + v17 + v16);
          v89[3] = v17 + v19 + v70 - (v20 + v74);
          v21 = v8 - v7;
          v22 = v7 - v8;
          v79 = v21 - v11;
          v80 = v20 + v74;
          v23 = v21 - v11 - v10;
          v24 = v19 + v12 + v13;
          v25 = v19 + v18 - v13;
          v76 = v22 - v11;
          v26 = v22 - v11 - v10;
          v89[4] = v23 - (v24 + v14 + v17) + v16 + v15 + v18;
          v89[5] = v17 + v16 + v14 + v12 + v25 + v26 - v15;
          v69 = v22 + v11;
          v71 = v21 + v11;
          v27 = v21 + v11 - v10;
          v28 = v15 + v19 + v13;
          v29 = v22 + v11 - v10;
          v30 = v16 + v14 + v18 + v12;
          v89[6] = v28 + v17 + v29 - v30;
          v89[7] = v12 + v13 + v14 + v27 - (v19 + v18 + v15 + v16 + v17);
          v77 = v15 + v14 + v18;
          v89[8] = v29 - (v24 + v16) + v77 + v17;
          v89[9] = v12 + v25 + v27 - (v17 + v16 + v15 + v14);
          v31 = v16 + v15 + v13;
          v32 = v17 + v16 + v13;
          v73 = v15 + v14 + v19 + v18;
          v89[10] = v23 + v14 + v19 - (v18 + v12 + v17) + v31;
          v89[11] = v12 + v26 - v73 + v32;
          v33 = v19 + v18 + v13;
          v34 = v18 + v13;
          v35 = v16 + v15 + v19 + v12;
          v89[12] = v15 + v33 + v72 - (v17 + v16 + v14);
          v89[13] = v18 + v13 + v17 + v14 + v70 - v35;
          v36 = v16 + v15 + v12;
          v89[14] = v81 - (v33 + v14) + v17 + v36;
          v89[15] = v19 + v16 + v14 + v78 - (v74 + v17 + v15);
          v37 = v75 - v10;
          v38 = v12 + v13;
          v89[16] = v28 + v75 - v10 - (v17 + v30);
          v89[17] = v38 - (v81 + v18 + v19 + v15 + v16) + v17 + v14;
          v39 = v83 - v10;
          v40 = v82 - v10;
          v89[18] = v83 - v10 - (v24 + v14) + v17 + v16 + v15 + v18;
          v89[19] = v25 + v14 + v12 + v82 - v10 + v16 - (v17 + v15);
          v41 = v71 + v10 + v12;
          v42 = v69 + v10;
          v89[20] = v41 + v15 + v14 - (v33 + v16) + v17;
          v89[21] = v19 + v69 + v10 - (v17 + v80);
          v43 = v76 + v10;
          v44 = v79 + v10;
          v89[22] = v84 + v43 - v17 + v31;
          v89[23] = v18 + v44 - (v15 + v14 + v19 + v12) + v32;
          v89[24] = v43 - (v33 + v14 + v17) + v36;
          v89[25] = v44 - (v74 + v15) + v16 + v14 + v17 + v19;
          v89[26] = v15 + v33 + v41 - (v16 + v14) + v17;
          v89[27] = v34 + v14 + v42 - (v17 + v35);
          v89[28] = v39 - (v18 + v12) + v14 + v19 + v17 + v31;
          v89[29] = v16 + v38 + v40 - (v73 + v17);
          v45 = v17 + v12 + v19 + v18 - (v16 + v15 + v14);
          v4 = v87;
          v89[30] = v37 + v77 - (v24 + v17 + v16);
          v89[31] = v45 - v85;
          v46 = (v68 + 8 * v88);
LABEL_8:
          v47 = 0;
          v48 = (v89 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
          v49 = (v87 + 8 + 4 * v6);
          v50 = (v86 + 256 + 4 * (v6 >> 1));
          do
          {
            v52 = *v48++;
            v51 = v52;
            v53 = *(v49 - 2);
            v54 = *(v49 - 1);
            v55 = v53 <= v54;
            if (v53 <= v54)
            {
              v53 = *(v49 - 1);
            }

            v56 = v53 + v51;
            if (__OFADD__(v53, v51))
            {
              v56 = ((v53 + v51) >> 31) ^ 0x80000000;
            }

            *(v50 - 64) = v56;
            v57 = __OFSUB__(v53, v51);
            v58 = v53 - v51;
            if (v57)
            {
              v58 = (v58 >> 31) ^ 0x80000000;
            }

            *v50 = v58;
            v47 = (4 * v47) | (2 * v55);
            v59 = *v49;
            if (*v49 <= v49[1])
            {
              v59 = v49[1];
              ++v47;
            }

            v60 = v59 - v51;
            if (__OFSUB__(v59, v51))
            {
              v60 = ((v59 - v51) >> 31) ^ 0x80000000;
            }

            *(v50 - 63) = v60;
            v57 = __OFADD__(v59, v51);
            v61 = v59 + v51;
            if (v57)
            {
              v61 = (v61 >> 31) ^ 0x80000000;
            }

            v50[1] = v61;
            if ((~v6 & 0x3C) == 0)
            {
              *v46++ = v47;
              v62 = v6 >= 0x7C;
              v6 += 4;
              if (v62)
              {
                goto LABEL_30;
              }

              goto LABEL_8;
            }

            v49 += 4;
            v50 += 2;
            v62 = v6 >= 0x7C;
            v6 += 4;
          }

          while (!v62);
          if (v47)
          {
            *v46 = v47;
          }

LABEL_30:
          a3 += 12;
          v5 = v88 + 1;
          v3 = v86;
        }

        while (v88 + 1 != v67);
        v3 = v86;
        this = v66;
      }

      v63 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v63 = 3;
    }
  }

  else
  {
    v63 = 4;
  }

  v64 = *MEMORY[0x277D85DE8];
  return v63;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R13C7(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v55 = *(this + 5);
  if (v55 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    if (a3)
    {
      v54 = *(this + 9);
      if (*(this + 9))
      {
        v53 = this;
        v5 = 0;
        do
        {
          v69 = v3;
          v70 = v4;
          v71 = v5;
          v6 = 0;
          v8 = *a3;
          v7 = a3[1];
          v9 = v7 + *a3;
          v10 = a3[2];
          v11 = a3[3];
          v66 = v9 + v10 + v11;
          v12 = a3[4];
          v13 = a3[8];
          v14 = a3[9];
          v16 = a3[10];
          v15 = a3[11];
          v17 = a3[7];
          v18 = v17 + a3[6];
          v19 = a3[6];
          v63 = v10 - v9 + v11;
          v20 = a3[5];
          v68 = v14 + v13 + v17 + v20;
          v21 = a3[12];
          v67 = v18 + v20 + v13;
          v73[0] = v67 + v16 + v14 + v66 + v12 + v21 + v15;
          v73[1] = v19 + v12 + v16 + v63 - (v68 + v15 + v21);
          v60 = v20 + v11 - (v9 + v10);
          v58 = v9 - v10 + v11;
          v61 = v20 + v12 + v19;
          v72 = v16 + v14 + v13;
          v73[2] = v60 + v14 + v13 - (v18 + v12 + v21 + v15 + v16);
          v73[3] = v21 + v15 + v17 + v58 - (v72 + v61);
          v22 = v7 - v8;
          v65 = v7 - v8 - v10;
          v23 = v17 + v20 + v12;
          v24 = v8 - v7;
          v25 = v24 - v10 - v11;
          v73[4] = v65 - v11 - (v23 + v13 + v15) + v16 + v14 + v19 + v21;
          v73[5] = v15 + v16 + v13 + v20 + v18 - v12 + v25 - (v14 + v21);
          v57 = v14 + v17 + v12;
          v26 = v24 + v10 - v11;
          v27 = v16 + v13 + v19 + v20;
          v59 = v22 + v10;
          v28 = v22 + v10 - v11;
          v56 = v13 + v20 + v12;
          v73[6] = v15 + v57 + v26 - (v27 + v21);
          v73[7] = v56 + v28 - (v18 + v14 + v16 + v15) + v21;
          v64 = v14 + v13 + v19;
          v73[8] = v64 + v15 + v26 - (v23 + v16 + v21);
          v73[9] = v20 + v18 - v12 + v28 - (v15 + v72) + v21;
          v29 = v16 + v14 + v12;
          v62 = v14 + v13 + v18;
          v73[10] = v65 - v11 + v13 + v17 - (v19 + v20 + v15) + v29 + v21;
          v73[11] = v20 + v12 + v15 + v16 + v25 - (v62 + v21);
          v73[12] = v18 + v12 + v14 + v60 - (v15 + v21 + v16 + v13);
          v73[13] = v13 + v19 + v58 - (v16 + v14 + v17 + v20) + v21 + v15 + v12;
          v30 = v18 + v12 + v13;
          v73[14] = v16 + v14 + v20 + v66 - v30 + v21 + v15;
          v73[15] = v17 + v16 + v13 + v63 - (v61 + v21 + v15 + v14);
          v73[16] = v57 + v9 - v10 - v11 - (v15 + v27) + v21;
          v73[17] = v56 + v15 - v21 - (v66 + v19 + v17 + v14 + v16);
          v73[18] = v10 - v9 - v11 - (v23 + v13) + v15 + v16 + v14 + v19 - v21;
          v73[19] = v18 - v12 + v13 + v20 + v9 + v10 - v11 + v16 - (v15 + v14) + v21;
          v31 = v24 + v10 + v11;
          v73[20] = v14 + v13 + v20 + v59 + v11 - (v18 + v12 + v16) + v21 + v15;
          v73[21] = v17 + v31 - (v72 + v61 + v21 + v15);
          v32 = v24 - v10 + v11;
          v73[22] = v67 + v32 + v29 - (v21 + v15);
          v73[23] = v16 + v19 + v65 + v11 - v68 + v21 + v15 + v12;
          v73[24] = v20 + v16 + v14 + v32 - (v30 + v21 + v15);
          v73[25] = v65 + v11 + v13 + v17 - (v61 + v14) + v16 + v21 + v15;
          v73[26] = v18 + v20 + v14 + v59 + v11 - (v16 + v13) + v21 + v15 + v12;
          v73[27] = v19 + v12 + v13 + v31 - (v15 + v21 + v16 + v14 + v17 + v20);
          v73[28] = v10 - v9 - v11 - (v19 + v20) + v13 + v17 + v15 + v29 - v21;
          v73[29] = v16 + v20 + v12 + v9 + v10 - v11 - (v62 + v15) + v21;
          v4 = v69;
          v73[30] = v64 + v9 - v10 - v11 - (v23 + v15 + v16) + v21;
          v73[31] = v18 + v20 + v15 - (v21 + v72) - (v66 + v12);
          v33 = (v55 + 8 * v71);
LABEL_8:
          v34 = 0;
          v35 = (v73 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
          v36 = (v69 + 8 + 4 * v6);
          v37 = (v70 + 256 + 4 * (v6 >> 1));
          do
          {
            v39 = *v35++;
            v38 = v39;
            v40 = *(v36 - 2);
            v41 = *(v36 - 1);
            v42 = v40 <= v41;
            if (v40 <= v41)
            {
              v40 = *(v36 - 1);
            }

            v43 = v40 + v38;
            if (__OFADD__(v40, v38))
            {
              v43 = ((v40 + v38) >> 31) ^ 0x80000000;
            }

            *(v37 - 64) = v43;
            v44 = __OFSUB__(v40, v38);
            v45 = v40 - v38;
            if (v44)
            {
              v45 = (v45 >> 31) ^ 0x80000000;
            }

            *v37 = v45;
            v34 = (4 * v34) | (2 * v42);
            v46 = *v36;
            if (*v36 <= v36[1])
            {
              v46 = v36[1];
              ++v34;
            }

            v47 = v46 - v38;
            if (__OFSUB__(v46, v38))
            {
              v47 = ((v46 - v38) >> 31) ^ 0x80000000;
            }

            *(v37 - 63) = v47;
            v44 = __OFADD__(v46, v38);
            v48 = v46 + v38;
            if (v44)
            {
              v48 = (v48 >> 31) ^ 0x80000000;
            }

            v37[1] = v48;
            if ((~v6 & 0x3C) == 0)
            {
              *v33++ = v34;
              v49 = v6 >= 0x7C;
              v6 += 4;
              if (v49)
              {
                goto LABEL_30;
              }

              goto LABEL_8;
            }

            v36 += 4;
            v37 += 2;
            v49 = v6 >= 0x7C;
            v6 += 4;
          }

          while (!v49);
          if (v34)
          {
            *v33 = v34;
          }

LABEL_30:
          a3 += 13;
          v5 = v71 + 1;
          v3 = v70;
        }

        while (v71 + 1 != v54);
        v3 = v70;
        this = v53;
      }

      v50 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v50 = 3;
    }
  }

  else
  {
    v50 = 4;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v50;
}

uint64_t TailbiteConvCode::forwardViterbiMax_R6C8(TailbiteConvCode *this, unsigned int a2, int *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v75 = *(this + 5);
  if (v75 && (v3 = *(this + 8)) != 0 && (v4 = *(this + 9)) != 0)
  {
    if (a3)
    {
      v74 = *(this + 9);
      if (*(this + 9))
      {
        v73 = this;
        v5 = 0;
        do
        {
          v82 = v4;
          v83 = v3;
          v6 = 0;
          v7 = *a3;
          v8 = a3[1];
          v9 = a3[2];
          v10 = a3[3];
          v12 = a3[4];
          v11 = a3[5];
          v13 = v8 + *a3;
          v14 = *a3 - v8;
          v15 = v14 - v9;
          v16 = v14 - v9 + v10;
          v81 = v16 - v12;
          v84[1] = v16 - v12 + v11;
          v17 = v13 - v9;
          v18 = v13 - v9 - v10;
          v19 = v14 + v9;
          v20 = v14 + v9 - v10;
          v80 = v20 + v12;
          v84[2] = v18 - v12 - v11;
          v84[3] = v20 + v12 - v11;
          v21 = v9 - v13;
          v22 = v9 - v13 - v10;
          v23 = v8 - v7;
          v24 = v23 - v9;
          v25 = v23 - v9 - v10;
          v78 = v25 - v12;
          v84[4] = v22 + v12 - v11;
          v84[5] = v25 - v12 - v11;
          v26 = v13 + v9;
          v27 = v10 - (v13 + v9);
          v79 = v27 - v12;
          v28 = v23 + v9;
          v29 = v28 + v10;
          v77 = v28 + v10 + v12;
          v84[6] = v27 - v12 + v11;
          v84[7] = v77 + v11;
          v30 = v13 + v9 + v10;
          v31 = v28 - v10;
          v32 = v28 - v10 - v12;
          v84[8] = v12 - v30 - v11;
          v84[9] = v32 - v11;
          v33 = v21 + v10;
          v76 = v33 - v12;
          v34 = v24 + v10;
          v35 = v34 + v12;
          v84[10] = v33 - v12 + v11;
          v84[11] = v34 + v12 + v11;
          v36 = v17 + v10;
          v37 = v19 + v10;
          v38 = v17 + v10 + v12;
          v39 = v19 + v10 - v12;
          v84[12] = v38 + v11;
          v84[13] = v39 + v11;
          v40 = v26 - v10;
          v41 = v15 - v10;
          v42 = v40 - v12;
          v84[14] = v40 - v12 - v11;
          v84[15] = v41 + v12 - v11;
          v43 = v20 - v12;
          v84[16] = v43 - v11;
          v84[17] = v18 + v12 - v11;
          v44 = v16 + v12;
          v84[18] = v44 + v11;
          v84[19] = v30 - v12 + v11;
          v45 = v29 - v12;
          v46 = v27 + v12;
          v84[20] = v45 + v11;
          v84[21] = v46 + v11;
          v47 = v25 + v12;
          v84[22] = v47 - v11;
          v84[23] = v22 - v12 - v11;
          v48 = v34 - v12;
          v49 = v33 + v12;
          v84[24] = v48 + v11;
          v84[25] = v49 + v11;
          v84[0] = v30 + v12 + v11;
          v50 = v31 + v12;
          v84[26] = v50 - v11;
          v84[27] = -v84[0];
          v51 = v40 + v12;
          v84[28] = v41 - v12 - v11;
          v84[29] = v51 - v11;
          v52 = v37 + v12;
          v84[30] = v52 + v11;
          v84[31] = v36 - v12 + v11;
          v84[32] = v18 + v12 + v11;
          v84[33] = v43 + v11;
          v84[34] = v30 - v12 - v11;
          v84[35] = v44 - v11;
          v84[36] = v46 - v11;
          v84[37] = v45 - v11;
          v84[38] = v22 - v12 + v11;
          v84[39] = v47 + v11;
          v84[40] = v49 - v11;
          v84[41] = v48 - v11;
          v84[42] = v11 - (v30 + v12);
          v84[43] = v50 + v11;
          v84[44] = v51 + v11;
          v84[45] = v41 - v12 + v11;
          v84[46] = v36 - v12 - v11;
          v84[47] = v52 - v11;
          v84[48] = v81 - v11;
          v84[49] = v30 + v12 - v11;
          v84[50] = v80 + v11;
          v84[51] = v18 - v12 + v11;
          v84[52] = v78 + v11;
          v84[53] = v22 + v12 + v11;
          v84[54] = v77 - v11;
          v84[55] = v79 - v11;
          v84[56] = v32 + v11;
          v84[57] = v12 - v30 + v11;
          v84[58] = v35 - v11;
          v84[59] = v76 - v11;
          v84[60] = v39 - v11;
          v84[61] = v38 - v11;
          v4 = v83;
          v84[62] = v41 + v12 + v11;
          v53 = (v75 + 16 * v5);
          v84[63] = v42 + v11;
LABEL_8:
          v54 = 0;
          v55 = (v84 + (v6 & 0xFFFFFFFFFFFFFFFCLL));
          v56 = (v83 + 8 + 4 * v6);
          v57 = (v82 + 4 * (v6 >> 1));
          do
          {
            v59 = *v55++;
            v58 = v59;
            v61 = *(v56 - 2);
            v60 = *(v56 - 1);
            v62 = v61 <= v60;
            if (v61 <= v60)
            {
              v61 = *(v56 - 1);
            }

            v63 = v61 + v58;
            if (__OFADD__(v61, v58))
            {
              v63 = ((v61 + v58) >> 31) ^ 0x80000000;
            }

            *v57 = v63;
            v64 = __OFSUB__(v61, v58);
            v65 = v61 - v58;
            if (v64)
            {
              v65 = (v65 >> 31) ^ 0x80000000;
            }

            v57[128] = v65;
            v66 = v56[1];
            if (*v56 <= v66)
            {
              v54 = ((4 * v54) | (2 * v62)) + 1;
            }

            else
            {
              v66 = *v56;
              v54 = (4 * v54) | (2 * v62);
            }

            v67 = v66 - v58;
            if (__OFSUB__(v66, v58))
            {
              v67 = ((v66 - v58) >> 31) ^ 0x80000000;
            }

            v57[1] = v67;
            v64 = __OFADD__(v66, v58);
            v68 = v66 + v58;
            if (v64)
            {
              v68 = (v68 >> 31) ^ 0x80000000;
            }

            v57[129] = v68;
            if ((~v6 & 0x3C) == 0)
            {
              *v53++ = v54;
              v69 = v6 >= 0xFC;
              v6 += 4;
              if (v69)
              {
                goto LABEL_31;
              }

              goto LABEL_8;
            }

            v56 += 4;
            v57 += 2;
            v69 = v6 >= 0xFC;
            v6 += 4;
          }

          while (!v69);
          if (v54)
          {
            *v53 = v54;
          }

LABEL_31:
          a3 += 6;
          ++v5;
          v3 = v82;
        }

        while (v5 != v74);
        v3 = v82;
        this = v73;
      }

      v70 = 0;
      *(this + 8) = v3;
      *(this + 9) = v4;
    }

    else
    {
      v70 = 3;
    }
  }

  else
  {
    v70 = 4;
  }

  v71 = *MEMORY[0x277D85DE8];
  return v70;
}