uint64_t silk_control_encoder(uint64_t a1, uint64_t a2, signed int a3, int a4, int a5, int a6)
{
  v10 = *(a2 + 48);
  *(a1 + 6128) = *(a2 + 44);
  *(a1 + 4708) = v10;
  v11 = *(a2 + 8);
  *(a1 + 4580) = v11;
  *(a1 + 4588) = *(a2 + 12);
  *(a1 + 4596) = *(a2 + 20);
  *(a1 + 6140) = *(a2 + 40);
  *(a1 + 5800) = *a2;
  *(a1 + 4560) = a4;
  *(a1 + 5808) = a5;
  if (!*(a1 + 4700) || *(a1 + 4712))
  {
    v12 = silk_control_audio_bandwidth(a1, a2);
    if (!a6)
    {
      a6 = v12;
    }

    v13 = silk_setup_resamplers(a1, a6);
    v14 = *(a2 + 24);
    if (*(a1 + 4636) == v14)
    {
      v15 = 0;
      v16 = *(a1 + 4600);
LABEL_29:
      v22 = 5 * a6;
      if (v16 != a6)
      {
        *(a1 + 7224) = 0u;
        bzero((a1 + 7240), 0x45CuLL);
        bzero((a1 + 144), 0x111CuLL);
        *(a1 + 4524) = 0u;
        *(a1 + 4540) = 0u;
        *(a1 + 16) = 0;
        *(a1 + 5788) = 0;
        *(a1 + 5796) = 0;
        *(a1 + 4632) = 0;
        *(a1 + 4568) = 100;
        *(a1 + 4696) = 1;
        *(a1 + 8352) = 100;
        *(a1 + 7224) = 10;
        *(a1 + 4500) = 100;
        *(a1 + 4516) = 0x10000;
        *(a1 + 4565) = 0;
        *(a1 + 4600) = a6;
        v23 = *(a1 + 4604);
        if (a6 == 8)
        {
          v24 = &silk_pitch_contour_10_ms_NB_iCDF;
          if (v23 == 4)
          {
            v24 = &silk_pitch_contour_NB_iCDF;
          }

          v25 = &silk_NLSF_CB_NB_MB;
          v26 = 10;
        }

        else
        {
          v24 = &silk_pitch_contour_10_ms_iCDF;
          if (v23 == 4)
          {
            v24 = &silk_pitch_contour_iCDF;
          }

          if (a6 == 12)
          {
            v26 = 10;
          }

          else
          {
            v26 = 16;
          }

          v25 = &silk_NLSF_CB_WB;
          if (a6 == 12)
          {
            v25 = &silk_NLSF_CB_NB_MB;
          }
        }

        *(a1 + 4728) = v24;
        *(a1 + 4664) = v26;
        *(a1 + 4736) = v25;
        *(a1 + 4612) = v22;
        *(a1 + 4608) = v23 * v22;
        *(a1 + 4616) = 20 * a6;
        *(a1 + 4620) = 2 * a6;
        *(a1 + 4576) = 18 * a6;
        if (v23 == 4)
        {
          v27 = 24;
        }

        else
        {
          v27 = 14;
        }

        *(a1 + 4572) = v27 * a6;
        if (a6 == 16)
        {
          v28 = silk_uniform8_iCDF;
          v29 = 10;
        }

        else if (a6 == 12)
        {
          v28 = &silk_uniform6_iCDF;
          v29 = 13;
        }

        else
        {
          v28 = silk_uniform4_iCDF;
          v29 = 15;
        }

        *(a1 + 4684) = v29;
        *(a1 + 4720) = v28;
      }

      v30 = *(a2 + 36);
      if (v30 > 1)
      {
        if (v30 > 3)
        {
          if (v30 > 5)
          {
            v33 = (a1 + 4668);
            v34 = 983 * a6;
            if (v30 > 7)
            {
              *(a1 + 4624) = v22;
              *(a1 + 4652) = 4;
              *(a1 + 4656) = 0x1000000001;
              *v33 = xmmword_26ED6BFF0;
              *(a1 + 4692) = 32;
              *(a1 + 4704) = v34;
              v32 = 16;
            }

            else
            {
              *(a1 + 4660) = 14;
              *(a1 + 4624) = v22;
              *(a1 + 4652) = 0x100000003;
              *v33 = xmmword_26ED6C000;
              *(a1 + 4692) = 16;
              *(a1 + 4704) = v34;
              v32 = 12;
            }
          }

          else
          {
            *(a1 + 4624) = v22;
            *(a1 + 4652) = 2;
            *(a1 + 4656) = 0xC00000001;
            *(a1 + 4668) = xmmword_26ED6C010;
            *(a1 + 4692) = 8;
            *(a1 + 4704) = 983 * a6;
            v32 = 10;
          }
        }

        else
        {
          *(a1 + 4668) = 1;
          *(a1 + 4676) = 49807;
          *(a1 + 4624) = v22;
          *(a1 + 4652) = 1;
          *(a1 + 4656) = 0xA00000000;
          *(a1 + 4692) = 4;
          *(a1 + 4704) = 0;
          v32 = 8;
        }

        v31 = 5 * a6;
      }

      else
      {
        *(a1 + 4676) = 0x10000CCCDLL;
        *(a1 + 4668) = 0;
        v31 = 3 * a6;
        *(a1 + 4624) = 3 * a6;
        *(a1 + 4652) = 1;
        *(a1 + 4656) = 0x800000000;
        *(a1 + 4692) = 2;
        *(a1 + 4704) = 0;
        v32 = 6;
      }

      result = (v15 + v13);
      if (v32 >= *(a1 + 4664))
      {
        v32 = *(a1 + 4664);
      }

      *(a1 + 4672) = v32;
      *(a1 + 4628) = v22 + 2 * v31;
      *(a1 + 4648) = v30;
      v35 = *(a2 + 32);
      *(a1 + 4640) = v35;
      *(a1 + 6144) = 0;
      if (*(a1 + 6140) && v35 >= 1)
      {
        if (a6 == 12)
        {
          v36 = 14000;
        }

        else
        {
          v36 = 16000;
        }

        if (a6 == 8)
        {
          v36 = 12000;
        }

        v37 = 125 - v35;
        if (v35 >= 0x19)
        {
          v37 = 100;
        }

        if ((655 * ((v36 * v37) >> 16) + ((655 * ((v36 * v37) & 0xFFF0u)) >> 16)) < a3)
        {
          *(a1 + 6144) = 1;
          v38 = -26214 * HIWORD(v35) - ((26214 * v35) >> 16) + 7;
          if (v38 <= 2)
          {
            v38 = 2;
          }

          *(a1 + 6148) = v38;
        }
      }

      *(a1 + 4700) = 1;
      return result;
    }

    if (v14 <= 0x3C && ((1 << v14) & 0x1000010000100400) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = -103;
    }

    if (v14 > 10)
    {
      *(a1 + 5792) = v14 / 0x14u;
      *(a1 + 4604) = 4;
      *(a1 + 4608) = 20 * a6;
      *(a1 + 4572) = 24 * a6;
      v16 = *(a1 + 4600);
      if (v16 == 8)
      {
        v18 = &silk_pitch_contour_NB_iCDF;
        goto LABEL_23;
      }

      v21 = &silk_pitch_contour_iCDF;
    }

    else
    {
      *(a1 + 5792) = 1;
      if (v14 == 10)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      *(a1 + 4604) = v17;
      *(a1 + 4608) = v14 * a6;
      *(a1 + 4572) = 14 * a6;
      v16 = *(a1 + 4600);
      if (v16 == 8)
      {
        v18 = &silk_pitch_contour_10_ms_NB_iCDF;
LABEL_23:
        *(a1 + 4728) = v18;
        v16 = 8;
LABEL_28:
        *(a1 + 4636) = v14;
        *(a1 + 4632) = 0;
        goto LABEL_29;
      }

      v21 = &silk_pitch_contour_10_ms_iCDF;
    }

    *(a1 + 4728) = v21;
    goto LABEL_28;
  }

  if (v11 == *(a1 + 4584))
  {
    return 0;
  }

  v19 = *(a1 + 4600);
  if (v19 < 1)
  {
    return 0;
  }

  return silk_setup_resamplers(a1, v19);
}

uint64_t silk_setup_resamplers(uint64_t a1, int a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4600);
  if (v4 == a2 && *(a1 + 4584) == *(a1 + 4580))
  {
    result = 0;
  }

  else if (v4)
  {
    v6 = 10 * *(a1 + 4604) + 5;
    v7 = v6 * v4;
    memset(v14, 0, 304);
    v8 = silk_resampler_init(v14, 1000 * v4, *(a1 + 4580), 0);
    v9 = *(a1 + 4580) / 1000 * v6;
    v10 = 2 * v9;
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, v10);
    v12 = silk_resampler(v14, v11, (a1 + 8356), v7);
    v13 = v12 + v8 + silk_resampler_init(a1 + 5824, *(a1 + 4580), 1000 * v2, 1);
    result = v13 + silk_resampler((a1 + 5824), (a1 + 8356), v11, v9);
  }

  else
  {
    result = silk_resampler_init(a1 + 5824, *(a1 + 4580), 1000 * a2, 1);
  }

  *(a1 + 4584) = *(a1 + 4580);
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
  if (!a4)
  {
    if (a2 != 8000 && a2 != 16000 && a2 != 12000)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = 0xFFFFFFFFLL;
    if (a3 <= 15999)
    {
      if (a3 != 8000)
      {
        v6 = 12000;
LABEL_22:
        if (a3 != v6)
        {
          return v4;
        }
      }
    }

    else if (a3 != 16000 && a3 != 48000)
    {
      v6 = 24000;
      goto LABEL_22;
    }

    v7 = &delay_matrix_dec + 5 * (a2 >> 12) + (((a3 >> 12) - (a3 > 0x3E80)) >> (a3 > 0x5DC0)) - 6;
    goto LABEL_24;
  }

  v4 = 0xFFFFFFFFLL;
  if (a2 <= 15999)
  {
    if (a2 != 8000)
    {
      v5 = 12000;
LABEL_15:
      if (a2 != v5)
      {
        return v4;
      }
    }
  }

  else if (a2 != 16000 && a2 != 48000)
  {
    v5 = 24000;
    goto LABEL_15;
  }

  if (a3 != 8000 && a3 != 16000 && a3 != 12000)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = &delay_matrix_enc + 3 * (((a2 >> 12) - (a2 > 0x3E80)) >> (a2 > 0x5DC0)) + (a3 >> 12) - 4;
LABEL_24:
  *(a1 + 292) = *v7;
  *(a1 + 284) = a2 / 0x3E8u;
  *(a1 + 288) = a3 / 0x3E8u;
  *(a1 + 268) = 10 * (a2 / 0x3E8u);
  if (a3 > a2)
  {
    if (a3 == 2 * a2)
    {
      v8 = 0;
      *(a1 + 264) = 1;
    }

    else
    {
      *(a1 + 264) = 2;
      v8 = 1;
    }

    goto LABEL_43;
  }

  if (a3 >= a2)
  {
    v8 = 0;
    *(a1 + 264) = 0;
    goto LABEL_43;
  }

  *(a1 + 264) = 3;
  if (4 * a3 != 3 * a2)
  {
    if (3 * a3 == 2 * a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x200000012;
      v9 = &silk_Resampler_2_3_COEFS;
      goto LABEL_42;
    }

    if (a2 == 2 * a3)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000018;
      v9 = &silk_Resampler_1_2_COEFS;
      goto LABEL_42;
    }

    if (3 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_3_COEFS;
      goto LABEL_42;
    }

    if (4 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_4_COEFS;
      goto LABEL_42;
    }

    if (6 * a3 == a2)
    {
      v8 = 0;
      *(a1 + 276) = 0x100000024;
      v9 = &silk_Resampler_1_6_COEFS;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  *(a1 + 276) = 0x300000012;
  v9 = &silk_Resampler_3_4_COEFS;
LABEL_42:
  *(a1 + 296) = v9;
LABEL_43:
  v10 = 4 * ((a2 << (v8 | 0xE)) / a3);
  v11 = a2 << v8;
  do
  {
    v12 = v10;
    v13 = v10 * (((a3 >> 15) + 1) >> 1) + HIWORD(v10) * a3 + ((v10 * a3) >> 16);
    ++v10;
  }

  while (v13 < v11);
  v4 = 0;
  *(a1 + 272) = v12;
  return v4;
}

uint64_t silk_resampler(_DWORD *a1, _WORD *a2, char *__src, int a4)
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
      silk_resampler_private_up2_HQ_wrapper(a1, a2, v9, v12);
      silk_resampler_private_up2_HQ_wrapper(a1, &a2[a1[72]], &__src[2 * v10], (a4 - a1[71]));
      break;
    default:
      memcpy(a2, v9, 2 * v12);
      memcpy(&a2[a1[72]], &__src[2 * v10], 2 * (a4 - a1[71]));
      break;
  }

  memcpy(v9, &__src[2 * (a4 - a1[73])], 2 * a1[73]);
  return 0;
}

void silk_LPC_analysis_filter(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a5 < 1)
  {
    celt_fir((a2 + 2 * a5), v10, a1 + 2 * a5, a4 - a5, a5, v11);
  }

  else
  {
    v7 = 0;
    do
    {
      *&v10[v7] = -*(a3 + v7);
      v7 += 2;
    }

    while (2 * a5 != v7);
    v8 = 2 * a5;
    v9 = v11;
    do
    {
      *v9++ = *(a2 - 2 + v8);
      v8 -= 2;
    }

    while (v8);
    celt_fir((a2 + 2 * a5), v10, a1 + 2 * a5, a4 - a5, a5, v11);
    bzero(a1, (2 * a5));
  }
}

uint64_t silk_stereo_LR_to_MS(unsigned __int16 *a1, __int16 *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6, int a7, int a8, int a9, int a10, int a11)
{
  v129 = a8;
  v130 = a7;
  v132 = a5;
  v133 = a6;
  v131 = a4;
  v138[1] = *MEMORY[0x277D85DE8];
  v136 = a2;
  v13 = a2 - 2;
  v14 = a11 + 2;
  v15 = 2 * (a11 + 2);
  v16 = (&v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v16, v15);
  if (a11 >= -1)
  {
    if (v14 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = (a3 - 4);
    v19 = v16;
    v20 = v13;
    do
    {
      v21 = *v20;
      v22 = *v18++;
      *v20++ = ((v22 + v21) & 1) + ((v22 + v21) >> 1);
      v23 = ((v21 - v22) & 1) + ((v21 - v22) >> 1);
      if (v23 >= 0x7FFF)
      {
        LOWORD(v23) = 0x7FFF;
      }

      *v19++ = v23;
      --v17;
    }

    while (v17);
  }

  v134 = a3;
  *v13 = *(a1 + 1);
  *v16 = *(a1 + 2);
  v24 = 2 * a11;
  v25 = *&v16[v24 / 2];
  *(a1 + 1) = *&v13[v24 / 2];
  *(a1 + 2) = v25;
  v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  bzero(&v126 - v26, v24);
  v27 = (&v126 - v26);
  bzero(&v126 - v26, v24);
  v135 = v16;
  if (a11 <= 0)
  {
    v35 = &v126 - v26;
    bzero(&v126 - v26, 2 * a11);
    v36 = (&v126 - v26);
    bzero(&v126 - v26, 2 * a11);
  }

  else
  {
    v28 = *v13;
    v29 = a11;
    v30 = (&v126 - v26);
    v31 = (&v126 - v26);
    v32 = v136;
    do
    {
      v33 = *(v32 - 1);
      v34 = ((*v32 + v28) >> 1) + v33 + 1;
      *v30++ = v34 >> 1;
      *v31++ = v33 - (v34 >> 1);
      ++v32;
      v28 = v33;
      --v29;
    }

    while (v29);
    v35 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v35, 2 * a11);
    v36 = v35;
    bzero(v35, 2 * a11);
    v37 = 0;
    v38 = v16 + 2;
    v39 = *v16;
    do
    {
      v40 = *(v38 - 1);
      v41 = ((*v38 + v39) >> 1) + v40 + 1;
      *&v35[v37] = v41 >> 1;
      *&v35[v37] = v40 - (v41 >> 1);
      ++v38;
      v37 += 2;
      v39 = v40;
    }

    while (2 * a11 != v37);
  }

  v137 = 0;
  v127 = 5 * a10;
  v128 = a9;
  if (10 * a10 == a11)
  {
    v42 = 328;
  }

  else
  {
    v42 = 655;
  }

  v43 = v42 * ((v129 * v129) >> 16) + ((v42 * (v129 * v129)) >> 16);
  if (10 * a10 == a11)
  {
    v44 = -1200;
  }

  else
  {
    v44 = -600;
  }

  predictor = silk_stereo_find_predictor(&v137 + 1, (&v126 - v26), v35, a1 + 3, a11, v43);
  v46 = predictor;
  LODWORD(v138[0]) = predictor;
  v47 = silk_stereo_find_predictor(&v137, v27, v36, a1 + 5, a11, v43);
  HIDWORD(v138[0]) = v47;
  v48 = 3 * SWORD2(v137) + v137;
  if (v48 >= 0x10000)
  {
    v48 = 0x10000;
  }

  if (v44 + v130 <= 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = v44 + v130;
  }

  v50 = 900 * a10 + 2000;
  v51 = __clz(v49);
  v52 = -851968 - 3 * v48;
  if (3 * v48 + 851968 >= 0)
  {
    v52 = 3 * v48 + 851968;
  }

  v53 = __clz(v52);
  v54 = (3 * v48 + 851968) << (v53 - 1);
  v55 = 0x1FFFFFFF / (v54 >> 16);
  v56 = v55 * ((v49 << (v51 - 1)) >> 16) + ((v55 * (v49 << (v51 - 1))) >> 16);
  v57 = (v49 << (v51 - 1)) - (((v54 * v56) >> 29) & 0xFFFFFFF8);
  v58 = v56 + (v57 >> 16) * v55 + ((v57 * v55) >> 16);
  v59 = v51 - v53;
  if ((v59 + 10) >= 0x20)
  {
    v60 = 0;
  }

  else
  {
    v60 = v58 >> (v59 + 10);
  }

  v61 = 0x80000000 >> (-10 - v59);
  if (v58 > v61)
  {
    v61 = v58;
  }

  if (v58 <= (0x7FFFFFFFu >> (-10 - v59)))
  {
    v62 = v61;
  }

  else
  {
    v62 = 0x7FFFFFFFu >> (-10 - v59);
  }

  v63 = v62 << (-10 - v59);
  if (v59 <= -11)
  {
    v64 = v63;
  }

  else
  {
    v64 = v60;
  }

  v65 = v133;
  *v133 = v64;
  if (v64 >= v50)
  {
    v65[1] = v49 - v64;
    v85 = 0x4000;
  }

  else
  {
    *v65 = v50;
    v65[1] = v49 - v50;
    v66 = 2 * (v49 - v50) - v50;
    v67 = ((3 * v48 + 0x10000) >> 16) * v50 + (((3 * v48) * v50) >> 16);
    if (v66 >= 0)
    {
      v68 = 2 * (v49 - v50) - v50;
    }

    else
    {
      v68 = v50 - 2 * (v49 - v50);
    }

    v69 = __clz(v68);
    v70 = v66 << (v69 - 1);
    if (v67 >= 0)
    {
      v71 = ((3 * v48 + 0x10000) >> 16) * v50 + (((3 * v48) * v50) >> 16);
    }

    else
    {
      v71 = -v67;
    }

    v72 = __clz(v71);
    v73 = v67 << (v72 - 1);
    v74 = 0x1FFFFFFF / (v73 >> 16);
    v75 = v74 * (v70 >> 16) + ((v74 * (v70 & 0xFFFE)) >> 16);
    v76 = v70 - (((v75 * v73) >> 29) & 0xFFFFFFF8);
    v77 = v75 + (v76 >> 16) * v74 + (((v76 & 0xFFFE) * v74) >> 16);
    v78 = v69 - v72;
    v79 = v69 - v72 + 13;
    v80 = v77 >> (v69 - v72 + 13);
    if (v79 >= 0x20)
    {
      v81 = 0;
    }

    else
    {
      v81 = v80;
    }

    v82 = 0x80000000 >> (-13 - v78);
    if (v77 > v82)
    {
      v82 = v77;
    }

    if (v77 <= (0x7FFFFFFFu >> (-13 - v78)))
    {
      v83 = v82;
    }

    else
    {
      v83 = 0x7FFFFFFFu >> (-13 - v78);
    }

    v84 = v83 << (-13 - v78);
    if (v78 > -14)
    {
      v84 = v81;
    }

    v85 = v84 & ~(v84 >> 31);
    if (v85 >= 0x4000)
    {
      v85 = 0x4000;
    }
  }

  v86 = v132;
  a1[14] += ((v85 - a1[14]) * v43) >> 16;
  *v86 = 0;
  if (v128)
  {
    v138[0] = 0;
    result = silk_stereo_quant_pred(v138, v131);
    v88 = 0;
    goto LABEL_72;
  }

  v89 = 8 * v49;
  v90 = a1[14];
  if (a1[15])
  {
    if (v89 < 11 * v50 || (v48 >> 16) * v90 + ((v48 * v90) >> 16) <= 327)
    {
      LODWORD(v138[0]) = (v46 * v90) >> 14;
      HIDWORD(v138[0]) = (v47 * v90) >> 14;
      result = silk_stereo_quant_pred(v138, v131);
      v88 = 0;
      v138[0] = 0;
      goto LABEL_72;
    }
  }

  else if (v89 < 13 * v50 || (v48 >> 16) * v90 + ((v48 * v90) >> 16) <= 818)
  {
    LODWORD(v138[0]) = (v46 * v90) >> 14;
    HIDWORD(v138[0]) = (v47 * v90) >> 14;
    result = silk_stereo_quant_pred(v138, v131);
    v88 = 0;
    v138[0] = 0;
    *v65 = v49;
    v65[1] = 0;
    *v86 = 1;
    v91 = v134;
    goto LABEL_73;
  }

  if (v90 < 15566)
  {
    LODWORD(v138[0]) = (v46 * v90) >> 14;
    HIDWORD(v138[0]) = (v47 * v90) >> 14;
    result = silk_stereo_quant_pred(v138, v131);
    v88 = a1[14];
  }

  else
  {
    result = silk_stereo_quant_pred(v138, v131);
    v88 = 0x4000;
  }

LABEL_72:
  v91 = v134;
  if (*v86 != 1)
  {
    a1[16] = 0;
    goto LABEL_77;
  }

LABEL_73:
  v92 = a1[16] + a11 - 8 * a10;
  a1[16] = v92;
  if (v127 <= v92)
  {
    a1[16] = 10000;
LABEL_77:
    if (*v86)
    {
      goto LABEL_82;
    }

    goto LABEL_78;
  }

  *v86 = 0;
LABEL_78:
  if (v65[1] <= 0)
  {
    v93 = v49 - 1;
    if (v49 - 1 <= 1)
    {
      v93 = 1;
    }

    *v65 = v93;
    v65[1] = 1;
  }

LABEL_82:
  v94 = 8 * a10;
  v95 = v138[0];
  v96 = WORD2(v138[0]);
  if (a10 >= 1)
  {
    v97 = *a1;
    v98 = a1[1];
    v99 = a1[15];
    v100 = (0x10000 / v94);
    v101 = ((v88 - v99) >> 16) * v100 + (((v88 - v99) * v100) >> 16);
    v102 = (((v100 * (WORD2(v138[0]) - v98)) >> 15) + 1) >> 1;
    v103 = (((v100 * (LOWORD(v138[0]) - v97)) >> 15) + 1) >> 1 << 16;
    v104 = v103 + (v97 << 16);
    v105 = v102 << 16;
    v106 = (v102 << 16) + (v98 << 16);
    v107 = v101 << 10;
    v108 = (v91 - 2);
    v109 = -v104;
    v110 = (v101 << 10) + (v99 << 10);
    LODWORD(result) = -v106;
    v111 = v136;
    v112 = v135 + 1;
    v113 = (8 * a10);
    do
    {
      v114 = *(v111 - 1);
      v115 = *v112++;
      v116 = (v114 << 10) + ((*v111 + *(v111 - 2)) << 9);
      v117 = ((((v114 >> 5) * (result >> 16) + (v110 >> 16) * v115 + (((v110 & 0xFC00) * v115) >> 16) + ((((v114 & 0x1F) << 11) * (result >> 16)) >> 16) + (v116 >> 16) * (v109 >> 16) + (((v116 & 0xFE00) * (v109 >> 16)) >> 16)) >> 7) + 1) >> 1;
      if (v117 <= -32768)
      {
        v117 = -32768;
      }

      if (v117 >= 0x7FFF)
      {
        LOWORD(v117) = 0x7FFF;
      }

      *v108++ = v117;
      v109 -= v103;
      result = (result - v105);
      ++v111;
      v110 += v107;
      --v113;
    }

    while (v113);
  }

  if (v94 < a11)
  {
    v118 = &v135[v94 + 1];
    v119 = &v136[v94];
    v120 = (v91 + 2 * v94 - 2);
    v121 = a11 - v94;
    result = 4294934528;
    do
    {
      v122 = *(v119 - 1);
      v123 = *v118++;
      v124 = (v122 << 10) + ((*v119 + *(v119 - 2)) << 9);
      v125 = ((((v122 >> 5) * -v96 + (v88 >> 6) * v123 + ((((v88 & 0x3F) << 10) * v123) >> 16) + ((((v122 & 0x1F) << 11) * -v96) >> 16) + (v124 >> 16) * -v95 + (((v124 & 0xFE00) * -v95) >> 16)) >> 7) + 1) >> 1;
      if (v125 <= -32768)
      {
        v125 = -32768;
      }

      if (v125 >= 0x7FFF)
      {
        LOWORD(v125) = 0x7FFF;
      }

      *v120++ = v125;
      ++v119;
      --v121;
    }

    while (v121);
  }

  *a1 = v95;
  a1[1] = v96;
  a1[15] = v88;
  return result;
}

double silk_PLC_Reset(uint64_t a1)
{
  *(a1 + 4192) = *(a1 + 2328) << 7;
  *&result = 0x1000000010000;
  *(a1 + 4264) = 0x1000000010000;
  *(a1 + 4276) = 0x1400000002;
  return result;
}

void silk_PLC(uint64_t a1, int32x4_t *a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 2316);
  if (v6 != *(a1 + 4272))
  {
    *(a1 + 4192) = *(a1 + 2328) << 7;
    *(a1 + 4264) = 0x1000000010000;
    *(a1 + 4276) = 0x1400000002;
    *(a1 + 4272) = v6;
  }

  if (a4)
  {
    silk_PLC_conceal(a1, a2, a3);
    ++*(a1 + 4184);
  }

  else
  {
    v7 = *(a1 + 2789);
    *(a1 + 4188) = v7;
    if (v7 == 2)
    {
      v8 = 0;
      v9 = *(a1 + 2324);
      if (v9)
      {
        v10 = v9 - 1;
        v11 = a2->i32[v10];
        if (v11 >= 1)
        {
          v12 = 0;
          v8 = 0;
          v13 = *(a1 + 2332);
          v14 = a2 + 6;
          v15 = 5 * v9 - 5;
          do
          {
            v16 = 0;
            v17 = 0;
            v18 = v9 + ~v12;
            do
            {
              v17 += v14->i16[v15 + v16++];
            }

            while (v16 != 5);
            if (v17 > v8)
            {
              v19 = &v14->i8[10 * v18];
              v20 = *v19;
              *(a1 + 4204) = *(v19 + 4);
              *(a1 + 4196) = v20;
              *(a1 + 4192) = a2->i32[v18] << 8;
              v11 = a2->i32[v10];
              v8 = v17;
            }

            if (++v12 == v9)
            {
              break;
            }

            v15 -= 5;
          }

          while (v12 * v13 < v11);
        }
      }

      v21 = a1 + 4196;
      *(a1 + 4196) = 0;
      *(a1 + 4204) = 0;
      *(a1 + 4200) = v8;
      if (v8 > 11468)
      {
        if (v8 >= 0x3CCE)
        {
          v25 = 0;
          v26 = 0xF334000u / v8;
          do
          {
            *(v21 + v25) = (v26 * *(v21 + v25)) >> 14;
            v25 += 2;
          }

          while (v25 != 10);
        }
      }

      else
      {
        v22 = 0;
        if (v8 <= 1)
        {
          v8 = 1;
        }

        v23 = (0xB33400u / v8);
        do
        {
          *(v21 + v22) = (v23 * *(v21 + v22)) >> 10;
          v22 += 2;
        }

        while (v22 != 10);
      }
    }

    else
    {
      *(a1 + 4192) = 4608 * v6;
      *(a1 + 4196) = 0;
      *(a1 + 4204) = 0;
    }

    memcpy((a1 + 4206), &a2[4], 2 * *(a1 + 2340));
    *(a1 + 4260) = a2[8].i32[2];
    v24 = *(a1 + 2324);
    *(a1 + 4264) = *(&a2->i64[1] + 4 * v24);
    *(a1 + 4280) = *(a1 + 2332);
    *(a1 + 4276) = v24;
  }
}

int32x4_t silk_PLC_conceal(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  v124 = a3;
  v4 = a1;
  *&v140[12] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 4280);
  v6 = *(a1 + 4280);
  v7 = *(a1 + 2336);
  v8 = 2 * v7;
  v132 = &v119 - ((2 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 4 * (*(a1 + 2328) + v7);
  v126 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 4264) >> 6;
  v11 = *(a1 + 4268);
  v120 = v11 >> 6;
  v133 = v11 >> 6;
  v134 = v10;
  if (*(a1 + 2376))
  {
    *(a1 + 4206) = 0u;
    *(a1 + 4222) = 0u;
  }

  bzero(&v119 - ((4 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v5);
  v12 = v4 + 4;
  v13 = -2;
  v14 = &v134;
  v15 = 1;
  v16 = &v119 - ((4 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  do
  {
    v17 = v15;
    if (v5 >= 1)
    {
      v18 = 0;
      v19 = (v13 + *(v4 + 4276)) * v6;
      v20 = *v14;
      v21 = v20;
      v22 = ((v20 >> 15) + 1) >> 1;
      v23 = v12 + 4 * v19;
      do
      {
        v24 = (v21 * (*(v23 + 4 * v18) >> 16) + ((v21 * *(v23 + 4 * v18)) >> 16) + v22 * *(v23 + 4 * v18)) >> 8;
        if (v24 <= -32768)
        {
          v24 = -32768;
        }

        if (v24 >= 0x7FFF)
        {
          LOWORD(v24) = 0x7FFF;
        }

        *&v16[2 * v18++] = v24;
      }

      while (v5 != v18);
    }

    v15 = 0;
    v16 += 2 * v5;
    v13 = -1;
    v14 = &v133;
  }

  while ((v17 & 1) != 0);
  v135 = 0;
  v136 = 0;
  bzero(v132, v8);
  bzero(v126, v9);
  silk_sum_sqr_shift(&v135 + 1, &v136 + 1, &v119 - ((4 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  silk_sum_sqr_shift(&v135, &v136, &v119 + 2 * *(v4 + 4280) - ((4 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), *(v4 + 4280));
  v25 = *(v4 + 4276);
  v125 = a2;
  v121 = v11;
  if (SHIDWORD(v135) >> v136 >= v135 >> SBYTE4(v136))
  {
    v26 = *(v4 + 4280) * v25;
  }

  else
  {
    v26 = (v25 - 1) * *(v4 + 4280);
  }

  if (v26 <= 128)
  {
    v27 = 128;
  }

  else
  {
    v27 = v26;
  }

  v28 = v4 + 4196;
  LOWORD(v29) = *(v4 + 4248);
  v30 = *(v4 + 4184);
  if (v30 >= 1)
  {
    v30 = 1;
  }

  v31 = HARM_ATT_Q15[v30];
  if (*(v4 + 4188) == 2)
  {
    v32 = &PLC_RAND_ATTENUATE_V_Q15;
  }

  else
  {
    v32 = &PLC_RAND_ATTENUATE_UV_Q15;
  }

  v33 = v32[v30];
  v34 = v32[v30];
  silk_bwexpander((v4 + 4206), *(v4 + 2340), 64881);
  v35 = *(v4 + 2340);
  __memcpy_chk();
  v36 = *(v4 + 4184);
  v37 = v132;
  v129 = v27;
  if (v36)
  {
    v128 = v34;
    v38 = v35;
  }

  else if (*(v4 + 4188) == 2)
  {
    v39 = 0;
    LOWORD(v40) = 0x4000;
    v38 = v35;
    do
    {
      LOWORD(v40) = v40 - *(v28 + v39);
      v39 += 2;
    }

    while (v39 != 10);
    v128 = v34;
    v40 = v40;
    if (v40 <= 3277)
    {
      v40 = 3277;
    }

    v29 = (*(v4 + 4260) * v40) >> 14;
  }

  else
  {
    v41 = silk_LPC_inverse_pred_gain((v4 + 4206), v35);
    if (v41 >= 0x8000000)
    {
      v42 = 0x8000000;
    }

    else
    {
      v42 = v41;
    }

    if (v42 <= 0x400000)
    {
      v42 = 0x400000;
    }

    v128 = ((v42 >> 13) * v33 + ((8 * (v42 & 0x1FFF) * v33) >> 16)) >> 14;
    v38 = *(v4 + 2340);
    LOWORD(v29) = 0x4000;
  }

  v43 = *(v4 + 4244);
  v44 = ((*(v4 + 4192) >> 7) + 1) >> 1;
  v45 = *(v4 + 2336);
  v46 = v45 - (v38 + v44) - 2;
  silk_LPC_analysis_filter(&v37[2 * v46], v4 + 2 * v46 + 1348, &v137, v38 + v44 + 2, v38);
  v47 = *(v4 + 4268);
  if (v47 >= 0)
  {
    v48 = *(v4 + 4268);
  }

  else
  {
    v48 = -v47;
  }

  v49 = __clz(v48);
  v50 = v47 << (v49 - 1);
  v51 = 0x1FFFFFFF / (v50 >> 16);
  v52 = (v50 >> 16) * v51 + ((v50 * v51) >> 16);
  v53 = (v51 << 16) - 8 * v52 * (((v51 >> 15) + 1) >> 1) + ((-8 * v52) >> 16) * v51 + ((((-8 * v52) & 0xFFF8) * v51) >> 16);
  v54 = HIWORD(v48);
  v55 = v53 >> (16 - v49);
  v56 = v49 - 16;
  v57 = 0x80000000 >> v56;
  if (v53 > 0x80000000 >> v56)
  {
    v57 = v53;
  }

  if (v53 <= (0x7FFFFFFFu >> v56))
  {
    v58 = v57;
  }

  else
  {
    v58 = 0x7FFFFFFFu >> v56;
  }

  v59 = v58 << v56;
  if (v54)
  {
    v60 = v55;
  }

  else
  {
    v60 = v59;
  }

  v123 = *(v4 + 2340);
  LODWORD(v61) = v123 + v46;
  v62 = *(v4 + 2336);
  v63 = v126;
  if (v123 + v46 < v62)
  {
    if (v60 >= 0x3FFFFFFF)
    {
      v64 = 0x3FFFFFFF;
    }

    else
    {
      v64 = v60;
    }

    v61 = v61;
    do
    {
      *&v63[4 * v61] = (v64 >> 16) * *&v37[2 * v61] + ((v64 * *&v37[2 * v61]) >> 16);
      ++v61;
    }

    while (v61 < v62);
  }

  v122 = v62;
  v130 = *(v4 + 2324);
  v131 = v4;
  if (v130 >= 1)
  {
    v65 = 0;
    v66 = v12 + 4 * (v129 - 128);
    v67 = *(v4 + 2332);
    v127 = 4608 * *(v4 + 2316);
    v128 = v128;
    v68 = *(v4 + 4192);
    v129 = v67;
    do
    {
      LODWORD(v132) = v65;
      if (v67 >= 1)
      {
        v69 = *(v4 + 4196);
        v70 = *(v4 + 4198);
        v71 = *(v4 + 4200);
        v72 = *(v4 + 4202);
        v73 = &v126[4 * v45];
        v74 = -4 * v44;
        v75 = v67;
        v76 = *(v4 + 4204);
        do
        {
          v43 = 196314165 * v43 + 907633515;
          *v73 = 4 * ((*&v73[v74 + 8] >> 16) * v69 + ((*&v73[v74 + 8] * v69) >> 16) + (*&v73[v74 + 4] >> 16) * v70 + ((*&v73[v74 + 4] * v70) >> 16) + (*&v73[v74] >> 16) * v71 + ((*&v73[v74] * v71) >> 16) + (*&v73[v74 - 4] >> 16) * v72 + ((*&v73[v74 - 4] * v72) >> 16) + (*&v73[v74 - 8] >> 16) * v76 + ((*&v73[v74 - 8] * v76) >> 16) + (*(v66 + 4 * (v43 >> 25)) >> 16) * v29 + ((*(v66 + 4 * (v43 >> 25)) * v29) >> 16)) + 8;
          v73 += 4;
          ++v45;
          --v75;
        }

        while (v75);
      }

      for (i = 0; i != 10; i += 2)
      {
        *(v28 + i) = (*(v28 + i) * v31) >> 15;
      }

      v29 = (v29 * v128) >> 15;
      if ((v68 + 655 * (v68 >> 16) + ((655 * v68) >> 16)) >= v127)
      {
        v68 = v127;
      }

      else
      {
        v68 += 655 * (v68 >> 16) + ((655 * v68) >> 16);
      }

      v4 = v131;
      *(v131 + 4192) = v68;
      v44 = ((v68 >> 7) + 1) >> 1;
      v65 = v132 + 1;
      v67 = v129;
    }

    while (v132 + 1 != v130);
  }

  v79 = v125;
  v78 = v126;
  v80 = v122;
  v81 = v123;
  v82 = &v126[4 * v122];
  v83 = v82 - 64;
  v84 = (v4 + 1284);
  v85 = *(v4 + 1300);
  *(v82 - 4) = *(v4 + 1284);
  *(v82 - 3) = v85;
  v86 = *(v4 + 1332);
  *(v82 - 2) = *(v4 + 1316);
  *(v82 - 1) = v86;
  v87 = *(v4 + 2328);
  v88 = v124;
  if (v87 >= 1)
  {
    v89 = 0;
    v90 = vmovl_high_s16(v137);
    v91 = vmovl_s16(*v137.i8);
    v92 = v138;
    v93 = v139;
    v94 = v120;
    v95 = ((v121 >> 21) + 1) >> 1;
    v96 = &v78[4 * v80 - 44];
    v97.i64[0] = 0xFFFF0000FFFFLL;
    v97.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v98 = &v83[4 * v89];
      v100 = v98[2];
      v99 = v98[3];
      v101 = vrev64q_s32(vshrq_n_s32(v99, 0x10uLL));
      v102 = vrev64q_s32(vshrq_n_s32(v100, 0x10uLL));
      v103 = vrev64q_s32(vandq_s8(v99, v97));
      v104 = vrev64q_s32(vandq_s8(v100, v97));
      v105 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v103, v103, 8uLL), v91), 0x10uLL), vmulq_s32(vextq_s8(v104, v104, 8uLL), v90), 0x10uLL), vmlaq_s32(vmulq_s32(vextq_s8(v102, v102, 8uLL), v90), vextq_s8(v101, v101, 8uLL), v91))) + ((v98[1].i32[3] * v92) >> 16) + (v98[1].i32[3] >> 16) * v92 + ((v98[1].i32[2] * v93) >> 16) + (v81 >> 1) + (v98[1].i32[2] >> 16) * v93;
      if (v81 >= 11)
      {
        v106 = v81 - 10;
        v107 = v140;
        v108 = v96;
        do
        {
          v110 = *v108--;
          v109 = v110;
          v111 = *v107++;
          v105 += (v109 >> 16) * v111 + ((v109 * v111) >> 16);
          --v106;
        }

        while (v106);
      }

      v112 = *&v82[4 * v89] + 16 * v105;
      *&v82[4 * v89] = v112;
      v113 = (((v112 * v95 + (v112 >> 16) * v94 + ((v112 * v94) >> 16)) >> 7) + 1) >> 1;
      if (v113 <= -32768)
      {
        v113 = -32768;
      }

      if (v113 >= 0x7FFF)
      {
        LOWORD(v113) = 0x7FFF;
      }

      *(v88 + 2 * v89++) = v113;
      v96 += 4;
    }

    while (v89 != v87);
  }

  v114 = &v83[4 * v87];
  v115 = *(v114 + 1);
  *v84 = *v114;
  v84[1] = v115;
  v116 = *(v114 + 3);
  v84[2] = *(v114 + 2);
  v84[3] = v116;
  v117 = v131;
  *(v131 + 4244) = v43;
  *(v117 + 4248) = v29;
  result = vdupq_n_s32(v44);
  *v79 = result;
  return result;
}

unsigned int *silk_PLC_glue_frames(unsigned int *result, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = result;
  if (result[1046])
  {
    result = silk_sum_sqr_shift(result + 1063, result + 1064, a2, a3);
    v5[1060] = 1;
  }

  else
  {
    if (result[1060])
    {
      v20 = 0;
      result = silk_sum_sqr_shift(&v20, &v20 + 1, a2, a3);
      v6 = v5[1064];
      if (SHIDWORD(v20) <= v6)
      {
        v7 = SHIDWORD(v20) < v6 ? v20 >> (v6 - BYTE4(v20)) : v20;
      }

      else
      {
        v5[1063] = v5[1063] >> (BYTE4(v20) - v6);
        v7 = v20;
      }

      v8 = v5[1063];
      if (v7 > v8)
      {
        v9 = __clz(v8);
        v10 = v8 << (v9 - 1);
        v5[1063] = v10;
        v11 = v7 >> ((25 - v9) & ~((25 - v9) >> 31));
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = v10 / v11;
        if (v12 < 1)
        {
          v16 = 0;
        }

        else
        {
          v13 = __clz(v12);
          if (v13 != 24)
          {
            if (v12 <= 0x7F)
            {
              LOBYTE(v12) = (v12 >> (56 - v13)) | (v12 << (v13 - 24));
            }

            else
            {
              LOBYTE(v12) = (v12 << (v13 + 8)) | (v12 >> (24 - v13));
            }
          }

          v14 = v12 & 0x7F;
          if (v13)
          {
            v15 = 0x8000;
          }

          else
          {
            v15 = 46214;
          }

          v16 = 16 * ((v15 >> (v13 >> 1)) + ((213 * (v15 >> (v13 >> 1)) * v14) >> 16));
        }

        if (a3 >= 1)
        {
          v17 = 4 * ((0x10000 - v16) / a3);
          v18 = a3 - 1;
          do
          {
            v19 = v18;
            *v4 = HIWORD(v16) * *v4 + (((v16 & 0xFFFCu) * *v4) >> 16);
            ++v4;
            v16 += v17;
            if (v16 > 0x10000)
            {
              break;
            }

            --v18;
          }

          while (v19);
        }
      }
    }

    v5[1060] = 0;
  }

  return result;
}

uint64_t silk_quant_LTP_gains(uint64_t result, char *a2, _BYTE *a3, int *a4, int32x2_t *a5, __int16 a6, int a7, int a8)
{
  v34 = result;
  v8 = 0;
  v31 = 0;
  v42 = 0;
  v29 = a8;
  v38 = a8;
  v39 = 0x7FFFFFFF;
  do
  {
    v9 = *a4;
    v40 = v8;
    v10 = 0;
    if (a8 >= 1)
    {
      v11 = *(&silk_LTP_gain_BITS_Q5_ptrs + v8);
      v12 = *(&silk_LTP_vq_ptrs_Q7 + v8);
      v13 = *(&silk_LTP_vq_gain_ptrs_Q7 + v8);
      v14 = __src;
      v15 = v38;
      v16 = silk_LTP_vq_sizes[v8];
      v17 = a5;
      v18 = v34;
      do
      {
        v19 = silk_log2lin(6229 - v9);
        silk_VQ_WMat_EC(v14, &v42 + 1, &v42, v18, v17, v12, v13, v11, v20, v21, a6, v19 - 51, v16);
        if (HIDWORD(v42) + v10 < 0 != __OFADD__(HIDWORD(v42), v10))
        {
          v10 = 0x7FFFFFFF;
        }

        else
        {
          v10 += HIDWORD(v42);
        }

        result = silk_lin2log(v42 + 51);
        if (result + v9 >= 896)
        {
          result = silk_lin2log(v42 + 51);
          v9 = v9 + result - 896;
        }

        else
        {
          v9 = 0;
        }

        v18 += 5;
        v17 = (v17 + 100);
        ++v14;
        --v15;
      }

      while (v15);
    }

    if (v10 >= 2147483646)
    {
      v22 = 2147483646;
    }

    else
    {
      v22 = v10;
    }

    if (v22 < v39)
    {
      *a3 = v40;
      result = memcpy(a2, __src, v29);
      v39 = v22;
      v31 = v9;
    }

    if (v10 < silk_LTP_gain_middle_avg_RD_Q14 && a7 != 0)
    {
      break;
    }

    v8 = v40 + 1;
  }

  while (v40 != 2);
  v24 = v34;
  if (a8 >= 1)
  {
    v25 = 0;
    v26 = *(&silk_LTP_vq_ptrs_Q7 + *a3);
    do
    {
      v27 = 0;
      for (i = 0; i != 5; ++i)
      {
        v24[i] = *(v26 + ((v27 + 0x500000000 * a2[v25]) >> 32)) << 7;
        v27 += 0x100000000;
      }

      ++v25;
      v24 += 5;
    }

    while (v25 != v38);
  }

  *a4 = v31;
  return result;
}

void *silk_NSQ(int *a1, int32x2_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, __int16 a15, __int16 a16)
{
  v202 = a7;
  v205 = a6;
  v235 = a5;
  v19 = a1;
  v208 = a13;
  v237 = *MEMORY[0x277D85DE8];
  a2[546].i32[0] = *(a3 + 34);
  v232 = a2[544].i32[1];
  v20 = silk_Quantization_Offsets_Q10[2 * (*(a3 + 29) >> 1) + *(a3 + 30)];
  v206 = a3;
  v21 = *(a3 + 31);
  v22 = a1[1154];
  v23 = a1[1152];
  v24 = 4 * (v23 + v22);
  v25 = &v193[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v25, v24);
  v26 = 2 * (v23 + v22);
  v195 = &v193[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v195, v26);
  v27 = v19[1153];
  v231 = &v193[-((4 * v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v231, 4 * v27);
  a2[545].i32[1] = v22;
  a2[545].i32[0] = v22;
  v28 = v19[1151];
  if (v28 > 0)
  {
    v29 = 0;
    v234 = a2 + 2 * v22;
    v200 = v25 + 8;
    v204 = v21 == 4;
    v209 = a12;
    v199 = a11;
    if (v21 == 4)
    {
      v30 = 3;
    }

    else
    {
      v30 = 1;
    }

    v196 = v30;
    v194 = a16;
    v31 = a8;
    v32 = a2 + 160;
    v198 = a10;
    v203 = a9;
    v207 = a2 + 480;
    v33 = a2 + 536;
    v197 = &a2[495] + 4;
    v214 = (944 - v20) * a14;
    v215 = v20 - 944;
    v220 = a14 * v20;
    v217 = v20 + 944;
    v225 = a14;
    v216 = (v20 + 944) * a14;
    v236 = v20;
    v222 = v20 - 80;
    v201 = v31;
    v221 = (v31 + 4);
    v218 = a2 + 537;
    v34.i64[0] = 0xFFFF0000FFFFLL;
    v34.i64[1] = 0xFFFF0000FFFFLL;
    v35.i64[0] = 0x100000001;
    v35.i64[1] = 0x100000001;
    v210 = v19;
    v36 = v25;
    do
    {
      v37 = v205 + 32 * (v204 | (v29 >> 1));
      v38 = *(v203 + 4 * v29);
      a2[547].i32[0] = 0;
      v39 = *(v206 + 29);
      v213 = v29;
      if (v39 == 2)
      {
        v40 = *(v208 + 4 * v29);
        v232 = v40;
        if ((v196 & v29) != 0)
        {
          v41 = 1;
          v42 = 1;
        }

        else
        {
          v43 = v19[1166];
          v44 = v19[1154] - v43 - v40 - 2;
          silk_LPC_analysis_filter(&v195[2 * v44], a2 + 2 * v44 + 2 * v27 * v29, v37, 2 - (-v43 - v40), v43);
          v35.i64[0] = 0x100000001;
          v35.i64[1] = 0x100000001;
          v34.i64[0] = 0xFFFF0000FFFFLL;
          v34.i64[1] = 0xFFFF0000FFFFLL;
          v29 = v213;
          v19 = v210;
          v41 = 0;
          a2[547].i32[0] = 1;
          a2[545].i32[0] = v19[1154];
          v42 = *(v206 + 29) == 2;
        }

        v233 = v42;
      }

      else
      {
        v233 = 0;
        v41 = 1;
      }

      v45 = *(v208 + 4 * v29);
      v46 = *(v209 + 4 * v29);
      if (v46 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = *(v209 + 4 * v29);
      }

      v48 = __clz(v47);
      v49 = v47 << (v48 - 1);
      v50 = 0x1FFFFFFF / (v49 >> 16);
      v51 = (v49 >> 16) * v50 + ((v49 * v50) >> 16);
      v52 = (v50 << 16) - 8 * v51 * (((v50 >> 15) + 1) >> 1) + ((-8 * v51) >> 16) * v50 + ((((-8 * v51) & 0xFFF8) * v50) >> 16);
      v53 = v52 >> (15 - v48);
      v54 = v48 - 15;
      v55 = 0x80000000 >> v54;
      if (v52 > 0x80000000 >> v54)
      {
        v55 = v52;
      }

      if (v52 <= (0x7FFFFFFFu >> v54))
      {
        v56 = v55;
      }

      else
      {
        v56 = 0x7FFFFFFFu >> v54;
      }

      v57 = v56 << v54;
      if (v46 < 0x20000)
      {
        v58 = v57;
      }

      else
      {
        v58 = v53;
      }

      v59 = a2[546].i32[1];
      if (v46 == v59)
      {
        v60 = 0x10000;
      }

      else
      {
        if (v59 >= 0)
        {
          v61 = a2[546].u32[1];
        }

        else
        {
          v61 = -v59;
        }

        v62 = __clz(v61);
        v63 = v59 << (v62 - 1);
        if (v46 >= 0)
        {
          v64 = *(v209 + 4 * v29);
        }

        else
        {
          v64 = -v46;
        }

        v65 = __clz(v64);
        v66 = v46 << (v65 - 1);
        v67 = 0x1FFFFFFF / (v66 >> 16);
        v68 = v67 * (v63 >> 16) + ((v67 * v63) >> 16);
        v69 = v63 - (((v68 * v66) >> 29) & 0xFFFFFFF8);
        v70 = v68 + (v69 >> 16) * v67 + ((v69 * v67) >> 16);
        v71 = v62 - v65;
        if ((v71 + 29) >= 0x30)
        {
          v72 = 0;
        }

        else
        {
          v72 = v70 >> (v71 + 13);
        }

        v73 = 0x80000000 >> (-13 - v71);
        if (v70 > v73)
        {
          v73 = v70;
        }

        if (v70 <= (0x7FFFFFFFu >> (-13 - v71)))
        {
          v74 = v73;
        }

        else
        {
          v74 = 0x7FFFFFFFu >> (-13 - v71);
        }

        v60 = v74 << (-13 - v71);
        if (v71 > -14)
        {
          v60 = v72;
        }
      }

      v75 = v19[1153];
      if (v75 >= 1)
      {
        v76 = (v58 >> 7) + 1;
        v77 = (v76 >> 1);
        v78 = ((v76 >> 16) + 1) >> 1;
        v79 = a4;
        v80 = v231;
        v81 = v19[1153];
        do
        {
          v82 = *v79++;
          *v80++ = v82 * v78 + (v82 >> 16) * v77 + ((v82 * v77) >> 16);
          --v81;
        }

        while (v81);
      }

      a2[546].i32[1] = v46;
      if ((v41 & 1) == 0)
      {
        if (!v29)
        {
          v58 = 4 * ((v58 >> 16) * v194 + ((v58 * v194) >> 16));
        }

        v83 = a2[545].i32[0];
        v84 = v83 - v45 - 2;
        if (v84 < v83)
        {
          v85 = v58 >> 16;
          v86 = v58;
          v87 = v83 - v84;
          v88 = &v36[4 * v84];
          v89 = &v195[2 * v84];
          do
          {
            v90 = *v89;
            v89 += 2;
            *v88++ = v85 * v90 + ((v86 * v90) >> 16);
            --v87;
          }

          while (v87);
        }
      }

      v211 = a4;
      if (v60 != 0x10000)
      {
        v91 = v19[1154];
        if (v91 >= 1)
        {
          v92 = a2[545].i32[1] - v91;
          do
          {
            v32->i32[v92] = v32->i32[v92] * (v60 >> 16) + ((v32->i32[v92] * v60) >> 16) + (((v32->i32[v92] >> 15) + 1) >> 1) * v60;
            ++v92;
          }

          while (v92 < a2[545].i32[1]);
        }

        if (v233 && !a2[547].i32[0])
        {
          v93 = a2[545].i32[0];
          v94 = v93 - v45 - 2;
          if (v94 < v93)
          {
            v95 = v93 - v94;
            v96 = &v36[4 * v94];
            do
            {
              *v96 = *v96 * (v60 >> 16) + ((*v96 * v60) >> 16) + (((*v96 >> 15) + 1) >> 1) * v60;
              ++v96;
              --v95;
            }

            while (v95);
          }
        }

        v97 = 0;
        v98 = vdupq_n_s32(v60);
        v99.i32[0] = v98.u16[0];
        v100 = vshl_s32(*v98.i8, 0xFFFFFFF0FFFF0001);
        v101 = vdupq_lane_s32(v98.u16[0], 0);
        v99.i32[1] = v100.i32[1];
        v102 = a2[544].i32[0];
        v103 = vmul_s32(vdup_n_s32(v102), v99);
        a2[544].i32[0] = v103.i32[1] + (v103.i32[0] >> 16) + (((v102 >> 15) + 1) >> 1) * v60;
        v104 = vdupq_lane_s32(v100, 1);
        v105 = v207;
        do
        {
          v106 = *v105[v97].i8;
          v107 = vshrq_n_s32(vshlq_n_s32(v106, 0x10uLL), 0x10uLL);
          *v105[v97].i8 = vmlaq_s32(vsraq_n_s32(vmulq_s32(v107, v104), vmulq_s32(v107, v101), 0x10uLL), vhaddq_s32(vshrq_n_s32(v106, 0xFuLL), v35), v98);
          v97 += 2;
        }

        while (v97 != 16);
        for (i = 0; i != 8; i += 2)
        {
          v109 = *v33[i].i8;
          v110 = vshrq_n_s32(vshlq_n_s32(v109, 0x10uLL), 0x10uLL);
          *v33[i].i8 = vmlaq_s32(vsraq_n_s32(vmulq_s32(v110, v104), vmulq_s32(v110, v101), 0x10uLL), vhaddq_s32(vshrq_n_s32(v109, 0xFuLL), v35), v98);
        }

        v75 = v19[1153];
      }

      v212 = v75;
      if (v75 >= 1)
      {
        v111 = 0;
        v112 = (v201 + 32 * v213);
        v219 = (v202 + 10 * v213);
        v113 = v210[1166];
        v114 = v210[1165];
        v115 = *(v209 + 4 * v213);
        v116 = *(v199 + 4 * v213);
        v117 = *(v198 + 4 * v213);
        v118 = &v200[4 * (a2[545].i32[0] - v232)];
        v119 = v32 + a2[545].i32[1] - v232 + 1;
        v229 = v113 >> 1;
        v230 = v113;
        v120 = v114 - 1;
        v121 = v116;
        v122 = v116 >> 16;
        v224 = (v38 >> 2);
        v223 = ((v38 >> 2) | (v38 << 15)) >> 16;
        v123 = (v115 >> 6);
        v227 = ((v115 >> 21) + 1) >> 1;
        v228 = v114 >> 1;
        v124 = a2[546].i32[0];
        v125 = v197;
        v226 = v212;
        do
        {
          a2[546].i32[0] = 196314165 * v124 + 907633515;
          v126 = *(v125 - 12);
          v127 = *(v125 - 28);
          v128 = vmovl_s16(*v37);
          v129 = vmovl_high_s16(*v37);
          v130 = vshrq_n_s32(v126, 0x10uLL);
          v131 = vrev64q_s32(v130);
          v132 = vrev64q_s32(vshrq_n_s32(v127, 0x10uLL));
          v133 = vandq_s8(v127, v34);
          v134 = vandq_s8(v126, v34);
          v135 = vrev64q_s32(v134);
          v136 = vrev64q_s32(v133);
          v137 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v135, v135, 8uLL), v128), 0x10uLL), vmulq_s32(vextq_s8(v136, v136, 8uLL), v129), 0x10uLL), vmlaq_s32(vmulq_s32(vextq_s8(v132, v132, 8uLL), v129), vextq_s8(v131, v131, 8uLL), v128))) + ((*(v125 - 8) * *(v37 + 16)) >> 16) + (*(v125 - 8) >> 16) * *(v37 + 16) + ((*(v125 - 9) * *(v37 + 18)) >> 16) + v229 + (*(v125 - 9) >> 16) * *(v37 + 18);
          if (v230 == 16)
          {
            v138 = *(v125 - 52);
            v139 = vmovl_s16(*(v37 + 20));
            v140 = vrev64q_s32(vshrq_n_s32(v138, 0x10uLL));
            v141 = vrev64q_s32(vandq_s8(v138, v34));
            v137 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v140, v140, 8uLL), v139), vmulq_s32(vextq_s8(v141, v141, 8uLL), v139), 0x10uLL)) + ((*(v125 - 14) * *(v37 + 28)) >> 16) + (*(v125 - 14) >> 16) * *(v37 + 28) + ((*(v125 - 15) * *(v37 + 30)) >> 16) + (*(v125 - 15) >> 16) * *(v37 + 30);
          }

          if (v233)
          {
            v142 = *(v118 - 12);
            v143 = vmovl_s16(*v219);
            v144 = vrev64q_s32(vshrq_n_s32(v142, 0x10uLL));
            v145 = vrev64q_s32(vandq_s8(v142, v34));
            v146 = vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v144, v144, 8uLL), v143), vmulq_s32(vextq_s8(v145, v145, 8uLL), v143), 0x10uLL)) + ((*(v118 - 4) * v219[1].i16[0]) >> 16) + (*(v118 - 4) >> 16) * v219[1].i16[0] + 2;
            v118 += 4;
          }

          else
          {
            v146 = 0;
          }

          v147 = v36;
          v148 = v33->i32[0];
          v33->i32[0] = v126.i32[3];
          v149 = v228 + v130.i32[3] * *v112 + ((v134.i32[3] * *v112) >> 16);
          if (v114 >= 3)
          {
            v150 = v218;
            v151 = v221;
            for (j = 2; j < v114; j += 2)
            {
              v153 = *(v150 - 1);
              *(v150 - 1) = v148;
              v154 = v148 >> 16;
              v155 = *(v151 - 1);
              v156 = v148 * v155;
              v148 = *v150;
              *v150 = v153;
              v150 += 2;
              v149 += v154 * v155 + (v156 >> 16) + (v153 >> 16) * *v151 + ((v153 * *v151) >> 16);
              v151 += 2;
            }
          }

          v33->i32[v120] = v148;
          v157 = a2[544].i32[0] >> 16;
          v158 = a2[544].i32[0];
          v159 = v157 * v117 + ((v158 * v117) >> 16) + 2 * (v149 + (v148 >> 16) * v112[v120] + ((v148 * v112[v120]) >> 16));
          v160 = v157 * v122 + ((v158 * v122) >> 16) + (v32->i32[a2[545].i32[1] - 1] >> 16) * v121 + ((v32->i32[a2[545].i32[1] - 1] * v121) >> 16);
          v161 = 4 * v137 - v160 - v159;
          if (v232 < 1)
          {
            v163 = v161 >> 1;
          }

          else
          {
            v162 = ((*(v119 - 2) + *v119) >> 16) * v224 + (*(v119 - 1) >> 16) * v223 + (((*(v119 - 4) + *v119) * v224) >> 16) + ((*(v119 - 1) * v223) >> 16);
            ++v119;
            v163 = (v146 + 2 * v161 - 2 * v162) >> 2;
          }

          v164 = *&v231[4 * v111] - ((v163 + 1) >> 1);
          if (a2[546].i32[0] < 0)
          {
            v164 = -v164;
          }

          if (v164 <= -31744)
          {
            v164 = -31744;
          }

          if (v164 >= 30720)
          {
            v165 = 30720;
          }

          else
          {
            v165 = v164;
          }

          v166 = v165 - v236;
          v167 = (v165 - v236) >> 10;
          if (v167 < 1)
          {
            v168 = v236;
            v171 = v216;
            v169 = v217;
            v170 = v220;
            if (v166 >= 0x400)
            {
              v169 = v236;
              v172 = v236 + (v166 & 0xFFFFFC00);
              v173 = v172 + 80;
              v174 = v172 + 1104;
              v175 = (-80 - v172) * v225;
              v176 = (-1104 - v172) * v225;
              v168 = v215;
              if (v167 != -1)
              {
                v168 = v173;
                v169 = v174;
              }

              v170 = v214;
              if (v167 != -1)
              {
                v170 = v175;
              }

              v171 = v220;
              if (v167 != -1)
              {
                v171 = v176;
              }
            }
          }

          else
          {
            v168 = v222 + (v166 & 0xFFFFFC00);
            v169 = v168 + 1024;
            v170 = (v222 + (v166 & 0xFC00)) * v225;
            v171 = (v222 + (v166 & 0xFC00) + 1024) * v225;
          }

          if (v171 + (v165 - v169) * (v165 - v169) < v170 + (v165 - v168) * (v165 - v168))
          {
            v168 = v169;
          }

          v177 = v235;
          *(v235 + v111) = ((v168 >> 9) + 1) >> 1;
          v178 = 16 * v168;
          if (a2[546].i32[0] < 0)
          {
            v178 = -v178;
          }

          v179 = v178 + 2 * v146;
          v180 = v179 + 16 * v137;
          v181 = (((v180 * v227 + (v180 >> 16) * v123 + (((v180 & 0xFFFE) * v123) >> 16)) >> 7) + 1) >> 1;
          if (v181 <= -32768)
          {
            v181 = -32768;
          }

          if (v181 >= 0x7FFF)
          {
            LOWORD(v181) = 0x7FFF;
          }

          *&v234[2 * v111] = v181;
          *(v125 + 1) = v180;
          v125 += 4;
          v182 = v180 - 4 * v159;
          a2[544].i32[0] = v182;
          v32->i32[a2[545].i32[1]] = v182 - 4 * v160;
          v183 = vadd_s32(a2[545], 0x100000001);
          v36 = v147;
          *&v147[4 * *&a2[545]] = 2 * v179;
          a2[545] = v183;
          v124 = a2[546].i32[0] + *(v177 + v111);
          a2[546].i32[0] = v124;
          ++v111;
        }

        while (v111 != v226);
      }

      v184 = v207;
      v185 = (v207 + 4 * v212);
      v186 = *v185;
      v187 = v185[1];
      v188 = v185[3];
      *v207[4].i8 = v185[2];
      *v184[6].i8 = v188;
      *v184->i8 = v186;
      *v184[2].i8 = v187;
      v189 = v185[4];
      v190 = v185[5];
      v191 = v185[7];
      *v184[12].i8 = v185[6];
      *v184[14].i8 = v191;
      *v184[8].i8 = v189;
      *v184[10].i8 = v190;
      v19 = v210;
      v27 = v210[1153];
      a4 = &v211[v27];
      v235 += v27;
      v234 += 2 * v27;
      v29 = v213 + 1;
      v28 = v210[1151];
      v221 += 16;
    }

    while (v213 + 1 < v28);
    v23 = v210[1152];
    v22 = v210[1154];
  }

  a2[544].i32[1] = *(v208 + 4 * v28 - 4);
  memmove(a2, a2 + 2 * v23, 2 * v22);
  return memmove(&a2[160], &a2[160] + 4 * v19[1152], 4 * v19[1154]);
}

uint64_t silk_decode_indices(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4 || *(a1 + 4 * a3 + 2416))
  {
    v8 = ec_dec_icdf(a2, silk_type_offset_VAD_iCDF, 8) + 2;
  }

  else
  {
    v8 = ec_dec_icdf(a2, silk_type_offset_no_VAD_iCDF, 8);
  }

  *(a1 + 2789) = v8 >> 1;
  *(a1 + 2790) = v8 & 1;
  if (a5 == 2)
  {
    v9 = ec_dec_icdf(a2, silk_delta_gain_iCDF, 8);
  }

  else
  {
    *(a1 + 2760) = 8 * ec_dec_icdf(a2, &silk_gain_iCDF[8 * (v8 >> 1)], 8);
    v9 = *(a1 + 2760) + ec_dec_icdf(a2, silk_uniform8_iCDF, 8);
  }

  *(a1 + 2760) = v9;
  if (*(a1 + 2324) > 1)
  {
    v10 = (a1 + 2761);
    v11 = 1;
    do
    {
      *v10++ = ec_dec_icdf(a2, silk_delta_gain_iCDF, 8);
      ++v11;
    }

    while (v11 < *(a1 + 2324));
  }

  v12 = ec_dec_icdf(a2, (*(*(a1 + 2752) + 16) + **(a1 + 2752) * (*(a1 + 2789) >> 1)), 8);
  *(a1 + 2768) = v12;
  silk_NLSF_unpack(v23, v22, *(a1 + 2752), v12);
  v13 = *(a1 + 2752);
  if (*(v13 + 2) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = ec_dec_icdf(a2, (*(v13 + 40) + v23[v14]), 8);
      if (v15 == 8)
      {
        LOBYTE(v15) = ec_dec_icdf(a2, silk_NLSF_EXT_iCDF, 8) + 8;
      }

      else if (!v15)
      {
        v15 = -ec_dec_icdf(a2, silk_NLSF_EXT_iCDF, 8);
      }

      *(a1 + 2769 + v14) = v15 - 4;
      v13 = *(a1 + 2752);
      ++v14;
    }

    while (v14 < *(v13 + 2));
  }

  if (*(a1 + 2324) == 4)
  {
    v16 = ec_dec_icdf(a2, silk_NLSF_interpolation_factor_iCDF, 8);
  }

  else
  {
    v16 = 4;
  }

  *(a1 + 2791) = v16;
  if (*(a1 + 2789) == 2)
  {
    if (a5 == 2 && *(a1 + 2408) == 2 && (v17 = ec_dec_icdf(a2, silk_pitch_delta_iCDF, 8), v17 >= 1))
    {
      v18 = v17 + *(a1 + 2412) - 9;
    }

    else
    {
      *(a1 + 2786) = (*(a1 + 2316) >> 1) * ec_dec_icdf(a2, silk_pitch_lag_iCDF, 8);
      v18 = *(a1 + 2786) + ec_dec_icdf(a2, *(a1 + 2384), 8);
    }

    *(a1 + 2786) = v18;
    *(a1 + 2412) = v18;
    *(a1 + 2788) = ec_dec_icdf(a2, *(a1 + 2392), 8);
    *(a1 + 2792) = ec_dec_icdf(a2, silk_LTP_per_index_iCDF, 8);
    if (*(a1 + 2324) >= 1)
    {
      v19 = 0;
      do
      {
        *(a1 + 2764 + v19++) = ec_dec_icdf(a2, *(&silk_LTP_gain_iCDF_ptrs + *(a1 + 2792)), 8);
      }

      while (v19 < *(a1 + 2324));
    }

    if (a5)
    {
      v20 = 0;
    }

    else
    {
      v20 = ec_dec_icdf(a2, silk_LTPscale_iCDF, 8);
    }

    *(a1 + 2793) = v20;
  }

  *(a1 + 2408) = *(a1 + 2789);
  result = ec_dec_icdf(a2, silk_uniform4_iCDF, 8);
  *(a1 + 2794) = result;
  return result;
}

uint64_t silk_NLSF_unpack(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 2);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = (*(a3 + 32) + v4 * a4 / 2);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = (result + 2 * v5);
      *v9 = (v8 >> 1) & 7 | (8 * ((v8 >> 1) & 7));
      v10 = *(a3 + 2) - 1;
      if ((v8 & 1) == 0)
      {
        v10 = 0;
      }

      v11 = *(*(a3 + 24) + v10 + v5);
      v12 = (a2 + v5);
      *v12 = v11;
      v9[1] = (v7 >> 5) | (8 * (v7 >> 5));
      v12[1] = *(*(a3 + 24) + ((*(a3 + 2) - 1) & ((v7 << 27) >> 31)) + v5 + 1);
      v5 += 2;
    }

    while (v5 < *(a3 + 2));
  }

  return result;
}

uint64_t silk_stereo_find_predictor(int *a1, __int16 *a2, __int16 *a3, int *a4, int a5, int a6)
{
  v81 = 0;
  v82 = 0;
  silk_sum_sqr_shift(&v81 + 1, &v82 + 1, a2, a5);
  silk_sum_sqr_shift(&v81, &v82, a3, a5);
  if (SHIDWORD(v82) <= v82)
  {
    v12 = v82;
  }

  else
  {
    v12 = HIDWORD(v82);
  }

  v13 = (v12 & 1) + v12;
  v14 = SHIDWORD(v81) >> (v13 - BYTE4(v82));
  if (v14 <= 1)
  {
    v14 = 1;
  }

  LODWORD(v81) = v81 >> (v13 - v82);
  HIDWORD(v81) = v14;
  v15 = silk_inner_prod_aligned_scale(a2, a3, v13, a5);
  v16 = v15;
  v17 = HIDWORD(v81);
  if (v15 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = -v15;
  }

  v19 = __clz(v18);
  if (v81 >= 0)
  {
    v20 = HIDWORD(v81);
  }

  else
  {
    v20 = -HIDWORD(v81);
  }

  v21 = __clz(v20);
  v22 = HIDWORD(v81) << (v21 - 1);
  v23 = 0x1FFFFFFF / (v22 >> 16);
  v24 = (v15 << (v19 - 1) >> 16) * v23 + (((v15 << (v19 - 1)) * v23) >> 16);
  v25 = (v15 << (v19 - 1)) - (((v24 * v22) >> 29) & 0xFFFFFFF8);
  v26 = v24 + (v25 >> 16) * v23 + ((v25 * v23) >> 16);
  v27 = v19 - v21;
  if ((v27 + 16) >= 0x20)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26 >> (v27 + 16);
  }

  v29 = 0x80000000 >> (-16 - v27);
  if (v26 > v29)
  {
    v29 = v26;
  }

  if (v26 <= (0x7FFFFFFFu >> (-16 - v27)))
  {
    v30 = v29;
  }

  else
  {
    v30 = 0x7FFFFFFFu >> (-16 - v27);
  }

  v31 = v30 << (-16 - v27);
  if (v27 <= -17)
  {
    v32 = v31;
  }

  else
  {
    v32 = v28;
  }

  if (v32 <= -16384)
  {
    v32 = -16384;
  }

  if (v32 >= 0x4000)
  {
    result = 0x4000;
  }

  else
  {
    result = v32;
  }

  v34 = (result >> 16) * result + ((result * result) >> 16);
  if (v34 >= 0)
  {
    v35 = (result >> 16) * result + ((result * result) >> 16);
  }

  else
  {
    v35 = -v34;
  }

  if (a6 <= v35)
  {
    LOWORD(v36) = v35;
  }

  else
  {
    LOWORD(v36) = a6;
  }

  v37 = v13 >> 1;
  v38 = *a4;
  if (v81 <= 0)
  {
    v50 = 0;
    v36 = v36;
    v46 = v36 * (-v38 >> 16);
  }

  else
  {
    v39 = __clz(HIDWORD(v81));
    v40 = HIDWORD(v81) >> (24 - v39);
    LOBYTE(v41) = BYTE4(v81);
    v42 = HIDWORD(v81) << (v39 - 24);
    if (v39 != 24)
    {
      v41 = (HIDWORD(v81) << (v39 + 8)) | v40;
      if (HIDWORD(v81) <= 0x7F)
      {
        LOBYTE(v41) = (HIDWORD(v81) >> (56 - v39)) | v42;
      }
    }

    v43 = v41 & 0x7F;
    if (v39)
    {
      v44 = 0x8000;
    }

    else
    {
      v44 = 46214;
    }

    v45 = v44 >> (v39 >> 1);
    v36 = v36;
    v46 = ((((v45 + ((213 * v45 * v43) >> 16)) << v37) - v38) >> 16) * v36;
    v47 = (HIDWORD(v81) << (v39 + 8)) | v40;
    v48 = (HIDWORD(v81) >> (56 - v39)) | v42;
    if (HIDWORD(v81) <= 0x7F)
    {
      LOBYTE(v47) = v48;
    }

    if (v39 == 24)
    {
      v49 = BYTE4(v81);
    }

    else
    {
      v49 = v47;
    }

    v50 = v45 + ((213 * v45 * (v49 & 0x7F)) >> 16);
  }

  v51 = v46 + v38 + ((((v50 << v37) - v38) * v36) >> 16);
  *a4 = v51;
  v52 = v81 - 16 * (result * (v16 >> 16) + ((result * v16) >> 16)) + ((v34 * (v17 >> 16) + ((v34 * v17) >> 16)) << 6);
  if (v52 < 1)
  {
    v60 = 0;
    v63 = 0;
  }

  else
  {
    v53 = __clz(v52);
    v54 = v52 >> (24 - v53);
    LOBYTE(v55) = v52;
    v56 = v52 << (v53 - 24);
    if (v53 != 24)
    {
      v55 = (v52 << (v53 + 8)) | v54;
      if (v52 <= 0x7F)
      {
        LOBYTE(v55) = (v52 >> (56 - v53)) | v56;
      }
    }

    v57 = v55 & 0x7F;
    if (v53)
    {
      v58 = 0x8000;
    }

    else
    {
      v58 = 46214;
    }

    v59 = v58 >> (v53 >> 1);
    v60 = (v59 + ((213 * v59 * v57) >> 16)) << v37;
    v61 = (v52 << (v53 + 8)) | v54;
    v62 = (v52 >> (56 - v53)) | v56;
    if (v52 <= 0x7F)
    {
      LOBYTE(v61) = v62;
    }

    if (v53 != 24)
    {
      LOBYTE(v52) = v61;
    }

    v63 = v59 + ((213 * v59 * (v52 & 0x7F)) >> 16);
  }

  v64 = a4[1] + ((v60 - a4[1]) >> 16) * v36 + ((((v63 << v37) - a4[1]) * v36) >> 16);
  a4[1] = v64;
  if (v51 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = v51;
  }

  if (v64 >= 0)
  {
    v66 = v64;
  }

  else
  {
    v66 = -v64;
  }

  v67 = __clz(v66);
  v68 = v64 << (v67 - 1);
  v69 = __clz(v65);
  v70 = v65 << (v69 - 1);
  v71 = 0x1FFFFFFF / (v70 >> 16);
  v72 = (v68 >> 16) * v71 + ((v68 * v71) >> 16);
  v73 = v68 - (((v72 * v70) >> 29) & 0xFFFFFFF8);
  v74 = v72 + (v73 >> 16) * v71 + ((v73 * v71) >> 16);
  v75 = v67 - v69;
  if (v67 - v69 + 15 >= 0x20)
  {
    v76 = 0;
  }

  else
  {
    v76 = v74 >> (v75 + 15);
  }

  v77 = 0x80000000 >> (-15 - v75);
  if (v74 > v77)
  {
    v77 = v74;
  }

  if (v74 <= (0x7FFFFFFFu >> (-15 - v75)))
  {
    v78 = v77;
  }

  else
  {
    v78 = 0x7FFFFFFFu >> (-15 - v75);
  }

  v79 = v78 << (-15 - v75);
  if (v75 > -16)
  {
    v79 = v76;
  }

  v80 = v79 & ~(v79 >> 31);
  if (v80 >= 0x7FFF)
  {
    v80 = 0x7FFF;
  }

  *a1 = v80;
  return result;
}

uint64_t *silk_shell_encoder(uint64_t *result, int *a2)
{
  v3 = result;
  v4 = 0;
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  do
  {
    v31 = vld2q_f32(v5);
    v5 += 8;
    *(&v21 + v4) = vaddq_s32(v31.val[1], v31.val[0]);
    v4 += 16;
  }

  while (v4 != 32);
  v6 = &v21;
  v32 = vld2q_f32(v6);
  v7 = vaddq_s32(v32.val[1], v32.val[0]);
  v8 = v7.i32[1];
  v9 = v7.i32[2];
  v10 = v7.i32[0];
  v11 = v7.i32[1] + v7.i32[0];
  v20 = v7.i32[3];
  v12 = v7.i32[3] + v7.i32[2];
  v13 = v7.i32[3] + v7.i32[2] + v7.i32[1] + v7.i32[0];
  if (v13 >= 1)
  {
    result = ec_enc_icdf(result, v7.i32[1] + v7.i32[0], &silk_shell_code_table3[silk_shell_code_table_offsets[v13]], 8);
  }

  if (v11 >= 1)
  {
    result = ec_enc_icdf(v3, v10, &silk_shell_code_table2[silk_shell_code_table_offsets[v11]], 8);
  }

  v14 = v21;
  if (v10 >= 1)
  {
    result = ec_enc_icdf(v3, v21, &silk_shell_code_table1[silk_shell_code_table_offsets[v10]], 8);
  }

  if (v14 >= 1)
  {
    result = ec_enc_icdf(v3, *a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v14]], 8);
  }

  if (v22 >= 1)
  {
    result = ec_enc_icdf(v3, a2[2], &silk_shell_code_table0[silk_shell_code_table_offsets[v22]], 8);
  }

  v15 = v23;
  if (v8 >= 1)
  {
    result = ec_enc_icdf(v3, v23, &silk_shell_code_table1[silk_shell_code_table_offsets[v8]], 8);
  }

  if (v15 >= 1)
  {
    result = ec_enc_icdf(v3, a2[4], &silk_shell_code_table0[silk_shell_code_table_offsets[v15]], 8);
  }

  if (v24 >= 1)
  {
    result = ec_enc_icdf(v3, a2[6], &silk_shell_code_table0[silk_shell_code_table_offsets[v24]], 8);
  }

  if (v12 >= 1)
  {
    result = ec_enc_icdf(v3, v9, &silk_shell_code_table2[silk_shell_code_table_offsets[v12]], 8);
  }

  v16 = v25;
  if (v9 >= 1)
  {
    result = ec_enc_icdf(v3, v25, &silk_shell_code_table1[silk_shell_code_table_offsets[v9]], 8);
  }

  if (v16 >= 1)
  {
    result = ec_enc_icdf(v3, a2[8], &silk_shell_code_table0[silk_shell_code_table_offsets[v16]], 8);
  }

  if (v26 >= 1)
  {
    result = ec_enc_icdf(v3, a2[10], &silk_shell_code_table0[silk_shell_code_table_offsets[v26]], 8);
  }

  v17 = v27;
  if (v20 >= 1)
  {
    result = ec_enc_icdf(v3, v27, &silk_shell_code_table1[silk_shell_code_table_offsets[v20]], 8);
  }

  if (v17 >= 1)
  {
    result = ec_enc_icdf(v3, a2[12], &silk_shell_code_table0[silk_shell_code_table_offsets[v17]], 8);
  }

  if (v28 >= 1)
  {
    v18 = a2[14];
    v19 = &silk_shell_code_table0[silk_shell_code_table_offsets[v28]];

    return ec_enc_icdf(v3, v18, v19, 8);
  }

  return result;
}

uint64_t silk_shell_decoder(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    v10 = 0;
    v7 = 0;
  }

  else
  {
    v6 = ec_dec_icdf(a2, &silk_shell_code_table3[silk_shell_code_table_offsets[a3]], 8);
    v7 = a3 - v6;
    if (v6 < 1)
    {
      v10 = 0;
    }

    else
    {
      v8 = v6;
      v9 = ec_dec_icdf(a2, &silk_shell_code_table2[silk_shell_code_table_offsets[v6]], 8);
      v10 = v8 - v9;
      if (v9 > 0)
      {
        v11 = v9;
        v12 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v9]], 8);
        v13 = v11 - v12;
        if (v12 < 1)
        {
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v14 = v12;
          v15 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v12]], 8);
          v16 = v14 - v15;
        }

        *a1 = v15;
        *(a1 + 4) = v16;
        if (v13 < 1)
        {
          v17 = 0;
          v18 = 0;
        }

        else
        {
          v17 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v13]], 8);
          v18 = v13 - v17;
        }

        goto LABEL_9;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  *a1 = 0;
LABEL_9:
  *(a1 + 8) = v17;
  *(a1 + 12) = v18;
  if (v10 <= 0)
  {
    v24 = 0;
    v25 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v19 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v10]], 8);
    v20 = v10 - v19;
    if (v19 < 1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v21 = v19;
      v22 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v19]], 8);
      v23 = v21 - v22;
    }

    *(a1 + 16) = v22;
    *(a1 + 20) = v23;
    if (v20 < 1)
    {
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v24 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v20]], 8);
      v25 = v20 - v24;
    }
  }

  *(a1 + 24) = v24;
  *(a1 + 28) = v25;
  if (v7 < 1)
  {
    v27 = 0;
  }

  else
  {
    v26 = ec_dec_icdf(a2, &silk_shell_code_table2[silk_shell_code_table_offsets[v7]], 8);
    v27 = v7 - v26;
    if (v26 > 0)
    {
      v28 = v26;
      v29 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v26]], 8);
      v30 = v28 - v29;
      if (v29 < 1)
      {
        v32 = 0;
        v33 = 0;
      }

      else
      {
        v31 = v29;
        v32 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v29]], 8);
        v33 = v31 - v32;
      }

      *(a1 + 32) = v32;
      *(a1 + 36) = v33;
      if (v30 < 1)
      {
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v34 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v30]], 8);
        v35 = v30 - v34;
      }

      goto LABEL_27;
    }
  }

  v34 = 0;
  v35 = 0;
  *(a1 + 32) = 0;
LABEL_27:
  *(a1 + 40) = v34;
  *(a1 + 44) = v35;
  if (v27 <= 0)
  {
    result = 0;
    v42 = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    v36 = ec_dec_icdf(a2, &silk_shell_code_table1[silk_shell_code_table_offsets[v27]], 8);
    v37 = v27 - v36;
    if (v36 < 1)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v38 = v36;
      v39 = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v36]], 8);
      v40 = v38 - v39;
    }

    *(a1 + 48) = v39;
    *(a1 + 52) = v40;
    if (v37 < 1)
    {
      result = 0;
      v42 = 0;
    }

    else
    {
      result = ec_dec_icdf(a2, &silk_shell_code_table0[silk_shell_code_table_offsets[v37]], 8);
      v42 = v37 - result;
    }
  }

  *(a1 + 56) = result;
  *(a1 + 60) = v42;
  return result;
}

int *silk_LP_variable_cutoff(int *result, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = result[3];
  if (!v3)
  {
    return result;
  }

  v4 = result[2];
  v5 = (0x40000 - (v4 << 10)) >> 16;
  if (v5 > 3)
  {
    v33 = 0xAA4FADA0552B622;
    v34 = 89306658;
    v18 = &qword_26ED6CEDC;
LABEL_12:
    v32 = *v18;
    goto LABEL_13;
  }

  v6 = (-1024 * v4);
  if (!(-1024 * v4))
  {
    v19 = &silk_Transition_LP_B_Q28 + 12 * v5;
    v33 = *v19;
    v34 = *(v19 + 2);
    v18 = (&silk_Transition_LP_A_Q28 + 8 * v5);
    goto LABEL_12;
  }

  v7 = v5;
  v8 = v5 + 1;
  if (v6 >= 0x8000)
  {
    v21 = (&silk_Transition_LP_B_Q28 + 12 * v5);
    v22 = &v33;
    v23 = 3;
    do
    {
      v24 = v21[3];
      v25 = *v21++;
      *v22 = v24 + ((v24 - v25) >> 16) * v6 + (((v24 - v25) * v6) >> 16);
      v22 = (v22 + 4);
      --v23;
    }

    while (v23);
    v26 = 0;
    v27 = &v32;
    v28 = 1;
    v29 = &silk_Transition_LP_A_Q28 + 8 * v8;
    v30 = &silk_Transition_LP_A_Q28 + 8 * v7;
    do
    {
      v31 = v28;
      *v27 = *&v29[4 * v26] + ((*&v29[4 * v26] - *&v30[4 * v26]) >> 16) * v6 + (((*&v29[4 * v26] - *&v30[4 * v26]) * v6) >> 16);
      v27 = (&v32 + 4);
      v26 = 1;
      v28 = 0;
    }

    while ((v31 & 1) != 0);
  }

  else
  {
    v9 = (&silk_Transition_LP_B_Q28 + 12 * v5);
    v10 = &v33;
    v11 = 3;
    do
    {
      *v10 = *v9 + ((v9[3] - *v9) >> 16) * v6 + (((*(v9 + 6) - *v9) * v6) >> 16);
      v10 = (v10 + 4);
      ++v9;
      --v11;
    }

    while (v11);
    v12 = 0;
    v13 = &v32;
    v14 = 1;
    v15 = &silk_Transition_LP_A_Q28 + 8 * v7;
    v16 = &silk_Transition_LP_A_Q28 + 8 * v8;
    do
    {
      v17 = v14;
      *v13 = *&v15[4 * v12] + ((*&v16[4 * v12] - *&v15[4 * v12]) >> 16) * v6 + (((*&v16[4 * v12] - *&v15[4 * v12]) * v6) >> 16);
      v13 = (&v32 + 4);
      v12 = 1;
      v14 = 0;
    }

    while ((v17 & 1) != 0);
  }

LABEL_13:
  v20 = (v4 + v3) & ~((v4 + v3) >> 31);
  if (v20 >= 256)
  {
    v20 = 256;
  }

  result[2] = v20;
  return silk_biquad_alt(a2, &v33, &v32, result, a2, a3, 1);
}

void *silk_process_NLSFs(uint64_t a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a1 + 4096;
  v9 = ((59246 * *(a1 + 4556)) >> 16) - 5 * *(a1 + 4556) + 3146;
  if (*(a1 + 4604) == 2)
  {
    v10 = v9 >> 1;
  }

  else
  {
    v10 = 0;
  }

  silk_NLSF_VQ_weights_laroia(v20, a3, *(a1 + 4664));
  if (*(a1 + 4656) == 1 && (v11 = *(v8 + 719), v11 <= 3))
  {
    silk_interpolate(v21, a4, a3, v11, *(a1 + 4664));
    silk_NLSF_VQ_weights_laroia(v19, v21, *(a1 + 4664));
    v12 = *(a1 + 4664);
    if (v12 >= 1)
    {
      v13 = ((*(v8 + 719) * *(v8 + 719)) << 11);
      v14 = v19;
      v15 = v20;
      do
      {
        v16 = *v14++;
        *v15 = (v16 >> 15) * v13 + ((v16 * v13) >> 16) + (*v15 >> 1);
        ++v15;
        --v12;
      }

      while (v12);
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  silk_NLSF_encode((a1 + 4792), a3, *(a1 + 4736), v20, v10 + v9, *(a1 + 4692), *(v8 + 717));
  silk_NLSF2A(a2 + 16, a3, *(a1 + 4664));
  if (!v17)
  {
    return memcpy(a2, a2 + 16, 2 * *(a1 + 4664));
  }

  silk_interpolate(v21, a4, a3, *(v8 + 719), *(a1 + 4664));
  return silk_NLSF2A(a2, v21, *(a1 + 4664));
}

__n128 silk_decode_core(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v133 = a3;
  v140 = a2;
  v153 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 2336);
  v7 = &v131 - ((2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, 2 * v6);
  v8 = *(a1 + 2328);
  v9 = 4 * (v8 + v6);
  v10 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  v11 = 4 * *(a1 + 2332);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v11);
  v13 = &v131 - ((v11 + 79) & 0xFFFFFFFFFFFFFFF0);
  v138 = *(a1 + 2791);
  if (v8 >= 1)
  {
    v14 = 0;
    v15 = *(a1 + 2794);
    v16 = 16 * silk_Quantization_Offsets_Q10[2 * (*(a1 + 2789) >> 1) + *(a1 + 2790)];
    do
    {
      v17 = 196314165 * v15 + 907633515;
      v18 = *(a4 + 4 * v14) << 14;
      v19 = (v18 | 0x500) & (v18 >> 31);
      if (v18 > 0)
      {
        v19 = v18 - 1280;
      }

      v20 = v19 + v16;
      if (v17 < 0)
      {
        v20 = -v20;
      }

      *(a1 + 4 + 4 * v14) = v20;
      v15 = *(a4 + 4 * v14++) + v17;
    }

    while (v14 < *(a1 + 2328));
  }

  bzero(&v131 - ((v11 + 79) & 0xFFFFFFFFFFFFFFF0), v11 + 64);
  v21 = *(a1 + 1300);
  *v13 = *(a1 + 1284);
  *(v13 + 1) = v21;
  v22 = *(a1 + 1316);
  v23 = *(a1 + 1332);
  v132 = (a1 + 1284);
  *(v13 + 2) = v22;
  *(v13 + 3) = v23;
  if (*(a1 + 2324) >= 1)
  {
    v24 = 0;
    v25 = (a1 + 4);
    v144 = *(a1 + 2336);
    v142 = v140 + 96;
    v143 = v140 + 32;
    v141 = v140 + 16;
    v145 = a1 + 1348;
    v147 = v133;
    v135 = v7;
    do
    {
      v146 = v143 + 32 * (v24 >> 1);
      __memcpy_chk();
      v26 = *(v141 + 4 * v24);
      if (v26 >= 0)
      {
        v27 = *(v141 + 4 * v24);
      }

      else
      {
        v27 = -v26;
      }

      v28 = __clz(v27);
      v29 = v26 << (v28 - 1);
      v30 = 0x1FFFFFFF / (v29 >> 16);
      v31 = v30;
      v32 = (v29 >> 16) * v31 + ((v29 * v31) >> 16);
      v33 = (v30 << 16) - 8 * v32 * (((v30 >> 15) + 1) >> 1) + ((-8 * v32) >> 16) * v31 + ((((-8 * v32) & 0xFFF8) * v31) >> 16);
      v34 = v27 >> 17;
      v35 = v33 >> (15 - v28);
      v36 = 0x80000000 >> (v28 - 15);
      if (v33 > v36)
      {
        v36 = v33;
      }

      if (v33 <= (0x7FFFFFFFu >> (v28 - 15)))
      {
        v37 = v36;
      }

      else
      {
        v37 = 0x7FFFFFFFu >> (v28 - 15);
      }

      v38 = v37 << (v28 - 15);
      if (v34)
      {
        v39 = v35;
      }

      else
      {
        v39 = v38;
      }

      v40 = *a1;
      if (v26 == *a1)
      {
        v41 = 0x10000;
      }

      else
      {
        v42 = 0;
        if (v40 >= 0)
        {
          v43 = *a1;
        }

        else
        {
          v43 = -v40;
        }

        v44 = __clz(v43);
        v45 = v40 << (v44 - 1);
        v46 = (v45 >> 16) * v31 + ((v45 * v31) >> 16);
        v47 = v45 - (((v46 * v29) >> 29) & 0xFFFFFFF8);
        v48 = v46 + (v47 >> 16) * v31 + ((v47 * v31) >> 16);
        v49 = v44 - v28;
        if ((v49 + 29) >= 0x30)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48 >> (v49 + 13);
        }

        v51 = 0x80000000 >> (-13 - v49);
        if (v48 > v51)
        {
          v51 = v48;
        }

        if (v48 <= (0x7FFFFFFFu >> (-13 - v49)))
        {
          v52 = v51;
        }

        else
        {
          v52 = 0x7FFFFFFFu >> (-13 - v49);
        }

        v53 = v52 << (-13 - v49);
        if (v49 <= -14)
        {
          v41 = v53;
        }

        else
        {
          v41 = v50;
        }

        v54 = vdupq_n_s32(v41 >> 16);
        v55 = vdupq_n_s32(v41);
        v56 = vdupq_n_s32(v41);
        v57.i64[0] = 0x100000001;
        v57.i64[1] = 0x100000001;
        do
        {
          v58 = *&v13[v42];
          v59 = vshrq_n_s32(vshlq_n_s32(v58, 0x10uLL), 0x10uLL);
          *&v13[v42] = vmlaq_s32(vsraq_n_s32(vmulq_s32(v59, v54), vmulq_s32(v59, v55), 0x10uLL), vhaddq_s32(vshrq_n_s32(v58, 0xFuLL), v57), v56);
          v42 += 16;
        }

        while (v42 != 64);
      }

      v60 = v145;
      v61.i64[0] = 0xFFFF0000FFFFLL;
      v61.i64[1] = 0xFFFF0000FFFFLL;
      v62 = (v142 + 10 * v24);
      v63 = *(a1 + 2789);
      *a1 = v26;
      if (!*(a1 + 4184) || (*(a1 + 4188) == 2 ? (v64 = v24 > 1) : (v64 = 1), !v64 ? (v65 = v63 == 2) : (v65 = 1), v65))
      {
        if (v63 != 2)
        {
          LODWORD(v66) = *(a1 + 2332);
          v67 = v25;
          goto LABEL_77;
        }

        v68 = *(v140 + 4 * v24);
      }

      else
      {
        *v62 = 0;
        v62[4] = 0;
        v62[2] = 4096;
        v68 = *(a1 + 2308);
        *(v140 + 4 * v24) = v68;
      }

      v70 = v138 < 4 && v24 == 2;
      if (!v24 || v70)
      {
        v136 = v39;
        v73 = *(a1 + 2336);
        v74 = *(a1 + 2340);
        v75 = *(a1 + 2332);
        v137 = v62;
        v139 = v68;
        if (v24 == 2)
        {
          v134 = v74;
          memcpy((v60 + 2 * v73), v133, 4 * v75);
          v74 = v134;
          v68 = v139;
          v60 = v145;
          v75 = *(a1 + 2332);
          v76 = *(a1 + 2336);
          v77 = *(a1 + 2340);
        }

        else
        {
          v77 = v74;
          v76 = v73;
        }

        v78 = v73 - v74 - v68 - 2;
        v79 = v135;
        silk_LPC_analysis_filter(&v135[2 * v78], v60 + 2 * (v78 + v75 * v24), v146, v76 - v78, v77);
        if (v24)
        {
          v61.i64[0] = 0xFFFF0000FFFFLL;
          v61.i64[1] = 0xFFFF0000FFFFLL;
          v62 = v137;
          v80 = v136;
        }

        else
        {
          v80 = 4 * (*(v140 + 136) * (v136 >> 16) + ((*(v140 + 136) * v136) >> 16));
          v61.i64[0] = 0xFFFF0000FFFFLL;
          v61.i64[1] = 0xFFFF0000FFFFLL;
          v62 = v137;
        }

        v68 = v139;
        if (v139 >= -1)
        {
          v81 = (v139 + 2);
          v82 = v144 - 1;
          v83 = *(a1 + 2336) - 1;
          do
          {
            v84 = *&v79[2 * v83];
            *&v10[4 * v82--] = (v80 >> 16) * v84 + ((v80 * v84) >> 16);
            --v83;
            --v81;
          }

          while (v81);
        }
      }

      else if (v41 != 0x10000 && v68 >= -1)
      {
        v71 = (v68 + 2);
        v72 = v144 - 1;
        do
        {
          *&v10[4 * v72] = *&v10[4 * v72] * (v41 >> 16) + ((*&v10[4 * v72] * v41) >> 16) + (((*&v10[4 * v72] >> 15) + 1) >> 1) * v41;
          --v72;
          --v71;
        }

        while (v71);
      }

      v66 = *(a1 + 2332);
      if (v66 < 1)
      {
        goto LABEL_86;
      }

      v85 = 0;
      v86 = *v62;
      v87 = vmovl_s16(*(v62 + 1));
      v88 = vrev64q_s32(v87);
      v89 = vextq_s8(v88, v88, 8uLL);
      v89.i32[0] = v86;
      v90 = &v10[4 * v144];
      v91 = &v10[4 * v144 - 4 * v68];
      v144 = (v144 + v66);
      do
      {
        v92 = *&v91[v85 - 8];
        v93 = vandq_s8(v92, v61);
        v92.i32[0] = *&v91[v85 + 8];
        v94 = vrev64q_s32(v93);
        v95 = v25[v85 / 4] + 2 * (vaddvq_s32(vsraq_n_s32(vmulq_s32(vshrq_n_s32(v92, 0x10uLL), v89), vmulq_s32(vextq_s8(v94, v94, 8uLL), v87), 0x10uLL)) + ((v92.u16[0] * v86) >> 16) + (*&v91[v85 - 8] >> 16) * v87.i32[3]) + 4;
        *&v12[v85] = v95;
        *&v90[v85] = 2 * v95;
        v85 += 4;
      }

      while (4 * v66 != v85);
      v67 = v12;
LABEL_77:
      if (v66 >= 1)
      {
        v96 = *(a1 + 2340);
        v97 = *v148;
        v98 = vmovl_s16(*&v148[2]);
        v99 = vmovl_high_s16(*&v148[2]);
        v100 = v149;
        v101 = vmovl_s16(v150);
        v102 = v151;
        v103 = v152;
        v104 = v66;
        v105 = *(v13 + 15);
        v106 = vmovl_high_s16(*v148);
        v107 = vmovl_s16(*v148);
        v108 = v147;
        v109 = v13;
        do
        {
          v110 = *(v109 + 44);
          v111 = *(v109 + 28);
          v112 = vrev64q_s32(vextq_s8(v111, v110, 4uLL));
          v113 = vandq_s8(v111, v61);
          v114 = vrev64q_s32(vextq_s8(v110, v110, 0xCuLL));
          v114.i32[0] = v105;
          v115 = vrev64q_s32(vandq_s8(v110, v61));
          v116 = vrev64q_s32(v113);
          v117 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v115, v115, 8uLL), v98), 0x10uLL), vmulq_s32(vextq_s8(v116, v116, 8uLL), v99), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(vextq_s8(v112, v112, 8uLL), 0x10uLL), v106), vshrq_n_s32(v114, 0x10uLL), v107))) + ((v105 * v97) >> 16) + (*(v109 + 28) >> 16) * v99.i32[3] + ((*(v109 + 6) * v100) >> 16) + (v96 >> 1) + (*(v109 + 6) >> 16) * v100;
          if (v96 == 16)
          {
            v118 = *(v109 + 8);
            v119 = vrev64q_s32(vshrq_n_s32(v118, 0x10uLL));
            v120 = vrev64q_s32(vandq_s8(v118, v61));
            v117 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v119, v119, 8uLL), v101), vmulq_s32(vextq_s8(v120, v120, 8uLL), v101), 0x10uLL)) + ((*(v109 + 1) * v102) >> 16) + (*(v109 + 1) >> 16) * v102 + ((*v109 * v103) >> 16) + (*v109 >> 16) * v103;
          }

          v121 = *v67++;
          v105 = v121 + 16 * v117;
          *(v109 + 16) = v105;
          v122 = (((v105 * (((v26 >> 21) + 1) >> 1) + (v105 >> 16) * (v26 >> 6) + ((v105 * (v26 >> 6)) >> 16)) >> 7) + 1) >> 1;
          if (v122 <= -32768)
          {
            v122 = -32768;
          }

          if (v122 >= 0x7FFF)
          {
            LOWORD(v122) = 0x7FFF;
          }

          *v108++ = v122;
          v109 += 4;
          --v104;
        }

        while (v104);
      }

LABEL_86:
      v123 = &v13[4 * v66];
      v124 = *v123;
      v125 = *(v123 + 1);
      v126 = *(v123 + 3);
      *(v13 + 2) = *(v123 + 2);
      *(v13 + 3) = v126;
      *v13 = v124;
      *(v13 + 1) = v125;
      v25 += v66;
      v147 += 2 * v66;
      ++v24;
    }

    while (v24 < *(a1 + 2324));
  }

  v127 = *(v13 + 1);
  v128 = v132;
  *v132 = *v13;
  v128[1] = v127;
  result = *(v13 + 2);
  v130 = *(v13 + 3);
  v128[2] = result;
  v128[3] = v130;
  return result;
}

_DWORD *silk_stereo_quant_pred(_DWORD *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = (a2 + 3 * v2);
    v8 = 0x7FFFFFFF;
    while (1)
    {
      v9 = (&silk_stereo_pred_quant_Q13 + 2 * v5);
      v10 = *v9;
      v11 = 429522944 * ((v9[1] - v10) >> 16) + 6554 * (v9[1] - *v9);
      v12 = v10 + (v11 >> 16);
      v13 = result[v2] - v12;
      if (v13 < 0)
      {
        v13 = v12 - result[v2];
      }

      if (v13 >= v8)
      {
        LOBYTE(v5) = *v7;
        goto LABEL_26;
      }

      v14 = v11 >> 16;
      *v7 = v5;
      v7[1] = 0;
      v3 = 3 * (v11 >> 16) + v10;
      v15 = result[v2] - v3;
      if (v15 < 0)
      {
        v15 = v3 - result[v2];
      }

      if (v15 >= v13)
      {
        v3 = v12;
        goto LABEL_26;
      }

      v7[1] = 1;
      v16 = 5 * v14 + v10;
      v17 = result[v2] - v16;
      if (v17 < 0)
      {
        v17 = v16 - result[v2];
      }

      if (v17 >= v15)
      {
        goto LABEL_26;
      }

      v7[1] = 2;
      v18 = v10 - v14 + 8 * v14;
      if (result[v2] - v18 >= 0)
      {
        v19 = result[v2] - v18;
      }

      else
      {
        v19 = v18 - result[v2];
      }

      if (v19 >= v17)
      {
        v3 = v16;
        goto LABEL_26;
      }

      v3 = v12 + 8 * v14;
      v7[1] = 3;
      v8 = result[v2] - v3 >= 0 ? result[v2] - v3 : v3 - result[v2];
      if (v8 >= v19)
      {
        break;
      }

      ++v5;
      v7[1] = 4;
      if (v5 == 15)
      {
        LOBYTE(v5) = 14;
        goto LABEL_26;
      }
    }

    v3 = v18;
LABEL_26:
    v4 = 0;
    v20 = (((86 * v5) >> 15) & 1) + ((86 * v5) >> 8);
    v7[2] = v20;
    *v7 = -3 * v20 + v5;
    result[v2] = v3;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  *result -= result[1];
  return result;
}

int *silk_resampler_down2(int *result, _WORD *a2, uint64_t a3, int a4)
{
  v4 = (a4 >> 1);
  if (v4 >= 1)
  {
    v5 = (a3 + 2);
    v7 = *result;
    v6 = result[1];
    do
    {
      v8 = *(v5 - 1);
      v9 = (v8 << 10) - v7;
      v10 = -25727 * (v9 >> 16) + ((-25727 * v9) >> 16) + (v8 << 10);
      v7 = v10 + v9;
      v11 = *v5;
      v12 = 9872 * (((v11 << 10) - v6) >> 16) + ((9872 * ((*v5 << 10) - v6)) >> 16);
      v13 = v10 + v6 + v12;
      v6 = v12 + (v11 << 10);
      v14 = ((v13 >> 10) + 1) >> 1;
      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      if (v14 >= 0x7FFF)
      {
        LOWORD(v14) = 0x7FFF;
      }

      *a2++ = v14;
      v5 += 2;
      --v4;
    }

    while (v4);
    *result = v7;
    result[1] = v6;
  }

  return result;
}

uint64_t silk_ana_filt_bank_1(uint64_t result, int *a2, _WORD *a3, _WORD *a4, int a5)
{
  v5 = (a5 >> 1);
  if (v5 >= 1)
  {
    v6 = (result + 2);
    v8 = *a2;
    v7 = a2[1];
    do
    {
      v9 = *(v6 - 1);
      v10 = (v9 << 10) - v8;
      v11 = -24290 * (v10 >> 16) + ((-24290 * v10) >> 16) + (v9 << 10);
      v8 = v11 + v10;
      v12 = *v6;
      result = 10788 * (((v12 << 10) - v7) >> 16) + ((10788 * ((v12 << 10) - v7)) >> 16);
      v13 = result + v7;
      v7 = result + (v12 << 10);
      v14 = (((v13 + v11) >> 10) + 1) >> 1;
      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      if (v14 >= 0x7FFF)
      {
        LOWORD(v14) = 0x7FFF;
      }

      *a3++ = v14;
      v15 = (((v13 - v11) >> 10) + 1) >> 1;
      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      if (v15 >= 0x7FFF)
      {
        LOWORD(v15) = 0x7FFF;
      }

      *a4++ = v15;
      v6 += 2;
      --v5;
    }

    while (v5);
    *a2 = v8;
    a2[1] = v7;
  }

  return result;
}

uint64_t silk_A2NLSF(_WORD *a1, int *a2, int a3)
{
  v104 = *MEMORY[0x277D85DE8];
  v100 = v103;
  v101 = v102;
  v3 = a3 >> 1;
  v4 = a3 >> 1;
  v103[v3] = 0x10000;
  v102[v3] = 0x10000;
  v5 = &a2[v4];
  v91 = v5;
  if (a3 >> 1 <= 0)
  {
    v26 = 0;
    v21 = silk_LSFCosTab_FIX_Q12[0];
    v27 = v103;
    v20 = 0x10000;
  }

  else
  {
    v6 = 0;
    v7 = 0x3FFFFFFFFFFFFFFFLL;
    do
    {
      v8 = v5[v7];
      v9 = v5[v6];
      v103[v6] = -(v8 + v9);
      v102[v6++] = v9 - v8;
      --v7;
    }

    while (v4 != v6);
    v10 = v103[v4];
    v11 = v102[v4];
    v12 = v4 - 1;
    v13 = v4 - 1;
    do
    {
      v10 = v103[v13] - v10;
      v103[v13] = v10;
      v11 += v102[v13];
      v102[v13] = v11;
      v14 = v13-- + 1;
    }

    while (v14 > 1);
    if (v4 != 1)
    {
      v15 = (v4 + 1);
      v16 = 2;
      do
      {
        if (v16 < v4)
        {
          v17 = a3 >> 1;
          do
          {
            v102[v17 + 7] -= v103[v17];
            --v17;
          }

          while (v17 > v16);
        }

        v102[v16 + 7] -= 2 * v103[v16];
        ++v16;
      }

      while (v16 != v15);
      v18 = 2;
      do
      {
        if (v18 < v4)
        {
          v19 = a3 >> 1;
          do
          {
            v102[v19 - 2] -= v102[v19];
            --v19;
          }

          while (v19 > v18);
        }

        v102[v18 - 2] -= 2 * v102[v18];
        ++v18;
      }

      while (v18 != v15);
    }

    LODWORD(v20) = v103[v4];
    v21 = silk_LSFCosTab_FIX_Q12[0];
    v22 = (16 * silk_LSFCosTab_FIX_Q12[0]);
    v23 = ((silk_LSFCosTab_FIX_Q12[0] >> 11) + 1) >> 1;
    v24 = v4 - 1;
    do
    {
      v20 = (v103[v24] + v20 * v23 + (v20 >> 16) * v22 + ((v20 * v22) >> 16));
      v25 = v24-- + 1;
    }

    while (v25 > 1);
    if ((v20 & 0x80000000) != 0)
    {
      *a1 = 0;
      v27 = v102;
      LODWORD(v20) = v102[v4];
      do
      {
        v20 = (v102[v12] + v20 * v23 + (v20 >> 16) * v22 + ((v20 * v22) >> 16));
        v28 = v12-- + 1;
      }

      while (v28 > 1);
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v27 = v103;
    }
  }

  v29 = 0;
  v93 = (16 * v21);
  v94 = v21;
  v92 = ((v21 >> 11) + 1) >> 1;
  v89 = 4 * v4;
  v30 = v89 - 4;
  while (1)
  {
    v96 = v29;
    v31 = 1;
    v32 = v21;
    do
    {
      v33 = 0;
      v34 = v32;
      v32 = silk_LSFCosTab_FIX_Q12[v31];
      v35 = (16 * silk_LSFCosTab_FIX_Q12[v31]);
      v36 = v31 << 8;
      v97 = v31;
      v37 = v31 - 1;
      for (result = v20; ; result = 4096 - ((v26 << 12) & 0x2000u))
      {
        v39 = *&v27[4 * v4];
        v20 = v39;
        if (v4 >= 1)
        {
          v40 = &v27[v30];
          v41 = v4 + 1;
          LODWORD(v20) = *&v27[4 * v4];
          do
          {
            v42 = *v40--;
            v20 = (v42 + v20 * (((v32 >> 11) + 1) >> 1) + (v20 >> 16) * v35 + ((v20 * v35) >> 16));
            --v41;
          }

          while (v41 > 1);
        }

        if ((result > 0 || v20 < v33) && ((result & 0x80000000) != 0 || v20 > -v33))
        {
          break;
        }

        v43 = 0;
        v44 = &v27[v30];
        v45 = -256;
        v46 = v20;
        v47 = v32;
        do
        {
          v49 = v39;
          if (v4 >= 1)
          {
            v50 = v44;
            v51 = v4 + 1;
            LODWORD(v49) = v39;
            do
            {
              v52 = *v50--;
              v48 = ((v47 + v34) & 1) + ((v47 + v34) >> 1);
              v49 = (v52 + v49 * ((((16 * v48) >> 15) + 1) >> 1) + (v49 >> 16) * (16 * v48) + ((v49 * (16 * v48)) >> 16));
              --v51;
            }

            while (v51 > 1);
          }

          if ((result > 0 || (v49 & 0x80000000) != 0) && ((result & 0x80000000) != 0 || v49 >= 1))
          {
            v45 += 0x80u >> v43;
            v34 = ((v47 + v34) & 1) + ((v47 + v34) >> 1);
            result = v49;
          }

          else
          {
            v47 = ((v47 + v34) & 1) + ((v47 + v34) >> 1);
            v46 = v49;
          }

          ++v43;
        }

        while (v43 != 3);
        v33 = v20 == 0;
        if (result >= 0)
        {
          v53 = result;
        }

        else
        {
          v53 = -result;
        }

        if (HIWORD(v53))
        {
          v45 += result / ((result - v46) >> 5);
        }

        else if (result != v46)
        {
          v45 += (((result - v46) >> 1) + 32 * result) / (result - v46);
        }

        v54 = v45 + v36;
        if (v45 + v36 >= 0x7FFF)
        {
          v54 = 0x7FFF;
        }

        a1[v26++] = v54;
        if (v26 >= a3)
        {
          return result;
        }

        v27 = (&v100)[v26 & 1];
        v34 = silk_LSFCosTab_FIX_Q12[v37];
      }

      v31 = v97 + 1;
    }

    while (v97 < 0x80);
    if (v96 >= 0x1E)
    {
      break;
    }

    v20 = 0x10000;
    silk_bwexpander_32(a2, a3, 0x10000 - (v96 + 11) * (v96 + 1));
    v26 = 0;
    v27 = v103;
    v103[v4] = 0x10000;
    v102[v4] = 0x10000;
    v29 = v96 + 1;
    v21 = v94;
    if (v4 >= 1)
    {
      v55 = 0;
      v56 = 0x3FFFFFFFFFFFFFFFLL;
      do
      {
        v57 = v91[v56];
        v58 = v91[v55 / 4];
        v103[v55 / 4] = -(v57 + v58);
        v102[v55 / 4] = v58 - v57;
        v55 += 4;
        --v56;
      }

      while (v89 != v55);
      v90 = (v4 + 1);
      v59 = v103[v4];
      v60 = v102[v4];
      v61 = v4 - 1;
      do
      {
        v59 = v103[v61] - v59;
        v103[v61] = v59;
        v60 += v102[v61];
        v102[v61] = v60;
        v62 = v61-- + 1;
      }

      while (v62 > 1);
      if (v4 != 1)
      {
        v63 = 2;
        do
        {
          if (v63 < v4)
          {
            v64 = v4;
            do
            {
              v102[v64 + 7] -= v103[v64];
              --v64;
            }

            while (v64 > v63);
          }

          v102[v63 + 7] -= 2 * v103[v63];
          ++v63;
        }

        while (v63 != v90);
        v65 = 2;
        do
        {
          if (v65 < v4)
          {
            v66 = v4;
            do
            {
              v102[v66 - 2] -= v102[v66];
              --v66;
            }

            while (v66 > v65);
          }

          v102[v65 - 2] -= 2 * v102[v65];
          ++v65;
        }

        while (v65 != v90);
      }

      LODWORD(v20) = v103[v4];
      v67 = v4 - 1;
      do
      {
        v20 = (v103[v67] + v20 * v92 + (v20 >> 16) * v93 + ((v20 * v93) >> 16));
        v68 = v67-- + 1;
      }

      while (v68 > 1);
      v26 = 0;
      v27 = v103;
      v29 = v96 + 1;
      if ((v20 & 0x80000000) != 0)
      {
        *a1 = 0;
        LODWORD(v20) = v102[v4];
        v69 = v4 - 1;
        do
        {
          v27 = v102;
          v20 = (v102[v69] + v20 * v92 + (v20 >> 16) * v93 + ((v20 * v93) >> 16));
          v70 = v69-- + 1;
          v26 = 1;
        }

        while (v70 > 1);
        v29 = v96 + 1;
      }
    }
  }

  v71 = 0x8000 / (a3 + 1);
  *a1 = v71;
  if (a3 >= 2)
  {
    v72 = 0;
    v73 = vdupq_n_s64(a3 - 2);
    v74 = xmmword_26ED6C300;
    v75 = xmmword_26ED6C310;
    v76 = xmmword_26ED6B840;
    v77 = xmmword_26ECC74D0;
    v78 = vdupq_n_s64(1uLL);
    v79 = vdupq_n_s64(8uLL);
    v80 = a1 + 4;
    do
    {
      v81 = vdupq_n_s64(v72);
      v82 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(v81, xmmword_26ECC7980)));
      v83 = vaddq_s64(v77, v78);
      if (vuzp1_s8(vuzp1_s16(v82, *v73.i8), *v73.i8).u8[0])
      {
        *(v80 - 3) = v83.i16[0] * v71;
      }

      if (vuzp1_s8(vuzp1_s16(v82, *&v73), *&v73).i8[1])
      {
        *(v80 - 2) = v83.i16[4] * v71;
      }

      v84 = vaddq_s64(v76, v78);
      if (vuzp1_s8(vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, vorrq_s8(v81, xmmword_26ECCE810)))), *&v73).i8[2])
      {
        *(v80 - 1) = v84.i16[0] * v71;
        *v80 = v84.i16[4] * v71;
      }

      v85 = vaddq_s64(v75, v78);
      v86 = vmovn_s64(vcgeq_u64(v73, vorrq_s8(v81, xmmword_26ECDB2B0)));
      if (vuzp1_s8(*&v73, vuzp1_s16(v86, *&v73)).i32[1])
      {
        v80[1] = v85.i16[0] * v71;
      }

      if (vuzp1_s8(*&v73, vuzp1_s16(v86, *&v73)).i8[5])
      {
        v80[2] = v85.i16[4] * v71;
      }

      v87 = vorrq_s8(v81, xmmword_26ECDB2A0);
      v88 = vaddq_s64(v74, v78);
      if (vuzp1_s8(*&v73, vuzp1_s16(*&v73, vmovn_s64(vcgeq_u64(v73, v87)))).i8[6])
      {
        v80[3] = v88.i16[0] * v71;
        v80[4] = v88.i16[4] * v71;
      }

      v72 += 8;
      v75 = vaddq_s64(v75, v79);
      v76 = vaddq_s64(v76, v79);
      v77 = vaddq_s64(v77, v79);
      v74 = vaddq_s64(v74, v79);
      v80 += 8;
    }

    while (((a3 + 6) & 0xFFFFFFF8) != v72);
  }

  return result;
}

uint64_t silk_insertion_sort_increasing(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = a4 - 1;
  if (a4 < 1)
  {
    goto LABEL_11;
  }

  v5 = 0;
  v6 = vdupq_n_s64(a4 - 1);
  v7 = xmmword_26ECCE810;
  v8 = xmmword_26ECC7980;
  v9 = (a2 + 8);
  v10 = vdupq_n_s64(4uLL);
  do
  {
    v11 = vmovn_s64(vcgeq_u64(v6, v8));
    if (vuzp1_s16(v11, *v6.i8).u8[0])
    {
      *(v9 - 2) = v5;
    }

    if (vuzp1_s16(v11, *&v6).i8[2])
    {
      *(v9 - 1) = v5 + 1;
    }

    if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
    {
      *v9 = v5 + 2;
      v9[1] = v5 + 3;
    }

    v5 += 4;
    v7 = vaddq_s64(v7, v10);
    v8 = vaddq_s64(v8, v10);
    v9 += 4;
  }

  while (((a4 + 3) & 0xFFFFFFFC) != v5);
  if (a4 == 1)
  {
LABEL_11:
    v12 = 0;
  }

  else
  {
    for (i = 1; i != a4; *(a2 + 4 * v15) = i++)
    {
      v14 = *(result + 4 * i);
      v15 = i;
      while (1)
      {
        v16 = v15 - 1;
        v17 = *(result + 4 * (v15 - 1));
        if (v14 >= v17)
        {
          break;
        }

        *(result + 4 * v15) = v17;
        *(a2 + 4 * v15--) = *(a2 + 4 * v16);
        if (v16 + 1 <= 1)
        {
          LODWORD(v15) = 0;
          break;
        }
      }

      *(result + 4 * v15) = v14;
    }

    v12 = 1;
  }

  if (a4 < a3)
  {
    v18 = a4;
    v19 = a3;
    v20 = a4 - 2;
    v21 = (result + 4 * v4);
    v22 = a4;
    v23 = (a2 + 4 * v4);
    do
    {
      v24 = *(result + 4 * v22);
      if (v24 < *(result - 4 + 4 * v18))
      {
        v25 = v20;
        if (v12)
        {
          v26 = v23;
          v27 = v21;
          v25 = v20;
          while (1)
          {
            v28 = *(result + 4 * v25);
            if (v24 >= v28)
            {
              break;
            }

            *v27-- = v28;
            *v26-- = *(a2 + 4 * v25);
            if (v25-- <= 0)
            {
              v25 = -1;
              break;
            }
          }
        }

        v30 = 4 * v25 + 4;
        *(result + v30) = v24;
        *(a2 + v30) = v22;
      }

      ++v22;
    }

    while (v22 != v19);
  }

  return result;
}

uint64_t silk_insertion_sort_decreasing_int16(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = a4 - 1;
  if (a4 < 1)
  {
    goto LABEL_11;
  }

  v5 = 0;
  v6 = vdupq_n_s64(a4 - 1);
  v7 = xmmword_26ECCE810;
  v8 = xmmword_26ECC7980;
  v9 = (a2 + 8);
  v10 = vdupq_n_s64(4uLL);
  do
  {
    v11 = vmovn_s64(vcgeq_u64(v6, v8));
    if (vuzp1_s16(v11, *v6.i8).u8[0])
    {
      *(v9 - 2) = v5;
    }

    if (vuzp1_s16(v11, *&v6).i8[2])
    {
      *(v9 - 1) = v5 + 1;
    }

    if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
    {
      *v9 = v5 + 2;
      v9[1] = v5 + 3;
    }

    v5 += 4;
    v7 = vaddq_s64(v7, v10);
    v8 = vaddq_s64(v8, v10);
    v9 += 4;
  }

  while (((a4 + 3) & 0xFFFFFFFC) != v5);
  if (a4 == 1)
  {
LABEL_11:
    v12 = 0;
  }

  else
  {
    for (i = 1; i != a4; *(a2 + 4 * v15) = i++)
    {
      v14 = *(result + 2 * i);
      v15 = i;
      while (1)
      {
        v16 = v15 - 1;
        v17 = *(result + 2 * (v15 - 1));
        if (v14 <= v17)
        {
          break;
        }

        *(result + 2 * v15) = v17;
        *(a2 + 4 * v15--) = *(a2 + 4 * v16);
        if (v16 + 1 <= 1)
        {
          LODWORD(v15) = 0;
          break;
        }
      }

      *(result + 2 * v15) = v14;
    }

    v12 = 1;
  }

  if (a4 < a3)
  {
    v18 = a4;
    v19 = a3;
    v20 = a4 - 2;
    v21 = (result + 2 * v4);
    v22 = a4;
    v23 = (a2 + 4 * v4);
    do
    {
      v24 = *(result + 2 * v22);
      if (v24 > *(result - 2 + 2 * v18))
      {
        v25 = v20;
        if (v12)
        {
          v26 = v23;
          v27 = v21;
          v25 = v20;
          while (1)
          {
            v28 = *(result + 2 * v25);
            if (v24 <= v28)
            {
              break;
            }

            *v27-- = v28;
            *v26-- = *(a2 + 4 * v25);
            if (v25-- <= 0)
            {
              v25 = -1;
              break;
            }
          }
        }

        v30 = v25 + 1;
        *(result + 2 * v30) = v24;
        *(a2 + 4 * v30) = v22;
      }

      ++v22;
    }

    while (v22 != v19);
  }

  return result;
}

uint64_t silk_insertion_sort_increasing_all_values_int16(uint64_t result, int a2)
{
  if (a2 >= 2)
  {
    for (i = 1; i != a2; ++i)
    {
      v3 = *(result + 2 * i);
      v4 = i;
      while (1)
      {
        v5 = v4 - 1;
        v6 = *(result + 2 * (v4 - 1));
        if (v3 >= v6)
        {
          break;
        }

        *(result + 2 * v4--) = v6;
        if (v5 + 1 <= 1)
        {
          LODWORD(v4) = 0;
          break;
        }
      }

      *(result + 2 * v4) = v3;
    }
  }

  return result;
}

uint64_t silk_decode_pulses(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = ec_dec_icdf(a1, &silk_rate_levels_iCDF[9 * (a3 >> 1)], 8);
  v9 = a5 >> 4;
  v31 = a5;
  if ((a5 & 0xF) != 0)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 >= 1)
  {
    v33 = a2;
    v11 = 0;
    v12 = &silk_pulses_per_block_iCDF + 18 * v8;
    do
    {
      v34[v11] = 0;
      v13 = ec_dec_icdf(a1, v12, 8);
      if (v13 == 17)
      {
        v14 = 0;
        do
        {
          if (v14++ == 9)
          {
            v16 = &unk_26ED6BBA7;
          }

          else
          {
            v16 = &silk_pulses_per_block_iCDF;
          }

          v13 = ec_dec_icdf(a1, v16 + 162, 8);
        }

        while (v13 == 17);
        v34[v11] = v14;
      }

      v35[v11++] = v13;
    }

    while (v11 != v10);
    v17 = 0;
    v18 = v35;
    v19 = v10;
    a2 = v33;
    do
    {
      v21 = *v18++;
      v20 = v21;
      v22 = (v33 + 4 * (v17 >> 12));
      if (v21 < 1)
      {
        v22[2] = 0u;
        v22[3] = 0u;
        *v22 = 0u;
        v22[1] = 0u;
      }

      else
      {
        silk_shell_decoder(v22, a1, v20);
      }

      v17 += 0x10000;
      --v19;
    }

    while (v19);
    for (i = 0; i != v10; ++i)
    {
      v24 = v34[i];
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = a2 + 64 * i;
        do
        {
          v27 = *(v26 + 4 * v25);
          v28 = v24;
          do
          {
            v27 = ec_dec_icdf(a1, silk_lsb_iCDF, 8) + 2 * v27;
            --v28;
          }

          while (v28);
          *(v26 + 4 * v25++) = v27;
        }

        while (v25 != 16);
        v35[i] |= 32 * v24;
        a2 = v33;
      }
    }
  }

  return silk_decode_signs(a1, a2, v31, a3, a4, v35);
}

uint64_t silk_NLSF_stabilize(uint64_t result, __int16 *a2, int a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3;
  v8 = (result + 2);
  v9 = result + 2 * a3;
  v10 = a3;
  while (1)
  {
    v11 = *a2;
    v12 = *v5 - v11;
    LODWORD(v13) = 0;
    v14 = a3 - 2;
    if (a3 >= 2)
    {
      v15 = v8;
      for (i = 1; i != a3; ++i)
      {
        result = *(v15 - 1);
        if (*v15 - result - a2[i] < v12)
        {
          LODWORD(v13) = i;
          v12 = *v15 - result - a2[i];
        }

        ++v15;
      }
    }

    v17 = a2[a3];
    v18 = 0x8000 - *(v9 - 2) - v17;
    if (v18 >= v12)
    {
      v13 = v13;
    }

    else
    {
      v13 = a3;
    }

    if (v18 < v12)
    {
      v12 = 0x8000 - *(v9 - 2) - v17;
    }

    if ((v12 & 0x80000000) == 0)
    {
      break;
    }

    if (v13)
    {
      if (v13 == a3)
      {
        *(v9 - 2) = 0x8000 - v17;
      }

      else
      {
        if (v13 < 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0;
          v20 = v13;
          v21 = a2;
          do
          {
            v22 = *v21++;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        v23 = v13;
        v24 = 0x8000;
        if (v13 < a3)
        {
          v25 = a3;
          do
          {
            v24 -= a2[v25--];
          }

          while (v25 > v13);
        }

        v26 = a2[v13] >> 1;
        v27 = v19 + v26;
        v28 = v24 - v26;
        v29 = &v5[v23];
        v30 = *v29 + *(v29 - 1);
        v31 = (v30 & 1) + (v30 >> 1);
        if (v27 <= v28)
        {
          result = v28;
        }

        else
        {
          result = v27;
        }

        if (v27 >= v28)
        {
          v27 = v28;
        }

        if (v31 > v27)
        {
          LOWORD(v27) = v31;
        }

        if (v31 > result)
        {
          LOWORD(v27) = result;
        }

        v32 = v27 - v26;
        *(v29 - 1) = v32;
        *v29 = v32 + a2[v23];
      }
    }

    else
    {
      *v5 = v11;
    }

    if (++v6 == 20)
    {
      result = silk_insertion_sort_increasing_all_values_int16(v5, a3);
      v33 = *v5;
      if (v33 <= *a2)
      {
        LOWORD(v33) = *a2;
      }

      *v5 = v33;
      if (a3 <= 1)
      {
        v42 = 0x8000 - a2[v7];
        if (*(v9 - 2) < v42)
        {
          LOWORD(v42) = *(v9 - 2);
        }

        *(v9 - 2) = v42;
      }

      else
      {
        v34 = v5 + 1;
        LOWORD(v35) = *v5;
        v36 = a2 + 1;
        v37 = v10 - 1;
        do
        {
          v38 = *v36++;
          v35 = v38 + v35;
          if (*v34 > v35)
          {
            LOWORD(v35) = *v34;
          }

          *v34++ = v35;
          --v37;
        }

        while (v37);
        v39 = *(v9 - 2);
        if (v39 >= 0x8000 - a2[v7])
        {
          LOWORD(v39) = 0x8000 - a2[v7];
        }

        *(v9 - 2) = v39;
        v40 = v14;
        LOWORD(v41) = v5[v40 + 1];
        do
        {
          v41 = v41 - a2[v40 + 1];
          if (v5[v40] < v41)
          {
            LOWORD(v41) = v5[v40];
          }

          v5[v40--] = v41;
        }

        while (v40 != -1);
      }

      return result;
    }
  }

  return result;
}

int *silk_resampler_private_AR2(int *result, int *a2, __int16 *a3, __int16 *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = *a4;
    v6 = a4[1];
    v7 = a5;
    v8 = *result;
    do
    {
      v9 = *a3++;
      v10 = v8 + (v9 << 8);
      *a2++ = v10;
      v11 = (v10 >> 14);
      v12 = 4 * (v10 & 0x3FFF);
      v8 = result[1] + v11 * v5 + ((v12 * v5) >> 16);
      *result = v8;
      result[1] = v11 * v6 + ((v12 * v6) >> 16);
      --v7;
    }

    while (v7);
  }

  return result;
}

__n128 silk_resampler_private_IIR_FIR(uint64_t a1, _WORD *a2, __int16 *a3, int a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  LODWORD(v8) = *(a1 + 268);
  v9 = 4 * v8;
  v10 = (v17 - ((v9 + 31) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9 + 16);
  v11 = a1;
  *v10 = *(a1 + 24);
  v12 = *(a1 + 272);
  for (v17[0] = a1; ; LODWORD(v8) = *(v17[0] + 268))
  {
    if (a4 >= v8)
    {
      v8 = v8;
    }

    else
    {
      v8 = a4;
    }

    silk_resampler_private_up2_HQ(v11, (v10 + 1), a3, v8);
    if ((v8 << 17) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(v10 + 2 * (v13 >> 16));
        v15 = ((vaddvq_s32(vmlal_s16(vmull_s16(*v14.i8, silk_resampler_frac_FIR_12[((3 * v13) >> 14)]), vrev64_s16(*&vextq_s8(v14, v14, 8uLL)), silk_resampler_frac_FIR_12[11 - ((12 * v13) >> 16)])) >> 14) + 1) >> 1;
        if (v15 <= -32768)
        {
          v15 = -32768;
        }

        if (v15 >= 0x7FFF)
        {
          LOWORD(v15) = 0x7FFF;
        }

        *a2++ = v15;
        v13 += v12;
      }

      while (v13 < v8 << 17);
    }

    a4 -= v8;
    if (a4 < 1)
    {
      break;
    }

    a3 += v8;
    *v10 = *(v10 + 4 * v8);
    v11 = v17[0];
  }

  result = *(v10 + 4 * v8);
  *(v17[0] + 24) = result;
  return result;
}

uint64_t silk_InitDecoder(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    result = silk_init_decoder((a1 + 4288 * v2));
    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  *(a1 + 8584) = 0;
  *(a1 + 8576) = 0;
  *(a1 + 8596) = 0;
  return result;
}

uint64_t silk_Decode(_DWORD *a1, int *a2, int a3, int a4, uint64_t a5, __int16 *a6, int *a7)
{
  v117 = a7;
  v11 = a1;
  v123[1] = *MEMORY[0x277D85DE8];
  v120 = 0;
  v123[0] = 0;
  v12 = a2[1];
  if (a4 && v12 >= 1)
  {
    v13 = (v12 + 3) & 0xFFFFFFFC;
    v14 = xmmword_26ECCE810;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = xmmword_26ECC7980;
    v17 = vdupq_n_s64(4uLL);
    v18 = a1;
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v15, v16));
      if (vuzp1_s16(v19, *v14.i8).u8[0])
      {
        v18[600] = 0;
      }

      if (vuzp1_s16(v19, *&v14).i8[2])
      {
        v18[1672] = 0;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v15, *&v14))).i32[1])
      {
        v18[2744] = 0;
        v18[3816] = 0;
      }

      v14 = vaddq_s64(v14, v17);
      v16 = vaddq_s64(v16, v17);
      v18 += 4288;
      v13 -= 4;
    }

    while (v13);
  }

  if (v12 <= a1[2148])
  {
    inited = 0;
  }

  else
  {
    inited = silk_init_decoder(a1 + 1072);
    LODWORD(v12) = a2[1];
  }

  v115 = v12 == 1 && *(v11 + 8592) == 2 && a2[3] == 1000 * *(v11 + 2316);
  v21 = *(v11 + 2400);
  v119 = a3;
  v116 = a6;
  if (!v21 && v12 >= 1)
  {
    v22 = 0;
    v23 = v11;
    while (1)
    {
      v24 = a2[4];
      result = 4294967093;
      if (v24 <= 19)
      {
        if (v24)
        {
          v27 = v24 == 10;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          return result;
        }

        v26 = 2;
      }

      else
      {
        if (v24 == 60)
        {
          v26 = 4;
          v28 = 3;
          goto LABEL_35;
        }

        if (v24 == 40)
        {
          v26 = 4;
          v28 = 2;
          goto LABEL_35;
        }

        if (v24 != 20)
        {
          return result;
        }

        v26 = 4;
      }

      v28 = 1;
LABEL_35:
      *(v23 + 2404) = v28;
      *(v23 + 2324) = v26;
      v29 = a2[3] >> 10;
      if (v29 > 0xF || ((1 << v29) & 0x8880) == 0)
      {
        return 4294967096;
      }

      inited = silk_decoder_set_fs(v23, v29 + 1, a2[2]) + inited;
      ++v22;
      v12 = a2[1];
      v23 += 4288;
      if (v22 >= v12)
      {
        a3 = v119;
        break;
      }
    }
  }

  v31 = *a2;
  if (*a2 != 2)
  {
    goto LABEL_48;
  }

  if (v12 != 2)
  {
    goto LABEL_47;
  }

  if (*(v11 + 8588) != 1 && *(v11 + 8592) != 1)
  {
    LODWORD(v12) = 2;
LABEL_47:
    v31 = 2;
    goto LABEL_48;
  }

  *(v11 + 8576) = 0;
  *(v11 + 8584) = 0;
  memcpy((v11 + 6736), (v11 + 2448), 0x130uLL);
  v31 = *a2;
  LODWORD(v12) = a2[1];
LABEL_48:
  *(v11 + 8588) = v31;
  *(v11 + 8592) = v12;
  if ((a2[2] - 48001) < 0xFFFF63BF)
  {
    return 4294967096;
  }

  v114 = (v11 + 6600);
  v118 = v11;
  if (a3 == 1 || *(v11 + 2400))
  {
    goto LABEL_92;
  }

  if (v12 >= 1)
  {
    v32 = 0;
    v33 = v11 + 2416;
    do
    {
      v34 = v11 + 4288 * v32;
      if (*(v34 + 2404) >= 1)
      {
        v35 = 0;
        do
        {
          *(v33 + 4 * v35++) = ec_dec_bit_logp(a5, 1);
        }

        while (v35 < *(v34 + 2404));
      }

      *(v34 + 2428) = ec_dec_bit_logp(a5, 1);
      ++v32;
      v12 = a2[1];
      v33 += 4288;
    }

    while (v32 < v12);
    if (v12 >= 1)
    {
      v36 = 0;
      v37 = (v11 + 2444);
      v112 = xmmword_26ECCE810;
      v111 = xmmword_26ECC7980;
      v113 = vdupq_n_s64(4uLL);
      do
      {
        v38 = v118 + 4288 * v36;
        *(v38 + 2440) = 0;
        *(v38 + 2432) = 0;
        if (*(v38 + 2428))
        {
          v39 = *(v38 + 2404);
          if (v39 == 1)
          {
            *(v38 + 2432) = 1;
          }

          else
          {
            v40 = ec_dec_icdf(a5, *(&silk_LBRR_flags_iCDF_ptr + v39 - 2), 8);
            v41 = v113;
            v42 = *(v38 + 2404);
            if (v42 >= 1)
            {
              v43 = 0;
              v44 = v40 + 1;
              v45 = (v42 + 3) & 0xFFFFFFFC;
              v46 = vdupq_n_s64(v42 - 1);
              v47 = v37;
              v48 = v111;
              v49 = v112;
              do
              {
                v50 = vmovn_s64(vcgeq_u64(v46, v48));
                if (vuzp1_s16(v50, *v46.i8).u8[0])
                {
                  *(v47 - 3) = (v44 >> v43) & 1;
                }

                if (vuzp1_s16(v50, *&v46).i8[2])
                {
                  *(v47 - 2) = (v44 >> (v43 + 1)) & 1;
                }

                if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v49))).i32[1])
                {
                  *(v47 - 1) = (v44 >> (v43 + 2)) & 1;
                  *v47 = (v44 >> (v43 + 3)) & 1;
                }

                v43 += 4;
                v49 = vaddq_s64(v49, v41);
                v48 = vaddq_s64(v48, v41);
                v47 += 4;
              }

              while (v45 != v43);
            }
          }
        }

        ++v36;
        v12 = a2[1];
        v37 += 1072;
      }

      while (v36 < v12);
      v11 = v118;
    }
  }

  if (v119)
  {
    goto LABEL_92;
  }

  v51 = *(v11 + 2404);
  if (v51 < 1)
  {
    goto LABEL_92;
  }

  v52 = 0;
  v53 = v11 + 6720;
  v54 = 2428;
  do
  {
    if (v12 < 1)
    {
      goto LABEL_91;
    }

    v55 = 0;
    do
    {
      if (!*(v11 + v54 + 4))
      {
        goto LABEL_89;
      }

      if (v55 || v12 != 2 || (silk_stereo_decode_pred(a5, v123), *(v53 + 4 * v52)))
      {
        if (!v52)
        {
          goto LABEL_87;
        }
      }

      else
      {
        silk_stereo_decode_mid_only(a5, &v120 + 1);
        if (!v52)
        {
LABEL_87:
          v56 = 0;
          goto LABEL_88;
        }
      }

      if (!*(v11 + v54))
      {
        goto LABEL_87;
      }

      v56 = 2;
LABEL_88:
      silk_decode_indices(v11, a5, v52, 1, v56);
      silk_decode_pulses(a5, &v121, *(v11 + 2789), *(v11 + 2790), *(v11 + 2328));
      LODWORD(v12) = a2[1];
LABEL_89:
      ++v55;
      v11 += 4288;
    }

    while (v55 < v12);
    v11 = v118;
    v51 = *(v118 + 2404);
LABEL_91:
    ++v52;
    v54 += 4;
  }

  while (v52 < v51);
LABEL_92:
  v57 = v119;
  if (v12 == 2)
  {
    if (v119)
    {
      if (v119 == 2 && *(v11 + 4 * *(v11 + 2400) + 2432) == 1)
      {
        silk_stereo_decode_pred(a5, v123);
        if (!*(v11 + 4 * *(v11 + 2400) + 6720))
        {
          goto LABEL_97;
        }

LABEL_100:
        HIDWORD(v120) = 0;
      }

      else
      {
        v58 = *(v114 + 989);
        LODWORD(v123[0]) = *(v114 + 988);
        HIDWORD(v123[0]) = v58;
      }
    }

    else
    {
      silk_stereo_decode_pred(a5, v123);
      if (*(v11 + 4 * *(v11 + 2400) + 6704))
      {
        goto LABEL_100;
      }

LABEL_97:
      silk_stereo_decode_mid_only(a5, &v120 + 1);
    }
  }

  v59 = a2[1];
  v60 = HIDWORD(v120) == 0;
  if (v59 == 2 && HIDWORD(v120) == 0)
  {
    if (*(v11 + 8596) == 1)
    {
      bzero((v11 + 5636), 0x3C0uLL);
      *(v11 + 5604) = 0u;
      *(v11 + 5620) = 0u;
      *(v11 + 5572) = 0u;
      *(v11 + 5588) = 0u;
      *(v11 + 6596) = 100;
      *v114 = 10;
      *(v11 + 8476) = 0;
      *(v11 + 6664) = 1;
      v59 = a2[1];
    }

    else
    {
      v59 = 2;
    }
  }

  v121 = 0;
  v122 = 0;
  v62 = *(v11 + 2328);
  v63 = 2 * (v62 + 2) * v59;
  v64 = &v111 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v64, v63);
  v114 = v64;
  v121 = v64;
  v122 = &v64[2 * v62 + 4];
  if (!v57)
  {
    goto LABEL_115;
  }

  if (!*(v11 + 8596))
  {
    v60 = 1;
LABEL_115:
    if (v59 >= 1)
    {
      goto LABEL_116;
    }

    v71 = v116;
    goto LABEL_134;
  }

  v60 = 0;
  if (v57 != 2 || v59 != 2)
  {
    goto LABEL_115;
  }

  v60 = *(v11 + 4 * *(v11 + 6688) + 6720) == 1;
LABEL_116:
  v113.i64[0] = &v64[2 * v62 + 4];
  v65 = 0;
  v66 = v11 + 2432;
  v67 = -1;
  do
  {
    if (v65 == 0 || v60)
    {
      v68 = *(v118 + 2400);
      if (v67 + v68 + 1 < 1)
      {
        v69 = 0;
      }

      else if (v119 == 2)
      {
        v69 = 2 * (*(v66 + 4 * (v68 + v67)) != 0);
      }

      else if (v65 && *(v118 + 8596))
      {
        v69 = 1;
      }

      else
      {
        v69 = 2;
      }

      inited = silk_decode_frame(v66 - 2432, a5, (&v121)[v65] + 4, &v120, v119, v69) + inited;
    }

    else
    {
      bzero((&v121)[v65] + 4, 2 * v120);
    }

    ++*(v66 - 32);
    ++v65;
    v70 = a2[1];
    --v67;
    v66 += 4288;
  }

  while (v65 < v70);
  v71 = v116;
  if (v70 == 2)
  {
    v11 = v118;
    v57 = v119;
    if (*a2 == 2)
    {
      silk_stereo_MS_to_LR((v118 + 8576), v114, v113.i64[0], v123, *(v118 + 2316), v120);
      v72 = v120;
      goto LABEL_135;
    }
  }

  else
  {
    v11 = v118;
    v57 = v119;
  }

LABEL_134:
  v73 = v114;
  *v114 = *(v11 + 8580);
  v72 = v120;
  *(v11 + 8580) = *&v73[2 * v120];
LABEL_135:
  v74 = a2[2] * v72 / (1000 * *(v11 + 2316));
  *v117 = v74;
  v75 = *a2;
  v76 = 2 * v74;
  if (*a2 == 2)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v75 == 2)
  {
    v79 = (&v111 - v78);
  }

  else
  {
    v79 = v71;
  }

  bzero(&v111 - v78, v77);
  v80 = a2[1];
  if (v75 >= v80)
  {
    v81 = a2[1];
  }

  else
  {
    v81 = v75;
  }

  if (v81 >= 1)
  {
    v82 = 0;
    do
    {
      v83 = silk_resampler((v11 + 4288 * v82 + 2448), v79, (&v121)[v82] + 2, v120);
      v75 = *a2;
      if (*a2 == 2)
      {
        v84 = *v117;
        if (v84 >= 1)
        {
          v85 = v79;
          v86 = v71;
          do
          {
            v87 = *v85++;
            *v86 = v87;
            v86 += 2;
            --v84;
          }

          while (v84);
        }
      }

      inited = (v83 + inited);
      ++v82;
      v80 = a2[1];
      if (v75 >= v80)
      {
        v88 = a2[1];
      }

      else
      {
        v88 = v75;
      }

      ++v71;
    }

    while (v82 < v88);
    v57 = v119;
    v71 = v116;
  }

  if (v75 != 2 || v80 != 1)
  {
    goto LABEL_165;
  }

  if (!v115)
  {
    v92 = *v117;
    if (v92 >= 1)
    {
      v93 = v71 + 1;
      do
      {
        *v93 = *(v93 - 1);
        v93 += 2;
        --v92;
      }

      while (v92);
    }

LABEL_165:
    result = inited;
    goto LABEL_166;
  }

  result = silk_resampler((v11 + 6736), v79, v114 + 2, v120) + inited;
  v89 = *v117;
  if (v89 >= 1)
  {
    v90 = v71 + 1;
    do
    {
      v91 = *v79++;
      *v90 = v91;
      v90 += 2;
      --v89;
    }

    while (v89);
  }

LABEL_166:
  if (*(v11 + 4188) == 2)
  {
    v94 = dword_26ED6C730[(*(v11 + 2316) - 8) >> 2] * *(v11 + 2308);
  }

  else
  {
    v94 = 0;
  }

  a2[5] = v94;
  if (v57 == 1)
  {
    v95 = *(v11 + 8592);
    if (v95 >= 1)
    {
      v96 = 0;
      v97 = vdupq_n_s64(v95 - 1);
      v98 = xmmword_26ECE7570;
      v99 = xmmword_26ECE7580;
      v100 = xmmword_26ECE7590;
      v101 = xmmword_26ECE75A0;
      v102 = xmmword_26ECDB2A0;
      v103 = xmmword_26ECDB2B0;
      v104 = xmmword_26ECCE810;
      v105 = xmmword_26ECC7980;
      v106 = vdupq_n_s64(0x10uLL);
      do
      {
        v107 = vmovn_s64(vcgeq_u64(v97, v105));
        if (vuzp1_s8(vuzp1_s16(v107, *v97.i8), *v97.i8).u8[0])
        {
          *(v11 + v96 + 2312) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(v107, *&v97), *&v97).i8[1])
        {
          *(v11 + 6600 + v96) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, *&v104))), *&v97).i8[2])
        {
          *(v11 + 10888 + v96) = 10;
          *(v11 + 15176 + v96) = 10;
        }

        v108 = vmovn_s64(vcgeq_u64(v97, v103));
        if (vuzp1_s8(*&v97, vuzp1_s16(v108, *&v97)).i32[1])
        {
          *(v11 + 19464 + v96) = 10;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(v108, *&v97)).i8[5])
        {
          *(v11 + 23752 + v96) = 10;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, *&v102)))).i8[6])
        {
          *(v11 + 28040 + v96) = 10;
          *(v11 + 32328 + v96) = 10;
        }

        v109 = vmovn_s64(vcgeq_u64(v97, v101));
        if (vuzp1_s8(vuzp1_s16(v109, *v97.i8), *v97.i8).u8[0])
        {
          *(v11 + 36616 + v96) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(v109, *&v97), *&v97).i8[1])
        {
          *(v11 + 40904 + v96) = 10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, *&v100))), *&v97).i8[2])
        {
          *(v11 + 45192 + v96) = 10;
          *(v11 + 49480 + v96) = 10;
        }

        v110 = vmovn_s64(vcgeq_u64(v97, v99));
        if (vuzp1_s8(*&v97, vuzp1_s16(v110, *&v97)).i32[1])
        {
          *(v11 + 53768 + v96) = 10;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(v110, *&v97)).i8[5])
        {
          *(v11 + 58056 + v96) = 10;
        }

        if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, *&v98)))).i8[6])
        {
          *(v11 + 62344 + v96) = 10;
          *(v11 + 66632 + v96) = 10;
        }

        v103 = vaddq_s64(v103, v106);
        v104 = vaddq_s64(v104, v106);
        v105 = vaddq_s64(v105, v106);
        v102 = vaddq_s64(v102, v106);
        v101 = vaddq_s64(v101, v106);
        v100 = vaddq_s64(v100, v106);
        v99 = vaddq_s64(v99, v106);
        v96 += 68608;
        v98 = vaddq_s64(v98, v106);
      }

      while (68608 * ((v95 + 15) >> 4) != v96);
    }
  }

  else
  {
    *(v11 + 8596) = HIDWORD(v120);
  }

  return result;
}

unint64_t silk_LPC_inverse_pred_gain(__int16 *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    return LPC_inverse_pred_gain_QA(v7, a2);
  }

  v2 = 0;
  v3 = &v7[64 * (a2 & 1)];
  v4 = a2;
  do
  {
    v5 = *a1++;
    v2 += v5;
    *v3++ = v5 << 12;
    --v4;
  }

  while (v4);
  if (v2 <= 4095)
  {
    return LPC_inverse_pred_gain_QA(v7, a2);
  }

  else
  {
    return 0;
  }
}

unint64_t LPC_inverse_pred_gain_QA(uint64_t a1, int a2)
{
  v2 = (a1 + ((a2 & 1) << 6));
  v3 = 0x40000000;
  if (a2 >= 2)
  {
    v4 = a2;
    v5 = (a2 << 32) - 0x200000000;
    v6 = a2 - 1;
    v7 = 0x40000000;
    while (1)
    {
      v8 = v4 - 1;
      v9 = v2[v4 - 1];
      if ((v9 - 16773023) < 0xFE0020C3)
      {
        return 0;
      }

      v10 = (a1 + ((v6 & 1) << 6));
      v11 = -128 * v9;
      v12 = -((v9 << 7) * -128 * v9) >> 32;
      v13 = (0x40000000 - v12);
      v14 = (v13 * v7) >> 30;
      if (0x40000000 - v12 >= 0)
      {
        v15 = 0x40000000 - v12;
      }

      else
      {
        v15 = v12 - 0x40000000;
      }

      v16 = __clz(v15);
      v17 = v13 << (v16 - 1);
      v18 = 0x1FFFFFFF / (v17 >> 16);
      v19 = v18 * (v17 >> 16) + ((v18 * v17) >> 16);
      v7 = v14 & 0xFFFFFFFC;
      v20 = (v18 << 16) - 8 * v19 * (((v18 >> 15) + 1) >> 1) + ((-8 * v19) >> 16) * v18 + ((((-8 * v19) & 0xFFF8) * v18) >> 16);
      v21 = v6;
      v22 = v2;
      v23 = v5;
      do
      {
        v24 = *v22++;
        v25 = (v24 - ((((*(v2 + (v23 >> 30)) * v11) >> 30) + 1) >> 1)) * v20;
        v26 = ((v25 >> (31 - v16)) + 1) >> 1;
        v27 = (v25 & 1) + (v25 >> 1);
        if (v16 != 31)
        {
          LODWORD(v27) = v26;
        }

        *v10++ = v27;
        v23 -= 0x100000000;
        --v21;
      }

      while (v21);
      v5 -= 0x100000000;
      --v6;
      v2 = (a1 + ((v8 & 1) << 6));
      if (v4-- < 3)
      {
        v3 = v7;
        v2 = (a1 + ((v8 & 1) << 6));
        break;
      }
    }
  }

  v29 = *v2;
  if ((v29 - 16773023) < 0xFE0020C3)
  {
    return 0;
  }

  return (((0x40000000 - (-((v29 << 7) * -128 * v29) >> 32)) * v3) >> 30) & 0xFFFFFFFC;
}

unint64_t silk_LPC_inverse_pred_gain_Q24(void *__src, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    memcpy(&v4[64 * (a2 & 1)], __src, 4 * a2);
  }

  return LPC_inverse_pred_gain_QA(v4, a2);
}

uint64_t silk_sigm_Q15(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    if (a1 >= 0xFFFFFF41)
    {
      return sigm_LUT_neg_Q15[-a1 >> 5] - sigm_LUT_slope_Q10[2 * (-a1 >> 5)] * (-a1 & 0x1F);
    }

    else
    {
      return 0;
    }
  }

  else if (a1 <= 0xBF)
  {
    return sigm_LUT_pos_Q15[a1 >> 5] + sigm_LUT_slope_Q10[2 * (a1 >> 5)] * (a1 & 0x1F);
  }

  else
  {
    return 0x7FFFLL;
  }
}

void *silk_NSQ_del_dec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int *a13, int a14, __int16 a15)
{
  v211 = a7;
  v212 = a8;
  v210 = a6;
  v220 = a4;
  v221 = a5;
  v216 = a3;
  v217 = a13;
  v223 = *MEMORY[0x277D85DE8];
  v219 = *(a2 + 4356);
  v17 = *(a1 + 4652);
  v18 = 1168 * v17;
  v19 = &v192 - v18;
  bzero(&v192 - v18, v18);
  bzero(&v192 - v18, v18);
  if (v17 >= 1)
  {
    v20 = *(v216 + 34);
    v21 = *(a2 + 4352);
    v22 = *(a2 + 4 * *(a1 + 4616) + 1276);
    v23 = v17;
    v24 = &v192 - v18;
    do
    {
      v25 = *(a2 + 3920);
      *(v24 + 4) = *(a2 + 3904);
      *(v24 + 5) = v25;
      v26 = *(a2 + 3952);
      *(v24 + 6) = *(a2 + 3936);
      *(v24 + 7) = v26;
      v27 = *(a2 + 3856);
      *v24 = *(a2 + 3840);
      *(v24 + 1) = v27;
      v28 = *(a2 + 3888);
      *(v24 + 2) = *(a2 + 3872);
      *(v24 + 3) = v28;
      v29 = *(a2 + 4320);
      *(v24 + 71) = *(a2 + 4336);
      *(v24 + 70) = v29;
      v30 = *(a2 + 4288);
      *(v24 + 69) = *(a2 + 4304);
      *(v24 + 289) = v20 & 3;
      *(v24 + 145) = v20 & 3;
      *(v24 + 288) = v21;
      ++v20;
      *(v24 + 240) = v22;
      *(v24 + 68) = v30;
      v24 += 1168;
      --v23;
    }

    while (v23);
  }

  v31 = *(v216 + 29);
  v209 = silk_Quantization_Offsets_Q10[2 * (v31 >> 1) + *(v216 + 30)];
  v222 = 0;
  v32 = *(a1 + 4612);
  if (v32 >= 32)
  {
    v33 = 32;
  }

  else
  {
    v33 = *(a1 + 4612);
  }

  if (v31 == 2)
  {
    v34 = *(a1 + 4604);
    if (v34 >= 1)
    {
      v35 = v217;
      do
      {
        v36 = *v35++;
        v37 = v36 - 3;
        if (v33 >= v36 - 3)
        {
          v33 = v37;
        }

        --v34;
      }

      while (v34);
    }
  }

  else if (v219 >= 1 && v33 >= v219 - 3)
  {
    v33 = v219 - 3;
  }

  v213 = v33;
  v38 = *(v216 + 31);
  v39 = *(a1 + 4616);
  v40 = *(a1 + 4608) + v39;
  v41 = 4 * v40;
  v214 = &v192 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = a12;
  bzero(v214, v41);
  v42 = 2 * v40;
  v201 = &v192 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v201, v42);
  v218 = &v192 - ((4 * v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v218, 4 * v32);
  v208 = &v192 - 16;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  *(&v192 - 8) = 0u;
  *(&v192 - 7) = 0u;
  v43 = a2 + 2 * v39;
  *(a2 + 4364) = v39;
  *(a2 + 4360) = v39;
  LODWORD(v44) = *(a1 + 4604);
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = 0;
    v206 = v38 == 4;
    v207 = a11;
    if (v38 == 4)
    {
      v47 = 3;
    }

    else
    {
      v47 = 1;
    }

    v202 = v47;
    v205 = a14;
    v48 = a2 + 1280;
    v199 = a15;
    v203 = a9;
    v204 = a10;
    v198 = v213;
    v193 = v19 + 2332;
    v197 = v19 + 1164;
    v196 = -v213;
    LODWORD(v49) = v32;
    v50.i64[0] = 0x100000001;
    v50.i64[1] = 0x100000001;
    v195 = -v213;
    v194 = -2 * v213;
    v51 = v220;
    while (1)
    {
      v52 = v210 + 32 * (v206 | (v45 >> 1));
      v53 = *(v203 + 4 * v45);
      *(a2 + 4376) = 0;
      v54 = v215;
      v55 = *(v216 + 29);
      v56 = v214;
      v220 = v52;
      if (v55 == 2)
      {
        v219 = v217[v45];
        if ((v202 & v45) == 0)
        {
          v200 = v53;
          if (v45 == 2)
          {
            v141 = *(a1 + 4652);
            if (v141 <= 1)
            {
              v142 = 0;
              v146 = v213;
            }

            else
            {
              v142 = 0;
              v143 = *(v19 + 291);
              v144 = v193;
              v145 = 1;
              v146 = v213;
              do
              {
                if (*v144 < v143)
                {
                  v142 = v145;
                  v143 = *v144;
                }

                ++v145;
                v144 += 1168;
              }

              while (v141 != v145);
            }

            if (v141 >= 1)
            {
              v148 = v142;
              v149 = v197;
              do
              {
                if (v148)
                {
                  *v149 += 0x7FFFFFF;
                }

                --v148;
                v149 += 1168;
                --v141;
              }

              while (v141);
            }

            if (v146 < 1)
            {
              v147 = v51;
              v46 = 0;
            }

            else
            {
              LOBYTE(v150) = v222 + v146;
              v151 = &v19[1168 * v142];
              v152 = v151 + 576;
              v153 = v151 + 704;
              v154 = v151 + 960;
              v155 = (v221 + v195);
              v156 = (v43 + v194);
              v157 = v198;
              v158 = v196;
              do
              {
                v150 = (v150 - 1) & 0x1F;
                *v155++ = ((*&v152[4 * v150] >> 9) + 1) >> 1;
                v159 = (((*(v54 + 4) * (*&v153[4 * v150] >> 16) + ((*(v54 + 4) * *&v153[4 * v150]) >> 16) + (((*(v54 + 4) >> 15) + 1) >> 1) * *&v153[4 * v150]) >> 13) + 1) >> 1;
                if (v159 <= -32768)
                {
                  v159 = -32768;
                }

                if (v159 >= 0x7FFF)
                {
                  LOWORD(v159) = 0x7FFF;
                }

                v160 = *&v154[4 * v150];
                *v156++ = v159;
                *(v48 + 4 * (v158 + *(a2 + 4364))) = v160;
                ++v158;
                --v157;
              }

              while (v157);
              v147 = v51;
              v46 = 0;
              LODWORD(v49) = *(a1 + 4612);
            }
          }

          else
          {
            v147 = v51;
          }

          v161 = *(a1 + 4664);
          v162 = *(a1 + 4616) - (v219 + v161) - 2;
          silk_LPC_analysis_filter(&v201[2 * v162], a2 + 2 * (v162 + v49 * v45), v52, v219 + v161 + 2, v161);
          v57 = 0;
          *(a2 + 4360) = *(a1 + 4616);
          *(a2 + 4376) = 1;
          v54 = v215;
          LOBYTE(v55) = *(v216 + 29);
          v51 = v147;
          v56 = v214;
          v50.i64[0] = 0x100000001;
          v50.i64[1] = 0x100000001;
          v53 = v200;
          goto LABEL_26;
        }

        LOBYTE(v55) = 2;
      }

      v57 = 1;
LABEL_26:
      v58 = *(a1 + 4652);
      v59 = v217[v45];
      v60 = *(v54 + 4 * v45);
      if (v60 <= 1)
      {
        v61 = 1;
      }

      else
      {
        v61 = *(v54 + 4 * v45);
      }

      v62 = __clz(v61);
      v63 = v61 << (v62 - 1);
      v64 = 0x1FFFFFFF / (v63 >> 16);
      v65 = (v63 >> 16) * v64 + ((v63 * v64) >> 16);
      v66 = (v64 << 16) - 8 * v65 * (((v64 >> 15) + 1) >> 1) + ((-8 * v65) >> 16) * v64 + ((((-8 * v65) & 0xFFF8) * v64) >> 16);
      v67 = v66 >> (15 - v62);
      v68 = v62 - 15;
      v69 = 0x80000000 >> v68;
      if (v66 > 0x80000000 >> v68)
      {
        v69 = v66;
      }

      if (v66 <= (0x7FFFFFFFu >> v68))
      {
        v70 = v69;
      }

      else
      {
        v70 = 0x7FFFFFFFu >> v68;
      }

      v71 = v70 << v68;
      if (v60 < 0x20000)
      {
        v72 = v71;
      }

      else
      {
        v72 = v67;
      }

      v73 = *(a2 + 4372);
      if (v60 == v73)
      {
        v74 = 0x10000;
      }

      else
      {
        if (v73 >= 0)
        {
          v75 = *(a2 + 4372);
        }

        else
        {
          v75 = -v73;
        }

        v76 = __clz(v75);
        v77 = v73 << (v76 - 1);
        if (v60 >= 0)
        {
          v78 = *(v54 + 4 * v45);
        }

        else
        {
          v78 = -v60;
        }

        v79 = __clz(v78);
        v80 = v60 << (v79 - 1);
        v81 = 0x1FFFFFFF / (v80 >> 16);
        v82 = v81 * (v77 >> 16) + ((v81 * v77) >> 16);
        v83 = v77 - (((v82 * v80) >> 29) & 0xFFFFFFF8);
        v84 = v82 + (v83 >> 16) * v81 + ((v83 * v81) >> 16);
        v85 = v76 - v79;
        if ((v85 + 29) >= 0x30)
        {
          v86 = 0;
        }

        else
        {
          v86 = v84 >> (v85 + 13);
        }

        v87 = 0x80000000 >> (-13 - v85);
        if (v84 > v87)
        {
          v87 = v84;
        }

        if (v84 <= (0x7FFFFFFFu >> (-13 - v85)))
        {
          v88 = v87;
        }

        else
        {
          v88 = 0x7FFFFFFFu >> (-13 - v85);
        }

        v74 = v88 << (-13 - v85);
        if (v85 > -14)
        {
          v74 = v86;
        }
      }

      v89 = v213;
      v90 = *(a1 + 4612);
      if (v90 >= 1)
      {
        v91 = (v72 >> 7) + 1;
        v92 = (v91 >> 1);
        v93 = ((v91 >> 16) + 1) >> 1;
        v94 = v51;
        v95 = v218;
        do
        {
          v96 = *v94++;
          *v95++ = v96 * v93 + (v96 >> 16) * v92 + ((v96 * v92) >> 16);
          --v90;
        }

        while (v90);
      }

      *(a2 + 4372) = v60;
      if ((v57 & 1) == 0)
      {
        if (!v45)
        {
          v72 = 4 * ((v72 >> 16) * v199 + ((v72 * v199) >> 16));
        }

        v97 = *(a2 + 4360);
        v98 = v97 - v59 - 2;
        if (v98 < v97)
        {
          v99 = v72 >> 16;
          v100 = v72;
          v101 = v97 - v98;
          v102 = &v56[v98];
          v103 = &v201[2 * v98];
          do
          {
            v104 = *v103;
            v103 += 2;
            *v102++ = v99 * v104 + ((v100 * v104) >> 16);
            --v101;
          }

          while (v101);
        }
      }

      v105 = v51;
      v106 = v55;
      if (v74 != 0x10000)
      {
        v107 = *(a1 + 4616);
        v108 = v74 >> 16;
        if (v107 >= 1)
        {
          v109 = *(a2 + 4364) - v107;
          do
          {
            *(v48 + 4 * v109) = *(v48 + 4 * v109) * v108 + ((*(v48 + 4 * v109) * v74) >> 16) + (((*(v48 + 4 * v109) >> 15) + 1) >> 1) * v74;
            ++v109;
          }

          while (v109 < *(a2 + 4364));
        }

        if (v106 == 2 && !*(a2 + 4376))
        {
          v110 = *(a2 + 4360);
          LODWORD(v111) = v110 - v59 - 2;
          v112 = v110 - v89;
          if (v111 < v112)
          {
            v111 = v111;
            do
            {
              v56[v111] = v56[v111] * v108 + ((v56[v111] * v74) >> 16) + (((v56[v111] >> 15) + 1) >> 1) * v74;
              ++v111;
            }

            while (v111 < v112);
          }
        }

        if (v58 >= 1)
        {
          v113 = 0;
          v114 = vdupq_n_s32(v108);
          v115 = vdupq_n_s32(v74);
          v116 = vdupq_n_s32(v74);
          v117 = v19;
          do
          {
            v118 = 0;
            *&v19[1168 * v113 + 1152] = *&v19[1168 * v113 + 1152] * v108 + ((*&v19[1168 * v113 + 1152] * v74) >> 16) + (((*&v19[1168 * v113 + 1152] >> 15) + 1) >> 1) * v74;
            do
            {
              v119 = *&v117[v118];
              v120 = vshrq_n_s32(vshlq_n_s32(v119, 0x10uLL), 0x10uLL);
              *&v117[v118] = vmlaq_s32(vsraq_n_s32(vmulq_s32(v120, v114), vmulq_s32(v120, v115), 0x10uLL), vhaddq_s32(vshrq_n_s32(v119, 0xFuLL), v50), v116);
              v118 += 16;
            }

            while (v118 != 128);
            for (i = 1088; i != 1152; i += 16)
            {
              v122 = *&v117[i];
              v123 = vshrq_n_s32(vshlq_n_s32(v122, 0x10uLL), 0x10uLL);
              *&v117[i] = vmlaq_s32(vsraq_n_s32(vmulq_s32(v123, v114), vmulq_s32(v123, v115), 0x10uLL), vhaddq_s32(vshrq_n_s32(v122, 0xFuLL), v50), v116);
            }

            for (j = 0; j != 128; j += 16)
            {
              v125 = &v117[j];
              v126 = *&v117[j + 832];
              v127 = vshrq_n_s32(vshlq_n_s32(v126, 0x10uLL), 0x10uLL);
              v125[52] = vmlaq_s32(vsraq_n_s32(vmulq_s32(v127, v114), vmulq_s32(v127, v115), 0x10uLL), vhaddq_s32(vshrq_n_s32(v126, 0xFuLL), v50), v116);
              v128 = *&v117[j + 960];
              v129 = vshrq_n_s32(vshlq_n_s32(v128, 0x10uLL), 0x10uLL);
              v125[60] = vmlaq_s32(vsraq_n_s32(vmulq_s32(v129, v114), vmulq_s32(v129, v115), 0x10uLL), vhaddq_s32(vshrq_n_s32(v128, 0xFuLL), v50), v116);
            }

            ++v113;
            v117 += 1168;
          }

          while (v113 != v58);
        }
      }

      v130 = (v53 << 15) & 0xFFFF0000;
      v131 = *(v204 + 4 * v45);
      v132 = *(v207 + 4 * v45);
      v133 = *(v54 + 4 * v45);
      v134 = *(a1 + 4612);
      v135 = v53;
      v136 = v46 + 1;
      v137 = *(a1 + 4660);
      v138 = *(a1 + 4704);
      v139 = *(a1 + 4652);
      DWORD2(v189) = v46;
      HIDWORD(v187) = v130 | (v135 >> 2);
      *(&v186 + 1) = v211 + 10 * v45;
      *&v187 = v212 + 32 * v45;
      v140 = v221;
      silk_noise_shape_quantizer_del_dec(a2, v19, v106, v218, v221, v43, v56, v208, v220, *(&v186 + 1), v187, v219, SHIDWORD(v187), v131, v132, v133, v205, v209, v134, SDWORD2(v189), v137, SHIDWORD(v137), v138, v139, &v222, v89);
      v50.i64[0] = 0x100000001;
      v50.i64[1] = 0x100000001;
      v49 = *(a1 + 4612);
      v51 = v105 + 4 * v49;
      v221 = v140 + v49;
      v43 += 2 * v49;
      ++v45;
      v44 = *(a1 + 4604);
      v46 = v136;
      if (v45 >= v44)
      {
        LODWORD(v17) = *(a1 + 4652);
        v32 = v49;
        break;
      }
    }
  }

  v163 = v213;
  v164 = v215;
  if (v17 <= 1)
  {
    v165 = 0;
  }

  else
  {
    v165 = 0;
    v166 = *(v19 + 291);
    v167 = (v19 + 2332);
    v168 = 1;
    do
    {
      if (*v167 < v166)
      {
        v165 = v168;
        v166 = *v167;
      }

      ++v168;
      v167 += 292;
    }

    while (v17 != v168);
  }

  v169 = &v19[1168 * v165];
  *(v216 + 34) = *(v169 + 290);
  if (v163 >= 1)
  {
    v170 = *(v164 + 4 * v44 - 4);
    LOBYTE(v44) = v222 + v163;
    v171 = (v170 >> 6);
    v172 = ((v170 >> 21) + 1) >> 1;
    v173 = -v163;
    v174 = v221;
    do
    {
      LODWORD(v44) = (v44 - 1) & 0x1F;
      *(v174 + v173) = ((*&v169[4 * v44 + 576] >> 9) + 1) >> 1;
      v175 = (((*&v169[4 * v44 + 704] * v172 + (*&v169[4 * v44 + 704] >> 16) * v171 + ((*&v169[4 * v44 + 704] * v171) >> 16)) >> 7) + 1) >> 1;
      if (v175 <= -32768)
      {
        v175 = -32768;
      }

      if (v175 >= 0x7FFF)
      {
        LOWORD(v175) = 0x7FFF;
      }

      *(v43 + 2 * v173) = v175;
      *(a2 + 1280 + 4 * (v173 + *(a2 + 4364))) = *&v169[4 * v44 + 960];
    }

    while (!__CFADD__(v173++, 1));
    v32 = *(a1 + 4612);
  }

  v177 = &v169[4 * v32];
  v178 = *(v177 + 5);
  *(a2 + 3904) = *(v177 + 4);
  *(a2 + 3920) = v178;
  v179 = *(v177 + 7);
  *(a2 + 3936) = *(v177 + 6);
  *(a2 + 3952) = v179;
  v180 = *(v177 + 1);
  *(a2 + 3840) = *v177;
  *(a2 + 3856) = v180;
  v181 = *(v177 + 3);
  *(a2 + 3872) = *(v177 + 2);
  *(a2 + 3888) = v181;
  v182 = *(v169 + 68);
  v183 = *(v169 + 69);
  v184 = *(v169 + 70);
  *(a2 + 4336) = *(v169 + 71);
  *(a2 + 4320) = v184;
  *(a2 + 4304) = v183;
  *(a2 + 4288) = v182;
  *(a2 + 4352) = *(v169 + 288);
  *(a2 + 4356) = v217[*(a1 + 4604) - 1];
  memmove(a2, (a2 + 2 * *(a1 + 4608)), 2 * *(a1 + 4616));
  return memmove((a2 + 1280), (a2 + 1280 + 4 * *(a1 + 4608)), 4 * *(a1 + 4616));
}

int32x2_t *silk_noise_shape_quantizer_del_dec(int32x2_t *result, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int16x4_t *a10, __int16 *a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int *a25, unsigned int a26)
{
  v182 = a8;
  v164 = a7;
  v162 = a6;
  v161 = a5;
  v203 = a4;
  v176 = a3;
  v184 = result;
  v27 = a24;
  v207 = *MEMORY[0x277D85DE8];
  v205 = &(&v158)[-6 * a24];
  v177 = a19;
  if (a19 >= 1)
  {
    v183 = a26;
    LODWORD(v204) = a23;
    v175 = a20;
    v200 = a14;
    v171 = a11;
    v195 = a17;
    v28 = v184;
    v163 = v184 + 160;
    v173 = a16 >> 6;
    v160 = a10;
    v192 = a9;
    v29 = v205;
    v179 = a24;
    bzero(v205, 48 * a24);
    v27 = v179;
    v206 = 0;
    v172 = v164 + 4 * (v28[545].i32[0] - a12) + 8;
    v30 = v28[545].i32[1];
    v174 = a12;
    v170 = a13;
    v169 = a13 >> 16;
    v202 = a22;
    v31 = v204;
    v198 = a21 >> 1;
    v199 = a22 >> 1;
    v201 = a21;
    v204 = a21 - 1;
    v196 = a15;
    v197 = v200;
    v186 = (944 - a18) * v195;
    v187 = a18 - 944;
    v190 = a18 + 944;
    v195 = v195;
    v189 = (a18 + 944) * v195;
    v200 = a18;
    v193 = a18 * v195;
    v194 = a18 - 80;
    v181 = v183;
    v168 = a2 + 1092;
    v191 = v171 + 2;
    v159 = v29 + 52;
    v180 = v163 + v30 - a12 + 1;
    v167 = v29 + 28;
    v166 = a2 + 28;
    v158 = v29 + 76;
    v32 = 1168 * v179;
    result = (a2 + 8);
    v165 = v29 + 12;
    v33.i64[0] = 0xFFFF0000FFFFLL;
    v33.i64[1] = 0xFFFF0000FFFFLL;
    v34 = v179;
    v178 = v32;
    do
    {
      if (v176 == 2)
      {
        v35 = *(v172 - 12);
        v36 = vmovl_s16(*v160);
        v37 = vrev64q_s32(vshrq_n_s32(v35, 0x10uLL));
        v38 = vrev64q_s32(vandq_s8(v35, v33));
        v39 = 2 * (vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v37, v37, 8uLL), v36), vmulq_s32(vextq_s8(v38, v38, 8uLL), v36), 0x10uLL)) + ((*(v172 - 16) * v160[1].i16[0]) >> 16) + (*(v172 - 16) >> 16) * v160[1].i16[0]) + 4;
        v172 += 4;
      }

      else
      {
        v39 = 0;
      }

      if (v174 < 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = v39 - 4 * (((*(v180 - 2) + *v180) >> 16) * v170 + (*(v180 - 1) >> 16) * v169 + (((*(v180 - 4) + *v180) * v170) >> 16) + ((*(v180 - 1) * v169) >> 16));
        ++v180;
      }

      v185 = result;
      if (v27 <= 0)
      {
        v118 = 0;
        v119 = 0;
        v120 = *a25 + 31;
        *a25 = v120 & 0x1F;
        v121 = (v120 + v183) & 0x1F;
        v122 = *(v205 + 1);
        v123 = *(v205 + 7);
        v124 = a2;
      }

      else
      {
        v41 = 0;
        v42 = v206 + 31;
        v43 = vmovl_high_s16(*v192);
        v44 = vmovl_s16(*v192);
        v45 = *(v192 + 16);
        v46 = *(v192 + 18);
        v47 = *v171;
        v48 = v171[v204];
        v49 = v168;
        do
        {
          v50 = &a2[73 * v41];
          v50[289] = 196314165 * v50[289] + 907633515;
          v51 = &v50[v42];
          v52 = *(v51 - 3);
          v53 = *(v51 - 7);
          v54 = vrev64q_s32(vshrq_n_s32(v52, 0x10uLL));
          v55 = vrev64q_s32(vshrq_n_s32(v53, 0x10uLL));
          v56 = vrev64q_s32(vandq_s8(v52, v33));
          v57 = vrev64q_s32(vandq_s8(v53, v33));
          v58 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v56, v56, 8uLL), v44), 0x10uLL), vmulq_s32(vextq_s8(v57, v57, 8uLL), v43), 0x10uLL), vmlaq_s32(vmulq_s32(vextq_s8(v55, v55, 8uLL), v43), vextq_s8(v54, v54, 8uLL), v44))) + ((*(v51 - 8) * v45) >> 16) + (*(v51 - 8) >> 16) * v45 + ((*(v51 - 9) * v46) >> 16) + v199 + (*(v51 - 9) >> 16) * v46;
          if (v202 == 16)
          {
            v59 = *(v51 - 13);
            v60 = vmovl_s16(*(v192 + 20));
            v61 = vrev64q_s32(vshrq_n_s32(v59, 0x10uLL));
            v62 = vrev64q_s32(vandq_s8(v59, v33));
            v58 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v61, v61, 8uLL), v60), vmulq_s32(vextq_s8(v62, v62, 8uLL), v60), 0x10uLL)) + ((*(v51 - 14) * *(v192 + 28)) >> 16) + (*(v51 - 14) >> 16) * *(v192 + 28) + ((*(v51 - 15) * *(v192 + 30)) >> 16) + (*(v51 - 15) >> 16) * *(v192 + 30);
          }

          v63 = v50[272];
          v64 = v52.i32[3] + (v63 >> 16) * v31 + ((v63 * v31) >> 16);
          v65 = v63 + ((v50[273] - v64) >> 16) * v31 + (((*(v50 + 546) - v64) * v31) >> 16);
          v50[272] = v64;
          v66 = v198 + (v64 >> 16) * v47 + ((v64 * v47) >> 16);
          if (v201 >= 3)
          {
            v67 = v191;
            v68 = v49;
            v69 = 2;
            v70 = v49;
            do
            {
              v71 = v68[1];
              v72 = *v68 + ((v71 - v65) >> 16) * v31 + (((v71 - v65) * v31) >> 16);
              v73 = v65 >> 16;
              v74 = *(v67 - 1);
              v75 = v70[2];
              v70 += 2;
              v76 = v65 * v74;
              *v68 = v65;
              v68[1] = v72;
              v65 = v71 + ((v75 - v72) >> 16) * v31 + (((v75 - v72) * v31) >> 16);
              v66 += v73 * v74 + (v76 >> 16) + (v72 >> 16) * *v67 + ((v72 * *v67) >> 16);
              v69 += 2;
              v67 += 2;
              v68 = v70;
            }

            while (v69 < a21);
          }

          v77 = 16 * v58;
          v50[v204 + 272] = v65;
          v78 = v66 + (v65 >> 16) * v48 + ((v65 * v48) >> 16);
          v79 = v50[288] >> 16;
          v80 = v50[288];
          v81 = 8 * v78 + 4 * (v79 * v197 + ((v80 * v197) >> 16));
          v82 = *a25;
          v83 = v79 * (a15 >> 16) + ((v80 * (a15 >> 16)) >> 16) + (v50[v82 + 240] >> 16) * v196 + ((v50[v82 + 240] * v196) >> 16);
          v84 = *(v203 + 4 * v206) - ((((v77 + v40 - (v81 + 4 * v83)) >> 3) + 1) >> 1);
          v85 = v50[289];
          if (v85 < 0)
          {
            v84 = ((((v77 + v40 - (v81 + 4 * v83)) >> 3) + 1) >> 1) - *(v203 + 4 * v206);
          }

          if (v84 <= -31744)
          {
            v84 = -31744;
          }

          if (v84 >= 30720)
          {
            v84 = 30720;
          }

          v86 = v84 - v200;
          v87 = (v84 - v200) >> 10;
          if (v87 < 1)
          {
            v90 = v193;
            v91 = v189;
            v89 = v190;
            v88 = v200;
            if (v86 >= 0x400)
            {
              v92 = v200 + (v86 & 0xFFFFFC00);
              v188 = v92 + 80;
              v93 = v92 + 1104;
              v94 = (-80 - v92) * v195;
              v95 = (-1104 - v92) * v195;
              if (v87 == -1)
              {
                v90 = v186;
              }

              else
              {
                v90 = v94;
              }

              if (v87 == -1)
              {
                v91 = v193;
              }

              else
              {
                v91 = v95;
              }

              v88 = v187;
              if (v87 == -1)
              {
                v89 = v200;
              }

              else
              {
                v88 = v188;
                v89 = v93;
              }
            }
          }

          else
          {
            v88 = v194 + (v86 & 0xFFFFFC00);
            v89 = v88 + 1024;
            v90 = (v194 + (v86 & 0xFC00)) * v195;
            v91 = (v194 + (v86 & 0xFC00) + 1024) * v195;
          }

          v96 = &v205[6 * v41];
          v97 = 4 * v83;
          v98 = (v90 + (v84 - v88) * (v84 - v88)) >> 10;
          v99 = (v91 + (v84 - v89) * (v84 - v89)) >> 10;
          v100 = v50[291];
          v101 = v98 <= v99;
          if (v98 >= v99)
          {
            v102 = v99;
          }

          else
          {
            v102 = (v90 + (v84 - v88) * (v84 - v88)) >> 10;
          }

          if (v98 <= v99)
          {
            v98 = v99;
          }

          if (v101)
          {
            v103 = v88;
          }

          else
          {
            v103 = v89;
          }

          if (v101)
          {
            v88 = v89;
          }

          *v96 = v103;
          *(v96 + 1) = v100 + v102;
          *(v96 + 6) = v88;
          *(v96 + 7) = v100 + v98;
          v104 = 16 * v103;
          v105 = v85 < 0;
          if (v85 < 0)
          {
            v104 = -16 * v103;
          }

          v106 = v104 + v39;
          v107 = v106 + v77;
          v108 = 16 * v88;
          if (v105)
          {
            v108 = -16 * v88;
          }

          *(v96 + 4) = v107 - v81 - v97;
          *(v96 + 5) = v106;
          *(v96 + 2) = v107;
          *(v96 + 3) = v107 - v81;
          v109 = v108 + v39 + v77;
          v110 = v109 - v81;
          *(v96 + 10) = v110 - v97;
          *(v96 + 11) = v108 + v39;
          *(v96 + 8) = v109;
          *(v96 + 9) = v110;
          ++v41;
          v49 += 292;
        }

        while (v41 != v34);
        v111 = v82 + 31;
        *a25 = (v82 + 31) & 0x1F;
        v27 = v179;
        if (v179 < 2)
        {
          v112 = 0;
          v32 = v178;
          result = v185;
        }

        else
        {
          v112 = 0;
          v113 = *(v205 + 1);
          v114 = v159;
          v115 = 1;
          do
          {
            v117 = *v114;
            v114 += 48;
            v116 = v117;
            if (v117 < v113)
            {
              v112 = v115;
              v113 = v116;
            }

            ++v115;
          }

          while (v34 != v115);
          v32 = v178;
          result = v185;
        }

        v121 = (v111 + v183) & 0x1F;
        v124 = &a2[73 * v112];
        v125 = *(v124 + v121 + 112);
        v126 = v166 + v121;
        v127 = v34;
        v128 = v167;
        do
        {
          if (*v126 != v125)
          {
            *(v128 - 6) += 0x7FFFFFF;
            *v128 += 0x7FFFFFF;
          }

          v126 += 292;
          v128 += 48;
          --v127;
        }

        while (v127);
        v122 = *(v205 + 1);
        v123 = *(v205 + 7);
        if (v27 < 2)
        {
          v118 = 0;
          v119 = 0;
        }

        else
        {
          v129 = 0;
          v130 = 0;
          v131 = v158;
          v132 = 1;
          do
          {
            if (*(v131 - 6) > v122)
            {
              v129 = v132;
              v122 = *(v131 - 6);
            }

            v134 = *v131;
            v131 += 48;
            v133 = v134;
            if (v134 < v123)
            {
              v130 = v132;
              v123 = v133;
            }

            ++v132;
          }

          while (v34 != v132);
          v119 = v129;
          v118 = v130;
        }
      }

      if (v123 < v122)
      {
        memcpy(&a2[73 * v119] + 4 * v206, &a2[73 * v118] + 4 * v206, 1168 - 4 * v206);
        v33.i64[0] = 0xFFFF0000FFFFLL;
        v33.i64[1] = 0xFFFF0000FFFFLL;
        result = v185;
        v32 = v178;
        v27 = v179;
        v135 = &v205[6 * v119];
        v136 = &v205[6 * v118];
        *v135 = *(v136 + 24);
        *(v135 + 2) = *(v136 + 5);
      }

      if (v175 > 0 || v206 >= v181)
      {
        v137 = v124 + v121;
        v138 = v206 - v181;
        *(v161 + v206 - v181) = ((v137[144] >> 9) + 1) >> 1;
        v139 = (((*(v182 + 4 * v121) * (v137[176] >> 16) + ((*(v182 + 4 * v121) * v137[176]) >> 16) + (((*(v182 + 4 * v121) >> 15) + 1) >> 1) * v137[176]) >> 7) + 1) >> 1;
        if (v139 <= -32768)
        {
          v139 = -32768;
        }

        if (v139 >= 0x7FFF)
        {
          LOWORD(v139) = 0x7FFF;
        }

        *(v162 + 2 * v138) = v139;
        v141 = v183;
        v140 = v184;
        v163->i32[v184[545].i32[1] - v183] = v137[240];
        *(v164 + 4 * (v140[545].i32[0] - v141)) = v137[208];
      }

      v184[545] = vadd_s32(v184[545], 0x100000001);
      if (v27 >= 1)
      {
        v142 = 0;
        v143 = v165;
        do
        {
          v144 = &a2[v142 / 0x10];
          v145 = *(v143 - 1);
          v144[288] = *v143;
          result[v142 / 8].i32[0] = v145;
          *(&a2[v142 / 0x10 + 44] + *a25) = v145;
          v146 = *(v143 - 3);
          v147 = *(v143 - 2);
          *(&a2[v142 / 0x10 + 36] + *a25) = v146;
          v148 = *(v143 + 1);
          *(&a2[v142 / 0x10 + 52] + *a25) = 2 * *(v143 + 2);
          *(&a2[v142 / 0x10 + 60] + *a25) = v148;
          v149 = DWORD1(a2[v142 / 0x10 + 72]) + (((v146 >> 9) + 1) >> 1);
          v144[289] = v149;
          *(&a2[v142 / 0x10 + 28] + *a25) = v149;
          v144[291] = v147;
          v142 += 1168;
          v143 += 48;
        }

        while (v32 != v142);
      }

      *(v182 + 4 * *a25) = v173;
      result = (result + 4);
      ++v206;
    }

    while (v206 != v177);
  }

  if (v27 >= 1)
  {
    v150 = 4 * v177;
    v151 = v27;
    do
    {
      v152 = *(a2 + v150);
      v153 = *(a2 + v150 + 16);
      v154 = *(a2 + v150 + 48);
      a2[2] = *(a2 + v150 + 32);
      a2[3] = v154;
      *a2 = v152;
      a2[1] = v153;
      v155 = *(a2 + v150 + 64);
      v156 = *(a2 + v150 + 80);
      v157 = *(a2 + v150 + 112);
      a2[6] = *(a2 + v150 + 96);
      a2[7] = v157;
      a2[4] = v155;
      a2[5] = v156;
      a2 += 73;
      --v151;
    }

    while (v151);
  }

  return result;
}

__int16 *silk_bwexpander(__int16 *result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - 0x10000;
    v4 = (a2 - 1);
    v5 = result;
    do
    {
      *v5 = (((a3 * *v5) >> 15) + 1) >> 1;
      ++v5;
      a3 += (((a3 * v3) >> 15) + 1) >> 1;
      --v4;
    }

    while (v4);
  }

  result[a2 - 1] = (((a3 * result[a2 - 1]) >> 15) + 1) >> 1;
  return result;
}

uint64_t silk_decode_frame(uint64_t a1, uint64_t a2, char *a3, int *a4, int a5, int a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 2328);
  memset(&v19, 0, 128);
  v20 = 0;
  v13 = 4 * ((v12 + 15) & 0xFFFFFFF0);
  v14 = &v19.i8[-v13];
  bzero(&v19 - v13, v13);
  v21 = 0;
  if (a5 == 2)
  {
    v15 = *(a1 + 2400);
    if (*(a1 + 4 * v15 + 2432) == 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    silk_PLC(a1, &v19, a3, 1);
    goto LABEL_7;
  }

  if (a5)
  {
    goto LABEL_6;
  }

  LODWORD(v15) = *(a1 + 2400);
LABEL_5:
  silk_decode_indices(a1, a2, v15, a5, a6);
  silk_decode_pulses(a2, v14, *(a1 + 2789), *(a1 + 2790), *(a1 + 2328));
  silk_decode_parameters(a1, &v19, a6);
  silk_decode_core(a1, &v19, a3, v14);
  silk_PLC(a1, &v19, a3, 0);
  *(a1 + 4184) = 0;
  *(a1 + 4188) = *(a1 + 2789);
  *(a1 + 2376) = 0;
LABEL_7:
  v16 = *(a1 + 2328);
  v17 = *(a1 + 2336) - v16;
  memmove((a1 + 1348), (a1 + 1348 + 2 * v16), 2 * v17);
  memcpy((a1 + 1348 + 2 * v17), a3, 2 * *(a1 + 2328));
  silk_PLC_glue_frames(a1, a3, v12);
  silk_CNG(a1, &v19, a3, v12);
  *(a1 + 2308) = v19.i32[*(a1 + 2324) - 1];
  *a4 = v12;
  return 0;
}

uint64_t silk_control_SNR(uint64_t a1, int a2)
{
  if (a2 <= 5000)
  {
    v2 = 5000;
  }

  else
  {
    v2 = a2;
  }

  if (v2 >= 80000)
  {
    v2 = 80000;
  }

  if (v2 != *(a1 + 4632))
  {
    v3 = *(a1 + 4600);
    v4 = &silk_TargetRate_table_WB;
    if (v3 == 12)
    {
      v4 = &silk_TargetRate_table_MB;
    }

    *(a1 + 4632) = v2;
    if (v3 == 8)
    {
      v4 = &silk_TargetRate_table_NB;
    }

    if (*(a1 + 4604) == 2)
    {
      v5 = v2 - 2200;
    }

    else
    {
      v5 = v2;
    }

    v6 = (v4 + 4);
    v7 = &word_26ED6CDEA;
    v8 = 7;
    while (v5 > *v6)
    {
      ++v6;
      ++v7;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }

    *(a1 + 4764) = (*v7 - *(v7 - 1)) * (((v5 - *(v6 - 1)) << 6) / (*v6 - *(v6 - 1))) + (*(v7 - 1) << 6);
LABEL_19:
    if (*(a1 + 6144))
    {
      *(a1 + 4764) += -31 * (12 - *(a1 + 6148));
    }
  }

  return 0;
}

uint64_t silk_InitEncoder(uint64_t a1, int a2, uint64_t a3)
{
  bzero(a1, 0x4CE8uLL);
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    inited = silk_init_encoder((a1 + 9800 * v6), a2);
    v8 = 0;
    v7 = (inited + v7);
    v6 = 1;
  }

  while ((v9 & 1) != 0);
  *(a1 + 19660) = 0x100000001;
  *a3 = 0x100000001;
  *(a3 + 8) = *(a1 + 4580);
  *(a3 + 12) = *(a1 + 4588);
  *(a3 + 20) = *(a1 + 4596);
  *(a3 + 24) = vrev64_s32(*(a1 + 4632));
  v11 = *(a1 + 4648);
  *(a3 + 32) = *(a1 + 4640);
  *(a3 + 36) = v11;
  v12 = *(a1 + 6128);
  *(a3 + 40) = *(a1 + 6140);
  *(a3 + 44) = v12;
  *(a3 + 48) = *(a1 + 4708);
  v13 = *(a1 + 4600);
  v14 = *(a1 + 4560);
  *(a3 + 68) = 1000 * v13;
  *(a3 + 72) = v14;
  v15 = v13 == 16 && *(a1 + 28) == 0;
  *(a3 + 76) = v15;
  return v7;
}

uint64_t silk_Encode(_DWORD *a1, _DWORD *a2, _WORD *a3, int a4, uint64_t a5, int *a6, int a7)
{
  v180 = a6;
  v173 = a3;
  v11 = a1;
  v187 = *MEMORY[0x277D85DE8];
  if (a2[16])
  {
    a1[1174] = 1;
    a1[3624] = 1;
  }

  a1[3899] = 0;
  a1[1449] = 0;
  v12 = check_control_input(a2);
  if (v12)
  {
    return 1;
  }

  a2[21] = 0;
  LODWORD(v14) = a2[1];
  if (v14 <= *(v11 + 19664))
  {
    v15 = 0;
  }

  else
  {
    v15 = silk_init_encoder((v11 + 9800), *(v11 + 5140)) + (v12 != 0);
    *(v11 + 19600) = 0;
    *(v11 + 19608) = xmmword_26ECC7980;
    *(v11 + 19624) = 0x400000000001;
    if (*(v11 + 19660) == 2)
    {
      memcpy((v11 + 15624), (v11 + 5824), 0x130uLL);
      *(v11 + 9800) = *v11;
    }

    LODWORD(v14) = a2[1];
  }

  v16 = *(v11 + 4636);
  v160 = a2[6];
  v17 = v160 != v16 || *(v11 + 19664) != v14;
  *(v11 + 19660) = *a2;
  *(v11 + 19664) = v14;
  v176 = (v11 + 19600);
  v18 = a2[2];
  v19 = 100 * a4 / v18;
  v20 = v19 >> 1;
  if (v19 <= 1)
  {
    v20 = 1;
  }

  v178 = v20;
  v179 = v11;
  if (a7)
  {
    if (v19 != 1)
    {
      return 4294967195;
    }

    if (v14 < 1)
    {
      v172 = a4;
      a2[6] = 10;
      HIDWORD(v154) = a2[9];
      a2[9] = 0;
      goto LABEL_45;
    }

    v21 = v11;
    v22 = 0;
    do
    {
      inited = silk_init_encoder(v21, v21[1285]);
      ++v22;
      v14 = a2[1];
      v21 += 2450;
    }

    while (v22 < v14);
    v15 = inited;
    v160 = a2[6];
    a2[6] = 10;
    v24 = a2[9];
    a2[9] = 0;
    HIDWORD(v154) = v24;
    if (v14 < 1)
    {
      v172 = a4;
LABEL_44:
      v11 = v179;
      goto LABEL_45;
    }

    v11 = v179;
    v25 = v179 + 1178;
    v26 = v14;
    do
    {
      *(v25 - 3) = 0;
      *v25 = 1;
      v25 += 2450;
      --v26;
    }

    while (v26);
  }

  else
  {
    result = 4294967195;
    if (a4 < 0 || v19 * v18 != 100 * a4 || 1000 * a4 > v18 * v160)
    {
      return result;
    }

    v160 = 0;
    HIDWORD(v154) = 0;
  }

  v172 = a4;
  _VF = __OFSUB__(v14, 1);
  v28 = v14 - 1;
  if (v28 < 0 == _VF)
  {
    v29 = 0;
    v30 = v11;
    v31 = a2[7] >> v28;
    v32 = v30 + 4772;
    do
    {
      if (v29 == 1)
      {
        v33 = v179;
        v34 = v179[1150];
      }

      else
      {
        v34 = 0;
        v33 = v179;
      }

      v35 = &v33[2450 * v29];
      result = silk_control_encoder(v35, a2, v31, v176[19], v29, v34);
      if (result)
      {
        return result;
      }

      v36 = v179;
      if ((v35[1174] != 0 || v17) && v179[1448] >= 1)
      {
        v37 = 0;
        do
        {
          *(v32 + 4 * v37++) = 0;
        }

        while (v37 < v36[1448]);
      }

      v35[1533] = v35[1532];
      ++v29;
      v32 += 9800;
    }

    while (v29 < a2[1]);
    v15 = 0;
    goto LABEL_44;
  }

LABEL_45:
  v38 = *(v11 + 4600);
  v158 = 10 * v19;
  v39 = *(v11 + 4580);
  v165 = v38 * 10 * v19;
  v40 = 2 * (v165 * v39 / (1000 * v38));
  v168 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v168, v40);
  v41 = 0;
  v167 = v11 + 5144;
  v161 = v11 + 14944;
  v175 = v11 + 19634;
  v184 = v11 + 14572;
  v182 = v11 + 19652;
  v163 = v11 + 14568;
  v157 = (v11 + 14365);
  v156 = (v11 + 17024);
  v155 = (v11 + 14324);
  v183 = v178 - 1;
  v174 = 2 * v178;
  v162 = v11 + 4772;
  v164 = v11 + 35196;
  v159 = v11 + 4768;
  LODWORD(result) = v15;
  v166 = a7;
  v42 = v173;
  while (1)
  {
    v181 = v41;
    v43 = *(v11 + 5788);
    if (*(v11 + 4608) - v43 >= v165)
    {
      v44 = v165;
    }

    else
    {
      v44 = *(v11 + 4608) - v43;
    }

    v45 = v11;
    v46 = (v44 * *(v11 + 4580) / (1000 * *(v11 + 4600)));
    v47 = *a2;
    v173 = v42;
    v171 = v46;
    if (v47 != 2)
    {
      goto LABEL_68;
    }

    v48 = a2[1];
    if (v48 != 1)
    {
      if (v48 == 2)
      {
        v49 = result;
        if (v46 >= 1)
        {
          v50 = v46;
          v51 = v168;
          v52 = v173;
          do
          {
            v53 = *v52;
            v52 += 2;
            *v51++ = v53;
            --v50;
          }

          while (v50);
        }

        if (v176[17] == 1 && v45[1449] == 0)
        {
          memcpy(v45 + 3906, v45 + 1456, 0x130uLL);
        }

        v55 = silk_resampler(v45 + 1456, (v167 + 2 * v43 + 4), v168, v46);
        v45[1447] += v44;
        v56 = v45[3897];
        if ((v45[3602] - v56) >= (v45[3600] * v158))
        {
          v57 = v45[3600] * v158;
        }

        else
        {
          v57 = v45[3602] - v56;
        }

        if (v46 >= 1)
        {
          v58 = v173 + 1;
          v59 = v46;
          v60 = v168;
          do
          {
            v61 = *v58;
            v58 += 2;
            *v60++ = v61;
            --v59;
          }

          while (v59);
        }

        v62 = v179;
        result = v55 + v49 + silk_resampler(v179 + 3906, (v161 + 2 * v56 + 4), v168, v46);
        v11 = v62;
        v62[3897] += v57;
        v63 = v62[1447];
      }

      else
      {
LABEL_68:
        v64 = 2 * v46;
        v65 = v168;
        v66 = v46;
        v67 = result;
        memcpy(v168, v42, v64);
        result = silk_resampler(v45 + 1456, (v167 + 2 * v43 + 4), v65, v66) + v67;
        v11 = v45;
        v63 = v45[1447] + v44;
        v45[1447] = v63;
      }

      v68 = v176;
      goto LABEL_70;
    }

    if (v46 >= 1)
    {
      v137 = v173 + 1;
      v138 = v46;
      v139 = v168;
      do
      {
        v140 = *v137 + *(v137 - 1);
        *v139++ = (v140 & 1) + (v140 >> 1);
        v137 += 2;
        --v138;
      }

      while (v138);
    }

    v141 = v45;
    result = silk_resampler(v45 + 1456, (v167 + 2 * v43 + 4), v168, v46) + result;
    v68 = v176;
    if (v176[17] == 2 && !v45[1449])
    {
      result = silk_resampler(v45 + 3906, (v161 + 2 * v45[3897] + 4), v168, v46) + result;
      v142 = v45[1152];
      if (v142 >= 1)
      {
        v143 = v45[1447] + 2;
        v144 = v45[3897] + 2;
        v145 = v167;
        v146 = v161;
        do
        {
          *(v145 + 2 * v143) = (*(v146 + 2 * v144) + *(v145 + 2 * v143)) >> 1;
          ++v143;
          ++v144;
          --v142;
        }

        while (v142);
        v141 = v45;
      }
    }

    v63 = v141[1447] + v44;
    v141[1447] = v63;
    v11 = v141;
LABEL_70:
    v69 = *a2;
    v68[19] = 0;
    if (v63 < *(v11 + 4608))
    {
      break;
    }

    v169 = v69;
    v170 = result;
    if (*(v11 + 5796) | a7)
    {
      goto LABEL_104;
    }

    v185 = 0;
    LOBYTE(v185) = -(0x100u >> (a2[1] + a2[1] * *(v11 + 5792)));
    ec_enc_icdf(a5, 0, &v185, 8);
    v70 = a2[1];
    if (v70 >= 1)
    {
      v71 = 0;
      v72 = v162;
      do
      {
        v73 = &v179[2450 * v71];
        v74 = v73[1448];
        if (v74 < 1)
        {
          v76 = 0;
        }

        else
        {
          v75 = 0;
          v76 = 0;
          do
          {
            v76 |= *(v72 + 4 * v75) << v75;
            ++v75;
          }

          while (v74 != v75);
        }

        *(v73 + 4771) = v76 > 0;
        if (v76 && v74 >= 2)
        {
          ec_enc_icdf(a5, v76 - 1, *(&silk_LBRR_flags_iCDF_ptr + (v74 - 2)), 8);
          v70 = a2[1];
        }

        ++v71;
        v72 += 9800;
      }

      while (v71 < v70);
    }

    v11 = v179;
    v77 = v179[1448];
    if (v77 < 1)
    {
      goto LABEL_100;
    }

    v78 = 0;
    v79 = 4768;
    v80 = 6181;
    v81 = 6260;
    do
    {
      if (v70 < 1)
      {
        goto LABEL_99;
      }

      v82 = v11;
      v83 = 0;
      v84 = (v175 + 6 * v78);
      do
      {
        if (!*(v82 + v79 + 4))
        {
          goto LABEL_97;
        }

        if (v83 || v70 != 2 || (silk_stereo_encode_pred(a5, v84), *(v184 + 4 * v78)))
        {
          if (!v78)
          {
            goto LABEL_95;
          }
        }

        else
        {
          silk_stereo_encode_mid_only(a5, *(v182 + v78));
          if (!v78)
          {
LABEL_95:
            v85 = 0;
            goto LABEL_96;
          }
        }

        if (!*(v82 + v79))
        {
          goto LABEL_95;
        }

        v85 = 2;
LABEL_96:
        silk_encode_indices(v82, a5, v78, 1, v85);
        silk_encode_pulses(a5, *(v82 + v80), *(v82 + v80 + 1), v82 + v81, *(v82 + 4608));
        v70 = a2[1];
LABEL_97:
        ++v83;
        v82 += 9800;
      }

      while (v83 < v70);
      v11 = v179;
      v77 = v179[1448];
LABEL_99:
      ++v78;
      v81 += 320;
      v80 += 36;
      v79 += 4;
    }

    while (v78 < v77);
LABEL_100:
    if (v70 >= 1)
    {
      v86 = 0;
      v87 = v162;
      do
      {
        *(v87 + 8) = 0;
        *v87 = 0;
        ++v86;
        v87 += 9800;
      }

      while (v86 < a2[1]);
    }

    a7 = v166;
    v68 = v176;
LABEL_104:
    silk_HP_variable_cutoff(v11);
    v89 = a2[6];
    v88 = a2[7];
    v90 = v89 * v88 / 1000;
    if (!a7)
    {
      v90 -= (*(a5 + 24) + __clz(*(a5 + 32)) - 32) >> 1;
    }

    v91 = *(v11 + 5796);
    v92 = (v90 / (*(v11 + 5792) - v91));
    if (v89 == 10)
    {
      v93 = 100;
    }

    else
    {
      v93 = 50;
    }

    v94 = v92 * v93 - 2 * v68[14];
    if (v88 <= 5000)
    {
      v95 = 5000;
    }

    else
    {
      v95 = a2[7];
    }

    if (v88 >= 5000)
    {
      v88 = 5000;
    }

    if (v94 > v88)
    {
      v88 = v94;
    }

    if (v94 <= v95)
    {
      v96 = v88;
    }

    else
    {
      v96 = v95;
    }

    if (a2[1] == 2)
    {
      v97 = v182;
      silk_stereo_LR_to_MS((v11 + 19600), (v11 + 5148), v11 + 14948, v175 + 6 * v91, (v182 + v91), v186, v96, *(v11 + 4556), a2[14], *(v11 + 4600), *(v11 + 4608));
      v98 = *(v11 + 5796);
      if (*(v97 + v98))
      {
        *(v163 + v98) = 0;
        if (!a7)
        {
          goto LABEL_183;
        }
      }

      else
      {
        if (v68[20] == 1)
        {
          v133 = v156;
          *v156 = 0;
          v133[1] = 0;
          bzero((v11 + 17040), 0x45CuLL);
          bzero((v11 + 9944), 0x111CuLL);
          v134 = v155;
          *v155 = 0u;
          v134[1] = 0u;
          *(v11 + 9816) = 0;
          *(v11 + 14368) = 100;
          *(v11 + 14300) = 100;
          v135 = v157;
          v157[2659] = 10;
          *v135 = 0;
          *(v11 + 14316) = 0x10000;
          *(v11 + 14496) = 1;
        }

        silk_encode_do_VAD_FIX(v11 + 9800);
        if (!a7)
        {
LABEL_183:
          silk_stereo_encode_pred(a5, (v175 + 6 * *(v11 + 5796)));
          v136 = *(v11 + 5796);
          if (!*(v163 + v136))
          {
            silk_stereo_encode_mid_only(a5, *(v182 + v136));
          }
        }
      }
    }

    else
    {
      *(v11 + 5144) = v68[1];
      v68[1] = *(v167 + 2 * *(v11 + 4608));
    }

    silk_encode_do_VAD_FIX(v11);
    v99 = a2[1];
    if (v99 >= 1)
    {
      v177 = v96;
      v100 = 0;
      v101 = v181;
      v103 = v178 == 2 && v181 == 0;
      v104 = v11;
      v105 = v11;
      _X28 = v164;
      result = v170;
      while (1)
      {
        v107 = a2[13];
        if (v103)
        {
          break;
        }

        v109 = a2[13];
        if (v178 != 3)
        {
          goto LABEL_140;
        }

        if (!v101)
        {
          v108 = 2 * v107;
          goto LABEL_134;
        }

        if (v101 == 1)
        {
          v109 = 3 * v107 / 4;
        }

        else
        {
          v109 = a2[13];
        }

LABEL_140:
        if (a2[12])
        {
          v110 = v101 == v183;
        }

        else
        {
          v110 = 0;
        }

        v111 = v110;
        if (v99 == 1)
        {
          v112 = v177;
        }

        else
        {
          v112 = v186[v100];
          if (!v100 && v186[1] >= 1)
          {
            v111 = 0;
            v109 -= v107 / v174;
          }
        }

        if (v112 >= 1)
        {
          silk_control_SNR(v105, v112);
          if (v100 >= v104[1449])
          {
            v113 = 0;
          }

          else if (v100 && v176[20])
          {
            v113 = 1;
          }

          else
          {
            v113 = 2;
          }

          result = silk_encode_frame_FIX(v105, v180, a5, v113, v109, v111);
          v99 = a2[1];
          v101 = v181;
        }

        v105[587].i32[1] = 0;
        v105[723].i32[1] = 0;
        __asm { PRFM            #0, [X28] }

        ++v105[724].i32[1];
        ++v100;
        _X28 += 9800;
        v105 += 1225;
        if (v100 >= v99)
        {
          goto LABEL_163;
        }
      }

      v108 = 3 * v107;
LABEL_134:
      v109 = v108 / 5;
      goto LABEL_140;
    }

    v104 = v11;
    v101 = v181;
    result = v170;
LABEL_163:
    v11 = v104;
    v117 = v104[1449];
    v118 = v176;
    v176[20] = *(v117 + v182 - 1);
    a7 = v166;
    v119 = v171;
    if (*v180 >= 1 && v117 == v104[1448])
    {
      if (v99 < 1)
      {
        v121 = 0;
        if (v166)
        {
          goto LABEL_172;
        }
      }

      else
      {
        v120 = 0;
        v121 = 0;
        v122 = v159;
        do
        {
          v123 = &v104[2450 * v120];
          v124 = v123[1448];
          if (v124 >= 1)
          {
            v125 = v122;
            do
            {
              v126 = *v125++;
              v121 = v126 | (2 * v121);
              --v124;
            }

            while (v124);
          }

          v121 = *(v123 + 4771) | (2 * v121);
          ++v120;
          v122 += 9800;
        }

        while (v120 != v99);
        if (v166)
        {
LABEL_172:
          if (v104[1533] && (a2[1] == 1 || v104[3983]))
          {
            *v180 = 0;
          }

          v127 = a2[6];
          v128 = -274877907 * v127 * a2[7];
          v129 = (v128 >> 38) + (v128 >> 63) + v118[14] + 8 * *v180;
          v130 = v129 & ~(v129 >> 31);
          if (v130 >= 10000)
          {
            v130 = 10000;
          }

          v118[14] = v130;
          v131 = v118[18];
          if (v104[1139] >= ((3188 * v131) >> 16) + 13)
          {
            v118[19] = 0;
            v132 = v131 + v127;
          }

          else
          {
            v132 = 0;
            v118[19] = 1;
          }

          v118[18] = v132;
          goto LABEL_197;
        }
      }

      v147 = result;
      ec_enc_patch_initial_bits(a5, v121, v99 + v99 * v117);
      result = v147;
      v101 = v181;
      goto LABEL_172;
    }

LABEL_197:
    v42 = &v173[v169 * v119];
    v41 = v101 + 1;
    v172 -= v119;
    if (!v172)
    {
      v68 = v176;
      v148 = v176[19];
      goto LABEL_202;
    }
  }

  v148 = 0;
LABEL_202:
  v149 = a2[1];
  v68[17] = v149;
  a2[18] = v148;
  v150 = *(v11 + 4600);
  v151 = v150 == 16 && *(v11 + 28) == 0;
  a2[19] = v151;
  a2[17] = 1000 * v150;
  if (a2[14])
  {
    v152 = 0;
  }

  else
  {
    v152 = *(v68 + 14);
  }

  a2[20] = v152;
  if (a7)
  {
    a2[6] = v160;
    a2[9] = HIDWORD(v154);
    if (v149 >= 1)
    {
      v153 = (v11 + 4712);
      do
      {
        *(v153 - 3) = 0;
        *v153 = 0;
        v153 += 2450;
        --v149;
      }

      while (v149);
    }
  }

  return result;
}

uint64_t silk_stereo_decode_pred(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = ec_dec_icdf(a1, silk_stereo_pred_joint_iCDF, 8);
  v12[2] = v4 / 5;
  v13[2] = v4 % 5;
  v12[0] = ec_dec_icdf(a1, silk_uniform3_iCDF, 8);
  v12[1] = ec_dec_icdf(a1, "͚f3", 8);
  v5 = v12;
  v13[0] = ec_dec_icdf(a1, silk_uniform3_iCDF, 8);
  result = ec_dec_icdf(a1, "͚f3", 8);
  v7 = 0;
  v13[1] = result;
  v8 = 1;
  do
  {
    v9 = *v5 + 3 * v5[2];
    v10 = (&silk_stereo_pred_quant_Q13 + 2 * v9);
    LODWORD(v10) = *v10 + ((429522944 * ((v10[1] - *v10) >> 16) + 6554 * (v10[1] - *v10)) >> 16) * ((2 * *(v5 + 2)) | 1);
    v11 = v8;
    *v5 = v9;
    a2[v7] = v10;
    v5 = v13;
    v7 = 1;
    v8 = 0;
  }

  while ((v11 & 1) != 0);
  *a2 -= a2[1];
  return result;
}

uint64_t silk_stereo_decode_mid_only(uint64_t a1, _DWORD *a2)
{
  result = ec_dec_icdf(a1, silk_stereo_only_code_mid_iCDF, 8);
  *a2 = result;
  return result;
}

uint64_t *silk_encode_indices(uint64_t a1, uint64_t *a2, int a3, int a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = (a1 + 36 * a3 + 6152);
  }

  else
  {
    v8 = (a1 + 4784);
  }

  v9 = v8[30] + 2 * v8[29];
  if (a4 || v9 >= 2)
  {
    v9 -= 2;
    v10 = silk_type_offset_VAD_iCDF;
  }

  else
  {
    v10 = silk_type_offset_no_VAD_iCDF;
  }

  ec_enc_icdf(a2, v9, v10, 8);
  v11 = *v8;
  if (a5 == 2)
  {
    v12 = silk_delta_gain_iCDF;
  }

  else
  {
    ec_enc_icdf(a2, v11 >> 3, &silk_gain_iCDF[8 * v8[29]], 8);
    v12 = silk_uniform8_iCDF;
    v11 = *v8 & 7;
  }

  ec_enc_icdf(a2, v11, v12, 8);
  if (*(a1 + 4604) > 1)
  {
    v13 = 1;
    do
    {
      ec_enc_icdf(a2, v8[v13++], silk_delta_gain_iCDF, 8);
    }

    while (v13 < *(a1 + 4604));
  }

  ec_enc_icdf(a2, v8[8], *(*(a1 + 4736) + 16) + **(a1 + 4736) * (v8[29] >> 1), 8);
  silk_NLSF_unpack(v32, v31, *(a1 + 4736), v8[8]);
  v14 = *(a1 + 4736);
  if (*(v14 + 2) >= 1)
  {
    v15 = 0;
    v16 = v8 + 9;
    do
    {
      v17 = v16[v15];
      if (v17 < 4)
      {
        if (v17 > -4)
        {
          v18 = v17 + 4;
          v20 = (*(v14 + 40) + v32[v15]);
          v19 = a2;
          goto LABEL_22;
        }

        ec_enc_icdf(a2, 0, *(v14 + 40) + v32[v15], 8);
        v18 = -4 - v16[v15];
      }

      else
      {
        ec_enc_icdf(a2, 8, *(v14 + 40) + v32[v15], 8);
        v18 = v16[v15] - 4;
      }

      v19 = a2;
      v20 = silk_NLSF_EXT_iCDF;
LABEL_22:
      ec_enc_icdf(v19, v18, v20, 8);
      ++v15;
      v14 = *(a1 + 4736);
    }

    while (v15 < *(v14 + 2));
  }

  if (*(a1 + 4604) == 4)
  {
    ec_enc_icdf(a2, v8[31], silk_NLSF_interpolation_factor_iCDF, 8);
  }

  if (v8[29] == 2)
  {
    if (a5 != 2 || *(a1 + 5816) != 2 || ((v21 = *(v8 + 13) - *(a1 + 5820), v22 = v21 + 8, v23 = v21 + 9, v22 >= 0x14) ? (v24 = 0) : (v24 = v23), ec_enc_icdf(a2, v24, silk_pitch_delta_iCDF, 8), v22 >= 0x14))
    {
      v25 = *(v8 + 13);
      v26 = *(a1 + 4600);
      v27 = v25 / (v26 >> 1);
      v28 = v25 - v27 * (v26 >> 1);
      ec_enc_icdf(a2, v27, silk_pitch_lag_iCDF, 8);
      ec_enc_icdf(a2, v28, *(a1 + 4720), 8);
    }

    *(a1 + 5820) = *(v8 + 13);
    ec_enc_icdf(a2, v8[28], *(a1 + 4728), 8);
    ec_enc_icdf(a2, v8[32], silk_LTP_per_index_iCDF, 8);
    if (*(a1 + 4604) >= 1)
    {
      v29 = 0;
      do
      {
        ec_enc_icdf(a2, v8[v29++ + 4], *(&silk_LTP_gain_iCDF_ptrs + v8[32]), 8);
      }

      while (v29 < *(a1 + 4604));
    }

    if (!a5)
    {
      ec_enc_icdf(a2, v8[33], silk_LTPscale_iCDF, 8);
    }
  }

  *(a1 + 5816) = v8[29];
  return ec_enc_icdf(a2, v8[34], silk_uniform4_iCDF, 8);
}

uint64_t silk_HP_variable_cutoff(uint64_t result)
{
  if (*(result + 4565) == 2)
  {
    v1 = result;
    v2 = silk_lin2log(65536000 * *(result + 4600) / *(result + 4568));
    v3 = ((-4 * *(v1 + 4744)) >> 16) * *(v1 + 4744) + (((-4 * *(v1 + 4744)) * *(v1 + 4744)) >> 16);
    v4 = (v2 - silk_lin2log(0x3C0000u));
    v5 = silk_lin2log(0x3C0000u);
    v6 = *(v1 + 8);
    v7 = v2 - (v6 >> 8) + (v3 >> 16) * v4 + ((v3 * (v2 - v5)) >> 16) - 2048;
    if (v7 < 0)
    {
      v7 *= 3;
    }

    if (v7 <= -51)
    {
      v7 = -51;
    }

    if (v7 >= 51)
    {
      v7 = 51;
    }

    *(v1 + 8) = v6 + 6554 * ((v7 * *(v1 + 4556)) >> 16) + ((6554 * (v7 * *(v1 + 4556))) >> 16);
    v8 = silk_lin2log(0x3Cu) << 8;
    v9 = silk_lin2log(0x64u);
    v10 = *(v1 + 8);
    if (v8 <= v9 << 8)
    {
      if (v10 > (silk_lin2log(0x64u) << 8))
      {
LABEL_13:
        v12 = 100;
LABEL_16:
        result = silk_lin2log(v12);
        v14 = result << 8;
LABEL_18:
        *(v1 + 8) = v14;
        return result;
      }

      v13 = *(v1 + 8);
      result = silk_lin2log(0x3Cu);
      if (v13 >= result << 8)
      {
LABEL_17:
        v14 = *(v1 + 8);
        goto LABEL_18;
      }
    }

    else if (v10 <= (silk_lin2log(0x3Cu) << 8))
    {
      v11 = *(v1 + 8);
      result = silk_lin2log(0x64u);
      if (v11 >= result << 8)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v12 = 60;
    goto LABEL_16;
  }

  return result;
}

uint64_t *silk_encode_signs(uint64_t *result, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v14[1] = 0;
  v6 = ((a3 + 8) >> 4);
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = &silk_sign_iCDF + 8 * (((a5 << 16) + (a4 << 17)) >> 16) - (((a5 << 16) + (a4 << 17)) >> 16);
    do
    {
      if (*(a6 + 4 * v10) >= 1)
      {
        v12 = 0;
        v13 = *(a6 + 4 * v10) & 0x1F;
        if (v13 >= 6)
        {
          v13 = 6;
        }

        v14[0] = v11[v13];
        do
        {
          if (*(a2 + v12))
          {
            result = ec_enc_icdf(v9, (*(a2 + v12) & 0x80) == 0, v14, 8);
          }

          ++v12;
        }

        while (v12 != 16);
      }

      a2 += 16;
      ++v10;
    }

    while (v10 != v6);
  }

  return result;
}

uint64_t silk_decode_signs(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v14[1] = 0;
  v6 = ((a3 + 8) >> 4);
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = &silk_sign_iCDF + 8 * (((a5 << 16) + (a4 << 17)) >> 16) - (((a5 << 16) + (a4 << 17)) >> 16);
    do
    {
      if (*(a6 + 4 * v10) >= 1)
      {
        v12 = 0;
        v13 = *(a6 + 4 * v10) & 0x1F;
        if (v13 >= 6)
        {
          v13 = 6;
        }

        v14[0] = v11[v13];
        do
        {
          if (*(a2 + v12) >= 1)
          {
            result = ec_dec_icdf(v9, v14, 8);
            *(a2 + v12) *= 2 * result - 1;
          }

          v12 += 4;
        }

        while (v12 != 64);
      }

      a2 += 64;
      ++v10;
    }

    while (v10 != v6);
  }

  return result;
}

uint64_t silk_log2lin(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 > 0xF7E)
  {
    return 0x7FFFFFFFLL;
  }

  v2 = 1 << (a1 >> 7);
  v3 = (a1 & 0x7F) + ((-174 * (a1 & 0x7F) * (128 - (a1 & 0x7F))) >> 16);
  v4 = v3 << (a1 >> 7) >> 7;
  if (a1 > 0x7FF)
  {
    v4 = v3 * (v2 >> 7);
  }

  return v4 + v2;
}

uint64_t silk_biquad_alt(uint64_t result, int *a2, _DWORD *a3, int *a4, uint64_t a5, int a6, int a7)
{
  if (a6 >= 1)
  {
    v7 = 0;
    v8 = -*a3 & 0x3FFF;
    v9 = (-4 * *a3) >> 16;
    v10 = -a3[1] & 0x3FFF;
    v11 = (-4 * a3[1]) >> 16;
    v12 = a6;
    v13 = *a4;
    v14 = a4[1];
    v15 = 2 * a7;
    do
    {
      v16 = *(result + v7);
      v17 = v13 + (*a2 >> 16) * v16 + ((*a2 * v16) >> 16);
      v18 = (v17 >> 14);
      v19 = (4 * v17) & 0xFFFC;
      v20 = v14 + v18 * v9 + ((v19 * v9) >> 16) + ((((v18 * v8 + ((v19 * v8) >> 16)) >> 13) + 1) >> 1);
      *a4 = v20;
      v13 = (a2[1] >> 16) * v16 + ((a2[1] * v16) >> 16) + v20;
      v21 = v18 * v11 + ((v19 * v11) >> 16) + ((((v18 * v10 + ((v19 * v10) >> 16)) >> 13) + 1) >> 1);
      *a4 = v13;
      a4[1] = v21;
      v14 = (a2[2] >> 16) * v16 + ((a2[2] * v16) >> 16) + v21;
      a4[1] = v14;
      v22 = (4 * v17 + 0x3FFF) >> 14;
      if (v22 <= -32768)
      {
        v22 = -32768;
      }

      if (v22 >= 0x7FFF)
      {
        LOWORD(v22) = 0x7FFF;
      }

      *(a5 + v7) = v22;
      v7 += v15;
      --v12;
    }

    while (v12);
  }

  return result;
}

unsigned int *silk_resampler_private_up2_HQ(unsigned int *result, uint64_t a2, __int16 *a3, uint64_t a4)
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
      v12 = 1746 * (((v11 << 10) - v4) >> 16) + ((1746 * ((v11 << 10) - v4)) >> 16);
      v13 = v12 + v4;
      v4 = v12 + (v11 << 10);
      v14 = 14986 * ((v13 - v5) >> 16) + ((14986 * (v13 - v5)) >> 16);
      v15 = v14 + v5;
      v5 = v14 + v13;
      v16 = v15 - v7;
      v17 = -26453 * (v16 >> 16) + ((-26453 * v16) >> 16) + v15;
      v7 = v17 + v16;
      v18 = ((v17 >> 9) + 1) >> 1;
      v19 = 6854 * (((v11 << 10) - v8) >> 16) + ((6854 * ((v11 << 10) - v8)) >> 16);
      v20 = v19 + v8;
      v8 = v19 + (v11 << 10);
      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      v21 = 25769 * ((v20 - v10) >> 16) + ((25769 * (v20 - v10)) >> 16);
      v22 = v21 + v10;
      v10 = v21 + v20;
      v23 = v22 - v9;
      v24 = -9994 * (v23 >> 16) + ((-9994 * v23) >> 16) + v22;
      if (v18 >= 0x7FFF)
      {
        v25 = 0x7FFF;
      }

      else
      {
        v25 = v18;
      }

      v9 = v24 + v23;
      v26 = ((v24 >> 9) + 1) >> 1;
      *(v6 - 1) = v25;
      if (v26 <= -32768)
      {
        v26 = -32768;
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

uint64_t silk_NLSF_del_dec_quant(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, __int16 a9, __int16 a10, __int16 a11)
{
  *&v83[88] = *MEMORY[0x277D85DE8];
  v11 = a8 >> 16;
  v12 = a8;
  v80[0] = 0;
  v13 = a11;
  v82[0] = 0;
  v14 = 1;
LABEL_2:
  v15 = v14;
  v16 = &v83[v13 + 8];
  for (i = v13; ; --i)
  {
    v13 = i - 1;
    if (v15 < 1)
    {
      goto LABEL_52;
    }

    v78 = v16;
    v18 = 0;
    v19 = a6 + *(a5 + 2 * v13);
    v20 = *(a2 + 2 * v13);
    v21 = *(a4 + v13) << 8;
    v22 = *(a3 + 2 * v13);
    v23 = &v83[7];
    v24 = v15;
    do
    {
      v25 = v21 * v82[v18];
      v26 = v25 >> 16;
      v27 = v11 * (v20 - HIWORD(v25)) + ((v12 * (v20 - HIWORD(v25))) >> 16);
      if (v27 <= -10)
      {
        v28 = -10;
      }

      else
      {
        v28 = v11 * (v20 - HIWORD(v25)) + ((v12 * (v20 - HIWORD(v25))) >> 16);
      }

      if (v28 >= 9)
      {
        v28 = 9;
      }

      v23[i] = v28;
      v29 = v28 << 10;
      v30 = (v28 << 10) + 1024;
      v31 = (v28 << 10) | 0x66;
      if (v27 == -1)
      {
        v31 = -922;
      }

      else
      {
        v30 = (v28 << 10) + 1126;
      }

      if (!v27)
      {
        v31 = v28 << 10;
        v30 = 922;
      }

      v32 = v29 - 102;
      v33 = v29 | 0x39A;
      if (v27 < 1)
      {
        v33 = v30;
      }

      else
      {
        v31 = v32;
      }

      v34 = HIWORD(v33);
      v35 = v33 * a7;
      v36 = v26 + HIWORD(v31) * a7 + ((v31 * a7) >> 16);
      v37 = v26 + v34 * a7;
      v38 = v37 + HIWORD(v35);
      v82[v18] = v36;
      v82[v24] = v37 + HIWORD(v35);
      if (v27 < 3)
      {
        if (v27 > -4)
        {
          v42 = v19 + v28;
          v40 = *(v42 + 4);
          v41 = *(v42 + 5);
        }

        else if (v27 == -4)
        {
          v41 = *(v19 + 5 + v28);
          v40 = 280;
        }

        else
        {
          v43 = -43 * v28;
          v40 = -43 * v28 + 108;
          v41 = v43 + 65;
        }
      }

      else if (v27 == 3)
      {
        v40 = *(v19 + 7);
        v41 = 280;
      }

      else
      {
        v39 = 43 * v28;
        v40 = 43 * v28 + 108;
        v41 = v39 + 151;
      }

      v44 = v80[v18];
      v80[v18] = v44 + v40 * a9 + (v20 - v36) * (v20 - v36) * v22;
      v80[v24] = v44 + v41 * a9 + (v20 - v38) * (v20 - v38) * v22;
      ++v18;
      ++v24;
      v23 += 16;
    }

    while (v15 != v18);
    if (v15 <= 2)
    {
      v63 = v15;
      v16 = v78;
      v13 = i - 1;
      v64 = v78;
      do
      {
        v64[16 * v15 - 1] = *(v64 - 1) + 1;
        v64 += 16;
        --v63;
      }

      while (v63);
LABEL_52:
      v14 = 2 * v15;
      if (v15 <= 1)
      {
        v65 = 16 * (2 * v15);
        v66 = -1;
        do
        {
          v16[v65 - 1] = v16[v66];
          v65 += 16;
          v66 += 16;
        }

        while (v65 != 64);
      }

      goto LABEL_2;
    }

    if (i < 2)
    {
      break;
    }

    v45 = 0;
    v47 = v83;
    v46 = &v81;
    do
    {
      v48 = *(v46 - 4);
      v49 = *v46;
      if (v48 <= *v46)
      {
        v52 = *v46;
        v49 = *(v46 - 4);
        v50 = v45;
      }

      else
      {
        v50 = v45 | 4;
        *(v46 - 4) = v49;
        *v46 = v48;
        v51 = *(v47 - 4);
        *(v47 - 4) = *v47;
        *v47 = v51;
        v52 = v48;
      }

      v79[v45] = v52;
      v79[v45 + 4] = v49;
      *&v83[4 * v45++ + 72] = v50;
      ++v46;
      ++v47;
    }

    while (v45 != 4);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0x7FFFFFFF;
    while (1)
    {
      do
      {
        v58 = v79[v53];
        if (v57 > v58)
        {
          v56 = v53;
        }

        v59 = v79[v53 + 4];
        if (v57 >= v58)
        {
          v57 = v79[v53];
        }

        if (v54 < v59)
        {
          v55 = v53;
        }

        if (v54 <= v59)
        {
          v54 = v79[v53 + 4];
        }

        ++v53;
      }

      while (v53 != 4);
      if (v57 >= v54)
      {
        break;
      }

      v53 = 0;
      v54 = 0;
      *&v83[4 * v55 + 72] = *&v83[4 * v56 + 72] ^ 4;
      v60 = v56 + 4;
      v80[v55] = v80[v60];
      v82[v55] = v82[v60];
      v79[v55 + 4] = 0;
      v57 = 0x7FFFFFFF;
      v79[v56] = 0x7FFFFFFF;
      *&v83[16 * v55 + 8] = *&v83[16 * v56 + 8];
      v55 = 0;
      v56 = 0;
    }

    v61 = 0;
    v62 = &v83[7];
    do
    {
      v62[i] += *&v83[v61 + 72] >> 2;
      v61 += 4;
      v62 += 16;
    }

    while (v61 != 16);
    v16 = v78 - 1;
  }

  v67 = 0;
  v68 = 0;
  LODWORD(v69) = 0x7FFFFFFF;
  do
  {
    v70 = v80[v67];
    if (v69 > v70)
    {
      v68 = v67;
    }

    if (v69 >= v70)
    {
      v69 = v70;
    }

    else
    {
      v69 = v69;
    }

    ++v67;
  }

  while (v67 != 8);
  if (a11 >= 1)
  {
    memcpy(a1, &v83[16 * (v68 & 3) + 8], a11);
  }

  *a1 += v68 >> 2;
  return v69;
}

int *silk_bwexpander_32(int *result, int a2, int a3)
{
  if (a2 >= 2)
  {
    v4 = a3 - 0x10000;
    v5 = (a2 - 1);
    v6 = result;
    do
    {
      *v6 = *v6 * (a3 >> 16) + ((*v6 * a3) >> 16) + (((*v6 >> 15) + 1) >> 1) * a3;
      ++v6;
      a3 += (((a3 * v4) >> 15) + 1) >> 1;
      --v5;
    }

    while (v5);
  }

  v3 = a2 - 1;
  result[v3] = result[v3] * (a3 >> 16) + ((result[v3] * a3) >> 16) + (((result[v3] >> 15) + 1) >> 1) * a3;
  return result;
}

void *silk_resampler_private_down_FIR(uint64_t a1, _WORD *a2, __int16 *a3, int a4)
{
  HIDWORD(v79) = a4;
  v80 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 268);
  v8 = *(a1 + 276);
  v9 = 4 * (v8 + v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  memcpy(v10, (a1 + 24), 4 * v8);
  v11 = *(a1 + 296);
  v12 = v11 + 4;
  v13 = *(a1 + 272);
  for (i = v11; ; i = *(a1 + 296))
  {
    if (SHIDWORD(v79) < v7)
    {
      v7 = HIDWORD(v79);
    }

    silk_resampler_private_AR2(a1, &v10[4 * v8], a3, i, v7);
    v17 = v7 << 16;
    v18 = *(a1 + 276);
    if (v18 == 18)
    {
      if (v17 >= 1)
      {
        v61 = 0;
        v62 = *(a1 + 280);
        v63.i64[0] = 0xFFFF0000FFFFLL;
        v63.i64[1] = 0xFFFF0000FFFFLL;
        do
        {
          v64 = &v10[4 * (v61 >> 16)];
          v65 = v61 * v62;
          v66 = (v12 + 18 * (v65 >> 16));
          v67 = v12 + 18 * (v62 + ~(v65 >> 16));
          v68 = *(v64 + 56);
          v15.i64[0] = *(v64 + 6);
          v69.i16[0] = v66[1].i16[0];
          v69.i16[1] = *v67;
          v70 = vmovl_high_s16(*v66);
          v71 = vmovl_s16(*v66->i8);
          v69.i16[2] = *(v67 + 2);
          v16.i32[0] = *(v64 + 8);
          v69.i16[3] = *(v67 + 4);
          v72 = vrev64q_s32(vextq_s8(v68, v16, 4uLL));
          v73 = vextq_s8(v72, v72, 8uLL);
          v74 = vuzp1q_s32(v68, v15);
          v74.i32[1] = v15.i32[1];
          v15 = vmovl_s16(*(v67 + 6));
          v74.i32[3] = *(v64 + 11);
          v75 = vshrq_n_s32(v73, 0x10uLL);
          v76 = vmovl_s16(v69);
          v16 = vandq_s8(v73, v63);
          v77 = (((vaddvq_s32(vaddq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(*v64, v63), v71), 0x10uLL), vmulq_s32(v16, v76), 0x10uLL), vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(*(v64 + 1), v63), v70), 0x10uLL), vmulq_s32(vandq_s8(v74, v63), v15), 0x10uLL)), vaddq_s32(vmlaq_s32(vmulq_s32(v75, v76), vshrq_n_s32(*v64, 0x10uLL), v71), vmlaq_s32(vmulq_s32(vshrq_n_s32(v74, 0x10uLL), v15), vshrq_n_s32(*(v64 + 1), 0x10uLL), v70)))) + ((*(v64 + 10) * *(v67 + 14)) >> 16) + (*(v64 + 10) >> 16) * *(v67 + 14) + ((*(v64 + 9) * *(v67 + 16)) >> 16) + (*(v64 + 9) >> 16) * *(v67 + 16)) >> 5) + 1) >> 1;
          if (v77 <= -32768)
          {
            v77 = -32768;
          }

          if (v77 >= 0x7FFF)
          {
            LOWORD(v77) = 0x7FFF;
          }

          *a2++ = v77;
          v61 += v13;
        }

        while (v61 < v17);
      }
    }

    else if (v18 == 24)
    {
      v41.i64[0] = 0xFFFF0000FFFFLL;
      v41.i64[1] = 0xFFFF0000FFFFLL;
      if (v17 >= 1)
      {
        for (j = 0; j < v17; j += v13)
        {
          v43 = &v10[4 * (j >> 16)];
          v44 = vrev64q_s32(v43[5]);
          v45 = vrev64q_s32(v43[4]);
          v46 = vaddq_s32(vextq_s8(v45, v45, 8uLL), v43[1]);
          v47 = vaddq_s32(vextq_s8(v44, v44, 8uLL), *v43);
          v48 = *(v11 + 4);
          v49 = vmovl_s16(*v48.i8);
          v50 = vmovl_high_s16(v48);
          v51 = *(v11 + 20);
          v52 = ((v43[3].i32[3] + v43[2].i32[0]) >> 16) * v51;
          v53 = (v43[3].i16[6] + v43[2].i16[0]) * v51;
          v54 = (v43[3].i32[2] + v43[2].i32[1]) >> 16;
          v55 = *(v11 + 22);
          v56 = (v43[3].i16[4] + v43[2].i16[2]) * v55;
          v57 = *(v11 + 24);
          v58 = ((v43[3].i32[1] + v43[2].i32[2]) >> 16) * v57;
          v59 = (v43[3].i16[2] + v43[2].i16[4]) * v57;
          LODWORD(v43) = v43[3].i32[0] + v43[2].i32[3];
          v60 = (((vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v47, v41), v49), 0x10uLL), vmulq_s32(vandq_s8(v46, v41), v50), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(v46, 0x10uLL), v50), vshrq_n_s32(v47, 0x10uLL), v49))) + (v53 >> 16) + (v56 >> 16) + (v59 >> 16) + v52 + ((v43 * *(v11 + 26)) >> 16) + v58 + v54 * v55 + (v43 >> 16) * *(v11 + 26)) >> 5) + 1) >> 1;
          if (v60 <= -32768)
          {
            v60 = -32768;
          }

          if (v60 >= 0x7FFF)
          {
            LOWORD(v60) = 0x7FFF;
          }

          *a2++ = v60;
        }
      }
    }

    else
    {
      v19 = v18 != 36 || v17 < 1;
      v20.i64[0] = 0xFFFF0000FFFFLL;
      v20.i64[1] = 0xFFFF0000FFFFLL;
      if (!v19)
      {
        v21 = 0;
        do
        {
          v22 = &v10[4 * (v21 >> 16)];
          v23 = vrev64q_s32(v22[8]);
          v24 = vrev64q_s32(v22[7]);
          v25 = vaddq_s32(vextq_s8(v24, v24, 8uLL), v22[1]);
          v26 = vaddq_s32(vextq_s8(v23, v23, 8uLL), *v22);
          v27 = *(v11 + 4);
          v28 = vmovl_s16(*v27.i8);
          v29 = vmovl_high_s16(v27);
          v30 = vrev64q_s32(v22[5]);
          v31 = vrev64q_s32(v22[6]);
          v32 = vaddq_s32(vextq_s8(v31, v31, 8uLL), v22[2]);
          v33 = vaddq_s32(vextq_s8(v30, v30, 8uLL), v22[3]);
          v34 = *(v11 + 20);
          v35 = vmovl_high_s16(v34);
          v36 = vmovl_s16(*v34.i8);
          v37 = *(v11 + 36);
          v38 = ((v22[4].i32[3] + v22[4].i32[0]) >> 16) * v37;
          v39 = (v22[4].i16[6] + v22[4].i16[0]) * v37;
          LODWORD(v22) = v22[4].i32[2] + v22[4].i32[1];
          v40 = (((vaddvq_s32(vaddq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v26, v20), v28), 0x10uLL), vmulq_s32(vandq_s8(v25, v20), v29), 0x10uLL), vsraq_n_s32(vshrq_n_s32(vmulq_s32(vandq_s8(v32, v20), v36), 0x10uLL), vmulq_s32(vandq_s8(v33, v20), v35), 0x10uLL)), vaddq_s32(vmlaq_s32(vmulq_s32(vshrq_n_s32(v32, 0x10uLL), v36), vshrq_n_s32(v26, 0x10uLL), v28), vmlaq_s32(vmulq_s32(vshrq_n_s32(v33, 0x10uLL), v35), vshrq_n_s32(v25, 0x10uLL), v29)))) + (v39 >> 16) + v38 + ((v22 * *(v11 + 38)) >> 16) + (v22 >> 16) * *(v11 + 38)) >> 5) + 1) >> 1;
          if (v40 <= -32768)
          {
            v40 = -32768;
          }

          if (v40 >= 0x7FFF)
          {
            LOWORD(v40) = 0x7FFF;
          }

          *a2++ = v40;
          v21 += v13;
        }

        while (v21 < v17);
      }
    }

    HIDWORD(v79) -= v7;
    if (SHIDWORD(v79) <= 1)
    {
      break;
    }

    a3 += v7;
    memcpy(v10, &v10[4 * v7], 4 * v18);
    v7 = *(a1 + 268);
    LODWORD(v8) = *(a1 + 276);
  }

  return memcpy((a1 + 24), &v10[4 * v7], 4 * v18);
}

_WORD *silk_NLSF_VQ_weights_laroia(_WORD *result, __int16 *a2, int a3)
{
  v3 = *a2;
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a2;
  }

  v5 = 0x20000 / v4;
  v6 = a2[1] - v3;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = 0x20000u / v6;
  v8 = 0x20000u / v6 + v5;
  if (v8 >= 0x7FFF)
  {
    LOWORD(v8) = 0x7FFF;
  }

  *result = v8;
  v9 = (a3 - 1);
  if (a3 <= 2)
  {
    v9 = v9;
  }

  else
  {
    v10 = a2 + 2;
    v11 = result + 2;
    v12 = 1;
    do
    {
      v13 = *v10 - *(v10 - 1);
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = 0x20000u / v13;
      v15 = v14 + v7;
      if (v15 >= 0x7FFF)
      {
        LOWORD(v15) = 0x7FFF;
      }

      *(v11 - 1) = v15;
      v12 += 2;
      v16 = v10[1] - *v10;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v7 = 0x20000u / v16;
      v17 = v7 + v14;
      if (v17 >= 0x7FFF)
      {
        LOWORD(v17) = 0x7FFF;
      }

      *v11 = v17;
      v11 += 2;
      v10 += 2;
    }

    while (v12 < v9);
  }

  v18 = 0x20000u / (0x8000 - a2[v9]) + v7;
  if (v18 >= 0x7FFF)
  {
    LOWORD(v18) = 0x7FFF;
  }

  result[v9] = v18;
  return result;
}

__n128 silk_resampler_down2_3(__n128 *a1, _WORD *a2, __int16 *a3, int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  bzero(v26, 0x780uLL);
  v8 = a3;
  for (i = *a1; ; i = *(&i + 4 * v9))
  {
    if (a4 >= 480)
    {
      v9 = 480;
    }

    else
    {
      v9 = a4;
    }

    v24 = v8;
    silk_resampler_private_AR2(&a1[1], v26, v8, silk_Resampler_2_3_COEFS_LQ, v9);
    if (a4 >= 3)
    {
      v10 = i.n128_u32[0];
      v11 = v9 + 3;
      v12 = v26;
      do
      {
        v13 = 4697 * (v10 >> 16);
        v14 = 4697 * v10;
        v15 = *(v12 - 3) >> 16;
        v16 = *(v12 - 3);
        v17 = 8276 * (*(v12 - 2) >> 16) + ((8276 * *(v12 - 2)) >> 16);
        v10 = *(v12 - 1);
        v18 = (((v13 + (v14 >> 16) + 10739 * v15 + ((10739 * v16) >> 16) + v17 + 1567 * (v10 >> 16) + ((1567 * v10) >> 16)) >> 5) + 1) >> 1;
        if (v18 <= -32768)
        {
          v18 = -32768;
        }

        if (v18 >= 0x7FFF)
        {
          LOWORD(v18) = 0x7FFF;
        }

        *a2 = v18;
        v19 = *v12;
        v12 += 3;
        v20 = (((10739 * (v10 >> 16) + ((10739 * v10) >> 16) + 1567 * v15 + v17 + ((1567 * v16) >> 16) + 4697 * (v19 >> 16) + ((4697 * v19) >> 16)) >> 5) + 1) >> 1;
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
        v11 -= 3;
        a2 += 2;
      }

      while (v11 > 5);
      a2 = v22;
    }

    a4 -= v9;
    if (a4 < 1)
    {
      break;
    }

    v8 = &v24[v9];
  }

  result = *(&i + 4 * v9);
  *a1 = result;
  return result;
}

uint64_t silk_CNG_Reset(uint64_t result)
{
  v1 = *(result + 2340);
  if (v1 >= 1)
  {
    v2 = 0x7FFFu / (v1 + 1);
    v3 = (v1 + 7) & 0xFFFFFFF8;
    v4 = vdupq_n_s32(v2);
    v5 = vmovn_s32(v4);
    v6 = vmull_u16(v5, 0x7000600050004);
    v7 = vmull_u16(v5, 0x3000200010000);
    v8 = vdupq_n_s32(8 * v2);
    v9 = vdupq_n_s64(v1 - 1);
    v10 = xmmword_26ECDB2A0;
    v11 = xmmword_26ECDB2B0;
    v12 = xmmword_26ECCE810;
    v13 = xmmword_26ECC7980;
    v14 = (result + 4090);
    v15 = vdupq_n_s64(8uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v9, v13));
      v17 = vaddq_s32(v7, v4);
      if (vuzp1_s8(vuzp1_s16(v16, *v4.i8), *v4.i8).u8[0])
      {
        *(v14 - 7) = v17.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v4), *&v4).i8[1])
      {
        *(v14 - 6) = v17.i16[2];
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v9, *&v12))), *&v4).i8[2])
      {
        *(v14 - 5) = v17.i16[4];
        *(v14 - 4) = v17.i16[6];
      }

      v18 = vaddq_s32(v6, v4);
      v19 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s8(*&v4, vuzp1_s16(v19, *&v4)).i32[1])
      {
        *(v14 - 3) = v18.i16[0];
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v19, *&v4)).i8[5])
      {
        *(v14 - 2) = v18.i16[2];
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v9, *&v10)))).i8[6])
      {
        *(v14 - 1) = v18.i16[4];
        *v14 = v18.i16[6];
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v10 = vaddq_s64(v10, v15);
      v7 = vaddq_s32(v7, v8);
      v14 += 8;
      v6 = vaddq_s32(v6, v8);
      v3 -= 8;
    }

    while (v3);
  }

  *(result + 4172) = 0x30788000000000;
  return result;
}

void silk_CNG(uint64_t a1, uint64_t a2, __int16 *a3, int a4)
{
  v90 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 2796);
  v9 = *(a1 + 2316);
  if (v9 != *(a1 + 4180))
  {
    v10 = *(a1 + 2340);
    if (v10 >= 1)
    {
      v11 = 0x7FFFu / (v10 + 1);
      v12 = (v10 + 7) & 0xFFFFFFF8;
      v13 = vdupq_n_s32(v11);
      v14 = vmovn_s32(v13);
      v15 = vmull_u16(v14, 0x7000600050004);
      v16 = vmull_u16(v14, 0x3000200010000);
      v17 = vdupq_n_s32(8 * v11);
      v18 = vdupq_n_s64(v10 - 1);
      v19 = xmmword_26ECDB2A0;
      v20 = xmmword_26ECDB2B0;
      v21 = xmmword_26ECCE810;
      v22 = xmmword_26ECC7980;
      v23 = (a1 + 4090);
      v24 = vdupq_n_s64(8uLL);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v18, v22));
        v26 = vaddq_s32(v16, v13);
        if (vuzp1_s8(vuzp1_s16(v25, *v13.i8), *v13.i8).u8[0])
        {
          *(v23 - 7) = v26.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v25, *&v13), *&v13).i8[1])
        {
          *(v23 - 6) = v26.i16[2];
        }

        if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v18, *&v21))), *&v13).i8[2])
        {
          *(v23 - 5) = v26.i16[4];
          *(v23 - 4) = v26.i16[6];
        }

        v27 = vaddq_s32(v15, v13);
        v28 = vmovn_s64(vcgeq_u64(v18, v20));
        if (vuzp1_s8(*&v13, vuzp1_s16(v28, *&v13)).i32[1])
        {
          *(v23 - 3) = v27.i16[0];
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(v28, *&v13)).i8[5])
        {
          *(v23 - 2) = v27.i16[2];
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v18, *&v19)))).i8[6])
        {
          *(v23 - 1) = v27.i16[4];
          *v23 = v27.i16[6];
        }

        v20 = vaddq_s64(v20, v24);
        v21 = vaddq_s64(v21, v24);
        v22 = vaddq_s64(v22, v24);
        v19 = vaddq_s64(v19, v24);
        v16 = vaddq_s32(v16, v17);
        v23 += 8;
        v15 = vaddq_s32(v15, v17);
        v12 -= 8;
      }

      while (v12);
    }

    *(a1 + 4172) = 0x30788000000000;
    *(a1 + 4180) = v9;
  }

  if (*(a1 + 4184))
  {
    goto LABEL_34;
  }

  if (!*(a1 + 4188))
  {
    v29 = *(a1 + 2340);
    if (v29 >= 1)
    {
      v30 = (a1 + 2344);
      do
      {
        v30[866] += 16348 * ((*v30 - v30[866]) >> 16) + ((16348 * (*v30 - v30[866])) >> 16);
        ++v30;
        --v29;
      }

      while (v29);
    }

    v31 = *(a1 + 2324);
    if (v31 < 1)
    {
      v34 = 0;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        if (*(a2 + 16 + 4 * v32) > v33)
        {
          v34 = v32;
          v33 = *(a2 + 16 + 4 * v32);
        }

        ++v32;
      }

      while (v31 != v32);
    }

    memmove(&v8[4 * *(a1 + 2332)], v8, 4 * *(a1 + 2332) * (v31 - 1));
    memcpy(v8, (a1 + 4 * *(a1 + 2332) * v34 + 4), 4 * *(a1 + 2332));
    v35 = *(a1 + 2324);
    if (v35 >= 1)
    {
      v36 = (a2 + 16);
      v37 = *(a1 + 4172);
      do
      {
        v38 = *v36++;
        v37 += 4634 * ((v38 - v37) >> 16) + ((4634 * (v38 - v37)) >> 16);
        *(a1 + 4172) = v37;
        --v35;
      }

      while (v35);
    }
  }

  if (*(a1 + 4184))
  {
LABEL_34:
    v39 = 4 * a4;
    v40 = &v85[-((v39 + 79) & 0xFFFFFFFFFFFFFFF0) - 8];
    bzero(v40, v39 + 64);
    v41 = *(a1 + 4172);
    v42 = 255;
    do
    {
      v43 = v42;
      v42 >>= 1;
    }

    while (v43 > a4);
    v44 = *(a1 + 4176);
    if (a4)
    {
      v45 = v40 + 16;
      v46 = (v41 >> 4);
      v47 = v41 >> 19;
      v48 = a4;
      v49 = (v47 + 1) >> 1;
      do
      {
        v44 = 196314165 * v44 + 907633515;
        v50 = *&v8[4 * (v43 & HIBYTE(v44))];
        v51 = v50 * v49 + (v50 >> 16) * v46 + ((v50 * v46) >> 16);
        if (v51 <= -32768)
        {
          v51 = -32768;
        }

        if (v51 >= 0x7FFF)
        {
          v51 = 0x7FFF;
        }

        *v45++ = v51;
        --v48;
      }

      while (v48);
    }

    *(a1 + 4176) = v44;
    silk_NLSF2A(v85, (a1 + 4076), *(a1 + 2340));
    v52 = *(a1 + 4124);
    *v40 = *(a1 + 4108);
    *(v40 + 1) = v52;
    v53 = *(a1 + 4156);
    *(v40 + 2) = *(a1 + 4140);
    *(v40 + 3) = v53;
    if (a4 >= 1)
    {
      v54 = *(a1 + 2340);
      v55 = *v85;
      v56 = vmovl_s16(*&v85[2]);
      v57 = vmovl_high_s16(*&v85[2]);
      v58 = v86;
      v59 = vmovl_s16(v87);
      v60 = v88;
      v61 = v89;
      v62 = a4;
      v63 = v40[15];
      v64 = vmovl_high_s16(*v85);
      v65 = vmovl_s16(*v85);
      v66 = v40 + 16;
      v67.i64[0] = 0xFFFF0000FFFFLL;
      v67.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        v68 = *(v66 - 5);
        v69 = *(v66 - 9);
        v70 = vrev64q_s32(vextq_s8(v69, v68, 4uLL));
        v71 = vandq_s8(v69, v67);
        v72 = vrev64q_s32(vextq_s8(v68, v68, 0xCuLL));
        v72.i32[0] = v63;
        v73 = vrev64q_s32(vandq_s8(v68, v67));
        v74 = vrev64q_s32(v71);
        v75 = vaddvq_s32(vaddq_s32(vsraq_n_s32(vshrq_n_s32(vmulq_s32(vextq_s8(v73, v73, 8uLL), v56), 0x10uLL), vmulq_s32(vextq_s8(v74, v74, 8uLL), v57), 0x10uLL), vmlaq_s32(vmulq_s32(vshrq_n_s32(vextq_s8(v70, v70, 8uLL), 0x10uLL), v64), vshrq_n_s32(v72, 0x10uLL), v65))) + ((v63 * v55) >> 16) + (*(v66 - 9) >> 16) * v57.i32[3] + ((*(v66 - 10) * v58) >> 16) + (v54 >> 1) + (*(v66 - 10) >> 16) * v58;
        if (v54 == 16)
        {
          v76 = *(v66 - 14);
          v77 = vrev64q_s32(vshrq_n_s32(v76, 0x10uLL));
          v78 = vrev64q_s32(vandq_s8(v76, v67));
          v75 += vaddvq_s32(vsraq_n_s32(vmulq_s32(vextq_s8(v77, v77, 8uLL), v59), vmulq_s32(vextq_s8(v78, v78, 8uLL), v59), 0x10uLL)) + ((*(v66 - 15) * v60) >> 16) + (*(v66 - 15) >> 16) * v60 + ((*(v66 - 16) * v61) >> 16) + (*(v66 - 16) >> 16) * v61;
        }

        v63 = *v66 + 16 * v75;
        *v66++ = v63;
        v79 = *a3 + (((v75 >> 5) + 1) >> 1);
        if (v79 <= -32768)
        {
          v79 = -32768;
        }

        if (v79 >= 0x7FFF)
        {
          LOWORD(v79) = 0x7FFF;
        }

        *a3++ = v79;
        --v62;
      }

      while (v62);
    }

    v80 = &v40[a4];
    v81 = *(v80 + 1);
    *(a1 + 4108) = *v80;
    *(a1 + 4124) = v81;
    v82 = *(v80 + 3);
    *(a1 + 4140) = *(v80 + 2);
    *(a1 + 4156) = v82;
  }

  else
  {
    v83 = 4 * *(a1 + 2340);

    bzero((a1 + 4108), v83);
  }
}

uint64_t silk_NLSF_VQ(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; *(result + 4 * i++) = v7)
    {
      if (a5 < 1)
      {
        v7 = 0;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = (a2 + 2);
        do
        {
          v9 = (*(v8 - 1) - (*(a3 + v6) << 7));
          v10 = *v8;
          v8 += 2;
          v11 = (v10 - (*(a3 + v6 + 1) << 7));
          v7 += (v9 * v9 + v11 * v11) >> 4;
          v6 += 2;
        }

        while (v6 < a5);
        a3 += v6;
      }
    }
  }

  return result;
}

uint64_t silk_lin2log(unsigned int a1)
{
  v1 = __clz(a1);
  if (v1 != 24)
  {
    if (a1 <= 0x7F)
    {
      LOBYTE(a1) = (a1 >> (56 - v1)) | (a1 << (v1 - 24));
    }

    else
    {
      LOBYTE(a1) = (a1 << (v1 + 8)) | (a1 >> (24 - v1));
    }
  }

  return (a1 & 0x7F) - (v1 << 7) + ((179 * (a1 & 0x7F) * (128 - (a1 & 0x7F))) >> 16) + 3968;
}

uint64_t *silk_stereo_encode_pred(uint64_t *a1, char *a2)
{
  ec_enc_icdf(a1, 5 * a2[2] + a2[5], silk_stereo_pred_joint_iCDF, 8);
  ec_enc_icdf(a1, *a2, silk_uniform3_iCDF, 8);
  ec_enc_icdf(a1, a2[1], "͚f3", 8);
  ec_enc_icdf(a1, a2[3], silk_uniform3_iCDF, 8);
  v4 = a2[4];

  return ec_enc_icdf(a1, v4, "͚f3", 8);
}

unint64_t silk_NLSF2A(__int16 *a1, __int16 *a2, int a3)
{
  *(&v68[7] + 4) = *MEMORY[0x277D85DE8];
  v6 = &silk_NLSF2A_ordering16;
  if (a3 != 16)
  {
    v6 = &silk_NLSF2A_ordering10;
  }

  v7 = a3;
  v8 = a3 - 1;
  if (a3 >= 1)
  {
    v9 = a3;
    do
    {
      v10 = *a2++;
      v11 = ((((silk_LSFCosTab_FIX_Q12[(v10 >> 8) + 1] - silk_LSFCosTab_FIX_Q12[v10 >> 8]) * v10 + (silk_LSFCosTab_FIX_Q12[v10 >> 8] << 8)) >> 3) + 1) >> 1;
      v12 = *v6++;
      *(&v67 + v12) = v11;
      --v9;
    }

    while (v9);
    v3 = v67;
  }

  v13 = (a3 >> 1);
  v65 = 0x10000;
  v66[0] = -v3;
  if (v13 <= 1)
  {
    v63 = 0x10000;
    v64[0] = -LODWORD(v68[0]);
  }

  else
  {
    v14 = v66;
    v15 = 1;
    v16 = 2;
    do
    {
      v17 = *(&v67 + 2 * v15);
      v18 = v15 + 1;
      v66[v15] = 2 * v66[v15 - 2] - ((((v66[v15 - 1] * v17) >> 15) + 1) >> 1);
      if (v15 >= 2)
      {
        v19 = v14;
        v20 = v16;
        v21 = v14;
        do
        {
          v22 = *--v21;
          *v19 = *v19 + *(v19 - 2) - ((((v22 * v17) >> 15) + 1) >> 1);
          --v20;
          v19 = v21;
        }

        while (v20 > 2);
      }

      v66[0] -= v17;
      ++v16;
      ++v14;
      v15 = v18;
    }

    while (v18 != v13);
    v23 = v64;
    v63 = 0x10000;
    v64[0] = -LODWORD(v68[0]);
    v24 = 1;
    v25 = 2;
    do
    {
      v26 = v68[v24];
      v27 = v24 + 1;
      v64[v24] = 2 * v64[v24 - 2] - ((((v64[v24 - 1] * v26) >> 15) + 1) >> 1);
      if (v24 >= 2)
      {
        v28 = v23;
        v29 = v25;
        v30 = v23;
        do
        {
          v31 = *--v30;
          *v28 = *v28 + *(v28 - 2) - ((((v31 * v26) >> 15) + 1) >> 1);
          --v29;
          v28 = v30;
        }

        while (v29 > 2);
      }

      v64[0] -= v26;
      ++v25;
      ++v23;
      v24 = v27;
    }

    while (v27 != v13);
  }

  if (v13 >= 1)
  {
    v32 = v65;
    v33 = v63;
    v34 = v64;
    v35 = v66;
    v36 = v62;
    do
    {
      v38 = *v35++;
      v37 = v38;
      v39 = v32 + v38;
      v40 = *v34++;
      v41 = v40 - v33;
      *v36++ = -(v39 + v41);
      v62[v8--] = v41 - v39;
      v33 = v40;
      v32 = v37;
      --v13;
    }

    while (v13);
  }

  v42 = 0;
  v43 = 0;
  while (a3 >= 1)
  {
    v44 = 0;
    v45 = 0;
    do
    {
      v46 = v62[v44];
      if (v46 < 0)
      {
        v46 = -v46;
      }

      if (v46 > v45)
      {
        v45 = v46;
        v42 = v44;
      }

      ++v44;
    }

    while (v7 != v44);
    if (v45 < 0xFFFF0)
    {
      v52 = v62;
      v53 = v7;
      v54 = a1;
      do
      {
        v55 = *v52++;
        *v54++ = ((v55 >> 4) + 1) >> 1;
        --v53;
      }

      while (v53);
      break;
    }

    v47 = ((v45 >> 4) + 1) >> 1;
    if (v47 >= 0x27FFE)
    {
      v47 = 163838;
    }

    silk_bwexpander_32(v62, v7, 65470 - ((v47 << 14) - 536854528) / ((v47 + v47 * v42) >> 2));
    if (++v43 == 10)
    {
      v48 = v62;
      v49 = v7;
      v50 = a1;
      do
      {
        v51 = ((*v48 >> 4) + 1) >> 1;
        if (v51 <= -32768)
        {
          v51 = -32768;
        }

        if (v51 >= 0x7FFF)
        {
          v51 = 0x7FFF;
        }

        *v50++ = v51;
        *v48++ = 32 * v51;
        --v49;
      }

      while (v49);
      break;
    }
  }

  for (i = 0; i != 16; ++i)
  {
    result = silk_LPC_inverse_pred_gain(a1, a3);
    if (result > 107373)
    {
      break;
    }

    result = silk_bwexpander_32(v62, a3, (-2 << i) + 0x10000);
    if (a3 >= 1)
    {
      v58 = v62;
      v59 = v7;
      v60 = a1;
      do
      {
        v61 = *v58++;
        *v60++ = ((v61 >> 4) + 1) >> 1;
        --v59;
      }

      while (v59);
    }
  }

  return result;
}