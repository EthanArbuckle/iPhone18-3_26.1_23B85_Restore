uint64_t opus_decode(int *a1, char *a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return opus_decode_native(a1, a2, a3, a4, a5, a6, 0, 0, 0);
  }
}

uint64_t opus_decoder_ctl(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  v10 = *a1;
  v11 = a1[1];
  result = 4294967291;
  if (a2 <= 4032)
  {
    if (a2 <= 4028)
    {
      if (a2 != 4009)
      {
        if (a2 == 4028)
        {
          *(a1 + 15) = 0u;
          *(a1 + 11) = 0u;
          opus_custom_decoder_ctl((a1 + v10), 4028, a3, a4, a5, a6, a7, a8, v16);
          silk_InitDecoder(a1 + v11);
          result = 0;
          v13 = a1[3];
          a1[11] = a1[2];
          a1[15] = v13 / 400;
        }

        return result;
      }

      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[12];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 == 4029)
    {
      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[3];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4031)
    {
      return result;
    }

    v14 = a9;
    if (!a9)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v15 = a1[18];
LABEL_28:
    *v14 = v15;
    return result;
  }

  if (a2 > 4038)
  {
    if (a2 == 4039)
    {
      v14 = a9;
      if (a9)
      {
        result = 0;
        v15 = a1[17];
        goto LABEL_28;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 != 4045)
    {
      return result;
    }

    v14 = a9;
    if (!a9)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    v15 = a1[10];
    goto LABEL_28;
  }

  if (a2 != 4033)
  {
    if (a2 != 4034)
    {
      return result;
    }

    if (a9 == a9)
    {
      result = 0;
      a1[10] = a9;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (!a9)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1[14] == 1002)
  {
    opus_custom_decoder_ctl((a1 + v10), 4033, a3, a4, a5, a6, a7, a8, a9);
    return 0;
  }

  else
  {
    result = 0;
    *a9 = a1[9];
  }

  return result;
}

uint64_t smooth_fade(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, __int16 *a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = 0;
    do
    {
      if (a4 >= 1)
      {
        v8 = 0;
        v9 = a4;
        v10 = a6;
        do
        {
          v11 = *v10 * *v10;
          *(a3 + v8) = ((v11 >> 15) * *(a2 + v8) + (((2 * v11) & 0xFFFF0000 ^ 0x7FFF0000) >> 16) * *(result + v8)) >> 15;
          v8 += 2 * a5;
          v10 += 48000 / a7;
          --v9;
        }

        while (v9);
      }

      ++v7;
      a3 += 2;
      result += 2;
      a2 += 2;
    }

    while (v7 != a5);
  }

  return result;
}

uint64_t opus_multistream_decoder_get_size(int a1, unsigned int a2)
{
  result = 0;
  if (a1 >= 1)
  {
    v5 = a1 - a2;
    if (a1 >= a2)
    {
      size = opus_decoder_get_size(2);
      return ((opus_decoder_get_size(1) + 7) & 0xFFFFFFF8) * v5 + ((size + 7) & 0xFFFFFFF8) * a2 + 272;
    }
  }

  return result;
}

uint64_t opus_multistream_decoder_init(unsigned int *a1, int a2, unsigned int a3, int a4, int a5, char *a6)
{
  if (a3 - 256 < 0xFFFFFF01 || a5 > a4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if ((a5 & 0x80000000) == 0 && a4 >= 1 && a5 + a4 <= 255)
  {
    *a1 = a3;
    a1[1] = a4;
    v10 = a1 + 3;
    v11 = a3;
    a1[2] = a5;
    do
    {
      v12 = *a6++;
      *v10++ = v12;
      --v11;
    }

    while (v11);
    if (validate_layout(a1))
    {
      v13 = a1 + 68;
      size = opus_decoder_get_size(2);
      v15 = opus_decoder_get_size(1);
      if (a1[2] < 1)
      {
        v16 = 0;
LABEL_19:
        if (v16 >= a1[1])
        {
          return 0;
        }

        else
        {
          v18 = ((v15 + 7) & 0xFFFFFFF8);
          do
          {
            result = opus_decoder_init(v13, a2, 1u);
            if (result)
            {
              break;
            }

            v13 = (v13 + v18);
            ++v16;
          }

          while (v16 < a1[1]);
        }
      }

      else
      {
        v16 = 0;
        v17 = ((size + 7) & 0xFFFFFFF8);
        while (1)
        {
          result = opus_decoder_init(v13, a2, 2u);
          if (result)
          {
            break;
          }

          v13 = (v13 + v17);
          if (++v16 >= a1[2])
          {
            goto LABEL_19;
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

uint64_t opus_multistream_decoder_create(void *a1, int a2, unsigned int a3, int a4, signed int a5, char *a6, int *a7)
{
  v8 = a3 - 256 >= 0xFFFFFF01 && a5 <= a4;
  if (!v8 || a5 < 0 || a4 < 1 || a5 + a4 >= 256)
  {
    if (!a7)
    {
      return 0;
    }

    v9 = 0;
    v10 = -1;
    goto LABEL_7;
  }

  size = opus_multistream_decoder_get_size(a4, a5);
  v18 = heap_Alloc(a1, size);
  if (!v18)
  {
    if (!a7)
    {
      return 0;
    }

    v9 = 0;
    v10 = -7;
LABEL_7:
    *a7 = v10;
    return v9;
  }

  v9 = v18;
  v19 = opus_multistream_decoder_init(v18, a2, a3, a4, a5, a6);
  if (a7)
  {
    *a7 = v19;
  }

  if (v19)
  {
    heap_Free(a1, v9);
    return 0;
  }

  return v9;
}

uint64_t opus_multistream_decode_native(int *a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a7;
  LODWORD(v8) = a6;
  v11 = a3;
  v44 = a2;
  v49 = *MEMORY[0x277D85DE8];
  v45 = 0;
  opus_multistream_decoder_ctl(a1, 4029, a3, a4, a5, a6, a7, a8, v38);
  if (v8 <= 0)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = 4 * v8;
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v14, v13);
  size = opus_decoder_get_size(2);
  v41 = opus_decoder_get_size(1);
  if (v11 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  HIDWORD(v39) = v11;
  if (!v11)
  {
    goto LABEL_21;
  }

  v15 = a1[1];
  if (2 * v15 - 1 > v11)
  {
    return 4294967292;
  }

  if (v15 > 0)
  {
    v17 = v11;
    v18 = 0;
    v19 = 0;
    v43 = v45;
    v47 = 0;
    v20 = v44;
    v46 = 0;
    while (v17 >= 1)
    {
      result = opus_packet_parse_impl(v20, v17, --v15 != 0, &v47, 0, v48, 0, &v46);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = opus_packet_get_nb_samples(v20, v46, v43);
      if (v18)
      {
        if (v19 != result)
        {
          break;
        }
      }

      v20 += v46;
      v17 -= v46;
      --v18;
      v19 = result;
      if (!v15)
      {
        v11 = HIDWORD(v39);
        if ((result & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        return result;
      }
    }

    return 4294967292;
  }

  LODWORD(result) = 0;
LABEL_19:
  if (result > v8)
  {
    return 4294967294;
  }

LABEL_21:
  v21 = a1[1];
  if (v21 < 1)
  {
LABEL_38:
    v36 = *a1;
    if (*a1 >= 1)
    {
      v37 = 0;
      do
      {
        if (*(a1 + v37 + 12) == 255)
        {
          a5(a4);
          v36 = *a1;
        }

        ++v37;
      }

      while (v37 < v36);
    }
  }

  else
  {
    v22 = 0;
    v23 = a1 + 68;
    v24 = v11;
    while (1)
    {
      v25 = v22 >= a1[2] ? v41 : size;
      if (v11 && v24 < 1)
      {
        return 4294967293;
      }

      *v48 = 0;
      v8 = opus_decode_native(v23, v44, v24, v14, v8, v40, v22 != v21 - 1, v48, 0);
      if (v8 < 1)
      {
        return v8;
      }

      v43 = v25;
      v26 = *v48;
      v27 = a1;
      v28 = v22;
      v29 = -1;
      if (v22 >= a1[2])
      {
        while (1)
        {
          mono_channel = get_mono_channel(v27, v28, v29);
          if (mono_channel == -1)
          {
            break;
          }

          (a5)(a4, *a1, mono_channel, v14, 1, v8);
          v27 = a1;
          v28 = v22;
          v29 = mono_channel;
        }
      }

      else
      {
        while (1)
        {
          left_channel = get_left_channel(v27, v28, v29);
          if (left_channel == -1)
          {
            break;
          }

          (a5)(a4, *a1, left_channel, v14, 2, v8);
          v27 = a1;
          v28 = v22;
          v29 = left_channel;
        }

        v32 = a1;
        v33 = v22;
        for (i = -1; ; i = right_channel)
        {
          right_channel = get_right_channel(v32, v33, i);
          if (right_channel == -1)
          {
            break;
          }

          (a5)(a4, *a1, right_channel, v14 + 2, 2, v8);
          v32 = a1;
          v33 = v22;
        }
      }

      v23 = (v23 + ((v43 + 7) & 0xFFFFFFF8));
      v44 += v26;
      v24 -= v26;
      ++v22;
      v21 = a1[1];
      v11 = HIDWORD(v39);
      if (v22 >= v21)
      {
        goto LABEL_38;
      }
    }
  }

  return v8;
}

uint64_t opus_copy_channel_out_short(uint64_t result, int a2, int a3, _WORD *a4, int a5, int a6)
{
  if (a4)
  {
    if (a6 >= 1)
    {
      v6 = a6;
      v7 = (result + 2 * a3);
      do
      {
        *v7 = *a4;
        v7 += a2;
        a4 += a5;
        --v6;
      }

      while (v6);
    }
  }

  else if (a6 >= 1)
  {
    v8 = (a6 + 7) & 0xFFFFFFF8;
    v9 = vdupq_n_s64(a6 - 1);
    v10 = xmmword_26ECDB2A0;
    v11 = xmmword_26ECDB2B0;
    v12 = (result + 2 * a3);
    v13 = xmmword_26ECCE810;
    v14 = xmmword_26ECC7980;
    v15 = vdupq_n_s64(8uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v9, v14));
      if (vuzp1_s8(vuzp1_s16(v16, *v9.i8), *v9.i8).u8[0])
      {
        *v12 = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v9), *&v9).i8[1])
      {
        v12[a2] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v13))), *&v9).i8[2])
      {
        v12[2 * a2] = 0;
        v12[3 * a2] = 0;
      }

      v17 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s8(*&v9, vuzp1_s16(v17, *&v9)).i32[1])
      {
        v12[4 * a2] = 0;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(v17, *&v9)).i8[5])
      {
        v12[5 * a2] = 0;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10)))).i8[6])
      {
        v12[6 * a2] = 0;
        v12[7 * a2] = 0;
      }

      v11 = vaddq_s64(v11, v15);
      v13 = vaddq_s64(v13, v15);
      v14 = vaddq_s64(v14, v15);
      v12 += 8 * a2;
      v10 = vaddq_s64(v10, v15);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t opus_copy_channel_out_float(uint64_t result, int a2, int a3, __int16 *a4, int a5, int a6)
{
  if (a4)
  {
    if (a6 >= 1)
    {
      v6 = a6;
      v7 = (result + 4 * a3);
      do
      {
        *v7 = vcvts_n_f32_s32(*a4, 0xFuLL);
        v7 += a2;
        a4 += a5;
        --v6;
      }

      while (v6);
    }
  }

  else if (a6 >= 1)
  {
    v8 = (a6 + 3) & 0xFFFFFFFC;
    v9 = vdupq_n_s64(a6 - 1);
    v10 = xmmword_26ECCE810;
    v11 = xmmword_26ECC7980;
    v12 = vdupq_n_s64(4uLL);
    v13 = (result + 4 * a3);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *v13 = 0;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        v13[a2] = 0;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        v13[2 * a2] = 0;
        v13[3 * a2] = 0;
      }

      v10 = vaddq_s64(v10, v12);
      v11 = vaddq_s64(v11, v12);
      v13 += 4 * a2;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

uint64_t opus_multistream_decoder_ctl(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = &a9;
  size = opus_decoder_get_size(2);
  v18 = opus_decoder_get_size(1);
  v19 = a1 + 68;
  result = 4294967291;
  if (a2 <= 4033)
  {
    if (a2 <= 4028)
    {
      if (a2 != 4009)
      {
        if (a2 != 4028)
        {
          return result;
        }

        if (a1[1] >= 1)
        {
          v21 = 0;
          while (1)
          {
            v22 = a1[2];
            result = opus_decoder_ctl(v19, 4028, v12, v13, v14, v15, v16, v17, v41);
            if (result)
            {
              break;
            }

            if (v21 >= v22)
            {
              v23 = v18;
            }

            else
            {
              v23 = size;
            }

            v19 = (v19 + ((v23 + 7) & 0xFFFFFFF8));
            if (++v21 >= a1[1])
            {
              return 0;
            }
          }

          return result;
        }

        return 0;
      }

LABEL_33:
      v31 = v43++;
      return opus_decoder_ctl(a1 + 68, a2, v12, v13, v14, v15, v16, v17, *v31);
    }

    if (a2 == 4029)
    {
      goto LABEL_33;
    }

    if (a2 != 4031)
    {
      return result;
    }

    v24 = v43++;
    v25 = *v24;
    v42 = 0;
    if (v25)
    {
      *v25 = 0;
      if (a1[1] < 1)
      {
        return 0;
      }

      v26 = 0;
      while (1)
      {
        v27 = a1[2];
        result = opus_decoder_ctl(v19, 4031, v12, v13, v14, v15, v16, v17, &v42);
        if (result)
        {
          break;
        }

        if (v26 >= v27)
        {
          v28 = v18;
        }

        else
        {
          v28 = size;
        }

        v19 = (v19 + ((v28 + 7) & 0xFFFFFFF8));
        *v25 ^= v42;
        if (++v26 >= a1[1])
        {
          return 0;
        }
      }

      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 > 4044)
  {
    if (a2 == 4045)
    {
      goto LABEL_33;
    }

    if (a2 != 5122)
    {
      return result;
    }

    v29 = v43++;
    v30 = *v29;
    if (v30 < 0 || v30 >= a1[1])
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }

    v37 = v43++;
    v38 = *v37;
    if (v38)
    {
      if (v30 >= 1)
      {
        for (i = 0; i != v30; ++i)
        {
          if (i >= a1[2])
          {
            v40 = v18;
          }

          else
          {
            v40 = size;
          }

          v19 = (v19 + ((v40 + 7) & 0xFFFFFFF8));
        }
      }

      *v38 = v19;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 != 4034)
  {
    if (a2 != 4039)
    {
      return result;
    }

    goto LABEL_33;
  }

  v32 = v43++;
  if (a1[1] < 1)
  {
    return 0;
  }

  v33 = 0;
  v34 = *v32;
  while (1)
  {
    v35 = a1[2];
    result = opus_decoder_ctl(v19, 4034, v12, v13, v14, v15, v16, v17, v34);
    if (result)
    {
      break;
    }

    if (v33 >= v35)
    {
      v36 = v18;
    }

    else
    {
      v36 = size;
    }

    v19 = (v19 + ((v36 + 7) & 0xFFFFFFF8));
    if (++v33 >= a1[1])
    {
      return 0;
    }
  }

  return result;
}

uint64_t opus_repacketizer_cat_impl(char *a1, char *a2, int a3, int a4)
{
  if (a3 < 1)
  {
    return 4294967292;
  }

  v15 = v4;
  v16 = v5;
  if (*(a1 + 1))
  {
    if ((*a2 ^ *a1) > 3)
    {
      return 4294967292;
    }
  }

  else
  {
    *a1 = *a2;
    *(a1 + 122) = opus_packet_get_samples_per_frame(a2, 8000);
  }

  nb_frames = opus_packet_get_nb_frames(a2, a3);
  if (nb_frames < 1)
  {
    return 4294967292;
  }

  v12 = nb_frames;
  v13 = *(a1 + 1);
  if ((v13 + nb_frames) * *(a1 + 122) > 960)
  {
    return 4294967292;
  }

  v14 = 0;
  result = opus_packet_parse_impl(a2, a3, a4, &v14, &a1[8 * v13 + 8], &a1[2 * v13 + 392], 0, 0);
  if (result >= 1)
  {
    result = 0;
    *(a1 + 1) += v12;
  }

  return result;
}

uint64_t opus_repacketizer_out_range_impl(uint64_t a1, unsigned int a2, int a3, _BYTE *a4, uint64_t a5, int a6, int a7)
{
  v7 = 0xFFFFFFFFLL;
  if ((a2 & 0x80000000) != 0)
  {
    return v7;
  }

  v9 = a3 - a2;
  if (a3 <= a2 || *(a1 + 4) < a3)
  {
    return v7;
  }

  v11 = a7;
  v14 = a4;
  v15 = (a1 + 2 * a2 + 392);
  if (a6)
  {
    if (v15[v9 - 1] <= 251)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v9 == 2)
  {
    v17 = *(a1 + 2 * a2 + 394);
    v18 = *v15;
    if (v17 != v18)
    {
      v21 = v7 + v17 + v18;
      if (v18 > 251)
      {
        ++v21;
      }

      v7 = (v21 + 2);
      if (v7 > a5)
      {
        return 4294967294;
      }

      *a4 = *a1 & 0xFC | 2;
      v19 = &a4[encode_size(*v15, a4 + 1) + 1];
      if (!v11)
      {
        goto LABEL_63;
      }

LABEL_20:
      if (v7 < a5)
      {
LABEL_21:
        if (a6)
        {
          if (v15[v9 - 1] <= 251)
          {
            v20 = 3;
          }

          else
          {
            v20 = 4;
          }
        }

        else
        {
          v20 = 2;
        }

        v22 = *v15;
        if (v9 >= 2)
        {
          if (v15[1] != v22)
          {
            v23 = 0;
LABEL_40:
            v29 = 2 * a2 + 392;
            v30 = (v9 - 1);
            do
            {
              v31 = *(a1 + v29);
              if (v31 <= 251)
              {
                v32 = 1;
              }

              else
              {
                v32 = 2;
              }

              v20 += v31 + v32;
              v29 += 2;
              --v30;
            }

            while (v30);
            v7 = (v20 + v15[v9 - 1]);
            if (v7 <= a5)
            {
              *v14 = *a1 | 3;
              v24 = v9 | 0x80;
              v14[1] = v9 | 0x80;
LABEL_48:
              v19 = v14 + 2;
              v33 = a5 - v7;
              v47 = v11;
              if (v11 && a5 != v7)
              {
                v14[1] = v24 | 0x40;
                v34 = (v33 - 1) / 255;
                if (v33 >= 256)
                {
                  if (v34 <= 1)
                  {
                    v35 = 1;
                  }

                  else
                  {
                    v35 = v34;
                  }

                  v45 = v23;
                  v36 = v33;
                  memset(v14 + 2, 255, v35);
                  LOBYTE(v33) = v36;
                  v23 = v45;
                  v19 = &v14[v35 + 2];
                }

                *v19++ = v34 + v33 - 1;
                v7 = a5;
                v11 = v47;
              }

              v37 = v9 < 2 || v23;
              if ((v37 & 1) == 0)
              {
                v46 = v14;
                v38 = (v9 - 1);
                v39 = v15;
                do
                {
                  v40 = *v39++;
                  v19 += encode_size(v40, v19);
                  --v38;
                }

                while (v38);
                v14 = v46;
                v11 = v47;
              }

              goto LABEL_63;
            }

            return 4294967294;
          }

          v25 = (a1 + 2 * a2 + 396);
          v26 = v9 - 2;
          v27 = 1;
          while (v26)
          {
            v28 = *v25++;
            --v26;
            ++v27;
            if (v28 != v22)
            {
              v23 = v27 >= v9;
              goto LABEL_40;
            }
          }
        }

        v7 = (v20 + v9 * v22);
        if (v7 <= a5)
        {
          *v14 = *a1 | 3;
          v14[1] = v9;
          v23 = 1;
          v24 = v9;
          goto LABEL_48;
        }

        return 4294967294;
      }

      goto LABEL_63;
    }

    v7 = (v7 + 2 * v18 + 1);
    if (v7 > a5)
    {
      return 4294967294;
    }

    v16 = *a1 & 0xFC | 1;
LABEL_16:
    *a4 = v16;
    v19 = a4 + 1;
    if (!a7)
    {
      goto LABEL_63;
    }

    goto LABEL_20;
  }

  if (v9 == 1)
  {
    v7 = (v7 + *v15 + 1);
    if (v7 > a5)
    {
      return 4294967294;
    }

    v16 = *a1 & 0xFC;
    goto LABEL_16;
  }

  v19 = a4;
  if (v9 > 2)
  {
    goto LABEL_21;
  }

  if (a7)
  {
    goto LABEL_20;
  }

LABEL_63:
  if (a6)
  {
    v19 += encode_size(v15[v9 - 1], v19);
  }

  if (v9 >= 1)
  {
    v41 = (a1 + 8 * a2 + 8);
    do
    {
      v42 = *v41++;
      memmove(v19, v42, *v15);
      v43 = *v15++;
      v19 += v43;
      --v9;
    }

    while (v9);
  }

  if (v11 && v19 - v14 < a5)
  {
    bzero(&v14[v19 - v14], (v14 + a5 + ~v19) + 1);
  }

  return v7;
}

uint64_t opus_packet_pad(char *__src, size_t __len, uint64_t a3)
{
  if (__len < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v3;
  v13 = v4;
  v6 = __len;
  if (__len == a3)
  {
    return 0;
  }

  if (__len > a3)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = &__src[a3 - __len];
  memset(v11, 0, sizeof(v11));
  memmove(v9, __src, __len);
  opus_repacketizer_cat_impl(v11, v9, v6, 0);
  v10 = opus_repacketizer_out_range_impl(v11, 0, SDWORD1(v11[0]), __src, a3, 0, 1);
  return v10 & (v10 >> 31);
}

uint64_t opus_packet_unpad(char *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v2;
  v9 = v3;
  memset(v7, 0, sizeof(v7));
  result = opus_repacketizer_cat_impl(v7, a1, a2, 0);
  if ((result & 0x80000000) == 0)
  {
    return opus_repacketizer_out_range_impl(v7, 0, SDWORD1(v7[0]), a1, a2, 0, 0);
  }

  return result;
}

uint64_t opus_multistream_packet_pad(char *__src, size_t __len, int a3, int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (__len < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = __len;
  v5 = a3 - __len;
  if (a3 == __len)
  {
    return 0;
  }

  if (a3 < __len)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  v9 = 0;
  if (a4 < 2)
  {
    return opus_packet_pad(__src, v4, (v5 + v4));
  }

  v8 = a4 - 1;
  while (v4 >= 1)
  {
    result = opus_packet_parse_impl(__src, v4, 1, &v10, 0, v11, 0, &v9);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    __src += v9;
    v4 = (v4 - v9);
    if (!--v8)
    {
      return opus_packet_pad(__src, v4, (v5 + v4));
    }
  }

  return 4294967292;
}

uint64_t opus_multistream_packet_unpad(_BYTE *a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a3;
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a2;
  v5 = a1;
  LODWORD(v6) = 0;
  v12 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v7 = a1;
  while (v4 >= 1)
  {
    DWORD1(v10[0]) = 0;
    v8 = opus_packet_parse_impl(v7, v4, v3 != 1, &v12, 0, v13, 0, &v11);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = opus_repacketizer_cat_impl(v10, v7, v11, v3 != 1);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = opus_repacketizer_out_range_impl(v10, 0, SDWORD1(v10[0]), v5, v4, v3 != 1, 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v6 = (v8 + v6);
    v5 += v8;
    v7 += v11;
    v4 = (v4 - v11);
    if (!--v3)
    {
      return v6;
    }
  }

  return 4294967292;
}

uint64_t encode_size(int a1, _BYTE *a2)
{
  if (a1 >= 252)
  {
    a2[1] = (a1 - (a1 | 0xFCu)) >> 2;
    v2 = 2;
    LOBYTE(a1) = a1 | 0xFC;
  }

  else
  {
    v2 = 1;
  }

  *a2 = a1;
  return v2;
}

uint64_t opus_packet_parse_impl(char *a1, int a2, int a3, _BYTE *a4, char **a5, __int16 *a6, _DWORD *a7, _DWORD *a8)
{
  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a6;
  samples_per_frame = opus_packet_get_samples_per_frame(a1, 48000);
  v18 = a1 + 1;
  v17 = *a1;
  v19 = a2 - 1;
  v20 = *a1 & 3;
  if (v20 <= 1)
  {
    if ((*a1 & 3) == 0)
    {
      v21 = 0;
      v22 = 1;
      v23 = a2 - 1;
      goto LABEL_5;
    }

    if (a3)
    {
      v20 = 0;
      v22 = 2;
      v21 = 1;
      v23 = a2 - 1;
LABEL_13:
      if (v23 < 1)
      {
        goto LABEL_32;
      }

      v26 = *v18;
      if (v26 < 0xFC)
      {
        v27 = 1;
        goto LABEL_42;
      }

      if (v23 == 1)
      {
LABEL_32:
        v27 = -1;
        LOWORD(v26) = -1;
      }

      else
      {
        LOWORD(v26) = v26 + 4 * v18[1];
        v27 = 2;
      }

LABEL_42:
      v10[v22 - 1] = v26;
      v35 = (v22 - 1);
      v36 = v10[v35];
      result = 4294967292;
      if (v36 < 0)
      {
        return result;
      }

      v37 = v23 - v27;
      if (v37 < v36)
      {
        return result;
      }

      v18 += v27;
      if (v21)
      {
        if (v22 * v36 > v37)
        {
          return result;
        }

        if (v22 >= 2)
        {
          v38 = (v35 + 7) & 0x1FFFFFFF8;
          v39 = vdupq_n_s64(v35 - 1);
          v40 = xmmword_26ECDB2A0;
          v41 = xmmword_26ECDB2B0;
          v42 = xmmword_26ECCE810;
          v43 = xmmword_26ECC7980;
          v44 = v10 + 4;
          v45 = vdupq_n_s64(8uLL);
          do
          {
            v46 = vmovn_s64(vcgeq_u64(v39, v43));
            if (vuzp1_s8(vuzp1_s16(v46, *v39.i8), *v39.i8).u8[0])
            {
              *(v44 - 4) = v36;
            }

            if (vuzp1_s8(vuzp1_s16(v46, *&v39), *&v39).i8[1])
            {
              *(v44 - 3) = v36;
            }

            if (vuzp1_s8(vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v42))), *&v39).i8[2])
            {
              *(v44 - 2) = v36;
              *(v44 - 1) = v36;
            }

            v47 = vmovn_s64(vcgeq_u64(v39, v41));
            if (vuzp1_s8(*&v39, vuzp1_s16(v47, *&v39)).i32[1])
            {
              *v44 = v36;
            }

            if (vuzp1_s8(*&v39, vuzp1_s16(v47, *&v39)).i8[5])
            {
              v44[1] = v36;
            }

            if (vuzp1_s8(*&v39, vuzp1_s16(*&v39, vmovn_s64(vcgeq_u64(v39, *&v40)))).i8[6])
            {
              v44[2] = v36;
              v44[3] = v36;
            }

            v41 = vaddq_s64(v41, v45);
            v42 = vaddq_s64(v42, v45);
            v43 = vaddq_s64(v43, v45);
            v44 += 8;
            v40 = vaddq_s64(v40, v45);
            v38 -= 8;
          }

          while (v38);
        }
      }

      else if (v27 + v36 > v19)
      {
        return result;
      }

      goto LABEL_63;
    }

    if ((v19 & 1) == 0)
    {
      v20 = 0;
      v24 = v19 >> 1;
      *v10 = v19 >> 1;
      v22 = 2;
      goto LABEL_35;
    }

    return 4294967292;
  }

  if (v20 == 2)
  {
    if (a2 < 2)
    {
LABEL_10:
      *v10 = -1;
      return 4294967292;
    }

    v33 = *v18;
    if (v33 >= 0xFC)
    {
      if (a2 == 2)
      {
        goto LABEL_10;
      }

      v33 += 4 * a1[2];
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    *v10 = v33;
    v19 -= v34;
    v23 = v19 - v33;
    if (v19 < v33)
    {
      return 4294967292;
    }

    v21 = 0;
    v20 = 0;
    v22 = 2;
    v18 += v34;
LABEL_5:
    v24 = v23;
    v23 = v19;
    v19 = v24;
    if (!a3)
    {
      goto LABEL_35;
    }

    goto LABEL_13;
  }

  v23 = a2 - 2;
  if (a2 < 2)
  {
    return 4294967292;
  }

  v28 = samples_per_frame;
  v29 = *v18;
  result = 4294967292;
  v22 = *v18 & 0x3F;
  if ((*v18 & 0x3F) == 0 || v22 * v28 > 5760)
  {
    return result;
  }

  v18 = a1 + 2;
  v20 = 0;
  if ((v29 & 0x40) != 0)
  {
    while (v23 >= 1)
    {
      v31 = *v18++;
      v30 = v31;
      if (v31 >= 0xFE)
      {
        v32 = 254;
      }

      else
      {
        v32 = v30;
      }

      v23 += ~v32;
      v20 += v32;
      if (v30 != 255)
      {
        if (v23 < 0)
        {
          return 4294967292;
        }

        goto LABEL_26;
      }
    }

    return 4294967292;
  }

LABEL_26:
  if (v29 < 0)
  {
    if (v22 < 2)
    {
      v21 = 0;
      v19 = v23;
    }

    else
    {
      v51 = (v22 - 1);
      v52 = v10;
      v19 = v23;
      do
      {
        if (!v19)
        {
LABEL_106:
          *v52 = -1;
          return 4294967292;
        }

        v53 = *v18;
        if (v53 >= 0xFC)
        {
          if (v19 == 1)
          {
            goto LABEL_106;
          }

          v53 += 4 * v18[1];
          v54 = 2;
        }

        else
        {
          v54 = 1;
        }

        *v52 = v53;
        v19 -= v54;
        if (v19 < v53)
        {
          return 4294967292;
        }

        v18 += v54;
        v23 = v23 - v54 - v53;
        ++v52;
        --v51;
      }

      while (v51);
      if (v23 < 0)
      {
        return 4294967292;
      }

      v21 = 0;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    v21 = 1;
    goto LABEL_13;
  }

  v24 = v23 / v22;
  if (v23 / v22 * v22 != v23)
  {
    return 4294967292;
  }

  if (v22 >= 2)
  {
    v55 = (v22 - 1);
    v56 = (v55 + 7) & 0x1FFFFFFF8;
    v57 = vdupq_n_s64(v55 - 1);
    v58 = xmmword_26ECDB2A0;
    v59 = xmmword_26ECDB2B0;
    v60 = xmmword_26ECCE810;
    v61 = xmmword_26ECC7980;
    v62 = v10 + 4;
    v63 = vdupq_n_s64(8uLL);
    do
    {
      v64 = vmovn_s64(vcgeq_u64(v57, v61));
      if (vuzp1_s8(vuzp1_s16(v64, *v57.i8), *v57.i8).u8[0])
      {
        *(v62 - 4) = v24;
      }

      if (vuzp1_s8(vuzp1_s16(v64, *&v57), *&v57).i8[1])
      {
        *(v62 - 3) = v24;
      }

      if (vuzp1_s8(vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v60))), *&v57).i8[2])
      {
        *(v62 - 2) = v24;
        *(v62 - 1) = v24;
      }

      v65 = vmovn_s64(vcgeq_u64(v57, v59));
      if (vuzp1_s8(*&v57, vuzp1_s16(v65, *&v57)).i32[1])
      {
        *v62 = v24;
      }

      if (vuzp1_s8(*&v57, vuzp1_s16(v65, *&v57)).i8[5])
      {
        v62[1] = v24;
      }

      if (vuzp1_s8(*&v57, vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v58)))).i8[6])
      {
        v62[2] = v24;
        v62[3] = v24;
      }

      v59 = vaddq_s64(v59, v63);
      v60 = vaddq_s64(v60, v63);
      v61 = vaddq_s64(v61, v63);
      v62 += 8;
      v21 = 1;
      v58 = vaddq_s64(v58, v63);
      v56 -= 8;
    }

    while (v56);
    v19 = v23;
    v23 /= v22;
    goto LABEL_5;
  }

LABEL_35:
  if (v24 > 1275)
  {
    return 4294967292;
  }

  v10[v22 - 1] = v24;
LABEL_63:
  if (a7)
  {
    *a7 = v18 - a1;
  }

  if (v22)
  {
    v48 = v22;
    v49 = a5;
    do
    {
      if (a5)
      {
        *v49 = v18;
      }

      v50 = *v10++;
      v18 += v50;
      ++v49;
      --v48;
    }

    while (v48);
  }

  if (a8)
  {
    *a8 = v20 + v18 - a1;
  }

  if (a4)
  {
    *a4 = v17;
  }

  return v22;
}

unint64_t opus_packet_get_samples_per_frame(_BYTE *a1, int a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v8 = 1374389535 * (a2 << ((*a1 >> 3) & 3));
    return (v8 >> 39) + (v8 >> 63);
  }

  else
  {
    v3 = 1374389535 * (a2 << ((*a1 >> 3) & 3));
    v4 = (v3 >> 37) + (v3 >> 63);
    if (((v2 >> 3) & 3) == 3)
    {
      v5 = 60 * a2 / 1000;
    }

    else
    {
      v5 = v4;
    }

    v6 = a2 / 50;
    if ((v2 & 8) == 0)
    {
      v6 = a2 / 100;
    }

    if ((~v2 & 0x60) != 0)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t opus_packet_get_bandwidth(char *a1)
{
  v1 = *a1;
  if ((v1 & 0x10) != 0)
  {
    v2 = 1105;
  }

  else
  {
    v2 = 1104;
  }

  if ((~v1 & 0x60) != 0)
  {
    v3 = (v1 >> 5) + 1101;
  }

  else
  {
    v3 = v2;
  }

  v5 = (v1 >> 5) & 3;
  v4 = v5 == 0;
  v6 = v5 + 1102;
  if (v4)
  {
    v6 = 1101;
  }

  if (*a1 < 0)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t opus_packet_get_nb_channels(_BYTE *a1)
{
  if ((*a1 & 4) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t opus_packet_get_nb_frames(_BYTE *a1, int a2)
{
  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a1 & 3) == 0)
  {
    return 1;
  }

  if ((*a1 & 3) != 3)
  {
    return 2;
  }

  if (a2 == 1)
  {
    return 4294967292;
  }

  return a1[1] & 0x3F;
}

uint64_t opus_packet_get_nb_samples(_BYTE *a1, int a2, int a3)
{
  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a1 & 3) != 0)
  {
    if ((*a1 & 3) == 3)
    {
      if (a2 == 1)
      {
        return 4294967292;
      }

      v5 = a1[1] & 0x3F;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = opus_packet_get_samples_per_frame(a1, a3) * v5;
  if ((25 * v6) <= 3 * a3)
  {
    return v6;
  }

  else
  {
    return 4294967292;
  }
}

uint64_t validate_layout(unsigned int *a1)
{
  v1 = a1[2] + a1[1];
  if (v1 > 255)
  {
    return 0;
  }

  v3 = *a1;
  if (v3 >= 1)
  {
    v4 = (a1 + 3);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 != 255 && v1 <= v5)
      {
        break;
      }

      if (!--v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t get_left_channel(int *a1, int a2, int a3)
{
  if (a3 >= 0)
  {
    result = (a3 + 1);
  }

  else
  {
    result = 0;
  }

  v5 = *a1;
  if (result >= *a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1 + result + 12;
  while (1)
  {
    v7 = *v6++;
    if (2 * a2 == v7)
    {
      break;
    }

    result = (result + 1);
    if (v5 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t get_right_channel(int *a1, int a2, int a3)
{
  if (a3 >= 0)
  {
    result = (a3 + 1);
  }

  else
  {
    result = 0;
  }

  v5 = *a1;
  if (result >= *a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1 + result + 12;
  while (1)
  {
    v7 = *v6++;
    if (((2 * a2) | 1) == v7)
    {
      break;
    }

    result = (result + 1);
    if (v5 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t get_mono_channel(int *a1, int a2, int a3)
{
  if (a3 >= 0)
  {
    result = (a3 + 1);
  }

  else
  {
    result = 0;
  }

  v5 = *a1;
  if (result >= *a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1[2] + a2;
  v7 = a1 + result + 12;
  while (1)
  {
    v8 = *v7++;
    if (v6 == v8)
    {
      break;
    }

    result = (result + 1);
    if (v5 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ogg_page_packets(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 26);
  if (!*(*a1 + 26))
  {
    return 0;
  }

  LODWORD(result) = 0;
  v4 = (v1 + 27);
  do
  {
    v5 = *v4++;
    if (v5 == 255)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    --v2;
  }

  while (v2);
  return result;
}

uint64_t ogg_stream_init(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 400) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
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
  *(a1 + 8) = 0x4000;
  *(a1 + 48) = 1024;
  v4 = malloc(0x4000uLL);
  *a1 = v4;
  v5 = malloc(0x1000uLL);
  *(a1 + 32) = v5;
  v6 = malloc(0x2000uLL);
  *(a1 + 40) = v6;
  if (v4 && v5 && v6)
  {
    result = 0;
    *(a1 + 376) = a2;
  }

  else
  {
    ogg_stream_clear(a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ogg_stream_clear(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 400) = 0;
    *(a1 + 368) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
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
  }

  return 0;
}

uint64_t ogg_stream_check(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ogg_stream_destroy(void *a1)
{
  if (a1)
  {
    ogg_stream_clear(a1);
    free(a1);
  }

  return 0;
}

uint64_t ogg_page_checksum_set(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(*result + 22) = 0;
    *(*result + 23) = 0;
    *(*result + 24) = 0;
    *(*result + 25) = 0;
    v2 = *result;
    updated = _os_update_crc(0, *result, *(result + 8));
    result = _os_update_crc(updated, *(v1 + 16), *(v1 + 24));
    *(v2 + 22) = result;
    *(*v1 + 23) = BYTE1(result);
    *(*v1 + 24) = BYTE2(result);
    *(*v1 + 25) = BYTE3(result);
  }

  return result;
}

uint64_t _os_update_crc(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a3 < 8)
  {
    v4 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  do
  {
    v3 = bswap32(*a2);
    result = crc_lookup[((v3 ^ result) >> 16) + 1536] ^ crc_lookup[((v3 ^ result) >> 24) + 1792] ^ crc_lookup[((v3 ^ result) >> 8) + 1280] ^ crc_lookup[(v3 ^ result) + 1024] ^ (crc_lookup[a2[4] + 768] ^ crc_lookup[a2[5] + 512]) ^ crc_lookup[a2[6] + 256] ^ crc_lookup[a2[7]];
    a2 += 8;
    v4 = a3 - 8;
    v5 = a3 > 0xF;
    a3 -= 8;
  }

  while (v5);
  for (; v4; --v4)
  {
LABEL_6:
    v6 = *a2++;
    result = (crc_lookup[v6 ^ BYTE3(result)] ^ (result << 8));
  }

  return result;
}

uint64_t ogg_stream_iovecin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a1;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0;
  }

  LODWORD(v10) = a3;
  if (a3 < 1)
  {
    v11 = 0;
LABEL_12:
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = *(a1 + 16);
      *(a1 + 16) = v18 - v17;
      if (v18 != v17)
      {
        memmove(v6, &v6[v17], v18 - v17);
      }

      *(a1 + 24) = 0;
    }

    if (_os_body_expand(a1, v11) || _os_lacing_expand(a1, v11 / 0xFF + 1))
    {
      return 0xFFFFFFFFLL;
    }

    if (v10 >= 1)
    {
      v10 = v10;
      v19 = *(a1 + 16);
      v20 = (a2 + 8);
      do
      {
        memcpy((*a1 + v19), *(v20 - 1), *v20);
        v19 = *v20 + *(a1 + 16);
        *(a1 + 16) = v19;
        v20 += 2;
        --v10;
      }

      while (v10);
    }

    v21 = *(a1 + 32);
    v22 = *(a1 + 56);
    if (v11 > 0xFE)
    {
      v24 = *(a1 + 40);
      v25 = *(a1 + 400);
      v26 = v11 / 0xFF;
      v27 = *(a1 + 56);
      do
      {
        *(v21 + 4 * v27) = 255;
        *(v24 + 8 * v27++) = v25;
        --v26;
      }

      while (v26);
      v23 = v11 / 0xFF;
    }

    else
    {
      v23 = 0;
      v24 = *(a1 + 40);
    }

    v28 = (v21 + 4 * v22);
    v28[v23] = v11 % 0xFF;
    *(v24 + 8 * v22 + 8 * v23) = a5;
    *v28 |= 0x100u;
    *(a1 + 56) = v22 + v11 / 0xFF + 1;
    ++*(a1 + 392);
    *(a1 + 400) = a5;
    if (a4)
    {
      v14 = 0;
      *(a1 + 368) = 1;
      return v14;
    }

    return 0;
  }

  v11 = 0;
  v12 = a3;
  v13 = (a2 + 8);
  v14 = 0xFFFFFFFFLL;
  while (1)
  {
    v16 = *v13;
    v13 += 2;
    v15 = v16;
    if (v16 < 0 || v11 > (v15 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      return v14;
    }

    v11 += v15;
    if (!--v12)
    {
      goto LABEL_12;
    }
  }
}

uint64_t _os_body_expand(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 - a2 > *(a1 + 16))
  {
    return 0;
  }

  if (v2 <= (a2 ^ 0x7FFFFFFFFFFFFFFFLL) && ((v5 = v2 + a2, v5 >= 0x7FFFFFFFFFFFFBFFLL) ? (v6 = v5) : (v6 = v5 + 1024), (v7 = realloc(*a1, v6)) != 0))
  {
    v8 = v7;
    result = 0;
    *a1 = v8;
    *(a1 + 8) = v6;
  }

  else
  {
    ogg_stream_clear(a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _os_lacing_expand(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 - a2 > *(a1 + 56))
  {
    return 0;
  }

  if (v2 <= (a2 ^ 0x7FFFFFFFFFFFFFFFLL) && ((v5 = v2 + a2, v5 >= 0x7FFFFFFFFFFFFFDFLL) ? (v6 = v5) : (v6 = v5 + 32), (v7 = realloc(*(a1 + 32), 4 * v6)) != 0 && (*(a1 + 32) = v7, (v8 = realloc(*(a1 + 40), 8 * v6)) != 0)))
  {
    v9 = v8;
    result = 0;
    *(a1 + 40) = v9;
    *(a1 + 48) = v6;
  }

  else
  {
    ogg_stream_clear(a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ogg_stream_packetin(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  return ogg_stream_iovecin(a1, v4, 1, a2[3], a2[4]);
}

uint64_t ogg_stream_flush_i(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[7];
  if (v4 >= 255)
  {
    LODWORD(v5) = 255;
  }

  else
  {
    v5 = a1[7];
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v11 = *(a1 + 93);
  if (!v11)
  {
    if (v5 < 1)
    {
      v20 = 0;
    }

    else
    {
      v18 = a1[4];
      v19 = v5 & 0x7FFFFFFF;
      v20 = 1;
      while (1)
      {
        v21 = *v18;
        v18 += 4;
        if (v21 != 0xFF)
        {
          break;
        }

        ++v20;
        if (!--v19)
        {
          v16 = 0;
          goto LABEL_30;
        }
      }
    }

    v16 = 0;
    if (a3)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v5 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    while (v15 <= a4 || v13 <= 3)
    {
      v17 = *(a1[4] + 4 * v12);
      if (v17 == 255)
      {
        v13 = 0;
      }

      else
      {
        v16 = *(a1[5] + 8 * v12);
        v13 = ++v14;
      }

      v15 += v17;
      if ((v5 & 0x7FFFFFFF) == ++v12)
      {
        goto LABEL_28;
      }
    }

    a3 = 1;
    LODWORD(v5) = v12;
LABEL_28:
    if (v5 == 255)
    {
      v20 = 255;
      goto LABEL_31;
    }

LABEL_30:
    v20 = v5;
    if (a3)
    {
      goto LABEL_31;
    }

    return 0;
  }

  v20 = 0;
  v16 = -1;
  if (!a3)
  {
    return 0;
  }

LABEL_31:
  *(a1 + 20) = 1399285583;
  *(a1 + 42) = 0;
  v22 = a1[4];
  if ((*v22 & 0x100) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  if (v11)
  {
    v24 = (*v22 & 0x100) == 0;
  }

  else
  {
    v24 = v23;
  }

  *(a1 + 85) = v24;
  v25 = v20;
  if (*(a1 + 92))
  {
    v26 = v4 == v20;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    *(a1 + 85) = v24 | 4;
  }

  v27 = 0;
  *(a1 + 93) = 1;
  do
  {
    *(a1 + v27 + 86) = v16;
    v16 >>= 8;
    ++v27;
  }

  while (v27 != 8);
  v28 = 0;
  v29 = a1[47];
  do
  {
    *(a1 + v28 + 94) = v29;
    v29 >>= 8;
    ++v28;
  }

  while (v28 != 4);
  v30 = 0;
  v31 = a1[48];
  if (v31 == -1)
  {
    v31 = 0;
  }

  a1[48] = v31 + 1;
  do
  {
    *(a1 + v30 + 98) = v31;
    v31 >>= 8;
    ++v30;
  }

  while (v30 != 4);
  *(a1 + 102) = 0;
  *(a1 + 106) = v20;
  if (v20 < 1)
  {
    v32 = 0;
  }

  else
  {
    LODWORD(v32) = 0;
    v33 = a1 + 107;
    v34 = v20;
    v35 = v22;
    do
    {
      v36 = *v35++;
      *v33++ = v36;
      v32 = v32 + v36;
      --v34;
    }

    while (v34);
  }

  *(a1 + 91) = v25 + 27;
  *a2 = a1 + 10;
  a2[1] = v25 + 27;
  a2[2] = v6 + a1[3];
  a2[3] = v32;
  v37 = v4 - v25;
  a1[7] = v37;
  memmove(v22, &v22[v25], 4 * v37);
  memmove(a1[5], (a1[5] + 8 * v25), 8 * a1[7]);
  a1[3] += v32;
  ogg_page_checksum_set(a2);
  return 1;
}

uint64_t ogg_stream_pageout(uint64_t a1, void *a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v2 = *(a1 + 56);
  if (!*(a1 + 368))
  {
    if (v2 && !*(a1 + 372))
    {
      goto LABEL_5;
    }

LABEL_9:
    v3 = 0;
    return ogg_stream_flush_i(a1, a2, v3, 4096);
  }

  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_5:
  v3 = 1;
  return ogg_stream_flush_i(a1, a2, v3, 4096);
}

uint64_t ogg_stream_pageout_fill(uint64_t a1, void *a2, int a3)
{
  if (a1 && *a1)
  {
    v4 = *(a1 + 56);
    if (*(a1 + 368))
    {
      if (v4)
      {
LABEL_5:
        v5 = 1;
        return ogg_stream_flush_i(a1, a2, v5, a3);
      }
    }

    else if (v4 && !*(a1 + 372))
    {
      goto LABEL_5;
    }

    v5 = 0;
    return ogg_stream_flush_i(a1, a2, v5, a3);
  }

  return 0;
}

uint64_t ogg_stream_eos(uint64_t a1)
{
  if (a1 && *a1)
  {
    return *(a1 + 368);
  }

  else
  {
    return 1;
  }
}

uint64_t ogg_sync_init(_OWORD *a1)
{
  if (a1)
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  return 0;
}

uint64_t ogg_sync_clear(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return 0;
}

uint64_t ogg_sync_destroy(_OWORD *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    *a1 = 0u;
    a1[1] = 0u;
    free(a1);
  }

  return 0;
}

double ogg_sync_buffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x80000000) == 0)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = (*(a1 + 12) - v5);
      *(a1 + 12) = v6;
      if (v6 >= 1)
      {
        memmove(*a1, (*a1 + v5), v6);
        v2 = *(a1 + 8);
      }

      *(a1 + 16) = 0;
    }

    v8 = *(a1 + 12);
    if (v2 - v8 < a2)
    {
      if (2147479551 - v8 >= a2)
      {
        v9 = a2 + v8;
        v10 = v9 + 4096;
        if (*a1)
        {
          v11 = realloc(*a1, v9 + 4096);
          if (v11)
          {
LABEL_10:
            *a1 = v11;
            *(a1 + 8) = v10;
            return result;
          }
        }

        else
        {
          v11 = malloc(v9 + 4096);
          if (v11)
          {
            goto LABEL_10;
          }
        }
      }

      if (*a1)
      {
        free(*a1);
      }

      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

uint64_t ogg_sync_wrote(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 12) + a2;
  if (v4 > v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 12) = v4;
  return result;
}

uint64_t ogg_sync_pageseek(uint64_t *a1, void *a2)
{
  if ((a1[1] & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = *a1 + v5;
  v7 = *(a1 + 3) - v5;
  v8 = *(a1 + 6);
  if (!v8)
  {
    if (v7 < 27)
    {
      return 0;
    }

    if (*v6 != 1399285583)
    {
      goto LABEL_10;
    }

    v8 = *(v6 + 26) + 27;
    if (v7 < v8)
    {
      return 0;
    }

    if (*(v6 + 26))
    {
      v16 = 0;
      v17 = *(a1 + 7);
      do
      {
        v17 += *(v6 + 27 + v16);
        *(a1 + 7) = v17;
        ++v16;
      }

      while (v16 < *(v6 + 26));
    }

    *(a1 + 6) = v8;
  }

  if ((v8 + *(a1 + 7)) > v7)
  {
    return 0;
  }

  v19 = *(v6 + 22);
  *(v6 + 22) = 0;
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  v18[0] = v6;
  v18[1] = v9;
  v18[2] = v6 + v9;
  v18[3] = v10;
  ogg_page_checksum_set(v18);
  if (v19 != *(v6 + 22))
  {
    *(v6 + 22) = v19;
    v4 = *a1;
LABEL_10:
    a1[3] = 0;
    v12 = memchr((v6 + 1), 79, v7 - 1);
    if (!v12)
    {
      v12 = (v4 + *(a1 + 3));
    }

    *(a1 + 4) = v12 - v4;
    return v6 - v12;
  }

  v13 = *(a1 + 6);
  v14 = *(a1 + 7);
  if (a2)
  {
    *a2 = v6;
    a2[1] = v13;
    a2[2] = v6 + v13;
    a2[3] = v14;
  }

  v15 = v14 + v13;
  result = v15;
  a1[2] = (*(a1 + 4) + v15);
  a1[3] = 0;
  return result;
}

uint64_t ogg_sync_pageout(uint64_t a1, void *a2)
{
  if ((*(a1 + 8) & 0x80000000) != 0)
  {
    return 0;
  }

  while (1)
  {
    result = ogg_sync_pageseek(a1, a2);
    if (result > 0)
    {
      break;
    }

    if (!result)
    {
      return result;
    }

    if (!*(a1 + 20))
    {
      *(a1 + 20) = 1;
      return 0xFFFFFFFFLL;
    }
  }

  return 1;
}

uint64_t ogg_stream_pagein(uint64_t a1, void *a2)
{
  v3 = *a2;
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(*a2 + 4);
  v7 = *(*a2 + 5);
  v8 = ogg_page_granulepos(a2);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(v3 + 14);
  v12 = *(v3 + 18);
  v42 = *(v3 + 26);
  v13 = *(a1 + 72);
  v14 = *(a1 + 24);
  if (v14)
  {
    v15 = *(a1 + 16);
    *(a1 + 16) = v15 - v14;
    if (v15 != v14)
    {
      memmove(v10, &v10[v14], v15 - v14);
    }

    *(a1 + 24) = 0;
  }

  if (v13)
  {
    v16 = v13;
    v17 = *(a1 + 56) - v13;
    if (v17)
    {
      memmove(*(a1 + 32), (*(a1 + 32) + 4 * v13), 4 * v17);
      memmove(*(a1 + 40), (*(a1 + 40) + 8 * v13), 8 * (*(a1 + 56) - v13));
      v16 = *(a1 + 56);
    }

    v18 = *(a1 + 64) - v13;
    *(a1 + 56) = v16 - v13;
    *(a1 + 64) = v18;
    *(a1 + 72) = 0;
  }

  v19 = *(a1 + 376) == v11 && v6 == 0;
  if (!v19 || _os_lacing_expand(a1, v42 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v7 & 2;
  v22 = *(a1 + 384);
  if (v22 != v12)
  {
    v24 = *(a1 + 56);
    v23 = *(a1 + 64);
    if (v24 > v23)
    {
      v25 = v23;
      v26 = *(a1 + 16);
      do
      {
        v26 -= *(*(a1 + 32) + 4 * v25++);
      }

      while (v24 > v25);
      *(a1 + 16) = v26;
    }

    *(a1 + 56) = v23;
    if (v22 != -1)
    {
      *(*(a1 + 32) + 4 * v23) = 1024;
      *(a1 + 56) = v23 + 1;
      *(a1 + 64) = v23 + 1;
    }
  }

  if (v7)
  {
    v27 = *(a1 + 56);
    if (v27 < 1 || *(*(a1 + 32) + 4 * v27 - 4) != 0xFF)
    {
      v28 = v42;
      if (v42)
      {
        v29 = (v3 + 27);
        v30 = 1;
        while (1)
        {
          v31 = *v29++;
          v5 += v31;
          v4 -= v31;
          if (v31 != 255)
          {
            break;
          }

          ++v30;
          if (!--v28)
          {
            v21 = 0;
            v30 = v42;
            if (v4)
            {
              goto LABEL_36;
            }

            goto LABEL_38;
          }
        }

        v21 = 0;
        if (v4)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }

      v21 = 0;
    }
  }

  v30 = 0;
  if (v4)
  {
LABEL_36:
    if (_os_body_expand(a1, v4))
    {
      return 0xFFFFFFFFLL;
    }

    memcpy((*a1 + *(a1 + 16)), v5, v4);
    *(a1 + 16) += v4;
  }

LABEL_38:
  if (v30 < v42)
  {
    v32 = v21 == 0;
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v35 = *(a1 + 56);
    v36 = (v3 + v30 + 27);
    v37 = v42 - v30;
    v38 = -1;
    do
    {
      v40 = *v36++;
      v39 = v40;
      *(v33 + 4 * v35) = v40;
      *(v34 + 8 * v35) = -1;
      if (!v32)
      {
        *(v33 + 4 * v35) = v39 | 0x100;
      }

      if (v39 == 255)
      {
        ++v35;
      }

      else
      {
        v38 = v35++;
        *(a1 + 64) = v35;
      }

      *(a1 + 56) = v35;
      v32 = 1;
      --v37;
    }

    while (v37);
    if (v38 != -1)
    {
      *(*(a1 + 40) + 8 * v38) = v9;
    }
  }

  if ((v7 & 4) != 0)
  {
    *(a1 + 368) = 1;
    v41 = *(a1 + 56);
    if (v41 >= 1)
    {
      *(*(a1 + 32) + 4 * v41 - 4) |= 0x200u;
    }
  }

  result = 0;
  *(a1 + 384) = v12 + 1;
  return result;
}

uint64_t ogg_sync_reset(uint64_t a1)
{
  if ((*(a1 + 8) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  return result;
}

uint64_t ogg_stream_reset(uint64_t a1)
{
  if (!a1 || !*a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 364) = 0;
  *(a1 + 368) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = -1;
  return result;
}

uint64_t ogg_stream_reset_serialno(uint64_t a1, int a2)
{
  if (!a1 || !*a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 364) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = -1;
  *(a1 + 368) = 0;
  *(a1 + 376) = a2;
  return result;
}

uint64_t ogg_stream_packetout(void *a1, void *a2)
{
  if (a1 && *a1)
  {
    return _packetout(a1, a2, 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _packetout(void *a1, void *a2, int a3)
{
  v3 = a1[9];
  if (a1[8] <= v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = a1[4];
  v6 = *(v5 + 4 * v3);
  if ((v6 & 0x400) != 0)
  {
    v13 = v3 + 1;
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    if (!a2 && !a3)
    {
      return 1;
    }

    v7 = *(v5 + 4 * v3);
    v8 = *(v5 + 4 * v3) & 0x200;
    if (*(v5 + 4 * v3) == 255)
    {
      v9 = v5 + 4;
      v7 = 255;
      do
      {
        v3 = v4 + 1;
        v10 = *(v9 + 4 * v4);
        v11 = v10;
        if ((v10 & 0x200) != 0)
        {
          v8 = 512;
        }

        v7 += v10;
        v4 = v3;
      }

      while (v11 == 255);
    }

    if (a2)
    {
      a2[2] = v6 & 0x100;
      a2[3] = v8;
      v12 = *a1 + a1[3];
      a2[5] = a1[49];
      a2[4] = *(a1[5] + 8 * v3);
      *a2 = v12;
      a2[1] = v7;
    }

    if (!a3)
    {
      return 1;
    }

    a1[3] += v7;
    v13 = v3 + 1;
    v14 = 1;
  }

  a1[9] = v13;
  ++a1[49];
  return v14;
}

uint64_t ogg_stream_packetpeek(void *a1, void *a2)
{
  if (a1 && *a1)
  {
    return _packetout(a1, a2, 0);
  }

  else
  {
    return 0;
  }
}

double ogg_packet_clear(uint64_t a1)
{
  free(*a1);
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

_BYTE *oggpack_writeinit(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = malloc(0x100uLL);
  *(a1 + 16) = result;
  *(a1 + 24) = result;
  *result = 0;
  *(a1 + 32) = 256;
  return result;
}

_BYTE *oggpackB_writeinit(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = malloc(0x100uLL);
  *(a1 + 16) = result;
  *(a1 + 24) = result;
  *result = 0;
  *(a1 + 32) = 256;
  return result;
}

uint64_t oggpack_writecheck(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t oggpackB_writecheck(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 32))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t oggpack_writetrunc(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    v2 = *(result + 16);
    *(result + 24) = v2 + (a2 >> 3);
    *result = a2 >> 3;
    v3 = mask[a2 & 7];
    *(result + 8) = a2 & 7;
    *(v2 + (a2 >> 3)) &= v3;
  }

  return result;
}

uint64_t oggpackB_writetrunc(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    v2 = *(result + 16);
    *(result + 24) = v2 + (a2 >> 3);
    *(result + 8) = a2 & 7;
    v3 = mask8B[a2 & 7];
    *result = a2 >> 3;
    *(v2 + (a2 >> 3)) &= v3;
  }

  return result;
}

void oggpack_write(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x20)
  {
LABEL_2:
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*a1 >= v7 - 4)
  {
    if (!v8)
    {
      return;
    }

    if (v7 > 0x7FFFFFFFFFFFFEFFLL)
    {
      goto LABEL_2;
    }

    v14 = realloc(*(a1 + 16), v7 + 256);
    if (!v14)
    {
      goto LABEL_2;
    }

    v15 = *(a1 + 32) + 256;
    v8 = &v14[*a1];
    *(a1 + 16) = v14;
    *(a1 + 24) = v8;
    *(a1 + 32) = v15;
  }

  v9 = mask[a3] & a2;
  v10 = *(a1 + 8);
  v11 = v10 + a3;
  *v8 |= v9 << v10;
  if ((v10 + a3) >= 8)
  {
    *(*(a1 + 24) + 1) = v9 >> (8 - *(a1 + 8));
    if (v11 >= 0x10)
    {
      *(*(a1 + 24) + 2) = v9 >> (16 - *(a1 + 8));
      if (v11 >= 0x18)
      {
        *(*(a1 + 24) + 3) = v9 >> (24 - *(a1 + 8));
        if (v11 >= 0x20)
        {
          v12 = *(a1 + 8);
          v13 = v9 >> (32 - v12);
          if (!v12)
          {
            LOBYTE(v13) = 0;
          }

          *(*(a1 + 24) + 4) = v13;
        }
      }
    }
  }

  *a1 += v11 / 8;
  *(a1 + 24) += v11 / 8;
  *(a1 + 8) = v11 & 7;
}

double oggpack_writeclear(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void oggpackB_write(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x20)
  {
LABEL_2:
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*a1 >= v7 - 4)
  {
    if (!v8)
    {
      return;
    }

    if (v7 > 0x7FFFFFFFFFFFFEFFLL)
    {
      goto LABEL_2;
    }

    v14 = realloc(*(a1 + 16), v7 + 256);
    if (!v14)
    {
      goto LABEL_2;
    }

    v15 = *(a1 + 32) + 256;
    v8 = &v14[*a1];
    *(a1 + 16) = v14;
    *(a1 + 24) = v8;
    *(a1 + 32) = v15;
  }

  v9 = (mask[a3] & a2) << (32 - a3);
  v10 = *(a1 + 8);
  v11 = v10 + a3;
  *v8 |= v9 >> (v10 + 24);
  if ((v10 + a3) >= 8)
  {
    *(*(a1 + 24) + 1) = v9 >> (*(a1 + 8) + 16);
    if (v11 >= 0x10)
    {
      *(*(a1 + 24) + 2) = v9 >> (*(a1 + 8) + 8);
      if (v11 >= 0x18)
      {
        *(*(a1 + 24) + 3) = v9 >> *(a1 + 8);
        if (v11 >= 0x20)
        {
          v12 = *(a1 + 8);
          v13 = v9 << (8 - v12);
          if (!v12)
          {
            LOBYTE(v13) = 0;
          }

          *(*(a1 + 24) + 4) = v13;
        }
      }
    }
  }

  *a1 += v11 / 8;
  *(a1 + 24) += v11 / 8;
  *(a1 + 8) = v11 & 7;
}

void oggpack_writealign(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    oggpack_write(a1, 0, 8 - v1);
  }
}

void oggpackB_writealign(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    oggpackB_write(a1, 0, 8 - v1);
  }
}

void oggpack_writecopy_helper(uint64_t a1, unsigned __int8 *__src, uint64_t a3, void (*a4)(void, void, void), int a5)
{
  if (a3 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = a3 + 7;
  }

  v10 = *(a1 + 8);
  v11 = &v10[a3];
  if (&v10[a3] < 0 != __OFADD__(v10, a3))
  {
    v11 = &v10[a3 + 7];
  }

  v12 = *a1 + (v11 >> 3);
  if (v12 < *(a1 + 32))
  {
    goto LABEL_10;
  }

  if (*(a1 + 24))
  {
    *(a1 + 32) = v12 + 256;
    v23 = a4;
    v13 = realloc(*(a1 + 16), v12 + 256);
    a4 = v23;
    if (v13)
    {
      v10 = &v13[*a1];
      *(a1 + 16) = v13;
      *(a1 + 24) = v10;
      LODWORD(v10) = *(a1 + 8);
LABEL_10:
      v14 = v9 >> 3;
      v15 = v9 & 0xFFFFFFFFFFFFFFF8;
      if (v10)
      {
        if (a3 >= 8)
        {
          v16 = v14;
          v17 = __src;
          v24 = a4;
          do
          {
            v18 = *v17++;
            v24(a1, v18, 8);
            a4 = v24;
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        v25 = a4;
        memmove(*(a1 + 24), __src, v14);
        a4 = v25;
        v20 = *(a1 + 24);
        *(a1 + 24) = v20 + v14;
        *a1 += v14;
        *(v20 + v14) = 0;
      }

      if (a3 != v15)
      {
        v21 = a3 - v15;
        v22 = __src[v14];
        if (a5)
        {
          v22 = v22 >> (8 - v21);
        }

        a4(a1, v22, v21);
      }

      return;
    }
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    free(v19);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t oggpack_reset(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 16);
    *(result + 24) = v1;
    *v1 = 0;
    *result = 0;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t oggpackB_reset(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 16);
    *(result + 24) = v1;
    *v1 = 0;
    *result = 0;
    *(result + 8) = 0;
  }

  return result;
}

double oggpackB_writeclear(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double oggpack_readinit(uint64_t a1, uint64_t a2, int a3)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 16) = a2;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

double oggpackB_readinit(uint64_t a1, uint64_t a2, int a3)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 16) = a2;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

uint64_t oggpack_look(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x20)
  {
    return -1;
  }

  v3 = *(a1 + 8);
  v4 = v3 + a2;
  v5 = *(a1 + 32);
  if (*a1 < v5 - 4)
  {
    goto LABEL_6;
  }

  if (*a1 > v5 - ((v4 + 7) >> 3))
  {
    return -1;
  }

  if (!v4)
  {
    return 0;
  }

LABEL_6:
  v6 = *(a1 + 24);
  v7 = *v6 >> v3;
  if (v4 >= 9)
  {
    v7 |= v6[1] << (8 - v3);
    if (v4 >= 0x11)
    {
      v7 |= v6[2] << (16 - v3);
      if (v4 >= 0x19)
      {
        v7 |= v6[3] << (24 - v3);
        if (v3)
        {
          if (v4 >= 0x21)
          {
            v7 |= v6[4] << -v3;
          }
        }
      }
    }
  }

  return v7 & mask[a2];
}

unint64_t oggpackB_look(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x20)
  {
    return -1;
  }

  v3 = *(a1 + 8);
  v4 = v3 + a2;
  v5 = *(a1 + 32);
  if (*a1 < v5 - 4)
  {
    goto LABEL_6;
  }

  if (*a1 > v5 - ((v4 + 7) >> 3))
  {
    return -1;
  }

  if (!v4)
  {
    return 0;
  }

LABEL_6:
  v6 = *(a1 + 24);
  v7 = *v6 << (v3 + 24);
  if (v4 >= 9)
  {
    v7 |= v6[1] << (v3 + 16);
    if (v4 >= 0x11)
    {
      v7 |= v6[2] << (v3 + 8);
      if (v4 >= 0x19)
      {
        v7 |= v6[3] << v3;
        if (v3)
        {
          if (v4 >= 0x21)
          {
            v7 |= v6[4] >> (8 - v3);
          }
        }
      }
    }
  }

  return v7 >> ((32 - a2) >> 1) >> ((33 - a2) >> 1);
}

uint64_t oggpack_look1(uint64_t a1)
{
  if (*a1 >= *(a1 + 32))
  {
    return -1;
  }

  else
  {
    return (**(a1 + 24) >> *(a1 + 8)) & 1;
  }
}

uint64_t oggpackB_look1(uint64_t a1)
{
  if (*a1 >= *(a1 + 32))
  {
    return -1;
  }

  else
  {
    return (**(a1 + 24) >> (7 - *(a1 + 8))) & 1;
  }
}

uint64_t *oggpack_adv(uint64_t *result, int a2)
{
  v2 = *(result + 2) + a2;
  v3 = *result;
  v4 = result[4];
  if (*result <= v4 - ((v2 + 7) >> 3))
  {
    if (v2 >= 0)
    {
      v6 = *(result + 2) + a2;
    }

    else
    {
      v6 = v2 + 7;
    }

    v7 = v6 >> 3;
    result[3] += v7;
    v4 = v3 + v7;
    v5 = v2 & 7;
  }

  else
  {
    result[3] = 0;
    v5 = 1;
  }

  *result = v4;
  *(result + 2) = v5;
  return result;
}

uint64_t oggpack_adv1(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = v1 + 1;
  if (v1 >= 7)
  {
    *(result + 8) = 0;
    ++*(result + 24);
    ++*result;
  }

  return result;
}

uint64_t oggpackB_adv1(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = v1 + 1;
  if (v1 >= 7)
  {
    *(result + 8) = 0;
    ++*(result + 24);
    ++*result;
  }

  return result;
}

uint64_t oggpack_read(uint64_t *a1, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    v2 = a1[4];
LABEL_3:
    a1[3] = 0;
    *a1 = v2;
    *(a1 + 2) = 1;
    return -1;
  }

  v4 = *(a1 + 2);
  v5 = v4 + a2;
  v6 = *a1;
  v2 = a1[4];
  if (*a1 >= v2 - 4)
  {
    if (v6 > v2 - ((v5 + 7) >> 3))
    {
      goto LABEL_3;
    }

    if (!v5)
    {
      return 0;
    }
  }

  v7 = a1[3];
  v8 = *v7 >> v4;
  if (v5 >= 9)
  {
    v8 |= v7[1] << (8 - v4);
    if (v5 >= 0x11)
    {
      v8 |= v7[2] << (16 - v4);
      if (v5 >= 0x19)
      {
        v8 |= v7[3] << (24 - v4);
        if (v4)
        {
          if (v5 >= 0x21)
          {
            v8 |= v7[4] << -v4;
          }
        }
      }
    }
  }

  v3 = v8 & mask[a2];
  a1[3] = &v7[v5 / 8];
  *a1 = v6 + v5 / 8;
  *(a1 + 2) = v5 & 7;
  return v3;
}

uint64_t oggpackB_read(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    v2 = *(a1 + 32);
LABEL_3:
    *(a1 + 24) = 0;
    *a1 = v2;
    *(a1 + 8) = 1;
    return -1;
  }

  v4 = *(a1 + 8);
  v5 = v4 + a2;
  v6 = *a1;
  v2 = *(a1 + 32);
  if (*a1 + 4 >= v2)
  {
    if (v6 > v2 - ((v5 + 7) >> 3))
    {
      goto LABEL_3;
    }

    if (!v5)
    {
      return 0;
    }
  }

  v7 = *(a1 + 24);
  v8 = *v7 << (v4 + 24);
  if (v5 >= 9)
  {
    v8 |= v7[1] << (v4 + 16);
    if (v5 >= 0x11)
    {
      v8 |= v7[2] << (v4 + 8);
      if (v5 >= 0x19)
      {
        v8 |= v7[3] << v4;
        if (v4)
        {
          if (v5 >= 0x21)
          {
            v8 |= v7[4] >> (8 - v4);
          }
        }
      }
    }
  }

  v3 = v8 >> ((32 - a2) >> 1) >> (((32 - a2) + 1) >> 1);
  *(a1 + 24) = &v7[v5 / 8];
  *a1 = v6 + v5 / 8;
  *(a1 + 8) = v5 & 7;
  return v3;
}

uint64_t oggpack_read1(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*a1 >= v2)
  {
    a1[3] = 0;
    *a1 = v2;
    *(a1 + 2) = 1;
    return -1;
  }

  else
  {
    v3 = a1[3];
    v4 = *(a1 + 2);
    v5 = (*v3 >> v4) & 1;
    *(a1 + 2) = v4 + 1;
    if (v4 >= 7)
    {
      *(a1 + 2) = 0;
      a1[3] = (v3 + 1);
      *a1 = v1 + 1;
    }
  }

  return v5;
}

uint64_t oggpackB_read1(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*a1 >= v2)
  {
    a1[3] = 0;
    *a1 = v2;
    *(a1 + 2) = 1;
    return -1;
  }

  else
  {
    v3 = a1[3];
    v4 = *(a1 + 2);
    v5 = (*v3 >> (7 - v4)) & 1;
    *(a1 + 2) = v4 + 1;
    if (v4 >= 7)
    {
      *(a1 + 2) = 0;
      a1[3] = (v3 + 1);
      *a1 = v1 + 1;
    }
  }

  return v5;
}

uint64_t oggpack_bytes(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1 + 7;
  v2 = v1 < -7;
  v4 = v1 + 14;
  if (!v2)
  {
    v4 = v3;
  }

  return *a1 + (v4 >> 3);
}

uint64_t oggpackB_bytes(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1 + 7;
  v2 = v1 < -7;
  v4 = v1 + 14;
  if (!v2)
  {
    v4 = v3;
  }

  return *a1 + (v4 >> 3);
}

uint64_t opus_granule_sample(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (a2 == -1)
  {
    return -1;
  }

  if (op_granpos_add(&v3, a2, -*(a1 + 8)))
  {
    return -1;
  }

  return v3;
}

uint64_t op_test_callbacks(uint64_t a1, uint64_t a2, const void *a3, size_t a4, int *a5)
{
  v10 = malloc(0x3260uLL);
  if (!v10)
  {
    v21 = -129;
LABEL_27:
    v11 = 0;
    if (!a5)
    {
      return v11;
    }

    goto LABEL_20;
  }

  v11 = v10;
  bzero(v10, 0x3260uLL);
  if ((a4 & 0x8000000000000000) != 0)
  {
    v21 = -129;
    goto LABEL_26;
  }

  *(v11 + 80) = -1;
  *(v11 + 32) = a1;
  v12 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v12;
  if (!*v11)
  {
    v21 = -128;
    goto LABEL_26;
  }

  ogg_sync_init((v11 + 88));
  if (a4)
  {
    ogg_sync_buffer(v11 + 88, a4);
    memcpy(v13, a3, a4);
    ogg_sync_wrote(v11 + 88, a4);
  }

  v14 = *(a2 + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  if (v14(a1, 0, 1) == -1)
  {
    LODWORD(v14) = 0;
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v23 = *(v11 + 16);
  if (!v23 || v23(*(v11 + 32)) != a4)
  {
    v21 = -131;
    goto LABEL_26;
  }

  LODWORD(v14) = 1;
  v15 = 1;
LABEL_10:
  memset(v24, 0, sizeof(v24));
  *(v11 + 40) = v14;
  *(v11 + 48) = malloc(0x178uLL);
  ogg_stream_init(v11 + 168, -1);
  headers = op_fetch_headers(v11, (*(v11 + 48) + 52), (*(v11 + 48) + 344), (v11 + 64), (v11 + 56), (v11 + 60), 0);
  if (headers < 0)
  {
LABEL_16:
    v21 = headers;
LABEL_26:
    *(v11 + 24) = 0;
    op_clear(0, v11);
    free(v11);
    goto LABEL_27;
  }

  while (1)
  {
    *(v11 + 44) = 1;
    v17 = *(v11 + 48);
    v18 = *(v11 + 72);
    *v17 = 0;
    *(v17 + 8) = v18;
    *(v17 + 32) = -1;
    *(v17 + 48) = *(v11 + 544);
    initial_pcm_offset = op_find_initial_pcm_offset(v11, v17, v24);
    v20 = initial_pcm_offset < 1 ? 1 : v15;
    if (v20)
    {
      break;
    }

    opus_tags_clear(*(v11 + 48) + 344);
    *(v11 + 44) = 0;
    ++*(v11 + 124);
    headers = op_fetch_headers(v11, (*(v11 + 48) + 52), (*(v11 + 48) + 344), (v11 + 64), (v11 + 56), (v11 + 60), v24);
    if (headers < 0)
    {
      goto LABEL_16;
    }
  }

  v21 = initial_pcm_offset;
  if (initial_pcm_offset < 0)
  {
    goto LABEL_26;
  }

  *(v11 + 120) = 1;
  if (a5)
  {
    v21 = 0;
LABEL_20:
    *a5 = v21;
  }

  return v11;
}

uint64_t op_open2(void *a1, _DWORD *a2)
{
  v4 = a2;
  v142 = *MEMORY[0x277D85DE8];
  if (a2[10])
  {
    a2[30] = 2;
    v6 = a2[3205];
    v7 = malloc(48 * v6);
    if (!v7)
    {
      v2 = 4294967167;
      goto LABEL_4;
    }

    v8 = v7;
    v134 = *(v4 + 88);
    v135 = *(v4 + 104);
    memcpy(__dst, (v4 + 168), sizeof(__dst));
    v9 = *(v4 + 144);
    v10 = *(v4 + 72);
    memcpy(v8, (v4 + 576), 48 * v6);
    ogg_sync_init((v4 + 88));
    ogg_stream_init(v4 + 168, -1);
    (*(v4 + 8))(*(v4 + 32), 0, 2);
    v11 = (*(v4 + 16))(*(v4 + 32));
    *(v4 + 72) = v11;
    *(v4 + 80) = v11;
    v102 = 48 * v6;
    v103 = a1;
    v100 = v6;
    v101 = v8;
    v98 = v9;
    v99 = v10;
    if (v11 < 0)
    {
      v2 = 4294967168;
      goto LABEL_152;
    }

    v12 = *(v4 + 48);
    if (v11 < *(v12 + 8))
    {
      goto LABEL_159;
    }

    v13 = v11;
    v119 = *(v12 + 8);
    v14 = 0;
    v132 = *(v12 + 48);
    v15 = *(v4 + 64);
    v105 = (v4 + 64);
    v16 = *(v4 + 56);
    v106 = (v4 + 56);
    v137 = 0u;
    v138 = 0u;
    v130 = v15;
    v17 = v15 + 1;
    v18 = 0x10000;
    memset(v136, 0, sizeof(v136));
    v19 = v11;
    v20 = v11;
    v127 = v4;
    v121 = v11;
LABEL_8:
    v125 = v19 - v18;
    v128 = v125 & ~(v125 >> 63);
    final_pcm_offset = op_seek_helper(v4, v128);
    if ((final_pcm_offset & 0x80000000) != 0)
    {
LABEL_157:
      v2 = final_pcm_offset;
      goto LABEL_152;
    }

    if (*(v4 + 72) >= v20)
    {
      if (v125 >= 1)
      {
        LOBYTE(v30) = 1;
        goto LABEL_29;
      }

      goto LABEL_159;
    }

    v123 = v18;
    v22 = -1;
    v23 = v4;
    v24 = v125 & ~(v125 >> 63);
    while (1)
    {
      v25 = v2;
      next_page = op_get_next_page(v23, v136, v20);
      v2 = next_page;
      if (next_page < -1)
      {
        v4 = v127;
        v31 = v119;
        if ((next_page & 0x80000000) != 0)
        {
          goto LABEL_152;
        }

LABEL_40:
        v32 = v25 + v3;
        *(v4 + 80) = v32;
        if (v32 < v31)
        {
          goto LABEL_159;
        }

        v33 = v4;
        v137 = 0u;
        v138 = 0u;
        v34 = *(v4 + 44);
        v35 = v34;
        __ptr = *(v4 + 48);
        *&v136[0] = 0;
        v36 = 1;
        while (2)
        {
          v109 = v35;
          v37 = *v105;
          v38 = *v106;
          if (v35 >= v34)
          {
            if (v34 > 0x3FFFFFFF || (v104 = (2 * v34) | 1u, (v93 = realloc(__ptr, 376 * v104)) == 0))
            {
              v4 = v33;
              v2 = 4294967167;
              goto LABEL_152;
            }

            __ptr = v93;
            v33[6] = v93;
          }

          else
          {
            v104 = v34;
          }

          if (v36 >= 1)
          {
            v39 = 0;
            while (1)
            {
              if (v38 >= 1)
              {
                v40 = DWORD1(v141[2 * v39]);
                if (*v37 == v40)
                {
                  break;
                }

                v41 = 0;
                do
                {
                  if (v38 - 1 == v41)
                  {
                    goto LABEL_52;
                  }

                  v42 = v37[++v41];
                }

                while (v42 != v40);
                if (v41 < v38)
                {
                  break;
                }
              }

LABEL_52:
              if (++v39 == v36)
              {
                v43 = &v141[2 * v36 - 1];
                v44 = *(v43 - 4);
                v111 = *(v43 - 3);
                v112 = 0;
                v45 = v109;
                v108 = v109 - 1;
                v124 = -1;
                goto LABEL_59;
              }
            }

            if (v39)
            {
              v46 = &v141[2 * v39 - 1];
              v44 = *(v46 - 4);
              v111 = *(v46 - 3);
              v31 = *(v46 + 1) + *(v46 + 4);
              v108 = v109 - 1;
              if (*(v46 + 5) == *&__ptr[376 * v109 - 328])
              {
                v112 = *(v46 + 1);
                v47 = *(v46 + 3);
              }

              else
              {
                v112 = 0;
                v47 = -1;
              }

              v124 = v47;
              v36 = v39;
              v45 = v109;
LABEL_59:
              if (v45 >= 2 && ((v48 = *&__ptr[376 * v108], v49 = v48 / v108, v50 = v44 - v48 / v108 - 0x10000, v48 > v31 - v48 / v108) ? (v51 = v48 < v50) : (v51 = 0), v51))
              {
                v52 = v49 + v48;
                if (v52 >= v50)
                {
                  v49 = 0;
                }

                v53 = v49 + v52;
              }

              else
              {
                v53 = -1;
              }

              v114 = v37;
              if (v31 >= v44)
              {
                v120 = -1;
LABEL_126:
                v4 = v33;
                v86 = &__ptr[376 * v108];
                if (*(v86 + 4) == -1)
                {
                  v87 = v120;
                  if (v124 == -1)
                  {
                    v87 = -1;
                  }

                  v120 = v87;
                  v88 = v111;
                  if (v124 == -1)
                  {
                    v89 = v111;
                  }

                  else
                  {
                    v89 = v112;
                  }

                  final_pcm_offset = op_find_final_pcm_offset(v4, v114, v38, &__ptr[376 * v109 - 376], v89, *(v86 + 12), v124, v136);
                  if ((final_pcm_offset & 0x80000000) != 0)
                  {
                    goto LABEL_157;
                  }

                  v90 = v109;
                }

                else
                {
                  v90 = v109;
                  v88 = v111;
                }

                if (v120 == v88)
                {
                  v91 = &v137;
                }

                else
                {
                  final_pcm_offset = op_seek_helper(v4, v88);
                  if ((final_pcm_offset & 0x80000000) != 0)
                  {
                    goto LABEL_157;
                  }

                  v91 = 0;
                  v90 = v109;
                }

                v92 = &__ptr[376 * v90];
                final_pcm_offset = op_fetch_headers(v4, (v92 + 52), (v92 + 344), v105, v106, (v4 + 60), v91);
                if ((final_pcm_offset & 0x80000000) != 0)
                {
                  goto LABEL_157;
                }

                *v92 = v88;
                *(v92 + 8) = *(v4 + 72);
                *(v92 + 48) = *(v4 + 544);
                *(v92 + 32) = -1;
                final_pcm_offset = op_find_initial_pcm_offset(v4, v92, 0);
                if ((final_pcm_offset & 0x80000000) != 0)
                {
                  goto LABEL_157;
                }

                v33 = v4;
                *(v92 + 24) = *&v136[0];
                v31 = *(v4 + 72);
                v35 = v109 + 1;
                *(v4 + 44) = v109 + 1;
                v34 = v104;
                continue;
              }

              v110 = &__ptr[376 * v108];
              v115 = v37 + 1;
              v113 = v38;
              v126 = v38 - 1;
              while (2)
              {
                v54 = v44;
                if (v53 == -1)
                {
                  v53 = v31 + ((v44 - v31) >> 1);
                }

                v55 = v53 - v31 < 0x10000;
                if (v53 - v31 >= 0x10000)
                {
                  v44 = v53;
                }

                else
                {
                  v44 = v31;
                }

                v56 = v124;
                if (!v55)
                {
                  v56 = -1;
                }

                v124 = v56;
                v57 = op_seek_helper(v33, v44);
                if ((v57 & 0x80000000) != 0)
                {
                  goto LABEL_151;
                }

                v58 = &v141[2 * v36 - 1];
                v59 = op_get_next_page(v33, &v137, *(v58 - 3));
                if (v59 <= -2)
                {
                  v4 = v33;
                  v2 = v59;
                  goto LABEL_152;
                }

                v60 = v33;
                v120 = v59;
                if (v59 == -1)
                {
                  v131 = 0;
                  goto LABEL_96;
                }

                v61 = ogg_page_serialno(&v137);
                v62 = ogg_page_granulepos(&v137);
                if (v38 >= 1)
                {
                  if (*v37 == v61)
                  {
LABEL_83:
                    v31 = v60[9];
                    v63 = v112;
                    if (v61 == *(v110 + 12))
                    {
                      v63 = v120;
                    }

                    v112 = v63;
                    v64 = v124;
                    if (v61 == *(v110 + 12))
                    {
                      v64 = v62;
                    }

                    v124 = v64;
                    v131 = 0x10000;
                    v44 = v54;
                    goto LABEL_96;
                  }

                  v65 = 0;
                  while (v126 != v65)
                  {
                    v66 = v115[v65++];
                    if (v66 == v61)
                    {
                      if (v65 < v38)
                      {
                        goto LABEL_83;
                      }

                      break;
                    }
                  }
                }

                v131 = 0;
                if (v36 <= 63)
                {
                  *v58 = v44;
                  *(v58 + 1) = v120;
                  *(v58 + 4) = *(v60 + 18) - v120;
                  *(v58 + 5) = v61;
                  *(v58 + 3) = v62;
                  v36 = (v36 + 1);
                }

                v111 = v120;
LABEL_96:
                v67 = v44 - 0x10000;
                if (v44 - 0x10000 <= v31)
                {
                  v53 = -1;
                  v33 = v60;
                }

                else
                {
                  v117 = v44;
                  v118 = v36;
                  v116 = v44 - 0x10000;
                  if (v36 < 1)
                  {
                    v122 = v44 - 0x10000;
                  }

                  else
                  {
                    v68 = 0;
                    v69 = &__dst[396];
                    v70 = 1;
                    v122 = v67;
                    v71 = v36;
                    v129 = v36;
                    do
                    {
                      v72 = &v141[2 * v68 - 1];
                      v73 = *(v72 + 3);
                      if ((v73 & 0x8000000000000000) == 0)
                      {
                        v74 = (v73 + 48000);
                        v75 = 0x8000000000000000;
                        if (v73 < 0x7FFFFFFFFFFF4480)
                        {
                          v75 = *(v72 + 3);
                          v74 = 48000;
                        }

                        if (v68)
                        {
                          v76 = v74 + v75;
                          v133 = *(v72 + 1);
                          v77 = *(v72 + 5);
                          v78 = v69;
                          v79 = v70;
                          while (1)
                          {
                            v80 = *(v78 + 4);
                            if (v80 >= v76 && *v78 == v77)
                            {
                              v81 = *(v78 - 12);
                              v82 = v80 / (v80 - v73);
                              v83 = v81 - v133;
                              if (v82 < 1 || (v81 - v31) / v82 >= v83)
                              {
                                v84 = v131 - op_rescale64(v80 % (v80 - v73), v80 - v73, v83) + v81 - v82 * v83;
                                if (v84 >= v31)
                                {
                                  break;
                                }
                              }
                            }

                            --v79;
                            v78 -= 32;
                            if (v79 <= 1)
                            {
                              goto LABEL_110;
                            }
                          }

                          v85 = v122;
                          if (v122 >= v84)
                          {
                            v85 = v84;
                          }

                          v122 = v85;
LABEL_110:
                          v71 = v129;
                        }
                      }

                      ++v68;
                      ++v70;
                      v69 += 32;
                    }

                    while (v68 != v71);
                  }

                  v44 = v117;
                  if (v122 >= v116)
                  {
                    v53 = -1;
                  }

                  else
                  {
                    v53 = v122;
                  }

                  v33 = v127;
                  v36 = v118;
                  v38 = v113;
                  v37 = v114;
                }

                if (v31 >= v44)
                {
                  goto LABEL_126;
                }

                continue;
              }
            }
          }

          break;
        }

        if (*&__ptr[376 * v109 - 344] == -1 && (v57 = op_find_final_pcm_offset(v33, v37, v38, &__ptr[376 * v109 - 376], *(&v140 + 1), SDWORD1(v141[0]), *(&v141[0] + 1), v136), (v57 & 0x80000000) != 0))
        {
LABEL_151:
          v2 = v57;
          v4 = v33;
        }

        else
        {
          v94 = realloc(__ptr, 376 * v109);
          if (v94)
          {
            v33[6] = v94;
          }

          v4 = v33;
          free(*v105);
          v2 = 0;
          *v106 = 0;
          *(v106 + 1) = 0;
        }

LABEL_152:
        ogg_stream_clear(v4 + 168);
        ogg_sync_clear(v4 + 88);
        *(v4 + 88) = v134;
        *(v4 + 104) = v135;
        memcpy((v4 + 168), __dst, 0x198uLL);
        *(v4 + 72) = v99;
        *(v4 + 12820) = v100;
        memcpy((v4 + 576), v101, v102);
        free(v101);
        v95 = *(v4 + 48);
        *(v4 + 136) = *(v95 + 40);
        *(v4 + 144) = v98;
        *(v4 + 128) = *(v95 + 60);
        a1 = v103;
        if ((v2 & 0x80000000) == 0)
        {
          if (((*(v4 + 8))(*(v4 + 32), v99 + *(v4 + 100) - *(v4 + 104), 0) & 0x80000000) == 0)
          {
            goto LABEL_154;
          }

          v2 = 4294967168;
        }

LABEL_4:
        *(v4 + 24) = 0;
        op_clear(a1, v4);
        return v2;
      }

      if (next_page == -1)
      {
        v2 = v25;
LABEL_27:
        if (v125 >= 1)
        {
          v30 = v22 >> 63;
          v4 = v127;
          v13 = v121;
          v18 = v123;
LABEL_29:
          if (2 * v18 >= 0x100000)
          {
            v18 = 0x100000;
          }

          else
          {
            v18 *= 2;
          }

          v19 = v125 & ~(v125 >> 63);
          if (v128 + 65306 >= v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = v128 + 65306;
          }

          if ((v30 & 1) == 0)
          {
LABEL_36:
            if (v14)
            {
              v140 = v137;
              v141[0] = v138;
              v2 = *(&v137 + 1);
              v3 = v138;
            }

            v25 = v2;
            v31 = v119;
            goto LABEL_40;
          }

          goto LABEL_8;
        }

        v4 = v127;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_159:
        v2 = 4294967159;
        goto LABEL_152;
      }

      v27 = ogg_page_serialno(v136);
      *&v140 = v24;
      *(&v140 + 1) = v2;
      v3 = *(v127 + 72) - v2;
      *&v141[0] = __PAIR64__(v27, v3);
      *(&v141[0] + 1) = ogg_page_granulepos(v136);
      if (v27 == v132)
      {
        v137 = v140;
        v138 = v141[0];
        v14 = 1;
      }

      if (v16 < 1)
      {
        goto LABEL_21;
      }

      if (*v130 != v27)
      {
        break;
      }

LABEL_22:
      v24 = v2 + 1;
      v23 = v127;
      v22 = v2;
      if (*(v127 + 72) >= v20)
      {
        goto LABEL_27;
      }
    }

    v28 = 0;
    while (v16 - 1 != v28)
    {
      v29 = v17[v28++];
      if (v29 == v27)
      {
        if (v28 < v16)
        {
          goto LABEL_22;
        }

        break;
      }
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

LABEL_154:
  *(v4 + 120) = 3;
  decode_ready = op_make_decode_ready(a1, v4);
  if ((decode_ready & 0x80000000) != 0)
  {
    v2 = decode_ready;
    goto LABEL_4;
  }

  return 0;
}

_DWORD *op_open_memory(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = 0u;
  v10 = 0u;
  v6 = op_mem_stream_create(&v9, a2, a3);
  if (!v6)
  {
    if (a4)
    {
      result = 0;
      *a4 = -129;
      return result;
    }

    return 0;
  }

  v7 = v6;
  result = op_open_callbacks(a1, v6, &v9, 0, 0, a4);
  if (!result)
  {
    (*(&v10 + 1))(v7);
    return 0;
  }

  return result;
}

uint64_t op_test_memory(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = 0u;
  v8 = 0u;
  v4 = op_mem_stream_create(&v7, a1, a2);
  if (!v4)
  {
    if (a3)
    {
      result = 0;
      *a3 = -129;
      return result;
    }

    return 0;
  }

  v5 = v4;
  result = op_test_callbacks(v4, &v7, 0, 0, a3);
  if (!result)
  {
    (*(&v8 + 1))(v5);
    return 0;
  }

  return result;
}

uint64_t op_serialno(uint64_t a1, int a2)
{
  v2 = *(a1 + 44);
  if (v2 <= a2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (!*(a1 + 40))
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    v3 = *(a1 + 124);
  }

  return *(*(a1 + 48) + 376 * v3 + 48);
}

uint64_t op_channel_count(uint64_t a1, int a2)
{
  v2 = *(a1 + 44);
  if (v2 <= a2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (!*(a1 + 40))
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    v3 = *(a1 + 124);
  }

  return *(*(a1 + 48) + 376 * v3 + 56);
}

uint64_t op_head(uint64_t a1, int a2)
{
  v2 = *(a1 + 44);
  if (v2 <= a2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (!*(a1 + 40))
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    v3 = *(a1 + 124);
  }

  return *(a1 + 48) + 376 * v3 + 52;
}

uint64_t op_tags(uint64_t a1, int a2)
{
  v2 = *(a1 + 44);
  if (v2 <= a2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (!*(a1 + 40))
  {
    v4 = *(a1 + 120);
    if (v4 <= 2 && v4 != 1)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v3 < 0)
  {
    if (*(a1 + 120) >= 3)
    {
      v3 = *(a1 + 124);
      return *(a1 + 48) + 376 * v3 + 344;
    }

LABEL_13:
    v3 = 0;
  }

  return *(a1 + 48) + 376 * v3 + 344;
}

uint64_t op_seek_helper(void *a1, uint64_t a2)
{
  if (a1[9] == a2)
  {
    return 0;
  }

  v4 = a1[1];
  if (!v4 || v4(a1[4]))
  {
    return 4294967168;
  }

  a1[9] = a2;
  ogg_sync_reset((a1 + 11));
  return 0;
}

uint64_t op_fetch_and_process_page(uint64_t a1, __int128 *a2, uint64_t next_page, int a4, int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  v48 = v7;
  if (v7)
  {
    v7 = *(a1 + 124);
  }

  v50 = v7;
  v51 = *(a1 + 48);
  v52 = (a1 + 608);
  v53 = a1 + 576;
  v8 = *(v51 + 376 * v7 + 48);
  while (1)
  {
    while (1)
    {
      v57 = 0u;
      v58 = 0u;
      if (a2)
      {
        v9 = a2[1];
        v57 = *a2;
        v58 = v9;
        if (next_page < 0)
        {
          goto LABEL_117;
        }
      }

      else
      {
        next_page = op_get_next_page(a1, &v57, *(a1 + 80));
        if (next_page < 0)
        {
LABEL_117:
          if (next_page == -1)
          {
            return 4294967294;
          }

          else
          {
            return next_page;
          }
        }
      }

      v10 = *(a1 + 120);
      if (v10 < 3)
      {
        goto LABEL_11;
      }

      if (v8 == ogg_page_serialno(&v57))
      {
        v10 = *(a1 + 120);
LABEL_11:
        *(a1 + 152) += *(&v57 + 1);
        goto LABEL_12;
      }

      if (!ogg_page_bos(&v57))
      {
        goto LABEL_92;
      }

      if (!a4)
      {
        return 4294967294;
      }

      v10 = *(a1 + 120);
      if (v10 > 3)
      {
        *(a1 + 12820) = 0;
        *(a1 + 12884) = 0;
        *(a1 + 136) = -1;
        *(a1 + 144) = -1;
        if (!*(a1 + 40))
        {
          opus_tags_clear(*(a1 + 48) + 344);
        }

        *(a1 + 120) = 2;
        goto LABEL_36;
      }

LABEL_12:
      if (v10 >= 3)
      {
        if (v10 != 3)
        {
          goto LABEL_14;
        }

        goto LABEL_43;
      }

LABEL_36:
      if (v48)
      {
        break;
      }

      do
      {
        result = op_fetch_headers(a1, (v51 + 52), (v51 + 344), 0, 0, 0, &v57);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = op_find_initial_pcm_offset(a1, v51, &v57);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v8 = *(a1 + 544);
        *(*(a1 + 48) + 48) = v8;
        ++*(a1 + 124);
      }

      while (result);
      if (*(a1 + 12820) >= 1)
      {
        return op_make_decode_ready(0, a1);
      }

LABEL_92:
      a2 = 0;
    }

    v24 = ogg_page_serialno(&v57);
    v25 = v24;
    v26 = v50;
    if (*(v51 + 376 * v50 + 48) == v24)
    {
      v27 = v50;
      v28 = v51;
    }

    else
    {
      v27 = v50 + 1;
      v28 = v51;
      if (v50 + 1 >= *(a1 + 44) || (v26 = v50 + 1, *(v51 + 376 * v27 + 48) != v24))
      {
        link_from_serialno = op_get_link_from_serialno(a1, v50, next_page, v24);
        if ((link_from_serialno & 0x80000000) != 0)
        {
          goto LABEL_92;
        }

        v27 = link_from_serialno;
        v26 = link_from_serialno;
        v28 = v51;
      }
    }

    *(a1 + 124) = v27;
    ogg_stream_reset_serialno(a1 + 168, v25);
    *(a1 + 120) = 3;
    v29 = v28 + 376 * v26;
    if (next_page <= *(v29 + 8))
    {
      *(a1 + 136) = *(v29 + 40);
      *(a1 + 144) = -1;
      *(a1 + 128) = *(v29 + 60);
      a5 = 1;
    }

    v50 = v27;
    v8 = v25;
LABEL_43:
    result = op_make_decode_ready(0, a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

LABEL_14:
    ogg_stream_pagein(a1 + 168, &v57);
    if (*(a1 + 120) < 4)
    {
      goto LABEL_92;
    }

    v11 = op_collect_audio_packets(a1, v59);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
LABEL_17:
      v13 = 1;
      goto LABEL_18;
    }

    do
    {
      v31 = op_collect_audio_packets(a1, v59);
    }

    while ((v31 & 0x80000000) != 0);
    v12 = v31;
    if (a5)
    {
      goto LABEL_17;
    }

    v13 = 0;
    *(a1 + 136) = -1;
LABEL_18:
    v14 = *(a1 + 12820);
    if (v14 < 1)
    {
      goto LABEL_91;
    }

    v15 = v53 + 48 * (v14 - 1);
    v16 = *(v15 + 32);
    v54 = v16;
    v55 = 0;
    v17 = *(v15 + 24);
    v18 = *(a1 + 136);
    v56 = v18;
    if (v18 != -1)
    {
      goto LABEL_20;
    }

    if (!v17)
    {
      break;
    }

    *(a1 + 12820) = 0;
    if ((v13 & 1) == 0)
    {
      return 4294967293;
    }

    a2 = 0;
  }

  v44 = v51 + 376 * v50;
  v45 = *(v44 + 40);
  v56 = v45;
  if (v16 == -1)
  {
    v18 = v45;
  }

  else
  {
    op_granpos_add(&v56, v16, -v12);
    v18 = v56;
  }

  if (((v18 ^ v45) & 0x8000000000000000) == 0)
  {
    v32 = v18 - v45;
    goto LABEL_54;
  }

  if (v18 < 0)
  {
    if (-2 - v18 < (v45 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      goto LABEL_116;
    }

    v32 = v18 - v45;
LABEL_54:
    v33 = *(v44 + 60);
    if (v33 <= 3840)
    {
      v34 = 3840;
    }

    else
    {
      v34 = *(v44 + 60);
    }

    v35 = v33 - v32;
    if (v32 > (v34 - 3840))
    {
      v35 = 3840;
    }

    if (v32 >= 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 3840;
    }
  }

  else
  {
    if ((v18 | 0x8000000000000000) >= v45)
    {
      v32 = ((v18 | 0x8000000000000000) - v45) ^ 0x8000000000000000;
      goto LABEL_54;
    }

LABEL_116:
    v36 = 3840;
  }

  *(a1 + 128) = v36;
LABEL_20:
  if (v16 == -1)
  {
    if ((op_granpos_add(&v54, v18, v12) & 0x80000000) != 0)
    {
      v16 = *(v51 + 376 * v50 + 32);
      v54 = v16;
    }

    else
    {
      v16 = v54;
    }
  }

  if (v17)
  {
    if (((v18 ^ v16) & 0x8000000000000000) != 0)
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        if ((v16 | 0x8000000000000000) < v18)
        {
          goto LABEL_22;
        }

        v37 = ((v16 | 0x8000000000000000) - v18) ^ 0x8000000000000000;
        goto LABEL_67;
      }

      if ((-2 - v16) < (v18 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_22;
      }
    }

    v37 = v16 - v18;
LABEL_67:
    if (v37 >= v12)
    {
      goto LABEL_22;
    }

    v38 = 0;
    v55 = v18;
    v46 = v16 | 0x8000000000000000;
    v39 = v52;
    while (1)
    {
      if (v37 < 0)
      {
        v40 = v59[v38];
        v41 = v40;
        if (v37 + 0x7FFFFFFFFFFFFFFFLL < v40)
        {
          v42 = v40 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        v40 = v59[v38];
        v41 = v40;
      }

      v42 = v41 - v37;
LABEL_73:
      if (v42 < 1)
      {
        op_granpos_add(&v55, v18, v40);
        v18 = v55;
      }

      else
      {
        if (v42 > v40)
        {
          goto LABEL_90;
        }

        v55 = v16;
        *(v39 - 1) = 1;
        v18 = v16;
      }

      *v39 = v18;
      if (((v18 ^ v16) & 0x8000000000000000) != 0)
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          if ((-2 - v16) >= (v18 ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v37 = v16 - v18;
          }

          else
          {
            v37 = v42;
          }
        }

        else
        {
          v37 = (v46 - v18) ^ 0x8000000000000000;
          if (v46 < v18)
          {
            v37 = v42;
          }
        }
      }

      else
      {
        v37 = v16 - v18;
      }

      ++v38;
      v39 += 6;
      if (v14 == v38)
      {
        goto LABEL_89;
      }
    }
  }

LABEL_22:
  if ((op_granpos_add(&v56, v16, -v12) & 0x80000000) != 0)
  {
    v56 = 0;
  }

  v19 = v59;
  v20 = v14;
  v21 = v52;
  do
  {
    if ((op_granpos_add(&v55, v16, -v12) & 0x80000000) != 0)
    {
      v22 = 0;
      v55 = 0;
    }

    else
    {
      v22 = v55;
    }

    v23 = *v19++;
    v12 -= v23;
    op_granpos_add(&v55, v22, v23);
    *v21 = v55;
    v21 += 6;
    --v20;
  }

  while (v20);
LABEL_89:
  LODWORD(v38) = v14;
LABEL_90:
  *(a1 + 136) = v56;
  *(a1 + 144) = next_page;
  *(a1 + 12820) = v38;
  if (!v38)
  {
LABEL_91:
    if ((v13 ^ 1))
    {
      goto LABEL_120;
    }

    goto LABEL_92;
  }

LABEL_120:
  if (v13)
  {
    return 0;
  }

  else
  {
    return 4294967293;
  }
}

uint64_t op_set_decode_callback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 12832) = a2;
  *(result + 12840) = a3;
  return result;
}

uint64_t op_set_gain_offset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 - 3007) >= 3 && a2 != 0)
  {
    return 4294967165;
  }

  *(a1 + 12888) = a2;
  if (a3 >= 98303)
  {
    v9 = 98303;
  }

  else
  {
    v9 = a3;
  }

  if (v9 <= -98302)
  {
    v9 = -98302;
  }

  *(a1 + 12892) = v9;
  op_update_gain(a1, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t op_update_gain(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 120) < 4)
  {
    return result;
  }

  v20 = v8;
  v21 = v9;
  v10 = result;
  if (*(result + 40))
  {
    v11 = *(result + 124);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(result + 12892);
  v13 = *(result + 48);
  v14 = v13 + 376 * v11;
  v15 = *(result + 12888);
  switch(v15)
  {
    case 0:
      v12 += *(v14 + 68);
      break;
    case 3008:
      v18 = 0;
      opus_tags_get_track_gain((v13 + 376 * v11 + 344), &v18);
      v16 = v18;
      goto LABEL_10;
    case 3007:
      v19 = 0;
      opus_tags_get_album_gain((v13 + 376 * v11 + 344), &v19);
      v16 = v19;
LABEL_10:
      v12 += v16 + *(v14 + 68);
      break;
  }

  if (v12 >= 0x7FFF)
  {
    LODWORD(v17) = 0x7FFF;
  }

  else
  {
    LODWORD(v17) = v12;
  }

  if (v17 <= -32768)
  {
    v17 = 4294934528;
  }

  else
  {
    v17 = v17;
  }

  return opus_multistream_decoder_ctl(*(v10 + 12824), 4034, a3, a4, a5, a6, a7, a8, v17);
}

uint64_t op_stereo_filter(int a1, char *__dst, int a3, char *__src, int a5, int a6)
{
  if (a3 >> 1 >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = (a3 >> 1);
  }

  if (a6 == 2)
  {
    memcpy(__dst, __src, 4 * v6);
  }

  else if (a6 == 1)
  {
    if (v6 >= 1)
    {
      v7 = __dst + 2;
      v8 = v6;
      do
      {
        v9 = *__src;
        __src += 2;
        *v7 = v9;
        *(v7 - 1) = v9;
        v7 += 2;
        --v8;
      }

      while (v8);
    }
  }

  else if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (a6 < 1)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = a6;
        v14 = (&OP_STEREO_DOWNMIX_Q14 + 32 * a6 - 94);
        v15 = __src;
        do
        {
          v16 = *v15++;
          v12 += *(v14 - 1) * v16;
          v11 += *v14 * v16;
          v14 += 2;
          --v13;
        }

        while (v13);
        v17 = (v12 + 0x2000) >> 14;
        v18 = (v11 + 0x2000) >> 14;
      }

      if (v17 >= 0x7FFF)
      {
        v17 = 0x7FFF;
      }

      if (v17 <= -32768)
      {
        LOWORD(v17) = 0x8000;
      }

      v19 = &__dst[4 * i];
      *v19 = v17;
      if (v18 >= 0x7FFF)
      {
        v18 = 0x7FFF;
      }

      if (v18 <= -32768)
      {
        LOWORD(v18) = 0x8000;
      }

      *(v19 + 1) = v18;
      __src += 2 * a6;
    }
  }

  return v6;
}

float op_short2float_filter(uint64_t a1, float *a2, int a3, __int16 *a4, int a5, int a6)
{
  LODWORD(v6) = a6 * a5;
  if (a6 * a5 > a3)
  {
    LODWORD(v6) = a3 / a6 * a6;
  }

  if (v6 >= 1)
  {
    v6 = v6;
    do
    {
      v7 = *a4++;
      result = vcvts_n_f32_s32(v7, 0xFuLL);
      *a2++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t op_short2float_stereo_filter(int a1, float *a2, int a3, char *__dst, int a5, int a6)
{
  v6 = __dst;
  v7 = a2;
  if (a3 >> 1 >= a5)
  {
    result = a5;
  }

  else
  {
    result = (a3 >> 1);
  }

  if (a6 == 1)
  {
    if (result >= 1)
    {
      v9 = a2;
      v10 = result;
      do
      {
        v11 = *v6;
        v6 += 2;
        *v9++ = vcvts_n_f32_s32(v11, 0xFuLL);
        --v10;
      }

      while (v10);
      v12 = result + 1;
      v13 = &a2[result - 1];
      v14 = &a2[2 * result - 1];
      do
      {
        v15 = *v13--;
        *(v14 - 1) = v15;
        *v14 = v15;
        --v12;
        v14 -= 2;
      }

      while (v12 > 1);
    }
  }

  else if (a6 >= 5)
  {
    if (result >= 1)
    {
      for (i = 0; i != result; ++i)
      {
        v20 = 0;
        v21 = a6;
        v22 = (&OP_STEREO_DOWNMIX + 64 * (a6 - 3));
        v23 = v6;
        do
        {
          v24 = *v23;
          v23 += 2;
          v25 = vcvts_n_f32_s32(v24, 0xFuLL);
          v26 = *v22++;
          v20 = vmla_n_f32(v20, v26, v25);
          --v21;
        }

        while (v21);
        *&a2[2 * i] = v20;
        v6 += 2 * a6;
      }
    }
  }

  else
  {
    if (a6 >= 3)
    {
      LODWORD(result) = op_stereo_filter(result, __dst, 2 * result, __dst, result, a6);
    }

    LODWORD(v17) = 2 * result;
    if (2 * result > a3)
    {
      v17 = (a3 + (a3 >> 31)) & 0xFFFFFFFE;
    }

    else
    {
      v17 = v17;
    }

    if (2 * result > a3)
    {
      result = (a3 / 2);
    }

    else
    {
      result = result;
    }

    if (v17 >= 1)
    {
      do
      {
        v18 = *v6;
        v6 += 2;
        *v7++ = vcvts_n_f32_s32(v18, 0xFuLL);
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

uint64_t op_get_next_page(uint64_t a1, void *a2, uint64_t a3)
{
  while (1)
  {
    while (1)
    {
      if (a3 >= 1 && *(a1 + 72) >= a3)
      {
        return -1;
      }

      v6 = ogg_sync_pageseek((a1 + 88), a2);
      v7 = v6;
      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      *(a1 + 72) -= v6;
    }

    if (v6)
    {
      result = *(a1 + 72);
      *(a1 + 72) = result + (v7 & 0x7FFFFFFF);
      return result;
    }

    if (!a3)
    {
      return -1;
    }

    if (a3 < 0)
    {
      v9 = 2048;
    }

    else
    {
      v8 = *(a1 + 72) + *(a1 + 100) - *(a1 + 104);
      if (a3 - v8 >= 2048)
      {
        v9 = 2048;
      }

      else
      {
        v9 = a3 - v8;
      }

      if (a3 <= v8)
      {
        return -1;
      }
    }

    v10 = ogg_sync_buffer(a1 + 88, v9);
    v12 = (*a1)(*(a1 + 32), v11, v9, v10);
    if (v12 <= 0)
    {
      break;
    }

    ogg_sync_wrote(a1 + 88, v12);
  }

  v14 = -137;
  if (a3 < 0)
  {
    v14 = -1;
  }

  if (v12 >= 0)
  {
    return v14;
  }

  else
  {
    return -128;
  }
}

uint64_t op_rescale64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < a2)
  {
    if (a1 < 1)
    {
      return 0;
    }

    else
    {
      v3 = 0;
      v4 = a2 >> 1;
      v5 = 63;
      do
      {
        v6 = a1 >= v4;
        if (a1 < v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = a2;
        }

        a1 = 2 * a1 - v7;
        v3 = v6 | (2 * v3);
        --v5;
      }

      while (v5);
      v8 = a3 & 1;
      v9 = a3 >> 1;
      v10 = 63;
      a3 = 0;
      do
      {
        if (v3)
        {
          a3 = v9 + (a3 >> 1) + (v8 & a3);
        }

        else
        {
          a3 >>= 1;
        }

        v3 >>= 1;
        --v10;
      }

      while (v10);
    }
  }

  return a3;
}

uint64_t op_get_link_from_serialno(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 48);
  v5 = a2 + 1;
  if ((a2 + 1) >= *(a1 + 44) || *(v4 + 376 * v5) <= a3)
  {
    v5 = *(a1 + 44);
  }

  v6 = 0;
  do
  {
    if (*(v4 + 376 * a2) > a3)
    {
      v5 = a2;
    }

    else
    {
      v6 = a2;
    }

    a2 = v6 + ((v5 - v6) >> 1);
  }

  while ((v5 - v6) > 1);
  if (*(v4 + 376 * a2 + 48) == a4)
  {
    return a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t op_buffer_continued_data(uint64_t a1, void *a2)
{
  memset(v4, 0, sizeof(v4));
  ogg_stream_pagein(a1 + 168, a2);
  do
  {
    result = ogg_stream_packetout((a1 + 168), v4);
  }

  while (result);
  return result;
}

uint64_t op_init_buffer(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 44);
    if (v2 < 1)
    {
      v5 = 11520;
    }

    else
    {
      v3 = (*(a1 + 48) + 56);
      v4 = 1;
      do
      {
        if (v4 <= *v3)
        {
          v4 = *v3;
        }

        v3 += 94;
        --v2;
      }

      while (v2);
      v5 = 11520 * v4;
    }
  }

  else
  {
    v5 = 92160;
  }

  v6 = malloc(v5);
  *(a1 + 12872) = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return 4294967167;
  }
}

void OUTLINED_FUNCTION_0_1()
{
  *(v0 + 136) = -1;
  *(v0 + 12820) = 0;
  *(v0 + 12884) = 0;
  *(v0 + 144) = -1;
}

uint64_t opus_head_parse(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 8 && *a2 == 0x646165487375704FLL)
  {
    if (a3 != 8)
    {
      v5 = *(a2 + 8);
      if (v5 > 0xF)
      {
        return 4294967162;
      }

      if (a3 >= 0x13)
      {
        v6 = *(a2 + 18);
        if (v6 == 255)
        {
          return 4294967166;
        }

        v7 = *(a2 + 9);
        v8 = *(a2 + 10);
        v9 = *(a2 + 12);
        v10 = *(a2 + 16);
        v11 = *(a2 + 17);
        if (v6 == 1)
        {
          if ((v7 - 9) >= 0xFFFFFFF8 && v7 + 21 <= a3 && (v5 > 1 || v7 + 21 >= a3))
          {
            v14 = *(a2 + 19);
            if (*(a2 + 19))
            {
              v15 = *(a2 + 20);
              if (v14 >= v15)
              {
                v16 = (a2 + 21);
                if (!v7)
                {
LABEL_33:
                  v28 = v14;
                  v26 = v10;
                  v27 = v15;
                  v24 = v9;
                  v25 = v11;
                  v23 = v8;
                  v22 = v5;
                  if (a1)
                  {
                    v29 = a1;
                    v30 = v7;
                    memcpy(a1 + 8, v16, v7);
                    a1 = v29;
                    LODWORD(v7) = v30;
                    v5 = v22;
                    v6 = 1;
                    v8 = v23;
                    v9 = v24;
                    v11 = v25;
                    v10 = v26;
                    v12 = v27;
                    v13 = v28;
                    goto LABEL_18;
                  }

                  return 0;
                }

                v17 = v7;
                v18 = v16;
                while (1)
                {
                  v20 = *v18++;
                  v19 = v20;
                  if (v20 != 255 && v15 + v14 <= v19)
                  {
                    break;
                  }

                  if (!--v17)
                  {
                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }

        else if (!*(a2 + 18) && (v7 - 3) >= 0xFFFFFFFE && (a3 == 19 || v5 >= 2))
        {
          if (a1)
          {
            v12 = v7 - 1;
            *(a1 + 16) = 256;
            v13 = 1;
LABEL_18:
            v3 = 0;
            *a1 = v5;
            a1[1] = v7;
            a1[2] = v8;
            a1[3] = v9;
            a1[4] = ((v10 << 16) | (v11 << 24)) >> 16;
            a1[5] = v6;
            a1[6] = v13;
            a1[7] = v12;
            return v3;
          }

          return 0;
        }
      }
    }

    return 4294967163;
  }

  return 4294967164;
}

double opus_tags_init(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void opus_tags_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v3)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = v2;
  }

  if (v4 >= 1)
  {
    v5 = v2 + (v3 != 0) + 1;
    v6 = v4 - 1;
    do
    {
      free(*(*a1 + 8 * v6));
      --v5;
      --v6;
    }

    while (v5 > 1);
    v3 = *a1;
  }

  free(v3);
  free(*(a1 + 8));
  v7 = *(a1 + 24);

  free(v7);
}

uint64_t opus_tags_parse(_OWORD *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v11 = v3;
    v12 = v4;
    v9 = 0u;
    v10 = 0u;
    v7 = opus_tags_parse_impl(&v9, a2, a3);
    if ((v7 & 0x80000000) != 0)
    {
      opus_tags_clear(&v9);
    }

    else
    {
      v8 = v10;
      *a1 = v9;
      a1[1] = v8;
    }

    return v7;
  }

  else
  {

    return opus_tags_parse_impl(0, a2, a3);
  }
}

uint64_t opus_tags_copy(_OWORD *a1, uint64_t a2)
{
  v21 = 0uLL;
  *&v22 = 0;
  v4 = *(a2 + 24);
  v5 = strlen(v4);
  *(&v22 + 1) = op_strdup_with_len(v4, v5);
  if (!*(&v22 + 1))
  {
    goto LABEL_16;
  }

  v6 = *(a2 + 16);
  v7 = op_tags_ensure_capacity(&v21, v6);
  if ((v7 & 0x80000000) != 0)
  {
    v11 = v7;
    goto LABEL_19;
  }

  if (v6 >= 1)
  {
    v14 = v22;
    v15 = **(a2 + 8);
    v16 = op_strdup_with_len(**a2, v15);
    v17 = v21;
    *v21 = v16;
    if (v16)
    {
      v18 = *(&v21 + 1);
      v19 = 1;
      while (1)
      {
        *v18 = v15;
        if (v6 == v19)
        {
          break;
        }

        v15 = *(*(a2 + 8) + 4 * v19);
        v20 = op_strdup_with_len(*(*a2 + 8 * v19), v15);
        *(v17 + 8 * v19) = v20;
        ++v18;
        ++v19;
        if (!v20)
        {
          v14 = v19 - 1;
          goto LABEL_15;
        }
      }

      LODWORD(v22) = v6;
      goto LABEL_4;
    }

LABEL_15:
    LODWORD(v22) = v14;
LABEL_16:
    v11 = 4294967167;
LABEL_19:
    opus_tags_clear(&v21);
    return v11;
  }

LABEL_4:
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *(v8 + 4 * v6);
  if (v9 < 1)
  {
    goto LABEL_8;
  }

  v10 = malloc(*(v8 + 4 * v6));
  *(v21 + 8 * v6) = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  memcpy(v10, *(*a2 + 8 * v6), v9);
  *(*(&v21 + 1) + 4 * v6) = v9;
LABEL_8:
  v11 = 0;
  v12 = v22;
  *a1 = v21;
  a1[1] = v12;
  return v11;
}

uint64_t opus_tagncompare(char *a1, int a2, char *a3)
{
  result = op_strncasecmp(a1, a3, a2);
  if (!result)
  {
    return (61 - a3[a2]);
  }

  return result;
}

uint64_t opus_tags_get_binary_suffix(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(v2 + 4 * v3);
    *a2 = v4;
    if (v4 < 1)
    {
      return 0;
    }

    else
    {
      return *(*a1 + 8 * v3);
    }
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t opus_tags_get_gain(uint64_t *a1, int *a2, char *a3)
{
  v3 = *(a1 + 4);
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *a1;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    if (!op_strncasecmp(a3, v8, 15) && v8[15] == 61)
    {
      v9 = *(v7 + 8 * v6);
      v10 = (v9 + 17);
      v13 = *(v9 + 16);
      v11 = (v9 + 16);
      v12 = v13;
      if (v13 == 45)
      {
        v11 = v10;
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      if (v12 == 43)
      {
        v15 = v10;
      }

      else
      {
        v15 = v11;
      }

      if (v12 == 43)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14;
      }

      v17 = *v15;
      if ((v17 - 48) <= 9)
      {
        v18 = 0;
        v19 = v15 + 1;
        while (1)
        {
          v18 = v17 + 10 * v18 - 48;
          if (v18 > 0x7FFF - v16)
          {
            goto LABEL_21;
          }

          v20 = *v19++;
          v17 = v20;
          if ((v20 - 48) > 9)
          {
            if (v17)
            {
              goto LABEL_21;
            }

            goto LABEL_23;
          }
        }
      }

      v18 = 0;
      if (!*v15)
      {
        break;
      }
    }

LABEL_21:
    if (++v6 == v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_23:
  result = 0;
  *a2 = (v18 + v16) ^ v16;
  return result;
}

uint64_t opus_picture_tag_parse(uint64_t a1, char *a2)
{
  if (op_strncasecmp("METADATA_BLOCK_PICTURE", a2, 22))
  {
    v4 = 0;
  }

  else
  {
    v4 = 23;
    if (a2[22] != 61)
    {
      v4 = 0;
    }
  }

  v5 = &a2[v4];
  v6 = strlen(&a2[v4]);
  if ((v6 & 3) == 0 && v6 >= 0x2C)
  {
    v7 = v6 >> 2;
    v8 = 3 * (v6 >> 2) - (v5[v6 - 1] == 61) - (v5[v6 - 2] == 61);
    v9 = v8 - 32;
    if (v8 >= 0x20)
    {
      v12 = malloc(v8 + 1);
      if (!v12)
      {
        return 4294967167;
      }

      v13 = v12;
      v14 = 0;
      v15 = 0;
      v10 = 4294967164;
      do
      {
        v16 = 0;
        v17 = 0;
        v18 = v14;
        v19 = 3 * v15;
        do
        {
          v20 = v5[v16];
          if (v20 == 43)
          {
            v21 = 62;
          }

          else if (v20 == 47)
          {
            v21 = 63;
          }

          else if ((v20 - 48) > 9)
          {
            if ((v20 - 97) > 0x19)
            {
              v21 = v20 - 65;
              if ((v20 - 65) > 0x19)
              {
                v22 = 0;
                v23 = 0;
                if (v20 != 61 || v18 <= v8)
                {
                  goto LABEL_101;
                }

                v21 = 0;
              }
            }

            else
            {
              v21 = v20 - 71;
            }
          }

          else
          {
            v21 = v20 + 4;
          }

          v17 = v21 | (v17 << 6);
          ++v16;
          ++v18;
        }

        while (v16 != 4);
        *(v12 + 3 * v15) = BYTE2(v17);
        if (v19 + 1 < v8)
        {
          *(v12 + v19 + 1) = BYTE1(v17);
          if (v19 + 2 < v8)
          {
            *(v12 + v19 + 2) = v17;
          }
        }

        ++v15;
        v14 += 3;
        v5 += 4;
      }

      while (v15 != v7);
      v24 = bswap32(v12[1]);
      if (v9 < v24)
      {
        v22 = 0;
LABEL_35:
        v23 = 0;
LABEL_36:
        v10 = 4294967164;
LABEL_101:
        free(v23);
        free(v22);
        free(v13);
        return v10;
      }

      v25 = *v12;
      v26 = malloc((v24 + 1));
      v22 = v26;
      if (v26)
      {
        memcpy(v26, v13 + 2, v24);
        *(v22 + v24) = 0;
        v27 = bswap32(*(v13 + v24 + 8));
        if (v9 - v24 < v27)
        {
          goto LABEL_35;
        }

        v28 = malloc((v27 + 1));
        v23 = v28;
        if (v28)
        {
          memcpy(v28, v13 + v24 + 12, v27);
          *(v23 + v27) = 0;
          v29 = v24 + 12 + v27;
          HIDWORD(v30) = *(v13 + v29 + 1);
          LODWORD(v30) = bswap32(*(v13 + v29 + 2));
          v31 = (v30 >> 16) | (*(v13 + v29) << 24);
          v32 = bswap32(*(v13 + v29 + 4));
          v33 = bswap32(*(v13 + v29 + 8));
          v34 = bswap32(*(v13 + v29 + 12));
          if (v33)
          {
            v35 = v32 == 0;
          }

          else
          {
            v35 = 1;
          }

          v36 = v35 || v31 == 0;
          if (v36 && v31 | v32 | v33 | v34)
          {
            goto LABEL_36;
          }

          v37 = bswap32(*(v13 + v29 + 16));
          v38 = v29 + 20;
          if (v8 - (v29 + 20) < v37)
          {
            goto LABEL_36;
          }

          v39 = bswap32(v25);
          v56 = v38 + v37;
          v57 = v37;
          v40 = -1;
          v41 = 1;
          v42 = v38;
          v55 = __PAIR64__(v33, v34);
          if (v24 <= 5)
          {
            if (v24)
            {
              if (v24 != 3)
              {
                goto LABEL_90;
              }

              if (!strcmp(v22, "-->"))
              {
                if (v39 == 1 && (v31 | v32) != 0)
                {
                  v10 = 4294967164;
                  if (v31 != 32 || v32 != 32)
                  {
                    goto LABEL_101;
                  }
                }

                v54 = 0;
                *(v13 + v56++) = 0;
                v38 = v42;
                goto LABEL_98;
              }

              goto LABEL_89;
            }
          }

          else
          {
            if (v24 != 6)
            {
              if (v24 != 9)
              {
                if (v24 == 10)
                {
                  v43 = op_strncasecmp(v22, "image/jpeg", 10);
                  v40 = -1;
                  v41 = 1;
                  if (v57 >= 3 && !v43)
                  {
                    v38 = v42;
                    v44 = bswap32(*(v13 + v42) | (*(v13 + v42 + 2) << 16));
                    v45 = v44 >= 0xFFD8FF00;
                    v46 = v44 > 0xFFD8FF00;
                    v47 = !v45;
                    v37 = v57;
                    if (v46 == v47)
                    {
LABEL_83:
                      v59 = 0;
                      v60 = 0;
                      v58 = -1;
                      op_extract_jpeg_params((v13 + v38), v37, &v60 + 1, &v60, &v59 + 1, &v59, &v58);
                      v40 = 1;
                      v41 = 1;
                      goto LABEL_87;
                    }

LABEL_69:
                    v41 = 1;
                    goto LABEL_91;
                  }
                }

LABEL_90:
                v38 = v42;
LABEL_91:
                if (v39 == 1)
                {
                  if (v31 != 32)
                  {
                    v41 = 1;
                  }

                  v10 = 4294967164;
                  if ((v41 & 1) != 0 || v32 != 32)
                  {
                    goto LABEL_101;
                  }

                  v54 = 2;
                  v31 = 32;
                }

                else
                {
                  v54 = v40;
                }

LABEL_98:
                v51 = v56 - v38;
                v52 = v38;
                memmove(v13, v13 + v38, v56 - v38);
                v53 = realloc(v13, v51);
                if (v56 == v52 || v53)
                {
                  v10 = 0;
                  *a1 = v39;
                  *(a1 + 4) = 0;
                  *(a1 + 8) = v22;
                  *(a1 + 16) = v23;
                  *(a1 + 24) = v31;
                  *(a1 + 28) = v32;
                  *(a1 + 32) = HIDWORD(v55);
                  *(a1 + 36) = v55;
                  *(a1 + 40) = v57;
                  *(a1 + 44) = 0;
                  *(a1 + 48) = v53;
                  *(a1 + 56) = v54;
                  return v10;
                }

                goto LABEL_100;
              }

              if (op_strncasecmp(v22, "image/png", 9))
              {
                if (!op_strncasecmp(v22, "image/gif", 9))
                {
                  v49 = (v13 + v42);
                  v37 = v57;
LABEL_81:
                  if (op_is_gif (v49, v37))
                  {
                    v59 = 0;
                    v60 = 0;
                    v58 = -1;
                    op_extract_gif_params(v13 + v42, v57, &v60 + 1, &v60, &v59 + 1, &v59, &v58);
                    v41 = 1;
                    v40 = 3;
                    goto LABEL_87;
                  }
                }

LABEL_89:
                v40 = -1;
                v41 = 1;
                goto LABEL_90;
              }

              if (v57 < 8)
              {
                goto LABEL_89;
              }

              v38 = v42;
              v37 = v57;
              if (*(v13 + v42) == 0xA1A0A0D474E5089)
              {
LABEL_86:
                v59 = 0;
                v60 = 0;
                v58 = -1;
                op_extract_png_params((v13 + v38), v37, &v60 + 1, &v60, &v59 + 1, &v59, &v58);
                v41 = 0;
                v40 = 2;
LABEL_87:
                if ((v58 & 0x80000000) == 0)
                {
                  v32 = v60;
                  v31 = HIDWORD(v60);
                  v55 = v59;
                }

                goto LABEL_90;
              }

LABEL_68:
              v40 = -1;
              goto LABEL_69;
            }

            v48 = op_strncasecmp(v22, "image/", 6);
            v38 = v42;
            v37 = v57;
            if (v48)
            {
              goto LABEL_68;
            }
          }

          v49 = (v13 + v38);
          if (v37 < 3)
          {
            goto LABEL_81;
          }

          if (*v49 == 55551 && *(v49 + 2) == 255)
          {
            goto LABEL_83;
          }

          if (v37 < 8 || *v49 != 0xA1A0A0D474E5089)
          {
            goto LABEL_81;
          }

          goto LABEL_86;
        }
      }

      else
      {
        v23 = 0;
      }

LABEL_100:
      v10 = 4294967167;
      goto LABEL_101;
    }
  }

  return 4294967164;
}

double opus_picture_tag_init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void opus_picture_tag_clear(uint64_t a1)
{
  free(*(a1 + 16));
  free(*(a1 + 8));
  v2 = *(a1 + 48);

  free(v2);
}

BOOL op_is_gif (uint64_t a1, unint64_t a2)
{
  if (a2 < 6)
  {
    return 0;
  }

  if (*a1 == 944130375 && *(a1 + 4) == 24887)
  {
    return 1;
  }

  return *a1 == 944130375 && *(a1 + 4) == 24889;
}

unsigned __int16 *op_extract_jpeg_params(unsigned __int16 *result, unint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  if (a2 >= 3 && *result == 55551 && *(result + 2) == 255)
  {
    v8 = 2;
    while (1)
    {
      if (v8 < a2)
      {
        while (*(result + v8) != 255)
        {
          if (a2 == ++v8)
          {
LABEL_15:
            v9 = a2;
            goto LABEL_17;
          }
        }
      }

      if (v8 < a2)
      {
        while (*(result + v8) == 255)
        {
          if (a2 == ++v8)
          {
            goto LABEL_15;
          }
        }
      }

      v9 = v8;
LABEL_17:
      v8 = v9 + 1;
      v10 = a2 - (v9 + 1);
      if (a2 <= v9 + 1)
      {
        break;
      }

      v11 = result + v9;
      v12 = *v11;
      if ((v12 - 216) < 3)
      {
        break;
      }

      if ((v12 & 0xF8) != 0xD0)
      {
        if (v10 < 2)
        {
          return result;
        }

        v13 = v11[2] | (*(result + v8) << 8);
        if (v13 < 2 || v10 < v13)
        {
          return result;
        }

        if (v12 == 192 || (v12 - 208) >= 0xFFFFFFF1 && (v12 & 3) != 0)
        {
          if (v13 >= 8)
          {
            *a4 = __rev16(*(v11 + 2));
            *a3 = __rev16(*(v11 + 3));
            *a5 = v11[8] * v11[3];
            *a6 = 0;
            *a7 = 0;
          }

          return result;
        }

        v8 += v13;
      }
    }
  }

  return result;
}

void *op_extract_png_params(void *result, unint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, unsigned int *a6, int *a7)
{
  if (a2 >= 8 && *result == 0xA1A0A0D474E5089 && a2 - 20 <= 0xFFFFFFFFFFFFFFF3)
  {
    v8 = 8;
    do
    {
      v9 = result + v8;
      v10 = bswap32(*(result + v8));
      if (a2 - 12 - v8 < v10)
      {
        return result;
      }

      if (v10 == 13 && *(v9 + 1) == 1380206665)
      {
        *a3 = bswap32(*(v9 + 2));
        *a4 = bswap32(*(v9 + 3));
        v11 = v9[17];
        if (v11 != 3)
        {
          v12 = v9[16];
          if (v9[17] <= 3u)
          {
            if (!v9[17])
            {
              goto LABEL_25;
            }

            if (v11 == 2)
            {
              v12 *= 3;
              goto LABEL_25;
            }

LABEL_26:
            *a6 = 0;
            *a7 = 0;
            return result;
          }

          if (v11 == 4)
          {
            v12 *= 2;
          }

          else
          {
            if (v11 != 6)
            {
              goto LABEL_26;
            }

            v12 *= 4;
          }

LABEL_25:
          *a5 = v12;
          goto LABEL_26;
        }

        *a5 = 24;
        *a7 = 1;
      }

      else if (*a7 >= 1 && *(v9 + 1) == 1163152464)
      {
        *a6 = v10 / 3;
        return result;
      }

      v8 += (v10 + 12);
    }

    while (a2 - v8 > 0xB);
  }

  return result;
}

BOOL op_extract_gif_params(uint64_t a1, unint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  result = op_is_gif (a1, a2);
  if (a2 >= 0xE && result)
  {
    *a3 = *(a1 + 6);
    *a4 = *(a1 + 8);
    *a5 = 24;
    *a6 = 1 << ((*(a1 + 10) & 7) + 1);
    *a7 = 1;
  }

  return result;
}

uint64_t op_strncasecmp(char *a1, char *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      v4 -= 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      v6 -= 32;
    }

    v8 = (v4 - v6);
    if (v8)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return v8;
}

void *op_mem_stream_create(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  result = malloc(0x18uLL);
  if (result)
  {
    v7 = *off_287EF05D0;
    *a1 = OP_MEM_CALLBACKS;
    a1[1] = v7;
    *result = a2;
    result[1] = a3;
    result[2] = 0;
  }

  return result;
}

uint64_t op_mem_read(void *a1, void *__dst, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = v4 <= v5;
  v7 = v4 - v5;
  if (v6)
  {
    return 0;
  }

  if (v7 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, (*a1 + v5), v8);
  a1[2] = v5 + v8;
  return v8;
}

uint64_t op_mem_seek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v3 = *(a1 + 8);
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v3 = *(a1 + 16);
LABEL_8:
    if (-v3 > a2 || (v3 ^ 0x7FFFFFFFFFFFFFFFLL) < a2)
    {
      return 0xFFFFFFFFLL;
    }

    a2 += v3;
LABEL_14:
    v5 = 0;
    *(a1 + 16) = a2;
    return v5;
  }

  if (!a3 && (a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  return 0xFFFFFFFFLL;
}

uint64_t opus_fft(uint64_t result, uint64_t a2, uint64_t a3)
{
  v243 = *MEMORY[0x277D85DE8];
  v3 = *(result + 4);
  if (*result >= 1)
  {
    v4 = 0;
    do
    {
      *(a3 + 8 * *(*(result + 40) + 2 * v4)) = *(a2 + 8 * v4);
      ++v4;
    }

    while (v4 < *result);
  }

  v207 = v3 & ~(v3 >> 31);
  v5 = 1;
  v242[0] = 1;
  v6 = (result + 8);
  v208 = result;
  v7 = (result + 10);
  v8 = -1;
  v9 = 1;
  do
  {
    v9 *= *(v7 - 1);
    v242[v5] = v9;
    v10 = *v7;
    v7 += 2;
    ++v5;
    v8 += 2;
  }

  while (v10 != 1);
  v211 = v6->i16[v8];
  v206 = (a3 + 4);
  v11 = v5 - 2;
  v12 = vdup_n_s32(0x5556u);
  v13 = vdup_n_s32(0x2AABu);
  v209 = (result + 8);
  v213 = a3;
  do
  {
    v14 = v211;
    if (v11)
    {
      v15 = 2 * v11;
      v16 = v6->i16[(2 * v11 - 1)];
    }

    else
    {
      v15 = 0;
      v16 = 1;
    }

    v210 = v11;
    v211 = v16;
    v17 = v6->u16[v15];
    if (v17 > 3)
    {
      if (v17 == 4)
      {
        v156 = v242[v11];
        if (v156 >= 1)
        {
          v157 = 0;
          v158 = (v156 << v207);
          v159 = 2 * v14;
          v160 = 8 * v158;
          v161 = 12 * v158;
          v162 = *(v208 + 48) + 2;
          v163 = 4 * v158;
          do
          {
            if (v14 >= 1)
            {
              result = a3 + 8 * v157 * v211;
              v164 = v162;
              v165 = v162;
              v166 = v162;
              v167 = v14;
              do
              {
                v168 = (result + 8 * v14);
                v169 = (result + 24 * v14);
                v170 = vshr_n_s32(*v168, 0x10uLL);
                v171 = vand_s8(*v168, 0xFFFF0000FFFFLL);
                v172 = vdup_n_s32(*v165);
                v173 = vrev64_s32(vmul_s32(v170, v172));
                v174 = vrev64_s32(vshr_n_s32(vmul_s32(v171, v172), 0xFuLL));
                v175 = vdup_n_s32(*(v165 - 1));
                v176 = vmul_s32(v170, v175);
                v177 = vmul_s32(v171, v175);
                v178.i32[0] = vsub_s32(v176, v173).u32[0];
                v178.i32[1] = vadd_s32(v176, v173).i32[1];
                v173.i32[0] = vsub_s32(vshr_n_s32(v177, 0xFuLL), v174).u32[0];
                v173.i32[1] = vsra_n_s32(v174, v177, 0xFuLL).i32[1];
                v179 = vadd_s32(v173, vadd_s32(v178, v178));
                v180 = *(result + 8 * v159);
                v181 = vshr_n_s32(v180, 0x10uLL);
                v182 = vand_s8(v180, 0xFFFF0000FFFFLL);
                v183 = vdup_n_s32(*v164);
                v184 = vrev64_s32(vmul_s32(v181, v183));
                v185 = vdup_n_s32(*(v164 - 1));
                v186 = vrev64_s32(vshr_n_s32(vmul_s32(v182, v183), 0xFuLL));
                v187 = vmul_s32(v181, v185);
                v188 = vmul_s32(v182, v185);
                v189.i32[0] = vsub_s32(v187, v184).u32[0];
                v189.i32[1] = vadd_s32(v187, v184).i32[1];
                v187.i32[0] = vsub_s32(vshr_n_s32(v188, 0xFuLL), v186).u32[0];
                v187.i32[1] = vsra_n_s32(v186, v188, 0xFuLL).i32[1];
                v190 = vadd_s32(v187, vadd_s32(v189, v189));
                v191 = vshr_n_s32(*v169, 0x10uLL);
                v192 = vand_s8(*v169, 0xFFFF0000FFFFLL);
                v193 = vdup_n_s32(*v166);
                v194 = vrev64_s32(vmul_s32(v191, v193));
                v195 = vrev64_s32(vshr_n_s32(vmul_s32(v192, v193), 0xFuLL));
                v196 = vdup_n_s32(*(v166 - 1));
                v197 = vmul_s32(v191, v196);
                v198 = vmul_s32(v192, v196);
                v199.i32[0] = vsub_s32(v197, v194).u32[0];
                v199.i32[1] = vadd_s32(v197, v194).i32[1];
                v194.i32[0] = vsub_s32(vshr_n_s32(v198, 0xFuLL), v195).u32[0];
                v194.i32[1] = vsra_n_s32(v195, v198, 0xFuLL).i32[1];
                v200 = vshr_n_s32(vadd_s32(v194, vadd_s32(v199, v199)), 2uLL);
                v201 = vshr_n_s32(vadd_s32(*result, 0x200000002), 2uLL);
                v202 = vsub_s32(v201, vshr_n_s32(v190, 2uLL));
                v203 = vsra_n_s32(v201, v190, 2uLL);
                v204 = vsub_s32(vshr_n_s32(v179, 2uLL), v200);
                v205 = vsra_n_s32(v200, v179, 2uLL);
                *(result + 8 * v159) = vsub_s32(v203, v205);
                *result = vadd_s32(v205, v203);
                result += 8;
                v168->i32[0] = v204.i32[1] + v202.i32[0];
                v168->i32[1] = v202.i32[1] - v204.i32[0];
                v169->i32[0] = v202.i32[0] - v204.i32[1];
                v169->i32[1] = v204.i32[0] + v202.i32[1];
                v166 = (v166 + v161);
                v165 = (v165 + v163);
                v164 = (v164 + v160);
                --v167;
              }

              while (v167);
            }

            ++v157;
          }

          while (v157 != v156);
        }
      }

      else if (v17 == 5)
      {
        v216 = v242[v11];
        if (v216 >= 1)
        {
          v60 = 0;
          v61 = (v216 << v207);
          v62 = *(v208 + 48);
          v63 = v61 * v14;
          v64 = (v62 + 8 * v63);
          v65 = v64[1];
          v66 = (v62 + 4 * v63);
          v67 = v66[1];
          v219 = *v66;
          v225 = *v64;
          v226 = 2 * v225;
          v218 = 2 * v219;
          result = (2 * v67);
          v68 = -2 * v65;
          v69 = a3 + 32 * v14;
          v214 = 8 * v211;
          v215 = v14;
          v212 = (v62 + 2);
          v70 = a3 + 24 * v14;
          v71 = a3 + 8 * v14;
          v72 = a3;
          v73 = a3 + 16 * v14;
          v240 = 2 * v67;
          v223 = 8 * v61;
          v224 = 2 * v61;
          v221 = 8 * v14;
          v222 = 4 * v61;
          v220 = 12 * v61;
          do
          {
            v217 = v60;
            v74 = 2 * v65;
            if (v14 >= 1)
            {
              v75 = 0;
              v76 = v212;
              v77 = v212;
              v78 = v212;
              v79 = v212;
              v230 = v70;
              v231 = v69;
              v228 = v72;
              v229 = v71;
              v227 = v73;
              do
              {
                v241 = v79;
                v238 = v77;
                v239 = v75;
                v80 = (v70 + v75);
                v81 = (v72 + v75);
                v237 = (v71 + v75);
                v82 = *(v72 + v75);
                v83 = vshr_n_s32(v82, 0x10uLL);
                v84 = vdup_n_s32(0x3334u);
                v85 = vand_s8(v82, 0xFFFF0000FFFFLL);
                v86 = vdup_n_s32(0x199Au);
                *v81 = vsra_n_u32(vmul_s32(v83, v84), vmul_s32(v85, v86), 0xFuLL);
                v87 = vsra_n_u32(vmul_s32(vshr_n_s32(*(v71 + v75), 0x10uLL), v84), vmul_s32(vand_s8(*(v71 + v75), 0xFFFF0000FFFFLL), v86), 0xFuLL);
                *(v71 + v75) = v87;
                v236 = (v73 + v75);
                v88 = *(v77 - 1);
                v89 = v87.i32[0] >> 16;
                v90 = v87.u16[0] * v88;
                v91 = *v77;
                v92 = v87.u16[2] * v91;
                v93 = (v87.i32[0] >> 16) * v88 - (v87.i32[1] >> 16) * v91;
                v94 = v87.u16[0] * v91;
                v95 = (v87.i32[1] >> 16) * v88;
                v96 = v87.u16[2] * v88;
                v97 = vsra_n_u32(vmul_s32(vshr_n_s32(*(v73 + v75), 0x10uLL), v84), vmul_s32(vand_s8(*(v73 + v75), 0xFFFF0000FFFFLL), v86), 0xFuLL);
                *v236 = v97;
                v98 = v95 + v89 * v91;
                v99 = v97.i32[1];
                v100 = *(v79 - 1);
                LOWORD(v91) = v97.i16[0];
                v101 = v97.i32[0] >> 16;
                v102 = (v97.i32[0] >> 16) * v100;
                v235 = v80;
                v103 = vsra_n_u32(vmul_s32(vshr_n_s32(*v80, 0x10uLL), v84), vmul_s32(vand_s8(*v80, 0xFFFF0000FFFFLL), v86), 0xFuLL);
                *v80 = v103;
                v104 = (v69 + v75);
                v234 = (v69 + v75);
                v105 = *(v69 + v75);
                v106 = *v79;
                v107 = (v90 >> 15) - (v92 >> 15) + 2 * v93;
                v108 = (v94 >> 15) + (v96 >> 15) + 2 * v98;
                v109 = ((v91 * v100) >> 15) - ((v99 * v106) >> 15) + 2 * (v102 - (v99 >> 16) * v106);
                v110 = vsra_n_u32(vmul_s32(vshr_n_s32(v105, 0x10uLL), v84), vmul_s32(vand_s8(v105, 0xFFFF0000FFFFLL), v86), 0xFuLL);
                v111 = ((v91 * v106) >> 15) + ((v99 * v100) >> 15) + 2 * ((v99 >> 16) * v100 + v101 * v106);
                v112 = *(v78 - 1);
                v113 = *v78;
                v114 = ((v103.u16[0] * v112) >> 15) - ((v103.u16[2] * v113) >> 15) + 2 * ((v103.i32[0] >> 16) * v112 - (v103.i32[1] >> 16) * v113);
                *v104 = v110;
                v115 = ((v103.u16[0] * v113) >> 15) + ((v103.u16[2] * v112) >> 15) + 2 * ((v103.i32[1] >> 16) * v112 + (v103.i32[0] >> 16) * v113);
                v116 = *(v72 + v75);
                v117 = v76;
                v118 = *(v76 - 1);
                v119 = *v76;
                v120 = ((v110.u16[0] * v118) >> 15) - ((v110.u16[2] * v119) >> 15) + 2 * ((v110.i32[0] >> 16) * v118 - (v110.i32[1] >> 16) * v119);
                v121 = ((v110.u16[0] * v119) >> 15) + ((v110.u16[2] * v118) >> 15) + 2 * ((v110.i32[1] >> 16) * v118 + (v110.i32[0] >> 16) * v119);
                v122 = v107 - v120;
                v123 = v114 + v109;
                v124 = v115 + v111;
                v125 = v109 - v114;
                v126 = v111 - v115;
                v127 = v121 + v108;
                v233 = v116;
                v232 = v81->i32[1];
                v128 = v108 - v121;
                v81->i32[0] = v123 + v116 + v120 + v107;
                v81->i32[1] = v124 + v232 + v127;
                v129 = v116 + (v123 >> 16) * v226 + ((v123 * v225) >> 15) + ((v120 + v107) >> 16) * v218 + (((v120 + v107) * v219) >> 15);
                LODWORD(v81) = v232 + (v124 >> 16) * v226 + ((v124 * v225) >> 15) + (v127 >> 16) * v218 + ((v127 * v219) >> 15);
                v130 = v74 * (v126 >> 16) + ((v126 * v65) >> 15) + (v128 >> 16) * v240 + ((v128 * v67) >> 15);
                v131 = -2 * v67 * (v122 >> 16) + (v125 >> 16) * v68 - (((v125 * v65) >> 15) + ((v122 * v67) >> 15));
                *v237 = v129 - v130;
                v237[1] = v81 - v131;
                *v234 = v129 + v130;
                v234[1] = v81 + v131;
                v69 = v231;
                result = v240;
                v132 = v233 + (v123 >> 16) * v218 + ((v123 * v219) >> 15) + ((v120 + v107) >> 16) * v226 + (((v120 + v107) * v225) >> 15);
                v133 = v232 + (v124 >> 16) * v218 + ((v124 * v219) >> 15) + (v127 >> 16) * v226 + ((v127 * v225) >> 15);
                v73 = v227;
                v72 = v228;
                v134 = (v126 >> 16) * v240 + ((v126 * v67) >> 15) + (v128 >> 16) * v68 - ((v128 * v65) >> 15);
                v74 = 2 * v65;
                v135 = ((v122 * v65) >> 15) - ((v125 * v67) >> 15) + 2 * ((v122 >> 16) * v65 - (v125 >> 16) * v67);
                v236->i32[0] = v134 + v132;
                v236->i32[1] = v135 + v133;
                v136 = v132 - v134;
                v137 = v133 - v135;
                v71 = v229;
                v70 = v230;
                v235->i32[0] = v136;
                v235->i32[1] = v137;
                v75 = v239 + 8;
                v76 = &v117[v223];
                v79 = &v241[v222];
                v78 = (v78 + v220);
                v77 = &v238[v224];
              }

              while (v221 != v239 + 8);
            }

            v60 = v217 + 1;
            a3 = v213;
            v69 += v214;
            v70 += v214;
            v72 += v214;
            v71 += v214;
            v73 += v214;
            v14 = v215;
          }

          while (v217 + 1 != v216);
        }
      }
    }

    else if (v17 == 2)
    {
      v138 = v242[v11];
      if (v138 >= 1)
      {
        v139 = 0;
        v140 = *(v208 + 48) + 2;
        v141 = v206;
        do
        {
          if (v14 >= 1)
          {
            v142 = (a3 + 8 * v139 * v211 + 8 * v14);
            v143 = v140;
            LODWORD(result) = v14;
            v144 = v141;
            do
            {
              v146 = *(v144 - 1);
              v145 = *v144;
              v147 = v142[1];
              v148 = *(v143 - 1);
              v149 = *v142 >> 17;
              v150 = (*v142 >> 1);
              v151 = *v143;
              v152 = v147 >> 17;
              v153 = (v147 >> 1);
              v154 = ((v150 * v148) >> 15) - ((v153 * v151) >> 15) + 2 * (v149 * v148 - v152 * v151);
              v155 = ((v150 * v151) >> 15) + ((v153 * v148) >> 15) + 2 * (v152 * v148 + v149 * v151);
              *v142 = (v146 >> 1) - v154;
              v142[1] = (v145 >> 1) - v155;
              v142 += 2;
              *(v144 - 1) = v154 + (v146 >> 1);
              *v144 = v155 + (v145 >> 1);
              v144 += 2;
              v143 += 2 * (v138 << v207);
              result = (result - 1);
            }

            while (result);
          }

          ++v139;
          v141 += 2 * v211;
        }

        while (v139 != v138);
      }
    }

    else if (v17 == 3)
    {
      v18 = v242[v11];
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = (v18 << v207);
        v21 = *(v208 + 48);
        v22 = v21[2 * v20 * v14 + 1];
        v23 = 8 * v20;
        v24 = 2 * v22;
        result = 4 * v20;
        do
        {
          v25 = (a3 + 8 * v19 * v211);
          v26 = (v21 + 1);
          v27 = v21;
          v28 = v14;
          do
          {
            *v25 = vsra_n_u32(vmul_s32(vshr_n_s32(*v25, 0x10uLL), v12), vmul_s32(vand_s8(*v25, 0xFFFF0000FFFFLL), v13), 0xFuLL);
            v29 = &v25[v14];
            *v29 = vsra_n_u32(vmul_s32(vshr_n_s32(*v29, 0x10uLL), v12), vmul_s32(vand_s8(*v29, 0xFFFF0000FFFFLL), v13), 0xFuLL);
            v30 = &v25[2 * v14];
            v31 = vsra_n_u32(vmul_s32(vshr_n_s32(*v30, 0x10uLL), v12), vmul_s32(vand_s8(*v30, 0xFFFF0000FFFFLL), v13), 0xFuLL);
            *v30 = v31;
            v32 = v31.i32[0] >> 16;
            v33 = v31.u16[0];
            v34 = v31.i32[1] >> 16;
            v35 = vdup_n_s32(v26->i16[0]);
            v36 = v31.u16[2];
            v37 = *v27;
            v38 = v27[1];
            v27 = (v27 + v23);
            v39 = vshr_n_s32(*v29, 0x10uLL);
            v40 = vand_s8(*v29, 0xFFFF0000FFFFLL);
            v41 = vrev64_s32(vmul_s32(v39, v35));
            v42 = vrev64_s32(vshr_n_s32(vmul_s32(v40, v35), 0xFuLL));
            v43 = vdup_n_s32(v26[-1].i16[3]);
            v44 = vmul_s32(v39, v43);
            v45 = vmul_s32(v40, v43);
            v46.i32[0] = vsub_s32(v44, v41).u32[0];
            v46.i32[1] = vadd_s32(v44, v41).i32[1];
            v41.i32[0] = vsub_s32(vshr_n_s32(v45, 0xFuLL), v42).u32[0];
            v41.i32[1] = vsra_n_s32(v42, v45, 0xFuLL).i32[1];
            v47 = vadd_s32(v41, vadd_s32(v46, v46));
            v48 = vmul_s32(vdup_n_s32(v32), __PAIR64__(v38, v37));
            v49 = vmul_s32(vdup_n_s32(v33), __PAIR64__(v38, v37));
            v50 = vrev64_s32(vmul_s32(vdup_n_s32(v34), __PAIR64__(v38, v37)));
            v51 = vrev64_s32(vshr_n_s32(vmul_s32(vdup_n_s32(v36), __PAIR64__(v38, v37)), 0xFuLL));
            v52.i32[0] = vsub_s32(v48, v50).u32[0];
            v52.i32[1] = vadd_s32(v48, v50).i32[1];
            v43.i32[0] = vsub_s32(vshr_n_s32(v49, 0xFuLL), v51).u32[0];
            v43.i32[1] = vsra_n_s32(v51, v49, 0xFuLL).i32[1];
            v53 = vadd_s32(v43, vadd_s32(v52, v52));
            v54 = vsub_s32(v47, v53);
            v55 = vadd_s32(v53, v47);
            *v29 = vsub_s32(*v25, vshr_n_s32(v55, 1uLL));
            v56 = (v54.i32[0] >> 16) * v24 + ((v54.u16[0] * v22) >> 15);
            v57 = (v54.i32[1] >> 16) * v24 + ((v54.u16[2] * v22) >> 15);
            *v25 = vadd_s32(v55, *v25);
            ++v25;
            v58 = v29->i32[1] - v56;
            v30->i32[0] = v57 + v29->i32[0];
            v30->i32[1] = v58;
            LODWORD(v30) = v29->i32[0] - v57;
            v59 = v29->i32[1] + v56;
            v29->i32[0] = v30;
            v29->i32[1] = v59;
            v26 = (v26 + result);
            --v28;
          }

          while (v28);
          ++v19;
        }

        while (v19 != v18);
      }
    }

    v6 = v209;
    v11 = v210 - 1;
  }

  while (v210 > 0);
  return result;
}

unint64_t opus_ifft(unint64_t result, uint64_t a2, uint64_t a3)
{
  v233 = *MEMORY[0x277D85DE8];
  v3 = *(result + 4);
  if (*result >= 1)
  {
    v4 = 0;
    do
    {
      *(a3 + 8 * *(*(result + 40) + 2 * v4)) = *(a2 + 8 * v4);
      ++v4;
    }

    while (v4 < *result);
  }

  v200 = v3 & ~(v3 >> 31);
  v5 = 1;
  v232[0] = 1;
  v6 = (result + 8);
  v201 = result;
  v7 = (result + 10);
  v8 = -1;
  v9 = 1;
  do
  {
    v9 *= *(v7 - 1);
    v232[v5] = v9;
    v10 = *v7;
    v7 += 2;
    ++v5;
    v8 += 2;
  }

  while (v10 != 1);
  v204 = *(v6 + v8);
  v199 = (a3 + 4);
  v11 = v5 - 2;
  v202 = (result + 8);
  do
  {
    v12 = v204;
    if (v11)
    {
      v13 = v11;
      v14 = *(v6 + (2 * v11 - 1));
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v203 = v11;
    v204 = v14;
    v15 = LOWORD(v6[v13]);
    if (v15 > 3)
    {
      v210 = v12;
      if (v15 == 4)
      {
        v151 = v232[v11];
        if (v151 >= 1)
        {
          v152 = 0;
          v153 = (v151 << v200);
          v154 = 8 * v153;
          v155 = 12 * v153;
          v156 = *(v201 + 48) + 2;
          v157 = (24 * v12) | 4;
          v158 = 4 * v153;
          v159 = (16 * v12) | 4;
          v160 = (8 * v12) | 4;
          do
          {
            if (v12 >= 1)
            {
              result = a3 + 8 * v152 * v204;
              v161 = v210;
              v162 = v156;
              v163 = v156;
              v164 = v156;
              do
              {
                v165 = *(v162 - 1);
                v166 = (result + v160);
                v167 = *(result + v160 - 4) >> 16;
                v168 = *(result + v160 - 4);
                v169 = *v162;
                v170 = *(result + v160) >> 16;
                v171 = *(result + v160);
                v172 = ((v171 * v169) >> 15) + ((v168 * v165) >> 15) + 2 * (v167 * v165 + v170 * v169);
                v173 = ((v171 * v165) >> 15) - ((v168 * v169) >> 15) + 2 * (v170 * v165 - v167 * v169);
                v174 = *(v163 - 1);
                v175 = (result + v159);
                v176 = *(result + v159 - 4) >> 16;
                v177 = *(result + v159 - 4);
                v178 = *v163;
                v179 = *(result + v159) >> 16;
                v180 = *(result + v159);
                v181 = ((v180 * v178) >> 15) + ((v177 * v174) >> 15) + 2 * (v176 * v174 + v179 * v178);
                v182 = ((v180 * v174) >> 15) - ((v177 * v178) >> 15) + 2 * (v179 * v174 - v176 * v178);
                v183 = *(v164 - 1);
                v184 = (result + v157);
                v185 = *(result + v157 - 4) >> 16;
                v186 = *(result + v157 - 4);
                v187 = *v164;
                v188 = *(result + v157) >> 16;
                v189 = *(result + v157);
                v190 = ((v189 * v187) >> 15) + ((v186 * v183) >> 15) + 2 * (v185 * v183 + v188 * v187);
                v191 = ((v189 * v183) >> 15) - ((v186 * v187) >> 15) + 2 * (v188 * v183 - v185 * v187);
                v192 = *(result + 4);
                v193 = *result - v181;
                v194 = v192 - v182;
                v195 = *result + v181;
                v196 = v192 + v182;
                v197 = v190 + v172;
                v198 = v172 - v190;
                *(v175 - 1) = v195 - v197;
                *v175 = v196 - (v191 + v173);
                *result = v197 + v195;
                *(result + 4) = v191 + v173 + v196;
                result += 8;
                *(v166 - 1) = v193 - (v173 - v191);
                *v166 = v198 + v194;
                *(v184 - 1) = v173 - v191 + v193;
                *v184 = v194 - v198;
                v164 = (v164 + v155);
                v163 = (v163 + v154);
                v162 = (v162 + v158);
                --v161;
              }

              while (v161);
            }

            ++v152;
            v12 = v210;
          }

          while (v152 != v151);
        }
      }

      else if (v15 == 5)
      {
        v207 = v232[v11];
        if (v207 >= 1)
        {
          v59 = 0;
          v60 = (v207 << v200);
          v61 = *(v201 + 48);
          v62 = v60 * v12;
          v63 = (v61 + 8 * v62);
          v64 = v63[1];
          v65 = (v61 + 4 * v62);
          v66 = v65[1];
          v67 = *v65;
          v222 = *v63;
          v68 = (2 * v222);
          result = (2 * v67);
          v211 = -2 * v64;
          v69 = -2 * v66;
          v70 = 2 * v64;
          v71 = a3 + 32 * v12;
          v205 = (v61 + 2);
          v206 = 8 * v204;
          v72 = a3 + 24 * v12;
          v73 = a3 + 16 * v12;
          v74 = a3;
          v75 = a3 + 8 * v12;
          v229 = 2 * v66;
          v215 = 8 * v60;
          v216 = 4 * v60;
          v213 = 8 * v12;
          v214 = 4 * v60;
          v212 = 12 * v60;
          do
          {
            v209 = v59;
            v76 = v222;
            if (v12 >= 1)
            {
              v77 = 0;
              v78 = v205;
              v79 = v205;
              v80 = v205;
              v81 = v205;
              v220 = v72;
              v221 = v71;
              v218 = v74;
              v219 = v73;
              v217 = v75;
              do
              {
                v226 = (v75 + v77);
                v82 = *(v79 - 1);
                v83 = *(v75 + v77) >> 16;
                v84 = (v71 + v77);
                v85 = (v73 + v77);
                v86 = *(v75 + v77);
                v87 = (v74 + v77);
                v230 = *(v74 + v77);
                v231 = *(v74 + v77 + 4);
                v88 = *v79;
                v89 = ((*(v75 + v77 + 4) * v88) >> 15) + ((v86 * v82) >> 15) + 2 * (v83 * v82 + (*(v75 + v77 + 4) >> 16) * v88);
                v90 = ((*(v75 + v77 + 4) * v82) >> 15) - ((v86 * v88) >> 15) + 2 * ((*(v75 + v77 + 4) >> 16) * v82 - v83 * v88);
                v91 = *(v81 - 1);
                v227 = v85;
                v228 = v81;
                v92 = *v85 >> 16;
                v93 = *v85;
                v94 = *v81;
                v95 = v85[1] >> 16;
                v96 = v85[1];
                v97 = ((v96 * v94) >> 15) + ((v93 * v91) >> 15) + 2 * (v92 * v91 + v95 * v94);
                v98 = ((v96 * v91) >> 15) - ((v93 * v94) >> 15) + 2 * (v95 * v91 - v92 * v94);
                v99 = *(v80 - 1);
                v225 = (v72 + v77);
                v100 = *(v72 + v77) >> 16;
                v101 = *(v72 + v77);
                v102 = *v80;
                LODWORD(v85) = *(v72 + v77 + 4) >> 16;
                v103 = *(v72 + v77 + 4);
                v104 = ((v103 * v102) >> 15) + ((v101 * v99) >> 15) + 2 * (v100 * v99 + v85 * v102);
                v105 = ((v103 * v99) >> 15) - ((v101 * v102) >> 15) + 2 * (v85 * v99 - v100 * v102);
                v106 = *(v78 - 1);
                v224 = v78;
                v223 = v84;
                v107 = *v84 >> 16;
                v108 = *v84;
                v109 = *v78;
                v110 = v84[1] >> 16;
                LODWORD(v85) = v84[1];
                LODWORD(v84) = ((v85 * v109) >> 15) + ((v108 * v106) >> 15) + 2 * (v107 * v106 + v110 * v109);
                v111 = ((v85 * v106) >> 15) - ((v108 * v109) >> 15) + 2 * (v110 * v106 - v107 * v109);
                v112 = v84 + v89;
                LODWORD(v85) = v111 + v90;
                v113 = v89 - v84;
                v114 = v90 - v111;
                LODWORD(v84) = v104 + v97;
                v115 = v105 + v98;
                v116 = v97 - v104;
                v117 = v98 - v105;
                *v87 = v84 + v230 + v112;
                v87[1] = v115 + v231 + v85;
                v118 = v230 + (v84 >> 16) * v68 + ((v84 * v76) >> 15) + (v112 >> 16) * result + ((v112 * v67) >> 15);
                v119 = v231 + (v115 >> 16) * v68 + ((v115 * v76) >> 15) + (v85 >> 16) * result + ((v85 * v67) >> 15);
                v120 = result;
                v121 = v68;
                v122 = v69 * (v114 >> 16) + (v117 >> 16) * v211 - (((v117 * v64) >> 15) + ((v114 * v66) >> 15));
                v123 = v113 >> 16;
                v124 = v70 * (v116 >> 16);
                v125 = v67;
                v126 = v124 + ((v116 * v64) >> 15) + (v113 >> 16) * v229 + ((v113 * v66) >> 15);
                *v226 = v118 - v122;
                v226[1] = v119 - v126;
                v127 = v118 + v122;
                v71 = v221;
                *v223 = v127;
                v223[1] = v119 + v126;
                v76 = v222;
                v128 = v230 + (v84 >> 16) * v120 + ((v84 * v125) >> 15) + (v112 >> 16) * v121 + ((v112 * v222) >> 15);
                v129 = v231 + (v115 >> 16) * v120 + ((v115 * v125) >> 15) + (v85 >> 16) * v121 + ((v85 * v222) >> 15);
                v69 = -2 * v66;
                v130 = ((v114 * v64) >> 15) - ((v117 * v66) >> 15) + 2 * ((v114 >> 16) * v64 - (v117 >> 16) * v66);
                v75 = v217;
                v74 = v218;
                v131 = v113 * v64;
                v72 = v220;
                v132 = (v116 >> 16) * v229 + ((v116 * v66) >> 15) + v123 * v211 - (v131 >> 15);
                *v227 = v130 + v128;
                v227[1] = v132 + v129;
                v68 = v121;
                result = v120;
                v133 = v129 - v132;
                v67 = v125;
                v70 = 2 * v64;
                *v225 = v128 - v130;
                v225[1] = v133;
                v73 = v219;
                v77 += 8;
                v78 = &v224[v215];
                v81 = &v228[v214];
                v80 = (v80 + v212);
                v79 = (v79 + v216);
              }

              while (v213 != v77);
            }

            v12 = v210;
            v59 = v209 + 1;
            v71 += v206;
            v72 += v206;
            v73 += v206;
            v75 += v206;
            v74 += v206;
          }

          while (v209 + 1 != v207);
        }
      }
    }

    else if (v15 == 2)
    {
      v134 = v232[v11];
      if (v134 >= 1)
      {
        v135 = 0;
        v136 = *(v201 + 48) + 2;
        v137 = v199;
        do
        {
          if (v12 >= 1)
          {
            v138 = (a3 + 8 * v135 * v204 + 8 * v12);
            v139 = v136;
            LODWORD(result) = v12;
            v140 = v137;
            do
            {
              v141 = *(v139 - 1);
              v142 = *v138 >> 16;
              v143 = *v138;
              v144 = *v139;
              v145 = v138[1] >> 16;
              v146 = v138[1];
              v147 = ((v146 * v144) >> 15) + ((v143 * v141) >> 15) + 2 * (v142 * v141 + v145 * v144);
              v148 = ((v146 * v141) >> 15) - ((v143 * v144) >> 15) + 2 * (v145 * v141 - v142 * v144);
              v149 = *(v140 - 1);
              v150 = *v140;
              *v138 = v149 - v147;
              v138[1] = v150 - v148;
              v138 += 2;
              *(v140 - 1) = v147 + v149;
              *v140 = v148 + v150;
              v140 += 2;
              v139 += 2 * (v134 << v200);
              result = (result - 1);
            }

            while (result);
          }

          ++v135;
          v137 += 2 * v204;
        }

        while (v135 != v134);
      }
    }

    else if (v15 == 3)
    {
      v16 = v232[v11];
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = (v16 << v200);
        v19 = *(v201 + 48);
        v20 = 8 * v18;
        v21 = -*(v19 + 4 * v18 * v12 + 2);
        v22 = (-65536 * *(v19 + 4 * v18 * v12 + 2)) >> 15;
        v23 = (a3 + 8 * v12);
        v24 = 8 * v204;
        v25 = (v19 + 2);
        v26 = (a3 + 16 * v12);
        v27 = 4 * v18;
        result = v199;
        do
        {
          v28 = result;
          v29 = v25;
          v30 = v26;
          v31 = v25;
          v32 = v23;
          v33 = v12;
          do
          {
            v34 = *(v29 - 1);
            v35 = *v32 >> 16;
            v36 = *v32;
            v37 = *v29;
            v38 = v32[1] >> 16;
            v39 = v32[1];
            v40 = ((v39 * v37) >> 15) + ((v36 * v34) >> 15) + 2 * (v35 * v34 + v38 * v37);
            v41 = ((v39 * v34) >> 15) - ((v36 * v37) >> 15) + 2 * (v38 * v34 - v35 * v37);
            v42 = *(v31 - 1);
            v43 = *v30 >> 16;
            v44 = *v30;
            v45 = *v31;
            v46 = v30[1] >> 16;
            v47 = v30[1];
            v48 = ((v47 * v45) >> 15) + ((v44 * v42) >> 15) + 2 * (v43 * v42 + v46 * v45);
            v49 = ((v47 * v42) >> 15) - ((v44 * v45) >> 15) + 2 * (v46 * v42 - v43 * v45);
            v50 = v49 + v41;
            v51 = v41 - v49;
            v52 = *v28 - (v50 >> 1);
            *v32 = *(v28 - 1) - ((v48 + v40) >> 1);
            v32[1] = v52;
            v53 = ((v40 - v48) >> 16) * v22 + (((v40 - v48) * v21) >> 15);
            v54 = (v51 >> 16) * v22 + ((v51 * v21) >> 15);
            v55 = v48 + v40 + *(v28 - 1);
            v56 = *v28;
            *(v28 - 1) = v55;
            *v28 = v56 + v50;
            v57 = v32[1] - v53;
            *v30 = v54 + *v32;
            v30[1] = v57;
            v30 += 2;
            v58 = v32[1] + v53;
            *v32 -= v54;
            v32[1] = v58;
            v32 += 2;
            v31 = (v31 + v20);
            v29 = (v29 + v27);
            v28 += 2;
            --v33;
          }

          while (v33);
          ++v17;
          v23 = (v23 + v24);
          v26 = (v26 + v24);
          result += v24;
        }

        while (v17 != v16);
      }
    }

    v6 = v202;
    v11 = v203 - 1;
  }

  while (v203 > 0);
  return result;
}

uint64_t compute_allocation(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int *a7, int *a8, int a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t *a16, int a17, int a18, unsigned int a19)
{
  v198 = a8;
  v204 = a7;
  v201 = a5;
  v21 = a2;
  v211 = a1;
  v215 = *MEMORY[0x277D85DE8];
  v213 = *(a1 + 8);
  v208 = a9 > 7;
  v22 = (a9 & ~(a9 >> 31)) - 8 * v208;
  v203 = a4;
  if (a14 == 2)
  {
    v23 = LOG2_FRAC_TABLE[a3 - a2];
    v24 = 8 * (v22 - v23 > 7);
    v25 = v22 - v23 - v24;
    v26 = v22 < v23;
    if (v22 < v23)
    {
      v23 = 0;
    }

    v192 = v23;
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v24;
    }

    v194 = v27;
    if (!v26)
    {
      v22 = v25;
    }
  }

  else
  {
    v192 = 0;
    v194 = 0;
  }

  v209 = a16;
  v196 = a13;
  v197 = a12;
  v212 = a11;
  v195 = a10;
  v28 = 4 * v213;
  v29 = (4 * v213 + 15) & 0xFFFFFFFFFFFFFFF0;
  v214 = &v190 - v29;
  bzero(&v190 - v29, 4 * v213);
  v206 = &v190 - v29;
  bzero(&v190 - v29, v28);
  v30 = &v190 - v29;
  bzero(&v190 - v29, v28);
  v205 = &v190 - v29;
  bzero(&v190 - v29, v28);
  v31 = 8 * a14;
  v210 = &v190 - v29;
  if (v21 >= a3)
  {
    v35 = a3;
    v34 = v21;
    v46 = v201;
    v32 = v211;
    v54 = v214;
    v47 = v203;
    v41 = v205;
  }

  else
  {
    v32 = v211;
    v33 = a6 - a15 - 5;
    v34 = v21;
    v35 = a3;
    v36 = (*(v211 + 24) + 2 * v21);
    v39 = *v36;
    v37 = v36 + 1;
    v38 = v39;
    v40 = &v30[4 * v21];
    v41 = v205;
    v42 = &v205[4 * v21];
    v43 = a14 * v33;
    v44 = v43 * (~v21 + a3);
    v45 = a3 - v21;
    v46 = v201;
    v47 = v203;
    do
    {
      v48 = *v37++;
      v49 = v48 - v38;
      v50 = v48;
      v51 = (8 * ((3 * v49) << a15)) >> 4;
      if (v31 > v51)
      {
        v51 = 8 * a14;
      }

      *v40++ = v51;
      v52 = (v44 * v49) << (a15 + 3) >> 6;
      if (v49 << a15 == 1)
      {
        v53 = 8 * a14;
      }

      else
      {
        v53 = 0;
      }

      *v42 = v52 - v53;
      v42 += 4;
      v44 -= v43;
      v38 = v50;
      --v45;
    }

    while (v45);
    v54 = v214;
  }

  v202 = a19;
  v191 = 8 * v208;
  v55 = *(v32 + 44);
  v56 = v55 - 1;
  v57 = v41 - 4;
  LODWORD(v205) = a18;
  v208 = a17;
  v58 = v210 - 4;
  v59 = v46 - 4;
  v60 = 1;
  v200 = v35;
  v214 = v21;
  do
  {
    while (1)
    {
      v61 = (v60 + v56) >> 1;
      if (v21 < a3)
      {
        break;
      }

      if (v22 >= 0)
      {
        v60 = v61 + 1;
      }

      else
      {
        v56 = v61 - 1;
      }

      if (v60 > v56)
      {
        v84 = v21;
        goto LABEL_57;
      }
    }

    v62 = v41;
    v63 = 0;
    v64 = 0;
    v65 = *(v32 + 24);
    LOWORD(v66) = *(v65 + 2 * v35);
    v67 = v65 - 2;
    v68 = v35;
    do
    {
      v69 = v66;
      v66 = *(v67 + 2 * v68);
      v70 = ((v69 - v66) * a14 * *(*(v32 + 48) + v213 * v61 - 1 + v68)) << a15 >> 2;
      if (v70 >= 1)
      {
        v70 = (*&v57[4 * v68] + v70) & ~((*&v57[4 * v68] + v70) >> 31);
      }

      v71 = *(v47 - 4 + 4 * v68) + v70;
      if (v64 || v71 >= *&v58[4 * v68])
      {
        if (v71 >= *(v59 + 4 * v68))
        {
          v71 = *(v59 + 4 * v68);
        }

        v64 = 1;
      }

      else
      {
        v64 = 0;
        if (v71 >= v31)
        {
          v71 = 8 * a14;
        }

        else
        {
          v71 = 0;
        }
      }

      --v68;
      v63 += v71;
    }

    while (v68 > v34);
    if (v63 <= v22)
    {
      v60 = v61 + 1;
    }

    else
    {
      v56 = v61 - 1;
    }

    v41 = v62;
  }

  while (v60 <= v56);
  v72 = 0;
  v73 = (*(v32 + 24) + 2 * v34);
  v74 = *(v32 + 48) + v34;
  v75 = v74 + v60 * v213;
  v76 = v74 + (v60 - 1) * v213;
  v79 = *v73;
  v78 = v73 + 1;
  v77 = v79;
  v80 = v46 + 4 * v34;
  v81 = &v62[4 * v34];
  v82 = v47 + 4 * v34;
  v83 = v34 - v35;
  v84 = v21;
  v85 = (v206 + 4 * v34);
  do
  {
    v86 = (v78[v72] - v77) * a14;
    if (v60 >= v55)
    {
      v87 = *(v80 + 4 * v72);
    }

    else
    {
      v87 = (v86 * *(v75 + v72)) << a15 >> 2;
    }

    v88 = (v86 * *(v76 + v72)) << a15 >> 2;
    if (v88 >= 1)
    {
      v88 = (*&v81[4 * v72] + v88) & ~((*&v81[4 * v72] + v88) >> 31);
    }

    if (v87 >= 1)
    {
      v87 = (*&v81[4 * v72] + v87) & ~((*&v81[4 * v72] + v87) >> 31);
    }

    v77 = v78[v72];
    v89 = *(v82 + 4 * v72);
    if (v60 <= 1)
    {
      v90 = 0;
    }

    else
    {
      v90 = *(v82 + 4 * v72);
    }

    v91 = v88 + v90;
    if (v89 > 0)
    {
      v84 = v34 + v72;
    }

    *&v54[4 * v34 + 4 * v72] = v91;
    *&v85[4 * v72++] = (v87 - v91 + v89) & ~((v87 - v91 + v89) >> 31);
    LODWORD(v21) = v214;
  }

  while (v83 + v72);
LABEL_57:
  v92 = 0;
  v93 = 0;
  v193 = a14 > 1;
  v94 = (v206 - 4);
  v95 = v54 - 4;
  v96 = 64;
  v97 = v212;
  do
  {
    while (v21 >= a3)
    {
      if (v22 < 0)
      {
        v96 = (v93 + v96) >> 1;
      }

      else
      {
        v93 = (v93 + v96) >> 1;
      }

      if (++v92 == 6)
      {
        v102 = 0;
        goto LABEL_87;
      }
    }

    v98 = 0;
    v99 = 0;
    v100 = v200;
    do
    {
      v101 = *&v95[4 * v100] + ((*&v94[4 * v100] * ((v93 + v96) >> 1)) >> 6);
      if (v99 || v101 >= *&v58[4 * v100])
      {
        if (v101 >= *(v59 + 4 * v100))
        {
          v101 = *(v59 + 4 * v100);
        }

        v99 = 1;
      }

      else
      {
        v99 = 0;
        if (v101 >= v31)
        {
          v101 = 8 * a14;
        }

        else
        {
          v101 = 0;
        }
      }

      --v100;
      v98 += v101;
    }

    while (v100 > v34);
    if (v98 > v22)
    {
      v96 = (v93 + v96) >> 1;
    }

    else
    {
      v93 = (v93 + v96) >> 1;
    }

    ++v92;
  }

  while (v92 != 6);
  v102 = 0;
  v103 = 0;
  v104 = v200;
  do
  {
    v105 = *&v95[4 * v104] + ((*&v94[4 * v104] * v93) >> 6);
    v103 |= v105 >= *&v58[4 * v104];
    if (v105 >= v31)
    {
      v106 = 8 * a14;
    }

    else
    {
      v106 = 0;
    }

    if ((v103 & 1) == 0)
    {
      v105 = v106;
    }

    if (v105 >= *(v59 + 4 * v104))
    {
      v105 = *(v59 + 4 * v104);
    }

    *(v97 - 4 + 4 * v104) = v105;
    v102 += v105;
    --v104;
  }

  while (v104 > v34);
LABEL_87:
  v199 = a3;
  if (a3 - 1 <= v84)
  {
    v107 = a3;
    v124 = v192;
LABEL_111:
    v126 = v22 + v191;
LABEL_112:
    v127 = v198;
    if (v124 > 0)
    {
      if (!v208)
      {
        goto LABEL_119;
      }

      v128 = v204;
      v129 = *v204;
      if (*v204 >= v107)
      {
        v129 = v107;
      }

      *v204 = v129;
      v130 = v214;
      ec_enc_uint(v209, v129 - v214, v107 - v214 + 1);
      v32 = v211;
      v97 = v212;
      v131 = *v128;
LABEL_127:
      if (v131 <= v130)
      {
        v134 = v194;
      }

      else
      {
        v134 = 0;
      }

      if (v194 && v131 > v130)
      {
        v135 = v193;
        if (!v208)
        {
          goto LABEL_134;
        }

        ec_enc_bit_logp(v209, *v127, 1);
        v32 = v211;
        v97 = v212;
        goto LABEL_138;
      }

LABEL_136:
      v135 = v193;
      goto LABEL_137;
    }

LABEL_126:
    v131 = 0;
    *v204 = 0;
    v130 = v214;
    goto LABEL_127;
  }

  LODWORD(v203) = v21 + 2;
  v107 = a3;
  v108 = a3 - 1;
  v202 = v202;
  v109 = v84;
  v213 = &LOG2_FRAC_TABLE[-v34];
  v110 = v192;
  v111 = v210;
  v206 = v84;
  v207 = v22;
  while (1)
  {
    v112 = *(v32 + 24);
    v113 = *(v112 + 2 * v107);
    v114 = *(v112 + 2 * v34);
    v115 = (v22 - v102) / (v113 - v114);
    LODWORD(v112) = *(v112 + 2 * v108);
    v116 = v22 - v102 + v114 - (v112 + (v113 - v114) * v115);
    v117 = v116 & ~(v116 >> 31);
    v118 = v113 - v112;
    v119 = *(v97 + 4 * v108);
    v120 = v119 + v118 * v115 + v117;
    v121 = *&v111[4 * v108];
    if (v121 <= v31 + 8)
    {
      v121 = v31 + 8;
    }

    if (v120 < v121)
    {
      goto LABEL_102;
    }

    if (v208)
    {
      v122 = v110;
      if (v107 <= v203 || (v107 <= v205 ? (v123 = 7) : (v123 = 9), v108 <= v202 && v120 > (8 * ((v118 * v123) << a15)) >> 4))
      {
        ec_enc_bit_logp(v209, 1, 1);
        v32 = v211;
        v97 = v212;
        v124 = v122;
        v126 = v207;
        goto LABEL_112;
      }

      ec_enc_bit_logp(v209, 0, 1);
      goto LABEL_101;
    }

    v122 = v110;
    if (ec_dec_bit_logp(v209, 1))
    {
      break;
    }

LABEL_101:
    v102 += 8;
    v120 -= 8;
    v32 = v211;
    v97 = v212;
    v119 = *(v212 + 4 * v108);
    v110 = v122;
    v22 = v207;
    v111 = v210;
    v109 = v206;
LABEL_102:
    if (v110)
    {
      v124 = v213[v108];
    }

    else
    {
      v124 = 0;
    }

    if (v120 >= v31)
    {
      v125 = 8 * a14;
    }

    else
    {
      v125 = 0;
    }

    v102 = v102 - v110 - v119 + v124 + v125;
    *(v97 + 4 * v108--) = v125;
    v107 = (v107 - 1);
    v110 = v124;
    if (v108 <= v109)
    {
      goto LABEL_111;
    }
  }

  v26 = v122 <= 0;
  v127 = v198;
  v32 = v211;
  v97 = v212;
  v126 = v207;
  if (v26)
  {
    goto LABEL_126;
  }

LABEL_119:
  v132 = v214;
  v133 = ec_dec_uint(v209, v107 - v214 + 1);
  *v204 = v133 + v132;
  if (v133 + v132 <= v132)
  {
    v134 = v194;
  }

  else
  {
    v134 = 0;
  }

  if (!v194)
  {
    v32 = v211;
    v97 = v212;
    goto LABEL_136;
  }

  v26 = v133 + v132 <= v132;
  v32 = v211;
  v97 = v212;
  v135 = v193;
  if (!v26)
  {
LABEL_134:
    v136 = ec_dec_bit_logp(v209, 1);
    v32 = v211;
    v97 = v212;
    *v127 = v136;
    goto LABEL_138;
  }

LABEL_137:
  *v127 = 0;
LABEL_138:
  if (v107 > v214)
  {
    v137 = v126 - v102 + v134;
    v138 = *(v32 + 24);
    v139 = *(v138 + 2 * v34);
    v140 = *(v138 + 2 * v107) - v139;
    v141 = v137 / v140;
    v142 = v137 % v140;
    v143 = (v97 + 4 * v34);
    v144 = v138 + 2 * v34;
    v145 = v107 - v34;
    v146 = (v144 + 2);
    v147 = v145;
    v148 = v143;
    v149 = v139;
    do
    {
      v150 = *v146++;
      *v148++ += (v150 - v149) * v141;
      v149 = v150;
      --v147;
    }

    while (v147);
    v151 = (v144 + 2);
    v152 = v139;
    v153 = v201;
    v155 = v196;
    v154 = v197;
    do
    {
      v156 = *v151++;
      v157 = v156 - v152;
      v158 = v156;
      if (v142 < v157)
      {
        v157 = v142;
      }

      *v143++ += v157;
      v142 -= v157;
      v152 = v158;
      --v145;
    }

    while (v145);
    v159 = 0;
    if (a14 <= 1)
    {
      v160 = 3;
    }

    else
    {
      v160 = 4;
    }

    v161 = v138 + 2;
    while (1)
    {
      v162 = *(v161 + 2 * v34);
      v163 = (v162 - v139) << a15;
      v164 = *(v97 + 4 * v34) + v159;
      if (v163 < 2)
      {
        v168 = (v164 - v31) & ~((v164 - v31) >> 31);
        if (v164 >= v31)
        {
          v164 = 8 * a14;
        }

        *(v97 + 4 * v34) = v164;
        *(v154 + 4 * v34) = 0;
        *(v155 + 4 * v34) = 1;
        if (v168)
        {
LABEL_159:
          v169 = v168 >> v160;
          v170 = *(v154 + 4 * v34);
          if ((v168 >> v160) >= 8 - v170)
          {
            v169 = 8 - v170;
          }

          *(v154 + 4 * v34) = v169 + v170;
          v171 = v169 * v31;
          *(v155 + 4 * v34) = v171 >= (v168 - v159);
          v159 = v168 - v171;
          goto LABEL_176;
        }
      }

      else
      {
        v165 = 0;
        v166 = *(v153 + 4 * v34);
        v167 = v164 - v166;
        if (v164 >= v166)
        {
          v164 = *(v153 + 4 * v34);
        }

        *(v97 + 4 * v34) = v164;
        if (a14 == 2 && v163 != 2)
        {
          if (*v127)
          {
            v165 = 0;
          }

          else
          {
            v165 = v34 < *v204;
          }
        }

        v172 = v165 + v163 * a14;
        v173 = (8 * a15 + *(*(v32 + 56) + 2 * v34)) * v172;
        v174 = 8 * v172;
        if (v163 == 2)
        {
          v175 = (8 * v172) >> 2;
        }

        else
        {
          v175 = 0;
        }

        v176 = v175 - 21 * v172 + (v173 >> 1);
        v177 = v176 + v164;
        v178 = v176 + (v173 >> 3);
        if (v176 + v164 >= 24 * v172)
        {
          v178 = v176;
        }

        v179 = v176 + (v173 >> 2);
        if (v177 >= 16 * v172)
        {
          v179 = v178;
        }

        v180 = ((v164 + 4 * v172 + v179) / v174) & ~(((v164 + 4 * v172 + v179) / v174) >> 31);
        *(v154 + 4 * v34) = v180;
        v97 = v212;
        v181 = *(v212 + 4 * v34);
        if (v180 * a14 > v181 >> 3)
        {
          v180 = v181 >> v135 >> 3;
        }

        if (v180 >= 8)
        {
          v180 = 8;
        }

        *(v154 + 4 * v34) = v180;
        *(v155 + 4 * v34) = v180 * v174 >= *(v97 + 4 * v34) + v179;
        v168 = v167 & ~(v167 >> 31);
        *(v97 + 4 * v34) -= *(v154 + 4 * v34) * v31;
        if (v168)
        {
          goto LABEL_159;
        }
      }

      v159 = 0;
LABEL_176:
      ++v34;
      v139 = v162;
      if (v107 == v34)
      {
        v182 = v107;
        goto LABEL_179;
      }
    }
  }

  v159 = 0;
  v155 = v196;
  v154 = v197;
  v182 = v214;
LABEL_179:
  v183 = v199;
  *v195 = v159;
  if (v182 < v183)
  {
    v184 = v200 - v182;
    v185 = (v155 + 4 * v182);
    v186 = (v154 + 4 * v182);
    v187 = (v97 + 4 * v182);
    do
    {
      *v186 = *v187 >> v135 >> 3;
      *v187++ = 0;
      v188 = *v186++;
      *v185++ = v188 < 1;
      --v184;
    }

    while (v184);
  }

  return v107;
}

uint64_t clt_mdct_forward(int *a1, uint64_t a2, _DWORD *a3, __int16 *a4, uint64_t a5, int a6, int a7)
{
  v87 = a7;
  v93 = *MEMORY[0x277D85DE8];
  v12 = (*a1 >> a6);
  v13 = v12 >> 1;
  v91 = a1;
  v92 = v12;
  v14 = v12 >> 2;
  v15 = 4 * (v12 >> 1);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = (&v86 - v16);
  v88 = v15;
  bzero(&v86 - v16, v15);
  v18 = &v86 - v16;
  v19 = a2 + 4 * v13;
  v20 = v19 - 4;
  v21 = (a5 + 3) >> 2;
  v89 = (&v86 - v16);
  v86 = a5;
  if (v21 < 1)
  {
    v35 = 0;
    v37 = a5 >> 1;
    v34 = (a2 + 4 * (a5 >> 1));
    v36 = (v20 + 4 * v37);
  }

  else
  {
    v22 = a5 >> 1;
    v23 = &a4[v22];
    v24 = v23 - 1;
    v25 = a2 - 4;
    v26 = (a5 + 3) >> 2;
    v27 = (&v86 - v16);
    do
    {
      v29 = *v24;
      v24 -= 2;
      v28 = v29;
      v30 = (*(v19 + 4 * v22) >> 16) * v29;
      v31 = *(v19 + 4 * v22) * v29;
      v32 = *v23;
      v23 += 2;
      v33 = ((*(a2 + 4 * v22) * v32) >> 15) - ((*(v25 + 4 * v22) * v28) >> 15) + 2 * ((*(a2 + 4 * v22) >> 16) * v32 - (*(v25 + 4 * v22) >> 16) * v28);
      v17 = v27 + 2;
      v19 += 8;
      a2 += 8;
      *v27 = ((*(v20 + 4 * v22) * v32) >> 15) + (v31 >> 15) + 2 * (v30 + (*(v20 + 4 * v22) >> 16) * v32);
      v27[1] = v33;
      v20 -= 8;
      v25 -= 8;
      v27 += 2;
      --v26;
    }

    while (v26);
    v34 = (a2 + 4 * v22);
    v35 = v21;
    v36 = (v20 + 4 * v22);
  }

  v38 = v92 >> 1;
  v90 = v18;
  bzero(v18, v88);
  v39 = v14 - v21;
  if (v35 >= v14 - v21)
  {
    v40 = v91;
  }

  else
  {
    v40 = v91;
    do
    {
      v42 = *v36;
      v36 -= 2;
      v41 = v42;
      v43 = *v34;
      v34 += 2;
      *v17 = v41;
      v17[1] = v43;
      v17 += 2;
      ++v35;
    }

    while (v35 < v39);
    v35 = v39;
  }

  v44 = v90;
  v45 = v14 - v35;
  if (v14 > v35)
  {
    v46 = &a4[v86 - 1];
    do
    {
      v48 = *a4;
      a4 += 2;
      v47 = v48;
      v50 = *v46;
      v46 -= 2;
      v49 = v50;
      v51 = ((*v36 * v50) >> 15) - ((v34[-v38] * v47) >> 15) + 2 * ((*v36 >> 16) * v50 - (v34[-v38] >> 16) * v47);
      v52 = *v34;
      v34 += 2;
      v53 = ((v36[v38] * v47) >> 15) + ((v52 * v49) >> 15) + 2 * ((v52 >> 16) * v49 + (v36[v38] >> 16) * v47);
      *v17 = v51;
      v17[1] = v53;
      v17 += 2;
      v36 -= 2;
      --v45;
    }

    while (v45);
  }

  if (v14 <= 0)
  {
    return opus_fft(*&v40[2 * a6 + 2], v89, v44);
  }

  v54 = 0;
  v55 = *(v40 + 5);
  v56 = (((v92 >> 1) + 25736) / v92);
  v57 = 2 * v56;
  v58 = -2 * v56;
  v59 = v14;
  v60 = v89;
  v61 = v89;
  do
  {
    v62 = *(v55 + 2 * (v54 << a6));
    v63 = *v61 >> 16;
    v64 = *v61;
    v65 = *(v55 + 2 * (v59 << a6));
    v66 = v61[1] >> 16;
    v67 = v61[1];
    v68 = ((v67 * v65) >> 15) + ((v64 * v62) >> 15) + 2 * (v63 * v62 + v66 * v65);
    v69 = ((v64 * v65) >> 15) + 2 * v63 * v65 - (2 * v62 * v66 + ((v67 * v62) >> 15));
    *v61 = v57 * (v69 >> 16) - v68 + ((v69 * v56) >> 15);
    v61[1] = v69 + v58 * (-v68 >> 16) - ((-v68 * v56) >> 15);
    v61 += 2;
    ++v54;
    --v59;
  }

  while (v59);
  v70 = v44;
  opus_fft(*&v40[2 * a6 + 2], v60, v44);
  v71 = 0;
  v72 = *(v40 + 5);
  v73 = &a3[(v38 - 1) * v87];
  v74 = -8 * v87;
  v75 = 8 * v87;
  v76 = (v70 + 4);
  do
  {
    v77 = *(v72 + 2 * (v14 << a6));
    v78 = *v76 >> 16;
    v79 = *v76;
    v80 = *(v72 + 2 * (v71 << a6));
    v81 = *(v76 - 1) >> 16;
    v82 = *(v76 - 1);
    v83 = ((v82 * v80) >> 15) + ((v79 * v77) >> 15) + 2 * (v78 * v77 + v81 * v80);
    result = (v81 * v77);
    v85 = ((v82 * v77) >> 15) - ((v79 * v80) >> 15) + 2 * (result - v78 * v80);
    ++v71;
    *a3 = v83 + v58 * (v85 >> 16) - ((v85 * v56) >> 15);
    *v73 = v85 + v57 * (v83 >> 16) + ((v83 * v56) >> 15);
    v73 = (v73 + v74);
    a3 = (a3 + v75);
    v76 += 2;
    --v14;
  }

  while (v14);
  return result;
}

unint64_t clt_mdct_backward(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v66 = a5;
  v68 = *MEMORY[0x277D85DE8];
  v13 = *a1 >> a6;
  v14 = v13 >> 2;
  v67 = v13 >> 1;
  v15 = 4 * (v13 >> 1);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, v15);
  v17 = ((v13 >> 1) + 25736) / v13;
  v18 = v17;
  v19 = 2 * v17;
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = &a2[(v67 - 1) * a7];
    v22 = v17 << 16;
    v23 = *(a1 + 40);
    v24 = -(v22 >> 15);
    v25 = v14;
    v26 = v16;
    do
    {
      v27 = *(v23 + 2 * (v20 << a6));
      v28 = *v21 >> 16;
      v29 = *v21;
      v30 = *(v23 + 2 * (v25 << a6));
      v31 = *a2 >> 16;
      v32 = *a2;
      v33 = 2 * v30 * v31 - (2 * v28 * v27 + ((v29 * v27) >> 15)) + ((v32 * v30) >> 15);
      v34 = ((v32 * v27) >> 15) + ((v29 * v30) >> 15) + 2 * (v28 * v30 + v31 * v27);
      ++v20;
      *v26 = v33 + v24 * (-v34 >> 16) - ((-v34 * v18) >> 15);
      v26[1] = v19 * (v33 >> 16) - v34 + ((v33 * v18) >> 15);
      v26 += 2;
      a2 += 2 * a7;
      v21 -= 2 * a7;
      --v25;
    }

    while (v25);
  }

  v35 = v66;
  v36 = (a3 + 4 * (v66 >> 1));
  result = opus_ifft(*(a1 + 8 * a6 + 8), v16, v36);
  v38 = (v14 + 1) >> 1;
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = *(a1 + 40);
    v41 = (4 * v67 + 4 * (v35 >> 1) + a3 - 4);
    do
    {
      v42 = *(v40 + 2 * (v39 << a6));
      v43 = *(v40 + 2 * (v14 << a6));
      v44 = *v36 >> 16;
      v45 = *v36;
      v46 = v36[1] >> 16;
      v47 = v36[1];
      v48 = ((v45 * v42) >> 15) - ((v47 * v43) >> 15) + 2 * (v44 * v42 - v46 * v43);
      v49 = ((v45 * v43) >> 15) + ((v47 * v42) >> 15) + 2 * (v46 * v42 + v44 * v43);
      v50 = *(v41 - 1);
      v51 = *v41;
      *v36 = v19 * (v49 >> 16) - v48 + ((v49 * v18) >> 15);
      v52 = v48 * v18;
      v53 = v49 + v19 * (v48 >> 16);
      v54 = *(v40 + 2 * (--v14 << a6));
      v55 = *(v40 + 2 * (++v39 << a6));
      v56 = v51;
      v51 >>= 16;
      result = (((v50 * v54) >> 15) - ((v56 * v55) >> 15) + 2 * ((v50 >> 16) * v54 - v51 * v55));
      v57 = ((v50 * v55) >> 15) + ((v56 * v54) >> 15) + 2 * (v51 * v54 + (v50 >> 16) * v55);
      *(v41 - 1) = v19 * (v57 >> 16) - result + ((v57 * v18) >> 15);
      *v41 = v53 + (v52 >> 15);
      v36[1] = v57 + v19 * (result >> 16) + ((result * v18) >> 15);
      v36 += 2;
      v41 -= 2;
    }

    while (v38 != v39);
  }

  if (v35 > 1)
  {
    v58 = 0;
    v59 = v35 - 1;
    do
    {
      v60 = *(a4 + 2 * v59);
      v61 = *(a3 + 4 * v58) >> 16;
      v62 = *(a3 + 4 * v58);
      v63 = *(a4 + 2 * v58);
      result = (*(a3 + 4 * v59) >> 16);
      v64 = *(a3 + 4 * v59);
      *(a3 + 4 * v58) = ((v62 * v60) >> 15) - ((v64 * v63) >> 15) + 2 * (v61 * v60 - result * v63);
      *(a3 + 4 * v59) = ((v62 * v63) >> 15) + ((v64 * v60) >> 15) + 2 * (result * v60 + v61 * v63);
      ++v58;
      --v59;
    }

    while (v35 / 2 != v58);
  }

  return result;
}

uint64_t *encode_pulses(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v4 = a2;
  v5 = *(a1 + 4 * a2 - 4);
  v6 = v5 >> 31;
  if (v5 >= 0)
  {
    v7 = *(a1 + 4 * a2 - 4);
  }

  else
  {
    v7 = -v5;
  }

  v8 = 2;
  do
  {
    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(&CELT_PVQ_U_ROW + v9);
    if (v8 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    v6 += *(v10 + 4 * v11);
    v12 = *(a1 - 8 + 4 * v4);
    if (v12 >= 0)
    {
      v13 = *(a1 - 8 + 4 * v4);
    }

    else
    {
      v13 = -v12;
    }

    v7 += v13;
    if (v12 < 0)
    {
      if (v8 > v7)
      {
        v14 = v7 + 1;
      }

      else
      {
        v14 = v8;
      }

      v15 = *(&CELT_PVQ_U_ROW + v14);
      if (v8 <= v7 + 1)
      {
        v16 = v7 + 1;
      }

      else
      {
        v16 = v8;
      }

      v6 += *(v15 + 4 * v16);
    }

    --v4;
    ++v8;
  }

  while (v4 > 1);
  if (a2 >= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = a2;
  }

  v18 = *(&CELT_PVQ_U_ROW + v17);
  if (a2 <= a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = a2;
  }

  v20 = *(v18 + 4 * v19);
  if (a3 + 1 < a2)
  {
    v21 = a3 + 1;
  }

  else
  {
    v21 = a2;
  }

  v22 = *(&CELT_PVQ_U_ROW + v21);
  if (a3 + 1 > a2)
  {
    v23 = a3 + 1;
  }

  else
  {
    v23 = a2;
  }

  return ec_enc_uint(a4, v6, *(v22 + 4 * v23) + v20);
}

uint64_t decode_pulses(int *a1, int a2, int a3, uint64_t a4)
{
  v4 = a3;
  if (a2 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(&CELT_PVQ_U_ROW + v7);
  if (a2 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v8 + 4 * v9);
  if (a3 + 1 < a2)
  {
    v11 = a3 + 1;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(&CELT_PVQ_U_ROW + v11);
  if (a3 + 1 > a2)
  {
    v13 = a3 + 1;
  }

  else
  {
    v13 = a2;
  }

  result = ec_dec_uint(a4, *(v12 + 4 * v13) + v10);
  if (a2 >= 3)
  {
    v15 = a2;
    do
    {
      if (v15 <= v4)
      {
        v27 = *(&CELT_PVQ_U_ROW + v15);
        v28 = *(v27 + 4 * v4 + 4);
        if (result >= v28)
        {
          v29 = *(v27 + 4 * v4 + 4);
        }

        else
        {
          v29 = 0;
        }

        v30 = result - v29;
        if (*(v27 + 4 * v15) <= v30)
        {
          v35 = v4;
          v31 = v4 + 1;
          do
          {
            v33 = *(v27 + 4 * v35);
            v35 = v31 - 2;
            --v31;
          }

          while (v33 > v30);
        }

        else
        {
          v31 = v15;
          do
          {
            v32 = &CELT_PVQ_U_ROW + v31--;
            v33 = *(*(v32 - 1) + v15);
          }

          while (v33 > v30);
        }

        v19 = result >= v28;
        result = v30 - v33;
        v34 = v4 - v31;
        if (v19)
        {
          v34 = v31 - v4;
        }

        v4 = v31;
      }

      else
      {
        v16 = &CELT_PVQ_U_ROW + v4;
        v17 = *(*v16 + v15);
        v18 = *(v16[1] + v15);
        v19 = result < v17 || result >= v18;
        if (v19)
        {
          v20 = 0;
          if (result >= v18)
          {
            v21 = *(v16[1] + v15);
          }

          else
          {
            v21 = 0;
          }

          v22 = result - v21;
          v23 = (v16 - 1);
          do
          {
            v24 = *v23--;
            v25 = *(v24 + 4 * v15);
            ++v20;
            v19 = v22 >= v25;
            v26 = v22 - v25;
          }

          while (!v19);
          v4 -= v20;
          if (result < v18)
          {
            v34 = v20;
          }

          else
          {
            v34 = -v20;
          }

          result = v26;
        }

        else
        {
          v34 = 0;
          result = result - v17;
        }
      }

      *a1++ = v34;
    }

    while (v15-- > 3);
  }

  if (result > 2 * v4)
  {
    v37 = ~(2 * v4);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37 + result;
  v39 = v38 + 1;
  v40 = v4 - ((v38 + 1) >> 1);
  if (result > 2 * v4)
  {
    v40 = ((v38 + 1) >> 1) - v4;
  }

  v41 = ((v38 + 1) & 0xFFFFFFFE) - 1;
  v19 = v39 >= 2;
  v42 = v39 >> 1;
  if (!v19)
  {
    v41 = 0;
  }

  *a1 = v40;
  a1[1] = (v42 - (v38 - v41)) ^ (v41 - v38);
  return result;
}