uint64_t opus_packet_pad(char *__src, size_t __len, uint64_t a3)
{
  if (__len < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (__len == a3)
  {
    return 0;
  }

  if (__len > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = v3;
  v26 = v4;
  v23 = 0u;
  v7 = __len;
  v8 = &__src[a3 - __len];
  memset(v22, 0, sizeof(v22));
  memmove(v8, __src, __len);
  v22[0].i8[0] = *v8;
  v10 = (v22[0].u8[0] >> 3) & 3;
  v11 = v10 == 3;
  v12 = 8000 << v10;
  if (v11)
  {
    v13 = 480;
  }

  else
  {
    v13 = (5243 * (v12 >> 2)) >> 17;
  }

  if ((v22[0].i8[0] & 8) != 0)
  {
    v14 = 160;
  }

  else
  {
    v14 = 80;
  }

  if ((~v22[0].u8[0] & 0x60) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = (2622 * (v12 >> 4)) >> 16;
  if (v22[0].i8[0] < 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  DWORD2(v23) = v17;
  if ((v22[0].i8[0] & 3) != 0)
  {
    if ((v22[0].i8[0] & 3) == 3)
    {
      if (v7 == 1)
      {
        return 4294967292;
      }

      v18 = v7;
      v19 = v8[1] & 0x3F;
      if ((v8[1] & 0x3F) == 0)
      {
        return 4294967292;
      }
    }

    else
    {
      v19 = 2;
      v18 = v7;
    }
  }

  else
  {
    v19 = 1;
    v18 = v7;
  }

  if (v19 * v17 > 0x3C0)
  {
    return 4294967292;
  }

  v24 = 0;
  result = opus_packet_parse_impl(v8, v18, 0, &v24, &v22[0].i64[1], &v22[24].u64[1], 0, 0);
  if (result >= 1)
  {
    v20 = v22[0].i32[1] + v19;
    v22[0].i32[1] += v19;
LABEL_28:
    v21 = opus_repacketizer_out_range_impl(v22, 0, v20, __src, a3, 0, 1);
    return v21 & (v21 >> 31);
  }

  if (!result)
  {
    v20 = v22[0].i32[1];
    goto LABEL_28;
  }

  return result;
}

uint64_t silk_resampler_init(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a4)
  {
    if (a2 <= 15999)
    {
      if (a2 != 8000 && a2 != 12000)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (a2 != 16000 && a2 != 48000 && a2 != 24000)
    {
      return 0xFFFFFFFFLL;
    }

    if (a3 != 8000 && a3 != 16000 && a3 != 12000)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = &delay_matrix_enc + 3 * (((a2 >> 12) - (a2 > 0x3E80)) >> (a2 > 0x5DC0)) + (a3 >> 12) - 4;
  }

  else
  {
    if (a2 != 8000 && a2 != 16000 && a2 != 12000)
    {
      return 0xFFFFFFFFLL;
    }

    if (a3 <= 15999)
    {
      if (a3 != 8000 && a3 != 12000)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (a3 != 16000 && a3 != 48000 && a3 != 24000)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = &delay_matrix_dec + 5 * (a2 >> 12) + (((a3 >> 12) - (a3 > 0x3E80)) >> (a3 > 0x5DC0)) - 6;
  }

  *(a1 + 292) = *v5;
  v6 = a2 / 0x3E8u;
  *(a1 + 284) = v6;
  *(a1 + 288) = a3 / 0x3E8u;
  *(a1 + 268) = 10 * v6;
  if (a3 > a2)
  {
    if (a3 == 2 * a2)
    {
      v7 = 0;
      *(a1 + 264) = 1;
    }

    else
    {
      *(a1 + 264) = 2;
      v7 = 1;
    }

    goto LABEL_32;
  }

  if (a3 >= a2)
  {
    v7 = 0;
    *(a1 + 264) = 0;
    goto LABEL_32;
  }

  *(a1 + 264) = 3;
  if (4 * a3 == 3 * a2)
  {
    v7 = 0;
    *(a1 + 276) = 0x300000012;
    *(a1 + 296) = &silk_Resampler_3_4_COEFS;
    goto LABEL_32;
  }

  if (3 * a3 == 2 * a2)
  {
    v7 = 0;
    *(a1 + 276) = 0x200000012;
    *(a1 + 296) = &silk_Resampler_2_3_COEFS;
    goto LABEL_32;
  }

  if (a2 == 2 * a3)
  {
    v7 = 0;
    *(a1 + 276) = 0x100000018;
    *(a1 + 296) = &silk_Resampler_1_2_COEFS;
    goto LABEL_32;
  }

  if (3 * a3 == a2)
  {
    v7 = 0;
    *(a1 + 276) = 0x100000024;
    *(a1 + 296) = &silk_Resampler_1_3_COEFS;
    goto LABEL_32;
  }

  if (4 * a3 == a2)
  {
    v7 = 0;
    *(a1 + 276) = 0x100000024;
    *(a1 + 296) = &silk_Resampler_1_4_COEFS;
    goto LABEL_32;
  }

  if (6 * a3 != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  *(a1 + 276) = 0x100000024;
  *(a1 + 296) = &silk_Resampler_1_6_COEFS;
LABEL_32:
  v8 = 4 * ((a2 << (v7 | 0xE)) / a3);
  v9 = a2 << v7;
  do
  {
    v10 = v8;
    v11 = (v8 * a3) >> 16;
    ++v8;
  }

  while (v9 > v11);
  *(a1 + 272) = v10;
  return 0;
}

uint64_t silk_resampler(int *a1, _WORD *a2, char *__src, int a4)
{
  v8 = a1[73];
  v9 = (a1 + 42);
  v10 = a1[71] - v8;
  memcpy(a1 + 2 * v8 + 168, __src, 2 * v10);
  v11 = a1[66];
  v12 = a1[71];
  switch(v11)
  {
    case 3:
      silk_resampler_private_down_FIR(a1, a2, v9, v12);
      silk_resampler_private_down_FIR(a1, &a2[a1[72]], &__src[2 * v10], a4 - a1[71]);
      break;
    case 2:
      silk_resampler_private_IIR_FIR(a1, a2, v9, v12);
      silk_resampler_private_IIR_FIR(a1, &a2[a1[72]], &__src[2 * v10], a4 - a1[71]);
      break;
    case 1:
      silk_resampler_private_up2_HQ(a1, a2, v9, v12);
      silk_resampler_private_up2_HQ(a1, &a2[a1[72]], &__src[2 * v10], (a4 - a1[71]));
      break;
    default:
      memcpy(a2, v9, 2 * v12);
      memcpy(&a2[a1[72]], &__src[2 * v10], 2 * (a4 - a1[71]));
      break;
  }

  memcpy(v9, &__src[2 * (a4 - a1[73])], 2 * a1[73]);
  return 0;
}

__n128 silk_resampler_down2_3(__n128 *a1, _WORD *a2, __int16 *a3, int a4)
{
  v25[241] = *MEMORY[0x277D85DE8];
  v24 = *a1;
  if (a4 >= 480)
  {
    v4 = 480;
  }

  else
  {
    v4 = a4;
  }

  if (a4 < 1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v6 = a1[1].n128_u32[0];
    LODWORD(v5) = a1[1].n128_u32[1];
    v7 = a3;
    v8 = 4;
    v9 = v4;
    do
    {
      v10 = *v7++;
      v11 = v6 + (v10 << 8);
      v24.n128_u32[v8] = v11;
      v12 = (4 * v11);
      v6 = v5 + ((0xFFFFFFFFF513 * v12) >> 16);
      v5 = (0xFFFFFFFFE695 * v12) >> 16;
      ++v8;
      --v9;
    }

    while (v9);
    a1[1].n128_u32[0] = v6;
    a1[1].n128_u32[1] = v5;
    if (a4 >= 3)
    {
      v13 = v24.n128_u32[0];
      v14 = v4 + 3;
      v15 = v25;
      do
      {
        v16 = *(v15 - 3);
        v17 = ((10739 * v16) >> 16) + ((4697 * v13) >> 16);
        v18 = (8276 * *(v15 - 2)) >> 16;
        v13 = *(v15 - 1);
        v19 = (((v17 + v18 + ((1567 * v13) >> 16)) >> 5) + 1) >> 1;
        if (v19 <= -32768)
        {
          v19 = -32768;
        }

        if (v19 >= 0x7FFF)
        {
          LOWORD(v19) = 0x7FFF;
        }

        *a2 = v19;
        v20 = (((v18 + ((1567 * v16) >> 16) + ((10739 * v13) >> 16) + ((4697 * *v15) >> 16)) >> 5) + 1) >> 1;
        if (v20 <= -32768)
        {
          v20 = -32768;
        }

        if (v20 >= 0x7FFF)
        {
          v21 = 0x7FFF;
        }

        else
        {
          v21 = v20;
        }

        v22 = a2 + 2;
        a2[1] = v21;
        v15 += 3;
        v14 -= 3;
        a2 += 2;
      }

      while (v14 > 5);
      a2 = v22;
    }

LABEL_20:
    a4 -= v4;
    if (a4 < 1)
    {
      break;
    }

    a3 += v4;
    v24 = *(&v24 + 4 * v4);
    if (a4 >= 480)
    {
      v4 = 480;
    }

    else
    {
      v4 = a4;
    }
  }

  result = *(&v24 + 4 * v4);
  *a1 = result;
  return result;
}

void *silk_resampler_private_down_FIR(uint64_t a1, _WORD *a2, __int16 *a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
  v52 = *(a1 + 268);
  v8 = MEMORY[0x28223BE20](a1, a2, a3);
  v10 = &v49 - v9;
  v51 = v11;
  v12 = 4 * v11;
  memcpy(&v49 - v9, (v8 + 24), 4 * v11);
  v13 = *(a1 + 296);
  v14 = v13 + 2;
  v15 = *(a1 + 272);
  v49 = &v10[v12];
  v50 = v12;
  v53 = a1;
  v16 = *(a1 + 280);
  if (a4 >= v52)
  {
    v17 = v52;
  }

  else
  {
    v17 = a4;
  }

  v18 = v51;
  if (v17 >= 1)
  {
LABEL_5:
    v19 = *v13;
    v20 = v13[1];
    v21 = v5;
    v22 = v49;
    v23 = v17;
    v25 = *v53;
    LODWORD(v24) = v53[1];
    do
    {
      v26 = *v21++;
      v27 = v25 + (v26 << 8);
      *v22 = v27;
      v22 += 4;
      v28 = 4 * v27;
      v25 = v24 + ((v19 * (4 * v27)) >> 16);
      v24 = (v20 * v28) >> 16;
      --v23;
    }

    while (v23);
    v29 = v53;
    *v53 = v25;
    v29[1] = v24;
    goto LABEL_8;
  }

  while (1)
  {
LABEL_8:
    v30 = v17 << 16;
    if (v18 == 18)
    {
      if (v30 >= 1)
      {
        for (i = 0; i < v30; i += v15)
        {
          v41 = &v10[4 * (i >> 16)];
          v42 = (v16 * i) >> 16;
          v43 = &v14[9 * v42];
          v44 = ((v43[1] * v41[1]) >> 16) + ((*v43 * *v41) >> 16) + ((v43[2] * v41[2]) >> 16) + ((v43[3] * v41[3]) >> 16);
          v45 = &v14[9 * v16 + 9 * ~v42];
          v46 = ((v43[4] * v41[4]) >> 16) + ((v43[5] * v41[5]) >> 16) + ((v43[6] * v41[6]) >> 16);
          v47 = (((v44 + v46 + ((v43[7] * v41[7]) >> 16) + ((v43[8] * v41[8]) >> 16) + ((*v45 * v41[17]) >> 16) + ((v45[1] * v41[16]) >> 16) + ((v45[2] * v41[15]) >> 16) + ((v45[3] * v41[14]) >> 16) + ((v45[4] * v41[13]) >> 16) + ((v45[5] * v41[12]) >> 16) + ((v45[6] * v41[11]) >> 16) + ((v45[7] * v41[10]) >> 16) + ((v45[8] * v41[9]) >> 16)) >> 5) + 1) >> 1;
          if (v47 <= -32768)
          {
            v47 = -32768;
          }

          if (v47 >= 0x7FFF)
          {
            LOWORD(v47) = 0x7FFF;
          }

          *v6++ = v47;
        }
      }
    }

    else if (v18 == 24)
    {
      if (v30 >= 1)
      {
        for (j = 0; j < v30; j += v15)
        {
          v37 = &v10[4 * (j >> 16)];
          v38 = (((v37[22] + v37[1]) * v13[3]) >> 16) + (((v37[23] + *v37) * v13[2]) >> 16) + (((v37[21] + v37[2]) * v13[4]) >> 16) + (((v37[20] + v37[3]) * v13[5]) >> 16) + (((v37[19] + v37[4]) * v13[6]) >> 16) + (((v37[18] + v37[5]) * v13[7]) >> 16) + (((v37[17] + v37[6]) * v13[8]) >> 16);
          v39 = (((v38 + (((v37[16] + v37[7]) * v13[9]) >> 16) + (((v37[15] + v37[8]) * v13[10]) >> 16) + (((v37[14] + v37[9]) * v13[11]) >> 16) + (((v37[13] + v37[10]) * v13[12]) >> 16) + (((v37[12] + v37[11]) * v13[13]) >> 16)) >> 5) + 1) >> 1;
          if (v39 <= -32768)
          {
            v39 = -32768;
          }

          if (v39 >= 0x7FFF)
          {
            LOWORD(v39) = 0x7FFF;
          }

          *v6++ = v39;
        }
      }
    }

    else if (v18 == 36 && v30 >= 1)
    {
      for (k = 0; k < v30; k += v15)
      {
        v32 = &v10[4 * (k >> 16)];
        v33 = (((v32[34] + v32[1]) * v13[3]) >> 16) + (((v32[35] + *v32) * v13[2]) >> 16) + (((v32[33] + v32[2]) * v13[4]) >> 16) + (((v32[32] + v32[3]) * v13[5]) >> 16) + (((v32[31] + v32[4]) * v13[6]) >> 16) + (((v32[30] + v32[5]) * v13[7]) >> 16) + (((v32[29] + v32[6]) * v13[8]) >> 16);
        v34 = v33 + (((v32[28] + v32[7]) * v13[9]) >> 16) + (((v32[27] + v32[8]) * v13[10]) >> 16) + (((v32[26] + v32[9]) * v13[11]) >> 16) + (((v32[25] + v32[10]) * v13[12]) >> 16) + (((v32[24] + v32[11]) * v13[13]) >> 16) + (((v32[23] + v32[12]) * v13[14]) >> 16) + (((v32[22] + v32[13]) * v13[15]) >> 16) + (((v32[21] + v32[14]) * v13[16]) >> 16) + (((v32[20] + v32[15]) * v13[17]) >> 16);
        v35 = (((v34 + (((v32[19] + v32[16]) * v13[18]) >> 16) + (((v32[18] + v32[17]) * v13[19]) >> 16)) >> 5) + 1) >> 1;
        if (v35 <= -32768)
        {
          v35 = -32768;
        }

        if (v35 >= 0x7FFF)
        {
          LOWORD(v35) = 0x7FFF;
        }

        *v6++ = v35;
      }
    }

    a4 -= v17;
    if (a4 <= 1)
    {
      return memcpy(v53 + 6, &v10[4 * v17], v50);
    }

    v5 += v17;
    memcpy(v10, &v10[4 * v17], v50);
    if (a4 >= v52)
    {
      v17 = v52;
    }

    else
    {
      v17 = a4;
    }

    v18 = v51;
    if (v17 >= 1)
    {
      goto LABEL_5;
    }
  }
}

__n128 silk_resampler_private_IIR_FIR(uint64_t a1, _WORD *a2, uint64_t a3, int a4)
{
  v5 = a2;
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x28223BE20](a1, a2, a3);
  v10 = (v18 - v9);
  *(v18 - v9) = *(v6 + 24);
  v11 = *(v6 + 272);
  v18[0] = v6;
  while (1)
  {
    if (a4 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = a4;
    }

    v13 = v7;
    silk_resampler_private_up2_HQ(v6, (v10 + 1), v7, v12);
    if ((v12 << 17) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = *(v10 + 2 * (v14 >> 16));
        v16 = ((vaddvq_s32(vmlal_s16(vmull_s16(*v15.i8, silk_resampler_frac_FIR_12[((3 * v14) >> 14)]), vrev64_s16(*&vextq_s8(v15, v15, 8uLL)), silk_resampler_frac_FIR_12[11 - ((3 * v14) >> 14)])) >> 14) + 1) >> 1;
        if (v16 <= -32768)
        {
          v16 = -32768;
        }

        if (v16 >= 0x7FFF)
        {
          LOWORD(v16) = 0x7FFF;
        }

        *v5++ = v16;
        v14 += v11;
      }

      while (v14 < v12 << 17);
    }

    a4 -= v12;
    v6 = v18[0];
    if (a4 < 1)
    {
      break;
    }

    v7 = &v13[v12];
    *v10 = *(v10 + 4 * v12);
    v8 = *(v6 + 268);
  }

  result = *(v10 + 4 * v12);
  *(v18[0] + 24) = result;
  return result;
}

int *silk_resampler_private_up2_HQ(int *result, uint64_t a2, __int16 *a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = *result;
    v5 = result[1];
    v6 = (a2 + 2);
    v7 = result[2];
    v8 = result[3];
    a4 = a4;
    v10 = result[4];
    v9 = result[5];
    do
    {
      v11 = *a3++;
      v12 = (1746 * ((v11 << 10) - v4)) >> 16;
      v13 = v4 + v12;
      v4 = (v11 << 10) + v12;
      v14 = (14986 * (v13 - v5)) >> 16;
      v15 = v5 + v14;
      v5 = v13 + v14;
      v16 = v15 - v7;
      LODWORD(v14) = v15 + ((0xFFFFFFFF98ABLL * v16) >> 16);
      v7 = v14 + v16;
      v17 = ((v14 >> 9) + 1) >> 1;
      v18 = (6854 * ((v11 << 10) - v8)) >> 16;
      v19 = v8 + v18;
      v8 = (v11 << 10) + v18;
      if (v17 <= -32768)
      {
        v20 = -32768;
      }

      else
      {
        v20 = v17;
      }

      v21 = (25769 * (v19 - v10)) >> 16;
      v22 = v10 + v21;
      v10 = v19 + v21;
      v23 = v22 - v9;
      v24 = v22 + ((0xFFFFFFFFD8F6 * v23) >> 16);
      if (v20 >= 0x7FFF)
      {
        LOWORD(v20) = 0x7FFF;
      }

      v9 = v24 + v23;
      v25 = ((v24 >> 9) + 1) >> 1;
      *(v6 - 1) = v20;
      if (v25 <= -32768)
      {
        v26 = -32768;
      }

      else
      {
        v26 = v25;
      }

      if (v26 >= 0x7FFF)
      {
        LOWORD(v26) = 0x7FFF;
      }

      *v6 = v26;
      v6 += 2;
      --a4;
    }

    while (a4);
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v8;
    result[4] = v10;
    result[5] = v9;
  }

  return result;
}

float silk_residual_energy_FLP(float *a1, unint64_t a2, float *a3, float *a4, int a5, int a6, int a7)
{
  v187 = *MEMORY[0x277D85DE8];
  v14 = a7;
  v15 = 2 * (a7 + a5);
  silk_LPC_analysis_filter_FLP(v186, a3, a2, v15, a7);
  v16 = *a4 * *a4;
  if (a5 >= 4)
  {
    v17 = (a5 - 3);
    v18 = 4;
    if (v17 > 4)
    {
      v18 = (a5 - 3);
    }

    if (v17 > 0xC)
    {
      v23 = ((v18 - 1) >> 2) + 1;
      v19 = 4 * (v23 & 0x7FFFFFFFFFFFFFFCLL);
      v24 = &v186[v14 + 8];
      v20 = 0.0;
      v25 = v23 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v26 = v24 - 8;
        v188 = vld4_f32(v26);
        v192 = vld4_f32(v24);
        v27 = vcvtq_f64_f32(v188.val[0]);
        v28 = vcvtq_f64_f32(v192.val[0]);
        v29 = vcvtq_f64_f32(v188.val[1]);
        v30 = vcvtq_f64_f32(v192.val[1]);
        v31 = vmlaq_f64(vmulq_f64(v29, v29), v27, v27);
        v32 = vmlaq_f64(vmulq_f64(v30, v30), v28, v28);
        v33 = vcvtq_f64_f32(v188.val[2]);
        v34 = vcvtq_f64_f32(v192.val[2]);
        *v188.val[0].f32 = vcvtq_f64_f32(v188.val[3]);
        *v188.val[1].f32 = vcvtq_f64_f32(v192.val[3]);
        v35 = vmlaq_f64(vmlaq_f64(v31, v33, v33), *v188.val[0].f32, *v188.val[0].f32);
        v36 = vmlaq_f64(vmlaq_f64(v32, v34, v34), *v188.val[1].f32, *v188.val[1].f32);
        v20 = v20 + v35.f64[0] + v35.f64[1] + v36.f64[0] + v36.f64[1];
        v24 += 16;
        v25 -= 4;
      }

      while (v25);
      if (v23 == (v23 & 0x7FFFFFFFFFFFFFFCLL))
      {
LABEL_13:
        v21 = a5 & 0x7FFFFFFC;
        v22 = v16;
        if ((a5 & 0x7FFFFFFC) >= a5)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
    }

    v37 = &v186[v19 + 2 + v14];
    do
    {
      v38 = *(v37 - 1) * *(v37 - 1) + *(v37 - 2) * *(v37 - 2);
      v39 = *v37;
      v40 = v37[1];
      v37 += 4;
      v20 = v20 + v38 + v39 * v39 + v40 * v40;
      v19 += 4;
    }

    while (v19 < v17);
    goto LABEL_13;
  }

  v21 = 0;
  v20 = 0.0;
  v22 = v16;
  if (a5 <= 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v41 = a5 - v21;
  if (v41 <= 7)
  {
    v42 = v21;
LABEL_19:
    v54 = a5 - v42;
    v55 = &v186[v42 + v14];
    do
    {
      v56 = *v55++;
      v20 = v20 + v56 * v56;
      --v54;
    }

    while (v54);
    goto LABEL_21;
  }

  v42 = (v41 & 0xFFFFFFFFFFFFFFF8) + v21;
  v43 = &v186[v14 + 4 + v21];
  v44 = v41 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v45 = *v43[-2].f32;
    v46 = vcvtq_f64_f32(*v45.f32);
    v47 = vcvt_hight_f64_f32(v45);
    v48 = vcvtq_f64_f32(*v43);
    v49 = vcvt_hight_f64_f32(*v43->f32);
    v50 = vmulq_f64(v47, v47);
    v51 = vmulq_f64(v46, v46);
    v52 = vmulq_f64(v49, v49);
    v53 = vmulq_f64(v48, v48);
    v20 = v20 + v51.f64[0] + v51.f64[1] + v50.f64[0] + v50.f64[1] + v53.f64[0] + v53.f64[1] + v52.f64[0] + v52.f64[1];
    v43 += 4;
    v44 -= 8;
  }

  while (v44);
  if (v41 != (v41 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_19;
  }

LABEL_21:
  v57 = v20 * v22;
  *a1 = v57;
  v58 = a4[1] * a4[1];
  if (a5 >= 4)
  {
    v59 = (a5 - 3);
    v60 = 4;
    if (v59 > 4)
    {
      v60 = (a5 - 3);
    }

    if (v59 > 0xC)
    {
      v65 = ((v60 - 1) >> 2) + 1;
      v61 = 4 * (v65 & 0x7FFFFFFFFFFFFFFCLL);
      v66 = &v186[2 * v14 + 8 + a5];
      v62 = 0.0;
      v67 = v65 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v68 = v66 - 8;
        v189 = vld4_f32(v68);
        v193 = vld4_f32(v66);
        v69 = vcvtq_f64_f32(v189.val[0]);
        v70 = vcvtq_f64_f32(v193.val[0]);
        v71 = vcvtq_f64_f32(v189.val[1]);
        v72 = vcvtq_f64_f32(v193.val[1]);
        v73 = vmlaq_f64(vmulq_f64(v71, v71), v69, v69);
        v74 = vmlaq_f64(vmulq_f64(v72, v72), v70, v70);
        v75 = vcvtq_f64_f32(v189.val[2]);
        v76 = vcvtq_f64_f32(v193.val[2]);
        *v189.val[0].f32 = vcvtq_f64_f32(v189.val[3]);
        *v189.val[1].f32 = vcvtq_f64_f32(v193.val[3]);
        v77 = vmlaq_f64(vmlaq_f64(v73, v75, v75), *v189.val[0].f32, *v189.val[0].f32);
        v78 = vmlaq_f64(vmlaq_f64(v74, v76, v76), *v189.val[1].f32, *v189.val[1].f32);
        v62 = v62 + v77.f64[0] + v77.f64[1] + v78.f64[0] + v78.f64[1];
        v66 += 16;
        v67 -= 4;
      }

      while (v67);
      if (v65 == (v65 & 0x7FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        v63 = a5 & 0x7FFFFFFC;
        v64 = v58;
        if ((a5 & 0x7FFFFFFC) >= a5)
        {
          goto LABEL_41;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v61 = 0;
      v62 = 0.0;
    }

    v79 = &v186[2 * v14 + 2 + v61 + a5];
    do
    {
      v80 = *(v79 - 1) * *(v79 - 1) + *(v79 - 2) * *(v79 - 2);
      v81 = *v79;
      v82 = v79[1];
      v79 += 4;
      v62 = v62 + v80 + v81 * v81 + v82 * v82;
      v61 += 4;
    }

    while (v61 < v59);
    goto LABEL_33;
  }

  v63 = 0;
  v62 = 0.0;
  v64 = v58;
  if (a5 <= 0)
  {
    goto LABEL_41;
  }

LABEL_34:
  v83 = a5 - v63;
  if (v83 <= 7)
  {
    v84 = v63;
LABEL_39:
    v96 = a5 - v84;
    v97 = &v186[2 * v14 + v84 + a5];
    do
    {
      v98 = *v97++;
      v62 = v62 + v98 * v98;
      --v96;
    }

    while (v96);
    goto LABEL_41;
  }

  v84 = (v83 & 0xFFFFFFFFFFFFFFF8) + v63;
  v85 = &v186[2 * v14 + 4 + a5 + v63];
  v86 = v83 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v87 = *v85[-2].f32;
    v88 = vcvtq_f64_f32(*v87.f32);
    v89 = vcvt_hight_f64_f32(v87);
    v90 = vcvtq_f64_f32(*v85);
    v91 = vcvt_hight_f64_f32(*v85->f32);
    v92 = vmulq_f64(v89, v89);
    v93 = vmulq_f64(v88, v88);
    v94 = vmulq_f64(v91, v91);
    v95 = vmulq_f64(v90, v90);
    v62 = v62 + v93.f64[0] + v93.f64[1] + v92.f64[0] + v92.f64[1] + v95.f64[0] + v95.f64[1] + v94.f64[0] + v94.f64[1];
    v85 += 4;
    v86 -= 8;
  }

  while (v86);
  if (v83 != (v83 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_39;
  }

LABEL_41:
  result = v62 * v64;
  a1[1] = result;
  if (a6 != 4)
  {
    return result;
  }

  silk_LPC_analysis_filter_FLP(v186, a3 + 16, a2 + 4 * v15, v15, a7);
  v100 = a4[2] * a4[2];
  if (a5 >= 4)
  {
    v101 = (a5 - 3);
    v102 = 4;
    if (v101 > 4)
    {
      v102 = (a5 - 3);
    }

    if (v101 > 0xC)
    {
      v108 = ((v102 - 1) >> 2) + 1;
      v103 = 4 * (v108 & 0x7FFFFFFFFFFFFFFCLL);
      v109 = &v186[v14 + 8];
      v104 = 0.0;
      v110 = v108 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v111 = v109 - 8;
        v190 = vld4_f32(v111);
        v194 = vld4_f32(v109);
        v112 = vcvtq_f64_f32(v190.val[0]);
        v113 = vcvtq_f64_f32(v194.val[0]);
        v114 = vcvtq_f64_f32(v190.val[1]);
        v115 = vcvtq_f64_f32(v194.val[1]);
        v116 = vmlaq_f64(vmulq_f64(v114, v114), v112, v112);
        v117 = vmlaq_f64(vmulq_f64(v115, v115), v113, v113);
        v118 = vcvtq_f64_f32(v190.val[2]);
        v119 = vcvtq_f64_f32(v194.val[2]);
        *v190.val[0].f32 = vcvtq_f64_f32(v190.val[3]);
        *v190.val[1].f32 = vcvtq_f64_f32(v194.val[3]);
        v120 = vmlaq_f64(vmlaq_f64(v116, v118, v118), *v190.val[0].f32, *v190.val[0].f32);
        v121 = vmlaq_f64(vmlaq_f64(v117, v119, v119), *v190.val[1].f32, *v190.val[1].f32);
        v104 = v104 + v120.f64[0] + v120.f64[1] + v121.f64[0] + v121.f64[1];
        v109 += 16;
        v110 -= 4;
      }

      while (v110);
      if (v108 == (v108 & 0x7FFFFFFFFFFFFFFCLL))
      {
LABEL_54:
        LODWORD(v105) = a5 & 0x7FFFFFFC;
        v106 = v100;
        v107 = a5;
        if ((a5 & 0x7FFFFFFC) >= a5)
        {
          goto LABEL_62;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v103 = 0;
      v104 = 0.0;
    }

    v122 = &v186[v103 + 2 + v14];
    do
    {
      v123 = *(v122 - 1) * *(v122 - 1) + *(v122 - 2) * *(v122 - 2);
      v124 = *v122;
      v125 = v122[1];
      v122 += 4;
      v104 = v104 + v123 + v124 * v124 + v125 * v125;
      v103 += 4;
    }

    while (v103 < v101);
    goto LABEL_54;
  }

  LODWORD(v105) = 0;
  v104 = 0.0;
  v106 = v100;
  v107 = a5;
  if (a5 <= 0)
  {
    goto LABEL_62;
  }

LABEL_55:
  v126 = v105;
  v127 = v107 - v105;
  if (v127 <= 7)
  {
    v105 = v105;
LABEL_60:
    v139 = v107 - v105;
    v140 = &v186[v105 + v14];
    do
    {
      v141 = *v140++;
      v104 = v104 + v141 * v141;
      --v139;
    }

    while (v139);
    goto LABEL_62;
  }

  v105 = (v127 & 0xFFFFFFFFFFFFFFF8) + v105;
  v128 = &v186[v14 + 4 + v126];
  v129 = v127 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v130 = *v128[-2].f32;
    v131 = vcvtq_f64_f32(*v130.f32);
    v132 = vcvt_hight_f64_f32(v130);
    v133 = vcvtq_f64_f32(*v128);
    v134 = vcvt_hight_f64_f32(*v128->f32);
    v135 = vmulq_f64(v132, v132);
    v136 = vmulq_f64(v131, v131);
    v137 = vmulq_f64(v134, v134);
    v138 = vmulq_f64(v133, v133);
    v104 = v104 + v136.f64[0] + v136.f64[1] + v135.f64[0] + v135.f64[1] + v138.f64[0] + v138.f64[1] + v137.f64[0] + v137.f64[1];
    v128 += 4;
    v129 -= 8;
  }

  while (v129);
  if (v127 != (v127 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_60;
  }

LABEL_62:
  v142 = v104 * v106;
  a1[2] = v142;
  v143 = a4[3] * a4[3];
  if (a5 >= 4)
  {
    v144 = (a5 - 3);
    v145 = 4;
    if (v144 > 4)
    {
      v145 = (a5 - 3);
    }

    if (v144 > 0xC)
    {
      v150 = ((v145 - 1) >> 2) + 1;
      v146 = 4 * (v150 & 0x7FFFFFFFFFFFFFFCLL);
      v151 = &v186[2 * v14 + 8 + a5];
      v147 = 0.0;
      v152 = v150 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v153 = v151 - 8;
        v191 = vld4_f32(v153);
        v195 = vld4_f32(v151);
        v154 = vcvtq_f64_f32(v191.val[0]);
        v155 = vcvtq_f64_f32(v195.val[0]);
        v156 = vcvtq_f64_f32(v191.val[1]);
        v157 = vcvtq_f64_f32(v195.val[1]);
        v158 = vmlaq_f64(vmulq_f64(v156, v156), v154, v154);
        v159 = vmlaq_f64(vmulq_f64(v157, v157), v155, v155);
        v160 = vcvtq_f64_f32(v191.val[2]);
        v161 = vcvtq_f64_f32(v195.val[2]);
        *v191.val[0].f32 = vcvtq_f64_f32(v191.val[3]);
        *v191.val[1].f32 = vcvtq_f64_f32(v195.val[3]);
        v162 = vmlaq_f64(vmlaq_f64(v158, v160, v160), *v191.val[0].f32, *v191.val[0].f32);
        v163 = vmlaq_f64(vmlaq_f64(v159, v161, v161), *v191.val[1].f32, *v191.val[1].f32);
        v147 = v147 + v162.f64[0] + v162.f64[1] + v163.f64[0] + v163.f64[1];
        v151 += 16;
        v152 -= 4;
      }

      while (v152);
      if (v150 == (v150 & 0x7FFFFFFFFFFFFFFCLL))
      {
LABEL_74:
        v148 = a5 & 0x7FFFFFFC;
        v149 = v143;
        if ((a5 & 0x7FFFFFFC) >= a5)
        {
          goto LABEL_82;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v146 = 0;
      v147 = 0.0;
    }

    v164 = &v186[2 * v14 + 2 + v146 + a5];
    do
    {
      v165 = *(v164 - 1) * *(v164 - 1) + *(v164 - 2) * *(v164 - 2);
      v166 = *v164;
      v167 = v164[1];
      v164 += 4;
      v147 = v147 + v165 + v166 * v166 + v167 * v167;
      v146 += 4;
    }

    while (v146 < v144);
    goto LABEL_74;
  }

  v148 = 0;
  v147 = 0.0;
  v149 = v143;
  if (a5 <= 0)
  {
    goto LABEL_82;
  }

LABEL_75:
  v168 = v148;
  v169 = v107 - v148;
  v170 = 2 * v14;
  if (v169 > 7)
  {
    v171 = (v169 & 0xFFFFFFFFFFFFFFF8) + v168;
    v172 = &v186[a5 + 4 + v168 + v170];
    v173 = v169 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v174 = *v172[-2].f32;
      v175 = vcvtq_f64_f32(*v174.f32);
      v176 = vcvt_hight_f64_f32(v174);
      v177 = vcvtq_f64_f32(*v172);
      v178 = vcvt_hight_f64_f32(*v172->f32);
      v179 = vmulq_f64(v176, v176);
      v180 = vmulq_f64(v175, v175);
      v181 = vmulq_f64(v178, v178);
      v182 = vmulq_f64(v177, v177);
      v147 = v147 + v180.f64[0] + v180.f64[1] + v179.f64[0] + v179.f64[1] + v182.f64[0] + v182.f64[1] + v181.f64[0] + v181.f64[1];
      v172 += 4;
      v173 -= 8;
    }

    while (v173);
    if (v169 == (v169 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_82;
    }
  }

  else
  {
    v171 = v168;
  }

  v183 = v107 - v171;
  v184 = &v186[v171 + a5 + v170];
  do
  {
    v185 = *v184++;
    v147 = v147 + v185 * v185;
    --v183;
  }

  while (v183);
LABEL_82:
  result = v147 * v149;
  a1[3] = result;
  return result;
}

uint64_t *silk_shell_encoder(uint64_t *result, int *a2)
{
  v3 = result;
  v4 = a2[1] + *a2;
  v5 = a2[3] + a2[2];
  v6 = a2[5] + a2[4];
  v7 = v5 + v4;
  v14 = a2[7] + a2[6];
  v15 = a2[9] + a2[8];
  v8 = v14 + v6;
  v9 = a2[11] + a2[10] + v15;
  v17 = a2[13] + a2[12];
  v18 = a2[15] + a2[14];
  v10 = v14 + v6 + v5 + v4;
  v16 = a2[11] + a2[10];
  v13 = v18 + v17 + v9;
  if (v13 + v10 >= 1)
  {
    result = ec_enc_icdf(result, v8 + v7, &silk_shell_code_table3[silk_shell_code_table_offsets[v13 + v10]], 8);
  }

  if (v10 >= 1)
  {
    result = ec_enc_icdf(v3, v5 + v4, &silk_shell_code_table2 + silk_shell_code_table_offsets[v10], 8);
  }

  if (v7 >= 1)
  {
    result = ec_enc_icdf(v3, v4, &silk_shell_code_table1[silk_shell_code_table_offsets[v7]], 8);
  }

  if (v4 >= 1)
  {
    result = ec_enc_icdf(v3, *a2, &silk_shell_code_table0 + silk_shell_code_table_offsets[v4], 8);
  }

  if (v5 >= 1)
  {
    result = ec_enc_icdf(v3, a2[2], &silk_shell_code_table0 + silk_shell_code_table_offsets[v5], 8);
  }

  if (v8 >= 1)
  {
    result = ec_enc_icdf(v3, v6, &silk_shell_code_table1[silk_shell_code_table_offsets[v8]], 8);
  }

  if (v6 >= 1)
  {
    result = ec_enc_icdf(v3, a2[4], &silk_shell_code_table0 + silk_shell_code_table_offsets[v6], 8);
  }

  if (v14 >= 1)
  {
    result = ec_enc_icdf(v3, a2[6], &silk_shell_code_table0 + silk_shell_code_table_offsets[v14], 8);
  }

  if (v13 >= 1)
  {
    result = ec_enc_icdf(v3, v9, &silk_shell_code_table2 + silk_shell_code_table_offsets[v13], 8);
  }

  if (v9 >= 1)
  {
    result = ec_enc_icdf(v3, v15, &silk_shell_code_table1[silk_shell_code_table_offsets[v9]], 8);
  }

  if (v15 >= 1)
  {
    result = ec_enc_icdf(v3, a2[8], &silk_shell_code_table0 + silk_shell_code_table_offsets[v15], 8);
  }

  if (v16 >= 1)
  {
    result = ec_enc_icdf(v3, a2[10], &silk_shell_code_table0 + silk_shell_code_table_offsets[v16], 8);
  }

  if (v18 + v17 >= 1)
  {
    result = ec_enc_icdf(v3, v17, &silk_shell_code_table1[silk_shell_code_table_offsets[v18 + v17]], 8);
  }

  if (v17 >= 1)
  {
    result = ec_enc_icdf(v3, a2[12], &silk_shell_code_table0 + silk_shell_code_table_offsets[v17], 8);
  }

  if (v18 >= 1)
  {
    v11 = a2[14];
    v12 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v18];

    return ec_enc_icdf(v3, v11, v12, 8);
  }

  return result;
}

uint64_t silk_shell_decoder(uint64_t result, uint64_t *a2, int a3)
{
  if (a3 < 1)
  {
    LODWORD(v3) = 0;
    v19 = 0;
LABEL_32:
    LOWORD(v52) = 0;
    LOWORD(v53) = 0;
    *result = 0;
    goto LABEL_33;
  }

  v3 = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = v4 >> 8;
  v7 = -65536;
  do
  {
    v8 = v4;
    v4 = v6 * silk_shell_code_table3[silk_shell_code_table_offsets[a3] + v3++];
    v7 += 0x10000;
    v9 = v5 - v4;
  }

  while (v5 < v4);
  v10 = v8 - v4;
  *(a2 + 8) = v8 - v4;
  *(a2 + 9) = v9;
  if (v8 - v4 >= 0x800001)
  {
    v18 = v8 - v4;
  }

  else
  {
    v11 = *(a2 + 2);
    v12 = *(a2 + 11);
    v13 = *(a2 + 7);
    v14 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v14;
      v18 = v10 << 8;
      *(a2 + 8) = v10 << 8;
      if (v13 < v11)
      {
        v15 = *a2;
        *(a2 + 7) = v13 + 1;
        v16 = *(v15 + v13++);
      }

      else
      {
        v16 = 0;
      }

      v9 = (((v9 & 0x7FFFFF) << 8) | ((v16 | (v12 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v16;
      *(a2 + 9) = v9;
      v14 += 8;
      v12 = v16;
      v17 = v10 > 0x8000;
      v10 <<= 8;
    }

    while (!v17);
  }

  v19 = a3 + 1 - v3;
  v20 = v7 >> 16;
  if (v7 >> 16 <= 0)
  {
    LODWORD(v3) = 0;
    goto LABEL_32;
  }

  v21 = 0;
  v22 = &silk_shell_code_table2 + silk_shell_code_table_offsets[v20];
  v23 = v18 >> 8;
  v24 = 1;
  do
  {
    v25 = *v22++;
    v26 = v18;
    v18 = v23 * v25;
    ++v24;
    v21 += 0x10000;
    LODWORD(v3) = v3 - 1;
    v27 = v9 - v23 * v25;
  }

  while (v9 < v23 * v25);
  v28 = v26 - v18;
  *(a2 + 8) = v26 - v18;
  *(a2 + 9) = v27;
  if (v26 - v18 >= 0x800001)
  {
    v35 = v26 - v18;
  }

  else
  {
    v29 = *(a2 + 2);
    v30 = *(a2 + 11);
    v31 = *(a2 + 7);
    v32 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v32;
      v35 = v28 << 8;
      *(a2 + 8) = v28 << 8;
      if (v31 < v29)
      {
        v33 = *a2;
        *(a2 + 7) = v31 + 1;
        v34 = *(v33 + v31++);
      }

      else
      {
        v34 = 0;
      }

      v27 = (((v27 & 0x7FFFFF) << 8) | ((v34 | (v30 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v34;
      *(a2 + 9) = v27;
      v32 += 8;
      v30 = v34;
      v17 = v28 > 0x8000;
      v28 <<= 8;
    }

    while (!v17);
  }

  v36 = (v21 - 0x10000) >> 16;
  if (v36 <= 0)
  {
    goto LABEL_32;
  }

  v37 = 0;
  v38 = &silk_shell_code_table1[silk_shell_code_table_offsets[v36]];
  v39 = v35 >> 8;
  v40 = -65536;
  do
  {
    v41 = *v38++;
    v42 = v35;
    v35 = v39 * v41;
    ++v37;
    v21 -= 0x10000;
    v40 += 0x10000;
    v43 = v27 - v39 * v41;
  }

  while (v27 < v39 * v41);
  v44 = v42 - v35;
  *(a2 + 8) = v44;
  *(a2 + 9) = v43;
  if (v44 >= 0x800001)
  {
    v51 = v44;
  }

  else
  {
    v45 = *(a2 + 2);
    v46 = *(a2 + 11);
    v47 = *(a2 + 7);
    v48 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v48;
      v51 = v44 << 8;
      *(a2 + 8) = v44 << 8;
      if (v47 < v45)
      {
        v49 = *a2;
        *(a2 + 7) = v47 + 1;
        v50 = *(v49 + v47++);
      }

      else
      {
        v50 = 0;
      }

      v43 = (((v43 & 0x7FFFFF) << 8) | ((v50 | (v46 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v50;
      *(a2 + 9) = v43;
      v48 += 8;
      v46 = v50;
      v17 = v44 > 0x8000;
      v44 <<= 8;
    }

    while (!v17);
  }

  v201 = v40 >> 16;
  if (v201 < 1)
  {
    *result = 0;
    *(result + 2) = 0;
    v230 = v21 >> 16;
    if (v21 >> 16 > 0)
    {
      goto LABEL_155;
    }

LABEL_152:
    LOWORD(v52) = 0;
    LOWORD(v53) = 0;
    goto LABEL_33;
  }

  v202 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v201];
  v203 = v51 >> 8;
  v204 = 1;
  v205 = v37;
  do
  {
    v206 = v51;
    v207 = *v202++;
    v51 = v203 * v207;
    --v204;
    --v205;
    v208 = v43 - v203 * v207;
  }

  while (v43 < v203 * v207);
  v209 = v206 - v51;
  *(a2 + 8) = v206 - v51;
  *(a2 + 9) = v208;
  v210 = -v204;
  if (v206 - v51 >= 0x800001)
  {
    v51 = v206 - v51;
  }

  else
  {
    v211 = *(a2 + 2);
    v212 = *(a2 + 11);
    v213 = *(a2 + 7);
    v214 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v214;
      v51 = v209 << 8;
      *(a2 + 8) = v209 << 8;
      if (v213 < v211)
      {
        v215 = *a2;
        *(a2 + 7) = v213 + 1;
        v216 = *(v215 + v213++);
      }

      else
      {
        v216 = 0;
      }

      v208 = (((v208 & 0x7FFFFF) << 8) | ((v216 | (v212 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v216;
      *(a2 + 9) = v208;
      v214 += 8;
      v212 = v216;
      v17 = v209 > 0x8000;
      v209 <<= 8;
    }

    while (!v17);
  }

  v43 = v208;
  *result = v210;
  *(result + 2) = v205;
  v230 = v21 >> 16;
  if (v21 >> 16 <= 0)
  {
    goto LABEL_152;
  }

LABEL_155:
  v53 = v24 - v37;
  v231 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v230];
  v232 = v51 >> 8;
  v233 = 1;
  do
  {
    v234 = v51;
    v235 = *v231++;
    v51 = v232 * v235;
    --v233;
    --v53;
    v236 = v43 - v232 * v235;
  }

  while (v43 < v232 * v235);
  v237 = v234 - v51;
  *(a2 + 8) = v237;
  *(a2 + 9) = v236;
  v52 = -v233;
  if (v237 < 0x800001)
  {
    v238 = *(a2 + 2);
    v239 = *(a2 + 11);
    v240 = *(a2 + 7);
    v241 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v241;
      *(a2 + 8) = v237 << 8;
      if (v240 < v238)
      {
        v242 = *a2;
        *(a2 + 7) = v240 + 1;
        v243 = *(v242 + v240++);
      }

      else
      {
        v243 = 0;
      }

      v236 = (((v236 & 0x7FFFFF) << 8) | ((v243 | (v239 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v243;
      *(a2 + 9) = v236;
      v241 += 8;
      v239 = v243;
      v17 = v237 > 0x8000;
      v237 <<= 8;
    }

    while (!v17);
  }

LABEL_33:
  *(result + 4) = v52;
  *(result + 6) = v53;
  if (v3 <= 0)
  {
    LOWORD(v70) = 0;
    v71 = 0;
    *(result + 8) = 0;
    goto LABEL_65;
  }

  v54 = 0;
  v55 = v3 << 16;
  v57 = *(a2 + 8);
  v56 = *(a2 + 9);
  v58 = v57 >> 8;
  v59 = -65536;
  do
  {
    v60 = v57;
    v57 = v58 * silk_shell_code_table1[silk_shell_code_table_offsets[v3] + v54++];
    v59 += 0x10000;
    v61 = v56 - v57;
  }

  while (v56 < v57);
  v62 = v60 - v57;
  *(a2 + 8) = v60 - v57;
  *(a2 + 9) = v61;
  if (v60 - v57 >= 0x800001)
  {
    v69 = v60 - v57;
  }

  else
  {
    v63 = *(a2 + 2);
    v64 = *(a2 + 11);
    v65 = *(a2 + 7);
    v66 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v66;
      v69 = v62 << 8;
      *(a2 + 8) = v62 << 8;
      if (v65 < v63)
      {
        v67 = *a2;
        *(a2 + 7) = v65 + 1;
        v68 = *(v67 + v65++);
      }

      else
      {
        v68 = 0;
      }

      v61 = (((v61 & 0x7FFFFF) << 8) | ((v68 | (v64 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v68;
      *(a2 + 9) = v61;
      v66 += 8;
      v64 = v68;
      v17 = v62 > 0x8000;
      v62 <<= 8;
    }

    while (!v17);
  }

  if (v59 >> 16 < 1)
  {
    *(result + 8) = 0;
    *(result + 10) = 0;
    v87 = (v55 - v59) >> 16;
    if (v87 >= 1)
    {
      goto LABEL_57;
    }

LABEL_54:
    LOWORD(v70) = 0;
    v71 = 0;
    goto LABEL_65;
  }

  v72 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v59 >> 16];
  v73 = v69 >> 8;
  v74 = 1;
  v75 = v54;
  do
  {
    v76 = v69;
    v77 = *v72++;
    v69 = v73 * v77;
    --v74;
    --v75;
    v78 = v61 - v73 * v77;
  }

  while (v61 < v73 * v77);
  v79 = v76 - v69;
  *(a2 + 8) = v76 - v69;
  *(a2 + 9) = v78;
  v80 = -v74;
  if (v76 - v69 >= 0x800001)
  {
    v69 = v76 - v69;
  }

  else
  {
    v81 = *(a2 + 2);
    v82 = *(a2 + 11);
    v83 = *(a2 + 7);
    v84 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v84;
      v69 = v79 << 8;
      *(a2 + 8) = v79 << 8;
      if (v83 < v81)
      {
        v85 = *a2;
        *(a2 + 7) = v83 + 1;
        v86 = *(v85 + v83++);
      }

      else
      {
        v86 = 0;
      }

      v78 = (((v78 & 0x7FFFFF) << 8) | ((v86 | (v82 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v86;
      *(a2 + 9) = v78;
      v84 += 8;
      v82 = v86;
      v17 = v79 > 0x8000;
      v79 <<= 8;
    }

    while (!v17);
  }

  v61 = v78;
  *(result + 8) = v80;
  *(result + 10) = v75;
  v87 = (v55 - v59) >> 16;
  if (v87 < 1)
  {
    goto LABEL_54;
  }

LABEL_57:
  v71 = v3 + 2 - v54;
  v88 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v87];
  v89 = v69 >> 8;
  v90 = 1;
  do
  {
    v91 = v69;
    v92 = *v88++;
    v69 = v89 * v92;
    --v90;
    --v71;
    v93 = v61 - v89 * v92;
  }

  while (v61 < v89 * v92);
  v94 = v91 - v69;
  *(a2 + 8) = v91 - v69;
  *(a2 + 9) = v93;
  v70 = -v90;
  if (v91 - v69 < 0x800001)
  {
    v95 = *(a2 + 2);
    v96 = *(a2 + 11);
    v97 = *(a2 + 7);
    v98 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v98;
      *(a2 + 8) = v94 << 8;
      if (v97 < v95)
      {
        v99 = *a2;
        *(a2 + 7) = v97 + 1;
        v100 = *(v99 + v97++);
      }

      else
      {
        v100 = 0;
      }

      v93 = (((v93 & 0x7FFFFF) << 8) | ((v100 | (v96 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v100;
      *(a2 + 9) = v93;
      v98 += 8;
      v96 = v100;
      v17 = v94 > 0x8000;
      v94 <<= 8;
    }

    while (!v17);
  }

LABEL_65:
  *(result + 12) = v70;
  *(result + 14) = v71;
  if (v19 < 1)
  {
    v106 = 0;
LABEL_85:
    LOWORD(v135) = 0;
    v136 = 0;
    *(result + 16) = 0;
    goto LABEL_86;
  }

  v101 = 0;
  v102 = &silk_shell_code_table2 + silk_shell_code_table_offsets[v19];
  v104 = *(a2 + 8);
  v103 = *(a2 + 9);
  v105 = v104 >> 8;
  v106 = v19 + 1;
  v107 = 1;
  do
  {
    v108 = *v102++;
    v109 = v104;
    v104 = v105 * v108;
    ++v107;
    v101 += 0x10000;
    --v106;
    v110 = v103 - v105 * v108;
  }

  while (v103 < v105 * v108);
  v111 = v109 - v104;
  *(a2 + 8) = v109 - v104;
  *(a2 + 9) = v110;
  if (v109 - v104 >= 0x800001)
  {
    v118 = v109 - v104;
  }

  else
  {
    v112 = *(a2 + 2);
    v113 = *(a2 + 11);
    v114 = *(a2 + 7);
    v115 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v115;
      v118 = v111 << 8;
      *(a2 + 8) = v111 << 8;
      if (v114 < v112)
      {
        v116 = *a2;
        *(a2 + 7) = v114 + 1;
        v117 = *(v116 + v114++);
      }

      else
      {
        v117 = 0;
      }

      v110 = (((v110 & 0x7FFFFF) << 8) | ((v117 | (v113 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v117;
      *(a2 + 9) = v110;
      v115 += 8;
      v113 = v117;
      v17 = v111 > 0x8000;
      v111 <<= 8;
    }

    while (!v17);
  }

  v119 = (v101 - 0x10000) >> 16;
  if (v119 <= 0)
  {
    goto LABEL_85;
  }

  v120 = 0;
  v121 = &silk_shell_code_table1[silk_shell_code_table_offsets[v119]];
  v122 = v118 >> 8;
  v123 = -65536;
  do
  {
    v124 = *v121++;
    v125 = v118;
    v118 = v122 * v124;
    ++v120;
    v101 -= 0x10000;
    v123 += 0x10000;
    v126 = v110 - v122 * v124;
  }

  while (v110 < v122 * v124);
  v127 = v125 - v118;
  *(a2 + 8) = v127;
  *(a2 + 9) = v126;
  if (v127 >= 0x800001)
  {
    v134 = v127;
  }

  else
  {
    v128 = *(a2 + 2);
    v129 = *(a2 + 11);
    v130 = *(a2 + 7);
    v131 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v131;
      v134 = v127 << 8;
      *(a2 + 8) = v127 << 8;
      if (v130 < v128)
      {
        v132 = *a2;
        *(a2 + 7) = v130 + 1;
        v133 = *(v132 + v130++);
      }

      else
      {
        v133 = 0;
      }

      v126 = (((v126 & 0x7FFFFF) << 8) | ((v133 | (v129 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v133;
      *(a2 + 9) = v126;
      v131 += 8;
      v129 = v133;
      v17 = v127 > 0x8000;
      v127 <<= 8;
    }

    while (!v17);
  }

  v171 = v123 >> 16;
  if (v171 < 1)
  {
    *(result + 16) = 0;
    *(result + 18) = 0;
    v200 = v101 >> 16;
    if (v200 >= 1)
    {
      goto LABEL_143;
    }

LABEL_130:
    LOWORD(v135) = 0;
    v136 = 0;
    goto LABEL_86;
  }

  v172 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v171];
  v173 = v134 >> 8;
  v174 = 1;
  v175 = v120;
  do
  {
    v176 = v134;
    v177 = *v172++;
    v134 = v173 * v177;
    --v174;
    --v175;
    v178 = v126 - v173 * v177;
  }

  while (v126 < v173 * v177);
  v179 = v176 - v134;
  *(a2 + 8) = v176 - v134;
  *(a2 + 9) = v178;
  v180 = -v174;
  if (v176 - v134 >= 0x800001)
  {
    v134 = v176 - v134;
  }

  else
  {
    v181 = *(a2 + 2);
    v182 = *(a2 + 11);
    v183 = *(a2 + 7);
    v184 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v184;
      v134 = v179 << 8;
      *(a2 + 8) = v179 << 8;
      if (v183 < v181)
      {
        v185 = *a2;
        *(a2 + 7) = v183 + 1;
        v186 = *(v185 + v183++);
      }

      else
      {
        v186 = 0;
      }

      v178 = (((v178 & 0x7FFFFF) << 8) | ((v186 | (v182 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v186;
      *(a2 + 9) = v178;
      v184 += 8;
      v182 = v186;
      v17 = v179 > 0x8000;
      v179 <<= 8;
    }

    while (!v17);
  }

  v126 = v178;
  *(result + 16) = v180;
  *(result + 18) = v175;
  v200 = v101 >> 16;
  if (v200 < 1)
  {
    goto LABEL_130;
  }

LABEL_143:
  v136 = v107 - v120;
  v217 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v200];
  v218 = v134 >> 8;
  v219 = 1;
  do
  {
    v220 = v134;
    v221 = *v217++;
    v134 = v218 * v221;
    --v219;
    --v136;
    v222 = v126 - v218 * v221;
  }

  while (v126 < v218 * v221);
  v223 = v220 - v134;
  *(a2 + 8) = v223;
  *(a2 + 9) = v222;
  v135 = -v219;
  if (v223 < 0x800001)
  {
    v224 = *(a2 + 2);
    v225 = *(a2 + 11);
    v226 = *(a2 + 7);
    v227 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v227;
      *(a2 + 8) = v223 << 8;
      if (v226 < v224)
      {
        v228 = *a2;
        *(a2 + 7) = v226 + 1;
        v229 = *(v228 + v226++);
      }

      else
      {
        v229 = 0;
      }

      v222 = (((v222 & 0x7FFFFF) << 8) | ((v229 | (v225 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v229;
      *(a2 + 9) = v222;
      v227 += 8;
      v225 = v229;
      v17 = v223 > 0x8000;
      v223 <<= 8;
    }

    while (!v17);
  }

LABEL_86:
  *(result + 20) = v135;
  *(result + 22) = v136;
  if (v106 <= 0)
  {
    LOWORD(v153) = 0;
    v154 = 0;
    *(result + 24) = 0;
LABEL_96:
    *(result + 28) = v153;
    *(result + 30) = v154;
    return result;
  }

  v137 = 0;
  v138 = v106 << 16;
  v139 = *(a2 + 8);
  v140 = *(a2 + 9);
  v141 = v139 >> 8;
  v142 = -65536;
  do
  {
    v143 = v139;
    v139 = v141 * silk_shell_code_table1[silk_shell_code_table_offsets[v106] + v137++];
    v142 += 0x10000;
    v144 = v140 - v139;
  }

  while (v140 < v139);
  v145 = v143 - v139;
  *(a2 + 8) = v143 - v139;
  *(a2 + 9) = v144;
  if (v143 - v139 >= 0x800001)
  {
    v152 = v143 - v139;
  }

  else
  {
    v146 = *(a2 + 2);
    v147 = *(a2 + 11);
    v148 = *(a2 + 7);
    v149 = *(a2 + 6) + 8;
    do
    {
      *(a2 + 6) = v149;
      v152 = v145 << 8;
      *(a2 + 8) = v145 << 8;
      if (v148 < v146)
      {
        v150 = *a2;
        *(a2 + 7) = v148 + 1;
        v151 = *(v150 + v148++);
      }

      else
      {
        v151 = 0;
      }

      v144 = (((v144 & 0x7FFFFF) << 8) | ((v151 | (v147 << 8)) >> 1)) ^ 0xFF;
      *(a2 + 11) = v151;
      *(a2 + 9) = v144;
      v149 += 8;
      v147 = v151;
      v17 = v145 > 0x8000;
      v145 <<= 8;
    }

    while (!v17);
  }

  if (v142 >> 16 < 1)
  {
    *(result + 24) = 0;
    *(result + 26) = 0;
    v170 = (v138 - v142) >> 16;
    if (v170 >= 1)
    {
LABEL_121:
      v154 = v106 + 2 - v137;
      v187 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v170];
      v188 = v152 >> 8;
      v189 = 1;
      do
      {
        v190 = v152;
        v191 = *v187++;
        v152 = v188 * v191;
        --v189;
        --v154;
        v192 = v144 - v188 * v191;
      }

      while (v144 < v188 * v191);
      v193 = v190 - v152;
      *(a2 + 8) = v190 - v152;
      *(a2 + 9) = v192;
      v153 = -v189;
      if (v190 - v152 < 0x800001)
      {
        v194 = *(a2 + 2);
        v195 = *(a2 + 11);
        v196 = *(a2 + 7);
        v197 = *(a2 + 6) + 8;
        do
        {
          *(a2 + 6) = v197;
          *(a2 + 8) = v193 << 8;
          if (v196 < v194)
          {
            v198 = *a2;
            *(a2 + 7) = v196 + 1;
            v199 = *(v198 + v196++);
          }

          else
          {
            v199 = 0;
          }

          v192 = (((v192 & 0x7FFFFF) << 8) | ((v199 | (v195 << 8)) >> 1)) ^ 0xFF;
          *(a2 + 11) = v199;
          *(a2 + 9) = v192;
          v197 += 8;
          v195 = v199;
          v17 = v193 > 0x8000;
          v193 <<= 8;
        }

        while (!v17);
      }

      goto LABEL_96;
    }
  }

  else
  {
    v155 = &silk_shell_code_table0 + silk_shell_code_table_offsets[v142 >> 16];
    v156 = v152 >> 8;
    v157 = 1;
    v158 = v137;
    do
    {
      v159 = v152;
      v160 = *v155++;
      v152 = v156 * v160;
      --v157;
      --v158;
      v161 = v144 - v156 * v160;
    }

    while (v144 < v156 * v160);
    v162 = v159 - v152;
    *(a2 + 8) = v159 - v152;
    *(a2 + 9) = v161;
    v163 = -v157;
    if (v159 - v152 >= 0x800001)
    {
      v152 = v159 - v152;
    }

    else
    {
      v164 = *(a2 + 2);
      v165 = *(a2 + 11);
      v166 = *(a2 + 7);
      v167 = *(a2 + 6) + 8;
      do
      {
        *(a2 + 6) = v167;
        v152 = v162 << 8;
        *(a2 + 8) = v162 << 8;
        if (v166 < v164)
        {
          v168 = *a2;
          *(a2 + 7) = v166 + 1;
          v169 = *(v168 + v166++);
        }

        else
        {
          v169 = 0;
        }

        v161 = (((v161 & 0x7FFFFF) << 8) | ((v169 | (v165 << 8)) >> 1)) ^ 0xFF;
        *(a2 + 11) = v169;
        *(a2 + 9) = v161;
        v167 += 8;
        v165 = v169;
        v17 = v162 > 0x8000;
        v162 <<= 8;
      }

      while (!v17);
    }

    v144 = v161;
    *(result + 24) = v163;
    *(result + 26) = v158;
    v170 = (v138 - v142) >> 16;
    if (v170 >= 1)
    {
      goto LABEL_121;
    }
  }

  *(result + 28) = 0;
  *(result + 30) = 0;
  return result;
}

_DWORD *silk_insertion_sort_increasing(_DWORD *result, int32x4_t *a2, int a3, int a4)
{
  if (a4 < 1)
  {
    if (a4 >= a3)
    {
      return result;
    }

    v6 = a4;
    v7 = &result[a4 - 1];
LABEL_13:
    v14 = a4 - 1;
    do
    {
      v15 = result[v6];
      if (v15 < *v7)
      {
        result[v14] = v15;
        a2->i32[v14] = v6;
      }

      ++v6;
    }

    while (a3 != v6);
    return result;
  }

  v4 = a4;
  if (a4 <= 7)
  {
    for (i = 0; i != a4; ++i)
    {
LABEL_9:
      a2->i32[i] = i;
    }

    goto LABEL_10;
  }

  i = a4 & 0x7FFFFFF8;
  v8 = xmmword_273B90830;
  v9 = a2 + 1;
  v10.i64[0] = 0x400000004;
  v10.i64[1] = 0x400000004;
  v11.i64[0] = 0x800000008;
  v11.i64[1] = 0x800000008;
  v12 = i;
  do
  {
    v9[-1] = v8;
    *v9 = vaddq_s32(v8, v10);
    v8 = vaddq_s32(v8, v11);
    v9 += 2;
    v12 -= 8;
  }

  while (v12);
  if (i != a4)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = a4 - 1;
  if (a4 == 1)
  {
    if (a3 < 2)
    {
      return result;
    }

    v7 = result;
    v6 = 1;
    goto LABEL_13;
  }

  for (j = 1; j != a4; a2->i32[v18] = j++)
  {
    v17 = result[j];
    v18 = j;
    while (1)
    {
      v19 = v18 - 1;
      v20 = result[(v18 - 1)];
      if (v17 >= v20)
      {
        break;
      }

      result[v18] = v20;
      a2->i32[v18--] = a2->i32[v19];
      if (v19 + 1 <= 1)
      {
        LODWORD(v18) = 0;
        break;
      }
    }

    result[v18] = v17;
  }

  if (a4 < a3)
  {
    v21 = a3;
    v22 = (a4 - 1);
    v23 = &a2->i32[v22];
    v24 = &result[v22];
    v25 = a4;
    do
    {
      v27 = result[v25];
      if (v27 < result[v4 - 1])
      {
        v28 = v24;
        v29 = v23;
        v30 = v13;
        while (1)
        {
          v31 = result[--v30];
          if (v27 >= v31)
          {
            break;
          }

          *v28-- = v31;
          *v29-- = a2->i32[v30];
          if (v30 <= 0)
          {
            v30 = -1;
            break;
          }
        }

        v26 = 4 * v30 + 4;
        *(result + v26) = v27;
        *(a2->i32 + v26) = v25;
      }

      ++v25;
    }

    while (v25 != v21);
  }

  return result;
}

float *silk_insertion_sort_decreasing_FLP(float *result, int32x4_t *a2, int a3, int a4)
{
  if (a4 < 1)
  {
    if (a4 >= a3)
    {
      return result;
    }

    v5 = a4;
    v6 = &result[a4 - 1];
LABEL_13:
    v12 = a4 - 1;
    v13 = *v6;
    do
    {
      v14 = result[v5];
      if (v14 > v13)
      {
        result[v12] = v14;
        a2->i32[v12] = v5;
        v13 = v14;
      }

      ++v5;
    }

    while (a3 != v5);
    return result;
  }

  if (a4 <= 7)
  {
    for (i = 0; i != a4; ++i)
    {
LABEL_9:
      a2->i32[i] = i;
    }

    goto LABEL_10;
  }

  i = a4 & 0x7FFFFFF8;
  v7 = xmmword_273B90830;
  v8 = a2 + 1;
  v9.i64[0] = 0x400000004;
  v9.i64[1] = 0x400000004;
  v10.i64[0] = 0x800000008;
  v10.i64[1] = 0x800000008;
  v11 = i;
  do
  {
    v8[-1] = v7;
    *v8 = vaddq_s32(v7, v9);
    v7 = vaddq_s32(v7, v10);
    v8 += 2;
    v11 -= 8;
  }

  while (v11);
  if (i != a4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a4 == 1)
  {
    if (a3 < 2)
    {
      return result;
    }

    v6 = result;
    v5 = 1;
    goto LABEL_13;
  }

  for (j = 1; j != a4; a2->i32[v17] = j++)
  {
    v16 = result[j];
    v17 = j;
    while (1)
    {
      v18 = v17 - 1;
      v19 = result[(v17 - 1)];
      if (v16 <= v19)
      {
        break;
      }

      result[v17] = v19;
      a2->i32[v17--] = a2->i32[v18];
      if (v18 + 1 <= 1)
      {
        LODWORD(v17) = 0;
        break;
      }
    }

    result[v17] = v16;
  }

  if (a4 < a3)
  {
    v20 = a3;
    v21 = 4 * (a4 - 2) + 4;
    v22 = (a2->i32 + v21);
    v23 = (result + v21);
    v24 = a4;
    do
    {
      v26 = result[v24];
      if (v26 > result[a4 - 1])
      {
        v27 = v23;
        v28 = v22;
        v29 = (a4 - 2);
        while (1)
        {
          v30 = *(v27 - 1);
          if (v26 <= v30)
          {
            break;
          }

          *v27-- = v30;
          *v28 = *(v28 - 1);
          --v28;
          if (v29-- <= 0)
          {
            v29 = -1;
            break;
          }
        }

        v25 = ((v29 << 32) + 0x100000000) >> 30;
        *(result + v25) = v26;
        *(a2->i32 + v25) = v24;
      }

      ++v24;
    }

    while (v24 != v20);
  }

  return result;
}

uint64_t *silk_stereo_decode_pred(uint64_t *result, _DWORD *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 9);
  v4 = v3 >> 8;
  v5 = -4;
  v6 = -1;
  v7 = &silk_stereo_pred_joint_iCDF;
  do
  {
    v8 = v3;
    v9 = *v7++;
    v3 = v4 * v9;
    v5 += 3;
    ++v6;
    v10 = v2 - v4 * v9;
  }

  while (v2 < v4 * v9);
  *(result + 9) = v10;
  v11 = v8 - v3;
  if (v8 - v3 > 0x800000)
  {
    v19 = v8 - v3;
  }

  else
  {
    v12 = *(result + 2);
    v13 = *(result + 11);
    v14 = *(result + 7);
    v15 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v15;
      v19 = v11 << 8;
      *(result + 8) = v11 << 8;
      if (v14 < v12)
      {
        v16 = *result;
        *(result + 7) = v14 + 1;
        v17 = *(v16 + v14++);
      }

      else
      {
        v17 = 0;
      }

      v10 = (((v10 & 0x7FFFFF) << 8) | ((v17 | (v13 << 8)) >> 1)) ^ 0xFF;
      *(result + 11) = v17;
      *(result + 9) = v10;
      v15 += 8;
      v13 = v17;
      v18 = v11 > 0x8000;
      v11 <<= 8;
    }

    while (!v18);
  }

  v20 = 0;
  v21 = v19 >> 8;
  v22 = &silk_uniform3_iCDF;
  do
  {
    v23 = v19;
    v24 = *v22++;
    v19 = v21 * v24;
    ++v20;
    v25 = v10 - v21 * v24;
  }

  while (v10 < v21 * v24);
  *(result + 9) = v25;
  v26 = v23 - v19;
  if (v23 - v19 >= 0x800001)
  {
    v33 = v23 - v19;
  }

  else
  {
    v27 = *(result + 2);
    v28 = *(result + 11);
    v29 = *(result + 7);
    v30 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v30;
      v33 = v26 << 8;
      *(result + 8) = v26 << 8;
      if (v29 < v27)
      {
        v31 = *result;
        *(result + 7) = v29 + 1;
        v32 = *(v31 + v29++);
      }

      else
      {
        v32 = 0;
      }

      v25 = (((v25 & 0x7FFFFF) << 8) | ((v32 | (v28 << 8)) >> 1)) ^ 0xFF;
      *(result + 11) = v32;
      *(result + 9) = v25;
      v30 += 8;
      v28 = v32;
      v18 = v26 > 0x8000;
      v26 <<= 8;
    }

    while (!v18);
  }

  v34 = 0;
  v35 = v33 >> 8;
  do
  {
    v36 = v33;
    v33 = v35 * silk_uniform5_iCDF[v34++];
    v37 = v25 - v33;
  }

  while (v25 < v33);
  *(result + 9) = v37;
  v38 = v36 - v33;
  v39 = v34 - 1;
  if (v36 - v33 >= 0x800001)
  {
    v46 = v36 - v33;
  }

  else
  {
    v40 = *(result + 2);
    v41 = *(result + 11);
    v42 = *(result + 7);
    v43 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v43;
      v46 = v38 << 8;
      *(result + 8) = v38 << 8;
      if (v42 < v40)
      {
        v44 = *result;
        *(result + 7) = v42 + 1;
        v45 = *(v44 + v42++);
      }

      else
      {
        v45 = 0;
      }

      v37 = (((v37 & 0x7FFFFF) << 8) | ((v45 | (v41 << 8)) >> 1)) ^ 0xFF;
      *(result + 11) = v45;
      *(result + 9) = v37;
      v43 += 8;
      v41 = v45;
      v18 = v38 > 0x8000;
      v38 <<= 8;
    }

    while (!v18);
  }

  v47 = v46 >> 8;
  v48 = &silk_uniform3_iCDF;
  do
  {
    v49 = v46;
    v50 = *v48++;
    v46 = v47 * v50;
    ++v5;
    v51 = v37 - v47 * v50;
  }

  while (v37 < v47 * v50);
  *(result + 9) = v51;
  v52 = v49 - v46;
  if (v49 - v46 >= 0x800001)
  {
    v59 = v49 - v46;
  }

  else
  {
    v53 = *(result + 2);
    v54 = *(result + 11);
    v55 = *(result + 7);
    v56 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v56;
      v59 = v52 << 8;
      *(result + 8) = v52 << 8;
      if (v55 < v53)
      {
        v57 = *result;
        *(result + 7) = v55 + 1;
        v58 = *(v57 + v55++);
      }

      else
      {
        v58 = 0;
      }

      v51 = (((v51 & 0x7FFFFF) << 8) | ((v58 | (v54 << 8)) >> 1)) ^ 0xFF;
      *(result + 11) = v58;
      *(result + 9) = v51;
      v56 += 8;
      v54 = v58;
      v18 = v52 > 0x8000;
      v52 <<= 8;
    }

    while (!v18);
  }

  v60 = 0;
  v61 = v59 >> 8;
  do
  {
    v62 = v59;
    v59 = v61 * silk_uniform5_iCDF[v60++];
    v63 = v51 - v59;
  }

  while (v51 < v59);
  v64 = v62 - v59;
  *(result + 8) = v62 - v59;
  *(result + 9) = v63;
  v65 = v60 - 1;
  if (v62 - v59 < 0x800001)
  {
    v66 = *(result + 2);
    v67 = *(result + 11);
    v68 = *(result + 7);
    v69 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v69;
      *(result + 8) = v64 << 8;
      if (v68 < v66)
      {
        v70 = *result;
        *(result + 7) = v68 + 1;
        v71 = *(v70 + v68++);
      }

      else
      {
        v71 = 0;
      }

      v63 = (((v63 & 0x7FFFFF) << 8) | ((v71 | (v67 << 8)) >> 1)) ^ 0xFF;
      *(result + 11) = v71;
      *(result + 9) = v63;
      v69 += 8;
      v67 = v71;
      v18 = v64 > 0x8000;
      v64 <<= 8;
    }

    while (!v18);
  }

  v72 = v6 / 5;
  v73 = 3 * v72 + v20;
  v74 = silk_stereo_pred_quant_Q13[v73 - 1];
  v75 = -15 * v72 + v5;
  v76 = silk_stereo_pred_quant_Q13[v75];
  v77 = v76 + ((6554 * (silk_stereo_pred_quant_Q13[v75 + 1] - v76)) >> 16) * ((2 * v65) | 1);
  *a2 = v74 + ((6554 * (silk_stereo_pred_quant_Q13[v73] - v74)) >> 16) * ((2 * v39) | 1) - v77;
  a2[1] = v77;
  return result;
}

uint64_t *silk_stereo_decode_mid_only(uint64_t *result, int *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 9);
  v4 = v3 >> 8;
  v5 = -1;
  v6 = &silk_stereo_only_code_mid_iCDF;
  do
  {
    v7 = v3;
    v8 = *v6++;
    v3 = v4 * v8;
    ++v5;
    v9 = v2 - v4 * v8;
  }

  while (v2 < v4 * v8);
  v10 = v7 - v3;
  *(result + 8) = v7 - v3;
  *(result + 9) = v9;
  if (v7 - v3 <= 0x800000)
  {
    v11 = *(result + 2);
    v12 = *(result + 11);
    v13 = *(result + 7);
    v14 = *(result + 6) + 8;
    do
    {
      *(result + 6) = v14;
      *(result + 8) = v10 << 8;
      if (v13 < v11)
      {
        v15 = *result;
        *(result + 7) = v13 + 1;
        v16 = *(v15 + v13++);
      }

      else
      {
        v16 = 0;
      }

      v9 = (((v9 & 0x7FFFFF) << 8) | ((v16 | (v12 << 8)) >> 1)) ^ 0xFF;
      *(result + 11) = v16;
      *(result + 9) = v9;
      v14 += 8;
      v12 = v16;
      v17 = v10 > 0x8000;
      v10 <<= 8;
    }

    while (!v17);
  }

  *a2 = v5;
  return result;
}

uint64_t silk_stereo_find_predictor(int *a1, int16x8_t *a2, int16x8_t *a3, int *a4, signed int a5, int a6)
{
  v6 = __clz(a5);
  v7 = 31 - v6;
  v8 = (a5 - 1);
  if (a5 >= 2)
  {
    v9 = 2;
    if (v8 > 2)
    {
      v9 = (a5 - 1);
    }

    if (a5 < 8)
    {
      v10 = 0;
      v11 = a5;
      goto LABEL_19;
    }

    v13 = ((v9 - 1) >> 1) + 1;
    if (a5 >= 0x20)
    {
      v14 = v13 & 0x7FFFFFFFFFFFFFF0;
      v15 = a5;
      v16 = 0uLL;
      i16 = a2[2].i16;
      v18 = vnegq_s32(vdupq_n_s32(v7));
      v19 = v13 & 0x7FFFFFFFFFFFFFF0;
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v22 = i16 - 16;
        v174 = vld2q_s16(v22);
        v178 = vld2q_s16(i16);
        v16 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v174.val[1], v174.val[1]), v174.val[0], v174.val[0]), v18), v16);
        v15 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v174.val[1].i8, *v174.val[1].i8), *v174.val[0].i8, *v174.val[0].i8), v18), v15);
        v21 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v178.val[1], v178.val[1]), v178.val[0], v178.val[0]), v18), v21);
        v20 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v178.val[1].i8, *v178.val[1].i8), *v178.val[0].i8, *v178.val[0].i8), v18), v20);
        i16 += 32;
        v19 -= 16;
      }

      while (v19);
      v11 = vaddvq_s32(vaddq_s32(vaddq_s32(v20, v15), vaddq_s32(v21, v16)));
      if (v13 == v14)
      {
        goto LABEL_20;
      }

      if ((v13 & 0xC) == 0)
      {
        v10 = 2 * v14;
        do
        {
LABEL_19:
          v11 += (a2->i16[v10] * a2->i16[v10] + a2->i16[v10 + 1] * a2->i16[v10 + 1]) >> v7;
          v10 += 2;
        }

        while (v10 < v8);
        goto LABEL_20;
      }
    }

    else
    {
      v14 = 0;
      v11 = a5;
    }

    v23 = v11;
    v10 = 2 * (v13 & 0x7FFFFFFFFFFFFFFCLL);
    v24 = &a2->i16[2 * v14];
    v25 = v14 - (v13 & 0x7FFFFFFFFFFFFFFCLL);
    v26 = vnegq_s32(vdupq_n_s32(v7));
    do
    {
      v170 = vld2_s16(v24);
      v24 += 8;
      v23 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v170.val[1], v170.val[1]), v170.val[0], v170.val[0]), v26), v23);
      v25 += 4;
    }

    while (v25);
    v11 = vaddvq_s32(v23);
    if (v13 != (v13 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_19;
    }

LABEL_20:
    v12 = a5 & 0x7FFFFFFE;
    if ((a5 & 0x7FFFFFFE) >= a5)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v12 = 0;
  v11 = a5;
  if (a5 > 0)
  {
LABEL_21:
    v27 = a2->i16[v12];
    v11 += (v27 * v27) >> v7;
  }

LABEL_22:
  v28 = __clz(v11);
  v29 = (34 - (v6 + v28)) & ~((34 - (v6 + v28)) >> 31);
  if (a5 >= 2)
  {
    v30 = 2;
    if (v8 > 2)
    {
      v30 = (a5 - 1);
    }

    if (v8 < 7)
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_40;
    }

    v34 = ((v30 - 1) >> 1) + 1;
    v35 = vdupq_n_s32(v29);
    if (v8 >= 0x1F)
    {
      v36 = v34 & 0x7FFFFFFFFFFFFFF0;
      v37 = a2[2].i16;
      v38 = 0uLL;
      v39 = vnegq_s32(v35);
      v40 = v34 & 0x7FFFFFFFFFFFFFF0;
      v41 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      do
      {
        v44 = v37 - 16;
        v175 = vld2q_s16(v44);
        v179 = vld2q_s16(v37);
        v41 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v175.val[1], v175.val[1]), v175.val[0], v175.val[0]), v39), v41);
        v38 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v175.val[1].i8, *v175.val[1].i8), *v175.val[0].i8, *v175.val[0].i8), v39), v38);
        v43 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v179.val[1], v179.val[1]), v179.val[0], v179.val[0]), v39), v43);
        v42 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v179.val[1].i8, *v179.val[1].i8), *v179.val[0].i8, *v179.val[0].i8), v39), v42);
        v37 += 32;
        v40 -= 16;
      }

      while (v40);
      v32 = vaddvq_s32(vaddq_s32(vaddq_s32(v42, v38), vaddq_s32(v43, v41)));
      if (v34 == v36)
      {
        goto LABEL_41;
      }

      if ((v34 & 0xC) == 0)
      {
        v31 = 2 * v36;
        do
        {
LABEL_40:
          v32 += (a2->i16[v31] * a2->i16[v31] + a2->i16[v31 + 1] * a2->i16[v31 + 1]) >> v29;
          v31 += 2;
        }

        while (v31 < v8);
        goto LABEL_41;
      }
    }

    else
    {
      v32 = 0;
      v36 = 0;
    }

    v31 = 2 * (v34 & 0x7FFFFFFFFFFFFFFCLL);
    v45 = v32;
    v46 = &a2->i16[2 * v36];
    v47 = v36 - (v34 & 0x7FFFFFFFFFFFFFFCLL);
    v48 = vnegq_s32(v35);
    do
    {
      v171 = vld2_s16(v46);
      v46 += 8;
      v45 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v171.val[1], v171.val[1]), v171.val[0], v171.val[0]), v48), v45);
      v47 += 4;
    }

    while (v47);
    v32 = vaddvq_s32(v45);
    if (v34 != (v34 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_40;
    }

LABEL_41:
    v33 = a5 & 0x7FFFFFFE;
    if ((a5 & 0x7FFFFFFE) >= a5)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v33 = 0;
  v32 = 0;
  if (a5 > 0)
  {
LABEL_42:
    v49 = a2->i16[v33];
    v32 += (v49 * v49) >> v29;
  }

LABEL_43:
  if (a5 >= 2)
  {
    v50 = 2;
    if (v8 > 2)
    {
      v50 = (a5 - 1);
    }

    if (v8 < 7)
    {
      v51 = 0;
      v52 = a5;
      goto LABEL_61;
    }

    v54 = ((v50 - 1) >> 1) + 1;
    v55 = vdupq_n_s32(v7);
    if (v8 >= 0x1F)
    {
      v56 = v54 & 0x7FFFFFFFFFFFFFF0;
      v57 = a5;
      v58 = 0uLL;
      v59 = a3[2].i16;
      v60 = vnegq_s32(v55);
      v61 = v54 & 0x7FFFFFFFFFFFFFF0;
      v62 = 0uLL;
      v63 = 0uLL;
      do
      {
        v64 = v59 - 16;
        v176 = vld2q_s16(v64);
        v180 = vld2q_s16(v59);
        v58 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v176.val[1], v176.val[1]), v176.val[0], v176.val[0]), v60), v58);
        v57 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v176.val[1].i8, *v176.val[1].i8), *v176.val[0].i8, *v176.val[0].i8), v60), v57);
        v63 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v180.val[1], v180.val[1]), v180.val[0], v180.val[0]), v60), v63);
        v62 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v180.val[1].i8, *v180.val[1].i8), *v180.val[0].i8, *v180.val[0].i8), v60), v62);
        v59 += 32;
        v61 -= 16;
      }

      while (v61);
      v52 = vaddvq_s32(vaddq_s32(vaddq_s32(v62, v57), vaddq_s32(v63, v58)));
      if (v54 == v56)
      {
        goto LABEL_62;
      }

      if ((v54 & 0xC) == 0)
      {
        v51 = 2 * v56;
        do
        {
LABEL_61:
          v52 += (a3->i16[v51] * a3->i16[v51] + a3->i16[v51 + 1] * a3->i16[v51 + 1]) >> v7;
          v51 += 2;
        }

        while (v51 < v8);
        goto LABEL_62;
      }
    }

    else
    {
      v56 = 0;
      v52 = a5;
    }

    v51 = 2 * (v54 & 0x7FFFFFFFFFFFFFFCLL);
    v65 = v52;
    v66 = &a3->i16[2 * v56];
    v67 = v56 - (v54 & 0x7FFFFFFFFFFFFFFCLL);
    v68 = vnegq_s32(v55);
    do
    {
      v172 = vld2_s16(v66);
      v66 += 8;
      v65 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v172.val[1], v172.val[1]), v172.val[0], v172.val[0]), v68), v65);
      v67 += 4;
    }

    while (v67);
    v52 = vaddvq_s32(v65);
    if (v54 != (v54 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_61;
    }

LABEL_62:
    v53 = a5 & 0x7FFFFFFE;
    if ((a5 & 0x7FFFFFFE) >= a5)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v53 = 0;
  v52 = a5;
  if (a5 > 0)
  {
LABEL_63:
    v69 = a3->i16[v53];
    v52 += (v69 * v69) >> v7;
  }

LABEL_64:
  v70 = __clz(v52);
  v71 = (34 - v6 - v70) & ~((34 - v6 - v70) >> 31);
  if (a5 >= 2)
  {
    v72 = 2;
    if (v8 > 2)
    {
      v72 = (a5 - 1);
    }

    if (v8 < 7)
    {
      v73 = 0;
      v74 = 0;
      goto LABEL_82;
    }

    v76 = ((v72 - 1) >> 1) + 1;
    v77 = vdupq_n_s32(v71);
    if (v8 >= 0x1F)
    {
      v78 = v76 & 0x7FFFFFFFFFFFFFF0;
      v79 = a3[2].i16;
      v80 = 0uLL;
      v81 = vnegq_s32(v77);
      v82 = v76 & 0x7FFFFFFFFFFFFFF0;
      v83 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      do
      {
        v86 = v79 - 16;
        v177 = vld2q_s16(v86);
        v181 = vld2q_s16(v79);
        v83 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v177.val[1], v177.val[1]), v177.val[0], v177.val[0]), v81), v83);
        v80 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v177.val[1].i8, *v177.val[1].i8), *v177.val[0].i8, *v177.val[0].i8), v81), v80);
        v85 = vaddq_s32(vshlq_u32(vmlal_high_s16(vmull_high_s16(v181.val[1], v181.val[1]), v181.val[0], v181.val[0]), v81), v85);
        v84 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(*v181.val[1].i8, *v181.val[1].i8), *v181.val[0].i8, *v181.val[0].i8), v81), v84);
        v79 += 32;
        v82 -= 16;
      }

      while (v82);
      v74 = vaddvq_s32(vaddq_s32(vaddq_s32(v84, v80), vaddq_s32(v85, v83)));
      if (v76 == v78)
      {
        goto LABEL_83;
      }

      if ((v76 & 0xC) == 0)
      {
        v73 = 2 * v78;
        do
        {
LABEL_82:
          v74 += (a3->i16[v73] * a3->i16[v73] + a3->i16[v73 + 1] * a3->i16[v73 + 1]) >> v71;
          v73 += 2;
        }

        while (v73 < v8);
        goto LABEL_83;
      }
    }

    else
    {
      v74 = 0;
      v78 = 0;
    }

    v73 = 2 * (v76 & 0x7FFFFFFFFFFFFFFCLL);
    v87 = v74;
    v88 = &a3->i16[2 * v78];
    v89 = v78 - (v76 & 0x7FFFFFFFFFFFFFFCLL);
    v90 = vnegq_s32(v77);
    do
    {
      v173 = vld2_s16(v88);
      v88 += 8;
      v87 = vaddq_s32(vshlq_u32(vmlal_s16(vmull_s16(v173.val[1], v173.val[1]), v173.val[0], v173.val[0]), v90), v87);
      v89 += 4;
    }

    while (v89);
    v74 = vaddvq_s32(v87);
    if (v76 != (v76 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_82;
    }

LABEL_83:
    v75 = a5 & 0x7FFFFFFE;
    if ((a5 & 0x7FFFFFFE) >= a5)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v75 = 0;
  v74 = 0;
  if (a5 > 0)
  {
LABEL_84:
    v91 = a3->i16[v75];
    v74 += (v91 * v91) >> v71;
  }

LABEL_85:
  if (v29 <= v71)
  {
    v92 = v71;
  }

  else
  {
    v92 = v29;
  }

  v93 = (v92 & 1) + v92;
  v94 = v93 - v71;
  v95 = v32 >> (v93 - v29);
  if (v95 <= 1)
  {
    v96 = 1;
  }

  else
  {
    v96 = v95;
  }

  if (a5 >= 1)
  {
    if (a5 < 4)
    {
      v97 = 0;
      v98 = 0;
LABEL_104:
      v119 = a5 - v97;
      v120 = v97;
      v121 = &a3->i16[v97];
      v122 = &a2->i16[v120];
      do
      {
        v124 = *v122++;
        v123 = v124;
        v125 = *v121++;
        v98 += (v125 * v123) >> v93;
        --v119;
      }

      while (v119);
      goto LABEL_106;
    }

    v99 = vdupq_n_s32(v93);
    if (a5 >= 0x10)
    {
      v97 = a5 & 0x7FFFFFF0;
      v100 = a2 + 1;
      v101 = a3 + 1;
      v102 = 0uLL;
      v103 = vnegq_s32(v99);
      v104 = v97;
      v105 = 0uLL;
      v106 = 0uLL;
      v107 = 0uLL;
      do
      {
        v108 = v100[-1];
        v109 = v101[-1];
        v105 = vaddq_s32(vshlq_s32(vmull_high_s16(v109, v108), v103), v105);
        v102 = vaddq_s32(vshlq_s32(vmull_s16(*v109.i8, *v108.i8), v103), v102);
        v107 = vaddq_s32(vshlq_s32(vmull_high_s16(*v101, *v100), v103), v107);
        v106 = vaddq_s32(vshlq_s32(vmull_s16(*v101->i8, *v100->i8), v103), v106);
        v100 += 2;
        v101 += 2;
        v104 -= 16;
      }

      while (v104);
      v98 = vaddvq_s32(vaddq_s32(vaddq_s32(v106, v102), vaddq_s32(v107, v105)));
      if (v97 == a5)
      {
        goto LABEL_106;
      }

      if ((a5 & 0xC) == 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v98 = 0;
      v97 = 0;
    }

    v110 = v97;
    v111 = v98;
    v97 = a5 & 0x7FFFFFFC;
    v112 = (a2 + 2 * v110);
    v113 = (a3 + 2 * v110);
    v114 = v110 - v97;
    v115 = vnegq_s32(v99);
    do
    {
      v116 = *v112++;
      v117 = v116;
      v118 = *v113++;
      v111 = vaddq_s32(vshlq_s32(vmull_s16(v118, v117), v115), v111);
      v114 += 4;
    }

    while (v114);
    v98 = vaddvq_s32(v111);
    if (v97 == a5)
    {
      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v98 = 0;
LABEL_106:
  v126 = v74 >> v94;
  if (v98 >= 0)
  {
    v127 = v98;
  }

  else
  {
    v127 = -v98;
  }

  v128 = __clz(v127);
  v129 = v98 << (v128 - 1);
  v130 = __clz(v96);
  v131 = v96 << (v130 - 1);
  v132 = (0x1FFFFFFF / (v131 >> 16) * v129) >> 16;
  v133 = ((0x1FFFFFFF / (v131 >> 16) * (v129 - (((v132 * v131) >> 29) & 0xFFFFFFF8))) >> 16) + v132;
  v134 = v128 - v130;
  if ((v134 + 16) >= 0x20)
  {
    v135 = 0;
  }

  else
  {
    v135 = v133 >> (v134 + 16);
  }

  v136 = 0x80000000 >> (-16 - v134);
  if (v136 <= v133)
  {
    v136 = v133;
  }

  if ((0x7FFFFFFFu >> (-16 - v134)) >= v133)
  {
    v137 = v136;
  }

  else
  {
    v137 = 0x7FFFFFFFu >> (-16 - v134);
  }

  v138 = v137 << (-16 - v134);
  if (v134 <= -17)
  {
    LODWORD(v139) = v138;
  }

  else
  {
    LODWORD(v139) = v135;
  }

  if (v139 <= -16384)
  {
    LODWORD(v139) = -16384;
  }

  if (v139 >= 0x4000)
  {
    v139 = 0x4000;
  }

  else
  {
    v139 = v139;
  }

  v140 = (v139 * v139) >> 16;
  if ((v140 & 0x80000000) == 0)
  {
    v141 = (v139 * v139) >> 16;
  }

  else
  {
    v141 = -v140;
  }

  if (a6 <= v141)
  {
    v142 = v141;
  }

  else
  {
    v142 = a6;
  }

  v143 = v93 >> 1;
  v144 = v96;
  if (v130 != 24)
  {
    if (v95 <= 127)
    {
      v144 = v96 << (v130 - 24);
    }

    else
    {
      v144 = (v96 << (v130 + 8)) | (v96 >> (24 - v130));
    }
  }

  if (v130)
  {
    v145 = 0x8000;
  }

  else
  {
    v145 = 46214;
  }

  v146 = *a4 + ((v142 * ((((v145 >> (v130 >> 1)) + ((213 * (v145 >> (v130 >> 1)) * (v144 & 0x7F)) >> 16)) << v143) - *a4)) >> 16);
  *a4 = v146;
  v147 = (((v140 * v96) >> 10) & 0xFFFFFFC0) + v126 - (((v139 * v98) >> 12) & 0xFFFFFFF0);
  if (v147 < 1)
  {
    v153 = 0;
  }

  else
  {
    v148 = __clz(v147);
    if (v148 != 24)
    {
      v149 = v147 > 0x7F;
      v150 = (v147 << (v148 + 8)) | (v147 >> (24 - v148));
      v147 <<= v148 - 24;
      if (v149)
      {
        LOBYTE(v147) = v150;
      }
    }

    v151 = v147 & 0x7F;
    if (v148)
    {
      v152 = 0x8000;
    }

    else
    {
      v152 = 46214;
    }

    v153 = (v152 >> (v148 >> 1)) + ((213 * (v152 >> (v148 >> 1)) * v151) >> 16);
  }

  v154 = a4[1] + ((v142 * ((v153 << v143) - a4[1])) >> 16);
  a4[1] = v154;
  if (v146 <= 1)
  {
    v155 = 1;
  }

  else
  {
    v155 = v146;
  }

  if (v154 >= 0)
  {
    v156 = v154;
  }

  else
  {
    v156 = -v154;
  }

  v157 = __clz(v156);
  v158 = v154 << (v157 - 1);
  v159 = __clz(v155);
  v160 = v155 << (v159 - 1);
  v161 = (0x1FFFFFFF / (v160 >> 16) * v158) >> 16;
  v162 = ((0x1FFFFFFF / (v160 >> 16) * (v158 - (((v161 * v160) >> 29) & 0xFFFFFFF8))) >> 16) + v161;
  v163 = v157 - v159;
  if (v157 - v159 + 15 >= 0x20)
  {
    v164 = 0;
  }

  else
  {
    v164 = v162 >> (v163 + 15);
  }

  v165 = 0x80000000 >> (-15 - v163);
  if (v165 <= v162)
  {
    v165 = v162;
  }

  if ((0x7FFFFFFFu >> (-15 - v163)) >= v162)
  {
    v166 = v165;
  }

  else
  {
    v166 = 0x7FFFFFFFu >> (-15 - v163);
  }

  v167 = v166 << (-15 - v163);
  if (v163 > -16)
  {
    v167 = v164;
  }

  v168 = v167 & ~(v167 >> 31);
  if (v168 >= 0x7FFF)
  {
    v168 = 0x7FFF;
  }

  *a1 = v168;
  return v139;
}

uint64_t silk_stereo_LR_to_MS(uint64_t a1, int16x8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, uint64_t a8, int a9, int a10, signed int a11)
{
  v319 = a6;
  v321[1] = *MEMORY[0x277D85DE8];
  v14 = (&a2[-1].u64[1] + 4);
  v15 = MEMORY[0x28223BE20](&v311, a2, a3);
  v20 = &v311 - v19;
  v21 = (&v311 - v19);
  if (a11 >= -1)
  {
    if (v18 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v18;
    }

    if (v18 >= 8 && ((v23 = 2 * v22 - 4, v24 = (a3 - 4), v14 < a3 + v23) ? (v25 = v24 >= &a2->i8[v23]) : (v25 = 1), v25))
    {
      v26 = v22 & 0x7FFFFFF8;
      v27.i64[0] = 0x100000001;
      v27.i64[1] = 0x100000001;
      v28.i64[0] = 0x7F0000007FLL;
      v28.i64[1] = 0x7F0000007FLL;
      v29 = v26;
      v30 = v21;
      v31 = v14;
      do
      {
        v32 = *v24++;
        v33 = vsubl_s16(*v31, *v32.i8);
        v34 = vsubl_high_s16(*v31->i8, v32);
        v35 = vhaddq_s16(v32, *v31->i8);
        *v31->i8 = vuzp1q_s16(vaddw_u16(vandq_s8(vaddl_s16(*v32.i8, *v31), v27), *v35.i8), vaddw_high_u16(vandq_s8(vaddl_high_s16(v32, *v31->i8), v27), v35));
        v31 += 2;
        *v30++ = vuzp1q_s16(vminq_s32(vsraq_n_s32(vandq_s8(v33, v27), v33, 1uLL), v28), vminq_s32(vsraq_n_s32(vandq_s8(v34, v27), v34, 1uLL), v28));
        v29 -= 8;
      }

      while (v29);
      if (v26 == v22)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
    }

    v36 = v22 - v26;
    v37 = v26;
    v38 = &v20[2 * v26];
    v39 = v37 * 2 - 4;
    v40 = &a2->i16[v37 - 2];
    v41 = (a3 + v39);
    do
    {
      v42 = *v40;
      v43 = *v41++;
      *v40++ = ((v43 + v42) & 1) + ((v43 + v42) >> 1);
      v44 = ((v42 - v43) & 1) + ((v42 - v43) >> 1);
      if (v44 >= 0x7FFF)
      {
        LOWORD(v44) = 0x7FFF;
      }

      *v38 = v44;
      v38 += 2;
      --v36;
    }

    while (v36);
  }

LABEL_20:
  v14->i32[0] = *(a1 + 4);
  v45 = 2 * a11;
  v46 = *(v14->i32 + v45);
  v21->i32[0] = *(a1 + 8);
  v47 = *(v21->i32 + v45);
  *(a1 + 4) = v46;
  *(a1 + 8) = v47;
  v48 = MEMORY[0x28223BE20](v15, v16, v17);
  v51 = MEMORY[0x28223BE20](v48, &v311 - ((v49 + 15) & 0x3FFFFFFF0), v50);
  v56 = (&v311 - v55);
  v317 = a2;
  v318 = v51;
  v315 = v57;
  v316 = a3;
  v311 = v14;
  v313 = v59;
  v314 = v58;
  if (a11 <= 0)
  {
    v62 = v54;
    v63 = MEMORY[0x28223BE20](v51, v52, v53);
    MEMORY[0x28223BE20](v63, v65, &v311 - ((v64 + 15) & 0x3FFFFFFF0));
    v70 = (&v311 - v69);
    goto LABEL_38;
  }

  v60 = v14->u16[0];
  if (a11 < 8)
  {
    v61 = 0;
    goto LABEL_28;
  }

  v61 = a11 & 0x7FFFFFF8;
  v71 = vdupq_n_s16(v60);
  v72 = v61;
  v73 = (&v311 - v55);
  v74 = v52;
  v75 = a2;
  do
  {
    v76 = v71;
    v71 = *(&v75[-1] + 14);
    v77 = vrhaddq_s16(v71, vhaddq_s16(*v75, vextq_s8(v76, v71, 0xEuLL)));
    *v74++ = v77;
    *v73++ = vsubq_s16(v71, v77);
    ++v75;
    v72 -= 8;
  }

  while (v72);
  if (v61 != a11)
  {
    LOWORD(v60) = v71.i16[7];
LABEL_28:
    v78 = v61;
    v79 = &v56->i16[v61];
    v80 = &v52->i16[v61];
    v81 = a11 - v61;
    v82 = &a2->i16[v78];
    do
    {
      v83 = *(v82 - 1);
      v60 = (((*v82 + v60) >> 1) + v83 + 1) >> 1;
      *v80++ = v60;
      *v79++ = v83 - v60;
      ++v82;
      LOWORD(v60) = v83;
      --v81;
    }

    while (v81);
  }

  v84 = MEMORY[0x28223BE20](v51, v52, v53);
  MEMORY[0x28223BE20](v84, v86, &v311 - ((v85 + 15) & 0x3FFFFFFF0));
  v70 = (&v311 - v89);
  v93 = *v90;
  v92 = (v90 + 2);
  v91 = v93;
  if (a11 < 8)
  {
    v62 = v88;
    v94 = 0;
    goto LABEL_36;
  }

  v95 = 0;
  v94 = a11 & 0x7FFFFFF8;
  v96 = vdupq_n_s16(v91);
  v97 = v94;
  do
  {
    v98 = v96;
    v96 = *(&v92[-1] + 14);
    v99 = vrhaddq_s16(v96, vhaddq_s16(*v92, vextq_s8(v98, v96, 0xEuLL)));
    v67[v95] = v99;
    v70[v95] = vsubq_s16(v96, v99);
    ++v92;
    ++v95;
    v97 -= 8;
  }

  while (v97);
  v62 = v88;
  if (v94 != a11)
  {
    LOWORD(v91) = v96.i16[7];
LABEL_36:
    v100 = (v87 + 2 * v94 + 4);
    do
    {
      v101 = *(v100 - 1);
      v91 = (((*v100 + v91) >> 1) + v101 + 1) >> 1;
      v67->i16[v94] = v91;
      v70->i16[v94] = v101 - v91;
      ++v100;
      LOWORD(v91) = v101;
      ++v94;
    }

    while (a11 != v94);
  }

LABEL_38:
  v320 = 0;
  v312 = 5 * a10;
  v102 = 655;
  if (10 * a10 == a11)
  {
    v102 = 328;
  }

  v103 = (v102 * (v68 * v68)) >> 16;
  if (10 * a10 == a11)
  {
    v104 = -1200;
  }

  else
  {
    v104 = -600;
  }

  predictor = silk_stereo_find_predictor(&v320 + 1, v66, v67, (a1 + 12), a11, v103);
  v106 = predictor;
  v321[0].i32[0] = predictor;
  v107 = silk_stereo_find_predictor(&v320, v56, v70, (a1 + 20), a11, v103);
  v321[0].i32[1] = v107;
  v108 = 3 * SWORD2(v320) + v320;
  if (v108 >= 0x10000)
  {
    v108 = 0x10000;
  }

  if (v104 + v62 <= 1)
  {
    v109 = 1;
  }

  else
  {
    v109 = v104 + v62;
  }

  v110 = 600 * a10 + 2000;
  v111 = __clz(v109);
  v112 = v109 << (v111 - 1);
  v113 = -851968 - 3 * v108;
  if (3 * v108 + 851968 >= 0)
  {
    v113 = 3 * v108 + 851968;
  }

  v114 = __clz(v113);
  v115 = (3 * v108 + 851968) << (v114 - 1);
  v116 = (0x1FFFFFFF / (v115 >> 16) * v112) >> 16;
  v117 = ((0x1FFFFFFF / (v115 >> 16) * (v112 - (((v116 * v115) >> 29) & 0xFFFFFFF8))) >> 16) + v116;
  v118 = v111 - v114;
  if ((v118 + 10) >= 0x20)
  {
    v119 = 0;
  }

  else
  {
    v119 = v117 >> (v118 + 10);
  }

  v120 = 0x80000000 >> (-10 - v118);
  if (v120 <= v117)
  {
    v120 = v117;
  }

  if ((0x7FFFFFFFu >> (-10 - v118)) >= v117)
  {
    v121 = v120;
  }

  else
  {
    v121 = 0x7FFFFFFFu >> (-10 - v118);
  }

  v122 = v121 << (-10 - v118);
  if (v118 <= -11)
  {
    v123 = v122;
  }

  else
  {
    v123 = v119;
  }

  v124 = v319;
  *v319 = v123;
  if (v123 >= v110)
  {
    v124[1] = v109 - v123;
    v142 = 0x4000;
  }

  else
  {
    *v124 = v110;
    v124[1] = v109 - v110;
    v125 = 2 * (v109 - v110) - v110;
    v126 = (v110 * (3 * v108 + 0x10000)) >> 16;
    if (v125 >= 0)
    {
      v127 = 2 * (v109 - v110) - v110;
    }

    else
    {
      v127 = v110 - 2 * (v109 - v110);
    }

    v128 = __clz(v127);
    v129 = v125 << (v128 - 1);
    if ((v126 & 0x80000000) == 0)
    {
      v130 = (v110 * (3 * v108 + 0x10000)) >> 16;
    }

    else
    {
      v130 = -v126;
    }

    v131 = __clz(v130);
    v132 = v126 << (v131 - 1);
    v133 = (0x1FFFFFFF / (v132 >> 16) * v129) >> 16;
    v134 = ((0x1FFFFFFF / (v132 >> 16) * (v129 - (((v133 * v132) >> 29) & 0xFFFFFFF8))) >> 16) + v133;
    v135 = v128 - v131;
    v136 = v128 - v131 + 13;
    v137 = v134 >> (v128 - v131 + 13);
    if (v136 >= 0x20)
    {
      v138 = 0;
    }

    else
    {
      v138 = v137;
    }

    v139 = 0x80000000 >> (-13 - v135);
    if (v139 <= v134)
    {
      v139 = v134;
    }

    if ((0x7FFFFFFFu >> (-13 - v135)) >= v134)
    {
      v140 = v139;
    }

    else
    {
      v140 = 0x7FFFFFFFu >> (-13 - v135);
    }

    v141 = v140 << (-13 - v135);
    if (v135 > -14)
    {
      v141 = v138;
    }

    v142 = v141 & ~(v141 >> 31);
    if (v142 >= 0x4000)
    {
      v142 = 0x4000;
    }
  }

  *(a1 + 28) += (v103 * (v142 - *(a1 + 28))) >> 16;
  v143 = v313;
  *v313 = 0;
  if (a9)
  {
    v321[0] = 0;
    result = silk_stereo_quant_pred(v321, v314);
    v146 = 0;
    v147 = v317;
    v148 = v319;
    if (*v143 == 1)
    {
      goto LABEL_92;
    }

LABEL_101:
    *(a1 + 32) = 0;
    v153 = v315;
    v152 = v316;
    if (*v143)
    {
      goto LABEL_106;
    }

LABEL_102:
    if (v148[1] > 0)
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

  v149 = 8 * v109;
  v150 = *(a1 + 28);
  if (!*(a1 + 30))
  {
    if (v149 < 13 * v110 || ((*(a1 + 28) * v108) >> 16) <= 818)
    {
      v321[0].i32[0] = (v106 * v150) >> 14;
      v321[0].i32[1] = (v107 * v150) >> 14;
      result = silk_stereo_quant_pred(v321, v314);
      v146 = 0;
      v321[0] = 0;
      v148 = v319;
      *v319 = v109;
      v148[1] = 0;
      *v143 = 1;
      v147 = v317;
      goto LABEL_92;
    }

LABEL_97:
    if (v150 < 15566)
    {
      v321[0].i32[0] = (v106 * v150) >> 14;
      v321[0].i32[1] = (v107 * v150) >> 14;
      result = silk_stereo_quant_pred(v321, v314);
      v146 = *(a1 + 28);
      v147 = v317;
      v148 = v319;
      if (*v143 == 1)
      {
        goto LABEL_92;
      }
    }

    else
    {
      result = silk_stereo_quant_pred(v321, v314);
      v146 = 0x4000;
      v147 = v317;
      v148 = v319;
      if (*v143 == 1)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_101;
  }

  if (v149 >= 11 * v110 && ((*(a1 + 28) * v108) >> 16) > 327)
  {
    goto LABEL_97;
  }

  v321[0].i32[0] = (v106 * v150) >> 14;
  v321[0].i32[1] = (v107 * v150) >> 14;
  result = silk_stereo_quant_pred(v321, v314);
  v146 = 0;
  v321[0] = 0;
  v147 = v317;
  v148 = v319;
  if (*v143 != 1)
  {
    goto LABEL_101;
  }

LABEL_92:
  v151 = *(a1 + 32) + a11 - 8 * a10;
  *(a1 + 32) = v151;
  if (v312 <= v151)
  {
    *(a1 + 32) = 10000;
    v153 = v315;
    v152 = v316;
    if (*v143)
    {
      goto LABEL_106;
    }

    goto LABEL_102;
  }

  *v143 = 0;
  v153 = v315;
  v152 = v316;
  if (v148[1] > 0)
  {
    goto LABEL_106;
  }

LABEL_103:
  v154 = v109 - 1;
  if (v109 - 1 <= 1)
  {
    v154 = 1;
  }

  *v148 = v154;
  v148[1] = 1;
LABEL_106:
  v155 = 8 * a10;
  v156 = v321[0];
  if (a10 >= 1)
  {
    v145.i16[0] = *a1;
    v145.i16[2] = *(a1 + 2);
    v157 = vhadd_s32(vshr_n_s32(vmul_s32(vdup_n_s32((0x10000 / v155)), vshr_n_s32(vshl_n_s32(vsub_s32(v321[0], v145), 0x10uLL), 0x10uLL)), 0xFuLL), 0x100000001);
    v158 = (v152 - 2);
    v159 = *(a1 + 30);
    v160 = (0x10000 / v155) * (v146 - v159);
    v161 = vneg_s32(vand_s8(v145, 0xFFFF0000FFFFLL));
    v162 = v159 << 10;
    v163 = (v160 >> 6) & 0xFFFFFFFFFFFFFC00;
    v164 = 2 * (8 * a10);
    if (v152 - 2 >= v147->u64 + v164 || v311 >= v152 + v164 - 2)
    {
      v170 = vdupq_n_s64(v162);
      v171 = vdupq_n_s64(v163);
      v172.i64[0] = 6 * v163;
      v172.i64[1] = 7 * v163;
      v173.i64[0] = 2 * v163;
      v173.i64[1] = 3 * v163;
      v174.i64[0] = 4 * v163;
      v174.i64[1] = 5 * v163;
      v175.i64[1] = v171.i64[1];
      v175.i64[0] = 0;
      v176 = vaddq_s64(v170, v174);
      v177 = vaddq_s64(v170, v173);
      v178 = vaddq_s64(v170, v172);
      v179 = vaddq_s64(v170, v175);
      v180 = vdupq_n_s64(8 * v163);
      v181 = vdupq_lane_s32(v161, 1);
      v182 = vdupq_n_s32(-v157.i32[1]);
      v183 = vmlaq_s32(v181, v182, xmmword_273B92360);
      v184 = vmlaq_s32(v181, v182, xmmword_273B90830);
      v185 = vdupq_n_s32(-8 * v157.i32[1]);
      v186 = vdupq_lane_s32(v161, 0);
      v187 = vdupq_n_s32(-v157.i32[0]);
      v188 = vmlaq_s32(v186, v187, xmmword_273B92360);
      v189 = vmlaq_s32(v186, v187, xmmword_273B90830);
      v190 = vdupq_n_s32(-8 * v157.i32[0]);
      v191 = vdupq_lane_s32(v157, 0);
      v192 = vdupq_lane_s32(v157, 1);
      v193 = (v153 + 2);
      v194.i64[0] = 0x100000001;
      v194.i64[1] = 0x100000001;
      v195 = (8 * a10);
      v196 = v147;
      do
      {
        v197 = vsubq_s32(v189, v191);
        v198 = vsubq_s32(v188, v191);
        v199 = vaddq_s64(v176, v171);
        v200 = vaddq_s64(v178, v171);
        v201 = vaddq_s64(v179, v171);
        v202 = vaddq_s64(v177, v171);
        v203 = *(v196 - 4);
        v204 = vaddl_high_s16(*v196, v203);
        v205 = vaddl_s16(*v196->i8, *v203.i8);
        v206 = *(v196 - 2);
        v207 = *v193++;
        v208 = vmovl_high_s16(v207);
        v209 = vaddq_s32(vshll_high_n_s16(v206, 0xAuLL), vshlq_n_s32(v204, 9uLL));
        v210 = vmovl_s16(*v207.i8);
        v211 = vaddq_s32(vshll_n_s16(*v206.i8, 0xAuLL), vshlq_n_s32(v205, 9uLL));
        v212 = v202.i64[0] * v210.i32[2];
        v213 = v201.i64[0] * v210.i32[0];
        v214 = v202.i64[1] * v210.i32[3];
        v215 = v199.i64[1];
        v216 = v201.i64[1] * v210.i32[1];
        v217 = v200.i64[0] * v208.i32[2];
        v218 = v199.i64[0] * v208.i32[0];
        v219.i64[0] = v211.i32[2];
        v219.i64[1] = v211.i32[3];
        v220 = v219;
        v221 = v200.i64[1] * v208.i32[3];
        v219.i64[0] = v211.i32[0];
        v219.i64[1] = v211.i32[1];
        v222 = v219;
        v219.i64[0] = v209.i32[2];
        v219.i64[1] = v209.i32[3];
        v223 = v219;
        v219.i64[0] = v209.i32[0];
        v219.i64[1] = v209.i32[1];
        v224 = v219;
        v219.i64[0] = v198.u32[0];
        v219.i64[1] = v198.u32[1];
        v225 = v219;
        v219.i64[0] = v198.u32[2];
        v219.i64[1] = v198.u32[3];
        v226 = v219;
        v227 = v215 * v208.i32[1];
        v219.i64[0] = v197.u32[0];
        v219.i64[1] = v197.u32[1];
        v228 = v219;
        v219.i64[0] = v197.u32[2];
        v219.i64[1] = v197.u32[3];
        v229 = vshrq_n_s64(vshlq_n_s64(v219, 0x30uLL), 0x30uLL);
        v197.i64[0] = v212;
        v230 = vshrq_n_s64(vshlq_n_s64(v228, 0x30uLL), 0x30uLL);
        v231 = vshrq_n_s64(vshlq_n_s64(v226, 0x30uLL), 0x30uLL);
        v232 = vshrq_n_s64(vshlq_n_s64(v225, 0x30uLL), 0x30uLL);
        v226.i64[0] = v213;
        v233 = v224.i64[0];
        v224.i64[0] = v217;
        v234 = v232.i64[0];
        v232.i64[0] = v218;
        v235 = v234 * v233;
        result = v232.i64[1] * v224.i64[1];
        v236 = v231.i64[0] * v223.i64[0];
        v237 = v231.i64[1] * v223.i64[1];
        v238 = v230.i64[0] * v222.i64[0];
        v239 = v220.i64[1];
        v240 = v230.i64[1] * v222.i64[1];
        v241 = v229.i64[0] * v220.i64[0];
        v242 = vsubq_s32(v184, v192);
        v243 = vsubq_s32(v183, v192);
        v244 = v229.i64[1] * v239;
        v245 = vshll_high_n_s16(v206, 0xBuLL);
        v246 = vshll_n_s16(*v206.i8, 0xBuLL);
        v219.i64[0] = v246.i32[0];
        v219.i64[1] = v246.i32[1];
        v247 = v219;
        v219.i64[0] = v245.i32[2];
        v219.i64[1] = v245.i32[3];
        v248 = v219;
        v197.i64[1] = v214;
        v219.i64[0] = v245.i32[0];
        v219.i64[1] = v245.i32[1];
        v249 = v219;
        v219.i64[0] = v243.u32[0];
        v219.i64[1] = v243.u32[1];
        v250 = v219;
        v219.i64[0] = v243.u32[2];
        v219.i64[1] = v243.u32[3];
        v251 = v219;
        v219.i64[0] = v242.u32[0];
        v219.i64[1] = v242.u32[1];
        v226.i64[1] = v216;
        v252 = vshrq_n_s64(vshlq_n_s64(v219, 0x30uLL), 0x30uLL);
        v253 = vshrq_n_s64(vshlq_n_s64(v251, 0x30uLL), 0x30uLL);
        v224.i64[1] = v221;
        v254 = vshrq_n_s64(vshlq_n_s64(v250, 0x30uLL), 0x30uLL);
        v232.i64[1] = v227;
        v255 = v249.i64[0];
        v249.i64[0] = v235;
        v256 = v254.i64[0] * v255;
        v254.i64[0] = v236;
        v208.i64[0] = v256;
        v257 = v253.i64[0] * v248.i64[0];
        v253.i64[0] = v238;
        v208.i64[1] = v254.i64[1] * v249.i64[1];
        v248.i64[0] = v257;
        v248.i64[1] *= v253.i64[1];
        v247.i64[0] *= v252.i64[0];
        v219.i64[0] = v246.i32[2];
        v219.i64[1] = v246.i32[3];
        v258 = v219;
        v219.i64[0] = v242.u32[2];
        v219.i64[1] = v242.u32[3];
        v249.i64[1] = result;
        v259 = vshrq_n_s64(vshlq_n_s64(v219, 0x30uLL), 0x30uLL);
        v247.i64[1] *= v252.i64[1];
        v254.i64[1] = v237;
        v253.i64[1] = v240;
        v252.i64[0] = v241;
        v252.i64[1] = v244;
        v259.i64[0] *= v258.i64[0];
        v259.i64[1] *= v258.i64[1];
        v179 = vaddq_s64(v179, v180);
        v177 = vaddq_s64(v177, v180);
        *v158++ = vqmovn_high_s32(vqmovn_s32(vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v247, 0x10uLL), v226, 0x10uLL), v253, 0x10uLL), vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v259, 0x10uLL), v197, 0x10uLL), v252, 0x10uLL)), 7uLL), v194)), vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v208, 0x10uLL), v232, 0x10uLL), v249, 0x10uLL), vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v248, 0x10uLL), v224, 0x10uLL), v254, 0x10uLL)), 7uLL), v194));
        v176 = vaddq_s64(v176, v180);
        v178 = vaddq_s64(v178, v180);
        v184 = vaddq_s32(v184, v185);
        v183 = vaddq_s32(v183, v185);
        v189 = vaddq_s32(v189, v190);
        v188 = vaddq_s32(v188, v190);
        ++v196;
        v195 -= 8;
      }

      while (v195);
    }

    else
    {
      v165 = v163 + v162;
      v166 = (v153 + 2);
      v167 = v147;
      v168 = (8 * a10);
      do
      {
        v161 = vsub_s32(v161, v157);
        v169 = *v166++;
        LODWORD(result) = (((((v167[-1].i16[7] * v161.i16[2]) >> 5) + ((v165 * v169) >> 16) + ((v161.i16[0] * ((v167[-1].i16[7] << 10) + ((v167->i16[0] + v167[-1].i16[6]) << 9))) >> 16)) >> 7) + 1) >> 1;
        if (result <= -32768)
        {
          LODWORD(result) = -32768;
        }

        if (result >= 0x7FFF)
        {
          result = 0x7FFFLL;
        }

        else
        {
          result = result;
        }

        v158->i16[0] = result;
        v158 = (v158 + 2);
        v165 += v163;
        v167 = (v167 + 2);
        --v168;
      }

      while (v168);
    }
  }

  if (v155 < a11)
  {
    v260 = v146 << 10;
    v261 = v155;
    v262 = a11 - v155;
    if (v262 < 8)
    {
      goto LABEL_126;
    }

    v263 = 2 * v155;
    v264 = (v147 + v263);
    if (v152 + v263 - 2 < v147 + 2 * a11 && &v264[-1].u64[1] + 4 < v152 + 2 * a11 - 2)
    {
      goto LABEL_126;
    }

    v265 = vdupq_n_s64(-v156.i16[0]);
    v319 = (v261 + v262 - (a11 & 7));
    v266 = vdupq_n_s64(-v156.i16[2]);
    v267 = v261 + (a11 & 7) - a11;
    v268 = v152;
    v269 = (v263 + v152 - 2);
    v270 = v153;
    result = v263 + v153 + 2;
    v271 = v265.i64[1];
    v272 = v265.i64[0];
    v273 = v265.i64[0];
    v274 = v266.i64[1];
    v275 = v266.i64[0];
    v276 = v266.i64[0];
    v277.i64[0] = 0x100000001;
    v277.i64[1] = 0x100000001;
    do
    {
      v278 = *(v264 - 4);
      v279 = *(v264 - 2);
      v280 = *result;
      result += 16;
      v281 = vaddq_s32(vshll_high_n_s16(v279, 0xAuLL), vshlq_n_s32(vaddl_high_s16(*v264, v278), 9uLL));
      v282 = vmovl_high_s16(v280);
      v283 = v282.i32[0];
      v284 = v282.i32[1];
      v285 = vmovl_s16(*v280.i8);
      v286 = vaddq_s32(vshll_n_s16(*v279.i8, 0xAuLL), vshlq_n_s32(vaddl_s16(*v264->i8, *v278.i8), 9uLL));
      v278.i64[0] = v260 * v285.i32[2];
      v287.i64[0] = v260 * v285.i32[0];
      v282.i64[0] = v260 * v282.i32[2];
      v288.i64[0] = v260 * v283;
      v278.i64[1] = v260 * v285.i32[3];
      v289 = v281.i32[1];
      v287.i64[1] = v260 * v285.i32[1];
      v290 = v281.i32[3];
      v282.i64[1] = v260 * v282.i32[3];
      v291 = v272 * v281.i32[2];
      v292 = v286.i32[1];
      v288.i64[1] = v260 * v284;
      v293 = v273 * v286.i32[0];
      v294 = v286.i32[3];
      v285.i64[0] = v273 * v281.i32[0];
      v295 = v273 * v286.i32[2];
      v296 = vshll_high_n_s16(v279, 0xBuLL);
      v297 = vshll_n_s16(*v279.i8, 0xBuLL);
      v298.i64[0] = v297.i32[0];
      v298.i64[1] = v297.i32[1];
      v299 = v298;
      v298.i64[0] = v296.i32[2];
      v298.i64[1] = v296.i32[3];
      v300 = v298;
      v301.i64[0] = v291;
      v298.i64[1] = v296.i32[1];
      v302 = v296.i32[0];
      v296.i64[0] = v293;
      v303.i64[0] = v276 * v302;
      v304 = v300.i64[0];
      v300.i64[0] = v295;
      v305.i64[0] = v275 * v304;
      v303.i64[1] = v274 * v298.i64[1];
      v299.i64[0] *= v276;
      v305.i64[1] = v274 * v300.i64[1];
      v285.i64[1] = v271 * v289;
      v299.i64[1] *= v274;
      v296.i64[1] = v271 * v292;
      v297.i64[0] = v276 * v297.i32[2];
      v300.i64[1] = v271 * v294;
      v297.i64[1] = v274 * v297.i32[3];
      v301.i64[1] = v271 * v290;
      *v269++ = vqmovn_high_s32(vqmovn_s32(vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v299, 0x10uLL), v287, 0x10uLL), v296, 0x10uLL), vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v297, 0x10uLL), v278, 0x10uLL), v300, 0x10uLL)), 7uLL), v277)), vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v303, 0x10uLL), v288, 0x10uLL), v285, 0x10uLL), vsraq_n_u64(vsraq_n_u64(vshrq_n_u64(v305, 0x10uLL), v282, 0x10uLL), v301, 0x10uLL)), 7uLL), v277));
      ++v264;
      v267 += 8;
    }

    while (v267);
    v261 = v319;
    v152 = v268;
    v153 = v270;
    if ((a11 & 7) != 0)
    {
LABEL_126:
      v306 = (2 * v261 + v152 - 2);
      v307 = a11 - v261;
      v308 = (2 * v261 + v153 + 2);
      v309 = &v147->i16[v261];
      do
      {
        v310 = *v308++;
        LODWORD(result) = (((((*(v309 - 1) * -v156.i16[2]) >> 5) + ((v310 * v260) >> 16) + ((-v156.i16[0] * ((*(v309 - 1) << 10) + ((*v309 + *(v309 - 2)) << 9))) >> 16)) >> 7) + 1) >> 1;
        if (result <= -32768)
        {
          LODWORD(result) = -32768;
        }

        if (result >= 0x7FFF)
        {
          result = 0x7FFFLL;
        }

        else
        {
          result = result;
        }

        *v306++ = result;
        ++v309;
        --v307;
      }

      while (v307);
    }
  }

  *a1 = v156.i16[0];
  *(a1 + 2) = v156.i16[2];
  *(a1 + 30) = v146;
  return result;
}

uint64_t silk_stereo_MS_to_LR(uint64_t result, _DWORD *a2, _DWORD *a3, int32x2_t *a4, int a5, int a6, double a7, int32x2_t a8)
{
  *a2 = *(result + 4);
  *a3 = *(result + 8);
  v8 = 2 * a6;
  *(result + 4) = *(a2 + v8);
  *(result + 8) = *(a3 + v8);
  v9 = 8 * a5;
  v10 = *a4;
  if (a5 >= 1)
  {
    a8.i16[0] = *result;
    a8.i16[2] = *(result + 2);
    v11 = vhadd_s32(vshr_n_s32(vmul_s32(vdup_n_s32((0x10000 / v9)), vshr_n_s32(vshl_n_s32(vsub_s32(v10, a8), 0x10uLL), 0x10uLL)), 0xFuLL), 0x100000001);
    v12 = vand_s8(a8, 0xFFFF0000FFFFLL);
    v13 = (a3 + 2);
    v14 = 2 * (8 * a5);
    if (a3 + 2 >= a2 + v14 + 4 || &v13->i8[v14] <= a2)
    {
      v20 = vdupq_lane_s32(v12, 1);
      v21 = vdupq_lane_s32(v11, 1);
      v22 = vmlaq_lane_s32(v20, xmmword_273B92360, v11, 1);
      v23 = vmlaq_lane_s32(v20, xmmword_273B90830, v11, 1);
      v24 = vdupq_n_s32(8 * v11.i32[1]);
      v25 = vdupq_lane_s32(v12, 0);
      v26 = vdupq_lane_s32(v11, 0);
      v27 = vmlaq_lane_s32(v25, xmmword_273B92360, v11, 0);
      v28 = vmlaq_lane_s32(v25, xmmword_273B90830, v11, 0);
      v29 = vdupq_n_s32(8 * v11.i32[0]);
      v30 = a2 + 2;
      v31.i64[0] = 0x100000001;
      v31.i64[1] = 0x100000001;
      v32 = (8 * a5);
      do
      {
        v33 = vaddq_s32(v27, v26);
        v34 = vaddq_s32(v28, v26);
        v35 = *(v30 - 2);
        v36 = *(v30 + 2);
        v37 = vaddq_s32(vshll_high_n_s16(*v30, 0xAuLL), vshlq_n_s32(vaddl_high_s16(v36, v35), 9uLL));
        v38 = vaddq_s32(vshll_n_s16(*v30, 0xAuLL), vshlq_n_s32(vaddl_s16(*v36.i8, *v35.i8), 9uLL));
        v39.i64[0] = v38.i32[2];
        v39.i64[1] = v38.i32[3];
        v40 = v39;
        v39.i64[0] = v38.i32[0];
        v39.i64[1] = v38.i32[1];
        v41 = v39;
        v39.i64[0] = v34.u32[2];
        v39.i64[1] = v34.u32[3];
        v42 = v39;
        v39.i64[0] = v34.u32[0];
        v39.i64[1] = v34.u32[1];
        v43 = v39;
        v39.i64[0] = v33.u32[2];
        v39.i64[1] = v33.u32[3];
        v44 = v39;
        v39.i64[0] = v33.u32[0];
        v39.i64[1] = v33.u32[1];
        v45 = v37.i32[2];
        v46 = vshrq_n_s64(vshlq_n_s64(v42, 0x30uLL), 0x20uLL);
        v47 = vshrq_n_s64(vshlq_n_s64(v43, 0x30uLL), 0x20uLL);
        v48 = vshrq_n_s64(vshlq_n_s64(v39, 0x30uLL), 0x20uLL);
        v49 = vshrq_n_s64(vshlq_n_s64(v44, 0x30uLL), 0x20uLL);
        v50 = v47.i64[1];
        v51 = v48.i64[0] * v37.i32[0];
        v52 = v48.i64[1] * v37.i32[1];
        v53 = v47.i64[0] * v41.i64[0];
        v54 = v40.i64[1];
        v55 = v49.i64[1] * v37.i32[3];
        v56 = v46.i64[0] * v40.i64[0];
        v57 = vaddq_s32(v22, v21);
        v58 = vshll_high_n_s16(*v30, 0xBuLL);
        v59 = v50 * v41.i64[1];
        v39.i64[0] = v57.u32[0];
        v39.i64[1] = v57.u32[1];
        v60 = vshrq_n_s64(vshlq_n_s64(v39, 0x30uLL), 0x30uLL);
        v61 = v46.i64[1] * v54;
        v62 = v60.i64[1] * v58.i32[1];
        v41.i64[0] = v51;
        v60.i64[0] *= v58.i32[0];
        v63 = vaddq_s32(v23, v21);
        v49.i64[0] *= v45;
        v64 = vmovl_s16(*v13);
        v39.i64[0] = v64.u32[2];
        v39.i64[1] = v64.u32[3];
        v65 = v39;
        v39.i64[0] = v64.u32[0];
        v39.i64[1] = v64.u32[1];
        v66 = v39;
        v67 = vmovl_high_s16(*v13->i8);
        v39.i64[0] = v67.u32[2];
        v39.i64[1] = v67.u32[3];
        v68 = v39;
        v69.i64[0] = v53;
        v39.i64[0] = v67.u32[0];
        v39.i64[1] = v67.u32[1];
        v70 = vshlq_n_s64(v39, 0x28uLL);
        v71.i64[0] = v56;
        v72 = vshll_n_s16(*v30, 0xBuLL);
        v39.i64[0] = v72.i32[2];
        v39.i64[1] = v72.i32[3];
        v73 = v39;
        v39.i64[0] = v72.i32[0];
        v39.i64[1] = v72.i32[1];
        v74 = v39;
        v39.i64[0] = v58.i32[2];
        v39.i64[1] = v58.i32[3];
        v75 = v39;
        v41.i64[1] = v52;
        v39.i64[0] = v57.u32[2];
        v39.i64[1] = v57.u32[3];
        v76 = v39;
        v39.i64[0] = v63.u32[0];
        v39.i64[1] = v63.u32[1];
        v77 = v39;
        v39.i64[0] = v63.u32[2];
        v39.i64[1] = v63.u32[3];
        v49.i64[1] = v55;
        v78 = vshrq_n_s64(vshlq_n_s64(v76, 0x30uLL), 0x30uLL);
        v60.i64[1] = v62;
        v69.i64[1] = v59;
        v71.i64[1] = v61;
        v79 = vshrq_n_s64(vshlq_n_s64(v77, 0x30uLL), 0x30uLL);
        v75.i64[0] *= v78.i64[0];
        v75.i64[1] *= v78.i64[1];
        v74.i64[0] *= v79.i64[0];
        v74.i64[1] *= v79.i64[1];
        v80 = vshrq_n_s64(vshlq_n_s64(v39, 0x30uLL), 0x30uLL);
        v80.i64[0] *= v73.i64[0];
        v80.i64[1] *= v73.i64[1];
        *v13->i8 = vqmovn_high_s32(vqmovn_s32(vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(vshrq_n_u64(vaddq_s64(v69, vshlq_n_s64(v66, 0x28uLL)), 0x20uLL), v74, 0x10uLL), vsraq_n_u64(vshrq_n_u64(vaddq_s64(v71, vshlq_n_s64(v65, 0x28uLL)), 0x20uLL), v80, 0x10uLL)), 7uLL), v31)), vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(vshrq_n_u64(vaddq_s64(v41, v70), 0x20uLL), v60, 0x10uLL), vsraq_n_u64(vshrq_n_u64(vaddq_s64(v49, vshlq_n_s64(v68, 0x28uLL)), 0x20uLL), v75, 0x10uLL)), 7uLL), v31));
        v13 += 2;
        v23 = vaddq_s32(v23, v24);
        v22 = vaddq_s32(v22, v24);
        v28 = vaddq_s32(v28, v29);
        v27 = vaddq_s32(v27, v29);
        v30 += 16;
        v32 -= 8;
      }

      while (v32);
    }

    else
    {
      v15 = a2 + 1;
      v16 = (8 * a5);
      v17 = a2 + 1;
      do
      {
        v12 = vadd_s32(v12, v11);
        v18 = v17[1];
        ++v17;
        v19 = ((((((v12.i32[0] << 16) * ((*v15 << 10) + ((v18 + *(v15 - 1)) << 9)) + (v13->i16[0] << 40)) >> 32) + ((*v15 * v12.i16[2]) >> 5)) >> 7) + 1) >> 1;
        if (v19 <= -32768)
        {
          v19 = -32768;
        }

        if (v19 >= 0x7FFF)
        {
          LOWORD(v19) = 0x7FFF;
        }

        v13->i16[0] = v19;
        v13 = (v13 + 2);
        v15 = v17;
        --v16;
      }

      while (v16);
    }
  }

  if (v9 < a6)
  {
    v81 = v10.i32[0] << 16;
    v82 = v9;
    v83 = a6 - v9;
    if (v83 <= 7)
    {
      goto LABEL_20;
    }

    v84 = 2 * v9;
    if (a3 + v84 + 2 < a2 + 2 * a6 + 4 && a2 + v84 < a3 + 2 * a6 + 2)
    {
      goto LABEL_20;
    }

    v85 = v83 - (a6 & 7) + v9;
    v86 = vdupq_n_s64(v81);
    v87 = vdupq_n_s64(v10.i16[2]);
    v88 = v9 + (a6 & 7) - a6;
    v89 = v84 + 2;
    v90 = (a2 + v84 + 2);
    v91 = (a3 + v89);
    v92 = v86.i64[1];
    v93 = v86.i64[0];
    v94 = v86.i64[0];
    v95 = v87.i64[1];
    v96 = v87.i64[0];
    v97 = v87.i64[0];
    v98.i64[0] = 0x100000001;
    v98.i64[1] = 0x100000001;
    do
    {
      v99 = *(v90 - 2);
      v100 = *(v90 + 2);
      v101 = *v90++;
      v102 = vaddq_s32(vshll_high_n_s16(v101, 0xAuLL), vshlq_n_s32(vaddl_high_s16(v100, v99), 9uLL));
      v103 = vaddq_s32(vshll_n_s16(*v101.i8, 0xAuLL), vshlq_n_s32(vaddl_s16(*v100.i8, *v99.i8), 9uLL));
      v104 = vmovl_s16(*v91);
      v105.i64[0] = v104.u32[2];
      v105.i64[1] = v104.u32[3];
      v106 = v105;
      v105.i64[0] = v104.u32[0];
      v105.i64[1] = v104.u32[1];
      v107 = v105;
      v108 = vmovl_high_s16(*v91->i8);
      v105.i64[0] = v108.u32[2];
      v105.i64[1] = v108.u32[3];
      v109 = v105;
      v105.i64[0] = v108.u32[0];
      v105.i64[1] = v108.u32[1];
      v110 = v105;
      v105.i64[0] = v103.i32[2];
      v105.i64[1] = v103.i32[3];
      v111 = v105;
      v105.i64[0] = v103.i32[0];
      v105.i64[1] = v103.i32[1];
      v112 = v105;
      v105.i64[0] = v102.i32[2];
      v105.i64[1] = v102.i32[3];
      v113 = v105;
      v105.i64[1] = v102.i32[1];
      v102.i64[0] = v94 * v102.i32[0];
      v102.i64[1] = v92 * v105.i64[1];
      v113.i64[0] *= v93;
      v113.i64[1] *= v92;
      v112.i64[0] *= v94;
      v112.i64[1] *= v92;
      v111.i64[0] *= v94;
      v111.i64[1] *= v92;
      v114 = vshrq_n_u64(vaddq_s64(v102, vshlq_n_s64(v110, 0x28uLL)), 0x20uLL);
      v115 = vshrq_n_u64(vaddq_s64(v113, vshlq_n_s64(v109, 0x28uLL)), 0x20uLL);
      v116 = vshrq_n_u64(vaddq_s64(v112, vshlq_n_s64(v107, 0x28uLL)), 0x20uLL);
      v117 = vshrq_n_u64(vaddq_s64(v111, vshlq_n_s64(v106, 0x28uLL)), 0x20uLL);
      v118 = vshll_high_n_s16(v101, 0xBuLL);
      v119 = vshll_n_s16(*v101.i8, 0xBuLL);
      v105.i64[0] = v119.i32[2];
      v105.i64[1] = v119.i32[3];
      v120 = v105;
      v105.i64[0] = v119.i32[0];
      v105.i64[1] = v119.i32[1];
      v121 = v105;
      v105.i64[0] = v118.i32[2];
      v105.i64[1] = v118.i32[3];
      v122 = v105;
      v105.i64[1] = v118.i32[1];
      v118.i64[0] = v97 * v118.i32[0];
      v118.i64[1] = v95 * v105.i64[1];
      v122.i64[0] *= v96;
      v122.i64[1] *= v95;
      v121.i64[0] *= v97;
      v121.i64[1] *= v95;
      v120.i64[0] *= v97;
      v120.i64[1] *= v95;
      *v91->i8 = vqmovn_high_s32(vqmovn_s32(vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(v116, v121, 0x10uLL), vsraq_n_u64(v117, v120, 0x10uLL)), 7uLL), v98)), vhaddq_s32(vshrq_n_s32(vuzp1q_s32(vsraq_n_u64(v114, v118, 0x10uLL), vsraq_n_u64(v115, v122, 0x10uLL)), 7uLL), v98));
      v91 += 2;
      v88 += 8;
    }

    while (v88);
    v82 = v85;
    if ((a6 & 7) != 0)
    {
LABEL_20:
      v123 = a6 - v82;
      v124 = a3 + v82 + 1;
      v125 = a2 + v82 + 2;
      do
      {
        v126 = (((((v81 * ((*(v125 - 1) << 10) + ((*v125 + *(v125 - 2)) << 9)) + (*v124 << 40)) >> 32) + ((*(v125 - 1) * v10.i16[2]) >> 5)) >> 7) + 1) >> 1;
        if (v126 <= -32768)
        {
          v126 = -32768;
        }

        if (v126 >= 0x7FFF)
        {
          LOWORD(v126) = 0x7FFF;
        }

        *v124++ = v126;
        ++v125;
        --v123;
      }

      while (v123);
    }
  }

  *result = v10.i16[0];
  *(result + 2) = v10.i16[2];
  if (a6 >= 1)
  {
    if (a6 >= 4 && ((v127 = 2 * a6 + 2, a2 + 2 >= a3 + v127) || a3 + 2 >= a2 + v127))
    {
      if (a6 >= 0x10)
      {
        v128 = a6 & 0x7FFFFFF0;
        v137 = (a2 + 18);
        v138 = (a3 + 18);
        v139 = v128;
        do
        {
          v140 = v137[-1];
          v141 = *v137;
          v142 = v138[-1];
          v143 = *v138;
          v144 = vqaddq_s16(*v137, *v138);
          v137[-1] = vqaddq_s16(v140, v142);
          *v137 = v144;
          v138[-1] = vqsubq_s16(v140, v142);
          *v138 = vqsubq_s16(v141, v143);
          v137 += 2;
          v138 += 2;
          v139 -= 16;
        }

        while (v139);
        if (v128 == a6)
        {
          return result;
        }

        if ((a6 & 0xC) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v128 = 0;
      }

      v145 = v128;
      v128 = a6 & 0x7FFFFFFC;
      v146 = 2 * v145 + 2;
      v147 = (a2 + v146);
      v148 = (a3 + v146);
      v149 = v145 - v128;
      do
      {
        v150 = *v147;
        v151 = *v148;
        *v147 = vqadd_s16(*v147, *v148);
        ++v147;
        *v148++ = vqsub_s16(v150, v151);
        v149 += 4;
      }

      while (v149);
      if (v128 == a6)
      {
        return result;
      }
    }

    else
    {
      v128 = 0;
    }

LABEL_31:
    v129 = a6 - v128;
    v130 = 2 * v128 + 2;
    v131 = (a3 + v130);
    v132 = (a2 + v130);
    do
    {
      v133 = *v132;
      v134 = *v131;
      v135 = v133 + v134;
      if (v133 + v134 >= 0x7FFF)
      {
        v135 = 0x7FFF;
      }

      if (v135 <= -32768)
      {
        LOWORD(v135) = 0x8000;
      }

      *v132++ = v135;
      v136 = v133 - v134;
      if (v136 >= 0x7FFF)
      {
        v136 = 0x7FFF;
      }

      if (v136 <= -32768)
      {
        LOWORD(v136) = 0x8000;
      }

      *v131++ = v136;
      --v129;
    }

    while (v129);
  }

  return result;
}

_DWORD *silk_stereo_quant_pred(_DWORD *result, _BYTE *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0x7FFFFFFF;
  LOWORD(v5) = -13732;
  while (1)
  {
    v6 = v5;
    v5 = silk_stereo_pred_quant_Q13[v2 + 1];
    v7 = (6554 * (v5 - v6)) >> 16;
    v8 = v7 + v6;
    v9 = *result - (v7 + v6);
    if (v9 < 0)
    {
      v9 = v7 + v6 - *result;
    }

    if (v9 >= v4)
    {
      LOBYTE(v2) = *a2;
      goto LABEL_25;
    }

    *a2 = v2;
    a2[1] = 0;
    v3 = 3 * v7 + v6;
    if (*result - v3 >= 0)
    {
      v10 = *result - v3;
    }

    else
    {
      v10 = v3 - *result;
    }

    if (v10 >= v9)
    {
      v3 = v7 + v6;
      goto LABEL_25;
    }

    a2[1] = 1;
    v11 = 5 * v7 + v6;
    v12 = *result - v11;
    if (v12 < 0)
    {
      v12 = v11 - *result;
    }

    if (v12 >= v10)
    {
      goto LABEL_25;
    }

    a2[1] = 2;
    v13 = v6 - v7 + 8 * v7;
    if (*result - v13 >= 0)
    {
      v14 = *result - v13;
    }

    else
    {
      v14 = v13 - *result;
    }

    if (v14 >= v12)
    {
      v3 = v11;
      goto LABEL_25;
    }

    v3 = v8 + 8 * v7;
    a2[1] = 3;
    v4 = *result - v3;
    if (v4 < 0)
    {
      v4 = v3 - *result;
    }

    if (v4 >= v14)
    {
      break;
    }

    ++v2;
    a2[1] = 4;
    if (v2 == 15)
    {
      LOBYTE(v2) = 14;
      goto LABEL_25;
    }
  }

  v3 = v13;
LABEL_25:
  v15 = 0;
  v16 = (((86 * v2) >> 15) & 1) + ((86 * v2) >> 8);
  a2[2] = v16;
  *a2 = -3 * v16 + v2;
  *result = v3;
  v17 = 0x7FFFFFFF;
  LOWORD(v18) = -13732;
  while (1)
  {
    v19 = v18;
    v18 = silk_stereo_pred_quant_Q13[v15 + 1];
    v20 = (6554 * (v18 - v19)) >> 16;
    v21 = v20 + v19;
    v22 = result[1] - (v20 + v19);
    if (v22 < 0)
    {
      v22 = v20 + v19 - result[1];
    }

    if (v22 >= v17)
    {
      LOBYTE(v15) = a2[3];
      goto LABEL_49;
    }

    a2[3] = v15;
    a2[4] = 0;
    v3 = 3 * v20 + v19;
    if (result[1] - v3 >= 0)
    {
      v23 = result[1] - v3;
    }

    else
    {
      v23 = v3 - result[1];
    }

    if (v23 >= v22)
    {
      v3 = v20 + v19;
      goto LABEL_49;
    }

    a2[4] = 1;
    v24 = 5 * v20 + v19;
    v25 = result[1] - v24;
    if (v25 < 0)
    {
      v25 = v24 - result[1];
    }

    if (v25 >= v23)
    {
      goto LABEL_49;
    }

    a2[4] = 2;
    v26 = v19 - v20 + 8 * v20;
    if (result[1] - v26 >= 0)
    {
      v27 = result[1] - v26;
    }

    else
    {
      v27 = v26 - result[1];
    }

    if (v27 >= v25)
    {
      v3 = v24;
      goto LABEL_49;
    }

    v3 = v21 + 8 * v20;
    a2[4] = 3;
    v17 = result[1] - v3;
    if (v17 < 0)
    {
      v17 = v3 - result[1];
    }

    if (v17 >= v27)
    {
      break;
    }

    ++v15;
    a2[4] = 4;
    if (v15 == 15)
    {
      LOBYTE(v15) = 14;
      goto LABEL_49;
    }
  }

  v3 = v26;
LABEL_49:
  v28 = (((86 * v15) >> 15) & 1) + ((86 * v15) >> 8);
  a2[5] = v28;
  a2[3] = -3 * v28 + v15;
  *result -= v3;
  result[1] = v3;
  return result;
}

uint64_t silk_VAD_GetSA_Q8_c(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v477 = v475;
  v480 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v12 = &v475[-v11];
  v13 = *(v3 + 4584);
  v14 = (v13 >> 1);
  if (v14 >= 1)
  {
    v15 = (v4 + 2);
    v16 = *(v3 + 36);
    v17 = *(v3 + 40);
    v18 = v12;
    do
    {
      v19 = *(v15 - 1) << 10;
      v20 = v19 - v16;
      v21 = v19 + ((v20 * v9) >> 16);
      v16 = v21 + v20;
      v22 = *v15 << 10;
      v23 = (10788 * (v22 - v17)) >> 16;
      v24 = v17 + v23;
      v17 = v22 + v23;
      v25 = (((v24 + v21) >> 10) + 1) >> 1;
      if (v25 <= -32768)
      {
        v25 = -32768;
      }

      if (v25 >= 0x7FFF)
      {
        LOWORD(v25) = 0x7FFF;
      }

      v18->i16[0] = v25;
      v26 = (((v24 - v21) >> 10) + 1) >> 1;
      if (v26 <= -32768)
      {
        v26 = -32768;
      }

      if (v26 >= 0x7FFF)
      {
        LOWORD(v26) = 0x7FFF;
      }

      v18->i16[v6] = v26;
      v18 = (v18 + 2);
      v15 += 2;
      --v14;
    }

    while (v14);
    *(v3 + 36) = v16;
    *(v3 + 40) = v17;
  }

  if (v7 >= 1)
  {
    v27 = &v12->i16[1];
    v28 = *(v3 + 44);
    v29 = *(v3 + 48);
    v30 = v12;
    v31 = v7;
    do
    {
      v32 = *(v27 - 1) << 10;
      v33 = v32 - v28;
      v34 = v32 + ((v33 * v9) >> 16);
      v28 = v34 + v33;
      v35 = *v27 << 10;
      v36 = (10788 * (v35 - v29)) >> 16;
      v37 = v29 + v36;
      v29 = v35 + v36;
      v38 = (((v37 + v34) >> 10) + 1) >> 1;
      if (v38 <= -32768)
      {
        v38 = -32768;
      }

      if (v38 >= 0x7FFF)
      {
        LOWORD(v38) = 0x7FFF;
      }

      v30->i16[0] = v38;
      v39 = (((v37 - v34) >> 10) + 1) >> 1;
      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      if (v39 >= 0x7FFF)
      {
        LOWORD(v39) = 0x7FFF;
      }

      v30->i16[v5] = v39;
      v30 = (v30 + 2);
      v27 += 2;
      --v31;
    }

    while (v31);
    *(v3 + 44) = v28;
    *(v3 + 48) = v29;
  }

  if (v8 <= 0)
  {
    v62 = &v12->i16[v8];
    v54 = *(v62 - 1) >> 1;
    *(v62 - 1) >>= 1;
  }

  else
  {
    v40 = &v12->i16[1];
    v41 = *(v3 + 52);
    v42 = *(v3 + 56);
    v43 = v12;
    v44 = v8;
    do
    {
      v45 = *(v40 - 1) << 10;
      v46 = v45 - v41;
      v47 = v45 + ((v46 * v9) >> 16);
      v41 = v47 + v46;
      v48 = *v40 << 10;
      v49 = (10788 * (v48 - v42)) >> 16;
      v50 = v42 + v49;
      v42 = v48 + v49;
      v51 = (((v50 + v47) >> 10) + 1) >> 1;
      if (v51 <= -32768)
      {
        v51 = -32768;
      }

      if (v51 >= 0x7FFF)
      {
        LOWORD(v51) = 0x7FFF;
      }

      v43->i16[0] = v51;
      v52 = (((v50 - v47) >> 10) + 1) >> 1;
      if (v52 <= -32768)
      {
        v52 = -32768;
      }

      if (v52 >= 0x7FFF)
      {
        LOWORD(v52) = 0x7FFF;
      }

      v43->i16[v10] = v52;
      v43 = (v43 + 2);
      v40 += 2;
      --v44;
    }

    while (v44);
    *(v3 + 52) = v41;
    *(v3 + 56) = v42;
    v53 = v8 - 1;
    v54 = v12->i16[v53] >> 1;
    v12->i16[v53] >>= 1;
    if (v8 != 1)
    {
      v55 = v53;
      v56 = &v12->i16[v53];
      v59 = *v56;
      v57 = v56 - 1;
      v58 = v59;
      v60 = v55 + 1;
      do
      {
        v61 = *v57 >> 1;
        *v57 >>= 1;
        v57[1] = v58 - v61;
        --v60;
        --v57;
        v58 = v61;
      }

      while (v60 > 1);
    }
  }

  v12->i16[0] -= *(v3 + 92);
  *(v3 + 92) = v54;
  v63 = (v13 >> 5);
  v64 = *(v3 + 60);
  if (v63 > 0)
  {
    if (v63 < 4)
    {
      v65 = 0;
      v66 = 0;
      goto LABEL_56;
    }

    if (v63 >= 0x10)
    {
      v65 = v63 & 0x7FFFFFF0;
      v69 = v12 + 1;
      v70 = 0uLL;
      v71 = v65;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v75 = vshrq_n_s16(v69[-1], 3uLL);
        v76 = vshrq_n_s16(*v69, 3uLL);
        v72 = vmlal_high_s16(v72, v75, v75);
        v70 = vmlal_s16(v70, *v75.i8, *v75.i8);
        v74 = vmlal_high_s16(v74, v76, v76);
        v73 = vmlal_s16(v73, *v76.i8, *v76.i8);
        v69 += 2;
        v71 -= 16;
      }

      while (v71);
      v66 = vaddvq_s32(vaddq_s32(vaddq_s32(v73, v70), vaddq_s32(v74, v72)));
      if (v65 == v63)
      {
        goto LABEL_58;
      }

      if ((v63 & 0xC) == 0)
      {
LABEL_56:
        v82 = v65 << 32;
        v83 = v63 - v65;
        do
        {
          v84 = *(v12->i16 + (v82 >> 31)) >> 3;
          v66 += v84 * v84;
          v82 += 0x100000000;
          --v83;
        }

        while (v83);
        goto LABEL_58;
      }
    }

    else
    {
      v66 = 0;
      v65 = 0;
    }

    v77 = v65;
    v65 = v63 & 0x7FFFFFFC;
    v78 = v66;
    v79 = v77 << 32;
    v80 = v77 - v65;
    do
    {
      v81 = vshr_n_s16(*&v12->i8[v79 >> 31], 3uLL);
      v78 = vmlal_s16(v78, v81, v81);
      v79 += 0x400000000;
      v80 += 4;
    }

    while (v80);
    v66 = vaddvq_s32(v78);
    if (v65 != v63)
    {
      goto LABEL_56;
    }

LABEL_58:
    v85 = v66 + v64;
    if (v63 < 4)
    {
      v86 = 0;
      v87 = 0;
      goto LABEL_69;
    }

    if (v63 >= 0x10)
    {
      v86 = v63 & 0x7FFFFFF0;
      v88 = 0uLL;
      v89 = v13 >> 5;
      v90 = v86;
      v91 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      do
      {
        v94 = (v12 + 2 * v89);
        v95 = vshrq_n_s16(*v94, 3uLL);
        v96 = vshrq_n_s16(v94[1], 3uLL);
        v91 = vmlal_high_s16(v91, v95, v95);
        v88 = vmlal_s16(v88, *v95.i8, *v95.i8);
        v93 = vmlal_high_s16(v93, v96, v96);
        v92 = vmlal_s16(v92, *v96.i8, *v96.i8);
        v89 += 16;
        v90 -= 16;
      }

      while (v90);
      v87 = vaddvq_s32(vaddq_s32(vaddq_s32(v92, v88), vaddq_s32(v93, v91)));
      if (v86 == v63)
      {
        goto LABEL_71;
      }

      if ((v63 & 0xC) == 0)
      {
LABEL_69:
        v102 = v63 - v86;
        v103 = v63 + v86;
        do
        {
          v104 = v12->i16[v103] >> 3;
          v87 += v104 * v104;
          ++v103;
          --v102;
        }

        while (v102);
        goto LABEL_71;
      }
    }

    else
    {
      v87 = 0;
      v86 = 0;
    }

    v97 = v86;
    v86 = v63 & 0x7FFFFFFC;
    v98 = v87;
    v99 = v97 - v86;
    v100 = v63 + v97;
    do
    {
      v101 = vshr_n_s16(*&v12->i8[2 * v100], 3uLL);
      v98 = vmlal_s16(v98, v101, v101);
      v100 += 4;
      v99 += 4;
    }

    while (v99);
    v87 = vaddvq_s32(v98);
    if (v86 != v63)
    {
      goto LABEL_69;
    }

LABEL_71:
    if (v85 < 0)
    {
      v85 = 0x7FFFFFFF;
    }

    v105 = v87 + v85;
    v106 = v63 << 33;
    if (v63 == 1)
    {
      v107 = 0;
      v108 = 0;
    }

    else
    {
      v109 = 0;
      v110 = 0;
      v107 = v63 & 0x7FFFFFFE;
      v111 = v106 + 0x100000000;
      v112 = v107;
      v113 = v63 << 33;
      do
      {
        v114 = *(v12->i16 + (v113 >> 31)) >> 3;
        v115 = *(v12->i16 + (v111 >> 31)) >> 3;
        v109 += v114 * v114;
        v110 += v115 * v115;
        v111 += 0x200000000;
        v113 += 0x200000000;
        v112 -= 2;
      }

      while (v112);
      v108 = v110 + v109;
      if (v107 == v63)
      {
LABEL_80:
        if (v105 < 0)
        {
          v105 = 0x7FFFFFFF;
        }

        v119 = v108 + v105;
        if (v63 < 4 || ((6 * v63 + 2 * (v63 - 1)) << 31 >> 31 >= (0x300000000 * v63) >> 31 ? (v120 = (v63 - 1) >> 33 == 0) : (v120 = 0), !v120))
        {
          v121 = 0;
          v122 = 0;
          goto LABEL_88;
        }

        if (v63 >= 0x10)
        {
          v121 = v63 & 0x7FFFFFF0;
          v433 = (3 * v63) << 32;
          v434 = 0uLL;
          v435 = v121;
          v436 = 0uLL;
          v437 = 0uLL;
          v438 = 0uLL;
          do
          {
            v439 = (v12 + (v433 >> 31));
            v440 = vshrq_n_s16(*v439, 3uLL);
            v441 = vshrq_n_s16(v439[1], 3uLL);
            v436 = vmlal_high_s16(v436, v440, v440);
            v434 = vmlal_s16(v434, *v440.i8, *v440.i8);
            v438 = vmlal_high_s16(v438, v441, v441);
            v437 = vmlal_s16(v437, *v441.i8, *v441.i8);
            v433 += 0x1000000000;
            v435 -= 16;
          }

          while (v435);
          v122 = vaddvq_s32(vaddq_s32(vaddq_s32(v437, v434), vaddq_s32(v438, v436)));
          if (v121 == v63)
          {
            goto LABEL_90;
          }

          if ((v63 & 0xC) == 0)
          {
LABEL_88:
            v123 = v63 - v121;
            v124 = 0x300000000 * v63 + (v121 << 32);
            do
            {
              v125 = *(v12->i16 + (v124 >> 31)) >> 3;
              v122 += v125 * v125;
              v124 += 0x100000000;
              --v123;
            }

            while (v123);
            goto LABEL_90;
          }
        }

        else
        {
          v122 = 0;
          v121 = 0;
        }

        v442 = v121;
        v443 = v122;
        v121 = v63 & 0x7FFFFFFC;
        v444 = 0x300000000 * v63 + (v442 << 32);
        v445 = v442 - v121;
        do
        {
          v446 = vshr_n_s16(*&v12->i8[v444 >> 31], 3uLL);
          v443 = vmlal_s16(v443, v446, v446);
          v444 += 0x400000000;
          v445 += 4;
        }

        while (v445);
        v122 = vaddvq_s32(v443);
        if (v121 != v63)
        {
          goto LABEL_88;
        }

LABEL_90:
        if (v119 < 0)
        {
          v119 = 0x7FFFFFFF;
        }

        v64 = v119 + (v122 >> 1);
        if (v64 < 0)
        {
          v64 = 0x7FFFFFFF;
        }

        v479[0] = v64;
        *(v3 + 60) = v122;
        if (v63 < 4)
        {
          v126 = 0;
          v127 = 0;
          goto LABEL_107;
        }

        if (v63 >= 0x10)
        {
          v126 = v63 & 0x7FFFFFF0;
          v128 = v8 + v7;
          v129 = 0uLL;
          v130 = v126;
          v131 = 0uLL;
          v132 = 0uLL;
          v133 = 0uLL;
          do
          {
            v134 = (v12 + 2 * v128);
            v135 = vshrq_n_s16(*v134, 3uLL);
            v136 = vshrq_n_s16(v134[1], 3uLL);
            v131 = vmlal_high_s16(v131, v135, v135);
            v129 = vmlal_s16(v129, *v135.i8, *v135.i8);
            v133 = vmlal_high_s16(v133, v136, v136);
            v132 = vmlal_s16(v132, *v136.i8, *v136.i8);
            v128 += 16;
            v130 -= 16;
          }

          while (v130);
          v127 = vaddvq_s32(vaddq_s32(vaddq_s32(v132, v129), vaddq_s32(v133, v131)));
          if (v126 == v63)
          {
            goto LABEL_109;
          }

          if ((v63 & 0xC) == 0)
          {
LABEL_107:
            v142 = v63 - v126;
            v143 = v8 + v7 + v126;
            do
            {
              v144 = v12->i16[v143] >> 3;
              v127 += v144 * v144;
              ++v143;
              --v142;
            }

            while (v142);
            goto LABEL_109;
          }
        }

        else
        {
          v127 = 0;
          v126 = 0;
        }

        v137 = v126;
        v126 = v63 & 0x7FFFFFFC;
        v138 = v127;
        v139 = v137 - v126;
        v140 = v8 + v7 + v137;
        do
        {
          v141 = vshr_n_s16(*&v12->i8[2 * v140], 3uLL);
          v138 = vmlal_s16(v138, v141, v141);
          v140 += 4;
          v139 += 4;
        }

        while (v139);
        v127 = vaddvq_s32(v138);
        if (v126 != v63)
        {
          goto LABEL_107;
        }

LABEL_109:
        v145 = v127 + *(v3 + 64);
        if (v63 < 4)
        {
          v146 = 0;
          v147 = 0;
          goto LABEL_120;
        }

        if (v63 >= 0x10)
        {
          v146 = v63 & 0x7FFFFFF0;
          v148 = v8 + v7 + v63;
          v149 = 0uLL;
          v150 = v146;
          v151 = 0uLL;
          v152 = 0uLL;
          v153 = 0uLL;
          do
          {
            v154 = (v12 + 2 * v148);
            v155 = vshrq_n_s16(*v154, 3uLL);
            v156 = vshrq_n_s16(v154[1], 3uLL);
            v151 = vmlal_high_s16(v151, v155, v155);
            v149 = vmlal_s16(v149, *v155.i8, *v155.i8);
            v153 = vmlal_high_s16(v153, v156, v156);
            v152 = vmlal_s16(v152, *v156.i8, *v156.i8);
            v148 += 16;
            v150 -= 16;
          }

          while (v150);
          v147 = vaddvq_s32(vaddq_s32(vaddq_s32(v152, v149), vaddq_s32(v153, v151)));
          if (v146 == v63)
          {
            goto LABEL_122;
          }

          if ((v63 & 0xC) == 0)
          {
LABEL_120:
            v162 = v63 - v146;
            v163 = v8 + v7 + v63 + v146;
            do
            {
              v164 = v12->i16[v163] >> 3;
              v147 += v164 * v164;
              ++v163;
              --v162;
            }

            while (v162);
            goto LABEL_122;
          }
        }

        else
        {
          v147 = 0;
          v146 = 0;
        }

        v157 = v146;
        v146 = v63 & 0x7FFFFFFC;
        v158 = v147;
        v159 = v157 - v146;
        v160 = v8 + v7 + v63 + v157;
        do
        {
          v161 = vshr_n_s16(*&v12->i8[2 * v160], 3uLL);
          v158 = vmlal_s16(v158, v161, v161);
          v160 += 4;
          v159 += 4;
        }

        while (v159);
        v147 = vaddvq_s32(v158);
        if (v146 != v63)
        {
          goto LABEL_120;
        }

LABEL_122:
        if (v145 < 0)
        {
          v145 = 0x7FFFFFFF;
        }

        v165 = v147 + v145;
        if (v63 < 4)
        {
          v166 = 0;
          v167 = 0;
          goto LABEL_135;
        }

        if (v63 >= 0x10)
        {
          v166 = v63 & 0x7FFFFFF0;
          v168 = v8 + v7 + 2 * v63;
          v169 = 0uLL;
          v170 = v166;
          v171 = 0uLL;
          v172 = 0uLL;
          v173 = 0uLL;
          do
          {
            v174 = (v12 + 2 * v168);
            v175 = vshrq_n_s16(*v174, 3uLL);
            v176 = vshrq_n_s16(v174[1], 3uLL);
            v171 = vmlal_high_s16(v171, v175, v175);
            v169 = vmlal_s16(v169, *v175.i8, *v175.i8);
            v173 = vmlal_high_s16(v173, v176, v176);
            v172 = vmlal_s16(v172, *v176.i8, *v176.i8);
            v168 += 16;
            v170 -= 16;
          }

          while (v170);
          v167 = vaddvq_s32(vaddq_s32(vaddq_s32(v172, v169), vaddq_s32(v173, v171)));
          if (v166 == v63)
          {
            goto LABEL_137;
          }

          if ((v63 & 0xC) == 0)
          {
LABEL_135:
            v182 = v63 - v166;
            v183 = v8 + v7 + 2 * v63 + v166;
            do
            {
              v184 = v12->i16[v183] >> 3;
              v167 += v184 * v184;
              ++v183;
              --v182;
            }

            while (v182);
            goto LABEL_137;
          }
        }

        else
        {
          v167 = 0;
          v166 = 0;
        }

        v177 = v166;
        v166 = v63 & 0x7FFFFFFC;
        v178 = v167;
        v179 = v8 + v7 + 2 * v63 + v177;
        v180 = v177 - v166;
        do
        {
          v181 = vshr_n_s16(*&v12->i8[2 * v179], 3uLL);
          v178 = vmlal_s16(v178, v181, v181);
          v179 += 4;
          v180 += 4;
        }

        while (v180);
        v167 = vaddvq_s32(v178);
        if (v166 != v63)
        {
          goto LABEL_135;
        }

LABEL_137:
        if (v165 < 0)
        {
          v165 = 0x7FFFFFFF;
        }

        v185 = v167 + v165;
        v186 = 3 * v63;
        if (v63 < 4)
        {
          v187 = 0;
          v67 = 0;
          goto LABEL_150;
        }

        if (v63 >= 0x10)
        {
          v187 = v63 & 0x7FFFFFF0;
          v188 = v8 + v7 + v186;
          v189 = 0uLL;
          v190 = v187;
          v191 = 0uLL;
          v192 = 0uLL;
          v193 = 0uLL;
          do
          {
            v194 = (v12 + 2 * v188);
            v195 = vshrq_n_s16(*v194, 3uLL);
            v196 = vshrq_n_s16(v194[1], 3uLL);
            v191 = vmlal_high_s16(v191, v195, v195);
            v189 = vmlal_s16(v189, *v195.i8, *v195.i8);
            v193 = vmlal_high_s16(v193, v196, v196);
            v192 = vmlal_s16(v192, *v196.i8, *v196.i8);
            v188 += 16;
            v190 -= 16;
          }

          while (v190);
          v67 = vaddvq_s32(vaddq_s32(vaddq_s32(v192, v189), vaddq_s32(v193, v191)));
          if (v187 == v63)
          {
            goto LABEL_152;
          }

          if ((v63 & 0xC) == 0)
          {
LABEL_150:
            v202 = v63 - v187;
            v203 = v8 + v7 + v187 + v186;
            do
            {
              v204 = v12->i16[v203] >> 3;
              v67 += v204 * v204;
              ++v203;
              --v202;
            }

            while (v202);
            goto LABEL_152;
          }
        }

        else
        {
          v67 = 0;
          v187 = 0;
        }

        v197 = v187;
        v187 = v63 & 0x7FFFFFFC;
        v198 = v67;
        v199 = v8 + v7 + v197 + v186;
        v200 = v197 - v187;
        do
        {
          v201 = vshr_n_s16(*&v12->i8[2 * v199], 3uLL);
          v198 = vmlal_s16(v198, v201, v201);
          v199 += 4;
          v200 += 4;
        }

        while (v200);
        v67 = vaddvq_s32(v198);
        if (v187 != v63)
        {
          goto LABEL_150;
        }

LABEL_152:
        if (v185 < 0)
        {
          v205 = 0x7FFFFFFF;
        }

        else
        {
          v205 = v185;
        }

        v68 = v205 + (v67 >> 1);
        goto LABEL_156;
      }
    }

    v116 = v106 + (v107 << 32);
    v117 = v63 - v107;
    do
    {
      v118 = *(v12->i16 + (v116 >> 31)) >> 3;
      v108 += v118 * v118;
      v116 += 0x100000000;
      --v117;
    }

    while (v117);
    goto LABEL_80;
  }

  v67 = 0;
  if (v64 < 0)
  {
    v64 = 0x7FFFFFFF;
  }

  v479[0] = v64;
  *(v3 + 60) = 0;
  v68 = *(v3 + 64);
LABEL_156:
  if (v68 < 0)
  {
    v68 = 0x7FFFFFFF;
  }

  v479[1] = v68;
  *(v3 + 64) = v67;
  v206 = (v13 >> 4);
  v207 = *(v3 + 68);
  if (v206 < 1)
  {
    v211 = 0;
    goto LABEL_220;
  }

  v208 = v7 + 2 * v8;
  if (v206 < 4)
  {
    v209 = 0;
    v210 = 0;
    goto LABEL_171;
  }

  if (v206 >= 0x10)
  {
    v209 = v206 & 0x7FFFFFF0;
    v212 = (v12 + 2 * v208 + 16);
    v213 = 0uLL;
    v214 = v209;
    v215 = 0uLL;
    v216 = 0uLL;
    v217 = 0uLL;
    do
    {
      v218 = vshrq_n_s16(v212[-1], 3uLL);
      v219 = vshrq_n_s16(*v212, 3uLL);
      v215 = vmlal_high_s16(v215, v218, v218);
      v213 = vmlal_s16(v213, *v218.i8, *v218.i8);
      v217 = vmlal_high_s16(v217, v219, v219);
      v216 = vmlal_s16(v216, *v219.i8, *v219.i8);
      v212 += 2;
      v214 -= 16;
    }

    while (v214);
    v210 = vaddvq_s32(vaddq_s32(vaddq_s32(v216, v213), vaddq_s32(v217, v215)));
    if (v209 == v206)
    {
      goto LABEL_173;
    }

    if ((v206 & 0xC) == 0)
    {
LABEL_171:
      v225 = v206 - v209;
      v226 = v208 + v209;
      do
      {
        v227 = v12->i16[v226] >> 3;
        v210 += v227 * v227;
        ++v226;
        --v225;
      }

      while (v225);
      goto LABEL_173;
    }
  }

  else
  {
    v210 = 0;
    v209 = 0;
  }

  v220 = v209;
  v209 = v206 & 0x7FFFFFFC;
  v221 = v210;
  v222 = v220 - v209;
  v223 = v208 + v220;
  do
  {
    v224 = vshr_n_s16(*&v12->i8[2 * v223], 3uLL);
    v221 = vmlal_s16(v221, v224, v224);
    v223 += 4;
    v222 += 4;
  }

  while (v222);
  v210 = vaddvq_s32(v221);
  if (v209 != v206)
  {
    goto LABEL_171;
  }

LABEL_173:
  v228 = v210 + v207;
  if (v206 < 4)
  {
    v229 = 0;
    v230 = 0;
    goto LABEL_184;
  }

  if (v206 >= 0x10)
  {
    v229 = v206 & 0x7FFFFFF0;
    v231 = v7 + v206 + 2 * v8;
    v232 = 0uLL;
    v233 = v229;
    v234 = 0uLL;
    v235 = 0uLL;
    v236 = 0uLL;
    do
    {
      v237 = (v12 + 2 * v231);
      v238 = vshrq_n_s16(*v237, 3uLL);
      v239 = vshrq_n_s16(v237[1], 3uLL);
      v234 = vmlal_high_s16(v234, v238, v238);
      v232 = vmlal_s16(v232, *v238.i8, *v238.i8);
      v236 = vmlal_high_s16(v236, v239, v239);
      v235 = vmlal_s16(v235, *v239.i8, *v239.i8);
      v231 += 16;
      v233 -= 16;
    }

    while (v233);
    v230 = vaddvq_s32(vaddq_s32(vaddq_s32(v235, v232), vaddq_s32(v236, v234)));
    if (v229 == v206)
    {
      goto LABEL_186;
    }

    if ((v206 & 0xC) == 0)
    {
LABEL_184:
      v245 = v206 - v229;
      v246 = v7 + v206 + 2 * v8 + v229;
      do
      {
        v247 = v12->i16[v246] >> 3;
        v230 += v247 * v247;
        ++v246;
        --v245;
      }

      while (v245);
      goto LABEL_186;
    }
  }

  else
  {
    v230 = 0;
    v229 = 0;
  }

  v240 = v229;
  v229 = v206 & 0x7FFFFFFC;
  v241 = v230;
  v242 = v240 - v229;
  v243 = v7 + v206 + 2 * v8 + v240;
  do
  {
    v244 = vshr_n_s16(*&v12->i8[2 * v243], 3uLL);
    v241 = vmlal_s16(v241, v244, v244);
    v243 += 4;
    v242 += 4;
  }

  while (v242);
  v230 = vaddvq_s32(v241);
  if (v229 != v206)
  {
    goto LABEL_184;
  }

LABEL_186:
  if (v228 < 0)
  {
    v228 = 0x7FFFFFFF;
  }

  v248 = v230 + v228;
  v249 = v7 + 2 * v206;
  if (v206 < 4)
  {
    v250 = 0;
    v251 = 0;
    goto LABEL_199;
  }

  if (v206 >= 0x10)
  {
    v250 = v206 & 0x7FFFFFF0;
    v252 = v249 + 2 * v8;
    v253 = 0uLL;
    v254 = v250;
    v255 = 0uLL;
    v256 = 0uLL;
    v257 = 0uLL;
    do
    {
      v258 = (v12 + 2 * v252);
      v259 = vshrq_n_s16(*v258, 3uLL);
      v260 = vshrq_n_s16(v258[1], 3uLL);
      v255 = vmlal_high_s16(v255, v259, v259);
      v253 = vmlal_s16(v253, *v259.i8, *v259.i8);
      v257 = vmlal_high_s16(v257, v260, v260);
      v256 = vmlal_s16(v256, *v260.i8, *v260.i8);
      v252 += 16;
      v254 -= 16;
    }

    while (v254);
    v251 = vaddvq_s32(vaddq_s32(vaddq_s32(v256, v253), vaddq_s32(v257, v255)));
    if (v250 == v206)
    {
      goto LABEL_201;
    }

    if ((v206 & 0xC) == 0)
    {
LABEL_199:
      v266 = v206 - v250;
      v267 = v249 + 2 * v8 + v250;
      do
      {
        v268 = v12->i16[v267] >> 3;
        v251 += v268 * v268;
        ++v267;
        --v266;
      }

      while (v266);
      goto LABEL_201;
    }
  }

  else
  {
    v251 = 0;
    v250 = 0;
  }

  v261 = v250;
  v250 = v206 & 0x7FFFFFFC;
  v262 = v251;
  v263 = v249 + 2 * v8 + v261;
  v264 = v261 - v250;
  do
  {
    v265 = vshr_n_s16(*&v12->i8[2 * v263], 3uLL);
    v262 = vmlal_s16(v262, v265, v265);
    v263 += 4;
    v264 += 4;
  }

  while (v264);
  v251 = vaddvq_s32(v262);
  if (v250 != v206)
  {
    goto LABEL_199;
  }

LABEL_201:
  if (v248 < 0)
  {
    v248 = 0x7FFFFFFF;
  }

  v269 = v251 + v248;
  v270 = 3 * v206;
  if (v206 < 4)
  {
    v271 = 0;
    v211 = 0;
    goto LABEL_214;
  }

  if (v206 >= 0x10)
  {
    v271 = v206 & 0x7FFFFFF0;
    v272 = v7 + v270 + 2 * v8;
    v273 = 0uLL;
    v274 = v271;
    v275 = 0uLL;
    v276 = 0uLL;
    v277 = 0uLL;
    do
    {
      v278 = (v12 + 2 * v272);
      v279 = vshrq_n_s16(*v278, 3uLL);
      v280 = vshrq_n_s16(v278[1], 3uLL);
      v275 = vmlal_high_s16(v275, v279, v279);
      v273 = vmlal_s16(v273, *v279.i8, *v279.i8);
      v277 = vmlal_high_s16(v277, v280, v280);
      v276 = vmlal_s16(v276, *v280.i8, *v280.i8);
      v272 += 16;
      v274 -= 16;
    }

    while (v274);
    v211 = vaddvq_s32(vaddq_s32(vaddq_s32(v276, v273), vaddq_s32(v277, v275)));
    if (v271 == v206)
    {
      goto LABEL_216;
    }

    if ((v206 & 0xC) == 0)
    {
LABEL_214:
      v286 = v206 - v271;
      v287 = v7 + v270 + 2 * v8 + v271;
      do
      {
        v288 = v12->i16[v287] >> 3;
        v211 += v288 * v288;
        ++v287;
        --v286;
      }

      while (v286);
      goto LABEL_216;
    }
  }

  else
  {
    v211 = 0;
    v271 = 0;
  }

  v281 = v271;
  v271 = v206 & 0x7FFFFFFC;
  v282 = v211;
  v283 = v7 + v270 + 2 * v8 + v281;
  v284 = v281 - v271;
  do
  {
    v285 = vshr_n_s16(*&v12->i8[2 * v283], 3uLL);
    v282 = vmlal_s16(v282, v285, v285);
    v283 += 4;
    v284 += 4;
  }

  while (v284);
  v211 = vaddvq_s32(v282);
  if (v271 != v206)
  {
    goto LABEL_214;
  }

LABEL_216:
  if (v269 < 0)
  {
    v289 = 0x7FFFFFFF;
  }

  else
  {
    v289 = v269;
  }

  v207 = v289 + (v211 >> 1);
LABEL_220:
  if (v207 < 0)
  {
    v290 = 0x7FFFFFFF;
  }

  else
  {
    v290 = v207;
  }

  v479[2] = v290;
  *(v3 + 68) = v211;
  v291 = (v13 >> 3);
  v292 = *(v3 + 72);
  if (v291 >= 1)
  {
    v293 = 2 * v8;
    if (v291 < 4)
    {
      v294 = 0;
      v295 = 0;
      goto LABEL_236;
    }

    if (v291 >= 0x10)
    {
      v294 = v291 & 0x7FFFFFF0;
      v297 = (v12 + 4 * v7 + 2 * v293 + 16);
      v298 = 0uLL;
      v299 = v294;
      v300 = 0uLL;
      v301 = 0uLL;
      v302 = 0uLL;
      do
      {
        v303 = vshrq_n_s16(v297[-1], 3uLL);
        v304 = vshrq_n_s16(*v297, 3uLL);
        v300 = vmlal_high_s16(v300, v303, v303);
        v298 = vmlal_s16(v298, *v303.i8, *v303.i8);
        v302 = vmlal_high_s16(v302, v304, v304);
        v301 = vmlal_s16(v301, *v304.i8, *v304.i8);
        v297 += 2;
        v299 -= 16;
      }

      while (v299);
      v295 = vaddvq_s32(vaddq_s32(vaddq_s32(v301, v298), vaddq_s32(v302, v300)));
      if (v294 == v291)
      {
        goto LABEL_238;
      }

      if ((v291 & 0xC) == 0)
      {
LABEL_236:
        v310 = v291 - v294;
        v311 = v293 + 2 * v7 + v294;
        do
        {
          v312 = v12->i16[v311] >> 3;
          v295 += v312 * v312;
          ++v311;
          --v310;
        }

        while (v310);
        goto LABEL_238;
      }
    }

    else
    {
      v295 = 0;
      v294 = 0;
    }

    v305 = v294;
    v294 = v291 & 0x7FFFFFFC;
    v306 = v295;
    v307 = v305 - v294;
    v308 = v293 + 2 * v7 + v305;
    do
    {
      v309 = vshr_n_s16(*&v12->i8[2 * v308], 3uLL);
      v306 = vmlal_s16(v306, v309, v309);
      v308 += 4;
      v307 += 4;
    }

    while (v307);
    v295 = vaddvq_s32(v306);
    if (v294 != v291)
    {
      goto LABEL_236;
    }

LABEL_238:
    v313 = v295 + v292;
    v314 = v291 + 2 * v8;
    if (v291 < 4)
    {
      v315 = 0;
      v316 = 0;
      goto LABEL_249;
    }

    if (v291 >= 0x10)
    {
      v315 = v291 & 0x7FFFFFF0;
      v317 = v314 + 2 * v7;
      v318 = 0uLL;
      v319 = v315;
      v320 = 0uLL;
      v321 = 0uLL;
      v322 = 0uLL;
      do
      {
        v323 = (v12 + 2 * v317);
        v324 = vshrq_n_s16(*v323, 3uLL);
        v325 = vshrq_n_s16(v323[1], 3uLL);
        v320 = vmlal_high_s16(v320, v324, v324);
        v318 = vmlal_s16(v318, *v324.i8, *v324.i8);
        v322 = vmlal_high_s16(v322, v325, v325);
        v321 = vmlal_s16(v321, *v325.i8, *v325.i8);
        v317 += 16;
        v319 -= 16;
      }

      while (v319);
      v316 = vaddvq_s32(vaddq_s32(vaddq_s32(v321, v318), vaddq_s32(v322, v320)));
      if (v315 == v291)
      {
        goto LABEL_251;
      }

      if ((v291 & 0xC) == 0)
      {
LABEL_249:
        v331 = v291 - v315;
        v332 = v314 + 2 * v7 + v315;
        do
        {
          v333 = v12->i16[v332] >> 3;
          v316 += v333 * v333;
          ++v332;
          --v331;
        }

        while (v331);
        goto LABEL_251;
      }
    }

    else
    {
      v316 = 0;
      v315 = 0;
    }

    v326 = v315;
    v315 = v291 & 0x7FFFFFFC;
    v327 = v316;
    v328 = v326 - v315;
    v329 = v314 + 2 * v7 + v326;
    do
    {
      v330 = vshr_n_s16(*&v12->i8[2 * v329], 3uLL);
      v327 = vmlal_s16(v327, v330, v330);
      v329 += 4;
      v328 += 4;
    }

    while (v328);
    v316 = vaddvq_s32(v327);
    if (v315 != v291)
    {
      goto LABEL_249;
    }

LABEL_251:
    if (v313 < 0)
    {
      v313 = 0x7FFFFFFF;
    }

    v334 = v316 + v313;
    v335 = 2 * v291;
    if (v291 < 4)
    {
      v336 = 0;
      v337 = 0;
      goto LABEL_255;
    }

    v337 = 0;
    v336 = 0;
    if (2 * (v291 + v7 + v8) + v291 - 1 < 2 * (v291 + v7 + v8) || (v291 - 1) >> 32)
    {
      goto LABEL_255;
    }

    if (v291 >= 0x10)
    {
      v336 = v291 & 0x7FFFFFF0;
      v447 = v335 + 2 * v8 + 2 * v7;
      v448 = 0uLL;
      v449 = v336;
      v450 = 0uLL;
      v451 = 0uLL;
      v452 = 0uLL;
      do
      {
        v453 = (v12 + 2 * v447);
        v454 = vshrq_n_s16(*v453, 3uLL);
        v455 = vshrq_n_s16(v453[1], 3uLL);
        v450 = vmlal_high_s16(v450, v454, v454);
        v448 = vmlal_s16(v448, *v454.i8, *v454.i8);
        v452 = vmlal_high_s16(v452, v455, v455);
        v451 = vmlal_s16(v451, *v455.i8, *v455.i8);
        v447 += 16;
        v449 -= 16;
      }

      while (v449);
      v337 = vaddvq_s32(vaddq_s32(vaddq_s32(v451, v448), vaddq_s32(v452, v450)));
      if (v336 == v291)
      {
        goto LABEL_257;
      }

      if ((v291 & 0xC) == 0)
      {
LABEL_255:
        v338 = v291 - v336;
        v339 = v335 + 2 * v8 + 2 * v7 + v336;
        do
        {
          v340 = v12->i16[v339] >> 3;
          v337 += v340 * v340;
          ++v339;
          --v338;
        }

        while (v338);
        goto LABEL_257;
      }
    }

    else
    {
      v337 = 0;
      v336 = 0;
    }

    v456 = v336;
    v336 = v291 & 0x7FFFFFFC;
    v457 = v337;
    v458 = v335 + 2 * v8 + 2 * v7 + v456;
    v459 = v456 - v336;
    do
    {
      v460 = vshr_n_s16(*&v12->i8[2 * v458], 3uLL);
      v457 = vmlal_s16(v457, v460, v460);
      v458 += 4;
      v459 += 4;
    }

    while (v459);
    v337 = vaddvq_s32(v457);
    if (v336 != v291)
    {
      goto LABEL_255;
    }

LABEL_257:
    if (v334 < 0)
    {
      v334 = 0x7FFFFFFF;
    }

    v341 = v337 + v334;
    v342 = 3 * v291;
    if (v291 < 4)
    {
      v343 = 0;
      v296 = 0;
      goto LABEL_261;
    }

    v296 = 0;
    v343 = 0;
    if (v342 + 2 * v7 + v293 + v291 - 1 < v342 + 2 * v7 + v293 || (v291 - 1) >> 32)
    {
      goto LABEL_261;
    }

    if (v291 >= 0x10)
    {
      v343 = v291 & 0x7FFFFFF0;
      v461 = v342 + v293 + 2 * v7;
      v462 = 0uLL;
      v463 = v343;
      v464 = 0uLL;
      v465 = 0uLL;
      v466 = 0uLL;
      do
      {
        v467 = (v12 + 2 * v461);
        v468 = vshrq_n_s16(*v467, 3uLL);
        v469 = vshrq_n_s16(v467[1], 3uLL);
        v464 = vmlal_high_s16(v464, v468, v468);
        v462 = vmlal_s16(v462, *v468.i8, *v468.i8);
        v466 = vmlal_high_s16(v466, v469, v469);
        v465 = vmlal_s16(v465, *v469.i8, *v469.i8);
        v461 += 16;
        v463 -= 16;
      }

      while (v463);
      v296 = vaddvq_s32(vaddq_s32(vaddq_s32(v465, v462), vaddq_s32(v466, v464)));
      if (v343 == v291)
      {
        goto LABEL_263;
      }

      if ((v291 & 0xC) == 0)
      {
LABEL_261:
        v344 = v291 - v343;
        v345 = v342 + 2 * v8 + 2 * v7 + v343;
        do
        {
          v346 = v12->i16[v345] >> 3;
          v296 += v346 * v346;
          ++v345;
          --v344;
        }

        while (v344);
        goto LABEL_263;
      }
    }

    else
    {
      v296 = 0;
      v343 = 0;
    }

    v470 = v343;
    v343 = v291 & 0x7FFFFFFC;
    v471 = v296;
    v472 = v342 + 2 * v8 + 2 * v7 + v470;
    v473 = v470 - v343;
    do
    {
      v474 = vshr_n_s16(*&v12->i8[2 * v472], 3uLL);
      v471 = vmlal_s16(v471, v474, v474);
      v472 += 4;
      v473 += 4;
    }

    while (v473);
    v296 = vaddvq_s32(v471);
    if (v343 != v291)
    {
      goto LABEL_261;
    }

LABEL_263:
    if (v341 < 0)
    {
      v347 = 0x7FFFFFFF;
    }

    else
    {
      v347 = v341;
    }

    v292 = v347 + (v296 >> 1);
    goto LABEL_267;
  }

  v296 = 0;
LABEL_267:
  if (v292 < 0)
  {
    v348 = 0x7FFFFFFF;
  }

  else
  {
    v348 = v292;
  }

  v479[3] = v348;
  *(v3 + 72) = v296;
  v349 = *(v3 + 144);
  if (v349 > 999)
  {
    v350 = 0;
  }

  else
  {
    *(v3 + 144) = v349 + 1;
    v350 = 0x7FFF / ((v349 >> 4) + 1);
  }

  v351 = *(v3 + 96);
  v352 = *(v3 + 128) + v64;
  if (v352 < 0)
  {
    v352 = 0x7FFFFFFF;
  }

  v353 = 0x7FFFFFFFu / v352;
  if (v352 <= 8 * v351)
  {
    if (v352 >= v351)
    {
      v354 = (v351 * v353) << 16 >> 37;
    }

    else
    {
      LODWORD(v354) = 1024;
    }
  }

  else
  {
    LODWORD(v354) = 128;
  }

  if (v354 <= v350)
  {
    LOWORD(v354) = v350;
  }

  v355 = *(v3 + 112) + ((v354 * (v353 - *(v3 + 112))) >> 16);
  *(v3 + 112) = v355;
  v356 = 0x7FFFFFFF / v355;
  if (v356 >= 0xFFFFFF)
  {
    v356 = 0xFFFFFF;
  }

  *(v3 + 96) = v356;
  v357 = *(v3 + 100);
  if (*(v3 + 132) + v68 < 0)
  {
    v358 = 0x7FFFFFFF;
  }

  else
  {
    v358 = *(v3 + 132) + v68;
  }

  v359 = 0x7FFFFFFFu / v358;
  if (v358 <= 8 * v357)
  {
    if (v358 >= v357)
    {
      v360 = (v357 * v359) << 16 >> 37;
    }

    else
    {
      LODWORD(v360) = 1024;
    }
  }

  else
  {
    LODWORD(v360) = 128;
  }

  if (v360 <= v350)
  {
    LOWORD(v360) = v350;
  }

  v361 = *(v3 + 116) + ((v360 * (v359 - *(v3 + 116))) >> 16);
  *(v3 + 116) = v361;
  v362 = 0x7FFFFFFF / v361;
  if (v362 >= 0xFFFFFF)
  {
    v363 = 0xFFFFFF;
  }

  else
  {
    v363 = v362;
  }

  *(v3 + 100) = v363;
  v364 = *(v3 + 104);
  v365 = v290;
  v366 = *(v3 + 136) + v290;
  if (v366 < 0)
  {
    v366 = 0x7FFFFFFF;
  }

  v367 = 0x7FFFFFFFu / v366;
  v476 = v13;
  if (v366 <= 8 * v364)
  {
    if (v366 >= v364)
    {
      v368 = (v364 * v367) << 16 >> 37;
    }

    else
    {
      LODWORD(v368) = 1024;
    }
  }

  else
  {
    LODWORD(v368) = 128;
  }

  if (v368 <= v350)
  {
    LOWORD(v368) = v350;
  }

  v369 = *(v3 + 120) + ((v368 * (v367 - *(v3 + 120))) >> 16);
  *(v3 + 120) = v369;
  v370 = 0x7FFFFFFF / v369;
  if (v370 >= 0xFFFFFF)
  {
    v370 = 0xFFFFFF;
  }

  *(v3 + 104) = v370;
  v371 = *(v3 + 108);
  if (*(v3 + 140) + v348 < 0)
  {
    v372 = 0x7FFFFFFF;
  }

  else
  {
    v372 = *(v3 + 140) + v348;
  }

  v373 = 0x7FFFFFFFu / v372;
  LODWORD(v374) = 128;
  if (v372 <= 8 * v371)
  {
    if (v372 >= v371)
    {
      v374 = (v371 * v373) << 16 >> 37;
    }

    else
    {
      LODWORD(v374) = 1024;
    }
  }

  v375 = 0;
  v376 = 0;
  v377 = 0;
  if (v374 > v350)
  {
    LOWORD(v350) = v374;
  }

  v378 = *(v3 + 124) + ((v350 * (v373 - *(v3 + 124))) >> 16);
  v379 = 0x7FFFFFFF / v378;
  if (0x7FFFFFFF / v378 >= 0xFFFFFF)
  {
    v379 = 0xFFFFFF;
  }

  *(v3 + 124) = v378;
  *(v3 + 108) = v379;
  do
  {
    while (1)
    {
      v382 = v479[v375];
      v383 = *(v3 + 96 + v375 * 4);
      v384 = v382 - v383;
      if ((v382 - v383) >= 1)
      {
        break;
      }

      v478[v375++] = 256;
      if (v375 == 4)
      {
        goto LABEL_346;
      }
    }

    v385 = v382 << 8;
    if (v382 >= 0x800000)
    {
      v383 >>= 8;
      v385 = v479[v375];
    }

    LODWORD(v381) = v385 / (v383 + 1);
    v478[v375] = v381;
    v386 = __clz(v381);
    if (v386 != 24)
    {
      if (v381 <= 0x7F)
      {
        LOBYTE(v381) = v381 << (v386 - 24);
      }

      else
      {
        LOBYTE(v381) = (v381 << (v386 + 8)) | (v381 >> (24 - v386));
      }
    }

    v387 = (v381 & 0x7F) - (v386 << 7) + ((179 * (v381 & 0x7F) * (128 - (v381 & 0x7F))) >> 16) + 2944;
    LOWORD(v381) = v387;
    if (!(v384 >> 20))
    {
      v388 = __clz(v384);
      if (v388 != 24)
      {
        if (v384 <= 0x7F)
        {
          LOBYTE(v384) = v384 << (v388 - 24);
        }

        else
        {
          LOBYTE(v384) = (v384 << (v388 + 8)) | (v384 >> (24 - v388));
        }
      }

      if (v388)
      {
        v380 = 0x8000;
      }

      else
      {
        v380 = 46214;
      }

      v381 = (v387 * (((v380 >> (v388 >> 1)) + ((213 * (v380 >> (v388 >> 1)) * (v384 & 0x7F)) >> 16)) << 6)) >> 16;
    }

    v377 += v387 * v387;
    v376 += (v381 * tiltWeights[v375++]) >> 16;
  }

  while (v375 != 4);
LABEL_346:
  if (v377 >= 0)
  {
    v389 = v377;
  }

  else
  {
    v389 = v377 + 3;
  }

  if (v377 < 4)
  {
    v390 = -128;
LABEL_351:
    LODWORD(v391) = sigm_LUT_neg_Q15[-v390 >> 5] - sigm_LUT_slope_Q10[2 * (-v390 >> 5)] * (-v390 & 0x1F);
    goto LABEL_352;
  }

  v393 = v389 >> 2;
  v394 = __clz(v389 >> 2);
  if (v394 != 24)
  {
    if (v393 > 0x7F)
    {
      v393 = (v393 << (v394 + 8)) | (v393 >> (24 - v394));
    }

    else
    {
      v393 <<= v394 - 24;
    }
  }

  if (v394)
  {
    v431 = 0x8000;
  }

  else
  {
    v431 = 46214;
  }

  v432 = (45000 * (3 * ((v431 >> (v394 >> 1)) + ((213 * (v431 >> (v394 >> 1)) * (v393 & 0x7F)) >> 16)))) >> 16;
  v390 = v432 - 128;
  if (v432 > 127)
  {
    if (v390 <= 0xBF)
    {
      LODWORD(v391) = sigm_LUT_pos_Q15[v390 >> 5] + sigm_LUT_slope_Q10[2 * (v390 >> 5)] * (v432 & 0x1F);
    }

    else
    {
      LODWORD(v391) = 0x7FFF;
    }

    goto LABEL_352;
  }

  if (v390 >= 0xFFFFFF41)
  {
    goto LABEL_351;
  }

  LODWORD(v391) = 0;
LABEL_352:
  if ((v376 & 0x80000000) != 0)
  {
    if (v376 >= 0xFFFFFF41)
    {
      v392 = sigm_LUT_neg_Q15[-v376 >> 5] - sigm_LUT_slope_Q10[2 * (-v376 >> 5)] * (-v376 & 0x1F);
    }

    else
    {
      v392 = 0;
    }
  }

  else if (v376 <= 0xBF)
  {
    v392 = sigm_LUT_pos_Q15[v376 >> 5] + sigm_LUT_slope_Q10[2 * (v376 >> 5)] * (v376 & 0x1F);
  }

  else
  {
    v392 = 0x7FFF;
  }

  *(v3 + 4728) = 2 * v392 - 0x8000;
  v395 = (((v68 - v363) >> 3) & 0xFFFFFFFE) + ((v64 - v356) >> 4) + 3 * ((v365 - v370) >> 4) + 4 * ((v348 - v379) >> 4);
  v396 = 5 * *(v3 + 4576);
  v397 = v476;
  v398 = v395 >> (v476 == 20 * *(v3 + 4576));
  if (v398 <= 0)
  {
    LODWORD(v391) = v391 >> 1;
  }

  else if (!(v398 >> 14))
  {
    v399 = v398 << 16;
    v400 = __clz(v399);
    v401 = (v399 >> (24 - v400)) & 0x7F;
    if (v400)
    {
      v402 = 0x8000;
    }

    else
    {
      v402 = 46214;
    }

    v391 = (v391 * ((v402 >> (v400 >> 1)) + ((213 * v401 * (v402 >> (v400 >> 1))) >> 16) + 0x8000)) >> 16;
  }

  v403 = v391 >> 7;
  if (v391 >> 7 >= 255)
  {
    v403 = 255;
  }

  *(v3 + 4532) = v403;
  v404 = (v391 * v391) >> 20 >> (v397 == 2 * v396);
  v405 = *(v3 + 76) + ((v404 * (v478[0] - *(v3 + 76))) >> 16);
  *(v3 + 76) = v405;
  v406 = __clz(v405);
  if (v406 != 24)
  {
    v407 = v405 > 0x7F;
    v408 = (v405 << (v406 + 8)) | (v405 >> (24 - v406));
    v405 <<= v406 - 24;
    if (v407)
    {
      LOBYTE(v405) = v408;
    }
  }

  v409 = 3 * ((v405 & 0x7F) - (v406 << 7) + ((179 * (v405 & 0x7F) * (128 - (v405 & 0x7F))) >> 16)) + 6784;
  v410 = v409 >> 4;
  if (v409 >> 4 < 0)
  {
    if (v410 >= 0xFFFFFF41)
    {
      v411 = sigm_LUT_neg_Q15[-v410 >> 5] - sigm_LUT_slope_Q10[2 * (-v410 >> 5)] * (-v410 & 0x1F);
    }

    else
    {
      v411 = 0;
    }
  }

  else if (v410 <= 0xBF)
  {
    v411 = sigm_LUT_pos_Q15[v410 >> 5] + sigm_LUT_slope_Q10[2 * (v410 >> 5)] * ((v409 >> 4) & 0x1F);
  }

  else
  {
    v411 = 0x7FFF;
  }

  *(v3 + 4712) = v411;
  v412 = *(v3 + 80) + ((v404 * (v478[1] - *(v3 + 80))) >> 16);
  *(v3 + 80) = v412;
  v413 = __clz(v412);
  if (v413 != 24)
  {
    v407 = v412 > 0x7F;
    v414 = (v412 << (v413 + 8)) | (v412 >> (24 - v413));
    v412 <<= v413 - 24;
    if (v407)
    {
      LOBYTE(v412) = v414;
    }
  }

  v415 = 3 * ((v412 & 0x7F) - (v413 << 7) + ((179 * (v412 & 0x7F) * (128 - (v412 & 0x7F))) >> 16)) + 6784;
  v416 = v415 >> 4;
  if (v415 >> 4 < 0)
  {
    if (v416 >= 0xFFFFFF41)
    {
      v417 = sigm_LUT_neg_Q15[-v416 >> 5] - sigm_LUT_slope_Q10[2 * (-v416 >> 5)] * (-v416 & 0x1F);
    }

    else
    {
      v417 = 0;
    }
  }

  else if (v416 <= 0xBF)
  {
    v417 = sigm_LUT_pos_Q15[v416 >> 5] + sigm_LUT_slope_Q10[2 * (v416 >> 5)] * ((v415 >> 4) & 0x1F);
  }

  else
  {
    v417 = 0x7FFF;
  }

  *(v3 + 4716) = v417;
  v418 = *(v3 + 84) + ((v404 * (v478[2] - *(v3 + 84))) >> 16);
  *(v3 + 84) = v418;
  v419 = __clz(v418);
  if (v419 != 24)
  {
    v407 = v418 > 0x7F;
    v420 = (v418 << (v419 + 8)) | (v418 >> (24 - v419));
    v418 <<= v419 - 24;
    if (v407)
    {
      LOBYTE(v418) = v420;
    }
  }

  v421 = 3 * ((v418 & 0x7F) - (v419 << 7) + ((179 * (v418 & 0x7F) * (128 - (v418 & 0x7F))) >> 16)) + 6784;
  v422 = v421 >> 4;
  if (v421 >> 4 < 0)
  {
    if (v422 >= 0xFFFFFF41)
    {
      v423 = sigm_LUT_neg_Q15[-v422 >> 5] - sigm_LUT_slope_Q10[2 * (-v422 >> 5)] * (-v422 & 0x1F);
    }

    else
    {
      v423 = 0;
    }
  }

  else if (v422 <= 0xBF)
  {
    v423 = sigm_LUT_pos_Q15[v422 >> 5] + sigm_LUT_slope_Q10[2 * (v422 >> 5)] * ((v421 >> 4) & 0x1F);
  }

  else
  {
    v423 = 0x7FFF;
  }

  *(v3 + 4720) = v423;
  v424 = *(v3 + 88) + ((v404 * (v478[3] - *(v3 + 88))) >> 16);
  *(v3 + 88) = v424;
  v425 = __clz(v424);
  if (v425 != 24)
  {
    v407 = v424 > 0x7F;
    v426 = (v424 << (v425 + 8)) | (v424 >> (24 - v425));
    v424 <<= v425 - 24;
    if (v407)
    {
      LOBYTE(v424) = v426;
    }
  }

  v427 = 3 * ((v424 & 0x7F) - (v425 << 7) + ((179 * (v424 & 0x7F) * (128 - (v424 & 0x7F))) >> 16)) + 6784;
  v428 = v427 >> 4;
  if (v427 >> 4 < 0)
  {
    if (v428 >= 0xFFFFFF41)
    {
      v429 = sigm_LUT_neg_Q15[-v428 >> 5] - sigm_LUT_slope_Q10[2 * (-v428 >> 5)] * (-v428 & 0x1F);
    }

    else
    {
      v429 = 0;
    }
  }

  else if (v428 <= 0xBF)
  {
    v429 = sigm_LUT_pos_Q15[v428 >> 5] + sigm_LUT_slope_Q10[2 * (v428 >> 5)] * ((v427 >> 4) & 0x1F);
  }

  else
  {
    v429 = 0x7FFF;
  }

  *(v3 + 4724) = v429;
  return 0;
}

void exp_rotation(unint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (a2 <= 2 * a5 || !a6)
  {
    return;
  }

  v10 = a2 / (a2 + exp_rotation_SPREAD_FACTOR[a6 - 1] * a5);
  v11 = (v10 * v10) * 0.5;
  v12 = cos((v11 * 1.5708));
  v13 = cos(((1.0 - v11) * 1.5708));
  if (a2 >= 8 * a4)
  {
    v14 = 0;
    v15 = a4;
    do
    {
      v16 = (a4 >> 2) + v15 * (v14 + 2);
      ++v14;
      v15 += a4;
    }

    while (v16 < a2);
  }

  else
  {
    v14 = 0;
  }

  if (a4 < 1)
  {
    return;
  }

  v17 = v12;
  *&v13 = v13;
  v18 = a2 / a4;
  v19 = -*&v13;
  v20 = (v18 - 3);
  v21 = -v17;
  v22 = v18 - v14;
  v23 = v14;
  v24 = 2 * v14;
  v25 = (v18 + ~(2 * v14));
  if (a3 < 0)
  {
    v78 = 0;
    v79 = a4;
    v80 = 4 * v18;
    v81 = a1 + 4 * v14;
    v82 = a1 + 4 * (a4 - 1) * v18;
    v83 = v82 + 4 * v14;
    v84 = v83 + 4 * v25 + 4;
    v85 = (v18 - v24);
    v86 = (v18 + ~v14);
    v87 = v86 + 1;
    v88 = v83 + 4 * v86 + 4;
    v90 = v81 < v82 + 4 * v86 + 4 && v88 > a1;
    LODWORD(v92) = v81 < v82 + 4 * v25 + 4 && v84 > a1;
    v93 = v18 < 0 || v90;
    v94 = vdupq_lane_s32(*&v13, 0);
    v95 = a1 + 4 * (v14 + v25);
    if (v18 < 0)
    {
      v92 = 1;
    }

    else
    {
      v92 = v92;
    }

    while (1)
    {
      v96 = (a1 + 4 * v78 * v18);
      if (!v14)
      {
        goto LABEL_102;
      }

      if (v22 >= 1)
      {
        if ((v86 < 3) | v93 & 1)
        {
          v97 = 0;
          v98 = (a1 + 4 * v78 * v18);
LABEL_85:
          v104 = v22 - v97;
          do
          {
            v105 = *v98;
            v106 = v98[v14];
            v98[v14] = (*v98 * v17) + (*&v13 * v106);
            *v98++ = (v106 * v21) + (*&v13 * v105);
            --v104;
          }

          while (v104);
          goto LABEL_87;
        }

        v99 = 0;
        v98 = &v96[v87 & 0x1FFFFFFFCLL];
        v100 = v87 & 0x1FFFFFFFCLL;
        do
        {
          v101 = &v96[v99];
          v102 = *v101;
          v103 = *(v101 + 4 * v14);
          *(v101 + 4 * v14) = vmlaq_f32(vmulq_n_f32(*v101, v17), v103, v94);
          *v101 = vmlaq_f32(vmulq_n_f32(v103, v21), v102, v94);
          v99 += 4;
          v100 -= 4;
        }

        while (v100);
        v97 = v87 & 0xFFFFFFFC;
        if (v87 != (v87 & 0x1FFFFFFFCLL))
        {
          goto LABEL_85;
        }
      }

LABEL_87:
      if ((v25 & 0x80000000) == 0)
      {
        v107 = &v96[v25];
        if (v85 >= 0xC)
        {
          v110 = v95 + v80 * v78 - 4 * v25 > v95 + v80 * v78 || &v107[-v25] > v107;
          v111 = v110 | v92;
          v108 = v18 + ~(2 * v14);
          if ((v111 & 1) == 0)
          {
            v112 = v92;
            v113 = v95;
            v114 = 0;
            v115 = v85 & 0xFFFFFFFC;
            do
            {
              v116 = &v107[-v114];
              v117 = *(v116 - 3);
              v118 = &v116[v14];
              v119 = *(v118 - 3);
              *(v118 - 3) = vmlaq_f32(vmulq_n_f32(v117, v17), v119, v94);
              *(v116 - 3) = vmlaq_f32(vmulq_n_f32(v119, v21), v117, v94);
              v114 += 4;
              v115 -= 4;
            }

            while (v115);
            v108 = v25 - (v85 & 0xFFFFFFFC);
            v107 -= v85 & 0xFFFFFFFC;
            v95 = v113;
            v92 = v112;
            if ((v85 & 0xFFFFFFFC) == v85)
            {
              goto LABEL_102;
            }
          }
        }

        else
        {
          v108 = v18 + ~(2 * v14);
        }

        v120 = v108 + 1;
        do
        {
          v121 = *v107;
          v122 = v107[v14];
          v107[v14] = (*v107 * v17) + (*&v13 * v122);
          *v107-- = (v122 * v21) + (*&v13 * v121);
          --v120;
        }

        while (v120);
      }

LABEL_102:
      if (v18 >= 2)
      {
        v123 = *v96;
        v124 = v18 - 1;
        v125 = (a1 + 4 * v78 * v18);
        v126 = v125;
        do
        {
          v127 = v126[1];
          *++v126 = (v123 * *&v13) + (v17 * v127);
          *v125 = (v127 * v19) + (v17 * v123);
          v123 = (v123 * *&v13) + (v17 * v127);
          v125 = v126;
          --v124;
        }

        while (v124);
      }

      if ((v20 & 0x80000000) == 0)
      {
        v128 = &v96[v20];
        v129 = *(a1 + 4 * v20 + 4 + v80 * v78);
        v130 = v18 - 3;
        do
        {
          v131 = v130;
          v132 = (*v128 * *&v13) + (v17 * v129);
          v129 = (v129 * v19) + (v17 * *v128);
          *v128 = v129;
          v128[1] = v132;
          --v128;
          --v130;
        }

        while (v131);
      }

      if (++v78 == v79)
      {
        return;
      }
    }
  }

  if (v14)
  {
    v26 = 0;
    v27 = 4 * v18;
    v28 = a1 + 4 * v14;
    v29 = a1 + 4 * (a4 - 1) * v18;
    v30 = v29 + 4 * v14;
    v31 = v30 + 4 * v25 + 4;
    v32 = (v18 - v24);
    v33 = (v18 + ~v14);
    v34 = v33 + 1;
    v35 = 4 * v33;
    v36 = v30 + v35 + 4;
    v38 = v28 < v29 + v35 + 4 && v36 > a1;
    v40 = v28 < v29 + 4 * v25 + 4 && v31 > a1;
    v41 = v18 < 0 || v38;
    v42 = vdupq_lane_s32(*&v13, 0);
    if (v18 < 0)
    {
      v40 = 1;
    }

    while (1)
    {
      v43 = (a1 + 4 * v26 * v18);
      if (v18 >= 2)
      {
        v44 = *v43;
        v45 = v18 - 1;
        v46 = (a1 + 4 * v26 * v18);
        v47 = v46;
        do
        {
          v48 = v47[1];
          *++v47 = (v44 * v19) + (v17 * v48);
          *v46 = (v48 * *&v13) + (v17 * v44);
          v44 = (v44 * v19) + (v17 * v48);
          v46 = v47;
          --v45;
        }

        while (v45);
      }

      if ((v20 & 0x80000000) == 0)
      {
        v49 = &v43[v20];
        v50 = *(a1 + 4 * v20 + 4 + v27 * v26);
        v51 = v18 - 3;
        do
        {
          v52 = v51;
          v53 = (*v49 * v19) + (v17 * v50);
          v50 = (v50 * *&v13) + (v17 * *v49);
          *v49 = v50;
          v49[1] = v53;
          --v49;
          --v51;
        }

        while (v52);
      }

      if (v22 >= 1)
      {
        if ((v33 < 3) | v41 & 1)
        {
          v54 = 0;
          v55 = (a1 + 4 * v26 * v18);
LABEL_41:
          v61 = v22 - v54;
          do
          {
            v62 = *v55;
            v63 = v55[v23];
            v55[v23] = (*v55 * v21) + (*&v13 * v63);
            *v55++ = (v63 * v17) + (*&v13 * v62);
            --v61;
          }

          while (v61);
          goto LABEL_43;
        }

        v56 = 0;
        v55 = &v43[v34 & 0x1FFFFFFFCLL];
        v57 = v34 & 0x1FFFFFFFCLL;
        do
        {
          v58 = &v43[v56];
          v59 = *v58;
          v60 = *(v58 + 4 * v23);
          *(v58 + 4 * v23) = vmlaq_f32(vmulq_n_f32(*v58, v21), v60, v42);
          *v58 = vmlaq_f32(vmulq_n_f32(v60, v17), v59, v42);
          v56 += 4;
          v57 -= 4;
        }

        while (v57);
        v54 = v34 & 0xFFFFFFFC;
        if (v34 != (v34 & 0x1FFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }

LABEL_43:
      if ((v25 & 0x80000000) == 0)
      {
        v64 = &v43[v25];
        if (v32 >= 0xC)
        {
          v66 = a1 + 4 * (v23 + v25) + v27 * v26;
          v68 = v66 - 4 * v25 > v66 || &v64[-v25] > v64;
          v65 = v25;
          if (!v68 && !v40)
          {
            v69 = 0;
            v70 = v32 & 0xFFFFFFFC;
            do
            {
              v71 = &v64[-v69];
              v72 = *(v71 - 3);
              v73 = &v71[v23];
              v74 = *(v73 - 3);
              *(v73 - 3) = vmlaq_f32(vmulq_n_f32(v72, v21), v74, v42);
              *(v71 - 3) = vmlaq_f32(vmulq_n_f32(v74, v17), v72, v42);
              v69 += 4;
              v70 -= 4;
            }

            while (v70);
            v65 = v25 - (v32 & 0xFFFFFFFC);
            v64 -= v32 & 0xFFFFFFFC;
            if ((v32 & 0xFFFFFFFC) == v32)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v65 = v25;
        }

        v75 = v65 + 1;
        do
        {
          v76 = *v64;
          v77 = v64[v23];
          v64[v23] = (*v64 * v21) + (*&v13 * v77);
          *v64-- = (v77 * v17) + (*&v13 * v76);
          --v75;
        }

        while (v75);
      }

LABEL_28:
      if (++v26 == a4)
      {
        return;
      }
    }
  }

  if (v18 < 2)
  {
    if ((v20 & 0x80000000) == 0)
    {
      v145 = 0;
      v146 = a1 + 4 * v20;
      v147 = v18;
      v148 = 4 * v18;
      do
      {
        v149 = (v146 + 4 * v145 * v147);
        v150 = *(v146 + 4 + v148 * v145);
        v151 = v20;
        do
        {
          v152 = v151;
          v153 = (*v149 * v19) + (v17 * v150);
          v150 = (v150 * *&v13) + (v17 * *v149);
          *v149 = v150;
          v149[1] = v153;
          --v149;
          --v151;
        }

        while (v152);
        ++v145;
      }

      while (v145 != a4);
    }
  }

  else if ((v20 & 0x80000000) != 0)
  {
    v154 = 0;
    do
    {
      v155 = (a1 + 4 * v154 * v18);
      v156 = *v155;
      v157 = v18 - 1;
      v158 = v155;
      do
      {
        v159 = v158[1];
        *++v158 = (v156 * v19) + (v17 * v159);
        *v155 = (v159 * *&v13) + (v17 * v156);
        v156 = (v156 * v19) + (v17 * v159);
        v155 = v158;
        --v157;
      }

      while (v157);
      ++v154;
    }

    while (v154 != a4);
  }

  else
  {
    v133 = 0;
    do
    {
      v134 = (a1 + 4 * v133 * v18);
      v135 = *v134;
      v136 = v18 - 1;
      v137 = v134;
      v138 = v134;
      do
      {
        v139 = v138[1];
        *++v138 = (v135 * v19) + (v17 * v139);
        *v137 = (v139 * *&v13) + (v17 * v135);
        v135 = (v135 * v19) + (v17 * v139);
        v137 = v138;
        --v136;
      }

      while (v136);
      v140 = &v134[v20];
      v141 = *(a1 + 4 * v20 + 4 + 4 * v18 * v133);
      v142 = v18 - 3;
      do
      {
        v143 = v142;
        v144 = (*v140 * v19) + (v17 * v141);
        v141 = (v141 * *&v13) + (v17 * *v140);
        *v140 = v141;
        v140[1] = v144;
        --v140;
        --v142;
      }

      while (v143);
      ++v133;
    }

    while (v133 != a4);
  }
}

void op_pvq_search_c(float32x4_t *a1, _DWORD *a2, uint64_t a3, int a4)
{
  v5 = a3;
  v88[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x28223BE20](a1, a2, a3);
  v10 = (v88 - ((v9 + 15) & 0x7FFFFFFF0));
  MEMORY[0x28223BE20](v8, v11, v12);
  v15 = (v88 - v14);
  if (v13 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  bzero(v10, 4 * v16);
  if (a4 < 8)
  {
    v17 = 0;
LABEL_9:
    v26 = v16 - v17;
    v27 = v17;
    v28 = &a2[v17];
    v29 = &v15->i8[v27 * 4];
    v30 = &a1->f32[v27];
    do
    {
      v31 = *v30;
      *v29 = *v30 < 0.0;
      v29 += 4;
      *v30++ = fabsf(v31);
      *v28++ = 0;
      --v26;
    }

    while (v26);
    goto LABEL_11;
  }

  v17 = v16 & 0x7FFFFFF8;
  v18 = a1 + 1;
  v19 = v15 + 1;
  v20 = a2 + 4;
  v21.i64[0] = 0x100000001;
  v21.i64[1] = 0x100000001;
  v22 = v17;
  do
  {
    v23 = v18[-1];
    v24 = *v18;
    v25 = vandq_s8(vcltzq_f32(*v18), v21);
    v19[-1] = vandq_s8(vcltzq_f32(v23), v21);
    *v19 = v25;
    v18[-1] = vabsq_f32(v23);
    *v18 = vabsq_f32(v24);
    *(v20 - 1) = 0uLL;
    *v20 = 0uLL;
    v18 += 2;
    v19 += 2;
    v20 += 2;
    v22 -= 8;
  }

  while (v22);
  if (v17 != v16)
  {
    goto LABEL_9;
  }

LABEL_11:
  v32 = 0.0;
  if (v5 <= a4 >> 1)
  {
    v35 = 0.0;
    goto LABEL_35;
  }

  if (a4 >= 8)
  {
    v33 = v16 & 0x7FFFFFF8;
    v36 = a1 + 1;
    v34 = 0.0;
    v37 = v33;
    do
    {
      v34 = (((((((v34 + COERCE_FLOAT(*&v36[-1])) + COERCE_FLOAT(HIDWORD(v36[-1].i64[0]))) + COERCE_FLOAT(v36[-1].i64[1])) + COERCE_FLOAT(HIDWORD(*&v36[-1]))) + COERCE_FLOAT(*v36)) + COERCE_FLOAT(HIDWORD(v36->i64[0]))) + COERCE_FLOAT(v36->i64[1])) + COERCE_FLOAT(HIDWORD(*v36));
      v36 += 2;
      v37 -= 8;
    }

    while (v37);
    if (v33 == v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v33 = 0;
    v34 = 0.0;
  }

  v38 = v16 - v33;
  v39 = &a1->f32[v33];
  do
  {
    v40 = *v39++;
    v34 = v34 + v40;
    --v38;
  }

  while (v38);
LABEL_20:
  if (v34 <= 1.0e-15 || v34 >= 64.0)
  {
    a1->i32[0] = 1065353216;
    if (a4 <= 2)
    {
      v42 = 2;
    }

    else
    {
      v42 = a4;
    }

    bzero(&a1->i32[1], 4 * (v42 - 1));
    v34 = 1.0;
  }

  v43 = (v5 + 0.8) * (1.0 / v34);
  if (a4 < 8)
  {
    v44 = 0;
    v32 = 0.0;
    v35 = 0.0;
LABEL_33:
    v61 = v16 - v44;
    v62 = v44;
    v63 = &v10[v44];
    v64 = &a2[v62];
    v65 = &a1->f32[v62];
    do
    {
      v66 = *v65++;
      v67 = vcvtms_s32_f32(v43 * v66);
      *v64++ = v67;
      v68 = floorf(v43 * v66);
      v35 = v35 + (v68 * v68);
      v32 = v32 + (v66 * v68);
      *v63++ = v68 + v68;
      v5 -= v67;
      --v61;
    }

    while (v61);
    goto LABEL_35;
  }

  v44 = v16 & 0x7FFFFFF8;
  v45 = 0uLL;
  v46 = v5;
  v47 = a1 + 1;
  v48 = (a2 + 4);
  v49 = (v10 + 4);
  v32 = 0.0;
  v50 = v44;
  v35 = 0.0;
  do
  {
    v51 = v47[-1];
    v52 = *v47;
    v53 = vcvtq_s32_f32(vrndmq_f32(vmulq_n_f32(v51, v43)));
    v54 = vcvtq_s32_f32(vrndmq_f32(vmulq_n_f32(*v47, v43)));
    v48[-1] = v53;
    *v48 = v54;
    v55 = vcvtq_f32_s32(v53);
    v56 = vcvtq_f32_s32(v54);
    v57 = vmulq_f32(v55, v55);
    v58 = vmulq_f32(v56, v56);
    v59 = vmulq_f32(v51, v55);
    v60 = vmulq_f32(v52, v56);
    v49[-1] = vaddq_f32(v55, v55);
    *v49 = vaddq_f32(v56, v56);
    v46 = vsubq_s32(v46, v53);
    v45 = vsubq_s32(v45, v54);
    v32 = (((((((v32 + v59.f32[0]) + v59.f32[1]) + v59.f32[2]) + v59.f32[3]) + v60.f32[0]) + v60.f32[1]) + v60.f32[2]) + v60.f32[3];
    v35 = (((((((v35 + v57.f32[0]) + v57.f32[1]) + v57.f32[2]) + v57.f32[3]) + v58.f32[0]) + v58.f32[1]) + v58.f32[2]) + v58.f32[3];
    v47 += 2;
    v48 += 2;
    v49 += 2;
    v50 -= 8;
  }

  while (v50);
  v5 = vaddvq_s32(vaddq_s32(v45, v46));
  if (v44 != v16)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (v5 <= a4 + 3)
  {
    if (v5 >= 1)
    {
      v69 = 0;
      v70 = a1->f32[0];
      if (a4 <= 2)
      {
        v71 = 2;
      }

      else
      {
        v71 = a4;
      }

      do
      {
        v73 = 0;
        v74 = v35 + 1.0;
        v75 = v74 + *v10;
        v76 = (v70 + v32) * (v70 + v32);
        for (i = 1; i != v71; ++i)
        {
          while ((v75 * ((v32 + a1->f32[i]) * (v32 + a1->f32[i]))) <= (v76 * (v74 + v10[i])))
          {
            if (v71 == ++i)
            {
              goto LABEL_41;
            }
          }

          v73 = i;
          v76 = (v32 + a1->f32[i]) * (v32 + a1->f32[i]);
          v75 = v74 + v10[i];
        }

LABEL_41:
        v72 = v10[v73];
        v32 = v32 + a1->f32[v73];
        v10[v73] = v72 + 2.0;
        v35 = v74 + v72;
        ++a2[v73];
        ++v69;
      }

      while (v69 != v5);
    }
  }

  else
  {
    *a2 += v5;
  }

  if (a4 <= 7)
  {
    v78 = 0;
LABEL_53:
    v83 = v16 - v78;
    v84 = v78;
    v85 = &v15->i8[4 * v78];
    v86 = &a2[v84];
    do
    {
      v87 = *v85;
      v85 += 4;
      *v86 = (*v86 ^ -v87) + v87;
      ++v86;
      --v83;
    }

    while (v83);
    return;
  }

  v78 = v16 & 0x7FFFFFF8;
  v79 = (a2 + 4);
  v80 = &v15[1];
  v81 = v78;
  do
  {
    v82 = vaddq_s32(veorq_s8(*v79, vnegq_s32(*v80)), *v80);
    v79[-1] = vaddq_s32(veorq_s8(v79[-1], vnegq_s32(v80[-1])), v80[-1]);
    *v79 = v82;
    v79 += 2;
    v80 += 2;
    v81 -= 8;
  }

  while (v81);
  if (v78 != v16)
  {
    goto LABEL_53;
  }
}

uint64_t alg_quant(float32x4_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, float a8)
{
  v14 = a2;
  v67[1] = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x28223BE20](a1, a2, a3);
  v18 = (v67 - v17);
  exp_rotation(v16, v19, 1, v20, a3, a4);
  op_pvq_search_c(a1, v18, a3, v14);
  v22 = v21;
  v23 = v14;
  v24 = v18->i32[v14 - 1];
  v25 = v24 >> 31;
  if (v24 >= 0)
  {
    v26 = v18->i32[v14 - 1];
  }

  else
  {
    v26 = -v24;
  }

  v27 = 2;
  do
  {
    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    v29 = *(&X509_CERT_AUX_it.sname + v28);
    if (v27 <= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v27;
    }

    v25 += *(v29 + 4 * v30);
    v31 = v18[-1].i32[v23 + 2];
    if (v31 >= 0)
    {
      v32 = v18[-1].i32[v23 + 2];
    }

    else
    {
      v32 = -v31;
    }

    v26 += v32;
    if (v31 < 0)
    {
      if (v27 > v26)
      {
        v33 = v26 + 1;
      }

      else
      {
        v33 = v27;
      }

      v34 = *(&X509_CERT_AUX_it.sname + v33);
      if (v27 <= v26 + 1)
      {
        v35 = v26 + 1;
      }

      else
      {
        v35 = v27;
      }

      v25 += *(v34 + 4 * v35);
    }

    --v23;
    ++v27;
  }

  while (v23 > 1);
  if (v14 >= a3)
  {
    v36 = a3;
  }

  else
  {
    v36 = v14;
  }

  v37 = *(&X509_CERT_AUX_it.sname + v36);
  if (v14 <= a3)
  {
    v38 = a3;
  }

  else
  {
    v38 = v14;
  }

  v39 = *(v37 + 4 * v38);
  if (a3 + 1 < v14)
  {
    v40 = a3 + 1;
  }

  else
  {
    v40 = v14;
  }

  v41 = *(&X509_CERT_AUX_it.sname + v40);
  if (a3 + 1 > v14)
  {
    v42 = a3 + 1;
  }

  else
  {
    v42 = v14;
  }

  ec_enc_uint(a6, v25, *(v41 + 4 * v42) + v39);
  if (a7)
  {
    v43 = (1.0 / sqrtf(v22)) * a8;
    if (v14 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v14;
    }

    if (v14 >= 8)
    {
      v45 = v44 & 0x7FFFFFF8;
      v46 = v18 + 1;
      v47 = a1 + 1;
      v48 = v45;
      do
      {
        v49 = vmulq_n_f32(vcvtq_f32_s32(*v46), v43);
        v47[-1] = vmulq_n_f32(vcvtq_f32_s32(v46[-1]), v43);
        *v47 = v49;
        v46 += 2;
        v47 += 2;
        v48 -= 8;
      }

      while (v48);
      if (v45 == v44)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v45 = 0;
    }

    v50 = v44 - v45;
    v51 = v45;
    v52 = &a1->f32[v45];
    v53 = &v18->i32[v51];
    do
    {
      v54 = *v53++;
      *v52++ = v43 * v54;
      --v50;
    }

    while (v50);
LABEL_46:
    exp_rotation(a1, v14, -1, a5, a3, a4);
  }

  if (a5 >= 2)
  {
    v56 = 0;
    LODWORD(result) = 0;
    v57 = v14 / a5;
    while (1)
    {
      v58 = &v18->i32[v56 * v57];
      if (v57 >= 8)
      {
        v61 = 0;
        v62 = 0uLL;
        v63 = v57 & 0x7FFFFFF8;
        v64 = 0uLL;
        do
        {
          v65 = &v58[v61];
          v62 = vorrq_s8(*v65, v62);
          v64 = vorrq_s8(v65[1], v64);
          v61 += 8;
          v63 -= 8;
        }

        while (v63);
        v66 = vorrq_s8(v64, v62);
        *v66.i8 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
        v60 = v66.i32[0] | v66.i32[1];
        v59 = v57 & 0x7FFFFFF8;
        if (v59 == v57)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }

      do
      {
        v60 |= v58[v59++];
      }

      while (v59 < v57);
LABEL_51:
      result = ((v60 != 0) << v56++) | result;
      if (v56 == a5)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t alg_unquant(unint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, float a6)
{
  v9 = a3;
  v10 = a2;
  v41[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1, a2, a3);
  v13 = (v41 - v12);
  v17 = (1.0 / sqrtf(decode_pulses((v41 - v12), v14, v15, v16))) * a6;
  if (v10 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v10;
  }

  if (v10 < 8)
  {
    v19 = 0;
LABEL_9:
    v24 = v18 - v19;
    v25 = v19;
    v26 = (a1 + 4 * v19);
    v27 = &v13->i32[v25];
    do
    {
      v28 = *v27++;
      *v26++ = v17 * v28;
      --v24;
    }

    while (v24);
    goto LABEL_11;
  }

  v19 = v18 & 0x7FFFFFF8;
  v20 = v13 + 1;
  v21 = (a1 + 16);
  v22 = v19;
  do
  {
    v23 = vmulq_n_f32(vcvtq_f32_s32(*v20), v17);
    v21[-1] = vmulq_n_f32(vcvtq_f32_s32(v20[-1]), v17);
    *v21 = v23;
    v20 += 2;
    v21 += 2;
    v22 -= 8;
  }

  while (v22);
  if (v19 != v18)
  {
    goto LABEL_9;
  }

LABEL_11:
  exp_rotation(a1, v10, -1, a5, v9, a4);
  if (a5 >= 2)
  {
    v30 = 0;
    LODWORD(result) = 0;
    v31 = v10 / a5;
    while (1)
    {
      v32 = &v13->i8[4 * v30 * v31];
      if (v31 >= 8)
      {
        v35 = 0;
        v36 = 0uLL;
        v37 = v31 & 0x7FFFFFF8;
        v38 = 0uLL;
        do
        {
          v39 = &v32[4 * v35];
          v36 = vorrq_s8(*v39, v36);
          v38 = vorrq_s8(v39[1], v38);
          v35 += 8;
          v37 -= 8;
        }

        while (v37);
        v40 = vorrq_s8(v38, v36);
        *v40.i8 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
        v34 = v40.i32[0] | v40.i32[1];
        v33 = v31 & 0x7FFFFFF8;
        if (v33 == v31)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      do
      {
        v34 |= *&v32[4 * v33++];
      }

      while (v33 < v31);
LABEL_15:
      result = ((v34 != 0) << v30++) | result;
      if (v30 == a5)
      {
        return result;
      }
    }
  }

  return 1;
}

_BYTE *silk_VQ_WMat_EC_c(_BYTE *result, unsigned int *a2, int *a3, _DWORD *a4, _DWORD *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, int a11, int a12)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = a6[2];
  v15 = a6[3];
  v16 = a6[4];
  *a3 = 0x7FFFFFFF;
  *a2 = 0x7FFFFFFF;
  *result = 0;
  if (a12 >= 1)
  {
    v17 = 0;
    v18 = v12 << 7;
    v19 = (a7 + 2);
    do
    {
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = ((((*(v19 - 2) * (*a5 * *(v19 - 2) + 2 * (a5[1] * *(v19 - 1) - v18 + a5[2] * v20 + a5[3] * v21 + a5[4] * v22))) << 16) + ((*(v19 - 1) * (a5[6] * *(v19 - 1) + 2 * (a5[7] * v20 - (v13 << 7) + a5[8] * v21 + a5[9] * v22))) >> 16 << 32) + ((*v19 * (a5[12] * v20 + 2 * (-128 * v14 + a5[13] * v21 + a5[14] * v22))) >> 16 << 32) + ((v19[1] * (a5[18] * v21 - (v15 << 8) + 2 * v22 * a5[19])) >> 16 << 32) + 0x802100000000) >> 32) + ((v19[2] * (-256 * v16 + a5[24] * v22)) >> 16);
      if (v23 >= 0)
      {
        v24 = *(a8 + v17);
        v25 = v23 + (((v24 - a11) & ~((v24 - a11) >> 31)) << 11);
        v26 = __clz(v25);
        v27 = v25;
        if (v26 != 24)
        {
          if (v25 <= 0x7F)
          {
            v27 = v25 << (v26 - 24);
          }

          else
          {
            v27 = (v25 << (v26 + 8)) | (v25 >> (24 - v26));
          }
        }

        v28 = ((179 * (v27 & 0x7F) * (128 - (v27 & 0x7F)) - (v26 << 23) + ((v27 & 0x7F) << 16) + 0x8000000) >> 16) * a10 + 4 * *(a9 + v17);
        if (v28 <= *a3)
        {
          *a3 = v28;
          *a2 = v25;
          *result = v17;
          *a4 = v24;
        }
      }

      v19 += 5;
      ++v17;
    }

    while (a12 != v17);
  }

  return result;
}

void *silk_NSQ_wrapper_FLP(_DWORD *a1, uint64_t a2, char *a3, _DWORD *a4, uint64_t a5, int8x16_t *a6)
{
  v121 = *MEMORY[0x277D85DE8];
  v6 = a1[1145];
  if (v6 < 1)
  {
    v21 = *(a2 + 692);
    goto LABEL_30;
  }

  v7 = a1[1159];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (a2 + 244);
    v10 = v115;
    v11.i64[0] = 0x4600000046000000;
    v11.i64[1] = 0x4600000046000000;
    do
    {
      if (v7 >= 8)
      {
        v13 = v7 & 0x7FFFFFF8;
        v14 = v9;
        v15 = v10;
        do
        {
          v16 = *v14;
          v17 = v14[1];
          v14 += 2;
          v18 = vmulq_f32(v17, v11);
          v19 = vmulq_f32(v16, v11);
          *v15++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v19.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v19, v19, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v18.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v18, v18, 8uLL))))));
          v13 -= 8;
        }

        while (v13);
        v12 = v7 & 0x7FFFFFF8;
        if (v12 == v7)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v10->i16[v12] = rintf(v9->f32[v12] * 8192.0);
        ++v12;
      }

      while (v7 != v12);
LABEL_4:
      ++v8;
      v10 += 3;
      v9 += 6;
    }

    while (v8 != v6);
  }

  if (v6 >= 4)
  {
    v22 = (a2 + 628);
    v20 = v6 & 0x7FFFFFFC;
    v23 = v114;
    v24 = v113;
    v25 = v112;
    v26 = vdupq_n_s32(0x46800000u);
    v27 = v20;
    v28 = (a2 + 628);
    do
    {
      v29 = v28[1];
      ++v28;
      v30 = vmulq_f32(v29, v26);
      v31 = vmulq_f32(*v22, v26);
      *v23++ = vsliq_n_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), 0x10uLL);
      v32 = v22[3];
      v33 = vmulq_f32(v22[2], v26);
      *v24++ = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL)))));
      v34 = vmulq_f32(v32, v26);
      *v25++ = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL)))));
      v22 = v28;
      v27 -= 4;
    }

    while (v27);
    if (v20 == v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v20 = 0;
  }

  v35 = v6 - v20;
  v36 = 4 * v20;
  v37 = &v112[v20];
  v38 = (v36 + a2 + 676);
  v39 = &v113[v36];
  v40 = &v114[v36];
  do
  {
    *v40++ = rintf(*(v38 - 12) * 16384.0) | (rintf(*(v38 - 8) * 16384.0) << 16);
    *v39++ = rintf(*(v38 - 4) * 16384.0);
    v41 = *v38++;
    *v37++ = rintf(v41 * 16384.0);
    --v35;
  }

  while (v35);
LABEL_20:
  v21 = *(a2 + 692);
  v42 = 5 * v6;
  if (5 * v6 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  if (v42 <= 7)
  {
    v44 = 0;
LABEL_28:
    v53 = v43 - v44;
    v54 = &v116[v44];
    v55 = (a2 + 4 * v44 + 144);
    do
    {
      v56 = *v55++;
      *v54++ = rintf(v56 * 16384.0);
      --v53;
    }

    while (v53);
    goto LABEL_30;
  }

  v45 = (a2 + 144);
  v44 = v43 & 0x7FFFFFF8;
  v46 = v116;
  v47 = vdupq_n_s32(0x46800000u);
  v48 = v44;
  do
  {
    v49 = *v45;
    v50 = v45[1];
    v45 += 2;
    v51 = vmulq_f32(v50, v47);
    v52 = vmulq_f32(v49, v47);
    *v46++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))));
    v48 -= 8;
  }

  while (v48);
  if (v44 != v43)
  {
    goto LABEL_28;
  }

LABEL_30:
  v57 = a1[1160];
  if (v57 < 1)
  {
    goto LABEL_45;
  }

  if (v57 < 8)
  {
    v58 = 0;
LABEL_36:
    v67 = v57 - v58;
    v68 = &v117[v58];
    v69 = (a2 + 4 * v58 + 16);
    do
    {
      v70 = *v69++;
      *v68++ = rintf(v70 * 4096.0);
      --v67;
    }

    while (v67);
    goto LABEL_38;
  }

  v59 = (a2 + 16);
  v58 = v57 & 0x7FFFFFF8;
  v60 = v117;
  v61 = vdupq_n_s32(0x45800000u);
  v62 = v58;
  do
  {
    v63 = *v59;
    v64 = v59[1];
    v59 += 2;
    v65 = vmulq_f32(v64, v61);
    v66 = vmulq_f32(v63, v61);
    *v60++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v66.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v66, v66, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v65.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v65, v65, 8uLL))))));
    v62 -= 8;
  }

  while (v62);
  if (v58 != v57)
  {
    goto LABEL_36;
  }

LABEL_38:
  if (v57 < 8)
  {
    v71 = 0;
LABEL_43:
    v80 = v57 - v71;
    v81 = &v117[v71 + 16];
    v82 = (a2 + 4 * v71 + 80);
    do
    {
      v83 = *v82++;
      *v81++ = rintf(v83 * 4096.0);
      --v80;
    }

    while (v80);
    goto LABEL_45;
  }

  v71 = v57 & 0x7FFFFFF8;
  v72 = (a2 + 80);
  v73 = &v118;
  v74 = vdupq_n_s32(0x45800000u);
  v75 = v71;
  do
  {
    v76 = *v72;
    v77 = v72[1];
    v72 += 2;
    v78 = vmulq_f32(v77, v74);
    v79 = vmulq_f32(v76, v74);
    *v73++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))))));
    v75 -= 8;
  }

  while (v75);
  if (v71 != v57)
  {
    goto LABEL_43;
  }

LABEL_45:
  v84 = v21 * 1024.0;
  if (v6 < 1)
  {
    goto LABEL_53;
  }

  if (v6 < 4)
  {
    v85 = 0;
LABEL_51:
    v92 = v6 - v85;
    v93 = 4 * v85;
    v94 = &v119[v85];
    v95 = (a2 + v93);
    do
    {
      v96 = *v95++;
      *v94++ = rintf(v96 * 65536.0);
      --v92;
    }

    while (v92);
    goto LABEL_53;
  }

  v85 = v6 & 0x7FFFFFFC;
  v86 = v119;
  v87 = vdupq_n_s32(0x47800000u);
  v88 = v85;
  v89 = a2;
  do
  {
    v90 = *v89++;
    v91 = vmulq_f32(v90, v87);
    *v86++ = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v91.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v91, v91, 8uLL)))));
    v88 -= 4;
  }

  while (v88);
  if (v85 != v6)
  {
    goto LABEL_51;
  }

LABEL_53:
  v97 = rintf(v84);
  if (a3[29] == 2)
  {
    v98 = silk_LTPScales_table_Q14[a3[33]];
    v99 = v97;
    v100 = a1[1146];
    if (v100 < 1)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v98 = 0;
    v99 = v97;
    v100 = a1[1146];
    if (v100 < 1)
    {
      goto LABEL_64;
    }
  }

  if (v100 < 8)
  {
    v101 = 0;
LABEL_62:
    v107 = v100 - v101;
    v108 = &v120[v101];
    v109 = &a6->i32[v101];
    do
    {
      v110 = *v109++;
      *v108++ = rintf(v110);
      --v107;
    }

    while (v107);
    goto LABEL_64;
  }

  v101 = v100 & 0x7FFFFFF8;
  v102 = v120;
  v103 = v101;
  v104 = a6;
  do
  {
    v106 = *v104;
    v105 = v104[1];
    v104 += 2;
    *v102++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106, v106, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105, v105, 8uLL))))));
    v103 -= 8;
  }

  while (v103);
  if (v101 != v100)
  {
    goto LABEL_62;
  }

LABEL_64:
  if (a1[1157] <= 1 && a1[1168] < 1)
  {
    return silk_NSQ_c(a1, a4, a3, v120, a5, v117, v116, v115, v112, v113, v114, v119, a2 + 228, v99, v98);
  }

  else
  {
    return silk_NSQ_del_dec_c(a1, a4, a3, v120, a5, v117, v116, v115, v112, v113, v114, v119, (a2 + 228), v99, v98);
  }
}

uint64_t srtp_aes_gcm_openssl_alloc(uint64_t *a1, int a2, int a3)
{
  if (srtp_mod_aes_gcm)
  {
    srtp_err_report(3, "%s: allocating cipher with key length %d\n", off_2808D3518, a2);
    if (srtp_mod_aes_gcm)
    {
      srtp_err_report(3, "%s: allocating cipher with tag length %d\n", off_2808D3518, a3);
    }
  }

  if (a2 != 44 && a2 != 28 || a3 != 16 && a3 != 8)
  {
    return 2;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
  if (!v6)
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
    }

    goto LABEL_29;
  }

  v7 = v6;
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v6);
  }

  *a1 = v7;
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
  if (!v8)
  {
    if (!srtp_mod_alloc)
    {
      v16 = *a1;
      goto LABEL_28;
    }

    srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
    v16 = *a1;
    if (!srtp_mod_alloc)
    {
      goto LABEL_28;
    }

LABEL_26:
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v16);
LABEL_28:
    free(v16);
LABEL_29:
    *a1 = 0;
    return 3;
  }

  v9 = v8;
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v8);
  }

  v10 = malloc_type_malloc(0xA0uLL, 0xB4E622C9uLL);
  if (!v10)
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    *(v9 + 1) = 0;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v9);
    }

    free(v9);
    v16 = *a1;
    if (!srtp_mod_alloc)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  *v10 = 152;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 19) = 0;
  *(v10 + 8) = 0u;
  *(v9 + 1) = v10 + 8;
  v11 = *a1;
  *(*a1 + 8) = v9;
  if (a2 == 28)
  {
    v12 = 16;
    v13 = 6;
    v14 = &srtp_aes_gcm_128;
  }

  else
  {
    v12 = 32;
    v13 = 7;
    v14 = &srtp_aes_gcm_256;
  }

  *v11 = v14;
  v11[5] = v13;
  *v9 = v12;
  v9[1] = a3;
  result = 0;
  v11[4] = a2;
  return result;
}

uint64_t srtp_aes_gcm_openssl_dealloc(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      if (*v3)
      {
        v4 = *(*v3 + 40);
        if (v4)
        {
          v4(v2[1]);
        }
      }

      v5 = *(v3 + 16);
      if (v5)
      {
        v7 = *(v5 - 8);
        v6 = (v5 - 8);
        v8 = v7 + 8;
        if (v7 != -8)
        {
          bzero(v6, v8);
        }

        free(v6);
      }

      *(v3 + 144) = 0;
      *(v3 + 112) = 0u;
      *(v3 + 128) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 96) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *v3 = 0u;
      v10 = *(v3 - 8);
      v9 = (v3 - 8);
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(v9, v11);
      }

      free(v9);
    }

    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v2);
    }

    free(v2);
  }

  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, a1);
  }

  free(a1);
  return 0;
}

uint64_t srtp_aes_gcm_openssl_context_init(uint64_t a1, const unsigned __int8 *a2)
{
  *(a1 + 16) = 2;
  if (srtp_mod_aes_gcm)
  {
    v4 = off_2808D3518;
    LODWORD(v5) = 2 * *a1;
    if (*a1 <= 512)
    {
      v5 = v5;
    }

    else
    {
      v5 = 1022;
    }

    if (v5 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a2;
      do
      {
        v8 = &bit_string[v6];
        *v8 = __const_srtp_nibble_to_hex_char_buf[*v7 >> 4];
        v9 = *v7++;
        v8[1] = __const_srtp_nibble_to_hex_char_buf[v9 & 0xF];
        v6 += 2;
      }

      while (v6 < v5);
    }

    bit_string[v6] = 0;
    srtp_err_report(3, "%s: key:  %s\n", v4, bit_string);
  }

  if (*a1 == 16)
  {
    v10 = EVP_aes_128_gcm();
    v11 = *(a1 + 8);
    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_18;
    }

LABEL_16:
    v13 = *(v12 + 40);
    if (v13)
    {
      v13(v11);
    }

    goto LABEL_18;
  }

  if (*a1 != 32)
  {
    return 2;
  }

  v10 = EVP_aes_256_gcm();
  v11 = *(a1 + 8);
  v12 = *v11;
  if (*v11)
  {
    goto LABEL_16;
  }

LABEL_18:
  v14 = v11[2];
  if (v14)
  {
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    v17 = v16 + 8;
    if (v16 != -8)
    {
      bzero(v15, v17);
    }

    free(v15);
  }

  v11[18] = 0;
  *(v11 + 7) = 0u;
  *(v11 + 8) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *v11 = 0u;
  if (EVP_CipherInit_ex(*(a1 + 8), v10, 0, a2, 0, 0))
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t srtp_aes_gcm_openssl_set_aad(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (srtp_mod_aes_gcm)
  {
    v6 = off_2808D3518;
    if (a3 <= 512)
    {
      v7 = (2 * a3);
    }

    else
    {
      v7 = 1022;
    }

    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = a2;
      do
      {
        v10 = &bit_string[v8];
        *v10 = __const_srtp_nibble_to_hex_char_buf[*v9 >> 4];
        v11 = *v9++;
        v10[1] = __const_srtp_nibble_to_hex_char_buf[v11 & 0xF];
        v8 += 2;
      }

      while (v8 < v7);
    }

    bit_string[v8] = 0;
    srtp_err_report(3, "%s: setting AAD: %s\n", v6, bit_string);
  }

  if (*(a1 + 16) != 1)
  {
    goto LABEL_16;
  }

  v12 = **(a1 + 8);
  if (!v12)
  {
    v16 = 114;
    v17 = 577;
LABEL_23:
    ERR_put_error(30, 0, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", v17);
    return 11;
  }

  v13 = *(v12 + 48);
  if (!v13)
  {
    v16 = 104;
    v17 = 582;
    goto LABEL_23;
  }

  v14 = v13();
  if (v14 == -1)
  {
    v16 = 105;
    v17 = 588;
    goto LABEL_23;
  }

  if (!v14)
  {
    return 11;
  }

LABEL_16:
  if ((*(**(a1 + 8) + 32))(*(a1 + 8), 0, a2, a3) == a3)
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t srtp_aes_gcm_openssl_encrypt(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*(a1 + 16) > 1u)
  {
    return 2;
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), a2, a2, *a3);
  return 0;
}

uint64_t srtp_aes_gcm_openssl_decrypt(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 16) > 1u)
  {
    return 2;
  }

  v4 = *(a1 + 8);
  if (!*v4)
  {
    v10 = 114;
    v11 = 577;
    goto LABEL_10;
  }

  v5 = *(*v4 + 48);
  if (!v5)
  {
    v10 = 104;
    v11 = 582;
    goto LABEL_10;
  }

  v6 = a1;
  v9 = v5();
  if (!v9)
  {
    return 7;
  }

  if (v9 == -1)
  {
    v10 = 105;
    v11 = 588;
LABEL_10:
    ERR_put_error(30, 0, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", v11);
    return 7;
  }

  (*(**(v6 + 8) + 32))(*(v6 + 8), a2, a2, (*a3 - *(v6 + 4)));
  result = (*(**(v6 + 8) + 32))(*(v6 + 8), 0, 0, 0);
  if (result)
  {
    return 7;
  }

  *a3 -= *(v6 + 4);
  return result;
}

uint64_t srtp_aes_gcm_openssl_set_iv(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    return 2;
  }

  *(a1 + 16) = a3;
  if (srtp_mod_aes_gcm)
  {
    bit_string[0] = __const_srtp_nibble_to_hex_char_buf[*a2 >> 4];
    byte_280905CD9 = __const_srtp_nibble_to_hex_char_buf[*a2 & 0xF];
    byte_280905CDA = __const_srtp_nibble_to_hex_char_buf[a2[1] >> 4];
    byte_280905CDB = __const_srtp_nibble_to_hex_char_buf[a2[1] & 0xF];
    byte_280905CDC = __const_srtp_nibble_to_hex_char_buf[a2[2] >> 4];
    byte_280905CDD = __const_srtp_nibble_to_hex_char_buf[a2[2] & 0xF];
    byte_280905CDE = __const_srtp_nibble_to_hex_char_buf[a2[3] >> 4];
    byte_280905CDF = __const_srtp_nibble_to_hex_char_buf[a2[3] & 0xF];
    byte_280905CE0 = __const_srtp_nibble_to_hex_char_buf[a2[4] >> 4];
    byte_280905CE1 = __const_srtp_nibble_to_hex_char_buf[a2[4] & 0xF];
    byte_280905CE2 = __const_srtp_nibble_to_hex_char_buf[a2[5] >> 4];
    byte_280905CE3 = __const_srtp_nibble_to_hex_char_buf[a2[5] & 0xF];
    byte_280905CE4 = __const_srtp_nibble_to_hex_char_buf[a2[6] >> 4];
    byte_280905CE5 = __const_srtp_nibble_to_hex_char_buf[a2[6] & 0xF];
    byte_280905CE6 = __const_srtp_nibble_to_hex_char_buf[a2[7] >> 4];
    byte_280905CE7 = __const_srtp_nibble_to_hex_char_buf[a2[7] & 0xF];
    byte_280905CE8 = __const_srtp_nibble_to_hex_char_buf[a2[8] >> 4];
    byte_280905CE9 = __const_srtp_nibble_to_hex_char_buf[a2[8] & 0xF];
    byte_280905CEA = __const_srtp_nibble_to_hex_char_buf[a2[9] >> 4];
    byte_280905CEB = __const_srtp_nibble_to_hex_char_buf[a2[9] & 0xF];
    byte_280905CEC = __const_srtp_nibble_to_hex_char_buf[a2[10] >> 4];
    byte_280905CED = __const_srtp_nibble_to_hex_char_buf[a2[10] & 0xF];
    byte_280905CEE = __const_srtp_nibble_to_hex_char_buf[a2[11] >> 4];
    byte_280905CEF = __const_srtp_nibble_to_hex_char_buf[a2[11] & 0xF];
    byte_280905CF0 = 0;
    srtp_err_report(3, "%s: setting iv: %s\n", off_2808D3518, bit_string);
  }

  v6 = **(a1 + 8);
  if (!v6)
  {
    v9 = 114;
    v10 = 577;
    goto LABEL_12;
  }

  v7 = *(v6 + 48);
  if (!v7)
  {
    v9 = 104;
    v10 = 582;
    goto LABEL_12;
  }

  v8 = v7();
  if (!v8)
  {
    return 5;
  }

  if (v8 == -1)
  {
    v9 = 105;
    v10 = 588;
LABEL_12:
    ERR_put_error(30, 0, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", v10);
    return 5;
  }

  if (EVP_CipherInit_ex(*(a1 + 8), 0, 0, 0, a2, *(a1 + 16) == 0))
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t srtp_aes_gcm_openssl_get_tag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8), 0, 0, 0);
  v5 = **(a1 + 8);
  if (!v5)
  {
    ERR_put_error(30, 0, 114, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", 577);
    return 11;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    ERR_put_error(30, 0, 104, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", 582);
    return 11;
  }

  v7 = v6();
  if (!v7)
  {
    return 11;
  }

  if (v7 == -1)
  {
    ERR_put_error(30, 0, 105, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/fipsmodule/cipher/cipher.cc.inc", 588);
    return 11;
  }

  else
  {
    result = 0;
    *a3 = *(a1 + 4);
  }

  return result;
}

uint64_t srtp_aes_icm_openssl_alloc(uint64_t *a1, unsigned int a2)
{
  if (srtp_mod_aes_icm)
  {
    srtp_err_report(3, "%s: allocating cipher with key length %d\n", qword_2808D3540, a2);
  }

  result = 2;
  if (a2 <= 0x2E && ((1 << a2) & 0x404040000000) != 0)
  {
    v5 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
    if (!v5)
    {
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
      }

      goto LABEL_27;
    }

    v6 = v5;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v5);
    }

    *a1 = v6;
    v7 = malloc_type_calloc(1uLL, 0x30uLL, 0xAA3F5916uLL);
    if (v7)
    {
      v8 = v7;
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v7);
      }

      v9 = malloc_type_malloc(0xA0uLL, 0xB4E622C9uLL);
      if (v9)
      {
        *v9 = 152;
        *(v9 + 24) = 0u;
        *(v9 + 40) = 0u;
        *(v9 + 56) = 0u;
        *(v9 + 72) = 0u;
        *(v9 + 88) = 0u;
        *(v9 + 104) = 0u;
        *(v9 + 120) = 0u;
        *(v9 + 136) = 0u;
        *(v9 + 19) = 0;
        *(v9 + 8) = 0u;
        v8[5] = v9 + 8;
        v10 = *a1;
        *(*a1 + 8) = v8;
        switch(a2)
        {
          case 0x1Eu:
            v11 = 16;
            v12 = &srtp_aes_icm_128;
            v13 = 1;
            break;
          case 0x2Eu:
            v11 = 32;
            v12 = &srtp_aes_icm_256;
            v13 = 5;
            break;
          case 0x26u:
            v11 = 24;
            v12 = &srtp_aes_icm_192;
            v13 = 4;
            break;
          default:
LABEL_32:
            result = 0;
            *(v10 + 16) = a2;
            return result;
        }

        *(v10 + 20) = v13;
        *v10 = v12;
        *(v8 + 8) = v11;
        goto LABEL_32;
      }

      ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
      v8[5] = 0;
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v8);
      }

      free(v8);
      v14 = *a1;
      if (!srtp_mod_alloc)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!srtp_mod_alloc)
      {
        v14 = *a1;
        goto LABEL_26;
      }

      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x30uLL);
      v14 = *a1;
      if (!srtp_mod_alloc)
      {
        goto LABEL_26;
      }
    }

    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v14);
LABEL_26:
    free(v14);
LABEL_27:
    *a1 = 0;
    return 3;
  }

  return result;
}

uint64_t srtp_aes_icm_openssl_dealloc(void *a1)
{
  if (!a1)
  {
    return 2;
  }

  v2 = a1[1];
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      if (*v3)
      {
        v4 = *(*v3 + 40);
        if (v4)
        {
          v4(v2[5]);
        }
      }

      v5 = *(v3 + 16);
      if (v5)
      {
        v7 = *(v5 - 8);
        v6 = (v5 - 8);
        v8 = v7 + 8;
        if (v7 != -8)
        {
          bzero(v6, v8);
        }

        free(v6);
      }

      *(v3 + 144) = 0;
      *(v3 + 112) = 0u;
      *(v3 + 128) = 0u;
      *(v3 + 80) = 0u;
      *(v3 + 96) = 0u;
      *(v3 + 48) = 0u;
      *(v3 + 64) = 0u;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *v3 = 0u;
      v10 = *(v3 - 8);
      v9 = (v3 - 8);
      v11 = v10 + 8;
      if (v10 != -8)
      {
        bzero(v9, v11);
      }

      free(v9);
    }

    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v2);
    }

    free(v2);
  }

  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, a1);
  }

  free(a1);
  return 0;
}