uint64_t opus_decode(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int16x8_t *a4, int a5, int a6)
{
  v44[1] = *MEMORY[0x277D85DE8];
  if (a5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2 || a3 < 1 || a6)
  {
    goto LABEL_27;
  }

  v7 = *(a1 + 12);
  v8 = *a2;
  if ((v8 & 3) == 0)
  {
    v9 = 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v16 = 1374389535 * (v7 << ((*a2 >> 3) & 3));
    v15 = (v16 >> 39) + (v16 >> 63);
    goto LABEL_22;
  }

  if ((v8 & 3) != 3)
  {
    v9 = 2;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (a3 == 1)
  {
    return 4294967292;
  }

  v9 = a2[1] & 0x3F;
  if ((v8 & 0x80) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v11 = 1374389535 * (v7 << ((*a2 >> 3) & 3));
  v12 = (v11 >> 37) + (v11 >> 63);
  if (((v8 >> 3) & 3) == 3)
  {
    v13 = 60 * v7 / 1000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v7 / 50;
  if ((v8 & 8) == 0)
  {
    v14 = v7 / 100;
  }

  if ((~v8 & 0x60) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

LABEL_22:
  v17 = v15 * v9;
  v18 = 3 * v7;
  if (v17 < 1 || 25 * v17 > v18)
  {
    return 4294967292;
  }

LABEL_27:
  v20 = MEMORY[0x28223BE20](a1, a2, a3);
  v22 = (v44 - v21);
  v23 = v20;
  result = opus_decode_native(v20, v24, v25, (v44 - v21), v26, v27, 0, 0, 1);
  if (result >= 1)
  {
    v28 = (v23[2] * result);
    if (v28 >= 1)
    {
      if (v28 < 8)
      {
        v29 = 0;
LABEL_34:
        v40 = v28 - v29;
        v41 = &a4->i16[v29];
        v42 = &v22->f32[v29];
        do
        {
          v43 = *v42++;
          *v41++ = rintf(fminf(fmaxf(v43 * 32768.0, -32768.0), 32767.0));
          --v40;
        }

        while (v40);
        return result;
      }

      v29 = v28 & 0x7FFFFFF8;
      v30.i64[0] = 0x4700000047000000;
      v30.i64[1] = 0x4700000047000000;
      v31.i64[0] = 0xC7000000C7000000;
      v31.i64[1] = 0xC7000000C7000000;
      v32 = vdupq_n_s32(0x46FFFE00u);
      v33 = v29;
      v34 = a4;
      v35 = v22;
      do
      {
        v36 = *v35;
        v37 = v35[1];
        v35 += 2;
        v38 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v37, v30), v31), v32);
        v39 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v36, v30), v31), v32);
        *v34++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))));
        v33 -= 8;
      }

      while (v33);
      if (v29 != v28)
      {
        goto LABEL_34;
      }
    }
  }

  return result;
}

uint64_t opus_decoder_ctl(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v10 = *a1;
  v11 = a1[1];
  result = 4294967291;
  if (a2 > 4033)
  {
    if (a2 <= 4044)
    {
      if (a2 == 4034)
      {
        if (a9 == a9)
        {
          result = 0;
          a1[10] = a9;
          return result;
        }
      }

      else
      {
        if (a2 != 4039)
        {
          return result;
        }

        if (a9)
        {
          result = 0;
          *a9 = a1[18];
          return result;
        }
      }
    }

    else
    {
      switch(a2)
      {
        case 4045:
          if (a9)
          {
            result = 0;
            *a9 = a1[10];
            return result;
          }

          break;
        case 4046:
          if (a9 <= 1)
          {
            return opus_custom_decoder_ctl((a1 + v10), 4046, a3, a4, a5, a6, a7, a8, a9);
          }

          break;
        case 4047:
          if (a9)
          {
            return opus_custom_decoder_ctl((a1 + v10), 4047, a3, a4, a5, a6, a7, a8, a9);
          }

          break;
        default:
          return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 <= 4028)
  {
    if (a2 == 4009)
    {
      if (a9)
      {
        result = 0;
        *a9 = a1[13];
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4028)
    {
      return result;
    }

    v13 = (a1 + v11);
    *(a1 + 10) = 0;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    v14 = a1;
    opus_custom_decoder_ctl((a1 + v10), 4028, a3, a4, a5, a6, a7, a8, v58);
    bzero(v13, 0x10C0uLL);
    v13[594] = 1;
    *v13 = 0x10000;
    v13[1048] = 0;
    v15 = v13[585];
    if (v15 >= 1)
    {
      v16 = 0x7FFF / (v15 + 1);
      if (v15 < 4)
      {
        v17 = 0;
        v18 = 0;
        goto LABEL_49;
      }

      v19 = vdupq_n_s32(v16);
      if (v15 >= 0x10)
      {
        v17 = v15 & 0x7FFFFFF0;
        v21 = vmulq_s32(v19, xmmword_273B92360);
        v22 = vmulq_s32(v19, xmmword_273B90830);
        v23 = vdupq_n_s32(8 * v16);
        v20 = v16 * (v15 & 0x7FFFFFF0);
        v24 = (v14 + v11 + 4092);
        v25 = v17;
        do
        {
          v26 = vaddq_s32(v21, v23);
          v27 = vaddq_s32(v22, v23);
          v24[-1] = vuzp1q_s16(vaddq_s32(v22, v19), vaddq_s32(v21, v19));
          *v24 = vuzp1q_s16(vaddq_s32(v27, v19), vaddq_s32(v26, v19));
          v22 = vaddq_s32(v27, v23);
          v21 = vaddq_s32(v26, v23);
          v24 += 2;
          v25 -= 16;
        }

        while (v25);
        if (v17 == v15)
        {
          goto LABEL_51;
        }

        if ((v15 & 0xC) == 0)
        {
          v18 = v16 * v17;
LABEL_49:
          v33 = v15 - v17;
          v34 = (v14 + 2 * v17 + v11 + 4076);
          v35 = v18 + v16;
          do
          {
            *v34++ = v35;
            v35 += v16;
            --v33;
          }

          while (v33);
          goto LABEL_51;
        }
      }

      else
      {
        v20 = 0;
        v17 = 0;
      }

      v28 = v17;
      v17 = v15 & 0x7FFFFFFC;
      v18 = v16 * (v15 & 0x7FFFFFFC);
      v29 = vmlaq_s32(vdupq_n_s32(v20), v19, xmmword_273B90830);
      v30 = vdupq_n_s32(4 * v16);
      v31 = (v14 + 2 * v28 + v11 + 4076);
      v32 = v28 - v17;
      do
      {
        *v31++ = vmovn_s32(vaddq_s32(v29, v19));
        v29 = vaddq_s32(v29, v30);
        v32 += 4;
      }

      while (v32);
      if (v17 != v15)
      {
        goto LABEL_49;
      }
    }

LABEL_51:
    *(v13 + 1043) = 0x30788000000000;
    v13[1049] = v13[582] << 7;
    *(v13 + 1067) = 0x1000000010000;
    *(v13 + 535) = 0x1400000002;
    bzero(v13 + 1072, 0x10C0uLL);
    v13[1666] = 1;
    v13[1072] = 0x10000;
    v13[2120] = 0;
    v36 = v13[1657];
    if (v36 < 1)
    {
LABEL_67:
      result = 0;
      *(v13 + 2139) = 0x1000000010000;
      v13[2115] = 0;
      v13[2116] = 3176576;
      v13[2121] = v13[1654] << 7;
      *(v13 + 1071) = 0x1400000002;
      *(v13 + 1072) = 0;
      v13[2146] = 0;
      v13[2149] = 0;
      v57 = v14[3];
      v14[12] = v14[2];
      v14[16] = v57 / 400;
      return result;
    }

    v37 = 0x7FFF / (v36 + 1);
    if (v36 < 4)
    {
      v38 = 0;
      v39 = 0;
      goto LABEL_65;
    }

    v40 = vdupq_n_s32(v37);
    if (v36 >= 0x10)
    {
      v38 = v36 & 0x7FFFFFF0;
      v42 = vmulq_s32(v40, xmmword_273B92360);
      v43 = vdupq_n_s32(8 * v37);
      v44 = vmulq_s32(v40, xmmword_273B90830);
      v41 = v37 * (v36 & 0x7FFFFFF0);
      v45 = (v14 + v11 + 8380);
      v46 = v38;
      do
      {
        v47 = vaddq_s32(v42, v43);
        v48 = vaddq_s32(v44, v43);
        v45[-1] = vuzp1q_s16(vaddq_s32(v44, v40), vaddq_s32(v42, v40));
        *v45 = vuzp1q_s16(vaddq_s32(v48, v40), vaddq_s32(v47, v40));
        v44 = vaddq_s32(v48, v43);
        v42 = vaddq_s32(v47, v43);
        v45 += 2;
        v46 -= 16;
      }

      while (v46);
      if (v38 == v36)
      {
        goto LABEL_67;
      }

      if ((v36 & 0xC) == 0)
      {
        v39 = v37 * v38;
LABEL_65:
        v54 = v36 - v38;
        v55 = (v14 + 2 * v38 + v11 + 8364);
        v56 = v39 + v37;
        do
        {
          *v55++ = v56;
          v56 += v37;
          --v54;
        }

        while (v54);
        goto LABEL_67;
      }
    }

    else
    {
      v41 = 0;
      v38 = 0;
    }

    v49 = v38;
    v38 = v36 & 0x7FFFFFFC;
    v39 = v37 * (v36 & 0x7FFFFFFC);
    v50 = vdupq_n_s32(4 * v37);
    v51 = vmlaq_s32(vdupq_n_s32(v41), v40, xmmword_273B90830);
    v52 = (v14 + 2 * v49 + v11 + 8364);
    v53 = v49 - v38;
    do
    {
      *v52++ = vmovn_s32(vaddq_s32(v51, v40));
      v51 = vaddq_s32(v51, v50);
      v53 += 4;
    }

    while (v53);
    if (v38 == v36)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (a2 == 4029)
  {
    if (a9)
    {
      result = 0;
      *a9 = a1[3];
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 == 4031)
  {
    if (a9)
    {
      result = 0;
      *a9 = a1[21];
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 != 4033)
  {
    return result;
  }

  if (!a9)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1[15] == 1002)
  {
    return opus_custom_decoder_ctl((a1 + v10), 4033, a3, a4, a5, a6, a7, a8, a9);
  }

  result = 0;
  *a9 = a1[9];
  return result;
}

uint64_t opus_packet_get_nb_samples(unsigned __int8 *a1, int a2, int a3)
{
  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  if ((v3 & 3) != 0)
  {
    if ((v3 & 3) == 3)
    {
      if (a2 == 1)
      {
        return 4294967292;
      }

      v5 = a1[1] & 0x3F;
      if ((v3 & 0x80) != 0)
      {
        goto LABEL_19;
      }

LABEL_10:
      v6 = 1374389535 * (a3 << ((*a1 >> 3) & 3));
      v7 = (v6 >> 37) + (v6 >> 63);
      if (((v3 >> 3) & 3) == 3)
      {
        v8 = 60 * a3 / 1000;
      }

      else
      {
        v8 = v7;
      }

      v9 = a3 / 50;
      if ((v3 & 8) == 0)
      {
        v9 = a3 / 100;
      }

      if ((~v3 & 0x60) != 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      goto LABEL_20;
    }

    v5 = 2;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 1;
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_19:
  v11 = 1374389535 * (a3 << ((*a1 >> 3) & 3));
  v10 = (v11 >> 39) + (v11 >> 63);
LABEL_20:
  v12 = v10 * v5;
  if ((25 * v12) <= 3 * a3)
  {
    return v12;
  }

  else
  {
    return 4294967292;
  }
}

float32x4_t *smooth_fade(float32x4_t *result, float32x4_t *a2, uint64_t a3, int a4, int a5, float32x4_t *a6, int a7)
{
  if (a4 >= 1 && a5 >= 1)
  {
    v7 = 0;
    v8 = 48000 / a7;
    v9 = a5;
    v10 = a3 - a6;
    v11 = a3 - a2;
    v12 = a3 - result;
    v14 = a5 != 1 || v8 != 1;
    v15 = a2 + 1;
    v16 = (a3 + 16);
    v17 = result + 1;
    v18 = 4 * a5;
    v19 = 4 * v8;
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v24 = 0;
      v25 = a4 < 8 || v14;
      if (v25)
      {
        goto LABEL_15;
      }

      if ((v10 + 4 * v7) < 0x20)
      {
        goto LABEL_15;
      }

      if (v11 < 0x20)
      {
        goto LABEL_15;
      }

      if (v12 < 0x20)
      {
        goto LABEL_15;
      }

      v29 = v17;
      v30 = v16;
      v31 = v15;
      v32 = a6 + 1;
      v33 = a4 & 0x7FFFFFF8;
      do
      {
        v34 = vmulq_f32(v32[-1], v32[-1]);
        v35 = vmulq_f32(*v32, *v32);
        v36 = vmlaq_f32(vmulq_f32(vsubq_f32(_Q1, v35), *v29), *v31, v35);
        v32 += 2;
        v30[-1] = vmlaq_f32(vmulq_f32(vsubq_f32(_Q1, v34), v29[-1]), v31[-1], v34);
        *v30 = v36;
        v31 += 2;
        v30 += 2;
        v29 += 2;
        v33 -= 8;
      }

      while (v33);
      v24 = a4 & 0x7FFFFFF8;
      if (v24 != a4)
      {
LABEL_15:
        v26 = a4 - v24;
        v27 = v18 * v24;
        v28 = (a6->f32 + v19 * v24);
        do
        {
          *(a3 + v27) = ((1.0 - (*v28 * *v28)) * *(result->f32 + v27)) + ((*v28 * *v28) * *(a2->f32 + v27));
          v27 += v18;
          v28 = (v28 + v19);
          --v26;
        }

        while (v26);
      }

      ++v7;
      v15 = (v15 + 4);
      v16 = (v16 + 4);
      v17 = (v17 + 4);
      a3 += 4;
      result = (result + 4);
      a2 = (a2 + 4);
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t opus_encoder_init(char *a1, int a2, int a3, int a4)
{
  result = 0xFFFFFFFFLL;
  if (a2 > 15999)
  {
    if (a2 != 16000 && a2 != 48000 && a2 != 24000)
    {
      return result;
    }

LABEL_8:
    if ((a3 - 3) < 0xFFFFFFFE || (a4 - 2048) > 3 || a4 == 2050)
    {
      return result;
    }

    v9 = 4912 * a3;
    bzero(a1, (4912 * a3 + 38668));
    *a1 = 0x46E800009610;
    *(a1 + 28) = a3;
    *(a1 + 3549) = a3;
    *(a1 + 36) = a2;
    *(a1 + 45) = 0;
    if (silk_InitEncoder((a1 + 18152), 0, (a1 + 8)))
    {
      return 4294967293;
    }

    *(a1 + 2) = a3;
    *(a1 + 3) = a3;
    *(a1 + 4) = *(a1 + 36);
    *(a1 + 20) = xmmword_273BC0F20;
    *(a1 + 36) = xmmword_273BC0F30;
    *(a1 + 7) = 0;
    *(a1 + 19) = 0;
    v10 = *(a1 + 45);
    bzero(a1 + 38416, (v9 + 252));
    *(a1 + 4802) = &mode48000_960_120;
    *(a1 + 9606) = a3;
    *(a1 + 9607) = a3;
    *(a1 + 9623) = v10;
    *(a1 + 38460) = xmmword_273BBA7D0;
    *(a1 + 4804) = 0x100000000;
    *(a1 + 38444) = xmmword_273BBA7E0;
    *(a1 + 9620) = 24;
    opus_custom_encoder_ctl(a1 + 9604, 4028, v11, v12, v13, v14, v15, v16, v31);
    if (a2 <= 15999)
    {
      if (a2 == 8000)
      {
        v23 = 6;
        goto LABEL_25;
      }

      if (a2 == 12000)
      {
        v23 = 4;
        goto LABEL_25;
      }
    }

    else
    {
      switch(a2)
      {
        case 16000:
          v23 = 3;
          goto LABEL_25;
        case 48000:
          v23 = 1;
          goto LABEL_25;
        case 24000:
          v23 = 2;
LABEL_25:
          *(a1 + 9612) = v23;
          opus_custom_encoder_ctl(a1 + 9604, 10016, v17, v18, v19, v20, v21, v22, 0);
          opus_custom_encoder_ctl(a1 + 9604, 4010, v24, v25, v26, v27, v28, v29, *(a1 + 11));
          *(a1 + 148) = 0x100000001;
          *(a1 + 120) = xmmword_273BC0F40;
          v30 = *(a1 + 36);
          *(a1 + 27) = a4;
          *(a1 + 17) = -1000;
          *(a1 + 43) = v30 / 100;
          *(a1 + 164) = 0x18FFFFFC18;
          *(a1 + 39) = 5000;
          *(a1 + 40) = a3 * a2 + 3000;
          *(a1 + 29) = v30 / 250;
          *(a1 + 7100) = 0x4000;
          *(a1 + 14204) = 0x3F8000000002F400;
          *(a1 + 3564) = 1;
          *(a1 + 3557) = 1001;
          *(a1 + 3561) = 1105;
          *(a1 + 48) = 0;
          *(a1 + 50) = v30;
          bzero(a1 + 204, 0x36A8uLL);
          result = 0;
          *(a1 + 49) = a4;
          return result;
      }
    }

    v23 = 0;
    goto LABEL_25;
  }

  if (a2 == 8000 || a2 == 12000)
  {
    goto LABEL_8;
  }

  return result;
}

float32_t downmix_int(uint64_t a1, float32x4_t *a2, unsigned int a3, int a4, int a5, unsigned int a6, int a7, float32x4_t a8)
{
  if (a3 < 1)
  {
    return a8.f32[0];
  }

  v8 = 0;
  v9 = 2 * a7;
  if (a3 < 4 || a7 != 1)
  {
    goto LABEL_13;
  }

  if (a3 >= 0x10)
  {
    v8 = a3 & 0x7FFFFFF0;
    v10 = (2 * a4 + 2 * a5 + a1 + 16);
    v11 = a2 + 2;
    v12 = v8;
    do
    {
      v13 = *v10[-2].i8;
      v14 = vcvtq_f32_s32(vmovl_s16(*v10));
      v15 = vmovl_high_s16(*v10->i8);
      v11[-2] = vcvtq_f32_s32(vmovl_s16(*v13.i8));
      v11[-1] = vcvtq_f32_s32(vmovl_high_s16(v13));
      a8 = vcvtq_f32_s32(v15);
      *v11 = v14;
      v11[1] = a8;
      v11 += 4;
      v10 += 4;
      v12 -= 16;
    }

    while (v12);
    if (v8 == a3)
    {
      goto LABEL_15;
    }

    if ((a3 & 0xC) == 0)
    {
LABEL_13:
      v21 = a3 - v8;
      v22 = &a2->i32[v8];
      v23 = (a1 + 2 * (v8 + a4) * a7 + 2 * a5);
      do
      {
        a8.i16[0] = *v23;
        a8.i64[0] = vmovl_s16(*a8.f32).u64[0];
        a8.f32[0] = a8.i32[0];
        *v22++ = a8.i32[0];
        v23 = (v23 + v9);
        --v21;
      }

      while (v21);
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  v8 = a3 & 0x7FFFFFFC;
  v17 = (a1 + 2 * v16 + 2 * a4 + 2 * a5);
  v18 = &a2->f32[v16];
  v19 = v16 - v8;
  do
  {
    v20 = *v17++;
    a8 = vcvtq_f32_s32(vmovl_s16(v20));
    *v18++ = a8;
    v19 += 4;
  }

  while (v19);
  if (v8 != a3)
  {
    goto LABEL_13;
  }

LABEL_15:
  if ((a6 & 0x80000000) != 0)
  {
    if (a6 == -2 && a7 >= 2)
    {
      v25 = a1 + 2 * a4 * a7 + 2;
      for (i = 1; i != a7; ++i)
      {
        v27 = v25;
        v28 = a2;
        v29 = a3;
        do
        {
          a8.i16[0] = *v27;
          a8.i64[0] = vmovl_s16(*a8.f32).u64[0];
          a8.f32[0] = *v28 + a8.i32[0];
          *v28++ = a8.f32[0];
          v27 += a7;
          --v29;
        }

        while (v29);
        v25 += 2;
      }
    }
  }

  else
  {
    v24 = 0;
    if (a3 < 4 || a7 != 1)
    {
      goto LABEL_34;
    }

    if (a3 >= 0x10)
    {
      v24 = a3 & 0x7FFFFFF0;
      v30 = (2 * a4 + 2 * a6 + a1 + 16);
      v31 = a2 + 2;
      v32 = v24;
      do
      {
        v33 = *v30[-2].i8;
        v34 = vcvtq_f32_s32(vmovl_high_s16(v33));
        a8 = vaddq_f32(v31[-2], vcvtq_f32_s32(vmovl_s16(*v33.i8)));
        v35 = vaddq_f32(v31[-1], v34);
        v36 = vaddq_f32(*v31, vcvtq_f32_s32(vmovl_s16(*v30)));
        v37 = vaddq_f32(v31[1], vcvtq_f32_s32(vmovl_high_s16(*v30->i8)));
        v31[-2] = a8;
        v31[-1] = v35;
        *v31 = v36;
        v31[1] = v37;
        v31 += 4;
        v30 += 4;
        v32 -= 16;
      }

      while (v32);
      if (v24 == a3)
      {
        return a8.f32[0];
      }

      if ((a3 & 0xC) == 0)
      {
LABEL_34:
        v43 = a3 - v24;
        v44 = &a2->f32[v24];
        v45 = (a1 + 2 * (v24 + a4) * a7 + 2 * a6);
        do
        {
          a8.i16[0] = *v45;
          a8.i64[0] = vmovl_s16(*a8.f32).u64[0];
          a8.f32[0] = *v44 + a8.i32[0];
          *v44++ = a8.f32[0];
          v45 = (v45 + v9);
          --v43;
        }

        while (v43);
        return a8.f32[0];
      }
    }

    else
    {
      v24 = 0;
    }

    v38 = v24;
    v24 = a3 & 0x7FFFFFFC;
    v39 = (a1 + 2 * v38 + 2 * a4 + 2 * a6);
    v40 = (a2 + 4 * v38);
    v41 = v38 - v24;
    do
    {
      v42 = *v39++;
      a8 = vaddq_f32(*v40, vcvtq_f32_s32(vmovl_s16(v42)));
      *v40++ = a8;
      v41 += 4;
    }

    while (v41);
    if (v24 != a3)
    {
      goto LABEL_34;
    }
  }

  return a8.f32[0];
}

uint64_t opus_encode_native(int *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, void *a12, int a13)
{
  v671 = *MEMORY[0x277D85DE8];
  v14 = (a1 + 3550);
  HIDWORD(v665) = 0;
  if (a5 >= 1276)
  {
    v15 = 1276;
  }

  else
  {
    v15 = a5;
  }

  a1[4537] = 0;
  v16 = 0xFFFFFFFFLL;
  if (a3 < 1)
  {
    return v16;
  }

  v17 = a5;
  if (a5 < 1)
  {
    return v16;
  }

  if (a5 == 1 && a1[36] == 10 * a3)
  {
    return 4294967294;
  }

  v20 = *a1;
  v21 = a1[27];
  v663 = a4;
  if (v21 == 2051)
  {
    v657 = 0;
  }

  else
  {
    v657 = a1[29];
  }

  v659 = a1[1];
  v667 = 0;
  memset(v666, 0, sizeof(v666));
  *&v665 = 0;
  memset(v668, 0, sizeof(v668));
  v669 = 0u;
  v670 = 0u;
  LODWORD(v24) = a1[42];
  if (v24 >= a6)
  {
    v24 = a6;
  }

  else
  {
    v24 = v24;
  }

  v662 = v24;
  v661 = v20;
  opus_custom_encoder_ctl((a1 + v20), 10015, a3, a4, a5, a6, a7, a8, &v665);
  LODWORD(v668[0]) = 0;
  if (a1[11] < 7 || (v28 = a1[36], v28 < 16000))
  {
    if (a1[1913])
    {
      bzero(a1 + 51, 0x36A8uLL);
    }

    a1[35] = -1;
    *&v37 = -1;
    *(&v37 + 1) = -1;
    v660 = v37;
    goto LABEL_28;
  }

  v29 = (a1[28] * a3);
  if (v29 < 1)
  {
    v32 = 0.0;
    v30 = 0.0;
    v33 = a8;
    v34 = a7;
  }

  else
  {
    v30 = 0.0;
    v31 = a2;
    v32 = 0.0;
    v33 = a8;
    v34 = a7;
    do
    {
      v35 = *v31++;
      v36 = v35;
      if (v32 <= v35)
      {
        v32 = v36;
      }

      if (v30 >= v36)
      {
        v30 = v36;
      }

      --v29;
    }

    while (v29);
  }

  v53 = -v30;
  if (v32 <= v53)
  {
    v54 = v53;
  }

  else
  {
    v54 = v32;
  }

  v55 = 1.0 / (1 << v662);
  *&v27 = *(a1 + 955);
  v660 = v27;
  run_analysis((a1 + 48), v665, v34, v33, a3, a9, a10, a11, v28, v662, a12, v668);
  v56 = v54 <= v55 || *(&v669 + 1) <= 0.1;
  if (!v56)
  {
    v58 = *(v14 + 985) * 0.999;
    v59 = (a1[28] * a3);
    if (v59 < 1)
    {
      v170 = 0.0 / v59;
      if (v58 > v170)
      {
        goto LABEL_320;
      }

      goto LABEL_319;
    }

    if (v59 >= 8)
    {
      v60 = v59 & 0x7FFFFFF8;
      v183 = (a2 + 4);
      v61 = 0.0;
      v184 = v60;
      do
      {
        v185 = vmulq_f32(v183[-1], v183[-1]);
        v186 = vmulq_f32(*v183, *v183);
        v61 = (((((((v61 + v185.f32[0]) + v185.f32[1]) + v185.f32[2]) + v185.f32[3]) + v186.f32[0]) + v186.f32[1]) + v186.f32[2]) + v186.f32[3];
        v183 += 2;
        v184 -= 8;
      }

      while (v184);
      if (v60 == v59)
      {
LABEL_303:
        v190 = v59;
        if (v58 > (v61 / v59))
        {
LABEL_320:
          *(v14 + 985) = v58;
          v57 = v668[0];
          goto LABEL_321;
        }

        if (v59 > 7)
        {
          v191 = v59 & 0x7FFFFFF8;
          v193 = (a2 + 4);
          v192 = 0.0;
          v194 = v191;
          do
          {
            v195 = vmulq_f32(v193[-1], v193[-1]);
            v196 = vmulq_f32(*v193, *v193);
            v192 = (((((((v192 + v195.f32[0]) + v195.f32[1]) + v195.f32[2]) + v195.f32[3]) + v196.f32[0]) + v196.f32[1]) + v196.f32[2]) + v196.f32[3];
            v193 += 2;
            v194 -= 8;
          }

          while (v194);
          if (v191 == v59)
          {
            goto LABEL_318;
          }
        }

        else
        {
          v191 = 0;
          v192 = 0.0;
        }

        v197 = v59 - v191;
        v198 = &a2[v191];
        do
        {
          v199 = *v198++;
          v192 = v192 + (v199 * v199);
          --v197;
        }

        while (v197);
LABEL_318:
        v170 = v192 / v190;
LABEL_319:
        v58 = v170;
        goto LABEL_320;
      }
    }

    else
    {
      v60 = 0;
      v61 = 0.0;
    }

    v187 = v59 - v60;
    v188 = &a2[v60];
    do
    {
      v189 = *v188++;
      v61 = v61 + (v189 * v189);
      --v187;
    }

    while (v187);
    goto LABEL_303;
  }

  v57 = v668[0];
  if (v54 <= v55)
  {
    v41 = 0;
    v40 = (v14 + 1966);
    *(v14 + 983) = 0;
    v38 = 1;
    if (!v57)
    {
      v39 = 0;
      goto LABEL_29;
    }

    goto LABEL_335;
  }

LABEL_321:
  a1[35] = -1;
  if (!v57)
  {
LABEL_28:
    v38 = 0;
    v39 = 0;
    v40 = (v14 + 1966);
    *(v14 + 983) = 0;
    v41 = -1;
    goto LABEL_29;
  }

  if (*(&v669 + 1) < 0.1)
  {
    v200 = (a1[28] * a3);
    if (v200 < 1)
    {
      v202 = 0.0;
    }

    else
    {
      if (v200 >= 8)
      {
        v201 = v200 & 0x7FFFFFF8;
        v203 = (a2 + 4);
        v202 = 0.0;
        v204 = v201;
        do
        {
          v205 = vmulq_f32(v203[-1], v203[-1]);
          v206 = vmulq_f32(*v203, *v203);
          v202 = (((((((v202 + v205.f32[0]) + v205.f32[1]) + v205.f32[2]) + v205.f32[3]) + v206.f32[0]) + v206.f32[1]) + v206.f32[2]) + v206.f32[3];
          v203 += 2;
          v204 -= 8;
        }

        while (v204);
        if (v201 == v200)
        {
          goto LABEL_333;
        }
      }

      else
      {
        v201 = 0;
        v202 = 0.0;
      }

      v207 = v200 - v201;
      v208 = &a2[v201];
      do
      {
        v209 = *v208++;
        v202 = v202 + (v209 * v209);
        --v207;
      }

      while (v207);
    }

LABEL_333:
    v41 = *(v14 + 985) < ((v202 / v200) * 316.23);
    goto LABEL_334;
  }

  v41 = 1;
LABEL_334:
  v38 = 0;
  v40 = (v14 + 1966);
LABEL_335:
  if (a1[31] == -1000)
  {
    v210 = a1[3558];
    v211 = 24;
    if (v210 == 1002)
    {
      v211 = 28;
    }

    v139 = v210 == 0;
    v212 = 20;
    if (!v139)
    {
      v212 = v211;
    }

    a1[35] = vcvtmd_s64_f64(((1.0 - *(v668 + v212)) * 100.0) + 0.5);
  }

  if (v669 > 12)
  {
    if (v669 > 0xE)
    {
      if (v669 > 0x10)
      {
        if (v669 > 0x12)
        {
          v213 = 1105;
        }

        else
        {
          v213 = 1104;
        }
      }

      else
      {
        v213 = 1103;
      }
    }

    else
    {
      v213 = 1102;
    }
  }

  else
  {
    v213 = 1101;
  }

  *v40 = v213;
  v39 = 1;
LABEL_29:
  v42 = a1[28];
  v43 = 0.0;
  if (v42 != 2 || a1[30] == 1)
  {
    goto LABEL_83;
  }

  v44 = a1[36] / a3;
  if (v44 <= 50)
  {
    v45 = 50;
  }

  else
  {
    v45 = a1[36] / a3;
  }

  v46 = (-25.0 / v45) + 1.0;
  v47 = 0;
  v48 = 0.0;
  v49 = 0.0;
  if (a3 >= 4)
  {
    v50 = (a3 - 3);
    v51 = 4;
    if (v50 > 4)
    {
      v51 = (a3 - 3);
    }

    if (v50 < 0xD)
    {
      v52 = 0;
      v47 = 0;
LABEL_57:
      v90 = &a2[2 * v52 + 4];
      do
      {
        v91 = v90[-2];
        v92 = v90[-1];
        v93 = vmul_f32(v91, v91).f32[0] + (v92.f32[0] * v92.f32[0]);
        v94 = vmla_lane_f32(vmul_lane_f32(v91, v91, 1), v92, v92, 1);
        v95 = *v90;
        v96 = v90[1];
        v90 += 4;
        v49 = v49 + ((v93 + (v95.f32[0] * v95.f32[0])) + (v96.f32[0] * v96.f32[0]));
        v47 = vadd_f32(v47, vmla_lane_f32(vmla_lane_f32(v94, v95, v95, 1), v96, v96, 1));
        v52 += 4;
      }

      while (v52 < v50);
      goto LABEL_59;
    }

    v62 = ((v51 - 1) >> 2) + 1;
    v52 = 4 * (v62 & 0x7FFFFFFFFFFFFFFCLL);
    v63 = a2 + 16;
    v64 = v62 & 0x7FFFFFFFFFFFFFFCLL;
    v47.i32[0] = 0;
    v65 = 0.0;
    do
    {
      v67 = *(v63 - 16);
      v66 = *(v63 - 12);
      v69 = *(v63 - 8);
      v68 = *(v63 - 4);
      v70 = *(v63 + 4);
      v72 = *(v63 + 8);
      v71 = *(v63 + 12);
      v73 = vzip1_s32(*v67.i8, *v69.i8);
      v74 = vzip1_s32(*v63, *v72.i8);
      v75 = vzip2_s32(*v67.i8, *v69.i8);
      v76 = vzip2_s32(*v63, *v72.i8);
      v77 = vzip2q_s32(v67, v69).u64[0];
      v78 = vzip2q_s32(*v63, v72).u64[0];
      v79 = vuzp2q_s32(vuzp2q_s32(v67, v69), v67).u64[0];
      v80 = vuzp2q_s32(vuzp2q_s32(*v63, v72), *v63).u64[0];
      v81 = vzip1_s32(*v66.i8, *v68.i8);
      v82 = vzip1_s32(*v70.i8, *v71.i8);
      v83 = vzip2_s32(*v66.i8, *v68.i8);
      v84 = vzip2_s32(*v70.i8, *v71.i8);
      v85 = vzip2q_s32(v66, v68).u64[0];
      v86 = vzip2q_s32(v70, v71).u64[0];
      v68.i64[0] = vuzp2q_s32(vuzp2q_s32(v66, v68), v66).u64[0];
      v70.i64[0] = vuzp2q_s32(vuzp2q_s32(v70, v71), v70).u64[0];
      *v66.i8 = vmul_f32(*v69.i8, *v69.i8);
      *v67.i8 = vmul_f32(*v67.i8, *v67.i8);
      *v71.i8 = vmul_f32(*v72.i8, *v72.i8);
      v87 = vmul_f32(*v63, *v63);
      *v69.i8 = vmla_f32(vmla_f32(vmla_f32(vzip1_s32(*v67.i8, *v66.i8), v77, v77), v81, v81), v85, v85);
      *v72.i8 = vmla_f32(vmla_f32(vmla_f32(vzip1_s32(v87, *v71.i8), v78, v78), v82, v82), v86, v86);
      v88 = vmla_f32(vmla_f32(vmla_f32(vmul_f32(v73, v75), v79, v77), v83, v81), *v68.i8, v85);
      v89 = vmla_f32(vmla_f32(vmla_f32(vmul_f32(v74, v76), v80, v78), v84, v82), *v70.i8, v86);
      *v67.i8 = vmla_f32(vmla_f32(vmla_f32(vzip2_s32(*v67.i8, *v66.i8), v79, v79), v83, v83), *v68.i8, *v68.i8);
      *v66.i8 = vmla_f32(vmla_f32(vmla_f32(vzip2_s32(v87, *v71.i8), v80, v80), v84, v84), *v70.i8, *v70.i8);
      v49 = (((v49 + *v69.i32) + *&v69.i32[1]) + *v72.i32) + *&v72.i32[1];
      v47.f32[0] = (((v47.f32[0] + v88.f32[0]) + v88.f32[1]) + v89.f32[0]) + v89.f32[1];
      v65 = (((v65 + *v67.i32) + *&v67.i32[1]) + *v66.i32) + *&v66.i32[1];
      v63 += 32;
      v64 -= 4;
    }

    while (v64);
    v47.f32[1] = v65;
    if (v62 != (v62 & 0x7FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_57;
    }
  }

LABEL_59:
  v97 = v49 < 1000000000.0;
  v98 = v47.f32[1] < 1000000000.0;
  if (v97 && v98)
  {
    v99 = v47.f32[1];
  }

  else
  {
    v99 = 0.0;
  }

  if (!v97 || !v98)
  {
    v47.f32[0] = 0.0;
    v49 = 0.0;
  }

  v100 = *(a1 + 3568) + (v46 * (v49 - *(a1 + 3568)));
  v101 = *(a1 + 3569) + (v46 * (v47.f32[0] - *(a1 + 3569)));
  v102 = *(a1 + 3570) + (v46 * (v99 - *(a1 + 3570)));
  if (v100 < 0.0)
  {
    v100 = 0.0;
  }

  *(a1 + 3568) = v100;
  if (v101 >= 0.0)
  {
    v103 = v101;
  }

  else
  {
    v103 = 0.0;
  }

  *(a1 + 3569) = v103;
  if (v102 >= 0.0)
  {
    v48 = v102;
  }

  *(a1 + 3570) = v48;
  if (v100 <= v48)
  {
    v104 = v48;
  }

  else
  {
    v104 = v100;
  }

  if (v104 <= 0.0008)
  {
    v109 = *(a1 + 3572);
  }

  else
  {
    v105 = sqrtf(v100);
    v106 = sqrtf(v48);
    v107 = sqrtf(v105);
    v108 = sqrtf(v106);
    if (v103 >= (v105 * v106))
    {
      v103 = v105 * v106;
    }

    *(a1 + 3569) = v103;
    v109 = *(a1 + 3571) + ((((vabds_f32(v107, v108) / (v108 + (v107 + 1.0e-15))) * sqrtf(1.0 - ((v103 / ((v105 * v106) + 1.0e-15)) * (v103 / ((v105 * v106) + 1.0e-15))))) - *(a1 + 3571)) / v44);
    *(a1 + 3571) = v109;
    v110 = -0.02 / v44;
    if ((*(a1 + 3572) + v110) > v109)
    {
      v109 = *(a1 + 3572) + v110;
    }

    *(a1 + 3572) = v109;
  }

  v43 = v109 * 20.0;
  if (v43 > 1.0)
  {
    v43 = 1.0;
  }

LABEL_83:
  v111 = a1[41];
  if (v111 == -1000)
  {
    v113 = a1[36];
    v112 = a1[37];
    v111 = 60 * v113 / a3 + v113 * v42;
    a1[40] = v111;
    if (v112)
    {
      goto LABEL_92;
    }
  }

  else if (v111 == -1)
  {
    v113 = a1[36];
    v112 = a1[37];
    v111 = 8 * v15 * v113 / a3;
    a1[40] = v111;
    if (v112)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v113 = a1[36];
    v112 = a1[37];
    a1[40] = v111;
    if (v112)
    {
      goto LABEL_92;
    }
  }

  v114 = (12 * v113 / a3 / 2 + 12 * v111 / 8) / (12 * v113 / a3);
  if (v114 >= v15)
  {
    v115 = v15;
  }

  else
  {
    v115 = v114;
  }

  v111 = 8 * 12 * v113 / a3 * v115 / 12;
  a1[40] = v111;
  if (v115 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v115;
  }

LABEL_92:
  v116 = v113 / a3;
  if (v15 >= 3 && v111 >= 24 * v116)
  {
    v117 = (v15 * v116);
    if (v116 > 49)
    {
      v653 = v41;
      v119 = a1[10];
      v120 = a1[11];
      if (v116 == 50)
      {
        v118 = 0;
        v121 = v111;
        if (v112)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v121 = v111 + (v116 - 50) * (-40 * v42 - 20);
        v118 = 1;
        if (v112)
        {
          goto LABEL_133;
        }
      }

LABEL_132:
      v121 += v121 / -12;
LABEL_133:
      v131 = a1[31];
      if (v131 == 3001)
      {
        v132 = 127;
        v133 = v120 + 90;
        v134 = 12 * v119 + 20;
        v135 = a1[30];
        if (v135 != -1000)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v131 == 3002)
        {
          v132 = 0;
          v133 = v120 + 90;
          v134 = 12 * v119 + 20;
          v135 = a1[30];
          if (v135 == -1000)
          {
            goto LABEL_136;
          }

LABEL_144:
          if (v42 == 2)
          {
            a1[3549] = v135;
            v42 = v135;
            goto LABEL_147;
          }

LABEL_146:
          a1[3549] = v42;
LABEL_147:
          v137 = v111;
          if (v118)
          {
            v137 = v111 + (-40 * v42 - 20) * (v116 - 50);
          }

          if (!v112)
          {
            v137 += v137 / -12;
          }

          v138 = a1[46];
          v647 = v38;
          if (v39 | v38)
          {
            v139 = 1;
          }

          else
          {
            v139 = v138 == 0;
          }

          v140 = !v139;
          a1[14] = v140;
          v141 = a1[27];
          if (v141 == 2051)
          {
            goto LABEL_158;
          }

          v142 = a1[34];
          if (v142 != -1000)
          {
            a1[3557] = v142;
            goto LABEL_194;
          }

          v145 = v137 * v133 / 100 - v137 * v133 / 100 * v119 / v134;
          v146 = ((v43 * 10000.0) + ((1.0 - v43) * 10000.0)) + ((v132 * v132 * (((v43 * 44000.0) + ((1.0 - v43) * 64000.0)) - ((v43 * 10000.0) + ((1.0 - v43) * 10000.0)))) >> 14);
          if (v141 == 2048)
          {
            v146 += 8000;
          }

          v147 = a1[3558];
          v25 = (v146 - 4000);
          v26 = (v146 + 4000);
          if (v147 > 0)
          {
            v146 += 4000;
          }

          if (v147 == 1002)
          {
            v146 = v25;
          }

          if (v145 >= v146)
          {
            v142 = 1002;
          }

          else
          {
            v142 = 1000;
          }

          a1[3557] = v142;
          if (a1[12] && v119 > (128 - v132) >> 4)
          {
            if (a1[47] == 2 && v132 < 0x1A)
            {
              goto LABEL_179;
            }

            v142 = 1000;
            a1[3557] = 1000;
          }

          if (v132 <= 0x64)
          {
            v140 = 0;
          }

          if (v140 == 1)
          {
            v142 = 1000;
            a1[3557] = 1000;
          }

LABEL_179:
          if (v118)
          {
            v148 = 9000;
          }

          else
          {
            v148 = 6000;
          }

          if (v15 < v148 * a3 / (8 * v113))
          {
LABEL_158:
            v658 = a1 + 3557;
            v142 = 1002;
            a1[3557] = 1002;
            v143 = v113 / 100 > a3;
            goto LABEL_159;
          }

LABEL_194:
          v658 = a1 + 3557;
          v152 = v113 / 100;
          v143 = v152 > a3;
          if (v142 != 1002)
          {
            v144 = v659;
            if (v152 > a3)
            {
              v142 = 1002;
              *v658 = 1002;
              v143 = 1;
            }

LABEL_197:
            if (a1[44])
            {
              v142 = 1002;
              *v658 = 1002;
            }

            v153 = a1[3558];
            if (v153 >= 1)
            {
              if (v142 != 1002 && v153 == 1002)
              {
                v648 = 1;
                v655 = 0;
                v656 = 1;
                goto LABEL_203;
              }

              if (v142 == 1002)
              {
                if (v153 == 1002 || v143)
                {
                  v655 = 0;
                  v656 = 0;
                  LODWORD(v651) = 0;
                  v648 = 1;
                  v142 = 1002;
                  goto LABEL_208;
                }

                v648 = 0;
                *v658 = v153;
                v655 = 1;
                v656 = 0;
                v142 = v153;
LABEL_203:
                LODWORD(v651) = 1;
LABEL_208:
                if (v42 != 1 || a1[3559] != 2 || a1[17] || v153 == 1002 || v142 == 1002)
                {
                  a1[17] = 0;
                  v154 = -40 * v42 - 20;
                }

                else
                {
                  a1[17] = 1;
                  a1[3549] = 2;
                  v154 = -100;
                }

                v659 = a1 + v144;
                v155 = v154 * (v116 - 50);
                if (!v118)
                {
                  v155 = 0;
                }

                v156 = v155 + v111;
                if (!v112)
                {
                  v156 += v156 / -12;
                }

                v157 = (v156 * v133 / 100);
                LODWORD(v652) = v15 * v116;
                v649 = v118;
                if ((v142 & 0xFFFFFFFE) == 0x3E8)
                {
                  if (v120 <= 1)
                  {
                    LODWORD(v157) = 4 * v157 / 5;
                  }

                  v157 = (v157 - v157 * v119 / (6 * v119 + 10));
                  if (v153 == 1002)
                  {
                    goto LABEL_220;
                  }
                }

                else
                {
                  if (v142 == 1002)
                  {
                    v654 = 0;
                    if (v120 <= 4)
                    {
                      v157 = (9 * v157 / 10);
                    }

                    v142 = 1002;
                    v162 = 1;
LABEL_266:
                    v171 = 9000;
                    v172 = ((2500 * v132 * v132) >> 14) + 11000;
                    v173 = ((2000 * v132 * v132) >> 14) + 12000;
                    v174 = a1[3564];
                    if (v174)
                    {
                      if (v157 >= v173)
                      {
                        v175 = 1105;
                        a1[3562] = 1105;
                        a1[3561] = 1105;
                        v176 = a1[33];
                        if (v176 < 1105)
                        {
                          goto LABEL_361;
                        }

                        goto LABEL_287;
                      }

                      if (v157 >= v172)
                      {
                        v175 = 1104;
                        *(v14 + 22) = vdup_n_s32(0x450u);
                        v176 = a1[33];
                        if (v176 >= 1104)
                        {
                          goto LABEL_287;
                        }

                        goto LABEL_361;
                      }

                      if (v157 >= 9000)
                      {
                        v175 = 1103;
                        a1[3562] = 1103;
                        a1[3561] = 1103;
                        v176 = a1[33];
                        if (v176 < 1103)
                        {
                          goto LABEL_361;
                        }

LABEL_287:
                        v181 = a1[32];
                        if (v181 == -1000)
                        {
                          goto LABEL_362;
                        }

                        goto LABEL_288;
                      }
                    }

                    else
                    {
                      v177 = a1[3562];
                      if (v177 < 1105)
                      {
                        v178 = 2000;
                      }

                      else
                      {
                        v178 = -2000;
                      }

                      if (v157 >= v178 + v173)
                      {
                        v175 = 1105;
                        v182 = 1;
                        goto LABEL_356;
                      }

                      if (v177 < 1104)
                      {
                        v179 = 1000;
                      }

                      else
                      {
                        v179 = -1000;
                      }

                      if (v157 >= v179 + v172)
                      {
                        v175 = 1104;
                        v182 = 1;
                        goto LABEL_356;
                      }

                      if (v177 < 1103)
                      {
                        v180 = 700;
                      }

                      else
                      {
                        v180 = -700;
                      }

                      if (v157 >= v180 + 9000)
                      {
                        v182 = 0;
                        v175 = 1103;
                        goto LABEL_356;
                      }

                      if (v177 >= 1102)
                      {
                        v171 = 8300;
                      }

                      else
                      {
                        v171 = 9700;
                      }
                    }

                    v182 = 0;
                    if (v157 >= v171)
                    {
                      v175 = 1103;
                    }

                    else
                    {
                      v175 = 1101;
                    }

LABEL_356:
                    a1[3562] = v175;
                    a1[3561] = v175;
                    if (v174)
                    {
                      v214 = 1;
                    }

                    else
                    {
                      v214 = v162;
                    }

                    if (v214)
                    {
                      v176 = a1[33];
                      if (v175 > v176)
                      {
                        goto LABEL_361;
                      }

                      goto LABEL_287;
                    }

                    v216 = v182 ^ 1;
                    if (a1[22])
                    {
                      v216 = 1;
                    }

                    if (v216)
                    {
                      v162 = 0;
                      v176 = a1[33];
                      if (v175 <= v176)
                      {
                        goto LABEL_287;
                      }
                    }

                    else
                    {
                      v162 = 0;
                      v175 = 1103;
                      a1[3561] = 1103;
                      v176 = a1[33];
                      if (v176 >= 1103)
                      {
                        goto LABEL_287;
                      }
                    }

LABEL_361:
                    a1[3561] = v176;
                    v175 = v176;
                    v181 = a1[32];
                    if (v181 == -1000)
                    {
LABEL_362:
                      if (v142 == 1002)
                      {
                        goto LABEL_367;
                      }

LABEL_363:
                      if (v117 <= 1874)
                      {
                        if (v175 >= 1103)
                        {
                          v175 = 1103;
                        }

                        a1[3561] = v175;
                      }

LABEL_367:
                      v215 = a1[36];
                      if (v215 > 24000)
                      {
                        goto LABEL_387;
                      }

                      if (v175 <= 1104)
                      {
                        if (v215 >= 16001)
                        {
                          goto LABEL_387;
                        }

                        if (v175 != 1104)
                        {
                          if (v215 >= 12001)
                          {
                            goto LABEL_387;
                          }

                          if (v175 <= 1102)
                          {
                            if (v175 == 1102 && v215 < 8001)
                            {
                              goto LABEL_375;
                            }

                            goto LABEL_387;
                          }

LABEL_374:
                          v175 = 1102;
                          a1[3561] = 1102;
                          if (v215 <= 8000)
                          {
LABEL_375:
                            v175 = 1101;
                            a1[3561] = 1101;
                          }

LABEL_387:
                          if (v181 != -1000)
                          {
                            goto LABEL_407;
                          }

                          v217 = *v40;
                          if (!*v40)
                          {
                            goto LABEL_407;
                          }

                          v218 = a1[3549];
                          if (v157 <= 18000 * v218)
                          {
                            if (v162)
                            {
                              v220 = 1101;
                              goto LABEL_402;
                            }
                          }

                          else
                          {
                            if (v157 <= 24000 * v218)
                            {
                              v219 = v162;
                            }

                            else
                            {
                              v219 = 0;
                            }

                            if (v219)
                            {
                              v220 = 1102;
LABEL_402:
                              if (v217 <= v220)
                              {
                                v217 = v220;
                              }

                              *v40 = v217;
                              if (v175 >= v217)
                              {
                                v175 = v217;
                              }

                              a1[3561] = v175;
LABEL_407:
                              v221 = a1[10];
                              if (a1[12])
                              {
                                v222 = v221 == 0;
                              }

                              else
                              {
                                v222 = 1;
                              }

                              if (v222)
                              {
                                v223 = 1;
                              }

                              else
                              {
                                v223 = v162;
                              }

                              if (v223)
                              {
                                v224 = 0;
                                goto LABEL_447;
                              }

                              v225 = a1[13];
                              if (v221 >= 25)
                              {
                                v226 = 25;
                              }

                              else
                              {
                                v226 = a1[10];
                              }

                              v227 = 125 - v226;
                              v228 = 2 * v175;
                              v229 = fec_thresholds[2 * v175 - 2202];
                              v230 = fec_thresholds[2 * v175 - 2201];
                              if (v221 <= 5)
                              {
                                if (v225 == 1)
                                {
                                  v231 = fec_thresholds[2 * v175 - 2201];
                                }

                                else
                                {
                                  v231 = 0;
                                }

                                v232 = v229 - v231;
                                if (v225)
                                {
                                  v233 = 0;
                                }

                                else
                                {
                                  v233 = v230;
                                }

                                v224 = v157 > ((655 * (v232 + v233) * v227) >> 16);
LABEL_447:
                                LODWORD(v650) = v157;
                                a1[13] = v224;
                                v246 = opus_custom_encoder_ctl((a1 + v661), 4036, v157, v25, v26, v117, v118, v40, v662);
                                v249 = a1[3557];
                                if (v249 == 1002 && a1[3561] == 1102)
                                {
                                  a1[3561] = 1103;
                                }

                                v250 = v663;
                                v251 = v660;
                                if (a1[44])
                                {
                                  v252 = 1101;
                                  a1[3561] = 1101;
                                }

                                else
                                {
                                  v252 = a1[3561];
                                  if (v249 == 1000 && v252 > 1103)
                                  {
                                    a1[3557] = 1001;
                                    v253 = a1[36];
                                    v254 = (v253 / 50);
                                    if (v253 / 50 >= a3 && 3 * v253 / 50 >= a3)
                                    {
                                      v249 = 1001;
                                      goto LABEL_475;
                                    }

                                    goto LABEL_470;
                                  }
                                }

                                if (v249 == 1001 && v252 < 1104)
                                {
                                  v249 = 1000;
                                  a1[3557] = 1000;
                                  v253 = a1[36];
                                  LODWORD(v254) = v253 / 50;
                                  goto LABEL_457;
                                }

                                v253 = a1[36];
                                v254 = (v253 / 50);
                                if (v253 / 50 >= a3 || v249 == 1000)
                                {
LABEL_457:
                                  if (3 * v253 / 50 < a3)
                                  {
                                    v255 = 2 * v253 / 25;
                                    if (3 * v253 / 25 == a3)
                                    {
                                      v256 = 3 * v253 / 50;
                                    }

                                    else
                                    {
                                      v256 = v254;
                                    }

                                    v257 = v253 / 25;
                                    if (v255 != a3)
                                    {
                                      v257 = v256;
                                    }

                                    if (v249 == 1000)
                                    {
                                      v254 = v257;
                                    }

                                    else
                                    {
                                      v254 = v254;
                                    }

                                    goto LABEL_470;
                                  }

LABEL_475:
                                  v259 = v651;
                                  if (a1[3563])
                                  {
                                    a1[3563] = 0;
                                    v654 = 2;
                                    v656 = 1;
                                    v259 = 1;
                                  }

                                  v260 = 0;
                                  v261 = a1[40];
                                  if (v249 == 1002)
                                  {
                                    v262 = 0;
                                  }

                                  else
                                  {
                                    v262 = 0;
                                    if (v259)
                                    {
                                      v263 = a1[3549];
                                      v264 = 40 * v263 + 20;
                                      v265 = 4123168605 * (v261 + v264 * (200 - v116));
                                      v266 = (v265 >> 42) + (v265 >> 63);
                                      v267 = 240 * (8 * v15 - 2 * v264) / (48000 / v116 + 240);
                                      v268 = __OFADD__(v267, v264);
                                      v269 = v267 + v264;
                                      if (v269 < 0 != v268)
                                      {
                                        v269 += 7;
                                      }

                                      v270 = v269 >> 3;
                                      if (v266 < v270)
                                      {
                                        v270 = v266;
                                      }

                                      v271 = (8 * v263) | 4;
                                      if (v270 >= 257)
                                      {
                                        v272 = 257;
                                      }

                                      else
                                      {
                                        v272 = v270;
                                      }

                                      if (v270 <= v271)
                                      {
                                        v260 = 0;
                                      }

                                      else
                                      {
                                        v260 = v272;
                                      }

                                      v262 = v260 != 0;
                                    }
                                  }

                                  v645 = v262;
                                  LODWORD(v660) = v252;
                                  v646 = &v638;
                                  v643 = v260;
                                  v273 = v261 * a3 / (8 * v253);
                                  if (v15 - v260 < v273)
                                  {
                                    v273 = v15 - v260;
                                  }

                                  v641 = v273;
                                  v644 = (v250 + 1);
                                  v666[0] = v250 + 1;
                                  *(&v666[1] + 4) = xmmword_273BBA7F0;
                                  *(&v666[3] + 4) = xmmword_273B920E0;
                                  v655 = v15 - 1;
                                  LODWORD(v666[1]) = v15 - 1;
                                  *(&v666[5] + 4) = 0xFFFFFFFFLL;
                                  v642 = v657 + a3;
                                  MEMORY[0x28223BE20](v246, v247, v248);
                                  v275 = (&v638 - v274);
                                  v277 = a1[28];
                                  LODWORD(v274) = (a1[43] - v276) * v277;
                                  v651 = (v14 + 46);
                                  v278 = v277 * v276;
                                  v662 = v275;
                                  memcpy(v275, &v14[2 * v274 + 46], 4 * v278);
                                  v285 = a1[3557];
                                  if (v285 == 1002)
                                  {
                                    v286 = 193536;
                                  }

                                  else
                                  {
                                    v286 = *(v659 + 8);
                                  }

                                  v287 = a1[3551] + ((983 * (v286 - a1[3551])) >> 16);
                                  a1[3551] = v287;
                                  v288 = &v662->f32[v278];
                                  v289 = (a1 + 3553);
                                  v290 = a1[36];
                                  if (a1[27] == 2048)
                                  {
                                    v291 = v287 >> 8;
                                    if (v287 >> 8 < 0)
                                    {
                                      v292 = 0;
                                    }

                                    else if (v291 <= 0xF7E)
                                    {
                                      v306 = 1 << (v291 >> 7);
                                      v307 = ((v287 >> 8) & 0x7F) + ((-174 * ((v287 >> 8) & 0x7F) * (128 - ((v287 >> 8) & 0x7F))) >> 16);
                                      v308 = v307 * (v306 >> 7);
                                      v309 = v307 << (v291 >> 7) >> 7;
                                      if (v291 > 0x7FF)
                                      {
                                        LOWORD(v309) = v308;
                                      }

                                      v292 = 2471 * (v309 + v306);
                                    }

                                    else
                                    {
                                      v292 = -2471;
                                    }

                                    v310 = 0;
                                    v311 = v292 / (v290 / 1000);
                                    v312 = -471 * v311 + 0x10000000;
                                    v313 = vcvts_n_f32_s32((((((v311 * v311) << 16) - 0x80000000000000) >> 32) * (v312 >> 6)) >> 16, 0x1CuLL);
                                    v314 = vcvts_n_f32_s32(((v312 >> 6) * (v312 >> 6)) >> 16, 0x1CuLL);
                                    v315 = vcvts_n_f32_s32(v312, 0x1CuLL);
                                    v316 = vcvts_n_f32_s32(942 * v311 - 0x20000000, 0x1CuLL);
                                    v317 = a3;
                                    v318 = *(a1 + 3553);
                                    v319 = *(a1 + 3554);
                                    v320 = a3;
                                    do
                                    {
                                      v321 = a2[v310];
                                      v322 = v318 + (v315 * v321);
                                      v318 = (v319 - (v322 * v313)) + (v316 * v321);
                                      *(a1 + 3553) = v318;
                                      v319 = ((v315 * v321) - (v322 * v314)) + 1.0e-30;
                                      *(a1 + 3554) = v319;
                                      v288[v310] = v322;
                                      v310 += v277;
                                      --v320;
                                    }

                                    while (v320);
                                    if (v277 == 2)
                                    {
                                      v323 = a2 + 1;
                                      v324 = v288 + 1;
                                      v325 = *(a1 + 3555);
                                      v326 = *(a1 + 3556);
                                      do
                                      {
                                        v327 = *v323;
                                        v323 += 2;
                                        v328 = v325 + (v315 * v327);
                                        v325 = (v326 - (v328 * v313)) + (v316 * v327);
                                        *(a1 + 3555) = v325;
                                        v326 = ((v315 * v327) - (v328 * v314)) + 1.0e-30;
                                        *(a1 + 3556) = v326;
                                        *v324 = v328;
                                        v324 += 2;
                                        --v317;
                                      }

                                      while (v317);
                                    }
                                  }

                                  else
                                  {
                                    v293 = 18.9 / v290;
                                    v294 = 1.0 - v293;
                                    v295 = *v289;
                                    v296 = a3;
                                    if (v277 == 2)
                                    {
                                      v297 = *(a1 + 3555);
                                      v298 = v288 + 1;
                                      v299 = a2 + 1;
                                      do
                                      {
                                        v300 = *(v299 - 1);
                                        v301 = v300 - v295;
                                        v302 = *v299 - v297;
                                        v295 = ((v293 * v300) + 1.0e-30) + (v294 * v295);
                                        v297 = ((v293 * *v299) + 1.0e-30) + (v294 * v297);
                                        *(v298 - 1) = v301;
                                        *v298 = v302;
                                        v298 += 2;
                                        v299 += 2;
                                        --v296;
                                      }

                                      while (v296);
                                      *(a1 + 3553) = v295;
                                      *(a1 + 3555) = v297;
                                    }

                                    else
                                    {
                                      v303 = &v662->f32[v278];
                                      do
                                      {
                                        v304 = *a2++;
                                        v305 = v304 - v295;
                                        v295 = ((v293 * v304) + 1.0e-30) + (v294 * v295);
                                        *v303++ = v305;
                                        --v296;
                                      }

                                      while (v296);
                                      *v289 = v295;
                                    }
                                  }

                                  if (!a13 || (v329 = (v277 * a3), v329 < 1))
                                  {
LABEL_527:
                                    v340 = 1.0;
                                    if (v285 == 1002)
                                    {
                                      v341 = v660;
                                      v342 = v660 - 1101;
                                      v343 = v642;
                                      if ((v660 - 1101) <= 3)
                                      {
LABEL_529:
                                        v344 = dword_273BC0F60[v342];
                                        goto LABEL_636;
                                      }

LABEL_635:
                                      v344 = 21;
LABEL_636:
                                      v445 = v661;
                                      opus_custom_encoder_ctl((a1 + v661), 10012, v279, v280, v281, v282, v283, v284, v344);
                                      opus_custom_encoder_ctl((a1 + v445), 10008, v446, v447, v448, v449, v450, v451, a1[3549]);
                                      v458 = opus_custom_encoder_ctl((a1 + v445), 4002, v452, v453, v454, v455, v456, v457, 0xFFFFFFFFLL);
                                      if (a1[3557] == 1000)
                                      {
                                        v466 = a1[28];
                                        MEMORY[0x28223BE20](v458, v459, v460);
                                        v468 = &v638 - v467;
                                        goto LABEL_650;
                                      }

                                      opus_custom_encoder_ctl((a1 + v445), 4006, v460, v461, v462, v463, v464, v465, 0);
                                      v475 = opus_custom_encoder_ctl((a1 + v445), 10002, v469, v470, v471, v472, v473, v474, (2 * (a1[19] == 0)));
                                      v483 = a1[37];
                                      if (a1[3557] == 1001)
                                      {
                                        if (!v483)
                                        {
                                          v466 = a1[28];
                                          MEMORY[0x28223BE20](v475, v476, v477);
                                          v468 = &v638 - v509;
                                          v505 = 1001;
LABEL_647:
                                          v510 = a1[3558];
                                          if (v505 != v510 && v510 >= 1)
                                          {
                                            memcpy(v468, &v651->f32[(v504 / -400 - v657 + a1[43]) * v466], 4 * v506);
                                          }

LABEL_650:
                                          v511 = a1[43];
                                          v512 = (v511 - v343) * v466;
                                          if (v512 < 1)
                                          {
                                            v518 = (v662 + 4 * (v343 - v511) * v466);
                                            v517 = 4 * v511 * v466;
                                            v516 = v651;
                                          }

                                          else
                                          {
                                            v513 = v466 * a3;
                                            v514 = v651;
                                            memmove(v651, &v651->f32[v513], 4 * v512);
                                            v515 = a1[28];
                                            v516 = &v514->i8[4 * (a1[43] - v343) * v515];
                                            v517 = 4 * v515 * v343;
                                            v518 = v662;
                                          }

                                          memcpy(v516, v518, v517);
                                          v520.i32[0] = a1[3552];
                                          if (v520.f32[0] < 1.0 || v340 < 1.0)
                                          {
                                            *&v519 = v340;
                                            gain_fade(v662, v662, *(v665 + 4), a3, a1[28], *(v665 + 72), a1[36], v520.f32[0], v519);
                                          }

                                          *(a1 + 3552) = v340;
                                          v521 = a1[3557];
                                          if (v521 != 1001 || a1[3549] == 1)
                                          {
                                            if (v650 <= 32000)
                                            {
                                              if (v650 >= 16000)
                                              {
                                                v522 = 0x4000 - (65536000 - (v650 << 11)) / (v650 - 14000);
                                              }

                                              else
                                              {
                                                v522 = 0;
                                              }
                                            }

                                            else
                                            {
                                              v522 = 0x4000;
                                            }

                                            a1[23] = v522;
                                          }

                                          LODWORD(v660) = v341;
                                          if (!*(a1 + 1783) && a1[28] == 2)
                                          {
                                            v523 = *v14;
                                            v524 = a1[23];
                                            if (v523 < 0x4000 || v524 < 0x4000)
                                            {
                                              v520.f32[0] = vcvts_n_f32_s32(v523, 0xEuLL);
                                              *&v519 = vcvts_n_f32_s32(v524, 0xEuLL);
                                              stereo_fade(v662->f32, v662, *(v665 + 4), a3, *(v665 + 72), a1[36], v520, v519);
                                              *v14 = v524;
                                            }
                                          }

                                          if (v521 == 1002)
                                          {
                                            goto LABEL_691;
                                          }

                                          v525 = __clz(v666[4]);
                                          v526 = v521 == 1001 ? 5 : -15;
                                          if ((LODWORD(v666[3]) + v525 + v526) > (8 * v655))
                                          {
                                            goto LABEL_691;
                                          }

                                          v139 = v521 == 1001;
                                          v527 = v645;
                                          if (v139)
                                          {
                                            ec_enc_bit_logp(v666, v645, 12);
                                          }

                                          if (!v527)
                                          {
LABEL_691:
                                            v528 = 0;
                                            v532 = 0;
                                            a1[3563] = 0;
                                            v654 = 1;
                                          }

                                          else
                                          {
                                            v528 = 1;
                                            ec_enc_bit_logp(v666, v656, 1);
                                            v529 = __clz(v666[4]);
                                            if (*v658 == 1001)
                                            {
                                              v530 = -14;
                                            }

                                            else
                                            {
                                              v530 = -25;
                                            }

                                            v531 = v655 - ((v530 + LODWORD(v666[3]) + v529) >> 3);
                                            if (v531 >= v643)
                                            {
                                              v531 = v643;
                                            }

                                            if (v531 <= 2)
                                            {
                                              v531 = 2;
                                            }

                                            if (v531 >= 257)
                                            {
                                              v532 = 257;
                                            }

                                            else
                                            {
                                              v532 = v531;
                                            }

                                            if (*v658 == 1001)
                                            {
                                              ec_encode(v666, v532 - 2, v532 - 1, 0x100u);
                                            }

                                            v654 = 0;
                                          }

                                          v533 = *v658;
                                          if (*v658 == 1002)
                                          {
                                            v534 = 0;
                                          }

                                          else
                                          {
                                            v534 = 17;
                                          }

                                          v657 = v532;
                                          if (v533 == 1000)
                                          {
                                            v535 = ((LODWORD(v666[3]) + __clz(v666[4]) - 25) >> 3);
                                            ec_enc_done(v666);
                                            v659 = v535;
                                            v542 = v535;
                                          }

                                          else
                                          {
                                            v543 = (v655 - v532);
                                            memmove(v543 + v666[0] - HIDWORD(v666[1]), (v666[0] + LODWORD(v666[1]) - HIDWORD(v666[1])), HIDWORD(v666[1]));
                                            v542 = 0;
                                            v659 = v543;
                                            LODWORD(v666[1]) = v543;
                                          }

                                          v544 = v661;
                                          if ((v528 & 1) != 0 || *v658 != 1000)
                                          {
                                            opus_custom_encoder_ctl((a1 + v661), 10022, v536, v537, v538, v539, v540, v541, v668);
                                            if (*v658 == 1001)
                                            {
                                              *&v664[0] = *(a1 + 25);
                                              opus_custom_encoder_ctl((a1 + v661), 10028, v536, v537, v538, v539, v540, v541, v664);
                                            }

                                            if ((v656 & v528) == 1)
                                            {
                                              v544 = v661;
                                              opus_custom_encoder_ctl((a1 + v661), 10010, v536, v537, v538, v539, v540, v541, 0);
                                              opus_custom_encoder_ctl((a1 + v544), 4006, v546, v547, v548, v549, v550, v551, 0);
                                              opus_custom_encoder_ctl((a1 + v544), 4002, v552, v553, v554, v555, v556, v557, 0xFFFFFFFFLL);
                                              if ((celt_encode_with_ec((a1 + v544), v662->f32, a1[36] / 200, &v644[v659], v657, 0) & 0x80000000) != 0)
                                              {
                                                return 4294967293;
                                              }

                                              v652 = v468;
                                              opus_custom_encoder_ctl((a1 + v544), 4031, v558, v559, v560, v561, v562, v563, (&v665 + 12));
                                              opus_custom_encoder_ctl((a1 + v544), 4028, v564, v565, v566, v567, v568, v569, v638);
                                              v545 = 1;
                                              v656 = 1;
                                            }

                                            else
                                            {
                                              v652 = v468;
                                              v545 = 0;
                                              v544 = v661;
                                            }
                                          }

                                          else
                                          {
                                            v652 = v468;
                                            v545 = 0;
                                          }

                                          opus_custom_encoder_ctl((a1 + v544), 10010, v536, v537, v538, v539, v540, v541, v534);
                                          if (*v658 == 1000)
                                          {
                                            goto LABEL_721;
                                          }

                                          v576 = a1[3558];
                                          if (*v658 != v576 && v576 >= 1)
                                          {
                                            v577 = v661;
                                            opus_custom_encoder_ctl((a1 + v661), 4028, v570, v571, v572, v573, v574, v575, v638);
                                            celt_encode_with_ec((a1 + v577), v652, a1[36] / 400, v664, 2, 0);
                                            opus_custom_encoder_ctl((a1 + v577), 10002, v578, v579, v580, v581, v582, v583, 0);
                                          }

                                          if ((LODWORD(v666[3]) + __clz(v666[4]) - 32) > 8 * v659)
                                          {
                                            goto LABEL_721;
                                          }

                                          v584 = v661;
                                          if (v545 && *v658 == 1001 && a1[37])
                                          {
                                            opus_custom_encoder_ctl((a1 + v661), 4002, v570, v571, v572, v573, v574, v575, (a1[40] - a1[9]));
                                            v584 = v661;
                                          }

                                          v585 = v584;
                                          opus_custom_encoder_ctl((a1 + v584), 4006, v570, v571, v572, v573, v574, v575, a1[37]);
                                          v586 = celt_encode_with_ec((a1 + v585), v662->f32, a3, 0, v659, v666);
                                          if ((v586 & 0x80000000) != 0)
                                          {
                                            return 4294967293;
                                          }

                                          v542 = v586;
                                          if (v545 && *v658 == 1001)
                                          {
                                            v587 = v660;
                                            if (a1[37])
                                            {
                                              v588 = v659;
                                              v589 = v657;
                                              memmove(&v644[v586], &v644[v659], v657);
                                              v659 = v588 + v589;
                                            }
                                          }

                                          else
                                          {
LABEL_721:
                                            v587 = v660;
                                          }

                                          if (((v654 | v656) & 1) == 0)
                                          {
                                            v656 = v528;
                                            v590 = a1[36] / 200;
                                            v591 = a1[36] / 400;
                                            v592 = v661;
                                            opus_custom_encoder_ctl((a1 + v661), 4028, v570, v571, v572, v573, v574, v575, v638);
                                            opus_custom_encoder_ctl((a1 + v592), 10010, v593, v594, v595, v596, v597, v598, 0);
                                            opus_custom_encoder_ctl((a1 + v592), 10002, v599, v600, v601, v602, v603, v604, 0);
                                            opus_custom_encoder_ctl((a1 + v592), 4006, v605, v606, v607, v608, v609, v610, 0);
                                            opus_custom_encoder_ctl((a1 + v592), 4002, v611, v612, v613, v614, v615, v616, 0xFFFFFFFFLL);
                                            if (a1[3557] == 1001)
                                            {
                                              memmove((v666[0] + v542 - HIDWORD(v666[1])), (v666[0] + LODWORD(v666[1]) - HIDWORD(v666[1])), HIDWORD(v666[1]));
                                              LODWORD(v666[1]) = v542;
                                              v659 = v542;
                                            }

                                            v617 = a1[28] * (a3 - v590 - v591);
                                            v618 = v591;
                                            v620 = v661;
                                            v619 = v662;
                                            celt_encode_with_ec((a1 + v661), &v662->f32[v617], v618, v664, 2, 0);
                                            if ((celt_encode_with_ec((a1 + v620), &v619->f32[a1[28] * (a3 - v590)], v590, &v644[v659], v657, 0) & 0x80000000) != 0)
                                            {
                                              return 4294967293;
                                            }

                                            opus_custom_encoder_ctl((a1 + v620), 4031, v621, v622, v623, v624, v625, v626, (&v665 + 12));
                                            v587 = v660;
                                            LOBYTE(v528) = v656;
                                          }

                                          v627 = gen_toc(a1[3557], a1[36] / a3, v587, a1[3549]);
                                          v628 = v663;
                                          *v663 = v627;
                                          v629 = v666[4];
                                          *(v14 + 987) = HIDWORD(v665) ^ LODWORD(v666[4]);
                                          if (v648)
                                          {
                                            v630 = *v658;
                                          }

                                          else
                                          {
                                            v630 = 1002;
                                          }

                                          v631 = v653;
                                          v632 = v647;
                                          a1[3558] = v630;
                                          v633 = a1[3549];
                                          a1[3559] = v633;
                                          a1[3560] = a3;
                                          a1[3564] = 0;
                                          if (a1[46] && LODWORD(v668[0]) | v632 && !v631)
                                          {
                                            v636 = a1[36];
                                            v637 = *(v14 + 984) + 2000 * a3 / v636;
                                            *(v14 + 984) = v637;
                                            if (v637 >= 401)
                                            {
                                              if (v637 < 0x4B1)
                                              {
                                                *(v14 + 987) = 0;
                                                *v628 = gen_toc(*v658, v636 / a3, v587, v633);
                                                return 1;
                                              }

                                              *(v14 + 984) = 400;
                                            }
                                          }

                                          else
                                          {
                                            *(v14 + 984) = 0;
                                          }

                                          if ((__clz(v629) + LODWORD(v666[3]) - 32) <= (8 * v655))
                                          {
                                            if (*v658 == 1000)
                                            {
                                              v635 = v528;
                                            }

                                            else
                                            {
                                              v635 = 1;
                                            }

                                            v634 = v657;
                                            if ((v635 & 1) == 0 && v542 >= 3)
                                            {
                                              while (!v628[v542])
                                              {
                                                v56 = v542 <= 3;
                                                LODWORD(v542) = v542 - 1;
                                                if (v56)
                                                {
                                                  LODWORD(v542) = 2;
                                                  break;
                                                }
                                              }
                                            }
                                          }

                                          else
                                          {
                                            *v644 = 0;
                                            *(v14 + 987) = 0;
                                            LODWORD(v542) = 1;
                                            v634 = v657;
                                          }

                                          if (a1[37])
                                          {
                                            return v634 + v542 + 1;
                                          }

                                          if (!opus_packet_pad(v628, v634 + v542 + 1, v15))
                                          {
                                            return v15;
                                          }

                                          return 4294967293;
                                        }

                                        v484 = v661;
                                        opus_custom_encoder_ctl((a1 + v661), 4002, v477, v478, v479, v480, v481, v482, (a1[40] - a1[9]));
                                        v475 = opus_custom_encoder_ctl((a1 + v484), 4020, v485, v486, v487, v488, v489, v490, 0);
                                      }

                                      else if (v483)
                                      {
                                        v491 = v661;
                                        opus_custom_encoder_ctl((a1 + v661), 4006, v477, v478, v479, v480, v481, v482, 1);
                                        opus_custom_encoder_ctl((a1 + v491), 4020, v492, v493, v494, v495, v496, v497, a1[38]);
                                        v475 = opus_custom_encoder_ctl((a1 + v491), 4002, v498, v499, v500, v501, v502, v503, a1[40]);
                                      }

                                      v466 = a1[28];
                                      MEMORY[0x28223BE20](v475, v476, v477);
                                      v468 = &v638 - v507;
                                      if (v505 == 1000)
                                      {
                                        goto LABEL_650;
                                      }

                                      goto LABEL_647;
                                    }

                                    v640 = &v638;
                                    MEMORY[0x28223BE20](v288, v285, v279);
                                    v639 = (&v638 - v346);
                                    v347 = (8 * v641 - 8) * v116;
                                    v348 = *v658;
                                    v341 = v660;
                                    if (*v658 == 1001)
                                    {
                                      v349 = a1[37];
                                      v350 = compute_silk_rate_for_hybrid((8 * v641 - 8) * v116, v660, a1[36] == 50 * a3, v349, a1[13], a1[3549]);
                                      a1[9] = v350;
                                      v351 = *(a1 + 1783);
                                      if (!v351)
                                      {
                                        v352 = v350;
                                        v353 = exp(vcvts_n_f32_s32(v350 - v347, 0xAuLL) * 0.693147181);
                                        v350 = v352;
                                        v341 = v660;
                                        *&v353 = v353;
                                        v340 = 1.0 - *&v353;
                                        v354 = v649;
                                        goto LABEL_572;
                                      }
                                    }

                                    else
                                    {
                                      a1[9] = v347;
                                      v351 = *(a1 + 1783);
                                      if (!v351)
                                      {
                                        v350 = v347;
                                        v354 = v649;
                                        goto LABEL_572;
                                      }

                                      v349 = a1[37];
                                      v350 = v347;
                                    }

                                    v354 = v649;
                                    if (v349 && !a1[44])
                                    {
                                      v355 = a1[3561];
                                      v356 = 8000.0;
                                      v357 = 16000.0;
                                      if (v355 == 1102)
                                      {
                                        v358 = 15;
                                      }

                                      else
                                      {
                                        v358 = 17;
                                      }

                                      if (v355 == 1102)
                                      {
                                        v357 = 12000.0;
                                      }

                                      if (v355 == 1101)
                                      {
                                        v358 = 13;
                                      }

                                      else
                                      {
                                        v356 = v357;
                                      }

                                      v359 = a1[28];
                                      if (v359 < 1)
                                      {
                                        v345 = 0.0;
                                      }

                                      else
                                      {
                                        v360 = 0;
                                        v361 = (v351 + ((4 * v358) & 0x60));
                                        v345 = 0.0;
                                        v362.i64[0] = 0x3F0000003F000000;
                                        v362.i64[1] = 0x3F0000003F000000;
                                        v363.i64[0] = 0xC0000000C0000000;
                                        v363.i64[1] = 0xC0000000C0000000;
                                        do
                                        {
                                          v364 = v351 + 84 * v360;
                                          v365 = *(v364 + 16);
                                          v366 = vcgtq_f32(v362, *v364);
                                          v367 = vcgtq_f32(v362, v365);
                                          v368 = vcgtq_f32(*v364, v363);
                                          v369 = vcgtq_f32(v365, v363);
                                          v370 = vbslq_s8(vornq_s8(vmvnq_s8(v366), v368), vbslq_s8(vornq_s8(v368, v366), v362, v363), *v364);
                                          v371 = vbslq_s8(vornq_s8(vmvnq_s8(v367), v369), vbslq_s8(vornq_s8(v369, v367), v362, v363), v365);
                                          v372 = vbslq_s8(vcgtzq_f32(v370), vmulq_f32(v370, v362), v370);
                                          v373 = vbslq_s8(vcgtzq_f32(v371), vmulq_f32(v371, v362), v371);
                                          *&v345 = (((((((*&v345 + *v372.i32) + *&v372.i32[1]) + *&v372.i32[2]) + *&v372.i32[3]) + *v373.i32) + *&v373.i32[1]) + *&v373.i32[2]) + *&v373.i32[3];
                                          if ((v358 & 0x18) != 8)
                                          {
                                            v374 = *(v364 + 32);
                                            v375 = *(v364 + 48);
                                            v376 = vcgtq_f32(v362, v374);
                                            v377 = vcgtq_f32(v362, v375);
                                            v378 = vcgtq_f32(v374, v363);
                                            v379 = vcgtq_f32(v375, v363);
                                            v380 = vbslq_s8(vornq_s8(vmvnq_s8(v376), v378), vbslq_s8(vornq_s8(v378, v376), v362, v363), v374);
                                            v381 = vbslq_s8(vornq_s8(vmvnq_s8(v377), v379), vbslq_s8(vornq_s8(v379, v377), v362, v363), v375);
                                            v382 = vbslq_s8(vcgtzq_f32(v380), vmulq_f32(v380, v362), v380);
                                            v383 = vbslq_s8(vcgtzq_f32(v381), vmulq_f32(v381, v362), v381);
                                            *&v345 = (((((((*&v345 + *v382.i32) + *&v382.i32[1]) + *&v382.i32[2]) + *&v382.i32[3]) + *v383.i32) + *&v383.i32[1]) + *&v383.i32[2]) + *&v383.i32[3];
                                          }

                                          v384 = v361;
                                          v385 = v358 & 7;
                                          do
                                          {
                                            v386 = *v384++;
                                            v387 = v386;
                                            v388 = v386 >= 0.5;
                                            v389 = v386 > -2.0 || v388;
                                            if (v387 <= -2.0)
                                            {
                                              v388 = 1;
                                            }

                                            if (v389)
                                            {
                                              v390 = 0.5;
                                            }

                                            else
                                            {
                                              v390 = -2.0;
                                            }

                                            if (v388)
                                            {
                                              v387 = v390;
                                            }

                                            if (v387 > 0.0)
                                            {
                                              v387 = v387 * 0.5;
                                            }

                                            *&v345 = *&v345 + v387;
                                            --v385;
                                          }

                                          while (v385);
                                          ++v360;
                                          v361 += 21;
                                        }

                                        while (v360 != v359);
                                      }

                                      v391 = (v356 * (((*&v345 / v358) * v359) + 0.2));
                                      if (-2 * v350 / 3 > v391)
                                      {
                                        v391 = -2 * v350 / 3;
                                      }

                                      if ((v355 & 0xFFFFFFFE) == 0x450)
                                      {
                                        v391 = 3 * v391 / 5;
                                      }

                                      v350 += v391;
                                      a1[9] = v350;
                                    }

LABEL_572:
                                    v392 = a1[36];
                                    v393 = a1[28];
                                    if (v341 == 1102)
                                    {
                                      v394 = 12000;
                                    }

                                    else
                                    {
                                      v394 = 16000;
                                    }

                                    if (v341 == 1101)
                                    {
                                      v394 = 8000;
                                    }

                                    v395 = a1[3549];
                                    a1[2] = v393;
                                    a1[3] = v395;
                                    a1[7] = v394;
                                    a1[8] = 1000 * a3 / v392;
                                    if (v348 == 1001)
                                    {
                                      *(a1 + 5) = vdup_n_s32(0x3E80u);
                                    }

                                    else
                                    {
                                      *(a1 + 5) = 0x1F4000003E80;
                                      if (v348 == 1000)
                                      {
                                        v396 = v354 ? 16 * v652 / 3u : 8 * v652;
                                        if (v396 <= 7999)
                                        {
                                          a1[5] = 12000;
                                          if (v394 >= 0x2EE0)
                                          {
                                            v394 = 12000;
                                          }

                                          a1[7] = v394;
                                          if (v396 <= 6999)
                                          {
                                            a1[5] = 8000;
                                            a1[7] = 8000;
                                          }
                                        }
                                      }
                                    }

                                    v397 = a1[37];
                                    v398 = 8 * v655;
                                    a1[15] = v397 == 0;
                                    a1[16] = v398;
                                    v399 = !v645;
                                    if (v643 < 2)
                                    {
                                      v399 = 1;
                                    }

                                    if (v399)
                                    {
                                      if (!v397)
                                      {
                                        if (v348 != 1001)
                                        {
                                          goto LABEL_601;
                                        }

                                        goto LABEL_598;
                                      }

                                      if (v348 != 1001)
                                      {
                                        goto LABEL_601;
                                      }
                                    }

                                    else
                                    {
                                      v400 = v398 + ~(8 * v643);
                                      a1[16] = v400;
                                      if (v348 != 1001)
                                      {
                                        goto LABEL_601;
                                      }

                                      v398 = v400 - 20;
                                      if (!v397)
                                      {
LABEL_598:
                                        if (v398 >= v350 * a3 / v392)
                                        {
                                          v398 = v350 * a3 / v392;
                                        }

                                        goto LABEL_600;
                                      }
                                    }

                                    v398 = (compute_silk_rate_for_hybrid(v398 * v392 / a3, v341, v392 == 50 * a3, v397, a1[13], v395) * a3) / v392;
LABEL_600:
                                    a1[16] = v398;
LABEL_601:
                                    if (!v654)
                                    {
                                      v406 = v639;
                                      goto LABEL_612;
                                    }

                                    LODWORD(v664[0]) = 0;
                                    v401 = 4 * (a1[43] - a1[29] - v392 / 400) * v393;
                                    v402 = v651;
                                    LODWORD(v345) = 1.0;
                                    gain_fade((v651 + v401), v651 + v401, *(v665 + 4), v392 / 400, v393, *(v665 + 72), v392, 0.0, v345);
                                    bzero(v402, v401);
                                    v403 = a1[43];
                                    v404 = (a1[28] * v403);
                                    v405 = v653;
                                    v406 = v639;
                                    if (v404 >= 1)
                                    {
                                      if (v404 >= 8)
                                      {
                                        v407 = v404 & 0x7FFFFFF8;
                                        v408.i64[0] = 0x4700000047000000;
                                        v408.i64[1] = 0x4700000047000000;
                                        v409.i64[0] = 0xC7000000C7000000;
                                        v409.i64[1] = 0xC7000000C7000000;
                                        v410 = vdupq_n_s32(0x46FFFE00u);
                                        v411 = v407;
                                        v412 = v639;
                                        v413 = v651;
                                        do
                                        {
                                          v414 = *v413;
                                          v415 = v413[1];
                                          v413 += 2;
                                          v416 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v415, v408), v409), v410);
                                          v417 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v414, v408), v409), v410);
                                          *v412++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v417.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v417, v417, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v416.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v416, v416, 8uLL))))));
                                          v411 -= 8;
                                        }

                                        while (v411);
                                        if (v407 == v404)
                                        {
                                          goto LABEL_611;
                                        }
                                      }

                                      else
                                      {
                                        v407 = 0;
                                      }

                                      v418 = v404 - v407;
                                      v419 = &v406[v407];
                                      v420 = &a1[v407 + 3573];
                                      do
                                      {
                                        v421 = *v420++;
                                        *v419++ = rintf(fminf(fmaxf(v421 * 32768.0, -32768.0), 32767.0));
                                        --v418;
                                      }

                                      while (v418);
                                    }

LABEL_611:
                                    silk_Encode(v659, a1 + 2, v406, v403, 0, v664, v654, v405);
                                    a1[18] = 0;
                                    v393 = a1[28];
                                    v341 = v660;
LABEL_612:
                                    v422 = (v393 * a3);
                                    v423 = v653;
                                    if (v422 < 1)
                                    {
                                      goto LABEL_620;
                                    }

                                    v424 = v393 * v657;
                                    if (v422 >= 8)
                                    {
                                      v426 = &v662->f32[v424];
                                      v425 = v422 & 0x7FFFFFF8;
                                      v427.i64[0] = 0x4700000047000000;
                                      v427.i64[1] = 0x4700000047000000;
                                      v428.i64[0] = 0xC7000000C7000000;
                                      v428.i64[1] = 0xC7000000C7000000;
                                      v429 = vdupq_n_s32(0x46FFFE00u);
                                      v430 = v425;
                                      v431 = v406;
                                      do
                                      {
                                        v432 = *v426;
                                        v433 = *(v426 + 4);
                                        v426 += 8;
                                        v434 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v433, v427), v428), v429);
                                        v435 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v432, v427), v428), v429);
                                        *v431++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v435.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v435, v435, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v434.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v434, v434, 8uLL))))));
                                        v430 -= 8;
                                      }

                                      while (v430);
                                      if (v425 == v422)
                                      {
LABEL_620:
                                        if (silk_Encode(v659, a1 + 2, v406, a3, v666, &v667, 0, v423))
                                        {
                                          return 4294967293;
                                        }

                                        v441 = *v658;
                                        if (*v658 == 1000)
                                        {
                                          v442 = a1[20];
                                          switch(v442)
                                          {
                                            case 8000:
                                              v341 = 1101;
                                              break;
                                            case 16000:
                                              v341 = 1103;
                                              break;
                                            case 12000:
                                              v341 = 1102;
                                              break;
                                          }
                                        }

                                        if (a1[24])
                                        {
                                          v443 = *(v14 + 986);
                                          a1[18] = v443 == 0;
                                          if (v667)
                                          {
                                            if (!v443)
                                            {
                                              v444 = compute_redundancy_bytes(v15, a1[40], v116, a1[3549]);
                                              v656 = 0;
                                              v643 = v444;
                                              v645 = v444 != 0;
                                              a1[3563] = 1;
                                            }

LABEL_634:
                                            v342 = v341 - 1101;
                                            v343 = v642;
                                            if ((v341 - 1101) <= 3)
                                            {
                                              goto LABEL_529;
                                            }

                                            goto LABEL_635;
                                          }
                                        }

                                        else
                                        {
                                          a1[18] = 0;
                                          if (v667)
                                          {
                                            goto LABEL_634;
                                          }
                                        }

                                        *(v14 + 987) = 0;
                                        v508 = gen_toc(v441, a1[36] / a3, v341, a1[3549]);
                                        *v663 = v508;
                                        return 1;
                                      }
                                    }

                                    else
                                    {
                                      v425 = 0;
                                    }

                                    v436 = v424;
                                    v437 = v422 - v425;
                                    v438 = &v406[v425];
                                    v439 = &v662->f32[v425 + v436];
                                    do
                                    {
                                      v440 = *v439++;
                                      *v438++ = rintf(fminf(fmaxf(v440 * 32768.0, -32768.0), 32767.0));
                                      --v437;
                                    }

                                    while (v437);
                                    goto LABEL_620;
                                  }

                                  if (v329 >= 8)
                                  {
                                    v330 = v329 & 0x7FFFFFF8;
                                    v332 = (v288 + 4);
                                    v331 = 0.0;
                                    v333 = v330;
                                    do
                                    {
                                      v334 = vmulq_f32(v332[-1], v332[-1]);
                                      v335 = vmulq_f32(*v332, *v332);
                                      v331 = (((((((v331 + v334.f32[0]) + v334.f32[1]) + v334.f32[2]) + v334.f32[3]) + v335.f32[0]) + v335.f32[1]) + v335.f32[2]) + v335.f32[3];
                                      v332 += 2;
                                      v333 -= 8;
                                    }

                                    while (v333);
                                    if (v330 == v329)
                                    {
LABEL_525:
                                      if (v331 >= 1000000000.0)
                                      {
                                        v339 = v285;
                                        bzero(v288, 4 * v329);
                                        v285 = v339;
                                        *v289 = 0;
                                        *(a1 + 3555) = 0;
                                      }

                                      goto LABEL_527;
                                    }
                                  }

                                  else
                                  {
                                    v330 = 0;
                                    v331 = 0.0;
                                  }

                                  v336 = v329 - v330;
                                  v337 = &v662->f32[v330 + v278];
                                  do
                                  {
                                    v338 = *v337++;
                                    v331 = v331 + (v338 * v338);
                                    --v336;
                                  }

                                  while (v336);
                                  goto LABEL_525;
                                }

LABEL_470:
                                if (v251 != -1)
                                {
                                  *(a1 + 955) = v251;
                                }

                                return encode_multiframe_packet(a1, a2, (a3 / v254), v254, v250, v17, v655, v662, a13);
                              }

                              if (v225 == 1)
                              {
                                if (v157 <= ((655 * (v229 - v230) * v227) >> 16))
                                {
                                  v234 = v175;
                                  v235 = v228 - 2204;
                                  v236 = v175 - 1;
                                  while (v234 >= 1102)
                                  {
                                    --v234;
                                    a1[3561] = v236;
                                    v237 = (655 * (fec_thresholds[v235] - fec_thresholds[v235 + 1]) * v227) >> 16;
                                    v235 -= 2;
                                    --v236;
                                    if (v157 > v237)
                                    {
                                      goto LABEL_436;
                                    }
                                  }

LABEL_446:
                                  v224 = 0;
                                  a1[3561] = v175;
                                  goto LABEL_447;
                                }
                              }

                              else
                              {
                                if (v225)
                                {
                                  v238 = 0;
                                }

                                else
                                {
                                  v238 = fec_thresholds[2 * v175 - 2201];
                                }

                                if (v157 <= ((655 * (v238 + v229) * v227) >> 16))
                                {
                                  v239 = v175;
                                  if (v225)
                                  {
                                    v240 = v228 - 2204;
                                    v241 = v175 - 1;
                                    while (v239 > 1101)
                                    {
                                      --v239;
                                      a1[3561] = v241;
                                      v242 = (655 * fec_thresholds[v240] * v227) >> 16;
                                      v240 -= 2;
                                      --v241;
                                      v224 = 1;
                                      if (v157 > v242)
                                      {
                                        goto LABEL_447;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v243 = v228 - 2204;
                                    v244 = v175 - 1;
                                    while (v239 >= 1102)
                                    {
                                      a1[3561] = v244;
                                      --v239;
                                      v245 = (655 * (fec_thresholds[v243 + 1] + fec_thresholds[v243]) * v227) >> 16;
                                      v243 -= 2;
                                      --v244;
                                      v224 = 1;
                                      if (v157 > v245)
                                      {
                                        goto LABEL_447;
                                      }
                                    }
                                  }

                                  goto LABEL_446;
                                }
                              }

LABEL_436:
                              v224 = 1;
                              goto LABEL_447;
                            }
                          }

                          if (v157 <= 30000 * v218)
                          {
                            v220 = 1103;
                          }

                          else if (v157 <= 44000 * v218)
                          {
                            v220 = 1104;
                          }

                          else
                          {
                            v220 = 1105;
                          }

                          goto LABEL_402;
                        }
                      }

                      else
                      {
                        v175 = 1104;
                        a1[3561] = 1104;
                        if (v215 >= 16001)
                        {
                          goto LABEL_387;
                        }
                      }

                      v175 = 1103;
                      a1[3561] = 1103;
                      if (v215 >= 12001)
                      {
                        goto LABEL_387;
                      }

                      goto LABEL_374;
                    }

LABEL_288:
                    a1[3561] = v181;
                    v175 = v181;
                    if (v142 == 1002)
                    {
                      goto LABEL_367;
                    }

                    goto LABEL_363;
                  }

                  v157 = (v157 - v157 * v119 / v134);
                  if (v153 == 1002)
                  {
LABEL_220:
                    LODWORD(v646) = v132;
                    v650 = a2;
                    v158 = v14;
                    v159 = v15;
                    v160 = v40;
                    v161 = v157;
                    silk_InitEncoder(v659, a1[45], v664);
                    v142 = a1[3557];
                    v654 = 1;
                    if (v142 == 1002)
                    {
                      v162 = 1;
                      v157 = v161;
                      v117 = v652;
                      v40 = v160;
                      v15 = v159;
                      v14 = v158;
                      a2 = v650;
                      v132 = v646;
                      goto LABEL_266;
                    }

                    v157 = v161;
                    v117 = v652;
                    v40 = v160;
                    v15 = v159;
                    v14 = v158;
                    a2 = v650;
                    v132 = v646;
                    if (a1[3564])
                    {
                      goto LABEL_262;
                    }

                    goto LABEL_261;
                  }
                }

                v654 = 0;
                if (a1[3564])
                {
LABEL_262:
                  v162 = 0;
                  goto LABEL_266;
                }

LABEL_261:
                if (!a1[21])
                {
                  v162 = 0;
                  v175 = a1[3561];
                  v176 = a1[33];
                  if (v175 <= v176)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_361;
                }

                goto LABEL_262;
              }
            }

            v655 = 0;
            v656 = 0;
            LODWORD(v651) = 0;
            v648 = 1;
            goto LABEL_208;
          }

LABEL_159:
          v144 = v659;
          goto LABEL_197;
        }

        v149 = a1[35];
        if (v149 < 0)
        {
          if (a1[27] == 2048)
          {
            v132 = 115;
          }

          else
          {
            v132 = 48;
          }

          v133 = v120 + 90;
          v134 = 12 * v119 + 20;
          v135 = a1[30];
          if (v135 != -1000)
          {
            goto LABEL_144;
          }
        }

        else
        {
          v150 = (327 * v149) >> 8;
          if (v150 >= 0x73)
          {
            v151 = 115;
          }

          else
          {
            v151 = v150;
          }

          if (a1[27] == 2049)
          {
            v132 = v151;
          }

          else
          {
            v132 = v150;
          }

          v133 = v120 + 90;
          v134 = 12 * v119 + 20;
          v135 = a1[30];
          if (v135 != -1000)
          {
            goto LABEL_144;
          }
        }
      }

LABEL_136:
      if (v42 == 2)
      {
        if (a1[3549] == 2)
        {
          v136 = 16000;
        }

        else
        {
          v136 = 18000;
        }

        if (v121 * v133 / 100 - v121 * v133 / 100 * v119 / v134 <= (v136 + ((2000 * v132 * v132) >> 14)))
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }
      }

      goto LABEL_146;
    }

    if (v111 >= 2400 && v117 >= 300)
    {
      v653 = v41;
      v118 = 0;
      v119 = a1[10];
      v120 = a1[11];
      v121 = v111;
      if (v112)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }
  }

  v122 = a1[3557];
  if (a1[3561])
  {
    v123 = a1[3561];
  }

  else
  {
    v123 = 1101;
  }

  if (!v122)
  {
    v122 = 1000;
  }

  if (v116 > 100)
  {
    v122 = 1002;
  }

  v124 = v116 == 25 && v122 != 1000;
  if (v116 == 25 && v122 != 1000)
  {
    v125 = 50;
  }

  else
  {
    v125 = v113 / a3;
  }

  if (v125 > 16)
  {
    LOBYTE(v127) = 0;
    v128 = v125;
    v126 = v663;
    if (v123 < 1104)
    {
      goto LABEL_229;
    }
  }

  else
  {
    v126 = v663;
    if (v17 == 1 || v122 == 1000 && v125 != 10)
    {
      LOBYTE(v127) = 0;
      v124 = v125 < 13;
      if (v125 == 12)
      {
        v128 = 25;
      }

      else
      {
        v128 = 16;
      }

      v122 = 1000;
      if (v123 < 1104)
      {
LABEL_229:
        if (v123 == 1102 && v122 == 1002)
        {
          v123 = 1101;
          v129 = a1[3549];
          if (v128 > 0x18F)
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (v122 == 1001 && v123 < 1105)
          {
            v123 = 1104;
          }

          v129 = a1[3549];
          if (v128 > 0x18F)
          {
            goto LABEL_239;
          }
        }

        goto LABEL_125;
      }
    }

    else
    {
      v128 = 50;
      v124 = 3;
      v127 = 50 / v125;
      if (v123 < 1104)
      {
        goto LABEL_229;
      }
    }
  }

  if (v122 != 1000)
  {
    goto LABEL_229;
  }

  v123 = 1103;
  v129 = a1[3549];
  if (v128 > 0x18F)
  {
LABEL_239:
    v130 = 0;
    goto LABEL_240;
  }

LABEL_125:
  v130 = 0;
  do
  {
    v128 *= 2;
    v130 += 8;
  }

  while (v128 < 400);
LABEL_240:
  if (v123 <= 1102)
  {
    v164 = 78;
  }

  else
  {
    v164 = v123;
  }

  v165 = v130 | (32 * (v164 & 3)) ^ 0xC0;
  v166 = v130 - 16;
  v167 = v166 | (16 * v123) | 0x60;
  v168 = v166 | (32 * v123 + 96);
  if (v122 != 1000)
  {
    v168 = v167;
  }

  if (v122 == 1002)
  {
    v169 = v165;
  }

  else
  {
    v169 = v168;
  }

  *v126 = v169 | (4 * (v129 == 2)) | v124;
  if (v124 < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15 <= v16)
  {
    v15 = v16;
  }

  else
  {
    v15 = v15;
  }

  if (v124 == 3)
  {
    v126[1] = v127;
  }

  if (!a1[37])
  {
    if (opus_packet_pad(v126, v16, v15))
    {
      return 4294967293;
    }

    else
    {
      return v15;
    }
  }

  return v16;
}

uint64_t user_bitrate_to_bitrate(_DWORD *a1, int a2)
{
  if (a2)
  {
    v2 = a1[41];
    if (v2 != -1)
    {
      goto LABEL_3;
    }

    return (10208 * a1[36] / a2);
  }

  a2 = a1[36] / 400;
  v2 = a1[41];
  if (v2 == -1)
  {
    return (10208 * a1[36] / a2);
  }

LABEL_3:
  if (v2 == -1000)
  {
    return (60 * a1[36] / a2 + a1[28] * a1[36]);
  }

  return v2;
}

uint64_t gen_toc(int a1, int a2, int a3, int a4)
{
  if (a2 > 399)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      a2 *= 2;
      v4 += 8;
    }

    while (a2 < 400);
  }

  if (a3 <= 1102)
  {
    v5 = 78;
  }

  else
  {
    v5 = a3;
  }

  v6 = v4 | (32 * (v5 & 3)) ^ 0xC0;
  v7 = v4 - 16;
  v8 = v7 | (16 * a3) | 0x60;
  v9 = v7 | (32 * a3 + 96);
  if (a1 != 1000)
  {
    v9 = v8;
  }

  if (a1 == 1002)
  {
    v9 = v6;
  }

  return (v9 | (4 * (a4 == 2)));
}

uint64_t encode_multiframe_packet(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, int a9)
{
  v46 = a8;
  v45 = a2;
  v48 = *MEMORY[0x277D85DE8];
  v11 = (a3 - 1);
  v12 = 2 * v11 + 2;
  if (a3 == 2)
  {
    v12 = 3;
  }

  if (!a1[37] && a1[41] != -1 && 3 * a1[40] / (24 * a1[36] / (a4 * a3)) < a6)
  {
    a6 = 3 * a1[40] / (24 * a1[36] / (a4 * a3));
  }

  v13 = (a6 - v12) / a3;
  if (v13 < 1276)
  {
    v14 = (v13 + 1);
  }

  else
  {
    v14 = 1276;
  }

  MEMORY[0x28223BE20](a1, a2, a3);
  v18 = &v36 - v17;
  v47[1] = 0;
  v19 = a1[34];
  v20 = a1[32];
  v21 = a1[30];
  a1[34] = a1[3557];
  a1[32] = a1[3561];
  v22 = a1[3549];
  a1[30] = v22;
  v23 = a1[17];
  v42 = v24;
  v41 = v25;
  v39 = v20;
  v40 = v19;
  v37 = v23;
  v38 = v21;
  if (!v23)
  {
    a1[3559] = v22;
    v43 = v15;
    if (v15 < 1)
    {
      goto LABEL_26;
    }

LABEL_14:
    v44 = v14;
    v26 = v43;
    if (v16)
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        a1[17] = 0;
        a1[4536] = v28 < v11;
        if (v11 == v28)
        {
          a1[34] = 1002;
        }

        v29 = opus_encode_native(a1, v45 + 4 * v27 * a1[28], a4, v18, v14, v46, 0, 0, 0, 0, 0, a9);
        if (v29 < 0 || (opus_repacketizer_cat(v47, v18, v29) & 0x80000000) != 0)
        {
          break;
        }

        ++v28;
        v18 += v44;
        v27 += a4;
        if (v26 == v28)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      while (1)
      {
        a1[17] = 0;
        a1[4536] = v31 < v11;
        v32 = opus_encode_native(a1, v45 + 4 * v30 * a1[28], a4, v18, v14, v46, 0, 0, 0, 0, 0, a9);
        if (v32 < 0 || (opus_repacketizer_cat(v47, v18, v32) & 0x80000000) != 0)
        {
          break;
        }

        ++v31;
        v18 += v44;
        v30 += a4;
        if (v26 == v31)
        {
          goto LABEL_26;
        }
      }
    }

    return 4294967293;
  }

  a1[30] = 1;
  v43 = v15;
  if (v15 >= 1)
  {
    goto LABEL_14;
  }

LABEL_26:
  result = opus_repacketizer_out_range_impl(v47, 0, v43, v41, v42, 0, a1[37] == 0);
  if ((result & 0x80000000) == 0)
  {
    v34 = v39;
    a1[34] = v40;
    a1[32] = v34;
    v35 = v37;
    a1[30] = v38;
    a1[17] = v35;
    return result;
  }

  return 4294967293;
}

uint64_t compute_redundancy_bytes(int a1, int a2, int a3, int a4)
{
  v4 = 40 * a4 + 20;
  v5 = 4123168605 * (a2 + v4 * (200 - a3));
  v6 = (v5 >> 42) + (v5 >> 63);
  v7 = 240 * (8 * a1 - 2 * v4) / (48000 / a3 + 240);
  v8 = __OFADD__(v7, v4);
  v9 = v7 + v4;
  if (v9 < 0 != v8)
  {
    v9 += 7;
  }

  v10 = v9 >> 3;
  if (v6 < v10)
  {
    v10 = v6;
  }

  if (v10 >= 257)
  {
    v11 = 257;
  }

  else
  {
    v11 = v10;
  }

  if (v10 <= ((8 * a4) | 4))
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t compute_silk_rate_for_hybrid(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = a1 / a6;
  v7 = a3 + 2 * a5 + 1;
  if (a1 / a6 < 12000)
  {
    v8 = 1;
LABEL_13:
    v9 = ((v6 - compute_silk_rate_for_hybrid_rate_table[5 * v8 - 5]) * compute_silk_rate_for_hybrid_rate_table[5 * v8 + v7] + (compute_silk_rate_for_hybrid_rate_table[5 * v8] - v6) * compute_silk_rate_for_hybrid_rate_table[5 * v8 - 5 + v7]) / (compute_silk_rate_for_hybrid_rate_table[5 * v8] - compute_silk_rate_for_hybrid_rate_table[5 * v8 - 5]);
    goto LABEL_14;
  }

  if (v6 >> 7 < 0x7D)
  {
    v8 = 2;
    goto LABEL_13;
  }

  if (v6 >> 5 < 0x271)
  {
    v8 = 3;
    goto LABEL_13;
  }

  if (v6 >> 6 < 0x177)
  {
    v8 = 4;
    goto LABEL_13;
  }

  if (v6 >> 8 < 0x7D)
  {
    v8 = 5;
    goto LABEL_13;
  }

  if (v6 >> 9 < 0x7D)
  {
    v8 = 6;
    goto LABEL_13;
  }

  v9 = compute_silk_rate_for_hybrid_rate_table[v7 + 30] + ((v6 - 64000) >> 1);
LABEL_14:
  if (!a4)
  {
    v9 += 100;
  }

  if (a2 == 1104)
  {
    v9 += 300;
  }

  v10 = v9 * a6;
  if (v6 > 11999 && a6 == 2)
  {
    return v10 - 1000;
  }

  else
  {
    return v10;
  }
}

float32x4_t *gain_fade(float32x4_t *result, unint64_t a2, int a3, int a4, int a5, float32x4_t *a6, int a7, float a8, double a9)
{
  v9 = 48000 / a7;
  v10 = (a3 / (48000 / a7));
  if (a5 == 1)
  {
    if (v10 >= 1)
    {
      v11 = 0;
      if (v10 < 8 || v9 != 1)
      {
        goto LABEL_7;
      }

      if (a2 - a6 < 0x20)
      {
        goto LABEL_7;
      }

      if (a2 - result < 0x20)
      {
        goto LABEL_7;
      }

      v49 = vdupq_lane_s32(*&a9, 0);
      v11 = v10 & 0x7FFFFFF8;
      v50 = a6 + 1;
      v51 = result + 1;
      v52 = (a2 + 16);
      __asm { FMOV            V3.4S, #1.0 }

      v56 = v11;
      do
      {
        v57 = vmulq_f32(v50[-1], v50[-1]);
        v58 = vmulq_f32(*v50, *v50);
        v59 = vmulq_f32(*v51, vmlaq_f32(vmulq_n_f32(vsubq_f32(_Q3, v58), a8), v49, v58));
        v52[-1] = vmulq_f32(v51[-1], vmlaq_f32(vmulq_n_f32(vsubq_f32(_Q3, v57), a8), v49, v57));
        *v52 = v59;
        v50 += 2;
        v51 += 2;
        v52 += 2;
        v56 -= 8;
      }

      while (v56);
      if (v11 != v10)
      {
LABEL_7:
        v13 = v9;
        v14 = v10 - v11;
        v15 = (a2 + 4 * v11);
        v16 = &result->f32[v11];
        v17 = &a6->f32[v11 * v13];
        v18 = 4 * v13;
        do
        {
          v19 = *v16++;
          *v15++ = v19 * (((1.0 - (*v17 * *v17)) * a8) + ((*v17 * *v17) * *&a9));
          v17 = (v17 + v18);
          --v14;
        }

        while (v14);
      }
    }
  }

  else if (v10 >= 1)
  {
    v20 = 0;
    if (v10 < 8 || v9 != 1)
    {
      goto LABEL_15;
    }

    v60 = a2 + 8 * v10;
    v61 = result + 8 * v10 > a2 && v60 > result;
    v62 = v61;
    if (v60 > a6 && a6->u64 + 4 * v10 > a2)
    {
      goto LABEL_15;
    }

    if (v62)
    {
      goto LABEL_15;
    }

    v64 = vdupq_lane_s32(*&a9, 0);
    v20 = v10 & 0x7FFFFFFC;
    __asm { FMOV            V3.4S, #1.0 }

    v66 = v20;
    v67 = result;
    v68 = a2;
    v69 = a6;
    do
    {
      v70 = *v69++;
      v73 = vld2q_f32(v67);
      v67 += 8;
      v71 = vmulq_f32(v70, v70);
      v72 = vmlaq_f32(vmulq_n_f32(vsubq_f32(_Q3, v71), a8), v64, v71);
      v74.val[0] = vmulq_f32(v73.val[0], v72);
      v74.val[1] = vmulq_f32(v73.val[1], v72);
      vst2q_f32(v68, v74);
      v68 += 8;
      v66 -= 4;
    }

    while (v66);
    if (v20 != v10)
    {
LABEL_15:
      v22 = v9;
      v23 = v10 - v20;
      v24 = (8 * v20) | 4;
      v25 = (a2 + v24);
      v26 = (result->f32 + v24);
      v27 = &a6->f32[v20 * v22];
      v28 = 4 * v22;
      do
      {
        v29 = ((1.0 - (*v27 * *v27)) * a8) + ((*v27 * *v27) * *&a9);
        *(v25 - 1) = *(v26 - 1) * v29;
        v30 = *v26;
        v26 += 2;
        *v25 = v30 * v29;
        v25 += 2;
        v27 = (v27 + v28);
        --v23;
      }

      while (v23);
    }
  }

  if (v10 < a4)
  {
    v31 = 0;
    v32 = v10;
    v33 = a4;
    v34 = a4 - v10;
    v36 = v34 < 8 || a2 - result < 0x20;
    if (a5 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = a5;
    }

    if (a5 != 1)
    {
      v36 = 1;
    }

    v38 = 4 * v10 + 16;
    v39 = (result + v38);
    v40 = (a2 + v38);
    v41 = 4 * a5;
    do
    {
      v42 = v32;
      if (v36)
      {
        goto LABEL_35;
      }

      v43 = v40;
      v44 = v39;
      v45 = v34 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v46 = vmulq_n_f32(*v44, *&a9);
        v43[-1] = vmulq_n_f32(v44[-1], *&a9);
        *v43 = v46;
        v44 += 2;
        v43 += 2;
        v45 -= 8;
      }

      while (v45);
      v42 = (v34 & 0xFFFFFFFFFFFFFFF8) + v32;
      if (v34 != (v34 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_35:
        v47 = v33 - v42;
        v48 = v41 * v42;
        do
        {
          *(a2 + v48) = *(result->f32 + v48) * *&a9;
          v48 += v41;
          --v47;
        }

        while (v47);
      }

      ++v31;
      v39 = (v39 + 4);
      v40 = (v40 + 4);
      a2 += 4;
      result = (result + 4);
    }

    while (v31 != v37);
  }

  return result;
}

float32_t stereo_fade(const float *a1, unint64_t a2, int a3, unsigned int a4, float32x4_t *a5, int a6, float32x4_t a7, double a8)
{
  v8 = 48000 / a6;
  v9 = (a3 / (48000 / a6));
  *&a8 = 1.0 - *&a8;
  if (v9 < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    a7.f32[0] = 1.0 - a7.f32[0];
    v10 = 0;
    if (v9 < 4 || v8 != 1)
    {
      goto LABEL_6;
    }

    v34 = a2 + 8 * v9;
    v35 = &a1[2 * v9] > a2 && v34 > a1;
    v36 = v35;
    if (v34 > a5 && a5->u64 + 4 * v9 > a2)
    {
      goto LABEL_6;
    }

    if (v36)
    {
      goto LABEL_6;
    }

    v10 = v9 & 0x7FFFFFFC;
    v38 = vdupq_lane_s32(*&a8, 0);
    __asm { FMOV            V3.4S, #1.0 }

    v43.i64[0] = 0x3F0000003F000000;
    v43.i64[1] = 0x3F0000003F000000;
    v44 = v10;
    v45 = a1;
    v46 = a2;
    v47 = a5;
    do
    {
      v48 = *v47++;
      v49 = vmulq_f32(v48, v48);
      v55 = vld2q_f32(v45);
      v45 += 8;
      v50 = vmulq_f32(vmlaq_f32(vmulq_n_f32(vsubq_f32(_Q3, v49), a7.f32[0]), v38, v49), vmulq_f32(vsubq_f32(v55.val[0], v55.val[1]), v43));
      v54 = vld2q_f32(v46);
      v55.val[0] = vsubq_f32(v54.val[0], v50);
      v55.val[1] = vaddq_f32(v54.val[1], v50);
      vst2q_f32(v46, v55);
      v46 += 8;
      v44 -= 4;
    }

    while (v44);
    if (v10 != v9)
    {
LABEL_6:
      v12 = v8;
      v13 = (8 * v10) | 4;
      v14 = (a1 + v13);
      v15 = (a2 + v13);
      v16 = v9 - v10;
      v17 = &a5->f32[v10 * v12];
      v18 = 4 * v12;
      do
      {
        v19 = ((a7.f32[0] * (1.0 - (*v17 * *v17))) + ((*v17 * *v17) * *&a8)) * ((*(v14 - 1) - *v14) * 0.5);
        v20 = *(v15 - 1) - v19;
        v21 = *v15 + v19;
        *(v15 - 1) = v20;
        *v15 = v21;
        v14 += 2;
        v15 += 2;
        v17 = (v17 + v18);
        --v16;
      }

      while (v16);
    }
  }

  if (v9 < a4)
  {
    v9 = v9;
    v22 = a4 - v9;
    if (v22 <= 3)
    {
      goto LABEL_17;
    }

    v23 = (a2 + 8 * v9);
    v24 = &a1[2 * v9];
    if (v23 < &a1[2 * a4] && v24 < a2 + 8 * a4)
    {
      goto LABEL_17;
    }

    v9 = (v22 & 0xFFFFFFFFFFFFFFFCLL) + v9;
    a7.i64[0] = 0x3F0000003F000000;
    a7.i64[1] = 0x3F0000003F000000;
    v25 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v52 = vld2q_f32(v24);
      v24 += 8;
      v52.val[0] = vmulq_n_f32(vmulq_f32(vsubq_f32(v52.val[0], v52.val[1]), a7), *&a8);
      *(&v52 + 16) = vld2q_f32(v23);
      v53.val[0] = vsubq_f32(v52.val[1], v52.val[0]);
      v53.val[1] = vaddq_f32(v26, v52.val[0]);
      vst2q_f32(v23, v53);
      v23 += 8;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_17:
      v27 = (8 * v9) | 4;
      v28 = (a1 + v27);
      v29 = (a2 + v27);
      v30 = a4 - v9;
      a7.i32[0] = 0.5;
      do
      {
        v31 = *&a8 * ((*(v28 - 1) - *v28) * 0.5);
        v32 = *(v29 - 1) - v31;
        v33 = *v29 + v31;
        *(v29 - 1) = v32;
        *v29 = v33;
        v28 += 2;
        v29 += 2;
        --v30;
      }

      while (v30);
    }
  }

  return a7.f32[0];
}

uint64_t opus_encode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 144);
  if (v3 / 400 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a3;
  v7 = *(a1 + 156);
  if (v7 != 5000)
  {
    v11 = v7 + 119;
    if (v7 - 5001 > 8)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v7 >> 1 > 0x9C6;
    v13 = ((v7 - 5003) * v3) / 50;
    a3 = v12 ? v13 : ((v3 / 400) << v11);
    if (a3 > v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (400 * a3 == v3 || 200 * a3 == v3 || 100 * a3 == v3)
  {
    if (a3 >= 1)
    {
      goto LABEL_21;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = 25 * a3 == v3;
  v9 = (50 * a3 != v3) & vminv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(vdupq_n_s32(50 * a3), vmulq_s32(vdupq_n_s32(v3), xmmword_273BC0F50)))));
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v4 = 0xFFFFFFFFLL;
  if (a3 >= 1 && (v10 & 1) == 0)
  {
LABEL_21:
    v14 = MEMORY[0x28223BE20](a1, a2, a3);
    v21 = (v42 - v20);
    v22 = v14[28];
    v23 = v22 * v15;
    if (v23 < 1)
    {
      return opus_encode_native(v14, v21, v15, v16, v17, 16, v18, v19, 0, 0xFFFFFFFE, v22, downmix_int, 0);
    }

    if (v23 < 4)
    {
      v24 = 0;
LABEL_33:
      v38 = v23 - v24;
      v39 = &v21[v24];
      v40 = (v18 + 2 * v24);
      do
      {
        v41 = *v40++;
        *v39++ = vcvts_n_f32_s32(v41, 0xFuLL);
        --v38;
      }

      while (v38);
      return opus_encode_native(v14, v21, v15, v16, v17, 16, v18, v19, 0, 0xFFFFFFFE, v22, downmix_int, 0);
    }

    if (v23 >= 0x10)
    {
      v24 = v23 & 0x7FFFFFF0;
      v25 = (v18 + 16);
      v26 = (v21 + 8);
      v27.i64[0] = 0x3800000038000000;
      v27.i64[1] = 0x3800000038000000;
      v28 = v24;
      do
      {
        v29 = v25[-1];
        v30 = vcvtq_f32_s32(vmovl_high_s16(*v25));
        v31 = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v25->i8)), v27);
        v26[-2] = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v29.i8)), v27);
        v26[-1] = vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v29)), v27);
        *v26 = v31;
        v26[1] = vmulq_f32(v30, v27);
        v26 += 4;
        v25 += 2;
        v28 -= 16;
      }

      while (v28);
      if (v24 == v23)
      {
        return opus_encode_native(v14, v21, v15, v16, v17, 16, v18, v19, 0, 0xFFFFFFFE, v22, downmix_int, 0);
      }

      if (((v22 * v15) & 0xC) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = 0;
    }

    v32 = v24;
    v24 = v23 & 0x7FFFFFFC;
    v33 = (v18 + 2 * v32);
    v34 = &v21[v32];
    v35 = v32 - v24;
    v36.i64[0] = 0x3800000038000000;
    v36.i64[1] = 0x3800000038000000;
    do
    {
      v37 = *v33++;
      *v34++ = vmulq_f32(vcvtq_f32_s32(vmovl_s16(v37)), v36);
      v35 += 4;
    }

    while (v35);
    if (v24 == v23)
    {
      return opus_encode_native(v14, v21, v15, v16, v17, 16, v18, v19, 0, 0xFFFFFFFE, v22, downmix_int, 0);
    }

    goto LABEL_33;
  }

  return v4;
}

uint64_t opus_encoder_ctl(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v97 = &a9;
  v9 = *a1;
  v10 = 4294967291;
  if (a2 <= 10014)
  {
    v11 = a1 + 3550;
    switch(a2)
    {
      case 4000:
        v12 = v97++;
        v13 = *v12;
        v14 = *v12 - 2048;
        v15 = v14 > 3 || v14 == 2;
        if (v15 || !a1[3564] && a1[27] != v13)
        {
          return 0xFFFFFFFFLL;
        }

        a1[27] = v13;
        a1[49] = v13;
        return 0;
      case 4001:
        v48 = v97++;
        v20 = *v48;
        if (!*v48)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[27];
        goto LABEL_124;
      case 4002:
        v52 = v97++;
        v53 = *v52;
        if (*v52 == -1000 || v53 == -1)
        {
          goto LABEL_70;
        }

        if (v53 < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v53 >= 0x1F5)
        {
          if (v53 >= 300000 * a1[28])
          {
            v53 = 300000 * a1[28];
          }
        }

        else
        {
          v53 = 500;
        }

LABEL_70:
        a1[41] = v53;
        return 0;
      case 4003:
        v43 = v97++;
        if (!*v43)
        {
          return 0xFFFFFFFFLL;
        }

        v44 = *v43;
        *v44 = user_bitrate_to_bitrate(a1, a1[3560]);
        return 0;
      case 4004:
        v45 = v97++;
        v35 = *v45;
        if ((v35 - 1106) < 0xFFFFFFFB)
        {
          return 0xFFFFFFFFLL;
        }

        a1[33] = v35;
        goto LABEL_53;
      case 4005:
        v37 = v97++;
        v20 = *v37;
        if (!*v37)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[33];
        goto LABEL_124;
      case 4006:
        v32 = v97++;
        v33 = *v32;
        if (*v32 > 1)
        {
          return 0xFFFFFFFFLL;
        }

        a1[37] = v33;
        a1[15] = 1 - v33;
        return 0;
      case 4007:
        v42 = v97++;
        v20 = *v42;
        if (!*v42)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[37];
        goto LABEL_124;
      case 4008:
        v34 = v97++;
        v35 = *v34;
        if ((v35 - 1101) >= 5 && v35 != -1000)
        {
          return 0xFFFFFFFFLL;
        }

        a1[32] = v35;
LABEL_53:
        if (v35 == 1102)
        {
          v46 = 12000;
        }

        else if (v35 == 1101)
        {
          v46 = 8000;
        }

        else
        {
          v46 = 16000;
        }

        a1[5] = v46;
        return 0;
      case 4009:
        v29 = v97++;
        v20 = *v29;
        if (!*v29)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[3561];
        goto LABEL_124;
      case 4010:
        v26 = v97++;
        v27 = *v26;
        if (v27 > 0xA)
        {
          return 0xFFFFFFFFLL;
        }

        a1[11] = v27;
        opus_custom_encoder_ctl((a1 + v9), 4010, a3, a4, a5, a6, a7, a8, v27);
        return 0;
      case 4011:
        v55 = v97++;
        v20 = *v55;
        if (!*v55)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[11];
        goto LABEL_124;
      case 4012:
        v40 = v97++;
        v41 = *v40;
        if (*v40 > 2)
        {
          return 0xFFFFFFFFLL;
        }

        a1[47] = v41;
        a1[12] = v41 != 0;
        return 0;
      case 4013:
        v56 = v97++;
        v20 = *v56;
        if (!*v56)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[47];
        goto LABEL_124;
      case 4014:
        v38 = v97++;
        v39 = *v38;
        if (v39 > 0x64)
        {
          return 0xFFFFFFFFLL;
        }

        a1[10] = v39;
        opus_custom_encoder_ctl((a1 + v9), 4014, a3, a4, a5, a6, a7, a8, v39);
        return 0;
      case 4015:
        v24 = v97++;
        v20 = *v24;
        if (!*v24)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[10];
        goto LABEL_124;
      case 4016:
        v51 = v97++;
        if (*v51 > 1)
        {
          return 0xFFFFFFFFLL;
        }

        a1[46] = *v51;
        return 0;
      case 4017:
        v36 = v97++;
        v20 = *v36;
        if (!*v36)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[46];
        goto LABEL_124;
      case 4020:
        v57 = v97++;
        if (*v57 > 1)
        {
          return 0xFFFFFFFFLL;
        }

        a1[38] = *v57;
        return 0;
      case 4021:
        v58 = v97++;
        v20 = *v58;
        if (!*v58)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[38];
        goto LABEL_124;
      case 4022:
        v30 = v97++;
        v31 = *v30;
        if (*v30 < 1)
        {
          if (v31 != -1000)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (v31 > a1[28])
        {
          return 0xFFFFFFFFLL;
        }

        a1[30] = v31;
        return 0;
      case 4023:
        v23 = v97++;
        v20 = *v23;
        if (!*v23)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[30];
        goto LABEL_124;
      case 4024:
        v61 = v97++;
        v62 = *v61;
        if ((*v61 - 3001) >= 2 && v62 != -1000)
        {
          return 0xFFFFFFFFLL;
        }

        a1[31] = v62;
        return 0;
      case 4025:
        v47 = v97++;
        v20 = *v47;
        if (!*v47)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[31];
        goto LABEL_124;
      case 4027:
        v49 = v97++;
        v20 = *v49;
        if (!*v49)
        {
          return 0xFFFFFFFFLL;
        }

        v50 = a1[36] / 400;
        *v20 = v50;
        if (a1[27] == 2051)
        {
          return 0;
        }

        v21 = 0;
        v22 = a1[29] + v50;
        goto LABEL_124;
      case 4028:
        v64 = a1[1];
        bzero(a1 + 51, 0x36A8uLL);
        bzero(a1 + 3549, 0xF74uLL);
        opus_custom_encoder_ctl((a1 + v9), 4028, v66, v67, v68, v69, v70, v71, v95);
        silk_InitEncoder(a1 + v64, a1[45], v96);
        v10 = 0;
        a1[3549] = a1[28];
        *v11 = 0x4000;
        a1[3564] = 1;
        a1[3557] = 1001;
        a1[3561] = 1105;
        *(a1 + 3551) = 0x3F8000000002F400;
        return v10;
      case 4029:
        v77 = v97++;
        v20 = *v77;
        if (!*v77)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[36];
        goto LABEL_124;
      case 4031:
        v74 = v97++;
        v20 = *v74;
        if (!*v74)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[4537];
        goto LABEL_124;
      case 4036:
        v63 = v97++;
        if ((*v63 - 25) < 0xFFFFFFEF)
        {
          return 0xFFFFFFFFLL;
        }

        a1[42] = *v63;
        return 0;
      case 4037:
        v76 = v97++;
        v20 = *v76;
        if (!*v76)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[42];
        goto LABEL_124;
      case 4040:
        v75 = v97++;
        if ((*v75 - 5010) < 0xFFFFFFF6)
        {
          return 0xFFFFFFFFLL;
        }

        a1[39] = *v75;
        return 0;
      case 4041:
        v78 = v97++;
        v20 = *v78;
        if (!*v78)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[39];
        goto LABEL_124;
      case 4042:
        v28 = v97++;
        if (*v28 > 1)
        {
          return 0xFFFFFFFFLL;
        }

        a1[19] = *v28;
        return 0;
      case 4043:
        v25 = v97++;
        v20 = *v25;
        if (!*v25)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = 0;
        v22 = a1[19];
        goto LABEL_124;
      case 4046:
        v72 = v97++;
        v73 = *v72;
        if (v73 > 1)
        {
          return 0xFFFFFFFFLL;
        }

        opus_custom_encoder_ctl((a1 + v9), 4046, a3, a4, a5, a6, a7, a8, v73);
        return 0;
      case 4047:
        v59 = v97++;
        v60 = *v59;
        if (!v60)
        {
          return 0xFFFFFFFFLL;
        }

        opus_custom_encoder_ctl((a1 + v9), 4047, a3, a4, a5, a6, a7, a8, v60);
        return 0;
      case 4049:
        v79 = v97++;
        v20 = *v79;
        if (!*v79)
        {
          return 0xFFFFFFFFLL;
        }

        if (a1[14] && (a1[3558] & 0xFFFFFFFE) == 0x3E8)
        {
          v80 = (a1 + a1[1]);
          v81 = v80[1526];
          *v20 = v81 > 9;
          if (v81 < 10)
          {
            return 0;
          }

          if (a1[3] != 2)
          {
            return 0;
          }

          v21 = v80[5065];
          if (v21)
          {
            return 0;
          }

          v82 = v80[4048];
          v85 = __OFSUB__(v82, 9);
          v83 = v82 == 9;
          v84 = v82 - 9 < 0;
        }

        else
        {
          v93 = a1[46];
          if (!v93)
          {
            *v20 = 0;
            return v93;
          }

          v21 = 0;
          v94 = a1[4534];
          v85 = __OFSUB__(v94, 399);
          v83 = v94 == 399;
          v84 = v94 - 399 < 0;
        }

        if (v84 ^ v85 | v83)
        {
          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        break;
      default:
        return v10;
    }

    goto LABEL_124;
  }

  if (a2 > 11001)
  {
    switch(a2)
    {
      case 11002:
        v88 = v97++;
        v89 = *v88;
        if ((*v88 - 1000) < 3 || v89 == -1000)
        {
          a1[34] = v89;
          return 0;
        }

        break;
      case 11018:
        v92 = v97++;
        if ((*v92 - 101) >= 0xFFFFFF9A)
        {
          a1[35] = *v92;
          return 0;
        }

        break;
      case 11019:
        v19 = v97++;
        v20 = *v19;
        if (*v19)
        {
          v21 = 0;
          v22 = a1[35];
LABEL_124:
          *v20 = v22;
          return v21;
        }

        break;
      default:
        return v10;
    }
  }

  else
  {
    if (a2 != 10015)
    {
      if (a2 == 10024)
      {
        v90 = v97++;
        v91 = *v90;
        a1[44] = v91;
        return opus_custom_encoder_ctl((a1 + v9), 10024, a3, a4, a5, a6, a7, a8, v91);
      }

      if (a2 == 10026)
      {
        v17 = v97++;
        v18 = *v17;
        *(a1 + 1783) = v18;
        return opus_custom_encoder_ctl((a1 + v9), 10026, a3, a4, a5, a6, a7, a8, v18);
      }

      return v10;
    }

    v86 = v97++;
    v87 = *v86;
    if (v87)
    {
      return opus_custom_encoder_ctl((a1 + v9), 10015, a3, a4, a5, a6, a7, a8, v87);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t opus_multistream_decoder_init(uint64_t a1, int a2, unsigned int a3, int a4, int a5, _OWORD *a6)
{
  if (a3 - 256 < 0xFFFFFF01)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if ((a5 & 0x80000000) == 0 && a4 >= 1 && a5 <= a4 && 255 - a5 >= a4)
  {
    *a1 = a3;
    *(a1 + 4) = a4;
    v9 = a3;
    *(a1 + 8) = a5;
    if (a3 < 8 || (a1 - a6 + 12) < 0x20)
    {
      v10 = 0;
      goto LABEL_10;
    }

    if (a3 >= 0x20)
    {
      v10 = a3 & 0xE0;
      v21 = a6[1];
      *(a1 + 12) = *a6;
      *(a1 + 28) = v21;
      if (v10 != 32)
      {
        v22 = a6[3];
        *(a1 + 44) = a6[2];
        *(a1 + 60) = v22;
        if (v10 != 64)
        {
          v23 = a6[5];
          *(a1 + 76) = a6[4];
          *(a1 + 92) = v23;
          if (v10 != 96)
          {
            v24 = a6[7];
            *(a1 + 108) = a6[6];
            *(a1 + 124) = v24;
            if (v10 != 128)
            {
              v25 = a6[9];
              *(a1 + 140) = a6[8];
              *(a1 + 156) = v25;
              if (v10 != 160)
              {
                v26 = a6[11];
                *(a1 + 172) = a6[10];
                *(a1 + 188) = v26;
                if (v10 != 192)
                {
                  v27 = a6[13];
                  *(a1 + 204) = a6[12];
                  *(a1 + 220) = v27;
                }
              }
            }
          }
        }
      }

      if (v10 == a3)
      {
        goto LABEL_12;
      }

      if ((a3 & 0x18) == 0)
      {
LABEL_10:
        v11 = a3 - v10;
        v12 = (v10 + a1 + 12);
        v13 = a6 + v10;
        do
        {
          v14 = *v13++;
          *v12++ = v14;
          --v11;
        }

        while (v11);
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
    }

    v28 = v10;
    v10 = a3 & 0xF8;
    v29 = (a6 + v28);
    v30 = (v28 + a1 + 12);
    v31 = v28 - v10;
    do
    {
      v32 = *v29++;
      *v30++ = v32;
      v31 += 8;
    }

    while (v31);
    if (v10 != a3)
    {
      goto LABEL_10;
    }

LABEL_12:
    if (a5 + a4 <= 255)
    {
      if (a3 < 1)
      {
LABEL_22:
        v19 = (a1 + 272);
        if (a5 < 1)
        {
          v20 = 0;
          do
          {
LABEL_32:
            result = opus_decoder_init(v19, a2, 1u);
            if (result)
            {
              break;
            }

            v19 += 18232;
            ++v20;
          }

          while (v20 < *(a1 + 4));
        }

        else
        {
          v20 = 0;
          while (1)
          {
            result = opus_decoder_init(v19, a2, 2u);
            if (result)
            {
              break;
            }

            v19 += 27000;
            if (++v20 >= *(a1 + 8))
            {
              if (v20 < *(a1 + 4))
              {
                goto LABEL_32;
              }

              return 0;
            }
          }
        }
      }

      else
      {
        v15 = (a1 + 12);
        while (1)
        {
          v17 = *v15++;
          v16 = v17;
          if (v17 != 255 && a5 + a4 <= v16)
          {
            return 0xFFFFFFFFLL;
          }

          if (!--v9)
          {
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t opus_multistream_decode_native(int *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v156 = *MEMORY[0x277D85DE8];
  if (a5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a6;
  LODWORD(v9) = a5;
  v10 = a4;
  v11 = a3;
  v152 = 0;
  v14 = opus_multistream_decoder_ctl(a1, 4029, a3, a4, a5, a6, a7, a8, &v152);
  if (v14)
  {
    return 4294967293;
  }

  v18 = &v146;
  v19 = 3 * (v152 / 25);
  if (v19 >= v9)
  {
    v9 = v9;
  }

  else
  {
    v9 = v19;
  }

  MEMORY[0x28223BE20](v14, v15, v16);
  v21 = (&v146 - v20);
  if (v11 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v22 = a1[1];
  if (2 * v22 - 1 > v11)
  {
    return 4294967292;
  }

  if (v22 > 0)
  {
    v151 = (&v146 - v20);
    v23 = v152;
    v24 = v22 - 1;
    v154 = 0;
    v153 = 0;
    result = opus_packet_parse_impl(a2, v11, v22 != 1, &v154, 0, v155, 0, &v153);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v149 = v8;
    v146 = &v146;
    v25 = v23;
    result = opus_packet_get_nb_samples(a2, v153, v23);
    v21 = v151;
    if (v22 == 1)
    {
LABEL_16:
      v18 = v146;
      v8 = v149;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_19;
    }

    v133 = v11 - v153;
    v134 = &a2[v153];
    LODWORD(v150) = 60 * v25 / 1000;
    v148.i32[0] = 3 * v25;
    while (1)
    {
      if (v133 < 1)
      {
        return 4294967292;
      }

      v135 = result;
      result = opus_packet_parse_impl(v134, v133, v24 != 1, &v154, 0, v155, 0, &v153);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = v135;
      if (v153 < 1)
      {
        v137 = -1;
        v21 = v151;
      }

      else
      {
        v136 = *v134;
        if ((v136 & 3) == 0)
        {
          v138 = 1;
          v21 = v151;
LABEL_154:
          v139 = (v136 >> 3) & 3;
          v42 = v139 == 3;
          v140 = 1374389535 * (v25 << v139);
          v141 = (v140 >> 37) + (v140 >> 63);
          if (v42)
          {
            v141 = v150;
          }

          if ((v136 & 8) != 0)
          {
            v142 = 50;
          }

          else
          {
            v142 = 100;
          }

          v143 = v25 / v142;
          if ((~v136 & 0x60) == 0)
          {
            v141 = v143;
          }

          v144 = (v140 >> 39) + (v140 >> 63);
          if ((v136 & 0x80) != 0)
          {
            v145 = v144;
          }

          else
          {
            v145 = v141;
          }

          v137 = v145 * v138;
          if (25 * v137 > v148.i32[0])
          {
            v137 = -4;
          }

          goto LABEL_166;
        }

        if ((v136 & 3) != 3)
        {
          v138 = 2;
          v21 = v151;
          goto LABEL_154;
        }

        v21 = v151;
        if (v153 != 1)
        {
          v138 = v134[1] & 0x3F;
          goto LABEL_154;
        }

        v137 = -4;
      }

LABEL_166:
      if (v135 != v137)
      {
        return 4294967292;
      }

      v134 += v153;
      v133 -= v153;
      if (!--v24)
      {
        goto LABEL_16;
      }
    }
  }

  LODWORD(result) = 0;
LABEL_19:
  if (result > v9)
  {
    return 4294967294;
  }

LABEL_21:
  v146 = v18;
  v26 = a1[1];
  if (v26 >= 1)
  {
    v149 = v8;
    v27 = 0;
    v28 = a1 + 68;
    v147 = &v21->f32[1];
    v29 = a1[2];
    v150 = a1 + 3;
    LODWORD(v151) = v11;
    v30 = v11;
    v148 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      v31 = v27 >= v29 ? 18232 : 27000;
      if (v151 && v30 < 1)
      {
        return 4294967293;
      }

      v155[0].i32[0] = 0;
      v32 = v21;
      v33 = opus_decode_native(v28, a2, v30, v21, v9, v149, v27 != v26 - 1, v155, 1);
      v9 = v33;
      if (v151)
      {
        v34 = v155[0].i32[0];
      }

      else
      {
        v34 = 0;
      }

      if (v33 < 1)
      {
        return v9;
      }

      v29 = a1[2];
      v35 = *a1;
      if (v27 < v29)
      {
        v36 = 2 * v27;
        v37 = v33;
        v21 = v32;
        v38.i64[0] = 0x4700000047000000;
        v38.i64[1] = 0x4700000047000000;
        v39.i64[0] = 0xC7000000C7000000;
        v39.i64[1] = 0xC7000000C7000000;
        v40 = v148;
        if (v35 >= 1)
        {
          v41 = 0;
          v42 = v33 > 8 && v35 == 1;
          v43 = v42;
          v44 = v33 & 7;
          if ((v33 & 7) == 0)
          {
            v44 = 8;
          }

          v45 = v33 - v44;
          v46 = 2 * v35;
          do
          {
            v47 = 0;
            v48 = v41;
            v49 = 2 * v41;
            while (v36 != *(v150 + v41 + v47))
            {
              ++v47;
              v49 += 2;
              if (!(v41 - v35 + v47))
              {
                goto LABEL_60;
              }
            }

            v50 = v41 + v47;
            if (v48 + v47 == -1)
            {
              break;
            }

            v51 = v49 << 31;
            if (v43)
            {
              v52 = (v10 + (v51 >> 31));
              v53 = v45;
              v54 = v32;
              do
              {
                v55 = v54;
                v56 = vld2q_f32(v55);
                v55 += 8;
                v57 = vld2q_f32(v55);
                v58 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v56, v38), v39), v40);
                v59 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v57, v38), v39), v40);
                *v52++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))));
                v54 += 16;
                v53 -= 8;
              }

              while (v53);
              v60 = v45;
            }

            else
            {
              v60 = 0;
            }

            v61 = &v32->f32[2 * v60];
            v62 = v9 - v60;
            v63 = (v10 + v46 * v60 + (v51 >> 31));
            do
            {
              v64 = *v61;
              v61 += 2;
              *v63 = rintf(fminf(fmaxf(v64 * 32768.0, -32768.0), 32767.0));
              v63 = (v63 + v46);
              --v62;
            }

            while (v62);
            v65 = v48 + v47;
            v41 = v50 >= 0 ? (v65 + 1) : 0;
          }

          while (v41 < v35);
        }

LABEL_60:
        if (v35 >= 1)
        {
          v66 = 0;
          v67 = v36 | 1;
          v69 = v9 > 8 && v35 == 1;
          v70 = v37 & 7;
          if ((v37 & 7) == 0)
          {
            v70 = 8;
          }

          v71 = v9 - v70;
          v72 = 2 * v35;
          do
          {
            v73 = 0;
            v74 = v66;
            v75 = 2 * v66;
            while (v67 != *(v150 + v66 + v73))
            {
              ++v73;
              v75 += 2;
              if (!(v66 - v35 + v73))
              {
                goto LABEL_23;
              }
            }

            v76 = v66 + v73;
            if (v74 + v73 == -1)
            {
              break;
            }

            v77 = v75 << 31;
            if (v69)
            {
              v78 = (v10 + (v77 >> 31));
              v79 = v71;
              v80 = v147;
              do
              {
                v81 = v80;
                v82 = vld2q_f32(v81);
                v81 += 8;
                v83 = vld2q_f32(v81);
                v84 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v82, v38), v39), v40);
                v85 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v83, v38), v39), v40);
                *v78++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84, v84, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85, v85, 8uLL))))));
                v80 += 16;
                v79 -= 8;
              }

              while (v79);
              v86 = v71;
            }

            else
            {
              v86 = 0;
            }

            v87 = &v147[2 * v86];
            v88 = v9 - v86;
            v89 = (v10 + v72 * v86 + (v77 >> 31));
            do
            {
              v90 = *v87;
              v87 += 2;
              *v89 = rintf(fminf(fmaxf(v90 * 32768.0, -32768.0), 32767.0));
              v89 = (v89 + v72);
              --v88;
            }

            while (v88);
            v91 = v74 + v73;
            v66 = v76 >= 0 ? (v91 + 1) : 0;
          }

          while (v66 < v35);
        }

        goto LABEL_23;
      }

      v21 = v32;
      v92.i64[0] = 0x4700000047000000;
      v92.i64[1] = 0x4700000047000000;
      v93.i64[0] = 0xC7000000C7000000;
      v93.i64[1] = 0xC7000000C7000000;
      v94 = v148;
      if (v35 >= 1)
      {
        v95 = 0;
        v96 = v33;
        v98 = v33 > 7 && v35 == 1;
        v99 = v33 & 0x7FFFFFF8;
        v100 = 2 * v35;
        while (1)
        {
          v101 = 0;
          v102 = v95;
          v103 = 2 * v95;
          while (v29 + v27 != *(v150 + v95 + v101))
          {
            ++v101;
            v103 += 2;
            if (!(v95 - v35 + v101))
            {
              goto LABEL_23;
            }
          }

          v104 = v95 + v101;
          if (v102 + v101 == -1)
          {
            goto LABEL_23;
          }

          v105 = v103 << 31;
          if (!v98)
          {
            break;
          }

          v106 = (v10 + (v105 >> 31));
          v107 = v96 & 0x7FFFFFF8;
          v108 = v32;
          do
          {
            v109 = *v108;
            v110 = v108[1];
            v108 += 2;
            v111 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v110, v92), v93), v94);
            v112 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v109, v92), v93), v94);
            *v106++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v112.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v112, v112, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v111.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v111, v111, 8uLL))))));
            v107 -= 8;
          }

          while (v107);
          v113 = v96 & 0x7FFFFFF8;
          if (v99 != v9)
          {
            goto LABEL_106;
          }

LABEL_108:
          v118 = v102 + v101;
          if (v104 >= 0)
          {
            v95 = (v118 + 1);
          }

          else
          {
            v95 = 0;
          }

          if (v95 >= v35)
          {
            goto LABEL_23;
          }
        }

        v113 = 0;
LABEL_106:
        v114 = &v32->f32[v113];
        v115 = v9 - v113;
        v116 = (v10 + v100 * v113 + (v105 >> 31));
        do
        {
          v117 = *v114++;
          *v116 = rintf(fminf(fmaxf(v117 * 32768.0, -32768.0), 32767.0));
          v116 = (v116 + v100);
          --v115;
        }

        while (v115);
        goto LABEL_108;
      }

LABEL_23:
      v28 = (v28 + v31);
      v30 -= v34;
      a2 += v34;
      ++v27;
      v26 = a1[1];
    }

    while (v27 < v26);
  }

  v119 = *a1;
  if (v119 >= 1)
  {
    if (v9 < 1)
    {
      return v9;
    }

    v120 = 0;
    v122 = v9 > 3 && v119 == 1;
    v123 = (v10 + 16);
    v124 = 2 * v119;
    while (*(a1 + v120 + 12) != 255)
    {
LABEL_122:
      ++v120;
      v123 = (v123 + 2);
      v10 += 2;
      if (v120 == v119)
      {
        return v9;
      }
    }

    if (v122)
    {
      if (v9 < 0x10)
      {
        v125 = 0;
        goto LABEL_132;
      }

      v127 = v9 & 0x7FFFFFF0;
      v128 = v123;
      do
      {
        *(v128 - 1) = 0uLL;
        *v128 = 0uLL;
        v128 += 2;
        v127 -= 16;
      }

      while (v127);
      if ((v9 & 0x7FFFFFF0) == v9)
      {
        goto LABEL_122;
      }

      v125 = v9 & 0x7FFFFFF0;
      v126 = v125;
      if ((v9 & 0xC) != 0)
      {
LABEL_132:
        v129 = (v10 + 2 * v125);
        v130 = v125 - (v9 & 0x7FFFFFFC);
        do
        {
          *v129++ = 0;
          v130 += 4;
        }

        while (v130);
        v126 = v9 & 0x7FFFFFFC;
        if (v126 == v9)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      v126 = 0;
    }

    v131 = v9 - v126;
    v132 = v124 * v126;
    do
    {
      *(v10 + v132) = 0;
      v132 += v124;
      --v131;
    }

    while (v131);
    goto LABEL_122;
  }

  return v9;
}

uint64_t opus_multistream_decoder_ctl_va_list(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a3;
  v10 = a1 + 68;
  result = 4294967291;
  if (a2 > 4028)
  {
    v12 = a2 + 67;
    if ((a2 - 4029) > 0x12)
    {
      goto LABEL_34;
    }

    if (((1 << v12) & 0x50401) != 0)
    {
LABEL_4:
      v13 = v35++;
      return opus_decoder_ctl(v10, a2, a3, a4, a5, a6, a7, a8, *v13);
    }

    if (((1 << v12) & 0x20020) != 0)
    {
      v14 = v35++;
      if (a1[1] >= 1)
      {
        v15 = 0;
        v16 = *v14;
        while (1)
        {
          v17 = a1[2];
          result = opus_decoder_ctl(v10, a2, a3, a4, a5, a6, a7, a8, v16);
          if (result)
          {
            break;
          }

          if (v15 >= v17)
          {
            v18 = 18232;
          }

          else
          {
            v18 = 27000;
          }

          v10 = (v10 + v18);
          if (++v15 >= a1[1])
          {
            return 0;
          }
        }

        return result;
      }

      return 0;
    }

    if (a2 == 4031)
    {
      v22 = v35++;
      v23 = *v22;
      v34 = 0;
      if (v23)
      {
        *v23 = 0;
        if (a1[1] < 1)
        {
          return 0;
        }

        v24 = 0;
        while (1)
        {
          v25 = a1[2];
          result = opus_decoder_ctl(v10, 4031, a3, a4, a5, a6, a7, a8, &v34);
          if (result)
          {
            break;
          }

          if (v24 >= v25)
          {
            v26 = 18232;
          }

          else
          {
            v26 = 27000;
          }

          v10 = (v10 + v26);
          *v23 ^= v34;
          if (++v24 >= a1[1])
          {
            return 0;
          }
        }

        return result;
      }
    }

    else
    {
LABEL_34:
      if (a2 != 5122)
      {
        return result;
      }

      v27 = v35++;
      v28 = *v27;
      if ((v28 & 0x80000000) == 0 && v28 < a1[1])
      {
        v29 = v35++;
        v30 = *v29;
        if (v30)
        {
          if (v28)
          {
            for (i = 0; i != v28; ++i)
            {
              if (i >= a1[2])
              {
                v32 = 18232;
              }

              else
              {
                v32 = 27000;
              }

              v10 = (v10 + v32);
            }
          }

          result = 0;
          *v30 = v10;
          return result;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 == 4009)
  {
    goto LABEL_4;
  }

  if (a2 == 4028)
  {
    if (a1[1] >= 1)
    {
      v19 = 0;
      do
      {
        v20 = a1[2];
        result = opus_decoder_ctl(v10, 4028, a3, a4, a5, a6, a7, a8, v33);
        if (result)
        {
          break;
        }

        v21 = v19 >= v20 ? 18232 : 27000;
        v10 = (v10 + v21);
        ++v19;
      }

      while (v19 < a1[1]);
      return result;
    }

    return 0;
  }

  return result;
}

void surround_analysis(uint64_t a1, int16x8_t *a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v284 = a3;
  v285 = a6;
  v276 = a4;
  v323 = *MEMORY[0x277D85DE8];
  v321 = 0u;
  v322 = 0u;
  v282 = a5;
  if (a8 <= 15999)
  {
    if (a8 == 8000)
    {
      v12 = 0;
      v13 = 6;
      goto LABEL_13;
    }

    if (a8 == 12000)
    {
      v12 = 0;
      v13 = 4;
      goto LABEL_13;
    }

LABEL_12:
    v12 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  if (a8 == 16000)
  {
    v12 = 0;
    v13 = 3;
    goto LABEL_13;
  }

  if (a8 == 48000)
  {
    v275 = 0;
    v12 = 1;
    v13 = 1;
    goto LABEL_14;
  }

  if (a8 != 24000)
  {
    goto LABEL_12;
  }

  v12 = 0;
  v13 = 2;
LABEL_13:
  v275 = 1;
LABEL_14:
  v279 = v13;
  v14 = (v13 * v285);
  if (v14 >= 960)
  {
    v15 = 960;
  }

  else
  {
    v15 = v14;
  }

  v302 = v15;
  v16 = *(a1 + 40);
  if (v16 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    while (*(a1 + 48) << v17 != v14)
    {
      if (v16 == ++v17)
      {
        v17 = *(a1 + 40);
        break;
      }
    }
  }

  v262 = (v14 + 120);
  v18 = MEMORY[0x28223BE20](v248, v12, v14);
  v20 = &v248[-v19];
  v23 = MEMORY[0x28223BE20](v18, v21, v22);
  v280 = &v248[-v24];
  v27 = MEMORY[0x28223BE20](v23, v25, v26);
  v33 = &v248[-v32];
  v277 = v34;
  v283 = v35;
  v250 = v27;
  if (a7 > 4)
  {
    if ((a7 - 5) >= 2)
    {
      v36 = (v30 + 24);
      if (a7 == 7)
      {
        v37 = 0;
        v39 = 2;
        v321 = xmmword_273BC1070;
        v40 = 3;
        v38 = v29;
        v29 = v28;
        v28 = v36;
      }

      else
      {
        if (a7 != 8)
        {
          goto LABEL_34;
        }

        v37 = 0;
        v38 = v28;
        v28 = (v30 + 28);
        v321 = xmmword_273BC1070;
        v39 = 3;
        LODWORD(v322) = 3;
        v40 = 1;
        v29 = v36;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a7 == 3)
  {
LABEL_31:
    v37 = 0;
    *&v321 = 0x200000001;
    v39 = 3;
    DWORD2(v321) = 3;
    v40 = 1;
    v38 = v31;
    goto LABEL_33;
  }

  if (a7 != 4)
  {
    goto LABEL_34;
  }

  v38 = (v30 | 4);
  v29 = (v30 | 8);
  v39 = 1;
  LODWORD(v321) = 1;
  v40 = 3;
  v28 = v31;
  v37 = 3;
LABEL_33:
  *v38 = v40;
  *v29 = v39;
  *v28 = v37;
LABEL_34:
  memset_pattern16(&v314, &unk_273BBA7B0, 0x54uLL);
  memset_pattern16(&v319[4], &unk_273BBA7B0, 0x54uLL);
  v264 = v320;
  memset_pattern16(v320, &unk_273BBA7B0, 0x54uLL);
  v252 = a7;
  v249 = a7 - 1;
  v42 = v277;
  if (a7 >= 1)
  {
    v296 = 0;
    v43 = 0;
    v299 = a9;
    v278 = v20 + 480;
    v259 = 4 * v262;
    *v41.f64 = v279;
    v298 = v41;
    v281 = 4 * v283;
    v45 = v285 > 3 && v252 == 1;
    v263 = v45;
    v260 = v285 & 0x7FFFFFF0;
    v274 = xmmword_273BC1080;
    v251 = v285 & 0xC;
    v273 = xmmword_273BC1090;
    v265 = v285;
    v272 = xmmword_273BC10A0;
    v261 = v262 & 0xFFFFFFF8;
    v271 = xmmword_273BC10B0;
    v291 = a2 + 1;
    v270 = xmmword_273BC10C0;
    v257 = v285 & 0x7FFFFFFC;
    v255 = (v280 + 8);
    v256 = -v257;
    v269 = 1.44269504;
    v254 = (v280 + 4);
    v253 = (v20 + 496);
    v267 = 4 * v279;
    v268 = 2 * v252;
    v258 = (v20 + 16);
    v300 = (v283 / v302);
    v266 = v252;
    v301 = v20;
    do
    {
      v297 = v43;
      v289 = (v276 + 480 * v43);
      memcpy(v20, v289, 0x1E0uLL);
      v47 = v267;
      v46 = v268;
      v48 = v282;
      if (v285 < 1)
      {
        goto LABEL_57;
      }

      if (!v263)
      {
        v50 = 0;
LABEL_55:
        v63 = &v280[v50];
        v64 = v265 - v50;
        v65 = v46 * v50;
        do
        {
          *v63++ = vcvts_n_f32_s32(*(a2->i16 + v65), 0xFuLL);
          v65 += v46;
          --v64;
        }

        while (v64);
        goto LABEL_57;
      }

      if (v285 >= 0x10)
      {
        v51 = v260;
        v52 = v255;
        v53 = v291;
        v54.i64[0] = 0x3800000038000000;
        v54.i64[1] = 0x3800000038000000;
        do
        {
          v55 = v53[-1];
          v56 = vcvtq_f32_s32(vmovl_high_s16(*v53));
          v57 = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v53->i8)), v54);
          v52[-2] = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v55.i8)), v54);
          v52[-1] = vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v55)), v54);
          *v52 = v57;
          v52[1] = vmulq_f32(v56, v54);
          v52 += 4;
          v53 += 2;
          v51 -= 16;
        }

        while (v51);
        if (v260 == v265)
        {
          goto LABEL_57;
        }

        v50 = v260;
        v49 = v260;
        if (!v251)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v49 = 0;
      }

      v58 = (a2 + 2 * v49);
      v59 = v256 + v49;
      v60 = &v280[v49];
      v61.i64[0] = 0x3800000038000000;
      v61.i64[1] = 0x3800000038000000;
      do
      {
        v62 = *v58++;
        *v60++ = vmulq_f32(vcvtq_f32_s32(vmovl_s16(v62)), v61);
        v59 += 4;
      }

      while (v59);
      v50 = v257;
      if (v257 != v265)
      {
        goto LABEL_55;
      }

LABEL_57:
      v66 = v297;
      v67 = *(v48 + 4 * v297);
      v68 = *(a1 + 16);
      v69 = v275;
      if (*(a1 + 20) != 0.0)
      {
        v69 = 1;
      }

      v70 = v283;
      if (v69)
      {
        if ((v42 & 1) == 0)
        {
          bzero(v278, v281);
          v48 = v282;
          v70 = v283;
          v66 = v297;
        }

        v71 = (v70 / v279);
        v72.i64[0] = 0x4700000047000000;
        v72.i64[1] = 0x4700000047000000;
        if (v71 < 1)
        {
          goto LABEL_77;
        }

        v73 = v42 ^ 1;
        if (v71 < 8)
        {
          v73 = 1;
        }

        if (v73)
        {
          v74 = 0;
        }

        else
        {
          v74 = v71 & 0x7FFFFFF8;
          v75 = v74;
          v76 = v253;
          v77 = v254;
          do
          {
            v78 = vmulq_f32(*v77, v72);
            v76[-1] = vmulq_f32(v77[-1], v72);
            *v76 = v78;
            v77 += 2;
            v76 += 2;
            v75 -= 8;
          }

          while (v75);
          v66 = v297;
          if (v74 == v71)
          {
LABEL_77:
            if (v70 >= 1)
            {
              v87 = v278;
              v88 = v70;
              do
              {
                v89 = *v87;
                *v87 = *v87 - v67;
                ++v87;
                v67 = v68 * v89;
                --v88;
              }

              while (v88);
            }

            goto LABEL_80;
          }
        }

        v83 = &v280[v74];
        v84 = v71 - v74;
        v85 = &v278[v47 * v74];
        do
        {
          v86 = *v83++;
          *v85 = v86 * 32768.0;
          v85 = (v85 + v47);
          --v84;
        }

        while (v84);
        goto LABEL_77;
      }

      if (v283 >= 1)
      {
        v79 = v278;
        v80 = v283;
        v81 = v280;
        do
        {
          v82 = *v81++;
          *v79++ = (v82 * 32768.0) - v67;
          v67 = v68 * (v82 * 32768.0);
          --v80;
        }

        while (v80);
      }

LABEL_80:
      *(v48 + 4 * v66) = v67;
      if (v70 < -119)
      {
        goto LABEL_90;
      }

      if (v262 < 8)
      {
        v90 = 0;
        v91 = 0.0;
LABEL_86:
        v96 = v262 - v90;
        v97 = &v301[4 * v90];
        do
        {
          v98 = *v97++;
          v91 = v91 + (v98 * v98);
          --v96;
        }

        while (v96);
        goto LABEL_88;
      }

      v91 = 0.0;
      v92 = v261;
      v93 = v258;
      do
      {
        v94 = vmulq_f32(v93[-1], v93[-1]);
        v95 = vmulq_f32(*v93, *v93);
        v91 = (((((((v91 + v94.f32[0]) + v94.f32[1]) + v94.f32[2]) + v94.f32[3]) + v95.f32[0]) + v95.f32[1]) + v95.f32[2]) + v95.f32[3];
        v93 += 2;
        v92 -= 8;
      }

      while (v92);
      v90 = v261;
      if (v261 != v262)
      {
        goto LABEL_86;
      }

LABEL_88:
      if (v91 >= 1.0e18)
      {
        v99 = v48;
        bzero(v301, v259);
        v66 = v297;
        *(v99 + 4 * v297) = 0;
      }

LABEL_90:
      v290 = a2;
      if (v300 >= 1)
      {
        v100 = 0;
        v101 = 0uLL;
        v102 = 0.0;
        v103 = 0uLL;
        v104 = 0uLL;
        v105 = 0uLL;
        v106 = 0uLL;
        v107 = v279;
        while (1)
        {
          v303 = v103;
          v304 = v104;
          v305 = v105;
          v306 = v101;
          v307 = v106;
          clt_mdct_forward_c(a1 + 80, &v301[3840 * v100], v33, *(a1 + 72), 120, *(a1 + 40) - v17, 1);
          v108 = *v298.f64;
          if ((v42 & 1) == 0)
          {
            break;
          }

LABEL_107:
          v116 = 0;
          v117 = *(a1 + 32);
          LOWORD(v118) = *v117;
          v120 = v305;
          v119 = v306;
          v122 = v303;
          v121 = v304;
          do
          {
            while (1)
            {
              v123 = v118;
              v124 = v116 + 1;
              v118 = v117[v116 + 1];
              v125 = ((v118 - v123) << v17);
              if (v125 >= 1)
              {
                break;
              }

              v308.f32[v116++] = sqrtf(1.0e-27);
              if (v124 == 21)
              {
                goto LABEL_92;
              }
            }

            v126 = v123 << v17;
            if (v125 < 8)
            {
              v127 = 0;
              v128 = 0.0;
LABEL_115:
              v133 = v125 - v127;
              v134 = &v33[v127 + v126];
              do
              {
                v135 = *v134++;
                v128 = v128 + (v135 * v135);
                --v133;
              }

              while (v133);
              goto LABEL_117;
            }

            v127 = v125 & 0x7FFFFFF8;
            v129 = &v33[v126 + 4];
            v128 = 0.0;
            v130 = v127;
            do
            {
              v131 = vmulq_f32(v129[-1], v129[-1]);
              v132 = vmulq_f32(*v129, *v129);
              v128 = (((((((v128 + v131.f32[0]) + v131.f32[1]) + v131.f32[2]) + v131.f32[3]) + v132.f32[0]) + v132.f32[1]) + v132.f32[2]) + v132.f32[3];
              v129 += 2;
              v130 -= 8;
            }

            while (v130);
            if (v127 != v125)
            {
              goto LABEL_115;
            }

LABEL_117:
            v308.f32[v116++] = sqrtf(v128 + 1.0e-27);
          }

          while (v124 != 21);
LABEL_92:
          v101 = vbslq_s8(vcgtq_f32(v119, v308), v119, v308);
          v103 = vbslq_s8(vcgtq_f32(v122, v309), v122, v309);
          v104 = vbslq_s8(vcgtq_f32(v121, v310), v121, v310);
          v105 = vbslq_s8(vcgtq_f32(v120, v311), v120, v311);
          v106 = vbslq_s8(vcgtq_f32(v307, v312), v307, v312);
          if (v102 <= v313)
          {
            v102 = v313;
          }

          if (++v100 == v300)
          {
            v136 = vcvtq_f64_f32(*v101.f32);
            v292 = vcvtq_f64_f32(*v103.f32);
            v293 = vcvt_hight_f64_f32(v103);
            v294 = vcvtq_f64_f32(*v104.f32);
            v295 = vcvt_hight_f64_f32(v104);
            v303 = vcvtq_f64_f32(*v105.f32);
            v304 = vcvt_hight_f64_f32(v105);
            v306 = vcvt_hight_f64_f32(v106);
            v307 = vcvt_hight_f64_f32(v101);
            v305 = vcvtq_f64_f32(*v106.f32);
            v137 = v102;
            v66 = v297;
            goto LABEL_121;
          }
        }

        v109 = (v302 / v107);
        if (v109 < 1)
        {
          LODWORD(v109) = 0;
        }

        else
        {
          if (v109 <= 7)
          {
            v110 = 0;
            goto LABEL_103;
          }

          v110 = v109 & 0x7FFFFFF8;
          v111 = v110;
          v112 = (v33 + 4);
          do
          {
            v113 = vmulq_n_f32(*v112, v108);
            v112[-1] = vmulq_n_f32(v112[-1], v108);
            *v112 = v113;
            v112 += 2;
            v111 -= 8;
          }

          while (v111);
          if (v110 != v109)
          {
LABEL_103:
            v114 = v109 - v110;
            v115 = &v33[v110];
            do
            {
              *v115 = *v115 * v108;
              ++v115;
              --v114;
            }

            while (v114);
          }
        }

        if (v109 < v302)
        {
          bzero(&v33[v109], 4 * (v302 + ~v109) + 4);
        }

        goto LABEL_107;
      }

      v136 = 0uLL;
      v137 = 0.0;
      v306 = 0u;
      v307 = 0u;
      v292 = 0u;
      v293 = 0u;
      v294 = 0u;
      v295 = 0u;
      v303 = 0u;
      v304 = 0u;
      v305 = 0u;
LABEL_121:
      v286 = v136;
      v138 = v284;
      v139 = &v284->f32[v296];
      v288 = 21 * v66;
      v140 = (v284 + 84 * v66);
      v141.f64[0] = log(v136.f64[1]);
      v287 = v141;
      v142.f64[0] = log(v286.f64[0]);
      v142.f64[1] = v287.f64[0];
      v287 = v142;
      v143.f64[0] = log(v307.f64[1]);
      v286 = v143;
      v144.f64[0] = log(v307.f64[0]);
      v144.f64[1] = v286.f64[0];
      v307 = vdupq_n_s64(0x3FF71547652B82FEuLL);
      *v140 = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v287, v307)), vmulq_f64(v144, v307)), v274);
      v145.f64[0] = log(v292.f64[1]);
      v287 = v145;
      v146.f64[0] = log(v292.f64[0]);
      v146.f64[1] = v287.f64[0];
      v292 = v146;
      v147.f64[0] = log(v293.f64[1]);
      v287 = v147;
      v148.f64[0] = log(v293.f64[0]);
      v148.f64[1] = v287.f64[0];
      v140[1] = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v292, v307)), vmulq_f64(v148, v307)), v273);
      v149.f64[0] = log(v294.f64[1]);
      v293 = v149;
      v150.f64[0] = log(v294.f64[0]);
      v150.f64[1] = v293.f64[0];
      v294 = v150;
      v151.f64[0] = log(v295.f64[1]);
      v293 = v151;
      v152.f64[0] = log(v295.f64[0]);
      v152.f64[1] = v293.f64[0];
      v140[2] = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v294, v307)), vmulq_f64(v152, v307)), v272);
      v153.f64[0] = log(*&v303.i64[1]);
      v295 = v153;
      v154.f64[0] = log(*v303.i64);
      v154.f64[1] = v295.f64[0];
      v303 = v154;
      v155.f64[0] = log(v304.f64[1]);
      v295 = v155;
      v156.f64[0] = log(v304.f64[0]);
      v156.f64[1] = v295.f64[0];
      v140[3] = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v303, v307)), vmulq_f64(v156, v307)), v271);
      v157.f64[0] = log(*&v305.i64[1]);
      v304 = v157;
      v158.f64[0] = log(*v305.i64);
      v158.f64[1] = v304.f64[0];
      v305 = v158;
      v159.f64[0] = log(v306.f64[1]);
      v304 = v159;
      v160.f64[0] = log(v306.f64[0]);
      v160.f64[1] = v304.f64[0];
      v140[4] = vaddq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v305, v307)), vmulq_f64(v160, v307)), v270);
      v161 = log(v137);
      *&v161 = v161 * v269;
      v140[5].f32[0] = *&v161 + -3.75;
      v162 = &v138->f32[v288];
      v163 = *v162;
      v164 = v162[1];
      if (v164 <= (*v162 + -1.0))
      {
        v164 = *v162 + -1.0;
      }

      v165 = v164 + -1.0;
      if (v162[2] > (v164 + -1.0))
      {
        v165 = v162[2];
      }

      v166 = v165 + -1.0;
      if (v162[3] > (v165 + -1.0))
      {
        v166 = v162[3];
      }

      v167 = v166 + -1.0;
      if (v162[4] > (v166 + -1.0))
      {
        v167 = v162[4];
      }

      v168 = v167 + -1.0;
      if (v162[5] > (v167 + -1.0))
      {
        v168 = v162[5];
      }

      v169 = v168 + -1.0;
      if (v162[6] > (v168 + -1.0))
      {
        v169 = v162[6];
      }

      v170 = v169 + -1.0;
      if (v162[7] > (v169 + -1.0))
      {
        v170 = v162[7];
      }

      v171 = v170 + -1.0;
      if (v162[8] > (v170 + -1.0))
      {
        v171 = v162[8];
      }

      v172 = v171 + -1.0;
      if (v162[9] > (v171 + -1.0))
      {
        v172 = v162[9];
      }

      v173 = v172 + -1.0;
      if (v162[10] > (v172 + -1.0))
      {
        v173 = v162[10];
      }

      v174 = v173 + -1.0;
      if (v162[11] > (v173 + -1.0))
      {
        v174 = v162[11];
      }

      v175 = v174 + -1.0;
      if (v162[12] > (v174 + -1.0))
      {
        v175 = v162[12];
      }

      v176 = v175 + -1.0;
      if (v162[13] > (v175 + -1.0))
      {
        v176 = v162[13];
      }

      v177 = v176 + -1.0;
      if (v162[14] > (v176 + -1.0))
      {
        v177 = v162[14];
      }

      v178 = v177 + -1.0;
      if (v162[15] > (v177 + -1.0))
      {
        v178 = v162[15];
      }

      v179 = v178 + -1.0;
      if (v162[16] > (v178 + -1.0))
      {
        v179 = v162[16];
      }

      v180 = v179 + -1.0;
      if (v162[17] > (v179 + -1.0))
      {
        v180 = v162[17];
      }

      v181 = v180 + -1.0;
      if (v162[18] > (v180 + -1.0))
      {
        v181 = v162[18];
      }

      v182 = v181 + -1.0;
      if (v162[19] > (v181 + -1.0))
      {
        v182 = v162[19];
      }

      v183 = v162[20];
      if (v183 <= (v182 + -1.0))
      {
        v183 = v182 + -1.0;
      }

      v162[20] = v183;
      v184 = v183 + -2.0;
      if (v182 <= v184)
      {
        v182 = v184;
      }

      if (v181 <= (v182 + -2.0))
      {
        v181 = v182 + -2.0;
      }

      v162[18] = v181;
      v162[19] = v182;
      v185 = v181 + -2.0;
      if (v180 <= v185)
      {
        v180 = v185;
      }

      if (v179 <= (v180 + -2.0))
      {
        v179 = v180 + -2.0;
      }

      v162[16] = v179;
      v162[17] = v180;
      v186 = v179 + -2.0;
      if (v178 <= v186)
      {
        v178 = v186;
      }

      if (v177 <= (v178 + -2.0))
      {
        v177 = v178 + -2.0;
      }

      v162[14] = v177;
      v162[15] = v178;
      v187 = v177 + -2.0;
      if (v176 <= v187)
      {
        v176 = v187;
      }

      if (v175 <= (v176 + -2.0))
      {
        v175 = v176 + -2.0;
      }

      v162[12] = v175;
      v162[13] = v176;
      v188 = v175 + -2.0;
      if (v174 <= v188)
      {
        v174 = v188;
      }

      if (v173 <= (v174 + -2.0))
      {
        v173 = v174 + -2.0;
      }

      v162[10] = v173;
      v162[11] = v174;
      v189 = v173 + -2.0;
      if (v172 <= v189)
      {
        v172 = v189;
      }

      if (v171 <= (v172 + -2.0))
      {
        v171 = v172 + -2.0;
      }

      v162[8] = v171;
      v162[9] = v172;
      v190 = v171 + -2.0;
      if (v170 <= v190)
      {
        v170 = v190;
      }

      if (v169 <= (v170 + -2.0))
      {
        v169 = v170 + -2.0;
      }

      v162[6] = v169;
      v162[7] = v170;
      v191 = v169 + -2.0;
      if (v168 <= v191)
      {
        v168 = v191;
      }

      if (v167 <= (v168 + -2.0))
      {
        v167 = v168 + -2.0;
      }

      v162[4] = v167;
      v162[5] = v168;
      v192 = v167 + -2.0;
      if (v166 <= v192)
      {
        v166 = v192;
      }

      if (v165 <= (v166 + -2.0))
      {
        v165 = v166 + -2.0;
      }

      v162[2] = v165;
      v162[3] = v166;
      v193 = v165 + -2.0;
      if (v164 <= v193)
      {
        v164 = v193;
      }

      if (v163 <= (v164 + -2.0))
      {
        v163 = v164 + -2.0;
      }

      *v162 = v163;
      v162[1] = v164;
      v194 = *(&v321 + v297);
      if (v194 == 1)
      {
        v212 = 0;
        v42 = v277;
        do
        {
          v213 = *(&v314 + v212 * 4);
          v214 = v139[v212];
          v215 = v214 - v213;
          if (v213 > v214)
          {
            v216 = v213 - v214;
          }

          else
          {
            v213 = v139[v212];
            v216 = v215;
          }

          if (v216 < 8.0)
          {
            v217 = vcvtms_s32_f32(v216 + v216);
            v213 = (v213 + logSum_diff_table[v217]) + (-(floorf(v216 + v216) - (v216 * 2.0)) * (logSum_diff_table[v217 + 1] - logSum_diff_table[v217]));
          }

          *(&v314 + v212 * 4) = v213;
          ++v212;
        }

        while (v212 != 21);
      }

      else
      {
        v195 = v264;
        if (v194 == 3)
        {
          v206 = 0;
          v42 = v277;
          do
          {
            v207 = *&v195[v206 * 4];
            v208 = v139[v206];
            v209 = v208 - v207;
            if (v207 > v208)
            {
              v210 = v207 - v208;
            }

            else
            {
              v207 = v139[v206];
              v210 = v209;
            }

            if (v210 < 8.0)
            {
              v211 = vcvtms_s32_f32(v210 + v210);
              v207 = (v207 + logSum_diff_table[v211]) + (-(floorf(v210 + v210) - (v210 * 2.0)) * (logSum_diff_table[v211 + 1] - logSum_diff_table[v211]));
            }

            *&v195[v206 * 4] = v207;
            ++v206;
          }

          while (v206 != 21);
        }

        else
        {
          v42 = v277;
          if (v194 == 2)
          {
            v196 = &v314;
            v197 = 21;
            do
            {
              v198 = *v196;
              v199 = *v139 + -0.5;
              v200 = *v196 - v199;
              if (*v196 <= v199)
              {
                v198 = *v139 + -0.5;
                v200 = v199 - *v196;
              }

              if (v200 < 8.0)
              {
                v201 = vcvtms_s32_f32(v200 + v200);
                v198 = (v198 + logSum_diff_table[v201]) + (-(floorf(v200 + v200) - (v200 * 2.0)) * (logSum_diff_table[v201 + 1] - logSum_diff_table[v201]));
              }

              *v196 = v198;
              v202 = v196[42];
              v203 = v202 - v199;
              if (v202 <= v199)
              {
                v204 = v199 - v202;
              }

              else
              {
                v199 = v196[42];
                v204 = v203;
              }

              if (v204 < 8.0)
              {
                v205 = vcvtms_s32_f32(v204 + v204);
                v199 = (v199 + logSum_diff_table[v205]) + (-(floorf(v204 + v204) - (v204 * 2.0)) * (logSum_diff_table[v205 + 1] - logSum_diff_table[v205]));
              }

              v196[42] = v199;
              ++v196;
              ++v139;
              --v197;
            }

            while (v197);
          }
        }
      }

      v20 = v301;
      memcpy(v289, &v301[v281], 0x1E0uLL);
      v43 = v297 + 1;
      v291 = (v291 + 2);
      a2 = &v290->i16[1];
      v296 += 21;
    }

    while (v297 + 1 != v266);
  }

  v218 = v314;
  LODWORD(v41.f64[0]) = *v320;
  v307 = v41;
  if (v314 < *v320)
  {
    *v41.f64 = v314;
  }

  v306 = v41;
  *v219.i64 = log((2.0 / v249)) * 1.44269504;
  *v219.i32 = *v219.i64;
  *v219.i32 = *v219.i32 * 0.5;
  v314 = *v219.i32 + v218;
  v220 = vdupq_lane_s32(*v219.i8, 0);
  v221 = v315;
  v222 = *&v320[4];
  v223 = vbslq_s8(vcgtq_f32(*&v320[4], v315), v315, *&v320[4]);
  *v315.f32 = vadd_f32(*v220.f32, *v315.f32);
  *&v315.u32[2] = vadd_f32(*v220.f32, *&vextq_s8(v221, v221, 8uLL));
  *&v319[5] = vaddq_f32(v220, v223);
  v224 = v316;
  v225 = *&v320[20];
  v226 = vbslq_s8(vcgtq_f32(*&v320[20], v316), v316, *&v320[20]);
  *v316.f32 = vadd_f32(*v220.f32, *v316.f32);
  *&v316.u32[2] = vadd_f32(*v220.f32, *&vextq_s8(v224, v224, 8uLL));
  *&v319[9] = vaddq_f32(v220, v226);
  v227 = v317;
  v228 = *&v320[36];
  v229 = vbslq_s8(vcgtq_f32(*&v320[36], v317), v317, *&v320[36]);
  *v317.f32 = vadd_f32(*v220.f32, *v317.f32);
  *&v317.u32[2] = vadd_f32(*v220.f32, *&vextq_s8(v227, v227, 8uLL));
  *&v319[13] = vaddq_f32(v220, v229);
  v230 = v318;
  v231 = *&v320[52];
  v232 = vbslq_s8(vcgtq_f32(*&v320[52], v318), v318, *&v320[52]);
  *v318.f32 = vadd_f32(*v220.f32, *v318.f32);
  *&v318.u32[2] = vadd_f32(*v220.f32, *&vextq_s8(v230, v230, 8uLL));
  *&v319[17] = vaddq_f32(v220, v232);
  v233 = vbslq_s8(vcgtq_f32(*&v320[68], *v319), *v319, *&v320[68]);
  v234 = vextq_s8(*v319, v219, 4uLL);
  v234.i32[3] = LODWORD(v306.f64[0]);
  *&v319[1] = vaddq_f32(v220, v234);
  *&v319[21] = vaddq_f32(v220, v233);
  v235 = vextq_s8(*&v320[4], *&v320[20], 0xCuLL);
  v222.i32[3] = LODWORD(v307.f64[0]);
  v236 = vaddq_f32(v220, v222);
  *v320 = vextq_s8(v236, v236, 0xCuLL);
  *&v320[16] = vaddq_f32(v220, v235);
  *&v320[32] = vaddq_f32(v220, vextq_s8(v225, *&v320[36], 0xCuLL));
  *&v320[48] = vaddq_f32(v220, vextq_s8(v228, *&v320[52], 0xCuLL));
  *&v320[64] = vaddq_f32(v220, vextq_s8(v231, *&v320[68], 0xCuLL));
  *v319 = *v219.i32 + *v319;
  *&v320[80] = *v219.i32 + *&v320[80];
  if (v252 > 0)
  {
    v237 = 0;
    v238 = v284 + 3;
    v239 = &v321;
    v240 = v252;
    v241 = v284;
    do
    {
      while (1)
      {
        v246 = *v239;
        v239 = (v239 + 4);
        v245 = v246;
        if (!v246)
        {
          break;
        }

        v242 = (&v314 + 21 * v245 - 21);
        v243 = vsubq_f32(v238[-2], v242[1]);
        v238[-3] = vsubq_f32(v238[-3], *v242);
        v238[-2] = v243;
        v244 = vsubq_f32(*v238, v242[3]);
        v238[-1] = vsubq_f32(v238[-1], v242[2]);
        *v238 = v244;
        v238[1] = vsubq_f32(v238[1], v242[4]);
        v238[2].f32[0] = v238[2].f32[0] - v242[5].f32[0];
        v238 = (v238 + 84);
        v237 += 84;
        if (!--v240)
        {
          return;
        }
      }

      v247 = v241 + (v237 & 0x3FFFFFFFCLL);
      *(v247 + 80) = 0;
      *(v247 + 48) = 0uLL;
      *(v247 + 64) = 0uLL;
      *(v247 + 16) = 0uLL;
      *(v247 + 32) = 0uLL;
      *v247 = 0uLL;
      v238 = (v238 + 84);
      v237 += 84;
      --v240;
    }

    while (v240);
  }
}

uint64_t opus_multistream_encoder_init_impl(unsigned int *a1, int a2, unsigned int a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v8 = 0xFFFFFFFFLL;
  if (a3 - 256 < 0xFFFFFF01)
  {
    return v8;
  }

  if (a5 < 0)
  {
    return v8;
  }

  if (a4 < 1)
  {
    return v8;
  }

  if (a5 > a4)
  {
    return v8;
  }

  if (255 - a5 < a4)
  {
    return v8;
  }

  v9 = a5 + a4;
  if (a5 + a4 > a3)
  {
    return v8;
  }

  a1[67] = 0;
  *a1 = a3;
  a1[1] = a4;
  a1[2] = a5;
  if (a8 != 1)
  {
    a1[68] = -1;
  }

  a1[72] = -1000;
  a1[69] = a7;
  a1[70] = 5000;
  if (a3 >= 8 && a1 - a6 + 12 >= 0x20)
  {
    if (a3 >= 0x20)
    {
      v10 = a3 & 0xE0;
      v45 = (a6 + 16);
      v46 = a1 + 7;
      v47 = v10;
      do
      {
        v48 = *v45;
        *(v46 - 1) = *(v45 - 1);
        *v46 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 32;
      }

      while (v47);
      if (v10 == a3)
      {
        goto LABEL_14;
      }

      if ((a3 & 0x18) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
    }

    v49 = v10;
    v10 = a3 & 0xF8;
    v50 = (a6 + v49);
    v51 = (a1 + v49 + 12);
    v52 = v49 - v10;
    do
    {
      v53 = *v50++;
      *v51++ = v53;
      v52 += 8;
    }

    while (v52);
    if (v10 == a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:
  v11 = a3 - v10;
  v12 = a1 + v10 + 12;
  v13 = (a6 + v10);
  do
  {
    v14 = *v13++;
    *v12++ = v14;
    --v11;
  }

  while (v11);
LABEL_14:
  if (v9 <= 255)
  {
    v16 = 12;
    v17 = a3;
    while (1)
    {
      v18 = *(a1 + v16);
      if (v18 != 255 && v9 <= v18)
      {
        break;
      }

      ++v16;
      if (!--v17)
      {
        for (i = 0; i != a4; ++i)
        {
          if (i >= a5)
          {
            v23 = (a1 + 3);
            v24 = a3;
            while (1)
            {
              v25 = *v23++;
              if (i + a5 == v25)
              {
                break;
              }

              v8 = 0xFFFFFFFFLL;
              if (!--v24)
              {
                return v8;
              }
            }
          }

          else
          {
            v21 = 0;
            v22 = 2 * i;
            while (v22 != *(a1 + v21 + 12))
            {
              ++v21;
              v8 = 0xFFFFFFFFLL;
              if (a3 == v21)
              {
                return v8;
              }
            }

            v26 = v22 | 1;
            v27 = (a1 + 3);
            v28 = a3;
            while (1)
            {
              v29 = *v27++;
              if (v26 == v29)
              {
                break;
              }

              v8 = 0xFFFFFFFFLL;
              if (!--v28)
              {
                return v8;
              }
            }
          }
        }

        if (a8 != 2)
        {
          goto LABEL_50;
        }

        if (a3 - 228 >= 0xFFFFFF1D)
        {
          v30 = 0;
          v31 = (31 - __clz(a3)) >> 1;
          v32 = 1 << v31;
          v33 = a3;
          do
          {
            v34 = (v32 + 2 * v30) << v31;
            if (v34 <= v33)
            {
              v35 = v32;
            }

            else
            {
              v34 = 0;
              v35 = 0;
            }

            v33 -= v34;
            v30 += v35;
            v32 >>= 1;
            --v31;
          }

          while (v31 != -1);
          v36 = a3 - v30 * v30;
          if (!v36 || v36 == 2)
          {
LABEL_50:
            v38 = (a1 + 74);
            v73 = a8;
            v39 = a1;
            v40 = a3;
            v41 = a7;
            v42 = a2;
            v43 = 0;
            if (a5 < 1)
            {
              v44 = (a1 + 74);
            }

            else
            {
              v44 = (a1 + 74);
              do
              {
                v54 = opus_encoder_init(v44, a2, 2, a7);
                if (v54)
                {
                  return v54;
                }

                a1 = v39;
                if (v43 == v39[68])
                {
                  opus_encoder_ctl(v44, 10024, v55, v56, v57, v58, v59, v60, 1);
                  a1 = v39;
                }

                v44 += 48496;
                ++v43;
                a7 = v41;
                a2 = v42;
              }

              while (v43 < a1[2]);
              a4 = a1[1];
              a8 = v73;
              a3 = v40;
            }

            if (v43 >= a4)
            {
LABEL_75:
              if (a8 == 1)
              {
                v67 = v38;
                if (a4 >= 1)
                {
                  v68 = 0;
                  v67 = v38;
                  do
                  {
                    if (v68 >= a1[2])
                    {
                      v69 = 43584;
                    }

                    else
                    {
                      v69 = 48496;
                    }

                    v67 += v69;
                    ++v68;
                  }

                  while (a4 != v68);
                }

                bzero(&v67[480 * *a1], 4 * a3);
                v70 = v39[1];
                if (v70 >= 1)
                {
                  for (j = 0; j != v70; ++j)
                  {
                    if (j >= v39[2])
                    {
                      v72 = 43584;
                    }

                    else
                    {
                      v72 = 48496;
                    }

                    v38 += v72;
                  }
                }

                bzero(v38, 480 * v40);
                a8 = v73;
                a1 = v39;
              }

              v8 = 0;
              a1[71] = a8;
            }

            else
            {
              while (1)
              {
                v8 = opus_encoder_init(v44, a2, 1, a7);
                a1 = v39;
                if (v43 == v39[68])
                {
                  opus_encoder_ctl(v44, 10024, v61, v62, v63, v64, v65, v66, 1);
                  a1 = v39;
                }

                a8 = v73;
                if (v8)
                {
                  break;
                }

                a7 = v41;
                a2 = v42;
                v44 += 43584;
                ++v43;
                a4 = a1[1];
                if (v43 >= a4)
                {
                  a3 = v40;
                  goto LABEL_75;
                }
              }
            }

            return v8;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t opus_multistream_encode_native(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v10 = v6;
  v11 = v5;
  v12 = v4;
  v14 = v13;
  v15 = v3;
  v249 = *MEMORY[0x277D85DE8];
  if (v3[71] == 1)
  {
    v16 = (v3 + 74);
    v17 = v3[1];
    if (v17 <= 0)
    {
      v24 = v16 + 480 * *v3;
    }

    else
    {
      v18 = 0;
      v19 = v3[2];
      v20 = v3 + 74;
      do
      {
        if (v18 >= v19)
        {
          v21 = 43584;
        }

        else
        {
          v21 = 48496;
        }

        v20 = (v20 + v21);
        ++v18;
      }

      while (v17 != v18);
      for (i = 0; i != v17; ++i)
      {
        if (i >= v19)
        {
          v23 = 43584;
        }

        else
        {
          v23 = 48496;
        }

        v16 += v23;
      }

      v24 = &v20[120 * *v3];
    }
  }

  else
  {
    v16 = 0;
    v24 = 0;
  }

  v243 = 0;
  memset(v242, 0, 496);
  v241 = 0;
  v25 = v3 + 74;
  v240 = 0;
  opus_encoder_ctl(v3 + 74, 4029, v4, v5, v6, v7, v8, v9, &v243);
  opus_encoder_ctl(v15 + 74, 4007, v26, v27, v28, v29, v30, v31, &v241);
  v38 = opus_encoder_ctl(v15 + 74, 10015, v32, v33, v34, v35, v36, v37, &v240);
  if (v243 / 400 > v12)
  {
    return 0xFFFFFFFFLL;
  }

  v43 = v15[70];
  v44 = v12;
  if (v43 != 5000)
  {
    v46 = v43 + 119;
    if (v43 - 5001 > 8)
    {
      return 0xFFFFFFFFLL;
    }

    v47 = v43 >> 1 > 0x9C6;
    v48 = ((v43 - 5003) * v243) / 50;
    v44 = v47 ? v48 : (v243 / 400) << v46;
    if (v44 > v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (400 * v44 == v243 || 200 * v44 == v243 || 100 * v44 == v243)
  {
    if (v44 >= 1)
    {
      goto LABEL_35;
    }

    return 0xFFFFFFFFLL;
  }

  v45 = (50 * v44 != v243) & vminv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(vdupq_n_s32(50 * v44), vmulq_s32(vdupq_n_s32(v243), xmmword_273BC0F50)))));
  if (25 * v44 == v243)
  {
    LOBYTE(v45) = 0;
  }

  v41 = 0xFFFFFFFFLL;
  if (v44 >= 1 && (v45 & 1) == 0)
  {
LABEL_35:
    v238 = v14;
    if (v243 / v44 == 10)
    {
      v49 = v15[1];
    }

    else
    {
      v49 = 0;
    }

    v50 = v49 + 2 * v15[1] - 1;
    if (v50 > v10)
    {
      return 4294967294;
    }

    v228 = &v217;
    v239 = v44;
    v51 = MEMORY[0x28223BE20](v38, v39, v40);
    v236 = (&v217 - v52);
    MEMORY[0x28223BE20](v51, v53, v54);
    v231 = (&v217 - v61);
    if (v15[71] == 1)
    {
      surround_analysis(v240, v238, v231, v16, v24, v239, v59, v243, v15[67]);
    }

    v248[0] = 0;
    opus_encoder_ctl(v15 + 74, 4029, v55, v56, v57, v58, v59, v60, v248);
    if (v15[71] == 2)
    {
      v67 = v15[1];
      v68 = v15[2] + v67;
      v69 = v15[72];
      v70 = v239;
      if (v69 == -1)
      {
        v71 = 320000 * v68;
      }

      else
      {
        v71 = v15[72];
        if (v69 == -1000)
        {
          v71 = 15000 * v67 + (60 * v248[0] / v239 + v248[0]) * v68;
        }
      }

      if (v67 >= 1)
      {
        v81 = v71 / v67;
        if (v67 >= 8)
        {
          v82 = v67 & 0x7FFFFFF8;
          v99 = vdupq_n_s32(v81);
          v100 = v247;
          v101 = v82;
          do
          {
            v100[-1] = v99;
            *v100 = v99;
            v100 += 2;
            v101 -= 8;
          }

          while (v101);
          if (v82 == v67)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v82 = 0;
        }

        v102 = v67 - v82;
        v103 = &v246[4 * v82 + 92];
        do
        {
          *v103++ = v81;
          --v102;
        }

        while (v102);
LABEL_95:
        if (v67 <= 1)
        {
          v104 = 1;
        }

        else
        {
          v104 = v67;
        }

        if (v67 >= 8)
        {
          v105 = v104 & 0x7FFFFFF8;
          v107 = v247;
          v108 = 0uLL;
          v109 = vdupq_n_s32(0x1F4u);
          v110 = v105;
          v111 = 0uLL;
          do
          {
            v112 = vmaxq_s32(v107[-1], v109);
            v113 = vmaxq_s32(*v107, v109);
            v107[-1] = v112;
            *v107 = v113;
            v108 = vaddq_s32(v112, v108);
            v111 = vaddq_s32(v113, v111);
            v107 += 2;
            v110 -= 8;
          }

          while (v110);
          v106 = vaddvq_s32(vaddq_s32(v111, v108));
          if (v105 == v104)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v105 = 0;
          v106 = 0;
        }

        v114 = v104 - v105;
        v115 = &v246[4 * v105 + 92];
        do
        {
          v116 = *v115;
          if (*v115 <= 500)
          {
            v116 = 500;
          }

          *v115++ = v116;
          v106 += v116;
          --v114;
        }

        while (v114);
LABEL_107:
        v96 = 3 * v106;
        v95 = 1;
        if (v241)
        {
          v117 = 1;
        }

        else
        {
          v117 = v69 == -1;
        }

        v235 = v12;
        if (!v117)
        {
          goto LABEL_88;
        }

        goto LABEL_112;
      }
    }

    else
    {
      v72 = v15[68];
      if (v72 == -1)
      {
        v73 = 0;
      }

      else
      {
        v73 = -1;
      }

      v67 = v15[1];
      v74 = v15[2];
      v75 = v73 - v74 + v67;
      v76 = v75 + 2 * v74;
      v70 = v239;
      v77 = v248[0] / v239;
      if (v248[0] / v239 >= 50)
      {
        v78 = 40 * (v248[0] / v239);
      }

      else
      {
        v78 = 2000;
      }

      v69 = v15[72];
      if (v69 == -1)
      {
        if (v72 == -1)
        {
          v83 = 0;
        }

        else
        {
          v83 = 128000;
        }

        v79 = v83 + 300000 * v76;
      }

      else
      {
        v79 = v15[72];
        if (v69 == -1000)
        {
          if (v72 == -1)
          {
            v80 = 0;
          }

          else
          {
            v80 = 8000;
          }

          v79 = v80 + (v248[0] + v78 + 10000) * v76;
        }
      }

      if (v67 >= 1)
      {
        v84 = 0;
        v85 = v79 / 20;
        if (v79 >= 60000)
        {
          v85 = 3000;
        }

        if (v77 >= 50)
        {
          v86 = 15 * v77;
        }

        else
        {
          v86 = 750;
        }

        v62 = v72 != -1;
        v87 = v85 + v86;
        if (v72 == -1)
        {
          v88 = 0;
        }

        else
        {
          v88 = v87;
        }

        v89 = v79 - (v88 + v76 * v78);
        v90 = v89 / v76 / 2;
        if (v90 >= 20000)
        {
          v90 = 20000;
        }

        v91 = v90 & ~(v90 >> 31);
        v92 = ((v89 + v91 * ((v72 != 0xFFFFFFFFLL) - v67)) << 8) / (((v75 << 8) + (v74 << 9)) | (32 * v62));
        v93 = ((v91 + v92) & ~((v91 + v92) >> 31)) + v78;
        v94 = ((v91 + 2 * v92) & ~((v91 + 2 * v92) >> 31)) + 2 * v78;
        do
        {
          if (v84 < v74)
          {
            *&v246[4 * v84 + 92] = v94;
          }

          else if (v72 == v84)
          {
            *&v246[4 * v84 + 92] = (v87 + (v92 >> 3)) & ~((v87 + (v92 >> 3)) >> 31);
          }

          else
          {
            *&v246[4 * v84 + 92] = v93;
          }

          ++v84;
        }

        while (v67 != v84);
        goto LABEL_95;
      }
    }

    v95 = 0;
    v96 = 0;
    if (v241)
    {
      v97 = 1;
    }

    else
    {
      v97 = v69 == -1;
    }

    v235 = v12;
    if (!v97)
    {
LABEL_88:
      if (v69 == -1000)
      {
        v98 = v96 / (24 * v243 / v70);
      }

      else
      {
        v98 = (3 * v69) / (24 * v243 / v70);
        if (v50 > v98)
        {
          v98 = v50;
        }
      }

      if (v98 < v10)
      {
        v10 = v98;
      }

      if (!v95)
      {
        return 0;
      }

LABEL_113:
      v237 = v11;
      v233 = v10;
      v118 = 0;
      v119 = 50 * v70;
      LODWORD(v234) = 3000;
      v120 = v15 + 74;
      do
      {
        if (v118 >= v15[2])
        {
          v122 = 43584;
        }

        else
        {
          v122 = 48496;
        }

        opus_encoder_ctl(v120, 4002, v62, v70, v63, v64, v65, v66, *&v246[4 * v118 + 92]);
        v123 = v15[71];
        if (v123 == 2)
        {
          opus_encoder_ctl(v120, 11002, v62, v70, v63, v64, v65, v66, 1002);
        }

        else if (v123 == 1)
        {
          v124 = v15[72];
          v125 = *v15;
          if (v119 < v243)
          {
            v124 += (v234 - 60 * (v243 / v239)) * v125;
          }

          v126 = 10000 * v125;
          v127 = 7000 * v125;
          if (v124 <= (5000 * v125))
          {
            v128 = 1101;
          }

          else
          {
            v128 = 1103;
          }

          if (v124 > v127)
          {
            v128 = 1104;
          }

          if (v124 <= v126)
          {
            v129 = v128;
          }

          else
          {
            v129 = 1105;
          }

          opus_encoder_ctl(v120, 4008, v62, v70, v63, v64, v65, v66, v129);
          if (v118 < v15[2])
          {
            opus_encoder_ctl(v120, 11002, v62, v70, v63, v64, v65, v66, 1002);
            opus_encoder_ctl(v120, 4022, v130, v131, v132, v133, v134, v135, 2);
          }
        }

        v120 = (v120 + v122);
        ++v118;
        v121 = v15[1];
      }

      while (v118 < v121);
      if (v121 >= 1)
      {
        LODWORD(v41) = 0;
        v136 = 0;
        v226 = v246;
        v137 = (v15 + 3);
        v138 = v239;
        v224 = v239 & 0x7FFFFFF0;
        v217 = v239 & 0xC;
        v234 = v239;
        v229 = (v15 + 3);
        v230 = v239 & 0x7FFFFFFE;
        v139 = v237;
        v219 = v238 + 1;
        v218 = v236 + 8;
        v221 = v239 & 0x7FFFFFFC;
        v220 = -v221;
        v227 = &v238->i8[2];
        v222 = v236 + 3;
        v223 = v236 + 2;
        v225 = v236 + 1;
        v140.i64[0] = 0x3800000038000000;
        for (v140.i64[1] = 0x3800000038000000; ; v140.i64[1] = 0x3800000038000000)
        {
          v242[1] = 0;
          v141 = v15[2];
          v142 = *v15;
          v143 = v142;
          v237 = v139;
          if (v136 < v141)
          {
            if (v142 < 1)
            {
              v146 = -1;
              v149 = -1;
            }

            else
            {
              v144 = 0;
              v145 = 2 * v136;
              while (v145 != *(v137 + v144))
              {
                if (v142 == ++v144)
                {
                  v146 = -1;
                  goto LABEL_149;
                }
              }

              v146 = v144;
LABEL_149:
              v150 = 0;
              v151 = v145 | 1;
              while (v151 != *(v137 + v150))
              {
                if (v142 == ++v150)
                {
                  v149 = -1;
                  goto LABEL_159;
                }
              }

              v149 = v150;
            }

LABEL_159:
            if (v138 >= 1)
            {
              v154 = 0;
              v155 = 2 * v142;
              if (v138 == 1)
              {
                goto LABEL_165;
              }

              if (v142 != 1)
              {
                goto LABEL_165;
              }

              v156 = &v227[2 * v146];
              v157 = v230;
              v158 = v223;
              do
              {
                v159 = vcvts_n_f32_s32(*v156, 0xFuLL);
                *(v158 - 2) = vcvts_n_f32_s32(*(v156 - 1), 0xFuLL);
                *v158 = v159;
                v158 += 4;
                v156 += 4;
                v157 -= 2;
              }

              while (v157);
              v154 = v230;
              if (v230 != v234)
              {
LABEL_165:
                v160 = &v236[2 * v154];
                v161 = v234 - v154;
                v162 = &v238->i16[v154 * v142 + v146];
                do
                {
                  *v160 = vcvts_n_f32_s32(*v162, 0xFuLL);
                  v160 += 2;
                  v162 = (v162 + v155);
                  --v161;
                }

                while (v161);
              }

              v163 = 0;
              if (v138 == 1)
              {
                goto LABEL_172;
              }

              if (v143 != 1)
              {
                goto LABEL_172;
              }

              v164 = &v227[2 * v149];
              v165 = v222;
              v166 = v230;
              do
              {
                v167 = vcvts_n_f32_s32(*v164, 0xFuLL);
                *(v165 - 2) = vcvts_n_f32_s32(*(v164 - 1), 0xFuLL);
                *v165 = v167;
                v165 += 4;
                v164 += 4;
                v166 -= 2;
              }

              while (v166);
              v163 = v230;
              if (v230 != v234)
              {
LABEL_172:
                v168 = &v225[2 * v163];
                v169 = v234 - v163;
                v170 = &v238->i16[v163 * v143 + v149];
                do
                {
                  *v168 = vcvts_n_f32_s32(*v170, 0xFuLL);
                  v168 += 2;
                  v170 = (v170 + v155);
                  --v169;
                }

                while (v169);
              }
            }

            if (v15[71] != 1)
            {
              v177 = 48496;
              goto LABEL_190;
            }

            v171 = v146;
            v172 = v231;
            v173 = v231 + 84 * v146;
            v174 = *(v173 + 3);
            v244[2] = *(v173 + 2);
            v244[3] = v174;
            v244[4] = *(v173 + 4);
            v245 = *(v173 + 20);
            v175 = *(v173 + 1);
            v244[0] = *v173;
            v244[1] = v175;
            v176 = v226;
            v177 = 48496;
            v178 = v149;
            goto LABEL_188;
          }

          if (v142 < 1)
          {
LABEL_145:
            v146 = -1;
            if (v138 < 1)
            {
              goto LABEL_186;
            }
          }

          else
          {
            v147 = 0;
            v148 = v141 + v136;
            while (v148 != *(v137 + v147))
            {
              if (v142 == ++v147)
              {
                goto LABEL_145;
              }
            }

            v146 = v147;
            if (v138 < 1)
            {
              goto LABEL_186;
            }
          }

          v152 = 0;
          if (v138 < 4 || v142 != 1)
          {
LABEL_184:
            v189 = &v236[v152];
            v190 = v234 - v152;
            v191 = &v238->i16[v152 * v143 + v146];
            v192 = 2 * v143;
            do
            {
              *v189++ = vcvts_n_f32_s32(*v191, 0xFuLL);
              v191 = (v191 + v192);
              --v190;
            }

            while (v190);
            goto LABEL_186;
          }

          if (v138 >= 0x10)
          {
            v179 = v218;
            v180 = (v219 + 2 * v146);
            v181 = v224;
            do
            {
              v182 = v180[-1];
              v183 = vcvtq_f32_s32(vmovl_high_s16(*v180));
              v184 = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v180->i8)), v140);
              v179[-2] = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v182.i8)), v140);
              v179[-1] = vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v182)), v140);
              *v179 = v184;
              v179[1] = vmulq_f32(v183, v140);
              v179 += 4;
              v180 += 2;
              v181 -= 16;
            }

            while (v181);
            if (v224 == v234)
            {
              goto LABEL_186;
            }

            v152 = v224;
            v153 = v224;
            if (!v217)
            {
              goto LABEL_184;
            }
          }

          else
          {
            v153 = 0;
          }

          v185 = (v238 + 2 * v153 + 2 * v146);
          v186 = &v236[v153];
          v187 = v220 + v153;
          do
          {
            v188 = *v185++;
            *v186++ = vmulq_f32(vcvtq_f32_s32(vmovl_s16(v188)), v140);
            v187 += 4;
          }

          while (v187);
          v152 = v221;
          if (v221 != v234)
          {
            goto LABEL_184;
          }

LABEL_186:
          v178 = -1;
          if (v15[71] == 1)
          {
            v176 = v244;
            v171 = v146;
            v149 = v146;
            v177 = 43584;
            v172 = v231;
LABEL_188:
            v193 = v172 + 84 * v149;
            v194 = *(v193 + 3);
            v176[2] = *(v193 + 2);
            v176[3] = v194;
            v176[4] = *(v193 + 4);
            *(v176 + 20) = *(v193 + 20);
            v195 = *(v193 + 1);
            *v176 = *v193;
            v176[1] = v195;
            opus_encoder_ctl(v25, 10026, v138, v70, v63, v64, v65, v66, v244);
            LODWORD(v121) = v15[1];
            v149 = v178;
            v138 = v239;
            v146 = v171;
            goto LABEL_190;
          }

          v177 = 43584;
          v149 = -1;
LABEL_190:
          v196 = (v233 - v41);
          v197 = v121 + ~v136;
          if (v197 <= 0)
          {
            v198 = 0;
          }

          else
          {
            v198 = 1 - 2 * v197;
          }

          if (v243 / v138 != 10)
          {
            v197 = 0;
          }

          v199 = v196 - v197 + v198;
          if (v199 >= 7662)
          {
            v200 = 7662;
          }

          else
          {
            v200 = v199;
          }

          v201 = v121 - 1;
          if (v199 > 253)
          {
            v202 = -2;
          }

          else
          {
            v202 = -1;
          }

          if (v136 == v201)
          {
            v203 = 0;
          }

          else
          {
            v203 = v202;
          }

          if (!v241 && v136 == v201)
          {
            v232 = v41;
            v204 = v136;
            v205 = v146;
            v206 = v25;
            v207 = v196;
            v208 = v15;
            v209 = v177;
            v210 = v25;
            v211 = v149;
            opus_encoder_ctl(v206, 4002, v138, v70, v63, v64, v65, v66, (8 * v243 / v138 * v200));
            v149 = v211;
            v25 = v210;
            v177 = v209;
            v15 = v208;
            v196 = v207;
            v146 = v205;
            v136 = v204;
            LODWORD(v41) = v232;
            v137 = v229;
            v138 = v239;
          }

          v212 = opus_encode_native(v25, v236, v138, v248, (v203 + v200), 16, v238, v235, v146, v149, *v15, downmix_int, 0);
          if ((v212 & 0x80000000) != 0)
          {
            return v212;
          }

          if (opus_repacketizer_cat(v242, v248, v212))
          {
            return 4294967293;
          }

          v25 = (v25 + v177);
          v213 = v15[1] - 1;
          v214 = v136 == v213 && v241 == 0;
          v215 = v237;
          v216 = opus_repacketizer_out_range_impl(v242, 0, v242[1], v237, v196, v136 != v213, v214);
          v139 = &v215[v216];
          v41 = (v216 + v41);
          ++v136;
          LODWORD(v121) = v15[1];
          v138 = v239;
          v140.i64[0] = 0x3800000038000000;
          if (v136 >= v121)
          {
            return v41;
          }
        }
      }

      return 0;
    }

LABEL_112:
    if (!v95)
    {
      return 0;
    }

    goto LABEL_113;
  }

  return v41;
}

uint64_t opus_multistream_encoder_ctl_va_list(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a3;
  v10 = a1 + 74;
  result = 4294967291;
  if (a2 > 5119)
  {
    switch(a2)
    {
      case 5120:
        v45 = v53;
        v53 += 2;
        v46 = *v45;
        if (v46 < 0)
        {
          return 0xFFFFFFFFLL;
        }

        if (v46 >= a1[1])
        {
          return 0xFFFFFFFFLL;
        }

        v47 = v53;
        v53 += 2;
        v48 = *v47;
        if (!v48)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          if (v46)
          {
            for (i = 0; i != v46; ++i)
            {
              if (i >= a1[2])
              {
                v50 = 43584;
              }

              else
              {
                v50 = 48496;
              }

              v10 = (v10 + v50);
            }
          }

          result = 0;
          *v48 = v10;
        }

        break;
      case 11002:
LABEL_8:
        v13 = v53;
        v53 += 2;
        if (a1[1] < 1)
        {
          return 0;
        }

        else
        {
          v14 = 0;
          v15 = *v13;
          while (1)
          {
            v16 = a1[2];
            result = opus_encoder_ctl(v10, a2, a3, a4, a5, a6, a7, a8, v15);
            if (result)
            {
              break;
            }

            if (v14 >= v16)
            {
              v17 = 43584;
            }

            else
            {
              v17 = 48496;
            }

            v10 = (v10 + v17);
            if (++v14 >= a1[1])
            {
              return 0;
            }
          }
        }

        break;
      case 11019:
LABEL_3:
        v12 = v53;
        v53 += 2;
        return opus_encoder_ctl(v10, a2, a3, a4, a5, a6, a7, a8, *v12);
    }
  }

  else
  {
    switch(a2)
    {
      case 4000:
      case 4004:
      case 4006:
      case 4008:
      case 4010:
      case 4012:
      case 4014:
      case 4016:
      case 4020:
      case 4022:
      case 4024:
      case 4036:
      case 4042:
      case 4046:
        goto LABEL_8;
      case 4001:
      case 4007:
      case 4009:
      case 4011:
      case 4013:
      case 4015:
      case 4017:
      case 4021:
      case 4023:
      case 4025:
      case 4027:
      case 4029:
      case 4037:
      case 4043:
      case 4047:
        goto LABEL_3;
      case 4002:
        v28 = v53;
        v53 += 2;
        v29 = *v28;
        if (v29 == -1000 || v29 == -1)
        {
          goto LABEL_43;
        }

        if (v29 < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (500 * *a1 > v29)
        {
          v29 = 500 * *a1;
        }

        if (300000 * *a1 < v29)
        {
          v29 = 300000 * *a1;
        }

LABEL_43:
        result = 0;
        a1[72] = v29;
        return result;
      case 4003:
        v23 = v53;
        v53 += 2;
        v24 = *v23;
        if (!*v23)
        {
          return 0xFFFFFFFFLL;
        }

        *v24 = 0;
        if (a1[1] < 1)
        {
          return 0;
        }

        v25 = 0;
        do
        {
          v52 = 0;
          if (v25 >= a1[2])
          {
            v26 = 10896;
          }

          else
          {
            v26 = 12124;
          }

          v27 = &v10[v26];
          opus_encoder_ctl(v10, 4003, a3, a4, a5, a6, a7, a8, &v52);
          result = 0;
          *v24 += v52;
          ++v25;
          v10 = v27;
        }

        while (v25 < a1[1]);
        return result;
      case 4028:
        if (a1[71] == 1)
        {
          v31 = a1[1];
          v32 = v10;
          if (v31 >= 1)
          {
            v33 = 0;
            v32 = v10;
            do
            {
              if (v33 >= a1[2])
              {
                v34 = 43584;
              }

              else
              {
                v34 = 48496;
              }

              v32 = (v32 + v34);
              ++v33;
            }

            while (v31 != v33);
          }

          bzero(&v32[120 * *a1], 4 * *a1);
          v35 = a1[1];
          v36 = v10;
          if (v35 >= 1)
          {
            v37 = 0;
            v36 = v10;
            do
            {
              if (v37 >= a1[2])
              {
                v38 = 43584;
              }

              else
              {
                v38 = 48496;
              }

              v36 = (v36 + v38);
              ++v37;
            }

            while (v35 != v37);
          }

          bzero(v36, 480 * *a1);
        }

        if (a1[1] < 1)
        {
          return 0;
        }

        v39 = 0;
        do
        {
          v40 = a1[2];
          result = opus_encoder_ctl(v10, 4028, a3, a4, a5, a6, a7, a8, v51);
          if (result)
          {
            break;
          }

          v41 = v39 >= v40 ? 43584 : 48496;
          v10 = (v10 + v41);
          ++v39;
        }

        while (v39 < a1[1]);
        return result;
      case 4031:
        v18 = v53;
        v53 += 2;
        v19 = *v18;
        v52 = 0;
        if (!v19)
        {
          return 0xFFFFFFFFLL;
        }

        *v19 = 0;
        if (a1[1] < 1)
        {
          return 0;
        }

        v20 = 0;
        break;
      case 4040:
        result = 0;
        v44 = v53;
        v53 += 2;
        a1[70] = *v44;
        return result;
      case 4041:
        v42 = v53;
        v53 += 2;
        v43 = *v42;
        if (!v43)
        {
          return 0xFFFFFFFFLL;
        }

        result = 0;
        *v43 = a1[70];
        return result;
      default:
        return result;
    }

    while (1)
    {
      v21 = a1[2];
      result = opus_encoder_ctl(v10, 4031, a3, a4, a5, a6, a7, a8, &v52);
      if (result)
      {
        break;
      }

      if (v20 >= v21)
      {
        v22 = 43584;
      }

      else
      {
        v22 = 48496;
      }

      v10 = (v10 + v22);
      *v19 ^= v52;
      if (++v20 >= a1[1])
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t pitch_downsample(float **a1, float32x4_t *a2, int a3, int a4)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = (a3 >> 1);
  v6 = *a1;
  if (v5 >= 2)
  {
    if (v5 >= 0xA && (&a2->i32[1] < &v6[2 * v5] ? (_CF = v6 + 1 >= &a2->f32[v5]) : (_CF = 1), _CF))
    {
      v8 = (v5 - 1) & 7;
      if (!v8)
      {
        v8 = 8;
      }

      v9 = v5 - 1 - v8;
      v10 = v9 + 1;
      v11 = v6 + 10;
      v12 = (a2 + 20);
      __asm { FMOV            V0.4S, #0.25 }

      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      do
      {
        v18 = v11 - 9;
        v19 = vld2q_f32(v18);
        v20 = v11 - 1;
        v21 = vld2q_f32(v20);
        v22 = v11 - 8;
        v95 = vld2q_f32(v22);
        v96 = vld2q_f32(v11);
        v12[-1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v95.val[1], _Q0), _Q0, v19), v17, v95.val[0]);
        *v12 = vmlaq_f32(vmlaq_f32(vmulq_f32(v96.val[1], _Q0), _Q0, v21), v17, v96.val[0]);
        v11 += 16;
        v12 += 2;
        v9 -= 8;
      }

      while (v9);
    }

    else
    {
      v10 = 1;
    }

    v23 = v5 - v10;
    v24 = &a2->f32[v10];
    v25 = &v6[2 * v10];
    do
    {
      *v24++ = ((v25[1] * 0.25) + (*(v25 - 1) * 0.25)) + (*v25 * 0.5);
      v25 += 2;
      --v23;
    }

    while (v23);
  }

  v26 = (*v6 * 0.5) + (v6[1] * 0.25);
  a2->f32[0] = v26;
  if (a4 == 2)
  {
    v27 = a1[1];
    if (v5 >= 2)
    {
      if (v5 >= 0xA && (&a2->i32[1] >= &v27[2 * v5] || v27 + 1 >= &a2->f32[v5]))
      {
        v29 = (v5 - 1) & 7;
        if (!v29)
        {
          v29 = 8;
        }

        v30 = v5 - 1 - v29;
        v28 = v30 + 1;
        v31 = v27 + 10;
        v32 = (a2 + 20);
        __asm { FMOV            V1.4S, #0.25 }

        v34.i64[0] = 0x3F0000003F000000;
        v34.i64[1] = 0x3F0000003F000000;
        do
        {
          v35 = v31 - 9;
          v36 = vld2q_f32(v35);
          v37 = v31 - 1;
          v38 = vld2q_f32(v37);
          v39 = v31 - 8;
          v97 = vld2q_f32(v39);
          v98 = vld2q_f32(v31);
          v40 = vaddq_f32(*v32, vmlaq_f32(vmlaq_f32(vmulq_f32(v98.val[1], _Q1), _Q1, v38), v34, v98.val[0]));
          v32[-1] = vaddq_f32(v32[-1], vmlaq_f32(vmlaq_f32(vmulq_f32(v97.val[1], _Q1), _Q1, v36), v34, v97.val[0]));
          *v32 = v40;
          v31 += 16;
          v32 += 2;
          v30 -= 8;
        }

        while (v30);
      }

      else
      {
        v28 = 1;
      }

      v41 = v5 - v28;
      v42 = &a2->f32[v28];
      v43 = &v27[2 * v28];
      do
      {
        *v42 = *v42 + (((v43[1] * 0.25) + (*(v43 - 1) * 0.25)) + (*v43 * 0.5));
        ++v42;
        v43 += 2;
        --v41;
      }

      while (v41);
    }

    a2->f32[0] = v26 + ((*v27 * 0.5) + (v27[1] * 0.25));
  }

  result = _celt_autocorr(a2, &v92, 0, 0, 4, v5);
  *v45.i32 = v92.n128_f32[0] * 1.0001;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ((v92.n128_f32[0] * 1.0001) > 1.0e-10)
  {
    v50 = v92.n128_f32[1] + ((v92.n128_f32[1] * -0.008) * 0.008);
    v51 = *v45.i32 * 0.001;
    v52 = -(v50 + 0.0) / *v45.i32;
    v53 = *v45.i32 + (-(v52 * v52) * *v45.i32);
    if (v53 <= (*v45.i32 * 0.001))
    {
      v47 = 0;
      v45 = 0;
    }

    else
    {
      v54 = v92.n128_f32[2] + ((v92.n128_f32[2] * -0.016) * 0.016);
      v46 = 0;
      *v45.i32 = -(((v52 * v50) + 0.0) + v54) / v53;
      v55 = v52 + (*v45.i32 * v52);
      v56 = v53 + (-(*v45.i32 * *v45.i32) * v53);
      if (v56 <= v51)
      {
        v47 = 0;
        v52 = v52 + (*v45.i32 * v52);
      }

      else
      {
        v57 = v92.n128_f32[3] + ((v92.n128_f32[3] * -0.024) * 0.024);
        v46 = 0;
        *v47.i32 = -((((v55 * v54) + 0.0) + (*v45.i32 * v50)) + v57) / v56;
        v52 = v55 + (*v47.i32 * *v45.i32);
        *v45.i32 = *v45.i32 + (*v47.i32 * v55);
        v58 = v56 + (-(*v47.i32 * *v47.i32) * v56);
        if (v58 > v51)
        {
          v59 = -(((((v52 * v57) + 0.0) + (*v45.i32 * v54)) + (*v47.i32 * v50)) + (v93 + ((v93 * -0.032) * 0.032))) / v58;
          v60 = v52 + (v59 * *v47.i32);
          *v47.i32 = *v47.i32 + (v59 * v52);
          *v45.i32 = *v45.i32 + (v59 * *v45.i32);
          *v46.i32 = v59 * 0.6561;
          v52 = v60;
        }
      }
    }

    *v49.i32 = v52 * 0.9;
    *v48.i32 = *v45.i32 * 0.81;
    *v47.i32 = *v47.i32 * 0.729;
  }

  if (v5 >= 1)
  {
    *v45.i32 = *v49.i32 + 0.8;
    *v49.i32 = *v48.i32 + (*v49.i32 * 0.8);
    *v48.i32 = *v47.i32 + (*v48.i32 * 0.8);
    *v47.i32 = *v46.i32 + (*v47.i32 * 0.8);
    *v46.i32 = *v46.i32 * 0.8;
    if (v5 < 8)
    {
      v61 = 0;
      v62 = 0.0;
      v63.i32[0] = 0;
      v64 = 0.0;
      v65 = 0.0;
      v66 = 0.0;
      goto LABEL_44;
    }

    v67 = vdupq_lane_s32(v45, 0);
    v68 = vdupq_lane_s32(v49, 0);
    v69 = vdupq_lane_s32(v48, 0);
    v61 = v5 & 0x7FFFFFF8;
    v70 = vdupq_lane_s32(v47, 0);
    v71 = &a2[1];
    v72 = 0uLL;
    v73 = v61;
    v74 = vdupq_lane_s32(v46, 0);
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v63 = 0uLL;
    do
    {
      v78 = v71[-1];
      v79 = vextq_s8(v63, v78, 0xCuLL);
      v63 = *v71;
      v80 = vextq_s8(v77, v79, 0xCuLL);
      v81 = vextq_s8(v78, *v71, 0xCuLL);
      v82 = vextq_s8(v76, v80, 0xCuLL);
      v83 = vextq_s8(v79, v81, 0xCuLL);
      v84 = vextq_s8(v75, v82, 0xCuLL);
      v85 = vextq_s8(v80, v83, 0xCuLL);
      v86 = vextq_s8(v82, v85, 0xCuLL);
      v87 = vmlaq_f32(v78, v79, v67);
      v88 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(*v71, v81, v67), v83, v68), v85, v69), v86, v70), vextq_s8(v84, v86, 0xCuLL), v74);
      v71[-1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v87, v80, v68), v82, v69), v84, v70), vextq_s8(v72, v84, 0xCuLL), v74);
      *v71 = v88;
      v71 += 2;
      v72 = v86;
      v75 = v85;
      v76 = v83;
      v77 = v81;
      v73 -= 8;
    }

    while (v73);
    if (v61 != v5)
    {
      v62 = v78.f32[3];
      v64 = *&v63.i32[1];
      v66 = *&v63.i32[3];
      v65 = *&v63.i32[2];
LABEL_44:
      v89 = v5 - v61;
      v90 = &a2->f32[v61];
      do
      {
        v91 = *v90;
        *v90 = ((((*v90 + (*v45.i32 * v66)) + (*v49.i32 * v65)) + (*v48.i32 * v64)) + (*v47.i32 * *v63.i32)) + (*v46.i32 * v62);
        ++v90;
        v62 = *v63.i32;
        *v63.i32 = v64;
        v64 = v65;
        v65 = v66;
        v66 = v91;
        --v89;
      }

      while (v89);
    }
  }

  return result;
}

void celt_pitch_xcorr_c(float *a1, float32x4_t *a2, __n128 *a3, int a4, int a5, __n128 a6)
{
  v6 = a5 - 4;
  if (a5 < 4)
  {
    LODWORD(v8) = 0;
    goto LABEL_28;
  }

  v7 = (a5 - 3);
  if (a4 >= 4)
  {
    v8 = 0;
    v9 = a4 & 0x7FFFFFFC | 1;
    v10 = a4 & 0x7FFFFFFC | 2;
    while (1)
    {
      v12 = 0;
      v13 = &a2->f32[v8];
      v14 = *v13;
      v15 = v13[1];
      v16 = v13 + 3;
      v17 = v13[2];
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v22 = a1;
      do
      {
        v23 = v16;
        v24 = v22;
        v25 = v22[1];
        v26 = v21 + (*v22 * v14);
        v27 = *v16;
        v14 = v16[1];
        v28 = v26 + (v25 * v15);
        v29 = (v20 + (*v22 * v15)) + (v25 * v17);
        v30 = (v19 + (*v22 * v17)) + (v25 * *v16);
        v31 = (v18 + (*v22 * *v16)) + (v25 * v14);
        v32 = v22[2];
        v33 = v22[3];
        v34 = v28 + (v32 * v17);
        v35 = v29 + (v32 * *v16);
        v15 = v16[2];
        v17 = v16[3];
        v22 += 4;
        v16 += 4;
        v21 = v34 + (v33 * v27);
        v20 = v35 + (v33 * v14);
        v19 = (v30 + (v32 * v14)) + (v33 * v15);
        v18 = (v31 + (v32 * v15)) + (v33 * v17);
        v12 += 4;
      }

      while (v12 < a4 - 3);
      if ((a4 & 0x7FFFFFFC) == a4)
      {
        if (v9 >= a4)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v36 = v24[4];
        ++v16;
        v27 = v23[4];
        v21 = v21 + (v36 * v14);
        v20 = v20 + (v36 * v15);
        v19 = v19 + (v36 * v17);
        v18 = v18 + (v36 * v27);
        v22 = &a1[4 * ((a4 - 4) >> 2) + 5];
        if (v9 >= a4)
        {
LABEL_9:
          if (v10 < a4)
          {
            goto LABEL_13;
          }

          goto LABEL_4;
        }
      }

      v37 = *v22++;
      v38 = v37;
      v39 = *v16++;
      v14 = v39;
      v21 = v21 + (v38 * v15);
      v20 = v20 + (v38 * v17);
      v19 = v19 + (v38 * v27);
      v18 = v18 + (v38 * v39);
      if (v10 < a4)
      {
LABEL_13:
        v21 = v21 + (*v22 * v17);
        v20 = v20 + (*v22 * v27);
        v19 = v19 + (*v22 * v14);
        v18 = v18 + (*v22 * *v16);
      }

LABEL_4:
      v11 = a3 + v8;
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v19;
      v11[3] = v18;
      v8 += 4;
      if (v8 >= v7)
      {
        goto LABEL_28;
      }
    }
  }

  if (a4 < 1)
  {
    v44 = a2;
    v45 = a1;
    v46 = a5;
    v47 = a3;
    v48 = a4;
    bzero(a3, 16 * (v6 >> 2) + 16);
    a2 = v44;
    a1 = v45;
    a4 = v48;
    a3 = v47;
    a5 = v46;
    LODWORD(v8) = (v6 & 0xFFFFFFFC) + 4;
    goto LABEL_28;
  }

  if (a4 == 1)
  {
    if (v7 <= 4)
    {
      v40 = 4;
    }

    else
    {
      v40 = (a5 - 3);
    }

    if (v7 > 0x1C)
    {
      v8 = 0;
      v70 = ((4 * v7 - 4) & 0xFFFFFFFFFFFFFFF0) + 16;
      v71 = a3 + v70;
      v72 = a2 + v70;
      v74 = a1 + 1 > a3 && v71 > a1;
      if ((v71 <= a2 || v72 <= a3) && !v74)
      {
        v76 = ((v40 - 1) >> 2) + 1;
        v8 = 4 * (v76 & 0x7FFFFFFFFFFFFFFCLL);
        v77 = v76 & 0x7FFFFFFFFFFFFFFCLL;
        v78 = a3;
        v79 = a2;
        do
        {
          v80 = v79[2];
          v81 = v79[3];
          v82 = *v79;
          v83 = v79[1];
          v79 += 4;
          v84 = vmlaq_n_f32(0, v83, *a1);
          v85 = vmlaq_n_f32(0, v82, *a1);
          v86 = vmlaq_n_f32(0, v81, *a1);
          v78[2] = vmlaq_n_f32(0, v80, *a1);
          v78[3] = v86;
          *v78 = v85;
          v78[1] = v84;
          v78 += 4;
          v77 -= 4;
        }

        while (v77);
        if (v76 == (v76 & 0x7FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v41 = (a3 + 4 * v8);
    v42 = (a2 + 4 * v8);
    do
    {
      v43 = *v42++;
      *v41++ = vmlaq_n_f32(0, v43, *a1);
      v8 += 4;
    }

    while (v8 < v7);
    goto LABEL_28;
  }

  v8 = 0;
  v66 = 4;
  v67 = a3;
  do
  {
    v68 = *(a2 + v66);
    a6.n128_u32[0] = a2->u32[v8];
    a6 = vmlaq_n_f32(vmlaq_n_f32(0, vextq_s8(vextq_s8(a6, a6, 4uLL), v68, 0xCuLL), *a1), v68, a1[1]);
    if (a4 == 3)
    {
      v69 = vextq_s8(v68, a6, 4uLL);
      v69.i32[3] = a2[1].i32[v8 + 1];
      a6 = vmlaq_n_f32(a6, v69, a1[2]);
    }

    *v67++ = a6;
    v8 += 4;
    v66 += 16;
  }

  while (v8 < v7);
LABEL_28:
  if (v8 < a5)
  {
    v49 = v8;
    if (a4 >= 1)
    {
      v50 = (a2 + 4 * v8);
      for (i = v50 + 1; ; i = (i + 4))
      {
        if (a4 >= 8)
        {
          v53 = 0.0;
          v54 = a4 & 0x7FFFFFF8;
          v55 = i;
          v56 = (a1 + 4);
          do
          {
            v57 = vmulq_f32(v56[-1], v55[-1]);
            v58 = vmulq_f32(*v56, *v55);
            v53 = (((((((v53 + v57.f32[0]) + v57.f32[1]) + v57.f32[2]) + v57.f32[3]) + v58.f32[0]) + v58.f32[1]) + v58.f32[2]) + v58.f32[3];
            v56 += 2;
            v55 += 2;
            v54 -= 8;
          }

          while (v54);
          v52 = a4 & 0x7FFFFFF8;
          if (v52 == a4)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v52 = 0;
          v53 = 0.0;
        }

        v59 = a4 - v52;
        v60 = v52;
        v61 = &v50->f32[v52];
        v62 = &a1[v60];
        do
        {
          v63 = *v62++;
          v64 = v63;
          v65 = *v61++;
          v53 = v53 + (v64 * v65);
          --v59;
        }

        while (v59);
LABEL_31:
        a3->n128_f32[v49++] = v53;
        v50 = (v50 + 4);
        if (v49 >= a5)
        {
          return;
        }
      }
    }

    bzero(a3 + 4 * v8, 4 * (~v8 + a5) + 4);
  }
}